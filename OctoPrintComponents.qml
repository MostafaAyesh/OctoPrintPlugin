import UM 1.2 as UM
import Cura 1.0 as Cura

import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
import QtQuick.Window 2.1

Item
{
    id: base

    property bool printerConnected: Cura.MachineManager.printerOutputDevices.length != 0
    property bool octoPrintConnected: printerConnected && Cura.MachineManager.printerOutputDevices[0].hasOwnProperty("octoprintVersion")

    UM.I18nCatalog{id: catalog; name:"cura"}
}