'沈炯 7-20-96
 SCREEN 0: KEY OFF: DEFDBL D: CLS
 DIM gd!(3440), gr!(3440), gx!(3440), nhao$(400), GLM$(5), DSU(5), im$(11), m$(11)
 DIM m(1, 1, 11), tg$(9), dz$(11), wk$(12), wn$(7), M0(10), yc(9)
 DIM CZ$(1), V!(400), VD!(17), dpm(1, 10), G(1, 9), ly(9), DC(9)
 isl$ = "伊斯兰历"
 GOTO 190
40 a$ = " 两页菜单 (左减右加或左单次右多次; e_总枢钮 es_撤页)": GOSUB 5235: GOTO 180
50 t = 13
60 GOSUB 3490: PRINT sy$; : GOSUB 3510: GOSUB 577: GOTO 3528
70 GOSUB 40: a$ = ""
 sy$ = "┏━━━━━━━━━━━━━━┓": GOSUB 50: PRINT "   t   今天  Ins Del ±10日 ┏ｎ ^Hom ^End ±V年"
 sy$ = "┃公历 儒历 伊斯兰历 中国农历 ┃": GOSUB 50: PRINT " ↑ ↓±1日  PUp PDn ±60日 ┃春 ^← ^→ ±10V年"
 sy$ = "┃夏 黄帝 殷 周 鲁 颛顼 古六历┃": GOSUB 50: PRINT " ← →±1周  Home End ±1季 ┗节 ^PU ^PD ±60V年"
 sy$ = "┃中西纪年  年号  星期  儒略日┃": a$ = "  eg干支钮  @G日干支  j年干支  @L轮回  Enter英文": GOSUB 50
 sy$ = "┃朔闰大小月 干支系统 实时古钟┃": a$ = "  er积数钮   R置零日  r取零日  @R换元    h本机元": GOSUB 50
 sy$ = "┃   两万年演示·三千年查询   ┃": a$ = " ┏月日┓ T农历存  k西历 ┏民俗┓ex退选  =诞生日": GOSUB 50
 sy$ = "┗ 研习历法知识·贯通古今中外 ┛": a$ = "": GOSUB 50:
 a$ = " ┗存取┛@T农历取 @E闰月 ┗虚岁┛==大寿 `=大寿表": GOSUB 579
 a$ = "ed总钮 ew西历钮 et延迟 Tab本息页 ┏@P备忘页 p存日期  P取日期  Zz巡视 +拷入检录┓": GOSUB 575
 a$ = " I附录 ei伊历钮 es撤页 Esc退出页 ┃ q检录页 `录本日 P0栈首日 ~专项页 BEGJKLNW"
 GOSUB 124: GOSUB 575: a$ = "H┃": GOSUB 579
 a$ = " m菜单  C共和国 X民国 _--w西历点 ┗ Q古历页 @Q古历名": GOSUB 125: GOSUB 575
 a$ = " 古历V日数 7元 8纪 9部 0章┛": t = 2: GOSUB 577: RETURN
80 zf = 57
89 zd = 13: GOTO 140
91 zf = 1
99 zd = 14: GOTO 140
100 pc = 1: GOSUB 2990: GOTO 3528
110 zf = 1
115 zd = 15: GOTO 140
124 zd = 24: GOTO 139
125 zd = 25: GOTO 139
130 LOCATE , zf: RETURN
131 zf = 33: GOTO 140
135 zf = 39: GOTO 140
136 zd = 9: zf = 7: GOTO 140
137 zf = 2: GOTO 140
139 zf = 1
140 LOCATE zd, zf: RETURN
150 COLOR zd, zf: RETURN
160 COLOR zd: RETURN
170 COLOR , zf: RETURN
180 PRINT TAB(80); " "; : RETURN
187 PRINT TAB(36); : RETURN
188 PRINT TAB(38); : RETURN
190 DATA 夏历,1006320,黄帝,1106400,殷历,1185660,周历,1206480,鲁历
 DATA 1344180,颛顼,1163335
 FOR i = 0 TO 5: READ GLM$(i), DSU(i): NEXT i
 DATA 0,13,48,56,141,151,182,214,218,284,303,355,369,386,396,397,23,70
 CDN$ = "Y殷z周G共和Q秦h汉T太初w魏j晋n南北S隋t唐5代s宋y元M明q清m民r人"
 FOR i = 0 TO 17: READ VD!(i): NEXT i: cd$ = "YzQhwjnSt5syMqmrGT"
 DATA January,February,March,April,May,June,July,August,September
 DATA October,November,December
 DATA Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday
 DATA 31,28,31,30,31,30,31,31,30,31,30,31
 DATA 31,29,31,30,31,30,31,30,31,30,31,30
 DATA 甲,乙,丙,丁,戊,己,庚,辛,壬,癸
 DATA 子,丑,寅,卯,辰,巳,午,未,申,酉,戌,亥
 DATA 日,一,二,三,四,五,六,七,八,九,十,廿,卅
 FOR i = 0 TO 11: READ m$(i): NEXT i
 FOR i = 0 TO 6: READ wn$(i): NEXT i
 FOR J = 0 TO 1: FOR i = 0 TO 11: READ m(J, 0, i)
 m(J, 1, i) = M0(J): M0(J) = M0(J) + m(J, 0, i): NEXT i: NEXT J
 FOR i = 0 TO 9: READ tg$(i): NEXT i
 FOR i = 0 TO 11: READ dz$(i): NEXT i
 FOR i = 0 TO 12: READ wk$(i): NEXT i
 DATA 12000,-1,4382908,4000,0,1460969,400,-1,146097
 DATA 100,0,36524,4,-1,1461,1,0,365,3,-1,1096,1,0,365
 FOR i = 0 TO 7: READ yc(i), ly(i), DC(i): NEXT i
 DIM DJO(14): FOR i = 0 TO 14: READ DJO(i): NEXT i
 DATA .8847,0,-.9924,-1.8347,-2.3069,-2.2771,-1.7451,-.8486
 DATA .1681,1.0222,1.4819,1.4285,.8847,0,-.9924
 DATA Muharram,Sanhar,Rabia-ol-awwel,Rabia-ol-accher,Jomada-al-awwel
 DATA Jomada-al-accher,Rajab,Shaaban,Ramadan,Shawwal,Dulkaada,Dulheggia
 FOR i = 0 TO 11: READ im$(i): NEXT i
 DATA 0,262.5,3,555,6,750,12,915,24,975,36,1020,60,1155,96,1425
 DATA 3,582,6,787.5,9,873,12,960
 DIM qx(11), bx(11)
 FOR i = 0 TO 11: READ qx(i), a: bx(i) = a / 100000: NEXT i
 GOSUB 6310: GOSUB 6460: ad = 1: add = 21900: dpg = 1215990!
 s49 = 499 / 940: mm0! = 1: md0! = 1: pit = 1
 zr$ = CHR$(0): es$ = CHR$(27): qt$ = CHR$(34): sd$ = CHR$(15): ss$ = CHR$(2)
 dy = 365.24219878#: dl = 29.53058867#: DJ = 30.43685#: DJQ = 365.25 / 12
 GOSUB 3513: PRINT "两万年地球日": PRINT "中西回古释历"
 FOR xw = 2 TO 10: zd = xw: zf = 35: GOSUB 140
 GOSUB 180: NEXT xw
 FOR xw = 13 TO 14: zd = xw: GOSUB 139: GOSUB 180: NEXT xw
 zd = 2: GOSUB 3525: FOR xw = 6 TO 8: zd = xw: GOSUB 139: GOSUB 187: NEXT xw
 GOSUB 3555: zd = 5: GOSUB 139
 PRINT "历名_________同日对照________年积日";
 FOR xw = 9 TO 11: zd = xw: GOSUB 139
 GOSUB 187: NEXT xw: MW0 = 1
 GOSUB 400: GOTO 580
400 GOSUB 500
 FOR i = 0 TO 6: GOSUB 1240
 zd = 3 + i: GOSUB 135: zd = col: GOSUB 3530
 PRINT TAB(63); : GOSUB 3521: PRINT "星期"; wk$(i); : GOSUB 3506
 PRINT USING " \\曜日 \ \"; MID$("日月火水木金土", i * 2 + 1, 2); wn$(i);
 NEXT i: GOTO 560
500 GOSUB 3510: FOR xw = 3 TO 9: zd = xw: zf = 37: GOSUB 140: PRINT TAB(63);
 NEXT xw: RETURN
520 GOSUB 3506: GOTO 540
540 FOR xw = 15 TO 25: zd = xw: GOSUB 139: GOSUB 180: NEXT xw: RETURN
560 IF u OR msw < -2 THEN RETURN
561 a$ = " d f年号 x c农历 u i伊历 m菜单 ee退出   ^_=Ctrl @_=Alt"
 GOSUB 570: IF dp THEN t0$ = "": fz$ = "": GOSUB 1750
 RETURN
570 GOSUB 5770
565 t = 15: GOTO 577
568 t = 10: GOTO 577
575 t = 13
577 FOR kz = 1 TO LEN(a$)
 s$ = MID$(a$, kz, 1): zd = t: IF ASC(s$) > 160 THEN zd = 7
 GOSUB 160: PRINT s$; : NEXT kz: RETURN
578 t = 11: GOTO 577
579 t = 14: GOTO 577
580 GOSUB 590: Y = ua: m = ub: id = uc: TODAY = 1: u = 0: GOTO 620
590 ta$ = DATE$: ua = VAL(RIGHT$(ta$, 4)): ub = VAL(LEFT$(ta$, 2))
 uc = VAL(MID$(ta$, 4, 2)): RETURN
600 a$ = "西历": GOSUB 3010: Y = qq: m = pcq: id = dbq: GOTO 620
610 m = jgm: Y = jgn: id = jgd
620 a = INT(m / 12): Y = Y + a: m = -12 * a + m
625 IF m < 1 THEN m = m + 12: Y = Y - 1: GOTO 625
630 IF Y < -44 THEN 645
 IF Y < -7 THEN 640
 IF Y < 5 THEN 635
 IF Y * 10000 + m * 100 + id > 15821004 THEN 645
633 d = -53: i = 4: GOTO 648
635 d = 2948: i = 7: GOTO 648
640 d = -684: i = 6: J = 1: y0 = Y + 11999: GOTO 650
645 d = 42: i = 1
648 y0 = Y + 12000: J = 0
650 t = INT(y0 / yc(i))
 y0 = y0 - t * yc(i): d = d + DC(i) * t: IF y0 = 0 THEN l = ly(i): GOTO 690
 i = i + 1: GOTO 650
690 lm = 0: IF l AND m < 3 THEN lm = -1
 d = d + m(J, 1, m - 1) + id + lm
710 D0 = d: d = d - 43: y0 = 0: dp = d - 2661846.5#
 IF TODAY = 1 THEN tdy = dp: TODAY = 0: IF dpo = 0 THEN dpo = dp
 IF dp > -1930632! AND dp < 5373482! THEN 810
 p$ = "": sw = 0: msw = 1: BEEP
 q$ = "限两万年": GOSUB 3220: ad = 1: GOTO 580
730 GOSUB 9500: dpp = dp - dpo
 dpa = jgn - za: dpb = jgm - zb: dpc = jgd - zc
 dpy = dpa * 12 + dpb: IF dpc < 0 THEN dpy = dpy - 1
 IF dpy < 0 AND dpc THEN dpy = dpy + .9
 dpu = dpy: IF dpc < 0 THEN dpb = dpb - 1: dpc = dpc + 31
 IF dpb < 0 THEN dpa = dpa - 1: dpb = dpb + 12
 usc = dpc: usb = dpb: IF dpp > -1 THEN 740
 usb = -usb: IF dpc THEN usc = 30 - usc: usb = usb - 1
 IF m1 * 100 + d2 <> zb * 100 + zc THEN dpa = dpa + .9
740 usb = (36 + usb) MOD 12: dpn = dpa
 b$ = "西年整": IF usb OR dpc THEN b$ = "年" + RIGHT$(STR$(usb), 2) + "月"
 a$ = "西": IF dpc THEN a$ = CHR$(usc * 10 \ 31 + 48): a$ = "." + a$
 db = dl: GOSUB 790: nms = zf
 db = 7: GOSUB 790: wks = dpy: wkr = iis
 db = 60: GOSUB 790: hxs = dpy: hxr = iis
 zd = sq * 8 / 7 - icl% + 6
 GOSUB 3530: zd = 12: GOSUB 139
 PRINT USING "\  \元积+#####\    \+######\\月########周+#日+#######日+######.##农月#######!+##"; zer$; dpn; b$; dpu; a$; wks; wkr; dpp; nms; hxs; "&"; hxr;
 rgz$ = tg$(rTG) + dz$(rDZ)
 IF dp > dpg AND dp < 1315686! THEN XM = 1 ELSE XM = 0
 utg = (NTG * 2 + gu + 1 + XM) MOD 10: udz = (gu + 1 + XM) MOD 12
 nll = (nln + 10016) \ 60: nlz = (nln + 10016) MOD 60
 zd = 4: GOSUB 139: GOSUB 3508
 jp = dp - tdy + 1: GOSUB 7667
 z = nlz MOD 12: sx$ = MID$("鼠牛虎兔龙蛇马羊猴鸡狗猪", z * 2 + 1, 2)
 PRINT USING "显示\\年         今天起\\#######天"; sx$; sy$; jp;
 zd = 11: GOSUB 137: zd = 4: GOSUB 3517
 PRINT USING "\  \年"; ly$;
 IF gq = 0 THEN 750
 PRINT USING " \\月 \  \日"; dz$(udz); rgz$;
 IF sq THEN GOSUB 3555: PRINT USING "  ###轮##年 !!\\"; nll; nlz; CHR$(udz + 65); "/"; RIGHT$(STR$(100 + rgz), 2);
750 GOTO 187
790 zf = dpp / db: dpy = INT(zf)
 IF dpy < 0 AND dpy <> zf THEN dpy = dpy + 1
 iis = dpp - FIX(dpy * db): RETURN
810 IF dp > 2299160# OR dp < 1704986# THEN aukg = 0 ELSE aukg = 1
 wk = d - INT((d + 3) / 7) * 7 + 3: au = 0: i = 1: J = 0: JJD = J
 swk = d - INT((d + 3) / 14) * 14 + 3
830 t = INT((d - ly(i)) / DC(i))
 d = d - t * DC(i): y0 = y0 + yc(i) * t: IF d < 365 THEN L0 = ly(i): GOTO 870
 i = i + 1: GOTO 830
870 l = L0: IF au = 0 THEN GD0 = d: gl = l: jra = d + 1 ELSE jrb = d + 1
 FOR m = 0 TO 11: IF l AND m < 2 THEN lm = -1 ELSE lm = 0
 id = d - m(J, 1, m) - lm + 1: IF lm AND m = 1 THEN MM = 1 ELSE MM = 0
 IF id <= m(J, 0, m) + MM THEN 940
930 NEXT m
940 m = m + 1: Y = y0 - 12000
 IF aukg = au THEN AUD = id: AUY = Y: LPM = MM
 IF au = 1 THEN 960
 m1 = m: y1 = Y: d2 = id: jra = jra - l
 c$ = " 公历     ": GOSUB 1010
 IF dp < 2299160# THEN GOSUB 950
 c0$ = c$: GOTO 1060
950 MID$(c$, 6) = "系统": RETURN
960 jrb = jrb - l: c$ = " 儒历     ": GOSUB 1010
 IF dp < 1704986# THEN GOSUB 950
 IF dp > 2299160# THEN MID$(c$, 2) = "西方旧历"
 c3$ = c$: jly$ = MID$(c$, 15, 16): jly = Y: jlm = m: jld = id: GOTO 1060
980 IF au = 1 THEN 990
 cn$ = "公": GOTO 1000
990 cn$ = "儒"
1000 jgn = Y: jgm = m: jgd = id: jglm = lm: RETURN
1005 sy = sy + 10000: GOTO 1007
1006 sy = 10001 - sy
1007 sy$ = RIGHT$(STR$(sy), 4): RETURN
1010 IF Y < 1 THEN 1015
 sy = Y: GOSUB 1005: cy$ = sy$ + "年": er$ = "      ": GOTO 1020
1015 sy = Y: GOSUB 1006: cy$ = sy$ + "年": er$ = "公元前"
1020 IF aukg <> au THEN a$ = "*": GOSUB 1040: GOTO 1030
 IF Y < -44 THEN a$ = "*": GOSUB 1040: wsq = 7
 IF Y > 0 THEN era$ = "a.d.": jgy = Y: GOSUB 980: GOTO 1030
 era$ = "b.c.": jgy = ABS(Y) + 1: GOSUB 980
1030 c$ = c$ + er$ + cy$ + RIGHT$(STR$(m), 2) + "月" + RIGHT$(STR$(id), 2) + "日  "
 RETURN
1040  MID$(c$, 1) = a$: RETURN
1060 IF au = 1 THEN wk1 = wk
 IF au = aukg THEN i = wk: GOSUB 1240: wkc = col
 IF aukg = 0 THEN c7$ = c0$ ELSE c7$ = c3$
 c7$ = RIGHT$(c7$, 22)
 IF au = 1 THEN RETURN
 IF dp < 1704986# OR dp > 1722884# THEN 1130
 IF dp < 1718504# THEN d = D0 + 683: J = 1: JJD = J: y0 = 1: i = 6: au = 1: jl$ = "1": GOSUB 830: GOTO 1140
 IF au = 1 THEN 1140
 d = D0 - 3000 + 51: y0 = 0: i = 7: au = 1: jl$ = "2": GOSUB 830: GOTO 1140
1130 IF au = 1 THEN 1140
 d = D0 + 52: y0 = 0: i = 4: au = 1: jl$ = "3": GOSUB 830
1140 d = D0: G = d - INT(d / 10) * 10: z = d - INT(d / 12) * 12
 gz = d - INT(d / 60) * 60: rTG = G: rDZ = z: G5 = G: Z5 = z: rgz = gz
 IF dp > dpg AND dp < 2470213! THEN xlk = 1: sw = 0: GOSUB 5980: GOTO 1370
 xlk = 0: GOTO 3600
1190 IF WXS = 0 THEN 1270
 IF cn$ <> CLN0$ OR jgm <> JGM0 THEN 1270
 IF d + 40 < DW OR d - 40 > DW THEN 1270
 sy = JGD0: GOSUB 1198: GOSUB 3502: PRINT JGD0; : GOSUB 1195: PRINT " ";
 sy = jgd: GOSUB 1198: i = k: GOSUB 1240: zd = col: GOSUB 3495: PRINT jgd;
 JGD0 = jgd: GOSUB 1195: PRINT sd$; : RETURN
1195 zf = 62: GOTO 1210
1198 k = (KW0 + sy - 1) MOD 7: t = INT((KW0 + sy - 1) / 7) * 4 + 37
1200 zf = t
1210 zd = 3 + k: GOTO 140
1240 col = VAL(MID$("5777772", i + 1, 1)) + 8: RETURN
1270 GOSUB 500: DW = d: JGM0 = jgm: t = 37: k = (wk1 - jgd + 43) MOD 7
 KW0 = k: FOR ii = 1 TO m(JJD, 0, jgm - 1) + LPM
1280 i = k: GOSUB 1240: CLN0$ = cn$: JGD0 = jgd
 IF ii <> jgd THEN GOSUB 3502: GOTO 1300
 zd = col: GOSUB 3495: GOSUB 1195: PRINT sd$;
1300 GOSUB 1200: PRINT ii;
 k = (k + 1) MOD 7: IF k = 0 THEN t = t + 4
 IF jglm AND jgm = 2 AND i = m(JJD, 0, jgm - 1) THEN i = ii + 1: GOTO 1280
 NEXT ii: GOSUB 3502: WXS = 1: RETURN
1330 GOSUB 730: s$ = c0$: db = 7: pc = jra: GOSUB 1360
 s$ = c3$: db = 6: pc = jrb
1360 IF jcr! = 1 OR jcr! = 2 THEN wsq = 7
 zd = 15: a = sq: b = 1
 IF aukg + 6 = db THEN zd = wsq: a = sq * wsq / 7: b = 0
 GOSUB 3525: zd = db: GOSUB 137
 IF b + wsq = 0 THEN 187
 PRINT s$; : GOSUB 131: zd = a: GOSUB 3525: PRINT USING "###"; pc; : RETURN
1370 IF ULK = 1 OR nlk = 1 THEN 1810
 IF WLK = 1 THEN GOSUB 4840: GOTO 1810
 IF sw THEN RETURN
 GOSUB 1190: GOSUB 1390: GOTO 1810
1390 zd = 10: GOSUB 135: GOSUB 3521: IF iw = 0 THEN 1400
 mn$ = m$(jgm - 1): IF jl$ = "1" AND jgm = 8 THEN mn$ = "Sextilis"
 PRINT wn$(wk1); ", "; mn$; STR$(jgd); ","; jgy; era$;
1400 PRINT TAB(76); : GOSUB 7620
 zd = 2: zf = 38: GOSUB 140: GOSUB 3513
 PRINT cn$; "历  "; MID$(c7$, 5, 12); "星期历  中国  东亚  英美";
 GOSUB 6530: IF xlk = 0 THEN 1490
 IF y1 < 1949 THEN 1490
 GOSUB 136: GOSUB 3555: GOSUB 187
1490 GOSUB 4850: GOSUB 4840: IF sw THEN 1520
 zd = hsq: GOSUB 3525: zd = 8: zf = 3: GOSUB 140
 IF hsq = 0 THEN GOSUB 187: GOTO 1520
 PRINT C2$; : GOSUB 131
 IF isw THEN zd = hsq * sq / 10: GOSUB 3525: PRINT USING "###"; jri;  ELSE GOSUB 187
1520 GOSUB 1330: GOSUB 4010: GOSUB 5860: GOSUB 3330: GOSUB 5160
 IF pnk THEN ON msw + 6 GOSUB 8810, 8070: pnk = 0: GOTO 1810
 IF msw = -2 THEN msw = -1: GOTO 1590
 IF msw <> -1 THEN 1600
 IF vn5 = 1 THEN vn5 = 0: GOTO 1600
 IF nln < vn8 OR nln > vn9 THEN 1590
 IF nln > 1948 THEN IF vi6 <> 397 THEN 1590
 IF vn8 = -1383 AND dp < dpg THEN 1600
 GOSUB 6890: GOTO 1600
1590 GOSUB 6860
1600 IF PSW * msw = 3 THEN sw = 0: PSW = 0: GOSUB 3200
 IF msw = -5 THEN GOSUB 8810
 IF (1 - u) * jlk * msw = -4 THEN GOSUB 8070
 IF nkg OR u - 1 THEN 1700
 IF msw <> -4 THEN 1700
 IF p$ <> "E" THEN 1670
 IF lr = -1 THEN GOSUB 8080: IF xlk = 0 THEN u = 0
 GOTO 1700
1650 GOSUB 8070: GOTO 1700
1670 IF ngk = 1 THEN 1675
 IF INSTR("WB", p$) = 0 THEN 1680
1675 IF gu <> G(0, g8) OR dq <> G(1, g8) THEN 1700
 IF ngk = 1 THEN ngk = 0: GOSUB 3215
 GOTO 1650
1680 IF INSTR("KHLJ", p$) > 0 THEN 1690
 IF ngk = 0 THEN 1650 ELSE 1700
1690 IF (rTG = gzs MOD 10) AND (rDZ = gzs MOD 12) THEN 1650
1700 IF qfm - 1 OR msw - 4 THEN 1710
  pq$ = "Q": sw = 0: msw = 1: GOSUB 5600: p$ = qv$: GOTO 1720
1710 IF msw < 5 THEN 1730
1720 IF WWW = 0 THEN 1730
 pq$ = "U": qp$ = p$: IF ifm = 1 THEN p$ = "i" ELSE p$ = "u"
 sw = 0: msw = 1: GOSUB 4920
1730 RETURN
1750 IF t0$ = TIME$ THEN 1800
 t0$ = TIME$: zf = 26: zd = 1: GOSUB 140: GOSUB 3508
 a$ = "⊙": tt = 1 - tt: zd = 3: IF tt THEN a$ = "·"
 PRINT USING "实时\        \ \      \ \\###秒延迟"; DATE$; TIME$; a$; kt% - tf;
 tf = tf + u
1770 Tk$ = TIME$: k$ = MID$(Tk$, 4, 2)
 IF k$ = fz$ THEN 1790
 t = VAL(Tk$) + 1: Ku = INT(t / 2) MOD 12
 c = t MOD 2: fz$ = MID$(Tk$, 4, 2): t = VAL(fz$)
 k = INT(t \ 15): fz = t MOD 15: CZ$(0) = "初"
 CZ$(1) = "正": IF k = 0 THEN k$ = "零" ELSE k$ = wk$(k)
 PRINT TAB(62);
 PRINT USING "!古钟\\时\\\\刻##分"; "*"; dz$(Ku); CZ$(c); k$; fz;
1790 IF ta$ = DATE$ THEN 1800
 BEEP: BEEP: tdy = tdy + 1: GOSUB 590
 IF icl% = 0 THEN dpo = tdy
 GOSUB 730: q$ = "子夜好! ": GOSUB 3220
1800 RETURN
1808 GOSUB 3219
1809 u = 0: p$ = ""
1810 IF qkg THEN 1815
 q$ = "": IF gu * gd = 1 THEN q$ = "农历春节"
 IF jgd * jgm = 1 THEN q$ = "西历元旦"
 IF dp = tdy THEN q$ = "显示今日"
 IF d = 731258! THEN q$ = "西历起点"
 IF d = 731307! THEN q$ = "农历起点"
 IF d = 8035371! THEN q$ = "机历终点"
 IF q$ <> "" THEN GOSUB 3220 ELSE GOSUB 3217
1815 IF ok THEN ok = 0: ad = 1
 IF jcr! THEN q$ = MID$("公儒儒公西农农西", jcr! * 4 - 3, 4) + "切换": GOSUB 3220
 s$ = "加数V=" + STR$(ad): zd = 7: GOSUB 3521: zf = 30: GOSUB 89
 PRINT s$; TAB(46); : jcr! = 0: vn5 = 0
1820 GOSUB 1822: GOTO 1825
1822 IF msw = MW0 THEN RETURN
 IF msw <> -1 THEN vib = -1
 zd = bv + 10: GOSUB 3521: bv = (bv + 1) MOD 6
 zf = 2: GOSUB 89
 PRINT MID$("附录月谱古历检录备忘政朝年号日历日历干支农历农历伊历", (msw + 7) * 4 + 1, 4); "版面";
 MW0 = msw: RETURN
1825 IF pit = pi THEN 1828
 zf = 48: GOSUB 89: GOSUB 3520
 PRINT "备忘栈标"; CHR$(pi + 4); : pit = pi: pm = 0
1828 IF p$ <> es$ THEN 1830
 dp2 = 0: GOSUB 3215
1830 IF gkg = 2 THEN 5570
 IF ULK = 1 THEN RETURN
 IF nkg = 5 THEN 5840
 IF WLK = 1 THEN 5060
 IF PMK = 1 THEN 7850
 IF gkg = 1 THEN 5450
1860 q$ = INKEY$
 IF q$ <> "" THEN 1890
 GOSUB 1750: IF tf < kt% * u THEN 1860
 tf = 0: IF u THEN 1910
 GOSUB 1880: GOTO 1860
1880 pkg = 0: nkg = 0: ngk = 0: sw = 0: ssw = 0: RETURN
1890 a$ = INKEY$: GOSUB 1880: p$ = q$: qv$ = q$
 IF grn = 1 THEN grn = 0: u = 0: GOTO 1900
 IF msw = msw1 THEN 1910
1900 GOSUB 3217: GOSUB 560
1910 msw1 = msw: IF p$ = " " THEN GOSUB 3217
 a = INSTR("><AS^%}{:$#!@*&)(" + qt$ + "EHJKLWBIUO=+", p$)
 IF a < 1 THEN 2085
 IF u = 1 THEN 1930
 IF msw <> -5 AND a > 25 THEN 1930
 IF INSTR("WKL", p$) THEN GOSUB 2865
1930 u = 1: GOSUB 3210
 IF a < 7 THEN 1940
 IF a > 25 THEN 2075
 ON a - 6 GOTO 2000, 2010, 2020, 2030, 2050, 8440, 8450, 4790, 4800, 4730, 4740, 2070, 8230, 8260, 8250, 8270, 8280, 8290, 8290
1940 c$ = MID$("1  -1 7  -7 60 -60", a * 3 - 2, 3)
 d = VAL(c$) * ad + d: GOTO 710'Ar Del Ins
2000 jgn = jgn + ad: GOTO 610
2010 jgn = jgn - ad: GOTO 610
2020 jgm = jgm - ad: GOTO 610
2025 q$ = "限+-13月": GOSUB 3220: GOTO 1809
2030 IF ad > 13 THEN 2025
 IF xlk = 1 THEN 2040
 d = d + INT(dl * ad)
2035 IF d > 3877878 AND d < 5132103 THEN gd = ld + 1: d = d + 2
 d = d - 1: sw = -1: q$ = "实月计数": GOSUB 3220: GOTO 3790
2040 IF p$ = "E" THEN 9260
 IF ad = 1 THEN d = d + gf: GOTO 2048
 fu = (gm + ad + 32411) MOD 12 + 1
 gy = nln + INT((gm + ad + 11) / 12) + 1383: GOTO 2060
2048 sw = 0: GOTO 710
2050 IF ad > 13 THEN 2025
 IF xlk = 1 THEN 2057
 d = d - INT(dl * ad) - 1: GOTO 2035
2057 IF ad = 1 THEN GOSUB 6260: d = d - gf0: GOTO 2048
 fu = (gm - ad + 32423) MOD 12 + 1
 gy = nln + INT((gm - ad + 11) / 12) + 1383
 IF gy = 273 AND fu = 12 THEN fu = 11
2060 sw = 0: fd = dq: GOTO 9340
2070 jgm = jgm + ad: GOTO 610'["]
2075 IF p$ <> "+" THEN 2080
 IF msw <> -1 THEN 2078
 GOSUB 3215: a$ = "±年号代码: ": GOSUB 3000
 IF qz$ = "" THEN 1809
 vig = qq + vig: GOTO 2880
2078 IF pkg = 0 THEN lh = 0: pn = 1: pk = 0: pkg = 1: lfs = 0
 pk = pk + 1: IF pk = 10 THEN pk = 0: GOSUB 3215: GOTO 1809
 IF msw <> -5 THEN msw = -4
 GOTO 7770
2080 IF msw = -5 THEN 2081
 IF p$ <> "=" THEN 2085
 IF jnk <> 8 THEN 2085
 IF msw <> -4 THEN u = 0
 fd = G(1, g8): fu = G(0, g8)
 Y = nln + 10 - (nln - srn + 40001) MOD 10
 IF Y = nln + 10 THEN IF gu * 100 + dq < fu * 100 + fd THEN Y = Y - 10
 GOTO 9330
2081 IF vgl% = 0 THEN u = 0: p$ = "": GOTO 2645
 ON INSTR("O=IU", p$) GOTO 2622, 2082, 2083, 2084
2082 grn = 1: p$ = "I": ad = 1
2083 d = d + INT(s49 + ds0 + 29): GOTO 710
2084 d = d - INT(s49 + 30 - ds0): GOTO 710
2085 u = 0: IF qkg THEN GOSUB 3217
 IF msw <> -7 THEN 2088
 IF INSTR("0123456789", p$) THEN 4130
2088 IF p$ <> "=" THEN 2090
 jnk = 8: srn = nln: icl% = 3: sx0$ = sx$
 GOSUB 2865: GOSUB 2675: g0 = g6: GOTO 2575
2090 a = INSTR(".,as~Db12_-XZ`QF" + es$, p$)
 IF a = 0 THEN 2200
 IF a < 5 THEN 1940
 ON a - 4 GOTO 2100, 2130, 2140, 8440, 8450, 2150, 2160, 2110, 2120, 2170, 2175, 9320, 2190
2100 msw = 0: kdx = 1: GOSUB 2980: GOTO 1810
2110 d = 5081292!: GOTO 710
2120 pk = (pk + 7) MOD 9 + 1: GOTO 7770'Z
2130 Y = 0: GOTO 600
2140 jgd = 1: jgm = 1: GOTO 610
2150 d = 4366876!: GOTO 710
2160 dx = 4380394!: IF d = dx THEN d = 4384774! ELSE d = dx
 GOTO 710
2170 GOSUB 8070: GOTO 1810
2175 lfs = 0: wsq = 7
2180 p$ = "": lh = 0: dp2 = 0: GOSUB 8810: GOTO 710
2190 msw = 0: GOTO 1810'Esc
2200 IF LEN(p$) <> 2 THEN 2380
 p2$ = MID$(p$, 2, 1): p2 = INSTR("2.01OGQI,KPHSRM", p2$)
 ON p2 + 1 GOTO 2380, 2290, 2300, 2310, 2320, 2330, 2340, 2350, 2360, 2370
 a$ = MID$("-7 1  -1 10 -10 7 ", p2 * 3 - 29, 3): d = VAL(a$) + d: GOTO 710'Ar Del Ins
2290 d = 8035371!: GOTO 710 '@M
2300 d = 5132102!: GOTO 710'@C
2310 d = 731258!: GOTO 710'@B
2320 d = 731307!: GOTO 710'@N
2330 jgm = jgm + 3: GOTO 2345'End
2340 jgm = jgm - 3'Home
2345 q$ = "": GOTO 610
2350 d = d + 60: GOTO 710'PgDn
2360 d = d - 60: GOTO 710'PgUp
2370 IF msw = -4 OR msw = -5 THEN 2375
 jnm = 1: jn$ = "⊙ 正午儒略日 ": sy = dp + .5: GOSUB 7661
 IF jnh THEN d = q! + 2661889#: GOTO 710
 GOTO 1810
2375 pit = pi: pi = 1 - pi: u = 0: GOTO 2832
2380 IF LEN(p$) = 1 THEN 2470 ELSE p2 = ASC(MID$(p$, 2, 1)): pj = p2
 P3 = p2 + 20: P3 = INSTR("23)($%*+6&", CHR$(P3))
 ON P3 + 1 GOTO 2460, 7250, 7320, 7310, 8130, 9220, 2450, 2430, 2440, 3570, 9260
 '@A @S @Y @T @Q @W...@G @E
2430 d = 4610329!: GOTO 2445 '@U
2440 d = 5471085!'@I
2445 hsq = 10: GOTO 710
2450 ON msw + 8 GOTO 2451, 2451, 2830, 2830, 8045'@W
2451 jcr! = 1: IF jl$ = "3" OR dp < 1704989 THEN 2452
 jgn = y1: jgm = m1: jgd = d2: GOTO 610
2452 Y = y1: m = m1: id = d2: GOTO 633
2455 jcr! = 2: Y = jly: m = jlm: id = jld: GOTO 645
2460 IF p2 < 126 OR p2 > 128 THEN 2470
 ON p2 - 125 GOTO 4700, 4710, 2630: GOTO 1810 '@7 @8 @9
2470 a = INSTR("65x][';43\|cgyN", p$)
 ON a + 1 GOTO 2550, 2480, 2480, 2500, 2000, 2010, 2070, 2020, 2030, 2050, 3140, 3140, 2530, 2540, 7679, 3560: GOTO 1810
2480 a = a + 4: GOTO 1940
2500 p$ = "q": nkg = 0: sw = 0: msw = 1: GOSUB 5600: GOTO 1810
2530 p$ = "p": sw = 0: GOSUB 3200: p$ = "": GOTO 1810
2540 msw = 2: GOTO 3830
2550 a = INSTR("7890tGRrzVUoOiuCv", p$)
 IF a = 0 THEN 2670
 IF a < 5 THEN 2555
 ON a - 4 GOTO 580, 3560, 2570, 2580, 2590, 2600, 4690, 2620, 2640, 2650, 2650, 2660, 2610: GOTO 1810
2555 IF msw = -5 OR icl% = 2 THEN ON a GOTO 2562, 2564, 2566, 2568
 ON a GOTO 4800, 4790, 4740, 4730
2562 ad = 1665540!: GOTO 2605
2564 ad = 555180!: GOTO 2605
2566 ad = 27759: GOTO 2605
2568 ad = 6940: GOTO 2605
2570 IF dp = tdy THEN icl% = 0: hkg% = 0: GOTO 7581
 icl% = -1
2575 dpo = dp: sa = jgn: sb = jgm: sc = jgd: GOTO 9600
2580 d = dpo + 2661889.5#: GOTO 710
2590 pk = (pk + 9) MOD 9 + 1: GOTO 7770'z
2600 a$ = "年月日等的加数V: ": GOSUB 3000'V
 IF qq < 0 THEN qq = -qq
 IF qq > 7304113 THEN 1810
 ad = qq: GOSUB 4810
2605 add = ad: GOTO 1810
2610 IF ad = add THEN ad = 1 ELSE ad = add
 GOTO 1810
2620 IF msw <> -5 THEN 2624'o
2622 IF vgl% = 0 THEN 2645
 IF gyk <> 2 THEN d = dz0: GOTO 710
 d = d + INT(365.5 + dd0): GOTO 710
2624 IF isw = 1 THEN d = d - hd + 1: GOTO 2625
 GOTO 1808
2625 hsq = 10: GOTO 710
2630 IF isw - 1 THEN 1808
 a$ = isl$ + "序日: ": GOSUB 3000: IF qz$ = "" THEN 1810
 d = d - hd + qq: GOTO 2625
2640 IF isw <> 1 THEN 1808
 d = INT((hy * 10631 + 3) / 30) + 4609975#: GOTO 2625'O
2645 q$ = "未选历名": GOSUB 3220: GOTO 1810
2650 IF msw <> -5 THEN 2655
 IF vgl% = 0 THEN 2645
 ON INSTR("iu", p$) + 1 GOTO 1810, 2652, 2653
2652 d = d + INT(s49 + ds0 + 29): GOTO 710
2653 d = d - INT(s49 + 30 - ds0): GOTO 710
2655 IF isw = 1 THEN sw = 0: wqp = 0: GOSUB 4920: GOTO 1810
 GOTO 1808
2660 d = 5094807!: GOTO 710'C
2670 IF p$ <> "T" THEN 2690
 GOSUB 2675: GOTO 1810
2675 gud0 = gu * 100 + dq
 IF gud0 = 101 AND p$ <> "T" AND p$ <> "=" OR gud0 = gud THEN 8140
 g6 = g6 MOD 9 + 1: GOSUB 2680
 G(0, g6) = gu: G(1, g6) = dq: g8 = g6: gud = gu * 100 + dq: GOTO 8140
2680 IF g7 = 9 THEN RETURN
2685 IF g7 < g6 THEN g7 = g6
 RETURN
2690 IF LEN(p$) = 1 THEN 2720
2700 p2 = INSTR("xyz{|}/- ", p2$)'@1-6 @V @X @D
 ON p2 + 1 GOTO 2720, 7180, 7190, 8670, 8660, 8190, 8210, 8690, 8710, 7200: GOTO 1810
2710 GOSUB 520: GOTO 100
2720 IF p$ <> CHR$(9) THEN 2740
 IF dpp < 0 THEN 1810
 IF dpn > 249 THEN 1810
 GOSUB 2710
 a$ = "·p改月率·简估本息〉积日" + STR$(dpp) + "日〉本金: "
 msw = 0: GOSUB 3017: IF qz$ = "p" THEN 2728
 FOR i = 0 TO 11
 IF i = 0 THEN db = dpp * .032876712# * bx(i) + 1: dv = 1: GOTO 2724
 db = qx(i) * bx(i) + 1: dv = INT(dpu / qx(i))
2724 df = db ^ dv * dbq: GOSUB 2732
 PRINT USING "###期##############.##元 "; dv; df;
2726 NEXT i: GOTO 1810
2728 a$ = "> 月利率: "
 FOR i = 0 TO 11: IF i = 6 THEN GOSUB 2710
 GOSUB 2732: GOSUB 3017: IF qz$ <> "" THEN bx(i) = dbq
 NEXT i: GOTO 2720
2732 IF i = 0 THEN s$ = "活": GOTO 2734
 s$ = "定": IF i > 7 THEN s$ = "大"
2734 GOSUB 3515: PRINT USING "\\##月"; s$; qx(i); : GOSUB 3506
 PRINT USING ".######率"; bx(i); : RETURN
2740 a = INSTR("YfdhjklM?/mwIenq", p$)
 ON a + 1 GOTO 3030, 9300, 2750, 2760, 2790, 2810, 2850, 2870, 2900, 2910, 2920, 2930, 2940, 4130, 2960, 3110, 2970: GOTO 1810
2750 GOSUB 6860: GOTO 1810
2760 GOSUB 7100: GOTO 1810
2770 a$ = STR$(nll) + "轮〉花甲轮回 1至333 前8997+59年=17轮: ": GOSUB 3000
 IF qz$ = "" THEN 2820
 nln = qq * 60 - 10016 + nlz: gq = 7: GOTO 3120
2790 IF msw = 5 THEN icl% = 4: dpo = 1948439.5#: GOTO 9600
 ON msw + 8 GOTO 2800, 2800, 2800, 2804, 2791, 2800, 2802
 GOTO 2800
2791 a$ = "1至9待用备忘号 -1至-9删行 -10以下清栈: "
 GOSUB 3000: pm = qq: IF pm > -10 THEN 2793
 GOSUB 520: FOR pm = 1 TO 9: dpm(pi, pm) = 0: NEXT pm
 pm = 9: GOSUB 7800: GOTO 2797
2793 pm = FIX(pm): IF pm < 0 THEN pm = -pm ELSE pm = pm + 8: GOTO 2797
 zd = 14 + pm: GOSUB 139: GOSUB 3510: GOSUB 180
 dpm(pi, pm) = 0: pm = (pm + 7) MOD 9 + 1
2797 GOSUB 3217: GOSUB 7790: GOTO 1810
2800 dpo = 736413.5 - 84 - 2300999: icl% = 1: GOTO 9600
2802 IF vy > 0 THEN GOSUB 6720: GOTO 8200 ELSE 1810
2804 jlk = 1 - jlk: q$ = "记录钮关": IF jlk THEN q$ = "记录钮开"
 GOSUB 3220: GOTO 1810
2810 IF msw = -1 THEN 2802
 a$ = ly$ + STR$(nlz) + "〉纪年干支数 0=甲子: ": GOSUB 3000
 IF qz$ = "" THEN 2820
 G = qq: nln = nln - nlz + G: gq = 7: GOTO 3120
2820 gq = 7: GOTO 710
2830 py = (ph + 8) MOD 9 + 1
2831 dpa = dpm(1 - pi, py)
 IF dpa THEN d = dpa + 2661889.5#: pnk = 1: GOTO 710
 IF py = 1 THEN pnk = 0: ON msw + 6 GOTO 2180, 2971
2832 py = 1: lh = 0: pn = 1: lfs = 0: GOTO 2831
2850 IF msw <> -1 THEN 2860
 vig = -10 * ad + vig: IF vig < 0 THEN vig = 0
 GOTO 2880
2860 GOSUB 5770
 PRINT USING "西历 s暂存##月##日 k示历##月##日: "; jgm; jgd; mm0!; md0!;
 GOSUB 4120: ON INSTR("ks", q$) + 1 GOTO 1810, 2862, 2863
2862 jgm = mm0!: jgd = md0!: GOSUB 2865: GOTO 610
2863 GOSUB 2865: GOTO 1810
2865 mm0! = jgm: md0! = jgd: zd = 12: GOSUB 3525: zf = 73: GOSUB 99
 PRINT USING "k西##/##"; mm0!; md0!; : RETURN
2870 IF msw <> -1 THEN 7690
 vig = 10 * ad + vig: IF vig > 397 THEN vig = 397
2880 Y = V!(vig): GOTO 8200
2900 a$ = "西历序月: ": GOSUB 3000: IF qz$ = "" THEN 1810
 jgm = qq: GOTO 610
2910 a$ = "西历序日: ": GOSUB 3000: IF qz$ = "" THEN 1810
 jgd = qq: GOTO 610
2920 jgd = 1: GOTO 610
2930 msw = msk: msk = 1 - msk
 IF msw THEN GOSUB 3380 ELSE GOSUB 70
 GOTO 1810
2940 d = 4961050!: GOTO 710'w
2950 GOSUB 520: msw = 0: zf = 57
2955 GOSUB 89: GOSUB 3513: PRINT TAB(76); : GOTO 1810
2960 a$ = " e_DOS t延时 s撤页 x退选⊙ d总钮 r积数 g干支 w西历 i伊历"
 GOSUB 570: GOSUB 4120
 ON INSTR("texsrgiwd", q$) + 1 GOTO 1810, 2973, 2964, 2965, 2950, 2967, 2968, 2963, 2962, 2961
2961 wsq = gq: gq = 7 - gq: hsq = gq * 10 / 7: sq = gq
2962 wsq = 7 - wsq: GOTO 710
2963 hsq = 10 - hsq: GOTO 710
2964 GOSUB 2710: END
2965 GOSUB 7630: GOTO 1810
2967 sq = 7 - sq: GOTO 710
2968 gq = 7 - gq: GOTO 710
2969 GOSUB 7800: GOTO 710
2970 kdx = 0
2971 GOSUB 2980: p$ = "": GOTO 1810
2973 a$ = "延迟〉1级1秒 5级30秒 9级8分〉级数0-9: "
 GOSUB 3000: kk% = qq MOD 10: kt% = 480 \ 2 ^ (9 - kk%): GOTO 1810
2977 GOSUB 578: GOTO 180
2980 lfs = 1: msw = -4: pn = 1: ph = 1: IF kdx THEN 8330
 pc = 4: GOSUB 2990: kdx = 0
 a$ = "q检录页  ~专项页BEGHJKLNW  Q古历页  三页同栈可互调  =诞辰 `=大寿表": GOSUB 2977
 a$ = "`录行 兼打开检录页  h记录钮 开状态自动录行  检录页和专项页可用`或h": GOSUB 2977
 a$ = "AS{}:" + qt$ + "<>!@#$%^&*()诸键连续自动录行  古历页改日必录与`录行或h钮无关": GOSUB 2977
 a$ = "P0本栈首日 P1-9 Zz备忘日示历 @Z换栈 @O本栈备忘显示 +备忘录拷入本栈": GOSUB 2977
 a$ = "@W列原记录 Q或`调页首行更新 @W多次或@Z两次或P0取栈首后换页首行不变": GOSUB 2977
 GOSUB 7797
 a$ = "q清页 `记录 P0本栈首 @P备忘页 P1-9调用 Zz巡视 +转录 "
 GOSUB 6957: a$ = "h记录钮 @W列行 @Z换栈 @O转页": GOSUB 568: RETURN
2990 zd = 15
2995 GOSUB 3510: GOSUB 139: FOR q = 1 TO pc: GOSUB 180: NEXT q
 GOSUB 3513: RETURN
3000 GOSUB 570: GOSUB 3018: qq = dbq: GOTO 3015
3010 GOSUB 5770: a$ = a$ + ": 年(0=前1年)_": GOSUB 3017: qq = dbq
 a$ = ", 月_": GOSUB 3017: pcq = dbq: a$ = ", 日_": GOSUB 3017
3015 GOTO 561
3017 GOSUB 575
3018 LINE INPUT ; qz$: dbq = VAL(qz$):
 IF p$ = CHR$(9) THEN PRINT : RETURN
 RETURN
3030 IF LEN(p$) = 1 OR msw = 5 THEN 7580
 p2 = INSTR("剉stwu", p2$): IF p2 = 0 THEN 7580
 c$ = MID$("-60+60-10+10-1 +1 ", p2 * 3 - 2, 3)
 AB = VAL(c$): nln = AB * ad + nln: GOTO 3120'^Ar
3110 IF xlk = 0 THEN 3115
 IF gdd > 0 THEN GOSUB 2675: GOTO 3115
 cjk = 1 - cjk: q$ = "春节方式": IF cjk THEN q$ = "同月同日"
 GOSUB 3220: GOTO 1809
3115 pp$ = "n": GOTO 3130
3120 GOSUB 2675
3130 GOSUB 3137: GOTO 1810
3137 p$ = "n": sw = 0: IF msw = 4 THEN msw = 1: pqr$ = "q": nln3 = nln
 GOSUB 5610
 IF pqr$ <> "q" THEN RETURN
 msw = 4: sw = 0: nln0 = nln3: p$ = "q"
 GOSUB 5600: nlk = 0: pqr$ = "": RETURN
3140 IF p$ <> "|" THEN njh = 1: GOTO 3150
 a$ = "农历序日: ": GOSUB 3000: IF qz$ = "" THEN 1810
 njh = qq
3150 IF xlk = 0 THEN d = d - ld + njh: GOTO 710
3160 d = d - gd + njh: GOTO 710
3170 IF xlk = 0 THEN d = d - ld + 1: LD9 = ld ELSE d = d - gd + 1: LD9 = gd
3180 GOTO 710
3200 IF dp < -1930583! THEN RETURN
 GOSUB 520: msw = 1: ULK = 1: NLN1 = nln: GU0 = gu: LR0 = lr: DU0 = d
 XK0 = xlk: uq = 0: uqp = 2: njh = 1: GOSUB 3170: GOSUB 3270
 FOR njh = 2 TO 30: IF dp < 5373481! THEN d = d + 1: GOTO 3230
 GOTO 3260
3210 q$ = "空格键停": GOTO 3220
3213 q$ = "闰月优先": GOTO 3220
3215 p$ = "": u = 0
3217 IF qkg = 0 THEN RETURN
 q$ = SPACE$(8): qkg = 0: GOTO 3225
3219 q$ = "恕无资料"
3220 qkg = 1
3225 zd = 7: GOSUB 3521: zf = 15: GOSUB 89: PRINT q$; : RETURN
3230 GOSUB 3180
 IF gu <> GU0 OR lr <> LR0 THEN upp = 0: GOTO 3260
 uq = (uq + 1) MOD 10
 IF uq = 0 THEN uqp = uqp + 27
 GOSUB 3270: IF njh > 2 THEN 3250
 IF dp >= dpg THEN GOSUB 5240
 q$ = LEFT$(c1$, 1)
 a$ = q$ + cnd$ + ")" + ly$ + "年" + lk$ + STR$(gu) + "月"
 IF xlk THEN a$ = a$ + dx$
 GOSUB 5705
3250 NEXT njh
3260 GOSUB 3217: MUL = njh - 1: d = DU0: GOSUB 3180: ULK = 0: msw = 3: GOTO 3330
3270 IF LR0 THEN lk$ = "闰" ELSE lk$ = "农"
 zd = 16 + uq: zf = uqp: GOSUB 140: GOSUB 3553: gz$ = tg$(G5) + dz$(Z5)
 PRINT USING "\\##月##\  \"; lk$; gu; dq; gz$;
 GOSUB 5150: a$ = cn$: IF aukg = 0 THEN c$ = c0$ ELSE c$ = c3$
 PRINT a$; MID$(c$, 23, 8); : GOSUB 3300: PRINT wk$(wk1); : RETURN
3300 zd = wkc: GOTO 3521
3330 IF msw <> 3 OR ULK = 1 THEN RETURN
 IF upp = 0 THEN 3350
 GOSUB 3510:  zd = 16 + up: zf = upp: GOSUB 140: PRINT " ";
 IF gu <> GU0 OR lr <> LR0 OR NLN1 <> nln OR xlk <> XK0 THEN PSW = 1: GOTO 3370
 PSW = 0
3350 up = ((dq - 1) MOD 10): upp = INT((dq - 1) \ 10) * 27 + 1
 GOSUB 3523: zd = 16 + up: zf = upp: GOSUB 140: PRINT sd$;
3370 msw1 = 3: RETURN
3380 GOSUB 40
 PRINT "┏历名┓┏数字录入━┓┏年-V+V┓┏月-V+V┓┏首日┓";
 a$ = "V设置年月日加数  v切": GOSUB 565: PRINT "换加数1或V";
 PRINT "┣━━┛日期 年 月 日  单次 多次 单次 多次 年 月┣━━━单次 多次┳月 ";
 a$ = "@W公转儒┓┃西历  D    y  M  ?   [ ]  { }  ; '  : " + qt$ + "  b  / ┃"
 GOSUB 575
 PRINT " ±V日 "; : a$ = ", .  < >┃日 @O儒转公┃┃伊历┏U━┓@7 ": GOSUB 575
 a$ = "@8 @9  7 8  & *  9 0  ( )  O  o ┃": GOSUB 568: PRINT "±7V日 ";
 a$ = "s a  S A┃切  l农转西┃┗农历┗F∮┛@5 @6 |   1 2  ! @  3 4  # $  n  \ ┻"
 GOSUB 575: PRINT "±60V日"; : a$ = "5 6  % ^┻换 ": GOSUB 575
 a$ = " Y西转农┛": GOSUB 579
 a$ = "⊙ @H黄帝年 @7伊年 @J罗马年 @K戴年 y公元年 @Z儒略日 ex退选后换元：=出生 @A年号年"
 GOSUB 3521: GOSUB 578: GOSUB 3508
 a$ = "┏━━伊斯兰历┓历┏中国农历━━@F月谱 d政朝表┓┏中国 @D政朝  @1 @2±政朝━┓┓"
 GOSUB 575: a$ = "┃ i月历 u年历┃书": GOSUB 568
 a$ = "┃ g干支 c月历": GOSUB 575
 a$ = " x年历": GOSUB 579: a$ = " f年号表┃": GOSUB 575
 a$ = "┃年名 @S年号  @3 @4±年号∮┛┃": GOSUB 575: GOSUB 124
 PRINT "┗起止日 @U:@I┗页┛ @B:@M @N:@M @Y:@C @Y:C ━┛";
 a$ = "┗━┓ @A序年  @5元始 ━nn方式┛": GOSUB 575
 a$ = "": GOSUB 6957: a$ = "黄绿限用 ∮限目标段 ": GOSUB 579: PRINT "农历 @Y:@C";
 a$ = " ": GOSUB 568: PRINT "伊历 @U:@I"; : a$ = " ": GOSUB 575: PRINT "全程 @B:@M";
 a$ = "┗ @V汉字  @X汉字续检至民国 ": GOSUB 578: RETURN
3490 zd = 0
3495 zf = 3: GOTO 150
3500 zd = 15: GOTO 160
3502 zd = 15: GOTO 3530
3503 zd = 11: GOTO 160
3506 zd = 7: GOTO 3530
3508 zd = 3: GOTO 3530
3510 zf = 0: GOTO 170
3513 zd = 11: GOTO 3521
3515 zd = 14
3517 zf = 2: GOTO 150
3520 zd = 2
3521 zf = 1: GOTO 150
3523 zd = 11: GOTO 3525
3524 zd = sq
3525 zf = 5: GOTO 150
3528 zd = 11
3530 zf = 0: GOTO 150
3540 zd = 12: GOTO 3517
3551 zd = 10: GOTO 160
3553 zd = 14: GOTO 3495
3554 zd = 14: GOTO 160
3555 zd = 0: GOTO 3517
3560 IF p$ = "N" THEN ngk = 1: GOSUB 8290 ELSE ngk = 0
 IF wgz = 0 THEN G = rgz: wgz = 1: GOSUB 3590
 IF msw = -5 AND p$ = "G" THEN 3568
 GOSUB 8320
3568 p$ = "^": u = 1: d = d - rgz + gzs + 60 * ad: GOTO 710
3570  GOSUB 3595
 a$ = rgz$ + STR$(rgz) + "〉s暂存 g" + gz2$ + "示历 x互换·日干支 0=甲子: "
 GOSUB 3000: IF qz$ = "" THEN 2820
 wgz = 1: G = rgz: gq = 7: ON INSTR("gsx", qz$) GOTO 3572, 3580, 3576
 G = qq: GOTO 3580
3572 G = gzs: GOTO 3580
3576 z = gzs: GOSUB 3590: G = z: GOTO 3588
3580 GOSUB 3590
3588 d = d - rgz + G: GOTO 710
3590 gzs = G MOD 60: GOSUB 3595
 zf = 77: GOSUB 89: GOSUB 3555: PRINT gz2$: RETURN
3595 gz2$ = tg$(gzs MOD 10) + dz$(gzs MOD 12): RETURN
3600 ly = y1
 DM = INT((d - 10.8#) / dl) * dl + 10.8#: ld = INT(d) - INT(DM)
 dz = INT((d - 34#) / dy) * dy + 34#
3630 DS = INT((dz - 10.8#) / dl) * dl + 10.8#
 IF INT(DS + dy) < d THEN dz = dz + dy: GOTO 3630
 k = INT(d) - INT(dz): IF k < 0 THEN k = INT(d) - INT(dz - dy)
 lm = INT((DM - DS + 5) / dl)
 IF DM + dl < dz + lm * DJ + DJO(lm + 1) THEN lm = lm - 1: LQ = -1 ELSE LQ = 0
 IF LQ AND DM > dz + lm * DJ + DJO(lm + 1) THEN lr = -1 ELSE lr = 0
 lm = (lm + 10) MOD 12 + 1: IF lm > 9 AND m1 < 6 THEN ly = ly - 1
 Y5 = ly: ly = ly + 56: nln = Y5: G = ly - INT(ly / 10) * 10
 IF lr = -1 THEN lr$ = "闰" ELSE lr$ = "  ": IF nln = -9999 THEN lr$ = " "
 z = ly - INT(ly / 12) * 12: NDZ = z: NTG = G: gu = lm: Y = Y5
 IF Y < 1 THEN Y = ABS(Y) + 1: cd = 0: ger$ = "(前" ELSE ger$ = "  (": cd = 15
 ly$ = tg$(G) + dz$(z): dq = ld: gd = ld
 c1$ = "*近似农历": sy = Y: GOSUB 1005: cnd$ = ger$ + sy$
 c1$ = c1$ + cnd$ + "年)" + lr$ + RIGHT$(STR$(gu), 2) + "月" + RIGHT$(STR$(dq), 2) + "日"
 IF sw THEN 3800 ELSE IF ssw > 0 THEN 5720
 GOSUB 3780: GOTO 1370
3780 GOSUB 3555: zd = 10: GOSUB 137
 PRINT c1$; TAB(36); : GOSUB 136: PRINT TAB(26);
 PRINT USING "平冬至 ###"; k; : RETURN
3790 IF ld = 30 THEN ld = 29: H = ld: GOTO 710 ELSE H = ld: GOTO 710
3800 IF H <> ld THEN d = d + 1: GOTO 710
3810 GOSUB 1330: GOSUB 3780: sw = 0: GOSUB 1190: GOSUB 1390
 IF ssw > 0 THEN ssw = 0: GOTO 5740
 GOTO 1810
3830 GOSUB 2710: GOSUB 6990
 a$ = "日  eg开关  代码：天干 甲0 癸9  地支 子A 亥L  干支 甲子00 癸亥59 "
 a$ = "光标：" + ss$ + "年 (月 " + sd$ + a$: GOSUB 565
 i = 0: J = 0: k = 3: H = 0: I5 = 0
3940 zd = 15 + i: zf = k: GOSUB 140: GOSUB 3506
 PRINT RIGHT$(STR$(H + 100), 2); "___";
 GOSUB 3523: PRINT tg$(i); : GOSUB 3554: PRINT dz$(J);
 GOSUB 3506: GOSUB 3503: PRINT CHR$(i + 48); : GOSUB 3554: PRINT CHR$(J + 65);
 H = H + 10: IF H = 69 THEN GOSUB 4010: GOTO 1810
 J = (J + 10) MOD 12: k = k + 13: IF k < 77 THEN 3950
 k = 3: i = i + 1: J = J + 13: H = H + 1
3950 H = H MOD 60: i = i MOD 10: J = J MOD 12: GOTO 3940
4010 IF msw <> 2 THEN RETURN
 ygg% = NTG: yz% = NDZ: yx% = yn: xx% = xn: xy% = 5
 b$ = ss$: GOSUB 4020: xn = xx%: yn = yx%
 ygg% = utg: yz% = udz: yx% = yu: xx% = xu
 b$ = "(": GOSUB 4020: xu = xx%: yu = yx%
 ygg% = rTG: yz% = rDZ: yx% = yr: xx% = xr
 b$ = sd$: GOSUB 4020: xr = xx%: yr = yx%: RETURN
4020 Y = ygg% + 15: X = (((ygg% - yz% + 13) MOD 12) \ 2) MOD 6
 X = X * 13 + xy%
 IF yx% THEN GOSUB 3506: zd = yx%: zf = xx%: GOSUB 140: PRINT "_";
 zd = 20 - xy%: GOSUB 3495: zd = Y: zf = X: GOSUB 140: PRINT b$;
 xx% = X: yx% = Y: xy% = xy% + 1: RETURN
4050
 PRINT "windows'98中进入MS-DOS打开文件方式为> qbasic clndr/MBF。参见clndr.bat。"
 PRINT "编写bat文件可在桌面点击它调用程序。[*]虚拟、近似,[:]起止,[n_n/n]年月日。"
 PRINT "本程序百项功能,可简推日期,普及历法知识,也可做综合运算。重要推算须另作考证!"
 PRINT "-1383:2050年资料段,余为近似段。共和起纪年、汉起月日渐近实历。列国邻国有异。"
 PRINT "积数行[&]_60日周期数。元点分:今日，指定日，生辰，伊历，古历，本机元(-8996年)。"
 PRINT "±V农月_近似段实月计数，资料段月名计数，V>1有闰示闰。±V农年_近似段为±12月。"
 PRINT "n多次_切换年序操作春节方式或月日方式。遇<闰月优先>顺向±1月后找年名。"
 PRINT "作者: 沈炯 (北京大学)"
 GOTO 4140
4070 PRINT "参考书目"
 PRINT "新编万年历(1840～2050).修订本.┃二十史朔闰表 附西历回历.陈垣.中华1962"
 PRINT "   中科院紫金山天文台.科普1984┃中国年历总谱.董作宾.香港大学出版社1960"
 PRINT "御定万年书.清钦天监.清宣统年间┃中国历史纪年表 1.方诗铭.上海辞书1980"
 PRINT "中国史历日和中西历日对照表.   ┃ 2.万国鼎.万斯年,陈梦家补订.中华1982"
 PRINT "   方诗铭,方小芬.上海辞书1990 ┃云梦简辨正.黄盛璋.考古学报1979.I"
 PRINT "中国先秦史历表.张培瑜.齐鲁1987┃历法漫谈.唐汉良,舒英发.陕西科技1984"
 GOTO 4140
4080
 PRINT "干支历_黄帝时始用,-719年起纪日、54年起纪年连续至今"
 PRINT "时辰_12时辰合24小时,清制子初23点,子正0点"
 PRINT "*黄帝纪年_-2697为元年,辛亥革命时用"
 PRINT "干支V_21900±60日可重复,1985±60±1日可同步偏移"
 PRINT "古历[部]加[艹]"
 PRINT "星期_源自西亚,明末传入,又译某曜日"
 PRINT "儒略日_天文纪日,儒历-4712_1/1正午为0.0日";
 GOTO 4140
4120 q$ = INKEY$: IF q$ = "" THEN 4120
 GOTO 561
4130 IF p$ = "I" THEN 4133
 q = VAL(p$): IF q THEN fff = q ELSE fff = fff + 1
4133 fff = (fff + 8) MOD 9 + 1
 msw = -7: GOSUB 1822: GOSUB 3508: GOSUB 540
 GOSUB 6990: a$ = "1书目 2-3资料 4-7西历 8其他 9说明 0下页": GOSUB 579
 GOSUB 100: GOSUB 110: GOSUB 3508
 ON fff GOTO 4070, 4080, 4160, 4330, 4310, 4290, 4270, 4480, 4050
4140 GOTO 1810
4160 PRINT "532年到15世纪中叶公元纪年渐被采用", , , "各国起用公历日期"
 PRINT "1582_10/15意  '83卢森堡 荷兰 1700_3德国     1873日本      '19_2罗马尼亚"
 PRINT "  大利 西班牙 '84_1/17奥地利   挪威 丹麦    1912中国      '24_3/23希腊"
 PRINT "  葡萄牙 波兰 '84_1/22瑞士   '52_9/14英国   '16_4保加利亚 '27土耳其"
 PRINT "'82_12/20法国 '87_11匈牙利   '53_3瑞典 芬兰 '18_2/14俄国  '28_10埃及"
 GOTO 4140
4270 s$ = "格里历 即公历 1582_10/15起"
 GOSUB 4355: i0 = 5: i1 = 1: J = 0: GOTO 4340
4290 s$ = "儒略历 西方旧历,儒历5_1/1:1582_10/4"
 GOSUB 4355: i0 = 5: i1 = 4: J = 0: GOTO 4340
4310 s$ = "儒略历 前8:后4年(拨正过渡)"
 GOSUB 4355: i0 = 5: i1 = 5: J = 0: GOTO 4340
4330 s$ = "儒略历 前45:前9年(应4年一闰,实施失误)"
 GOSUB 4355: i0 = 7: i1 = 6: J = 1
4340 GOSUB 4370: GOTO 4140
4355 PRINT s$; : RETURN
4370 zd = 16: GOSUB 139: FOR i = i0 TO i1 STEP -1
 PRINT USING " 每周期####年#######天 "; yc(i); DC(i);
 IF i = i0 THEN s$ = "": GOTO 4400
 IF ly(i) THEN s$ = "周期年闰" ELSE s$ = "周期年不闰"
 IF i = 1 THEN PRINT "*";
4400 PRINT s$: NEXT i
 IF J <> 0 THEN 4430
 s$ = "奥古斯都月日格式 闰年2月29天": b$ = " Aug": GOTO 4440
4430 s$ = "儒略月日格式 闰年2月30天 (8月名 Sextilis)": b$ = " Sxt"
4440 zd = 22: GOSUB 139: GOSUB 4355: zd = 23: GOSUB 139
 PRINT " 月名 1-12月 Jan Feb Mar Apr May Jun Jul"; b$; " Sep Oct Nov Dec";
 GOSUB 124: PRINT " 天数";
4450 zd = 24: zf = 14: GOSUB 140
 FOR i = 0 TO 11: PRINT USING " ## "; m(J, 0, i); : NEXT i: RETURN
4480 PRINT "伊斯兰历 (回历): 1年12月 单月30天 双月29天 闰年12月30天 平年354天 闰年355天"
 PRINT "1年历周=30年=19平年+11闰年=10631天  年历周内2 5 7 10 13 16 18 21 24 26 29年闰"
 PRINT "显示1:2429年 即西历622_07/16:2979_03/20  @7可示远程近似元旦(-10945:9666年)", "日落时更换日期 本机列白昼日期"
 GOSUB 3502: PRINT "        2000年夏商周断代工程新成果：";
 PRINT "前2070夏代始；前1600商代始；前1300盘庚迁殷；前1046商周分界。";
 PRINT "商后期(殷)：前1300盘庚迁殷，前1250武丁，前1191祖庚，前1147武乙，";
 PRINT "        前1112文丁，前1101帝乙，前1075帝辛。";
 PRINT "周朝(共和前)：前1046武王，前1042成王，前1020康王，前995昭王，前976穆王，";
 PRINT "        前922恭王，前899懿王，前891孝王，前885夷王，前877厉王。";
 GOTO 4140
4690 a$ = isl$: GOSUB 3010
 Y = qq: m = pcq: hd = dbq: IF Y < 1 OR Y > 2429 THEN 1808 ELSE 4750
4700 jn$ = "⊙ 伊斯兰历纪元": jnm = 7: sy = hy: q! = sy: GOSUB 7661
 ON jnh + 1 GOTO 710, 4706, 4705
4705 icl% = 4: dpo = 1948439.5#: GOSUB 9500
4706 Y = q!: IF Y > 0 AND Y < 2430 THEN m = hm: GOTO 4750
 m = 1: hd = 1: GOTO 4750
4710 IF isw = 0 THEN 1808
 a$ = isl$ + "序月: ": GOSUB 3000: IF qz$ = "" THEN 1810
 HMD = qq: GOSUB 4810: Y = hy: m = HMD: GOTO 4750
4730 IF isw = 0 THEN 1808 ELSE Y = hy: m = hm + ad: GOTO 4750
4740 IF isw = 0 THEN 1808 ELSE Y = hy: m = hm - ad: GOTO 4760
4750 IF m > 12 THEN m = m - 12: Y = Y + 1: GOTO 4750 ELSE 4770
4760 IF m < 1 THEN m = m + 12: Y = Y - 1: GOTO 4760 ELSE 4770
4770 d = INT((Y * 10631 + 3) / 30) + 4609975!
 jri = (m - 1) * 29 + INT(m / 2) + hd: d = d + jri - 1: GOTO 2625
4790 Y = hy + ad: GOTO 4820
4800 Y = hy - ad: GOTO 4820
4810 IF ad = 0 THEN ad = 1
 RETURN
4820 IF isw = 0 THEN 1808
 d = INT((Y * 10631 + 3) / 30) + 4609975! + HJD: GOTO 2625
4840 IF dp > 1948439! AND dp < 2809196! THEN 4860
 IF isw = 0 THEN C2$ = "": RETURN
 isw = 0: C2$ = STRING$(30, " "): RETURN
4850 DH0 = dp - 1948084.5#: hy = INT((DH0 * 30 - 4) / 10631): RETURN
4860 GOSUB 4850: hd = DH0 - hy * 354 - INT((hy * 11 + 3) / 30)
 HJD = hd - 1: isw = 1: IF hd = 355 THEN hm = 12: hd = 30: GOTO 4890
 hm = INT((hd - 1) / 59) * 2 + 1: hd = (hd - 1) MOD 59 + 1
 IF hd > 30 THEN hm = hm + 1: hd = hd - 30
4890 sy = hy: GOSUB 1005
 C2$ = isl$ + "       " + sy$ + "年" + RIGHT$(STR$(hm), 2) + "月" + RIGHT$(STR$(hd), 2) + "日"
 jri = (hm - 1) * 29 + INT(hm / 2) + hd
 IF jri = 1 THEN q$ = "伊历新年": GOSUB 3220
 RETURN
4900 GOSUB 100: GOSUB 110: PRINT a$; TAB(55); : a$ = b$: GOTO 568
4920 IF dp < 1948439! OR dp > 2809196! THEN 3219
 D7 = d: HD0 = hd: HM0 = hm: hy0 = hy: uq = 0: uqp = 2
 IF p$ = "i" THEN ILD = d - hd + 1: ILD0 = ILD: UQI = 10 ELSE ILD = INT((hy * 10631 + 3) / 30) + 4609975!: ILD0 = ILD: MI = 1: UQI = 6
4950 d = ILD: WLK = 1: GOSUB 5050: WLK = 0: IF uq + uqp > 2 THEN 4980
 GOSUB 520: sy = hy: GOSUB 1005
 q$ = isl$ + sy$ + "年"
 IF p$ = "u" THEN 4970
 a$ = q$ + STR$(hm) + "月": b$ = " 月名 " + im$(hm - 1): GOSUB 4900: GOTO 4980
4970 GOSUB 124
 a$ = " 1:2429年〉i月历 u年历 @8月 @9日 o新月 O元旦  7& 8*±V年  9( 0)±V月  ei日历开关"
 GOSUB 568: a$ = " 伊历页〉h积数 ": GOSUB 6957
 a$ = " @U @I 显示范围  U日期  @7年⊙及积数  Esc ex @R 退净后 ei er 关闭": GOSUB 575
 a$ = q$ + "新月表": b$ = "(闰年附闰日 红)": GOSUB 4900
4980 IF p$ <> "u" THEN 5000
 IF hy <> hy0 THEN ifm = 2: GOTO 5010
 IF hy0 = 2429 AND ILD > ILD0 + 354 THEN msw = 1: ifm = 2: GOTO 5010
5000 IF p$ <> "i" THEN 5005
 IF hm <> HM0 THEN ifm = 1: GOTO 5010
 IF hy0 = 2429 AND HM0 = 12 AND ILD > ILD0 + 29 THEN msw = 1: ifm = 1: GOTO 5010
5005 GOSUB 5070: GOSUB 5030
 IF p$ = "i" THEN ILD = ILD + 1: GOTO 4950
 ILD = ILD + 29 + MI: MI = 1 - MI: GOTO 4950
5010 IF WWW = 1 THEN p$ = qp$
 GOSUB 3217: d = D7: WLK = 1: msw = 5: msw1 = 5: GOSUB 5050: WLK = 0: GOTO 5160
5030 uq = (uq + 1) MOD UQI: IF uq = 0 THEN uqp = uqp + 27
 RETURN
5050 GOTO 710
5060 RETURN
5070 clr = 10: IF jri = 355 THEN clr = 12
 zd = 16 + uq: zf = uqp: GOSUB 140: zd = clr: GOSUB 3521
 sm = hm: sd = hd: vo$ = "": GOSUB 8044: PRINT vo$;
 IF lr THEN lr$ = "闰" ELSE lr$ = "农"
 sm = gu: sd = dq: vo$ = lr$: GOSUB 8044: GOSUB 3553: PRINT vo$;
 gz$ = tg$(G5) + dz$(Z5): PRINT gz$; : GOSUB 5150: vo$ = cn$
 sm = jgm: sd = jgd: GOSUB 8044: PRINT vo$;
 GOSUB 3300: PRINT wk$(wk1); : RETURN
5150 zd = 14 - 3 * aukg: GOTO 3525
5160 IF msw < 5 OR WLK = 1 THEN RETURN
 IF wqp THEN GOSUB 3510: zd = 16 + WQ: zf = wqp: GOSUB 140: PRINT " "; : IF isw = 0 THEN 5230
 IF ifm <> 2 THEN 5190
 IF hy <> hy0 THEN WWW = 1: GOTO 5230 ELSE WWW = 0: GOTO 5200
5190 IF hm <> HM0 OR hy <> hy0 THEN WWW = 1: GOTO 5230 ELSE WWW = 0
5200 IF C2$ = STRING$(30, " ") THEN 5230
 IF ifm = 1 THEN HH = hd ELSE HH = hm
 WQ = ((HH - 1) MOD UQI): wqp = INT((HH - 1) \ UQI) * 27 + 1
 zd = 15: zf = 4 + ifm: GOSUB 150:  zd = 16 + WQ: zf = wqp: GOSUB 140
 PRINT CHR$(25 * ifm - 10);
5230 RETURN
5235 GOSUB 110: GOSUB 3506: PRINT a$; TAB(55); : RETURN
5240 IF nln > 1948 THEN RETURN
 a$ = vn$ + vv$ + "年"
 IF vn$ = "民国" THEN a$ = "农历" + a$
 GOTO 5235
5250 gp = 0: GC = 1: GT = 1
5260 GA$ = MID$(gl$, GC, 1)
 gz$ = tg$(G5) + dz$(Z5)
 dx$ = "大": AA = 30: IF GA$ = "1" THEN dx$ = "小": AA = 29
 GZJ = GZJ + AA: gm = GC
 GC$ = "农": IF gr = 0 THEN 5280
 IF GC = gr + 1 THEN GC$ = "闰"
 IF GC > gr THEN gm = gm - 1
5280 IF nkg OR gm <> 1 THEN 5300
 GOSUB 6530: GOSUB 5240
5300 zd = 16 + gp: zf = 1 + GT: GOSUB 140
 IF GC$ = "农" THEN GOSUB 3553 ELSE GOSUB 3540
 PRINT GC$; : gm$ = RIGHT$(STR$(gm), 2) + "月": GOSUB 3554
 PRINT gm$; dx$; "初一"; gz$;
 GOSUB 5150: IF AUY <> ys THEN zd = 14 - 3 * aukg: zf = 4: GOSUB 150
 IF aukg = 0 THEN c$ = c0$ ELSE c$ = c3$
 jg$ = cn$: pc = 0: IF era$ = "a.d." THEN 5370
 IF jgy < 100 THEN jg$ = jg$ + "前": pc = 2 ELSE jg$ = "前"
5370 PRINT jg$; MID$(c$, 17 + pc, 14 - pc); : GOSUB 3300
 PRINT "星期"; wk$(wk1); : IF GC = GLN THEN 5472
5390 IF p$ = "q" OR pq$ = "Q" THEN pq$ = "Q": p$ = "": q$ = "Q"
 d = d + AA: gkg = 1: GOTO 710
5450 gkg = 0: gp = gp + 1: IF gm = 7 AND lr <> -1 THEN gp = 0: GT = GT + 41
 GC = GC + 1: IF GC <= GLN THEN 5260
5472 GOSUB 124
 a$ = "@5年 @6月 |日 5% 6^*60V日 n春节 ^Home ^End±V年 ^" + es$ + " ^" + CHR$(26) + "±10V年 ^PgUp ^PgDn±60V年"
 GOSUB 575: a$ = "∮F日期 @D @1 @2政朝 @A @S @3 @4年号 ": GOSUB 6957
 a$ = "\初一 3#4$±V月 1!2@±V年 @Y @C起止 @E闰月 ": GOTO 575
5490 gd = gd!(gy): gr = gr!(gy): gdx = gx!(gy): RETURN
5500 Y = gy - 1384: GOSUB 5490: gdp = gd: NGU = gu: NGR = gr
 IF gd > 31 THEN m = 2: id = gd - 31 ELSE m = 1: id = gd
 IF gr > 0 THEN GLN = 13 ELSE GLN = 12
 gl$ = STRING$(13, "#"): GI = 1
 FOR gg = 1 TO GLN: IF gdx AND GI THEN a$ = "1" ELSE a$ = "0"
 MID$(gl$, gg, 1) = a$: GI = GI * 2: NEXT gg
 IF p$ = zr$ + "&" THEN nlk = 0: RETURN
 yh = y1: MH = m1: dh = id: gkg = 2: GOTO 645
5570 nln0 = nln: gkg = 0: IF nkg = 1 THEN RETURN
 GOTO 5250
5600 IF dp < dpg OR nln > 2050 THEN 5860
 DN0 = d: nlk = 1
5610 dpq = dp: ys = nln: IF p$ = "n" THEN nkg = 1: GOTO 5640
5630 IF msw = 5 THEN 5640
 IF pqr$ <> "q" AND msw <> 4 THEN GOSUB 520
 IF msw <> 4 OR pqr$ <> "q" THEN 5640
 IF nln = nln0 AND pp$ = "n" THEN pp$ = "": GOTO 5860
 GOSUB 520
5640 IF ys < -9998 THEN ys = -9998 ELSE IF ys > 9999 THEN ys = 9999
 IF ys = -1383 THEN IF dpq < dpg THEN 5710
 IF ys > -1384 AND ys < 2051 THEN gy = ys + 1384: GOTO 5660
 GOTO 5710
5660 IF ys < 1 THEN yt = ABS(ys) + 1: qh$ = "(前" ELSE yt = ys: qh$ = "  ("
 IF nkg THEN 5700
 sy = yt: GOSUB 1005
 a$ = qh$ + sy$ + ")" + ly$ + "年朔日表"
 GOSUB 5705
5700 GOSUB 5500
 IF nkg = 1 THEN nkg = 0: RETURN
 IF p$ = "q" OR p$ = "Q" OR pq$ = "Q" THEN nlk = 0: GOTO 5830
 GOTO 5630
5705 GOSUB 3528: zf = 55: GOSUB 115: PRINT a$: RETURN
5710 Y = ys: m = 2: id = 23: ssw = 1: GOTO 645
5720 IF gu > 1 THEN d = d - 20: ssw = 2: GOTO 710
 IF ld > 1 THEN d = d - ld + 1: GOTO 710 ELSE 3810
5740 IF nkg = 1 THEN nkg = 0: RETURN ELSE 5630
5750 pq$ = "": GOSUB 561: IF GC = GLN THEN msw = 4: GOSUB 5860: GOTO 5472
 msw = 1: RETURN
5770 GOSUB 91: GOSUB 3513: PRINT TAB(63); : GOTO 91
5830 GOSUB 3217: pq$ = "": d = DN0: nkg = 5: GOTO 710
5840 msw = 4: nkg = 0
5860 IF msw <> 4 THEN RETURN
 IF NY0 > 0 THEN zd = NY0: zf = NX0: GOSUB 140: GOSUB 3510: PRINT " ";
 IF dp < dpg OR nln > 2050 THEN 3219
 IF nln0 <> nln THEN qfm = 1: RETURN
 qfm = 0: IF gu > 6 THEN NX = 42: NY = gu + 9 ELSE NX = 1: GOTO 5930
 IF gu <= NGR AND lr = 0 THEN 5950
 IF NGR > 6 THEN NY = NY + 1
 GOTO 5950
5930 NY = gu + 15: IF gu <= NGR AND lr = 0 THEN 5950
 IF NGR > 0 THEN NY = NY + 1
5950 zd = NY: zf = NX: GOSUB 140: GOSUB 3523: PRINT "(";
 NX0 = NX: NY0 = NY: msw1 = 4: RETURN
5980 Y = y1: y0 = Y: GD0 = GD0 - gl + 1: GL0 = gl: yg = y1
5990 gy = Y + 1384: GOSUB 5490: IF GD0 >= gd THEN 6040
 Y = Y - 1: gy = gy - 1: y0 = Y: GD0 = GD0 + 365: i = 1: yg = yg - 1
6020 t = INT(y0 / yc(i)): y0 = y0 - t * yc(i)
 IF y0 = 0 THEN gl = ly(i): GD0 = GD0 - gl: GOTO 5990
 i = i + 1: GOTO 6020
6040 gdd = GD0 - gd: Y5 = Y
 IF gr > 0 THEN GLN = 13 ELSE GLN = 12
 IF gy = 273 THEN GLN = 12
 GI = 1: GS = 0: FOR gg = 1 TO GLN
 IF (gdx AND GI) = GI THEN FG = 1 ELSE FG = 0
 GS = GS + 30 - FG: IF GS > gdd THEN 6110
 GI = GI * 2: NEXT gg
6110 gd = gdd - GS + 30 - FG: gf = 30 - FG
 IF GL0 > 0 AND m1 < 3 THEN lm = -1 ELSE lm = 0
 gdd = gdd + lm: Y = yg: nln = yg: cd = 0
 IF Y < 1 THEN Y = ABS(Y) + 1: ger$ = "(前" ELSE ger$ = "  ("
6140 IF nln < V!(VD!(cd + 1)) THEN 6150
 cd = cd + 1: IF cd < 15 THEN 6140
6150 gd = gd + 1: gm = gg: GG0 = gg: sy = Y: GOSUB 1005
 nln$ = sy$: cnd$ = ger$ + nln$
 IF gr > 0 AND gm = gr + 1 THEN lr = -1: lr$ = "闰": qh$ = "" ELSE lr$ = "": qh$ = " ": lr = 0
 IF gr > 0 AND gm > gr THEN gm = gm - 1
 IF FG = 1 THEN dx$ = "小" ELSE dx$ = "大"
 Y = yg - 4: G = Y - INT(Y / 10) * 10: dq = gd
 IF dq < 11 THEN dq$ = "初" + wk$(dq) ELSE DQ0 = dq \ 10: DQ1 = dq MOD 10: dq$ = wk$(DQ0 + 9): IF DQ1 > 0 THEN dq$ = dq$ + wk$(DQ1)
 IF gm = 13 THEN gm = 12: dx$ = "大"
 z = Y - INT(Y / 12) * 12: NDZ = z: NTG = G: gu = gm: ly$ = tg$(G) + dz$(z)
 c1$ = " 农历": IF gm > 10 THEN m$ = "十" + wk$(gm - 10): GOTO 6240
 qh$ = qh$ + " ": IF gm = 1 THEN m$ = "正" ELSE m$ = wk$(gm)
6240 q$ = "": IF dq = 20 OR dq = 30 THEN q$ = " "
 c1$ = c1$ + ger$ + nln$ + "年)" + qh$ + lr$ + m$ + "月" + dx$ + qh$ + q$ + dq$ + "日": l = LEN(c1$): IF l < 32 THEN c1$ = c1$ + STRING$(32 - l, " ")
 IF nln < -840 THEN zd = 9: GOSUB 3517 ELSE IF nln < -103 THEN GOSUB 3540 ELSE GOSUB 3515
 zd = 10: GOSUB 139: PRINT c1$; : GOSUB 131: zd = 0: GOSUB 160
 PRINT USING "###"; gdd + 1; : RETURN
6260 sw = 0: gy = nln + 1384: IF gm = 1 AND lr = 0 THEN gy = gy - 1 ELSE 6290
 GOSUB 5490: IF gr > 0 THEN GG0 = 14 ELSE GG0 = 13
6290 GI = 2 ^ (GG0 - 2): IF (gdx AND GI) = GI THEN FG = 1 ELSE FG = 0  'lenth of m-1
 gf0 = 30 - FG: RETURN
6310 OPEN "i", 3, "clndrgl.txt"
 FOR i = 0 TO 3435: INPUT #3, gd!(i), gr!(i), gx!(i): NEXT i
 CLOSE 3: GY0 = 3436: RETURN
6460 OPEN "i", 3, "clndrnh.txt"
 FOR i = 0 TO 397: INPUT #3, V!(i), nhao$(i): NEXT i
 CLOSE 3: RETURN
6520 vig = vik: GOTO 6710
6530 vv$ = "": vn$ = "": vo = 0: IF dp < dpg THEN vik = 0: cd = 0: GOTO 6520
 IF dp > 2432917! THEN vik = 397: cd = 15: GOTO 6520
 FOR vi = VD!(cd) TO 397
 IF V!(vi) > nln THEN vi = vi - 1: GOTO 6580
 vn0 = V!(vi): NEXT vi
6580 vig = vi: IF V!(vi - 1) > V!(vi) THEN vig = vi - 1
 vik = vig: IF nln <> 1911 OR y1 <> 1912 THEN 6600
 vn$ = "民国": vnm$ = "清末帝": vv$ = "元": vo = 101: GOTO 6700
6600 vn$ = nhao$(vi): IF vn$ = "" THEN vn$ = nhao$(vi - 1)
 vnm$ = vn$
6630 vv = nln - vn0 + 1: vo = vv
 IF dp > 2419402! THEN IF nln < y1 THEN vv = vv + 1
 IF vv = 1 THEN vv$ = "元": GOTO 6700
 IF vv < 10 THEN VL = vv: GOTO 6690
 VH = INT(vv / 10): VL = vv MOD 10: IF VH < 2 THEN 6680
 vv$ = wk$(VH) + wk$(10): GOTO 6690
6680 vv$ = wk$(VH + 9)
6690 IF VL = 0 THEN 6700
 vv$ = vv$ + wk$(VL)
6700 vit = vi: vt$ = vn$: GOSUB 136
 zd = 9: GOSUB 3517: IF nln < -840 THEN vn$ = "*" + vn$: GOSUB 3555
 PRINT vn$; vv$; "年";
 IF vn$ = "民国" THEN PRINT RIGHT$(c0$, 10);
 GOSUB 187
6710 vz = vik: RETURN
6720 IF msw <> -1 THEN RETURN
 IF p$ = "h" THEN 6730
 IF vik < 397 OR nln < 1949 OR jgn < 1949 THEN vz = vik + ad
 IF V!(vz - 1) > V!(vz) THEN vz = vz + 1
 IF vz > 397 THEN vz = 397
 GOTO 6740
6730 IF vik > 0 OR nln > -1370 THEN vz = vik - ad
 IF vz < 0 THEN vz = 0
6740 vik = vz: vs = vz
 IF vz > 0 THEN IF V!(vz) < V!(vz - 1) THEN vs = vz - 1
 Y = V!(vs): vi = vs: vn$ = vt$: RETURN
6860 vn5 = 1: IF nln < -1382 THEN vi = 0: GOTO 6890
 IF vn9 = 1949 AND nln > 1948 THEN vi = 397: GOTO 6890
 FOR vi = 0 TO 397: IF V!(vi) > nln THEN vi = vi - 1: GOTO 6890
 NEXT vi
6890 IF vib = vi AND p$ <> "f" THEN RETURN
 vib = vi: vi = vi - 5
 IF vi < 1 THEN vi = 0 ELSE IF vi + 9 > 397 THEN vi = 388
 GOSUB 6955
 a$ = "kl±V页 hj±V行 +行": GOSUB 568: msw = -1: vy = 15: vx = 1
 vn8 = V!(vi): i = 0: FOR vi = vi TO vi + 12: IF vi > 397 THEN 6950
 GOSUB 7000: IF vi = 397 THEN 6950
 vy = vy + 1: IF vy > 24 THEN 6950
 i = i + 1: NEXT vi
6950 vn9 = V!(vi): vn$ = vt$: RETURN
6955 a$ = "nn方式 @D @1 @2政朝 @S @3 @4年号 @A序年 @V @X汉字 @Y C首末页 "
6957 GOSUB 6990: GOSUB 578: RETURN
6960 vcl = -8: IF jgn > 1948 OR nln > 1948 THEN GOSUB 7090
 a$ = "#398> 1949年 共和国, 公元纪年": GOTO 7080
6990 GOSUB 125: GOTO 3523
7000 IF vi = 397 THEN 6960
 vn0 = V!(vi)
 IF vn0 < 0 THEN vn0 = ABS(vn0) + 1: vq$ = "> 前" ELSE vq$ = "> "
 IF vi < 23 THEN vq$ = ">*前"
 VII = vi: vy$ = "": IF V!(vi + 1) >= V!(vi) THEN 7030
 vv = V!(vi) - V!(vi + 1) + 1: vy$ = STR$(vv) + "年": vi = vi + 1
7030 vn$ = nhao$(vi): IF nhao$(vi) = "" THEN vn$ = nhao$(vi - 1):
 vcl = -8: IF nln >= V!(vi + 1) OR nln < V!(vi) THEN GOTO 7070
 GOSUB 7090
7070 IF vi = 396 THEN V$ = ", 使用公历" ELSE V$ = ""
 IF (vi = 395 OR vi = 396) AND jgy = 1912 AND nln = 1911 THEN GOSUB 7090
 sy = vn0: GOSUB 1005
 a$ = "#" + RIGHT$(STR$(VII + 1001), 3) + vq$ + sy$ + "年 " + vn$ + vy$ + V$
7080 zd = vy: zf = vx: GOSUB 140
 zd = 10 + vcl: GOSUB 3530: PRINT a$; : GOTO 180
7090 vcl0 = vcl0 MOD 5 + 1: vcl = vcl0: vi6 = vi: RETURN
7100 GOSUB 520: GOSUB 6955: a$ = "自动转页Esc退出不转": GOSUB 578
 msw = -2
 a$ = "主要政朝 (并存政朝略 -1383:2050资料段)": GOSUB 5235
 cd0 = cd: vy = 16: vx = 7: FOR cd = 0 TO 15: vi = VD!(cd)
 a$ = "=>": IF cd = 15 AND y1 > 1948 THEN 7130
 IF nln >= V!(vi) AND nln < V!(VD!(cd + 1)) THEN 7130
 a$ = "  "
7130 GOSUB 3528: zd = vy: zf = vx - 3: GOSUB 140: PRINT a$;
 GOSUB 7000: vy = vy + 1: IF vy = 24 THEN vy = 16: vx = 44
 NEXT cd: cd = cd0: vn$ = vt$
 RETURN
7180 IF cd > 0 THEN cd = cd - 1
 GOTO 7230
7190 IF nln < 1949 THEN cd = cd + 1
 GOTO 7230
7200 a$ = CDN$: GOSUB 570
 GOSUB 4120: IF q$ = CHR$(13) THEN 1810
 cd = INSTR(cd$, q$) - 1: IF cd < 0 THEN 1810
 GOTO 7240
7230 cd = (cd + 16) MOD 16
7240 Y = V!(VD!(cd)): GOTO 8200
7250 IF jnk <> 5 THEN 7252
 a$ = jb$ + ja$ + " 0=前1年: ": GOSUB 3000: IF qz$ = "" THEN 1810
 Y = jnl + qq - 1: GOTO 8195
7252 IF dp < dpg THEN vit = 1: vnm$ = "盘庚": Y = nln + 1398
 IF vo <> 101 THEN 7255
 vit = 396: vo = 0: vnm$ = "民国"
7255 IF jgn < 1949 THEN 7260
 vi = 397: vnm$ = "共和国": sy = nln - 1948: a$ = "1949年起〉": GOTO 7290
7260 vi = vit: v6 = V!(vi + 1) - V!(vi): Y = V!(vi): a$ = ""
 GOSUB 7270: GOTO 7280
7270 sy = Y: IF Y < 1 THEN GOSUB 1006: a$ = a$ + "前" + sy$: RETURN
 GOSUB 1005: a$ = a$ + sy$: RETURN
7280 Y = V!(vi + 1) - 1: a$ = a$ + ":": GOSUB 7270
 a$ = a$ + "共" + STR$(v6) + "年〉": sy = vo
7290 jnm = 5: ja$ = "年,农" + a$
 a$ = vnm$ + STR$(sy) + ja$ + "序年 x⊙选用 "
 GOSUB 570: q! = sy: jb$ = vnm$ + "起": jn$ = "⊙ 农历〉" + jb$
 GOSUB 7669: v7 = q!: Y = V!(vi) + v7 - 1: IF jnh = 0 THEN 1810
 vit = vi: IF vi = 1 THEN vit = 0
 jnl = V!(vi)
7300 IF jnh = 1 THEN 8195 ELSE 710
7310 d = 3877880!: vi = 0: GOTO 710
7320 a$ = "#" + STR$(vik + 1) + "·年号码 1-398: ": GOSUB 3000: v5 = qq: IF v5 = 0 THEN 1810
 v5 = (v5 + 397) MOD 398 + 1: Y = V!(v5 - 1): GOTO 8200
7360 GOSUB 520
 a$ = "大月30日小月29日 @F当前页 @Y_@F首页 @C_@F末页 @R退出示春节 @H @J ±1年 @K @L换页"
 GOSUB 6957
 OP = 0: GOSUB 3528: zd = 16: GOSUB 139: PRINT "农历月:";
 FOR gg = 1 TO 12: G$ = MID$(STR$(gg), 2, 2): zd = 12 + OP: GOSUB 160
 OP = 1 - OP: zd = 16: zf = 8 + gg * 2: GOSUB 140: PRINT G$;
 zd = 16: zf = 50 + gg * 2: GOSUB 140: PRINT G$; : NEXT gg
 GOSUB 3503: IF ty < 1 THEN ty = 1 ELSE IF ty > 3434 THEN ty = 3431
 OY = 17: OX = 3: FOR gy = ty - 5 TO ty + 24
 IF gy < 1 THEN gy = 1 ELSE IF gy > 3434 THEN 7560
 GOSUB 5500: Y = gy - 1384: qh$ = "农"
 IF Y < 1 THEN Y = 1 - Y: qh$ = "前" ELSE IF gy = 3435 THEN 7560
 IF gy = nln + 1384 THEN zd = 10: GOSUB 3530: GOTO 7410
 IF gy = ty THEN GOSUB 3503 ELSE GOSUB 3502
7410 zd = OY: zf = OX - 2: GOSUB 140: sy = Y: GOSUB 1005
 PRINT qh$; sy$; "年"; TAB(OX + 8); : GOSUB 3500: OP = 0
 IF gy > 3434 THEN 7560
 FOR gg = 1 TO GLN: a = VAL(MID$(gl$, gg, 1))
 dx$ = "小": IF a = 0 THEN dx$ = "大"
 IF gy <> nln + 1384 THEN 7490
 IF gr = 0 THEN 7480
 IF gg < gr THEN 7480
 IF gg > gr + 1 THEN 7470
 IF lr = 0 AND gg = gr AND gg = gu THEN GOSUB 3551: GOTO 7490
 IF lr = -1 AND gg = gr + 1 AND gg = gu + 1 THEN GOSUB 3503
 GOTO 7490
7470 IF lr THEN 7480
 IF gg = gu + 1 THEN 7485 ELSE 7490
7480 IF gg <> gu THEN 7490
7485 GOSUB 3551
7490 zd = OY: zf = OX + OP * 2 + 7: GOSUB 140: PRINT dx$; : GOSUB 3500
 IF gy = 273 THEN IF gg = 12 THEN gg = 13
 OP = OP + 1: IF gg <> gr THEN 7500
 OP = OP - 1: OY = OY + 1:  zd = OY: zf = OX - 1: GOSUB 140: GOSUB 3554
 PRINT USING "闰##月"; gr;
7500 NEXT gg
 IF OY > 23 AND OX > 40 THEN 7550
 OY = OY + 1: IF OY > 23 THEN OY = 17: OX = OX + 42: IF OX > 70 THEN 7550
 NEXT gy
7550 msw = -6: y1 = YTY: m1 = MTM: d = DTD: d2 = DT2
 gu = GUT: gd = GDT: lr = LRT: GOTO 1810
7560 zd = OY: zf = OX - 2: GOSUB 140: PRINT "资料完"; : y1 = 2050: GOTO 7550
7580 IF LEN(p$) = 1 THEN 7730
 IF pj <> 19 THEN 7594
 IF msw = -6 THEN 7610
7581 IF icl% = 2 THEN hkg% = 0: GOTO 9250
 IF icl% THEN 7582
 IF hkg% THEN 7583 ELSE 7590
7582 IF hkg% = 0 THEN 7585
 IF icl% THEN 7585
 IF icl% <> ict% THEN 7585
7583 dpo = dpt: icl% = ict%: hkg% = 0: GOTO 9600
7585 dpt = dpo: ict% = icl%: hkg% = 1
7590 dpo = tdy: icl% = 0: GOTO 9600
7594 IF pj <> 33 THEN 7595
 YTY = y1: MTM = m1: DTD = d: DT2 = d2: GUT = gu: GDT = gd: GRT = gr
 LRT = lr: ty = nln + 1384: GOTO 7600
7595 IF ty = 0 OR msw <> -6 THEN 7670
 IF pj < 35 OR pj > 38 THEN 7670
 a$ = MID$("-1 +1 -10+10", pj * 3 - 104, 3): ty = ty + VAL(a$)
7600 p$ = zr$ + "&": GOTO 7360
7610 msw = 0: nln = ty - 1384: GOTO 3120
7620 ON jnk + 1 GOTO 7630, 7622, 7623, 7624, 7625, 7626, 7627, 7660, 7628
7622 q! = dp + .5: GOTO 7662
7623 q! = nln + 2698: GOTO 7662
7624 q! = jgn + 753: GOTO 7662
7625 q! = jgn - 283: GOTO 7662
7626 q! = nln - jnl + 1: GOTO 7662
7627 q! = jgn: GOTO 7662
7628 q! = nln - srn + 1: jnk$ = "⊙ 生肖属" + sx0$ + ", 旧俗虚岁": GOTO 7662
7630 jnk = 0: GOSUB 7640: GOTO 180
7640 zd = 11: GOSUB 135: GOTO 3508
7660 GOSUB 4850: q! = hy: GOTO 7662
7661 a$ = jn$ + STR$(sy) + "〉置数·x⊙选用 ": GOSUB 570: q! = sy
 GOSUB 7669: RETURN
7662 GOSUB 7640: jp = q!: sy$ = "": IF jnk = 1 THEN vdx$ = " j.d.": GOTO 7665
 vdx$ = "年": GOSUB 7667
7665 PRINT jnk$; sy$; STR$(jp); vdx$; : GOSUB 180: RETURN
7667 sy$ = "第": IF jp < 1 THEN jp = 1 - jp: sy$ = "前"
 RETURN
7668 q! = a: jnh = 1: RETURN
7669 INPUT q$: GOSUB 561: a = INSTR(q$, "x")
 jnh = 0: IF a THEN MID$(q$, a) = " ": jnk = jnm: jnk$ = jn$: jnh = 2
 a = VAL(q$): IF a THEN 7668
 IF INSTR(q$, "0") THEN 7668
 RETURN
7670 IF pj < 35 OR pj > 38 THEN 7700
 ON pj - 34 GOTO 7671, 7675, 7676, 2770
7671 jnm = 2: jn$ = "⊙*黄帝纪年 HuangDi year ": sy = nln + 2698: GOSUB 7661
 ON jnh + 1 GOTO 1810, 7672, 710
7672 nln = q! - 2698: GOTO 3120'@H @J @K y
7675 jnm = 3: jnc = -753: jn$ = "⊙ Roman year 罗马纪年": GOTO 7677
7676 jnm = 4: jnc = 283: jn$ = "⊙ Diocletian y. 戴克里先纪年"
7677 sy = jgn - jnc: GOSUB 7661
 IF jnh = 0 THEN 1810
 jgn = q! + jnc: GOSUB 561: GOTO 610
7679 jnm = 6: jnc = 0: jn$ = "⊙ 公元纪年": GOTO 7677
7690 jcr! = 4: Y = nln: m = gu: id = gd: GOTO 620
7700 IF pj = 25 THEN GOSUB 7800'@P
 IF pj <> 24 THEN 7730
 IF msw > -3 THEN 2455
 pit = pi: pi = 1 - pi: GOSUB 7800: zf = 63: GOTO 2955'@O
7730 IF p$ <> "p" THEN 7740
 pm = pm MOD 9 + 1: dpm(pi, pm) = dp: GOSUB 7780
 IF msw = -3 THEN pn = pm: GOSUB 7835
 p$ = "": GOTO 1810
7740 IF p$ = CHR$(13) THEN iw = 1 - iw: GOTO 710
 IF p$ <> "P" THEN 1810
 p$ = "": GOSUB 80: GOSUB 3555: : PRINT "P0-9?"; : GOSUB 4120: pk = VAL(q$)
7770 GOSUB 7790: DMP = dpm(pi, pk)
 IF DMP THEN d = DMP + 2661889.5#: zzz = 1: GOTO 710 ELSE 1810
7780 GOSUB 7795: GOSUB 3525: zf = 63: GOSUB 89
 vo$ = "P" + CHR$(48 + pm) + STR$(jgn): sm = jgm: sd = jgd: GOSUB 8041
 a$ = SPACE$(13): MID$(a$, 1, 13) = vo$: GOSUB 575
7790 GOSUB 7795: GOSUB 80: GOSUB 3520
 PRINT USING "p# z#"; pm; pk; : RETURN
7795 pm = (pm + 8) MOD 9 + 1: RETURN
7797 GOSUB 124: GOSUB 3510
 PRINT , "格式: 栈标行号.星期.儒略日.干支.西历.农历.伊历   年_月/日";
 GOTO 180
7800 dsp = d: DMM = dpm(pi, 0): pc = 5: GOSUB 2990: GOSUB 3523
 a$ = "备忘录检录分用两记录栈 备忘栈标" + CHR$(4) + "或" + CHR$(5) + "见状态行 三页检录合用另一记录栈"
 GOSUB 2977
 a$ = "@O两栈切换后显示备忘页 两栈交替可以扩充容量 每栈各9项 栈内循环记录": GOSUB 2977
 a$ = "h改变当前行号或删行 +备忘记录顺序拷入检录栈 两栈配合可编制记录文本": GOSUB 2977
 a$ = "@W备忘记录写文件CLDnnn.TXT 文件号nnn 自动增1或用户改写 w确认并执行": GOSUB 2977
 GOSUB 7797
 a$ = " @P本栈 空格键停 p录入 P1-9示历 Zz巡视 +拷至检录 Q+拷至古历 "
 GOSUB 6957: a$ = "h行号 @O换栈 @W输出 ": GOSUB 568
 msw = -3: GOSUB 3210: FOR pn = 1 TO 10
7835 dpm = dpm(pi, pn): PMK = 1
 IF dpm THEN d = dpm + 2661889.5#: pm = pn: GOTO 710
 IF pn <> 10 THEN 7870
7840 d = dsp: PDM = 1: pk = 0: dpm(pi, 0) = DMM: GOSUB 7790: GOTO 710
7850 PMK = 0: IF PDM = 1 THEN 7880
 GOSUB 3515: zd = 14 + pn: GOSUB 139: PRINT USING "!#"; CHR$(pi + 4); pn;
 GOSUB 3510: GOSUB 7890: IF vok = 1 THEN PRINT #1, io$: GOTO 7870
 IF INKEY$ <> "" THEN 7840
7870 IF p$ = "p" THEN 7881
 NEXT pn
7880 PDM = 0: IF p$ = "p" THEN 7881
 pn = 1
7881 GOTO 3215
7883 PRINT TAB(tbk);
7884 PRINT vo$;
7885 MID$(io$, vop) = vo$: RETURN
7890 io$ = STRING$(79, " "): Y = AUY: a$ = "": GOSUB 7270: N$ = a$
7900 vo$ = wk$(wk1): GOSUB 3300: tbk = 3: vop = 1: GOSUB 3495: GOSUB 7883
 zd = 4: GOSUB 3495: PRINT TAB(5); : PRINT USING "########"; dp + .5;
 vo$ = STR$(dp + .5): vop = 3: GOSUB 7885
 vo$ = tg$(NTG) + dz$(NDZ) + "_" + dz$(udz) + "/" + rgz$
 GOSUB 3490: vop = 12: GOSUB 7884
 IF jly > -45 THEN s$ = " " ELSE s$ = "*"
 vo$ = s$ + cn$ + N$
 IF vn$ = "民国" THEN sy = jgy - 1811: a$ = "^" + vn$: zk = 2: GOSUB 8043
 sm = jgm: sd = jgd: GOSUB 8041: zd = 15 - aukg * 4: GOSUB 3530
 vop = 24: GOSUB 7884
 IF jly > -45 THEN 7940
 sy = jly - 10001: sm = jlm: sd = jld: vo$ = "*儒": GOSUB 8041
 vop = 39: GOSUB 3528: GOSUB 7884
7940 Y = nln: IF Y > 0 THEN 7950
 vop = 37: nln$ = "前" + RIGHT$(STR$(100001! - Y), 5): nn$ = "": GOTO 7970
7950 sy = Y: GOSUB 1005: nln$ = sy$: nn$ = "   "
7970 GOSUB 3554: IF MID$(c1$, 1, 1) = "*" THEN s$ = "*" ELSE s$ = " "
 IF dp >= dpg AND nln < 1912 THEN 7990
 d$ = s$ + "农历": m$ = nln$:  vo$ = nn$ + d$ + m$: GOTO 8010
7990 IF vo = 101 THEN vo$ = "农历宣统03": GOTO 8010
 vo$ = vn$ + RIGHT$(STR$(vo + 100), 2)
8010 lvn = 61 - LEN(vo$): PRINT TAB(lvn); vo$;
 vnh$ = vo$: IF lr THEN lr$ = "闰" ELSE lr$ = "__"
 vo$ = lr$: sm = gu: sd = dq: GOSUB 8044
 PRINT vo$; : vo$ = vnh$ + vo$: vop = lvn - 1: GOSUB 7885
8030 vop = 68: IF isw = 0 THEN GOSUB 180: vo$ = "": GOTO 7885
 GOSUB 3551: sy = hy + 10000: sm = hm: sd = hd: vo$ = "伊": GOSUB 8040
8035 tbk = vop + 1: GOTO 7883
8040 zk = 4: a$ = "": GOSUB 8043
8041 a$ = "_"
8042 sy = sm + 100: zk = 2: GOSUB 8043: sy = sd + 100: a$ = "/"
8043 vo$ = vo$ + a$ + RIGHT$(STR$(sy), zk): RETURN
8044 a$ = "": GOTO 8042
8045 von = (von + 1001) MOD 1000: vok = 1
8047 fc$ = "cld" + RIGHT$(STR$(1000 + von), 3) + ".txt"
 a$ = "文件名" + fc$ + "·新文件号 w写文件: ": GOSUB 3000
 IF qz$ = "w" THEN 8050
 IF qq < 1 THEN von = von - 1: GOTO 8057
 von = qq: GOTO 8047
8050 GOSUB 5770: PRINT "正在写文件"; fc$;
 OPEN "o", 1, fc$: GOSUB 7800: CLOSE 1
8057 vok = 0: GOSUB 561: GOTO 1810
8070 pn = (pn + 8) MOD 9 + 1: IF lfs = 0 OR msw <> -4 THEN GOSUB 2980
8080 GOSUB 8110: IF lfs = 0 THEN lfs = 1: pn = 1
 IF pn = 1 THEN dpm(pi, 0) = dp
 dpm(1 - pi, pn) = dp: DP4 = dp: GOSUB 3515
 zd = 14 + pn: GOSUB 139: PRINT USING "!#"; CHR$(5 - pi); pn;
 GOSUB 7890: pn = pn + 1: ph = pn: IF pn = 10 THEN lfs = 0: GOSUB 3215
 RETURN
8110 IF DP4 = 0 THEN DP4 = dp
 zf = 40: GOSUB 99: zj = (lh + pn) MOD 6 + 10: zd = zj: GOSUB 3521
 PRINT USING " +########日   "; dp - DP4; : RETURN
8130 IF xlk = 0 THEN 1808
 IF g7 > 0 THEN gju = G(0, g8): dq = G(1, g8): GOSUB 8150: GOTO 8220 ELSE 1810
8140 IF g7 < 1 THEN RETURN
 zf = 63: GOSUB 99: GOSUB 3490
 PRINT USING "T#农##/##"; g8; G(0, g8); G(1, g8); : RETURN
8150 zf = 38: GOSUB 99: GOSUB 3490
 PRINT "数字 任意键改选 回车示历"; : GOSUB 8140
8160 q$ = INKEY$: IF q$ = "" THEN 8160
 IF q$ = CHR$(13) THEN 561
 G9 = VAL(q$): IF G9 THEN 8180
 g8 = g8 MOD g7 + 1: GOTO 8185
8170 nln = Y: GOTO 3120
8180 g8 = (G9 + g7 - 1) MOD g7 + 1
8185 gju = G(0, g8): dq = G(1, g8): GOTO 8150
8190 a$ = "农历年: ": GOSUB 3000: IF qz$ = "" THEN 1810
 Y = qq
8195 IF Y < -1383 OR Y > 2050 THEN 8170
8200 IF cjk = 0 THEN 8170
8205 GJN = Y - nln: gjj = SGN(GJN + .2) * .5: GOTO 8460
8210 a$ = "农历月 1-12:(近似段闰年?月误差) ": GOSUB 3000: gju = qq
 IF gju < 1 OR gju > 12 THEN 1810
 IF xlk = 1 THEN 8220
 ad = gju - gu
 q = SGN(ad) + 2: ad = ABS(ad)
8215 ok = 1: ON q GOTO 2050, 1809, 2030
8217 IF p$ = "H" THEN 1808
 q = gjj * 2 + 2: ad = 12: GOTO 8215
8220 GJY = nln: Y = nln: gjj = .5: GOTO 8500
8230 IF msw <> -5 THEN GOSUB 8320: GOTO 8240
 IF nln > 2049 OR nln < -1383 THEN 1808
8240 IF dq = 30 THEN dq = 29
 GOTO 2030
8250 GOSUB 8310: GOTO 2030'J
8260 GOSUB 8310: GOTO 8450'H
8270 GOSUB 8310: GOTO 2000'B
8280 GOSUB 8310: GOTO 2070'N
8290 IF g8 = 0 OR G(1, g8) = 0 THEN g6 = 1: g7 = 1: g8 = 1: G(0, 1) = gu: G(1, 1) = dq: pn = 1
 GOSUB 8140: IF p$ = "N" THEN RETURN
 GOSUB 8320: IF p$ = "B" THEN 2030 ELSE 2000
8310 IF wgz = 0 THEN G = rgz: pn = 1: wgz = 1: GOSUB 3590
8320 kdx = 1: nkg = 0: IF lfs AND msw = -4 THEN RETURN
 GOTO 2980
8330 kdx = 1: pc = 2: GOSUB 2990
 a$ = "┏━┓ W 西历月日＿农历月日〉+V年": GOSUB 3521
 b$ = " G 干支纪日〉预设@G〉任意日起始〉+60V日": GOSUB 8420
 a$ = "┃专┃ L 西历序日＿干支纪日〉+V月"
 b$ = "〉说明〉W〉预设T〉在所需西历月日用W起始": GOSUB 8400
 a$ = "┃项┃ K 西历月日＿干支纪日〉+V年"
 b$ = "〉H J K L〉预设@G〉在所需月日用HJKL起始": GOSUB 8400
 a$ = "┃检┃ J 农历序日＿干支纪日〉+V月": GOSUB 3521: GOSUB 8435
 b$ = "〉H J〉资料段宜取V=1  V>1闰月前一月漏检"
 GOSUB 3525: t = 14: GOSUB 8430
 a$ = "┃录┃ H 农历月日＿干支纪日〉": GOSUB 3521: GOSUB 579
 a$ = "+V年": GOSUB 8435
 b$ = "〉N〉预设@G T〉任意日起始〉单次": GOSUB 3525: GOSUB 8430
 a$ = "┃页┃ N 农历月日＿干支纪日〉+60V日"
 b$ = "〉T设农历月日  @G设日干支 未预设则默认": GOSUB 8400
 a$ = "┗━┛ B 农历月日〉起始日预设T〉+1月"
 b$ = "〉中西日期应与预设适配应兼顾小月可重复": GOSUB 8400
 GOSUB 124: GOSUB 3508
 a$ = "   E闰月列表 近似历单次 古历可用G": GOSUB 575
 a$ = "用E    @E本年或近期闰月  @T配合T": GOSUB 579: PRINT "  黄键限资料段 ";
 a$ = " ~清页 `录行 B E G H J K L N W可连续用 两检录页仅版面有别 "
 GOSUB 6957: a$ = " @O换页 @W列行 @Z换栈 ": GOSUB 568: RETURN
8400 GOSUB 3525: GOSUB 8435: GOSUB 3521: GOTO 8430
8420 GOSUB 3521: GOSUB 8435: GOSUB 3525
8430 a$ = b$: GOSUB 577: GOTO 180
8435 GOSUB 578: PRINT TAB(40); : RETURN
8440 GJN = -ad: gjj = -.5: GOTO 8460
8450 GJN = ad: gjj = .5
8460 GJR = gr: gju = gu: GJY = nln
 IF gr = 0 THEN Y = nln + GJN: GOTO 8490
 IF gu <> gr THEN Y = nln + GJN: GOTO 8490
 zd = ABS(GJN): IF lr THEN Y = (gjj + .5) * zd + nln: GOTO 8490
 Y = (gjj - .5) * zd + nln
8490 IF Y < -1383 OR Y > 2050 THEN 8217
8500 gy = Y + 1384: GOSUB 5490
 GZU = gju: IF gr > 0 THEN GLN = 13 ELSE GLN = 12
 IF gy = 273 THEN GLN = 12
 IF gr = 0 THEN 8610
 IF GJY = Y THEN 8580
 IF gju < gr THEN 8610
 IF gju > gr THEN GZU = GZU + 1: GOTO 8610
 GZU = GZU - gjj + .5: GOTO 8600
8580 IF gju < gr THEN 8610
 IF gju > gr THEN GZU = GZU + 1: GOTO 8610
 GZU = GZU + gjj + .5
8600 GOSUB 3213
8610 GI = 1: GS = 0: FOR gg = 1 TO GLN: IF gg = GZU THEN 8650
 IF (gdx AND GI) = GI THEN FG = 1 ELSE FG = 0
 GS = GS + 30 - FG: GI = GI * 2: NEXT gg
8650 id = gd + GS + dq - 1: m = 1: GOTO 645'jgn=y
8660 IF vik = 397 THEN 1810
 vz = vik + 1: IF V!(vz - 1) > V!(vz) THEN vz = (vz + 398) MOD 398 + 1
 GOTO 8680
8670 IF vik = 0 THEN 1810
 vz = (vik + 397) MOD 398
8680 vik = vz: GOSUB 8780: GOTO 8200
8690 a$ = "年名检索 1-2个汉字: ": GOSUB 3000: IF qz$ = "" THEN 1810
 vz$ = LEFT$(qz$, 4): vz = 0
8710      GOTO 1810            '&&&&&&&&&&&&&&
'IF vz$ = "" THEN 1810
' q$ = "找: " + vz$: GOSUB 3220: vz = vz MOD 398
'8720 IF vsw > 0 AND vsw = vz + 1 THEN vz = vsw + 1 ELSE vz = vz + 1
' vsw = -1: IF vz > 397 THEN q$ = "检完": GOSUB 3220: GOTO 1810
' SWAP vi, vz: GOSUB 6510: SWAP vi, vz: VL = VDN - VD: IF VL = 0 THEN 8760
' vp$ = "": FOR vj = 0 TO VL - 1: DEF SEG = NHSG
' VA = PEEK(1600 + VD + vj + NHPT): DEF SEG : vp$ = vp$ + CHR$(VA): NEXT vj
'8760 qv = INSTR(vp$, vz$): IF qv = 0 THEN 8720
'8770 GOSUB 8780: GOTO 8170
8780 vs = vz: IF V!(vz) < V!(vz - 1) THEN vs = vz - 1: vsw = vz
 GOSUB 3217: Y = V!(vs): RETURN
8810 GOSUB 8110: DP4 = dp
 IF vgl% <> vg2% THEN lh = lh - 1: GOTO 8815
 IF zzz = 1 THEN zzz = 0: GOTO 8815
 IF pnk = 0 AND dp = dp2 THEN 3217
8815 dp2 = dp: vg2% = vgl%
 IF lfs = 2 AND msw = -5 THEN 8940
 lfs = 2: msw = -5: lh = 0: GOTO 8830
8820 GOSUB 3540: zf = 1: GOSUB 115
 PRINT " # 参照历:  儒历  农历子正岁月及纪日"; : GOSUB 3503: PRINT "┏";
 GOSUB 3555: FOR db = 1 TO 6: GOSUB 8829: NEXT db
 GOSUB 3515: db = vgl%: IF vgl% = 0 THEN GOSUB 3555: db = vg2%
 IF db = 0 THEN RETURN
 zf = 32 + db * 7: GOSUB 115
8829 PRINT USING " *\  \ "; GLM$(db - 1); : RETURN
8830 GOSUB 8820: zd = 16: pc = 0: GOSUB 2995: GOSUB 3506
 FOR i = 1 TO 4: PRINT TAB(37); "┃"; : GOSUB 180: NEXT i
 PRINT "┏古历┓岁首: 子正^年前12月 寅正~2月┃  ^28日 ^26:27 ^25:26  ^25日 ^24:25 ~8:9日";
 PRINT "┗演示┛历元: 纪元前 (^~儒历年月日) ┗ 1076年 1350年 1567年 1624年 2001年 1506年";
 PRINT "键控参见捡录 年岁交叠改色 古历略年终置闰 夏历略寅正法 桃红节气朱红中气闰月无中气";
 PRINT "1月=29+499/940日 1岁=365.25日 1章=19年=235月=6939.75日 本机秦按殷历 周历太初同步";
 GOSUB 124: PRINT "古历及古历积数V日键:  ";
 a$ = "7 元=4560年  8 纪=1520年  9 部=76年  0 章*=6940日  ,.±V日"
 GOSUB 568: a$ = "Q清页": GOSUB 6957
 GOSUB 3554: PRINT " @Q选历 "; : GOSUB 3551: PRINT "uUiI±1月";
 GOSUB 3503: PRINT " =闰月 "; : GOSUB 3540: PRINT "oO岁首"; : dpm(pi, 0) = dp
8940 bby = nln: by = 2: pc = 0
 IF udz < 2 OR gu = 12 AND udz = 2 THEN bby = bby + 1: pc = 2
 by = (bby + 12056) MOD 60: ly$ = tg$(by MOD 10) + dz$(by MOD 12)
 dpm(1 - pi, lh + 1) = dp: lr$ = "月": IF lr THEN lr$ = "闰"
 zd = 25: zf = 36: GOSUB 140: GOSUB 3502
 sy = .00025627# * nln + .026448: zd = .0032454 * nln + .3343
 k$ = CHR$(5 - pi)
 PRINT USING "!#滞后> 岁首+#.#月 朔+##日 <前104年汉武帝太初"; k$; lh + 1; sy; zd;
 zd = 16 + lh: GOSUB 139: PRINT USING "!#"; k$; lh + 1;
 zd = (bby - jly + 5) MOD 5 + 11: GOSUB 3530: PRINT jly$;
 zd = 14 + jly - bby - pc: GOSUB 3521: PRINT ly$; "岁";
 zd = lr * 3 + 14: GOSUB 3525: PRINT dz$(udz); lr$;
 PRINT RIGHT$(STR$(100 + dq), 2); "日"; : GOSUB 3528: PRINT rgz$; "┃";
 FOR g6l = 0 TO 5: DSU = DSU(g6l): zx = 0: IF g6l = 5 THEN zx = DJQ / 2
 dry = 0: IF g6l = 4 THEN dry = 1461 / 940
 Ddz = INT((d + DSU + dry) * 4 / 1461) * 365.25
 IF vgl% - 1 <> g6l THEN 9000
 dd0 = Ddz - INT(Ddz) - SGN(dry) / 4: dz0 = INT(Ddz - DSU)
9000 DSS = INT(Ddz * 940 / 27759) * 27759 / 940 - dry
 dgl = Ddz: dsr = DSS: GLR = 0: FOR mgl = 0 TO 13: pr$ = "月"
 ds2 = s49 + dsr + 29: ddx = dgl + zx: xdd = INT(dgl - DJQ + zx)
 IF INT(dsr + dry) <= xdd THEN 9090
 IF INT(ds2) - 1 >= INT(ddx) THEN 9090
 pr$ = "闰": GLR = 1
9090 sdd = INT(d + DSU): IF sdd < INT(ds2) THEN 9100
 IF pr$ = "月" THEN dgl = dgl + DJQ
 dsr = ds2: NEXT mgl
9100 GOSUB 3506: zd = 16 + lh: zf = g6l * 7 + 39: GOSUB 140: PRINT " ";
 mgl = mgl - GLR
 IF g6l = 5 THEN mgl = (mgl + 1) MOD 12 ELSE 9150
 IF INT(dsr) >= xdd THEN mgl = (mgl + 1) MOD 12
9150 glc = 10: mgl = (mgl + 24) MOD 12
 IF sdd = INT(dgl + zx) OR sdd = xdd THEN glc = 12
 IF pr$ = "闰" THEN glc = 11
 IF sdd = INT(ddx - DJQ / 2) OR sdd = INT(ddx - DJQ * 1.5) THEN glc = 13
 IF sdd = INT(ddx + DJQ / 2) THEN glc = 13
 RGL = d + DSU - INT(dsr) + 1: GRC = glc
 IF RGL MOD 15 = 0 THEN GRC = 15 ELSE IF (RGL + 6) MOD 7 = 0 THEN GRC = 14
 IF sdd = INT(Ddz) OR sdd = INT(Ddz + 365.25) THEN gyc = 2 ELSE gyc = 0
 zd = glc: zf = gyc: GOSUB 150: PRINT dz$(mgl); pr$; : zd = GRC: GOSUB 160
 PRINT RIGHT$(STR$(100 + RGL), 2); : IF vgl% - 1 <> g6l THEN 9200
 ds0 = dsr - INT(dsr): gyk = gyc: IF grn = 1 AND pr$ = "闰" THEN gvr = 1
9200 NEXT g6l
 IF grn = 0 THEN 9205
 IF gvr = 0 THEN 9210
 gvr = 0: GOSUB 3215
9205 ph = lh + 2: lh = lh + 1: IF lh = 9 THEN lfs = 0: GOSUB 3215
9210 RETURN
9220 a$ = "选历 1夏 2黄帝 3殷 4周 5鲁 6颛顼 7退选 8积数 9机元": GOSUB 570
9230 GOSUB 4120: a = VAL(q$)
 ON a + 1 GOTO 1810, 9235, 9235, 9235, 9235, 9235, 9235, 9245, 9250, 2800
9235 vgl% = a: dpo = 2334730.5# - DSU(vgl% - 1): icl% = 2: GOTO 9600
9245 vgl% = 0
9250 icl% = -1: sa = za: sb = zb: sc = zc: GOTO 9600
9260 IF xlk = 1 THEN 9265
 IF p$ = zr$ + CHR$(18) THEN 1808 ELSE 2030
9265 gy = nln + 1384: IF gy = FY THEN gy = gy + 1
 IF dq > 29 THEN dq = 29
9280 GOSUB 5490: FY = gy: IF gr THEN 9290
 FY = FY + 1: IF FY < 3435 THEN gy = FY: GOTO 9280
 d = 5132781! + dq: GOTO 710
9290 GKR = gr: GOSUB 9390: fd = dq: GOTO 9380
9300 jcr! = 3: Y = jgn: fu = jgm: fd = jgd: GOTO 9330
9320 a$ = "农历": GOSUB 3010
 Y = qq: fu = pcq: fd = dbq: fu = INT(fu + 11) MOD 12 + 1
9330 IF Y < -1383 OR Y > 2050 THEN jcr! = 0: GOTO 1808
 gy = Y + 1384
9340 GOSUB 5490
 IF fu = 1 AND gr <> 1 THEN GS = 0: GOTO 9380
 IF gr = 0 THEN 9370
 IF gr = fu THEN GOSUB 3213
 IF fu >= gr THEN fu = fu + 1
9370 GKR = fu - 1: GOSUB 9390
9380 id = gd + GS + fd - 1: Y = gy - 1384: m = 1: GOTO 645
9390 GI = 1: GS = 0: FOR gg = 1 TO GKR
 FG = 0: IF (gdx AND GI) = GI THEN FG = 1
 GS = GS + 30 - FG: GI = GI * 2: NEXT gg: RETURN
9500 zer$ = MID$("指定今日本机    诞生伊历", icl% * 4 + 5, 4)
 ON icl% + 2 GOTO 9545, 9530, 9515, 9535, 9545, 9520
9515 za = -8997: zb = 12: zc = 22: GOTO 9547
9520 za = 622: zb = 7: zc = 16: hsq = 10: GOTO 9547
9530 za = ua: zb = ub: zc = uc: GOTO 9550
9535 zer$ = LEFT$(GLM$(vgl% - 1), 4)
 za = VAL(MID$("-1076-1350-1567-1624-2001-1505", vgl% * 5 - 4, 5))
 zb = 12: IF vgl% = 6 THEN zb = 1
 zc = VAL(MID$("17141110 525", vgl% * 2 - 1, 2)): GOTO 9547
9545 za = sa: zb = sb: zc = sc
9547 sq = 7
9550 IF msw = -5 AND vgl% <> vg2% THEN GOSUB 8820
 RETURN
9600 GOSUB 9500: GOTO 710


