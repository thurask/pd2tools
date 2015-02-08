import bb.cascades 1.4

Page {
    titleBar: TitleBar {
        title: qsTr("BIG OIL") + Retranslate.onLanguageChanged
    }
    actions: [
        ActionItem {
            title: qsTr("Reset") + Retranslate.onLanguageChanged
            onTriggered: {
                elementgroup.resetSelectedOption()
                tubegroup.resetSelectedOption()
                pressuregroup.resetSelectedOption()
            }
            imageSource: "asset:///images/menus/ic_reload.png"
            ActionBar.placement: ActionBarPlacement.Signature
        }
    ]
    ScrollView {
        Container {
            Container {
                layout: StackLayout {
                    orientation: LayoutOrientation.LeftToRight
                }
                horizontalAlignment: HorizontalAlignment.Center
                Container {
                    layout: StackLayout {
                        orientation: LayoutOrientation.TopToBottom
                    }
                    Container {
                        background: Color.Transparent
                        preferredHeight: 100
                        preferredWidth: 100
                    }
                    Container {
                        id: engine12
                        layout: DockLayout {
                        
                        }
                        background: ((elementgroup.selectedValue != 2 && elementgroup.selectedValue != 7) && (tubegroup.selectedValue != 2 && tubegroup.selectedValue != 1) && (pressuregroup.selectedValue != 399) ? Color.DarkCyan : Color.Transparent)
                        preferredHeight: 100
                        preferredWidth: 100
                        property int tubes: 3
                        property int pressure: 510
                        property int element: 1
                        Label {
                            horizontalAlignment: HorizontalAlignment.Center
                            verticalAlignment: VerticalAlignment.Center
                            text: ((elementgroup.selectedValue != 2 && elementgroup.selectedValue != 7) && (tubegroup.selectedValue != 2 && tubegroup.selectedValue != 1) && (pressuregroup.selectedValue != 399) ? "12" : "")
                        }
                    }
                    Container {
                        id: engine10
                        layout: DockLayout {
                        
                        }
                        background: ((elementgroup.selectedValue != 1 && elementgroup.selectedValue != 7) && (tubegroup.selectedValue != 2 && tubegroup.selectedValue != 1) ? Color.DarkGreen : Color.Transparent)
                        preferredHeight: 100
                        preferredWidth: 100
                        property int tubes: 3
                        property int pressure: 400
                        property int element: 2
                        Label {
                            horizontalAlignment: HorizontalAlignment.Center
                            verticalAlignment: VerticalAlignment.Center
                            text: ((elementgroup.selectedValue != 1 && elementgroup.selectedValue != 7) && (tubegroup.selectedValue != 2 && tubegroup.selectedValue != 1) ? "10" : "")
                        }
                    }
                    Container {
                        id: engine8
                        layout: DockLayout {
                        
                        }
                        background: ((elementgroup.selectedValue != 1 && elementgroup.selectedValue != 2) && (tubegroup.selectedValue != 2 && tubegroup.selectedValue != 1) && (pressuregroup.selectedValue != 401) ? Color.DarkYellow : Color.Transparent)
                        preferredHeight: 100
                        preferredWidth: 100
                        property int tubes: 3
                        property int pressure: 275
                        property int element: 7
                        Label {
                            horizontalAlignment: HorizontalAlignment.Center
                            verticalAlignment: VerticalAlignment.Center
                            text: ((elementgroup.selectedValue != 1 && elementgroup.selectedValue != 2) && (tubegroup.selectedValue != 2 && tubegroup.selectedValue != 1) && (pressuregroup.selectedValue != 401) ? "8" : "")
                        }
                    }
                }
                Container {
                    layout: StackLayout {
                        orientation: LayoutOrientation.TopToBottom
                    }
                    Container {
                        background: Color.Transparent
                        preferredHeight: 100
                        preferredWidth: 100
                    }
                    Container {
                        id: engine7
                        layout: DockLayout {
                        
                        }
                        background: ((elementgroup.selectedValue != 1 && elementgroup.selectedValue != 7) && (tubegroup.selectedValue != 2 && tubegroup.selectedValue != 1) && (pressuregroup.selectedValue != 401) ? Color.DarkGreen : Color.Transparent)
                        preferredHeight: 100
                        preferredWidth: 100
                        property int tubes: 3
                        property int pressure: 375
                        property int element: 2
                        Label {
                            horizontalAlignment: HorizontalAlignment.Center
                            verticalAlignment: VerticalAlignment.Center
                            text: ((elementgroup.selectedValue != 1 && elementgroup.selectedValue != 7) && (tubegroup.selectedValue != 2 && tubegroup.selectedValue != 1) && (pressuregroup.selectedValue != 401) ? "7" : "")
                        }
                    }
                    Container {
                        id: engine9
                        layout: DockLayout {
                        
                        }
                        background: ((elementgroup.selectedValue != 2 && elementgroup.selectedValue != 7) && (tubegroup.selectedValue != 2 && tubegroup.selectedValue != 1) && (pressuregroup.selectedValue != 401) ? Color.DarkCyan : Color.Transparent)
                        preferredHeight: 100
                        preferredWidth: 100
                        property int tubes: 3
                        property int pressure: 375
                        property int element: 1
                        Label {
                            horizontalAlignment: HorizontalAlignment.Center
                            verticalAlignment: VerticalAlignment.Center
                            text: ((elementgroup.selectedValue != 2 && elementgroup.selectedValue != 7) && (tubegroup.selectedValue != 2 && tubegroup.selectedValue != 1) && (pressuregroup.selectedValue != 401) ? "9" : "")
                        }
                    }
                    Container {
                        id: engine11
                        layout: DockLayout {
                        
                        }
                        background: ((elementgroup.selectedValue != 1 && elementgroup.selectedValue != 2) && (tubegroup.selectedValue != 2 && tubegroup.selectedValue != 1) && (pressuregroup.selectedValue != 399) ? Color.DarkYellow : Color.Transparent)
                        preferredHeight: 100
                        preferredWidth: 100
                        property int tubes: 3
                        property int pressure: 425
                        property int element: 7
                        Label {
                            horizontalAlignment: HorizontalAlignment.Center
                            verticalAlignment: VerticalAlignment.Center
                            text: ((elementgroup.selectedValue != 1 && elementgroup.selectedValue != 2) && (tubegroup.selectedValue != 2 && tubegroup.selectedValue != 1) && (pressuregroup.selectedValue != 399) ? "11" : "")
                        }
                    }
                }
                Container {
                    layout: StackLayout {
                        orientation: LayoutOrientation.TopToBottom
                    }
                    Container {
                        layout: DockLayout {
                        
                        }
                        background: Color.Transparent
                        preferredHeight: 100
                        preferredWidth: 100
                        Label {
                            horizontalAlignment: HorizontalAlignment.Center
                            verticalAlignment: VerticalAlignment.Center
                            text: qsTr("Doors") + Retranslate.onLanguageChanged
                        }
                    }
                    Container {
                        layout: DockLayout {
                        
                        }
                        background: Color.Transparent
                        preferredHeight: 100
                        preferredWidth: 100
                        Label {
                            horizontalAlignment: HorizontalAlignment.Center
                            verticalAlignment: VerticalAlignment.Center
                            text: qsTr("Stairs") + Retranslate.onLanguageChanged
                        }
                    }
                    Container {
                        layout: DockLayout {
                        
                        }
                        background: Color.Transparent
                        preferredHeight: 100
                        preferredWidth: 100
                        Label {
                            horizontalAlignment: HorizontalAlignment.Center
                            verticalAlignment: VerticalAlignment.Center
                            text: qsTr("Stairs") + Retranslate.onLanguageChanged
                        }
                    }
                    Container {
                        layout: DockLayout {
                        
                        }
                        background: Color.Transparent
                        preferredHeight: 100
                        preferredWidth: 100
                        Label {
                            horizontalAlignment: HorizontalAlignment.Center
                            verticalAlignment: VerticalAlignment.Center
                            text: qsTr("Stairs") + Retranslate.onLanguageChanged
                        }
                    }
                }
                Container {
                    layout: StackLayout {
                        orientation: LayoutOrientation.TopToBottom
                    }
                    Container {
                        background: Color.Transparent
                        preferredHeight: 100
                        preferredWidth: 100
                    }
                    Container {
                        id: engine2
                        layout: DockLayout {
                        
                        }
                        background: ((elementgroup.selectedValue != 2 && elementgroup.selectedValue != 7) && (tubegroup.selectedValue != 2 && tubegroup.selectedValue != 3) && (pressuregroup.selectedValue != 399) ? Color.DarkCyan : Color.Transparent)
                        preferredHeight: 100
                        preferredWidth: 100
                        property int tubes: 1
                        property int pressure: 500
                        property int element: 1
                        Label {
                            horizontalAlignment: HorizontalAlignment.Center
                            verticalAlignment: VerticalAlignment.Center
                            text: ((elementgroup.selectedValue != 2 && elementgroup.selectedValue != 7) && (tubegroup.selectedValue != 2 && tubegroup.selectedValue != 3) && (pressuregroup.selectedValue != 399) ? "2" : "")
                        }
                    }
                    Container {
                        id: engine4
                        layout: DockLayout {
                        
                        }
                        background: ((elementgroup.selectedValue != 1 && elementgroup.selectedValue != 2) && (tubegroup.selectedValue != 3 && tubegroup.selectedValue != 1) ? Color.DarkYellow : Color.Transparent)
                        preferredHeight: 100
                        preferredWidth: 100
                        property int tubes: 2
                        property int pressure: 400
                        property int element: 7
                        Label {
                            horizontalAlignment: HorizontalAlignment.Center
                            verticalAlignment: VerticalAlignment.Center
                            text: ((elementgroup.selectedValue != 1 && elementgroup.selectedValue != 2) && (tubegroup.selectedValue != 3 && tubegroup.selectedValue != 1) ? "4" : "")
                        }
                    }
                    Container {
                        id: engine6
                        layout: DockLayout {
                        
                        }
                        background: ((elementgroup.selectedValue != 1 && elementgroup.selectedValue != 7) && (tubegroup.selectedValue != 3 && tubegroup.selectedValue != 1) && (pressuregroup.selectedValue != 399) ? Color.DarkGreen : Color.Transparent)
                        preferredHeight: 100
                        preferredWidth: 100
                        property int tubes: 2
                        property int pressure: 450
                        property int element: 2
                        Label {
                            horizontalAlignment: HorizontalAlignment.Center
                            verticalAlignment: VerticalAlignment.Center
                            text: ((elementgroup.selectedValue != 1 && elementgroup.selectedValue != 7) && (tubegroup.selectedValue != 3 && tubegroup.selectedValue != 1) && (pressuregroup.selectedValue != 399) ? "6" : "")
                        }
                    }
                }
                Container {
                    layout: StackLayout {
                        orientation: LayoutOrientation.TopToBottom
                    }
                    Container {
                        background: Color.Transparent
                        preferredHeight: 100
                        preferredWidth: 100
                    }
                    Container {
                        layout: DockLayout {
                        
                        }
                        background: Color.Transparent
                        preferredHeight: 100
                        preferredWidth: 100
                        Label {
                            horizontalAlignment: HorizontalAlignment.Center
                            verticalAlignment: VerticalAlignment.Center
                            text: qsTr("Table") + Retranslate.onLanguageChanged
                        }
                    }
                    Container {
                        layout: DockLayout {
                        
                        }
                        background: Color.Transparent
                        preferredHeight: 100
                        preferredWidth: 100
                        Label {
                            horizontalAlignment: HorizontalAlignment.Center
                            verticalAlignment: VerticalAlignment.Center
                            text: qsTr("Table") + Retranslate.onLanguageChanged
                        }
                    }
                    Container {
                        layout: DockLayout {
                        
                        }
                        background: Color.Transparent
                        preferredHeight: 100
                        preferredWidth: 100
                        Label {
                            horizontalAlignment: HorizontalAlignment.Center
                            verticalAlignment: VerticalAlignment.Center
                            text: qsTr("Table") + Retranslate.onLanguageChanged
                        }
                    }
                }
                Container {
                    layout: StackLayout {
                        orientation: LayoutOrientation.TopToBottom
                    }
                    Container {
                        background: Color.Transparent
                        preferredHeight: 100
                        preferredWidth: 100
                    }
                    Container {
                        id: engine1
                        layout: DockLayout {
                        
                        }
                        background: ((elementgroup.selectedValue != 1 && elementgroup.selectedValue != 2) && (tubegroup.selectedValue != 2 && tubegroup.selectedValue != 3) && (pressuregroup.selectedValue != 401) ? Color.DarkYellow : Color.Transparent)
                        preferredHeight: 100
                        preferredWidth: 100
                        property int tubes: 1
                        property int pressure: 375
                        property int element: 7
                        Label {
                            horizontalAlignment: HorizontalAlignment.Center
                            verticalAlignment: VerticalAlignment.Center
                            text: ((elementgroup.selectedValue != 1 && elementgroup.selectedValue != 2) && (tubegroup.selectedValue != 2 && tubegroup.selectedValue != 3) && (pressuregroup.selectedValue != 401) ? "1" : "")
                        }
                    }
                    Container {
                        id: engine3
                        layout: DockLayout {
                        
                        }
                        background: ((elementgroup.selectedValue != 1 && elementgroup.selectedValue != 7) && (tubegroup.selectedValue != 3 && tubegroup.selectedValue != 1) ? Color.DarkGreen : Color.Transparent)
                        preferredHeight: 100
                        preferredWidth: 100
                        property int tubes: 2
                        property int pressure: 400
                        property int element: 2
                        Label {
                            horizontalAlignment: HorizontalAlignment.Center
                            verticalAlignment: VerticalAlignment.Center
                            text: ((elementgroup.selectedValue != 1 && elementgroup.selectedValue != 7) && (tubegroup.selectedValue != 3 && tubegroup.selectedValue != 1) ? "3" : "")
                        }
                    }
                    Container {
                        id: engine5
                        layout: DockLayout {
                        
                        }
                        background: ((elementgroup.selectedValue != 2 && elementgroup.selectedValue != 7) && (tubegroup.selectedValue != 3 && tubegroup.selectedValue != 1) && (pressuregroup.selectedValue != 401) ? Color.DarkCyan : Color.Transparent)
                        preferredHeight: 100
                        preferredWidth: 100
                        property int tubes: 2
                        property int pressure: 300
                        property int element: 1
                        Label {
                            horizontalAlignment: HorizontalAlignment.Center
                            verticalAlignment: VerticalAlignment.Center
                            text: ((elementgroup.selectedValue != 2 && elementgroup.selectedValue != 7) && (tubegroup.selectedValue != 3 && tubegroup.selectedValue != 1) && (pressuregroup.selectedValue != 401) ? "5" : "")
                        }
                    }
                }
            }
            Divider {
                
            }
            Container {
                Container {
                    Header {
                        title: qsTr("Tubes") + Retranslate.onLanguageChanged
                    }
                    RadioGroup {
                        id: tubegroup
                        options: [
                            Option {
                                text: "1"
                                value: 1
                            },
                            Option {
                                text: "2"
                                value: 2
                            },
                            Option {
                                text: "3"
                                value: 3
                            }
                        ]
                    }
                }
                Container {
                    Header {
                        title: qsTr("Gas") + Retranslate.onLanguageChanged
                    }
                    RadioGroup {
                        id: elementgroup
                        options: [
                            Option {
                                text: qsTr("Deuterium") + Retranslate.onLanguageChanged
                                value: 1
                            },
                            Option {
                                text: qsTr("Helium") + Retranslate.onLanguageChanged
                                value: 2
                            },
                            Option {
                                text: qsTr("Nitrogen") + Retranslate.onLanguageChanged
                                value: 7
                            }
                        ]
                    }
                }
                Container {
                    Header {
                        title: qsTr("Pressure") + Retranslate.onLanguageChanged
                    }
                    RadioGroup {
                        id: pressuregroup
                        options: [
                            Option {
                                text: qsTr("≤ ~5800 PSI") + Retranslate.onLanguageChanged
                                value: 399
                            },
                            Option {
                                text: qsTr("≥ ~5800 PSI") + Retranslate.onLanguageChanged
                                value: 401
                            }
                        ]
                    }
                }
            }
        }
    }
}
