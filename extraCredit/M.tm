# Turing Machine M
# Decides language A = {w1~w2| w1,w2 ∈ {0,1}*, w2 is bitwise complement of w1}

states:          q1,q2,q3,q4,q5,q6,q7,q8,qA,qR
input alphabet:  0,1,~
tape alphabet:   0,1,~,x,_
start state:     q1
accept state:    qA
reject state:    qR
delta:           q1,0 -> q2,x,R
                 q1,1 -> q3,x,R
                 q1,~ -> q8,~,R

                 q2,0 -> q2,0,R
                 q2,1 -> q2,1,R
                 q2,~ -> q4,~,R

                 q3,0 -> q3,0,R
                 q3,1 -> q3,1,R
                 q3,~ -> q5,~,R

                 q4,1 -> q6,x,L
                 q4,x -> q4,x,R

                 q5,0 -> q6,x,L
                 q5,x -> q5,x,R

                 q6,~ -> q7,~,L
                 q6,x -> q6,x,L

                 q7,0 -> q7,0,L
                 q7,1 -> q7,1,L
                 q7,x -> q1,x,R

                 q8,x -> q8,x,R
                 q8,_ -> qA,_,R

