switch (mpos) {
       case 0: { //continue game
            pause = 0;
            break;
       }
       
       case 1: { //options
            room_goto(r_menu);
            break;
       }
       
       case 2: { // menu 
           game_end();
           break;
       }

       default: break;
 }
