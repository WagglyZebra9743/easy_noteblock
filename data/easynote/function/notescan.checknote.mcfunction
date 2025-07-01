#距離は決まっている
##音ブロックの音程が変数の値かどうかを調べる
##脱出時には変数が音程になる
###25を超えていたらリセット
execute if score @s note matches 25.. run scoreboard players set @s note 0
###音程が違う場合
####変数を加算
$execute anchored eyes unless block ^ ^ ^$(distance) minecraft:note_block[note=$(note)] run scoreboard players add @s note 1
####それをストレージ変数に格納
$execute anchored eyes unless block ^ ^ ^$(distance) minecraft:note_block[note=$(note)] store result storage minecraft:notescan note int 1 run scoreboard players get @s note
####ループ
$execute anchored eyes unless block ^ ^ ^$(distance) minecraft:note_block[note=$(note)] run function easynote:notescan.checknote with storage minecraft:notescan

#楽器の種類を指定するストレージ変数を初期化
data modify storage minecraft:notescan instrument set value none

#楽器の種類に応じて文字をストレージ変数に格納
$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=harp] if score @s lang matches 0 run data modify storage minecraft:notescan instrument set value "ハープ/ピアノ"
$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=harp] if score @s lang matches 1 run data modify storage minecraft:notescan instrument set value "harp/piano"

$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=basedrum] if score @s lang matches 0 run data modify storage minecraft:notescan instrument set value "バスドラム"
$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=basedrum] if score @s lang matches 1 run data modify storage minecraft:notescan instrument set value "basedrum"

$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=snare] if score @s lang matches 0 run data modify storage minecraft:notescan instrument set value "スネアドラム"
$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=snare] if score @s lang matches 1 run data modify storage minecraft:notescan instrument set value "snare"

$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=hat] if score @s lang matches 0 run data modify storage minecraft:notescan instrument set value "スティック"
$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=hat] if score @s lang matches 1 run data modify storage minecraft:notescan instrument set value "hat"

$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=bass] if score @s lang matches 0 run data modify storage minecraft:notescan instrument set value "バス"
$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=bass] if score @s lang matches 1 run data modify storage minecraft:notescan instrument set value "bass"

$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=flute] if score @s lang matches 0 run data modify storage minecraft:notescan instrument set value "フルート"
$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=flute] if score @s lang matches 1 run data modify storage minecraft:notescan instrument set value "flute"

$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=bell] if score @s lang matches 0 run data modify storage minecraft:notescan instrument set value "ベル"
$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=bell] if score @s lang matches 1 run data modify storage minecraft:notescan instrument set value "bell"

$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=guitar] if score @s lang matches 0 run data modify storage minecraft:notescan instrument set value "ギター"
$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=guitar] if score @s lang matches 1 run data modify storage minecraft:notescan instrument set value "guitar"

$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=chime] if score @s lang matches 0 run data modify storage minecraft:notescan instrument set value "チャイム"
$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=chime] if score @s lang matches 1 run data modify storage minecraft:notescan instrument set value "chime"

$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=xylophone] if score @s lang matches 0 run data modify storage minecraft:notescan instrument set value "木琴"
$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=xylophone] if score @s lang matches 1 run data modify storage minecraft:notescan instrument set value "xylophone"

$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=iron_xylophone] if score @s lang matches 0 run data modify storage minecraft:notescan instrument set value "鉄琴"
$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=iron_xylophone] if score @s lang matches 1 run data modify storage minecraft:notescan instrument set value "iron_xplophone"

$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=cow_bell] if score @s lang matches 0 run data modify storage minecraft:notescan instrument set value "カウベル"
$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=cow_bell] if score @s lang matches 1 run data modify storage minecraft:notescan instrument set value "cow_bell"

$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=didgeridoo] if score @s lang matches 0 run data modify storage minecraft:notescan instrument set value "ディジュリドゥ"
$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=didgeridoo] if score @s lang matches 1 run data modify storage minecraft:notescan instrument set value "didgeridoo"

$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=bit] if score @s lang matches 0 run data modify storage minecraft:notescan instrument set value "電子音"
$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=bit] if score @s lang matches 1 run data modify storage minecraft:notescan instrument set value "bit"

$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=banjo] if score @s lang matches 0 run data modify storage minecraft:notescan instrument set value "バンジョー"
$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=banjo] if score @s lang matches 1 run data modify storage minecraft:notescan instrument set value "banjo"

$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=pling] if score @s lang matches 0 run data modify storage minecraft:notescan instrument set value "電子ピアノ"
$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=pling] if score @s lang matches 1 run data modify storage minecraft:notescan instrument set value "pling"

$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=zombie] if score @s lang matches 0 run data modify storage minecraft:notescan instrument set value "ゾンビ"
$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=zombie] if score @s lang matches 1 run data modify storage minecraft:notescan instrument set value "zombie"

$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=skeleton] if score @s lang matches 0 run data modify storage minecraft:notescan instrument set value "スケルトン"
$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=skeleton] if score @s lang matches 1 run data modify storage minecraft:notescan instrument set value "skeleton"

$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=dragon] if score @s lang matches 0 run data modify storage minecraft:notescan instrument set value "エンダードラゴン"
$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=dragon] if score @s lang matches 1 run data modify storage minecraft:notescan instrument set value "dragon"

$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=wither_skeleton] if score @s lang matches 0 run data modify storage minecraft:notescan instrument set value "ウィザースケルトン"
$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=wither_skeleton] if score @s lang matches 1 run data modify storage minecraft:notescan instrument set value "wither_skeleton"

$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=piglin] if score @s lang matches 0 run data modify storage minecraft:notescan instrument set value "ピグリン"
$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=piglin] if score @s lang matches 1 run data modify storage minecraft:notescan instrument set value "piglin"

$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=creeper] if score @s lang matches 0 run data modify storage minecraft:notescan instrument set value "クリーパー"
$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=creeper] if score @s lang matches 1 run data modify storage minecraft:notescan instrument set value "creeper"

$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=custom_head] if score @s lang matches 0 run data modify storage minecraft:notescan instrument set value "カスタム"
$execute anchored eyes if block ^ ^ ^$(distance) minecraft:note_block[instrument=custom_head] if score @s lang matches 1 run data modify storage minecraft:notescan instrument set value "custom_head"


#テキスト表示関数を呼び出し
execute if score @s lang matches 0 run function easynote:notescan.sendmsg with storage minecraft:notescan
execute if score @s lang matches 1 run function easynote:notescan.sendmsg_en with storage minecraft:notescan
