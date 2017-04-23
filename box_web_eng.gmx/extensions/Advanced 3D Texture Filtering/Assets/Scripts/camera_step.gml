/// camera_step();

// Check for mouse click
if( mouse_check_button_pressed( mb_right )){
    // Lock mouse
    M_LOCK_X = mouse_x;
    M_LOCK_Y = mouse_y;
}

// Check if mouse is being held down
if( mouse_check_button( mb_right )){
    // Mouse look Code
    var CENTER_X, CENTER_Y;
    CENTER_X = M_LOCK_X;//window_get_width() / 2;
    CENTER_Y = M_LOCK_Y;//window_get_height() / 2;
    
    var diff_x, diff_y;
    diff_x = CENTER_X - window_mouse_get_x();
    diff_y = CENTER_Y - window_mouse_get_y();
    
    // Update DIRECTION and PITCH
    dir   += diff_x/8;
    pitch += diff_y/8;
    
    if( pitch > 89){ pitch  = 89; }
    if( pitch < -89){ pitch = -89; }
    
    //dir = 0;
    //pitch = 0;
    
    // Update View Vector
    dxa = cos( degtorad( -dir ) ) * cos( degtorad( pitch ) );
    dya = sin( degtorad( -dir ) ) * cos( degtorad( pitch ) );
    dza = sin( degtorad( pitch ) );
    
    dx += (dxa - dx)*0.20;
    dy += (dya - dy)*0.20;
    dz += (dza - dz)*0.20;
    
    // Reset Mouse
    window_mouse_set( M_LOCK_X, M_LOCK_Y );
}

// MOVE
if( !keyboard_check( vk_control )){
    switch( global.CameraMode ){
        case 0:
            var cam_speed = 2.75;
            if( keyboard_check( ord("W" ))){ cx += dx*cam_speed; cy += dy*cam_speed;  }
            if( keyboard_check( ord("A" ))){ cx += dy*cam_speed; cy += -dx*cam_speed; }
            if( keyboard_check( ord("S" ))){ cx -= dx*cam_speed; cy -= dy*cam_speed;  }
            if( keyboard_check( ord("D" ))){ cx += -dy*cam_speed; cy+= dx*cam_speed;  }
            if( keyboard_check( ord("Q" )) || mouse_wheel_down() ){   cz += 3.5;        }
            if( keyboard_check( ord("E" )) || mouse_wheel_up() ){ cz -= 3.5;         }
        break;
        case 1:
            var cam_speed = 1.0;
            if( keyboard_check( ord("W" ))){ cx += dx*cam_speed; cy += dy*cam_speed;  cz += dz*cam_speed;  }
            if( keyboard_check( ord("A" ))){ cx += dy*cam_speed; cy += -dx*cam_speed; }
            if( keyboard_check( ord("S" ))){ cx -= dx*cam_speed; cy -= dy*cam_speed;  cz -= dz*cam_speed;  }
            if( keyboard_check( ord("D" ))){ cx += -dy*cam_speed; cy+= dx*cam_speed;  }
            if( keyboard_check( ord("Q" )) || mouse_wheel_down() ){   cz += 1.0;         }
            if( keyboard_check( ord("E" )) || mouse_wheel_up() ){ cz -= 1.0;         }
        break;
    }
}

// Smooth motion
xs += (cx - xs) * 0.125*0.5;
ys += (cy - ys) * 0.125*0.5;
zs += (cz - zs) * 0.125*0.5;