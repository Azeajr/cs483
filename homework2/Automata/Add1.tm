# Turing Machine for adding 1 to a binary number
# Rejects input 11...1 (overflow)

states:          q0,q1,q2,q3,qA,qR
input alphabet:  0,1
tape alphabet:   0,1,_
start state:     q0
accept state:    qA
reject state:    qR
delta:           q0,0 -> q1,0,R
                 q0,1 -> q3,1,R
                 q1,0 -> q1,0,R
                 q1,1 -> q1,1,R
                 q1,_ -> q2,_,L
                 q2,1 -> q2,0,L
                 q2,0 -> qA,1,L
                 q3,0 -> q1,0,R
                 q3,1 -> q3,1,R
                 q3,_ -> qR,_,L

