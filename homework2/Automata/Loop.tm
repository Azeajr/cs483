# TM that doesn't halt

states: q0,q1,q2,qA,qR
input alphabet: 0,1
tape alphabet: 0,1,_
start state: q0
accept state: qA
reject state: qR
delta: 	q0,0 -> q1,_,R
 	q0,1 -> q1,_,R

	q1,0 -> q1,1,R
	q1,1 -> q1,0,R
	q1,_ -> q2,_,L

	q2,0 -> q2,1,L
	q2,1 -> q2,0,L
	q2,_ -> q1,_,R  # loop
	


 	