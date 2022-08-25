%% CHILDSMATH 6 #1ZC3
% to run each question individully, press "ctrl+enter"
% (do this instead of running the whole script at once)
% enjoy!

%% Problem 1
%{
Use the attached lived script "Indep_or_Dep.mlx"
(i): dependent
(ii): dependent
(iii): independent
%}

%% Problem 2
% % 
clear;clc;
a = input("enter a (i.e. p=ax^2+bx+c): ");
b = input("enter b (i.e. p=ax^2+bx+c): ");
c = input("enter c (i.e. p=ax^2+bx+c): ");
A = [0 0 1 a;0 1 1 b;1 1 1 c];
k3 = A(1,4);
k2 = A(2,4)-k3;
syms k1;
k1 = solve(k1+k2+k3==A(3,4),k1);
coord_vec = [k1 k2 k3] % final answer

%% Problem 4
%{
Use the attached lived script "Proj_U_on_W_in_Span.mlx"
- final answer should be the second "newu"
%}

%% Problem 5
%{
Use the attached lived script "GramSchmidtProcess.mlx"
final answer: 
- each vector is on a new line
- may not be fully simplified
%}

%% Problem 6
clear;clc;
disp('the format of S is {n1+b1*x,n2+a2*x^2}') 
disp('(for example, if S = {1+2*x,1-6*x^2}, then n1=1,b1=2,n2=1,a2=-6)')
n1 = input('enter n1 (from n1+b1*x): '); 
b1 = input('enter b1 (from n1+b1*x): ');
n2 = input('enter n2 (from n2+a2*x^2): ');
a2 = input('enter a2 (from n2+a2*x^2): ');
% (i)
P_i = input('(i) enter polynomial as vector (format: [a b c] for ax^2+bx+c): ');
A_i = [0 a2 P_i(1,1); b1 0 P_i(1,2);n1 n2 P_i(1,3)];
if (rref(A_i)==eye(3,3))==1
    disp('option i is correct')
else
    disp('option i is not correct')
end
% (ii)
P_ii = input('(ii) enter polynomial as vector (format: [a b c] for ax^2+bx+c): ');
A_ii = [0 a2 P_ii(1,1); b1 0 P_ii(1,2);n1 n2 P_ii(1,3)];
if (rref(A_ii)==eye(3,3))==1
    disp('option ii is correct')
else
    disp('option ii is not correct')
end
% (iii)
P_iii = input('(iii) enter polynomial as vector (format: [a b c] for ax^2+bx+c): ');
A_iii = [0 a2 P_iii(1,1); b1 0 P_iii(1,2);n1 n2 P_iii(1,3)];
if (rref(A_iii)==eye(3,3))==1
    disp('option iii is correct')
else
    disp('option iii is not correct')
end

%% Problem 7
clear;clc;
syms a b;
n1 = input('enter n1 from c=a+n1*b: ');
n2 = input('enter n2 from d=a+n2*b: ');
a = [1 0 1 1];
b = [0 1 n1 n2];
basis = [a b] % final answer

%% Problem 8
clear;clc;
n = input("enter n (dimension of n x n matrices): ");
dimW = n^2-n % final answer

%% Problem 9
clear;clc;
format rational;
A = input("enter A (format: [a b;c d;e f])");
% make sure to run and save the function attached "fourb.m"
[cs, ns] = fourb(A) 
% Final answer (a): cs (column space)
% Final answer (b): ns (nullspace)

%% Problem 10
clear;clc;
format rational;
A = input("enter A (format: [a b;c d;e f])");
% make sure to run and save the function attached "fourb.m"
[ns, rs] = fourb(A);
disp('a: ');disp(rank(rs)) % dimension of row space
disp('b: '),disp(rank(ns)) % dimension of nullspace
