//
//  1. Create a status item by asking the system status bar for a place
//  2. Create a menu item
//  3. Tell the status item about our menu
//

import Cocoa

class MenuBarTestController: NSObject {
    
    @IBOutlet weak var menuBar: NSMenu!
    let statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(NSVariableStatusItemLength)
    
    override func awakeFromNib() {
        let icon = NSImage(named: "iconSet")
        icon?.template = true
        statusItem.image = icon
        statusItem.menu = menuBar
    }
}
