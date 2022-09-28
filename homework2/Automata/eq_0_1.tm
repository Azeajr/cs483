TM for L = {w|w∈{0,1}*, w contains equal numbers of 0s and 1s}

states: q0,q1,q2,q3,q4,qA,qR
input alphabet: 0,1
tape alphabet: 0,1,x,y,_
start state: q0
accept state: qA
reject state: qR
delta: 	q0,_ -> qA,_,R
	q0,y -> q0,y,R
 	q0,1 -> q1,x,R
	q0,0 -> q2,x,R

	q1,y -> q1,y,R
 	q1,1 -> q1,1,R
	q1,0 -> q3,y,L

	q2,y -> q2,y,R
	q2,0 -> q2,0,R
	q2,1 -> q4,y,L

	q3,0 -> q3,0,L
 	q3,1 -> q3,1,L
	q3,y -> q3,y,L
	q3,x -> q0,x,R

	q4,y -> q4,y,L
	q4,0 -> q4,0,L
	q4,1 -> q4,1,L
	q4,x -> q0,x,R

