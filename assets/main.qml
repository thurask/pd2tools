import bb.cascades 1.4

TabbedPane {
    Menu.definition: MenuDefinition {
        id: menu
        helpAction: HelpActionItem {
            imageSource: "asset:///images/menus/ic_help.png"
            onTriggered: {
                var help = helpSheetDefinition.createObject()
                help.open();
            }
        }
        actions: [
            ActionItem {
                title: qsTr("Change Theme") + Retranslate.onLanguageChanged
                onTriggered: {
                    if (Application.themeSupport.theme.colorTheme.style == VisualStyle.Bright) {
                        Application.themeSupport.setVisualStyle(VisualStyle.Dark);
                    }
                    else {
                        Application.themeSupport.setVisualStyle(VisualStyle.Bright);
                    }
                }
                imageSource: "asset:///images/menus/ic_view_image.png"
            }
        ]
    }
    tabs: [
        Tab {
            title: qsTr("Big Oil") + Retranslate.onLanguageChanged
            BigOilCalc {
            
            }
        },
        Tab {
            title: qsTr("Hype Fuel") + Retranslate.onLanguageChanged
            HypeFuel {
                
            }
        }
    ]
    attachedObjects: [
        ComponentDefinition {
            id: helpSheetDefinition
            HelpSheet {
            }
        }
    ]
}