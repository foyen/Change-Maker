

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




/** change(87, 0, 3, D, 1, P).  2.2
D = 0
P = 7 ?  */

/* change(73, H, 2, 1, N, 3).  2.3
H = 0
N = 2 ?  */
