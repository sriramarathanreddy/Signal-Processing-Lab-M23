function y = convolution(x,h)
   len_x = length(x);
   len_h = length(h);
   y = zeros(1,(len_x + len_h - 1));
   for a = 1:length(y)
       for b = max(1,a+1-len_h):min(a,len_x)
           y(a) = y(a) + x(b)*h(a-b+1);
       end
   end
end