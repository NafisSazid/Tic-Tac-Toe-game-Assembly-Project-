
.MODEL medium
.STACK
.DATA 
rule db 'Press any number between 1 to 9.'  
input db 'INPUT: '
rule2 db '(Sequences are like the grid below)'
pwinner db 'Player 1 wins' 
comwinner db 'Computer wins'
p2winner db 'Player 2 wins'
tie db 'Match Tie' 
finish1 db 'Press Enter to continue'
finish2 db 'Press Escape to exit'  
invalid_in db 'Invalid Input'
one_player db 'ONE PLAYER'
two_player db 'TWO PLAYERS'
game_exit db 'EXIT' 
nameg db 'TIC-TAC-TOE GAME'
player_in_turn db 'PlayerInTurn: '
player1_turn db  'Player1'
player2_turn db  'Player2'
computer_turn db 'Computer'
sign1 db 'Player 1 takes "x"'
sign2 db 'Player 2/Computer takes "0"'
input_val db 0 
number_of_times db 0
option_indicator db 0
dia1 dw 293
winning_line dw 0
dia2 dw 103 
clear db ' '
color_val db 0
escape_pressed db 0
mode db 0
value db 0
col db 0
row db 0
K1 DB 0H
K2 DB 0H
K3 DB 0H
K4 DB 0H
K5 DB 0H
K6 DB 0H
K7 DB 0H
K8 DB 0H
K9 DB 0H
len db 0 
index db 46
number db 0
number2 db 0  
number3 db 0
winner db 0
mul_number db 7 
a db 2
b db 10  
pline1 dw 0
pline2 dw 0
pline3 dw 0
pline4 dw 0
comline1 dw 0
comline2 dw 0
comline3 dw 0
comline4 dw 0
.CODE 
player_print1 macro
   mov ah,0ch
   mov al,7
   mov cx,pline1
   mov dx,pline2
   mov pline3,cx
   add pline3,50
   mov pline4,dx
   add pline4,50
linep1x:
   int 10h
   inc cx
   inc dx
   cmp cx,pline3
   jle linep1x
   mov cx,pline1
   mov dx,pline4
linep1y:
   int 10h
   inc cx
   dec dx
   cmp cx,pline3
   jle linep1y
endm  
com_print4 proc
   mov ah,0ch
   mov al,7
   mov cx,comline1
   mov dx,comline2 
   mov comline3,cx
   mov comline4,dx
   add comline3,50
   add comline4,50
linec4x1:
   int 10h
   inc dx
   cmp dx,comline4
   jle linec4x1
   mov cx,comline3
   mov dx,comline2
linec4x2: 
   int 10h
   inc dx
   cmp dx,comline4
   jle linec4x2
   mov cx,comline1
   mov dx,comline2
linec4x3:
   int 10h
   inc cx
   cmp cx,comline3
   jle linec4x3
   mov cx,comline1
   mov dx,comline4
linec4x4:
   int 10h
   inc cx
   cmp cx,comline3
   jle linec4x4  
ret
com_print4 endp 
ruleprint proc
 MOV BP, OFFSET rule ; ES: BP POINTS TO THE TEXT
MOV AH, 13H ; WRITE THE STRING
MOV AL, 01H; ATTRIBUTE IN BL, MOVE CURSOR TO THAT POSITION
XOR BH,BH ; VIDEO PAGE = 0
MOV BL, 3 
MOV CX, 32 ; LENGTH OF THE STRING
MOV DH, 4 ;ROW TO PLACE STRING
MOV DL, 45  ; COLUMN TO PLACE STRING
INT 10H 
MOV BP, OFFSET rule2 ; ES: BP POINTS TO THE TEXT
MOV AH, 13H ; WRITE THE STRING
MOV AL, 01H; ATTRIBUTE IN BL, MOVE CURSOR TO THAT POSITION
XOR BH,BH ; VIDEO PAGE = 0
MOV BL, 3 
MOV CX, 35 ; LENGTH OF THE STRING
MOV DH, 5 ;ROW TO PLACE STRING
MOV DL, 45  ; COLUMN TO PLACE STRING
INT 10H
mov bp,offset player_in_turn
mov ah,13h
mov al,01h
xor bh,bh
mov bl,3
mov cx,14
mov dh,21
mov dl,45
int 10h
mov bp,offset sign1
mov ah,13h
mov al,01h
xor bh,bh
mov bl,3
mov cx,18
mov dh,17
mov dl,45
int 10h
mov bp,offset sign2
mov ah,13h
mov al,01h
xor bh,bh
mov bl,3
mov cx,27
mov dh,19
mov dl,45
int 10h
ret
ruleprint endp
block_draw proc
     mov ah,0ch ;(write pixel)
     mov al,7    ;(color)
     mov cx,360
     mov dx,196
l1:
    int 10h
    inc cx
    cmp cx,480
    jle l1 
    mov cx,360
    mov dx,236
l2:
    int 10h
    inc cx
    cmp cx,480
    jle l2
    mov cx,360
    mov dx,156
l3:
    int 10h
    inc cx
    cmp cx,480 
    jle l3
    mov dx,116
    mov cx,360
l4:
    int 10h
    inc dx
    cmp dx,236
    jle l4
    mov dx,116
    mov cx,480
l5:
    int 10h
    inc dx
    cmp dx,236
    jle l5 
    mov cx,360
    mov dx,116
l6:
    int 10h
    inc cx
    cmp cx,480
    jle l6
    mov cx,400
    mov dx,116
l7:
    int 10h
    inc dx
    cmp dx,236
    jle l7
    mov cx,440
    mov dx,116
l8:
     int 10h
    inc dx
    cmp dx,236
    jle l8
    ret
    block_draw endp 

block_draw2 proc
    mov ah,0ch
    mov al,1
    mov cx,100
    mov dx,100
l11:
    int 10h
    inc cx
    cmp cx,310
    jle l11
    mov cx,100
    mov dx,170
l12:
    int 10h
    inc cx
    cmp cx,310
    jle l12
    mov cx,100
    mov dx,240
l13:
    int 10h
    inc cx
    cmp cx,310
    jle l13
    mov cx,100
    mov dx,310
l14:
    int 10h
    inc cx
    cmp cx,310
    jle l14
    mov cx,100
    mov dx,100
l15:
    int 10h
    inc dx
    cmp dx,310
    jle l15
    mov cx,170
    mov dx,100
l16:
    int 10h
    inc dx
    cmp dx,310
    jle l16
    mov cx,240
    mov dx,100    
l17:
    int 10h
    inc dx
    cmp dx,310
    jle l17
    mov cx,310
    mov dx,100
l18:
    int 10h
    inc dx
    cmp dx,310
    jle l18
    ret
    block_draw2 endp
print2 macro
  mov ah,9
  mov al,'X'
  mov bl,7
  mov cx,1
  int 10h
endm
print3 macro
    mov ah,9
    mov al,'0'
    mov bl,7
    mov cx,1
    int 10h
endm
GOTOXY  macro col,row
        MOV     AH, 02h
        MOV     DH, row
        MOV     DL, col
        MOV     BH, 0
        INT     10h 
        
endm          
main proc  
mov ax,@data
MOV ES, AX 
mov ds,ax
mov ah,0
mov al,12h
int 10h
jmp home
p_in:  
   ;mov al,0
   ;cmp  al,0
   ;je x 
   mov bp,offset clear
   mov ah,13h
   mov al,01h
   xor bh,bh
   mov bl,0
   mov cx,10
   mov dh,21
   mov dl,60
   int 10h 
   mov bp,offset player1_turn
   mov ah,13h
   mov al,01h
   xor bh,bh
   mov bl,3
   mov cx,7
   mov dh,21
   mov dl,60
   int 10h
   mov bp,offset player_in_turn
   mov ah,13h
   mov al,01h
   xor bh,bh
   mov bl,3
   mov cx,14
   mov dh,21
   mov dl,45
   int 10h
   call print
   mov ah,1
   int 21h 
   cmp al,27
   je home
   mov input_val,al
   cmp al,48
   jle invalid_input
   cmp al,58
   jge invalid_input 
    mov bp,offset invalid_in 
    mov ah,13h
    mov al,01h
    xor bh,bh 
    mov bl,0
    mov cx,50
    mov dh,21
    mov dl,20
    int 10h 
    mov ah,2
    mov bh,0
    mov dh,21
    mov dl,20
    int 10h
    mov ah,9
    mov al,input_val
    mov bl,7
    mov cx,1
    int 10h
   cmp al,49
   je p1
   cmp al,50
   je p2
   cmp al,51
   je p3
   cmp al,52
   je p4
   cmp al,53
   je p5
   cmp al,54
   je p6
   cmp al,55
   je p7
   cmp al,56
   je p8
   cmp al,57
   je p9

p1: 
   cmp k1,0
   jne invalid_input
   mov k1,1
   ;gotoxy 17,8 
   mov pline1,110
   mov pline2,110
  ; player_print1 
   jmp x
p2: 
   cmp k2,0
   jne invalid_input
   mov k2,1
   ;gotoxy 26,8 
   mov pline1,180
   mov pline2,110
   ;player_print1
  ; print2 
   jmp x
p3: 
   cmp k3,0
   jne invalid_input
   mov k3,1
  ; gotoxy 35,8
   mov pline1,250
   mov pline2,110
   ;player_print1
   ;print2  
   jmp x
p4: 
   cmp k4,0
   jne invalid_input
    mov k4,1
   ; lgotoxy 17,12
    ;print2 
    mov pline1,110
   mov pline2,180
   ;player_print1
    jmp x 
p5: 
   cmp k5,0
   jne invalid_input
    mov k5,1    
    mov pline1,180
   mov pline2,180
   ;player_print1
    jmp x
p6: 
   cmp k6,0
   jne invalid_input
    mov k6,1 
     mov pline1,250
   mov pline2,180
   ;player_print1
     jmp x
p7: 
    cmp k7,0
    jne invalid_input
    mov k7,1    
     mov pline1,110
   mov pline2,250
   ;player_print1
     jmp x
p8:
    cmp k8,0
   jne invalid_input
    mov k8,1     
     mov pline1,180
   mov pline2,250
   ;player_print1
     jmp x
p9: 
   cmp k9,0
   jne invalid_input
   mov k9,1     
   mov pline1,250
   mov pline2,250
   ;player_print1 
   jmp x 
ai_input_start: 
   mov bp,offset clear
   mov ah,13h
   mov al,01h
   xor bh,bh
   mov bl,0
   mov cx,10
   mov dh,21
   mov dl,60
   int 10h 
   mov bp,offset computer_turn
   mov ah,13h
   mov al,01h
   xor bh,bh
   mov bl,3
   mov cx,8
   mov dh,21
   mov dl,60
   int 10h
    mov bp,offset player_in_turn
   mov ah,13h
   mov al,01h
   xor bh,bh
   mov bl,3
   mov cx,14
   mov dh,21
   mov dl,45
   int 10h
    call print 
   call ai_input
   inc number2 
   mov value,2
  call check
   cmp winner,2
   je result2 
   cmp number2,5
   je x1
   jmp p_in
x1: 
   cmp winner,1
   je result
   cmp winner,2
   je result2
   cmp winner,0
   je result_tie
x: 
   player_print1
   inc number
   mov value,1
   call check
   cmp winner,1
   je result
   cmp number,5
   je x1    
   mov bl,0
   cmp mode,1
   je x2 
   cmp mode,2
   je x4
   
x2:
    jmp ai_input_start 
x4:
    call human_2p
    cmp escape_pressed,1
    je home
    call com_print4
    inc number3
     mov value,2
  call check
   cmp winner,2
   je result2 
   jmp p_in
invalid_input:
    mov bp,offset invalid_in 
    mov ah,13h
    mov al,01h
    xor bh,bh 
    mov bl,3
    mov cx,13
    mov dh,21
    mov dl,20
    int 10h 
    jmp p_in   
result_tie:
   mov bp,offset tie
   mov ah,13h
   mov al,01h
   xor bh,bh
   mov bl,7
   mov cx,9
   mov dh,23
   mov dl,13
   int 10h 
   jmp exit
result:
   mov bp,offset pwinner
   mov ah,13h
   mov al,01h
   xor bh,bh
   mov bl,7
   mov cx,13
   mov dh,23
   mov dl,13
   int 10h 
   jmp exit
result2: 
   cmp mode,2
   je result2_human
   mov bp,offset comwinner
   mov ah,13h
   mov al,01h
   xor bh,bh
   mov bl,7
   mov cx,13
   mov dh,23
   mov dl,13
   int 10h
   jmp exit
result2_human:
   mov bp,offset p2winner
   mov ah,13h
   mov al,01h
   xor bh,bh
   mov bl,7
   mov cx,13
   mov dh,23
   mov dl,13
   int 10h 
exit: 
 mov bp,offset finish1
   mov ah,13h
   mov al,01h
   xor bh,bh
   mov bl,7
   mov cx,23
   mov dh,25
   mov dl,13
   int 10h 
   mov bp,offset finish2
   mov ah,13h
   mov al,01h
   xor bh,bh
   mov bl,7
   mov cx,20
   mov dh,26
   mov dl,13
   int 10h 
mov ah,1
int 21h 
cmp al,0dh
je play
cmp al,27
je home
play: 
add number_of_times,1
cmp number_of_times,3
je play_number_correct
mov ah,0
mov al,12h
int 10h
mov k1,0
mov k2,0
mov k3,0
mov k4,0
mov k5,0
mov k6,0
mov k7,0
mov k8,0
mov k9,0
mov escape_pressed,0
mov number,0
mov number2,0
mov value,0
mov winner,0 
mov dia1,293
mov dia2,103
mov winning_line,0
mov len,0 
mov number3,0 
call block_draw2
call block_draw 
call print_index
call ruleprint 
cmp mode,1
je player_select
jmp p_in 
play_number_correct:
    mov number_of_times,0
    jmp play
player_select:
    cmp number_of_times,1
    je p_in
    cmp number_of_times,2 
    je x2
home: 
   mov mode,1
   call homepage
   cmp mode,3
   je exit_the_game
   mov number_of_times,0
   jmp play 
exit_the_game:
mov ah,0
mov al,12h
int 10h
mov ah,4ch
int 21h
main endp 
check proc
    ;cmp number,2
    ;jle exit1
    mov al,value
chck1:
     cmp k1,al
     je chck12
     jne chck2 
chck12:
     cmp k2,al 
     je chck123
     jne chck14
chck123:
     cmp k3,al
     je win_line1
chck14:
     cmp k4,al
     je chck147
     jne chck15
chck147:
      cmp k7,al
      je win_line3
chck15:
     cmp k5,al
     je chck159
     jne chck2
chck159:
     cmp k9,al
     je win_line2 
     jne chck2
chck2:
      cmp k2,al
      je chck25
      jne chck3
chck25:
      cmp k5,al
      je chck258
      jne chck3
chck258:
      cmp k8,al
      je win_line4
      jne chck3
chck3:
     cmp k3,al
     je chck36
     jne chck4
chck36:
     cmp k6,al
     je chck369
     jne chck35
chck369:
      cmp k9,al
      je win_line5
      jne chck35
chck35:
      cmp k5,al
      je chck357
      jne chck4
chck357:
      cmp k7,al
      je win_line6
      jne chck4
chck4:
      cmp k4,al
      je chck45
      jne chck7
chck45:
       cmp k5,al
       je chck456
       jne chck7
chck456:
       cmp k6,al
       je win_line7
       jne chck7
chck7:
      cmp k7,al
      je chck78
      jne exit1
chck78:
      cmp k8,al
      je chck789
      jne exit1
chck789:
      cmp k9,al
      je win_line8
      jne exit1
win_line1:
      mov winner,al
      mov cx,110      ;line 1,2,3
      mov dx,135 
      call win_line_draw1
      jmp exit1
win_line2:
      mov winner,al
      mov cx,102       ;line 1,5,9
      mov dx,110
      call win_line_draw2
      jmp exit1
win_line3:
      mov winner,al
      mov cx,135       ;line 
      mov dx,110
      call win_line_draw3
      jmp exit1
win_line4:
      mov winner,al
      mov cx,205       ;line 258
      mov dx,110
      call win_line_draw3
      jmp exit1
win_line5:
      mov winner,al
      mov cx,275       ;line 369
      mov dx,110
      call win_line_draw3
      jmp exit1
win_line6:
      mov winner,al
      mov cx,298       ;line 357
      mov dx,110
      call win_line_draw6
      jmp exit1
win_line7:
      mov winner,al
      mov cx,110      ;line 456
      mov dx,205 
      call win_line_draw1
      jmp exit1 
win_line8:
      mov winner,al
      mov cx,110      ;line 456
      mov dx,275 
      call win_line_draw1
      jmp exit1 
res:
    mov winner,al
exit1:
    ret
    check endp 
win_line_draw1 proc
    mov ah,0ch
    mov al,4 
    mov winning_line,dx
    add winning_line,6 
draw11:
    cmp dx,winning_line
    je draw1_ex 
    mov cx,110
draw12:
    int 10h
    inc cx
    cmp cx,300
    jle draw12
    add dx,1
    jmp draw11
draw1_ex: 
    ret
    win_line_draw1 endp
win_line_draw2 proc
    mov ah,0ch
    mov al,4
    mov winning_line,cx
    add winning_line,6  
draw21:
    mov cx,dia2 
    cmp cx,107
    je draw2_ex 
    mov dx,110
draw22:
    int 10h
    inc cx
    inc dx
    cmp dx,300
    jle draw22
    add dia2,1
    jmp draw21
draw2_ex:
    ret
    win_line_draw2 endp
win_line_draw3 proc
    mov ah,0ch
    mov al,4 
    mov winning_line,cx
    add winning_line,4
draw31:
    cmp cx,winning_line
    je draw3_ex
    mov dx,110
draw3:
    int 10h
    inc dx
    cmp dx,300
    jle draw3
    add cx,1
    jmp draw31 
draw3_ex:
    ret
    win_line_draw3 endp
win_line_draw6 proc
    mov ah,0ch
    mov al,4      
draw61:
    ;int 10h
    mov cx,dia1
    cmp cx,297
    je draw6_ex
    mov dx,110
draw62:
    int 10h
    inc dx
    dec cx
    cmp dx,300
    jle draw62
    add dia1,1
    jmp draw61
draw6_ex:
    ret
    win_line_draw6 endp

print proc
    MOV BP, OFFSET input ; ES: BP POINTS TO THE TEXT
MOV AH, 13H ; WRITE THE STRING
MOV AL, 01H; ATTRIBUTE IN BL, MOVE CURSOR TO THAT POSITION
XOR BH,BH ; VIDEO PAGE = 0
MOV BL, 7 ;white
MOV CX, 7 ; LENGTH OF THE STRING
MOV DH, 21 ;ROW TO PLACE STRING
MOV DL, 13  ; COLUMN TO PLACE STRING
INT 10H     
ret
print endp 
print_index proc
    mov al,49
    mov dl,47
row1:
    cmp len,3
    je en1
    mov ah,2
    mov dh,8
    mov bh,0
    int 10h
    mov ah,9    
    mov bl,2
    mov cx,1
    int 10h 
    add al,1
    add dl,5
    add len,1
    jmp row1 
en1:
    mov dl,47
    mov len,0
row2:
    cmp len,3
    je en2
    mov ah,2
    mov bh,0
    mov dh,11
    int 10h
    mov ah,9
    mov bl,2
    mov cx,1
    int 10h
    add al,1
    add dl,5 
    add len,1
    jmp row2
en2:  
    mov dl,47
    mov len,0
row3:
    cmp len,3
    je en3
    mov ah,2
    mov bh,0
    mov dh,13
    int 10h
    mov ah,9
    mov bl,2
    mov cx,1
    int 10h
    add al,1
    add dl,5 
    add len,1
    jmp row3
en3: 
    mov al,49
    mov dl,47
    ret
    print_index endp
;include 'print_index.asm'
;include 'homepage.asm'  
homepage proc
     mov ah,0
     mov al,12h 
     int 10h
      MOV BP, offset nameg ; ES: BP POINTS TO THE TEXT
      MOV AH, 13H ; WRITE THE STRING
     MOV AL, 01H; ATTRIBUTE IN BL, MOVE CURSOR TO THAT POSITION
     XOR BH,BH ; VIDEO PAGE = 0
      MOV BL,5 ;
     MOV CX, 16 ; LENGTH OF THE STRING
     MOV DH, 3 ;ROW TO PLACE STRING
    MOV DL, 32  ; COLUMN TO PLACE STRING
    INT 10H 
     mov bp,offset one_player
    mov ah,13h
    MOV AL, 01H; ATTRIBUTE IN BL, MOVE CURSOR TO THAT POSITION
     XOR BH,BH ; VIDEO PAGE = 0
      MOV BL,2 ;
     MOV CX, 10 ; LENGTH OF THE STRING
     MOV DH, 10 ;ROW TO PLACE STRING
    MOV DL, 34  ; COLUMN TO PLACE STRING
    INT 10H 
    mov bp,offset two_player
    mov ah,13h
    MOV AL, 01H; ATTRIBUTE IN BL, MOVE CURSOR TO THAT POSITION
    XOR BH,BH ; VIDEO PAGE = 0
    MOV BL,6 ;
    MOV CX, 11; LENGTH OF THE STRING
    MOV DH, 12 ;ROW TO PLACE STRING
    MOV DL, 34 ; COLUMN TO PLACE STRING
    INT 10H
    mov bp,offset game_exit
    mov ah,13h
    MOV AL, 01H; ATTRIBUTE IN BL, MOVE CURSOR TO THAT POSITION
    XOR BH,BH ; VIDEO PAGE = 0
    MOV BL,6 ;
    MOV CX, 4; LENGTH OF THE STRING
    MOV DH, 14 ;ROW TO PLACE STRING
    MOV DL, 37 ; COLUMN TO PLACE STRING
    INT 10H
    mov mode,1
home_input:
      mov ah,0
      int 16h 
      cmp ah,28
      je home_exit
      cmp ah,50h
      je change
      cmp ah,48h
      je change2
      jmp home_input
change:
    mov color_val,2
    mov bp,offset clear
    mov ah,13h
    MOV AL, 01H; ATTRIBUTE IN BL, MOVE CURSOR TO THAT POSITION
     XOR BH,BH ; VIDEO PAGE = 0
      MOV BL,0 ;
     MOV CX, 50 ; LENGTH OF THE STRING
     MOV DH, 10 ;ROW TO PLACE STRING
    MOV DL, 32  ; COLUMN TO PLACE STRING
    INT 10H 
    mov bp,offset clear
    mov ah,13h
    MOV AL, 01H; ATTRIBUTE IN BL, MOVE CURSOR TO THAT POSITION
     XOR BH,BH ; VIDEO PAGE = 0
      MOV BL,0 ;
     MOV CX, 50 ; LENGTH OF THE STRING
     MOV DH, 12 ;ROW TO PLACE STRING
    MOV DL, 32  ; COLUMN TO PLACE STRING
    INT 10H
    mov bp,offset clear
    mov ah,13h
    MOV AL, 01H; ATTRIBUTE IN BL, MOVE CURSOR TO THAT POSITION
    XOR BH,BH ; VIDEO PAGE = 0
    MOV BL,0 ;
    MOV CX, 50 ; LENGTH OF THE STRING
    MOV DH, 14 ;ROW TO PLACE STRING
    MOV DL, 32  ; COLUMN TO PLACE STRING
    INT 10H
    add mode,1 
    cmp mode,4
    je mode_correct1
    jmp mode_compare
change2:
     mov color_val,2
     mov bp,offset clear
    mov ah,13h
    MOV AL, 01H; ATTRIBUTE IN BL, MOVE CURSOR TO THAT POSITION
     XOR BH,BH ; VIDEO PAGE = 0
      MOV BL,0 ;
     MOV CX, 50 ; LENGTH OF THE STRING
     MOV DH, 10 ;ROW TO PLACE STRING
    MOV DL, 32  ; COLUMN TO PLACE STRING
    INT 10H 
    mov bp,offset clear
    mov ah,13h
    MOV AL, 01H; ATTRIBUTE IN BL, MOVE CURSOR TO THAT POSITION
     XOR BH,BH ; VIDEO PAGE = 0
      MOV BL,0 ;
     MOV CX, 50 ; LENGTH OF THE STRING
     MOV DH, 12 ;ROW TO PLACE STRING
    MOV DL, 32  ; COLUMN TO PLACE STRING
    INT 10H
    mov bp,offset clear
    mov ah,13h
    MOV AL, 01H; ATTRIBUTE IN BL, MOVE CURSOR TO THAT POSITION
    XOR BH,BH ; VIDEO PAGE = 0
    MOV BL,0 ;
    MOV CX, 50 ; LENGTH OF THE STRING
    MOV DH, 14 ;ROW TO PLACE STRING
    MOV DL, 32  ; COLUMN TO PLACE STRING
    INT 10H
    sub mode,1 
    cmp mode,0
    je mode_correct2
    jmp mode_compare
mode_correct1:
   mov mode,1
   jmp mode_compare
mode_correct2:
   mov mode,3
   jmp mode_compare 
mode_compare:
    cmp mode,2
    je highl2
    cmp mode,3
    je highl3
    cmp mode,1
    je highl1
highl2:    
    call twop_print
    add color_val,4
    call onep_print
    call exit_print
    jmp home_input
highl3:
    call exit_print
    add color_val,4
    call onep_print
    call twop_print
    jmp home_input
highl1:
    call onep_print
    add color_val,4
    call twop_print
    call exit_print
    jmp home_input      
home_exit:
     ret
homepage endp  
onep_print proc
    mov bp,offset one_player
    mov ah,13h
    MOV AL, 01H; ATTRIBUTE IN BL, MOVE CURSOR TO THAT POSITION
     XOR BH,BH ; VIDEO PAGE = 0
      MOV BL,color_val ;
     MOV CX, 10 ; LENGTH OF THE STRING
     MOV DH, 10 ;ROW TO PLACE STRING
    MOV DL, 34  ; COLUMN TO PLACE STRING
    INT 10H 
    ret
     onep_print endp   
twop_print proc
    mov bp,offset two_player
    mov ah,13h
    MOV AL, 01H; ATTRIBUTE IN BL, MOVE CURSOR TO THAT POSITION
     XOR BH,BH ; VIDEO PAGE = 0
      MOV BL,color_val ;
     MOV CX, 11; LENGTH OF THE STRING
     MOV DH, 12 ;ROW TO PLACE STRING
    MOV DL, 34 ; COLUMN TO PLACE STRING
    INT 10H 
ret
twop_print endp
exit_print proc
    mov bp,offset game_exit
    mov ah,13h
    MOV AL, 01H; ATTRIBUTE IN BL, MOVE CURSOR TO THAT POSITION
     XOR BH,BH ; VIDEO PAGE = 0
      MOV BL,color_val ;
     MOV CX, 4; LENGTH OF THE STRING
     MOV DH, 14 ;ROW TO PLACE STRING
    MOV DL, 37 ; COLUMN TO PLACE STRING
    INT 10H 
ret
exit_print endp
human_2p proc
p2_in:
    mov bp,offset clear
   mov ah,13h
   mov al,01h
   xor bh,bh
   mov bl,0
   mov cx,10
   mov dh,21
   mov dl,60
   int 10h
   mov bp,offset player2_turn
   mov ah,13h
   mov al,01h
   xor bh,bh
   mov bl,3
   mov cx,7
   mov dh,21
   mov dl,60
   int 10h
   mov bp,offset player_in_turn
   mov ah,13h
   mov al,01h
   xor bh,bh
   mov bl,3
   mov cx,14
   mov dh,21
   mov dl,45
   int 10h
    call print 
    mov ah,1
    int 21h 
    cmp al,27
    je escape_is_pressed
    mov input_val,al
   cmp al,48
   jle invalid_input2
   cmp al,58
   jge invalid_input2 
    mov bp,offset invalid_in 
    mov ah,13h
    mov al,01h
    xor bh,bh 
    mov bl,0
    mov cx,50
    mov dh,21
    mov dl,20
    int 10h 
    mov ah,2
    mov bh,0
    mov dh,21
    mov dl,20
    int 10h
    mov ah,9
    mov al,input_val
    mov bl,7
    mov cx,1
    int 10h
   cmp al,49
   je p21
   cmp al,50
   je p22
   cmp al,51
   je p23
   cmp al,52
   je p24
   cmp al,53
   je p25
   cmp al,54
   je p26
   cmp al,55
   je p27
   cmp al,56
   je p28
   cmp al,57
   je p29
p21: 
   cmp k1,0
   jne invalid_input2
   mov k1,2
   ;gotoxy 17,8 
   mov comline1,110
   mov comline2,110
  ; player_print1 
   jmp y2
p22: 
   cmp k2,0
   jne invalid_input2
   mov k2,2
   ;gotoxy 26,8 
   mov comline1,180
   mov comline2,110
   ;player_print1
  ; print2 
   jmp y2
p23: 
   cmp k3,0
   jne invalid_input2
   mov k3,2
  ; gotoxy 35,8
   mov comline1,250
   mov comline2,110
   ;player_print1
   ;print2  
   jmp y2
p24: 
   cmp k4,0
   jne invalid_input2
    mov k4,2
   ; lgotoxy 17,12
    ;print2 
    mov comline1,110
   mov comline2,180
   ;player_print1
    jmp y2 
p25: 
   cmp k5,0
   jne invalid_input2
    mov k5,2    
    mov comline1,180
   mov comline2,180
   ;player_print1
    jmp y2
p26: 
   cmp k6,0
   jne invalid_input2
    mov k6,2 
     mov comline1,250
   mov comline2,180
   ;player_print1
     jmp y2
p27: 
    cmp k7,0
    jne invalid_input2
    mov k7,2    
     mov comline1,110
   mov comline2,250
   ;player_print1
     jmp y2
p28:
    cmp k8,0
   jne invalid_input2
    mov k8,2     
     mov comline1,180
   mov comline2,250
   ;player_print1
     jmp y2
p29: 
   cmp k9,0
   jne invalid_input2
   mov k9,2     
   mov comline1,250
   mov comline2,250
   ;player_print1 
   jmp y2
y2:
   jmp human_p2_exit
invalid_input2:
    mov bp,offset invalid_in 
    mov ah,13h
    mov al,01h
    xor bh,bh 
    mov bl,3
    mov cx,13
    mov dh,21
    mov dl,20
    int 10h 
    jmp p2_in 
escape_is_pressed:
    mov escape_pressed,1
human_p2_exit:
    ret
    human_2p endp 
include ai.asm      
end main  
