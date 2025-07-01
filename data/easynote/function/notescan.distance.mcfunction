#距離が最大を超えていたら距離を0にする
execute if score @s distance > @s maxdistance run scoreboard players set @s distance 0
#NOT音ブロック
##距離を加算
$execute anchored eyes unless block ^ ^ ^$(distance) minecraft:note_block run scoreboard players add @s distance 1
##加算した距離をストレージ変数に格納
$execute anchored eyes unless block ^ ^ ^$(distance) minecraft:note_block run execute store result storage minecraft:notescan distance int 1 run scoreboard players get @s distance
##ループ
$execute anchored eyes unless block ^ ^ ^$(distance) minecraft:note_block run function easynote:notescan.distance with storage minecraft:notescan
#YES音ブロック
##音程確認変数を初期化
$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block run scoreboard players set @s note 0
##音程確認関数を呼び出す
$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block run function easynote:notescan.checknote with storage minecraft:notescan
