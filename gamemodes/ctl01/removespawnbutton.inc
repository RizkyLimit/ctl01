hook OnPlayerRequestClass(playerid, classid)
{
	SetSpawnInfo(playerid,0,299,0,0,0,0,0,0,0,0,0,0);
	SpawnPlayer(playerid);
	return 1;
}
hook OnPlayerConnect(playerid)
{
	TogglePlayerSpectating(playerid, 1);
	return 1;
}