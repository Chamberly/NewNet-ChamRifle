class NewNetCham expands NewNetArena;

function PostBeginPlay()
{
	Super.PostBeginPlay();
	class'UTPure'.default.zzbH4x = true;
}

defaultproperties
{
	 DefaultWeapon=class'ChamRifle'
     AmmoNames(0)=ChamBullets
}