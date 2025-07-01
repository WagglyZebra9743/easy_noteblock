#ログイン時にメッセージ
##なぜか改行が使えないから複数行
execute as @a at @s run execute if score @s logout matches 1.. run tellraw @s {"text":""}
execute as @a at @s run execute if score @s logout matches 1.. if score @s lang matches 0 run tellraw @s {"color":"white","text":"音符ブロック状態表示機能"}
execute as @a at @s run execute if score @s logout matches 1.. if score @s lang matches 1 run tellraw @s {"color":"white","text":"Show noteblock data"}
###有効(1)の時
execute as @a at @s run execute if score @s logout matches 1.. if score @s lang matches 0 if score @s scannote matches 1.. run tellraw @p [{"color":"green","text":"有効"},{"click_event":{"action":"run_command","command":"trigger scannoteset set -1"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"クリックで無効化"}]},"text":"[クリックで無効化]"}]
execute as @a at @s run execute if score @s logout matches 1.. if score @s lang matches 1 if score @s scannote matches 1.. run tellraw @p [{"color":"green","text":"Enable"},{"color":"white","text":":"},{"click_event":{"action":"run_command","command":"trigger scannoteset set -1"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Click to disable"}]},"text":"[Disable]"}]

###無効(0)の時
execute as @a at @s run execute if score @s logout matches 1.. if score @s lang matches 0 if score @s scannote matches ..0 run tellraw @p [{"color":"red","text":"無効"},{"click_event":{"action":"run_command","command":"trigger scannoteset set 1"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"クリックで有効化"}]},"text":"[クリックで有効化]"}]
execute as @a at @s run execute if score @s logout matches 1.. if score @s lang matches 1 if score @s scannote matches ..0 run tellraw @p [{"color":"red","text":"Disable"},{"color":"white","text":":"},{"click_event":{"action":"run_command","command":"trigger scannoteset set 1"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Click to enable"}]},"text":"[Enable]"}]

###距離表示
execute as @a at @s run execute if score @s logout matches 1.. if score @s lang matches 0 run tellraw @s [{"color":"white","text":"ステータス表示距離は"},{"color":"green","score":{"name":"@s","objective":"maxdistance"}},{"color":"white","text":"ブロックです"}]
execute as @a at @s run execute if score @s logout matches 1.. if score @s lang matches 1 run tellraw @s [{"color":"white","text":"Data display max distance is "},{"color":"green","score":{"name":"@s","objective":"maxdistance"}},{"color":"white","text":" blocks"}]

###設定部分
execute as @a at @s run execute if score @s logout matches 1.. if score @s lang matches 0 run tellraw @s ["",{"click_event":{"action":"run_command","command":"trigger maxdistanceset set 1"},"color":"light_purple","hover_event":{"action":"show_text","value":[{"text":"クリックで最小(1)にする"}]},"text":"[最小化]"},{"color":"white","text":":"},{"click_event":{"action":"run_command","command":"trigger maxdistanceset add -1"},"color":"red","hover_event":{"action":"show_text","value":[{"text":"表示距離を減らす"}]},"text":"[-減少]"},{"color":"white","text":"："},{"click_event":{"action":"run_command","command":"trigger maxdistanceset add 1"},"color":"green","hover_event":{"action":"show_text","value":[{"text":"表示距離を増やす"}]},"text":"[+増加]"}]
execute as @a at @s run execute if score @s logout matches 1.. if score @s lang matches 1 run tellraw @s ["",{"click_event":{"action":"run_command","command":"trigger maxdistanceset set 1"},"color":"light_purple","hover_event":{"action":"show_text","value":[{"text":"Click to Minimize (1)"}]},"text":"[Minimize]"},{"color":"white","text":":"},{"click_event":{"action":"run_command","command":"trigger maxdistanceset add -1"},"color":"red","hover_event":{"action":"show_text","value":[{"text":"Remove display distance"}]},"text":"[-Remove]"},{"color":"white","text":"："},{"click_event":{"action":"run_command","command":"trigger maxdistanceset add 1"},"color":"green","hover_event":{"action":"show_text","value":[{"text":"Add display distance"}]},"text":"[+Add]"}]


##音ブロックを召喚するメニュー表示用
execute as @a at @s run execute if score @s logout matches 1.. if score @s lang matches 0 run tellraw @s {"click_event":{"action":"run_command","command":"trigger getnote set 200"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"音ブロック取得用ページへ移動"}]},"text":"[音ブロック取得]"}
execute as @a at @s run execute if score @s logout matches 1.. if score @s lang matches 1 run tellraw @s {"click_event":{"action":"run_command","command":"trigger getnote set 200"},"color":"white","hover_event":{"action":"show_text","value":[{"text":"Move to notebloke get page"}]},"text":"[Get menu]"}

##言語設定変更
execute as @a at @s run execute if score @s logout matches 1.. if score @s lang matches 0 run tellraw @s {"click_event":{"action":"run_command","command":"trigger langset set 1"},"hover_event":{"action":"show_text","value":[{"text":"English"}]},"text":"[Click here to set English]"}
execute as @a at @s run execute if score @s logout matches 1.. if score @s lang matches 1 run tellraw @s {"click_event":{"action":"run_command","command":"trigger langset set 0"},"hover_event":{"action":"show_text","value":[{"text":"日本語"}]},"text":"[クリックで日本語にする]"}

#ログイン処理終了
execute as @a at @s run execute if score @s logout matches 1.. run scoreboard players reset @s logout

#1の時有効化する
execute as @a at @s run execute if score @s scannoteset matches 1.. run scoreboard players set @s scannote 1
##ログアウトを1にする(メッセージをもう一度表示させる)
execute as @a at @s run execute if score @s scannoteset matches 1.. run scoreboard players set @s logout 1
##リセット
execute as @a at @s run execute if score @s scannoteset matches 1.. run scoreboard players set @s scannoteset 0

#0の時無効化する
execute as @a at @s run execute if score @s scannoteset matches ..-1 run scoreboard players set @s scannote 0
##ログアウトを1にする(メッセージをもう一度表示させる)
execute as @a at @s run execute if score @s scannoteset matches ..-1 run scoreboard players set @s logout 1
##リセット
execute as @a at @s run execute if score @s scannoteset matches ..-1 run scoreboard players set @s scannoteset 0

#最大距離が0以下の時1にする
execute as @a at @s run execute if score @s maxdistanceset matches ..0 run scoreboard players set @s maxdistanceset 1
#最大距離と最大距離設定値が違うとき
##ログアウトを1にする(メッセージをもう一度表示させる)
execute as @a at @s run execute unless score @s maxdistanceset = @s maxdistance run scoreboard players set @s logout 1
#最大距離を設定値にする
execute as @a at @s run execute unless score @s maxdistanceset = @s maxdistance store result score @s maxdistance run scoreboard players get @s maxdistanceset

#言語設定と設定値が違うとき
execute as @a at @s run execute unless score @s lang = @s langset run scoreboard players set @s logout 1
execute as @a at @s run execute unless score @s lang = @s langset store result score @s lang run scoreboard players get @s langset
