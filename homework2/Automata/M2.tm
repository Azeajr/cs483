# Turing Machine M2 (Figure 3.8)
# Decides language B = {w|w contains a power of 2 0s}

states:          q1,q2,q3,q4,q5,qA,qR
input alphabet:  0
tape alphabet:   0,x,_
start state:     q1
accept state:    qA
reject state:    qR
delta:           q1,0 -> q2,_,R
                 q1,_ -> qR,_,R
                 q1,x -> qR,x,R

                 q2,0 -> q3,x,R
                 q2,x -> q2,x,R
                 q2,_ -> qA,_,R

                 q3,x -> q3,x,R
                 q3,_ -> q5,_,L
                 q3,0 -> q4,0,R

                 q4,x -> q4,x,R
                 q4,_ -> qR,_,R
                 q4,0 -> q3,x,R

                 q5,0 -> q5,0,L
                 q5,x -> q5,x,L
                 q5,_ -> q2,_,R
