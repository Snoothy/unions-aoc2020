using BenchmarkTools, Match

# input="ecl:gry pid:860033327 eyr:2020 hcl:#fffffd\nbyr:1937 iyr:2017 cid:147 hgt:183cm\n\niyr:2013 ecl:amb cid:350 eyr:2023 pid:028048884\nhcl:#cfa07d byr:1929\n\nhcl:#ae17e1 iyr:2013\neyr:2024\necl:brn pid:760753108 byr:1931\nhgt:179cm\n\nhcl:#cfa07d eyr:2025 pid:166559648\niyr:2011 ecl:brn hgt:59in"
input="eyr:2029 iyr:2013\nhcl:#ceb3a1 byr:1939 ecl:blu\nhgt:163cm\npid:660456119\n\nhcl:#0f8b2e ecl:grn\nbyr:1975 iyr:2011\neyr:2028 cid:207 hgt:158cm\npid:755567813\n\nbyr:2002 pid:867936514 eyr:2021 iyr:2012\nhcl:#18171d ecl:brn cid:293 hgt:177cm\n\nhgt:193cm\niyr:2010 pid:214278931 ecl:grn byr:1953\neyr:2021\nhcl:#733820\n\niyr:2010 eyr:2020 hcl:#866857\nbyr:1934 pid:022785900\nhgt:161cm ecl:oth\n\nhgt:166cm\nhcl:#602927\ncid:262 ecl:brn pid:393738288\neyr:2021 byr:1928 iyr:2010\n\necl:grn hcl:#6b5442\ncid:317 byr:2001\neyr:2023 iyr:2016 pid:407685013\nhgt:177cm\n\nhcl:#86127d ecl:grn pid:113577635 iyr:2018\nhgt:180cm eyr:2022 cid:59 byr:1921\n\nbyr:1984 eyr:2023\niyr:2015 hgt:152cm cid:177 ecl:amb\nhcl:#fffffd pid:379600323\n\nhgt:154cm byr:1930 ecl:amb\ncid:101 hcl:#fffffd pid:919013176\neyr:2024\n\nhgt:76in hcl:#a97842 byr:1920 pid:612193949\ncid:337 eyr:2026\necl:gry\n\ncid:262 iyr:2016 ecl:hzl hcl:#efcc98\nhgt:159cm eyr:2020 byr:1974\npid:520627197\n\ncid:302 eyr:1956 hgt:158cm hcl:#3355a2 pid:282247859\niyr:2015\nbyr:1979 ecl:gry\n\npid:156126542\neyr:2025\necl:amb hcl:#733820 hgt:187cm\nbyr:1938 iyr:2020\n\nhcl:#341e13 byr:1952 ecl:blu iyr:2015 cid:230 eyr:2023 hgt:59in pid:955240866\n\npid:783635907 eyr:2020 hgt:186cm ecl:grn byr:1925 iyr:2013 hcl:#341e13\n\nbyr:1921 iyr:2019 eyr:2027 hgt:175cm\npid:355931973 hcl:#18171d\necl:oth\n\nhcl:z\nbyr:1947 pid:164cm hgt:146 ecl:hzl\neyr:1976 iyr:2014 cid:160\n\npid:686203227\niyr:2014 hgt:170cm\nbyr:1985 ecl:gry eyr:2023\nhcl:#c0946f\n\nhgt:192cm\niyr:2016 byr:1954\nhcl:#c0946f eyr:2022\necl:oth pid:371575068\n\niyr:2013 pid:877594317 hgt:72in\ncid:236 byr:1922\neyr:2023 ecl:brn hcl:#ceb3a1\n\nhcl:#602927 pid:277638047 byr:1944 hgt:178cm iyr:2019 eyr:2028 ecl:blu\n\necl:hzl byr:1979 hcl:#a97842 iyr:2019 eyr:2022 cid:91 hgt:164cm pid:371132831\n\ncid:346 iyr:2019 pid:335209743 hgt:178cm byr:1993\necl:hzl hcl:#341e13 eyr:2030\n\nhcl:#ceb3a1 pid:863130968 byr:1964 ecl:brn\ncid:94 iyr:2012\nhgt:153cm\n\nbyr:1980 hcl:z eyr:2039 hgt:65cm\necl:lzr pid:96101128 iyr:2024\n\niyr:2017 eyr:2027\necl:grn\nbyr:1956 hcl:#888785 hgt:174cm\npid:565437685\n\npid:769106108 cid:77\neyr:2024\nhcl:#602927 hgt:164cm ecl:gry\niyr:2017 byr:1947\n\niyr:2019\necl:gry\nhcl:#fffffd hgt:187cm eyr:2022 cid:212 pid:475618502 byr:1993\n\nhcl:#623a2f ecl:grn\nhgt:191cm pid:166515049 iyr:2018 byr:1971 eyr:2022\n\niyr:2011 eyr:2029 byr:2029\nhcl:2912ec\npid:15469000 hgt:150cm\necl:#4ddfb1\n\necl:grn byr:1941 pid:273390626 hgt:166cm eyr:2024 iyr:2010\nhcl:#888785\n\niyr:2015 ecl:amb eyr:2030\nhgt:156cm\ncid:301 hcl:#18171d pid:677032916\nbyr:1957\n\necl:amb iyr:2010\nbyr:1967\neyr:2021 cid:128 pid:104999760 hgt:162cm\nhcl:#c83b73\n\neyr:2028 cid:173 hcl:#7d3b0c\nhgt:161cm pid:810244270 ecl:gry byr:1930 iyr:2013\n\nbyr:1975 pid:7243957480 eyr:2028 hcl:#cfa07d iyr:2019 hgt:184cm ecl:blu\n\nbyr:1953 pid:807621409 eyr:2020 iyr:2017 hcl:#ceb3a1 ecl:blu hgt:157cm\n\npid:976089116 byr:1920 eyr:2020 iyr:2011 hcl:#733820 hgt:166cm cid:330\n\npid:896621814 hgt:179cm ecl:blu\neyr:2027\niyr:2014\nbyr:1965\nhcl:#a97842\n\niyr:2015\npid:827722366 eyr:2024 hgt:188cm hcl:#ceb3a1 byr:1963\necl:oth\n\niyr:2014\nbyr:1959 hgt:150cm hcl:#602927 pid:948589059 eyr:2027 ecl:oth cid:215\n\neyr:2029\nhgt:171cm iyr:2019 hcl:#e9317f byr:1926\necl:gry\n\neyr:2020\ncid:260 hgt:155cm iyr:2011\nbyr:1948 hcl:#602927 pid:651156700\n\neyr:2027 hgt:188cm\nhcl:#873cdf iyr:2019 pid:738493109 byr:1979\necl:hzl\n\neyr:2025\necl:oth iyr:2012 pid:563787480\nbyr:1978 hgt:164cm\nhcl:#18171d\n\niyr:2012 eyr:2028 hgt:190cm ecl:blu byr:1971\nhcl:#6b5442 pid:758307028\n\ncid:186\necl:amb eyr:2027\niyr:2019 hcl:#c0946f hgt:165cm pid:904275084 byr:1997\n\npid:382971064 byr:1932 cid:77 iyr:2010 hgt:158cm ecl:brn\neyr:2027 hcl:#602927\n\nhgt:156cm eyr:2028 pid:249987568 iyr:2020\nbyr:1956\necl:grn hcl:#fffffd\n\nbyr:1947\npid:190618020\necl:blu\neyr:2023\nhgt:192cm iyr:2012 hcl:#b62955\n\neyr:2022 hgt:191cm pid:699194379\nhcl:#f0a94b iyr:2020 byr:1996\necl:gry\n\necl:brn hgt:69in\npid:368841807 byr:1971 eyr:2020 iyr:2020\nhcl:498a57\n\nhcl:#cfa07d\niyr:2012 ecl:gry\npid:034993671\neyr:2028 byr:1934\nhgt:156cm\n\niyr:2013 hgt:65in byr:1937 hcl:#fffffd\necl:blu eyr:2028 pid:777520867\n\nhcl:#c0946f\nbyr:1965\neyr:2023 pid:289861622 ecl:gry\nhgt:185cm\niyr:2012\n\neyr:2023 hcl:#cfa07d\niyr:2012 hgt:62in pid:447717379\ncid:309 byr:1977 ecl:hzl\n\nbyr:1934\necl:amb pid:385150170\neyr:2025 hgt:178cm\nhcl:#efcc98 cid:294\niyr:2012\n\neyr:2029\necl:gry iyr:2015 pid:396708902 cid:107 byr:1983 hgt:160cm hcl:#341e13\n\nhgt:158cm ecl:oth hcl:#cfa07d\npid:032310453\niyr:2012\nbyr:1945\ncid:60\n\npid:304883665 byr:1932 ecl:grn eyr:2022 hcl:#a97842 hgt:174cm iyr:2014\n\ncid:321 hgt:186cm eyr:2022 hcl:#623a2f byr:1952\niyr:2019 pid:857917879\n\nhcl:#ceb3a1 hgt:157cm byr:2002\niyr:2017 cid:245 ecl:amb\npid:142383109 eyr:2022\n\nhgt:176cm\nbyr:1999 ecl:oth hcl:#5e0906 pid:101108193 eyr:2029\n\nhgt:168in pid:8803058749 byr:2013 hcl:z iyr:2027\n\nbyr:1986\neyr:2023 pid:108222056\nhcl:#c0946f iyr:2012 hgt:71in ecl:grn\n\nbyr:1955 hcl:#a97842 ecl:blu\neyr:2020 pid:164459538\niyr:2018 hgt:175cm\n\nbyr:1950\nhcl:#341e13\necl:grn hgt:177cm cid:273 pid:473932418 eyr:2025 iyr:2010\n\npid:366720897 hgt:187cm hcl:#866857\nbyr:1967 cid:178 iyr:2014 ecl:amb\neyr:2027\n\niyr:2018\nhgt:174cm\neyr:2024\npid:478505944 byr:1938 hcl:#341e13 ecl:amb\ncid:181\n\nhgt:180cm pid:178969784 eyr:2025 ecl:brn\nbyr:1938 hcl:z\niyr:2013\n\niyr:2016 pid:447434977 hgt:71in hcl:#733820\neyr:2023 ecl:amb byr:1950\n\ncid:173\nbyr:1945 ecl:oth iyr:2010\nhgt:163cm hcl:#a97842 eyr:2025\npid:418871498\n\nhcl:#623a2f\necl:hzl byr:1937 iyr:2018 pid:017817627 eyr:2026 hgt:163cm\n\nhgt:162cm\nbyr:1982 iyr:2012 cid:123 pid:099838535\necl:hzl\nhcl:#efcc98 eyr:2021\n\npid:041801541 ecl:brn\nhgt:184cm iyr:2013 hcl:#6b5442\nbyr:1969\neyr:2020\n\necl:oth pid:314689468\nhcl:#fffffd byr:1934\neyr:2023\niyr:2019 hgt:151cm\n\neyr:2021\npid:206164494 ecl:amb hgt:158cm iyr:2014\n\neyr:2024 hgt:162cm hcl:#cfa07d\niyr:2015 pid:269887041 byr:2002\n\nhgt:179cm\nbyr:1953 hcl:#a87847 pid:966876004 iyr:2016 cid:193 eyr:2022\necl:oth\n\necl:blu cid:111\niyr:2019\nbyr:1955 pid:659491942\neyr:2028\nhcl:#602927\nhgt:179cm\n\neyr:2030 iyr:2011 ecl:oth cid:83 pid:160688997 byr:1994 hcl:#602927\nhgt:180cm\n\necl:brn eyr:2025\nhcl:#130738 iyr:2012 byr:1950 hgt:167cm pid:686738997\n\nhcl:#c0946f\nbyr:1937 pid:208013639 eyr:2026 cid:309 hgt:155cm ecl:hzl\niyr:2015\n\necl:amb\neyr:2022 pid:181247866\nbyr:1949 hgt:191cm hcl:#18171d iyr:2015\n\nhcl:#3fd612 eyr:2025 byr:1981 ecl:gry hgt:184cm iyr:2010\n\nbyr:1969 ecl:amb pid:770110016 iyr:2012 hgt:193cm hcl:#7d3b0c eyr:2020 cid:171\n\nbyr:1937\nhgt:162cm iyr:2020 ecl:blu hcl:#866857 eyr:2020\npid:057170032\n\npid:516772675 iyr:2018\neyr:2027 byr:1962 cid:233 hgt:176cm hcl:#623a2f\necl:hzl\n\npid:909808739 hgt:165cm iyr:2018 hcl:#18171d eyr:2028 ecl:hzl\ncid:254\n\neyr:2025\niyr:2011 hcl:#a97842 hgt:65in\nbyr:1981 ecl:blu pid:722094416\n\neyr:2027 hcl:#866857 byr:1953 pid:532811620 ecl:gry hgt:192cm iyr:2010\n\nhgt:161cm hcl:#7d3b0c byr:1983 ecl:grn\npid:242124004 eyr:2021\niyr:2017\n\neyr:2027 cid:240 byr:1955 pid:969478946 ecl:brn\niyr:2011 hcl:#341e13\n\niyr:2013\neyr:2030\npid:032502598 byr:1945 hcl:#efcc98 hgt:162cm\necl:gry\n\nhgt:165cm ecl:hzl\npid:851962288 eyr:2023\niyr:2020 hcl:#888785 byr:1981\n\nhgt:170cm\nhcl:#7d3b0c pid:897882367\ncid:207 ecl:hzl eyr:2030\niyr:2020\n\niyr:2014 hcl:#623a2f\nhgt:176cm eyr:2030\nbyr:1932\necl:brn pid:676358652\n\niyr:1963 eyr:2034\necl:#698113 hgt:76cm\nhcl:z pid:174cm byr:2029\n\nhgt:181cm byr:1966 eyr:2022 hcl:#888785 ecl:amb pid:692426080\n\niyr:2019 hcl:#c0946f byr:1948\neyr:2028 hgt:156cm cid:204 ecl:oth\npid:229984095\n\npid:859107750 hgt:188cm hcl:#efcc98 byr:1992 eyr:2029 ecl:amb\niyr:2010\n\npid:754939860 hcl:#602927\nhgt:164cm cid:261 ecl:gry byr:1966 eyr:2027 iyr:2011\n\neyr:2027 hcl:#602927 iyr:2019 hgt:71in pid:368543014 ecl:brn\nbyr:1991\n\nbyr:1934 hcl:#341e13 pid:410490656 cid:66 ecl:grt eyr:2028 hgt:188cm\niyr:2014\n\nbyr:1932\necl:amb\nhgt:188cm eyr:2020 pid:29447176 iyr:1947 hcl:#a6304b\n\nbyr:1980\nhcl:#733820 pid:800459957 hgt:191cm eyr:2020 cid:337 iyr:2010\n\neyr:2029 hgt:155cm byr:1994 hcl:#6b5442 ecl:grn iyr:2010 pid:978117883\n\niyr:2019\nbyr:1958\npid:466450124 ecl:grn hcl:#7d3b0c\nhgt:182cm\neyr:2029\n\nbyr:1970 pid:810234340 iyr:2014 cid:247 eyr:2021 hgt:172cm\nhcl:#cfa07d\necl:blu\n\neyr:2024 hcl:#7d3b0c byr:1930 cid:194 pid:216814907 hgt:63in ecl:gry\n\nbyr:1946 ecl:gry pid:579575823\nhgt:170cm\niyr:2015\neyr:2029\nhcl:#7d3b0c cid:88\n\nbyr:1936\nhcl:#6b5442 eyr:2020 cid:272 pid:752699834 iyr:2015 hgt:190cm\necl:grn\n\ncid:85 iyr:2018 eyr:2025 ecl:hzl hgt:192cm byr:1996 pid:478812793 hcl:#602927\n\nhgt:160cm byr:1968 ecl:hzl\nhcl:#9b96f3 iyr:2016 eyr:2027 pid:054732103\n\nhcl:#efcc98\nhgt:152cm pid:140347821\ncid:346\neyr:2022 ecl:oth iyr:2010 byr:1931\n\nhgt:187cm ecl:blu hcl:#fffffd\npid:061318772 byr:1969 iyr:2012\n\neyr:2021\nhgt:190cm\necl:amb byr:1963 pid:158cm\niyr:2015\nhcl:#b6652a\n\ncid:144 hcl:#c0946f iyr:2013 pid:384713923\necl:brn eyr:2028 hgt:157cm\nbyr:1981\n\nbyr:1981\necl:gry\neyr:2027 hgt:150cm\npid:769266043 hcl:#006f93 iyr:2015\n\nhgt:154cm\neyr:2022 pid:516617153\necl:amb byr:1993\niyr:2020\nhcl:#341e13\n\nhcl:#b6652a\nbyr:1943\npid:323629477 cid:311 ecl:grn eyr:2030 hgt:182cm\n\nhcl:#7d3b0c hgt:70in byr:1996\npid:205918254 eyr:2022 cid:178 iyr:2010\necl:brn\n\nbyr:2001\nhgt:186cm iyr:2019 ecl:brn\neyr:2024\nhcl:#888785\npid:218031016\n\necl:oth\nbyr:1971 hcl:#a97842 pid:673909751 hgt:152cm eyr:2026\niyr:2017\n\niyr:2017 byr:1966 cid:334 pid:#8a11cd\nhgt:188cm eyr:2023 hcl:#ceb3a1 ecl:brn\n\necl:amb iyr:2019 pid:835997489 hcl:#b6652a eyr:2026\nhgt:154cm\nbyr:1989\n\neyr:2033 cid:288 byr:1951\necl:zzz iyr:1962 hcl:#cfa07d\nhgt:72cm\n\ncid:238 hgt:162cm eyr:2020 byr:1995\necl:amb iyr:2010 pid:700982289\n\niyr:2010\npid:741394760 ecl:blu eyr:2030\nbyr:1934 hgt:68in hcl:#fffffd\n\npid:434939593 iyr:2020 hcl:#cfa07d cid:282 hgt:168cm\necl:blu byr:1939\n\nhgt:154cm byr:1981\necl:brn eyr:2029\niyr:2019 hcl:#602927 pid:329288264\ncid:307\n\niyr:2016\nhcl:#866857\nbyr:1968 eyr:2029 hgt:152cm pid:347204193 ecl:brn\n\necl:hzl\npid:975616547\nhgt:166cm\niyr:2015 hcl:#efcc98 eyr:2020\nbyr:1927\n\nbyr:1960 cid:309 eyr:2022\nhcl:#a97842 pid:186837033\niyr:2019 hgt:156cm\n\nhgt:165cm ecl:hzl pid:776872855 byr:1923\ncid:313 eyr:2029\n\neyr:2021 hcl:#18171d\nbyr:1938 hgt:160cm iyr:2020\npid:938987284 ecl:gry\n\niyr:2011\neyr:2026\necl:amb hgt:166cm\npid:727980371 cid:154 byr:1967 hcl:#888785\n\nbyr:1928\necl:grn hcl:#888785 pid:852102448 hgt:150cm eyr:2024\niyr:2018\n\nbyr:1997 cid:201 ecl:gry\neyr:2020\nhgt:163cm hcl:#7d3b0c\niyr:2011 pid:052314445\n\necl:hzl eyr:2024 pid:460808964 iyr:2015 byr:1965\nhcl:#c0946f hgt:189cm\n\niyr:2010 cid:163 byr:1944 ecl:grn pid:731085710\nhcl:#efcc98 hgt:159cm eyr:2027\n\nbyr:1937 hcl:#ceb3a1 eyr:2026 ecl:hzl iyr:2019\nhgt:185cm\n\niyr:2016 ecl:gry byr:1964 hcl:526fbd eyr:2023 pid:981371510\nhgt:71cm\n\neyr:2028 hcl:#18171d\npid:264437557\niyr:2014 byr:1987 hgt:168cm\necl:gry\n\npid:574867413\nhcl:#2b965f eyr:2025 hgt:154cm\nbyr:2001 ecl:hzl\niyr:2011\n\niyr:2020\ncid:212\necl:gry hgt:174cm\nbyr:1939\neyr:2029 hcl:#cfa07d\n\nhcl:#b6652a cid:249 pid:447524365 ecl:brn hgt:177cm byr:1959\neyr:2040\niyr:2011\n\nbyr:1935\necl:amb hcl:#fffffd pid:270076583 cid:128 hgt:60in iyr:2016\neyr:2027\n\nhcl:#c0946f pid:149533201 cid:332\necl:blu byr:1935 hgt:185cm\niyr:2016 eyr:2025\n\nhcl:#f27d9b cid:275 hgt:59in\nbyr:1928 iyr:2017\npid:311342224\neyr:2022 ecl:grn\n\necl:gry\nbyr:1985 cid:131\nhgt:191cm hcl:#6b5442 pid:957166785 iyr:2018 eyr:2029\n\npid:741921163 hgt:192cm byr:1982\niyr:2012 ecl:blu hcl:#623a2f eyr:2020\n\nbyr:1995 hgt:164cm eyr:2027 ecl:gry pid:086846266 hcl:#ceb3a1\niyr:2017\n\necl:brn\nhcl:#c0946f hgt:158cm\neyr:2020\npid:548013549 cid:107\niyr:2014 byr:1966\n\neyr:2021 hgt:192cm\niyr:2015 hcl:#888785 byr:1942 cid:104 pid:582902279 ecl:grn\n\nbyr:1923 hcl:#fffffd\nhgt:185cm pid:216803187\necl:amb\neyr:2030\niyr:2020 cid:153\n\npid:129687562 hgt:156cm eyr:2020 cid:336 byr:1964 hcl:#733820\niyr:2011\necl:gry\n\niyr:2012 hcl:#866857 pid:814749853 hgt:156cm cid:155 byr:1924 eyr:2024 ecl:oth\n\nhgt:151cm pid:832407555\ncid:188 byr:1949\niyr:2010 ecl:oth eyr:2022\nhcl:#adeffb\n\ncid:102 ecl:grn byr:1999\nhcl:#a97842 iyr:2013 hgt:173cm\npid:199221595 eyr:2029\n\nbyr:1963\nhcl:#fffffd pid:980136208 cid:230 ecl:amb iyr:2010 hgt:171cm eyr:2029\n\nbyr:1969 pid:524832668 hcl:#efcc98\necl:oth iyr:2019 eyr:2029\n\nhgt:184cm hcl:#13682c eyr:2022\niyr:2016\nbyr:1944 ecl:amb\npid:764280754\n\nhgt:162cm\nbyr:1922 eyr:2023 ecl:hzl pid:870409472 iyr:2012\n\nhcl:#888785 byr:2008\necl:utc iyr:1921 pid:993871206 hgt:152cm eyr:2026\n\nhcl:#18171d\nbyr:1924\nhgt:191cm\npid:130883621 iyr:2010 eyr:2028\n\nbyr:2001 hgt:185cm ecl:blu eyr:2020 iyr:2013 hcl:#888785\n\npid:043166927 cid:287 hgt:179cm iyr:2016 eyr:2021 byr:1960 ecl:amb hcl:#888785\n\necl:oth iyr:2020 hgt:183cm\nhcl:#fffffd byr:2013 eyr:2026 pid:042844334\n\npid:36857936 byr:1995 ecl:hzl hcl:#c0946f eyr:2025 hgt:162cm iyr:2011\n\niyr:2013 ecl:blu cid:92 byr:1946 pid:150720364 hcl:#7d3b0c hgt:180cm eyr:2027\n\ncid:276 eyr:2020 iyr:2011 hgt:59in hcl:#6b5442 ecl:amb byr:1992\npid:137604720\n\nbyr:1998 pid:239200796 hcl:#957b4b hgt:171cm iyr:2011\n\ncid:176\npid:872650041 byr:1987 hcl:#623a2f\nhgt:69in\necl:oth\neyr:2024 iyr:2015\n\npid:388875093 eyr:2024\necl:amb hgt:175cm\niyr:2019 byr:1970 hcl:#ceb3a1\n\npid:040506316 byr:1999\ncid:186\nhcl:#7d3b0c ecl:blu eyr:2022\nhgt:160cm iyr:2019\n\ncid:54\npid:314873473 iyr:2013 eyr:2020 hcl:#c0946f hgt:158cm ecl:amb\n\niyr:2016 ecl:oth hcl:#fffffd\nhgt:189cm eyr:2020\n\nbyr:1981\nhgt:163cm\necl:brn\nhcl:#7d3b0c iyr:2016\npid:500276094\ncid:98\neyr:2029\n\necl:oth hgt:158cm\neyr:2023 hcl:#c0946f iyr:1966 pid:544377825\nbyr:1938\n\ncid:170 hcl:#733820\niyr:2020 byr:1970 hgt:150cm pid:469096877\neyr:2020\n\npid:144977701 hgt:180cm byr:1975 hcl:#cfa07d\necl:oth cid:57 eyr:2022 iyr:2016\n\npid:591688826 hgt:156cm hcl:#a97842\necl:amb iyr:2011 byr:1955\neyr:2020\n\nhcl:#a97842 hgt:174cm\niyr:2012 eyr:2024 pid:928395919 ecl:blu byr:1927\n\necl:amb hgt:156 hcl:#888785 iyr:2019 eyr:2021\nbyr:1997 pid:980577052\n\niyr:2014 eyr:2028\nhgt:177cm ecl:oth byr:1930 pid:846909255 hcl:#602927\n\nhcl:#efcc98 iyr:2015\nbyr:1941\npid:387565513\necl:gry cid:54 eyr:2026 hgt:166cm\n\nhcl:#fffffd iyr:2014\necl:brn pid:241522887 byr:1963\nhgt:178cm\neyr:2024\n\necl:grn hgt:70in pid:202158837 eyr:2026 byr:1964\niyr:2018 hcl:#c0946f cid:77\n\nhgt:176cm iyr:2016\npid:927969731 byr:1939\neyr:2025 ecl:grn\nhcl:#fffffd\n\nbyr:1943 hgt:191cm ecl:hzl pid:422579553 iyr:2017 eyr:2020 hcl:#c2a152\n\neyr:2028 byr:1952\npid:506339509 hcl:#602927 hgt:179cm\necl:grn\n\nhcl:#341e13 iyr:2014 ecl:brn pid:823049712 eyr:2030 hgt:157cm\nbyr:1924\n\necl:hzl\nbyr:1954 pid:146052548 cid:194 eyr:2030 hcl:#ceb3a1 hgt:183cm\niyr:2013\n\nhcl:#6b5442\neyr:2026 iyr:2014 hgt:65in ecl:hzl pid:694135829 byr:1920\n\niyr:2012 byr:1984 hcl:#623a2f pid:270343526 ecl:gry cid:246 hgt:185cm\n\neyr:2026 ecl:grn\npid:853148268 iyr:2014 hgt:183cm hcl:#a97842 byr:1939\n\neyr:2021 hgt:182cm byr:1922 pid:199346431 cid:165 iyr:2016 ecl:hzl\nhcl:#b6652a\n\necl:#47904b pid:66740994\niyr:2025\nbyr:2029 eyr:2023 hcl:a6b541\n\necl:hzl\nbyr:1947\nhcl:#341e13 pid:466649892 eyr:2030 hgt:164cm iyr:2015\n\nhcl:#a97842 iyr:2016 eyr:2029\nbyr:1921 hgt:191cm ecl:brn pid:776471818\n\niyr:2014 pid:605101404 ecl:amb hcl:#7d3b0c byr:1991 eyr:2026 hgt:158cm\n\nbyr:1995 cid:271 ecl:hzl iyr:2012 hcl:#18171d pid:723865532\nhgt:165cm eyr:2029\n\necl:hzl\nhcl:#7d3b0c byr:2023\npid:83552498 eyr:2025 hgt:65cm iyr:2010\n\neyr:2022 byr:1975 hcl:#888785 hgt:165cm\ncid:166 ecl:brn iyr:2013\npid:261135534\n\nbyr:1999 cid:222 iyr:2020 ecl:hzl hgt:182cm pid:411279683 hcl:#1ca912\n\nbyr:1954 cid:273 ecl:#915d48\npid:004261180 hcl:#cfa07d iyr:2018 hgt:167cm eyr:2021\n\nhcl:#733820 byr:1931 iyr:2015\ncid:130 eyr:2029 hgt:183cm pid:962443962 ecl:gry\n\nhgt:192cm eyr:2029\npid:643859724\niyr:2016 ecl:blu byr:1951\n\nhgt:155cm\npid:293590926\nhcl:#602927 eyr:2027 byr:1959\niyr:2020\necl:amb\n\necl:oth hcl:#fffffd\npid:469517546 eyr:2026 iyr:2020 hgt:181cm\nbyr:1929\n\neyr:2026 iyr:2015 ecl:grn pid:644263519\ncid:254 hgt:64cm\nbyr:1944 hcl:#341e13\n\nhgt:150cm hcl:#341e13 ecl:oth\neyr:2028\nbyr:1922\npid:618759433 iyr:2017\n\necl:hzl hgt:169cm\nhcl:z eyr:2035 pid:620999812 byr:1998\n\npid:897252903 hgt:158cm iyr:2011 byr:1987 cid:221 eyr:2030\nhcl:#efcc98 ecl:gry\n\necl:gry eyr:2027\nbyr:1951\niyr:2012\npid:542287454 hcl:#6b5442\n\npid:#185456\nbyr:2028 cid:148 iyr:1957 hcl:df9a7d ecl:grt hgt:101\neyr:2036\n\nhcl:#b6652a eyr:2023\nhgt:150cm cid:316 ecl:gry byr:1922\npid:858150885 iyr:2013\n\nhgt:181in\nbyr:1986 ecl:#b9ca4d\niyr:2014 cid:77 eyr:2026\npid:277491106\n\nbyr:1996 ecl:oth pid:539623368 hcl:#602927 eyr:2024 iyr:2019\nhgt:179cm\n\npid:499804970 hcl:#18171d ecl:grn\nhgt:189cm eyr:2029\niyr:2012 byr:1986\n\npid:093626459 eyr:2024 iyr:2018\necl:grn byr:1922 hgt:153cm\n\nhgt:179cm byr:1990 eyr:2026 hcl:#623a2f ecl:blu\npid:306676089\niyr:2011\n\neyr:2022 ecl:oth\npid:894642127\nhcl:#5a9d3e iyr:2013 hgt:68in byr:1987\n\npid:059006259 byr:1953\nhcl:#7d3b0c ecl:oth iyr:2011 hgt:157cm eyr:2023\n\necl:oth\npid:255405447\neyr:2021 cid:130 hcl:#b6652a hgt:75in iyr:2020 byr:1959\n\ncid:124\npid:353288807 hcl:#7d3b0c\nbyr:1963 eyr:2020 ecl:oth\niyr:2020\nhgt:66in\n\nhgt:150cm\nhcl:#3a4c6e pid:027677435 ecl:hzl cid:256 byr:1960\niyr:2015\neyr:2026\n\necl:brn hcl:#c0946f\neyr:2028 pid:801870217\niyr:2010\n\ncid:170 hgt:175cm\neyr:2028\npid:620159472\niyr:2020 hcl:#7d3b0c ecl:brn\nbyr:1939\n\niyr:2019 hgt:161cm cid:152 ecl:brn hcl:#fffffd\nbyr:1938\neyr:2030 pid:311625365\n\nhgt:174cm hcl:#efcc98\nbyr:1934 pid:389966928 ecl:amb eyr:2023\ncid:235 iyr:2018\n\niyr:2010 byr:1960 pid:556639427 ecl:grn\nhgt:152cm\neyr:2022\nhcl:#623a2f\n\niyr:2014 hcl:#623a2f\nhgt:169cm\npid:243755754 ecl:oth eyr:2025\n\niyr:2016 hcl:#623a2f cid:152\necl:oth hgt:62in byr:1946\neyr:2028 pid:007367220\n\niyr:2013\necl:oth hgt:163cm\nbyr:1987\nhcl:#2cc1fd pid:346162920 eyr:2028\n\npid:636103282 byr:1952 eyr:2029 ecl:oth\nhcl:#fffffd cid:290 iyr:2013 hgt:63in\n\neyr:2021 hcl:#866857 iyr:2013 byr:1951\nhgt:157cm\npid:258369047 ecl:amb\n\nbyr:1983 iyr:2026 hgt:182cm eyr:2029\nhcl:#623a2f ecl:hzl pid:373940630\n\npid:283714222\nhgt:173cm ecl:gry byr:1939\niyr:2015 cid:81\n\nhgt:164cm cid:215\necl:amb eyr:2025 pid:459309210\nhcl:#ceb3a1 byr:1954\niyr:2015\n\nbyr:1931\necl:oth eyr:2028 hgt:177cm\nhcl:#6b5442\npid:494763488 iyr:2015 cid:293\n\necl:oth hcl:#fffffd hgt:188cm cid:252 pid:987529683 iyr:2020 byr:1945\n\neyr:2029\npid:745721513\niyr:2017 ecl:brn\nhgt:184cm hcl:#a97842\n\neyr:2024 ecl:oth\nhgt:153cm\niyr:2014 byr:1953 hcl:#888785\ncid:330 pid:532786321\n\nhgt:180cm\npid:441199844 eyr:2023 ecl:grn hcl:#b6652a byr:1958 iyr:2012\n\necl:brn\npid:835022632 hgt:174cm\nbyr:1928 hcl:#341e13 eyr:2028\ncid:176 iyr:2011\n\nhgt:72in byr:1964 hcl:#ceb3a1 ecl:gry\niyr:2020 eyr:2028\ncid:180\n\niyr:2025 byr:1999\neyr:2024 hcl:#c0946f\nhgt:86\n\neyr:2023 byr:1974 pid:067761346 cid:178 ecl:hzl iyr:2020 hgt:168cm hcl:#6b5442\n\nhgt:157cm ecl:gry eyr:2025\npid:803912278 byr:1963 iyr:2011 hcl:#ceb3a1\n\nhgt:190cm eyr:2026 ecl:grn\niyr:2012\nhcl:#c0946f byr:1929\n\neyr:2023 ecl:hzl pid:#fb639f\niyr:2030\ncid:132\nbyr:2016 hcl:#ce01c8\n\neyr:2021\npid:228596339\nbyr:1974\necl:blu\nhgt:174in iyr:2020\nhcl:#733820\n\necl:amb hgt:165cm\nbyr:1953 hcl:#118493 pid:458049702 cid:99\niyr:2019 eyr:2023\n\necl:hzl pid:277988952\neyr:2025 hgt:179cm byr:1992 cid:322\n\nhcl:#a97842 eyr:2021 cid:261\nhgt:61in pid:162402242\necl:amb byr:1938 iyr:2016\n\nhcl:#d125e3 iyr:2016 byr:1982 eyr:2027\nhgt:154cm\npid:365548961\n\niyr:2016 hgt:187cm byr:1980 pid:977322718\neyr:2027 ecl:brn hcl:#ceb3a1\n\niyr:2010 ecl:oth\npid:455361219 hgt:153cm eyr:2027 hcl:#6b5442\nbyr:1965"

required_fields = ["byr", "ecl", "eyr", "iyr", "hgt", "hcl", "pid"]
optional_fields = ["cid"]

passport_field_regex = r"^(?<key>\w{3}):(?<value>.*)$"

function validate_byr(byr::SubString{String})::Bool
    birth_year = parse(Int, byr)
    return birth_year >= 1920 && birth_year <= 2002
end

function validate_iyr(iyr::SubString{String})::Bool
    issue_year = parse(Int, iyr)
    return issue_year >= 2010 && issue_year <= 2020
end

function validate_eyr(eyr::SubString{String})::Bool
    expiration_year = parse(Int, eyr)
    return expiration_year >= 2020 && expiration_year <= 2030
end

function validate_hgt(hgt::SubString{String})::Bool
    m = match(r"(\d+)(cm|in)", hgt)
    if (m === nothing)
        return false
    end

    height_str, unit = m.captures
    height = parse(Int, height_str)
    if (unit == "in")
        return height >= 59 && height <= 76
    else
        return height >= 150 && height <= 193
    end
end

function validate_hcl(hcl::SubString{String})::Bool
    return !(match(r"#[a-f0-9]{6}", hcl) === nothing)
end

function validate_ecl(ecl::SubString{String})::Bool
    return !(match(r"(amb|blu|brn|gry|grn|hzl|oth)", ecl) === nothing)
end

function validate_pid(pid::SubString{String})::Bool
    return !(match(r"^\d{9}$", pid) === nothing)
end

function has_valid_required_fields(passport::Dict)::Bool
   return validate_byr(passport["byr"]) && 
        validate_ecl(passport["ecl"]) && 
        validate_eyr(passport["eyr"]) && 
        validate_hcl(passport["hcl"]) && 
        validate_hgt(passport["hgt"]) && 
        validate_iyr(passport["iyr"]) && 
        validate_pid(passport["pid"])
end

function has_required_fields(passport::Dict)::Bool
    for required_field ∈ required_fields
        if (!haskey(passport, required_field))
            return false
        end
    end

    return true
end

function is_valid_passport_info(passport::Dict)::Bool
    required_fields_present = has_required_fields(passport)

    if (!required_fields_present)
        return false
    end

    return has_valid_required_fields(passport)
end

function is_valid_passport(passport_info::SubString{String})::Bool
    passport = Dict()
    passport_keys = split(passport_info, r"\s")
    for passport_key ∈ passport_keys
        m = match(passport_field_regex, passport_key)
        passport[m[:key]] = m[:value]
    end

    return is_valid_passport_info(passport)
end

function find_valid_passports()
    passport_informations = split(input, "\n\n")

    valid_passports = 0
    for passport_info ∈ passport_informations
        valid_passports += is_valid_passport(passport_info) ? 1 : 0
    end

    return valid_passports
end

@btime find_valid_passports()