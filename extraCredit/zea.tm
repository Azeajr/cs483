# Turing Machine zea
# Turing machine recognizes "zea" and writes "hello zea" to the tape

states:          q1,q2,q3,q4,q5,q6,q7,q8,q9,qA,qR
input alphabet:  a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z
tape alphabet:   a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,_
start state:     q1
accept state:    qA
reject state:    qR
delta:           q1,z -> q2,h,R
                 q2,e -> q3,e,R
                 q3,a -> q4,l,R
                 q4,_ -> q5,l,R
                 q5,_ -> q6,o,R
                 q6,_ -> q7,_,R
                 q7,_ -> q8,z,R
                 q8,_ -> q9,e,R
                 q9,_ -> qA,a,R