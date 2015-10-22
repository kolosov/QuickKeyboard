import QtQuick 2.0
import QuickKeyboard 1.0

import QtGraphicalEffects 1.0

Button {
	id: btn
	property int row
	property int col
	property Item buttonPreview
	property bool hasPreview: true
	GridLayout.row: row
	GridLayout.col: col
	GridLayout.colSpan: 2
	GridLayout.rowSpan: 2
    width: 30
    height: 30

    BorderImage {
		anchors.fill: parent
		source: mouseDown || active ? "qrc:/gfx/quickkeyboard/btn_pressed.png" : "qrc:/gfx/quickkeyboard/btn.png"
		border { left: 2; top: 2; right: 2; bottom: 2 }
    }

	Text {
		text: label
        //color: "white"
        color: "black"
		anchors {
			verticalCenter: parent.verticalCenter
			left: parent.left
			right: parent.right
			leftMargin: 5
			rightMargin: 5
		}
		font.pixelSize: parent.height / 2
        //font.weight: Font.Bold
        //style: Text.Raised; styleColor: "#000000"
		maximumLineCount: 1
		fontSizeMode: Text.Fit
		horizontalAlignment: Text.AlignHCenter
	}

	Component {
		id: buttonPreviewComponent
		BtnPreview {hasPreview: btn.hasPreview}
	}

	Timer {
		id: createPreviewTimer
		interval: 40

		onTriggered: {
			if (buttonPreview !== null) {
				buttonPreview.destroy();
				buttonPreview = null;
			}
			buttonPreview = buttonPreviewComponent.createObject(keyboardOverlay, {"btn": btn, "content": typeof(content) == "undefined" ? undefined: content, "keyboard": keyboard});
		}
	}

	onMouseDownChanged: {
		if (mouseDown) {
			//buttonPreview = buttonPreviewComponent.createObject(keyboardOverlay, {"btn": btn, "content": typeof(content) == "undefined" ? undefined: content, "keyboard": keyboard});
			createPreviewTimer.restart();
		}
		else {
			createPreviewTimer.stop();
			if (buttonPreview !== null) {
				buttonPreview.destroy();
				buttonPreview = null;
			}
		}
	}
}
