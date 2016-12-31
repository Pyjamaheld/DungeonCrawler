var msg = argument0;
var scriptName = argument1;
var log_level_param = argument2;

//Log Level (0 = Debug, 1 = Info)
var log_level = 1;

var logmsg = scriptName + ": -- " + msg;

if(log_level_param == 0 && log_level == 0){
    show_debug_message(logmsg);
}

if(log_level_param != 0 && log_level == 1){
    show_debug_message(logmsg);
}
