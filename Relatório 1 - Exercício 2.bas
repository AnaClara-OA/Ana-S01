10 PRINT "Tente adivinhar o número de 0 a 100 que eu estou pensando... " 
15 correto = RND(101)
20 INPUT "Digite um número: "; num
  
30 IF correto > num THEN GOTO 60
    
40 IF correto < num THEN GOTO 80

50 IF num = correto THEN PRINT "Acertou! O numero pensado era "+ correto 
55 GOTO 200

60 PRINT "Não é esse número... O correto é maior."
70 GOTO 20

80 PRINT "Não é esse número... O correto é menor."
90 GOTO 20
      
200 END
