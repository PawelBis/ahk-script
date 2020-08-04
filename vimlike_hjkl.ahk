#NoEnv                      ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance FORCE       ; Skip invocation dialog box and silently replace previously executing instance of this script.
SendMode Input              ; Recommended for new scripts due to its superior speed and reliability.

; If you want to have caps lock enabled: comment out next the line and uncomment CapsLock processing block
;SetCapsLockState AlwaysOff
;================================================================================================
;  CapsLock processing.  Must double tap CapsLock to toggle CapsLock mode on or off.
;================================================================================================
; Must double tap CapsLock to toggle CapsLock mode on or off.
CapsLock::
    KeyWait, CapsLock                                                   ; Wait forever until Capslock is released.
    KeyWait, CapsLock, D T0.2                                           ; ErrorLevel = 1 if CapsLock not down within 0.2 seconds.
    if ((ErrorLevel = 0) && (A_PriorKey = "CapsLock") )                 ; Is a double tap on CapsLock?
        {
        SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"  ; Toggle the state of CapsLock LED
        }
return

;================================================================================================
; Vim like movement with CapsLock modifier
;================================================================================================ 
CapsLock & h:: Send {Left}
CapsLock & j:: Send {Down}
CapsLock & k:: Send {Up}
CapsLock & l:: Send {Right}

;================================================================================================
; Programming helpers
;================================================================================================
CapsLock & Space:: Send {_}
CapsLock & u:: Send {&}
CapsLock & i:: Send {*}
CapsLock & o:: Send {(}
CapsLock & p:: Send {)}
CapsLock & [:: Send {-}
CapsLock & ]:: Send {=}


;================================================================================================
; Capslock Numpad
;================================================================================================
CapsLock & q:: Send {7}
CapsLock & w:: Send {8}
CapsLock & e:: Send {9}
CapsLock & a:: Send {4}
CapsLock & s:: Send {5}
CapsLock & d:: Send {6}
CapsLock & z:: Send {1}
CapsLock & x:: Send {2}
CapsLock & c:: Send {3}
CapsLock & Alt:: Send {0}