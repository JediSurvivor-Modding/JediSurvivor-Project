local CharReplacer = FindFirstOf("BP_CharacterReplacer_C")

local InitialPawn = FindFirstOf("BP_Hero_C")

local function Event(Pawn)
	if not (CharReplacer:IsValid()) then
	CharReplacer = FindFirstOf("BP_CharacterReplacer_C")
	end

	if not Pawn == InitialPawn then
		InitialPawn = Pawn
	end

	if (CharReplacer:IsValid()) then
		CharReplacer:Reinitialize()
	else
		print("Lua ClientRestart: Char Replacer Not Valid!")
	end
	end


RegisterHook("/Script/Engine.PlayerController:ClientRestart", function(self, NewPawn)
    print("Client Restart")
	Event(NewPawn)
end)