if (file_exists("lang.txt")) {
    file = file_text_open_read("lang.txt");
    language = file_text_read_real(file);
    file_text_close(file);
 }
  else {
      file = file_text_open_write("lang.txt");
      file_text_write_real(file, 0);
      file_text_close(file);
  }

switch (language) {
    case 0 : {
        menuGameButton[0] = "Continue";
        menuGameButton[1] = "Options";
        menuGameButton[2] = "Menu";
        menuGameButton[3] = "Close the game";

    }
    break;
    
    case 1 : {
        menuGameButton[0] = "Продолжить";
        menuGameButton[1] = "Настройки";
        menuGameButton[2] = "Меню";
        menuGameButton[3] = "Выйти из игры";

    }
    break;
    
    default : break;
}

obj_player.vspeed = 0;
obj_player.gravity = 0;
    
obj_tube.hspeed = 0;
obj_point.hspeed = 0;
    
obj_star.hspeed = 0;
obj_farStar.hspeed = 0;


//instance_activate_object(obj_inGameMenu);
instance_deactivate_object(obj_starSpawner);
instance_deactivate_object(obj_tubeSpawner);
instance_deactivate_object(obj_drawScore);
instance_deactivate_object(obj_hatSpawner)


draw_set_color(c_black);

draw_set_alpha(0.5);

draw_rectangle(0, 0, window_get_width(), window_get_height(), 0);

draw_set_halign(fa_center);

draw_set_font(font_menu);

draw_set_color(c_red);

draw_set_alpha(1);

switch (language) {
    case 0 : {
        draw_text(window_get_width() / 2, window_get_height() / 2, "*Pause*");
    }
    break;
    
    case 1 : {
        draw_text(window_get_width() / 2, window_get_height() / 2, "*Пауза*");
    }
    break;
    
    default : break;
}


draw_set_color(c_white);

draw_set_alpha(1);

instance_activate_object(obj_inGameMenu);

draw_set_color(c_white);

