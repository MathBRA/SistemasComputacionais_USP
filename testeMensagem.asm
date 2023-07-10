; Hello World - Escreve mensagem armazenada na memoria na tela


; ------- TABELA DE CORES -------
; adicione ao caracter para Selecionar a cor correspondente

; 0 branco							0000 0000
; 256 marrom						0001 0000
; 512 verde							0010 0000
; 768 oliva							0011 0000
; 1024 azul marinho					0100 0000
; 1280 roxo							0101 0000
; 1536 teal							0110 0000
; 1792 prata						0111 0000
; 2048 cinza						1000 0000
; 2304 vermelho						1001 0000
; 2560 lima							1010 0000
; 2816 amarelo						1011 0000
; 3072 azul							1100 0000
; 3328 rosa							1101 0000
; 3584 aqua							1110 0000
; 3840 branco						1111 0000



jmp main


mensagem : var #21
static mensagem + #0, #'A'
static mensagem + #1, #'A'
static mensagem + #2, #'A'
static mensagem + #3, #'a'
static mensagem + #4, #'B'
static mensagem + #5, #'C'
static mensagem + #6, #'E'
static mensagem + #7, #'N'
static mensagem + #8, #'T'
static mensagem + #9, #'E'
static mensagem + #10, #'R'
static mensagem + #11, #' '
static mensagem + #12, #'T'
static mensagem + #13, #'O'
static mensagem + #14, #' '
static mensagem + #15, #'S'
static mensagem + #16, #'T'
static mensagem + #17, #'A'
static mensagem + #18, #'R'
static mensagem + #19, #'T'
static mensagem + #20, #'\0'


;mensagem2 : string "Teste de mensagem"
ApagaTela:

	msg1 : string  "                                        "
	msg2 : string  "                                        "
	msg3 : string  "                                        "
	msg4 : string  "                                        "
	msg5 : string  "                                        "
	msg6 : string  "                                        "
	msg7 : string  "                                        "
	msg8 : string  "                                        "
	msg9 : string  "                                        "
	msg10 : string  "                                        "
	msg11 : string  "                                        "
	msg12 : string  "                                        "
	msg13 : string  "                                        "
	msg14 : string  "                                        "
	msg15 : string  "                                        "
	msg16 : string  "                                        "
	msg17 : string  "                                        "
	msg18 : string  "                                        "
	msg19 : string  "                                        "
	msg20 : string  "                                        "
	msg21 : string  "                                        "
	msg22 : string  "                                        "
	msg23 : string  "                                        "
	msg24 : string  "                                        "
	msg25 : string  "                                        "
	msg26 : string  "                                        "
	msg27 : string  "                                        "
	msg28 : string  "                                        "
	msg29 : string  "                                        "
	msg30 : string  "                                        "
	
telaInicial:
	
	msg1 : string  "$ # % & $ # % & $ # % & $ # % & $ # % & "
	msg2 : string  "#                                      $"
	msg3 : string  "%                                      #"
	msg4 : string  "&                                      %"
	msg5 : string  "$                                      &"
	msg6 : string  "#                                      $"
	msg7 : string  "%                                      #"
	msg8 : string  "&                                      %"
	msg9 : string  "$       _        _    __ |  /          &"
	msg10 : string  "#     |_) |    /_\  /   | /            $"
	msg11 : string  "%     |_) |__ /   \ \__ |/             #"
	msg12 : string  "&          __   _    __ |\             %"
	msg13 : string  "$     $ #   |  /_\  /   | \            &"
	msg14 : string  "#     % &  _| /   \ \__ |  \           $"
	msg15 : string  "%                                      #"
	msg16 : string  "&                                      %"
	msg17 : string  "$                                      &"
	msg18 : string  "#                                      $"
	msg19 : string  "%                                      #"
	msg20 : string  "&                                      %"
	msg21 : string  "#                                      &"
	msg22 : string  "$                                      $"
	msg23 : string  "&                                      #"
	msg24 : string  "%                                      %"
	msg25 : string  "#                                      &"
	msg26 : string  "$                                      $"
	msg27 : string  "&                                      #"
	msg28 : string  "%                                      &"
	msg29 : string  "#                                      %"
	msg30 : string  "$ # % & $ # % & $ # % & $ # % & $ # % &"
	

;---- Inicio do Programa Principal -----

main:
	call TelaInicial ;  r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso;  r1 = endereco onde comeca a mensagem; r2 = cor da mensagem.   Obs: a mensagem sera' impressa ate' encontrar "/0"

	halt
	
;---- Fim do Programa Principal -----
	
;---- Inicio das Subrotinas -----

TelaInicial:
	push r0
	push r1
	push r2
	
	loadn r0, #0
	loadn r1, #msg1
	loadn r2, #255
	call Imprimestr
	
	loadn r0, #40
	loadn r1, #msg2
	loadn r2, #255
	call Imprimestr
	
	loadn r0, #80
	loadn r1, #msg3
	loadn r2, #255
	call Imprimestr
	
	loadn r0, #120
	loadn r1, #msg4
	loadn r2, #255
	call Imprimestr
	
	loadn r0, #160
	loadn r1, #msg5
	loadn r2, #255
	call Imprimestr
	
	loadn r0, #200
	loadn r1, #msg6
	loadn r2, #255
	call Imprimestr
	 
	loadn r0, #240
	loadn r1, #msg7
	loadn r2, #255
	call Imprimestr
	
	loadn r0, #280
	loadn r1, #msg8
	loadn r2, #255
	call Imprimestr
	
	loadn r0, #320
	loadn r1, #msg9
	loadn r2, #255
	call Imprimestr
	
	loadn r0, #360
	loadn r1, #msg10
	loadn r2, #255
	call Imprimestr
	
	loadn r0, #400
	loadn r1, #msg11
	loadn r2, #255
	call Imprimestr
	
	loadn r0, #440
	loadn r1, #msg12
	loadn r2, #255
	call Imprimestr
	
	loadn r0, #480
	loadn r1, #msg13
	loadn r2, #255
	call Imprimestr
	
	loadn r0, #520
	loadn r1, #msg14
	loadn r2, #255
	call Imprimestr
	
	loadn r0, #560
	loadn r1, #msg15
	loadn r2, #255
	call Imprimestr
	
	loadn r0, #600
	loadn r1, #msg16
	loadn r2, #255
	call Imprimestr
	
	loadn r0, #640
	loadn r1, #msg17
	loadn r2, #255
	call Imprimestr
	
	loadn r0, #680
	loadn r1, #msg18
	loadn r2, #255
	call Imprimestr
	
	loadn r0, #720
	loadn r1, #msg19
	loadn r2, #255
	call Imprimestr
	
	loadn r0, #760
	loadn r1, #msg20
	loadn r2, #255
	call Imprimestr
	
	loadn r0, #800
	loadn r1, #msg21
	loadn r2, #255
	call Imprimestr
	
	loadn r0, #840
	loadn r1, #msg22
	loadn r2, #255
	call Imprimestr
	
	loadn r0, #880
	loadn r1, #msg23
	loadn r2, #255
	call Imprimestr
	
	loadn r0, #920
	loadn r1, #msg24
	loadn r2, #255
	call Imprimestr
	
	loadn r0, #960
	loadn r1, #msg25
	loadn r2, #255
	call Imprimestr
	
	loadn r0, #1000
	loadn r1, #msg26
	loadn r2, #255
	call Imprimestr
	
	loadn r0, #1040
	loadn r1, #msg27
	loadn r2, #255
	call Imprimestr
	
	loadn r0, #1080
	loadn r1, #msg28
	loadn r2, #255
	call Imprimestr
	
	loadn r0, #1120
	loadn r1, #msg29
	loadn r2, #255
	call Imprimestr
	
	loadn r0, #1160
	loadn r1, #msg30
	loadn r2, #255
	call Imprimestr
	
	pop r2
	pop r1
	pop r0
	rts
	
Imprimestr:	;  Rotina de Impresao de Mensagens:    r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso;  r1 = endereco onde comeca a mensagem; r2 = cor da mensagem.   Obs: a mensagem sera' impressa ate' encontrar "/0"
	push r0	; protege o r0 na pilha para preservar seu valor
	push r1	; protege o r1 na pilha para preservar seu valor
	push r2	; protege o r1 na pilha para preservar seu valor
	push r3	; protege o r3 na pilha para ser usado na subrotina
	push r4	; protege o r4 na pilha para ser usado na subrotina
	
	loadn r3, #'\0'	; Criterio de parada

ImprimestrLoop:	
	loadi r4, r1
	cmp r4, r3
	jeq ImprimestrSai
	add r4, r2, r4
	outchar r4, r0
	inc r0
	inc r1
	jmp ImprimestrLoop
	
ImprimestrSai:	
	pop r4	; Resgata os valores dos registradores utilizados na Subrotina da Pilha
	pop r3
	pop r2
	pop r1
	pop r0
	rts
	
	
	