%MACHINE PROBLEM 3
%python program that will approximate the data according to the least-norm
%error vector

%component input must be in the form: component = np.array(([-3,174],[-2,41],[-1,4]))
function[] = bestfit(component)

%Setting the coefficients of the first column of the input array to x
x = component(:,1);

%Setting the coefficients of the 2nd column of the input array to y
y = component(:,2);

%Setting the least norm to infinity 
least = inf;
format short g

%looping for i in the degree of x from 0-10
for i =1:1:10
    
    %Stops the loop when i is equal to the degree of x
    if i == length(x)
        break
    end
    p = polyfit(x,y,i);
    
    y2 = polyval(p,x); 
    
    %computing for the error vector
    error = y-y2;
    
    errorvector = norm(error);
    if errorvector < least
        least = errorvector;
        BestFit = p;
    end

end
BestFit