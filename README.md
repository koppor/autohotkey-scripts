# autohotkey-scripts

My personal authotkey scripts.

All bindings live in a single file: [MyScripts.ahk](MyScripts.ahk).
Toggle a binding by commenting or uncommenting its line.

## Setup

- Install [AutoHotkey] (v2).
- Put a shortcut to [MyScripts.ahk](MyScripts.ahk) into your Windows Startup folder (`shell:startup`).

## Keybindings

Enabled by default:

| Shortcut                                                     | Note                                                                                                                                                          | Application       |
|--------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------|
| <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Shift</kbd>+<kbd>D</kbd> | "d" like **d**ate. Types the current date. We opted for the three modifier keys as <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>D</kbd> starts a comment in Confluence. | (all)             |
| <kbd>Win</kbd>+<kbd>B</kbd>                                  | "b" like **b**rowser                                                                                                                                          | [Firefox]         |
| <kbd>Win</kbd>+<kbd>+</kbd>                                  | "Plus" like Notepad *plus* plus                                                                                                                               | [Notepad++]       |
| <kbd>Win</kbd>+<kbd>E</kbd>                                  | Overrides default <kbd>Win</kbd>+<kbd>E</kbd> with focusing an active explorer window.<br>Especially useful for a tabbed Windows Explorer (provided by [QTTabBar]) | Windows Explorer |
| <kbd>Win</kbd>+<kbd>C</kbd>                                  | "c" like **c**onsole (<kbd>Win</kbd>+<kbd>T</kbd> tabs through the task bar)                                                                                  | Windows Terminal  |
| <kbd>Win</kbd>+<kbd>W</kbd>                                  | "w" like **w**indow (<kbd>Win</kbd>+<kbd>I</kbd> opens the windows settings dialog)                                                                           | [IntelliJ IDEA]   |
| <kbd>Win</kbd>+<kbd>J</kbd>                                  | "j" like **J**abRef                                                                                                                                           | [JabRef]          |
| <kbd>Win</kbd>+<kbd>S</kbd>                                  | "s" like **S**umatra PDF                                                                                                                                      | [Sumatra PDF]     |
| <kbd>Win</kbd>+<kbd>O</kbd>                                  | "o" like **O**neNote                                                                                                                                          | Microsoft OneNote |

Available but disabled (uncomment the relevant line in [MyScripts.ahk](MyScripts.ahk) to enable):

| Shortcut                                                     | Note                                                  | Application |
|--------------------------------------------------------------|-------------------------------------------------------|-------------|
| <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Shift</kbd>+<kbd>T</kbd> | "t" like **t**ime. Types the current date and time    | (all)       |
| <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>H</kbd>                  | "h" for **h**idden. Toggles display of hidden files   | Windows Explorer |
| <kbd>Win</kbd>+<kbd>G</kbd>                                  | "g" like **g**oogle                                   | [Chrome]    |
| <kbd>Win</kbd>+<kbd>C</kbd>                                  | Conflicts with Windows Terminal                       | [ConEmu]    |
| <kbd>Win</kbd>+<kbd>O</kbd>                                  | Conflicts with OneNote                                | [Opera]     |
| <kbd>Win</kbd>+<kbd>Z</kbd>                                  | "z" like **z**otero                                   | [Zotero]    |

## Resources

For tool installation, see <https://github.com/koppor/koppors-chocolatey-scripts>.

Other AutoHotkey resources:

- <https://github.com/baderas/autohotkey-scripts>
- <https://github.com/ahkscript/awesome-AutoHotkey>
- [Trending on GitHub](https://github.com/trending?l=autohotkey)

## Alternatives

For launching/focussing an application, there is the feature [launch application](https://www.quickaccesspopup.com/how-do-i-add-an-application-or-script-to-my-menu/) of [Quick Access Popup](https://www.quickaccesspopup.com/).

### Alternatives on Linux.

In general [jumpapp](https://github.com/mkropat/jumpapp) is offers the focusing (and launching) alternative than the above scripts.
When using the new window manager [Hyprland](https://hyprland.org/), there [seem to be issues](https://www.reddit.com/r/hyprland/comments/12scv62/jumpapp_alternative/).

[AutoHotkey]: http://www.autohotkey.com
[Chrome]: https://www.google.com/chrome
[ConEmu]: https://conemu.github.io/
[Firefox]: http://www.mozilla.org/firefox
[IntelliJ IDEA]: https://www.jetbrains.com/idea/
[JabRef]: https://www.jabref.org/
[Notepad++]: http://notepad-plus-plus.org/
[Opera]: http://www.opera.com/
[QTTabBar]: http://qttabbar.sourceforge.net/
[Sumatra PDF]: https://www.sumatrapdfreader.org/
[Zotero]: https://www.zotero.org/

<!-- markdownlint-disable-file MD033 -->
