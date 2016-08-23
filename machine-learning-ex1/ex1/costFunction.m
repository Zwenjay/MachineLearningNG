function [ jVal,gradient ] = costFunction(theta)
    jVal=(theta(1)-5)^2+(theta(2)-5)^2;
    gradient=zeros(2,1);
    gradient(1)=2*theta(1)-10;
    gradient(2)=2*theta(2)-10;
end

