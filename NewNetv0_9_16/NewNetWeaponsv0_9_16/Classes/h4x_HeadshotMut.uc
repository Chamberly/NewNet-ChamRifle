class h4x_HeadshotMut expands Mutator;

var string Prefix;

function PreBeginPlay()
{
	Prefix = class'ST_Mutator'.default.Prefix$Class'UTPure'.Default.ThisVer$".";
	Super.PreBeginPlay();
}

function ModifyPlayer(Pawn Other)
{
	DeathMatchPlus(Level.Game).GiveWeapon(Other,Prefix$"h4x_Rifle");

	if ( NextMutator != None )
		NextMutator.ModifyPlayer(Other);
}

function bool CheckReplacement(Actor Other, out byte bSuperRelevant)
{
	if ( Other.IsA('weapon') )
	{
		if ( Other.IsA('aaaa') )
		{
			ReplaceWith(Other,Prefix$"h4x_Deemer");
			return false;
		}

		if ( !Other.IsA('h4x_Deemer') && !Other.IsA('h4x_Rifle') )
		{
			if ( Weapon(Other).Owner == None )
				ReplaceWith(Other,Prefix$"h4x_Rifle");

			return false;
		}
	}
	else if ( Other.IsA('ammo') )
	{
		if ( !Other.IsA('h4x_Bullets') && !Other.IsA('WarheadAmmo') )
		{
			ReplaceWith(Other,Prefix$"h4x_Bullets");
			return false;
		}
	}
	else if ( Other.IsA('TournamentHealth') )
		return false;


	return true;
}

defaultproperties
{
}
