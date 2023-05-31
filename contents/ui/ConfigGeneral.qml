import QtQuick 2.0
import QtQuick.Controls 2.5
import org.kde.kirigami 2.4 as Kirigami

Item {
    id: page
    width: childrenRect.width
    height: childrenRect.height

    property alias cfg_runIcon: runIcon.value
    property alias cfg_stopIcon: stopIcon.value

    Kirigami.FormLayout {
        anchors.left: parent.left
        anchors.right: parent.right

        ConfigIcon {
            id: runIcon
            Kirigami.FormData.label: i18nd("plasma_applet_org.kde.plasma.kickoff", "Run Icon:")
        }
        ConfigIcon {
            id: stopIcon
            Kirigami.FormData.label: i18nd("plasma_applet_org.kde.plasma.kickoff", "Stop Icon:")
        }
    }
}