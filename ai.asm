ai_input proc 
    mov cx,100
loop1:
     cmp cx,0
     je y
     mov dx,1000
loop2: 
     sub dx,1
     cmp dx,0
     jne loop2
     sub cx,1
     jmp loop1
y:
aichk1: 
    mov al,1
    cmp k1,2
    je aichk12
    jne aichk2
aichk12: 
     mov al,2
     cmp k2,2
     je aichk123
     jne aichk14
aichk14:
     mov al,4
     cmp k4,2
     je aichk147
     jne aichk15
aichk15:
    mov al,5
    cmp k5,2
    je aichk159
    jne aichk2
aichk123:
     mov al,3
     cmp k3,0
     je inp_check
     jne aichk14 
aichk147:
    mov al,7
    cmp k7,0
    je inp_check
    jne aichk15
aichk159:
    mov al,9
    cmp k9,0
    je inp_check
    jne aichk2
aichk2:
     mov al,2
     cmp k2,2
     je aichk23
     jne aichk3
aichk23:
     mov al,3
     cmp k3,2
     je aichk231
     jne aichk25
aichk231:
     mov al,1
     cmp k1,0
     je inp_check
     jne aichk25
aichk3:
     mov al,3
     cmp k3,2
     je aichk31
     jne aichk4
aichk25:
     mov al,5
     cmp k5,2
     je aichk258
     jne aichk3
aichk258:
     mov al,8
     cmp k8,0
     je inp_check
     jne aichk3
aichk31:
      mov al,1
      cmp k1,2
      je aichk312
      jne aichk35
aichk312:
      mov al,2
      cmp k2,0
      je inp_check
      jne aichk35
aichk35:
      mov al,5
      cmp k5,2
      je aichk357
      jne aichk36
aichk357:
      mov al,7
      cmp k7,0
      je inp_check
      jne aichk36
aichk36:
      mov al,6
      cmp k6,2
      je aichk369
      jne aichk39
aichk369:
      mov al,9
      cmp k9,0
      je inp_check
      jne aichk39
aichk39:
      mov al,9
      cmp k9,2
      je aichk396
      jne aichk37
aichk396:
      mov al,6
      cmp k6,0
      je inp_check
      jne aichk37
aichk37:
      mov al,7
      cmp k7,2
      je aichk375
      jne aichk4
aichk375:
      mov al,5
      cmp k5,0
      je inp_check
      jne aichk4
aichk4:
      mov al,4
      cmp k4,2
      je aichk45
      jne aichk5
aichk45:
      mov al,5
      cmp k5,2
      je aichk456
      jne aichk46
aichk456:
      mov al,6
      cmp k6,0
      je inp_check
      jne aichk46
aichk46:
      mov al,6
      cmp k6,2
      je aichk465
      jne aichk47
aichk465:
      mov al,5
      cmp k5,0
      je inp_check
      jne aichk47
aichk47:
      mov al,7
      cmp k7,2
      je aichk471
      jne aichk5
aichk471:
      mov al,1
      cmp k1,0
      je inp_check
      jne aichk5
aichk5:
      mov al,5
      cmp k5,2
      je aichk56
      jne aichk6
aichk56:
      mov al,6
      cmp k6,2
      je aichk564
      jne aichk57
aichk564:
      mov al,4
      cmp k4,0
      je inp_check
      jne aichk57
aichk57:
      mov al,7
      cmp k7,2
      je aichk573
      jne aichk58
aichk573:
      mov al,3
      cmp k3,0
      je inp_check
      jne aichk58
aichk58:
      mov al,8
      cmp k8,2
      je aichk582
      jne aichk59
aichk582:
      mov al,2
      cmp k2,0
      je inp_check
      jne aichk59
aichk59:
      mov al,9
      cmp k9,2
      je aichk591
      jne aichk6
aichk591:
      mov al,1
      cmp k1,0
      je inp_check
      jne aichk6
aichk6:
      mov al,6
      cmp k6,2
      je aichk69
      jne aichk7
aichk69:
      mov al,9
      cmp k9,2
      je aichk693
      jne aichk7
aichk693:
      mov al,3
      cmp k3,0
      je inp_check
      jne aichk7
aichk7:
      mov al,7
      cmp k7,2
      je aichk71
      jne aichk8
aichk71:
      mov al,1
      cmp k1,2
      je aichk714
      jne aichk78
aichk714:
      mov al,4
      cmp k4,0
      je inp_check
      jne aichk78
aichk78:
      mov al,8
      cmp k8,2
      je aichk789
      jne aichk79
aichk789:
      mov al,9
      cmp k9,0
      je inp_check
      jne aichk79
aichk79:
      mov al,9
      cmp k9,2
      je aichk798
      jne aichk8 
aichk798:
      mov al,8
      cmp k8,0
      je inp_check
      jne aichk8
aichk8:
      mov al,8
      cmp k8,2
      je aichk82
      jne aichk9
aichk82:
      mov al,2
      cmp k2,2
      je aichk825
      jne aichk89
aichk825:
      mov al,5
      cmp k5,0
      je inp_check
      jne aichk89
aichk89:
      mov al,9
      cmp k9,2
      je aichk897
      jne aichk9
aichk897:
      mov al,7
      cmp k7,0
      je inp_check
      jne aichk9
aichk9:
      mov al,9
      cmp k9,2
      je aichk91
      jne z
aichk91:
      mov al,1
      cmp k1,2
      je aichk915
      jne z
aichk915:
      mov al,5
      cmp k5,0
      je inp_check
      jne z
z:
pchk1: 
    mov al,1
    cmp k1,1
    je pchk12
    jne pchk2
pchk12: 
     mov al,2
     cmp k2,1
     je pchk123
     jne pchk14
pchk14:
     mov al,4
     cmp k4,1
     je pchk147
     jne pchk15
pchk15:
    mov al,5
    cmp k5,1
    je pchk159
    jne pchk2
pchk123:
     mov al,3
     cmp k3,0
     je inp_check
     jne pchk14 
pchk147:
    mov al,7
    cmp k7,0
    je inp_check
    jne pchk15
pchk159:
    mov al,9
    cmp k9,0
    je inp_check
    jne pchk2
pchk2:
     mov al,2
     cmp k2,1
     je pchk23
     jne pchk3
pchk23:
     mov al,3
     cmp k3,1
     je pchk231
     jne pchk25
pchk231:
     mov al,1
     cmp k1,0
     je inp_check
     jne pchk25
pchk3:
     mov al,3
     cmp k3,1
     je pchk31
     jne pchk4
pchk25:
     mov al,5
     cmp k5,1
     je pchk258
     jne pchk3
pchk258:
     mov al,8
     cmp k8,0
     je inp_check
     jne pchk3
pchk31:
      mov al,1
      cmp k1,1
      je pchk312
      jne pchk35
pchk312:
      mov al,2
      cmp k2,0
      je inp_check
      jne pchk35
pchk35:
      mov al,5
      cmp k5,1
      je pchk357
      jne pchk36
pchk357:
      mov al,7
      cmp k7,0
      je inp_check
      jne pchk36
pchk36:
      mov al,6
      cmp k6,1
      je pchk369
      jne pchk39
pchk369:
      mov al,9
      cmp k9,0
      je inp_check
      jne pchk39
pchk39:
      mov al,9
      cmp k9,1
      je pchk396
      jne pchk37
pchk396:
      mov al,6
      cmp k6,0
      je inp_check
      jne pchk37
pchk37:
      mov al,7
      cmp k7,1
      je pchk375
      jne pchk4
pchk375:
      mov al,5
      cmp k5,0
      je inp_check
      jne pchk4
pchk4:
      mov al,4
      cmp k4,1
      je pchk45
      jne pchk5
pchk45:
      mov al,5
      cmp k5,1
      je pchk456
      jne pchk46
pchk456:
      mov al,6
      cmp k6,0
      je inp_check
      jne pchk46
pchk46:
      mov al,6
      cmp k6,1
      je pchk465
      jne pchk47
pchk465:
      mov al,5
      cmp k5,0
      je inp_check
      jne pchk47
pchk47:
      mov al,7
      cmp k7,1
      je pchk471
      jne pchk5
pchk471:
      mov al,1
      cmp k1,0
      je inp_check
      jne pchk5
pchk5:
      mov al,5
      cmp k5,1
      je pchk56
      jne pchk6
pchk56:
      mov al,6
      cmp k6,1
      je pchk564
      jne pchk57
pchk564:
      mov al,4
      cmp k4,0
      je inp_check
      jne pchk57
pchk57:
      mov al,7
      cmp k7,1
      je pchk573
      jne pchk58
pchk573:
      mov al,3
      cmp k3,0
      je inp_check
      jne pchk58
pchk58:
      mov al,8
      cmp k8,1
      je pchk582
      jne pchk59
pchk582:
      mov al,2
      cmp k2,0
      je inp_check
      jne pchk59
pchk59:
      mov al,9
      cmp k9,1
      je pchk591
      jne pchk6
pchk591:
      mov al,1
      cmp k1,0
      je inp_check
      jne pchk6
pchk6:
      mov al,6
      cmp k6,1
      je pchk69
      jne pchk7
pchk69:
      mov al,9
      cmp k9,1
      je pchk693
      jne pchk7
pchk693:
      mov al,3
      cmp k3,0
      je inp_check
      jne pchk7
pchk7:
      mov al,7
      cmp k7,1
      je pchk71
      jne pchk8
pchk71:
      mov al,1
      cmp k1,1
      je pchk714
      jne pchk78
pchk714:
      mov al,4
      cmp k4,0
      je inp_check
      jne pchk78
pchk78:
      mov al,8
      cmp k8,1
      je pchk789
      jne pchk79
pchk789:
      mov al,9
      cmp k9,0
      je inp_check
      jne pchk79
pchk79:
      mov al,9
      cmp k9,1
      je pchk798
      jne pchk8 
pchk798:
      mov al,8
      cmp k8,0
      je inp_check
      jne pchk8
pchk8:
      mov al,8
      cmp k8,1
      je pchk82
      jne pchk9
pchk82:
      mov al,2
      cmp k2,1
      je pchk825
      jne pchk89
pchk825:
      mov al,5
      cmp k5,0
      je inp_check
      jne pchk89
pchk89:
      mov al,9
      cmp k9,1
      je pchk897
      jne pchk9
pchk897:
      mov al,7
      cmp k7,0
      je inp_check
      jne pchk9
pchk9:
      mov al,9
      cmp k9,1
      je pchk91
      jne label3
pchk91:
      mov al,1
      cmp k1,1
      je pchk915
      jne label3
pchk915:
      mov al,5
      cmp k5,0
      je inp_check
      jne label3
label3:
     mov ah,0
     mov al,mul_number
     mul a
     div b
     add a,1
     cmp ah,0
     je label3
     xchg ah,al 
inp_check:
   cmp al,1
   je c1
   cmp al,2
   je c2
   cmp al,3
   je c3
   cmp al,4
   je c4
   cmp al,5
   je c5
   cmp al,6
   je c6
   cmp al,7
   je c7
   cmp al,8
   je c8
   cmp al,9
   je c9
c1: 
   cmp k1,0
   jne label3
   mov k1,2
   mov comline1,110
   mov comline2,110 
   ;com_print4
   jmp exit2
c2: 
   cmp k2,0
   jne label3
   mov k2,2
    mov comline1,180
   mov comline2,110 
   ;com_print4
   jmp exit2 
c3:
   cmp k3,0
   jne label3
   mov k3,2
   mov comline1,250
   mov comline2,110 
   ;com_print4
   jmp exit2  
c4:
   cmp k4,0
   jne label3
   mov k4,2 
   mov comline1,110
   mov comline2,180
  ; gotoxy 17,12
  ; print3 
  ;com_print4
   jmp exit2
c5: 
   cmp k5,0
   jne label3
   mov k5,2    
   mov comline1,180
   mov comline2,180 
   ;com_print4
   jmp exit2 
c6:
   cmp k6,0
   jne label3 
   mov k6,2 
    mov comline1,250
   mov comline2,180 
   ; com_print4
   jmp exit2 
c7:
   cmp k7,0
   jne label3
   mov k7,2    
    mov comline1,110
   mov comline2,250 
  ; com_print4
   jmp exit2 
c8:
   cmp k8,0
   jne label3
   mov k8,2     
   mov comline1,180
   mov comline2,250 
   jmp exit2 
c9:
   cmp k9,0
   jne label3
   mov k9,2     
   mov comline1,250
   mov comline2,250
   ;com_print4
   jmp exit2      
exit2:
    call com_print4
    ret
    ai_input endp