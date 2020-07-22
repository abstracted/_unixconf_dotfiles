var plasma = getApiVersion(1);

var layout = {
    "desktops": [
        {
            "applets": [
                {
                    "config": {
                        "/": {
                            "PreloadWeight": "0"
                        },
                        "/ConfigDialog": {
                            "DialogHeight": "540",
                            "DialogWidth": "720"
                        },
                        "/General": {
                            "showSecondHand": "true"
                        }
                    },
                    "geometry.height": 12,
                    "geometry.width": 12,
                    "geometry.x": 114,
                    "geometry.y": 4,
                    "plugin": "org.kde.plasma.analogclock",
                    "title": "Analog Clock"
                },
                {
                    "config": {
                    },
                    "geometry.height": 20,
                    "geometry.width": 24,
                    "geometry.x": 109,
                    "geometry.y": 30,
                    "plugin": "org.kde.plasma.mediacontroller",
                    "title": "Media Player"
                }
            ],
            "config": {
                "/": {
                    "formfactor": "0",
                    "immutability": "1",
                    "lastScreen": "0",
                    "wallpaperplugin": "org.kde.image"
                },
                "/ConfigDialog": {
                    "DialogHeight": "558",
                    "DialogWidth": "791"
                },
                "/Configuration": {
                    "PreloadWeight": "0"
                },
                "/General": {
                    "ToolBoxButtonState": "top",
                    "ToolBoxButtonX": "809",
                    "pressToMoveHelp": "false",
                    "sortMode": "-1"
                },
                "/Wallpaper/org.kde.image/General": {
                    "Image": "file:///home/mark/comdee.png"
                }
            },
            "wallpaperPlugin": "org.kde.image"
        }
    ],
    "panels": [
        {
            "alignment": "center",
            "applets": [
                {
                    "config": {
                        "/": {
                            "immutability": "1"
                        },
                        "/Configuration": {
                            "PreloadWeight": "100"
                        },
                        "/Configuration/General": {
                            "favoritesPortedToKAstats": "true"
                        }
                    },
                    "plugin": "org.kde.plasma.kicker"
                },
                {
                    "config": {
                        "/": {
                            "immutability": "1"
                        },
                        "/Configuration": {
                            "PreloadWeight": "0"
                        },
                        "/Configuration/ConfigDialog": {
                            "DialogHeight": "540",
                            "DialogWidth": "720"
                        },
                        "/Configuration/General": {
                            "onlyGroupWhenFull": "false",
                            "showOnlyCurrentActivity": "false"
                        }
                    },
                    "plugin": "org.kde.plasma.taskmanager"
                },
                {
                    "config": {
                        "/": {
                            "immutability": "1"
                        },
                        "/Configuration": {
                            "PreloadWeight": "0"
                        }
                    },
                    "plugin": "org.kde.plasma.pager"
                },
                {
                    "config": {
                        "/": {
                            "immutability": "1"
                        },
                        "/Configuration": {
                            "PreloadWeight": "37",
                            "immutability": "1"
                        },
                        "/Configuration/Configuration": {
                            "immutability": "1"
                        }
                    },
                    "plugin": "org.kde.plasma.systemtray"
                },
                {
                    "config": {
                        "/": {
                            "immutability": "1"
                        },
                        "/Configuration": {
                            "PreloadWeight": "0"
                        },
                        "/Configuration/Calendar": {
                            "month_show_weeknumbers": "true"
                        },
                        "/Configuration/ConfigDialog": {
                            "DialogHeight": "742",
                            "DialogWidth": "740"
                        },
                        "/Configuration/Events": {
                            "enabledCalendarPlugins": "/usr/lib/x86_64-linux-gnu/qt5/plugins/plasmacalendarplugins/holidaysevents.so,/opt/kf5/lib/plugins/plasmacalendarplugins/holidaysevents.so,/opt/kf5/lib/plugins/plasmacalendarplugins/astronomicalevents.so"
                        },
                        "/Configuration/General": {
                            "clock_line_2": "true",
                            "clock_timeformat": "hh:mm",
                            "clock_timeformat_2": "d MMMM yyyy",
                            "widget_show_meteogram": "false"
                        },
                        "/Configuration/Google%20Calendar": {
                            "calendar_list": "W10="
                        }
                    },
                    "plugin": "org.kde.plasma.eventcalendar"
                }
            ],
            "config": {
                "/": {
                    "formfactor": "2",
                    "immutability": "1",
                    "lastScreen": "0",
                    "wallpaperplugin": "org.kde.image"
                },
                "/ConfigDialog": {
                    "DialogHeight": "82",
                    "DialogWidth": "1920"
                },
                "/Configuration": {
                    "PreloadWeight": "0"
                }
            },
            "height": 4.857142857142857,
            "hiding": "normal",
            "location": "bottom",
            "maximumLength": 82,
            "minimumLength": 81.85714285714286,
            "offset": 0
        }
    ],
    "serializationFormatVersion": "1"
}
;

plasma.loadSerializedLayout(layout);
