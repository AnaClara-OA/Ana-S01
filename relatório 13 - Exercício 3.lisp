(defstruct item
  nome
  tipo
  preco
  forca-magica)


(defparameter *catalogo*
  (list
   (make-item :nome "Espada do Eclipse"
              :tipo "Arma"
              :preco 200
              :forca-magica 120)

   (make-item :nome "Poção de Regeneração"
              :tipo "Pocao"
              :preco 35
              :forca-magica 10)

   (make-item :nome "Amuleto Sombrio"
              :tipo "Artefato"
              :preco 150
              :forca-magica 90)

   (make-item :nome "Machado Demoníaco"
              :tipo "Arma"
              :preco 180
              :forca-magica 60)))


(defun adiciona-imposto (preco)
  (* preco 1.15))  

(defun bonus-maldicao (forca)
  (if (> forca 80)
      (* forca 1.5)
      forca))


(defun processa-venda (catalogo)
  "Filtra armas, aplica imposto no preço e retorna nome + nova força mágica."
  (let* ((armas (remove-if-not
                 (lambda (i)
                   (string-equal (item-tipo i) "Arma"))
                 catalogo))

         (armas-com-imposto
          (mapcar (lambda (i)
                    (make-item
                     :nome (item-nome i)
                     :tipo (item-tipo i)
                     :preco (adiciona-imposto (item-preco i))
                     :forca-magica (item-forca-magica i)))
                  armas))

         (relatorio
          (mapcar (lambda (i)
                    (format nil "~a → Nova Força Mágica: ~a"
                            (item-nome i)
                            (bonus-maldicao (item-forca-magica i))))
                  armas-com-imposto)))

    relatorio))
