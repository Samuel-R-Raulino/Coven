/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var rows = 2;
var cols = 3;
global.inventario = ds_grid_create(rows, cols);

// Opcional: Inicializar o grid com valores padrão
for (var xx = 0; xx < ds_grid_width(global.inventario); xx++) {
    for (var yy = 0; yy < ds_grid_height(global.inventario); yy++) {
		 ds_grid_set(global.inventario, xx, yy, [spr_slot,0,"slot"]);
    }
}
inv = false

curs_p_x = 0
curs_p_y = 0