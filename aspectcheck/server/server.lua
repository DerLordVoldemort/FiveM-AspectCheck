-- Kick players with invalid aspect ratio
RegisterNetEvent("aspectcheck:kick")
AddEventHandler("aspectcheck:kick", function(aspect)
    DropPlayer(source,
        "Invalid aspect ratio detected!\n\n" ..
        "Please set your GTA to 16:9 and reconnect."
    )
end)