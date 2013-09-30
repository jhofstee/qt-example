import QtQuick 1.1

Item {
	width: 420
	height: 420

	Rectangle {
		id: left
		x: 0
		y: 0
		height: 100
		width: 40
		color: "red"
	}

	Arrow {
		fromX: left.right /*  Unable to assign QDeclarativeAnchorLine to double */
		fromY: left.y + left.height / 2; /* ugly version os verticalCenter but works */
		toX: right.x; /* works, but left is preferred and won work */
		toY: right.y + right.height / 2; /* again ugly, why does verticalCenter not work */
	}

	Rectangle {
		id: right
		x: 400
		y: 300
		height: 100
		width: 20
		color: "black"
	}
}
