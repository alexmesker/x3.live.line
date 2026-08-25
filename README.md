# x3.live.line
A v8ui version of Max's live.line object with configurable corners, curved lines, and terminators.


[In progress]


## Attributes












shapemode determines how the two endpoint directions influence the Bézier curve. There are three options:

* arc — produces a single broad bend. This is most natural when the endpoints are on adjacent/perpendicular sides, such as left → bottom or top → right. (arc tends to look like a conventional curved connector.)
* s — allows the curve to change direction, producing an S-like sweep. This is especially useful when connecting opposite sides, such as left → right or top → bottom, where you generally want the line to leave one endpoint in one direction and arrive naturally at the other.
* auto (default) — chooses between the two according to the endpoint sides (chooses s when the sides are opposite and arc otherwise).


auto should be 
Use arc explicitly when you want a pronounced single sweep even though the endpoint arrangement would normally suggest an S. Use s explicitly when you deliberately want a softer S-shaped transition even though the endpoints aren’t on opposite sides.


curve
curve is independent of this: it controls how strongly the chosen shape bends, from 0 (essentially straight, depending on connector type) toward increasingly pronounced curvature.
