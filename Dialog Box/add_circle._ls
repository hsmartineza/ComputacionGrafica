(vl-load-com)
(defun c:Example_AddCircle()
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