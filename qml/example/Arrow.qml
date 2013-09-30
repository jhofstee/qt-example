import QtQuick 1.1

Item {
	property real fromX
	property real fromY
	property real toX
	property real toY

	/* don't draw outside the said rectangle */
	x: fromX
	y: fromY
	width: priv.dx
	height: priv.dy
	clip: true

	/* private properties */
	QtObject{
		id: priv
		property real dx: toX - fromX
		property real dy: toY - fromY
		property real angle: Math.atan2(dx, -dy)
		property real angleDeg: angle * 180 / Math.PI
		property real length: Math.sqrt(Math.pow(dx, 2) + Math.pow(dy, 2))
	}

	Rectangle {
		color: "blue"
		width: 10
		height: priv.length
		rotation: priv.angleDeg
		anchors.centerIn: parent
	}
}
