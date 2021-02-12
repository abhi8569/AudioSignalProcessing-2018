%input : noisy Signal
%output : Signal averaged over length of 50

function [result] = averaging_filter(y) 
    l=length(y);
    zero_array=zeros(1,25);
    %extending array by appending zeroes to both end of the signal so that
    %extreme samples can be averaged
    extended_y=[zero_array,y,zero_array]; 
    result=zeros(1,l);
    for i = 1:l
       result(i)=sum(extended_y(i:i+50))/50;
    end