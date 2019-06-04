dialog_box : dialog{


 label = "Figuras";

 :boxed_row{
 label = "Seleccione";
 
 :radio_button{
 label = "Circulo";
 key = "fg_circle";
 }
 
 :radio_button{
 label = "Rectangulo";
 key = "fg_recta";
 }

 :radio_button{
 label = "Linea";
 key = "fg_line";
 }
 
 }
	
 :boxed_row {
 label = "Circulo";	
 key = "box_circle";
 //RADIO
 :edit_box {
 label = "Radio";
 edit_width = 9;
 value = "10";
 key = "radio";
 }

 //CENTRO
 :boxed_radio_row{
 label = "Centro";
 :edit_box {
 label = "Cordenada X";
 edit_width = 9;
  
 key = "center_x";
 }
 
  :edit_box {
 label = "Cordenada Y";
 edit_width = 9;
  
 key = "center_y";
 }

 }

 
 :column{
 :button {
  label="Dibujar Circulo";
  key = "draw_circle";
 }

}
}

//CAJA RECTANGULO

:boxed_row{
label = "Rectangulo";
is_enabled = false;
key = "box_rect";

//Centro
:boxed_row{
label = "Centro del rectangulo";

:edit_box {
label = "Eje x";
edit_width = 5;
key = "crx";
}

: edit_box {
label = "Eje y";
edit_width = 5;
key = "cry";
}

}
//Lenght
: edit_box {
label = "Altura";
edit_width = 9;
key = "hrect";
}

//width
: edit_box {
label = "Longitud";
edit_width = 9;
key = "wrect";
}

 :column{
 :button {
  label="Dibujar Rectangulo";
  key = "draw_rect";
 }

}

}

//CAJA LINEA
:boxed_row{
label = "Linea";
key = "box_line";

//Punto Inicial
:boxed_row{
label = "Punto Inicial";

:edit_box {
label = "Eje X";
edit_width = 9;
key = "p1x";
}
: edit_box {
label = "Eje Y";
edit_width = 9;
key = "p1y";
}
}

//Punto Final
:boxed_row{
label = "Punto Final";

:edit_box {
label = "Eje X";
edit_width = 9;
key = "p2x";
}
: edit_box {
label = "Eje Y";
edit_width = 9;
key = "p2y";
}
}

 :column{
 :button {
  label="Dibujar Linea";
  key = "draw_line";
 }

}

}
	
ok_cancel;
}

