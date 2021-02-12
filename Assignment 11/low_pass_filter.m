function [result] = low_pass_filter(input,order) 
    Fs=44100
    half_of_samp_freq = Fs/2;
    normalized_freq = 10000/half_of_samp_freq;
    %n = 2000;
    f = [0 normalized_freq 1];
    a = [2 0];
    up = [2.01 0.01];
    lo = [1.98 -0.01];
    b = fircls(order,f,a,up,lo,'both');
    result=conv(b,input);
    fvtool(b)


