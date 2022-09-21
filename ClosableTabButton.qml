import QtQuick 2.0
import QtQuick.Controls 2.15

TabButton {
  property string title: ''
  signal closed()

  width: implicitWidth

  contentItem: Row {
    property string txtColor: checked ? 'black' : 'white'

    Text {
      text: title+' '
      verticalAlignment: Text.AlignVCenter
      height: parent.height
      color: parent.txtColor
    }
    Text {
      text: 'X '
      verticalAlignment: Text.AlignVCenter
      height: parent.height
      color: parent.txtColor
      MouseArea {
        anchors.fill: parent
        onClicked: closed()
      }
    }
  }

  background: Rectangle {
    color: checked ? 'white' : '#a0a0a0'
  }
}
