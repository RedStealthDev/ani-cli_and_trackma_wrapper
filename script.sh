#!/usr/bin/bash
. config.cfg
#Trackma parcing
index=()
name=()

printf "$trackma_account\nq\n" | trackma account > /dev/null
printf "$trackma_account\n" | trackma retrieve > /dev/null
currentlywatching=$(printf "$trackma_account\n" | trackma ls)
echo $currentlywatching

| Index Title Progress Score | | 1 AKIRA.......................................... 0 / 1 0 | | 2 Ajin........................................... 0 / 13 0 | | 3 Ajin 2......................................... 0 / 13 0 | | 4 Aoashi......................................... 0 / 24 0 | | 5 BLEACH......................................... 1 / 366 0 | | 6 Baki........................................... 8 / 26 7 | | 7 Big Order...................................... 0 / 10 0 | | 8 Black Clover................................... 15 / 170 10 | | 9 Hagane no Renkinjutsushi: FULLMETAL ALCHEMIST.. 0 / 64 0 | | 10 Hajime no Ippo: THE FIGHTING!.................. 4 / 75 0 | | 11 Hajimete no Gal................................ 0 / 10 0 | | 12 High School DxD HERO........................... 1 / 13 4 | | 13 JoJo no Kimyou na Bouken (TV).................. 10 / 26 6 | | 14 Jujutsu Kaisen 0............................... 0 / 1 0 | | 15 Koe no Katachi................................. 0 / 1 0 | | 16 Komi-san wa, Komyushou desu.................... 0 / 12 0 | | 17 Komi-san wa, Komyushou desu. 2................. 0 / 12 0 | | 18 Log Horizon 2.................................. 15 / 25 7 | | 19 Magi: The labyrinth of magic................... 1 / 25 0 | | 20 Mahoutsukai Reimeiki........................... 0 / 12 0 | | 21 Mieruko-chan................................... 0 / 12 0 | | 22 Mob Psycho 100................................. 2 / 12 9 | | 23 Mob Psycho 100 II.............................. 0 / 13 0 | | 24 Mushoku Tensei: Isekai Ittara Honki Dasu Part 2 2 / 12 7 | | 25 ONE PIECE...................................... 27 / ? 7 | | 26 SPY×FAMILY..................................... 7 / 12 0 | | 27 Seirei Tsukai no Blade Dance................... 0 / 12 0 | | 28 Shijou Saikyou no Daimaou, Murabito A ni Tensei 0 / 12 0 | | 29 Shokugeki no Souma: Shin no Sara............... 4 / 12 6 | | 30 Tate no Yuusha no Nariagari Season 2........... 4 / 13 0 | | 31 Xian Wang De Richang Shenghuo 2................ 2 / 12 0 | 31 results
