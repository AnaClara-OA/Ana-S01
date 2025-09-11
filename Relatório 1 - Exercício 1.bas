10 INPUT "Digite sua primeira nota: "; nota1
20 INPUT "Digite sua segunda nota: "; nota2

30 media = (VAL(nota1) + VAL(nota2))/2

40 IF media>=60 THEN GOTO 100
50 IF media<=30 THEN GOTO 200
    
60 INPUT "Digite a terceira nota: "; nota3
70 novamedia = (VAL(media) + VAL(nota3)) / 2
80 IF novamedia >=50 THEN GOTO 300
90 PRINT "Reprovado na NP3"
95 GOTO 500

100 PRINT "Aprovado direto!"
110 GOTO 500

200 PRINT "Reprovado direto."
210 GOTO 500

300 PRINT "aprovado pela NP3!"
310 GOTO 500
      
500 END
