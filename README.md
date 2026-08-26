# x3.live.line


> [!IMPORTANT]
> A `v8ui` alternative to Max's `live.line` object with configurable corners, curved lines, and terminators.


<img width="956" height="527" alt="image" src="https://github.com/user-attachments/assets/9fd155b8-a416-4b53-893d-b8f6599b0130" />



---

`x3.live.line` is a custom UI object for [Cycling ’74 Max](https://cycling74.com) that draws curved connector lines between corners of a `v8ui` object.

It provides control over the start and end positions, curve shape, line appearance, and a selection of endpoint terminators (including arrows, circles, dots, and tees).

## Installation

Download, unzip, and move the `x3.live.line` package (the parent folder to help/init/javascript folders) into your Max Packages folder:

Mac:
```
~/Documents/Max 9/Packages/
```

Win:
```
C:\Users\<username>\Documents\Max 9\Packages\
```

Restart Max after installation.

Once installed, create the object with:

```
x3.live.line
```




Attributes (see Examples below) can also be specified when creating the object:

```
x3.live.line @jsarguments start lt end br startstyle tee endstyle arrow
```

---

## Endpoints

The `start` and `end` attributes determine where the connector begins and ends.

Each endpoint is described using **two letters**. The first letter specifies the primary side of the object that the connector uses, while the two letters together identify the corner.

For example:

```
lt
```

… means `left top` — the **left** side of the top-left corner, while:

```
tl
```

… means `top left` — the **top** side of the top-left corner. (These might seem like the same locations at first, but the order plays a key role in deciding how the terminators' directions are displayed.)

The available endpoints are:

* `tl`	(Top edge, top-left corner)
* `lt`	(Left edge, top-left corner)
* `tr`	(Top edge, top-right corner)
* `rt`	(Right edge, top-right corner)
* `bl`	(Bottom edge, bottom-left corner)
* `lb`	(Left edge, bottom-left corner)
* `br`	(Bottom edge, bottom-right corner)
* `rb`	(Right edge, bottom-right corner)

For example:



```
x3.live.line @jsarguments @start lt end rb
```

… creates a connector that leaves the left side of the top-left corner and arrives at the right side of the bottom-right corner.

<img width="112" height="112" alt="image" src="https://github.com/user-attachments/assets/b4d40a97-644f-4802-a9d4-e0116aa8e31a" />




## Attributes

> [!TIP]
> Attributes can be set via the object's Inspector, `attrui` objects, by sending messages to the object, or as a attribute-value pairs via `@jsarguments` (see Examples).

### `start`

Sets the starting endpoint.

```
start lt
```

Default:

```
lt
```

Possible values:

```
tl lt tr rt bl lb br rb
```

---

### `end`

Sets the ending endpoint.

```
end rb
```

Default:

```
rb
```

Possible values:

```
tl lt tr rt bl lb br rb
```

---

### `shapemode`

Determines the general shape of the connector.

```
shapemode auto
```

Possible values:

* `auto` (Automatically chooses an appropriate curve based on the endpoint directions)
* `arc`	(Forces a broad, single sweeping curve)
* `s`	(Forces an S-like curve)

Default:

```auto```

In most situations, `auto` is the recommended setting.


> [!NOTE]
> ### Technical Detail
> `shapemode` determines how the two endpoint directions influence the Bézier curve. There are three options:
> 
> * `arc` — produces a single broad bend. This is most natural when the endpoints are on adjacent/perpendicular sides, such as `left top` → `bottom right` or `top left` → `right bottom`. (`arc` tends to look like a conventional curved connector.)
> * `s` — allows the curve to change direction, producing an S-like sweep. This is especially useful when connecting opposite sides, such as `left top` → `right bottom` or `top right` → `bottom left`, where you generally want the line to leave one endpoint in one direction and arrive naturally at the other.
> * `auto` (default) — chooses between the two according to the endpoint sides (chooses `s` when the sides are opposite and `arc` otherwise).
>
> You can use `arc` explicitly when you want a pronounced single sweep even though the endpoint arrangement would normally suggest an S. Similarly, use `s` explicitly when you deliberately want a softer S-shaped transition even though the endpoints aren’t on opposite sides.
>
> `curve` (see below) is independent of this: it controls how strongly the chosen shape bends, from 0 (essentially straight, depending on connector type) toward increasingly pronounced curvature.


---


### `curve`

Controls the amount of curvature.

```
curve 0.5
```

Range:

```
0.0 – 1.0
```

Default:

```
0.5
```

A value of 0 produces a straight connection when using `dot`/`none` terminators (see `startstyle`/`endstyle` below), otherwise it produces a minimal curve). Higher values progressively increase the curvature.

---


### `startstyle`

Sets the terminator at the beginning of the connector.

```
startstyle tee
```

Possible values:

```
none
arrow
dot
circle
tee
```

Default:

```
none
```

---

### `endstyle`

Sets the terminator at the end of the connector.

```
endstyle arrow
```

Possible values:

```
none
arrow
dot
circle
tee
```

Default:

```
arrow
```

---

### `terminatorsize`

Controls the size of arrow, dot, circle, and tee terminators.

```
terminatorsize 8
```

Range:

```
2 – 50
```

Default:

```
8
```

The object’s internal inset is automatically adjusted to accommodate larger terminators.

---


### `linewidth`

Sets the width of the connector line.

```
linewidth 2
```

Range:

```
0.5 – 20
```

Default:

```
2
```

---

### `linecolor`

Sets the RGBA color of the connector and its terminators.

```
linecolor 0.75 0.75 0.75 1
```

Values are specified as:

```
red green blue alpha
```

… with each component ranging from `0` to `1`.

Default:

```
0.75 0.75 0.75 1
```

---

### `bgcolor`

Sets the RGBA background color of the object.

```
bgcolor 0 0 0 1
```

Default:

```
0 0 0 0
```

The default background is fully transparent.

---

## Examples

A simple curved line with an arrow:

<img width="112" height="112" alt="image" src="https://github.com/user-attachments/assets/b4d40a97-644f-4802-a9d4-e0116aa8e31a" />

```
x3.live.line @jsarguments start lt end rb
```

A connector with a tee at one end and an arrow at the other:

<img width="112" height="112" alt="image" src="https://github.com/user-attachments/assets/4f9eb72f-007c-4cac-a1db-bd0349bbb945" />

```
x3.live.line @jsarguments start rt end bl startstyle tee endstyle arrow
```

A connector with hollow circles at both ends:

<img width="112" height="112" alt="image" src="https://github.com/user-attachments/assets/115c73cd-4abe-4dd4-b1d3-3ebda7833a7c" />

```
x3.live.line @jsarguments start tl end br startstyle circle endstyle circle
```

A stronger S-shaped curve:

<img width="112" height="112" alt="image" src="https://github.com/user-attachments/assets/d4983a4a-bb01-4a3f-a4f0-977962255228" />

```
x3.live.line @jsarguments start lb end rt startstyle tee endstyle arrow shapemode s curve 1
```

A thicker connector with larger terminators:

<img width="112" height="112" alt="image" src="https://github.com/user-attachments/assets/0ecac1d4-e6d2-4520-96cc-5852d831bc21" />

```
x3.live.line @jsarguments linewidth 4 terminatorsize 14 start rt end rb startstyle dot endstyle arrow linecolor 0 1 0 1
```


A connection from top-left to right-top:

<img width="112" height="112" alt="image" src="https://github.com/user-attachments/assets/8f08787e-95d3-4b30-924e-461fb8696be1" />

```
x3.live.line @jsarguments linewidth 2.5 terminatorsize 10 start tl end rt startstyle tee endstyle arrow linecolor 1 0.5 0 1
```

## Messages

The principal settings can also be changed by sending messages to the object:

```
start lt
end rb
shape auto
curve 0.5
startstyle tee
endstyle arrow
terminatorsize 8
linewidth 2
linecolor 0.75 0.75 0.75 1
bgcolor 0 0 0 0
```

The object also understands:

```styles <startstyle> <endstyle>```

For example:

```styles circle arrow```

and:

```
arrows none
arrows start
arrows end
arrows both
```

… for quickly configuring arrow terminators.



# Requirements

* Cycling ’74 Max
* `v8ui`

`x3.live.line` is implemented in JavaScript using Max’s `v8ui` and mgraphics APIs.
