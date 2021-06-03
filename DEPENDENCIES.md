## Dependencies

- Windows 10
- [AutoHotkey](https://autohotkey.com/download/) v1.1+
- [VirtualDesktopAccessor.dll](https://github.com/Ciantic/VirtualDesktopAccessor)

## Running automatically

### Running on boot

You can make the script run on every boot with either of the methods below.

#### Simple

1. Press `Win + R`, enter `shell:startup`, press `OK`
2. Create a shortcut to the `window-mover.ahk` file here

#### Enabling hotkeys within windows with elevated privileges

Windows prevents hotkeys from working in windows that were launched with higher elevation than the AutoHotKey script (such as CMD or Powershell terminals that were launched as Administrator). As a result, Windows Desktop Switcher hotkeys will only work within these windows if the script itself is `Run as Administrator`, due to the way Windows is designed. 

You can do this by creating a scheduled task to invoke the script at logon. You may use 'Task Scheduler', or create the task in powershell as demonstrated.
```
# Run the following commands in an Administrator powershell prompt. 
# Be sure to specify the correct path to your desktop_switcher.ahk file. 

$A = New-ScheduledTaskAction -Execute "PATH\TO\desktop_switcher.ahk"
$T = New-ScheduledTaskTrigger -AtLogon
$P = New-ScheduledTaskPrincipal -GroupId "BUILTIN\Administrators" -RunLevel Highest
$S = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries -ExecutionTimeLimit 0
$D = New-ScheduledTask -Action $A -Principal $P -Trigger $T -Settings $S
Register-ScheduledTask WindowsDesktopSwitcher -InputObject $D
```

The task is now registered and will run on the next logon, and can be viewed or modified in 'Task Scheduler'.

### Re-running

AHK occasionally has issues when resuming from hibernate or sleep, causing hotkeys to work, but the taskbar icon to stop updating. In this case it may be helpful to set a Windows Task with the following options:

- Configure for Windows 10
- Triggers:
  - User logon (replaces adding the script to startup folder)
  - Wake from sleep/hibernate:
    - on event` -> log: `system` -> source: `power-troubleshooter` -> event id: `1
    - alternatively, on workstation lock/unlock
- Conditions:
  - Remove any irrelevant conditions that come with the default, e.g. starting only on AC Power
- Settings:
  - Remove the limit on task run duration and set the task to `stop the existing instance` when re-triggered

## Original credits

- Thanks to [Ciantic/VirtualDesktopAccessor](https://github.com/Ciantic/VirtualDesktopAccessor) (for the DLL) and [sdias/win-10-virtual-desktop-enhancer](https://github.com/sdias/win-10-virtual-desktop-enhancer) (for the DLL usage samples) so that our code can move windows between desktops.