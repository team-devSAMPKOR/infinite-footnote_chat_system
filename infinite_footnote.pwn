new string[384],temp[256], bool:footnoted,before;
new name[MAX_PLAYER_NAME];
GetPlayerName(playerid, name, sizeof(name));

format(string,sizeof(string),"%s: ",name);
for(new i=0; i<strlen(text); i++){
    if(text[i] == '*'){
        strmid(temp,text,before,i);
        if(footnoted){
            format(string,sizeof(string),"%s%s*{FFFFFF}",string,temp),footnoted = false;
        }else{
            format(string,sizeof(string),"%s%s{B51B84}*",string,temp),footnoted = true;
        }
        before = i+1;
    }
}
strcat(string,strright(text,strlen(text)-before));