# autohotkey-scripts

My personal authotkey scripts.

## Setup

- Install [AutoHotkey].
- Put a link to the desired commands into your Windows Startup folder

## Keybindings

| Shortcut                                                     | Note                                                                                                                                                               | Application      | File                                           |
|--------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------|------------------------------------------------|
| <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Shift</kbd>+<kbd>D</kbd> | "d" like **d**ate. Types the current date. We opted for the thee modifier keys as <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>D</kbd> starts a comment in Confluence.      | (all)            | [SendDate.ahk](SendDate.ahk)                   |
| <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Shift</kbd>+<kbd>T</kbd> | "t" like **t**time. Types the current date and time                                                                                                                | (all)            | [SendTimeAndDate.ahk](SendTimeAndDate.ahk)     |
| <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>H</kbd>                  | "h" for **h**idden. Toggles display of hidden files in Windows Explorer                                                                                            | Windows Explorer | [ToggleHiddenFiles.ahk](ToggleHiddenFiles.ahk) |
| <kbd>Win</kbd>+<kbd>B</kbd>                                  | "b" like **b**rowser                                                                                                                                               | [Firefox]        | [Firefox.ahk](Firefox.ahk)                     |
| <kbd>Win</kbd>+<kbd>G</kbd>                                  | "g" like **g**oogle                                                                                                                                                | [Chrome]         | [Chrome.ahk](Chrome.ahk)                       |
| <kbd>Win</kbd>+<kbd>+</kbd>                                  | "Plus" like Nodepad *plus* plus                                                                                                                                    | [Nodepad++]      | [Notepad.ahk](Notepad.ahk)                     |
| <kbd>Win</kbd>+<kbd>E</kbd>                                  | Overrides default <kbd>Win</kbd>+<kbd>E</kbd> with focusing an active explorer window.<br>Especially useful for a tabbed Windows Explorer (provided by [QTTabBar]) | Windows Explorer | [WindowsExplorer.ahk](WindowsExplorer.ahk)     |
| <kbd>Win</kbd>+<kbd>C</kbd>                                  | "c", like **c**onsole                                                                                                                                              | [ConEmu]         | [ConEmu.ahk](ConEmu.ahk)                       |
| <kbd>Win</kbd>+<kbd>C</kbd>                                  | "c", like **c**onsole (<kbd>Win</kbd>+<kbd>T</kbd> tabs through the task bar)                                                                                      | Windows Terminal | [WindowsTerminal.ahk](WindowsTerminal.ahk)     |
| <kbd>Win</kbd>+<kbd>W</kbd>                                  | "w" like **w**indow (<kbd>Win</kbd>+<kbd>I</kbd> opens the windows settings dialog)                                                                                | [IntelliJ IDEA]  | [IntelliJ.ahk](IntelliJ.ahk)                   |
| <kbd>Win</kbd>+<kbd>J</kbd>                                  | "j" like **J**abRef                                                                                                                                                | [JabRef]         | [JabRef.ahk](JabRef.ahk)                       |
| <kbd>Win</kbd>+<kbd>S</kbd>                                  | "s" like **S**umatra PDF                                                                                                                                           | [Sumatra PDF]    | [SumatraPDF.ahk](SumatraPDF.ahk)               |
| <kbd>Win</kbd>+<kbd>O</kbd>                                  | "o" like **o**pera                                                                                                                                                 | [Opera]          | [Opera.ahk](Opera.ahk)                         |
| <kbd>Win</kbd>+<kbd>Z</kbd>                                  | "z" like **z**otero                                                                                                                                                | [Zotero]         | [Zotero.ahk](Zotero.ahk)                       |

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
[Nodepad++]: http://notepad-plus-plus.org/
[Opera]: http://www.opera.com/
[QTTabBar]: http://qttabbar.sourceforge.net/
[Sumatra PDF]: https://www.sumatrapdfreader.org/
[Zotero]: https://www.zotero.org/

<!-- markdownlint-disable-file MD033 -->
