(defun C:lo ()

  (defun asignar (cadena1 num)
		(setq texto (substr cadena1 1 num))
		(setq nueva_cadena1(substr cadena1 (+ num 2) tamaño))
    )
    

  (defun cadena(cadena1)

		 (if (= contpos 1)(progn
			(asignar cadena1 19)
		 	(setq nombre_Objeto(vl-string-right-trim " " (vl-string-left-trim " " texto)))
		 	(setq Name nombre_Objeto)
			(princ Name)
		

		 	)
		   )

		(if (= contpos 2)(progn

			(asignar cadena1 6)
			(setq nombre_Objeto(vl-string-right-trim " " (vl-string-left-trim " " texto)))
			(setq x nombre_Objeto)
			;(setq x nombre_Objeto)
			(princ x)
			)
		  )
    		(if (= contpos 3)(progn

			(asignar cadena1 8)
			(setq nombre_Objeto(vl-string-right-trim " " (vl-string-left-trim " " texto)))
			(setq y nombre_Objeto)
			(princ y)
			)
		  )
    		(if (= contpos 4)(progn

			(asignar cadena1 4)
			(setq nombre_Objeto(vl-string-right-trim " " (vl-string-left-trim " " texto)))
			(setq z nombre_Objeto)
			(princ z)
			)
		  )
    		(if (= contpos 5)(progn

			(asignar cadena1 5)
			(setq nombre_Objeto(vl-string-right-trim " " (vl-string-left-trim " " texto)))
			(setq rotacion nombre_Objeto)
			(princ rotacion)
			)
		  )
    		(if (= contpos 6)(progn

			(asignar cadena1 2)
			(setq nombre_Objeto(vl-string-right-trim " " (vl-string-left-trim " " texto)))
			(setq scalex nombre_Objeto)
			(princ scalex)
			)
		  )
    		(if (= contpos 7)(progn
			(asignar cadena1 2)
			(setq nombre_Objeto(vl-string-right-trim " " (vl-string-left-trim " " texto)))
			(setq scaley nombre_Objeto)
			(princ scaley)
			)
		  )
    		(if (= contpos 8)(progn

			(setq texto (substr nueva_cadena1 1 1))
			(setq nueva_cadena1(substr nueva_cadena1 (+ 1 1) tamaño))
			(setq nombre_Objeto(vl-string-left-trim " " texto))
			(setq nombre_Objeto(vl-string-right-trim " " (vl-string-left-trim " " texto)))
			(princ scalez)
			)
		  )
    		
    		(if (= contpos 9)(progn
			(asignar cadena1 19)
			(setq nombre_Objeto(vl-string-right-trim " " (vl-string-left-trim " " texto)))
			(setq Material nombre_Objeto)
			(princ Material)
			
			)
		  )
    		(if (= contpos 10)(progn

			(asignar cadena1 5)
			(setq nombre_Objeto(vl-string-right-trim " " (vl-string-left-trim " " texto)))
		 	
			
			(setq Cantidad (atof nombre_Objeto))
			(princ Cantidad)
			)
		  )
    		(if (= contpos 11)(progn

			(setq texto (substr cadena1 1 8))
			(setq nueva_cadena1(substr nueva_cadena1 (+ 1 9) tamaño))
			(setq nombre_Objeto(vl-string-right-trim " " (vl-string-left-trim " " texto)))

			
			(setq Precio (atof nombre_Objeto))
			(princ Precio)
			)
		  )
		  
    		(if (= contpos 12)(progn

			(asignar cadena1 15)
			(setq nombre_Objeto(vl-string-right-trim " " (vl-string-left-trim " " texto)))
		 	(setq Referencia nombre_Objeto)
			(princ Referencia)
			)
		  )
    

   
)
   


  (vl-load-com)
  (setvar "ATTDIA" 0)
  (command "_osnap" "off")
  (command "_VSCURRENT" "_Realistic")

  (setq fil (findfile "SDF.txt"))

  (setq id_file (open fil "r"))
  

  (while (setq text_line (read-line id_file))

    (setq cont 0)
    (setq contpos 0)
    (setq nueva_cadena1 text_line)
    

    (while (< cont 12)
     		(setq contpos (+ contpos 1))
	  	(cadena nueva_cadena1)
      	  	(setq cont (1+ cont))
	 )
    (setq coordenadas (strcat x "," y))

    (setq p (strcat " " Name " " coordenadas " " scalex " " scaley " " rotacion " " Name " " Material" " Referencia))
    
    (command "-insert"  Name coordenadas scalex scaley rotacion Name Material Precio Referencia)
    
          	
      
 )

  (close id_file)
  (setvar "ATTDIA" 1)
 )