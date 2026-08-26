{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 2,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 100.0, 100.0, 1117.0, 790.0 ],
        "boxes": [
            {
                "box": {
                    "border": 0,
                    "embed": 0,
                    "embedstate": [
                        [ "bgcolor", 0, 0, 0, 0 ],
                        [ "curve", 1 ],
                        [ "end", "tr" ],
                        [ "endstyle", "tee" ],
                        [ "linecolor", 0.4470588235294118, 0.4470588235294118, 0.3607843137254902, 1 ],
                        [ "linewidth", 2 ],
                        [ "shapemode", "auto" ],
                        [ "start", "tl" ],
                        [ "startstyle", "tee" ],
                        [ "terminatorsize", 8 ]
                    ],
                    "filename": "x3.live.line.js",
                    "id": "obj-4",
                    "maxclass": "v8ui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 558.0, 253.0, 225.0, 77.0 ],
                    "textfile": {
                        "filename": "x3.live.line.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "border": 0,
                    "embed": 0,
                    "embedstate": [
                        [ "bgcolor", 0, 0, 0, 0 ],
                        [ "curve", 0.5 ],
                        [ "end", "br" ],
                        [ "endstyle", "arrow" ],
                        [ "linecolor", 1, 0.9882352941176471, 0, 1 ],
                        [ "linewidth", 2 ],
                        [ "shapemode", "auto" ],
                        [ "start", "bl" ],
                        [ "startstyle", "none" ],
                        [ "terminatorsize", 8 ]
                    ],
                    "filename": "x3.live.line.js",
                    "id": "obj-2",
                    "maxclass": "v8ui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 472.0, 141.0, 80.0, 80.0 ],
                    "textfile": {
                        "filename": "x3.live.line.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "obj-124",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 22.0, 716.0, 191.0, 47.0 ],
                    "text": "Alex Mesker, 2026\nx37v.com\ngithub.com/alexmesker/x3.live.line"
                }
            },
            {
                "box": {
                    "id": "obj-118",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 188.0, 223.0, 313.0, 47.0 ],
                    "text": "It provides control over the start and end positions, curve shape, line appearance, and a selection of endpoint terminators (including arrows, circles, dots, and tees)."
                }
            },
            {
                "box": {
                    "id": "obj-114",
                    "linecount": 3,
                    "maxclass": "textedit",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 677.0, 641.0, 361.0, 78.0 ],
                    "text": "x3.live.line @jsarguments start lt end rb startstyle none endstyle arrow curve 0.5 shapemode auto linewidth 2 terminatorsize 12 linecolor 0 0.61358 0.711763 1 bgcolor 0 0 0 0"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-108",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "clear" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 387.0, 182.0, 1635.0, 1109.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-81",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 52.0, 703.0, 89.0, 22.0 ],
                                    "text": "loadmess clear"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-80",
                                    "maxclass": "newobj",
                                    "numinlets": 10,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 186.0, 663.0, 1052.912087912088, 22.0 ],
                                    "text": "join 10"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-78",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "clear" ],
                                    "patching_rect": [ 186.0, 703.0, 47.0, 22.0 ],
                                    "text": "t l clear"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-70",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1220.0, 607.0, 79.0, 35.0 ],
                                    "text": "prepend bgcolor"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-71",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1220.0, 568.0, 63.0, 22.0 ],
                                    "text": "array.tolist"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-72",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 1220.0, 529.0, 105.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "legacy": 1
                                    },
                                    "text": "dict.unpack value:"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-67",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1105.0, 607.0, 85.0, 35.0 ],
                                    "text": "prepend linecolor"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-68",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1105.0, 568.0, 63.0, 22.0 ],
                                    "text": "array.tolist"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-69",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 1105.0, 529.0, 105.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "legacy": 1
                                    },
                                    "text": "dict.unpack value:"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-64",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 990.0, 607.0, 105.0, 35.0 ],
                                    "text": "prepend terminatorsize"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-65",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 990.0, 568.0, 63.0, 22.0 ],
                                    "text": "array.tolist"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-66",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 990.0, 529.0, 105.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "legacy": 1
                                    },
                                    "text": "dict.unpack value:"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-61",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 875.0, 607.0, 87.0, 35.0 ],
                                    "text": "prepend linewidth"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-62",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 875.0, 568.0, 63.0, 22.0 ],
                                    "text": "array.tolist"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-63",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 875.0, 529.0, 105.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "legacy": 1
                                    },
                                    "text": "dict.unpack value:"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-58",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 760.0, 607.0, 96.0, 35.0 ],
                                    "text": "prepend shapemode"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-59",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 760.0, 568.0, 63.0, 22.0 ],
                                    "text": "array.tolist"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-60",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 760.0, 529.0, 105.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "legacy": 1
                                    },
                                    "text": "dict.unpack value:"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-55",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 646.0, 607.0, 69.0, 35.0 ],
                                    "text": "prepend curve"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-56",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 646.0, 568.0, 63.0, 22.0 ],
                                    "text": "array.tolist"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-57",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 646.0, 529.0, 105.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "legacy": 1
                                    },
                                    "text": "dict.unpack value:"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-52",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 531.0, 607.0, 78.0, 35.0 ],
                                    "text": "prepend endstyle"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-53",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 531.0, 568.0, 63.0, 22.0 ],
                                    "text": "array.tolist"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-54",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 531.0, 529.0, 105.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "legacy": 1
                                    },
                                    "text": "dict.unpack value:"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-49",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 416.0, 607.0, 88.0, 35.0 ],
                                    "text": "prepend startstyle"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 416.0, 568.0, 63.0, 22.0 ],
                                    "text": "array.tolist"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-51",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 416.0, 529.0, 105.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "legacy": 1
                                    },
                                    "text": "dict.unpack value:"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-46",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 301.0, 607.0, 60.0, 35.0 ],
                                    "text": "prepend end"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-47",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 301.0, 568.0, 63.0, 22.0 ],
                                    "text": "array.tolist"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-48",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 301.0, 529.0, 105.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "legacy": 1
                                    },
                                    "text": "dict.unpack value:"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-45",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "dictionary" ],
                                    "patching_rect": [ 52.0, 338.0, 249.0, 22.0 ],
                                    "text": "thisobject parent::x3liveline bgcolor @listen 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "dictionary" ],
                                    "patching_rect": [ 52.0, 307.0, 254.0, 22.0 ],
                                    "text": "thisobject parent::x3liveline linecolor @listen 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-43",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 186.0, 606.0, 63.0, 35.0 ],
                                    "text": "prepend start"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-42",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "dictionary" ],
                                    "patching_rect": [ 52.0, 276.0, 285.0, 22.0 ],
                                    "text": "thisobject parent::x3liveline terminatorsize @listen 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "dictionary" ],
                                    "patching_rect": [ 52.0, 245.0, 256.0, 22.0 ],
                                    "text": "thisobject parent::x3liveline linewidth @listen 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "dictionary" ],
                                    "patching_rect": [ 52.0, 214.0, 272.0, 22.0 ],
                                    "text": "thisobject parent::x3liveline shapemode @listen 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "dictionary" ],
                                    "patching_rect": [ 52.0, 183.0, 239.0, 22.0 ],
                                    "text": "thisobject parent::x3liveline curve @listen 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "dictionary" ],
                                    "patching_rect": [ 52.0, 151.0, 257.0, 22.0 ],
                                    "text": "thisobject parent::x3liveline endtstyle @listen 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "dictionary" ],
                                    "patching_rect": [ 52.0, 120.0, 257.0, 22.0 ],
                                    "text": "thisobject parent::x3liveline startstyle @listen 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 52.0, 377.0, 22.0, 22.0 ],
                                    "text": "t b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 186.0, 568.0, 63.0, 22.0 ],
                                    "text": "array.tolist"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 186.0, 529.0, 105.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "legacy": 1
                                    },
                                    "text": "dict.unpack value:"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 11,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 186.0, 488.0, 1167.7912087912089, 22.0 ],
                                    "saved_object_attributes": {
                                        "legacy": 0
                                    },
                                    "text": "dict.unpack start: end: startstyle: endstyle: curve: shapemode: linewidth: terminatorsize: linecolor: bgcolor:"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "dictionary" ],
                                    "patching_rect": [ 52.0, 444.0, 153.0, 22.0 ],
                                    "text": "thisobject parent::x3liveline"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 186.0, 743.0, 212.0, 22.0 ],
                                    "text": "prepend set x3.live.line @jsarguments"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "dictionary" ],
                                    "patching_rect": [ 52.0, 89.0, 229.0, 22.0 ],
                                    "text": "thisobject parent::x3liveline end @listen 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-102",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "dictionary" ],
                                    "patching_rect": [ 52.0, 58.0, 233.0, 22.0 ],
                                    "text": "thisobject parent::x3liveline start @listen 1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-107",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 186.0, 805.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 52.0, 411.0, 92.0, 22.0 ],
                                    "text": "targetattrdict"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-102", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-48", 0 ],
                                    "source": [ "obj-31", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-51", 0 ],
                                    "source": [ "obj-31", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "source": [ "obj-31", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 0 ],
                                    "source": [ "obj-31", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-60", 0 ],
                                    "source": [ "obj-31", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 0 ],
                                    "source": [ "obj-31", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-66", 0 ],
                                    "source": [ "obj-31", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-69", 0 ],
                                    "source": [ "obj-31", 8 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-72", 0 ],
                                    "source": [ "obj-31", 9 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-35", 0 ],
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-43", 0 ],
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-107", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-42", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-80", 0 ],
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-44", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-80", 1 ],
                                    "source": [ "obj-46", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 0 ],
                                    "source": [ "obj-47", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-47", 0 ],
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-80", 2 ],
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "source": [ "obj-5", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 0 ],
                                    "source": [ "obj-50", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "source": [ "obj-51", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-80", 3 ],
                                    "source": [ "obj-52", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-52", 0 ],
                                    "source": [ "obj-53", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-53", 0 ],
                                    "source": [ "obj-54", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-80", 4 ],
                                    "source": [ "obj-55", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-55", 0 ],
                                    "source": [ "obj-56", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-56", 0 ],
                                    "source": [ "obj-57", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-80", 5 ],
                                    "source": [ "obj-58", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-58", 0 ],
                                    "source": [ "obj-59", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-59", 0 ],
                                    "source": [ "obj-60", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-80", 6 ],
                                    "source": [ "obj-61", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-61", 0 ],
                                    "source": [ "obj-62", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-62", 0 ],
                                    "source": [ "obj-63", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-80", 7 ],
                                    "source": [ "obj-64", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-64", 0 ],
                                    "source": [ "obj-65", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-65", 0 ],
                                    "source": [ "obj-66", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-80", 8 ],
                                    "source": [ "obj-67", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-67", 0 ],
                                    "source": [ "obj-68", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-68", 0 ],
                                    "source": [ "obj-69", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-80", 9 ],
                                    "source": [ "obj-70", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-70", 0 ],
                                    "source": [ "obj-71", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-71", 0 ],
                                    "source": [ "obj-72", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-107", 0 ],
                                    "source": [ "obj-78", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-78", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-78", 0 ],
                                    "source": [ "obj-80", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-107", 0 ],
                                    "source": [ "obj-81", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 677.0, 608.0, 84.0, 22.0 ],
                    "text": "p jsarguments"
                }
            },
            {
                "box": {
                    "id": "obj-100",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 554.0, 513.0, 98.0, 20.0 ],
                    "text": "Example presets"
                }
            },
            {
                "box": {
                    "id": "obj-97",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 785.0, 539.0, 77.0, 20.0 ],
                    "text": "Surprise me!"
                }
            },
            {
                "box": {
                    "hidden": 1,
                    "id": "obj-95",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 2,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 1380.0, 335.0, 1000.0, 780.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 677.0, 617.0, 32.0, 22.0 ],
                                    "text": "auto"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 677.0, 652.0, 179.0, 22.0 ],
                                    "text": "pattrforward parent::shapemode"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 502.5, 617.0, 29.5, 22.0 ],
                                    "text": "0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 502.5, 652.0, 146.0, 22.0 ],
                                    "text": "pattrforward parent::curve"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 283.0, 617.0, 29.5, 22.0 ],
                                    "text": "14"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-18",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 89.0, 617.0, 29.5, 22.0 ],
                                    "text": "3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 283.0, 652.0, 192.0, 22.0 ],
                                    "text": "pattrforward parent::terminatorsize"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 89.0, 652.0, 163.0, 22.0 ],
                                    "text": "pattrforward parent::linewidth"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "bang", "bang", "bang" ],
                                    "patching_rect": [ 449.10752688172033, 132.0, 228.78494623655934, 22.0 ],
                                    "text": "t b b b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 267.0, 132.0, 141.0, 22.0 ],
                                    "text": "random 1 @floatoutput 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "gswitch",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 427.0, 288.0, 41.0, 32.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 427.0, 386.0, 161.0, 22.0 ],
                                    "text": "pattrforward parent::linecolor"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 305.0, 559.0, 161.0, 22.0 ],
                                    "text": "pattrforward parent::endstyle"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 305.0, 482.0, 165.0, 22.0 ],
                                    "text": "pattrforward parent::startstyle"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 179.5, 559.0, 76.0, 35.0 ],
                                    "text": "pattrforward parent::end"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 85.5, 559.0, 78.0, 35.0 ],
                                    "text": "pattrforward parent::start"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-84",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 449.0, 248.0, 71.0, 22.0 ],
                                    "text": "prepend hsl"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-83",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 449.0, 213.0, 228.89247311827967, 22.0 ],
                                    "text": "join 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-82",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 554.0, 165.0, 89.0, 35.0 ],
                                    "text": "random 1 @floatoutput 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-81",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 658.8924731182797, 165.0, 89.0, 35.0 ],
                                    "text": "random 1 @floatoutput 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-78",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 85.5, 520.0, 207.0, 22.0 ],
                                    "text": "unjoin"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-74",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 85.5, 448.0, 169.0, 22.0 ],
                                    "text": "list.scramble tl lt tr rt bl lb br rb"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-71",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 85.5, 482.0, 55.0, 22.0 ],
                                    "text": "zl slice 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-70",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 449.10752688172033, 165.0, 89.0, 35.0 ],
                                    "text": "random 1 @floatoutput 1"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-69",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 267.0, 165.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-66",
                                    "maxclass": "swatch",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "float" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 427.0, 337.0, 128.0, 32.0 ],
                                    "saturation": 1.0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-65",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 305.0, 521.0, 210.0, 22.0 ],
                                    "text": "list.scramble none arrow dot circle tee"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-64",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 305.0, 448.0, 210.0, 22.0 ],
                                    "text": "list.scramble none arrow dot circle tee"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-67",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 267.0, 200.0, 71.0, 22.0 ],
                                    "text": "hsl $1 1 0.5"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-89",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 85.5, 44.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-69", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-70", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-81", 0 ],
                                    "source": [ "obj-14", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-82", 0 ],
                                    "source": [ "obj-14", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-24", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-64", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-65", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-66", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 1 ],
                                    "source": [ "obj-67", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-67", 0 ],
                                    "source": [ "obj-69", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-83", 0 ],
                                    "source": [ "obj-70", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-78", 0 ],
                                    "source": [ "obj-71", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-71", 0 ],
                                    "source": [ "obj-74", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-78", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-78", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-83", 2 ],
                                    "source": [ "obj-81", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-83", 1 ],
                                    "source": [ "obj-82", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-84", 0 ],
                                    "source": [ "obj-83", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 2 ],
                                    "source": [ "obj-84", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "order": 6,
                                    "source": [ "obj-89", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "order": 2,
                                    "source": [ "obj-89", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-18", 0 ],
                                    "order": 7,
                                    "source": [ "obj-89", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "order": 5,
                                    "source": [ "obj-89", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "order": 1,
                                    "source": [ "obj-89", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "order": 0,
                                    "source": [ "obj-89", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-64", 0 ],
                                    "order": 4,
                                    "source": [ "obj-89", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-65", 0 ],
                                    "order": 3,
                                    "source": [ "obj-89", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-74", 0 ],
                                    "order": 8,
                                    "source": [ "obj-89", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-66", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 755.0, 574.0, 83.0, 22.0 ],
                    "text": "p Surprise Me"
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 755.0, 535.0, 28.0, 28.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 674.0, 225.0, 211.0, 20.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.theme_syntax_objectcolor"
                        }
                    },
                    "text": "v8ui @filename x3.live.line @border 0",
                    "textcolor": [ 0.9565903523274274, 0.7661489178616099, 0.4528340909165927, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 624.0, 224.0, 29.5, 22.0 ],
                    "text": "=="
                }
            },
            {
                "box": {
                    "bubblesize": 20,
                    "id": "obj-27",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 554.0, 535.0, 197.0, 28.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-46", "attrui", "attr", "terminatorsize", 5, "obj-46", "attrui", "int", 12, 5, "obj-110", "attrui", "attr", "linewidth", 5, "obj-110", "attrui", "int", 2, 5, "obj-40", "attrui", "attr", "linecolor", 8, "obj-40", "attrui", "list", 0, 0.613580048084259, 0.7117633819580078, 1, 5, "obj-45", "attrui", "attr", "shapemode", 4, "obj-45", "attrui", "auto", 5, "obj-1", "attrui", "attr", "curve", 5, "obj-1", "attrui", "float", 0.5, 5, "obj-43", "attrui", "attr", "endstyle", 4, "obj-43", "attrui", "arrow", 5, "obj-44", "attrui", "attr", "startstyle", 4, "obj-44", "attrui", "none", 5, "obj-42", "attrui", "attr", "end", 4, "obj-42", "attrui", "rb", 5, "obj-41", "attrui", "attr", "start", 4, "obj-41", "attrui", "lt" ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-45", "attrui", "attr", "shapemode", 4, "obj-45", "attrui", "auto", 5, "obj-46", "attrui", "attr", "terminatorsize", 5, "obj-46", "attrui", "int", 12, 5, "obj-110", "attrui", "attr", "linewidth", 5, "obj-110", "attrui", "int", 2, 5, "obj-40", "attrui", "attr", "linecolor", 8, "obj-40", "attrui", "list", 1, 1, 1, 1, 5, "obj-43", "attrui", "attr", "endstyle", 4, "obj-43", "attrui", "arrow", 5, "obj-44", "attrui", "attr", "startstyle", 4, "obj-44", "attrui", "dot", 5, "obj-42", "attrui", "attr", "end", 4, "obj-42", "attrui", "lb", 5, "obj-1", "attrui", "attr", "curve", 5, "obj-1", "attrui", "float", 0.8, 5, "obj-41", "attrui", "attr", "start", 4, "obj-41", "attrui", "tr" ]
                        },
                        {
                            "number": 3,
                            "data": [ 5, "obj-46", "attrui", "attr", "terminatorsize", 5, "obj-46", "attrui", "int", 12, 5, "obj-110", "attrui", "attr", "linewidth", 5, "obj-110", "attrui", "int", 2, 5, "obj-40", "attrui", "attr", "linecolor", 8, "obj-40", "attrui", "list", 1, 0.47634291648864746, 0.4330877661705017, 1, 5, "obj-45", "attrui", "attr", "shapemode", 4, "obj-45", "attrui", "auto", 5, "obj-1", "attrui", "attr", "curve", 5, "obj-1", "attrui", "int", 0, 5, "obj-43", "attrui", "attr", "endstyle", 4, "obj-43", "attrui", "arrow", 5, "obj-44", "attrui", "attr", "startstyle", 4, "obj-44", "attrui", "tee", 5, "obj-42", "attrui", "attr", "end", 4, "obj-42", "attrui", "rt", 5, "obj-41", "attrui", "attr", "start", 4, "obj-41", "attrui", "lt" ]
                        },
                        {
                            "number": 4,
                            "data": [ 5, "obj-46", "attrui", "attr", "terminatorsize", 5, "obj-46", "attrui", "int", 30, 5, "obj-110", "attrui", "attr", "linewidth", 5, "obj-110", "attrui", "int", 8, 5, "obj-40", "attrui", "attr", "linecolor", 8, "obj-40", "attrui", "list", 0, 0.9627748131752014, 0, 1, 5, "obj-45", "attrui", "attr", "shapemode", 4, "obj-45", "attrui", "auto", 5, "obj-1", "attrui", "attr", "curve", 5, "obj-1", "attrui", "int", 0, 5, "obj-43", "attrui", "attr", "endstyle", 4, "obj-43", "attrui", "arrow", 5, "obj-44", "attrui", "attr", "startstyle", 4, "obj-44", "attrui", "tee", 5, "obj-42", "attrui", "attr", "end", 4, "obj-42", "attrui", "br", 5, "obj-41", "attrui", "attr", "start", 4, "obj-41", "attrui", "tr" ]
                        },
                        {
                            "number": 5,
                            "data": [ 5, "obj-45", "attrui", "attr", "shapemode", 4, "obj-45", "attrui", "auto", 5, "obj-46", "attrui", "attr", "terminatorsize", 5, "obj-46", "attrui", "int", 12, 5, "obj-110", "attrui", "attr", "linewidth", 5, "obj-110", "attrui", "int", 2, 5, "obj-40", "attrui", "attr", "linecolor", 8, "obj-40", "attrui", "list", 1, 0.7221736311912537, 0, 1, 5, "obj-43", "attrui", "attr", "endstyle", 4, "obj-43", "attrui", "dot", 5, "obj-44", "attrui", "attr", "startstyle", 4, "obj-44", "attrui", "tee", 5, "obj-42", "attrui", "attr", "end", 4, "obj-42", "attrui", "bl", 5, "obj-1", "attrui", "attr", "curve", 5, "obj-1", "attrui", "float", 0.5, 5, "obj-41", "attrui", "attr", "start", 4, "obj-41", "attrui", "tr" ]
                        },
                        {
                            "number": 6,
                            "data": [ 5, "obj-45", "attrui", "attr", "shapemode", 4, "obj-45", "attrui", "arc", 5, "obj-46", "attrui", "attr", "terminatorsize", 5, "obj-46", "attrui", "int", 12, 5, "obj-110", "attrui", "attr", "linewidth", 5, "obj-110", "attrui", "int", 2, 5, "obj-40", "attrui", "attr", "linecolor", 8, "obj-40", "attrui", "list", 0, 0.917724609375, 0.9707656502723694, 1, 5, "obj-43", "attrui", "attr", "endstyle", 4, "obj-43", "attrui", "dot", 5, "obj-44", "attrui", "attr", "startstyle", 4, "obj-44", "attrui", "tee", 5, "obj-42", "attrui", "attr", "end", 4, "obj-42", "attrui", "br", 5, "obj-1", "attrui", "attr", "curve", 5, "obj-1", "attrui", "int", 1, 5, "obj-41", "attrui", "attr", "start", 4, "obj-41", "attrui", "tl" ]
                        },
                        {
                            "number": 7,
                            "data": [ 5, "obj-46", "attrui", "attr", "terminatorsize", 5, "obj-46", "attrui", "int", 12, 5, "obj-110", "attrui", "attr", "linewidth", 5, "obj-110", "attrui", "int", 3, 5, "obj-40", "attrui", "attr", "linecolor", 8, "obj-40", "attrui", "list", 1, 0, 0.8090071082115173, 1, 5, "obj-45", "attrui", "attr", "shapemode", 4, "obj-45", "attrui", "auto", 5, "obj-1", "attrui", "attr", "curve", 5, "obj-1", "attrui", "float", 0.7000000000000001, 5, "obj-43", "attrui", "attr", "endstyle", 4, "obj-43", "attrui", "circle", 5, "obj-44", "attrui", "attr", "startstyle", 4, "obj-44", "attrui", "tee", 5, "obj-42", "attrui", "attr", "end", 4, "obj-42", "attrui", "rt", 5, "obj-41", "attrui", "attr", "start", 4, "obj-41", "attrui", "bl" ]
                        },
                        {
                            "number": 8,
                            "data": [ 5, "obj-46", "attrui", "attr", "terminatorsize", 5, "obj-46", "attrui", "int", 18, 5, "obj-110", "attrui", "attr", "linewidth", 5, "obj-110", "attrui", "int", 4, 5, "obj-40", "attrui", "attr", "linecolor", 8, "obj-40", "attrui", "list", 1, 0.9011108875274658, 0, 1, 5, "obj-45", "attrui", "attr", "shapemode", 4, "obj-45", "attrui", "auto", 5, "obj-1", "attrui", "attr", "curve", 5, "obj-1", "attrui", "float", 0.5, 5, "obj-43", "attrui", "attr", "endstyle", 4, "obj-43", "attrui", "arrow", 5, "obj-44", "attrui", "attr", "startstyle", 4, "obj-44", "attrui", "arrow", 5, "obj-42", "attrui", "attr", "end", 4, "obj-42", "attrui", "lb", 5, "obj-41", "attrui", "attr", "start", 4, "obj-41", "attrui", "tl" ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "id": "obj-3",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 96.0, 498.0, 50.0 ],
                    "text": "x3.live.line is a UI object that draws curved connector lines between corners of a v8ui object. \nIt's a general-purpose object for adding illustrative connections between parts of a patcher like this."
                }
            },
            {
                "box": {
                    "border": 0,
                    "embed": 0,
                    "embedstate": [
                        [ "bgcolor", 0, 0, 0, 0 ],
                        [ "curve", 0 ],
                        [ "end", "rb" ],
                        [ "endstyle", "dot" ],
                        [ "linecolor", 0.75, 0.75, 0.75, 1 ],
                        [ "linewidth", 2 ],
                        [ "shapemode", "auto" ],
                        [ "start", "lt" ],
                        [ "startstyle", "dot" ],
                        [ "terminatorsize", 12 ]
                    ],
                    "filename": "x3.live.line.js",
                    "id": "obj-17",
                    "maxclass": "v8ui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 372.0, 17.0, 64.0, 64.0 ],
                    "textfile": {
                        "filename": "x3.live.line.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "border": 0,
                    "embed": 0,
                    "embedstate": [
                        [ "bgcolor", 0, 0, 0, 0 ],
                        [ "curve", 1 ],
                        [ "end", "tl" ],
                        [ "endstyle", "tee" ],
                        [ "linecolor", 0.796078431372549, 0, 0.7411764705882353, 1 ],
                        [ "linewidth", 2.5 ],
                        [ "shapemode", "auto" ],
                        [ "start", "tr" ],
                        [ "startstyle", "tee" ],
                        [ "terminatorsize", 8 ]
                    ],
                    "filename": "x3.live.line.js",
                    "id": "obj-22",
                    "maxclass": "v8ui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 612.0, 17.0, 64.0, 64.0 ],
                    "textfile": {
                        "filename": "x3.live.line.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "border": 0,
                    "embed": 0,
                    "embedstate": [
                        [ "bgcolor", 0, 0, 0, 0 ],
                        [ "curve", 0.5 ],
                        [ "end", "br" ],
                        [ "endstyle", "arrow" ],
                        [ "linecolor", 1, 0.9882352941176471, 0, 1 ],
                        [ "linewidth", 2 ],
                        [ "shapemode", "auto" ],
                        [ "start", "lb" ],
                        [ "startstyle", "none" ],
                        [ "terminatorsize", 8 ]
                    ],
                    "filename": "x3.live.line.js",
                    "id": "obj-23",
                    "maxclass": "v8ui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 318.0, 17.0, 64.0, 64.0 ],
                    "textfile": {
                        "filename": "x3.live.line.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "border": 0,
                    "embed": 0,
                    "embedstate": [
                        [ "bgcolor", 0, 0, 0, 0 ],
                        [ "curve", 1 ],
                        [ "end", "tr" ],
                        [ "endstyle", "circle" ],
                        [ "linecolor", 0.8156862745098039, 0.17254901960784313, 0.0196078431372549, 1 ],
                        [ "linewidth", 4 ],
                        [ "shapemode", "s" ],
                        [ "start", "bl" ],
                        [ "startstyle", "circle" ],
                        [ "terminatorsize", 8 ]
                    ],
                    "filename": "x3.live.line.js",
                    "id": "obj-24",
                    "maxclass": "v8ui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 480.0, 17.0, 64.0, 64.0 ],
                    "textfile": {
                        "filename": "x3.live.line.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "border": 0,
                    "embed": 0,
                    "embedstate": [
                        [ "bgcolor", 0, 0, 0, 0 ],
                        [ "curve", 0.5 ],
                        [ "end", "rb" ],
                        [ "endstyle", "none" ],
                        [ "linecolor", 1, 0.5803921568627451, 0, 1 ],
                        [ "linewidth", 2 ],
                        [ "shapemode", "auto" ],
                        [ "start", "rt" ],
                        [ "startstyle", "none" ],
                        [ "terminatorsize", 8 ]
                    ],
                    "filename": "x3.live.line.js",
                    "id": "obj-16",
                    "maxclass": "v8ui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 406.0, 17.0, 64.0, 64.0 ],
                    "textfile": {
                        "filename": "x3.live.line.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "border": 0,
                    "embed": 0,
                    "embedstate": [
                        [ "bgcolor", 0, 0, 0, 0 ],
                        [ "curve", 0.5 ],
                        [ "end", "bl" ],
                        [ "endstyle", "tee" ],
                        [ "linecolor", 0, 1, 0.2, 1 ],
                        [ "linewidth", 2 ],
                        [ "shapemode", "auto" ],
                        [ "start", "tr" ],
                        [ "startstyle", "tee" ],
                        [ "terminatorsize", 8 ]
                    ],
                    "filename": "x3.live.line.js",
                    "id": "obj-25",
                    "maxclass": "v8ui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 678.0, 17.0, 64.0, 64.0 ],
                    "textfile": {
                        "filename": "x3.live.line.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "border": 0,
                    "embed": 0,
                    "embedstate": [
                        [ "bgcolor", 0, 0, 0, 0 ],
                        [ "curve", 0.5 ],
                        [ "end", "br" ],
                        [ "endstyle", "arrow" ],
                        [ "linecolor", 0.75, 0.75, 0.75, 1 ],
                        [ "linewidth", 2 ],
                        [ "shapemode", "auto" ],
                        [ "start", "lt" ],
                        [ "startstyle", "dot" ],
                        [ "terminatorsize", 8 ]
                    ],
                    "filename": "x3.live.line.js",
                    "id": "obj-26",
                    "maxclass": "v8ui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 546.0, 17.0, 64.0, 64.0 ],
                    "textfile": {
                        "filename": "x3.live.line.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "border": 0,
                    "embed": 0,
                    "embedstate": [
                        [ "bgcolor", 0, 0, 0, 0 ],
                        [ "curve", 0.5 ],
                        [ "end", "rb" ],
                        [ "endstyle", "arrow" ],
                        [ "linecolor", 0, 0.6901960784313725, 0.8705882352941177, 1 ],
                        [ "linewidth", 2 ],
                        [ "shapemode", "auto" ],
                        [ "start", "lt" ],
                        [ "startstyle", "none" ],
                        [ "terminatorsize", 8 ]
                    ],
                    "filename": "x3.live.line.js",
                    "id": "obj-12",
                    "maxclass": "v8ui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 252.0, 17.0, 64.0, 64.0 ],
                    "textfile": {
                        "filename": "x3.live.line.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 535.0, 225.0, 75.0, 20.0 ],
                    "saved_attribute_attributes": {
                        "textcolor": {
                            "expression": "themecolor.theme_syntax_objectcolor"
                        }
                    },
                    "text": "x3.live.line   ",
                    "textcolor": [ 0.9565903523274274, 0.7661489178616099, 0.4528340909165927, 1.0 ]
                }
            },
            {
                "box": {
                    "border": 0,
                    "embed": 0,
                    "embedstate": [
                        [ "bgcolor", 0, 0, 0, 0 ],
                        [ "curve", 0.51 ],
                        [ "end", "rb" ],
                        [ "endstyle", "dot" ],
                        [ "linecolor", 0.5176470588235295, 0.5176470588235295, 0.5176470588235295, 1 ],
                        [ "linewidth", 2 ],
                        [ "shapemode", "auto" ],
                        [ "start", "lt" ],
                        [ "startstyle", "dot" ],
                        [ "terminatorsize", 8 ]
                    ],
                    "filename": "x3.live.line.js",
                    "id": "obj-18",
                    "maxclass": "v8ui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 65.0, 128.0, 121.0, 115.0 ],
                    "textfile": {
                        "filename": "x3.live.line.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            },
            {
                "box": {
                    "attr": "terminatorsize",
                    "id": "obj-46",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 712.0, 375.0, 150.0, 22.0 ],
                    "varname": "terminatorsize"
                }
            },
            {
                "box": {
                    "attr": "endstyle",
                    "id": "obj-43",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 368.0, 375.0, 159.0, 22.0 ],
                    "text_width": 85.0,
                    "varname": "endstyle"
                }
            },
            {
                "box": {
                    "attr": "startstyle",
                    "id": "obj-44",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 368.0, 343.0, 159.0, 22.0 ],
                    "text_width": 85.0,
                    "varname": "startstyle"
                }
            },
            {
                "box": {
                    "attr": "end",
                    "id": "obj-42",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 227.0, 375.0, 125.0, 22.0 ],
                    "text_width": 66.0,
                    "varname": "end"
                }
            },
            {
                "box": {
                    "attr": "linecolor",
                    "id": "obj-40",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 543.0, 416.0, 310.0, 22.0 ],
                    "varname": "linecolor"
                }
            },
            {
                "box": {
                    "embed": 0,
                    "embedstate": [
                        [ "bgcolor", 0, 0, 0, 0 ],
                        [ "curve", 0.5 ],
                        [ "end", "rb" ],
                        [ "endstyle", "arrow" ],
                        [ "linecolor", 0, 0.613580048084259, 0.7117633819580078, 1 ],
                        [ "linewidth", 2 ],
                        [ "shapemode", "auto" ],
                        [ "start", "lt" ],
                        [ "startstyle", "none" ],
                        [ "terminatorsize", 12 ]
                    ],
                    "filename": "x3.live.line.js",
                    "id": "obj-38",
                    "maxclass": "v8ui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 227.0, 416.0, 300.0, 300.0 ],
                    "textfile": {
                        "filename": "x3.live.line.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    },
                    "varname": "x3liveline"
                }
            },
            {
                "box": {
                    "attr": "start",
                    "id": "obj-41",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 227.0, 343.0, 125.0, 22.0 ],
                    "text_width": 66.0,
                    "varname": "start"
                }
            },
            {
                "box": {
                    "attr": "shapemode",
                    "id": "obj-45",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 543.0, 375.0, 150.0, 22.0 ],
                    "varname": "shapemode"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 48.0,
                    "id": "obj-75",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 18.0, 17.0, 230.0, 64.0 ],
                    "text": "x3.live.line"
                }
            },
            {
                "box": {
                    "attr": "linewidth",
                    "id": "obj-110",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 712.0, 343.0, 150.0, 22.0 ],
                    "varname": "linewidth"
                }
            },
            {
                "box": {
                    "attr": "curve",
                    "id": "obj-1",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 543.0, 343.0, 150.0, 22.0 ],
                    "varname": "curve"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 534.0, 224.0, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 673.0, 224.0, 215.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "bgcolor",
                    "id": "obj-79",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 543.0, 449.0, 310.0, 22.0 ]
                }
            },
            {
                "box": {
                    "attr": "border",
                    "id": "obj-119",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 58.0, 343.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "border": 0,
                    "embed": 0,
                    "embedstate": [
                        [ "bgcolor", 0, 0, 0, 0 ],
                        [ "curve", 0.5 ],
                        [ "end", "rt" ],
                        [ "endstyle", "arrow" ],
                        [ "linecolor", 0.611764705882353, 0.611764705882353, 0.611764705882353, 0.5 ],
                        [ "linewidth", 3 ],
                        [ "shapemode", "auto" ],
                        [ "start", "lb" ],
                        [ "startstyle", "tee" ],
                        [ "terminatorsize", 16 ]
                    ],
                    "filename": "x3.live.line.js",
                    "id": "obj-120",
                    "maxclass": "v8ui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 529.0, 641.0, 146.0, 78.0 ],
                    "textfile": {
                        "filename": "x3.live.line.js",
                        "flags": 0,
                        "embed": 0,
                        "autowatch": 1
                    }
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "hidden": 1,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-114", 0 ],
                    "hidden": 1,
                    "source": [ "obj-108", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "hidden": 1,
                    "source": [ "obj-110", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "hidden": 1,
                    "source": [ "obj-119", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "hidden": 1,
                    "order": 4,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "hidden": 1,
                    "order": 1,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "order": 2,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "hidden": 1,
                    "order": 8,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "hidden": 1,
                    "order": 7,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "hidden": 1,
                    "order": 5,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "hidden": 1,
                    "order": 6,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "hidden": 1,
                    "order": 3,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "hidden": 1,
                    "order": 0,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "hidden": 1,
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "hidden": 1,
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "hidden": 1,
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "hidden": 1,
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "hidden": 1,
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "hidden": 1,
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "hidden": 1,
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-95", 0 ],
                    "hidden": 1,
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "hidden": 1,
                    "source": [ "obj-79", 0 ]
                }
            }
        ],
        "autosave": 0,
        "oscsendudpaddr": "localhost"
    }
}