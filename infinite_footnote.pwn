stock Stringfootnote(playerid, input[]){
    new send[256], temp[64];
    new bef;
    new bool:flag;
 
    new name[MAX_PLAYER_NAME];
    GetPlayerName(playerid, name, sizeof(name));
 
    format(send,sizeof(send),"%s : ",name);
 
    for(new i=0; i<strlen(input); i++){
        if(input[i] == '*'){
 
            strmid(temp, input, bef, i);
            
            if(!foot) format(send,sizeof(send),"%s%s*{FFFFFF}",send, temp);
            else format(send,sizeof(send),"%s%s{B51B84}*",send, temp);
 
            flag = !flag;
            bef = i+1;
        }
    }
 
    return strcat(send,input+(strlen(input)-bef));
}
