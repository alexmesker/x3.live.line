autowatch = 1;

inlets = 1;
outlets = 1;

mgraphics.init();
mgraphics.autofill = 0;

/*
x3.live.line for v8ui
v.2607202044

Alex Mesker
x37v.com
max-tricks.com
*/


// --------------------------------------------------
// STATE
// --------------------------------------------------

/*
	Endpoint notation:

	tl = top edge of top-left corner
	lt = left edge of top-left corner

	tr = top edge of top-right corner
	rt = right edge of top-right corner

	bl = bottom edge of bottom-left corner
	lb = left edge of bottom-left corner

	br = bottom edge of bottom-right corner
	rb = right edge of bottom-right corner
*/

var startEndpoint = "lt";
var endEndpoint = "rb";

var shapeMode = "auto";
var curveAmount = 0.5; // 0.55

var startStyle = "none";
var endStyle = "arrow";

var terminatorSize = 8;
var lineWidth = 2;

/*
	The inset grows automatically when necessary
	to keep terminators inside the v8ui bounds.
*/

var minimumInset = 10;

var lineColor = [
	0.75,
	0.75,
	0.75,
	1
];
var backgroundColor = [0, 0, 0, 0];


// --------------------------------------------------
// CREATION ARGUMENTS
// --------------------------------------------------

function applyCreationArguments() {
	if (
		!jsarguments ||
		jsarguments.length <= 1
	) {
		return;
	}

	/*
		jsarguments[0] contains the script filename.

		Everything after it comes from @jsarguments.
	*/

	var args = Array.prototype.slice.call(
		jsarguments,
		1
	);

	var index = 0;

	while (index < args.length) {
		var key = String(
			args[index]
		);

		index++;

		switch (key) {
			case "start":
				if (index < args.length) {
					setStartEndpoint(
						String(args[index])
					);

					index++;
				}
				break;

			case "end":
				if (index < args.length) {
					setEndEndpoint(
						String(args[index])
					);

					index++;
				}
				break;

			case "startstyle":
				if (index < args.length) {
					setStartStyle(
						String(args[index])
					);

					index++;
				}
				break;

			case "endstyle":
				if (index < args.length) {
					setEndStyle(
						String(args[index])
					);

					index++;
				}
				break;

			case "shapemode":
				if (index < args.length) {
					setShapeMode(
						String(args[index])
					);

					index++;
				}
				break;

			case "curve":
				if (index < args.length) {
					setCurveAmount(
						Number(args[index])
					);

					index++;
				}
				break;

			case "terminatorsize":
				if (index < args.length) {
					setTerminatorSize(
						Number(args[index])
					);

					index++;
				}
				break;

			case "linewidth":
				if (index < args.length) {
					setLineWidth(
						Number(args[index])
					);

					index++;
				}
				break;

			case "linecolor":
				if (index + 3 < args.length) {
					setLineColor(
						Number(args[index]),
						Number(args[index + 1]),
						Number(args[index + 2]),
						Number(args[index + 3])
					);

					index += 4;
				}
				break;

			case "bgcolor":
				if (index + 3 < args.length) {
					setBackgroundColor(
						Number(args[index]),
						Number(args[index + 1]),
						Number(args[index + 2]),
						Number(args[index + 3])
					);

					index += 4;
				}
				break;

			default:
				post(
					"x3.live.line: unknown creation setting: ",
					key,
					"\n"
				);

				/*
					Assume an unknown setting has one
					value so parsing can continue.
				*/

				if (index < args.length) {
					index++;
				}

				break;
		}
	}
}


applyCreationArguments();

// --------------------------------------------------
// ATTRIBUTE DECLARATIONS
// --------------------------------------------------

declareattribute(
	"start",
	"getStartEndpoint",
	"setStartEndpoint",
	1,
	{
		type: "symbol",
		style: "enum",
		enumvals: [
			"tl",
			"lt",
			"tr",
			"rt",
			"bl",
			"lb",
			"br",
			"rb"
		],
		default: "lt",
		label: "Start",
		category: "Connector"
	}
);


declareattribute(
	"end",
	"getEndEndpoint",
	"setEndEndpoint",
	1,
	{
		type: "symbol",
		style: "enum",
		enumvals: [
			"tl",
			"lt",
			"tr",
			"rt",
			"bl",
			"lb",
			"br",
			"rb"
		],
		default: "rb",
		label: "End",
		category: "Connector"
	}
);


declareattribute(
	"shapemode",
	"getShapeMode",
	"setShapeMode",
	1,
	{
		type: "symbol",
		style: "enum",
		enumvals: [
			"auto",
			"arc",
			"s"
		],
		default: "auto",
		label: "Shape",
		category: "Connector"
	}
);


declareattribute(
	"curve",
	"getCurveAmount",
	"setCurveAmount",
	1,
	{
		type: "float",
		min: 0,
		max: 1,
		default: 0.5,
		label: "Curve",
		category: "Connector"
	}
);


declareattribute(
	"startstyle",
	"getStartStyle",
	"setStartStyle",
	1,
	{
		type: "symbol",
		style: "enum",
		enumvals: [
			"none",
			"arrow",
			"dot",
			"circle",
			"tee"
		],
		default: "none",
		label: "Start Terminator",
		category: "Terminators"
	}
);


declareattribute(
	"endstyle",
	"getEndStyle",
	"setEndStyle",
	1,
	{
		type: "symbol",
		style: "enum",
		enumvals: [
			"none",
			"arrow",
			"dot",
			"circle",
			"tee"
		],
		default: "arrow",
		label: "End Terminator",
		category: "Terminators"
	}
);


declareattribute(
	"terminatorsize",
	"getTerminatorSize",
	"setTerminatorSize",
	1,
	{
		type: "float",
		min: 2,
		max: 50,
		default: 8,
		label: "Terminator Size",
		category: "Terminators"
	}
);


declareattribute(
	"linewidth",
	"getLineWidth",
	"setLineWidth",
	1,
	{
		type: "float",
		min: 0.5,
		max: 20,
		default: 2,
		label: "Line Width",
		category: "Appearance"
	}
);


declareattribute(
	"linecolor",
	"getLineColor",
	"setLineColor",
	1,
	{
		type: "float",
		size: 4,
		style: "rgba",
		default: [
			0.75,
			0.75,
			0.75,
			1
		],
		label: "Line Color",
		category: "Appearance"
	}
);


declareattribute(
	"bgcolor",
	"getBackgroundColor",
	"setBackgroundColor",
	1,
	{
		type: "float",
		size: 4,
		style: "rgba",
		default: [
			0,
			0,
			0,
			0
		],
		label: "Background Color",
		category: "Appearance"
	}
);

// --------------------------------------------------
// AUTOMATIC INSET
// --------------------------------------------------

function getEffectiveInset() {
	return Math.max(
		minimumInset,
		getRequiredTerminatorInset()
	);
}


function getRequiredTerminatorInset() {
	var required = lineWidth * 0.5;

	required = Math.max(
		required,
		getStyleInset(startStyle)
	);

	required = Math.max(
		required,
		getStyleInset(endStyle)
	);

	return required;
}


function getStyleInset(style) {
	switch (style) {
		case "arrow":
			/*
				The arrow base spreads perpendicular
				to the curve direction. This is the
				dimension most likely to cross an edge
				when the tip is positioned at a corner.
			*/

			return (
				Math.sin(getArrowSpread()) *
				terminatorSize +
				lineWidth
			);

		case "dot":
		case "circle":
			return (
				terminatorSize * 0.5 +
				lineWidth
			);

		case "tee":
			return (
				terminatorSize * 0.6 +
				lineWidth
			);

		case "none":
		default:
			return lineWidth * 0.5;
	}
}


// --------------------------------------------------
// PAINT
// --------------------------------------------------

function paint() {
	var size = mgraphics.size;
	var width = size[0];
	var height = size[1];
	var effectiveInset = getEffectiveInset();

	drawBackground(
		width,
		height
	);

	var startCorner = getCornerFromEndpoint(
		startEndpoint
	);

	var endCorner = getCornerFromEndpoint(
		endEndpoint
	);

	var startSide = getSideFromEndpoint(
		startEndpoint
	);

	var endSide = getSideFromEndpoint(
		endEndpoint
	);

	var startPoint = getCornerPoint(
		startCorner,
		width,
		height,
		effectiveInset,
		startSide,
		startStyle
	);
	
	var endPoint = getCornerPoint(
		endCorner,
		width,
		height,
		effectiveInset,
		endSide,
		endStyle
	);
	
	var selectedShape = determineShape(
		startSide,
		endSide
	);

	var controls = getControlPoints(
		startPoint,
		endPoint,
		startSide,
		endSide,
		selectedShape,
		width,
		height,
		effectiveInset
	);

	var curve = {
		p0: startPoint,
		p1: controls.control1,
		p2: controls.control2,
		p3: endPoint
	};

	drawCurve(
		curve,
		startStyle,
		endStyle,
		startSide,
		endSide
	);
	
	drawTerminator(
		startStyle,
		startPoint,
		controls.control1,
		startSide
	);
	
	drawTerminator(
		endStyle,
		endPoint,
		controls.control2,
		endSide
	);
}


// --------------------------------------------------
// BACKGROUND
// --------------------------------------------------

function drawBackground(width, height) {
	mgraphics.set_source_rgba(
		backgroundColor[0],
		backgroundColor[1],
		backgroundColor[2],
		backgroundColor[3]
	);

	mgraphics.rectangle(
		0,
		0,
		width,
		height
	);

	mgraphics.fill();
}


// --------------------------------------------------
// ENDPOINT INTERPRETATION
// --------------------------------------------------

function isEndpoint(value) {
	return (
		value === "tl" ||
		value === "lt" ||
		value === "tr" ||
		value === "rt" ||
		value === "bl" ||
		value === "lb" ||
		value === "br" ||
		value === "rb"
	);
}


function getSideFromEndpoint(value) {
	switch (value.charAt(0)) {
		case "t":
			return "top";

		case "r":
			return "right";

		case "b":
			return "bottom";

		case "l":
			return "left";
	}

	return null;
}


function getCornerFromEndpoint(value) {
	var hasTop =
		value.indexOf("t") !== -1;

	var hasBottom =
		value.indexOf("b") !== -1;

	var hasLeft =
		value.indexOf("l") !== -1;

	var hasRight =
		value.indexOf("r") !== -1;

	if (hasTop && hasLeft) {
		return "tl";
	}

	if (hasTop && hasRight) {
		return "tr";
	}

	if (hasBottom && hasLeft) {
		return "bl";
	}

	if (hasBottom && hasRight) {
		return "br";
	}

	return null;
}


function endpointsUseSameCorner(
	firstEndpoint,
	secondEndpoint
) {
	return (
		getCornerFromEndpoint(firstEndpoint) ===
		getCornerFromEndpoint(secondEndpoint)
	);
}


function postEndpointOptions() {
	post(
		"endpoint must be tl, lt, tr, rt, bl, lb, br or rb\n"
	);
}


// --------------------------------------------------
// CORNER POSITIONS
// --------------------------------------------------

function getCornerPoint(
	corner,
	width,
	height,
	effectiveInset,
	side,
	style
) {
	var point;

	switch (corner) {
		case "tr":
			point = {
				x: width - effectiveInset,
				y: effectiveInset
			};
			break;

		case "bl":
			point = {
				x: effectiveInset,
				y: height - effectiveInset
			};
			break;

		case "br":
			point = {
				x: width - effectiveInset,
				y: height - effectiveInset
			};
			break;

		case "tl":
		default:
			point = {
				x: effectiveInset,
				y: effectiveInset
			};
			break;
	}

	/*
		Arrows and tees do not need the full
		terminator inset along their outward axis.

		The other coordinate retains effectiveInset,
		which prevents the wide part of the
		terminator from overflowing sideways.
	*/

	var edgeInset = getTerminatorEdgeInset(
		style
	);

	if (edgeInset !== null) {
		switch (side) {
			case "left":
				point.x = edgeInset;
				break;

			case "right":
				point.x = width - edgeInset;
				break;

			case "top":
				point.y = edgeInset;
				break;

			case "bottom":
				point.y = height - edgeInset;
				break;
		}
	}

	return point;
}


function getTerminatorEdgeInset(style) {
	switch (style) {
		case "arrow":
			/*
				The arrow tip itself reaches the
				edge of the drawing box.
			*/

			return 2.5;

		case "tee":
		case "none":
			/*
				The visible stroke extends half the
				line width beyond its centerline.
			*/

			return lineWidth * 0.5 + 2.5;

		default:
			/*
				Dot, circle and plain line endpoints
				continue using effectiveInset.
			*/

			return null;
	}
}


// --------------------------------------------------
// SHAPE SELECTION
// --------------------------------------------------

function determineShape(firstSide, secondSide) {
	if (shapeMode === "arc") {
		return "arc";
	}

	if (shapeMode === "s") {
		return "s";
	}

	if (
		areOppositeSides(
			firstSide,
			secondSide
		)
	) {
		return "s";
	}

	return "arc";
}


function areOppositeSides(firstSide, secondSide) {
	return (
		(
			firstSide === "left" &&
			secondSide === "right"
		) ||
		(
			firstSide === "right" &&
			secondSide === "left"
		) ||
		(
			firstSide === "top" &&
			secondSide === "bottom"
		) ||
		(
			firstSide === "bottom" &&
			secondSide === "top"
		)
	);
}


// --------------------------------------------------
// CONTROL POINTS
// --------------------------------------------------

function getControlPoints(
	startPoint,
	endPoint,
	startSide,
	endSide,
	shape,
	width,
	height,
	effectiveInset
) {
	var startDirection = getInwardDirection(
		startSide
	);

	var endDirection = getInwardDirection(
		endSide
	);

	var startHandleLength = getHandleLength(
		startSide,
		shape,
		width,
		height,
		effectiveInset
	);

	var endHandleLength = getHandleLength(
		endSide,
		shape,
		width,
		height,
		effectiveInset
	);

	/*
		For an arc, shorten a handle when its side
		runs parallel to the direct line between the
		two endpoint corners.

		For example:

			start tl
			end lb

		The start endpoint uses the top side, so its
		handle initially travels downward. Since the
		corners are also vertically aligned, the old
		handle could pull the curve downward too
		strongly.

		Shortening that handle produces a softer
		departure from the start point.
	*/

	if (shape === "arc") {
		if (
			isSideParallelToConnection(
				startSide,
				startPoint,
				endPoint
			)
		) {
			startHandleLength *= 0.45;
		}

		if (
			isSideParallelToConnection(
				endSide,
				startPoint,
				endPoint
			)
		) {
			endHandleLength *= 0.45;
		}
	}

	var control1 = {
		x:
			startPoint.x +
			startDirection.x *
			startHandleLength,

		y:
			startPoint.y +
			startDirection.y *
			startHandleLength
	};

	var control2 = {
		x:
			endPoint.x +
			endDirection.x *
			endHandleLength,

		y:
			endPoint.y +
			endDirection.y *
			endHandleLength
	};

	return {
		control1: control1,
		control2: control2
	};
}


function isSideParallelToConnection(
	side,
	startPoint,
	endPoint
) {
	var dx = Math.abs(
		endPoint.x - startPoint.x
	);

	var dy = Math.abs(
		endPoint.y - startPoint.y
	);

	var connectionIsHorizontal = dx > dy;
	var connectionIsVertical = dy > dx;

	var sideIsHorizontal =
		side === "left" ||
		side === "right";

	var sideIsVertical =
		side === "top" ||
		side === "bottom";

	return (
		(
			connectionIsHorizontal &&
			sideIsHorizontal
		) ||
		(
			connectionIsVertical &&
			sideIsVertical
		)
	);
}


function getHandleLength(
	side,
	shape,
	width,
	height,
	effectiveInset
) {
	var availableDistance;

	if (
		side === "left" ||
		side === "right"
	) {
		availableDistance = Math.max(
			0,
			width - effectiveInset * 2
		);
	} else {
		availableDistance = Math.max(
			0,
			height - effectiveInset * 2
		);
	}

	if (shape === "s") {
		return (
			availableDistance *
			curveAmount *
			0.85
		);
	}

	return (
		availableDistance *
		curveAmount *
		1.333
	);
}


function getInwardDirection(side) {
	switch (side) {
		case "right":
			return {
				x: -1,
				y: 0
			};

		case "top":
			return {
				x: 0,
				y: 1
			};

		case "bottom":
			return {
				x: 0,
				y: -1
			};

		case "left":
		default:
			return {
				x: 1,
				y: 0
			};
	}
}


function getOutwardDirectionFromSide(side) {

	switch (side) {
		case "left":
			return {
				x: -1,
				y: 0
			};
		case "right":
			return {
				x: 1,
				y: 0
			};
		case "top":
			return {
				x: 0,
				y: -1
			};
		case "bottom":
			return {
				x: 0,
				y: 1
			};
	}
	return {
		x: 1,
		y: 0
	};

}


// --------------------------------------------------
// CURVE DRAWING AND TRIMMING
// --------------------------------------------------

function drawCurve(
	curve,
	firstStyle,
	secondStyle,
	firstSide,
	secondSide
) {
	var startTrim =
		getTerminatorConnectionDistance(
			firstStyle
		);

	var endTrim =
		getTerminatorConnectionDistance(
			secondStyle
		);

	var t0 = 0;
	var t1 = 1;

	if (startTrim > 0) {
		t0 = findTrimParameter(
			curve,
			startTrim,
			true
		);
	}

	if (endTrim > 0) {
		t1 = findTrimParameter(
			curve,
			endTrim,
			false
		);
	}

	if (t0 >= t1) {
		return;
	}

	var visibleCurve = getSubcurve(
		curve,
		t0,
		t1
	);

	snapCurveToTerminator(
		visibleCurve,
		curve,
		firstStyle,
		true,
		firstSide
	);

	snapCurveToTerminator(
		visibleCurve,
		curve,
		secondStyle,
		false,
		secondSide
	);

	setLineSource();

	mgraphics.set_line_width(lineWidth);
	mgraphics.set_line_cap("round");
	mgraphics.set_line_join("round");

	mgraphics.new_path();

	mgraphics.move_to(
		visibleCurve.p0.x,
		visibleCurve.p0.y
	);

	mgraphics.curve_to(
		visibleCurve.p1.x,
		visibleCurve.p1.y,
		visibleCurve.p2.x,
		visibleCurve.p2.y,
		visibleCurve.p3.x,
		visibleCurve.p3.y
	);

	mgraphics.stroke();
}

function getTerminatorConnectionDistance(style) {
	switch (style) {
		case "circle":
			/*
				The curve endpoint sits on the centerline
				of the circle stroke.
		
				The rounded connector cap extends inward by
				half the line width, while the circle stroke
				also extends inward by half the line width.
				Their visible inner edges therefore align.
			*/
		
			return (
				terminatorSize * 0.5 +
				lineWidth * 0.025
			);

		case "arrow":
			/*
				Distance from the arrow tip to the center
				of its flat rear edge.
			*/

			return (
				-Math.cos(getArrowSpread()) *
				terminatorSize
			);

		default:
			return 0;
	}
}


function snapCurveToTerminator(
	visibleCurve,
	originalCurve,
	style,
	isStart,
	side
) {
	if (
		style !== "circle" &&
		style !== "arrow"
	) {
		return;
	}

	var tip = isStart
		? originalCurve.p0
		: originalCurve.p3;

	var nearbyControlPoint = isStart
		? originalCurve.p1
		: originalCurve.p2;

	var outwardDirection =
		getOutwardDirection(
			tip,
			nearbyControlPoint,
			side
		);

	var connectionDistance =
		getTerminatorConnectionDistance(
			style
		);

	var connectionPoint = {
		x:
			tip.x -
			outwardDirection.x *
			connectionDistance,

		y:
			tip.y -
			outwardDirection.y *
			connectionDistance
	};

	var handleLength;

	if (isStart) {
		handleLength = pointDistance(
			visibleCurve.p0,
			visibleCurve.p1
		);

		visibleCurve.p0 = connectionPoint;

		visibleCurve.p1 = {
			x:
				connectionPoint.x -
				outwardDirection.x *
				handleLength,

			y:
				connectionPoint.y -
				outwardDirection.y *
				handleLength
		};

		return;
	}

	handleLength = pointDistance(
		visibleCurve.p2,
		visibleCurve.p3
	);

	visibleCurve.p3 = connectionPoint;

	visibleCurve.p2 = {
		x:
			connectionPoint.x -
			outwardDirection.x *
			handleLength,

		y:
			connectionPoint.y -
			outwardDirection.y *
			handleLength
	};
}


function findTrimParameter(
	curve,
	targetDistance,
	fromStart
) {
	var samples = 120;
	var endpoint;
	var i;
	var t;
	var point;
	var distance;

	if (fromStart) {
		endpoint = curve.p0;

		for (i = 1; i <= samples; i++) {
			t = i / samples;
			point = cubicPoint(curve, t);

			distance = pointDistance(
				endpoint,
				point
			);

			if (distance >= targetDistance) {
				return t;
			}
		}

		return 1;
	}

	endpoint = curve.p3;

	for (i = samples - 1; i >= 0; i--) {
		t = i / samples;
		point = cubicPoint(curve, t);

		distance = pointDistance(
			endpoint,
			point
		);

		if (distance >= targetDistance) {
			return t;
		}
	}

	return 0;
}


function cubicPoint(curve, t) {
	var inverse = 1 - t;

	var a =
		inverse *
		inverse *
		inverse;

	var b =
		3 *
		inverse *
		inverse *
		t;

	var c =
		3 *
		inverse *
		t *
		t;

	var d =
		t *
		t *
		t;

	return {
		x:
			a * curve.p0.x +
			b * curve.p1.x +
			c * curve.p2.x +
			d * curve.p3.x,

		y:
			a * curve.p0.y +
			b * curve.p1.y +
			c * curve.p2.y +
			d * curve.p3.y
	};
}


function pointDistance(firstPoint, secondPoint) {
	var dx =
		secondPoint.x -
		firstPoint.x;

	var dy =
		secondPoint.y -
		firstPoint.y;

	return Math.sqrt(
		dx * dx +
		dy * dy
	);
}


// --------------------------------------------------
// DE CASTELJAU CURVE SPLITTING
// --------------------------------------------------

function splitCubic(curve, t) {
	var a = interpolatePoint(
		curve.p0,
		curve.p1,
		t
	);

	var b = interpolatePoint(
		curve.p1,
		curve.p2,
		t
	);

	var c = interpolatePoint(
		curve.p2,
		curve.p3,
		t
	);

	var d = interpolatePoint(
		a,
		b,
		t
	);

	var e = interpolatePoint(
		b,
		c,
		t
	);

	var point = interpolatePoint(
		d,
		e,
		t
	);

	return {
		left: {
			p0: curve.p0,
			p1: a,
			p2: d,
			p3: point
		},

		right: {
			p0: point,
			p1: e,
			p2: c,
			p3: curve.p3
		}
	};
}


function getSubcurve(curve, t0, t1) {
	if (t0 <= 0 && t1 >= 1) {
		return curve;
	}

	if (t0 <= 0) {
		return splitCubic(
			curve,
			t1
		).left;
	}

	if (t1 >= 1) {
		return splitCubic(
			curve,
			t0
		).right;
	}

	var firstSplit = splitCubic(
		curve,
		t1
	);

	var relativeT = t0 / t1;

	return splitCubic(
		firstSplit.left,
		relativeT
	).right;
}


function interpolatePoint(
	firstPoint,
	secondPoint,
	t
) {
	return {
		x:
			firstPoint.x +
			(
				secondPoint.x -
				firstPoint.x
			) * t,

		y:
			firstPoint.y +
			(
				secondPoint.y -
				firstPoint.y
			) * t
	};
}


// --------------------------------------------------
// TERMINATORS
// --------------------------------------------------

function drawTerminator(
	style,
	tip,
	nearbyControlPoint,
	side
) {
	switch (style) {
		case "arrow":
			drawArrow(
				tip,
				nearbyControlPoint,
				side
			);
			break;

		case "dot":
			drawDot(tip);
			break;

		case "circle":
			drawCircle(tip);
			break;

		case "tee":
			drawTee(
				tip,
				nearbyControlPoint,
				side
			);
			break;

		case "none":
		default:
			break;
	}
}


// --------------------------------------------------
// ARROW
// --------------------------------------------------

function getArrowSpread() {
	return Math.PI * 0.78;
}


function drawArrow(
	tip,
	nearbyControlPoint,
	side
) {
	var outwardDirection =
		getOutwardDirection(
			tip,
			nearbyControlPoint,
			side
		);

	var baseDistance =
		getTerminatorConnectionDistance(
			"arrow"
		);

	var baseCenter = {
		x:
			tip.x -
			outwardDirection.x *
			baseDistance,

		y:
			tip.y -
			outwardDirection.y *
			baseDistance
	};

	var perpendicular = {
		x: -outwardDirection.y,
		y: outwardDirection.x
	};

	var halfBaseWidth =
		Math.sin(getArrowSpread()) *
		terminatorSize;

	var point1 = {
		x:
			baseCenter.x +
			perpendicular.x *
			halfBaseWidth,

		y:
			baseCenter.y +
			perpendicular.y *
			halfBaseWidth
	};

	var point2 = {
		x:
			baseCenter.x -
			perpendicular.x *
			halfBaseWidth,

		y:
			baseCenter.y -
			perpendicular.y *
			halfBaseWidth
	};

	setLineSource();

	mgraphics.new_path();

	mgraphics.move_to(
		tip.x,
		tip.y
	);

	mgraphics.line_to(
		point1.x,
		point1.y
	);

	mgraphics.line_to(
		point2.x,
		point2.y
	);

	mgraphics.close_path();
	mgraphics.fill();
}


// --------------------------------------------------
// DOT
// --------------------------------------------------

function drawDot(tip) {
	var radius =
		terminatorSize * 0.5;

	setLineSource();

	mgraphics.ellipse(
		tip.x - radius,
		tip.y - radius,
		radius * 2,
		radius * 2
	);

	mgraphics.fill();
}


// --------------------------------------------------
// HOLLOW CIRCLE
// --------------------------------------------------

function drawCircle(tip) {
	var radius =
		terminatorSize * 0.5;

	setLineSource();

	mgraphics.set_line_width(
		lineWidth
	);

	mgraphics.ellipse(
		tip.x - radius,
		tip.y - radius,
		radius * 2,
		radius * 2
	);

	mgraphics.stroke();
}


// --------------------------------------------------
// TEE
// --------------------------------------------------

function drawTee(
	tip,
	nearbyControlPoint,
	side
) {
	var direction = getOutwardDirection(
		tip,
		nearbyControlPoint,
		side
	);

	var perpendicular = {
		x: -direction.y,
		y: direction.x
	};

	var halfLength =
		terminatorSize * 0.6;

	var point1 = {
		x:
			tip.x +
			perpendicular.x *
			halfLength,

		y:
			tip.y +
			perpendicular.y *
			halfLength
	};

	var point2 = {
		x:
			tip.x -
			perpendicular.x *
			halfLength,

		y:
			tip.y -
			perpendicular.y *
			halfLength
	};

	setLineSource();

	mgraphics.set_line_width(
		lineWidth
	);

	mgraphics.set_line_cap(
		"round"
	);

	mgraphics.new_path();

	mgraphics.move_to(
		point1.x,
		point1.y
	);

	mgraphics.line_to(
		point2.x,
		point2.y
	);

	mgraphics.stroke();
}


// --------------------------------------------------
// TERMINATOR GEOMETRY
// --------------------------------------------------

function getOutwardDirection(
	tip,
	nearbyControlPoint,
	side
) {
	var dx =
		tip.x -
		nearbyControlPoint.x;

	var dy =
		tip.y -
		nearbyControlPoint.y;

	var length = Math.sqrt(
		dx * dx +
		dy * dy
	);

	/*
		At curve 0, the control point may collapse
		onto the endpoint.

		In that case there is no Bézier tangent to
		measure, so use the endpoint's explicit side.
	*/

	if (length < 0.0001) {
		return getOutwardDirectionFromSide(
			side
		);
	}

	return {
		x: dx / length,
		y: dy / length
	};
}


// --------------------------------------------------
// START AND END ATTRIBUTE ACCESSORS
// --------------------------------------------------

function getStartEndpoint() {
	return startEndpoint;
}


function setStartEndpoint(value) {
	if (!isEndpoint(value)) {
		postEndpointOptions();
		return;
	}

	startEndpoint = value;
	mgraphics.redraw();
}


function getEndEndpoint() {
	return endEndpoint;
}


function setEndEndpoint(value) {
	if (!isEndpoint(value)) {
		postEndpointOptions();
		return;
	}

	endEndpoint = value;
	mgraphics.redraw();
}

// --------------------------------------------------
// START AND END MESSAGES
// --------------------------------------------------

function start(value) {
	if (!isEndpoint(value)) {
		postEndpointOptions();
		return;
	}

	if (
		endpointsUseSameCorner(
			value,
			endEndpoint
		)
	) {
		post(
			"start and end must use different corners\n"
		);

		return;
	}

	setStartEndpoint(value);
}


function end(value) {
	if (!isEndpoint(value)) {
		postEndpointOptions();
		return;
	}

	if (
		endpointsUseSameCorner(
			startEndpoint,
			value
		)
	) {
		post(
			"start and end must use different corners\n"
		);

		return;
	}

	setEndEndpoint(value);
}

// --------------------------------------------------
// SHAPE ATTRIBUTE ACCESSORS
// --------------------------------------------------

function getShapeMode() {
	return shapeMode;
}


function setShapeMode(value) {
	if (
		value !== "auto" &&
		value !== "arc" &&
		value !== "s"
	) {
		post(
			"shapemode must be auto, arc or s\n"
		);

		return;
	}

	shapeMode = value;
	mgraphics.redraw();
}


function getCurveAmount() {
	return curveAmount;
}


function setCurveAmount(value) {
	curveAmount = clip(
		value,
		0,
		1
	);

	mgraphics.redraw();
}


// --------------------------------------------------
// SHAPE MESSAGES
// --------------------------------------------------

function shape(value) {
	setShapeMode(value);
}


function curve(value) {
	setCurveAmount(value);
}


// --------------------------------------------------
// TERMINATOR ATTRIBUTE ACCESSORS
// --------------------------------------------------

function getStartStyle() {
	return startStyle;
}


function setStartStyle(value) {
	if (!isTerminatorStyle(value)) {
		postTerminatorOptions();
		return;
	}

	startStyle = value;
	mgraphics.redraw();
}


function getEndStyle() {
	return endStyle;
}


function setEndStyle(value) {
	if (!isTerminatorStyle(value)) {
		postTerminatorOptions();
		return;
	}

	endStyle = value;
	mgraphics.redraw();
}


function getTerminatorSize() {
	return terminatorSize;
}


function setTerminatorSize(value) {
	terminatorSize = Math.max(
		2,
		value
	);

	mgraphics.redraw();
}


// --------------------------------------------------
// TERMINATOR MESSAGES
// --------------------------------------------------

function startstyle(value) {
	setStartStyle(value);
}


function endstyle(value) {
	setEndStyle(value);
}


function styles(
	firstStyle,
	secondStyle
) {
	if (
		!isTerminatorStyle(firstStyle) ||
		!isTerminatorStyle(secondStyle)
	) {
		postTerminatorOptions();
		return;
	}

	startStyle = firstStyle;
	endStyle = secondStyle;

	mgraphics.redraw();
}


function arrows(value) {
	switch (value) {
		case "none":
			startStyle = "none";
			endStyle = "none";
			break;

		case "start":
			startStyle = "arrow";
			endStyle = "none";
			break;

		case "end":
			startStyle = "none";
			endStyle = "arrow";
			break;

		case "both":
			startStyle = "arrow";
			endStyle = "arrow";
			break;

		default:
			post(
				"arrows must be none, start, end or both\n"
			);

			return;
	}

	mgraphics.redraw();
}


function terminatorsize(value) {
	setTerminatorSize(value);
}


function isTerminatorStyle(value) {
	return (
		value === "none" ||
		value === "arrow" ||
		value === "dot" ||
		value === "circle" ||
		value === "tee"
	);
}


function postTerminatorOptions() {
	post(
		"terminator style must be none, arrow, dot, circle or tee\n"
	);
}


// --------------------------------------------------
// APPEARANCE ATTRIBUTE ACCESSORS
// --------------------------------------------------

function getLineWidth() {
	return lineWidth;
}


function setLineWidth(value) {
	lineWidth = Math.max(
		0.5,
		value
	);

	mgraphics.redraw();
}


function getLineColor() {
	return lineColor;
}


function setLineColor() {
	var values = arrayfromargs(
		arguments
	);

	if (values.length < 3) {
		return;
	}

	lineColor = [
		clip(values[0], 0, 1),
		clip(values[1], 0, 1),
		clip(values[2], 0, 1),

		values.length > 3
			? clip(values[3], 0, 1)
			: 1
	];

	mgraphics.redraw();
}


function getBackgroundColor() {
	return backgroundColor;
}


function setBackgroundColor() {
	var values = arrayfromargs(
		arguments
	);

	if (values.length < 3) {
		return;
	}

	backgroundColor = [
		clip(values[0], 0, 1),
		clip(values[1], 0, 1),
		clip(values[2], 0, 1),

		values.length > 3
			? clip(values[3], 0, 1)
			: 1
	];

	mgraphics.redraw();
}


// --------------------------------------------------
// APPEARANCE MESSAGES
// --------------------------------------------------

function linewidth(value) {
	setLineWidth(value);
}


function linecolor() {
	setLineColor.apply(
		this,
		arrayfromargs(arguments)
	);
}


function bgcolor() {
	setBackgroundColor.apply(
		this,
		arrayfromargs(arguments)
	);
}


// --------------------------------------------------
// UTILITIES
// --------------------------------------------------


function setLineSource() {
	mgraphics.set_source_rgba(
		lineColor[0],
		lineColor[1],
		lineColor[2],
		lineColor[3]
	);
}


function clip(
	value,
	minimum,
	maximum
) {
	return Math.max(
		minimum,
		Math.min(
			maximum,
			value
		)
	);
}