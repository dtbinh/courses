clear
clc

L = [2,-1,0,-1,0,0;-1,3,-1,-1,0,0;0,-1,1,0,0,0;-1,-1,0,3,-1,0;0,0,0,-1,2,-1;0,0,0,0,-1,1];
L = -L;

[eigen_vector,x] = eig(L);
eigen_value = eig(L);

parameters = linsolve(eigen_vector,[3;3;2;1;1;2]);


for i=1:length(eigen_value)
    sol_matrix_y(:,i) = eigen_vector(:,i).*parameters(i);
end

parameters = linsolve(eigen_vector,[2;3;4;3;2;1]);


for i=1:length(eigen_value)
    sol_matrix_x(:,i) = eigen_vector(:,i).*parameters(i);
end