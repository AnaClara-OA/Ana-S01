(defstruct criatura
  nome
  ambiente
  periculosidade
  vida-media)


(defparameter *catalogo*
  (list
   (make-criatura :nome "Safe Shallows Fish"
                  :ambiente "Shallows"
                  :periculosidade "Baixa"
                  :vida-media 5)

   (make-criatura :nome "Reaper Leviathan"
                  :ambiente "Ocean"
                  :periculosidade "Alta"
                  :vida-media 45)

  
   (make-criatura :nome "Ghost Ray"
                  :ambiente "Deep"
                  :periculosidade "Média"
                  :vida-media 30)

   (make-criatura :nome "Crab Squid"
                  :ambiente "Deep"
                  :periculosidade "Alta"
                  :vida-media 40)))


(defun filtra-por-perigo (catalogo)
  "Retorna apenas criaturas cuja periculosidade NÃO seja Baixa."
  (remove-if (lambda (c)
               (string-equal (criatura-periculosidade c) "Baixa"))
             catalogo))



(defun relatorio-profundidade (catalogo)
  "Gera frases do tipo: \"[NOME]: Vive em [AMBIENTE]\" apenas para criaturas Deep."
  (let ((apenas-deep
         (remove-if-not (lambda (c)
                          (string-equal (criatura-ambiente c) "Deep"))
                        catalogo)))
    (mapcar (lambda (c)
              (format nil "~a: Vive em ~a"
                      (criatura-nome c)
                      (criatura-ambiente c)))
            apenas-deep)))
