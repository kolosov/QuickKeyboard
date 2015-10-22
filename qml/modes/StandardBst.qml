import QtQuick 2.0
import QuickKeyboard 1.0
import ".."

Mode {
    signal symbolsModeSwitched
    layout: GridLayout{ rows: 10; cols: 28 }

    property variant btn_q:
        (shift.pressed || shift2.pressed) ? ["Q"] : ["q"]
    property variant btn_w:
        (shift.pressed || shift2.pressed) ? ["W"] : ["w"]
    property variant btn_e:
        (shift.pressed || shift2.pressed) ? ["E"] : ["e"]
    property variant btn_r:
        (shift.pressed || shift2.pressed) ? ["R"] : ["r"]
    property variant btn_t:
        (shift.pressed || shift2.pressed) ? ["T"] : ["t"]
    property variant btn_y:
        (shift.pressed || shift2.pressed) ? ["Y"] : ["y"]
    property variant btn_u:
        (shift.pressed || shift2.pressed) ? ["U"] : ["u"]
    property variant btn_i:
        (shift.pressed || shift2.pressed) ? ["I"] : ["i"]
    property variant btn_o:
        (shift.pressed || shift2.pressed) ? ["O"] : ["o"]
    property variant btn_p:
        (shift.pressed || shift2.pressed) ? ["P"] : ["p"]
    property variant btn_a:
        (shift.pressed || shift2.pressed) ? ["A"] : ["a"]
    property variant btn_s:
        (shift.pressed || shift2.pressed) ? ["S"] : ["s"]
    property variant btn_d:
        (shift.pressed || shift2.pressed) ? ["D"] : ["d"]
    property variant btn_f:
        (shift.pressed || shift2.pressed) ? ["F"] : ["f"]
    property variant btn_g:
        (shift.pressed || shift2.pressed) ? ["G"] : ["g"]
    property variant btn_h:
        (shift.pressed || shift2.pressed) ? ["H"] : ["h"]
    property variant btn_j:
        (shift.pressed || shift2.pressed) ? ["J"] : ["j"]
    property variant btn_k:
        (shift.pressed || shift2.pressed) ? ["K"] : ["k"]
    property variant btn_l:
        (shift.pressed || shift2.pressed) ? ["L"] : ["l"]
    property variant btn_z:
        (shift.pressed || shift2.pressed) ? ["Z"] : ["z"]
    property variant btn_x:
        (shift.pressed || shift2.pressed) ?
            ["X", "Ẋ", "Ẍ", ">"] : ["x", "ẋ", "ẍ", "#"]
    property variant btn_c:
        (shift.pressed || shift2.pressed) ? ["C"] : ["c"]
    property variant btn_v:
        (shift.pressed || shift2.pressed) ?
            ["V", "Ṽ", "‘"] : ["v", "ṽ", "@"]
    property variant btn_b:
        (shift.pressed || shift2.pressed) ?
            ["B", "Ḃ", "’"] : ["b", "ḃ", "{"]
    property variant btn_n:
        (shift.pressed || shift2.pressed) ? ["N"] : ["n"]
    property variant btn_m:
        (shift.pressed || shift2.pressed) ? ["M"] : ["m"]
    property variant btn_dot:
        (shift.pressed || shift2.pressed) ?
            [",", ".", ":", ";", "!", "?"] : [".", ",", ":", ";", "!", "?"]


    Btn { col:  0; row: 0; label: "1"; symbols: ["1"] }
    Btn { col:  2; row: 0; label: "2"; symbols: ["2"] }
    Btn { col:  4; row: 0; label: "3"; symbols: ["3"] }
    Btn { col:  6; row: 0; label: "4"; symbols: ["4"] }
    Btn { col:  8; row: 0; label: "5"; symbols: ["5"] }
    Btn { col: 10; row: 0; label: "6"; symbols: ["6"] }
    Btn { col: 12; row: 0; label: "7"; symbols: ["7"] }
    Btn { col: 14; row: 0; label: "8"; symbols: ["8"] }
    Btn { col: 16; row: 0; label: "9"; symbols: ["9"] }
    Btn { col: 18; row: 0; label: "0"; symbols: ["0"] }
    Btn { col: 20; row: 0; label: "-"; symbols: ["-"] }
    Btn { col: 22; row: 0; label: "="; symbols: ["="] }
    Btn { col: 24; row: 0; GridLayout.colSpan: 4; label: "delete"; hasPreview: false; symbols: ["\x7f"] }

    Btn { col: 0; row: 2; label: "Tab"; symbols: ["\t"] }
    Btn { col: 2; row: 2; label: "Q"; symbols: btn_q }
    Btn { col: 4; row: 2; label: "W"; symbols: btn_w }
    Btn { col: 6; row: 2; label: "E"; symbols: btn_e }
    Btn { col: 8; row: 2; label: "R"; symbols: btn_r }
    Btn { col: 10; row: 2; label: "T"; symbols: btn_t }
    Btn { col: 12; row: 2; label: "Y"; symbols: btn_y }
    Btn { col: 14; row: 2; label: "U"; symbols: btn_u }
    Btn { col: 16; row: 2; label: "I"; symbols: btn_i }
    Btn { col: 18; row: 2; label: "O"; symbols: btn_o }
    Btn { col: 20; row: 2; label: "P"; symbols: btn_p }
    Btn { col: 22; row: 2; label: "["; symbols: ["["] }
    Btn { col: 24; row: 2; label: "]"; symbols: ["]"] }
    Btn { col: 26; row: 2; label: "\\"; symbols: ["\\"] }

    Btn { col: 0; row: 4; label: "Caps"; symbols: ["\t"] }
    Btn { col: 2; row: 4; label: "A"; symbols: btn_a }
    Btn { col: 4; row: 4; label: "S"; symbols: btn_s }
    Btn { col: 6; row: 4; label: "D"; symbols: btn_d }
    Btn { col: 8; row: 4; label: "F"; symbols: btn_f }
    Btn { col: 10; row: 4; label: "G"; symbols: btn_g }
    Btn { col: 12; row: 4; label: "H"; symbols: btn_h }
    Btn { col: 14; row: 4; label: "J"; symbols: btn_j }
    Btn { col: 16; row: 4; label: "K"; symbols: btn_k }
    Btn { col: 18; row: 4; label: "L"; symbols: btn_l }
    Btn { col: 20; row: 4; label: ";"; symbols: [";"] }
    Btn { col: 22; row: 4; label: "'"; symbols: ["'"] }
    Btn { col: 24; row: 4; GridLayout.colSpan: 4; label: "return"; hasPreview: false; symbols: "\n" }

    Btn { col:  0; row: 6; GridLayout.colSpan: 4; label: "shift"; id: shift; modifier: true; hasPreview: false }
    Btn { col:  4; row: 6; label: "Z"; symbols: btn_z }
    Btn { col:  6; row: 6; label: "X"; symbols: btn_x }
    Btn { col:  8; row: 6; label: "C"; symbols: btn_c }
    Btn { col: 10; row: 6; label: "V"; symbols: btn_v }
    Btn { col: 12; row: 6; label: "B"; symbols: btn_b }
    Btn { col: 14; row: 6; label: "N"; symbols: btn_n }
    Btn { col: 16; row: 6; label: "M"; symbols: btn_m }
    Btn { col: 18; row: 6; label: ","; symbols: [","] }
    Btn { col: 20; row: 6; label: "."; symbols: ["."] }
    Btn { col: 22; row: 6; label: "/"; symbols: ["/"] }
//    Btn { col: 16; row: 6; label: "´"; id: acute; modifier: true; hasPreview: false; onActiveChanged: if (active) caron.active = false }
//    Btn { col: 18; row: 6; label: "ˇ"; id: caron; modifier: true; hasPreview: false; onActiveChanged: if (active) acute.active = false }
    Btn { col:  24; row: 6; GridLayout.colSpan: 4; label: "shift"; id: shift2; modifier: true; hasPreview: false }

    //Btn { col:  0; row: 6; GridLayout.colSpan: 5; label: "12#"; onTriggered: symbolsModeSwitched(); hasPreview: false }
    //Btn { col: 15; row: 6; label: shift.pressed ? "," : "."; symbols: btn_dot }
    //Btn { col: 17; row: 6; GridLayout.colSpan: 3; label: "⏎"; hasPreview: false; symbols: "\n" }

    Btn { col:  0; row: 8; GridLayout.colSpan: 28; label: "Space"; hasPreview: false; symbols: " " }
}
