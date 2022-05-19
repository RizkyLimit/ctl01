stock GetName(playerid)
{
	new playername[MAX_PLAYER_NAME];
	GetPlayerName(playerid,playername,sizeof(playername));
	return playername;
}
stock GetNameWeapon(weaponid)
{
	new weaponname[32];
	GetWeaponName(weaponid,weaponname,sizeof(weaponname));
	return weaponname;
}