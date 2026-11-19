#Requires AutoHotkey v2.0
#SingleInstance Force
; ============================================================================
;  Keychron French AZERTY Mac keyboard (ISO) on Windows
;  - Keychron switch set to "Mac"
;  - Windows keyboard layout: "French (France)" AZERTY
; ============================================================================

; If the "@ #" key (left of 1) types "<" and the "< >" key
; (next to left Shift) types "²", set this to true.
SWAP_KEYS := false

if SWAP_KEYS {
    Hotkey "SC056",  (*) => SendText("@")
    Hotkey "+SC056", (*) => SendText("#")
    Hotkey "!SC056", (*) => SendText("•")
    Hotkey "SC029",  (*) => SendText("<")
    Hotkey "+SC029", (*) => SendText(">")
} else {
    Hotkey "SC029",  (*) => SendText("@")
    Hotkey "+SC029", (*) => SendText("#")
    Hotkey "!SC029", (*) => SendText("•")
    ; The "< >" key already works correctly on Windows.
}

; ===== command = Ctrl (cmd+C, cmd+V, cmd+Z, cmd+Shift+T, cmd+click...) =====
LWin::LCtrl
RWin::RCtrl

; ===== Number row =====
; & é " ' ( and è ç à ) already match Windows.
SC007::SendText "§"          ; 6 key          (§ / 6)
SC009::SendText "!"          ; 8 key          (! / 8)
SC00D::SendText "-"          ; key after )    (- / _)
+SC00D::SendText "_"

; ===== A Z E R T Y row =====
; ^ ¨ already matches.
+SC01B::SendText "*"         ; $ key          ($ / *)
!SC01B::SendText "€"         ; option + $

; ===== Q S D F G H row =====
; ù % already matches.
SC02B::SendText "``"         ; key next to Enter (` / £)
+SC02B::SendText "£"

; ===== W X C V B N row =====
; , ?   ; .   : /  already match.
SC035::SendText "="          ; last key before right Shift (= / +)
+SC035::SendText "+"

; ===== option characters (same as macOS) =====
!SC006::SendText "{"         ; option + (
!+SC006::SendText "["        ; option + Shift + (
!SC00C::SendText "}"         ; option + )
!+SC00C::SendText "]"        ; option + Shift + )
!+SC026::SendText "|"        ; option + Shift + L
!+SC034::SendText "\"        ; option + Shift + :
!SC031::SendText "~"         ; option + N
!SC013::SendText "®"         ; option + R
!SC010::SendText "æ"         ; option + A
!SC032::SendText "∞"         ; option + ,
!SC00D::SendText "—"         ; option + -
!SC035::SendText "≠"         ; option + =
