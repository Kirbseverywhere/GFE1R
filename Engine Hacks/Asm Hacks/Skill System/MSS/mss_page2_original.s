.thumb
@draws the items screen
.include "mss_defs.s"

page_start


draw_stats_box
b Continue
.ltorg
Continue:
draw_items_text

page_end
