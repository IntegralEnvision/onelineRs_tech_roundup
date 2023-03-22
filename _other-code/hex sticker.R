library(calendR)

fills <- rep(NA, 31)
fills[6] <- "a"
fills[13] <- "b"
fills[20] <- "c"
fills[27] <- "d"
fills[c(4,5,11,12,18,19,25,26)] <- rep("weekend", 8)

day_colors <- rep("black", 31)
day_colors[c(13, 27)] <- "white"

calendR(month = 3, special.days = fills, special.col = c("#7bbfcd", "#113e66", "#d2edf2", "#1b6787", "gray90"),
        title = NULL, font.style = "bold", day.size = 4,
        weeknames.size = 0, days.col = day_colors,
        #weeknames = c("Mon", "Tue", "Wed", "Thur", "Fri",  "Sat", "Sun"),
        weeknames = rep("", 7),
        lwd = .5)
#Note that I manually cropped the whitespace around the calendar out.

library(hexSticker)

sticker("_other-code/calendar.png", package = "Monday OneLineRs", p_size = 10, s_x = 1, s_y = .9,   s_width = .65,
        h_fill = "#113e66", h_color = "#d2edf2", p_y = 1.45)
