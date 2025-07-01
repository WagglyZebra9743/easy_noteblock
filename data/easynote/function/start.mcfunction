#音ブロック設置用トラッカー
team add note

#ログイン時にメッセージを出す変数
scoreboard objectives add logout minecraft.custom:minecraft.leave_game

#最大表示距離変数
scoreboard objectives add maxdistance dummy

#表示するかどうかを判定する変数
scoreboard objectives add scannote dummy

#言語設定
scoreboard objectives add lang dummy

#設定可能なトリガー
scoreboard objectives add maxdistanceset trigger
scoreboard objectives add scannoteset trigger
scoreboard objectives add getnote trigger
scoreboard objectives add login trigger
scoreboard objectives add langset trigger

#距離測定変数
scoreboard objectives add distance dummy

#音判定変数
scoreboard objectives add note dummy

#リロードメッセージ
tellraw @a {"color":"light_purple","text":"[reload completed]"}