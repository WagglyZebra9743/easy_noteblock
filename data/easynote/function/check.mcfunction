#ストレージ関数を初期化
data modify storage minecraft:note note set value 0
#防具立てのタグを取得して代入
data modify storage minecraft:note note set from entity @s Tags[0]
#関数を呼び出す
function easynote:setnote with storage minecraft:note
kill @s[type=armor_stand,team=note]