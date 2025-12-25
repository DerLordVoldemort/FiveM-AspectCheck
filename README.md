## Features
- Checks real render aspect ratio (`GetAspectRatio(false)`)
- Warns players immediately when the format is invalid
- Configurable grace period
- Continuous monitoring to prevent post-connect changes
- Fully configurable via `config.lua`

## Installation
1. Place the `aspectcheck` folder into your `resources`.
2. Add `ensure aspectcheck` to your `server.cfg`.
3. Adjust settings in `config.lua` if needed.

## Config Options
- `AllowedAspect` → Target aspect ratio
- `Tolerance` → Floating point tolerance
- `GraceTime` → Time in ms before kick
- `Text` → Position, scale, color of in-game warning

> **Important:** If you change `AspectCheck.AllowedAspect` in `config.lua`, you must also update the warning text in `client/client.lua` and any related messages in `server/server.lua` to reflect the new allowed aspect ratio.

## Support
- Report issues or bugs here: [Issues](https://github.com/DerLordVoldemort/FiveM-AspectCheck/issues)
- Donations: [PayPal](https://www.paypal.com/paypalme/LiederJustin10)