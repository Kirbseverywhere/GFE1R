.thumb
.include "mss_defs.s"

page_start


mov r0, r8
draw_weapon_rank_at 1, 1, Sword, 0
draw_weapon_rank_at 1, 3, Lance, 1
draw_weapon_rank_at 9, 1, Axe, 2
draw_weapon_rank_at 9, 3, Bow, 3
draw_weapon_rank_at 1, 5, Anima, 0
draw_weapon_rank_at 1, 7, Light, 1
draw_weapon_rank_at 9, 5, Dark, 2
draw_weapon_rank_at 9, 7, Staff, 3
@blh      DrawSupports

page_end
.ltorg
