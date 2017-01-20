
expfunc(_,X,N) :-
                X=0,
                N=0,
        write('X=Y=0'),! .
expfunc(Y,X,N) :-                       /*stoping condition */
                N = 2,
                Y is X*X.


expfunc(Y,X,N) :-                       /*size N problem*/
                N1 is N-1,
                expfunc(Y1,X,N1),      	/*size N-1 problem*/
                Y is Y1 *X.             /*size m-n-1 problem*/ maybe

/*===========================Compfunc ===============================*/
compfunc(_,0,_,0) :-
        write('X=N=0'), !.


compfunc(R, X, Y, N) :-
                N = 1,
                R is 2*X + 3*Y,!.

compfunc(R,X,Y,N) :-                    /*size N problem*/
                N1 is N-1,
                compfunc(R1,X,Y,N1),     /* size n-1 */
                  X1 is 2*X + 3*Y,
                R is X1*R1.             /*size m-n-1*/ - maybe

/*=================== factfunct===================================*/


factorial(0,1):-!.

factorial(N,F) :-  /*size N */
        N>0,
	N1 is N-1,
        factorial(N1,F1),  /* size n-1 */
        F is N * F1.	        /*size m-n-1*/


factfunc(R,X,Y,N):-
        compfunc(P,X,Y,N),
        factorial(P,R).
s :-
    	factfunc(R,1,1,1),	write(R).


/***** Question	2 *******/


change(S,H, Q, D, N, P) :-
        member(H,[0,1,2]),                                                      % Half-dollars
        member(Q,[0,1,2,3,4]),                                                  % quarters
        member(D,[0,1,2,3,4,5,6,7,8,9,10]) ,                                    % dimes
        member(N,[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]),	% nickels
        S1 is 50*H + 25*Q +10*D + 5*N,
        P is S-S1,
        P > -1,
        S2 is S1 + P,
        S2 = S.




/** 2.2
D = 0
P = 7 ?  */

/* 2.3
H = 0
N = 2 ?  */
