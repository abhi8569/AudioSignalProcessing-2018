% Description: 
% The below function plots circles for a given input p where p can be a
% single value or a vector. Here, p is used to determine the distance of
% the 
% Input : p where p can be single number or vector i.e [1,2,3]
% Output: Unit circle with left limit and lower limit as p
function unit_circle(p)
% Check if the input is a vector or not
chk=isvector(p);
if chk==1
    for i=[1:length(p)]
%   For each element in the vector, the positions are calculated      
     pos = [p(i) p(i) 1 1]; 
    hold on;
%     For each position, a unit circle is plotted 
    rectangle('Position',pos,'Curvature',[1 1])
    axis equal
    i+i+1;
    end
else
%    Position is calculated for p
    pos = [p p 1 1];
    hold on;
%     circle is plotted for the calculated position
    rectangle('Position',pos,'Curvature',[1 1])
    axis equal
end
    