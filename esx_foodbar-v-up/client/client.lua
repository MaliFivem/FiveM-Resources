RegisterNetEvent('foodbar-v:updateStatus')
AddEventHandler('foodbar-v:updateStatus', function(Status)
    status = Status
    SendNUIMessage({
        action = "updateStatus",
        st = Status,
    })
end)

RegisterNetEvent('foodbar-v:displayFalse')
AddEventHandler('foodbar-v:displayFalse', function()
    SendNUIMessage({openCinema = false})
end)

RegisterNetEvent('foodbar-v:displayTrue')
AddEventHandler('foodbar-v:displayTrue', function()
    SendNUIMessage({openCinema = true})
end)

-- Garfieldouille#0001
