
(vl-load-com)
(defun AddCirculo()
    ;; This example creates a circle in model space.
    (setq acadObj (vlax-get-acad-object))
    (setq doc (vla-get-ActiveDocument acadObj))
  
    ;; Define the circle
    (setq centerPoint (vlax-3d-point 0 0 0)  
          radius 5)
    
    ;; Create the Circle object in model space
    (setq modelSpace (vla-get-ModelSpace doc))
    (setq circleObj (vla-AddCircle modelSpace centerPoint radius))
    (vla-ZoomAll acadObj)
)


(defun c:caja()

(setq caja(load_dialog (findfile "dialog.DCL")))
(new_dialog "dialog_box" caja)
(set_tile "radio" "90") ;; Asigna valor al campo
(action_tile "fg_circle" "(mode_tile \"box_rect\" 1)(mode_tile \"box_line\" 1)(mode_tile \"box_circle\" 0)(setq op(get_tile \"fg_circle\")) ")  ;;Toma Valor del campo
(action_tile "fg_recta" "(mode_tile \"box_circle\" 1)(mode_tile \"box_line\" 1)(mode_tile \"box_rect\" 0)")  ;;Toma Valor del campo
(action_tile "fg_line" "(mode_tile \"box_circle\" 1)(mode_tile \"box_rect\" 1)(mode_tile \"box_line\" 0)")  ;;Toma Valor del campo
(action_tile  "draw_circle" "(AddCirculo (get_tile \"radio\"))")
  
  ;;Desactiva el campo
;;(entmake (list '(0 . "circle") (cons 10 '(1 1 0)) '(40 . 5.0))))
;;(mode_tile "box_rect" 1)  
(action_tile "accept" "(done_dialog)")  ;;Toma Valor del campo
(start_dialog)

)


(defun draw_circle ()
  (entmake (list '(0 . "circle") (cons 10 '(1 1 0)) '(40 . 5.0)))
	
	
)



;;Tarea 