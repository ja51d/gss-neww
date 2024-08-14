import QtQuick 2.15
import QtQuick.Controls 2.15



    Rectangle {


         property double landingspeed: 30


        width: parent.width
        height: parent.height
        color: "#2C3E50"

        Column {
            anchors.centerIn: parent
            spacing: 20

            Text {
                text: "İniş Hızı"
                font.pixelSize: 28
                   font.family: "Copperplate"
                color: "#ECF0F1"
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Rectangle {
                width: 300
                height: 100
                color: "#34495E"
                radius: 10
                border.color: "#ECF0F1"
                border.width: 2

                Text {
                    id: speedDisplay
                    text: "0.00 m/s"
                    font.pixelSize: 40
                    font.family: "Copperplate"
                    color: "#ECF0F1"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.centerIn: parent
                }
            }
        }


    // Simulation of speed change
    Timer {
        interval: 1000; running: true; repeat: true
        onTriggered: {
            let speed = Math.random() * 2;
            speedDisplay.text = speed.toFixed(1) + " m/s";
        }
    }
}
