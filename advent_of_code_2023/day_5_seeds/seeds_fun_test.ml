open Fun

module Parse_test = struct
  let seeds_sample_text =
    {|
seeds: 79 14 55 13

seed-to-soil map:
50 98 2
52 50 48

soil-to-fertilizer map:
0 15 37
37 52 2
39 0 15

fertilizer-to-water map:
49 53 8
0 11 42
42 0 7
57 7 4

water-to-light map:
88 18 7
18 25 70

light-to-temperature map:
45 77 23
81 45 19
68 64 13

temperature-to-humidity map:
0 69 1
1 0 69

humidity-to-location map:
60 56 37
56 93 4
|}

  let seeds_text =
    {|seeds: 41218238 421491713 1255413673 350530906 944138913 251104806 481818804 233571979 2906248740 266447632 3454130719 50644329 1920342932 127779721 2109326496 538709762 3579244700 267233350 4173137165 60179884

seed-to-soil map:
1389477588 1222450723 86190269
2369327568 3429737174 127508203
88123474 1366319913 182655004
1475667857 405321476 41320497
1258939826 536917987 41172751
1924266396 3404859218 24877956
1762699703 957158780 33280161
3452528837 3222194776 182664442
2196573512 1924266396 172754056
433176947 990438941 6166389
4047092335 2681059373 30705388
439343336 1626695089 181842577
1949144352 2940939059 125726128
979719551 446641973 90276014
2184073848 2711764761 12499664
4077797723 2605613670 27940277
2074870480 4240432416 54534880
3048538268 3066665187 104068222
621185913 1124514126 97936597
1157547656 773812762 84277017
1300112577 20266514 6655368
1151949413 1808537666 5598243
3435484067 2724264425 17044770
380487497 1308640992 52689450
1644897150 26921882 117802553
1516988354 996605330 127908796
1241824673 858089779 17115153
3932455534 2269053207 114636801
3319415958 3854507632 116068109
2129405360 4237225295 3207121
2729160001 2097020452 172032755
3635193279 3557245377 297262255
1795979864 578090738 107598550
2901192756 3970575741 147345512
4105738000 2416384374 189229296
0 685689288 88123474
1903578414 0 20266514
719122510 144724435 260597041
2132612481 3170733409 51461367
2496835771 2741309195 199629864
1306767945 1548974917 77720172
3200111916 4117921253 119304042
1069995565 875204932 81953848
3152606490 2633553947 47505426
270778478 1814135909 109709019
1384488117 1361330442 4989471
2696465635 2383690008 32694366

soil-to-fertilizer map:
1796371314 958475699 90518367
4004397333 4049196179 245771117
2175877891 3813840430 96544159
1966430612 3997904997 51291182
3155151482 799623922 79310846
4250168450 2358444962 15280909
4265449359 3910384589 29517937
3087542169 2534702057 67609313
1202725381 3631683738 113825873
852357580 2833874802 40691288
1452732352 2128818900 25726830
291197164 3745509611 68330819
1316551254 2602311370 60535393
2017721794 2764291908 69582894
498502503 445768845 353855077
3367678481 1860885729 203469524
3845535174 1124639771 94398512
1041749195 2373725871 160976186
2330424521 2874566090 757117648
1478459182 127856713 317912132
3234462328 1680414394 31771008
359527983 1219038283 138974520
893048868 1712185402 148700327
3571148005 1406027225 274387169
3939933686 2064355253 64463647
3266233336 2662846763 101445145
1886889681 878934768 79540931
87297932 2154545730 203899232
39283510 1358012803 48014422
2272422050 3939902526 58002471
1377086647 1048994066 75645705
2087304688 39283510 88573203

fertilizer-to-water map:
3988818582 3038666130 306148714
2927763871 3008779749 29886381
124309691 99049201 282856506
99049201 381905707 25260490
407166197 2131018623 602068357
3442767659 4213146266 81821030
2957650252 3344814844 485117407
3907802704 2927763871 81015878
1009234554 407166197 1723852426
3524588689 3829932251 383214015

water-to-light map:
1071892650 2651787028 57679970
1129572620 3396952543 81593150
1240611714 2163493623 488293405
0 2068015044 95478579
1211165770 3074252590 29445944
2592854025 0 138938366
2523843782 1948369545 69010243
924090948 883610805 76353493
2022159128 174281796 501684654
1000444441 2923208140 71448209
95478579 959964298 268093632
684655532 1228057930 239435416
3410916028 2709466998 213741142
363572211 1627286224 321083321
3324937342 2017379788 50635256
3183141431 3068711832 5540758
2939436746 3478545693 243704685
3624657170 2994656349 74055483
1728905119 3103698534 293254009
3930463154 3978112708 316854588
2731792391 675966450 207644355
3375572598 138938366 35343430
4247317742 3967989739 10122969
4257440711 3930463154 37526585
3188682189 3722250378 136255153
3698712653 1467493346 159792878

light-to-temperature map:
4148509456 1952010509 126270832
856886372 936932802 97162803
829640090 282271594 27246282
244444108 1274282332 107584318
1528329058 3192525971 211478915
2566760651 2178128911 792500107
478140779 1162859130 51849897
4274780288 1528329058 20187008
352028426 265852816 16418778
1739807973 2970629018 221896953
188336830 840381853 56107278
529990676 0 265852816
2424714410 1911677980 40332529
795843492 896489131 33796598
969062248 324530949 412804402
954049175 309517876 15013073
3359260758 3868594872 426372424
2465046939 3404004886 101713712
375094277 737335351 103046502
0 1214709027 59573305
2324866840 2078281341 99847570
1961704926 1548516066 247670884
2209375810 1796186950 115491030
59573305 1034095605 128763525
3785633182 3505718598 362876274
368447204 930285729 6647073

temperature-to-humidity map:
645925588 927807414 87140162
0 398577479 157531253
1936153073 3766846194 135269565
3964800672 3492411188 1957783
3660032389 3460150664 32260524
1374126579 1182630672 364804866
2334938774 2586583717 132274954
3729993364 4148156458 139151684
2071422638 2398735028 187848689
461859499 894601505 33205909
1128085880 3902115759 246040699
3966758455 1609937892 328208841
733065750 1045187965 45230417
3692292913 2718858671 37700451
1738931445 2854070578 51145436
3869145048 2758414954 95655624
446537472 670580619 15322027
3468753739 2905216014 191278650
1790076881 1547435538 62502354
3103241907 3096494664 363656000
778296167 1014947576 30240389
2467213728 3653280748 113565446
2739690951 1959797890 363550956
430471457 878535490 16066015
934173831 836762826 41772664
272165118 90734051 80200203
2259271327 1128614382 54016290
1852579235 2323348846 75386182
808536556 272940204 125637275
1927965417 4287308142 7659154
1935624571 1128085880 528502
352365321 194834068 72750816
495065408 685902646 150860180
248265304 170934254 23899814
975946495 556108732 114471887
157531253 0 90734051
3466897907 2756559122 1855832
2580779174 3494368971 158911777
425116137 267584884 5355320
2313287617 1938146733 21651157

humidity-to-location map:
2297594568 1304834363 199636291
964984478 962777545 102011627
3376226732 2612009119 78542873
3210191679 3257561655 73324720
960734175 2732971245 4250303
3552752951 3643184542 128526794
1654967093 1268999863 35834500
2805486965 2087320949 359714826
72263011 1608745500 171195806
4225512580 3861994731 69454716
1240952852 431398165 68767410
3695056291 298067962 76655045
1309720262 500165575 32124036
2768212426 260793423 37274539
258896561 532289611 263781213
1967976997 1084282606 71977571
2255175315 2690551992 42419253
1514000396 0 28227011
0 2539746108 72263011
3283516399 2447035775 92710333
1233825691 3330886375 7127161
614836670 2866104927 345897505
1341844298 88637325 172156098
2039954568 1779941306 215220747
3861994731 3931449447 363517849
1950982711 414403879 16994286
3454769605 3219988623 37573032
1690801593 3433704416 164490238
1855291831 3338013536 95690880
1195879484 1080226916 4055690
522677774 1995162053 92158896
2601505705 796070824 166706721
2497230859 1504470654 104274846
1199935174 380513362 33890517
3492342637 28227011 60410314
1066996105 2737221548 128883379
243458817 1064789172 15437744
3165201791 3598194654 44989888
3689265936 374723007 5790355
3681279745 3212002432 7986191
1542227407 1156260177 112739686
  |}

  let%expect_test "parse_all" =
    seeds_sample_text
    |>| Seeds_fun.parse_almanac
    |>| Seeds_fun.show_almanac
    |>| print_endline;
    [%expect
      {|
    ([(79, 14); (55, 13)],
     [[(50, 98, 2); (52, 50, 48)]; [(0, 15, 37); (37, 52, 2); (39, 0, 15)];
       [(49, 53, 8); (0, 11, 42); (42, 0, 7); (57, 7, 4)];
       [(88, 18, 7); (18, 25, 70)]; [(45, 77, 23); (81, 45, 19); (68, 64, 13)];
       [(0, 69, 1); (1, 0, 69)]; [(60, 56, 37); (56, 93, 4)]]) |}]

  let%expect_test "look_row when exists" =
    let seed = 79 in
    let mappings = [ (50, 98, 2); (52, 50, 48) ] in

    Seeds_fun.look_row seed mappings |> print_int;
    [%expect {| 81 |}]

  let%expect_test "look_row when not exists" =
    let seed = 14 in
    let mappings = [ (50, 98, 2); (52, 50, 48) ] in

    Seeds_fun.look_row seed mappings |> print_int;
    [%expect {| 14 |}]

  let%expect_test "look_table 14" =
    let seed = 14 in
    let _, sections = Seeds_fun.parse_almanac seeds_sample_text in

    Seeds_fun.look_table seed sections |> print_int;
    [%expect {| 43 |}]

  let%expect_test "map seeds to final numbers" =
    let seeds = [ 79; 14; 55; 13 ] in
    let _, sections = Seeds_fun.parse_almanac seeds_sample_text in

    List.map (fun seed -> Seeds_fun.look_table seed sections) seeds
    |> List.map string_of_int
    |> String.concat " "
    |> print_endline;
    [%expect {| 82 43 86 35 |}]

  let%expect_test "look_min" =
    let seeds = [ 79; 14; 55; 13 ] in
    let _, sections = Seeds_fun.parse_almanac seeds_sample_text in

    Seeds_fun.look_min (seeds, sections) |> string_of_int |> print_endline;
    [%expect {| 35 |}]
end

module Range_test = struct
  let%test "range intersect subset" =
    let range1 = (1, 10) in
    let range2 = (3, 5) in

    match Seeds_fun.Range.intersect range1 range2 with
    | Some (Subset (3, 5)) -> true
    | _ -> false

  (* let%test "range intersect full subset" =
     let range1 = (1, 10) in
     let range2 = (1, 10) in

     match Seeds_fun.Range.intersect range1 range2 with
     | Some (Subset (1, 10)) -> true
     | _ -> false *)

  (* let%test "range intersect superset" =
     let range1 = (3, 5) in
     let range2 = (1, 10) in

     match Seeds_fun.Range.intersect range1 range2 with
     | Some (Superset (1, 10)) -> true
     | _ -> false *)

  let%test "range intersect overlap right" =
    let range1 = (1, 10) in
    let range2 = (4, 12) in

    match Seeds_fun.Range.intersect range1 range2 with
    | Some (Overlap (4, 10)) -> true
    | _ -> false

  let%test "range intersect overlap left" =
    let range1 = (5, 13) in
    let range2 = (2, 7) in

    match Seeds_fun.Range.intersect range1 range2 with
    | Some (Overlap (5, 7)) -> true
    | _ -> false

  let%test "range intersect none" =
    let range1 = (1, 13) in
    let range2 = (21, 47) in

    match Seeds_fun.Range.intersect range1 range2 with
    | None -> true
    | _ -> false
end

module Path_test = struct
  let%expect_test "compile_header_row sample" =
    let header = (50, 98, 2) in
    Parse_test.seeds_sample_text
    |>| Seeds_fun.parse_almanac
    |>| snd
    |>| function
    | _ :: table ->
        Seeds_fun.Path.compile_header_row table header
        |>| Option.map Seeds_fun.Path.show
        |>| Option.map print_endline
        |>| ignore;
        [%expect {| { Seeds_fun.Path.window = (98, 98); offset = -31 } |}]
    | _ -> failwith "no table"

  (* let%expect_test "compile_header_row seeds" =
     let header = (1903578414, 0, 20266514) in
     Parse_test.seeds_text
     |>| Seeds_fun.parse_almanac
     |>| snd
     |>| function
     | _ :: table ->
         Seeds_fun.Path.compile_header_row table header
         |>| Option.map Seeds_fun.Path.show
         |>| Option.map print_endline
         |>| ignore;
         [%expect
           {|
           (1389477588, 1222450723, 86190269) 167026865
           (3571148005, 1406027225, 274387169) 2165120780
           (2957650252, 3344814844, 485117407) -387164592
           (1728905119, 3103698534, 293254009) -1374793415
           (2209375810, 1796186950, 115491030) 413188860
           (2739690951, 1959797890, 363550956) 779893061
           (614836670, 2866104927, 345897505) -2251268257
           { Seeds_fun.Path.window = (1239000360, 1308640991); offset = -487996698 } |}]
     | _ -> failwith "no table" *)

  let%expect_test "compile_table sample" =
    Parse_test.seeds_sample_text
    |>| Seeds_fun.parse_almanac
    |>| snd
    |>| Seeds_fun.Path.compile_table
    |>| Seeds_fun.Path.show_paths
    |>| print_endline;
    [%expect {| [{ Seeds_fun.Path.window = (98, 98); offset = -31 }] |}]

  let%expect_test "compile_table seeds" =
    Parse_test.seeds_text
    |>| Seeds_fun.parse_almanac
    |>| snd
    |>| Seeds_fun.Path.compile_table
    |>| Seeds_fun.Path.show_paths
    |>| print_endline;
    [%expect
      {|
      [{ Seeds_fun.Path.window = (1239000360, 1308640991); offset = -487996698 };
        { Seeds_fun.Path.window = (3429737174, 3434135476); offset = -1565516394 };
        { Seeds_fun.Path.window = (1535118372, 1545830629); offset = 415864339 };
        { Seeds_fun.Path.window = (438168826, 446641972); offset = 2377399210 };
        { Seeds_fun.Path.window = (536917987, 544654657); offset = 316619784 };
        { Seeds_fun.Path.window = (3429676494, 3429737173); offset = -384049208 };
        { Seeds_fun.Path.window = (979257605, 990438940); offset = 1318336963 };
        { Seeds_fun.Path.window = (3401349677, 3404859217); offset = -1031482541 };
        { Seeds_fun.Path.window = (2086137846, 2088091502); offset = -847138651 };
        { Seeds_fun.Path.window = (2683163217, 2692186170); offset = 1533326409 };
        { Seeds_fun.Path.window = (1633120598, 1662888272); offset = -1331275069 };
        { Seeds_fun.Path.window = (2940939059, 2946419136); offset = 104748907 };
        { Seeds_fun.Path.window = (498356425, 515916487); offset = 573016119 };
        { Seeds_fun.Path.window = (2711764761, 2724264424); offset = 1290124945 };
        { Seeds_fun.Path.window = (2605613670, 2623158994); offset = -2420710039 };
        { Seeds_fun.Path.window = (4294380836, 4294967295); offset = -308853639 };
        { Seeds_fun.Path.window = (3169731719, 3170733408); offset = -2810516698 };
        { Seeds_fun.Path.window = (1124514126, 1129263946); offset = 1436858815 };
        { Seeds_fun.Path.window = (773812762, 835303388); offset = 3316722590 };
        { Seeds_fun.Path.window = (20266514, 26921881); offset = 1306626526 };
        { Seeds_fun.Path.window = (1808537666, 1814135908); offset = 2276399443 };
        { Seeds_fun.Path.window = (130988760, 144724434); offset = 1523978333 };
        { Seeds_fun.Path.window = (1098613331, 1114497264); offset = 2634856385 };
        { Seeds_fun.Path.window = (858089779, 873640810); offset = 2695959987 };
        { Seeds_fun.Path.window = (2361908616, 2383690007); offset = -1747071946 };
        { Seeds_fun.Path.window = (4237225295, 4240432415); offset = -251111638 };
        { Seeds_fun.Path.window = (2253415952, 2269053206); offset = -2050966996 };
        { Seeds_fun.Path.window = (3832436687, 3847103899); offset = -1963817604 };
        { Seeds_fun.Path.window = (650502764, 657139062); offset = 2129081357 };
        { Seeds_fun.Path.window = (3970575741, 3995948346); offset = -3752489530 };
        { Seeds_fun.Path.window = (2568591486, 2604369519); offset = -1223292607 };
        { Seeds_fun.Path.window = (768686733, 773812761); offset = 2341509609 };
        { Seeds_fun.Path.window = (0, 20266513); offset = 1545059330 };
        { Seeds_fun.Path.window = (3180154163, 3192666657); offset = -1795533993 };
        { Seeds_fun.Path.window = (2776195129, 2779175480); offset = -409308345 };
        { Seeds_fun.Path.window = (1548974917, 1557270806); offset = -215426509 };
        { Seeds_fun.Path.window = (4119971124, 4145767629); offset = -2848556938 };
        { Seeds_fun.Path.window = (929849138, 957158779); offset = 3127778329 };
        { Seeds_fun.Path.window = (2667969937, 2681059372); offset = -1427017085 };
        { Seeds_fun.Path.window = (1816346942, 1895435163); offset = 797624495 };
        { Seeds_fun.Path.window = (2383690008, 2416384373); offset = 959744588 }] |}]

  let%test "compiled sample table is correct" =
    let _, sections = Seeds_fun.parse_almanac Parse_test.seeds_sample_text in
    Parse_test.seeds_sample_text
    |>| Seeds_fun.parse_almanac
    |>| snd
    |>| Seeds_fun.Path.compile_table
    |>| List.for_all (fun path ->
            let Seeds_fun.Path.{ window; offset } = path in
            let seeds = Seeds_fun.Range.to_list window in
            let expected =
              List.map (fun seed -> Seeds_fun.look_table seed sections) seeds
            in
            let results = List.map (fun seed -> seed + offset) seeds in
            expected = results)

  let%test "compiled seed table is correct" =
    let _, sections = Seeds_fun.parse_almanac Parse_test.seeds_text in
    Parse_test.seeds_text
    |>| Seeds_fun.parse_almanac
    |>| snd
    |>| Seeds_fun.Path.compile_table
    |>| List.for_all (fun path ->
            let Seeds_fun.Path.{ window; offset } = path in
            let x, z = window in
            let seeds = [ x + 1; x + 2; z ] in
            let expected =
              List.map (fun seed -> Seeds_fun.look_table seed sections) seeds
            in
            let results = List.map (fun seed -> seed + offset) seeds in
            expected = results)
  (*
     let%expect_test "compiled seed table is correct" =
       let _, sections = Seeds_fun.parse_almanac Parse_test.seeds_sample_text in
       Parse_test.seeds_text
       |>| Seeds_fun.parse_almanac
       |>| snd
       |>| Seeds_fun.Path.compile_table
       |>| List.iter (fun path ->
               let Seeds_fun.Path.{ window; offset } = path in
               let x, _ = window in
               let seeds = [ x ] in
               List.iter
                 (fun seed ->
                   let left = Seeds_fun.look_table seed sections
                   and right = seed + offset in
                   print_endline (Format.sprintf "%d -> %d = %d ?" seed left right))
                 seeds);
       [%expect {||}] *)
  (*
     let%expect_test "compiled seed table" =
       let _, sections = Seeds_fun.parse_almanac Parse_test.seeds_text in
       Parse_test.seeds_text
       |>| Seeds_fun.parse_almanac
       |>| snd
       |>| Seeds_fun.Path.compile_table
       |>| List.iter (fun path ->
               let Seeds_fun.Path.{ window; offset } = path in
               let x, _y = window in
               let seeds = [ x + 1 ] in
               List.iter
                 (fun seed ->
                   let left = Seeds_fun.look_table seed sections
                   and right = seed + offset in
                   print_endline (Format.sprintf "%d -> %d = %d ?" seed left right))
                 seeds);
       [%expect {||}] *)
end
