; ======================================================
; ===== 99sevseg.asm ===================================
; ===== Seven Segment Displays Port 02 =================
Start:
       MOV AL,DE; 1101 1110 Display 3 as first digit.Index 210598
       OUT 02 ; Send the data in AL to Port 02

       MOV AL,FF; 0000 0000 Display 6 as 2nd digit
       OUT 02 ; Send the data in AL to Port 02

       JMP Start
       END
; ======================================================