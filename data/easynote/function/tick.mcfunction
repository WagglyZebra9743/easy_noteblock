#防具立てに音ブロック設置関数
execute as @e[type=armor_stand,team=note] at @s run function easynote:check

#ログイン確認関数
function easynote:login

#関数を初期化
execute as @a at @s run execute store result score @s maxdistance run scoreboard players get @s maxdistance
execute as @a at @s run execute store result score @s scannote run scoreboard players get @s scannote

#変数トリガーを起動
scoreboard players enable @a scannoteset
scoreboard players enable @a maxdistanceset
scoreboard players enable @a getnote
scoreboard players enable @a login
scoreboard players enable @a langset

#ログインが1の時ログアウトを1にしてリセット
execute as @a[scores={login=1..}] at @s run scoreboard players set @s logout 1
execute as @a[scores={login=1..}] as @s run scoreboard players set @s login 0

#言語関数が0未満の時は0(日本語)に、1より大きいときは1(英語)にする
execute as @a[scores={lang=..-1}] at @s run scoreboard players set @s lang 0
execute as @a[scores={lang=2..}] at @s run scoreboard players set @s lang 1


#音ブロック召喚関数起動確認関数を呼び出す
execute as @a[scores={getnote=200}] at @s run function easynote:getnote.trigger

#音ブロック召喚関数jpを呼び出す
execute as @a[scores={lang=0}] at @s run execute unless score @s getnote matches 0 run function easynote:getnote
#Englishを呼び出す
execute as @a[scores={lang=1}] at @s run execute unless score @s getnote matches 0 run function easynote:getnote.en
#音ブロックの状態表示
execute as @a[scores={scannote=1..}] at @s run function easynote:notescan
