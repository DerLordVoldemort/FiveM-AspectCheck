local wrongSince = nil

-- Monitor aspect ratio
CreateThread(function()
    Wait(5000)

    while true do
        local aspect = GetAspectRatio(false)
        local valid = math.abs(aspect - AspectCheck.AllowedAspect) <= AspectCheck.Tolerance

        if not valid then
            if not wrongSince then
                wrongSince = GetGameTimer()
            end

            if GetGameTimer() - wrongSince >= AspectCheck.GraceTime then
                TriggerServerEvent("aspectcheck:kick", aspect)
                wrongSince = nil
            end
        else
            wrongSince = nil
        end

        Wait(500)
    end
end)

-- Display permanent warning
CreateThread(function()
    while true do
        if wrongSince then
            local remaining = math.max(0, math.floor((AspectCheck.GraceTime - (GetGameTimer() - wrongSince)) / 1000))

            SetTextFont(AspectCheck.Text.Font)
            SetTextProportional(1)
            SetTextScale(AspectCheck.Text.ScaleX, AspectCheck.Text.ScaleY)
            SetTextColour(table.unpack(AspectCheck.Text.Color))
            SetTextDropshadow(0, 0, 0, 0, 255)
            SetTextEdge(1, 0, 0, 0, 255)
            SetTextCentre(AspectCheck.Text.Centre)
            SetTextOutline()
            BeginTextCommandDisplayText("STRING")
            AddTextComponentSubstringPlayerName(
                "Your aspect ratio is NOT allowed!\nChange it within ~r~"..remaining.." seconds~s~ to 16:9."
            )
            EndTextCommandDisplayText(AspectCheck.Text.X, AspectCheck.Text.Y)
        end
        Wait(0)
    end
end)