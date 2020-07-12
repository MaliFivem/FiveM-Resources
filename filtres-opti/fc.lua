-- Partie filtre // Sans menu, cmd. A vous de les mettres où vous voulez.

    -- Affichage basique
    ClearTimecycleModifier()

    -- Vue & lumières améliorées
    SetTimecycleModifier('Tunnel')

    -- Couleurs amplifiées
    SetTimecycleModifier('rply_saturation')

    -- Noir & Blanc
    SetTimecycleModifier('rply_saturation_neg')


-- Partie optimisation // Modifier le "Wait(10000)" pour changer l'intervalle entre chaque clear.

Citizen.CreateThread(function()
	while true do
		ClearAllBrokenGlass()
		ClearAllHelpMessages()
		ClearBrief()
		ClearGpsFlags()
		ClearPrints()
		ClearSmallPrints()
		ClearReplayStats()
		ClearFocus()
        ClearHdArea()
        LeaderboardsClearCacheData()
        LeaderboardsReadClearAll()
	 -- Vérifier si gênant 
		ClearThisPrint()
		ClearPedInPauseMenu()
		ClearFloatingHelp()
		ClearGpsPlayerWaypoint()
		ClearGpsRaceTrack()
	print("^2 Client FiveM nettoyé")
	Wait(100000)
	end
end)