# mac-keyboard-on-windows-autohotkey

Script AutoHotkey v2 qui rend un **clavier Keychron AZERTY Mac (ISO français)** entièrement fonctionnel sous Windows : les caractères correspondent à ce qui est gravé sur les touches, `command` fait Ctrl et `option` donne les caractères spéciaux comme sur macOS.

**Aucun droit administrateur n'est nécessaire.**

## Prérequis

- Interrupteur du Keychron sur **Mac**. En mode Windows, `option` et `command` sont échangées et le script ne fonctionne pas correctement.
- Disposition Windows : **Français (France)**, en AZERTY standard.
- [AutoHotkey v2](https://www.autohotkey.com/), version **zip** (portable, sans installation).

## Installation

1. Télécharger AutoHotkey v2 en zip et le dézipper, par exemple dans `Documents\AHK`.
2. Placer `clavier-mac.ahk` dans le même dossier.
3. Glisser `clavier-mac.ahk` sur `AutoHotkey64.exe`. Une icône verte « H » apparaît près de l'horloge.

### Lancement au démarrage

1. `Win + R` → taper `shell:startup` → Entrée.
2. Y créer un raccourci vers `clavier-mac.ahk`.

### Arrêter ou recharger

Clic droit sur l'icône « H » → **Exit** (arrêter) ou **Reload Script** (recharger après une modification).

## Ce que fait le script

### Touches modificatrices

| Touche | Comportement |
|---|---|
| `command` (gauche et droite) | Ctrl → `cmd+C`, `cmd+V`, `cmd+Z`, `cmd+Shift+T`, `cmd+clic`… |
| `option` | Alt + caractères spéciaux (voir plus bas) |
| `control` | Ctrl (inchangé) |

### Touches remappées

| Touche | Seule | Avec Shift |
|---|---|---|
| `@ #` (à gauche du 1) | `@` | `#` |
| `6` | `§` | `6` |
| `8` | `!` | `8` |
| `- _` (après le `)`) | `-` | `_` |
| `$ *` (à côté du P) | `$` | `*` |
| `` ` £ `` (à côté d'Entrée) | `` ` `` | `£` |
| `= +` (avant Maj droite) | `=` | `+` |

Les autres touches (`& é " ' ( è ç à )`, `^ ¨`, `ù %`, `< >`, `, ? ; . : /`) sont déjà correctes sous Windows et ne sont pas modifiées.

### Caractères avec `option`

| Combinaison | Caractère |
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

Utiliser l'`option` **de gauche**.

## Limites connues

- **`cmd + Tab`** envoie Ctrl+Tab (changement d'onglet). Pour changer d'application : `option + Tab`.
- **Fenêtres lancées en administrateur** : le script n'a pas d'effet dedans, puisqu'il tourne sans droits admin.
- **`Alt + Shift`** peut changer de langue de clavier si plusieurs dispositions sont installées dans Windows. Garder uniquement « Français (France) » évite le problème.
- `` ` `` et `~` sont tapés directement, pas en touche morte.

## Dépannage

**Les touches `@ #` et `< >` sont inversées** (la touche `@ #` donne `<` et la touche `< >` donne `²`) : ouvrir le fichier, passer `INVERSER := false` à `INVERSER := true` en haut, puis recharger le script.

**Une touche donne le mauvais caractère** : clic droit sur l'icône « H » → **Open** → `View` → **Key history**, appuyer sur la touche, puis relever son code `SC` pour corriger le script.

**Les caractères spéciaux (`€`, `§`, `£`) s'affichent mal** : enregistrer le fichier en **UTF-8**.
