# TM that recognizes L={ww^R|w∈{0,1}}

states: q0,q1,q2,q3,q4,q5,qA,qR
input alphabet: 0,1
tape alphabet: 0,1,x,_
start state: q0
accept state: qA
reject state: qR
delta: 	q0,x -> qA,x,R
 	q0,0 -> q1,x,R
	q0,1 -> q5,x,R

	q1,0 -> q1,0,R
 	q1,1 -> q1,1,R
	q1,_ -> q2,_,L
	q1,x -> q2,x,L

	q2,0 -> q3,x,L

#	q2,x -> qA,x,L  # centered palindrome

	q3,0 -> q3,0,L
 	q3,1 -> q3,1,L
	q3,x -> q0,x,R

	q4,1 -> q3,x,L

#	q4,x -> qA,x,L  # centered palindrome

	q5,0 -> q5,0,R
 	q5,1 -> q5,1,R
	q5,_ -> q4,_,L
	q5,x -> q4,x,L
