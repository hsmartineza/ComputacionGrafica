
;;Lee archivo de texto separado por comas
(defun ConComas ()

  (defun asignar (cadena1)

			(setq nueva_cadena1 cadena1)	
		  	(setq coma (vl-string-search "," cadena1))
			(setq texto (substr cadena1 1 coma))
			(setq nueva_cadena1(substr cadena1 (+ coma 2) tamaño))
    )

  (defun cadena(cadena1)

		 (if (= contpos 1)(progn
			(asignar cadena1)
		 	(setq nombre_Objeto(vl-string-right-trim "'" (vl-string-left-trim "'" texto)))
		 	(setq Name nombre_Objeto)
			(princ Name)
		

		 	)
		   )

		(if (= contpos 2)(progn

			(asignar cadena1)
			;(setq nombre_Objeto(vl-string-left-trim " " texto))
			(setq x texto)
			;(setq x nombre_Objeto)
			(princ x)
			)
		  )
    		(if (= contpos 3)(progn

			(asignar cadena1)
			;(setq nombre_Objeto(vl-string-left-trim " " texto))
			(setq y texto)
			;(setq y nombre_Objeto)
			(princ y)
			)
		  )
    		(if (= contpos 4)(progn

			(asignar cadena1)
			;(setq nombre_Objeto(vl-string-left-trim " " texto))
			(setq z texto)
			;(setq z nombre_Objeto)
			(princ z)
			)
		  )
    		(if (= contpos 5)(progn

			(asignar cadena1)
			;(setq nombre_Objeto(vl-string-left-trim " " texto))
			(setq rotacion texto)
			;(setq rotacion nombre_Objeto)
			(princ rotacion)
			)
		  )
    		(if (= contpos 6)(progn

			(asignar cadena1)
			;(setq nombre_Objeto(vl-string-left-trim " " texto))
			;(setq scalex nombre_Objeto)
			(setq scalex texto)
			(princ scalex)
			)
		  )
    		(if (= contpos 7)(progn

			(asignar cadena1)
			;(setq nombre_Objeto(vl-string-left-trim " " texto))
			;(setq scaley nombre_Objeto)
			(setq scaley texto)
			(princ scaley)
			)
		  )
    		(if (= contpos 8)(progn

			(asignar cadena1)
			;(setq nombre_Objeto(vl-string-left-trim " " texto))
			;(setq scalez nombre_Objeto)
			(setq scalez texto)
			(princ scalez)
			)
		  )
    		
    		(if (= contpos 9)(progn

			(asignar cadena1)
			(setq nombre_Objeto(vl-string-right-trim "'" (vl-string-left-trim "'" texto)))
		 	(setq Material nombre_Objeto)
			(princ Material)
			
			)
		  )
    		(if (= contpos 10)(progn

			(asignar cadena1)
			(setq nombre_Objeto(vl-string-left-trim " " texto))
			(setq Cantidad (atof nombre_Objeto))
			(princ Cantidad)
			)
		  )
    		(if (= contpos 11)(progn

			(asignar cadena1)
			(setq nombre_Objeto(vl-string-left-trim " " texto))
			(setq Precio (atof nombre_Objeto))
			(princ Precio)
			)
		  )
    		(if (= contpos 12)(progn

			
			;(setq nombre_Objeto(vl-string-right-trim "'" (vl-string-left-trim "'" texto)))
		 	(setq Referencia nueva_cadena1)
			(princ Referencia)
			)
		  )
    

   
)
   


  (vl-load-com)
  (setvar "ATTDIA" 0)
  (command "_osnap" "off")
  (command "_VSCURRENT" "_Realistic")

  (setq fil (findfile "CDF.txt"))

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



;;Lee archivo de texto separado por espacios
(defun ConEspacios ()

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




;;Obtiene un archivo de excel y guarda sus valores en una lista
(defun GetExcel (ExcelFile$ SheetName$ MaxRange$ / Column# ColumnRow@ Data@ ExcelRange^
  ExcelValue ExcelValue ExcelVariant^ MaxColumn# MaxRow# Range$ Row# Worksheet)
  (if (= (type ExcelFile$) 'STR)
    (if (not (findfile ExcelFile$))
      (progn
        (alert (strcat "Excel file " ExcelFile$ " not encontrado"))
        (exit)
      );progn
    );if
    (progn
      (alert "Excel file not specified.")
      (exit)
    );progn
  );if
  (gc)
  (if (setq *ExcelApp% (vlax-get-object "Excel.Application"))
    (progn
      (alert "Cierre todas las hojas de Excel para continuar")
      (vlax-release-object *ExcelApp%)(gc)
    );progn
  );if
  (setq ExcelFile$ (findfile ExcelFile$))
  (setq *ExcelApp% (vlax-get-or-create-object "Excel.Application"))
  (vlax-invoke-method (vlax-get-property *ExcelApp% 'WorkBooks) 'Open ExcelFile$)
  (if SheetName$
    (vlax-for Worksheet (vlax-get-property *ExcelApp% "Sheets")
      (if (= (vlax-get-property Worksheet "Name") SheetName$)
        (vlax-invoke-method Worksheet "Activate")
      );if
    );vlax-for
  );if
  (if MaxRange$
    (progn
      (setq ColumnRow@ (ColumnRow MaxRange$))
      (setq MaxColumn# (nth 0 ColumnRow@))
      (setq MaxRow# (nth 1 ColumnRow@))
    );progn
    (progn
      (setq CurRegion (vlax-get-property (vlax-get-property
        (vlax-get-property *ExcelApp% "ActiveSheet") "Range" "A1") "CurrentRegion")
      );setq
      (setq MaxRow# (vlax-get-property (vlax-get-property CurRegion "Rows") "Count"))
      (setq MaxColumn# (vlax-get-property (vlax-get-property CurRegion "Columns") "Count"))
    );progn
  );if
  (setq *ExcelData@ nil)
  (setq Row# 1)
  (repeat MaxRow#
    (setq Data@ nil)
    (setq Column# 1)
    (repeat MaxColumn#
      (setq Range$ (strcat (Number2Alpha Column#)(itoa Row#)))
      (setq ExcelRange^ (vlax-get-property *ExcelApp% "Range" Range$))
      (setq ExcelVariant^ (vlax-get-property ExcelRange^ 'Value))
      (setq ExcelValue (vlax-variant-value ExcelVariant^))
      (setq ExcelValue
        (cond
          ((= (type ExcelValue) 'INT) (itoa ExcelValue))
          ((= (type ExcelValue) 'REAL) (rtosr ExcelValue))
          ((= (type ExcelValue) 'STR) (vl-string-trim " " ExcelValue))
          ((/= (type ExcelValue) 'STR) "")
        );cond
      );setq
      (setq Data@ (append Data@ (list ExcelValue)))
      (setq Column# (1+ Column#))
    );repeat
    (setq *ExcelData@ (append *ExcelData@ (list Data@)))
    (setq Row# (1+ Row#))
  );repeat
  (vlax-invoke-method (vlax-get-property *ExcelApp% "ActiveWorkbook") 'Close :vlax-False)
  (vlax-invoke-method *ExcelApp% 'Quit)
  (vlax-release-object *ExcelApp%)(gc)
  (setq *ExcelApp% nil)
  *ExcelData@
)

; Retorna el valor de la celda de la lista *ExcelData@ 
(defun GetCell (Cell$ / Column# ColumnRow@ Return Row#)
  (setq ColumnRow@ (ColumnRow Cell$))
  (setq Column# (1- (nth 0 ColumnRow@)))
  (setq Row# (1- (nth 1 ColumnRow@)))
  (setq Return "")
  (if *ExcelData@
    (if (and (>= (length *ExcelData@) Row#)(>= (length (nth 0 *ExcelData@)) Column#))
      (setq Return (nth Column# (nth Row# *ExcelData@)))
    );if
  );if
  Return
)

(defun ColumnRow (Cell$ / Column$ Char$ Row#)
  (setq Column$ "")
  (while (< 64 (ascii (setq Char$ (strcase (substr Cell$ 1 1)))) 91)
    (setq Column$ (strcat Column$ Char$)
          Cell$ (substr Cell$ 2)
    );setq
  );while
  (if (and (/= Column$ "") (numberp (setq Row# (read Cell$))))
    (list (Alpha2Number Column$) Row#)
    '(1 1);default to "A1" if there's a problem
  );if
);defun ColumnRow

;Cierra el archivo Excel

(defun Alpha2Number (Str$ / Num#)
  (if (= 0 (setq Num# (strlen Str$)))
    0
    (+ (* (- (ascii (strcase (substr Str$ 1 1))) 64) (expt 26 (1- Num#)))
       (Alpha2Number (substr Str$ 2))
    );+
  );if
);defun Alpha2Number

(defun Number2Alpha (Num# / Val#)
  (if (< Num# 27)
    (chr (+ 64 Num#))
    (if (= 0 (setq Val# (rem Num# 26)))
      (strcat (Number2Alpha (1- (/ Num# 26))) "Z")
      (strcat (Number2Alpha (/ Num# 26)) (chr (+ 64 Val#)))
    );if
  );if
);defun Number2Alpha

(defun rtosr (RealNum~ / DimZin# ShortReal$)
  (setq DimZin# (getvar "DIMZIN"))
  (setvar "DIMZIN" 8)
  (setq ShortReal$ (rtos RealNum~ 2 8))
  (setvar "DIMZIN" DimZin#)
  ShortReal$
);defun rtosr



(defun CloseExcel (ExcelFile$)
  (if ExcelFile$
    (if (= (strcase ExcelFile$) (strcase *ExcelFile$))
      (if (findfile ExcelFile$)
        (vlax-invoke-method (vlax-get-property *ExcelApp% "ActiveWorkbook") "Save")
        (setq Saveas t)
      );if
      (if (findfile ExcelFile$)
        (progn
          (vl-file-delete (findfile ExcelFile$))
          (setq Saveas t)
        );progn
        (setq Saveas t)
      );if
    );if
  );if
  
  (vlax-invoke-method (vlax-get-property *ExcelApp% "ActiveWorkbook") 'Close :vlax-False)
  (vlax-invoke-method *ExcelApp% 'Quit)
  (vlax-release-object *ExcelApp%)(gc)
  (setq *ExcelApp% nil *ExcelFile$ nil)
  (princ)
)

(princ)


;;Obtiene la letra en el alfabeto segun el indice
(defun getLet(index)
      (setq alfabeto '("A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M"))
      (nth index alfabeto)

)


(defun cadena(cell_index aux)

		 (if (= cell_index 0)(progn
			(setq alpha(getLet cell_index))
			(setq cell_text(strcat alpha (itoa aux)))
		 	(setq nombre_Objeto(GetCell cell_text))
		 	(setq Name nombre_Objeto)
			(princ Name)
		

		 	)
		   )

		(if (= cell_index 1)(progn
			(setq alpha(getLet cell_index))
			(setq cell_text(strcat alpha (itoa aux)))
		 	(setq nombre_Objeto(GetCell cell_text))
			(setq x nombre_Objeto)
			;(setq x nombre_Objeto)
			(princ x)
			)
		  )
    		(if (= cell_index 2)(progn
				      
			(setq alpha(getLet cell_index))
			(setq cell_text(strcat alpha (itoa aux)))
		 	(setq nombre_Objeto(GetCell cell_text))
			(setq y nombre_Objeto)
			(princ y)
			)
		  )
    		(if (= cell_index 3)(progn

			(setq alpha(getLet cell_index))
			(setq cell_text(strcat alpha (itoa aux)))
		 	(setq nombre_Objeto(GetCell cell_text))
			(setq z nombre_Objeto)
			(princ z)
			)
		  )
    		(if (= cell_index 4)(progn

			(setq alpha(getLet cell_index))
			(setq cell_text(strcat alpha (itoa aux)))
		 	(setq nombre_Objeto(GetCell cell_text))
			(setq rotacion nombre_Objeto)
			(princ rotacion)
			)
		  )
    		(if (= cell_index 5)(progn
				      
			(setq alpha(getLet cell_index))
			(setq cell_text(strcat alpha (itoa aux)))
		 	(setq nombre_Objeto(GetCell cell_text))
			(setq scalex nombre_Objeto)
			(princ scalex)
			)
		  )
    		(if (= cell_index 6)(progn

				
			(setq alpha(getLet cell_index))
			(setq cell_text(strcat alpha (itoa aux)))
		 	(setq nombre_Objeto(GetCell cell_text))
			(setq scaley nombre_Objeto)
			(princ scaley)
			)
		  )
    		(if (= cell_index 7)(progn

			(setq alpha(getLet cell_index))
			(setq cell_text(strcat alpha (itoa aux)))
		 	(setq nombre_Objeto(GetCell cell_text))
			(setq scalez nombre_Objeto)
			(princ scalez)
			)
		  )
    		
    		(if (= cell_index 8)(progn
				      
			(setq alpha(getLet cell_index))
			(setq cell_text(strcat alpha (itoa aux)))
		 	(setq nombre_Objeto(GetCell cell_text))
			(setq Material nombre_Objeto)
			(princ Material)
			
			)
		  )
    		(if (= cell_index 9)(progn

			(setq alpha(getLet cell_index))
			(setq cell_text(strcat alpha (itoa aux)))
		 	(setq nombre_Objeto(GetCell cell_text))
		 	
			
			(setq Cantidad (atof nombre_Objeto))
			(princ Cantidad)
			)
		  )
    		(if (= cell_index 10)(progn

			(setq alpha(getLet cell_index))
			(setq cell_text(strcat alpha (itoa aux)))
		 	(setq nombre_Objeto(GetCell cell_text))

			
			(setq Precio (atof nombre_Objeto))
			(princ Precio)
			)
		  )
		  
    		(if (= cell_index 11)(progn

			(setq alpha(getLet cell_index))
			(setq cell_text(strcat alpha (itoa aux)))
		 	(setq nombre_Objeto(GetCell cell_text))
		 	(setq Referencia nombre_Objeto)
			(princ Referencia)
			)
		  )
    

   
)

;;Abre el archivo excel e inserta los bloques

(defun PorExcel()
    (setvar "ATTDIA" 0)
    (command "_osnap" "off")
    (command "_VSCURRENT" "_Realistic")

    (GetExcel "Excel.xlsx" "Sheet1" "L103");<-- Edit Filename.xls
    (setq contpos 0)
  
    (while (< contpos 104)
    (setq cont 0)
    (setq nueva_cadena1 text_line)
    (setq contpos (+ contpos 1))  

    (while (< cont 12)    		
	  	(cadena cont contpos)
      	  	(setq cont (1+ cont))
    )



      
    (setq coordenadas (strcat x "," y))

    (setq p (strcat " " Name " " coordenadas " " scalex " " scaley " " rotacion " " Name " " Material" " Referencia))
    
    (command "-insert"  Name coordenadas scalex scaley rotacion Name Material Precio Referencia)
    
          	
    
 )
  (CloseExcel "Excel.xlsx")
  (setvar "ATTDIA" 1)
)



(defun c:Extraer()
(setq Archivos '("Archivo por espacios" "Archivo por comas" "Archivo Excel"))
(setq caja(load_dialog (findfile "dialog.DCL")))
(new_dialog "dialog_box" caja)

  (start_list "selections")
  ;start the list box

  (mapcar 'add_list Archivos)
  ;fill the list box

  (end_list)


;;Buton Aceptar

  
(action_tile "accept" "(setq SIZ (get_tile \"selections\")) (setq userclick T) (done_dialog)")
(action_tile "cancel" "(setq userclick nil) (done_dialog)")

(start_dialog)

(unload_dialog caja)
(if userclick
  (progn

    (if	(= SIZ "0")
      (progn
	(ConEspacios)
      )
    )
    (if	(= SIZ "1")
      (progn
	(ConComas)
      )
    )
    (if	(= SIZ "2")
      (progn
	(PorExcel)
      )
    )



  )

)
)  



