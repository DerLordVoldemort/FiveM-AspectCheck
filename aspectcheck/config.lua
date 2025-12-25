AspectCheck = {}

-- Allowed aspect ratio (16:9)
AspectCheck.AllowedAspect = 16 / 9

-- Tolerance for rounding errors
AspectCheck.Tolerance = 0.01

-- Grace period in milliseconds before kick
AspectCheck.GraceTime = 30000

-- Text settings for in-game warning
AspectCheck.Text = {
    X = 0.5,
    Y = 0.05,
    ScaleX = 0.5,
    ScaleY = 0.5,
    Font = 4,
    Color = {255, 0, 0, 255},
    Centre = true
}
