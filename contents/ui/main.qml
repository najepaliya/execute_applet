import QtQuick 2.0 // Item
import org.kde.plasma.plasmoid 2.0 // Plasmoid property
import org.kde.plasma.extras 2.0 as PlasmaExtras // Representation

Item {
    // Default compact view
    Plasmoid.preferredRepresentation: Plasmoid.compactRepresentation
    Plasmoid.icon: plasmoid.configuration.runIcon

    // Expanded view
    Plasmoid.fullRepresentation: PlasmaExtras.Representation {

    }
}