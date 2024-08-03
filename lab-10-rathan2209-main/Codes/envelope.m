function [t_env,env] = envelope(a,d,s,sd,r,fs)
    tattack = 0:1/fs:a;
    env_attack = linspace(0,1,length(tattack));
    tdecay = (a+1/fs):1/fs:(a+d);
    env_decay = linspace(1-(d-1/fs)/length(tdecay),s+(d-1/fs)/length(tdecay),length(tdecay));
    % env_decay = linspace(1,s,length(tdecay));
    tsustain = (a+d+1/fs):1/fs:(a+d+sd);
    env_sustain = s*ones(1,length(tsustain));
    trelease = (a+d+sd+1/fs):1/fs:(a+d+sd+r);
    env_release = linspace(s-(r-1/fs)/length(trelease),0,length(trelease));
    % env_release = linspace(s,0,length(trelease));
    t_env = [tattack tdecay tsustain trelease];
    env = [env_attack env_decay env_sustain env_release];
end