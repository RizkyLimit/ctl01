#include <a_samp>
#include <sscanf2>
#include <streamer>

#include <YSI_Coding/y_hooks>
#include <YSI_Visual/y_commands>

#include <easyDialog>

#include "modules/global/function"

#include "ctl01/removespawnbutton"
#include "ctl01/mapping"

main() {}

public OnGameModeInit()
{
	new curtick = GetTickCount();
    UsePlayerPedAnims();

	LoadMapping();
	printf("\nServer needs %d millisecond to load the Mapping!", (GetTickCount()-curtick));
    return 1;
}
public OnPlayerConnect(playerid)
{
	RemoveBuilding(playerid);
	Dialog_Show(playerid,DLogin,DIALOG_STYLE_MSGBOX,"Selamat Datang","Tekan tombol start untuk mulai!","Start","Quit");
	InterpolateCameraPos(playerid, 1807.7985, -1499.5435, 46.9579, 1656.3359, -1497.8246, 53.6404, 30000, CAMERA_MOVE);
	InterpolateCameraLookAt(playerid, 1807.7985, -1499.5435, 46.9579, 1656.3359, -1497.8246, 53.6404, 30000, CAMERA_MOVE);
	return 1;
}

Dialog:DLogin(playerid, response, listitem, inputtext[])
{
	if(!response) return Dialog_Show(playerid,DLogin,DIALOG_STYLE_MSGBOX,"Selamat Datang","Tekan tombol start untuk mulai!","Start","Quit");
	TogglePlayerSpectating(playerid,0);
	SetSpawnInfo(playerid,0,299,1759.0189,-1898.1260,13.5622,266.4503,0,0,0,0,0,0);
	SpawnPlayer(playerid);
	return 1;
}