Mic Volume Fix v1.0
Created by MJF2020
Date: March 23, 2026

== What is this? ==

A lightweight Windows system tray utility for Paltalk users.

Many users have noticed that their microphone volume gets lowered or
muted while using Paltalk. This can happen when joining rooms, during
calls, or seemingly at random. Whether this is caused by Paltalk itself,
Windows communication activity detection, or other software adjusting
audio levels, the result is the same: people can't hear you properly and
you may not even realize it happened.

This tool prevents that by continuously monitoring your default
microphone and immediately restoring it to 100% volume whenever
something changes it.

== What it does ==

- Monitors your default microphone every second
- If anything lowers the volume below 100%, it restores it immediately
- If the mic gets muted by any application, it unmutes it
- Shows a Windows notification when a correction is made
- System tray icon: green mic = active, grey mic with slash = paused
- Right-click the tray icon to see stats, pause/resume, or quit

== Features ==

- Single instance: won't run twice
- Auto-reconnect: handles mic disconnects and device changes
- Start with Windows: optional, toggle from the tray menu
- Pause toggle: temporarily disable monitoring from the tray menu
- Tiny footprint: ~250KB, no installer needed, no dependencies

== Files ==

mic_volume_fix_arm64.exe  - For Windows on ARM (Surface Pro X, etc.)
mic_volume_fix_x64.exe    - For Windows on Intel/AMD (most PCs)

== Usage ==

1. Download the correct exe for your system
2. Run it - a green microphone icon appears in the system tray
3. That's it. It runs silently in the background.

Right-click the tray icon for options:
- Mic name and correction statistics
- Pause/resume monitoring
- Start with Windows toggle
- Quit

== System Requirements ==

Windows 10 or later (x64 or ARM64)
A microphone
