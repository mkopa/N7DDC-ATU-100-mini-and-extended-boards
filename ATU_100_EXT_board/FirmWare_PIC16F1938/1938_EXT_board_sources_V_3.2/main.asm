
_correction:

;main.h,44 :: 		int correction(int input) {
;main.h,46 :: 		if(input <= 80) return 0;
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction488
	MOVF       FARG_correction_input+0, 0
	SUBLW      80
L__correction488:
	BTFSS      STATUS+0, 0
	GOTO       L_correction0
	CLRF       R0
	CLRF       R1
	RETURN
L_correction0:
;main.h,47 :: 		if(input <= 171) input += 244;
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction489
	MOVF       FARG_correction_input+0, 0
	SUBLW      171
L__correction489:
	BTFSS      STATUS+0, 0
	GOTO       L_correction1
	MOVLW      244
	ADDWF      FARG_correction_input+0, 1
	MOVLW      0
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction2
L_correction1:
;main.h,48 :: 		else if(input <= 328) input += 254;
	MOVLW      128
	XORLW      1
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction490
	MOVF       FARG_correction_input+0, 0
	SUBLW      72
L__correction490:
	BTFSS      STATUS+0, 0
	GOTO       L_correction3
	MOVLW      254
	ADDWF      FARG_correction_input+0, 1
	MOVLW      0
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction4
L_correction3:
;main.h,49 :: 		else if(input <= 582) input += 280;
	MOVLW      128
	XORLW      2
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction491
	MOVF       FARG_correction_input+0, 0
	SUBLW      70
L__correction491:
	BTFSS      STATUS+0, 0
	GOTO       L_correction5
	MOVLW      24
	ADDWF      FARG_correction_input+0, 1
	MOVLW      1
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction6
L_correction5:
;main.h,50 :: 		else if(input <= 820) input += 297;
	MOVLW      128
	XORLW      3
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction492
	MOVF       FARG_correction_input+0, 0
	SUBLW      52
L__correction492:
	BTFSS      STATUS+0, 0
	GOTO       L_correction7
	MOVLW      41
	ADDWF      FARG_correction_input+0, 1
	MOVLW      1
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction8
L_correction7:
;main.h,51 :: 		else if(input <= 1100) input += 310;
	MOVLW      128
	XORLW      4
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction493
	MOVF       FARG_correction_input+0, 0
	SUBLW      76
L__correction493:
	BTFSS      STATUS+0, 0
	GOTO       L_correction9
	MOVLW      54
	ADDWF      FARG_correction_input+0, 1
	MOVLW      1
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction10
L_correction9:
;main.h,52 :: 		else if(input <= 2181) input += 430;
	MOVLW      128
	XORLW      8
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction494
	MOVF       FARG_correction_input+0, 0
	SUBLW      133
L__correction494:
	BTFSS      STATUS+0, 0
	GOTO       L_correction11
	MOVLW      174
	ADDWF      FARG_correction_input+0, 1
	MOVLW      1
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction12
L_correction11:
;main.h,53 :: 		else if(input <= 3322) input += 484;
	MOVLW      128
	XORLW      12
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction495
	MOVF       FARG_correction_input+0, 0
	SUBLW      250
L__correction495:
	BTFSS      STATUS+0, 0
	GOTO       L_correction13
	MOVLW      228
	ADDWF      FARG_correction_input+0, 1
	MOVLW      1
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction14
L_correction13:
;main.h,54 :: 		else if(input <= 4623) input += 530;
	MOVLW      128
	XORLW      18
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction496
	MOVF       FARG_correction_input+0, 0
	SUBLW      15
L__correction496:
	BTFSS      STATUS+0, 0
	GOTO       L_correction15
	MOVLW      18
	ADDWF      FARG_correction_input+0, 1
	MOVLW      2
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction16
L_correction15:
;main.h,55 :: 		else if(input <= 5862) input += 648;
	MOVLW      128
	XORLW      22
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction497
	MOVF       FARG_correction_input+0, 0
	SUBLW      230
L__correction497:
	BTFSS      STATUS+0, 0
	GOTO       L_correction17
	MOVLW      136
	ADDWF      FARG_correction_input+0, 1
	MOVLW      2
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction18
L_correction17:
;main.h,56 :: 		else if(input <= 7146) input += 743;
	MOVLW      128
	XORLW      27
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction498
	MOVF       FARG_correction_input+0, 0
	SUBLW      234
L__correction498:
	BTFSS      STATUS+0, 0
	GOTO       L_correction19
	MOVLW      231
	ADDWF      FARG_correction_input+0, 1
	MOVLW      2
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction20
L_correction19:
;main.h,57 :: 		else if(input <= 8502) input += 800;
	MOVLW      128
	XORLW      33
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction499
	MOVF       FARG_correction_input+0, 0
	SUBLW      54
L__correction499:
	BTFSS      STATUS+0, 0
	GOTO       L_correction21
	MOVLW      32
	ADDWF      FARG_correction_input+0, 1
	MOVLW      3
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction22
L_correction21:
;main.h,58 :: 		else if(input <= 10500) input += 840;
	MOVLW      128
	XORLW      41
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_correction_input+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__correction500
	MOVF       FARG_correction_input+0, 0
	SUBLW      4
L__correction500:
	BTFSS      STATUS+0, 0
	GOTO       L_correction23
	MOVLW      72
	ADDWF      FARG_correction_input+0, 1
	MOVLW      3
	ADDWFC     FARG_correction_input+1, 1
	GOTO       L_correction24
L_correction23:
;main.h,59 :: 		else  input += 860;
	MOVLW      92
	ADDWF      FARG_correction_input+0, 1
	MOVLW      3
	ADDWFC     FARG_correction_input+1, 1
L_correction24:
L_correction22:
L_correction20:
L_correction18:
L_correction16:
L_correction14:
L_correction12:
L_correction10:
L_correction8:
L_correction6:
L_correction4:
L_correction2:
;main.h,61 :: 		return input;
	MOVF       FARG_correction_input+0, 0
	MOVWF      R0
	MOVF       FARG_correction_input+1, 0
	MOVWF      R1
;main.h,62 :: 		}
	RETURN
; end of _correction

_get_reverse:

;main.h,66 :: 		int get_reverse() {
;main.h,68 :: 		FVRCON = 0b10000001; // ADC 1024 vmV Vref
	MOVLW      129
	MOVWF      FVRCON+0
;main.h,69 :: 		while(FVRCON.B6 == 0);
L_get_reverse25:
	BTFSC      FVRCON+0, 6
	GOTO       L_get_reverse26
	GOTO       L_get_reverse25
L_get_reverse26:
;main.h,70 :: 		Reverse = ADC_Get_Sample(0);
	CLRF       FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0, 0
	MOVWF      get_reverse_Reverse_L0+0
	MOVF       R1, 0
	MOVWF      get_reverse_Reverse_L0+1
;main.h,71 :: 		if(Reverse <= 1000) return Reverse;
	MOVLW      128
	XORLW      3
	MOVWF      R2
	MOVLW      128
	XORWF      R1, 0
	SUBWF      R2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_reverse501
	MOVF       R0, 0
	SUBLW      232
L__get_reverse501:
	BTFSS      STATUS+0, 0
	GOTO       L_get_reverse27
	MOVF       get_reverse_Reverse_L0+0, 0
	MOVWF      R0
	MOVF       get_reverse_Reverse_L0+1, 0
	MOVWF      R1
	RETURN
L_get_reverse27:
;main.h,72 :: 		FVRCON = 0b10000010; // ADC 2048 vmV Vref
	MOVLW      130
	MOVWF      FVRCON+0
;main.h,73 :: 		while(FVRCON.B6 == 0);
L_get_reverse28:
	BTFSC      FVRCON+0, 6
	GOTO       L_get_reverse29
	GOTO       L_get_reverse28
L_get_reverse29:
;main.h,74 :: 		Reverse = ADC_Get_Sample(0);
	CLRF       FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0, 0
	MOVWF      get_reverse_Reverse_L0+0
	MOVF       R1, 0
	MOVWF      get_reverse_Reverse_L0+1
;main.h,75 :: 		if(Reverse <= 1000) return Reverse * 2;
	MOVLW      128
	XORLW      3
	MOVWF      R2
	MOVLW      128
	XORWF      R1, 0
	SUBWF      R2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_reverse502
	MOVF       R0, 0
	SUBLW      232
L__get_reverse502:
	BTFSS      STATUS+0, 0
	GOTO       L_get_reverse30
	MOVF       get_reverse_Reverse_L0+0, 0
	MOVWF      R0
	MOVF       get_reverse_Reverse_L0+1, 0
	MOVWF      R1
	LSLF       R0, 1
	RLF        R1, 1
	RETURN
L_get_reverse30:
;main.h,76 :: 		FVRCON = 0b10000011; // ADC 4096 vmV Vref
	MOVLW      131
	MOVWF      FVRCON+0
;main.h,77 :: 		while(FVRCON.B6 == 0);
L_get_reverse31:
	BTFSC      FVRCON+0, 6
	GOTO       L_get_reverse32
	GOTO       L_get_reverse31
L_get_reverse32:
;main.h,78 :: 		Reverse = ADC_Get_Sample(0);
	CLRF       FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0, 0
	MOVWF      get_reverse_Reverse_L0+0
	MOVF       R1, 0
	MOVWF      get_reverse_Reverse_L0+1
;main.h,79 :: 		return Reverse * 4;
	MOVF       R0, 0
	MOVWF      R2
	MOVF       R1, 0
	MOVWF      R3
	LSLF       R2, 1
	RLF        R3, 1
	LSLF       R2, 1
	RLF        R3, 1
	MOVF       R2, 0
	MOVWF      R0
	MOVF       R3, 0
	MOVWF      R1
;main.h,80 :: 		}
	RETURN
; end of _get_reverse

_get_forward:

;main.h,83 :: 		int get_forward() {
;main.h,85 :: 		FVRCON = 0b10000001; // ADC 1024 vmV Vref
	MOVLW      129
	MOVWF      FVRCON+0
;main.h,86 :: 		while(FVRCON.B6 == 0);
L_get_forward33:
	BTFSC      FVRCON+0, 6
	GOTO       L_get_forward34
	GOTO       L_get_forward33
L_get_forward34:
;main.h,87 :: 		Forward = ADC_Get_Sample(1);
	MOVLW      1
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0, 0
	MOVWF      get_forward_Forward_L0+0
	MOVF       R1, 0
	MOVWF      get_forward_Forward_L0+1
;main.h,88 :: 		if(Forward <= 1000) return Forward;
	MOVLW      128
	XORLW      3
	MOVWF      R2
	MOVLW      128
	XORWF      R1, 0
	SUBWF      R2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_forward503
	MOVF       R0, 0
	SUBLW      232
L__get_forward503:
	BTFSS      STATUS+0, 0
	GOTO       L_get_forward35
	MOVF       get_forward_Forward_L0+0, 0
	MOVWF      R0
	MOVF       get_forward_Forward_L0+1, 0
	MOVWF      R1
	RETURN
L_get_forward35:
;main.h,89 :: 		FVRCON = 0b10000010; // ADC 2048 vmV Vref
	MOVLW      130
	MOVWF      FVRCON+0
;main.h,90 :: 		while(FVRCON.B6 == 0);
L_get_forward36:
	BTFSC      FVRCON+0, 6
	GOTO       L_get_forward37
	GOTO       L_get_forward36
L_get_forward37:
;main.h,91 :: 		Forward = ADC_Get_Sample(1);
	MOVLW      1
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0, 0
	MOVWF      get_forward_Forward_L0+0
	MOVF       R1, 0
	MOVWF      get_forward_Forward_L0+1
;main.h,92 :: 		if(Forward <= 1000) return Forward * 2;
	MOVLW      128
	XORLW      3
	MOVWF      R2
	MOVLW      128
	XORWF      R1, 0
	SUBWF      R2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_forward504
	MOVF       R0, 0
	SUBLW      232
L__get_forward504:
	BTFSS      STATUS+0, 0
	GOTO       L_get_forward38
	MOVF       get_forward_Forward_L0+0, 0
	MOVWF      R0
	MOVF       get_forward_Forward_L0+1, 0
	MOVWF      R1
	LSLF       R0, 1
	RLF        R1, 1
	RETURN
L_get_forward38:
;main.h,93 :: 		FVRCON = 0b10000011; // ADC 4096 vmV Vref
	MOVLW      131
	MOVWF      FVRCON+0
;main.h,94 :: 		while(FVRCON.B6 == 0);
L_get_forward39:
	BTFSC      FVRCON+0, 6
	GOTO       L_get_forward40
	GOTO       L_get_forward39
L_get_forward40:
;main.h,95 :: 		Forward = ADC_Get_Sample(1);
	MOVLW      1
	MOVWF      FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	MOVF       R0, 0
	MOVWF      get_forward_Forward_L0+0
	MOVF       R1, 0
	MOVWF      get_forward_Forward_L0+1
;main.h,96 :: 		if(Forward > 1000) Overload = 1;
	MOVLW      128
	XORLW      3
	MOVWF      R2
	MOVLW      128
	XORWF      R1, 0
	SUBWF      R2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_forward505
	MOVF       R0, 0
	SUBLW      232
L__get_forward505:
	BTFSC      STATUS+0, 0
	GOTO       L_get_forward41
	MOVLW      1
	MOVWF      main_Overload+0
	GOTO       L_get_forward42
L_get_forward41:
;main.h,97 :: 		else Overload = 0;
	CLRF       main_Overload+0
L_get_forward42:
;main.h,98 :: 		return Forward * 4;
	MOVF       get_forward_Forward_L0+0, 0
	MOVWF      R0
	MOVF       get_forward_Forward_L0+1, 0
	MOVWF      R1
	LSLF       R0, 1
	RLF        R1, 1
	LSLF       R0, 1
	RLF        R1, 1
;main.h,99 :: 		}
	RETURN
; end of _get_forward

_get_pwr:

;main.h,101 :: 		void get_pwr() {
;main.h,104 :: 		asm CLRWDT;
	CLRWDT
;main.h,106 :: 		Forward = get_forward();
	CALL       _get_forward+0
	MOVF       R0, 0
	MOVWF      get_pwr_Forward_L0+0
	MOVF       R1, 0
	MOVWF      get_pwr_Forward_L0+1
	MOVLW      0
	BTFSC      get_pwr_Forward_L0+1, 7
	MOVLW      255
	MOVWF      get_pwr_Forward_L0+2
	MOVWF      get_pwr_Forward_L0+3
;main.h,107 :: 		Reverse = get_reverse();
	CALL       _get_reverse+0
	MOVF       R0, 0
	MOVWF      get_pwr_Reverse_L0+0
	MOVF       R1, 0
	MOVWF      get_pwr_Reverse_L0+1
	MOVLW      0
	BTFSC      get_pwr_Reverse_L0+1, 7
	MOVLW      255
	MOVWF      get_pwr_Reverse_L0+2
	MOVWF      get_pwr_Reverse_L0+3
;main.h,108 :: 		if(D_correction==1) p = correction(Forward * 3);
	MOVF       main_D_correction+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_get_pwr43
	MOVF       get_pwr_Forward_L0+0, 0
	MOVWF      R0
	MOVF       get_pwr_Forward_L0+1, 0
	MOVWF      R1
	MOVLW      3
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	CALL       _Mul_16x16_U+0
	MOVF       R0, 0
	MOVWF      FARG_correction_input+0
	MOVF       R1, 0
	MOVWF      FARG_correction_input+1
	CALL       _correction+0
	CALL       _Int2Double+0
	MOVF       R0, 0
	MOVWF      get_pwr_p_L0+0
	MOVF       R1, 0
	MOVWF      get_pwr_p_L0+1
	MOVF       R2, 0
	MOVWF      get_pwr_p_L0+2
	MOVF       R3, 0
	MOVWF      get_pwr_p_L0+3
	GOTO       L_get_pwr44
L_get_pwr43:
;main.h,109 :: 		else p = Forward * 3;
	MOVF       get_pwr_Forward_L0+0, 0
	MOVWF      R0
	MOVF       get_pwr_Forward_L0+1, 0
	MOVWF      R1
	MOVF       get_pwr_Forward_L0+2, 0
	MOVWF      R2
	MOVF       get_pwr_Forward_L0+3, 0
	MOVWF      R3
	MOVLW      3
	MOVWF      R4
	CLRF       R5
	CLRF       R6
	CLRF       R7
	CALL       _Mul_32x32_U+0
	CALL       _Longint2Double+0
	MOVF       R0, 0
	MOVWF      get_pwr_p_L0+0
	MOVF       R1, 0
	MOVWF      get_pwr_p_L0+1
	MOVF       R2, 0
	MOVWF      get_pwr_p_L0+2
	MOVF       R3, 0
	MOVWF      get_pwr_p_L0+3
L_get_pwr44:
;main.h,111 :: 		if(Reverse >= Forward)
	MOVLW      128
	XORWF      get_pwr_Reverse_L0+3, 0
	MOVWF      R0
	MOVLW      128
	XORWF      get_pwr_Forward_L0+3, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr506
	MOVF       get_pwr_Forward_L0+2, 0
	SUBWF      get_pwr_Reverse_L0+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr506
	MOVF       get_pwr_Forward_L0+1, 0
	SUBWF      get_pwr_Reverse_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr506
	MOVF       get_pwr_Forward_L0+0, 0
	SUBWF      get_pwr_Reverse_L0+0, 0
L__get_pwr506:
	BTFSS      STATUS+0, 0
	GOTO       L_get_pwr45
;main.h,112 :: 		Forward = 999;
	MOVLW      231
	MOVWF      get_pwr_Forward_L0+0
	MOVLW      3
	MOVWF      get_pwr_Forward_L0+1
	CLRF       get_pwr_Forward_L0+2
	CLRF       get_pwr_Forward_L0+3
	GOTO       L_get_pwr46
L_get_pwr45:
;main.h,114 :: 		Forward = ((Forward + Reverse) * 100) / (Forward - Reverse);
	MOVF       get_pwr_Reverse_L0+0, 0
	ADDWF      get_pwr_Forward_L0+0, 0
	MOVWF      R0
	MOVF       get_pwr_Reverse_L0+1, 0
	ADDWFC     get_pwr_Forward_L0+1, 0
	MOVWF      R1
	MOVF       get_pwr_Reverse_L0+2, 0
	ADDWFC     get_pwr_Forward_L0+2, 0
	MOVWF      R2
	MOVF       get_pwr_Reverse_L0+3, 0
	ADDWFC     get_pwr_Forward_L0+3, 0
	MOVWF      R3
	MOVLW      100
	MOVWF      R4
	CLRF       R5
	CLRF       R6
	CLRF       R7
	CALL       _Mul_32x32_U+0
	MOVF       get_pwr_Forward_L0+0, 0
	MOVWF      R4
	MOVF       get_pwr_Forward_L0+1, 0
	MOVWF      R5
	MOVF       get_pwr_Forward_L0+2, 0
	MOVWF      R6
	MOVF       get_pwr_Forward_L0+3, 0
	MOVWF      R7
	MOVF       get_pwr_Reverse_L0+0, 0
	SUBWF      R4, 1
	MOVF       get_pwr_Reverse_L0+1, 0
	SUBWFB     R5, 1
	MOVF       get_pwr_Reverse_L0+2, 0
	SUBWFB     R6, 1
	MOVF       get_pwr_Reverse_L0+3, 0
	SUBWFB     R7, 1
	CALL       _Div_32x32_S+0
	MOVF       R0, 0
	MOVWF      get_pwr_Forward_L0+0
	MOVF       R1, 0
	MOVWF      get_pwr_Forward_L0+1
	MOVF       R2, 0
	MOVWF      get_pwr_Forward_L0+2
	MOVF       R3, 0
	MOVWF      get_pwr_Forward_L0+3
;main.h,115 :: 		if(Forward>999) Forward = 999;
	MOVLW      128
	MOVWF      R4
	MOVLW      128
	XORWF      R3, 0
	SUBWF      R4, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr507
	MOVF       R2, 0
	SUBLW      0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr507
	MOVF       R1, 0
	SUBLW      3
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr507
	MOVF       R0, 0
	SUBLW      231
L__get_pwr507:
	BTFSC      STATUS+0, 0
	GOTO       L_get_pwr47
	MOVLW      231
	MOVWF      get_pwr_Forward_L0+0
	MOVLW      3
	MOVWF      get_pwr_Forward_L0+1
	CLRF       get_pwr_Forward_L0+2
	CLRF       get_pwr_Forward_L0+3
L_get_pwr47:
;main.h,116 :: 		}
L_get_pwr46:
;main.h,118 :: 		p = p * K_Mult / 1000.0;   // mV to Volts on Input
	MOVF       main_K_Mult+0, 0
	MOVWF      R0
	CALL       _Byte2Double+0
	MOVF       get_pwr_p_L0+0, 0
	MOVWF      R4
	MOVF       get_pwr_p_L0+1, 0
	MOVWF      R5
	MOVF       get_pwr_p_L0+2, 0
	MOVWF      R6
	MOVF       get_pwr_p_L0+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      122
	MOVWF      R6
	MOVLW      136
	MOVWF      R7
	CALL       _Div_32x32_FP+0
	MOVF       R0, 0
	MOVWF      get_pwr_p_L0+0
	MOVF       R1, 0
	MOVWF      get_pwr_p_L0+1
	MOVF       R2, 0
	MOVWF      get_pwr_p_L0+2
	MOVF       R3, 0
	MOVWF      get_pwr_p_L0+3
;main.h,119 :: 		p = p / 1.414;
	MOVLW      244
	MOVWF      R4
	MOVLW      253
	MOVWF      R5
	MOVLW      52
	MOVWF      R6
	MOVLW      127
	MOVWF      R7
	CALL       _Div_32x32_FP+0
	MOVF       R0, 0
	MOVWF      get_pwr_p_L0+0
	MOVF       R1, 0
	MOVWF      get_pwr_p_L0+1
	MOVF       R2, 0
	MOVWF      get_pwr_p_L0+2
	MOVF       R3, 0
	MOVWF      get_pwr_p_L0+3
;main.h,120 :: 		if(P_High==1) p = p * p / 50;     // 0 - 1500 ( 1500 Watts)
	MOVF       main_P_High+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_get_pwr48
	MOVF       get_pwr_p_L0+0, 0
	MOVWF      R0
	MOVF       get_pwr_p_L0+1, 0
	MOVWF      R1
	MOVF       get_pwr_p_L0+2, 0
	MOVWF      R2
	MOVF       get_pwr_p_L0+3, 0
	MOVWF      R3
	MOVF       get_pwr_p_L0+0, 0
	MOVWF      R4
	MOVF       get_pwr_p_L0+1, 0
	MOVWF      R5
	MOVF       get_pwr_p_L0+2, 0
	MOVWF      R6
	MOVF       get_pwr_p_L0+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      72
	MOVWF      R6
	MOVLW      132
	MOVWF      R7
	CALL       _Div_32x32_FP+0
	MOVF       R0, 0
	MOVWF      get_pwr_p_L0+0
	MOVF       R1, 0
	MOVWF      get_pwr_p_L0+1
	MOVF       R2, 0
	MOVWF      get_pwr_p_L0+2
	MOVF       R3, 0
	MOVWF      get_pwr_p_L0+3
	GOTO       L_get_pwr49
L_get_pwr48:
;main.h,121 :: 		else p = p * p / 5;               // 0 - 1510 (151.0 Watts)
	MOVF       get_pwr_p_L0+0, 0
	MOVWF      R0
	MOVF       get_pwr_p_L0+1, 0
	MOVWF      R1
	MOVF       get_pwr_p_L0+2, 0
	MOVWF      R2
	MOVF       get_pwr_p_L0+3, 0
	MOVWF      R3
	MOVF       get_pwr_p_L0+0, 0
	MOVWF      R4
	MOVF       get_pwr_p_L0+1, 0
	MOVWF      R5
	MOVF       get_pwr_p_L0+2, 0
	MOVWF      R6
	MOVF       get_pwr_p_L0+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      32
	MOVWF      R6
	MOVLW      129
	MOVWF      R7
	CALL       _Div_32x32_FP+0
	MOVF       R0, 0
	MOVWF      get_pwr_p_L0+0
	MOVF       R1, 0
	MOVWF      get_pwr_p_L0+1
	MOVF       R2, 0
	MOVWF      get_pwr_p_L0+2
	MOVF       R3, 0
	MOVWF      get_pwr_p_L0+3
L_get_pwr49:
;main.h,122 :: 		p = p + 0.5;    // rounding
	MOVF       get_pwr_p_L0+0, 0
	MOVWF      R0
	MOVF       get_pwr_p_L0+1, 0
	MOVWF      R1
	MOVF       get_pwr_p_L0+2, 0
	MOVWF      R2
	MOVF       get_pwr_p_L0+3, 0
	MOVWF      R3
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      0
	MOVWF      R6
	MOVLW      126
	MOVWF      R7
	CALL       _Add_32x32_FP+0
	MOVF       R0, 0
	MOVWF      get_pwr_p_L0+0
	MOVF       R1, 0
	MOVWF      get_pwr_p_L0+1
	MOVF       R2, 0
	MOVWF      get_pwr_p_L0+2
	MOVF       R3, 0
	MOVWF      get_pwr_p_L0+3
;main.h,124 :: 		PWR = p;
	CALL       _Double2Int+0
	MOVF       R0, 0
	MOVWF      _PWR+0
	MOVF       R1, 0
	MOVWF      _PWR+1
;main.h,125 :: 		if(PWR<10) SWR = 1;
	MOVLW      128
	XORWF      R1, 0
	MOVWF      R2
	MOVLW      128
	SUBWF      R2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr508
	MOVLW      10
	SUBWF      R0, 0
L__get_pwr508:
	BTFSC      STATUS+0, 0
	GOTO       L_get_pwr50
	MOVLW      1
	MOVWF      _SWR+0
	MOVLW      0
	MOVWF      _SWR+1
	GOTO       L_get_pwr51
L_get_pwr50:
;main.h,126 :: 		else if(Forward<100) SWR = 999;
	MOVLW      128
	XORWF      get_pwr_Forward_L0+3, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr509
	MOVLW      0
	SUBWF      get_pwr_Forward_L0+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr509
	MOVLW      0
	SUBWF      get_pwr_Forward_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_pwr509
	MOVLW      100
	SUBWF      get_pwr_Forward_L0+0, 0
L__get_pwr509:
	BTFSC      STATUS+0, 0
	GOTO       L_get_pwr52
	MOVLW      231
	MOVWF      _SWR+0
	MOVLW      3
	MOVWF      _SWR+1
	GOTO       L_get_pwr53
L_get_pwr52:
;main.h,127 :: 		else SWR = Forward;
	MOVF       get_pwr_Forward_L0+0, 0
	MOVWF      _SWR+0
	MOVF       get_pwr_Forward_L0+1, 0
	MOVWF      _SWR+1
L_get_pwr53:
L_get_pwr51:
;main.h,128 :: 		return;
;main.h,129 :: 		}
	RETURN
; end of _get_pwr

_get_swr:

;main.h,131 :: 		void get_swr() {
;main.h,132 :: 		get_pwr();
	CALL       _get_pwr+0
;main.h,133 :: 		if(p_cnt!=100) {
	MOVF       _p_cnt+0, 0
	XORLW      100
	BTFSC      STATUS+0, 2
	GOTO       L_get_swr54
;main.h,134 :: 		p_cnt += 1;
	INCF       _p_cnt+0, 1
;main.h,135 :: 		if(PWR>P_max) P_max = PWR;
	MOVLW      128
	XORWF      _P_max+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      _PWR+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_swr510
	MOVF       _PWR+0, 0
	SUBWF      _P_max+0, 0
L__get_swr510:
	BTFSC      STATUS+0, 0
	GOTO       L_get_swr55
	MOVF       _PWR+0, 0
	MOVWF      _P_max+0
	MOVF       _PWR+1, 0
	MOVWF      _P_max+1
L_get_swr55:
;main.h,136 :: 		}
	GOTO       L_get_swr56
L_get_swr54:
;main.h,138 :: 		p_cnt = 0;
	CLRF       _p_cnt+0
;main.h,139 :: 		show_pwr(P_max, SWR);
	MOVF       _P_max+0, 0
	MOVWF      FARG_show_pwr+0
	MOVF       _P_max+1, 0
	MOVWF      FARG_show_pwr+1
	MOVF       _SWR+0, 0
	MOVWF      FARG_show_pwr+0
	MOVF       _SWR+1, 0
	MOVWF      FARG_show_pwr+1
	CALL       _show_pwr+0
;main.h,140 :: 		P_max = 0;
	CLRF       _P_max+0
	CLRF       _P_max+1
;main.h,141 :: 		}
L_get_swr56:
;main.h,142 :: 		while(PWR<min_for_start | (PWR> max_for_start & max_for_start>0)) {  // waiting for good power
L_get_swr57:
	MOVLW      128
	XORWF      _PWR+1, 0
	MOVWF      R2
	MOVLW      128
	XORWF      main_min_for_start+1, 0
	SUBWF      R2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_swr511
	MOVF       main_min_for_start+0, 0
	SUBWF      _PWR+0, 0
L__get_swr511:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R2
	MOVLW      128
	XORWF      main_max_for_start+1, 0
	MOVWF      R1
	MOVLW      128
	XORWF      _PWR+1, 0
	SUBWF      R1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_swr512
	MOVF       _PWR+0, 0
	SUBWF      main_max_for_start+0, 0
L__get_swr512:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R1
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      main_max_for_start+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_swr513
	MOVF       main_max_for_start+0, 0
	SUBLW      0
L__get_swr513:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	MOVF       R2, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_get_swr58
;main.h,143 :: 		asm CLRWDT;
	CLRWDT
;main.h,144 :: 		get_pwr();
	CALL       _get_pwr+0
;main.h,145 :: 		if(p_cnt!=100) {
	MOVF       _p_cnt+0, 0
	XORLW      100
	BTFSC      STATUS+0, 2
	GOTO       L_get_swr59
;main.h,146 :: 		p_cnt += 1;
	INCF       _p_cnt+0, 1
;main.h,147 :: 		if(PWR>P_max) P_max = PWR;
	MOVLW      128
	XORWF      _P_max+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      _PWR+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_swr514
	MOVF       _PWR+0, 0
	SUBWF      _P_max+0, 0
L__get_swr514:
	BTFSC      STATUS+0, 0
	GOTO       L_get_swr60
	MOVF       _PWR+0, 0
	MOVWF      _P_max+0
	MOVF       _PWR+1, 0
	MOVWF      _P_max+1
L_get_swr60:
;main.h,148 :: 		}
	GOTO       L_get_swr61
L_get_swr59:
;main.h,150 :: 		p_cnt = 0;
	CLRF       _p_cnt+0
;main.h,151 :: 		show_pwr(P_max, SWR);
	MOVF       _P_max+0, 0
	MOVWF      FARG_show_pwr+0
	MOVF       _P_max+1, 0
	MOVWF      FARG_show_pwr+1
	MOVF       _SWR+0, 0
	MOVWF      FARG_show_pwr+0
	MOVF       _SWR+1, 0
	MOVWF      FARG_show_pwr+1
	CALL       _show_pwr+0
;main.h,152 :: 		P_max = 0;
	CLRF       _P_max+0
	CLRF       _P_max+1
;main.h,153 :: 		}
L_get_swr61:
;main.h,155 :: 		if(Button(&PORTB, 0, 5, 1)) rready = 1;
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	CLRF       FARG_Button_pin+0
	MOVLW      5
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_get_swr62
	MOVLW      1
	MOVWF      _rready+0
L_get_swr62:
;main.h,156 :: 		if(rready==1 & Button(&PORTB, 0, 5, 0)) { //  press button  Tune
	MOVF       _rready+0, 0
	XORLW      1
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      FLOC__get_swr+0
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	CLRF       FARG_Button_pin+0
	MOVLW      5
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       FLOC__get_swr+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_get_swr63
;main.h,157 :: 		show_reset();
	CALL       _show_reset+0
;main.h,158 :: 		SWR = 0;
	CLRF       _SWR+0
	CLRF       _SWR+1
;main.h,159 :: 		return;
	RETURN
;main.h,160 :: 		}
L_get_swr63:
;main.h,161 :: 		} //  good power
	GOTO       L_get_swr57
L_get_swr58:
;main.h,162 :: 		return;
;main.h,163 :: 		}
	RETURN
; end of _get_swr

_set_ind:

;main.h,165 :: 		void set_ind(char Ind) {  // 0 - 31
;main.h,166 :: 		if(L_invert == 0) {
	MOVF       main_L_invert+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_set_ind64
;main.h,167 :: 		Ind_005 = Ind.B0;
	BTFSC      FARG_set_ind_Ind+0, 0
	GOTO       L__set_ind515
	BCF        LATB3_bit+0, 3
	GOTO       L__set_ind516
L__set_ind515:
	BSF        LATB3_bit+0, 3
L__set_ind516:
;main.h,168 :: 		Ind_011 = Ind.B1;
	BTFSC      FARG_set_ind_Ind+0, 1
	GOTO       L__set_ind517
	BCF        LATA2_bit+0, 2
	GOTO       L__set_ind518
L__set_ind517:
	BSF        LATA2_bit+0, 2
L__set_ind518:
;main.h,169 :: 		Ind_022 = Ind.B2;
	BTFSC      FARG_set_ind_Ind+0, 2
	GOTO       L__set_ind519
	BCF        LATB4_bit+0, 4
	GOTO       L__set_ind520
L__set_ind519:
	BSF        LATB4_bit+0, 4
L__set_ind520:
;main.h,170 :: 		Ind_045 = Ind.B3;
	BTFSC      FARG_set_ind_Ind+0, 3
	GOTO       L__set_ind521
	BCF        LATA3_bit+0, 3
	GOTO       L__set_ind522
L__set_ind521:
	BSF        LATA3_bit+0, 3
L__set_ind522:
;main.h,171 :: 		Ind_1   = Ind.B4;
	BTFSC      FARG_set_ind_Ind+0, 4
	GOTO       L__set_ind523
	BCF        LATB5_bit+0, 5
	GOTO       L__set_ind524
L__set_ind523:
	BSF        LATB5_bit+0, 5
L__set_ind524:
;main.h,172 :: 		Ind_22  = Ind.B5;
	BTFSC      FARG_set_ind_Ind+0, 5
	GOTO       L__set_ind525
	BCF        LATA5_bit+0, 5
	GOTO       L__set_ind526
L__set_ind525:
	BSF        LATA5_bit+0, 5
L__set_ind526:
;main.h,173 :: 		Ind_45  = Ind.B6;
	BTFSC      FARG_set_ind_Ind+0, 6
	GOTO       L__set_ind527
	BCF        LATA4_bit+0, 4
	GOTO       L__set_ind528
L__set_ind527:
	BSF        LATA4_bit+0, 4
L__set_ind528:
;main.h,175 :: 		}
	GOTO       L_set_ind65
L_set_ind64:
;main.h,177 :: 		Ind_005 = ~Ind.B0;
	BTFSC      FARG_set_ind_Ind+0, 0
	GOTO       L__set_ind529
	BSF        LATB3_bit+0, 3
	GOTO       L__set_ind530
L__set_ind529:
	BCF        LATB3_bit+0, 3
L__set_ind530:
;main.h,178 :: 		Ind_011 = ~Ind.B1;
	BTFSC      FARG_set_ind_Ind+0, 1
	GOTO       L__set_ind531
	BSF        LATA2_bit+0, 2
	GOTO       L__set_ind532
L__set_ind531:
	BCF        LATA2_bit+0, 2
L__set_ind532:
;main.h,179 :: 		Ind_022 = ~Ind.B2;
	BTFSC      FARG_set_ind_Ind+0, 2
	GOTO       L__set_ind533
	BSF        LATB4_bit+0, 4
	GOTO       L__set_ind534
L__set_ind533:
	BCF        LATB4_bit+0, 4
L__set_ind534:
;main.h,180 :: 		Ind_045 = ~Ind.B3;
	BTFSC      FARG_set_ind_Ind+0, 3
	GOTO       L__set_ind535
	BSF        LATA3_bit+0, 3
	GOTO       L__set_ind536
L__set_ind535:
	BCF        LATA3_bit+0, 3
L__set_ind536:
;main.h,181 :: 		Ind_1   = ~Ind.B4;
	BTFSC      FARG_set_ind_Ind+0, 4
	GOTO       L__set_ind537
	BSF        LATB5_bit+0, 5
	GOTO       L__set_ind538
L__set_ind537:
	BCF        LATB5_bit+0, 5
L__set_ind538:
;main.h,182 :: 		Ind_22  = ~Ind.B5;
	BTFSC      FARG_set_ind_Ind+0, 5
	GOTO       L__set_ind539
	BSF        LATA5_bit+0, 5
	GOTO       L__set_ind540
L__set_ind539:
	BCF        LATA5_bit+0, 5
L__set_ind540:
;main.h,183 :: 		Ind_45  = ~Ind.B6;
	BTFSC      FARG_set_ind_Ind+0, 6
	GOTO       L__set_ind541
	BSF        LATA4_bit+0, 4
	GOTO       L__set_ind542
L__set_ind541:
	BCF        LATA4_bit+0, 4
L__set_ind542:
;main.h,185 :: 		}
L_set_ind65:
;main.h,186 :: 		Vdelay_ms(Rel_Del);
	MOVF       main_Rel_Del+0, 0
	MOVWF      FARG_VDelay_ms_Time_ms+0
	MOVF       main_Rel_Del+1, 0
	MOVWF      FARG_VDelay_ms_Time_ms+1
	CALL       _VDelay_ms+0
;main.h,187 :: 		}
	RETURN
; end of _set_ind

_set_cap:

;main.h,189 :: 		void set_cap(char Cap) { // 0 - 31
;main.h,190 :: 		Cap_10  =  Cap.B0;
	BTFSC      FARG_set_cap_Cap+0, 0
	GOTO       L__set_cap543
	BCF        LATC7_bit+0, 7
	GOTO       L__set_cap544
L__set_cap543:
	BSF        LATC7_bit+0, 7
L__set_cap544:
;main.h,191 :: 		Cap_22  =  Cap.B1;
	BTFSC      FARG_set_cap_Cap+0, 1
	GOTO       L__set_cap545
	BCF        LATC3_bit+0, 3
	GOTO       L__set_cap546
L__set_cap545:
	BSF        LATC3_bit+0, 3
L__set_cap546:
;main.h,192 :: 		Cap_47  =  Cap.B2;
	BTFSC      FARG_set_cap_Cap+0, 2
	GOTO       L__set_cap547
	BCF        LATC6_bit+0, 6
	GOTO       L__set_cap548
L__set_cap547:
	BSF        LATC6_bit+0, 6
L__set_cap548:
;main.h,193 :: 		Cap_100 =  Cap.B3;
	BTFSC      FARG_set_cap_Cap+0, 3
	GOTO       L__set_cap549
	BCF        LATC2_bit+0, 2
	GOTO       L__set_cap550
L__set_cap549:
	BSF        LATC2_bit+0, 2
L__set_cap550:
;main.h,194 :: 		Cap_220 =  Cap.B4;
	BTFSC      FARG_set_cap_Cap+0, 4
	GOTO       L__set_cap551
	BCF        LATC5_bit+0, 5
	GOTO       L__set_cap552
L__set_cap551:
	BSF        LATC5_bit+0, 5
L__set_cap552:
;main.h,195 :: 		Cap_470 =  Cap.B5;
	BTFSC      FARG_set_cap_Cap+0, 5
	GOTO       L__set_cap553
	BCF        LATC1_bit+0, 1
	GOTO       L__set_cap554
L__set_cap553:
	BSF        LATC1_bit+0, 1
L__set_cap554:
;main.h,196 :: 		Cap_1000 =  Cap.B6;
	BTFSC      FARG_set_cap_Cap+0, 6
	GOTO       L__set_cap555
	BCF        LATC4_bit+0, 4
	GOTO       L__set_cap556
L__set_cap555:
	BSF        LATC4_bit+0, 4
L__set_cap556:
;main.h,198 :: 		Vdelay_ms(Rel_Del);
	MOVF       main_Rel_Del+0, 0
	MOVWF      FARG_VDelay_ms_Time_ms+0
	MOVF       main_Rel_Del+1, 0
	MOVWF      FARG_VDelay_ms_Time_ms+1
	CALL       _VDelay_ms+0
;main.h,199 :: 		}
	RETURN
; end of _set_cap

_set_sw:

;main.h,201 :: 		void set_sw(char SW) {  // 0 - IN,  1 - OUT
;main.h,202 :: 		Cap_sw = SW;
	BTFSC      FARG_set_sw_SW+0, 0
	GOTO       L__set_sw557
	BCF        LATC0_bit+0, 0
	GOTO       L__set_sw558
L__set_sw557:
	BSF        LATC0_bit+0, 0
L__set_sw558:
;main.h,203 :: 		Vdelay_ms(Rel_Del);
	MOVF       main_Rel_Del+0, 0
	MOVWF      FARG_VDelay_ms_Time_ms+0
	MOVF       main_Rel_Del+1, 0
	MOVWF      FARG_VDelay_ms_Time_ms+1
	CALL       _VDelay_ms+0
;main.h,204 :: 		}
	RETURN
; end of _set_sw

_atu_reset:

;main.h,206 :: 		void atu_reset() {
;main.h,207 :: 		ind = 0;
	CLRF       main_ind+0
;main.h,208 :: 		cap = 0;
	CLRF       main_cap+0
;main.h,209 :: 		set_ind(ind);
	CLRF       FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.h,210 :: 		set_cap(cap);
	MOVF       main_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,211 :: 		Vdelay_ms(Rel_Del);
	MOVF       main_Rel_Del+0, 0
	MOVWF      FARG_VDelay_ms_Time_ms+0
	MOVF       main_Rel_Del+1, 0
	MOVWF      FARG_VDelay_ms_Time_ms+1
	CALL       _VDelay_ms+0
;main.h,212 :: 		}
	RETURN
; end of _atu_reset

_coarse_cap:

;main.h,215 :: 		void coarse_cap() {
;main.h,216 :: 		char step = 3;
	MOVLW      3
	MOVWF      coarse_cap_step_L0+0
;main.h,220 :: 		cap = 0;
	CLRF       main_cap+0
;main.h,221 :: 		set_cap(cap);
	CLRF       FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,222 :: 		step_cap = step;
	MOVF       coarse_cap_step_L0+0, 0
	MOVWF      main_step_cap+0
;main.h,223 :: 		get_swr(); if(SWR==0) return;
	CALL       _get_swr+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__coarse_cap559
	MOVLW      0
	XORWF      _SWR+0, 0
L__coarse_cap559:
	BTFSS      STATUS+0, 2
	GOTO       L_coarse_cap66
	RETURN
L_coarse_cap66:
;main.h,224 :: 		min_swr = SWR + SWR/20;
	MOVLW      20
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVF       _SWR+0, 0
	MOVWF      R0
	MOVF       _SWR+1, 0
	MOVWF      R1
	CALL       _Div_16x16_S+0
	MOVF       R0, 0
	ADDWF      _SWR+0, 0
	MOVWF      coarse_cap_min_swr_L0+0
	MOVF       R1, 0
	ADDWFC     _SWR+1, 0
	MOVWF      coarse_cap_min_swr_L0+1
;main.h,225 :: 		for(count=step; count<=31;) {
	MOVF       coarse_cap_step_L0+0, 0
	MOVWF      coarse_cap_count_L0+0
L_coarse_cap67:
	MOVF       coarse_cap_count_L0+0, 0
	SUBLW      31
	BTFSS      STATUS+0, 0
	GOTO       L_coarse_cap68
;main.h,226 :: 		set_cap(count*C_mult);
	MOVF       coarse_cap_count_L0+0, 0
	MOVWF      R0
	MOVF       main_C_mult+0, 0
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,227 :: 		get_swr(); if(SWR==0) return;
	CALL       _get_swr+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__coarse_cap560
	MOVLW      0
	XORWF      _SWR+0, 0
L__coarse_cap560:
	BTFSS      STATUS+0, 2
	GOTO       L_coarse_cap70
	RETURN
L_coarse_cap70:
;main.h,228 :: 		if(SWR < min_swr) {
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      coarse_cap_min_swr_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__coarse_cap561
	MOVF       coarse_cap_min_swr_L0+0, 0
	SUBWF      _SWR+0, 0
L__coarse_cap561:
	BTFSC      STATUS+0, 0
	GOTO       L_coarse_cap71
;main.h,229 :: 		min_swr = SWR + SWR/20;
	MOVLW      20
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVF       _SWR+0, 0
	MOVWF      R0
	MOVF       _SWR+1, 0
	MOVWF      R1
	CALL       _Div_16x16_S+0
	MOVF       R0, 0
	ADDWF      _SWR+0, 0
	MOVWF      coarse_cap_min_swr_L0+0
	MOVF       R1, 0
	ADDWFC     _SWR+1, 0
	MOVWF      coarse_cap_min_swr_L0+1
;main.h,230 :: 		cap = count*C_mult;
	MOVF       coarse_cap_count_L0+0, 0
	MOVWF      R0
	MOVF       main_C_mult+0, 0
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      main_cap+0
;main.h,231 :: 		step_cap = step;
	MOVF       coarse_cap_step_L0+0, 0
	MOVWF      main_step_cap+0
;main.h,232 :: 		if(SWR<120) break;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__coarse_cap562
	MOVLW      120
	SUBWF      _SWR+0, 0
L__coarse_cap562:
	BTFSC      STATUS+0, 0
	GOTO       L_coarse_cap72
	GOTO       L_coarse_cap68
L_coarse_cap72:
;main.h,233 :: 		count +=step;
	MOVF       coarse_cap_step_L0+0, 0
	ADDWF      coarse_cap_count_L0+0, 0
	MOVWF      R2
	MOVF       R2, 0
	MOVWF      coarse_cap_count_L0+0
;main.h,234 :: 		if(C_linear==0 & count==9) count = 8;
	MOVF       main_C_linear+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       R2, 0
	XORLW      9
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_coarse_cap73
	MOVLW      8
	MOVWF      coarse_cap_count_L0+0
	GOTO       L_coarse_cap74
L_coarse_cap73:
;main.h,235 :: 		else if(C_linear==0 & count==17) {count = 16; step = 4;}
	MOVF       main_C_linear+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       coarse_cap_count_L0+0, 0
	XORLW      17
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_coarse_cap75
	MOVLW      16
	MOVWF      coarse_cap_count_L0+0
	MOVLW      4
	MOVWF      coarse_cap_step_L0+0
L_coarse_cap75:
L_coarse_cap74:
;main.h,236 :: 		}
	GOTO       L_coarse_cap76
L_coarse_cap71:
;main.h,237 :: 		else break;
	GOTO       L_coarse_cap68
L_coarse_cap76:
;main.h,238 :: 		}
	GOTO       L_coarse_cap67
L_coarse_cap68:
;main.h,239 :: 		set_cap(cap);
	MOVF       main_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,240 :: 		return;
;main.h,241 :: 		}
	RETURN
; end of _coarse_cap

_coarse_tune:

;main.h,243 :: 		void coarse_tune() {
;main.h,244 :: 		char step = 3;
	MOVLW      3
	MOVWF      coarse_tune_step_L0+0
;main.h,249 :: 		mem_cap = 0;
	CLRF       coarse_tune_mem_cap_L0+0
;main.h,250 :: 		step_ind = step;
	MOVF       coarse_tune_step_L0+0, 0
	MOVWF      main_step_ind+0
;main.h,251 :: 		mem_step_cap = 3;
	MOVLW      3
	MOVWF      coarse_tune_mem_step_cap_L0+0
;main.h,252 :: 		min_swr = SWR + SWR/20;
	MOVLW      20
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVF       _SWR+0, 0
	MOVWF      R0
	MOVF       _SWR+1, 0
	MOVWF      R1
	CALL       _Div_16x16_S+0
	MOVF       R0, 0
	ADDWF      _SWR+0, 0
	MOVWF      coarse_tune_min_swr_L0+0
	MOVF       R1, 0
	ADDWFC     _SWR+1, 0
	MOVWF      coarse_tune_min_swr_L0+1
;main.h,253 :: 		for(count=0; count<=31;) {
	CLRF       coarse_tune_count_L0+0
L_coarse_tune77:
	MOVF       coarse_tune_count_L0+0, 0
	SUBLW      31
	BTFSS      STATUS+0, 0
	GOTO       L_coarse_tune78
;main.h,254 :: 		set_ind(count*L_mult);
	MOVF       coarse_tune_count_L0+0, 0
	MOVWF      R0
	MOVF       main_L_mult+0, 0
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.h,255 :: 		coarse_cap();
	CALL       _coarse_cap+0
;main.h,256 :: 		get_swr();  if(SWR==0) return;
	CALL       _get_swr+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__coarse_tune563
	MOVLW      0
	XORWF      _SWR+0, 0
L__coarse_tune563:
	BTFSS      STATUS+0, 2
	GOTO       L_coarse_tune80
	RETURN
L_coarse_tune80:
;main.h,257 :: 		if(SWR < min_swr) {
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      coarse_tune_min_swr_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__coarse_tune564
	MOVF       coarse_tune_min_swr_L0+0, 0
	SUBWF      _SWR+0, 0
L__coarse_tune564:
	BTFSC      STATUS+0, 0
	GOTO       L_coarse_tune81
;main.h,258 :: 		min_swr = SWR + SWR/20;
	MOVLW      20
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVF       _SWR+0, 0
	MOVWF      R0
	MOVF       _SWR+1, 0
	MOVWF      R1
	CALL       _Div_16x16_S+0
	MOVF       R0, 0
	ADDWF      _SWR+0, 0
	MOVWF      coarse_tune_min_swr_L0+0
	MOVF       R1, 0
	ADDWFC     _SWR+1, 0
	MOVWF      coarse_tune_min_swr_L0+1
;main.h,259 :: 		ind = count*L_mult;
	MOVF       coarse_tune_count_L0+0, 0
	MOVWF      R0
	MOVF       main_L_mult+0, 0
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      main_ind+0
;main.h,260 :: 		mem_cap = cap;
	MOVF       main_cap+0, 0
	MOVWF      coarse_tune_mem_cap_L0+0
;main.h,261 :: 		step_ind = step;
	MOVF       coarse_tune_step_L0+0, 0
	MOVWF      main_step_ind+0
;main.h,262 :: 		mem_step_cap = step_cap;
	MOVF       main_step_cap+0, 0
	MOVWF      coarse_tune_mem_step_cap_L0+0
;main.h,263 :: 		if(SWR<120) break;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__coarse_tune565
	MOVLW      120
	SUBWF      _SWR+0, 0
L__coarse_tune565:
	BTFSC      STATUS+0, 0
	GOTO       L_coarse_tune82
	GOTO       L_coarse_tune78
L_coarse_tune82:
;main.h,264 :: 		count +=step;
	MOVF       coarse_tune_step_L0+0, 0
	ADDWF      coarse_tune_count_L0+0, 0
	MOVWF      R2
	MOVF       R2, 0
	MOVWF      coarse_tune_count_L0+0
;main.h,265 :: 		if(L_linear==0 & count==9) count = 8;
	MOVF       main_L_linear+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       R2, 0
	XORLW      9
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_coarse_tune83
	MOVLW      8
	MOVWF      coarse_tune_count_L0+0
	GOTO       L_coarse_tune84
L_coarse_tune83:
;main.h,266 :: 		else if(L_linear==0 & count==17) {count = 16; step = 4;}
	MOVF       main_L_linear+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       coarse_tune_count_L0+0, 0
	XORLW      17
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_coarse_tune85
	MOVLW      16
	MOVWF      coarse_tune_count_L0+0
	MOVLW      4
	MOVWF      coarse_tune_step_L0+0
L_coarse_tune85:
L_coarse_tune84:
;main.h,267 :: 		}
	GOTO       L_coarse_tune86
L_coarse_tune81:
;main.h,268 :: 		else break;
	GOTO       L_coarse_tune78
L_coarse_tune86:
;main.h,269 :: 		}
	GOTO       L_coarse_tune77
L_coarse_tune78:
;main.h,270 :: 		cap = mem_cap;
	MOVF       coarse_tune_mem_cap_L0+0, 0
	MOVWF      main_cap+0
;main.h,271 :: 		set_ind(ind);
	MOVF       main_ind+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.h,272 :: 		set_cap(cap);
	MOVF       main_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,273 :: 		step_cap = mem_step_cap;
	MOVF       coarse_tune_mem_step_cap_L0+0, 0
	MOVWF      main_step_cap+0
;main.h,274 :: 		Delay_ms(10);
	MOVLW      52
	MOVWF      R12
	MOVLW      241
	MOVWF      R13
L_coarse_tune87:
	DECFSZ     R13, 1
	GOTO       L_coarse_tune87
	DECFSZ     R12, 1
	GOTO       L_coarse_tune87
	NOP
	NOP
;main.h,275 :: 		return;
;main.h,276 :: 		}
	RETURN
; end of _coarse_tune

_sharp_cap:

;main.h,278 :: 		void sharp_cap() {
;main.h,281 :: 		range = step_cap*C_mult;
	MOVF       main_step_cap+0, 0
	MOVWF      R0
	MOVF       main_C_mult+0, 0
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      sharp_cap_range_L0+0
;main.h,283 :: 		max_range = cap + range;
	MOVF       R0, 0
	ADDWF      main_cap+0, 0
	MOVWF      R4
	MOVF       R4, 0
	MOVWF      sharp_cap_max_range_L0+0
;main.h,284 :: 		if(max_range>32*C_mult-1) max_range = 32*C_mult-1;
	MOVLW      5
	MOVWF      R2
	MOVF       main_C_mult+0, 0
	MOVWF      R0
	CLRF       R1
	MOVF       R2, 0
L__sharp_cap566:
	BTFSC      STATUS+0, 2
	GOTO       L__sharp_cap567
	LSLF       R0, 1
	RLF        R1, 1
	ADDLW      255
	GOTO       L__sharp_cap566
L__sharp_cap567:
	MOVLW      1
	SUBWF      R0, 0
	MOVWF      R2
	MOVLW      0
	SUBWFB     R1, 0
	MOVWF      R3
	MOVLW      128
	XORWF      R3, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_cap568
	MOVF       R4, 0
	SUBWF      R2, 0
L__sharp_cap568:
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_cap88
	MOVLW      5
	MOVWF      R0
	MOVF       main_C_mult+0, 0
	MOVWF      sharp_cap_max_range_L0+0
	MOVF       R0, 0
L__sharp_cap569:
	BTFSC      STATUS+0, 2
	GOTO       L__sharp_cap570
	LSLF       sharp_cap_max_range_L0+0, 1
	ADDLW      255
	GOTO       L__sharp_cap569
L__sharp_cap570:
	DECF       sharp_cap_max_range_L0+0, 1
L_sharp_cap88:
;main.h,285 :: 		if(cap>range) min_range = cap - range; else min_range = 0;
	MOVF       main_cap+0, 0
	SUBWF      sharp_cap_range_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_cap89
	MOVF       sharp_cap_range_L0+0, 0
	SUBWF      main_cap+0, 0
	MOVWF      sharp_cap_min_range_L0+0
	GOTO       L_sharp_cap90
L_sharp_cap89:
	CLRF       sharp_cap_min_range_L0+0
L_sharp_cap90:
;main.h,286 :: 		cap = min_range;
	MOVF       sharp_cap_min_range_L0+0, 0
	MOVWF      main_cap+0
;main.h,287 :: 		set_cap(cap);
	MOVF       sharp_cap_min_range_L0+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,288 :: 		get_swr(); if(SWR==0) return;
	CALL       _get_swr+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_cap571
	MOVLW      0
	XORWF      _SWR+0, 0
L__sharp_cap571:
	BTFSS      STATUS+0, 2
	GOTO       L_sharp_cap91
	RETURN
L_sharp_cap91:
;main.h,289 :: 		min_SWR = SWR;
	MOVF       _SWR+0, 0
	MOVWF      sharp_cap_min_swr_L0+0
	MOVF       _SWR+1, 0
	MOVWF      sharp_cap_min_swr_L0+1
;main.h,290 :: 		for(count=min_range+C_mult; count<=max_range; count+=C_mult)  {
	MOVF       main_C_mult+0, 0
	ADDWF      sharp_cap_min_range_L0+0, 0
	MOVWF      sharp_cap_count_L0+0
L_sharp_cap92:
	MOVF       sharp_cap_count_L0+0, 0
	SUBWF      sharp_cap_max_range_L0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_sharp_cap93
;main.h,291 :: 		set_cap(count);
	MOVF       sharp_cap_count_L0+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,292 :: 		get_swr(); if(SWR==0) return;
	CALL       _get_swr+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_cap572
	MOVLW      0
	XORWF      _SWR+0, 0
L__sharp_cap572:
	BTFSS      STATUS+0, 2
	GOTO       L_sharp_cap95
	RETURN
L_sharp_cap95:
;main.h,293 :: 		if(SWR>=min_SWR) { Delay_ms(10); get_swr(); }
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      sharp_cap_min_swr_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_cap573
	MOVF       sharp_cap_min_swr_L0+0, 0
	SUBWF      _SWR+0, 0
L__sharp_cap573:
	BTFSS      STATUS+0, 0
	GOTO       L_sharp_cap96
	MOVLW      52
	MOVWF      R12
	MOVLW      241
	MOVWF      R13
L_sharp_cap97:
	DECFSZ     R13, 1
	GOTO       L_sharp_cap97
	DECFSZ     R12, 1
	GOTO       L_sharp_cap97
	NOP
	NOP
	CALL       _get_swr+0
L_sharp_cap96:
;main.h,294 :: 		if(SWR>=min_SWR) { Delay_ms(10); get_swr(); }
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      sharp_cap_min_swr_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_cap574
	MOVF       sharp_cap_min_swr_L0+0, 0
	SUBWF      _SWR+0, 0
L__sharp_cap574:
	BTFSS      STATUS+0, 0
	GOTO       L_sharp_cap98
	MOVLW      52
	MOVWF      R12
	MOVLW      241
	MOVWF      R13
L_sharp_cap99:
	DECFSZ     R13, 1
	GOTO       L_sharp_cap99
	DECFSZ     R12, 1
	GOTO       L_sharp_cap99
	NOP
	NOP
	CALL       _get_swr+0
L_sharp_cap98:
;main.h,295 :: 		if(SWR < min_SWR) {
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      sharp_cap_min_swr_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_cap575
	MOVF       sharp_cap_min_swr_L0+0, 0
	SUBWF      _SWR+0, 0
L__sharp_cap575:
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_cap100
;main.h,296 :: 		min_SWR = SWR;
	MOVF       _SWR+0, 0
	MOVWF      sharp_cap_min_swr_L0+0
	MOVF       _SWR+1, 0
	MOVWF      sharp_cap_min_swr_L0+1
;main.h,297 :: 		cap = count;
	MOVF       sharp_cap_count_L0+0, 0
	MOVWF      main_cap+0
;main.h,298 :: 		if(SWR<120) break;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_cap576
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sharp_cap576:
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_cap101
	GOTO       L_sharp_cap93
L_sharp_cap101:
;main.h,299 :: 		}
	GOTO       L_sharp_cap102
L_sharp_cap100:
;main.h,300 :: 		else break;
	GOTO       L_sharp_cap93
L_sharp_cap102:
;main.h,290 :: 		for(count=min_range+C_mult; count<=max_range; count+=C_mult)  {
	MOVF       main_C_mult+0, 0
	ADDWF      sharp_cap_count_L0+0, 1
;main.h,301 :: 		}
	GOTO       L_sharp_cap92
L_sharp_cap93:
;main.h,302 :: 		set_cap(cap);
	MOVF       main_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,303 :: 		return;
;main.h,304 :: 		}
	RETURN
; end of _sharp_cap

_sharp_ind:

;main.h,306 :: 		void sharp_ind() {
;main.h,309 :: 		range = step_ind * L_mult;
	MOVF       main_step_ind+0, 0
	MOVWF      R0
	MOVF       main_L_mult+0, 0
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      sharp_ind_range_L0+0
;main.h,311 :: 		max_range = ind + range;
	MOVF       R0, 0
	ADDWF      main_ind+0, 0
	MOVWF      R4
	MOVF       R4, 0
	MOVWF      sharp_ind_max_range_L0+0
;main.h,312 :: 		if(max_range>32*L_mult-1) max_range = 32*L_mult-1;
	MOVLW      5
	MOVWF      R2
	MOVF       main_L_mult+0, 0
	MOVWF      R0
	CLRF       R1
	MOVF       R2, 0
L__sharp_ind577:
	BTFSC      STATUS+0, 2
	GOTO       L__sharp_ind578
	LSLF       R0, 1
	RLF        R1, 1
	ADDLW      255
	GOTO       L__sharp_ind577
L__sharp_ind578:
	MOVLW      1
	SUBWF      R0, 0
	MOVWF      R2
	MOVLW      0
	SUBWFB     R1, 0
	MOVWF      R3
	MOVLW      128
	XORWF      R3, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_ind579
	MOVF       R4, 0
	SUBWF      R2, 0
L__sharp_ind579:
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_ind103
	MOVLW      5
	MOVWF      R0
	MOVF       main_L_mult+0, 0
	MOVWF      sharp_ind_max_range_L0+0
	MOVF       R0, 0
L__sharp_ind580:
	BTFSC      STATUS+0, 2
	GOTO       L__sharp_ind581
	LSLF       sharp_ind_max_range_L0+0, 1
	ADDLW      255
	GOTO       L__sharp_ind580
L__sharp_ind581:
	DECF       sharp_ind_max_range_L0+0, 1
L_sharp_ind103:
;main.h,313 :: 		if(ind>range) min_range = ind - range; else min_range = 0;
	MOVF       main_ind+0, 0
	SUBWF      sharp_ind_range_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_ind104
	MOVF       sharp_ind_range_L0+0, 0
	SUBWF      main_ind+0, 0
	MOVWF      sharp_ind_min_range_L0+0
	GOTO       L_sharp_ind105
L_sharp_ind104:
	CLRF       sharp_ind_min_range_L0+0
L_sharp_ind105:
;main.h,314 :: 		ind = min_range;
	MOVF       sharp_ind_min_range_L0+0, 0
	MOVWF      main_ind+0
;main.h,315 :: 		set_ind(ind);
	MOVF       sharp_ind_min_range_L0+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.h,316 :: 		get_swr(); if(SWR==0) return;
	CALL       _get_swr+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_ind582
	MOVLW      0
	XORWF      _SWR+0, 0
L__sharp_ind582:
	BTFSS      STATUS+0, 2
	GOTO       L_sharp_ind106
	RETURN
L_sharp_ind106:
;main.h,317 :: 		min_SWR = SWR;
	MOVF       _SWR+0, 0
	MOVWF      sharp_ind_min_SWR_L0+0
	MOVF       _SWR+1, 0
	MOVWF      sharp_ind_min_SWR_L0+1
;main.h,318 :: 		for(count=min_range+L_mult; count<=max_range; count+=L_mult) {
	MOVF       main_L_mult+0, 0
	ADDWF      sharp_ind_min_range_L0+0, 0
	MOVWF      sharp_ind_count_L0+0
L_sharp_ind107:
	MOVF       sharp_ind_count_L0+0, 0
	SUBWF      sharp_ind_max_range_L0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_sharp_ind108
;main.h,319 :: 		set_ind(count);
	MOVF       sharp_ind_count_L0+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.h,320 :: 		get_swr(); if(SWR==0) return;
	CALL       _get_swr+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_ind583
	MOVLW      0
	XORWF      _SWR+0, 0
L__sharp_ind583:
	BTFSS      STATUS+0, 2
	GOTO       L_sharp_ind110
	RETURN
L_sharp_ind110:
;main.h,321 :: 		if(SWR>=min_SWR) { Delay_ms(10); get_swr(); }
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      sharp_ind_min_SWR_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_ind584
	MOVF       sharp_ind_min_SWR_L0+0, 0
	SUBWF      _SWR+0, 0
L__sharp_ind584:
	BTFSS      STATUS+0, 0
	GOTO       L_sharp_ind111
	MOVLW      52
	MOVWF      R12
	MOVLW      241
	MOVWF      R13
L_sharp_ind112:
	DECFSZ     R13, 1
	GOTO       L_sharp_ind112
	DECFSZ     R12, 1
	GOTO       L_sharp_ind112
	NOP
	NOP
	CALL       _get_swr+0
L_sharp_ind111:
;main.h,322 :: 		if(SWR>=min_SWR) { Delay_ms(10); get_swr(); }
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      sharp_ind_min_SWR_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_ind585
	MOVF       sharp_ind_min_SWR_L0+0, 0
	SUBWF      _SWR+0, 0
L__sharp_ind585:
	BTFSS      STATUS+0, 0
	GOTO       L_sharp_ind113
	MOVLW      52
	MOVWF      R12
	MOVLW      241
	MOVWF      R13
L_sharp_ind114:
	DECFSZ     R13, 1
	GOTO       L_sharp_ind114
	DECFSZ     R12, 1
	GOTO       L_sharp_ind114
	NOP
	NOP
	CALL       _get_swr+0
L_sharp_ind113:
;main.h,323 :: 		if(SWR < min_SWR) {
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      sharp_ind_min_SWR_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_ind586
	MOVF       sharp_ind_min_SWR_L0+0, 0
	SUBWF      _SWR+0, 0
L__sharp_ind586:
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_ind115
;main.h,324 :: 		min_SWR = SWR;
	MOVF       _SWR+0, 0
	MOVWF      sharp_ind_min_SWR_L0+0
	MOVF       _SWR+1, 0
	MOVWF      sharp_ind_min_SWR_L0+1
;main.h,325 :: 		ind = count;
	MOVF       sharp_ind_count_L0+0, 0
	MOVWF      main_ind+0
;main.h,326 :: 		if(SWR<120) break;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sharp_ind587
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sharp_ind587:
	BTFSC      STATUS+0, 0
	GOTO       L_sharp_ind116
	GOTO       L_sharp_ind108
L_sharp_ind116:
;main.h,327 :: 		}
	GOTO       L_sharp_ind117
L_sharp_ind115:
;main.h,328 :: 		else break;
	GOTO       L_sharp_ind108
L_sharp_ind117:
;main.h,318 :: 		for(count=min_range+L_mult; count<=max_range; count+=L_mult) {
	MOVF       main_L_mult+0, 0
	ADDWF      sharp_ind_count_L0+0, 1
;main.h,329 :: 		}
	GOTO       L_sharp_ind107
L_sharp_ind108:
;main.h,330 :: 		set_ind(ind);
	MOVF       main_ind+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.h,331 :: 		return;
;main.h,332 :: 		}
	RETURN
; end of _sharp_ind

_sub_tune:

;main.h,335 :: 		void sub_tune () {
;main.h,338 :: 		swr_mem = SWR;
	MOVF       _SWR+0, 0
	MOVWF      sub_tune_swr_mem_L0+0
	MOVF       _SWR+1, 0
	MOVWF      sub_tune_swr_mem_L0+1
;main.h,339 :: 		coarse_tune(); if(SWR==0) {atu_reset(); return;}
	CALL       _coarse_tune+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune588
	MOVLW      0
	XORWF      _SWR+0, 0
L__sub_tune588:
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune118
	CALL       _atu_reset+0
	RETURN
L_sub_tune118:
;main.h,340 :: 		get_swr(); if(SWR<120) return;
	CALL       _get_swr+0
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune589
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sub_tune589:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune119
	RETURN
L_sub_tune119:
;main.h,341 :: 		sharp_ind();  if(SWR==0) {atu_reset(); return;}
	CALL       _sharp_ind+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune590
	MOVLW      0
	XORWF      _SWR+0, 0
L__sub_tune590:
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune120
	CALL       _atu_reset+0
	RETURN
L_sub_tune120:
;main.h,342 :: 		get_swr(); if(SWR<120) return;
	CALL       _get_swr+0
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune591
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sub_tune591:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune121
	RETURN
L_sub_tune121:
;main.h,343 :: 		sharp_cap(); if(SWR==0) {atu_reset(); return;}
	CALL       _sharp_cap+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune592
	MOVLW      0
	XORWF      _SWR+0, 0
L__sub_tune592:
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune122
	CALL       _atu_reset+0
	RETURN
L_sub_tune122:
;main.h,344 :: 		get_swr(); if(SWR<120) return;
	CALL       _get_swr+0
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune593
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sub_tune593:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune123
	RETURN
L_sub_tune123:
;main.h,346 :: 		if(SWR<200 & SWR<swr_mem & (swr_mem-SWR)>100) return;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R1
	MOVLW      128
	SUBWF      R1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune594
	MOVLW      200
	SUBWF      _SWR+0, 0
L__sub_tune594:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R1
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      sub_tune_swr_mem_L0+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune595
	MOVF       sub_tune_swr_mem_L0+0, 0
	SUBWF      _SWR+0, 0
L__sub_tune595:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R0, 0
	ANDWF      R1, 0
	MOVWF      R3
	MOVF       _SWR+0, 0
	SUBWF      sub_tune_swr_mem_L0+0, 0
	MOVWF      R1
	MOVF       _SWR+1, 0
	SUBWFB     sub_tune_swr_mem_L0+1, 0
	MOVWF      R2
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      R2, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune596
	MOVF       R1, 0
	SUBLW      100
L__sub_tune596:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R3, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_sub_tune124
	RETURN
L_sub_tune124:
;main.h,347 :: 		swr_mem = SWR;
	MOVF       _SWR+0, 0
	MOVWF      sub_tune_swr_mem_L0+0
	MOVF       _SWR+1, 0
	MOVWF      sub_tune_swr_mem_L0+1
;main.h,348 :: 		ind_mem = ind;
	MOVF       main_ind+0, 0
	MOVWF      sub_tune_ind_mem_L0+0
	CLRF       sub_tune_ind_mem_L0+1
;main.h,349 :: 		cap_mem = cap;
	MOVF       main_cap+0, 0
	MOVWF      sub_tune_cap_mem_L0+0
	CLRF       sub_tune_cap_mem_L0+1
;main.h,351 :: 		if(SW==1) SW = 0; else SW = 1;
	MOVF       main_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune125
	CLRF       main_SW+0
	GOTO       L_sub_tune126
L_sub_tune125:
	MOVLW      1
	MOVWF      main_SW+0
L_sub_tune126:
;main.h,352 :: 		atu_reset();
	CALL       _atu_reset+0
;main.h,353 :: 		set_sw(SW);
	MOVF       main_SW+0, 0
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main.h,354 :: 		Delay_ms(50);
	MOVLW      2
	MOVWF      R11
	MOVLW      4
	MOVWF      R12
	MOVLW      186
	MOVWF      R13
L_sub_tune127:
	DECFSZ     R13, 1
	GOTO       L_sub_tune127
	DECFSZ     R12, 1
	GOTO       L_sub_tune127
	DECFSZ     R11, 1
	GOTO       L_sub_tune127
	NOP
;main.h,355 :: 		get_swr(); if(SWR<120) return;
	CALL       _get_swr+0
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune597
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sub_tune597:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune128
	RETURN
L_sub_tune128:
;main.h,357 :: 		coarse_tune(); if(SWR==0) {atu_reset(); return;}
	CALL       _coarse_tune+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune598
	MOVLW      0
	XORWF      _SWR+0, 0
L__sub_tune598:
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune129
	CALL       _atu_reset+0
	RETURN
L_sub_tune129:
;main.h,358 :: 		get_swr(); if(SWR<120) return;
	CALL       _get_swr+0
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune599
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sub_tune599:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune130
	RETURN
L_sub_tune130:
;main.h,359 :: 		sharp_ind(); if(SWR==0) {atu_reset(); return;}
	CALL       _sharp_ind+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune600
	MOVLW      0
	XORWF      _SWR+0, 0
L__sub_tune600:
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune131
	CALL       _atu_reset+0
	RETURN
L_sub_tune131:
;main.h,360 :: 		get_swr(); if(SWR<120) return;
	CALL       _get_swr+0
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune601
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sub_tune601:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune132
	RETURN
L_sub_tune132:
;main.h,361 :: 		sharp_cap(); if(SWR==0) {atu_reset(); return;}
	CALL       _sharp_cap+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune602
	MOVLW      0
	XORWF      _SWR+0, 0
L__sub_tune602:
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune133
	CALL       _atu_reset+0
	RETURN
L_sub_tune133:
;main.h,362 :: 		get_swr(); if(SWR<120) return;
	CALL       _get_swr+0
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune603
	MOVLW      120
	SUBWF      _SWR+0, 0
L__sub_tune603:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune134
	RETURN
L_sub_tune134:
;main.h,364 :: 		if(SWR>swr_mem) {
	MOVLW      128
	XORWF      sub_tune_swr_mem_L0+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      _SWR+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sub_tune604
	MOVF       _SWR+0, 0
	SUBWF      sub_tune_swr_mem_L0+0, 0
L__sub_tune604:
	BTFSC      STATUS+0, 0
	GOTO       L_sub_tune135
;main.h,365 :: 		if(SW==1) SW = 0; else SW = 1;
	MOVF       main_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_sub_tune136
	CLRF       main_SW+0
	GOTO       L_sub_tune137
L_sub_tune136:
	MOVLW      1
	MOVWF      main_SW+0
L_sub_tune137:
;main.h,366 :: 		set_sw(SW);
	MOVF       main_SW+0, 0
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main.h,367 :: 		ind = ind_mem;
	MOVF       sub_tune_ind_mem_L0+0, 0
	MOVWF      main_ind+0
;main.h,368 :: 		cap = cap_mem;
	MOVF       sub_tune_cap_mem_L0+0, 0
	MOVWF      main_cap+0
;main.h,369 :: 		set_ind(ind);
	MOVF       sub_tune_ind_mem_L0+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.h,370 :: 		set_cap(cap);
	MOVF       main_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.h,371 :: 		SWR = swr_mem;
	MOVF       sub_tune_swr_mem_L0+0, 0
	MOVWF      _SWR+0
	MOVF       sub_tune_swr_mem_L0+1, 0
	MOVWF      _SWR+1
;main.h,372 :: 		}
L_sub_tune135:
;main.h,374 :: 		asm CLRWDT;
	CLRWDT
;main.h,375 :: 		return;
;main.h,376 :: 		}
	RETURN
; end of _sub_tune

_tune:

;main.h,380 :: 		void tune() {
;main.h,382 :: 		asm CLRWDT;
	CLRWDT
;main.h,384 :: 		p_cnt = 0;
	CLRF       _p_cnt+0
;main.h,385 :: 		P_max = 0;
	CLRF       _P_max+0
	CLRF       _P_max+1
;main.h,387 :: 		rready = 0;
	CLRF       _rready+0
;main.h,388 :: 		get_swr();
	CALL       _get_swr+0
;main.h,389 :: 		if(SWR<110) return;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tune605
	MOVLW      110
	SUBWF      _SWR+0, 0
L__tune605:
	BTFSC      STATUS+0, 0
	GOTO       L_tune138
	RETURN
L_tune138:
;main.h,390 :: 		atu_reset();
	CALL       _atu_reset+0
;main.h,391 :: 		if(Loss_ind==0) lcd_ind();
	MOVF       main_Loss_ind+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_tune139
	CALL       _lcd_ind+0
L_tune139:
;main.h,392 :: 		Delay_ms(50);
	MOVLW      2
	MOVWF      R11
	MOVLW      4
	MOVWF      R12
	MOVLW      186
	MOVWF      R13
L_tune140:
	DECFSZ     R13, 1
	GOTO       L_tune140
	DECFSZ     R12, 1
	GOTO       L_tune140
	DECFSZ     R11, 1
	GOTO       L_tune140
	NOP
;main.h,393 :: 		get_swr();
	CALL       _get_swr+0
;main.h,394 :: 		swr_a = SWR;
	MOVF       _SWR+0, 0
	MOVWF      _swr_a+0
	MOVF       _SWR+1, 0
	MOVWF      _swr_a+1
;main.h,395 :: 		if(SWR<110) return;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tune606
	MOVLW      110
	SUBWF      _SWR+0, 0
L__tune606:
	BTFSC      STATUS+0, 0
	GOTO       L_tune141
	RETURN
L_tune141:
;main.h,396 :: 		if(max_swr>110 & SWR>max_swr) return;
	MOVLW      128
	MOVWF      R1
	MOVLW      128
	XORWF      main_max_swr+1, 0
	SUBWF      R1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tune607
	MOVF       main_max_swr+0, 0
	SUBLW      110
L__tune607:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R1
	MOVLW      128
	XORWF      main_max_swr+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      _SWR+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tune608
	MOVF       _SWR+0, 0
	SUBWF      main_max_swr+0, 0
L__tune608:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_tune142
	RETURN
L_tune142:
;main.h,398 :: 		sub_tune(); if(SWR==0) {atu_reset(); return;}
	CALL       _sub_tune+0
	MOVLW      0
	XORWF      _SWR+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tune609
	MOVLW      0
	XORWF      _SWR+0, 0
L__tune609:
	BTFSS      STATUS+0, 2
	GOTO       L_tune143
	CALL       _atu_reset+0
	RETURN
L_tune143:
;main.h,399 :: 		if(SWR<120) return;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tune610
	MOVLW      120
	SUBWF      _SWR+0, 0
L__tune610:
	BTFSC      STATUS+0, 0
	GOTO       L_tune144
	RETURN
L_tune144:
;main.h,400 :: 		if(C_q==5 & L_q==5) return;
	MOVF       main_C_q+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       main_L_q+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_tune145
	RETURN
L_tune145:
;main.h,402 :: 		if(L_q>5) {
	MOVF       main_L_q+0, 0
	SUBLW      5
	BTFSC      STATUS+0, 0
	GOTO       L_tune146
;main.h,403 :: 		step_ind = L_mult;
	MOVF       main_L_mult+0, 0
	MOVWF      main_step_ind+0
;main.h,404 :: 		L_mult = 1;
	MOVLW      1
	MOVWF      main_L_mult+0
;main.h,405 :: 		sharp_ind();
	CALL       _sharp_ind+0
;main.h,406 :: 		}
L_tune146:
;main.h,407 :: 		if(SWR<120) return;
	MOVLW      128
	XORWF      _SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__tune611
	MOVLW      120
	SUBWF      _SWR+0, 0
L__tune611:
	BTFSC      STATUS+0, 0
	GOTO       L_tune147
	RETURN
L_tune147:
;main.h,408 :: 		if(C_q>5) {
	MOVF       main_C_q+0, 0
	SUBLW      5
	BTFSC      STATUS+0, 0
	GOTO       L_tune148
;main.h,409 :: 		step_cap = C_mult;  // = C_mult
	MOVF       main_C_mult+0, 0
	MOVWF      main_step_cap+0
;main.h,410 :: 		C_mult = 1;
	MOVLW      1
	MOVWF      main_C_mult+0
;main.h,411 :: 		sharp_cap();
	CALL       _sharp_cap+0
;main.h,412 :: 		}
L_tune148:
;main.h,413 :: 		if(L_q==5)L_mult = 1;
	MOVF       main_L_q+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_tune149
	MOVLW      1
	MOVWF      main_L_mult+0
	GOTO       L_tune150
L_tune149:
;main.h,414 :: 		else if(L_q==6) L_mult = 2;
	MOVF       main_L_q+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L_tune151
	MOVLW      2
	MOVWF      main_L_mult+0
	GOTO       L_tune152
L_tune151:
;main.h,415 :: 		else if(L_q==7) L_mult = 4;
	MOVF       main_L_q+0, 0
	XORLW      7
	BTFSS      STATUS+0, 2
	GOTO       L_tune153
	MOVLW      4
	MOVWF      main_L_mult+0
L_tune153:
L_tune152:
L_tune150:
;main.h,416 :: 		if(C_q==5) C_mult =1;
	MOVF       main_C_q+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_tune154
	MOVLW      1
	MOVWF      main_C_mult+0
	GOTO       L_tune155
L_tune154:
;main.h,417 :: 		else if(C_q==6) C_mult = 2;
	MOVF       main_C_q+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L_tune156
	MOVLW      2
	MOVWF      main_C_mult+0
	GOTO       L_tune157
L_tune156:
;main.h,418 :: 		else if(C_q==7) C_mult = 4;
	MOVF       main_C_q+0, 0
	XORLW      7
	BTFSS      STATUS+0, 2
	GOTO       L_tune158
	MOVLW      4
	MOVWF      main_C_mult+0
L_tune158:
L_tune157:
L_tune155:
;main.h,419 :: 		asm CLRWDT;
	CLRWDT
;main.h,420 :: 		return;
;main.h,421 :: 		}
	RETURN
; end of _tune

_main:

;main.c,33 :: 		void main() {
;main.c,36 :: 		if(STATUS.B4==0) Restart = 1;
	BTFSC      STATUS+0, 4
	GOTO       L_main159
	MOVLW      1
	MOVWF      _Restart+0
L_main159:
;main.c,37 :: 		pic_init();
	CALL       _pic_init+0
;main.c,39 :: 		Delay_ms (300);
	MOVLW      7
	MOVWF      R11
	MOVLW      23
	MOVWF      R12
	MOVLW      106
	MOVWF      R13
L_main160:
	DECFSZ     R13, 1
	GOTO       L_main160
	DECFSZ     R12, 1
	GOTO       L_main160
	DECFSZ     R11, 1
	GOTO       L_main160
	NOP
;main.c,40 :: 		asm CLRWDT;
	CLRWDT
;main.c,41 :: 		cells_init();
	CALL       _cells_init+0
;main.c,42 :: 		Soft_I2C_Init();
	CALL       _Soft_I2C_Init+0
;main.c,53 :: 		if(type==0) { // 2-colors led  reset
	MOVF       _type+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main161
;main.c,54 :: 		LATB.B6 = 1;
	BSF        LATB+0, 6
;main.c,55 :: 		LATB.B7 = 1;
	BSF        LATB+0, 7
;main.c,56 :: 		}
L_main161:
;main.c,57 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF       _Dysp_delay+0, 0
	MOVWF      R0
	CALL       _Byte2Double+0
	MOVF       _dysp_cnt_mult+0, 0
	MOVWF      R4
	MOVF       _dysp_cnt_mult+1, 0
	MOVWF      R5
	MOVF       _dysp_cnt_mult+2, 0
	MOVWF      R6
	MOVF       _dysp_cnt_mult+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	CALL       _Double2Int+0
	MOVF       R0, 0
	MOVWF      _dysp_cnt+0
	MOVF       R1, 0
	MOVWF      _dysp_cnt+1
;main.c,59 :: 		Delay_ms(300);
	MOVLW      7
	MOVWF      R11
	MOVLW      23
	MOVWF      R12
	MOVLW      106
	MOVWF      R13
L_main162:
	DECFSZ     R13, 1
	GOTO       L_main162
	DECFSZ     R12, 1
	GOTO       L_main162
	DECFSZ     R11, 1
	GOTO       L_main162
	NOP
;main.c,60 :: 		asm CLRWDT;
	CLRWDT
;main.c,62 :: 		if(PORTB.B1==0 & PORTB.B2==0) {  // Test mode
	BTFSC      PORTB+0, 1
	GOTO       L__main612
	BSF        R4, 0
	GOTO       L__main613
L__main612:
	BCF        R4, 0
L__main613:
	BTFSC      PORTB+0, 2
	GOTO       L__main614
	BSF        3, 0
	GOTO       L__main615
L__main614:
	BCF        3, 0
L__main615:
	BTFSS      R4, 0
	GOTO       L__main616
	BTFSS      3, 0
	GOTO       L__main616
	BSF        R4, 0
	GOTO       L__main617
L__main616:
	BCF        R4, 0
L__main617:
	BTFSS      R4, 0
	GOTO       L_main163
;main.c,63 :: 		Test = 1;
	MOVLW      1
	MOVWF      _Test+0
;main.c,64 :: 		Auto =0;
	CLRF       _Auto+0
;main.c,65 :: 		}
L_main163:
;main.c,66 :: 		if(L_q==5)L_mult = 1;
	MOVF       main_L_q+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_main164
	MOVLW      1
	MOVWF      main_L_mult+0
	GOTO       L_main165
L_main164:
;main.c,67 :: 		else if(L_q==6) L_mult = 2;
	MOVF       main_L_q+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L_main166
	MOVLW      2
	MOVWF      main_L_mult+0
	GOTO       L_main167
L_main166:
;main.c,68 :: 		else if(L_q==7) L_mult = 4;
	MOVF       main_L_q+0, 0
	XORLW      7
	BTFSS      STATUS+0, 2
	GOTO       L_main168
	MOVLW      4
	MOVWF      main_L_mult+0
L_main168:
L_main167:
L_main165:
;main.c,69 :: 		if(C_q==5) C_mult =1;
	MOVF       main_C_q+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_main169
	MOVLW      1
	MOVWF      main_C_mult+0
	GOTO       L_main170
L_main169:
;main.c,70 :: 		else if(C_q==6) C_mult = 2;
	MOVF       main_C_q+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L_main171
	MOVLW      2
	MOVWF      main_C_mult+0
	GOTO       L_main172
L_main171:
;main.c,71 :: 		else if(C_q==7) C_mult = 4;
	MOVF       main_C_q+0, 0
	XORLW      7
	BTFSS      STATUS+0, 2
	GOTO       L_main173
	MOVLW      4
	MOVWF      main_C_mult+0
L_main173:
L_main172:
L_main170:
;main.c,73 :: 		Delay_ms(300);
	MOVLW      7
	MOVWF      R11
	MOVLW      23
	MOVWF      R12
	MOVLW      106
	MOVWF      R13
L_main174:
	DECFSZ     R13, 1
	GOTO       L_main174
	DECFSZ     R12, 1
	GOTO       L_main174
	DECFSZ     R11, 1
	GOTO       L_main174
	NOP
;main.c,74 :: 		asm CLRWDT;
	CLRWDT
;main.c,75 :: 		led_init();
	CALL       _led_init+0
;main.c,77 :: 		if(PORTB.B1==0 & PORTB.B2==0 & PORTB.B0==0)  { // Fast Test mode (loop)
	BTFSC      PORTB+0, 1
	GOTO       L__main618
	BSF        R4, 0
	GOTO       L__main619
L__main618:
	BCF        R4, 0
L__main619:
	BTFSC      PORTB+0, 2
	GOTO       L__main620
	BSF        3, 0
	GOTO       L__main621
L__main620:
	BCF        3, 0
L__main621:
	BTFSS      R4, 0
	GOTO       L__main622
	BTFSS      3, 0
	GOTO       L__main622
	BSF        R4, 0
	GOTO       L__main623
L__main622:
	BCF        R4, 0
L__main623:
	BTFSC      PORTB+0, 0
	GOTO       L__main624
	BSF        3, 0
	GOTO       L__main625
L__main624:
	BCF        3, 0
L__main625:
	BTFSS      R4, 0
	GOTO       L__main626
	BTFSS      3, 0
	GOTO       L__main626
	BSF        R4, 0
	GOTO       L__main627
L__main626:
	BCF        R4, 0
L__main627:
	BTFSS      R4, 0
	GOTO       L_main175
;main.c,78 :: 		if(type==4 | type==5)  led_wr_str (0, 12, "FAST TEST", 9); // 128*64
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_main176
	CLRF       FARG_led_wr_str+0
	MOVLW      12
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr1_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr1_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_main177
L_main176:
;main.c,79 :: 		else if(type!=0) led_wr_str (0, 3, "FAST TEST", 9); // 1602 | 128*32
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_main178
	CLRF       FARG_led_wr_str+0
	MOVLW      3
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr2_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr2_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_main178:
L_main177:
;main.c,80 :: 		set_cap(255);
	MOVLW      255
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.c,81 :: 		if(L_invert==0) set_ind(255);
	MOVF       main_L_invert+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main179
	MOVLW      255
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
	GOTO       L_main180
L_main179:
;main.c,82 :: 		else set_ind(0);
	CLRF       FARG_set_ind_Ind+0
	CALL       _set_ind+0
L_main180:
;main.c,83 :: 		set_sw(1);
	MOVLW      1
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main.c,84 :: 		asm CLRWDT;
	CLRWDT
;main.c,85 :: 		while(1) {Delay_ms(500);asm CLRWDT;}
L_main181:
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_main183:
	DECFSZ     R13, 1
	GOTO       L_main183
	DECFSZ     R12, 1
	GOTO       L_main183
	DECFSZ     R11, 1
	GOTO       L_main183
	NOP
	NOP
	CLRWDT
	GOTO       L_main181
;main.c,86 :: 		}
L_main175:
;main.c,87 :: 		asm CLRWDT;
	CLRWDT
;main.c,89 :: 		if(Button(&PORTB, 0, 100, 0))  { //  Fider loss input
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	CLRF       FARG_Button_pin+0
	MOVLW      100
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main184
;main.c,90 :: 		if(type==4 | type==5) { led_wr_str (0, 6, "Fider Loss", 10); // 128*64
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_main185
	CLRF       FARG_led_wr_str+0
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr3_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr3_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      10
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,91 :: 		led_wr_str (2, 6, "input", 5);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr4_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr4_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      5
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,92 :: 		led_wr_str (4, 6+3*12, "dB", 2);}
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      42
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr5_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr5_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_main186
L_main185:
;main.c,93 :: 		else if(type!=0) { led_wr_str (0, 0, "Fider Loss input", 16); // 1602 | 128*32
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_main187
	CLRF       FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr6_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr6_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,94 :: 		led_wr_str (1, 3, "dB", 2);}
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      3
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr7_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr7_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_main187:
L_main186:
;main.c,95 :: 		Fid_loss = Bcd2Dec(EEPROM_Read(0x34));
	MOVLW      52
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	MOVWF      _Fid_loss+0
;main.c,96 :: 		show_loss();
	CALL       _show_loss+0
;main.c,98 :: 		while(1) {
L_main188:
;main.c,99 :: 		if(Button(&PORTB, 2, 50, 0)){   // BYP button
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      2
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main190
;main.c,100 :: 		if(Fid_loss<99) {
	MOVLW      99
	SUBWF      _Fid_loss+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main191
;main.c,101 :: 		Fid_loss ++;
	INCF       _Fid_loss+0, 1
;main.c,102 :: 		show_loss();
	CALL       _show_loss+0
;main.c,103 :: 		EEPROM_Write(0x34, Dec2Bcd(Fid_loss));
	MOVF       _Fid_loss+0, 0
	MOVWF      FARG_Dec2Bcd_decnum+0
	CALL       _Dec2Bcd+0
	MOVF       R0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	MOVLW      52
	MOVWF      FARG_EEPROM_Write_Address+0
	CALL       _EEPROM_Write+0
;main.c,104 :: 		}
L_main191:
;main.c,105 :: 		while(Button(&PORTB, 2, 50, 0)) asm CLRWDT;
L_main192:
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      2
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main193
	CLRWDT
	GOTO       L_main192
L_main193:
;main.c,106 :: 		}
L_main190:
;main.c,108 :: 		if(Button(&PORTB, 1, 50, 0)){   // AUTO button
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      1
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main194
;main.c,109 :: 		if(Fid_loss>0) {
	MOVF       _Fid_loss+0, 0
	SUBLW      0
	BTFSC      STATUS+0, 0
	GOTO       L_main195
;main.c,110 :: 		Fid_loss --;
	DECF       _Fid_loss+0, 1
;main.c,111 :: 		show_loss();
	CALL       _show_loss+0
;main.c,112 :: 		EEPROM_Write(0x34, Dec2Bcd(Fid_loss));
	MOVF       _Fid_loss+0, 0
	MOVWF      FARG_Dec2Bcd_decnum+0
	CALL       _Dec2Bcd+0
	MOVF       R0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	MOVLW      52
	MOVWF      FARG_EEPROM_Write_Address+0
	CALL       _EEPROM_Write+0
;main.c,113 :: 		}
L_main195:
;main.c,114 :: 		while(Button(&PORTB, 1, 50, 0)) asm CLRWDT;
L_main196:
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      1
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main197
	CLRWDT
	GOTO       L_main196
L_main197:
;main.c,115 :: 		}
L_main194:
;main.c,116 :: 		asm CLRWDT;
	CLRWDT
;main.c,117 :: 		}  // while
	GOTO       L_main188
;main.c,118 :: 		} //  Fider loss input
L_main184:
;main.c,120 :: 		if(Test==0) {
	MOVF       _Test+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main198
;main.c,129 :: 		read_i2c_inputs();
	CALL       _read_i2c_inputs+0
;main.c,130 :: 		load_settings();
	CALL       _load_settings+0
;main.c,131 :: 		if(Restart==1 ) lcd_prep_short = 1;
	MOVF       _Restart+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main199
	MOVLW      1
	MOVWF      _lcd_prep_short+0
L_main199:
;main.c,132 :: 		lcd_prep();
	CALL       _lcd_prep+0
;main.c,133 :: 		}
	GOTO       L_main200
L_main198:
;main.c,134 :: 		else Test_init();
	CALL       _test_init+0
L_main200:
;main.c,136 :: 		lcd_ind();
	CALL       _lcd_ind+0
;main.c,142 :: 		while(1) {
L_main201:
;main.c,143 :: 		asm CLRWDT;
	CLRWDT
;main.c,144 :: 		lcd_pwr();
	CALL       _lcd_pwr+0
;main.c,146 :: 		if(Test==0) button_proc();
	MOVF       _Test+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_main203
	CALL       _button_proc+0
	GOTO       L_main204
L_main203:
;main.c,147 :: 		else button_proc_test();
	CALL       _button_proc_test+0
L_main204:
;main.c,149 :: 		if(dysp_cnt!=0) dysp_cnt --;
	MOVLW      0
	XORWF      _dysp_cnt+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main628
	MOVLW      0
	XORWF      _dysp_cnt+0, 0
L__main628:
	BTFSC      STATUS+0, 2
	GOTO       L_main205
	MOVLW      1
	SUBWF      _dysp_cnt+0, 1
	MOVLW      0
	SUBWFB     _dysp_cnt+1, 1
	GOTO       L_main206
L_main205:
;main.c,150 :: 		else if(Test==0 & Dysp_delay!=0) dysp_off();
	MOVF       _Test+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _Dysp_delay+0, 0
	XORLW      0
	MOVLW      1
	BTFSC      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_main207
	CALL       _dysp_off+0
L_main207:
L_main206:
;main.c,152 :: 		offset = mem_offset;
	MOVF       _mem_offset+0, 0
	MOVWF      main_offset_L0+0
;main.c,153 :: 		read_i2c_inputs();
	CALL       _read_i2c_inputs+0
;main.c,155 :: 		if (offset != mem_offset) {
	MOVF       main_offset_L0+0, 0
	XORWF      _mem_offset+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main208
;main.c,156 :: 		load_settings();
	CALL       _load_settings+0
;main.c,157 :: 		lcd_ind();
	CALL       _lcd_ind+0
;main.c,158 :: 		}
L_main208:
;main.c,161 :: 		}
	GOTO       L_main201
;main.c,162 :: 		}
	GOTO       $+0
; end of _main

_button_proc_test:

;main.c,167 :: 		void button_proc_test(void) {
;main.c,168 :: 		if(Button(&PORTB, 0, 50, 0)){    // Tune btn
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	CLRF       FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test209
;main.c,169 :: 		Delay_ms(250);
	MOVLW      6
	MOVWF      R11
	MOVLW      19
	MOVWF      R12
	MOVLW      173
	MOVWF      R13
L_button_proc_test210:
	DECFSZ     R13, 1
	GOTO       L_button_proc_test210
	DECFSZ     R12, 1
	GOTO       L_button_proc_test210
	DECFSZ     R11, 1
	GOTO       L_button_proc_test210
	NOP
	NOP
;main.c,170 :: 		asm CLRWDT;
	CLRWDT
;main.c,171 :: 		if(PORTB.B0==1) { // short press button
	BTFSS      PORTB+0, 0
	GOTO       L_button_proc_test211
;main.c,172 :: 		if(SW==0) SW = 1; else SW = 0;
	MOVF       main_SW+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_button_proc_test212
	MOVLW      1
	MOVWF      main_SW+0
	GOTO       L_button_proc_test213
L_button_proc_test212:
	CLRF       main_SW+0
L_button_proc_test213:
;main.c,173 :: 		set_sw(SW);
	MOVF       main_SW+0, 0
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main.c,174 :: 		lcd_ind();
	CALL       _lcd_ind+0
;main.c,175 :: 		}
	GOTO       L_button_proc_test214
L_button_proc_test211:
;main.c,177 :: 		if(L==1) L = 0; else L = 1;
	MOVF       _L+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_button_proc_test215
	CLRF       _L+0
	GOTO       L_button_proc_test216
L_button_proc_test215:
	MOVLW      1
	MOVWF      _L+0
L_button_proc_test216:
;main.c,178 :: 		if(L==1) {
	MOVF       _L+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_button_proc_test217
;main.c,179 :: 		if(type==4 |type==5)   // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test218
;main.c,180 :: 		led_wr_str (0, 16+12*8, "l", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr8_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr8_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc_test219
L_button_proc_test218:
;main.c,181 :: 		else if(type!=0)              // 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test220
;main.c,182 :: 		led_wr_str (0, 8, "l", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr9_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr9_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_button_proc_test220:
L_button_proc_test219:
;main.c,183 :: 		}
	GOTO       L_button_proc_test221
L_button_proc_test217:
;main.c,185 :: 		if(type==4 |type==5)   // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test222
;main.c,186 :: 		led_wr_str (0, 16+12*8, "c", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr10_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr10_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc_test223
L_button_proc_test222:
;main.c,187 :: 		else if(type!=0)              // 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test224
;main.c,188 :: 		led_wr_str (0, 8, "c", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr11_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr11_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_button_proc_test224:
L_button_proc_test223:
;main.c,189 :: 		}
L_button_proc_test221:
;main.c,190 :: 		}
L_button_proc_test214:
;main.c,191 :: 		while(Button(&PORTB, 0, 50, 0)) {lcd_pwr(); asm CLRWDT;   }
L_button_proc_test225:
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	CLRF       FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test226
	CALL       _lcd_pwr+0
	CLRWDT
	GOTO       L_button_proc_test225
L_button_proc_test226:
;main.c,192 :: 		}  // END Tune btn
L_button_proc_test209:
;main.c,194 :: 		if(Button(&PORTB, 2, 50, 0)){   // BYP button
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      2
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test227
;main.c,195 :: 		asm CLRWDT;
	CLRWDT
;main.c,196 :: 		while(PORTB.B2==0) {
L_button_proc_test228:
	BTFSC      PORTB+0, 2
	GOTO       L_button_proc_test229
;main.c,197 :: 		if(L & ind<32*L_mult-1) {
	MOVLW      5
	MOVWF      R2
	MOVF       main_L_mult+0, 0
	MOVWF      R0
	CLRF       R1
	MOVF       R2, 0
L__button_proc_test629:
	BTFSC      STATUS+0, 2
	GOTO       L__button_proc_test630
	LSLF       R0, 1
	RLF        R1, 1
	ADDLW      255
	GOTO       L__button_proc_test629
L__button_proc_test630:
	MOVLW      1
	SUBWF      R0, 0
	MOVWF      R2
	MOVLW      0
	SUBWFB     R1, 0
	MOVWF      R3
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      R3, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__button_proc_test631
	MOVF       R2, 0
	SUBWF      main_ind+0, 0
L__button_proc_test631:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       _L+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test230
;main.c,198 :: 		ind ++;
	INCF       main_ind+0, 1
;main.c,199 :: 		set_ind(ind);
	MOVF       main_ind+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.c,200 :: 		}
	GOTO       L_button_proc_test231
L_button_proc_test230:
;main.c,201 :: 		else if(!L & cap<32*L_mult-1) {
	MOVF       _L+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R4
	MOVLW      5
	MOVWF      R2
	MOVF       main_L_mult+0, 0
	MOVWF      R0
	CLRF       R1
	MOVF       R2, 0
L__button_proc_test632:
	BTFSC      STATUS+0, 2
	GOTO       L__button_proc_test633
	LSLF       R0, 1
	RLF        R1, 1
	ADDLW      255
	GOTO       L__button_proc_test632
L__button_proc_test633:
	MOVLW      1
	SUBWF      R0, 0
	MOVWF      R2
	MOVLW      0
	SUBWFB     R1, 0
	MOVWF      R3
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      R3, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__button_proc_test634
	MOVF       R2, 0
	SUBWF      main_cap+0, 0
L__button_proc_test634:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R4, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test232
;main.c,202 :: 		cap ++;
	INCF       main_cap+0, 1
;main.c,203 :: 		set_cap(cap);
	MOVF       main_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.c,204 :: 		}
L_button_proc_test232:
L_button_proc_test231:
;main.c,205 :: 		lcd_ind();
	CALL       _lcd_ind+0
;main.c,206 :: 		lcd_pwr();
	CALL       _lcd_pwr+0
;main.c,207 :: 		Delay_ms(30);
	MOVLW      156
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_button_proc_test233:
	DECFSZ     R13, 1
	GOTO       L_button_proc_test233
	DECFSZ     R12, 1
	GOTO       L_button_proc_test233
;main.c,208 :: 		asm CLRWDT;
	CLRWDT
;main.c,209 :: 		}
	GOTO       L_button_proc_test228
L_button_proc_test229:
;main.c,210 :: 		}   // end of BYP button
L_button_proc_test227:
;main.c,212 :: 		if(Button(&PORTB, 1, 50, 0) & Bypas==0){   // Auto button
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      1
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       _bypas+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test234
;main.c,213 :: 		asm CLRWDT;
	CLRWDT
;main.c,214 :: 		while(PORTB.B1==0) {
L_button_proc_test235:
	BTFSC      PORTB+0, 1
	GOTO       L_button_proc_test236
;main.c,215 :: 		if(L & ind>0) {
	MOVF       main_ind+0, 0
	SUBLW      0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       _L+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test237
;main.c,216 :: 		ind --;
	DECF       main_ind+0, 1
;main.c,217 :: 		set_ind(ind);
	MOVF       main_ind+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.c,218 :: 		}
	GOTO       L_button_proc_test238
L_button_proc_test237:
;main.c,219 :: 		else if(!L & cap>0) {
	MOVF       _L+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       main_cap+0, 0
	SUBLW      0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc_test239
;main.c,220 :: 		cap --;
	DECF       main_cap+0, 1
;main.c,221 :: 		set_cap(cap);
	MOVF       main_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.c,222 :: 		}
L_button_proc_test239:
L_button_proc_test238:
;main.c,223 :: 		lcd_ind();
	CALL       _lcd_ind+0
;main.c,224 :: 		lcd_pwr();
	CALL       _lcd_pwr+0
;main.c,225 :: 		Delay_ms(30);
	MOVLW      156
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_button_proc_test240:
	DECFSZ     R13, 1
	GOTO       L_button_proc_test240
	DECFSZ     R12, 1
	GOTO       L_button_proc_test240
;main.c,226 :: 		asm CLRWDT;
	CLRWDT
;main.c,227 :: 		}
	GOTO       L_button_proc_test235
L_button_proc_test236:
;main.c,228 :: 		}
L_button_proc_test234:
;main.c,229 :: 		return;
;main.c,230 :: 		}
	RETURN
; end of _button_proc_test

_button_proc:

;main.c,233 :: 		void button_proc(void) {
;main.c,234 :: 		if(Button(&PORTB, 0, 50, 0) | Soft_tune){
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	CLRF       FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       _Soft_tune+0, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc241
;main.c,235 :: 		dysp_on();
	CALL       _dysp_on+0
;main.c,236 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF       _Dysp_delay+0, 0
	MOVWF      R0
	CALL       _Byte2Double+0
	MOVF       _dysp_cnt_mult+0, 0
	MOVWF      R4
	MOVF       _dysp_cnt_mult+1, 0
	MOVWF      R5
	MOVF       _dysp_cnt_mult+2, 0
	MOVWF      R6
	MOVF       _dysp_cnt_mult+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	CALL       _Double2Int+0
	MOVF       R0, 0
	MOVWF      _dysp_cnt+0
	MOVF       R1, 0
	MOVWF      _dysp_cnt+1
;main.c,237 :: 		Delay_ms(250);
	MOVLW      6
	MOVWF      R11
	MOVLW      19
	MOVWF      R12
	MOVLW      173
	MOVWF      R13
L_button_proc242:
	DECFSZ     R13, 1
	GOTO       L_button_proc242
	DECFSZ     R12, 1
	GOTO       L_button_proc242
	DECFSZ     R11, 1
	GOTO       L_button_proc242
	NOP
	NOP
;main.c,238 :: 		asm CLRWDT;
	CLRWDT
;main.c,239 :: 		if(Soft_tune == 0 & PORTB.B0==1) { // short press button
	MOVF       _Soft_tune+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	BTFSC      PORTB+0, 0
	GOTO       L__button_proc635
	BCF        3, 0
	GOTO       L__button_proc636
L__button_proc635:
	BSF        3, 0
L__button_proc636:
	CLRF       R0
	BTFSC      3, 0
	INCF       R0, 1
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc243
;main.c,240 :: 		show_reset();
	CALL       _show_reset+0
;main.c,241 :: 		bypas =0;
	CLRF       _bypas+0
;main.c,242 :: 		}
	GOTO       L_button_proc244
L_button_proc243:
;main.c,244 :: 		p_Tx = 1;         //
	BSF        LATA7_bit+0, 7
;main.c,245 :: 		n_Tx = 0;         // TX request
	BCF        LATA6_bit+0, 6
;main.c,246 :: 		Delay_ms(250);    //
	MOVLW      6
	MOVWF      R11
	MOVLW      19
	MOVWF      R12
	MOVLW      173
	MOVWF      R13
L_button_proc245:
	DECFSZ     R13, 1
	GOTO       L_button_proc245
	DECFSZ     R12, 1
	GOTO       L_button_proc245
	DECFSZ     R11, 1
	GOTO       L_button_proc245
	NOP
	NOP
;main.c,247 :: 		btn_push();
	CALL       _btn_push+0
;main.c,248 :: 		bypas = 0;
	CLRF       _bypas+0
;main.c,249 :: 		while(Button(&PORTB, 0, 50, 0)) {lcd_pwr(); asm CLRWDT; }
L_button_proc246:
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	CLRF       FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc247
	CALL       _lcd_pwr+0
	CLRWDT
	GOTO       L_button_proc246
L_button_proc247:
;main.c,250 :: 		Soft_tune = 0;
	CLRF       _Soft_tune+0
;main.c,251 :: 		}
L_button_proc244:
;main.c,252 :: 		}
L_button_proc241:
;main.c,254 :: 		if(Button(&PORTB, 2, 50, 0)){   // BYP button
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      2
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc248
;main.c,255 :: 		dysp_on();
	CALL       _dysp_on+0
;main.c,256 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF       _Dysp_delay+0, 0
	MOVWF      R0
	CALL       _Byte2Double+0
	MOVF       _dysp_cnt_mult+0, 0
	MOVWF      R4
	MOVF       _dysp_cnt_mult+1, 0
	MOVWF      R5
	MOVF       _dysp_cnt_mult+2, 0
	MOVWF      R6
	MOVF       _dysp_cnt_mult+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	CALL       _Double2Int+0
	MOVF       R0, 0
	MOVWF      _dysp_cnt+0
	MOVF       R1, 0
	MOVWF      _dysp_cnt+1
;main.c,257 :: 		asm CLRWDT;
	CLRWDT
;main.c,258 :: 		if(bypas == 0) {
	MOVF       _bypas+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_button_proc249
;main.c,259 :: 		bypas = 1;
	MOVLW      1
	MOVWF      _bypas+0
;main.c,260 :: 		cap_mem = cap;
	MOVF       main_cap+0, 0
	MOVWF      _cap_mem+0
;main.c,261 :: 		ind_mem = ind;
	MOVF       main_ind+0, 0
	MOVWF      _ind_mem+0
;main.c,262 :: 		SW_mem = SW;
	MOVF       main_SW+0, 0
	MOVWF      _SW_mem+0
;main.c,263 :: 		cap = 0;
	CLRF       main_cap+0
;main.c,264 :: 		ind = 0;
	CLRF       main_ind+0
;main.c,265 :: 		SW = 1;
	MOVLW      1
	MOVWF      main_SW+0
;main.c,266 :: 		set_ind(ind);
	CLRF       FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.c,267 :: 		set_cap(cap);
	MOVF       main_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.c,268 :: 		set_SW(SW);
	MOVF       main_SW+0, 0
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main.c,269 :: 		if(Loss_mode==0) lcd_ind();
	MOVF       _Loss_mode+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_button_proc250
	CALL       _lcd_ind+0
L_button_proc250:
;main.c,270 :: 		Auto_mem = Auto;
	MOVF       _Auto+0, 0
	MOVWF      _Auto_mem+0
;main.c,271 :: 		Auto = 0;
	CLRF       _Auto+0
;main.c,272 :: 		}
	GOTO       L_button_proc251
L_button_proc249:
;main.c,274 :: 		bypas = 0;
	CLRF       _bypas+0
;main.c,275 :: 		cap = cap_mem;
	MOVF       _cap_mem+0, 0
	MOVWF      main_cap+0
;main.c,276 :: 		ind = ind_mem;
	MOVF       _ind_mem+0, 0
	MOVWF      main_ind+0
;main.c,277 :: 		SW = SW_mem;
	MOVF       _SW_mem+0, 0
	MOVWF      main_SW+0
;main.c,278 :: 		set_cap(cap);
	MOVF       _cap_mem+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.c,279 :: 		set_ind(ind);
	MOVF       main_ind+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.c,280 :: 		set_SW(SW);
	MOVF       main_SW+0, 0
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main.c,281 :: 		if(Loss_mode==0) lcd_ind();
	MOVF       _Loss_mode+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_button_proc252
	CALL       _lcd_ind+0
L_button_proc252:
;main.c,282 :: 		Auto = Auto_mem;
	MOVF       _Auto_mem+0, 0
	MOVWF      _Auto+0
;main.c,283 :: 		}
L_button_proc251:
;main.c,284 :: 		if(type==4 | type==5) {      // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc253
;main.c,285 :: 		if(Auto & !Bypas) led_wr_str (0, 16+8*12, ".", 1);
	MOVF       _bypas+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _Auto+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc254
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr12_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr12_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc255
L_button_proc254:
;main.c,286 :: 		else if(!Auto & Bypas) led_wr_str (0, 16+8*12, "_", 1);
	MOVF       _Auto+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _bypas+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc256
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr13_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr13_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc257
L_button_proc256:
;main.c,287 :: 		else led_wr_str (0, 16+8*12, " ", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr14_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr14_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_button_proc257:
L_button_proc255:
;main.c,288 :: 		}
	GOTO       L_button_proc258
L_button_proc253:
;main.c,289 :: 		else if(type!=0) { //  1602 LCD  or 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc259
;main.c,290 :: 		if(Auto & !Bypas) led_wr_str (0, 8, ".", 1);
	MOVF       _bypas+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _Auto+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc260
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr15_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr15_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc261
L_button_proc260:
;main.c,291 :: 		else if(!Auto & Bypas) led_wr_str (0, 8, "_", 1);
	MOVF       _Auto+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _bypas+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc262
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr16_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr16_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc263
L_button_proc262:
;main.c,292 :: 		else led_wr_str (0, 8, " ", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr17_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr17_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_button_proc263:
L_button_proc261:
;main.c,293 :: 		}
L_button_proc259:
L_button_proc258:
;main.c,294 :: 		asm CLRWDT;
	CLRWDT
;main.c,295 :: 		while(Button(&PORTB, 2, 50, 0)) {lcd_pwr(); asm CLRWDT;   }
L_button_proc264:
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      2
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc265
	CALL       _lcd_pwr+0
	CLRWDT
	GOTO       L_button_proc264
L_button_proc265:
;main.c,296 :: 		}
L_button_proc248:
;main.c,298 :: 		if(Button(&PORTB, 1, 50, 0) & Bypas==0){   // Auto button
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      1
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       _bypas+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc266
;main.c,299 :: 		dysp_on();
	CALL       _dysp_on+0
;main.c,300 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF       _Dysp_delay+0, 0
	MOVWF      R0
	CALL       _Byte2Double+0
	MOVF       _dysp_cnt_mult+0, 0
	MOVWF      R4
	MOVF       _dysp_cnt_mult+1, 0
	MOVWF      R5
	MOVF       _dysp_cnt_mult+2, 0
	MOVWF      R6
	MOVF       _dysp_cnt_mult+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	CALL       _Double2Int+0
	MOVF       R0, 0
	MOVWF      _dysp_cnt+0
	MOVF       R1, 0
	MOVWF      _dysp_cnt+1
;main.c,301 :: 		asm CLRWDT;
	CLRWDT
;main.c,302 :: 		if(Auto == 0) Auto = 1;
	MOVF       _Auto+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_button_proc267
	MOVLW      1
	MOVWF      _Auto+0
	GOTO       L_button_proc268
L_button_proc267:
;main.c,303 :: 		else Auto = 0;
	CLRF       _Auto+0
L_button_proc268:
;main.c,304 :: 		EEPROM_Write(2, Auto);
	MOVLW      2
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _Auto+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,305 :: 		if(type==4 | type==5) {      // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc269
;main.c,306 :: 		if(Auto & !Bypas) led_wr_str (0, 16+8*12, ".", 1);
	MOVF       _bypas+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _Auto+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc270
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr18_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr18_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc271
L_button_proc270:
;main.c,307 :: 		else if(!Auto & Bypas) led_wr_str (0, 16+8*12, "_", 1);
	MOVF       _Auto+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _bypas+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc272
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr19_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr19_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc273
L_button_proc272:
;main.c,308 :: 		else led_wr_str (0, 16+8*12, " ", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr20_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr20_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_button_proc273:
L_button_proc271:
;main.c,309 :: 		}
	GOTO       L_button_proc274
L_button_proc269:
;main.c,310 :: 		else if(type!=0) { //  1602 LCD  or 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc275
;main.c,311 :: 		if(Auto & !Bypas) led_wr_str (0, 8, ".", 1);
	MOVF       _bypas+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _Auto+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc276
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr21_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr21_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc277
L_button_proc276:
;main.c,312 :: 		else if(!Auto & Bypas) led_wr_str (0, 8, "_", 1);
	MOVF       _Auto+0, 0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       _bypas+0, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc278
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr22_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr22_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_button_proc279
L_button_proc278:
;main.c,313 :: 		else led_wr_str (0, 8, " ", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr23_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr23_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_button_proc279:
L_button_proc277:
;main.c,314 :: 		}
L_button_proc275:
L_button_proc274:
;main.c,315 :: 		asm CLRWDT;
	CLRWDT
;main.c,316 :: 		while(Button(&PORTB, 1, 50, 0)) {lcd_pwr(); asm CLRWDT; }
L_button_proc280:
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      1
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_button_proc281
	CALL       _lcd_pwr+0
	CLRWDT
	GOTO       L_button_proc280
L_button_proc281:
;main.c,317 :: 		}
L_button_proc266:
;main.c,318 :: 		return;
;main.c,319 :: 		}
	RETURN
; end of _button_proc

_show_reset:

;main.c,321 :: 		void show_reset() {
;main.c,322 :: 		atu_reset();
	CALL       _atu_reset+0
;main.c,323 :: 		SW = 1;
	MOVLW      1
	MOVWF      main_SW+0
;main.c,324 :: 		set_sw(SW);
	MOVLW      1
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main.c,325 :: 		EEPROM_Write(255 - mem_offset * 5, 0);
	MOVF       _mem_offset+0, 0
	MOVWF      R0
	MOVLW      5
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	SUBLW      255
	MOVWF      FARG_EEPROM_Write_Address+0
	CLRF       FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,326 :: 		EEPROM_Write(254 - mem_offset * 5, 0);
	MOVF       _mem_offset+0, 0
	MOVWF      R0
	MOVLW      5
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	SUBLW      254
	MOVWF      FARG_EEPROM_Write_Address+0
	CLRF       FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,327 :: 		EEPROM_Write(253 - mem_offset * 5, 1);
	MOVF       _mem_offset+0, 0
	MOVWF      R0
	MOVLW      5
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	SUBLW      253
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVLW      1
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,328 :: 		EEPROM_Write(252 - mem_offset * 5, 0);
	MOVF       _mem_offset+0, 0
	MOVWF      R0
	MOVLW      5
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	SUBLW      252
	MOVWF      FARG_EEPROM_Write_Address+0
	CLRF       FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,329 :: 		EEPROM_Write(251 - mem_offset * 5, 0);
	MOVF       _mem_offset+0, 0
	MOVWF      R0
	MOVLW      5
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	SUBLW      251
	MOVWF      FARG_EEPROM_Write_Address+0
	CLRF       FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,330 :: 		lcd_ind();
	CALL       _lcd_ind+0
;main.c,331 :: 		Loss_mode = 0;
	CLRF       _Loss_mode+0
;main.c,332 :: 		p_Tx = 0;
	BCF        LATA7_bit+0, 7
;main.c,333 :: 		n_Tx = 1;
	BSF        LATA6_bit+0, 6
;main.c,334 :: 		SWR = 0;
	CLRF       _SWR+0
	CLRF       _SWR+1
;main.c,335 :: 		PWR = 0;
	CLRF       _PWR+0
	CLRF       _PWR+1
;main.c,336 :: 		SWR_fixed_old = 0;
	CLRF       _SWR_fixed_old+0
	CLRF       _SWR_fixed_old+1
;main.c,337 :: 		if(type==4 | type==5) {    // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_reset282
;main.c,338 :: 		led_wr_str (2, 16, "RESET   ", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr24_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr24_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,339 :: 		asm CLRWDT;
	CLRWDT
;main.c,340 :: 		delay_ms(600);
	MOVLW      13
	MOVWF      R11
	MOVLW      45
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_show_reset283:
	DECFSZ     R13, 1
	GOTO       L_show_reset283
	DECFSZ     R12, 1
	GOTO       L_show_reset283
	DECFSZ     R11, 1
	GOTO       L_show_reset283
	NOP
	NOP
;main.c,341 :: 		led_wr_str (2, 16, "SWR=0.00", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr25_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr25_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,342 :: 		asm CLRWDT;
	CLRWDT
;main.c,343 :: 		}
	GOTO       L_show_reset284
L_show_reset282:
;main.c,344 :: 		else if(type!=0) {// 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_show_reset285
;main.c,345 :: 		led_wr_str (1, 0, "RESET   ", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr26_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr26_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,346 :: 		asm CLRWDT;
	CLRWDT
;main.c,347 :: 		delay_ms(600);
	MOVLW      13
	MOVWF      R11
	MOVLW      45
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_show_reset286:
	DECFSZ     R13, 1
	GOTO       L_show_reset286
	DECFSZ     R12, 1
	GOTO       L_show_reset286
	DECFSZ     R11, 1
	GOTO       L_show_reset286
	NOP
	NOP
;main.c,348 :: 		led_wr_str (1, 0, "SWR=0.00", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr27_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr27_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,349 :: 		asm CLRWDT;
	CLRWDT
;main.c,350 :: 		}
	GOTO       L_show_reset287
L_show_reset285:
;main.c,352 :: 		LATB.B6 = 1;
	BSF        LATB+0, 6
;main.c,353 :: 		LATB.B7 = 1;
	BSF        LATB+0, 7
;main.c,354 :: 		}
L_show_reset287:
L_show_reset284:
;main.c,355 :: 		SWR_old = 10000;
	MOVLW      16
	MOVWF      _SWR_old+0
	MOVLW      39
	MOVWF      _SWR_old+1
;main.c,356 :: 		Power_old = 10000;
	MOVLW      16
	MOVWF      _Power_old+0
	MOVLW      39
	MOVWF      _Power_old+1
;main.c,357 :: 		lcd_pwr();
	CALL       _lcd_pwr+0
;main.c,358 :: 		return;
;main.c,359 :: 		}
	RETURN
; end of _show_reset

_btn_push:

;main.c,361 :: 		void btn_push() {
;main.c,362 :: 		asm CLRWDT;
	CLRWDT
;main.c,363 :: 		if(type==4 | type==5)  {   // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_btn_push288
;main.c,364 :: 		led_wr_str (2, 16+12*4, "TUNE", 4);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      64
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr28_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr28_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,365 :: 		}
	GOTO       L_btn_push289
L_btn_push288:
;main.c,366 :: 		else if(type!=0) {   // 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_btn_push290
;main.c,367 :: 		led_wr_str (1, 4, "TUNE", 4);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr29_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr29_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,368 :: 		}
	GOTO       L_btn_push291
L_btn_push290:
;main.c,370 :: 		LATB.B6 = 1;
	BSF        LATB+0, 6
;main.c,371 :: 		LATB.B7 = 1;
	BSF        LATB+0, 7
;main.c,372 :: 		}
L_btn_push291:
L_btn_push289:
;main.c,373 :: 		tune();
	CALL       _tune+0
;main.c,374 :: 		if(type==0) {    // real-time 2-colors led work
	MOVF       _type+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_btn_push292
;main.c,375 :: 		if(swr<=150) { LATB.B6 = 0; LATB.B7 = 1; } // Green
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      _SWR+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__btn_push637
	MOVF       _SWR+0, 0
	SUBLW      150
L__btn_push637:
	BTFSS      STATUS+0, 0
	GOTO       L_btn_push293
	BCF        LATB+0, 6
	BSF        LATB+0, 7
	GOTO       L_btn_push294
L_btn_push293:
;main.c,376 :: 		else if(swr<=250) {PORTB.B6 = 0; PORTB.B7 = 0;} // Orange
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      _SWR+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__btn_push638
	MOVF       _SWR+0, 0
	SUBLW      250
L__btn_push638:
	BTFSS      STATUS+0, 0
	GOTO       L_btn_push295
	BCF        PORTB+0, 6
	BCF        PORTB+0, 7
	GOTO       L_btn_push296
L_btn_push295:
;main.c,377 :: 		else { PORTB.B6 = 1; PORTB.B7 = 0; }  // Red
	BSF        PORTB+0, 6
	BCF        PORTB+0, 7
L_btn_push296:
L_btn_push294:
;main.c,378 :: 		}
	GOTO       L_btn_push297
L_btn_push292:
;main.c,379 :: 		else if(Loss_mode==0 | Loss_ind==0) lcd_ind();
	MOVF       _Loss_mode+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       main_Loss_ind+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_btn_push298
	CALL       _lcd_ind+0
L_btn_push298:
L_btn_push297:
;main.c,380 :: 		EEPROM_Write(255 - mem_offset * 5, cap);
	MOVF       _mem_offset+0, 0
	MOVWF      R0
	MOVLW      5
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	SUBLW      255
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       main_cap+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,381 :: 		EEPROM_Write(254 - mem_offset * 5, ind);
	MOVF       _mem_offset+0, 0
	MOVWF      R0
	MOVLW      5
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	SUBLW      254
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       main_ind+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,382 :: 		EEPROM_Write(253 - mem_offset * 5, SW);
	MOVF       _mem_offset+0, 0
	MOVWF      R0
	MOVLW      5
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	SUBLW      253
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       main_SW+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,383 :: 		EEPROM_Write(252 - mem_offset * 5, swr_a/256);
	MOVF       _mem_offset+0, 0
	MOVWF      R0
	MOVLW      5
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	SUBLW      252
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _swr_a+1, 0
	MOVWF      R0
	MOVLW      0
	BTFSC      _swr_a+1, 7
	MOVLW      255
	MOVWF      R1
	MOVF       R0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,384 :: 		EEPROM_Write(251 - mem_offset * 5, swr_a%256);
	MOVF       _mem_offset+0, 0
	MOVWF      R0
	MOVLW      5
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	SUBLW      251
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVLW      0
	MOVWF      R4
	MOVLW      1
	MOVWF      R5
	MOVF       _swr_a+0, 0
	MOVWF      R0
	MOVF       _swr_a+1, 0
	MOVWF      R1
	CALL       _Div_16x16_S+0
	MOVF       R8, 0
	MOVWF      R0
	MOVF       R9, 0
	MOVWF      R1
	MOVF       R0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,385 :: 		SWR_old = 10000;
	MOVLW      16
	MOVWF      _SWR_old+0
	MOVLW      39
	MOVWF      _SWR_old+1
;main.c,386 :: 		Power_old = 10000;
	MOVLW      16
	MOVWF      _Power_old+0
	MOVLW      39
	MOVWF      _Power_old+1
;main.c,387 :: 		lcd_pwr();
	CALL       _lcd_pwr+0
;main.c,388 :: 		SWR_fixed_old = SWR;
	MOVF       _SWR+0, 0
	MOVWF      _SWR_fixed_old+0
	MOVF       _SWR+1, 0
	MOVWF      _SWR_fixed_old+1
;main.c,389 :: 		p_Tx = 0;
	BCF        LATA7_bit+0, 7
;main.c,390 :: 		n_Tx = 1;
	BSF        LATA6_bit+0, 6
;main.c,391 :: 		asm CLRWDT;
	CLRWDT
;main.c,392 :: 		return;
;main.c,393 :: 		}
	RETURN
; end of _btn_push

_lcd_prep:

;main.c,396 :: 		void lcd_prep() {
;main.c,397 :: 		asm CLRWDT;
	CLRWDT
;main.c,398 :: 		if(type==4 |type==5){   // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_prep299
;main.c,399 :: 		if(lcd_prep_short==0) {
	MOVF       _lcd_prep_short+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_prep300
;main.c,400 :: 		led_wr_str (0, 22, "ATU-100", 7);
	CLRF       FARG_led_wr_str+0
	MOVLW      22
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr30_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr30_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,401 :: 		led_wr_str (2, 6, "EXT board", 9);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr31_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr31_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,402 :: 		led_wr_str (4, 16, "by N7DDC", 8);
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr32_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr32_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,403 :: 		led_wr_str (6, 4, "FW ver 3.1", 10);
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr33_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr33_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      10
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,404 :: 		asm CLRWDT;
	CLRWDT
;main.c,405 :: 		Delay_ms(600);
	MOVLW      13
	MOVWF      R11
	MOVLW      45
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_lcd_prep301:
	DECFSZ     R13, 1
	GOTO       L_lcd_prep301
	DECFSZ     R12, 1
	GOTO       L_lcd_prep301
	DECFSZ     R11, 1
	GOTO       L_lcd_prep301
	NOP
	NOP
;main.c,406 :: 		asm CLRWDT;
	CLRWDT
;main.c,407 :: 		Delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_prep302:
	DECFSZ     R13, 1
	GOTO       L_lcd_prep302
	DECFSZ     R12, 1
	GOTO       L_lcd_prep302
	DECFSZ     R11, 1
	GOTO       L_lcd_prep302
	NOP
	NOP
;main.c,408 :: 		asm CLRWDT;
	CLRWDT
;main.c,409 :: 		led_wr_str (0, 16, "        ", 8);
	CLRF       FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr34_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr34_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,410 :: 		led_wr_str (2, 4, "          ", 10);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr35_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr35_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      10
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,411 :: 		led_wr_str (4, 16, "        ", 8);
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr36_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr36_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,412 :: 		led_wr_str (6, 4, "          ", 10);
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr37_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr37_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      10
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,413 :: 		}
L_lcd_prep300:
;main.c,414 :: 		Delay_ms(150);
	MOVLW      4
	MOVWF      R11
	MOVLW      12
	MOVWF      R12
	MOVLW      51
	MOVWF      R13
L_lcd_prep303:
	DECFSZ     R13, 1
	GOTO       L_lcd_prep303
	DECFSZ     R12, 1
	GOTO       L_lcd_prep303
	DECFSZ     R11, 1
	GOTO       L_lcd_prep303
	NOP
	NOP
;main.c,415 :: 		if(P_High==1) led_wr_str (0, 16, "PWR=  0W", 8);
	MOVF       main_P_High+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_prep304
	CLRF       FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr38_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr38_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_lcd_prep305
L_lcd_prep304:
;main.c,416 :: 		else  led_wr_str (0, 16, "PWR=0.0W", 8);
	CLRF       FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr39_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr39_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_lcd_prep305:
;main.c,417 :: 		led_wr_str (2, 16, "SWR=0.00", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr40_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr40_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,418 :: 		if(Auto) led_wr_str (0, 16+8*12, ".", 1);
	MOVF       _Auto+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_prep306
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr41_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr41_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_lcd_prep306:
;main.c,419 :: 		}
	GOTO       L_lcd_prep307
L_lcd_prep299:
;main.c,420 :: 		else if(type!=0) {   // 1602 LCD & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_prep308
;main.c,421 :: 		if(lcd_prep_short==0) {
	MOVF       _lcd_prep_short+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_prep309
;main.c,422 :: 		led_wr_str (0, 4, "ATU-100", 7);
	CLRF       FARG_led_wr_str+0
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr42_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr42_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,423 :: 		led_wr_str (1, 3, "EXT board", 9);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      3
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr43_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr43_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,424 :: 		asm CLRWDT;
	CLRWDT
;main.c,425 :: 		Delay_ms(700);
	MOVLW      15
	MOVWF      R11
	MOVLW      53
	MOVWF      R12
	MOVLW      81
	MOVWF      R13
L_lcd_prep310:
	DECFSZ     R13, 1
	GOTO       L_lcd_prep310
	DECFSZ     R12, 1
	GOTO       L_lcd_prep310
	DECFSZ     R11, 1
	GOTO       L_lcd_prep310
;main.c,426 :: 		asm CLRWDT;
	CLRWDT
;main.c,427 :: 		Delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_prep311:
	DECFSZ     R13, 1
	GOTO       L_lcd_prep311
	DECFSZ     R12, 1
	GOTO       L_lcd_prep311
	DECFSZ     R11, 1
	GOTO       L_lcd_prep311
	NOP
	NOP
;main.c,428 :: 		asm CLRWDT;
	CLRWDT
;main.c,429 :: 		led_wr_str (0, 4, "by N7DDC", 8);
	CLRF       FARG_led_wr_str+0
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr44_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr44_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,430 :: 		led_wr_str (1, 3, "FW ver 3.1", 10);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      3
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr45_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr45_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      10
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,431 :: 		asm CLRWDT;
	CLRWDT
;main.c,432 :: 		Delay_ms(600);
	MOVLW      13
	MOVWF      R11
	MOVLW      45
	MOVWF      R12
	MOVLW      215
	MOVWF      R13
L_lcd_prep312:
	DECFSZ     R13, 1
	GOTO       L_lcd_prep312
	DECFSZ     R12, 1
	GOTO       L_lcd_prep312
	DECFSZ     R11, 1
	GOTO       L_lcd_prep312
	NOP
	NOP
;main.c,433 :: 		asm CLRWDT;
	CLRWDT
;main.c,434 :: 		Delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_prep313:
	DECFSZ     R13, 1
	GOTO       L_lcd_prep313
	DECFSZ     R12, 1
	GOTO       L_lcd_prep313
	DECFSZ     R11, 1
	GOTO       L_lcd_prep313
	NOP
	NOP
;main.c,435 :: 		asm CLRWDT;
	CLRWDT
;main.c,436 :: 		led_wr_str (0, 4, "        ", 8);
	CLRF       FARG_led_wr_str+0
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr46_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr46_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,437 :: 		led_wr_str (1, 3, "          ", 10);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      3
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr47_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr47_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      10
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,438 :: 		}
L_lcd_prep309:
;main.c,439 :: 		Delay_ms(150);
	MOVLW      4
	MOVWF      R11
	MOVLW      12
	MOVWF      R12
	MOVLW      51
	MOVWF      R13
L_lcd_prep314:
	DECFSZ     R13, 1
	GOTO       L_lcd_prep314
	DECFSZ     R12, 1
	GOTO       L_lcd_prep314
	DECFSZ     R11, 1
	GOTO       L_lcd_prep314
	NOP
	NOP
;main.c,440 :: 		if(P_High==1) led_wr_str (0, 0, "PWR=  0W", 8);
	MOVF       main_P_High+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_prep315
	CLRF       FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr48_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr48_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_lcd_prep316
L_lcd_prep315:
;main.c,441 :: 		else led_wr_str (0, 0, "PWR=0.0W", 8);
	CLRF       FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr49_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr49_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_lcd_prep316:
;main.c,442 :: 		led_wr_str (1, 0, "SWR=0.00", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr50_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr50_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,443 :: 		if(Auto) led_wr_str (0, 8, ".", 1);
	MOVF       _Auto+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_prep317
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr51_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr51_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_lcd_prep317:
;main.c,444 :: 		}
L_lcd_prep308:
L_lcd_prep307:
;main.c,445 :: 		asm CLRWDT;
	CLRWDT
;main.c,446 :: 		lcd_ind();
	CALL       _lcd_ind+0
;main.c,447 :: 		return;
;main.c,448 :: 		}
	RETURN
; end of _lcd_prep

_lcd_swr:

;main.c,451 :: 		void lcd_swr(int swr) {
;main.c,452 :: 		asm CLRWDT;
	CLRWDT
;main.c,453 :: 		if(swr!=SWR_old) {
	MOVF       FARG_lcd_swr_swr+1, 0
	XORWF      _SWR_old+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_swr639
	MOVF       _SWR_old+0, 0
	XORWF      FARG_lcd_swr_swr+0, 0
L__lcd_swr639:
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_swr318
;main.c,454 :: 		SWR_old = swr;
	MOVF       FARG_lcd_swr_swr+0, 0
	MOVWF      _SWR_old+0
	MOVF       FARG_lcd_swr_swr+1, 0
	MOVWF      _SWR_old+1
;main.c,455 :: 		if(swr==1) {  // Low power
	MOVLW      0
	XORWF      FARG_lcd_swr_swr+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_swr640
	MOVLW      1
	XORWF      FARG_lcd_swr_swr+0, 0
L__lcd_swr640:
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_swr319
;main.c,456 :: 		if(type==4 | type==5) led_wr_str (2, 16+4*12, "0.00", 4);   // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_swr320
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      64
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr52_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr52_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_lcd_swr321
L_lcd_swr320:
;main.c,457 :: 		else if(type!=0) led_wr_str (1, 4, "0.00", 4);  // 1602  & 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_swr322
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr53_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr53_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_lcd_swr323
L_lcd_swr322:
;main.c,458 :: 		else  if(type==0) {    // real-time 2-colors led work
	MOVF       _type+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_swr324
;main.c,459 :: 		LATB.B6 = 1;
	BSF        LATB+0, 6
;main.c,460 :: 		LATB.B7 = 1;
	BSF        LATB+0, 7
;main.c,461 :: 		}
L_lcd_swr324:
L_lcd_swr323:
L_lcd_swr321:
;main.c,462 :: 		SWR_old = 0;
	CLRF       _SWR_old+0
	CLRF       _SWR_old+1
;main.c,463 :: 		}
	GOTO       L_lcd_swr325
L_lcd_swr319:
;main.c,465 :: 		SWR_old = swr;
	MOVF       FARG_lcd_swr_swr+0, 0
	MOVWF      _SWR_old+0
	MOVF       FARG_lcd_swr_swr+1, 0
	MOVWF      _SWR_old+1
;main.c,466 :: 		IntToStr(swr, work_str);
	MOVF       FARG_lcd_swr_swr+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       FARG_lcd_swr_swr+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,467 :: 		work_str_2[0] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+0
;main.c,468 :: 		work_str_2[1] = '.';
	MOVLW      46
	MOVWF      _work_str_2+1
;main.c,469 :: 		work_str_2[2] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+2
;main.c,470 :: 		work_str_2[3] = work_str[5];
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+3
;main.c,471 :: 		if(type==4 | type==5) led_wr_str (2, 16+4*12, work_str_2, 4);  // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_swr326
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      64
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_lcd_swr327
L_lcd_swr326:
;main.c,472 :: 		else if(type!=0) led_wr_str (1, 4, work_str_2, 4);       // 1602  & 128*32
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_swr328
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_lcd_swr329
L_lcd_swr328:
;main.c,473 :: 		else  if(type==0) {    // real-time 2-colors led work
	MOVF       _type+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_swr330
;main.c,474 :: 		if(swr<=150) { LATB.B6 = 0; LATB.B7 = 1; } // Green
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_lcd_swr_swr+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_swr641
	MOVF       FARG_lcd_swr_swr+0, 0
	SUBLW      150
L__lcd_swr641:
	BTFSS      STATUS+0, 0
	GOTO       L_lcd_swr331
	BCF        LATB+0, 6
	BSF        LATB+0, 7
	GOTO       L_lcd_swr332
L_lcd_swr331:
;main.c,475 :: 		else if(swr<=250) {PORTB.B6 = 0; PORTB.B7 = 0;} // Orange
	MOVLW      128
	MOVWF      R0
	MOVLW      128
	XORWF      FARG_lcd_swr_swr+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_swr642
	MOVF       FARG_lcd_swr_swr+0, 0
	SUBLW      250
L__lcd_swr642:
	BTFSS      STATUS+0, 0
	GOTO       L_lcd_swr333
	BCF        PORTB+0, 6
	BCF        PORTB+0, 7
	GOTO       L_lcd_swr334
L_lcd_swr333:
;main.c,476 :: 		else { PORTB.B6 = 1; PORTB.B7 = 0; }  // Red
	BSF        PORTB+0, 6
	BCF        PORTB+0, 7
L_lcd_swr334:
L_lcd_swr332:
;main.c,477 :: 		}
L_lcd_swr330:
L_lcd_swr329:
L_lcd_swr327:
;main.c,478 :: 		}
L_lcd_swr325:
;main.c,479 :: 		}
L_lcd_swr318:
;main.c,480 :: 		asm CLRWDT;
	CLRWDT
;main.c,481 :: 		return;
;main.c,482 :: 		}
	RETURN
; end of _lcd_swr

_button_delay:

;main.c,485 :: 		void button_delay() {
;main.c,486 :: 		if((Button(&PORTB, 0, 25, 0)) | (Button(&PORTB, 1, 25, 0)) | (Button(&PORTB, 2, 25, 0))) {
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	CLRF       FARG_Button_pin+0
	MOVLW      25
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	MOVWF      FLOC__button_delay+0
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      1
	MOVWF      FARG_Button_pin+0
	MOVLW      25
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0, 0
	IORWF       FLOC__button_delay+0, 1
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      hi_addr(PORTB+0)
	MOVWF      FARG_Button_port+1
	MOVLW      2
	MOVWF      FARG_Button_pin+0
	MOVLW      25
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       FLOC__button_delay+0, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_button_delay335
;main.c,487 :: 		but = 1;
	MOVLW      1
	MOVWF      _but+0
;main.c,488 :: 		}
L_button_delay335:
;main.c,489 :: 		return;
;main.c,490 :: 		}
	RETURN
; end of _button_delay

_show_pwr:

;main.c,492 :: 		void show_pwr(int Power, int SWR) {
;main.c,495 :: 		a = 100;
	MOVLW      0
	MOVWF      show_pwr_a_L0+0
	MOVLW      0
	MOVWF      show_pwr_a_L0+1
	MOVLW      72
	MOVWF      show_pwr_a_L0+2
	MOVLW      133
	MOVWF      show_pwr_a_L0+3
;main.c,496 :: 		asm CLRWDT;
	CLRWDT
;main.c,498 :: 		if(Test==0 & Loss_ind==1 & SWR>=100) {
	MOVF       _Test+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       main_Loss_ind+0, 0
	XORLW      1
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R0, 0
	ANDWF      R1, 1
	MOVLW      128
	XORWF      FARG_show_pwr_SWR+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__show_pwr643
	MOVLW      100
	SUBWF      FARG_show_pwr_SWR+0, 0
L__show_pwr643:
	MOVLW      1
	BTFSS      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr336
;main.c,499 :: 		if(Loss_mode==0) {   // prepare
	MOVF       _Loss_mode+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr337
;main.c,500 :: 		if(type==4 |type==5){   // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr338
;main.c,501 :: 		if(P_High==1) led_wr_str(4, 16, "ANT=  0W", 8);
	MOVF       main_P_High+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr339
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr54_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr54_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_show_pwr340
L_show_pwr339:
;main.c,502 :: 		else led_wr_str(4, 16, "ANT=0.0W", 8);
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr55_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr55_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_show_pwr340:
;main.c,503 :: 		led_wr_str(6, 16, "EFF=  0%", 8);
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr56_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr56_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,504 :: 		}
	GOTO       L_show_pwr341
L_show_pwr338:
;main.c,505 :: 		else if(type==2 | type==3) {   // 128*32 OLED
	MOVF       _type+0, 0
	XORLW      2
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      3
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr342
;main.c,506 :: 		if(P_High==1) led_wr_str (0, 9, "ANT=  0W", 8);
	MOVF       main_P_High+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr343
	CLRF       FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr57_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr57_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_show_pwr344
L_show_pwr343:
;main.c,507 :: 		else led_wr_str (0, 9, "ANT=0.0W", 8);
	CLRF       FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr58_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr58_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_show_pwr344:
;main.c,508 :: 		led_wr_str (1, 9, "EFF=  0%", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr59_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr59_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,509 :: 		}
	GOTO       L_show_pwr345
L_show_pwr342:
;main.c,510 :: 		else if(type==1) {   // 1602 LCD
	MOVF       _type+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr346
;main.c,511 :: 		if(P_High==1) led_wr_str (0, 9, "AN=  0W", 7);
	MOVF       main_P_High+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr347
	CLRF       FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr60_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr60_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_show_pwr348
L_show_pwr347:
;main.c,512 :: 		else led_wr_str (0, 9, "AN=0.0W", 7);
	CLRF       FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr61_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr61_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_show_pwr348:
;main.c,513 :: 		led_wr_str (1, 9, "EFF= 0%", 7);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr62_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr62_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      7
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,514 :: 		}
L_show_pwr346:
L_show_pwr345:
L_show_pwr341:
;main.c,515 :: 		}
L_show_pwr337:
;main.c,516 :: 		Loss_mode = 1;
	MOVLW      1
	MOVWF      _Loss_mode+0
;main.c,517 :: 		}
	GOTO       L_show_pwr349
L_show_pwr336:
;main.c,519 :: 		if(Loss_mode==1) lcd_ind();
	MOVF       _Loss_mode+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr350
	CALL       _lcd_ind+0
L_show_pwr350:
;main.c,520 :: 		Loss_mode = 0;
	CLRF       _Loss_mode+0
;main.c,521 :: 		}
L_show_pwr349:
;main.c,522 :: 		asm CLRWDT;
	CLRWDT
;main.c,523 :: 		if(Power != Power_old) {
	MOVF       FARG_show_pwr_Power+1, 0
	XORWF      _Power_old+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__show_pwr644
	MOVF       _Power_old+0, 0
	XORWF      FARG_show_pwr_Power+0, 0
L__show_pwr644:
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr351
;main.c,524 :: 		Power_old = Power;
	MOVF       FARG_show_pwr_Power+0, 0
	MOVWF      _Power_old+0
	MOVF       FARG_show_pwr_Power+1, 0
	MOVWF      _Power_old+1
;main.c,526 :: 		if(P_High==0) {
	MOVF       main_P_High+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr352
;main.c,527 :: 		if(Power >= 100) {   // > 10 W
	MOVLW      128
	XORWF      FARG_show_pwr_Power+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__show_pwr645
	MOVLW      100
	SUBWF      FARG_show_pwr_Power+0, 0
L__show_pwr645:
	BTFSS      STATUS+0, 0
	GOTO       L_show_pwr353
;main.c,528 :: 		Power += 5;  // rounding to 1 W
	MOVLW      5
	ADDWF      FARG_show_pwr_Power+0, 0
	MOVWF      R0
	MOVLW      0
	ADDWFC     FARG_show_pwr_Power+1, 0
	MOVWF      R1
	MOVF       R0, 0
	MOVWF      FARG_show_pwr_Power+0
	MOVF       R1, 0
	MOVWF      FARG_show_pwr_Power+1
;main.c,529 :: 		IntToStr(Power, work_str);
	MOVF       R0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,530 :: 		work_str_2[0] = work_str[2];
	MOVF       _work_str+2, 0
	MOVWF      _work_str_2+0
;main.c,531 :: 		work_str_2[1] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+1
;main.c,532 :: 		work_str_2[2] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+2
;main.c,533 :: 		work_str_2[3] = 'W';
	MOVLW      87
	MOVWF      _work_str_2+3
;main.c,534 :: 		}
	GOTO       L_show_pwr354
L_show_pwr353:
;main.c,536 :: 		IntToStr(Power, work_str);
	MOVF       FARG_show_pwr_Power+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       FARG_show_pwr_Power+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,537 :: 		if(work_str[4] != ' ') work_str_2[0] = work_str[4]; else work_str_2[0] = '0';
	MOVF       _work_str+4, 0
	XORLW      32
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr355
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+0
	GOTO       L_show_pwr356
L_show_pwr355:
	MOVLW      48
	MOVWF      _work_str_2+0
L_show_pwr356:
;main.c,538 :: 		work_str_2[1] = '.';
	MOVLW      46
	MOVWF      _work_str_2+1
;main.c,539 :: 		if(work_str[5] != ' ') work_str_2[2] = work_str[5]; else work_str_2[2] = '0';
	MOVF       _work_str+5, 0
	XORLW      32
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr357
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+2
	GOTO       L_show_pwr358
L_show_pwr357:
	MOVLW      48
	MOVWF      _work_str_2+2
L_show_pwr358:
;main.c,540 :: 		work_str_2[3] = 'W';
	MOVLW      87
	MOVWF      _work_str_2+3
;main.c,541 :: 		}
L_show_pwr354:
;main.c,542 :: 		}
	GOTO       L_show_pwr359
L_show_pwr352:
;main.c,544 :: 		if(Power<999){   // 0 - 1500 Watts
	MOVLW      128
	XORWF      FARG_show_pwr_Power+1, 0
	MOVWF      R0
	MOVLW      128
	XORLW      3
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__show_pwr646
	MOVLW      231
	SUBWF      FARG_show_pwr_Power+0, 0
L__show_pwr646:
	BTFSC      STATUS+0, 0
	GOTO       L_show_pwr360
;main.c,545 :: 		IntToStr(Power, work_str);
	MOVF       FARG_show_pwr_Power+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       FARG_show_pwr_Power+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,546 :: 		work_str_2[0] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+0
;main.c,547 :: 		work_str_2[1] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+1
;main.c,548 :: 		work_str_2[2] = work_str[5];
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+2
;main.c,549 :: 		work_str_2[3] = 'W';
	MOVLW      87
	MOVWF      _work_str_2+3
;main.c,550 :: 		}
	GOTO       L_show_pwr361
L_show_pwr360:
;main.c,552 :: 		IntToStr(Power, work_str);
	MOVF       FARG_show_pwr_Power+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       FARG_show_pwr_Power+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,553 :: 		work_str_2[0] = work_str[2];
	MOVF       _work_str+2, 0
	MOVWF      _work_str_2+0
;main.c,554 :: 		work_str_2[1] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+1
;main.c,555 :: 		work_str_2[2] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+2
;main.c,556 :: 		work_str_2[3] = work_str[5];
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+3
;main.c,557 :: 		}
L_show_pwr361:
;main.c,558 :: 		}
L_show_pwr359:
;main.c,559 :: 		if(type==4 | type==5) led_wr_str (0, 16+4*12, work_str_2, 4);  // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr362
	CLRF       FARG_led_wr_str+0
	MOVLW      64
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_show_pwr363
L_show_pwr362:
;main.c,560 :: 		else if(type!=0) led_wr_str (0, 4, work_str_2, 4);  // 1602  & 128*32
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr364
	CLRF       FARG_led_wr_str+0
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_show_pwr364:
L_show_pwr363:
;main.c,562 :: 		asm CLRWDT;
	CLRWDT
;main.c,564 :: 		if(Loss_mode==1)  {
	MOVF       _Loss_mode+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr365
;main.c,565 :: 		if(ind==0 & cap==0) swr_a = SWR;
	MOVF       main_ind+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       main_cap+0, 0
	XORLW      0
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr366
	MOVF       FARG_show_pwr_SWR+0, 0
	MOVWF      _swr_a+0
	MOVF       FARG_show_pwr_SWR+1, 0
	MOVWF      _swr_a+1
L_show_pwr366:
;main.c,566 :: 		a = 1.0 / ((swr_a/100.0 + 100.0/swr_a) * Fid_loss/10.0 * 0.115 + 1.0); // Fider loss
	MOVF       _swr_a+0, 0
	MOVWF      R0
	MOVF       _swr_a+1, 0
	MOVWF      R1
	CALL       _Int2Double+0
	MOVF       R0, 0
	MOVWF      FLOC__show_pwr+4
	MOVF       R1, 0
	MOVWF      FLOC__show_pwr+5
	MOVF       R2, 0
	MOVWF      FLOC__show_pwr+6
	MOVF       R3, 0
	MOVWF      FLOC__show_pwr+7
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      72
	MOVWF      R6
	MOVLW      133
	MOVWF      R7
	MOVF       FLOC__show_pwr+4, 0
	MOVWF      R0
	MOVF       FLOC__show_pwr+5, 0
	MOVWF      R1
	MOVF       FLOC__show_pwr+6, 0
	MOVWF      R2
	MOVF       FLOC__show_pwr+7, 0
	MOVWF      R3
	CALL       _Div_32x32_FP+0
	MOVF       R0, 0
	MOVWF      FLOC__show_pwr+0
	MOVF       R1, 0
	MOVWF      FLOC__show_pwr+1
	MOVF       R2, 0
	MOVWF      FLOC__show_pwr+2
	MOVF       R3, 0
	MOVWF      FLOC__show_pwr+3
	MOVF       FLOC__show_pwr+4, 0
	MOVWF      R4
	MOVF       FLOC__show_pwr+5, 0
	MOVWF      R5
	MOVF       FLOC__show_pwr+6, 0
	MOVWF      R6
	MOVF       FLOC__show_pwr+7, 0
	MOVWF      R7
	MOVLW      0
	MOVWF      R0
	MOVLW      0
	MOVWF      R1
	MOVLW      72
	MOVWF      R2
	MOVLW      133
	MOVWF      R3
	CALL       _Div_32x32_FP+0
	MOVF       FLOC__show_pwr+0, 0
	MOVWF      R4
	MOVF       FLOC__show_pwr+1, 0
	MOVWF      R5
	MOVF       FLOC__show_pwr+2, 0
	MOVWF      R6
	MOVF       FLOC__show_pwr+3, 0
	MOVWF      R7
	CALL       _Add_32x32_FP+0
	MOVF       R0, 0
	MOVWF      FLOC__show_pwr+0
	MOVF       R1, 0
	MOVWF      FLOC__show_pwr+1
	MOVF       R2, 0
	MOVWF      FLOC__show_pwr+2
	MOVF       R3, 0
	MOVWF      FLOC__show_pwr+3
	MOVF       _Fid_loss+0, 0
	MOVWF      R0
	CALL       _Byte2Double+0
	MOVF       FLOC__show_pwr+0, 0
	MOVWF      R4
	MOVF       FLOC__show_pwr+1, 0
	MOVWF      R5
	MOVF       FLOC__show_pwr+2, 0
	MOVWF      R6
	MOVF       FLOC__show_pwr+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      32
	MOVWF      R6
	MOVLW      130
	MOVWF      R7
	CALL       _Div_32x32_FP+0
	MOVLW      31
	MOVWF      R4
	MOVLW      133
	MOVWF      R5
	MOVLW      107
	MOVWF      R6
	MOVLW      123
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      0
	MOVWF      R6
	MOVLW      127
	MOVWF      R7
	CALL       _Add_32x32_FP+0
	MOVF       R0, 0
	MOVWF      R4
	MOVF       R1, 0
	MOVWF      R5
	MOVF       R2, 0
	MOVWF      R6
	MOVF       R3, 0
	MOVWF      R7
	MOVLW      0
	MOVWF      R0
	MOVLW      0
	MOVWF      R1
	MOVLW      0
	MOVWF      R2
	MOVLW      127
	MOVWF      R3
	CALL       _Div_32x32_FP+0
	MOVF       R0, 0
	MOVWF      show_pwr_a_L0+0
	MOVF       R1, 0
	MOVWF      show_pwr_a_L0+1
	MOVF       R2, 0
	MOVWF      show_pwr_a_L0+2
	MOVF       R3, 0
	MOVWF      show_pwr_a_L0+3
;main.c,567 :: 		b = 4.0 / (2.0 + SWR/100.0 + 100.0/SWR);    // SWR loss
	MOVF       FARG_show_pwr_SWR+0, 0
	MOVWF      R0
	MOVF       FARG_show_pwr_SWR+1, 0
	MOVWF      R1
	CALL       _Int2Double+0
	MOVF       R0, 0
	MOVWF      FLOC__show_pwr+4
	MOVF       R1, 0
	MOVWF      FLOC__show_pwr+5
	MOVF       R2, 0
	MOVWF      FLOC__show_pwr+6
	MOVF       R3, 0
	MOVWF      FLOC__show_pwr+7
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      72
	MOVWF      R6
	MOVLW      133
	MOVWF      R7
	MOVF       FLOC__show_pwr+4, 0
	MOVWF      R0
	MOVF       FLOC__show_pwr+5, 0
	MOVWF      R1
	MOVF       FLOC__show_pwr+6, 0
	MOVWF      R2
	MOVF       FLOC__show_pwr+7, 0
	MOVWF      R3
	CALL       _Div_32x32_FP+0
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      0
	MOVWF      R6
	MOVLW      128
	MOVWF      R7
	CALL       _Add_32x32_FP+0
	MOVF       R0, 0
	MOVWF      FLOC__show_pwr+0
	MOVF       R1, 0
	MOVWF      FLOC__show_pwr+1
	MOVF       R2, 0
	MOVWF      FLOC__show_pwr+2
	MOVF       R3, 0
	MOVWF      FLOC__show_pwr+3
	MOVF       FLOC__show_pwr+4, 0
	MOVWF      R4
	MOVF       FLOC__show_pwr+5, 0
	MOVWF      R5
	MOVF       FLOC__show_pwr+6, 0
	MOVWF      R6
	MOVF       FLOC__show_pwr+7, 0
	MOVWF      R7
	MOVLW      0
	MOVWF      R0
	MOVLW      0
	MOVWF      R1
	MOVLW      72
	MOVWF      R2
	MOVLW      133
	MOVWF      R3
	CALL       _Div_32x32_FP+0
	MOVF       FLOC__show_pwr+0, 0
	MOVWF      R4
	MOVF       FLOC__show_pwr+1, 0
	MOVWF      R5
	MOVF       FLOC__show_pwr+2, 0
	MOVWF      R6
	MOVF       FLOC__show_pwr+3, 0
	MOVWF      R7
	CALL       _Add_32x32_FP+0
	MOVF       R0, 0
	MOVWF      R4
	MOVF       R1, 0
	MOVWF      R5
	MOVF       R2, 0
	MOVWF      R6
	MOVF       R3, 0
	MOVWF      R7
	MOVLW      0
	MOVWF      R0
	MOVLW      0
	MOVWF      R1
	MOVLW      0
	MOVWF      R2
	MOVLW      129
	MOVWF      R3
	CALL       _Div_32x32_FP+0
	MOVF       R0, 0
	MOVWF      show_pwr_b_L0+0
	MOVF       R1, 0
	MOVWF      show_pwr_b_L0+1
	MOVF       R2, 0
	MOVWF      show_pwr_b_L0+2
	MOVF       R3, 0
	MOVWF      show_pwr_b_L0+3
;main.c,568 :: 		if(a>=1.0) a = 1.0;
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      0
	MOVWF      R6
	MOVLW      127
	MOVWF      R7
	MOVF       show_pwr_a_L0+0, 0
	MOVWF      R0
	MOVF       show_pwr_a_L0+1, 0
	MOVWF      R1
	MOVF       show_pwr_a_L0+2, 0
	MOVWF      R2
	MOVF       show_pwr_a_L0+3, 0
	MOVWF      R3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSS      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr367
	MOVLW      0
	MOVWF      show_pwr_a_L0+0
	MOVLW      0
	MOVWF      show_pwr_a_L0+1
	MOVLW      0
	MOVWF      show_pwr_a_L0+2
	MOVLW      127
	MOVWF      show_pwr_a_L0+3
L_show_pwr367:
;main.c,569 :: 		if(b>=1.0) b = 1.0;
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      0
	MOVWF      R6
	MOVLW      127
	MOVWF      R7
	MOVF       show_pwr_b_L0+0, 0
	MOVWF      R0
	MOVF       show_pwr_b_L0+1, 0
	MOVWF      R1
	MOVF       show_pwr_b_L0+2, 0
	MOVWF      R2
	MOVF       show_pwr_b_L0+3, 0
	MOVWF      R3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSS      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr368
	MOVLW      0
	MOVWF      show_pwr_b_L0+0
	MOVLW      0
	MOVWF      show_pwr_b_L0+1
	MOVLW      0
	MOVWF      show_pwr_b_L0+2
	MOVLW      127
	MOVWF      show_pwr_b_L0+3
L_show_pwr368:
;main.c,570 :: 		p_ant = Power * a * b;
	MOVF       FARG_show_pwr_Power+0, 0
	MOVWF      R0
	MOVF       FARG_show_pwr_Power+1, 0
	MOVWF      R1
	CALL       _Int2Double+0
	MOVF       show_pwr_a_L0+0, 0
	MOVWF      R4
	MOVF       show_pwr_a_L0+1, 0
	MOVWF      R5
	MOVF       show_pwr_a_L0+2, 0
	MOVWF      R6
	MOVF       show_pwr_a_L0+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	MOVF       show_pwr_b_L0+0, 0
	MOVWF      R4
	MOVF       show_pwr_b_L0+1, 0
	MOVWF      R5
	MOVF       show_pwr_b_L0+2, 0
	MOVWF      R6
	MOVF       show_pwr_b_L0+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	CALL       _Double2Int+0
	MOVF       R0, 0
	MOVWF      show_pwr_p_ant_L0+0
	MOVF       R1, 0
	MOVWF      show_pwr_p_ant_L0+1
;main.c,571 :: 		eff = a * b * 100;
	MOVF       show_pwr_a_L0+0, 0
	MOVWF      R0
	MOVF       show_pwr_a_L0+1, 0
	MOVWF      R1
	MOVF       show_pwr_a_L0+2, 0
	MOVWF      R2
	MOVF       show_pwr_a_L0+3, 0
	MOVWF      R3
	MOVF       show_pwr_b_L0+0, 0
	MOVWF      R4
	MOVF       show_pwr_b_L0+1, 0
	MOVWF      R5
	MOVF       show_pwr_b_L0+2, 0
	MOVWF      R6
	MOVF       show_pwr_b_L0+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4
	MOVLW      0
	MOVWF      R5
	MOVLW      72
	MOVWF      R6
	MOVLW      133
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	CALL       _Double2Int+0
	MOVF       R0, 0
	MOVWF      show_pwr_eff_L0+0
	MOVF       R1, 0
	MOVWF      show_pwr_eff_L0+1
;main.c,572 :: 		if(eff>=100) eff = 99;
	MOVLW      128
	XORWF      R1, 0
	MOVWF      R2
	MOVLW      128
	SUBWF      R2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__show_pwr647
	MOVLW      100
	SUBWF      R0, 0
L__show_pwr647:
	BTFSS      STATUS+0, 0
	GOTO       L_show_pwr369
	MOVLW      99
	MOVWF      show_pwr_eff_L0+0
	MOVLW      0
	MOVWF      show_pwr_eff_L0+1
L_show_pwr369:
;main.c,574 :: 		if(P_High==0) {
	MOVF       main_P_High+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr370
;main.c,575 :: 		if(p_ant >= 100) {   // > 10 W
	MOVLW      128
	XORWF      show_pwr_p_ant_L0+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__show_pwr648
	MOVLW      100
	SUBWF      show_pwr_p_ant_L0+0, 0
L__show_pwr648:
	BTFSS      STATUS+0, 0
	GOTO       L_show_pwr371
;main.c,576 :: 		p_ant += 5;  // rounding to 1 W
	MOVLW      5
	ADDWF      show_pwr_p_ant_L0+0, 0
	MOVWF      R0
	MOVLW      0
	ADDWFC     show_pwr_p_ant_L0+1, 0
	MOVWF      R1
	MOVF       R0, 0
	MOVWF      show_pwr_p_ant_L0+0
	MOVF       R1, 0
	MOVWF      show_pwr_p_ant_L0+1
;main.c,577 :: 		IntToStr(p_ant, work_str);
	MOVF       R0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,578 :: 		work_str_2[0] = work_str[2];
	MOVF       _work_str+2, 0
	MOVWF      _work_str_2+0
;main.c,579 :: 		work_str_2[1] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+1
;main.c,580 :: 		work_str_2[2] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+2
;main.c,581 :: 		work_str_2[3] = 'W';
	MOVLW      87
	MOVWF      _work_str_2+3
;main.c,582 :: 		}
	GOTO       L_show_pwr372
L_show_pwr371:
;main.c,584 :: 		IntToStr(p_ant, work_str);
	MOVF       show_pwr_p_ant_L0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       show_pwr_p_ant_L0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,585 :: 		if(work_str[4] != ' ') work_str_2[0] = work_str[4]; else work_str_2[0] = '0';
	MOVF       _work_str+4, 0
	XORLW      32
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr373
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+0
	GOTO       L_show_pwr374
L_show_pwr373:
	MOVLW      48
	MOVWF      _work_str_2+0
L_show_pwr374:
;main.c,586 :: 		work_str_2[1] = '.';
	MOVLW      46
	MOVWF      _work_str_2+1
;main.c,587 :: 		if(work_str[5] != ' ') work_str_2[2] = work_str[5]; else work_str_2[2] = '0';
	MOVF       _work_str+5, 0
	XORLW      32
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr375
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+2
	GOTO       L_show_pwr376
L_show_pwr375:
	MOVLW      48
	MOVWF      _work_str_2+2
L_show_pwr376:
;main.c,588 :: 		work_str_2[3] = 'W';
	MOVLW      87
	MOVWF      _work_str_2+3
;main.c,589 :: 		}
L_show_pwr372:
;main.c,590 :: 		}
	GOTO       L_show_pwr377
L_show_pwr370:
;main.c,592 :: 		if(p_ant<999){   // 0 - 1500 Watts
	MOVLW      128
	XORWF      show_pwr_p_ant_L0+1, 0
	MOVWF      R0
	MOVLW      128
	XORLW      3
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__show_pwr649
	MOVLW      231
	SUBWF      show_pwr_p_ant_L0+0, 0
L__show_pwr649:
	BTFSC      STATUS+0, 0
	GOTO       L_show_pwr378
;main.c,593 :: 		IntToStr(p_ant, work_str);
	MOVF       show_pwr_p_ant_L0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       show_pwr_p_ant_L0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,594 :: 		work_str_2[0] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+0
;main.c,595 :: 		work_str_2[1] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+1
;main.c,596 :: 		work_str_2[2] = work_str[5];
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+2
;main.c,597 :: 		work_str_2[3] = 'W';
	MOVLW      87
	MOVWF      _work_str_2+3
;main.c,598 :: 		}
	GOTO       L_show_pwr379
L_show_pwr378:
;main.c,600 :: 		IntToStr(p_ant, work_str);
	MOVF       show_pwr_p_ant_L0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       show_pwr_p_ant_L0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,601 :: 		work_str_2[0] = work_str[2];
	MOVF       _work_str+2, 0
	MOVWF      _work_str_2+0
;main.c,602 :: 		work_str_2[1] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+1
;main.c,603 :: 		work_str_2[2] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+2
;main.c,604 :: 		work_str_2[3] = work_str[5];
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+3
;main.c,605 :: 		}
L_show_pwr379:
;main.c,606 :: 		}
L_show_pwr377:
;main.c,607 :: 		if(type==4 | type==5) led_wr_str (4, 16+4*12, work_str_2, 4);  // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr380
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      64
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_show_pwr381
L_show_pwr380:
;main.c,608 :: 		else if(type==2 | type==3) led_wr_str (0, 13, work_str_2, 4);  // 128*32
	MOVF       _type+0, 0
	XORLW      2
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      3
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr382
	CLRF       FARG_led_wr_str+0
	MOVLW      13
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_show_pwr383
L_show_pwr382:
;main.c,609 :: 		else if(type!=0) led_wr_str (0, 12, work_str_2, 4);  // 1602
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr384
	CLRF       FARG_led_wr_str+0
	MOVLW      12
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_show_pwr384:
L_show_pwr383:
L_show_pwr381:
;main.c,611 :: 		IntToStr(eff, work_str);
	MOVF       show_pwr_eff_L0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       show_pwr_eff_L0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,612 :: 		work_str_2[0] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+0
;main.c,613 :: 		work_str_2[1] = work_str[5];
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+1
;main.c,614 :: 		if(type==4 | type==5) led_wr_str(6, 16+5*12, work_str_2, 2);
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr385
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	MOVLW      76
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_show_pwr386
L_show_pwr385:
;main.c,615 :: 		else if(type==2 | type==3) led_wr_str(1, 14, work_str_2, 2);
	MOVF       _type+0, 0
	XORLW      2
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      3
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_pwr387
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      14
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_show_pwr388
L_show_pwr387:
;main.c,616 :: 		else if(type==1) led_wr_str(1, 13, work_str_2, 2);
	MOVF       _type+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_show_pwr389
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	MOVLW      13
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_show_pwr389:
L_show_pwr388:
L_show_pwr386:
;main.c,617 :: 		}
L_show_pwr365:
;main.c,618 :: 		}
L_show_pwr351:
;main.c,619 :: 		asm CLRWDT;
	CLRWDT
;main.c,620 :: 		return;
;main.c,621 :: 		}
	RETURN
; end of _show_pwr

_lcd_pwr:

;main.c,623 :: 		void lcd_pwr() {
;main.c,624 :: 		int p = 0;
	CLRF       lcd_pwr_p_L0+0
	CLRF       lcd_pwr_p_L0+1
	MOVLW      1
	MOVWF      lcd_pwr_SWR_fixed_L0+0
	MOVLW      0
	MOVWF      lcd_pwr_SWR_fixed_L0+1
;main.c,630 :: 		delta = Auto_delta - 100;
	MOVLW      100
	SUBWF      _Auto_delta+0, 0
	MOVWF      lcd_pwr_delta_L0+0
	MOVLW      0
	SUBWFB     _Auto_delta+1, 0
	MOVWF      lcd_pwr_delta_L0+1
;main.c,631 :: 		PWR = 0;
	CLRF       _PWR+0
	CLRF       _PWR+1
;main.c,632 :: 		asm CLRWDT;
	CLRWDT
;main.c,634 :: 		cnt = 120;
	MOVLW      120
	MOVWF      lcd_pwr_cnt_L0+0
;main.c,635 :: 		for(peak_cnt = 0; peak_cnt < cnt; peak_cnt++){
	CLRF       lcd_pwr_peak_cnt_L0+0
L_lcd_pwr390:
	MOVF       lcd_pwr_cnt_L0+0, 0
	SUBWF      lcd_pwr_peak_cnt_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_lcd_pwr391
;main.c,636 :: 		if(PORTB.B1==0 | PORTB.B2==0 | PORTB.B0==0) {button_delay(); if(but==1) {but = 0; return;} }
	BTFSC      PORTB+0, 1
	GOTO       L__lcd_pwr650
	BSF        R6, 0
	GOTO       L__lcd_pwr651
L__lcd_pwr650:
	BCF        R6, 0
L__lcd_pwr651:
	BTFSC      PORTB+0, 2
	GOTO       L__lcd_pwr652
	BSF        3, 0
	GOTO       L__lcd_pwr653
L__lcd_pwr652:
	BCF        3, 0
L__lcd_pwr653:
	BTFSC      R6, 0
	GOTO       L__lcd_pwr654
	BTFSC      3, 0
	GOTO       L__lcd_pwr654
	BCF        R6, 0
	GOTO       L__lcd_pwr655
L__lcd_pwr654:
	BSF        R6, 0
L__lcd_pwr655:
	BTFSC      PORTB+0, 0
	GOTO       L__lcd_pwr656
	BSF        3, 0
	GOTO       L__lcd_pwr657
L__lcd_pwr656:
	BCF        3, 0
L__lcd_pwr657:
	BTFSC      R6, 0
	GOTO       L__lcd_pwr658
	BTFSC      3, 0
	GOTO       L__lcd_pwr658
	BCF        R6, 0
	GOTO       L__lcd_pwr659
L__lcd_pwr658:
	BSF        R6, 0
L__lcd_pwr659:
	BTFSS      R6, 0
	GOTO       L_lcd_pwr393
	CALL       _button_delay+0
	MOVF       _but+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_pwr394
	CLRF       _but+0
	RETURN
L_lcd_pwr394:
L_lcd_pwr393:
;main.c,637 :: 		get_pwr();
	CALL       _get_pwr+0
;main.c,638 :: 		if(PWR>p) {p = PWR; SWR_fixed = SWR;}
	MOVLW      128
	XORWF      lcd_pwr_p_L0+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      _PWR+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_pwr660
	MOVF       _PWR+0, 0
	SUBWF      lcd_pwr_p_L0+0, 0
L__lcd_pwr660:
	BTFSC      STATUS+0, 0
	GOTO       L_lcd_pwr395
	MOVF       _PWR+0, 0
	MOVWF      lcd_pwr_p_L0+0
	MOVF       _PWR+1, 0
	MOVWF      lcd_pwr_p_L0+1
	MOVF       _SWR+0, 0
	MOVWF      lcd_pwr_SWR_fixed_L0+0
	MOVF       _SWR+1, 0
	MOVWF      lcd_pwr_SWR_fixed_L0+1
L_lcd_pwr395:
;main.c,639 :: 		Delay_ms(3);
	MOVLW      16
	MOVWF      R12
	MOVLW      148
	MOVWF      R13
L_lcd_pwr396:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr396
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr396
	NOP
;main.c,635 :: 		for(peak_cnt = 0; peak_cnt < cnt; peak_cnt++){
	INCF       lcd_pwr_peak_cnt_L0+0, 1
;main.c,640 :: 		}
	GOTO       L_lcd_pwr390
L_lcd_pwr391:
;main.c,641 :: 		asm CLRWDT;
	CLRWDT
;main.c,642 :: 		Power = p;
	MOVF       lcd_pwr_p_L0+0, 0
	MOVWF      _Power+0
	MOVF       lcd_pwr_p_L0+1, 0
	MOVWF      _Power+1
;main.c,643 :: 		lcd_swr(SWR_fixed);
	MOVF       lcd_pwr_SWR_fixed_L0+0, 0
	MOVWF      FARG_lcd_swr_swr+0
	MOVF       lcd_pwr_SWR_fixed_L0+1, 0
	MOVWF      FARG_lcd_swr_swr+1
	CALL       _lcd_swr+0
;main.c,644 :: 		if(SWR_fixed>=100) {
	MOVLW      128
	XORWF      lcd_pwr_SWR_fixed_L0+1, 0
	MOVWF      R0
	MOVLW      128
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_pwr661
	MOVLW      100
	SUBWF      lcd_pwr_SWR_fixed_L0+0, 0
L__lcd_pwr661:
	BTFSS      STATUS+0, 0
	GOTO       L_lcd_pwr397
;main.c,645 :: 		dysp_on();          // dysplay ON
	CALL       _dysp_on+0
;main.c,646 :: 		dysp_cnt = Dysp_delay * dysp_cnt_mult;
	MOVF       _Dysp_delay+0, 0
	MOVWF      R0
	CALL       _Byte2Double+0
	MOVF       _dysp_cnt_mult+0, 0
	MOVWF      R4
	MOVF       _dysp_cnt_mult+1, 0
	MOVWF      R5
	MOVF       _dysp_cnt_mult+2, 0
	MOVWF      R6
	MOVF       _dysp_cnt_mult+3, 0
	MOVWF      R7
	CALL       _Mul_32x32_FP+0
	CALL       _Double2Int+0
	MOVF       R0, 0
	MOVWF      _dysp_cnt+0
	MOVF       R1, 0
	MOVWF      _dysp_cnt+1
;main.c,647 :: 		}
L_lcd_pwr397:
;main.c,649 :: 		if(Auto & SWR_fixed>=Auto_delta & ((SWR_fixed>SWR_fixed_old & (SWR_fixed-SWR_fixed_old)>delta) | (SWR_fixed<SWR_fixed_old & (SWR_fixed_old-SWR_fixed)>delta) | SWR_fixed_old==999))
	MOVLW      128
	XORWF      lcd_pwr_SWR_fixed_L0+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      _Auto_delta+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_pwr662
	MOVF       _Auto_delta+0, 0
	SUBWF      lcd_pwr_SWR_fixed_L0+0, 0
L__lcd_pwr662:
	MOVLW      1
	BTFSS      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R0, 0
	ANDWF      _Auto+0, 0
	MOVWF      R5
	MOVLW      128
	XORWF      _SWR_fixed_old+1, 0
	MOVWF      R3
	MOVLW      128
	XORWF      lcd_pwr_SWR_fixed_L0+1, 0
	SUBWF      R3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_pwr663
	MOVF       lcd_pwr_SWR_fixed_L0+0, 0
	SUBWF      _SWR_fixed_old+0, 0
L__lcd_pwr663:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R3
	MOVF       _SWR_fixed_old+0, 0
	SUBWF      lcd_pwr_SWR_fixed_L0+0, 0
	MOVWF      R1
	MOVF       _SWR_fixed_old+1, 0
	SUBWFB     lcd_pwr_SWR_fixed_L0+1, 0
	MOVWF      R2
	MOVLW      128
	XORWF      lcd_pwr_delta_L0+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      R2, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_pwr664
	MOVF       R1, 0
	SUBWF      lcd_pwr_delta_L0+0, 0
L__lcd_pwr664:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R0, 0
	ANDWF      R3, 0
	MOVWF      R4
	MOVLW      128
	XORWF      lcd_pwr_SWR_fixed_L0+1, 0
	MOVWF      R3
	MOVLW      128
	XORWF      _SWR_fixed_old+1, 0
	SUBWF      R3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_pwr665
	MOVF       _SWR_fixed_old+0, 0
	SUBWF      lcd_pwr_SWR_fixed_L0+0, 0
L__lcd_pwr665:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R3
	MOVF       lcd_pwr_SWR_fixed_L0+0, 0
	SUBWF      _SWR_fixed_old+0, 0
	MOVWF      R1
	MOVF       lcd_pwr_SWR_fixed_L0+1, 0
	SUBWFB     _SWR_fixed_old+1, 0
	MOVWF      R2
	MOVLW      128
	XORWF      lcd_pwr_delta_L0+1, 0
	MOVWF      R0
	MOVLW      128
	XORWF      R2, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_pwr666
	MOVF       R1, 0
	SUBWF      lcd_pwr_delta_L0+0, 0
L__lcd_pwr666:
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0
	MOVF       R3, 0
	ANDWF      R0, 1
	MOVF       R0, 0
	IORWF       R4, 0
	MOVWF      R1
	MOVF       _SWR_fixed_old+1, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_pwr667
	MOVLW      231
	XORWF      _SWR_fixed_old+0, 0
L__lcd_pwr667:
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	MOVF       R5, 0
	ANDWF      R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_pwr398
;main.c,650 :: 		Soft_tune = 1;
	MOVLW      1
	MOVWF      _Soft_tune+0
L_lcd_pwr398:
;main.c,652 :: 		if(PORTB.B1==0 | PORTB.B2==0 | PORTB.B0==0) {button_delay(); if(but==1) {but = 0; return;} }   // Fast return if button pressed
	BTFSC      PORTB+0, 1
	GOTO       L__lcd_pwr668
	BSF        R6, 0
	GOTO       L__lcd_pwr669
L__lcd_pwr668:
	BCF        R6, 0
L__lcd_pwr669:
	BTFSC      PORTB+0, 2
	GOTO       L__lcd_pwr670
	BSF        3, 0
	GOTO       L__lcd_pwr671
L__lcd_pwr670:
	BCF        3, 0
L__lcd_pwr671:
	BTFSC      R6, 0
	GOTO       L__lcd_pwr672
	BTFSC      3, 0
	GOTO       L__lcd_pwr672
	BCF        R6, 0
	GOTO       L__lcd_pwr673
L__lcd_pwr672:
	BSF        R6, 0
L__lcd_pwr673:
	BTFSC      PORTB+0, 0
	GOTO       L__lcd_pwr674
	BSF        3, 0
	GOTO       L__lcd_pwr675
L__lcd_pwr674:
	BCF        3, 0
L__lcd_pwr675:
	BTFSC      R6, 0
	GOTO       L__lcd_pwr676
	BTFSC      3, 0
	GOTO       L__lcd_pwr676
	BCF        R6, 0
	GOTO       L__lcd_pwr677
L__lcd_pwr676:
	BSF        R6, 0
L__lcd_pwr677:
	BTFSS      R6, 0
	GOTO       L_lcd_pwr399
	CALL       _button_delay+0
	MOVF       _but+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_pwr400
	CLRF       _but+0
	RETURN
L_lcd_pwr400:
L_lcd_pwr399:
;main.c,653 :: 		show_pwr(Power, SWR_fixed);
	MOVF       _Power+0, 0
	MOVWF      FARG_show_pwr_Power+0
	MOVF       _Power+1, 0
	MOVWF      FARG_show_pwr_Power+1
	MOVF       lcd_pwr_SWR_fixed_L0+0, 0
	MOVWF      FARG_show_pwr_SWR+0
	MOVF       lcd_pwr_SWR_fixed_L0+1, 0
	MOVWF      FARG_show_pwr_SWR+1
	CALL       _show_pwr+0
;main.c,655 :: 		if(PORTB.B1==0 | PORTB.B2==0 | PORTB.B0==0) {button_delay(); if(but==1) {but = 0; return;} }
	BTFSC      PORTB+0, 1
	GOTO       L__lcd_pwr678
	BSF        R6, 0
	GOTO       L__lcd_pwr679
L__lcd_pwr678:
	BCF        R6, 0
L__lcd_pwr679:
	BTFSC      PORTB+0, 2
	GOTO       L__lcd_pwr680
	BSF        3, 0
	GOTO       L__lcd_pwr681
L__lcd_pwr680:
	BCF        3, 0
L__lcd_pwr681:
	BTFSC      R6, 0
	GOTO       L__lcd_pwr682
	BTFSC      3, 0
	GOTO       L__lcd_pwr682
	BCF        R6, 0
	GOTO       L__lcd_pwr683
L__lcd_pwr682:
	BSF        R6, 0
L__lcd_pwr683:
	BTFSC      PORTB+0, 0
	GOTO       L__lcd_pwr684
	BSF        3, 0
	GOTO       L__lcd_pwr685
L__lcd_pwr684:
	BCF        3, 0
L__lcd_pwr685:
	BTFSC      R6, 0
	GOTO       L__lcd_pwr686
	BTFSC      3, 0
	GOTO       L__lcd_pwr686
	BCF        R6, 0
	GOTO       L__lcd_pwr687
L__lcd_pwr686:
	BSF        R6, 0
L__lcd_pwr687:
	BTFSS      R6, 0
	GOTO       L_lcd_pwr401
	CALL       _button_delay+0
	MOVF       _but+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_pwr402
	CLRF       _but+0
	RETURN
L_lcd_pwr402:
L_lcd_pwr401:
;main.c,656 :: 		asm CLRWDT;
	CLRWDT
;main.c,657 :: 		if(Overload==1) {
	MOVF       main_Overload+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_pwr403
;main.c,658 :: 		if(type==4 | type==5) {                  // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_pwr404
;main.c,659 :: 		led_wr_str (2, 16, "        ", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr63_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr63_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,660 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11
	MOVLW      8
	MOVWF      R12
	MOVLW      119
	MOVWF      R13
L_lcd_pwr405:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr405
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr405
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr405
;main.c,661 :: 		led_wr_str (2, 16, "OVERLOAD", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr64_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr64_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,662 :: 		delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_pwr406:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr406
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr406
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr406
	NOP
	NOP
;main.c,663 :: 		asm CLRWDT;
	CLRWDT
;main.c,664 :: 		led_wr_str (2, 16, "        ", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr65_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr65_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,665 :: 		delay_ms(300);
	MOVLW      7
	MOVWF      R11
	MOVLW      23
	MOVWF      R12
	MOVLW      106
	MOVWF      R13
L_lcd_pwr407:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr407
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr407
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr407
	NOP
;main.c,666 :: 		asm CLRWDT;
	CLRWDT
;main.c,667 :: 		led_wr_str (2, 16, "OVERLOAD", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr66_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr66_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,668 :: 		delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_pwr408:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr408
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr408
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr408
	NOP
	NOP
;main.c,669 :: 		asm CLRWDT;
	CLRWDT
;main.c,670 :: 		led_wr_str (2, 16, "        ", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr67_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr67_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,671 :: 		delay_ms(300);
	MOVLW      7
	MOVWF      R11
	MOVLW      23
	MOVWF      R12
	MOVLW      106
	MOVWF      R13
L_lcd_pwr409:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr409
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr409
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr409
	NOP
;main.c,672 :: 		asm CLRWDT;
	CLRWDT
;main.c,673 :: 		led_wr_str (2, 16, "OVERLOAD", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr68_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr68_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,674 :: 		delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_pwr410:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr410
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr410
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr410
	NOP
	NOP
;main.c,675 :: 		asm CLRWDT;
	CLRWDT
;main.c,676 :: 		led_wr_str (2, 16, "        ", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr69_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr69_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,677 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11
	MOVLW      8
	MOVWF      R12
	MOVLW      119
	MOVWF      R13
L_lcd_pwr411:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr411
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr411
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr411
;main.c,678 :: 		led_wr_str (2, 16, "SWR=    ", 8);
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr70_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr70_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,679 :: 		}
	GOTO       L_lcd_pwr412
L_lcd_pwr404:
;main.c,680 :: 		else if(type!=0)  {        // 1602  & 128*32
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_pwr413
;main.c,681 :: 		led_wr_str (1, 0, "        ", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr71_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr71_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,682 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11
	MOVLW      8
	MOVWF      R12
	MOVLW      119
	MOVWF      R13
L_lcd_pwr414:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr414
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr414
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr414
;main.c,683 :: 		led_wr_str (1, 0, "OVERLOAD", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr72_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr72_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,684 :: 		delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_pwr415:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr415
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr415
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr415
	NOP
	NOP
;main.c,685 :: 		asm CLRWDT;
	CLRWDT
;main.c,686 :: 		led_wr_str (1, 0, "        ", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr73_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr73_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,687 :: 		delay_ms(300);
	MOVLW      7
	MOVWF      R11
	MOVLW      23
	MOVWF      R12
	MOVLW      106
	MOVWF      R13
L_lcd_pwr416:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr416
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr416
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr416
	NOP
;main.c,688 :: 		asm CLRWDT;
	CLRWDT
;main.c,689 :: 		led_wr_str (1, 0, "OVERLOAD", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr74_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr74_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,690 :: 		delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_pwr417:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr417
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr417
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr417
	NOP
	NOP
;main.c,691 :: 		asm CLRWDT;
	CLRWDT
;main.c,692 :: 		led_wr_str (1, 0, "        ", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr75_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr75_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,693 :: 		delay_ms(300);
	MOVLW      7
	MOVWF      R11
	MOVLW      23
	MOVWF      R12
	MOVLW      106
	MOVWF      R13
L_lcd_pwr418:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr418
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr418
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr418
	NOP
;main.c,694 :: 		asm CLRWDT;
	CLRWDT
;main.c,695 :: 		led_wr_str (1, 0, "OVERLOAD", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr76_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr76_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,696 :: 		delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_lcd_pwr419:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr419
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr419
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr419
	NOP
	NOP
;main.c,697 :: 		asm CLRWDT;
	CLRWDT
;main.c,698 :: 		led_wr_str (1, 0, "        ", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr77_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr77_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,699 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11
	MOVLW      8
	MOVWF      R12
	MOVLW      119
	MOVWF      R13
L_lcd_pwr420:
	DECFSZ     R13, 1
	GOTO       L_lcd_pwr420
	DECFSZ     R12, 1
	GOTO       L_lcd_pwr420
	DECFSZ     R11, 1
	GOTO       L_lcd_pwr420
;main.c,700 :: 		led_wr_str (1, 0, "SWR=    ", 8);
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      ?lstr78_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr78_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,701 :: 		}
L_lcd_pwr413:
L_lcd_pwr412:
;main.c,702 :: 		asm CLRWDT;
	CLRWDT
;main.c,703 :: 		SWR_old = 10000;
	MOVLW      16
	MOVWF      _SWR_old+0
	MOVLW      39
	MOVWF      _SWR_old+1
;main.c,704 :: 		lcd_swr(SWR_fixed);
	MOVF       lcd_pwr_SWR_fixed_L0+0, 0
	MOVWF      FARG_lcd_swr_swr+0
	MOVF       lcd_pwr_SWR_fixed_L0+1, 0
	MOVWF      FARG_lcd_swr_swr+1
	CALL       _lcd_swr+0
;main.c,705 :: 		}
L_lcd_pwr403:
;main.c,706 :: 		return;
;main.c,707 :: 		}
	RETURN
; end of _lcd_pwr

_lcd_ind:

;main.c,709 :: 		void lcd_ind() {
;main.c,711 :: 		asm CLRWDT;
	CLRWDT
;main.c,713 :: 		work_int = 0;
	CLRF       _work_int+0
	CLRF       _work_int+1
;main.c,714 :: 		if(ind.B0) work_int += Ind1;
	BTFSS      main_ind+0, 0
	GOTO       L_lcd_ind422
	MOVF       _Ind1+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Ind1+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind422:
;main.c,715 :: 		if(ind.B1) work_int += Ind2;
	BTFSS      main_ind+0, 1
	GOTO       L_lcd_ind423
	MOVF       _Ind2+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Ind2+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind423:
;main.c,716 :: 		if(ind.B2) work_int += Ind3;
	BTFSS      main_ind+0, 2
	GOTO       L_lcd_ind424
	MOVF       _Ind3+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Ind3+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind424:
;main.c,717 :: 		if(ind.B3) work_int += Ind4;
	BTFSS      main_ind+0, 3
	GOTO       L_lcd_ind425
	MOVF       _Ind4+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Ind4+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind425:
;main.c,718 :: 		if(ind.B4) work_int += Ind5;
	BTFSS      main_ind+0, 4
	GOTO       L_lcd_ind426
	MOVF       _Ind5+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Ind5+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind426:
;main.c,719 :: 		if(ind.B5) work_int += Ind6;
	BTFSS      main_ind+0, 5
	GOTO       L_lcd_ind427
	MOVF       _Ind6+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Ind6+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind427:
;main.c,720 :: 		if(ind.B6) work_int += Ind7;
	BTFSS      main_ind+0, 6
	GOTO       L_lcd_ind428
	MOVF       _Ind7+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Ind7+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind428:
;main.c,721 :: 		if(work_int>9999) {    // more then 9999 nH
	MOVLW      128
	XORLW      39
	MOVWF      R0
	MOVLW      128
	XORWF      _work_int+1, 0
	SUBWF      R0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__lcd_ind688
	MOVF       _work_int+0, 0
	SUBLW      15
L__lcd_ind688:
	BTFSC      STATUS+0, 0
	GOTO       L_lcd_ind429
;main.c,722 :: 		work_int += 50; // round
	MOVLW      50
	ADDWF      _work_int+0, 0
	MOVWF      R0
	MOVLW      0
	ADDWFC     _work_int+1, 0
	MOVWF      R1
	MOVF       R0, 0
	MOVWF      _work_int+0
	MOVF       R1, 0
	MOVWF      _work_int+1
;main.c,723 :: 		IntToStr(work_int, work_str);
	MOVF       R0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,724 :: 		work_str_2[0] = work_str[1];
	MOVF       _work_str+1, 0
	MOVWF      _work_str_2+0
;main.c,725 :: 		work_str_2[1] = work_str[2];
	MOVF       _work_str+2, 0
	MOVWF      _work_str_2+1
;main.c,726 :: 		work_str_2[2] = '.';
	MOVLW      46
	MOVWF      _work_str_2+2
;main.c,727 :: 		work_str_2[3] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+3
;main.c,728 :: 		}
	GOTO       L_lcd_ind430
L_lcd_ind429:
;main.c,730 :: 		IntToStr(work_int, work_str);
	MOVF       _work_int+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _work_int+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,731 :: 		if(work_str[2] != ' ') work_str_2[0] = work_str[2]; else work_str_2[0] = '0';
	MOVF       _work_str+2, 0
	XORLW      32
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_ind431
	MOVF       _work_str+2, 0
	MOVWF      _work_str_2+0
	GOTO       L_lcd_ind432
L_lcd_ind431:
	MOVLW      48
	MOVWF      _work_str_2+0
L_lcd_ind432:
;main.c,732 :: 		work_str_2[1] = '.';
	MOVLW      46
	MOVWF      _work_str_2+1
;main.c,733 :: 		if(work_str[3] != ' ') work_str_2[2] = work_str[3]; else work_str_2[2] = '0';
	MOVF       _work_str+3, 0
	XORLW      32
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_ind433
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+2
	GOTO       L_lcd_ind434
L_lcd_ind433:
	MOVLW      48
	MOVWF      _work_str_2+2
L_lcd_ind434:
;main.c,734 :: 		if(work_str[4] != ' ') work_str_2[3] = work_str[4]; else work_str_2[3] = '0';
	MOVF       _work_str+4, 0
	XORLW      32
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_ind435
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+3
	GOTO       L_lcd_ind436
L_lcd_ind435:
	MOVLW      48
	MOVWF      _work_str_2+3
L_lcd_ind436:
;main.c,735 :: 		}
L_lcd_ind430:
;main.c,736 :: 		if(type==4 | type==5) {  // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_ind437
;main.c,737 :: 		if(SW==1) column = 4; else column = 6;
	MOVF       main_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind438
	MOVLW      4
	MOVWF      lcd_ind_column_L0+0
	GOTO       L_lcd_ind439
L_lcd_ind438:
	MOVLW      6
	MOVWF      lcd_ind_column_L0+0
L_lcd_ind439:
;main.c,738 :: 		led_wr_str (column, 16, "L=", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr79_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr79_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,739 :: 		led_wr_str (column, 16+6*12, "uH", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      88
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr80_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr80_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,740 :: 		led_wr_str (column, 16+2*12, work_str_2, 4);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      40
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,741 :: 		}
	GOTO       L_lcd_ind440
L_lcd_ind437:
;main.c,742 :: 		else if(type==2 | type==3) {// 128*32 OLED
	MOVF       _type+0, 0
	XORLW      2
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      3
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_ind441
;main.c,743 :: 		if(SW==1) column = 0; else column = 1;
	MOVF       main_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind442
	CLRF       lcd_ind_column_L0+0
	GOTO       L_lcd_ind443
L_lcd_ind442:
	MOVLW      1
	MOVWF      lcd_ind_column_L0+0
L_lcd_ind443:
;main.c,744 :: 		led_wr_str (column, 9, "L=", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr81_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr81_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,745 :: 		led_wr_str (column, 15, "uH", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      15
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr82_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr82_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,746 :: 		led_wr_str (column, 11, work_str_2, 4);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      11
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,747 :: 		}
	GOTO       L_lcd_ind444
L_lcd_ind441:
;main.c,748 :: 		else if(type==1) { //  1602 LCD
	MOVF       _type+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind445
;main.c,749 :: 		if(SW==1) column = 0; else column = 1;
	MOVF       main_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind446
	CLRF       lcd_ind_column_L0+0
	GOTO       L_lcd_ind447
L_lcd_ind446:
	MOVLW      1
	MOVWF      lcd_ind_column_L0+0
L_lcd_ind447:
;main.c,750 :: 		led_wr_str (column, 9, "L=", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr83_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr83_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,751 :: 		led_wr_str (column, 15, "u", 1);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      15
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr84_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr84_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,752 :: 		led_wr_str (column, 11, work_str_2, 4);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      11
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,753 :: 		}
L_lcd_ind445:
L_lcd_ind444:
L_lcd_ind440:
;main.c,755 :: 		asm CLRWDT;
	CLRWDT
;main.c,757 :: 		work_int = 0;
	CLRF       _work_int+0
	CLRF       _work_int+1
;main.c,758 :: 		if(cap.B0) work_int += Cap1;
	BTFSS      main_cap+0, 0
	GOTO       L_lcd_ind449
	MOVF       _Cap1+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Cap1+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind449:
;main.c,759 :: 		if(cap.B1) work_int += Cap2;
	BTFSS      main_cap+0, 1
	GOTO       L_lcd_ind450
	MOVF       _Cap2+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Cap2+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind450:
;main.c,760 :: 		if(cap.B2) work_int += Cap3;
	BTFSS      main_cap+0, 2
	GOTO       L_lcd_ind451
	MOVF       _Cap3+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Cap3+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind451:
;main.c,761 :: 		if(cap.B3) work_int += Cap4;
	BTFSS      main_cap+0, 3
	GOTO       L_lcd_ind452
	MOVF       _Cap4+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Cap4+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind452:
;main.c,762 :: 		if(cap.B4) work_int += Cap5;
	BTFSS      main_cap+0, 4
	GOTO       L_lcd_ind453
	MOVF       _Cap5+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Cap5+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind453:
;main.c,763 :: 		if(cap.B5) work_int += Cap6;
	BTFSS      main_cap+0, 5
	GOTO       L_lcd_ind454
	MOVF       _Cap6+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Cap6+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind454:
;main.c,764 :: 		if(cap.B6) work_int += Cap7;
	BTFSS      main_cap+0, 6
	GOTO       L_lcd_ind455
	MOVF       _Cap7+0, 0
	ADDWF      _work_int+0, 1
	MOVF       _Cap7+1, 0
	ADDWFC     _work_int+1, 1
L_lcd_ind455:
;main.c,765 :: 		IntToStr(work_int, work_str);
	MOVF       _work_int+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _work_int+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,766 :: 		work_str_2[0] = work_str[2];
	MOVF       _work_str+2, 0
	MOVWF      _work_str_2+0
;main.c,767 :: 		work_str_2[1] = work_str[3];
	MOVF       _work_str+3, 0
	MOVWF      _work_str_2+1
;main.c,768 :: 		work_str_2[2] = work_str[4];
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+2
;main.c,769 :: 		work_str_2[3] = work_str[5];
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+3
;main.c,771 :: 		if(type==4 | type==5) {  // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_ind456
;main.c,772 :: 		if(SW==1) column = 6; else column = 4;
	MOVF       main_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind457
	MOVLW      6
	MOVWF      lcd_ind_column_L0+0
	GOTO       L_lcd_ind458
L_lcd_ind457:
	MOVLW      4
	MOVWF      lcd_ind_column_L0+0
L_lcd_ind458:
;main.c,773 :: 		led_wr_str (column, 16, "C=", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      16
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr85_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr85_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,774 :: 		led_wr_str (column, 16+6*12, "pF", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      88
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr86_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr86_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,775 :: 		led_wr_str (column, 16+2*12, work_str_2, 4);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      40
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,776 :: 		}
	GOTO       L_lcd_ind459
L_lcd_ind456:
;main.c,777 :: 		else if(type==2 | type==3) {// 128*32 OLED
	MOVF       _type+0, 0
	XORLW      2
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      3
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_lcd_ind460
;main.c,778 :: 		if(SW==1) column = 1; else column = 0;
	MOVF       main_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind461
	MOVLW      1
	MOVWF      lcd_ind_column_L0+0
	GOTO       L_lcd_ind462
L_lcd_ind461:
	CLRF       lcd_ind_column_L0+0
L_lcd_ind462:
;main.c,779 :: 		led_wr_str (column, 9, "C=", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr87_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr87_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,780 :: 		led_wr_str (column, 15, "pF", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      15
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr88_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr88_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,781 :: 		led_wr_str (column, 11, work_str_2, 4);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      11
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,782 :: 		}
	GOTO       L_lcd_ind463
L_lcd_ind460:
;main.c,783 :: 		else if(type==1) { // 1602 LCD
	MOVF       _type+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind464
;main.c,784 :: 		if(SW==1) column = 1; else column = 0;
	MOVF       main_SW+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_lcd_ind465
	MOVLW      1
	MOVWF      lcd_ind_column_L0+0
	GOTO       L_lcd_ind466
L_lcd_ind465:
	CLRF       lcd_ind_column_L0+0
L_lcd_ind466:
;main.c,785 :: 		led_wr_str (column, 9, "C=", 2);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr89_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr89_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      2
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,786 :: 		led_wr_str (column, 15, "p", 1);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      15
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr90_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr90_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,787 :: 		led_wr_str (column, 11, work_str_2, 4);
	MOVF       lcd_ind_column_L0+0, 0
	MOVWF      FARG_led_wr_str+0
	MOVLW      11
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
;main.c,788 :: 		}
L_lcd_ind464:
L_lcd_ind463:
L_lcd_ind459:
;main.c,790 :: 		asm CLRWDT;
	CLRWDT
;main.c,791 :: 		return;
;main.c,792 :: 		}
	RETURN
; end of _lcd_ind

_Test_init:

;main.c,795 :: 		void Test_init(void) { // Test mode
;main.c,796 :: 		if(type==4 | type==5)        // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_Test_init467
;main.c,797 :: 		led_wr_str (0, 10, "TEST MODE", 9);
	CLRF       FARG_led_wr_str+0
	MOVLW      10
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr91_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr91_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_Test_init468
L_Test_init467:
;main.c,798 :: 		else if(type!=0)            // 1602 LCD  or 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_Test_init469
;main.c,799 :: 		led_wr_str (0, 3, "TEST MODE", 9);
	CLRF       FARG_led_wr_str+0
	MOVLW      3
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr92_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr92_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_Test_init469:
L_Test_init468:
;main.c,800 :: 		asm CLRWDT;
	CLRWDT
;main.c,801 :: 		Delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_Test_init470:
	DECFSZ     R13, 1
	GOTO       L_Test_init470
	DECFSZ     R12, 1
	GOTO       L_Test_init470
	DECFSZ     R11, 1
	GOTO       L_Test_init470
	NOP
	NOP
;main.c,802 :: 		asm CLRWDT;
	CLRWDT
;main.c,803 :: 		Delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_Test_init471:
	DECFSZ     R13, 1
	GOTO       L_Test_init471
	DECFSZ     R12, 1
	GOTO       L_Test_init471
	DECFSZ     R11, 1
	GOTO       L_Test_init471
	NOP
	NOP
;main.c,804 :: 		asm CLRWDT;
	CLRWDT
;main.c,805 :: 		Delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_Test_init472:
	DECFSZ     R13, 1
	GOTO       L_Test_init472
	DECFSZ     R12, 1
	GOTO       L_Test_init472
	DECFSZ     R11, 1
	GOTO       L_Test_init472
	NOP
	NOP
;main.c,806 :: 		asm CLRWDT;
	CLRWDT
;main.c,807 :: 		Delay_ms(500);
	MOVLW      11
	MOVWF      R11
	MOVLW      38
	MOVWF      R12
	MOVLW      93
	MOVWF      R13
L_Test_init473:
	DECFSZ     R13, 1
	GOTO       L_Test_init473
	DECFSZ     R12, 1
	GOTO       L_Test_init473
	DECFSZ     R11, 1
	GOTO       L_Test_init473
	NOP
	NOP
;main.c,808 :: 		asm CLRWDT;
	CLRWDT
;main.c,809 :: 		if(type==4 | type==5)        // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_Test_init474
;main.c,810 :: 		led_wr_str (0, 10, "         ", 9);
	CLRF       FARG_led_wr_str+0
	MOVLW      10
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr93_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr93_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_Test_init475
L_Test_init474:
;main.c,811 :: 		else if(type!=0)            // 1602 LCD  or 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_Test_init476
;main.c,812 :: 		led_wr_str (0, 3,  "         ", 9);
	CLRF       FARG_led_wr_str+0
	MOVLW      3
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr94_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr94_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      9
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_Test_init476:
L_Test_init475:
;main.c,813 :: 		atu_reset();
	CALL       _atu_reset+0
;main.c,814 :: 		SW = 1; // C to OUT
	MOVLW      1
	MOVWF      main_SW+0
;main.c,815 :: 		set_sw(SW);
	MOVLW      1
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main.c,816 :: 		EEPROM_Write(255 - mem_offset * 5, cap);
	MOVF       _mem_offset+0, 0
	MOVWF      R0
	MOVLW      5
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	SUBLW      255
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       main_cap+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,817 :: 		EEPROM_Write(254 - mem_offset * 5, ind);
	MOVF       _mem_offset+0, 0
	MOVWF      R0
	MOVLW      5
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	SUBLW      254
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       main_ind+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,818 :: 		EEPROM_Write(253 - mem_offset * 5, SW);
	MOVF       _mem_offset+0, 0
	MOVWF      R0
	MOVLW      5
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	SUBLW      253
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       main_SW+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;main.c,820 :: 		if(type==4 | type==5)        // 128*64 OLED
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_Test_init477
;main.c,821 :: 		led_wr_str (0, 16+12*8, "l", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      112
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr95_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr95_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_Test_init478
L_Test_init477:
;main.c,822 :: 		else if(type!=0)             // 1602 LCD or 128*32 OLED
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_Test_init479
;main.c,823 :: 		led_wr_str (0, 8, "l", 1);
	CLRF       FARG_led_wr_str+0
	MOVLW      8
	MOVWF      FARG_led_wr_str+0
	MOVLW      ?lstr96_main+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(?lstr96_main+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_Test_init479:
L_Test_init478:
;main.c,825 :: 		lcd_prep_short = 1;
	MOVLW      1
	MOVWF      _lcd_prep_short+0
;main.c,826 :: 		lcd_prep();
	CALL       _lcd_prep+0
;main.c,827 :: 		return;
;main.c,828 :: 		}
	RETURN
; end of _Test_init

_cells_init:

;main.c,831 :: 		void cells_init(void) {
;main.c,833 :: 		asm CLRWDT;
	CLRWDT
;main.c,835 :: 		type = EEPROM_Read(1); // type of display
	MOVLW      1
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      _type+0
;main.c,836 :: 		if(EEPROM_Read(2) == 1) Auto = 1;
	MOVLW      2
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_cells_init480
	MOVLW      1
	MOVWF      _Auto+0
L_cells_init480:
;main.c,837 :: 		Rel_Del = Bcd2Dec(EEPROM_Read(3)); // Relay's Delay
	MOVLW      3
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	MOVWF      main_Rel_Del+0
	CLRF       main_Rel_Del+1
;main.c,838 :: 		Auto_delta = Bcd2Dec(EEPROM_Read(4)) * 10;  // Auto_delta
	MOVLW      4
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      10
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      _Auto_delta+0
	MOVF       R1, 0
	MOVWF      _Auto_delta+1
;main.c,839 :: 		min_for_start = Bcd2Dec(EEPROM_Read(5)) * 10; // P_min_for_start
	MOVLW      5
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      10
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      main_min_for_start+0
	MOVF       R1, 0
	MOVWF      main_min_for_start+1
;main.c,840 :: 		max_for_start = Bcd2Dec(EEPROM_Read(6)) * 10; // P_max_for_start
	MOVLW      6
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      10
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      main_max_for_start+0
	MOVF       R1, 0
	MOVWF      main_max_for_start+1
;main.c,843 :: 		max_swr = Bcd2Dec(EEPROM_Read(9)) * 10; // Max SWR
	MOVLW      9
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      10
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      main_max_swr+0
	MOVF       R1, 0
	MOVWF      main_max_swr+1
;main.c,844 :: 		L_q = EEPROM_Read(10);
	MOVLW      10
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_L_q+0
;main.c,845 :: 		L_linear = EEPROM_Read(11);
	MOVLW      11
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_L_linear+0
;main.c,846 :: 		C_q = EEPROM_Read(12);
	MOVLW      12
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_C_q+0
;main.c,847 :: 		C_linear = EEPROM_Read(13);
	MOVLW      13
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_C_linear+0
;main.c,848 :: 		D_correction = EEPROM_Read(14);
	MOVLW      14
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_D_correction+0
;main.c,849 :: 		L_invert = EEPROM_Read(15);
	MOVLW      15
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_L_invert+0
;main.c,851 :: 		asm CLRWDT;
	CLRWDT
;main.c,852 :: 		Ind1 =  Bcd2Dec(EEPROM_Read(16)) * 100 + Bcd2Dec(EEPROM_Read(17));  // Ind1
	MOVLW      16
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      17
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Ind1+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Ind1+1
;main.c,853 :: 		Ind2 =  Bcd2Dec(EEPROM_Read(18)) * 100 + Bcd2Dec(EEPROM_Read(19));  // Ind2
	MOVLW      18
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      19
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Ind2+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Ind2+1
;main.c,854 :: 		Ind3 =  Bcd2Dec(EEPROM_Read(20)) * 100 + Bcd2Dec(EEPROM_Read(21));  // Ind3
	MOVLW      20
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      21
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Ind3+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Ind3+1
;main.c,855 :: 		Ind4 =  Bcd2Dec(EEPROM_Read(22)) * 100 + Bcd2Dec(EEPROM_Read(23));  // Ind4
	MOVLW      22
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      23
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Ind4+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Ind4+1
;main.c,856 :: 		Ind5 =  Bcd2Dec(EEPROM_Read(24)) * 100 + Bcd2Dec(EEPROM_Read(25));  // Ind5
	MOVLW      24
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      25
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Ind5+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Ind5+1
;main.c,857 :: 		Ind6 =  Bcd2Dec(EEPROM_Read(26)) * 100 + Bcd2Dec(EEPROM_Read(27));  // Ind6
	MOVLW      26
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      27
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Ind6+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Ind6+1
;main.c,858 :: 		Ind7 =  Bcd2Dec(EEPROM_Read(28)) * 100 + Bcd2Dec(EEPROM_Read(29));  // Ind7
	MOVLW      28
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      29
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Ind7+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Ind7+1
;main.c,860 :: 		Cap1 =  Bcd2Dec(EEPROM_Read(32)) * 100 + Bcd2Dec(EEPROM_Read(33));  // Cap1
	MOVLW      32
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      33
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Cap1+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Cap1+1
;main.c,861 :: 		Cap2 =  Bcd2Dec(EEPROM_Read(34)) * 100 + Bcd2Dec(EEPROM_Read(35));  // Cap2
	MOVLW      34
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      35
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Cap2+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Cap2+1
;main.c,862 :: 		Cap3 =  Bcd2Dec(EEPROM_Read(36)) * 100 + Bcd2Dec(EEPROM_Read(37));  // Cap3
	MOVLW      36
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      37
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Cap3+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Cap3+1
;main.c,863 :: 		Cap4 =  Bcd2Dec(EEPROM_Read(38)) * 100 + Bcd2Dec(EEPROM_Read(39));  // Cap4
	MOVLW      38
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      39
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Cap4+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Cap4+1
;main.c,864 :: 		Cap5 =  Bcd2Dec(EEPROM_Read(40)) * 100 + Bcd2Dec(EEPROM_Read(41));  // Cap5
	MOVLW      40
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      41
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Cap5+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Cap5+1
;main.c,865 :: 		Cap6 =  Bcd2Dec(EEPROM_Read(42)) * 100 + Bcd2Dec(EEPROM_Read(43));  // Cap6
	MOVLW      42
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      43
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Cap6+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Cap6+1
;main.c,866 :: 		Cap7 =  Bcd2Dec(EEPROM_Read(44)) * 100 + Bcd2Dec(EEPROM_Read(45));  // Cap7
	MOVLW      44
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVLW      100
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	MOVWF      FLOC__cells_init+0
	MOVF       R1, 0
	MOVWF      FLOC__cells_init+1
	MOVLW      45
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	ADDWF      FLOC__cells_init+0, 0
	MOVWF      _Cap7+0
	MOVLW      0
	ADDWFC     FLOC__cells_init+1, 0
	MOVWF      _Cap7+1
;main.c,868 :: 		P_High = EEPROM_Read(0x30);  // High power
	MOVLW      48
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_P_High+0
;main.c,869 :: 		K_Mult = Bcd2Dec(EEPROM_Read(0x31)); // Tandem Match rate
	MOVLW      49
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	MOVWF      main_K_Mult+0
;main.c,870 :: 		Dysp_delay = Bcd2Dec(EEPROM_Read(0x32)); // Dysplay ON delay
	MOVLW      50
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	MOVWF      _Dysp_delay+0
;main.c,871 :: 		Loss_ind = EEPROM_Read(0x33);
	MOVLW      51
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_Loss_ind+0
;main.c,872 :: 		Fid_loss = Bcd2Dec(EEPROM_Read(0x34));
	MOVLW      52
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      FARG_Bcd2Dec_bcdnum+0
	CALL       _Bcd2Dec+0
	MOVF       R0, 0
	MOVWF      _Fid_loss+0
;main.c,873 :: 		asm CLRWDT;
	CLRWDT
;main.c,874 :: 		return;
;main.c,876 :: 		}
	RETURN
; end of _cells_init

_show_loss:

;main.c,878 :: 		void show_loss(void) {
;main.c,879 :: 		IntToStr(Fid_loss, work_str);
	MOVF       _Fid_loss+0, 0
	MOVWF      FARG_IntToStr_input+0
	CLRF       FARG_IntToStr_input+1
	MOVLW      _work_str+0
	MOVWF      FARG_IntToStr_output+0
	MOVLW      hi_addr(_work_str+0)
	MOVWF      FARG_IntToStr_output+1
	CALL       _IntToStr+0
;main.c,880 :: 		if(Fid_loss>=10) work_str_2[0] = work_str[4];
	MOVLW      10
	SUBWF      _Fid_loss+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_show_loss481
	MOVF       _work_str+4, 0
	MOVWF      _work_str_2+0
	GOTO       L_show_loss482
L_show_loss481:
;main.c,881 :: 		else work_str_2[0] = '0';
	MOVLW      48
	MOVWF      _work_str_2+0
L_show_loss482:
;main.c,882 :: 		work_str_2[1] = '.';
	MOVLW      46
	MOVWF      _work_str_2+1
;main.c,883 :: 		work_str_2[2] = work_str[5];
	MOVF       _work_str+5, 0
	MOVWF      _work_str_2+2
;main.c,884 :: 		if(type==4 | type==5) led_wr_str (4, 6, work_str_2, 3); // 128*64
	MOVF       _type+0, 0
	XORLW      4
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R1
	MOVF       _type+0, 0
	XORLW      5
	MOVLW      1
	BTFSS      STATUS+0, 2
	MOVLW      0
	MOVWF      R0
	MOVF       R1, 0
	IORWF       R0, 1
	BTFSC      STATUS+0, 2
	GOTO       L_show_loss483
	MOVLW      4
	MOVWF      FARG_led_wr_str+0
	MOVLW      6
	MOVWF      FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      3
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
	GOTO       L_show_loss484
L_show_loss483:
;main.c,885 :: 		else if(type!=0) led_wr_str (1, 0, work_str_2, 3); // 1602 | 128*32
	MOVF       _type+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_show_loss485
	MOVLW      1
	MOVWF      FARG_led_wr_str+0
	CLRF       FARG_led_wr_str+0
	MOVLW      _work_str_2+0
	MOVWF      FARG_led_wr_str+0
	MOVLW      hi_addr(_work_str_2+0)
	MOVWF      FARG_led_wr_str+1
	MOVLW      3
	MOVWF      FARG_led_wr_str+0
	CALL       _led_wr_str+0
L_show_loss485:
L_show_loss484:
;main.c,886 :: 		return;
;main.c,887 :: 		}
	RETURN
; end of _show_loss

_load_settings:

;main.c,889 :: 		void load_settings() {
;main.c,890 :: 		cap = EEPROM_Read(255 - mem_offset * 5);
	MOVF       _mem_offset+0, 0
	MOVWF      R0
	MOVLW      5
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	SUBLW      255
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_cap+0
;main.c,891 :: 		ind = EEPROM_Read(254 - mem_offset * 5);
	MOVF       _mem_offset+0, 0
	MOVWF      R0
	MOVLW      5
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	SUBLW      254
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_ind+0
;main.c,892 :: 		SW = EEPROM_Read(253 - mem_offset * 5);
	MOVF       _mem_offset+0, 0
	MOVWF      R0
	MOVLW      5
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	SUBLW      253
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      main_SW+0
;main.c,893 :: 		swr_a = EEPROM_Read(252 - mem_offset * 5) * 256;
	MOVF       _mem_offset+0, 0
	MOVWF      R0
	MOVLW      5
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	SUBLW      252
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	MOVWF      _swr_a+1
	CLRF       _swr_a+0
;main.c,894 :: 		swr_a += EEPROM_Read(251 - mem_offset * 5);
	MOVF       _mem_offset+0, 0
	MOVWF      R0
	MOVLW      5
	MOVWF      R4
	CALL       _Mul_8x8_U+0
	MOVF       R0, 0
	SUBLW      251
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0, 0
	ADDWF      _swr_a+0, 1
	MOVLW      0
	ADDWFC     _swr_a+1, 1
;main.c,895 :: 		set_ind(ind);
	MOVF       main_ind+0, 0
	MOVWF      FARG_set_ind_Ind+0
	CALL       _set_ind+0
;main.c,896 :: 		set_cap(cap);
	MOVF       main_cap+0, 0
	MOVWF      FARG_set_cap_Cap+0
	CALL       _set_cap+0
;main.c,897 :: 		set_sw(SW);
	MOVF       main_SW+0, 0
	MOVWF      FARG_set_sw_SW+0
	CALL       _set_sw+0
;main.c,898 :: 		}
	RETURN
; end of _load_settings

_read_i2c_inputs:

;main.c,900 :: 		void read_i2c_inputs(void) {
;main.c,903 :: 		_status = ~mem_offset | 0xF0;
	COMF       _mem_offset+0, 0
	MOVWF      read_i2c_inputs__status_L0+0
	MOVLW      240
	IORWF       read_i2c_inputs__status_L0+0, 1
;main.c,905 :: 		Delay_us(100);
	MOVLW      133
	MOVWF      R13
L_read_i2c_inputs486:
	DECFSZ     R13, 1
	GOTO       L_read_i2c_inputs486
;main.c,906 :: 		asm CLRWDT;
	CLRWDT
;main.c,908 :: 		Soft_I2C_Start();
	CALL       _Soft_I2C_Start+0
;main.c,909 :: 		Soft_I2C_Write(0x40);             // device addres for write
	MOVLW      64
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;main.c,910 :: 		Soft_I2C_Write(_status);
	MOVF       read_i2c_inputs__status_L0+0, 0
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;main.c,911 :: 		Soft_I2C_Stop();
	CALL       _Soft_I2C_Stop+0
;main.c,912 :: 		asm CLRWDT;
	CLRWDT
;main.c,913 :: 		Delay_us(100);
	MOVLW      133
	MOVWF      R13
L_read_i2c_inputs487:
	DECFSZ     R13, 1
	GOTO       L_read_i2c_inputs487
;main.c,914 :: 		asm CLRWDT;
	CLRWDT
;main.c,915 :: 		Soft_I2C_Start();
	CALL       _Soft_I2C_Start+0
;main.c,916 :: 		Soft_I2C_Write(0x41);             // device addres for read
	MOVLW      65
	MOVWF      FARG_Soft_I2C_Write+0
	CALL       _Soft_I2C_Write+0
;main.c,917 :: 		_status = Soft_I2C_Read();
	CALL       _Soft_I2C_Read+0
	MOVF       R0, 0
	MOVWF      read_i2c_inputs__status_L0+0
;main.c,918 :: 		Soft_I2C_Stop();
	CALL       _Soft_I2C_Stop+0
;main.c,919 :: 		asm CLRWDT;
	CLRWDT
;main.c,920 :: 		mem_offset = ~_status;
	COMF       read_i2c_inputs__status_L0+0, 0
	MOVWF      _mem_offset+0
;main.c,921 :: 		mem_offset >>= 4;
	LSRF       _mem_offset+0, 1
	LSRF       _mem_offset+0, 1
	LSRF       _mem_offset+0, 1
	LSRF       _mem_offset+0, 1
;main.c,922 :: 		mem_offset &= 0xf;
	MOVLW      15
	ANDWF      _mem_offset+0, 1
;main.c,923 :: 		}
	RETURN
; end of _read_i2c_inputs
