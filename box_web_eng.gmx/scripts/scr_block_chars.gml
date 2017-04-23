///scr_block_chars():
if (string_length(keyboard_string) > 15)
{
    keyboard_string = string_copy(keyboard_string, 1, 15);
}
keyboard_string=string_replace(keyboard_string," ","_");
keyboard_string=string_replace(keyboard_string,":","");
keyboard_string=string_replace(keyboard_string,";","");
keyboard_string=string_replace(keyboard_string,",","");
keyboard_string=string_replace(keyboard_string,".","");
