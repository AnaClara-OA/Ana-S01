
(defun calcula-dosagem (peso idade)
  (cond
    ((or (< idade 5) (< peso 20))
     10)   
    ((and (>= idade 5) (<= idade 12) (>= peso 20))
     25)   
    (t
     50))) 

(defun ajusta-preco (preco-base nome-da-erva)
  (cond
    ((string-equal nome-da-erva "Ginseng")
     (* preco-base 3.0))
    ((string-equal nome-da-erva "Lótus")
     (* preco-base 1.5))
    (t
     preco-base)))


(let* ((idade 14)
       (peso 60)
       (erva "Lótus")
       (preco-base 10)
       (preco-ajustado (ajusta-preco preco-base erva)))
  (format t "Dosagem para ~a anos e ~a kg: ~a ml~%"
          idade peso (calcula-dosagem peso idade))
  (format t "Preço final da erva ~a: ~a moedas~%"
          erva preco-ajustado))
