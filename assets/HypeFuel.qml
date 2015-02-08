import bb.cascades 1.4
import bb.data 1.0

Page {
    id: mainpage
    function setHype() {
        if (hypecpp.getHype() > 2000000) {
            hype = 0
        }
        else {
            hype = hypecpp.getHype();
        }
        repoDataSource.load();
    }
    property int hype
    property bool loaded: false
    titleBar: TitleBar {
        title: qsTr("HYPE TRAIN") + Retranslate.onLanguageChanged
    }
    actions: [
        ActionItem {
            title: (loaded == true ? qsTr("Reload") + Retranslate.onLanguageChanged : qsTr("Load") + Retranslate.onLanguageChanged)
            onTriggered: {
                if (loaded == false) {
                    loaded = true
                }
                hypecpp.hypeChanged.connect(mainpage.setHype())
                hypecpp.hypeRequest();
            }
            imageSource: "asset:///images/menus/ic_reload.png"
            ActionBar.placement: ActionBarPlacement.Signature
        }
    ]
    Container {
        Container {
            Label {
                text: qsTr("CURRENT HYPE FUEL") + Retranslate.onLanguageChanged
                horizontalAlignment: HorizontalAlignment.Center
                textStyle.fontSize: FontSize.Large
            }
            Label {
                text: hype.toString()
                horizontalAlignment: HorizontalAlignment.Center
                textStyle.fontSize: FontSize.XXLarge
            }
            Divider {
            
            }
        }
        ListView {
            id: listView
            dataModel: repoDataModel
            listItemComponents: [
                ListItemComponent {
                    type: "header"
                    id: licheader
                    Header {
                        title: ListItemData.name
                        visible: false
                    }
                },
                ListItemComponent {
                    type: "item"
                    id: licitem
                    StandardListItem {
                        id: slistitem
                        title: ListItemData.name
                        description: ListItemData.desc
                        status: ListItemData.value
                        imageSource: slistitem.ListItem.view.becauseListItemsSuck(ListItemData.value)
                    }
                }
            ]
            function becauseListItemsSuck(value) {
                return ((hype == 0 || hype < parseInt(value, 10)) ? "asset:///images/hype/pd2black.png" : "asset:///images/hype/pd2.png") // if this isn't a oneliner ternary operator, the list item has a fit; FUCK list items
            }
            scrollIndicatorMode: ScrollIndicatorMode.ProportionalBar
        }
    }
    attachedObjects: [
        GroupDataModel {
            id: repoDataModel
            sortingKeys: [
            "GroupDataModelFuckingSucks"
            ]
            sortedAscending: true
            grouping: ItemGrouping.None
        },
        DataSource {
            id: repoDataSource
            remote: false
            source: "asset:///xml/hype.xml"
            query: "repo/milestone"
            type: DataSourceType.Xml
            onDataLoaded: {
                repoDataModel.clear();
                repoDataModel.insertList(data)
            }
        }
    ]
    onCreationCompleted: {
        repoDataSource.load();
        hypecpp.hypeChanged.connect(mainpage.setHype())
        hypecpp.hypeRequest()
    }
}

