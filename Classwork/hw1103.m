##A = rand(5,3);
##B = rand(3,2);
##C = [A, zeros(5,2);B',eye(2)]
##C(:,5:5)


##A = rand(6,3);
##B = A(1:3,1:3);
##C = inv(B);
##C*B


##A = rand(3,5);
##B = A(1:3,1:3);
##det(B)
##B(1,1:3) = [0,0,0];
##det(B)


##A = rand(20,20);
##b = eig(A);
##b = sort(b)


##A = rand(4,4);
##[L,D] = eig(A);
##for i=1:4
##  (A-D(i,i)*eye(4))*L(:,i)==0;
##  A*L(:,i)) == D(i,i)*L(:,i)
####round(A*L(:,i)) == round(D(i,i)*L(:,i))
##end


##n = input("input n: ");
##b = linspace(-2,-2,n);
##c = linspace(1,1,n-1);
##A = diag(b) + diag(c,1) + diag(c,-1)


##A = rand(8,8);
##stlb = max(A);
##str = max(A');
##m = max([stlb,str]);
##[i,j]=find(A>0.5);
##B = [i,j]




