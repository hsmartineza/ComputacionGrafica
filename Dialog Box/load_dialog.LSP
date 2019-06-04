
(vl-load-com)

;;Funcion vla para dibujar un circulo
(defun AddCirculo(radio x y)
    ;; This example creates a circle in model space.
    (setq acadObj (vlax-get-acad-object))
    (setq doc (vla-get-ActiveDocument acadObj))
  
    ;; Define the circle
    (setq centerPoint (vlax-3d-point (atoi x) (atoi y) 0)  
          radius 5)
    
    ;; Create the Circle object in model space
    (setq modelSpace (vla-get-ModelSpace doc))
    (setq circleObj (vla-AddCircle modelSpace centerPoint radio))
    (vla-ZoomAll acadObj)
)

;;Funcion vla para dibujar linea
(defun AddLine(x1 y1 x2 y2)
    ;; This example adds a line in model space
    (setq acadObj (vlax-get-acad-object))
    (setq doc (vla-get-ActiveDocument acadObj))
    
    ;; Define the start and end points for the line
    (setq startPoint (vlax-3d-point (atoi x1) (atoi y1) 0)
          endPoint (vlax-3d-point (atoi x2) (atoi y2) 0))
    
    ;; Create the line in model space
    (setq modelSpace (vla-get-ModelSpace doc))
    (setq lineObj (vla-AddLine modelSpace startPoint endPoint))
    (vla-ZoomAll acadObj)
)


(defun AddRect(cx cy height width)
    ;; This example creates a polyline in model space.
    (setq acadObj (vlax-get-acad-object))
    (setq doc (vla-get-ActiveDocument acadObj))
	
    (setq a(+ (atoi cx) (/ (atoi width) 2))
	  b(+ (atoi cy) (/ (atoi height) 2))
	  c(- (atoi cy)(/ (atoi height) 2))
	  d(- (atoi cx)(/ (atoi width) 2))
    )		
  
    ;; Define the 2D polyline points
    (setq points (vlax-make-safearray vlax-vbDouble '(0 . 14)))
    (vlax-safearray-fill points '(0 0 0
                                  0 0 0
                                  0 0 0
                                  0 0 0
				  0 0 0
                                 )
    )
    ;;Ubicar los puntos en la lista	
    (vlax-safearray-put-element points 0 d)
    (vlax-safearray-put-element points 1 b)
    (vlax-safearray-put-element points 3 a)
    (vlax-safearray-put-element points 4 b)
    (vlax-safearray-put-element points 6 a)
    (vlax-safearray-put-element points 7 c)
    (vlax-safearray-put-element points 9 d)
    (vlax-safearray-put-element points 10 c)
    (vlax-safearray-put-element points 12 d)
    (vlax-safearray-put-element points 13 b)
  
    ;; Create a lightweight Polyline object in model space
    (setq modelSpace (vla-get-ModelSpace doc))
    (setq plineObj (vla-AddPolyline modelSpace points))
    (vla-ZoomAll acadObj)
)



(defun c:caja()

(setq caja(load_dialog (findfile "dialog.DCL")))
(new_dialog "dialog_box" caja)
(set_tile "radio" "90") ;; Asigna valor al campo

;;Deshabilitar radio boxes


(mode_tile "box_line" 1)
(mode_tile "box_rect" 1)
(mode_tile "box_circle" 1)

;;Accionar de radio boxes   
(action_tile "fg_circle" "(mode_tile \"box_rect\" 1)(mode_tile \"box_line\" 1)(mode_tile \"box_circle\" 0)(setq op(get_tile \"fg_circle\")) ")  ;;Toma Valor del campo
(action_tile "fg_recta" "(mode_tile \"box_circle\" 1)(mode_tile \"box_line\" 1)(mode_tile \"box_rect\" 0)")  ;;Toma Valor del campo
(action_tile "fg_line" "(mode_tile \"box_circle\" 1)(mode_tile \"box_rect\" 1)(mode_tile \"box_line\" 0)")  ;;Toma Valor del campo

;;Accionar de los botones que dibujan   
(action_tile  "draw_circle" "(AddCirculo (get_tile \"radio\") (get_tile \"center_x\") (get_tile \"center_y\"))") ;;Dibuja el circulo
(action_tile  "draw_line" "(AddLine (get_tile \"p1x\") (get_tile \"p1y\") (get_tile \"p2x\") (get_tile \"p2y\") )")  ;;Dibuja la linea
(action_tile  "draw_rect" "(AddRect (get_tile \"crx\") (get_tile \"cry\") (get_tile \"hrect\") (get_tile \"wrect\") )")  ;;Dibuja el rectangulo 

;;Buton Aceptar  
(action_tile "accept" "(done_dialog)")  ;;Toma Valor del campo
(start_dialog)

)
