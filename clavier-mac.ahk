#Requires AutoHotkey v2.0
#SingleInstance Force
; ============================================================================
;  Keychron AZERTY Mac (ISO francais) sur Windows
;  - Interrupteur du Keychron sur "Mac"
;  - Disposition Windows : "Francais (France)" AZERTY
; ============================================================================

; Si la touche "@ #" (a gauche du 1) affiche "<" et que la touche "< >"
; (a cote de Maj gauche) affiche "²", passe cette valeur a true.
INVERSER := false

if INVERSER {
    Hotkey "SC056",  (*) => SendText("@")
    Hotkey "+SC056", (*) => SendText("#")
    Hotkey "!SC056", (*) => SendText("•")
    Hotkey "SC029",  (*) => SendText("<")
    Hotkey "+SC029", (*) => SendText(">")
} else {
    Hotkey "SC029",  (*) => SendText("@")
    Hotkey "+SC029", (*) => SendText("#")
    Hotkey "!SC029", (*) => SendText("•")
    ; La touche "< >" est deja correcte sous Windows.
}

; ===== command = Ctrl (cmd+C, cmd+V, cmd+Z, cmd+Shift+T, cmd+clic...) =====
LWin::LCtrl
RWin::RCtrl

; ===== Rangee des chiffres =====
; & é " ' ( et è ç à ) sont deja identiques a Windows.
SC007::SendText "§"          ; touche 6       (§ / 6)
SC009::SendText "!"          ; touche 8       (! / 8)
SC00D::SendText "-"          ; touche apres ) (- / _)
+SC00D::SendText "_"

; ===== Rangee A Z E R T Y =====
; ^ ¨ est deja correct.
+SC01B::SendText "*"         ; touche $       ($ / *)
!SC01B::SendText "€"         ; option + $

; ===== Rangee Q S D F G H =====
; ù % est deja correct.
SC02B::SendText "``"         ; touche a cote d'Entree (` / £)
+SC02B::SendText "£"

; ===== Rangee W X C V B N =====
; , ?   ; .   : /  sont deja corrects.
SC035::SendText "="          ; derniere touche avant Maj droite (= / +)
+SC035::SendText "+"

; ===== Caracteres avec option (comme sur Mac) =====
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
