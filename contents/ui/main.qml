import QtQuick 2.0 // Item
import org.kde.plasma.plasmoid 2.0 // Plasmoid property
import org.kde.plasma.extras 2.0 as PlasmaExtras // Representation
import org.kde.plasma.core 2.0 as PlasmaCore // DataSource

Item {
    id: widget
    property bool busy: false 
    Plasmoid.preferredRepresentation: Plasmoid.compactRepresentation
    // Plasmoid.fullRepresentation: null
    Plasmoid.icon: busy ? plasmoid.configuration.stopIcon : plasmoid.configuration.runIcon

    PlasmaCore.DataSource {
		id: executable
		engine: "executable"
		connectedSources: []
		onNewData: {
			var exitCode = data["exit code"]
			var exitStatus = data["exit status"]
			var stdout = data["stdout"]
			var stderr = data["stderr"]
			exited(sourceName, exitCode, exitStatus, stdout, stderr)
			disconnectSource(sourceName) // cmd finished
		}
		function exec(cmd) {
			if (cmd) {
				connectSource(cmd)
			}
		}
		signal exited(string cmd, int exitCode, int exitStatus, string stdout, string stderr)
	}

    Connections {
        target: executable
        function onExited () {
            widget.busy = false
        }
    }

    Plasmoid.compactRepresentation: MouseArea {
        PlasmaCore.IconItem {
            id: buttonIcon
            // visible: plasmoid.configuration.show == 0 || plasmoid.configuration.show == 2 ? true : false
            height: parent.height
            width: parent.height
            source: plasmoid.icon
            // active: parent.containsMouse || compactDragArea.containsDrag
            // smooth: true
        }
        onClicked: {
            widget.busy = true;
            executable.exec ("sleep 2s")
        }
    }
}