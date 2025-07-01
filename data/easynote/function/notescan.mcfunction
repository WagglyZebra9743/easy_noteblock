#ストレージ変数の距離測定部分を初期化
data modify storage notescan distance set value 1

#距離測定変数を初期化
scoreboard players set @s distance 1

#ストレージ変数の音階測定部分を初期化
data modify storage notescan note set value 0

#距離計算関数を呼び出す
function easynote:notescan.distance with storage minecraft:notescan