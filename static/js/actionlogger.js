function log(message){
    now = new Date()
    h = now.getHours();
    m = now.getMinutes()
    s = now.getSeconds()

    $("#logcontainer").prepend(h+":"+m+":"+s+"> " + message + "\n");
}