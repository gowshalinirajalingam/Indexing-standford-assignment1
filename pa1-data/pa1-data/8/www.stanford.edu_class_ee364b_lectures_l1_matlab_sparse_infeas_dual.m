detecting a small subset of infeasible linear inequalities section 5.8 boyd & vandenberghe convex optimization written for cvx by almir mutapcic 02 18 06 we consider a set of linear inequalities a x b which are infeasible here a is a matrix in r m by n and b belongs to r m we apply a l1 norm heuristic to find a small subset of mutually infeasible inequalities from a larger set of infeasible inequalities the heuristic finds a sparse solution to the alternative inequality system original system is a x b and it alternative ineq system is lambda 0 a lambda 0 b lambda 0 where lambda in r m we apply the l1 norm heuristic minimize sum lambda st a lambda 0 b lambda 1 lambda 0 positive lambdas gives us a small subset of inequalities from the original set which are mutually inconsistent problem dimensions m inequalities in n dimensional space m 150 n 10 fix random number generator so we can repeat the experiment seed 0 randn state seed construct infeasible inequalities a randn m n b randn m 1 fprintf 1 starting with an infeasible set of d inequalities in d variables n m n you can verify that the set is infeasible cvx_begin variable x n a x b cvx_end solve the l1 norm heuristic problem applied to the alternative system cvx_begin variables lambda m minimize sum lambda subject to a lambda 0 b lambda 1 lambda 0 cvx_end report the smaller set of mutually inconsistent inequalities infeas_set find lambda 0 disp fprintf 1 found a smaller set of d mutually inconsistent inequalities n length infeas_set disp disp a smaller set of mutually inconsistent inequalities are the ones disp with row indices infeas_set check that this set is infeasible cvx_begin variable x_infeas n a infeas_set x_infeas b infeas_set cvx_end