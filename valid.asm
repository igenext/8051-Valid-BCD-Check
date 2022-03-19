mov r2,#0 //No. of Valid BCDs
mov r3,#0 //No. of Invalid BCDs
mov r0,#0ah //total numbers
mov r1,#20h //starting RAM memory location
l1:mov a,@r1
mov b,a
add a,#06h
jnb ac,l2
inc r3
sjmp l5
l2:mov a,b
swap a
add a,#06h
jnb ac,l4
inc r3
sjmp l5
l4:
inc r2
l5:
inc r1
djnz r0,l1
end