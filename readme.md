# execute_applet
- an applet to execute a configurable command
- easiest way to install is on the [KDE Store](https://store.kde.org/p/2044766)
![configuration](https://github.com/najepaliya/execute_applet/assets/133005733/69602a16-46fe-4c75-8a1d-c83998c17c70)

# features
- configurable run and busy panel icons
- configurable command to execute
- configurable invoking global shortcut
- stop a running process

# limitations (potentially due to Plasma's APIs)
- global shortcut invocation focuses the applet

# examples

## simple, quick-to-execute command: Overview effect on KDE Plasma 5
- Command: qdbus org.kde.kglobalaccel /component/kwin invokeShortcut Overview

https://github.com/najepaliya/execute_applet/assets/133005733/138d2ef2-6d04-4a1d-9bac-be3b3f1d7076
