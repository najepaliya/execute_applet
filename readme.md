# execute_applet
- an applet to execute a configurable command

# features
- configurable run and busy panel icons
- configurable command to execute
- configurable invoking global shortcut

# limitations (due to Plasma's APIs)
- stopping running commands
- global shortcut invocation focuses the applet

# examples

## simple, quick-to-execute command
- Command: qdbus org.kde.kglobalaccel /component/kwin invokeShortcut Overview
<video src='media/overview.mov' width=180/>