/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(inv == true){
	/*for(var xx = 0; xx < ds_grid_width(global.inventario); xx++){
		for(var yy = 0; yy < ds_grid_height(global.inventario); yy++){
			var slot = ds_grid_get(global.inventario,xx,yy)
			draw_sprite(slot[0],0,xx*42,yy*32)
			draw_text(xx*42,yy*32,slot[1])
		}
	}
	for (var i = 0; i < ds_grid_width(global.inventario); i++) {
	    for (var j = 0; j < ds_grid_height(global.inventario); j++) {
			//show_debug_message(ds_grid_get(global.inventario,i,j))
		}
	}*/
	if keyboard_check_pressed(vk_up){
		curs_p_y -=1
	}else if keyboard_check_pressed(vk_down){
		curs_p_y+=1
	}else if keyboard_check_pressed(vk_left){
		curs_p_x -=1
	}else if keyboard_check_pressed(vk_right){
		curs_p_x +=1
	}
	if(curs_p_x < 0){
		curs_p_x = 1	
	}else if(curs_p_x > 1){
		curs_p_x = 0	
	}
	if(curs_p_y < 0){
		curs_p_y = 2	
	}else if(curs_p_y > 2){
		curs_p_y = 0	
	}
	draw_set_color(c_black)
	draw_rectangle(0,0,display_get_width(),display_get_height(),0)
	xscale = 1.59*1.5
	yscale = 1.97*1.5
	draw_sprite_ext(spr_inv,0,640,290,1.5,1.5,0,c_white,1)
	for(var xx = 0; xx < ds_grid_width(global.inventario); xx++){
		for(var yy = 0; yy < ds_grid_height(global.inventario); yy++){
			show_debug_message(curs_p_y)
			var slot = ds_grid_get(global.inventario,xx,yy)
			var _pix = (640+120+30+2) 
			var _piy = (34+105) 
			distx = (xx*(42*xscale))
			disty = (yy*(32*yscale))
			subimg = 0
			
			draw_sprite_ext(slot[0],subimg,_pix+ distx,_piy + disty,xscale,yscale,0,c_white,1)
			draw_set_color(c_white)
			draw_self()
			draw_set_font(fnt_pixel)
			draw_text(_pix + distx+72,_piy+disty+72,slot[1])
			draw_sprite_ext(spr_slot_selector,0,_pix+ curs_p_x*42*xscale,_piy+ curs_p_y*32*yscale,xscale,yscale,0,c_white,1)
			
			slot_atual = ds_grid_get(global.inventario,curs_p_x,curs_p_y) 
			draw_sprite(slot_atual[0],0,0,0)
		}
	}
}