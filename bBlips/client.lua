Blips = nil

Blips.Map = {
  {name = "[Base] USA", color = 1, id = 557, tailleIcon = 1.0, Area = 1000.0, pos = vector3(-1035.14, -3013.1, 13.03)},
  {name = "[Base] France", color = 38, id = 557, tailleIcon = 1.0, Area = 1000.0, pos = vector3(-2130.74, 3269.06, 134.25)},
  {name = "[Base] Chine", color = 5, id = 557, tailleIcon = 1.0, Area = 1000.0, pos = vector3(3530.15, 3782.21, 30.07)},
}

Citizen.CreateThread(function()
      Citizen.Wait(1000)
    for _,v in pairs(Blips.Map) do
        local blipMap = AddBlipForCoord(v.pos)
        SetBlipSprite(blipMap, v.id)
        SetBlipDisplay(blipMap, 4)
        SetBlipScale(blipMap, v.tailleIcon)
        SetBlipColour(blipMap, v.color)
        SetBlipAsShortRange(blipMap, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(v.name)
        EndTextCommandSetBlipName(blipMap)
        SetBlipPriority(blipMap, 5)
    end
end)

Citizen.CreateThread(function()
      Citizen.Wait(1000)
    for _,v in pairs(Blips.Map) do
        local blip = AddBlipForRadius(v.pos, v.Area)
        SetBlipColour(blip, v.color)
        SetBlipAlpha(blip, 128)
    end
end)