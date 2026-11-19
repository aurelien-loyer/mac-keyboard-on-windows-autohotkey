# mac-keyboard-on-windows-autohotkey

AutoHotkey v2 script that makes a **Keychron French AZERTY Mac keyboard (ISO)** fully usable on Windows: every key types what is printed on it, `command` acts as Ctrl, and `option` gives the same special characters as on macOS.

**No administrator rights required.**

## Requirements

- Keychron switch set to **Mac**. In Windows mode, `option` and `command` are swapped and the script won't behave correctly.
- Windows keyboard layout: **French (France)**, standard AZERTY.
- [AutoHotkey v2](https://www.autohotkey.com/), **zip** version (portable, no install).

## Installation

1. Download AutoHotkey v2 as a zip and extract it, e.g. to `Documents\AHK`.
2. Put `clavier-mac.ahk` in the same folder.
3. Drag `clavier-mac.ahk` onto `AutoHotkey64.exe`. A green "H" icon appears near the clock.

### Run at startup

1. `Win + R` → type `shell:startup` → Enter.
2. Create a shortcut to `clavier-mac.ahk` in that folder.

### Stop or reload

Right-click the "H" icon → **Exit** (stop) or **Reload Script** (after editing).

## What the script does

### Modifier keys

| Key | Behavior |
|---|---|
| `command` (left and right) | Ctrl → `cmd+C`, `cmd+V`, `cmd+Z`, `cmd+Shift+T`, `cmd+click`… |
| `option` | Alt + special characters (see below) |
| `control` | Ctrl (unchanged) |

### Remapped keys

| Key | Alone | With Shift |
|---|---|---|
| `@ #` (left of 1) | `@` | `#` |
| `6` | `§` | `6` |
| `8` | `!` | `8` |
| `- _` (after `)`) | `-` | `_` |
| `$ *` (next to P) | `$` | `*` |
| `` ` £ `` (next to Enter) | `` ` `` | `£` |
| `= +` (before right Shift) | `=` | `+` |

All other keys (`& é " ' ( è ç à )`, `^ ¨`, `ù %`, `< >`, `, ? ; . : /`) already match on Windows and are left untouched.

### `option` characters

| Shortcut | Character |
|---|---|
| `option + (` | `{` |
| `option + )` | `}` |
| `option + Shift + (` | `[` |
| `option + Shift + )` | `]` |
| `option + Shift + L` | `\|` |
| `option + Shift + :` | `\` |
| `option + N` | `~` |
| `option + $` | `€` |
| `option + @` | `•` |
| `option + -` | `—` |
| `option + =` | `≠` |
| `option + ,` | `∞` |
| `option + A` | `æ` |
| `option + R` | `®` |

Use the **left** `option` key.

## Known limitations

- **`cmd + Tab`** sends Ctrl+Tab (switches browser tabs). To switch apps, use `option + Tab`.
- **Windows run as administrator**: the script has no effect there, since it runs without admin rights.
- **`Alt + Shift`** may switch keyboard language if several layouts are installed in Windows. Keeping only "French (France)" avoids this.
- `` ` `` and `~` are typed directly, not as dead keys.

## Troubleshooting

**`@ #` and `< >` keys are swapped** (the `@ #` key types `<` and the `< >` key types `²`): open the file, change `INVERSER := false` to `INVERSER := true` at the top, then reload the script.

**A key types the wrong character**: right-click the "H" icon → **Open** → `View` → **Key history**, press the key, and note its `SC` code to fix the script.

**Special characters (`€`, `§`, `£`) display incorrectly**: save the file as **UTF-8**.
