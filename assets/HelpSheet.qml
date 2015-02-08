import bb.cascades 1.4
import bb 1.3

Sheet {
    id: helpSheet
    content: Page {
        titleBar: TitleBar {
            title: qsTr("Help") + Retranslate.onLanguageChanged
            dismissAction: ActionItem {
                title: qsTr("Close") + Retranslate.onLanguageChanged
                onTriggered: {
                    helpSheet.close()
                    if (helpSheet) helpSheet.destroy();
                }
            }
        }
        Container {
            Label {
                text: qsTr("PAYDAY 2 Tools %1").arg(((appinfo.version.split('.')).slice(0,3)).join('.'))
                horizontalAlignment: HorizontalAlignment.Center
                textStyle.fontWeight: FontWeight.Bold
                textStyle.fontSize: FontSize.Large
            }
            Label  {
                text: qsTr("Developed by Thurask.") + Retranslate.onLanguageChanged
                horizontalAlignment: HorizontalAlignment.Center
                textStyle.textAlign: TextAlign.Center
            }
            Label {
                text: qsTr("Do what you want with the source code: \n%1").arg("https://github.com/thurask/pd2tools") + Retranslate.onLanguageChanged
                horizontalAlignment: HorizontalAlignment.Center
                textStyle.textAlign: TextAlign.Center
                content.flags: TextContentFlag.ActiveText
                multiline: true
            }
        }
    }
    attachedObjects: [
        ApplicationInfo {
            id: appinfo   
        }
    ]
}