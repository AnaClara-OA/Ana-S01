(defstruct ocorrencia
  nome
  ritual
  nivel-medo
  agentes-enviados)

(defun soma-medo-recursiva (lista)
  (if (null lista)
      0
      (+ (ocorrencia-nivel-medo (car lista))
         (soma-medo-recursiva (cdr lista)))))


(defun analise-final (lista-ocorrencias)
  (let* ((total-medo (soma-medo-recursiva lista-ocorrencias))
         (quantidade (length lista-ocorrencias))
         (media (/ total-medo quantidade)))

    (let ((ocorrencias-criticas
           (remove-if-not
            (lambda (o)
              (and (> (ocorrencia-agentes-enviados o) 3)
                   (> (ocorrencia-nivel-medo o) media)))
            lista-ocorrencias)))
         
      (mapcar #'ocorrencia-nome ocorrencias-criticas))))
