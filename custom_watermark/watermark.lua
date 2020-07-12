-- Ne pas toucher / Don't touch

function KeyboardInput(TextEntry, ExampleText, MaxStringLength)
    AddTextEntry("FMMC_KEY_TIP1", TextEntry .. "")
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLength)
    blockinput = true

    while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
        Citizen.Wait(0)
    end

    if UpdateOnscreenKeyboard() ~= 2 then
        local result = GetOnscreenKeyboardResult()
        Citizen.Wait(500)
        blockinput = false
        return result
    else
        Citizen.Wait(500)
        blockinput = false
        return nil
    end
end

RegisterCommand("watermark", function(source, args, rawCommand)
	local text = KeyboardInput("Texte du watermark", "", 150)
	watermark = text
end, false)

-- Config

Citizen.CreateThread(function()
	while true do
		Wait(10)
		SetTextColour(200, 200, 200, 255) -- r, g, b, alpha
		SetTextFont(1)
		SetTextScale(0.4, 0.4)
		SetTextEdge(1, 0, 0, 0, 205)
		SetTextEntry("STRING")
		AddTextComponentString(watermark)
		DrawText(0.005, 0.001)
	end
end)

-- by Garfieldouille#0001