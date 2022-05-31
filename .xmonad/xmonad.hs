import XMonad
import XMonad.Actions.SpawnOn
import XMonad.Hooks.FadeWindows
import XMonad.Util.EZConfig
import XMonad.Util.SpawnOnce
-- import Data.Map

-- myMouseBindings (XConfig {XMonad.modMask = modMask}) = Data.Map.fromList $ []
-- myMouseBindings (XConfig {}) = Data.Map.fromList $ []

main = xmonad $ def
  {
    terminal = "alacritty",
    modMask = mod4Mask,
    borderWidth = 0,
    focusFollowsMouse = False,
    -- mouseBindings = XConfig {},
    logHook = fadeWindowsLogHook $ composeAll [
      opaque,
      isUnfocused --> transparency 0.3
    ],
    manageHook = composeAll
    [
      className =? "Alacritty" --> doShift "1",
      className =? "KeePassXC" --> doShift "2",
      className =? "Chromium" --> doShift "3",
      className =? "Min" --> doShift "4",
      className =? "VirtualBox Manager" --> doShift "9",
      className =? "VirtualBox Machine" --> doShift "9"
    ] <+> manageSpawn <+> manageHook def,
    startupHook = do
      spawnOnce "alacritty"
      spawnOnce "chromium gmail.com app.slack.com/client teams.microsoft.com outlook.office.com/mail"
      spawnOnce "min"
      spawnOnce "keepassxc"
  } `additionalKeysP` [
    ("M-c", spawn "dunstctl close-all"),
    ("<Print>", spawn "~/bin/screenshot.sh"),
    ("<XF86MonBrightnessUp>", spawn "~/bin/dunst/backlight.sh 1"),
    ("<XF86MonBrightnessDown>", spawn "~/bin/dunst/backlight.sh -1"),
    ("<XF86AudioLowerVolume>", spawn "~/bin/dunst/volume.sh 2dB- unmute"),
    ("<XF86AudioRaiseVolume>", spawn "~/bin/dunst/volume.sh 2dB+ unmute"),
    ("<XF86AudioMute>", spawn "~/bin/dunst/volume.sh mute"),
    ("<XF86Calculator>", spawn "mate-calculator")
  ]
