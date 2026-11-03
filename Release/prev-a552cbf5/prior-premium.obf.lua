--EZ:__EZ_WM__
-- EazyCheats | Prior Extinction Hub | PREMIUM
local _pguo do local B="" for c=65,90 do B=B..string.char(c) end for c=97,122 do B=B..string.char(c) end for c=48,57 do B=B..string.char(c) end B=B..string.char(43)..string.char(47) local L={} for i=1,#B do L[B:sub(i,i)]=i-1 end local Kr={90,170,214,100,75,120,228,156} local m=228 local bx=bit32.bxor local ch=string.char local K={} for i=1,#Kr do K[i]=bx(Kr[i],m) end local C={} _pguo=function(s) local c=C[s] if c then return c end local o={} local a,b,n=0,0,0 for i=1,#s do local v=L[s:sub(i,i)] if v then a=a*64+v b=b+6 if b>=8 then b=b-8 local by=math.floor(a/2^b)%256 a=a%(2^b) o[#o+1]=ch(bx(by,K[n%8+1])) n=n+1 end end end local r=table.concat(o) C[s]=r return r end end
local _ei9m={_pguo("/TxX9M7/ZRfLPRLV3/BhFto="),_pguo("7jxd+MbxaQzHHkDvwux0"),_pguo("7CtT48e8YRbabnrp2/5vANs9"),_pguo("9z177vj9dB3M"),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("2CJb58fo"),_pguo("7jtG84/oaB2eLVPyy7xiGd0l"),_pguo("7CtT48c="),_pguo("nj1G9cvvIBnJL0s="),_pguo("3CFd7Mr9bg=="),_pguo("8y9e5Q=="),_pguo("/ypf6cG8SxHdJQ=="),_pguo("ln8XoNv9ax3Nbg=="),_pguo("7SZd94/PdBnTJ1zh"),_pguo("yi9Q7Mo="),_pguo("9iFFoMn9cljHIUfyj/RpDM1uQOXO/2hUni9c5I/0bw+eLFvnj/0gDN88VeXbvGkLkA=="),_pguo("nm518sDrdBCeHUbhyPk="),_pguo("l3QS"),_pguo("/S9A4tw="),_pguo("zT5A6cHo"),_pguo("7i9A9A=="),_pguo("8ght1eHPVC39BQ=="),_pguo("liBd7sq1"),_pguo("2itT9Me8ZwrfLVegyvJkHdpiEvPD83RYzTpb7MO8aB3SKgig"),_pguo("7SVb7g=="),_pguo("8i9A58o="),_pguo("/SZT8s7/dB3MHVfy2fVjHQ=="),_pguo("+x1ioPz1eh0="),_pguo("2Dtc49v1bxY="),_pguo("9StX8Ny8eRfLblHsyv1uWN87Ru/C/XQR3S9e7NY="),_pguo("6StG"),_pguo("6S9e6w=="),_pguo("8iFQ4tbfbxbKPF3sw/ly"),_pguo("/SZT6cG8QxfMPkHl3A=="),_pguo("+Dte7A=="),_pguo("nidc89v5YRw="),_pguo("7Dtc08rudhHdKw=="),_pguo("zTpd8N/5ZFjfOhLhj/FhCJ45U+zD"),_pguo("6S9G5d3eRw=="),_pguo("7S9E5Y/6YRHSK1a6jw=="),_pguo("2CJL6cH7"),_pguo("zStG9MP1bh8="),_pguo("+Stc5Mru"),_pguo("8itV6du8Th3IK0Cg/OhhFtpuYfTG8Gw="),_pguo("0Dtf4sru"),_pguo("7Dtc"),_pguo("niJd48T5ZA=="),_pguo("nmMS5s7ubRHQKRLvwQ=="),_pguo("2CJL6cH7"),_pguo("+y9I+ez0ZRnKPQ=="),_pguo("6iZXoMDyZVjaJ1zvj/l2Hcw3EvLK9m8R0G5B8M7rbgs="),_pguo("/wh5oOn9chU="),_pguo("/S9e48bpbQ=="),_pguo("+y9GoM7yeQzWJ1znj/JlGcwsS6DY9GEM2zhX8o/lbw3MblbpyuggVZ4sXfTHvGYZzCNBoNrvZVjXOhL0wPMu"),_pguo("+StG84/lbw2eLFPjxLxpFp4vXOSP+mEK0ydc54/9ZgzbPBLhj/dpG9U="),_pguo("/C9G6Nw="),_pguo("/25f79n9YhTbblHh3fggC9YhRenB+yAB0TtAoMDrbljaJ1zviO8gFNc4V6Dc6GEMzWA4ivzoYQzNbnHh3fg6WM0mXffcvHQQ225R4d34LnLqJlegxvJkHdA6V+SP6G8f2SJX84//aBfRPVeg2PRhDJ4vQvDK/XILniFcoMboOljHIUfyj/hpFtFpQaDB/W0dnmZB8Mr/aR3NblPuy7xnHdAqV/KDvGELnjpa5Y//YQraaUGg2/V0FNtnHqDI7m8PyiYS89v9Zx2Sbl/h3O8gH98nXKDC6WwM1z5e6cruLFjJK1vnx+gsWNk8Xffb9CAM1yNX8oO8bg3KPFv0xvNuWN8gVqDY+WwU3Ctb7siyCjzML1Wg/OhhDM1uceHd+DpY0itG84/lbw2eI132yrx0ENtuUeHd+C5Y6jtA7o/1dFjRKFSg2/MgFNEtWaDG6CAR0G5C7M7/ZVa0BlvkyrxXENciV6Di+W4NngFC5cGmIBDXKlfzj+hoHZ4tU/LLvHcQ1yJXoNv0ZVjTK1z1j/VzWNE+V+6DvHMXnidGoMvzZQueIF30j/9vDts8Eunbsgoq2z1X9I/PdBnKPRLDzu5kWO4hQenb9W8WhG5C9dvvIBHKblDhzPcgEdBuW/TcvGMXzCBX8o/1ZljHIUegw/NzHZ4nRqDA+mZVzS1A5cryLg=="),_pguo("8ytT9I/YaQvKL1zjyg=="),_pguo("3SFe7Mr/dA=="),_pguo("8yFc89v5cg=="),_pguo("yi9Q7Mo="),_pguo("8CFGoMDyIAvbIlfj2/VvFp49UfLK+W5YXM6moN/9dQvbKg=="),_pguo("/SJT+Y/YaQvKL1zjyg=="),_pguo("7jtf8MT1blj6J0H0zvJjHQ=="),_pguo("+CFB88bwID7fPF8="),_pguo("/SZT7dw="),_pguo("/TtB9MDxICzXI1c="),_pguo("8itV6du8VRbNOkfjxA=="),_pguo("/ztG74/bchfJ"),_pguo("nj5T9dz5ZFjJJlvsyrxBPvVudOHd8SAKyyBBoIf1dFjLPVfzj/V0C54hRe6P+WEM2zwS4cH4ICvfKFf01rU="),_pguo("1idW5Q=="),_pguo("7TpT8tv5cj/LJw=="),_pguo("6i9V8+nuYRXb"),_pguo("9idW5dy8eRfLblrpyPQgEdBuRujKvHMTx2IS9Mf5bljcL1Hr"),_pguo("5QtT+tbfaB3fOkHdj91kFdcgEuTK6GUbyitWuo8="),_pguo("wGtW6IqsMhzT"),_pguo("/ztG74/bchfJ"),_pguo("6iFd7Nw="),_pguo("/C9B5f/9cgw="),_pguo("njtc89vpYxOePl3pwehzWNcgQenL+Sk="),_pguo("1yBY9d3l"),_pguo("4GtBqoe5d1OXa0Gqiw=="),_pguo("6itK9OP9Yh3S"),_pguo("+CFA987uZA=="),_pguo("zidc7sr4"),_pguo("6SFA7Ms="),_pguo("/S9f5d39UBnMOg=="),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("+y9I+ez0ZRnKPQ=="),_pguo("7hZtw9rvdBfTGlvtyg=="),_pguo("7Dtc08rudhHdKw=="),_pguo("7i9R6877ZQs="),_pguo("+yBT4sP5ICvXIlfu27xBEdM="),_pguo("XNiO"),_pguo("/TxX9M7/ZRfLPRLV3/BhFto="),_pguo("/SFf4s7o"),_pguo("/ypf6cHQYRrbIg=="),_pguo("+Rt7oMn9aRTbKhL0wLxsF98qCKA="),_pguo("zCtD9cbuZVjNJVvw3/lkWJYgXfSP+GEM32cIoA=="),_pguo("+yBT4sP5IDvWL1/z"),_pguo("7Tlb9Mz0ICvSIUagmg=="),_pguo("yi9Q7Mo="),_pguo("ng9f4sru"),_pguo("9idG4sDk"),_pguo("0Dtf4sru"),_pguo("9idW5Y/ZYQzbIBLQw/1uDM0="),_pguo("+C9A7Y/YaRbR"),_pguo("/zpG4cz3ICvOK1fk"),_pguo("0Dtf4sru"),_pguo("8itT9sq8QR7KK0Cgh/FpFss6V/OG"),_pguo("7CtY78byc1jfblT1w/BlCp49V/LZ+XI="),_pguo("yjtA7g=="),_pguo("3yhZ"),_pguo("XMiD"),_pguo("6iFd7Nw="),_pguo("6itK9OP9Yh3S"),_pguo("6iFd7Nw="),_pguo("/SFc89rxcAzXIVzDwPJ0CtEiXuXd"),_pguo("1jdW8s7oaRfQ"),_pguo("/ztG7+n9chU="),_pguo("8ytT9A=="),_pguo("7TpT7cbyYVj8L0Cg5/lpH9Y6"),_pguo("0ytT9A=="),_pguo("6iZXoNz9bR2eKFPywrxvFp4oXe/bsCAP1itcoNbzdVjJIUfsy7xyGcomV/KP8m8MnixXoNz5ZRaeKF75xvJnVg=="),_pguo("7SNT7MP5cwyeGl2g7fVnH9s9Rg=="),_pguo("4BxX8MP1YxnKK1bT2/NyGdkrF66HsitRmg=="),_pguo("7Ctc5Mru"),_pguo("/x1twfrITyfxHHbF/Q=="),_pguo("7Ctc5Mru"),_pguo("+DtB6cDy"),_pguo("7SZd94/fbBnHbnbl3/NzEco9CKDC/XITzW5R7M7lIBzbPl3zxuhzWMomU/SP/m8XzToS6cLxdRbXOkuupd9sGcdudunc6GEW3SsIoMfzd1jYL0CgzuthAZ46WuXWvGEK225B9MbwbFjSL1Dlw/BlHJBEcezO5SAc2z5d88boc1jNPlP3wbxpFp49QuXM9WYR3W5T8sr9c1iWLFP0x7NtDdpuSO/B+XNRkG5l4cP3IAzRbl3uyrxhFtpuV+HbvHQXnjxT6dz5IBHTI0fuxuh5Vg=="),_pguo("/C9B5f/9cgw="),_pguo("6i9V8+nuYRXb"),_pguo("6CdG4cPvTBncK14="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HffO8GwLkw=="),_pguo("/SZT7dw="),_pguo("/zpf79zsaB3MKw=="),_pguo("9yBG5d36YRvbDV3u2+5vFNIrQA=="),_pguo("6Stb58foTBncK14="),_pguo("/ztG74LQZRnIKxLFwux0AZ4dV/LZ+XI="),_pguo("0Dtf4sru"),_pguo("zCtB9A=="),_pguo("liBd7sq1"),_pguo("/C9B5f/9cgw="),_pguo("5QtT+tbfaB3fOkHdjw=="),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("9idG4sDkID3GPlPuy/ly"),_pguo("/SFc89rxYRrSK3Tvw/VhH9s="),_pguo("8ghtw+bOQzT7"),_pguo("0Dtf4sru"),_pguo("hG4S"),_pguo("7jxd9Mr1bgs="),_pguo("+y9I+ez0ZRnKPW3l1bFnDddgXvXO"),_pguo("3y1G6dn1dAE="),_pguo("9StX8Ny8eRfLblXywOtpFtliEu7AvGkWzjtGoMH5ZRzbKg=="),_pguo("7SZT8sr4LjvRIEH1wux0EdEgduHb/Q=="),_pguo("/TtA8srydCjSL0vhzfBl"),_pguo("7TtA9sbqYRQ="),_pguo("+CFV"),_pguo("7Tlb9Mz0ID/bIFbl3Q=="),_pguo("lhUX5IqyXVOXa0GqgLlzUpYVF+SKsl1Tlw=="),_pguo("/SJT+Y/ZUyg="),_pguo("7Ctc5Mru"),_pguo("0Dtf4sru"),_pguo("zTpA6cH7"),_pguo("/SZT8s7/dB3MHVfy2fVjHQ=="),_pguo("/S9c48rw"),_pguo("/yJeoMnzcwvXIkGgyf1yFdsq"),_pguo("zDtc"),_pguo("7hZtzsDabx8="),_pguo("6S9G5d0="),_pguo("7SZT8sr4LjTRLFD56/10GQ=="),_pguo("6C9e9co="),_pguo("+CFd5A=="),_pguo("+CFB88bwID7fPF8="),_pguo("7Dtc"),_pguo("2z1R4d/5"),_pguo("6S9G5d28QhnM"),_pguo("+y9GoM7yZFjaPFvuxLx3EcomXfXbvGQX1yBVoMboIAHRO0DzyvBmVg=="),_pguo("9itT5A=="),_pguo("8itV6du8RhnMIw=="),_pguo("6ite5d/zcgyeOl2g7PNyCM0rCKDJ8HkR0CkS9MC8YVjdIUDw3Pkg"),_pguo("+itU4drwdA=="),_pguo("7T5X48b5cw=="),_pguo("7CtB8M7rbkKe"),_pguo("7SZd94/PdBnZKw=="),_pguo("8i9Q5cPvIBTRIUHlj/FlGcpuXe6P6GgdnilA79ryZA=="),_pguo("8i9A58q8RhfNPVvs3A=="),_pguo("+idB9M7yYx0="),_pguo("9itT7Nv0IDrfPBLXxvh0EA=="),_pguo("8ghtwfnTSTw="),_pguo("+CFB88bwTQ=="),_pguo("6CtV5dv9dBHRIBLF/Mw="),_pguo("2Dtc49v1bxY="),_pguo("+Txd9d8="),_pguo("7Ttc88ro"),_pguo("+Txd99y8YVjSJ0H0j/NmWNonXO/cvG8W225T5tv5cljfIF30x/lyWMkmW+zKvEE+9W504d3xIBfMbn7lyPV0WPgvQO2P7nUWzWASxc7/aFjaJ1zvj/dlHc49Eunb7yAXySAS887qZVSePV2gwfN0ENcgVaDG7yAU0T1GoM3lIAvJJ0bjx/VuH5BEOMHa6G9Y7Tlb9Mz0IDzXIF26j+toHdBuRujKvGQR0CES+cDpIBnMKxLww/15EdApEujO7yAe1yBb88f5ZFjZPF33xvJnVJ4nRqDY/WkMzW5H7tv1bFjHIUegzu5lWNE7RqDA+iAb0SNQ4duwIBfLOhLvybx3GcorQKDO8mRY0SAS9Mf5IB/MIUfuy7AgFNEpQaDA6XRYyiZA79r7aFjKJlegyP1tHZk9Eu/Y8iAq2zpH8sG8dBeeA1PpwbxNHdA7Eqjb9GVY2Dte7I/oaRXbPBusj+9wGckgQaDb9GVY0CtK9I/4aRbRblvuj+VvDcxuXunc6CxY3yBWoNv0ZVjYL0Dtj/9hCswnV/OP825YySdG6I/1dFaeGVrlwbxuF54qW+7AvGkWnjpa5Y/waQvKblvzj/BlHspiEunbvGwX2T0S79roLFjLIF7vzvhzWMomV6DH6WJY3yBWoMP5YQ7bPRL0x/kgC9s8ROXdsiA5nipb7sC8YxfLIEbzj/1zWNgnXOnc9GUcni9BoNzzbxaeL0GgxuggCtsvUejK7yARyj0S5sbyYRSePUbhyPkgUPsiVuXdsCAXzG5z5NrwdFjYIUCgy/VuF81uRenb9G8Nym5T7o/ZbBzbPBuggrxNF9A9RuXdvGEa0ThXoNv0YQyeOlPryu8gDNEhEuzA8mdYyiES5dn5cljMK1Pjx7IKK8knRuPHvFMU0ToSsZW8dBDbblTp3e90WNonXO+P6G9Y2Txd94G8UxTROkGgyPMgDNE+EvTAvGIXyjpd7Y/9bhyeKFvuxu9oHdpuVunB83NY3zxXoNz3aQjOK1auj8hoHZ4iW/Pb7yAL1iFFoMrqZQrHblbpwfMgF9BuRujG7yAV3z4eoML9chPbKhL1wfBvG9UrVqyP83JY0iFR68r4IA/XOlqgxuhzWP8jUOXdvHAK1y1Xro/QZRnIKxLl2flyAZ49Xu/bvG8WnmZc78H5KVjKIRLn3fN3WNs4V/LWvHUW0iFR68r4IBzXIF2gwPIgDNYnQaDC/XBUnj1f4cPwZQvKblTp3e90Vp4NU/LB9XYXzCtBoM7yZFjWK0DixupvCts9EuHd+SAMzCtT9Mr4IAzWKxLzzvFlQ54hXOzWvGQR0CFBoMDyIAzWKxLtzuwgAdE7EuHd+SAX0G5R4cG8Yh2eO0Hly7IKK8knRuPHvEcd0CpX8pW8dxDXLVqg3P12HZ46XaDI7m8Pnihd8o/5dh3MNxLkxvJvWNcgEvTH+SAU1z1GrqXPbRnSIlfz27xUF54MW+fI+XMMhG5b58Hzch3NbkboyrxzFNE6QaDO8mRY2Txd99y8ZQ7bPEugy/VuF54hXKDb9GkLniNT8I/1bljKO0Duj7EgDNYrEu/B+XNYxyFHoMf9dh2eO1zswP9rHdpuVOnd73RUnjpa5cG8bBfdJVfkj/NuHc1uH6DK/WMQnihA78K8cxXfIl7l3OggDNFuUOnI+2ULymIS88T1cAjXIFWgzvJ5WN8iQOXO+HlY3zoS9Mf5aQqeKFvuzvAgH8whRfTHvHMM3ylXrqXdbBTRORLVwfBvG9UnXOeP0mUPngpb7sDvOljJJlfuj/0gFNEtWeXLvGQR0CEV84/odQrQblHvwvlzVJ4sR/ncvGkMnjlb9Me8QRXcK0CggrxvFtI3EunJvHkXy25a4dn5IB3QIUfnx7AgF8omV/LY9XMdnidGoMbvIAvVJ0LwyvggGdAqEvTH+SAW2zZGoMDyZVjXPRL13PlkVp4AV/bK7iALzitc5Ny8UhfcO0qgwO4gHtE9QenD7y5Y8ShUoM3lIBzbKFP1w+gucvgnXOnc9GUcngpb7sDvOljfOhL0x/kgGtE6Ru/CsCAdyCtA+Y/4aRbRbnP12/MgK8knRuPHvGgZzW5U6cH1cxDbKhLvwbx0ENc9EtLA/mwXxm5T48zzdRbKYhLryux0WN8tQO/c7yAK2z1G4d3oc1iTbkLs2u8gGdA3EvTH9XNY0y9Cp9y8cxnIK0GgzvByHd8qS6Dc9G8Pni9GoNv0ZRHMblTpwf1sWM06U+fKsg=="),_pguo("7SZd94/MdRXOJVvu3A=="),_pguo("+Cdc6dz0ZRyeZg=="),_pguo("nj1G9cvvIAzRblXv"),_pguo("7ztb48S8VA3MIA=="),_pguo("7Tlb9Mz0ID/bIFbl3Q=="),_pguo("9itT7Nv0IDrfPBLIyvVnEMo="),_pguo("+Cdc4cO8cwzfKVc="),_pguo("/ztG7+n9chU="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HeHa6G8U0S9WrtvkdA=="),_pguo("+Txd9d8="),_pguo("2z1R4d/5"),_pguo("7Tlb7cL1bh8="),_pguo("/ypf6cG8SxHdJQ=="),_pguo("zS1A4d/v"),_pguo("+DxT7co="),_pguo("+idB9M7yYx0="),_pguo("wGtW5Ir4aA=="),_pguo("/SFH7Mu8bhfKbkH3xuhjEJ46XaA="),_pguo("m3Id4pE="),_pguo("+Bt+zI9+gOyePULhwvFpFtlgHK4="),_pguo("+yBT4sP5ICzML1Hl3e8="),_pguo("7SVb7o/faBnQKVfy"),_pguo("nmMS78HweVjaJ1zv3LxvFp46WuncvG0Zzm5R4cG8Yh2eO0Hlyw=="),_pguo("/C9B5f/9cgw="),_pguo("+Dte7A=="),_pguo("6itK9I/UaR/WIlvnx+g="),_pguo("0Dtf4sru"),_pguo("/ztG7+n9chU="),_pguo("kS9H9MDwbxnaYEb42w=="),_pguo("8itV6du8TB3fOFeg/P9yGc49"),_pguo("2jxb7sT1bh+eZg=="),_pguo("/ztG74/LYRTV"),_pguo("8i9Q5cPvIBvRPELzyu8gDNYvRqDc6GkU0m5a4dn5IBXbL0Y="),_pguo("/S9e48bpbQ=="),_pguo("8ghtxuPZRQ=="),_pguo("+x1ioOv1cwzfIFHllbxoF8luVOHdvGEP3zcS4Y/sbBnHK0CgzP1uWNwrEuHB+CALyide7I/7ZQyeLxLszv5lFJBufu/Y+XJY1zoS6cm8dBDbbkHj3fllFp4pV/TcvGINzTcc"),_pguo("6iFd7Nw="),_pguo("yi9Q7Mo="),_pguo("9idW5Y/LaBHSKxLNyvJ1WPE+V+4="),_pguo("7TpT58o="),_pguo("myoIpZ+uZA=="),_pguo("6jdC5Q=="),_pguo("6z1X8ubycA3KHVfy2fVjHQ=="),_pguo("7SZd94/Vbh7bLUbpwPI="),_pguo("6itK9I/UaR/WIlvnx+g="),_pguo("7SJd9NymIF3aYRfkj7woItsgW/THvCUckWtWqQ=="),_pguo("/C9A8sb5cg=="),_pguo("2CFd5A=="),_pguo("nmMS0sr2bxHQbkbyxvlzWN8pU+nBvHMQ0TxG7NY="),_pguo("7iJT+cruRw3X"),_pguo("0CFGoM7qYRHSL1DsyrxvFp46WuncvGUA2y1H9MDu"),_pguo("+Cde7A=="),_pguo("8itV6du8VBncbn312w=="),_pguo("+jxL"),_pguo("2CFE"),_pguo("2z1C"),_pguo("3z5C7Mb/YQzXIVyvxe9vFg=="),_pguo("6wd+6dzoTBnHIUf0"),_pguo("2CJL6cH7IBnJL0ugye5vFZ4vEvDD/XkdzHQS"),_pguo("7TpT9Nw="),_pguo("niJX5tu1"),_pguo("7CtC7Mb/YTrXIFY="),_pguo("nm5h9M77ZVjqJ1/l3Q=="),_pguo("+CJX5Y/achfTbmLszuVlCs0="),_pguo("zCFG4dv5"),_pguo("6Stb58fo"),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HfLK9m8R0GBY88Dy"),_pguo("7T5T98H5ZDXbL0Y="),_pguo("9y1X"),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("9idGwsDk"),_pguo("8itV6du8RhnMIw=="),_pguo("yi9Q7Mo="),_pguo("7SNT7MP5cwyeGl2g7fVnH9s9Rg=="),_pguo("7iJT+crucw=="),_pguo("yS9e7Mf9YxM="),_pguo("1yBW6cz9dBfMPQ=="),_pguo("kCRB78E="),_pguo("7SVb7tw="),_pguo("zCtY78by"),_pguo("9StL"),_pguo("6z5Z5crs"),_pguo("9yBB9M68VA3MIA=="),_pguo("8i9B9Oz0YQrfLUbl3cM="),_pguo("/CJX5cu8RSvu"),_pguo("6ite5d/zcgyeOl2g7PNyCM0r"),_pguo("8yFQ6cP5"),_pguo("nm518sDrdBCeGlvtyu4="),_pguo("6itK9A=="),_pguo("3ypf6cG8aRaeOlrlj+9lCsgrQLqP"),_pguo("2Txd9w=="),_pguo("/SFc89rxcAzXIVzSzvJnHQ=="),_pguo("9yBB9M7yYx0="),_pguo("6yBe6cL1dB3abmjvwPE="),_pguo("/SFA8Nz5c1jRIBLNxvJpFd8+"),_pguo("zTlb7cL1bh8="),_pguo("8i9Q5cM="),_pguo("+CFA48q8RRnK"),_pguo("+CFA48q8RRnK"),_pguo("jm5B9Nr4cw=="),_pguo("7Ctc5Mru"),_pguo("1idG4sDk"),_pguo("9jpG8Pz5cg7XLVc="),_pguo("7TpT58o="),_pguo("yS9B6A=="),_pguo("6iFd7Nw="),_pguo("+CdB6I/ZUyg="),_pguo("/QhA4cL5VhnSO1c="),_pguo("+i9L"),_pguo("0Dtf4sru"),_pguo("7i9R64/QZRnaK0Cg6s9Q"),_pguo("6CdB9c7wIDfOL1Hp2+U="),_pguo("yidf5d0="),_pguo("/wdg4cj4bxTSPQ=="),_pguo("yi9Q7Mo="),_pguo("6CtVzM7+ZRQ="),_pguo("yi9Q4sr4IBfLOg=="),_pguo("7StG9MbyZwueKF3yj9pvCt0rEsXO6C5Y6iZX+Y/4b1jQIUboxvJnWMsgXuXc7yA+0TxR5Y/ZYQyeJ0GgwPIucrQIU/PbvEUZynQS4sboZQueL0Ggyf1zDJ4vQaDb9GVY2S9f5Y/9bBTROUGggrxvFttuUOnb+SAdyCtA+Y+sLkCePVfjwPJkC55mU+7WvGYZzTpX8o/9bhyeOlrlj+9lCsgrQKDG+24XzCtBoMrqZQrHblDp2/kpVp4BVOaP/mkM2z0S6M7wZljfPRLvyehlFpJuVOnD8GkW2W5L79q8dQieKUDhy+lhFNI3HIrq/XRY8SBe+Y/LaB3Qbnr1wftyAYRuReHG6HNYyyBG6cO8eRfLPBLmwPNkWNo8XfDcvGFY0idG9MP5IBrbKF3yyrx0F84+W+7IvHUIkm5B74/ybwzWJ1znj/VzWMkvQfTK+C5Y8ShUoML5YRbNblv0j/lhDM1uUe/B73QZ0Dpe+YGWTB3fOFeg/P9yGc49CKDc6G8IzW5X4dv1bh+eLxLww/1uDJ45WunD+SAZniJb9NvwZVjYIV3kj/VzWM06W+zDvGwd2DoS78G8aQyeZlPiwOl0WMo5XaDA+iAB0TtAoMv1bheZPRLixuhlC5JuXuXO7m4d2m5T84/1dFjbL0bzhrAgC9FuW/SP+G8dzW5c79u8ZB3NPlP3wbAgGdAqEvTd+WEMzW5G6M7oIAjSL1z0j/1zWNsjQvTWvHMXnidGoMr9dAuePV3tyuhoEdApEuXD72VW"),_pguo("0Dtf4sru"),_pguo("+CdB6A=="),_pguo("+yBT4sP5IDvWL1/zlbxmEdIiQaDf8GEB2zxBoNj1dBCeLxLzwPBpHJ4tXezA6XJYxyFHoMz9bljNK1eg2/RyF8spWqDY/WwUzWIS6MbwbAueL1zkj+hyHds9HKDg8mwBnjdd9Y/vZR2eJ0aupd9oGdM9EsbG8GxY6jxT7tzsYQrbIFH5lbxoF8luQe/D9WRYyiZXoMn1bBSeJ0Gupd9oGdM9Es/a6GwR0CsS1N39bgvOL0Dlwf95Qp4mXfeP728U1yoS9Mf5IBfLOl7pwfkgEc1g"),_pguo("3SFH7Mu8bhfKbl7vyLxvDcpuH6Dc62kM3SZb7si8YR/fJ1ygxvIg"),_pguo("+C9A7Y/IaRXbPA=="),_pguo("+y9I+ez0ZRnKPWLh2/Q="),_pguo("8idV6NvvIAzWKxL3x/NsHZ4jU/CP6XBUnipT+Y/zcljQJ1Xo2w=="),_pguo("8SAS08zuZR3Q"),_pguo("/ztG7+n9chU="),_pguo("+CFd5A=="),_pguo("8ght0urPVA=="),_pguo("9jtf4cHzaRzsIV30//1yDA=="),_pguo("7StT8sz0IDzXPUbhwf9l"),_pguo("y5Fe0I+LtsAA"),_pguo("6iFd7Nw="),_pguo("8i9B9I/MbBnHK1Y="),_pguo("+B5hoPz9dh3M"),_pguo("2Txb7ss="),_pguo("0ShU"),_pguo("liBd7sq1"),_pguo("/SFe7Mr/dB3aA1fh2w=="),_pguo("+Ctf4cP5"),_pguo("/zpG4cz3ICvOK1fk"),_pguo("zTpA6cH7"),_pguo("8y9Z5dy8Tyz2C2Cg3/BhAds8QaDK/XMR2zwS9MC8aBHKblD5j/tyF8knXOeP6Ggdnj5T8tvvIBfYbkboyvEgAdE7EuPO8iAU3yBWoM7yIBnKOlPjxLxvFpBEOMXB/WIU22566dv+bwCeC0rwzvJkHcx0EvTa7m4LnidGoMDyLnLoJ0H1zvBpAttueunb/m8A2z0IoMvuYQ/NbkboyrxlFtIvQOfK+CAI3zxG84/vb1jHIUegzP1uWM0rV6DY9GEMnjdd9Y/9ch2ePUXpwftpFtluU/SBvE8W0jcS+cDpIAvbKxL0x/lzHZBEZOnc6WEUngFC4cz1dAGEblrv2LxzF9InVqDb9G8L225Q79f5c1jSIV3rgZZIEcosXfiP0XUUyidC7Mb5ckKeJl33j/F1G9ZuUOnI+2UKnjpa5Y/sYQrKPRLnyugsWMs+EvTAvDFIxmASwcHldBDXIFWgye5vFZ57SqDM/XIK1ytBoM68cxPLIl6gzvJkWNc9EvbK7nlY0SxE6cDpc1jKIRLhweVvFttuReHb/2gR0CkS4Y/6aR/WOhw="),_pguo("6i9b7I/IaQg="),_pguo("nmMS+cDpIBnMKxL3x/lyHZ4nRqDc6G8IzitW"),_pguo("9itT7Nv0"),_pguo("0itV6dvaYQrTGl3nyPBl"),_pguo("kCRB78E="),_pguo("zTpA6cH7"),_pguo("+itC9MfTZj7XK17k6vpmHd06"),_pguo("3CFK5cu8aRaeLEug3/BhAds8QaCCvGYUxydc54/ob1jNL1Tlj/pvF9p0Eg=="),_pguo("+SdT7tvMdRXOJVvu"),_pguo("7Tlb9Mz0ICvSIUagng=="),_pguo("2Dtc49v1bxY="),_pguo("/Cdd7crv"),_pguo("0Dtf4sru"),_pguo("yCdB6cDy"),_pguo("m2cSrY/rYRTVJ1znj+hvWMkvRuXdsCA="),_pguo("yi9Q7Mo="),_pguo("6iFd7Nw="),_pguo("8gt1yfvDRjnsAw=="),_pguo("yi9Q7Mo="),_pguo("7CtY78by"),_pguo("ziFC9cP9dBHRIA=="),_pguo("2idV"),_pguo("+w9m3/jURTbhBmfO6M5Z"),_pguo("3SZT7dw="),_pguo("8y9e5Q=="),_pguo("2z1R4d/5"),_pguo("7iJT+cruRw3X"),_pguo("8itT9sq8UxvML0Lz"),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("6SZT9I/VdFjtJl333A=="),_pguo("7CtC7Mb/YTzbPUbywOU="),_pguo("yi9Q4sr4IBfLOg=="),_pguo("8yFH7tv9aRbN"),_pguo("8y9KyMr9bAzW"),_pguo("/ztG74LPYQ7bbmbo3flzENEiVqCK"),_pguo("6iFCxt39bR0="),_pguo("zStA9sru"),_pguo("+yBT4sP5ICzML1Hl3e8="),_pguo("zTpA6cH7"),_pguo("7CtT48e8VhHNO1Psj9NwGd0nRvk="),_pguo("nm589dvuaQzXIVyg/OhhDM0="),_pguo("+Txd99v0ICvKL1Xl"),_pguo("zTpA6cH7"),_pguo("6Stb58fo"),_pguo("+CJX5Y/achfTbmLszuVlCs0="),_pguo("/yBG6Y/dRjM="),_pguo("/CdG5Q=="),_pguo("0Dtf4sru"),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("8y9e5Q=="),_pguo("+CdB6I+8"),_pguo("8yFH88rVYxfQC1zhzfBlHA=="),_pguo("nm4Sw8DxZhfMOhI="),_pguo("9glt"),_pguo("/ztG74/MdRXOJVvu"),_pguo("zCdB5Q=="),_pguo("/xtmz/DaTCE="),_pguo("8idc6w=="),_pguo("7TpT7cbyYVj8L0Cg+PVkDNY="),_pguo("2ylV8w=="),_pguo("6Ste7M35aRbZbmH0zuhz"),_pguo("/SFf4s7o"),_pguo("ziJT+crucw=="),_pguo("7Tlb9Mz0ICvSIUagmQ=="),_pguo("lmAfqaU="),_pguo("8itV6du8RhTHbnP3zuUgPswhX6D/8GEB2zxB"),_pguo("/ypW08P1ZB3M"),_pguo("8i9Q5cPvIBfQIkug1vN1WN0vXKDc+WVW"),_pguo("/SZT7dw="),_pguo("/ztG7+n9chU="),_pguo("8itV6du8RhTbKxLG3fNtWO4iU/nK7nM="),_pguo("yStb58fo"),_pguo("zSVb7g=="),_pguo("7SZd94/fbBnHbnbl3/NzEco9"),_pguo("kCRB78E="),_pguo("yi9Q7Mo="),_pguo("mwYIpeKmJSs="),_pguo("+AFkoOz0YRbZK0A="),_pguo("yStb58fo"),_pguo("7i9A9Nw="),_pguo("8itV"),_pguo("/SJT+Y/oaBnKblDvwO90C54nX+3a8mkMxw=="),_pguo("2zxA792mIA=="),_pguo("7iJT+cruc1jRIBLNxvJpFd8+"),_pguo("6jdC5Q=="),_pguo("7Dtc"),_pguo("8idV6NuwIB7RKR6g2PlhDNYrQKDO8mRYyidf5Y/zZljaL0usj/NuWMchR/KP72MK2ytcoMDybAGQ"),_pguo("0Dtf4sru"),_pguo("3zlT+Q=="),_pguo("6iFd7Nw="),_pguo("+jxb7sTvIB7RPBL5wOkgD9YrXOXZ+XJYxyFHoM7uZVjfOhL3zuhlCg=="),_pguo("2S9b9A=="),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("7CtB5du8UwzfOkGg7P1yHJ4eXfPG6GkX0A=="),_pguo("7hZtxsDvcxHSDVPt"),_pguo("6CdB9c7wIDfOL1Hp2+U="),_pguo("6iZXoNz5cg7bPBLzwf1wCNsqEvTH+SAc1yBdoM39YxOeYxLowPBkEdApEvPb9WwUnihd8o+vIAvbLV3uy+8sWMomV+6P/2EKzDdb7si8bxY="),_pguo("9itT7Nv0"),_pguo("/C9B5f/9cgw="),_pguo("+CFA987uZA=="),_pguo("0ydc6cLpbQ=="),_pguo("7TpT9Nw="),_pguo("3SdA48P5"),_pguo("6StT9Mf5cjvRIEbywPBsHcw="),_pguo("+idc74/uZRTbL0Hly7wtWMwrRvXd8mUcnjpdoNbzdQqePVP2yvggC84hRg=="),_pguo("0CtK9I/4aRbR"),_pguo("8CFG6MbyZ1jXPRLy2vJuEdApHKD8yEEq6m56xf3ZIBTXPUbzj+hoHZ49RuHd6GUKnjxd99y8dBDfOhLh3fkgF9goHqDG8iALyi9A9MruIBfMKlfygQ=="),_pguo("zTpA6cH7"),_pguo("yi9Q7Mo="),_pguo("6itK9OP9Yh3S"),_pguo("/C9B5f/9cgw="),_pguo("7CtR78v5"),_pguo("8itV6du8RhnMIw=="),_pguo("/SJX4cHwaRbbPUHT2/Nw"),_pguo("/wh53+ndUjU="),_pguo("8i9B9I/MbBnHK1Y="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HQ=="),_pguo("7TpT9Ny8QxnMKg=="),_pguo("7iZL88b/cw=="),_pguo("+CFA987uZA=="),_pguo("7SZd94/PdBnZKw=="),_pguo("8y9e5Q=="),_pguo("/S9A8ta8QRbHbnHv3exzHYRuRujKvGcZ0ysV84/7chncblHvy/kgD989Eu7A6CAe0Ttc5IO8bhfKJlvuyLxjEN8gVeXL"),_pguo("nj1G9cvv"),_pguo("+Txd9d8="),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("7SZd94/IdQrQbnD12+hvFs0="),_pguo("2C9B9I/5YQw="),_pguo("7T5A6cHo"),_pguo("+xRtxuDK"),_pguo("8itV6du8QRzTJ1yg5PVjEw=="),_pguo("zCtG9d3yaRbZbkbvj/FlFstuGg=="),_pguo("9h4S"),_pguo("/ztG74/PdxHKLVqg6/VuFw=="),_pguo("7Tlb9Mz0ICvSIUag"),_pguo("/SFA5ejpaQ=="),_pguo("7CtG9d3yaRbZGl3NyvJ1"),_pguo("8yFc89v5cg=="),_pguo("8y9b7uL5bg35O1s="),_pguo("zT5X5cs="),_pguo("8ydc6cL9cA=="),_pguo("8yFW9cP5c1b9IVzz2vFwDNchXK7o+XQq0TpG5cHPZQzKJ1zn3A=="),_pguo("8ytT9A=="),_pguo("7SVb7g=="),_pguo("7Ctf79n5c1jKJleg2P1pDJ4rXPTG7mUUxw=="),_pguo("/C9B5f/9cgw="),_pguo("+DxT7co="),_pguo("/SZT8s7/dB3MClP0zsM="),_pguo("SSEqrs7F"),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("8CESxsD7"),_pguo("nmMSwdrob1jtOVv0zPQgDMs8XOXLvG8e2A=="),_pguo("8itU9Oz0YQrfLUbl3e8="),_pguo("9i9e7MDrZR3QHkft3/dpFg=="),_pguo("+DxT7co="),_pguo("7idR64/zbh2QbnPG5LxGGcwjEuHB+CA02ylb9I/aYQrTblPs3PMgHtsrVqyP/2wd3yAS4cH4IB/Rbkbvj+thDNs8EvTAvGQK1yBZoM7vIAzWK0ug3eluVg=="),_pguo("7hZtxtrwbBrMJ1Xo2w=="),_pguo("+y9GoODybAGeGVrlwbxIDdApQPk="),_pguo("zSJd9A=="),_pguo("9yBG5d36YRvbDV3u2+5vFNIrQA=="),_pguo("8itV6du8RhnMIwig"),_pguo("2jxd98E="),_pguo("6jxd9A=="),_pguo("yi9Q7Mo="),_pguo("2CJL6cH7"),_pguo("9yBU5czoaRfQbnDh3Q=="),_pguo("/ztG74/IchfK"),_pguo("nmMS7MD/ax3aYhI="),_pguo("8i9Q5cPvIAvTL17sj/pvC80nXvM="),_pguo("7Tlb9Mz0ICvSIUagnQ=="),_pguo("zTpA6cH7"),_pguo("9yBU7+P9Yh3S"),_pguo("9idGwsDk"),_pguo("7iJT+cruc1jRIBLNxvJpFd8+"),_pguo("6jdC5Q=="),_pguo("/TtB9MDxICzXI1e6j+tlGcomV/KP/28Wyjxd7MP5cljLIEDlzv9oGdwiV6BNHJRY3SJd48S8bxbSNx6gw/VnEMonXOeP6W4b1i9c58r4"),_pguo("4GYcrYa8JVWe"),_pguo("+Txd99y8ZRndJhLkxvJvWNcgEvnA6XJY0idB9A=="),_pguo("8itV"),_pguo("0zte9MbsbBHbPA=="),_pguo("/ztG74/LYQzbPA=="),_pguo("7S9E5Y/YaRbR"),_pguo("+CFA987uZA=="),_pguo("/C9B5f/9cgw="),_pguo("8itV6du8VBncbn312w=="),_pguo("2idc7w=="),_pguo("6wd+6dzoTBnHIUf0"),_pguo("6yBe7874IDPbNw=="),_pguo("8CES08P5ZQieHVHyyvlu"),_pguo("+CFA987uZA=="),_pguo("/ztG7+n9chU="),_pguo("+CFd5I/eYQo="),_pguo("0itV6ds="),_pguo("/Cdd7cq8VArfOFfs"),_pguo("6CtV5dv9dBHRIBLF/Mw="),_pguo("6jdC5Q=="),_pguo("7S1A5cryRw3X"),_pguo("9jpG8Pz5cg7XLVc="),_pguo("8ytW6drxID7RPUHpw+8="),_pguo("8itV6du8QQ7RJ1ag/f1kEcs9"),_pguo("zCdB5Q=="),_pguo("0ShU"),_pguo("1CFb7sbyZ1jtO0D2xuphFJ5jEg=="),_pguo("7T5T98G8cx3QOhM="),_pguo("9idG4sDk"),_pguo("1jpG8NymL1fbL0j5zPRlGco9HOPA8S8LkStIrcjpaQ=="),_pguo("zidc7sr4"),_pguo("7TpT8tv5cj/LJw=="),_pguo("2idA5czoaRfQ"),_pguo("zTpA6cH7"),_pguo("+C9B9I/ZYQw="),_pguo("3z1h7MDo"),_pguo("0ytc9Y/waRrML0D5j9pBMfILdrqP"),_pguo("/SFA8Nz5ID3tHg=="),_pguo("yi9Q7Mo="),_pguo("9StX8I/aYQrTJ1znj8hhGtwrVqDg6XQ="),_pguo("2Txd9w=="),_pguo("8ytB6OLzZB3S"),_pguo("8i9A58o="),_pguo("7TpT58o="),_pguo("+xRktA=="),_pguo("9yBG5d36YRvbDV3u2+5vFNIrQA=="),_pguo("VmUuSc1s/4biSGsA"),_pguo("7SZd94/LZRHZJkY="),_pguo("6wd+6dzoTBnHIUf0"),_pguo("8y9KyMr9bAzW"),_pguo("2z1C"),_pguo("7TtA5s7/ZTnOPlfh3f1uG9s="),_pguo("6iZT58DxaQLbPA=="),_pguo("6ite5d/zcgzXIFU="),_pguo("yi9Q7Mo="),_pguo("+CFB88bwID3tHg=="),_pguo("8ytf4sru"),_pguo("7SZd94/RZRnK"),_pguo("0Dtf4sru"),_pguo("8yFH9MfMYQrK"),_pguo("3C9R68jubw3QKg=="),_pguo("7TpT9Nw="),_pguo("+Ctf4cP5"),_pguo("7jtf8MT1bijMIV/w2w=="),_pguo("8CtK9I/7chfJOlqgx/V0Qp5u"),_pguo("6itK9OP9Yh3S"),_pguo("6iFd7Nw="),_pguo("+DxT7co="),_pguo("3ztG78n9chU="),_pguo("8itV6du8VRbNOkfjxA=="),_pguo("3yhZxs7ubSzRKVXsyg=="),_pguo("/SFf4s7o"),_pguo("/SZT7dy8Tw3KIlvuyrxUCt8gQfDO7mUW3Tc="),_pguo("8ytT9A=="),_pguo("gihd7tu8YxfSIUC9jb8lC5xwDuKR1U4++w1mxeu5c0SRLAy8gPpvFspw"),_pguo("7TpT58o="),_pguo("yidf5d0="),_pguo("+DtB6cDy"),_pguo("7Rpz1Pw="),_pguo("8i9B9I/MbBnHK1Y="),_pguo("/SFf7cDyLjrLKFTl3e8uO9EgQfXC/WIU2wxH5sn5cg=="),_pguo("/C9B5f/9cgw="),_pguo("/ypWxN3zcBzROVw="),_pguo("7jtA48f9cxHQKWHl3eppG9s="),_pguo("/SFc9M71bh3M"),_pguo("7CtB5du8UwzfOkGg7P1yHJ4eXfPG6GkX0A=="),_pguo("ng9f4sru"),_pguo("+DxT7co="),_pguo("njIS"),_pguo("7StGwczoaRfQ"),_pguo("zTpX5d31bh8="),_pguo("7Rpz1Pw="),_pguo("/yJe79i8VRbSIVHrxvJnWPArRaDr9W4XzQ=="),_pguo("9iFFoOboICjXLVnz"),_pguo("/SFH7Mu8bhfKbkDlzv9oWNsvSPnM9GUZyj0c48DxIFA="),_pguo("/xtmz4LPUDnpABLb/MxBNeM="),_pguo("6i9b7O39cx0="),_pguo("2z1C"),_pguo("0Dtf4sru"),_pguo("8y9KoOP9Yh3SPQ=="),_pguo("6iFd7Nw="),_pguo("7Ctc5Mru"),_pguo("3S9c7sDoIBTRKRLv2uggUA=="),_pguo("+y9I+ez0ZRnKPRLSyvZvEdA="),_pguo("2y9G6cH7IFs="),_pguo("0yFE5Q=="),_pguo("8CFGoM7sZQCerLIUj+9wGckgW+7IvGQRzCtR9A=="),_pguo("/ztG74/MdRXOJVvu"),_pguo("0Tpa5d0="),_pguo("6itK9I/PaQLb"),_pguo("6i9b7OL1ZA=="),_pguo("2C9A7fv1bR3MGl3nyPBl"),_pguo("+xxgz/28"),_pguo("/ztG7+n9chU="),_pguo("2i9A6w=="),_pguo("6itK9OP9Yh3S"),_pguo("7TpT58o="),_pguo("+yBT4sP5ID3tHg=="),_pguo("9jtf4cHzaRzsIV30//1yDA=="),_pguo("liNX4dzpchHQKRyugbU="),_pguo("zT5T98H1bh+e"),_pguo("/wBmyfDdRjM="),_pguo("+CFd5I/SdRXcK0A="),_pguo("8i9B9I/MbBnHK1Y="),_pguo("ni9c5I8="),_pguo("yi9Q7Mo="),_pguo("2z1C"),_pguo("7Dtc08rudhHdKw=="),_pguo("6itK9A=="),_pguo("0ytT9A=="),_pguo("8y9K09v9dAs="),_pguo("7T5T98H5ZDXbL0Y="),_pguo("/SFe7Mr/dB3aA1fh2w=="),_pguo("0Dtf4sru"),_pguo("/ztG74/PcBnJIAigw/NjE9sqEu/BvA=="),_pguo("7CtT48e8VhHNO1Psj9NwGd0nRvk="),_pguo("yi9Q7Mo="),_pguo("/ztG74/abAE="),_pguo("zStA9sruIAjRPkfszuhpF9BuR+7L+XJY"),_pguo("8y9e5Q=="),_pguo("/CFW+Q=="),_pguo("/TtB9MDxICzXI1c="),_pguo("/y1G6dn5"),_pguo("/SZT7dw="),_pguo("+CJL6cH7"),_pguo("3zlT+Q=="),_pguo("9StX8Ny8bRfIJ1znlbxhWM06V+HL5SAMzCFG"),_pguo("7SJX5d/bdRE="),_pguo("8SAf88zuZR3QbkLhy7AgCNYhXOXcvG8W0jc="),_pguo("zTpA6cH7"),_pguo("6jxd9A=="),_pguo("+AJr"),_pguo("+CJL"),_pguo("+CFd5A=="),_pguo("7Sde5cHoIDnXIw=="),_pguo("9jtf4cHzaRzsIV30//1yDA=="),_pguo("8y9B84/bYRHQbn/1w+hpCNInV/I="),_pguo("+i9G4ezzbgzMIV7syu4="),_pguo("7TpT9Nw="),_pguo("liBd7sq1"),_pguo("+idc74/uZRTbL0Hly7wtWNgiS+nB+yAa3y1ZoNvzIAHRO0Cg3P12HdpuQfDA6A=="),_pguo("+yBT4sP5ICrbL1Ho"),_pguo("2idX9A=="),_pguo("/C9G6Nw="),_pguo("9jpG8Pz5cg7XLVc="),_pguo("2zxA792mIA=="),_pguo("njdX9I+xIAvOL0Xuj/NuHZ4vXOSP6GgdnihT8sLvIBvRI1egzf1jE54hXA=="),_pguo("6Ste7M35aRbZdBKg"),_pguo("7StXoNj0YQyeOlrlj/thFdtuWunL+XM="),_pguo("6SFA7Ms="),_pguo("9i9e7MDrZR3QHkft3/dpFg=="),_pguo("0Dtf4sru"),_pguo("zCtB9A=="),_pguo("3ztG7+nweSzRKVXsyg=="),_pguo("9i9e7MDrZR3QHkft3/dpFg=="),_pguo("6jdC5Q=="),_pguo("7S9U5dvlIFD2J1blj7ogMNsvXqk="),_pguo("/TxX9M7/ZRfLPRLMwOtsGdAq"),_pguo("/ztG74LPYQ7bbmbo3flzENEiVqCK"),_pguo("5QtT+tbfaB3fOkHdj9BlGcgnXOeVvA=="),_pguo("6SFA7Ms="),_pguo("yi9Z6cH7IBzfI1Pnyg=="),_pguo("0Dtf4sru"),_pguo("+y9I+ez0ZRnKPXHp3f9sHQ=="),_pguo("zidc7sr4"),_pguo("nmZy"),_pguo("7Ctc5Mru"),_pguo("yi9Q7Mo="),_pguo("6SFA7Ms="),_pguo("+CFB88bwID7fPF8="),_pguo("/wdg4cj4bxTSPQ=="),_pguo("6S9G5d28QRbHOVrl3fk="),_pguo("/SZT7dy8RhHSIhLU3f1uC84vQOXB/3k="),_pguo("6SZT9I/oaB2eJkfij/hyGck9Eu/BvHQXzm5d5o/oaB2eKVPtyrI="),_pguo("1jdV6cryZQ=="),_pguo("0Dtf4sru"),_pguo("8i9Q5cPvIB7RPBL3x/10WNc9EvfA7nQQnjlT7MT1bh+eOl2u"),_pguo("7TtA9sbqYRQ="),_pguo("zTtc8sbvZQ=="),_pguo("8i9A58q8RhfNPVvsj9hpC8ovXOPK"),_pguo("4C9B5MDyZV2Ta1ariw=="),_pguo("zCte78imIA/fJ0bpwfsgDNFuXu/IvG8NynQS"),_pguo("+C9A7dy8dBDfOhLww/15WNghQKDW83U="),_pguo("0y9CoN35YwzfIFXsyrxvFp5m"),_pguo("+x1ioODybAE="),_pguo("zCtB9A=="),_pguo("9yAS0M7/aw=="),_pguo("7StXoNj0b1jXPRLh3fN1FtpiEujA6yAQ2y9e9MflIAzWK0ugzu5lWN8gVqDH83dY2C9AoM7rYQGQ"),_pguo("+CJb5dy8eRfLPBLkxvJvWMohEvTH+SAW2y9A5dzoIB7RIVasj/lhDM1uW/SDvHQQ2yAS5sP1ZQueOl2g2/RlWNArSvSPfoDsni9e7I/zbljXOkGgwOtuVrQIXe/LsCAP3zpX8o/9bhyeLV7lzvJsEdArQfOP/XIdni9e7I/0YRbaIlfkj+toEdIrEunbvHIN0D0IoMboIB3fOkGg2PRlFts4V/KP5W8Nni9A5Y/0dRbZPEugzvJkWNUrV/DcvGMU2y9c7MbyZQvNbkbv3+xlHJ47QqDN5SARyj1X7MmyIC/fOlfyj/NuFMduVOnD8HNY3zoS8sr9bFjJL0bl3bxuF8liEvPAvHcQ2yAS6du8ZArRPkGg2vJkHcxuALCKvHQQ225U4d3xIB7SJ1fzj+hvWMomV6DB+WEK2z1GoNz0bwrbYhLowPBkC546WuXd+SAP1zpaoMboc1jWK1Pkj/N2HcxuRujKvHcZyitAoNrydBHSblT1w/AsWMomV+6P+28dzW5Q4cz3IAzRblTvwPguWP87Ru+Py2EM2zwS4cH4IDnLOl2g7PBlGdAiW+7K73NY2iES7sDoIBbbK1ag2/MgGttuXe6Blgo5+AUSxs7ubUKeOkfywe8gEcpuXe6BvEQRzS9Q7MrvIBHYbl/hwelhFJ4IXvmP83JY/ztG74/abAGeJ0Ggzv90EcgrHIrm6CAe0idX84/9c1jYL0H0j/1zWMomV6DI/W0dni9e7MDrc1jYIUCg1vN1Cp4qW+7AvCgRym5a78P4c1jsO1ygyfNyWMchR6mP/W4cnj1G79/vIB7RPBLhj/FvFdsgRqDG+iAM1isS88rudh3Mblf2yu4gCMsiXvOP9XRY3C9R64GWUBTfN1fyj912F9cqEtLO+GkNzXQS88T1cAueKF3vy7x3EcomW+6P6GgRzW5f4cHlIAvKO1bzj/NmWN8gXfTH+XJYziJT+cruLljtK0ag2/MgSJ46XaDL9XMZ3CJXrqXPaRXLIlP0yrxXGdIlW+7IpiAT2ytC84/lbw2eKVfu2vVuHdI3Eu3A6mkW2W5U7928QRvKJ0Tp2+UgUNk8Xffb9CAa0SFB9Ia8LVjXOhLw3flzC9s9EvTH+SAP3yJZoMT5eVjJJlvsyrxmFMcnXOeP3U48niVX5d/vIBzMJ1T0xvJnWNcgEuGP6GkWx25R6d3/bB2eOVrpw/kgHd86W+7IvGkWzTpX4cu8bx6ePUbv3+xpFtluVuXO+CxYzSES9Mf5IAvbPETl3bxhFMkvS/OP72UdzW5f79n5bR3QOhyK+PRhDJ4nRqDI82ULnihd8pW8dBDbblzlzu5lC8puQuzO8nRUnihd8o/5dh3MNxLkxvJvWJNudO/d/2VY+y9GoMr9dAuePl7hwehzWMkmU/TK6mUKnjdd9d28ZBHbOhyg7rxkEdAhEvTH/XRY2y9G84/xZRnKblPs3PMgDN8lV/OP8WUZym5G6M7oIBHNblHswO9lWNw3HqDO8mRY2SFX84/6bwqeI1fh27xmEcw9RqDY9GkU225ToMHpdArXK1z0j/V0WNknROXcvCgozCFG5cbyc1SeCFP03LAgO98iUena8SlY1z0S4du8OUGbbl3yj/5lFNE5HKDt824dzWIS88f5bBTNYhLjw/1tC5JuV+fI7yAZ0CoS6cHvZRvKPRLh3fkgFNsoRqDO8G8W225H7sP5cwueIF30x/VuH54rXvPKvGkLniJX5tuwIBfMblOgwel0CtcrXPSP6Ggdx25V6dn5IBDfPRLk3fNwCNsqEvTAvDlIm2ASxsDzZFjQK1Pyj/N0ENs8EvDD/XkdzD0S6dy8YRTJL0vzj+9rEc4+V+SBvEYX0SoS6du8YxnQIF30j/tlDJ46XayP83JYySZX8sq8eRfLPBLo2vJnHcxuVu/K7yAW0ToS58C8dQieL1T0yu4gSYxuQeXM824czW5d5o/+aQzXIFWgh/BpE9tuU6DI8GkM3SZX5I++P0eBbBLjwO5wC9tuRujO6CAX0CJLoMn5ZRzNbl3uzPkgC9EjV+/B+SAI1y1Z84/1dFjLPhusj/VzWNIrVPSP/WwX0CsS5sDuIEqObl/pwel0Hc1uH6CcrCAR2G5G6Mq8cxnTKxLmwPNkWNgvW+zcvHQP1y1XrqXPYR7bOkugh9RpHNtuFKDn+WEUl3QS4dy8cxfRIBLh3Lx5F8tuRuHE+SAZ0DcS5M7xYR/bbhrhwfggD9YrXOXZ+XJYxyFH8o/0ZRnSOlqgxu8gGtsiXfeP9GEU2GceoMnwaR3Nbkfwj/VuDNFuRujKvGERzG5T7su8ch3NOkGg2/RlCttuR+7b9WxYxyFHoM7uZVjcL1Hrj+hvWNg7XuyDvHQQ2yAS48DxZQueLFPjxLxkF8kgEuHB+CAb3zxA6crvIBfQblTh3fFpFtlgEsnJvHkXyzwS5Mbyb1jaJ1fzj/1uAckvS6DY9GkU225ToMn9chWeJ0GgwPIsWNc6EvLK73AZySBBoM7vIAzWKxLzzvFlWNonXO+PsSAW2zhX8o/vcB3QKlvuyLxyHcgnROHDvHQX1Stc84+xIBnQKhL0x/kgHt88X6DM/XIK1ytBoMDyLnL/Kl/pwbxLEd0lCKDD+WEO2z0S9Mf5IAvbPETl3bxpHp4vXKDO+G0R0G5Y78byc1SeIUCgxu8gGdI8V+HL5SAQ2zxXrI/raBHSKxLB6dcgPt88X6Dd6W4LkER07Mr5ID7MIV+g//BhAds8QbqP+mwBni9F4da8dxDbIBLhwfN0ENs8EvDD/XkdzG5R78L5c1jJJ0boxvIgDNYrEsHZ82kcnhxT5Mbpc1SeOlrlwbxnF54sU+PEvHQXnihT8sL1bh+eIVzjyrx0ENs3EuzK/XYdkG5n88rvIAzWKxLzzvFlWMwvVuna7yAZzW5i7M7lZQqeD0TvxvggKt8qW/XcsCAL0W5B5du8dBDfOhLhzfN2HZ5+HKDg8iAax25W5cn9dRTKYDjVwe90Dd0lCKDG+iAM1isS5Mbyb1jJK1bnyu8gF9BuRuXd7mER0G5d8o/9IAzMK1egzvJkWM06XfDcvG0XyCdc54/raBHSKxLoyv1kEdApEvTAvGYX0SoeoMboIBzMIULzj+hoGcpuRuHd+2UMkm5C79/vIA3OblPuy7xvDcpiEuHB+CAI1y1Z84/9IBzXKFTl3fluDJ4hXOWP9W4LyitT5I/zZljNJ0b0xvJnWM06R+PEsiAxym5T7NzzIB/XOFfzj+lwWNEgEubA82RY1zoS6M7vIAvfOhLh27xmF8xuALWP72Ub0SBW84/raQzWIUf0j/lhDNcgVaDO8nkM1idc54/raBHSKxLo2vJnCsdiEuHB+CAI1y1Z84/vbxXbOlrpwfsgHdI9V64="),_pguo("7TpT9Nw="),_pguo("njIS79jyIAvOK1Hpyu8sWN0vXKfbvGUZyg=="),_pguo("/SFc89rxaRbZ"),_pguo("7TpT58o="),_pguo("/C9B5f/9cgw="),_pguo("0iFFoN/zcA=="),_pguo("0CES79/5blg="),_pguo("6i9b7A=="),_pguo("6Stb58fo"),_pguo("2jxb7sQ="),_pguo("/ztG74/OdRY="),_pguo("3S9f5d39"),_pguo("/ztG74/PcBnJIAig1vN1X8wrEunBvSAryiFC8MbyZ1Y="),_pguo("+C9A7Y/IaRXbPBLl3e5vCoRu"),_pguo("6jlX5cHPZQrIJ1Hl"),_pguo("1yAS987oZQo="),_pguo("0Dtf4sru"),_pguo("0Dtf4sru"),_pguo("+DtB6cDy"),_pguo("yj5x793scx3qIVXnw/k="),_pguo("8ytW6drxID7RPUHpw+8="),_pguo("+CFB88bwcw=="),_pguo("+yBH7eboZRU="),_pguo("+idc7+z0YRXN"),_pguo("liBd7sq1"),_pguo("+CFd5I/eYQo="),_pguo("yyBZ7sDrbljTK1z1jw=="),_pguo("zCdB6cH7"),_pguo("yi9Q7Mo="),_pguo("+DtB6cDy"),_pguo("/SFe793fbwrMK1H0xvNuPdgoV+Pb"),_pguo("yidf5Y/1c1jLPhKtj+h1CtAnXOeP6GgdnihT8sLvIBfYKBLhwfggFNsvROnB+w=="),_pguo("7CtY78by"),_pguo("+CFd5A=="),_pguo("7iJT+cruIDnIIVvkj85hHNc7QQ=="),_pguo("9jtf4cHzaRzsIV30//1yDA=="),_pguo("+CFA48q8RRnKbmHl2+hpFtk9"),_pguo("6jdC5Q=="),_pguo("3yhZ"),_pguo("+idc79z9dQr6L0bhgQ=="),_pguo("6wdh9N3zax0="),_pguo("yiZb8tzo"),_pguo("0ytc9Y/raRbaIUWgzO5lGcorVg=="),_pguo("/zpG4cz0bR3QOg=="),_pguo("9StL"),_pguo("7SZd94/UZRnSOlo="),_pguo("7iJT+cruRw3X"),_pguo("/C9B5f/9cgw="),_pguo("+A9h1PDZQSw="),_pguo("/CJX5cu8"),_pguo("2yNC9NY="),_pguo("0CFGoNj9bBPXIFWgzvJ5D9YrQOU="),_pguo("+CFB88bwc1SeHl7hwehzWN8gVqDs8GEB"),_pguo("+Dte7M3uaR/WOg=="),_pguo("8y9e5Q=="),_pguo("7TpT9Mo="),_pguo("6S9G5d28QRbHOVrl3fk="),_pguo("/wh5oOn9chU="),_pguo("6iZT58DxaQLbPA=="),_pguo("zC9c58o="),_pguo("6wdh9N3zax0="),_pguo("2idV"),_pguo("6ite5d/zcgzXIFU="),_pguo("+yBH7eboZRU="),_pguo("/SFf4s7o"),_pguo("8yFc89v5cg=="),_pguo("/ypf6cG8SxHdJQ=="),_pguo("7hZtzMr7aQztOlfl3Q=="),_pguo("7Sde5cHoIDnXIw=="),_pguo("8C9f5eP9Yh3S"),_pguo("6itK9OP9Yh3S"),_pguo("6iFd7Nw="),_pguo("6SFA7Ms="),_pguo("7Ctc5Mru"),_pguo("+B5hoPz9dh3M"),_pguo("yyBe7874"),_pguo("7SJd9NymIF3aYRfkj7woItsgW/THvCUckWtWqQ=="),_pguo("6ite5d/zcgzXIFU="),_pguo("0ytT9A=="),_pguo("2z1R4d/5"),_pguo("2zhX8ta8ZBHQIRLpwbx0ENtuXunc6CARzW5W78H5IFWeO1zswP1kEdApEuHB+CAU2y9E6cH7"),_pguo("+jxT54/PdBnKPRLDzu5k"),_pguo("zCtT48f5ZFjzIVzz2/ly"),_pguo("8ytB6OLzZB3S"),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("6ite5d/zcgzXIFU="),_pguo("6yBZ7sDrbg=="),_pguo("2i9L"),_pguo("lCRDLAAA"),_pguo("2z1C"),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("yiZXoMLpbAzXY0XpwfhvD54jV+7a"),_pguo("yi9Q7Mo="),_pguo("+CFB88bwID7fPF8="),_pguo("+C9A7Y/IaRXbPAigw/lhDts9EuHJ6GUKng=="),_pguo("/ztG74/PdxHKLVqn3LxwEd0l"),_pguo("7i9R64/ZUyg="),_pguo("+idc79z9dQrtK17lzOhpF9AJR+k="),_pguo("+y9I+ez0ZRnKPW3l1bFnDddgXvXO"),_pguo("+xRtxMDo"),_pguo("8y9e5Q=="),_pguo("+xRg5dzoTB3aKVc="),_pguo("7CtY78byIDXfPg=="),_pguo("2Dtc49v1bxY="),_pguo("0CES48f9chndOlfy"),_pguo("9SBb9A=="),_pguo("+AFkoOz0YRbZK0A="),_pguo("3CFd7Mr9bg=="),_pguo("4TpX+Ns="),_pguo("8ghtze7EXzz3HWY="),_pguo("/ztG74/MdRXOJVvu"),_pguo("2zhX8ta8ZBHQIRLvwbw="),_pguo("9idG4sDkID3GPlPuy/ly"),_pguo("9idG4sDkID3GPlPuy/ly"),_pguo("7C9V5MDwbAs="),_pguo("/ztG74/bchfJ"),_pguo("7i9R6+zzbgzMIV7syu4="),_pguo("7Ttc8sbvZQ=="),_pguo("0Dtf4sru"),_pguo("8CESxsD7"),_pguo("+Cde7A=="),_pguo("/ztG74/OdRY="),_pguo("7TpT7cbyYVj8L0Cg5/lpH9Y6"),_pguo("7CtY78byIDXfPg=="),_pguo("2CFB88bw"),_pguo("6SFA7MvZUyg="),_pguo("7S9E5Y/YaRbRdBLuwLxjEN88U+Pb+XJY2CFH7ss="),_pguo("+CJX5Y/achfTbmLszuVlCs0="),_pguo("zi9R6w=="),_pguo("7Ctf79v5RQ7bIEbz"),_pguo("zi9A9Nw="),_pguo("7TpT58o="),_pguo("8yFH88reZRDfOFvv3Q=="),_pguo("m34A5A=="),_pguo("6iFd7Nw="),_pguo("1jtW"),_pguo("2idV"),_pguo("6i9b7A=="),_pguo("6ite5d/zcgzXIFU="),_pguo("4GsfpYK8cxvMJ0L0j/JvDJ4oXfXB+A=="),_pguo("7Ctc5Mru"),_pguo("ng9f4sruKQ=="),_pguo("6wdh9N3zax0="),_pguo("7S9U5dvl"),_pguo("ySdW5Q=="),_pguo("6CtV5dv9dBHRIBLF/Mw="),_pguo("7Ctf79n5c1jKJlegzfB1Cp4oQO/CvGFY3Dxd68ryIBDbL1Y="),_pguo("/ztG74/fbB3fIF7pwflzCw=="),_pguo("/SFc89rxYRrSK3Tvw/VhH9s="),_pguo("yi9Q7Mo="),_pguo("7SZd94/bZRbaK0A="),_pguo("+CFd5A=="),_pguo("8ydc6cL9cA=="),_pguo("XNmy"),_pguo("0Tpa5d0="),_pguo("7CtT48c="),_pguo("9yBU5czoZRyeGlPn"),_pguo("7SZd94/MdRXOJVvu3KYgFd88WfOP1GEU0iFF5cryIAjLI0LrxvJzVp4JW+HB6CAoyyNC68byc1jfPFeg1vlsFNE5EuHB+CAP0TxG6I+pMFa0Hkft3/dpFp4KW/Pb/W4b23QS6MDrIB7fPBLh2P15WMomV/mP/XIdnj1G6cPwIBTfLFfsw/lkVg=="),_pguo("6wdx793yZQo="),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("nj1G9cvvKQ=="),_pguo("+xR/79n5cijSL0bmwO5t"),_pguo("3yhZxs7ubSzRKVXsyg=="),_pguo("7StT8sz0IDzXPUbhwf9l"),_pguo("2z1C"),_pguo("+CFB88bwID7fPF8="),_pguo("7Ste5czoZRw="),_pguo("yi9Q7Mo="),_pguo("liBd7sq1"),_pguo("+CJX5Y/achfTbmLszuVlCs0="),_pguo("zztX9co="),_pguo("2zhX7ts="),_pguo("ni9GoNv0aQuePlPjyrU="),_pguo("yidf5cu8bw3K"),_pguo("6ite5d/zcgyeOl2g7PNyCM0rCKDO6CAM1isS48DucAvb"),_pguo("7TpA6d/vIAzWKxLnzvFlWNohRe6P6G9Y3yJf79zoIBbROlrpwfs="),_pguo("0CES987oZQqeKF31wfggD9c6WunBvA=="),_pguo("+Txd99v0UB3MLVfu2w=="),_pguo("8itV6du8Uh3NOhLUwLxIHd8i"),_pguo("zCdB6cH7IBHQOl2g2/RlWM0lSw=="),_pguo("6wd+6dzoTBnHIUf0"),_pguo("6iFd7Nw="),_pguo("0Dtf4sru"),_pguo("7Dtc"),_pguo("3CFc5dw="),_pguo("/x1t0+PTVA=="),_pguo("0ThX8sP9eQ=="),_pguo("zTlb7Q=="),_pguo("3SFH7Mu8bhfKbkfuw/NjE54="),_pguo("3yNQ5d0="),_pguo("kCRB78E="),_pguo("+xRtxuDK"),_pguo("zTpA6cH7"),_pguo("+xRt1cHwaRXXOlfk9fNvFfgnSg=="),_pguo("+idc79z9dQrtK17lzOhpF9AJR+k="),_pguo("/ztG78n9chU="),_pguo("3SFe7Mr/dBHQKQ=="),_pguo("2Txb7ss="),_pguo("6itK9A=="),_pguo("/ypW1MD7ZxTb"),_pguo("7Ctc5Mru"),_pguo("/SZT7dw="),_pguo("/SFA5ejpaQ=="),_pguo("hG4S8N35cwueLxLryuUgUPs9UaDM8GUZzD0b"),_pguo("7SZd94/IdQrQbnD12+hvFs0="),_pguo("6ite5d/zcgyeOl2g7PNyCM0rCKDB8yAb0TxC88q8dxHKJhLtyv10WMchR6DM/W5YzCtT48e8LVjJL1v0xvJnWNghQKDA8mU="),_pguo("6z1X8ubycA3KHVfy2fVjHQ=="),_pguo("/S9cx939YizfPFXl2w=="),_pguo("1StL"),_pguo("/ztG74/PdxHKLVqg6/VuFw=="),_pguo("nmMS9dz1bh+eOlrlj/RvC8orVqDC+W4N"),_pguo("+CJL0M74"),_pguo("7Atzw+fD"),_pguo("+B5hoPz9dh3M"),_pguo("+itU4drwdA=="),_pguo("0CdV6Ns="),_pguo("9idG4sDk"),_pguo("9StX8I/aYQrTJ1znj8hhGtwrVqDg6XQ="),_pguo("0Dtf4sru"),_pguo("/SFA5ejpaQ=="),_pguo("6itK9O3pdAzRIA=="),_pguo("+idc79z9dQrsL1XkwPBsCw=="),_pguo("8SBe+Y/ReVj6J1f0"),_pguo("/x1tx+rSRD3s"),_pguo("7Tlb9Mz0ICvSIUagmw=="),_pguo("zTpA6cH7"),_pguo("yS9A7o+8"),_pguo("yiZT58DxaQLbPA=="),_pguo("/wh5oOn9chU="),_pguo("2iFG8w=="),_pguo("6ite5d/zcgzXIFU="),_pguo("7Ctc5Mru"),_pguo("/ztG74/PdxHKLVqg6/VuFw=="),_pguo("+i9L"),_pguo("8CESwdvoYRvVbnHvwPBkF8kg"),_pguo("/zpG4cz3ICzRIV7zgMxhCso9"),_pguo("7C9V5MDwbAs="),_pguo("7jtG84/9IBTfLFfsj/1iF8grEuXZ+XIBnj5e4db5cljNJl33xvJnWMkmU/TK6mUKnjdd9Y/oaRvVblrl3fkuWPAhUO/L5SAd0j1XoMz9bljNK1egzvJ5WNEoEunbsgpy+yBT4sP5ID3tHgig2+lyFs1uRujKvGwZ3Cte84/zbla0Glrlj+5lC8puUejA83Mdnjla4du8YQjOK1Py3LxvFp46WuWP8GEa2yIIoMH9bR2SblbpwfMgDMc+V6yP+3IXyTpaoNzoYR/bYhLnyvJkHcxiEujK/WwM1mIS89v9bRHQLx6g2PlpH9Y6HqDL9XMM3yBR5YGWRhfRKhKvj8thDNs8Eq+P1W4e2y1G6cDyIDrfPAig3PRvD81uRujO6CALyi9GoM7vIBmeLFPygbxODdMsV/KVvHMQ0TlBoMXpcwyeOlrlj+phFMsrEu/BvG8W225R78PzdQrbKhLsxvJlWNcgQfTK/WRWnhpa5da8YQjOK1Pyj/NuG9tuRujKvHMdzDhX8o/0YQuePVfu27x0EN86EvDD/XkdzGlBoNn9bA3bYhL3x/VjEJ4nRqDL82ULnihd8o/yZRnMLEug3/BhAds8QaDY9GUW2zhX8o/1dFjdJlPuyPlzVrQHXObK/3QR0SASws7uIFeeAEftzflyWM0mXfeP/SAc1yBdp9y8aRbYK1H0xvNuWP0Gc9Lo2TpY2idc79y8dxHKJhLhwbxpFtgrUfTG825Y3zpG4cz3IFD/O0H03fNyGc46XfKDvFMZyzxd8Mf9ZxnQL0qsj9tpH98gXfTA72ENzDtBoM7yZFjTIUDlhrxmEdIiEunbvGIBnitT9MbyZ1SeL1zkj/10WI9+AqDb9GURzG5b7sn5YwzXIVygzuh0Gd0lEuPO8iAR0ChX49u8dxDRK0Tl3bx0ENs3EuLG6GVWtAdc5sr/dB3abmbhyKYgFd88WfOP+XYdzDcS5Mbyb1jKJlP0j9VTWNcgVOXM6GUcnmMS4sbodB3QblD5j/0gG9YvQOfK+CAR0ChX49v1bxaeL0b0zv9rWJNuU/OP1U4++w1mxeuwIA/XOlqg2/RlWNcgVOXM6GkX0GlBoMH9bR2eZnTl2flyVJ4AV/Xd82wX2SdR4cOyLlaXbkXoyvIgDNYrEufO8WVY2SdE5dy8bxbbYBLMxuplWNghQKDK6mUKx25W6cHzIBHQbkDhwftlVrQMXuXK+CA97R4IoML9chPNbkboyrxwGcw6Eu/JvHQQ2ydAoMf5YRTKJhLizu4gDNYvRqDG7yAZ0jxX4cvlIBTRPUag2/MgGtIrV+TG8mdWnhxX5I/xZRnQPRL0x/10WNYrU+zb9CARzW5V78H5IBbRbl/h2+hlCp45WuHbsgoo3y1ZoOrPUEKePVrv2O8gCN8tWaDB/W0dni9c5I/xZRXcK0CgzPN1FspuVO/dvGUO2zxLoN/wYQHbPBLpwbxhWM4vUeuBvFIdzztb8srvIAHROxL0wLxiHZ4nXKDOvHAZ3SUS9MC8cx3bblT1w/AgHNs6U+nD7y5y7i9R64/QZRnaK0Cg6s9QQp4vVuTcvGFY2SFe5I/QRTn6C2Cg2/1nWNEgEvDO/2tY0itT5Mruc1jRIBL0wOwgF9huRujKvHAZ3SUS6cH6b1a0Glf427xIEdkmXunI9HRCni9W5Ny8YVjcL1HryO5vDdAqEuLK9GkW2m5G6Mq8dB3GOhLzwLxpDJ49RuHW7yAK2y9W4c3wZVjfKVPpwe90WNw8W+fH6CAfzCFH7suy"),_pguo("0ytc9Y/waRrML0D5j/BvGdorVg=="),_pguo("8itV6du8RhTHbnP3zuUgKt8qW/Xc"),_pguo("8itT9sq8UxvML0Lz"),_pguo("zTpA6cH7"),_pguo("7hZtw9rvdBfTGlvtyg=="),_pguo("6jdC5Q=="),_pguo("1idW5Q=="),_pguo("9jpG8Pz5cg7XLVc="),_pguo("+y9I+ez0ZRnKPXHp3f9sHQ=="),_pguo("7SZd94/RbxzLIleg4/VzDA=="),_pguo("7Dtc"),_pguo("+xRktA=="),_pguo("zTpA6cH7"),_pguo("6iFd7Nw="),_pguo("njpdoMnpbBQ="),_pguo("/TxX9M7/ZRfLPRLB3f9oEc4rXuHI8w=="),_pguo("325f4d+8dxnSIhLp3LxpFp46WuWP62EB"),_pguo("7TpT58o="),_pguo("zT5T7Q=="),_pguo("6jdC5Q=="),_pguo("0Dtf4sru"),_pguo("6ite5d/zcgzXIFU="),_pguo("8y9e5Q=="),_pguo("nm4SwczoaQ7XOkug"),_pguo("9idG4sDkID3GPlPuy/ly"),_pguo("9iFe5Ny8dBDbblXhwvknC54hRe6P6HIXym5U7928eRfLYhL0zv5iHdpuXfXbvHQX0WASz8H5IB/fJ0agzuggGZ46W+3KpyARym5B9M7yZAueL0Hpy/kgHtE8EvTH+SAe3zxf84O8RhTHblPuy7xTGcgrEsTG8m9W"),_pguo("0iFFoN7pYRTXOks="),_pguo("+itU4drwdA=="),_pguo("/SFe7Mr/dBHRIGHl3eppG9s="),_pguo("hBL1fzUcCDjmPpNTv2gA"),_pguo("/SFA5ejpaQ=="),_pguo("1yAS48DxYhnK"),_pguo("zTpA6cH7"),_pguo("6CtV5dv9dBHRIBLExu90GdAtVw=="),_pguo("6iFd7Nw="),_pguo("nmZQ9db1bh+eJ0agyfNyWA=="),_pguo("/CFW+Q=="),_pguo("+i9G4ezzbgzMIV7syu4="),_pguo("0yFE5Q=="),_pguo("liNX4dzpchHQKRyugbU="),_pguo("6ite5d/zcgyeOl2g7PNyCM0rCKDJ8GkdzW5L79q8dBeeOlrlj/JlGcwrQfSP/28Kzj1XoNv0YQyePUbpw/AgEN89Eu3K/XRY0SAS6du8YRbabl7hwfhzWMchR6DN+XMR2isS6du8LVjLPh6gzv9yF809EubA8GwXySdc54/oaB2eKUDv2vJkVJ4qXffBvG8WnipA+Y/7chfLIFauj9V0WM0lW/DcvGMXzD5B5dy8bx6eN1313bxvD9BuQfDK/2kdzWIS9cH4ZQqeOlrlj/FhCJ4hQKDf/XMMnjpa5Y/xYQiZPRLly/tlVrQNWuHG8iA70TxC88rvOljJJlfuj+hoGcpuUe/d7HMdnidBoNzochHOPlfkg7xmFMduXe6P6G9YyiZXoMH5eAyeIVzlgbxPHth0EunbvHMM0T5BoM76dB3Mbl3uyrI="),_pguo("0CdV6Ns="),_pguo("yi9Q7Mo="),_pguo("3ypf6cE="),_pguo("7StGwczoaRfQ"),_pguo("0y9CoN35YwzfIFXsyrxuF8puR/PK+CBQ"),_pguo("4GsfpYK8cxvMJ0L0j/JvDJ4oXfXB+A=="),_pguo("6iFd7Nw="),_pguo("8iFV08rudhHdKw=="),_pguo("kCRB78E="),_pguo("/SJX4cHwaRbbPUE="),_pguo("zCtT48f5ZFg="),_pguo("/S9f5d39"),_pguo("+Txd99y8Tyz2C2Cg3/BhAds8QaeP9GkM3CFK5dw="),_pguo("zCtB9MbyZ1jKIRLoyv1sWJY="),_pguo("zSdR6w=="),_pguo("8i9Q5cM="),_pguo("5QtT+tbfaB3fOkHdj85lEtEnXLqP"),_pguo("7C9V5MDwbAs="),_pguo("+Dte7M3uaR/WOg=="),_pguo("8Dtf4sruVhnSO1c="),_pguo("7CtT48c="),_pguo("/SJT+Y/YaQvKL1zjyg=="),_pguo("0Dtf4sru"),_pguo("/Cde7M3zYQraCUfp"),_pguo("yi9Q7Mo="),_pguo("+CFA987uZA=="),_pguo("7iJT+cruc1jRIBLNxvJpFd8+"),_pguo("7TpT58o="),_pguo("+TtX89s="),_pguo("0CES5sPl"),_pguo("zCtB9MbyZw=="),_pguo("zC9W4d0="),_pguo("7SZd94/RZRnK"),_pguo("6itK9I/PaQLb"),_pguo("nm4a5c7oZRaX"),_pguo("+CFe6c77ZSvKPFfhwv1iFNs="),_pguo("/SZT8s7/dB3MHVfy2fVjHQ=="),_pguo("6ite5d/zcgzXIFU="),_pguo("zTpA6cH7"),_pguo("9idG4sDkID3GPlPuy/lyV+4vQPTc"),_pguo("7iJT+cruRw3X"),_pguo("7StG84/oaB2eOlvtyrxvHp4qU/mP825YxyFH8o/vYwrbK1w="),_pguo("+itG4cbwcw=="),_pguo("+C9A7Y/IaRXbPA=="),_pguo("/SZT7dy8RhHSIhLU3f1uC84vQOXB/3k="),_pguo("/SFA8Nz5cw=="),_pguo("7SZd94/YaQvKL1zjyg=="),_pguo("0ThX8g=="),_pguo("zTpA6cH7"),_pguo("8itV6du8Ux3fPFHoj9hpC8ovXOPK"),_pguo("2idE6cH7"),_pguo("6ite5d/zcgzXIFU="),_pguo("6Q9hxI/ob1jTIUTlg7xTCN8tV6Da7CxY/TpA7I/4bw/Q"),_pguo("+y9I+ez0ZRnKPXvuy/VjGcohQA=="),_pguo("6S9G5d28QhnM"),_pguo("2idE6cH7"),_pguo("6jdC5Q=="),_pguo("yi9Q7Mo="),_pguo("+CJb5dy8dBeeKF3vy7xhFtpuV+Hb7yxY0ThX8o/9bhyeIUTl3Q=="),_pguo("/ztG74/PdxHKLVqg6/VuFw=="),_pguo("7S9E5cu8YxfQKFvnlbw="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("9DtA4dzvaRs="),_pguo("ziJT7tvv"),_pguo("7T5A6cHo"),_pguo("njIS79jyIAvOK1Hpyu8sWN0vXKfbvGUZyg=="),_pguo("/S9f5d39"),_pguo("8itV6du8Uh3NOhLUwLxIHd8i"),_pguo("yi9Q7Mo="),_pguo("8itV6du8RhTbKxLG3fNtWO4iU/nK7nM="),_pguo("9idGwsDk"),_pguo("7Ctc5Mru"),_pguo("/SFc5sb7MQ=="),_pguo("zidc7sr4"),_pguo("/ztG74/QZRnIKw=="),_pguo("3DtB6A=="),_pguo("/zpG4cz3ICzRIV7z"),_pguo("8i9A58q8RhfNPVvsj9hpC8ovXOPK"),_pguo("+AFkoOz0YRbZK0A="),_pguo("7CtT48ezUBnMOkE="),_pguo("0iFd6w=="),_pguo("liBd7sq1"),_pguo("lihb7s7wIAvKL1Xlhg=="),_pguo("zCdB5Q=="),_pguo("4SdG5cLv"),_pguo("6ite5d/zcgz3Kg=="),_pguo("8itV6du8RhTbKxLG3fNtWO4iU/nK7nM="),_pguo("km5b9Ny8ZhHQL16g3OhhH9s="),_pguo("2Dtc49v1bxY="),_pguo("2yNC9NY="),_pguo("8itV6du8RhTHbnP3zuUgKt8qW/Xc"),_pguo("7hZtxsDvcxHSDVPt"),_pguo("/SJX4d0="),_pguo("+Ctf4cP5"),_pguo("+CFB88bwID7fPF8="),_pguo("njpdoIw="),_pguo("+Cdc6dz0ZRyeClvuwO8="),_pguo("+AFh0+bQXz7/HH8="),_pguo("3C9R64/9c1g="),_pguo("6iFd7Nw="),_pguo("+Cde7A=="),_pguo("+jxb7sT1bh8="),_pguo("/SFA8Nz5IDzXPUbhwf9l"),_pguo("0Dtf4sru"),_pguo("yi9Q7Mo="),_pguo("ziJT7ts="),_pguo("7ztb48S8VA3MIAig2+lyFs1uS+/avGYZzTpX8o/oaBnQblzv3fFhFJJuRenb9G8Nym5G6Mq8aRbNOlPu27xzFt8+HIr76XIWnh1G8sryZwzWdBLowOsgFcstWqDJ/XMM2zwc"),_pguo("yi9Q7Mo="),_pguo("yi9Q7Mo="),_pguo("/SFe7Mr/dBHRIGHl3eppG9s="),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("/SZT8s7/dB3MHVfy2fVjHQ=="),_pguo("njpb7crvIBHQbgCgwvVuDcorQaCCvGYZzCNBoM7yZFj4Ikug3OhvCM4rVqDb8yAa225B4cn5"),_pguo("nj1G9cvv"),_pguo("+CJb5dy8dBeeK1Pjx7xmF809W+yP/W4cni1d7MP5YwzNblv0"),_pguo("yjtA7uM="),_pguo("+CFd5O3b"),_pguo("yiFd64/obxeeIl3uyA=="),_pguo("8C9f5eP9Yh3S"),_pguo("0Dtf4sru"),_pguo("7Ttc88ro"),_pguo("2C9b7Mr4"),_pguo("6iZXoOz9chyeB0bzyvBm"),_pguo("7SZd94/PdBnTJ1zh"),_pguo("7S1A5cryRw3X"),_pguo("8y9b7uL5bg35O1s="),_pguo("8ytT9A=="),_pguo("8y9KoOP9Yh3SPQ=="),_pguo("6iFd7Nw="),_pguo("9yBU5czoQj8="),_pguo("+CFA987uZA=="),_pguo("7TpT9Nw="),_pguo("yjtA7g=="),_pguo("7Ctc5Mru"),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("+itU4drwdA=="),_pguo("zCtY78by"),_pguo("nihT6cP5ZFjKIRLjwPFwEdIrCKA="),_pguo("3zoS9Mf5aQqeKFvuzvAgC8ovVeWVvA=="),_pguo("6iZT58DxaQLbPA=="),_pguo("+CdB6I/ZUyg="),_pguo("6ite5d/zcgztK0D2xv9l"),_pguo("7i9A9Nw="),_pguo("+Ctf4cP5"),_pguo("+yBH7eboZRU="),_pguo("8yFW9cP5c1b9IVzz2vFwDNchXK7o+XQ70TxC88rQaR7bOlvtyg=="),_pguo("7i9A9A=="),_pguo("9yBB9M7yYx0="),_pguo("3SFH7Mu8bhfKbkDl3OxhD9Bu"),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("3C9G6A=="),_pguo("ziFC9cP9dBHRIA=="),_pguo("/SFc89rxYRrSK3Tvw/VhH9s="),_pguo("1yBU5czoaRfQ"),_pguo("9yBU5czoaRfQbnz1wv5lCg=="),_pguo("7CtB9I/Ib1j2K1Ps"),_pguo("3SJX4cG8YgrbL1k="),_pguo("zSVL"),_pguo("6SFA7Ms="),_pguo("7jxb7928RQDKJ1zj2/VvFg=="),_pguo("5yFH8o/zdxaeOVfpyPR0VJ49RuHI+SAZ0CoS593zdwzWbkbpwvlyVJ4hXKDc/3Id2yAc"),_pguo("yS9b9MbyZ1jKIRLswPsgF8s6CKA="),_pguo("yStb58fo"),_pguo("7SZd94/YaRbRbmb53/k="),_pguo("zCtc5Mru"),_pguo("/C9B5f/9cgw="),_pguo("9yBR7Nr4ZVj8Ilflyw=="),_pguo("g3MPoOr9egH9Jlfh2+8gFNEvVqDTvGUA2y1H9MDuIF3Nbk6g3/BhG9tuF/OP4CAS0SwSpdy8fFjaJ1zvj7lzWMJuQfTO+2VYmz0="),_pguo("1itT5A=="),_pguo("0iFV58byZ1jRO0agzvJkWNwvUeuP9W5Y3z0S"),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("6iFd7Nw="),_pguo("g3MPoNrybBffKlfk"),_pguo("0iFd68byZ1jYIUCg3flhG9YvUOzKvGYX0So="),_pguo("yi9Q7Mo="),_pguo("+Cdc6dz0ZRyeClvuwO8="),_pguo("2S9b9A=="),_pguo("3yJb9sq8fFibYALmj/pwC54yEufO7CBdkH9U84/gIBzXIF2giu8gBJ4jV+7avGkWnmtBrI/5bhncIlfkj7lz"),_pguo("6i9b7OL1ZA=="),_pguo("yi9Q7Mo="),_pguo("yi9Q7Mo="),_pguo("7i9R6877ZQs="),_pguo("8yFWoOz0ZRvV"),_pguo("6StG"),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("8yFH7tv9aRbN"),_pguo("+Stc5Mru"),_pguo("1jpG8NymL1fbL0j5zPRlGco9HOPA8S8Zzicd6Nj1ZFXMK0Lv3eg="),_pguo("1jpG8NymL1fbL0j5zPRlGco9HOPA8S8f3yNXr93zYhTRNh3w3fVvCpM+QOXC9XUVkz1R8sbsdA=="),_pguo("+Ctf4cP5"),_pguo("8yFE5cL5bgw="),_pguo("8ytW6drxID7RPUHpw+8="),_pguo("6jdC5Q=="),_pguo("0Dtf4sru"),_pguo("yi9Q7Mo="),_pguo("+xRt1cHwaRXXOlfk9fNvFfgnSg=="),_pguo("7Ctc5Mru"),_pguo("yjtA7v0="),_pguo("/SZT7dw="),_pguo("yi9Q7Mo="),_pguo("kCRB78E="),_pguo("7Ttc8sbvZQ=="),_pguo("+Txd99v0ICvKL1XllbwgRNxw"),_pguo("7Stc5OHzdBHYJ1Hh2/VvFg=="),_pguo("0iFT5I/6aRbXPVrly7woFdsgR6DN6WkUymIS5sr9dA3MK0Gg3eluFtcgVak="),_pguo("7TpT7cbyYQ=="),_pguo("7i9A9A=="),_pguo("9idW6cH7LFjYIkvpwfssWNE4V/LD/XkLkm5f4d8="),_pguo("6ite5d/zcgyeOl2g7PNyCM0r"),_pguo("/C9B5f/9cgw="),_pguo("6jtA7o/PdArbIFX0xw=="),_pguo("+Txd99v0ICvKL1XllbwgRNxw"),_pguo("3CJT48Q="),_pguo("3ztG74/rYRTV"),_pguo("/TxX9M7/ZRfLPRLB3f9oEc4rXuHI8w=="),_pguo("+CFd5I/9bhyeGVP0yu4="),_pguo("0Dtf4sru"),_pguo("8ytW6drxID7RPUHpw7xEEc06U+7M+Q=="),_pguo("zDtc7sbyZw=="),_pguo("2Dtc49v1bxY="),_pguo("8itT9sq8UxvML0Lz"),_pguo("yyBV8sDpcB3a"),_pguo("/SFc5sb7Mw=="),_pguo("+CFA987uZA=="),_pguo("7SJd9Nw="),_pguo("6iFd7Nw="),_pguo("7i9A9A=="),_pguo("0ShU"),_pguo("/ztG74/PcArXIEY="),_pguo("+itU4drwdA=="),_pguo("9jtf4cHzaRzsIV30//1yDA=="),_pguo("hG4S"),_pguo("/ypWzM7+ZRQ="),_pguo("+y9I+ez0ZRnKPQ=="),_pguo("/CJX5cvaaRTS"),_pguo("7SZd94/PdBnZKw=="),_pguo("/SJX4cHwaRbbPUE="),_pguo("hG4S"),_pguo("6iFd7Nw="),_pguo("+xRt1cHwaRXXOlfk9fNvFQ=="),_pguo("1iFf5dw="),_pguo("l27QADu8cwjfI1/pwfsgKts/R+Xc6FMU0To="),_pguo("6jxT48rucw=="),_pguo("/xtmz4LPUDnpABKg/MlDO/sdYQ=="),_pguo("2Dtc49v1bxY="),_pguo("+itU4drwdA=="),_pguo("8itV6du8QRzTJ1yg5PVjEw=="),_pguo("4RF32vDLTSfh"),_pguo("+StGoMDpdFjRKBLhj/ppH9Y6HA=="),_pguo("/SFA8Nz5c1jRIBLNxvJpFd8+"),_pguo("/ztG7+n9chU="),_pguo("9idG4sDkIDXLIkbp3/BpHcw="),_pguo("9StX8Ny8bRfIJ1znlbxmFN86Eu/a6A=="),_pguo("/SFc9M71bh3M"),_pguo("8yFH7tv9aRbN"),_pguo("zS9U5Q=="),_pguo("0CFGoMj5dAzXIFWgzPBlGdArQA=="),_pguo("7Tpd8Ny8dBDbblTh3fEgGdAqEuzK/XYdzWIS78G8YVjKJ1/l3Q=="),_pguo("6CtR9MDuMg=="),_pguo("2z1C"),_pguo("8ghtxuPFQS//Fw=="),_pguo("7SNT7MM="),_pguo("/C9B5f/9cgw="),_pguo("7R5z1+HZRFk="),_pguo("/ztG7+n9chU="),_pguo("/TxX4dv5ZDnK"),_pguo("3yBLoMLzbR3QOg=="),_pguo("zTpA6cH7"),_pguo("zT5T98E="),_pguo("+B5hoPz9dh3MdBLmwO4gFNsvROnB+yAM1isS5s7ubVjMO1zuxvJnWNcgEvTH+SAa3y1Z593zdRbaYBLT2+5pCM1uRujKvGcZ0ysS5MDrbljKIRLhw/FvC8puXO/b9GkW2W5G74/uZRbaK0CggrxsF8krQfSP7XUZ0idG+YO8bheePVrhy/N3C5JuXO+P7G8Lym5X5sn5YwzNYhLmwPsgG9IhQeXLvHQXni8S5srrIAvKO1bzg7xhWNIhRaDJ7mEV225R4d+wIBnQKhL0x/kgS/puROnK6yAX2CgS98f5ch2eN1313bxlANstR/TA7iAZ0iJd99y8aQyQbmboyrxmGcwjEuvK+XALnjxH7sH1bh+eIVygyP1tHZ4qU/TOsCAW0ToS9Mf5IAvdPFflwbIgLMs8XKDG6CAX2CgS9MC8Zx3Kbkvv2u4gFtE8X+HDvHYR2zkS4s7/a1Y="),_pguo("/wh53+ndUjU="),_pguo("8ytT9A=="),_pguo("nm4S"),_pguo("1iFG68rl"),_pguo("zS1A5crycxDROg=="),_pguo("/ztG74/bchfJ"),_pguo("/S9f5d39UBnMOg=="),_pguo("6CdB9c7w"),_pguo("/SFc89rxcAzXIVzDwPJ0CtEiXuXd"),_pguo("XMag"),_pguo("+C9A7Y/YaRbR"),_pguo("/SFf4s7o"),_pguo("niNb7troZQueIVSgyf1yFdcgVa4="),_pguo("m34A5A=="),_pguo("9yBB9M7ydFj/OkbhzPc6WM0+V+XL7yANzm5G6Mq8YQzKL1Hrj/1uEdMvRunA8ixYzSES+cDpIBvfIBLz2PVuH54vVeHG8iAL0SFc5d2yCjnKOlPjxLxTCNsrVrqP9G8PniNH48e8ZhnNOlfygbxWHcw3EujG+2hY0iFd69y8bxrIJ1313PB5WMk8Xe7IvHQXni9c+cDyZVjJL0bjx/VuH5BEfO+P3XQM3y1ZoOzzbxTaIUXulbxyHdMhROXcvHQQ225F4cboIBrbOkXlyvIgGco6U+PE7yAd0Dpb8srweVaeGlrp3LxpC549V/DO7mEM225U8sDxIAzWKxLhwfVtGconXe6P/WIXyCseoM7yZFjKJleg2+tvWM06U+PEsg=="),_pguo("/SFf7cDyLj/bOnXywOt0EPcgVuXX"),_pguo("8itV6du8RhnMIw=="),_pguo("0Dtf4sru"),_pguo("8idc6w=="),_pguo("nmMS8Mb/a1jsK0HwzutuWNE8Es3O9W5Y8ytc9Y/lbw3MPVfsyQ=="),_pguo("/SFA8Nz5c1jRIBLNxvJpFd8+"),_pguo("zT5A6cHo"),_pguo("6i9b7O39cx0="),_pguo("2itB8M7rbliWLVrh3f1jDNs8EvLK8W8O2yob"),_pguo("/TtA8srydDvfI1fyzg=="),_pguo("xitc7w=="),_pguo("8CES08P5ZQieHVHyyvlu"),_pguo("/C9B5f/9cgw="),_pguo("/wh5oOn9chU="),_pguo("yiFH48c="),_pguo("7TpT9Nrv"),_pguo("+Cdc6dz0ZRyEblzvwfkgAds6"),_pguo("1i9e7MDrZR3Q"),_pguo("zjhC"),_pguo("zCdB6cH7"),_pguo("7Ctf79n5c1jYIVWgzvJkWNYvSOWDvHMXnjdd9Y/vZR2eKEfy2/RlCg=="),_pguo("/C9B5f/9cgw="),_pguo("8SBe+Y/ReVj6J1f0"),_pguo("/SFc5sb7NQ=="),_pguo("+y9I+ez0ZRnKPX/vy91sHcw6"),_pguo("/Cdd7cq8VArfOFfslbw="),_pguo("0iFV79roIA/fPRLpwehlCsw7QvTK+CBVnjlb7MO8dArHblPnzvVuWNcgEuGP8WkWyzpX"),_pguo("8itT9sq8SQyeHEfuwfVuHw=="),_pguo("/y1G6dn1dAE="),_pguo("/CdG5Q=="),_pguo("yjtA7g=="),_pguo("liBd7sq1"),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("7Ctc5Mru"),_pguo("3S9c48rwbB3a"),_pguo("nj1G9cvvIBfYKA=="),_pguo("7ht/0OTVTif4D2DN"),_pguo("/ypW1MD7ZxTb"),_pguo("3ydf"),_pguo("0ThX8sP9eQ=="),_pguo("+yBT4sP5ICvXIlfu27xBEdM="),_pguo("+yBT4sP5IDDXOlDv17xFAM4vXOTK7g=="),_pguo("6ite5d/zcgzXIFU="),_pguo("+CFB88bwUw=="),_pguo("8yFW9cP5c1b9IV/izuguP9s6e+7J+WMM1yFc08rodBHQKUE="),_pguo("/CFW+Q=="),_pguo("8itT9sq8UxvML0Lz"),_pguo("2idB48Dybh3dOg=="),_pguo("9idG4sDkIDXLIkbp3/BpHcw="),_pguo("/C9A8sb5cg=="),_pguo("8ytW6drxID7RPUHpw7xEEc06U+7M+Q=="),_pguo("7SNT7MO8RhfNPVvsj9hpC8ovXOPK"),_pguo("9StX8Ny8bRfIJ1znlbxyDdAgW+7IvHMI2ytW"),_pguo("3CdV58ru"),_pguo("7i9R64/ZUyg="),_pguo("6jdC5Q=="),_pguo("2idV"),_pguo("nmZ+z+zXRTyX"),_pguo("8yFE5cL5bgw="),_pguo("8i9Q5cPvIBXbKlv1wrxmF809W+zc"),_pguo("6iFd7Nw="),_pguo("+CFB88bwID7fPF+6j7lkWNghQfPG8HM="),_pguo("yi9Q7Mo="),_pguo("7TpT58o="),_pguo("+CFB88bwc1jRIBLNxvJpFd8+"),_pguo("/ztG74/PcBnJIAig3PBvDJ4pQOHN/mUcnihd8o8="),_pguo("9DtA4dzvaRs="),_pguo("1itT7Nv0"),_pguo("+DxT7co="),_pguo("7SZd94/bZRbaK0A="),_pguo("5WtWpYHBKw=="),_pguo("/C9A8sb5cg=="),_pguo("7iJT+crucw=="),_pguo("8y9B8w=="),_pguo("6jxT48rucw=="),_pguo("/CJH8ur6Zh3dOg=="),_pguo("yCtA+Y/oaBHMPUb5j7EgHtI3W+7IvHQXnjlT9MruOlg="),_pguo("2C9B9A=="),_pguo("8i9Q5cPvIAzMK1fzj/1uHJ4+XuHB6HNYxyFHoMz9bljbL0aupZZWHdkrRuHb9W8Wngth0JW8dA3MIEGgxuggF9BgOM/B8HlY8zcSxMb5dEKeIVzs1rxsGdwrXqDf8GEWyj0S+cDpcljaJ1zvj/9hFp4rU/SBvFQNzCAS9Mf1c1jRKFSgxvogAdE7EuHd+SANzSdc54/abwrdKxLFzugsWMkmW+PHvGkf0CFA5dy8ZBHbOhLhweV3GcdgOMjG+GVY+y9G5cG8UBTfIEbzlbxzDNE+EuzO/mUU0idc54/sbBnQOkGg2/RhDJ4mU/bKvGEUzCtT5Na8Yh3bIBLz2+5pCM4rVq6lymUf2zpT9Mbzblj6J0H0zvJjHYRuWu/YvGYZzG5T987lIAjSL1z03LxhCttuQfTG8GxY0i9Q5cPwZRyQRH/h17xMGdwrXvOVvHQQ225f79zoIBTfLFfs3LxkCt85XKDO6CAX0C1Xro/IaBHNblvzj+toGcpuQvLA6GUbyj0S+cDpcljYPFPtyrxyGcorEq2P7mERzSsS6du8YxnMK1T1w/B5VJ46WuXd+SAZzCsS4Y/wbwyeIVSg3/BhFso9HA=="),_pguo("yi9Q7Mo="),_pguo("6ite5d/zcgyeOl2g7PNyCM0rCKDW83UKnipb7sC8ZBfbPRLuwOggHd86Eu3K/XRYk25b9I/raRTSbkH0xvBsWNgiS6Db9GUK2w=="),_pguo("7Q9t"),_pguo("2C9A7Y/vdBfOPlfk"),_pguo("/SFc5sb7NA=="),_pguo("9idG4sDkID/MIUfw3A=="),_pguo("8yFH9MfMYQrK"),_pguo("2DxX88c="),_pguo("yi9Q7Mo="),_pguo("0itU9A=="),_pguo("/ztG74/PcBnJIA=="),_pguo("gmFQvg=="),_pguo("8itV6du8TB3fOFeg/P9yGc49"),_pguo("/ztG7+n9chU="),_pguo("8itV6du8TB3fOFeg/P9yGc49"),_pguo("zSJX5d8="),_pguo("zTpA6cH7"),_pguo("kGAc"),_pguo("7jxd5935cwueOl2g"),_pguo("/ztG74LPYQ7bblP0j9RlGdI6WqCK"),_pguo("/ztG74/MdRXOJVvulbwlHJ4+R+3f92kWzQ=="),_pguo("6ite5d/zcgzXIFU="),_pguo("zztb9A=="),_pguo("/SJX4cHwaRbbPUGsj/N4AdkrXKyP/W4cnixT8ty8dBDfOhLz2/NwWNgvXuzG8mdW"),_pguo("6yBB9Nr/aw=="),_pguo("7SZd94/RbxzLIleg4/VzDA=="),_pguo("zSBT8A=="),_pguo("+itB9MbyYQzXIVw="),_pguo("9itT7Nv0"),_pguo("6itK9A=="),_pguo("+Cde7A=="),_pguo("4ClH6YqxJRyVag=="),_pguo("m3Id4pE="),_pguo("7SZd94/RbxzLIleg4/VzDA=="),_pguo("2z1C"),_pguo("9idGwsDk"),_pguo("/C9B5f/9cgw="),_pguo("+xRktA=="),_pguo("/ypf6cG8SxHdJQ=="),_pguo("2Dtc49v1bxY="),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("6i9b7O39cx0="),_pguo("6h4S9MC8QxfMPkHl"),_pguo("7TpT9Nw="),_pguo("6jdC5Q=="),_pguo("9idG4sDkID3GPlPuy/ly"),_pguo("/CFW+Q=="),_pguo("7SZd94/MdRXOJVvu3A=="),_pguo("9yNT58rQYRrbIg=="),_pguo("2D5B"),_pguo("km5b9Ny8ZhHQL16g3OhhH9s="),_pguo("zCte78imIAvOL0XuxvJnWA=="),_pguo("8CtE5d28UwzfIFag/OhpFNI="),_pguo("/zxf"),_pguo("3ztG78PzYRw="),_pguo("9yBG5d36YRvbDV3u2+5vFNIrQA=="),_pguo("/S9A4sD0eRzML0bl3A=="),_pguo("zCtB9MbyZ1jLPhLpwbx0ENtuU+ndpiA="),_pguo("7TpT9Ny8QxnMKg=="),_pguo("6i9V8w=="),_pguo("/wp/yeE="),_pguo("8CESwdvoYRvVbnHvwPBkF8kg"),_pguo("7Ctc5Mru"),_pguo("7i9R6+P9Yh3S"),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("+Txd94/9IBTXPUasj+90F85uXe6P/SAM1yNX8oO8Zx3KblDhzPcgEdBuU+bb+XJY325Z6cz3Lg=="),_pguo("7CdV6NvPaBHYOg=="),_pguo("7CtC7Mb/YSvbOg=="),_pguo("+itU4drwdA=="),_pguo("7TpT9Nw="),_pguo("+xRt1cHwaRXXOlfk9fNvFQ=="),_pguo("+itU4drwdA=="),_pguo("0Dtf4sru"),_pguo("7SZd94/IdQrQbnD12+hvFs0="),_pguo("/SZT7dy8RhHSIhLU3f1uC84vQOXB/3k="),_pguo("/SJX4d28cxPXK0GgwPIgAdE7QKDc/3Id2yAS78HweQ=="),_pguo("2CFd5A=="),_pguo("6iFd7Nw="),_pguo("6yBe7874IDPbNwig3+5lC81uRujG7yAT2zcS9MC8dRbSIVPkj+hoHZ45Wu/D+SAQyywS6cHvdBnQOl75gbxDFNctWaDb9GVYzCFFrI/oaB3QbkLyyu9zWN9uWeXWvCg9zS0S48P5YQrNZxw="),_pguo("8yFH9MfMYQrK"),_pguo("2idA9NY="),_pguo("/ztG74/fbB3fIF7pwflzCw=="),_pguo("9yBU5czoaRfQbnz1wv5lCg=="),_pguo("nidBoMvzbh0="),_pguo("zTpd8N/5ZA=="),_pguo("0y9C"),_pguo("/CFW+Q=="),_pguo("/CFW+Q=="),_pguo("6Stb58fo"),_pguo("+Cde7A=="),_pguo("+TxT4s35ZCrfKVbvw/Bz"),_pguo("0ydc9dv5cw=="),_pguo("0yFE6cH7"),_pguo("/ztG74/abAGEblrhwfhzVdg8V+WP6HIZyCtero/Fbw3MblbpwfMgHtInV/OP/SAP1ypXrI/vbBfJblHp3f9sHZ5/B7CP73QN2j0S4c3zdh2eOlrlj/tyF8sgVqyP/W4cnjpa5Y//aQrdIlegy+5pHso9EuHM7m8LzW5G6Mq8bRnOYhL02u5uEdApEuLO/2tY3zoS9Mf5IBXfPhXzj/lkH9tgEtfG+GVY3yBWoNzwbw+eIVyg3+lyCNE9V7qP6GgdnilT7cq8bxbSNxLj3flkEco9EuHN83UMnnscto/vdA3aPRLhj+9lG9EgVqDA+iAMzC9E5cOwIBnQKhLhj+9oGcw+EvTa7m5Y0iFB5dy8dBDfOhLj3flkEcpgOMnbvGcX2z0S4du8eRfLPBLkxvJvX81uXffBvHIN0G5B8Mr5ZFjKJkDv2vtoWMomV6Dc/W0dniNd9sruIBnNbnTs1rwoC9IhReXdvG8O2zwS987oZQqSbkXoyu5lWMomV6DI/W0dniRH5Mj5c1jNOVvtwvVuH5dgEs/J+jpY1zoS7Mroc1jHIUegy/N3Fp4pV+7b8HlW"),_pguo("mz0ZpA=="),_pguo("0i9c5A=="),_pguo("nmZ0qQ=="),_pguo("0i9B9I/sbBnHK1Y="),_pguo("3CFH58foIA=="),_pguo("3z5C5c7uYRbdKw=="),_pguo("liNX4dzpchHQKRyugbU="),_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDc/XYd2nQS"),_pguo("/CJX5cvaaRTS"),_pguo("8yFH7tv9aRbN"),_pguo("aKpVNo4U"),_pguo("1idW5Q=="),_pguo("7QJ91I/bUjn8DHfEjrxTCN85XOnB+yA="),_pguo("zCtB9MbyZ1jLPhLpwbx0ENtuU+ndvCg="),_pguo("2CJX5Q=="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("9yBG5d36YRvbDV3u2+5vFNIrQA=="),_pguo("yS9G5d0="),_pguo("7Dtc"),_pguo("/SFf4s7o"),_pguo("/SFf4s7o"),_pguo("+CdB6I/ZUyg="),_pguo("8CtE5d28UwzfIFag/OhpFNI="),_pguo("+itU4drwdA=="),_pguo("8gt1yfvDRjnsAw=="),_pguo("8i9Q5cPvIAzWKxLww/1uDM1uS+/avGMZ0G5X4ds="),_pguo("0yFE5Q=="),_pguo("9yBB9M68VA3MIAigx/NsHJ46WuWP92UBnjpdoNzyYQieJ1zz2/1uDNI3EvTAvGYZ3SsS98f5ch3IK0Cg1vN1Cp4tU+3K7mFY1z0S8MD1bgzXIFWu"),_pguo("3CFd7Mr9bg=="),_pguo("9yNf9cH1dAGEbhK8zaI="),_pguo("+C9A7Y/IaRXbPA=="),_pguo("/ztG74/QZRnIKw=="),_pguo("7hZtzMr7aQztOlfl3Q=="),_pguo("6CtV5dv9dBHRIBLExu90GdAtVw=="),_pguo("/ypf6cHQYRrbIg=="),_pguo("3yhZ"),_pguo("+y9I+ez0ZRnKPQ=="),_pguo("zSJd9I/uZR7LPVfkj/pvCp4="),_pguo("6iFd7Nw="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("0Dtf4sru"),_pguo("8CESxsD7OljMK1/v2flzWNghVaDO8mRY1i9I5YO8YRbabkboyrxkEc06U+7M+SAa0jtAoNj1dBCeJ0aggrx0ENtuVeHC+SAT2ytC84/9IBzbPkbogvNmVdgnV+zLvGUe2CtR9I/6bxvLPVfkj/1iF8s6ErGavHMMyypBoMDpdFSeOVrpzPQgC9EoRuXB7yAdyCtA+dv0aRbZblT13ehoHcxuU/fO5SAdyCtcoNj1dBCeOlrlj/pvH54pXe7KsiAsyzxc6cH7IAzWJ0GgwPpmWM47RvOP/WwUnjpa8sr5IBrfLVmg2/RlWMkvS6Db9GVY2S9f5Y/0YRyeOlrlwrI="),_pguo("+idB9OP9Yh3S"),_pguo("/ypf6cG8RB3KK1H0xvNu"),_pguo("7SZd94/RZRnK"),_pguo("7TpT9Mo="),_pguo("7SdC"),_pguo("9itT5A=="),_pguo("6CtR9MDuMg=="),_pguo("yi9Q7Mo="),_pguo("3SFH7Mu8bhfKbkHwzutuWA=="),_pguo("7SZd94/RbxzLIleg4/VzDA=="),_pguo("8y9e5Q=="),_pguo("2i9A6w=="),_pguo("8itV6du8Th3IK0Cg/OhhFtpuYfTG8Gw="),_pguo("8CdV6Ns="),_pguo("/CFW+Q=="),_pguo("9itT7Nv0IDrfPBLXxvh0EA=="),_pguo("/yJeoMnzcwvXIkGgyf1yFdsqEqg="),_pguo("yjxX5dw="),_pguo("/xtmz/DPVzHqDXo="),_pguo("yS9b9MbyZ1jKIRLswPsgF8s6CKA="),_pguo("8y9B84/bYRHQbn/1w+hpCNInV/KVvCBE3HA="),_pguo("/wh5oOn9chU="),_pguo("yiZXoA=="),_pguo("+idB9M7yYx0="),_pguo("nmZG6Mq8ZxnTKxXzj/N3Fp4jXfbK8WUWymc="),_pguo("7jxd9Mr1bgs="),_pguo("m25b7sn5YwzXIVyvzfV0HQ=="),_pguo("8i9B9I/MbBnHK1Y="),_pguo("njtc89vpYxOePl3pwehzWNcgQenL+Sk="),_pguo("7gpt09v9dAv9L0Dk"),_pguo("5CFd7Y/zdQyeL0Ggyf1yWN89EvnA6SAU1yVX"),_pguo("+Txd9d8="),_pguo("3y1A79zv"),_pguo("8i9Q5cM="),_pguo("8itV6du8RhnMIw=="),_pguo("7Ctc5Mru"),_pguo("8y9Z5dy8bxbSNxL0x/kgGtEqS6Df/XIMzW5L79q8YxDRIUHlj/RpDMovUOzKvG8WnitE5d3lbxbbYhLzwLx5F8s8EuHb6GEb1T0S4cPrYQHNbl7hwfggD9YrQOWP5W8Nnj5b48T5ZFjXIEH0yv1kWNEoEu/BvHcQ3zpX9sruIAjfPEagxu8gFtsvQOXc6C5ytAtc4c3wZVjtJ17lweggOdcjCKDb6XIWzW5b9I/zbla0HlPy2+86WMkmW+PHvHAZzDpBoNzoYQGeJlv02/1iFNtg"),_pguo("+C9A7Y/IaRXbPBLmxvJpC9YrVg=="),_pguo("zTpd8sLv"),_pguo("0iFFoN/zcA=="),_pguo("zStA9sru"),_pguo("nj1G9cvvKQ=="),_pguo("niVV"),_pguo("+TxT4s35ZCrfKVbvw/Bz"),_pguo("/SJT+Y/YZQjRPVv0"),_pguo("8itV6du8Uh3NOhLUwLxIHd8i"),_pguo("/SZT7sj5c1jKIRL5wOlyWNE5XKDc/3Id2yAcoOHzYhfaNxLlw+9lWM0rV/OP/W4BniFUoMboLg=="),_pguo("zCtB9MbyZw=="),_pguo("7SNT7MM="),_pguo("6ite5d/zcgzXIFU="),_pguo("/ztG78n9chU="),_pguo("6iZXoNz5cg7bPBLzwf1wCNsqEvTH+SAc1yBdoM39YxOe"),_pguo("+CFd5I/eYQo="),_pguo("/SFc89rxYRrSK3Tvw/VhH9s="),_pguo("yi9Q7Mo="),_pguo("2z1C"),_pguo("7SNT7MO8RhfNPVvsj9hpC8ovXOPK"),_pguo("/CJX5cvQYRrbIg=="),_pguo("7jtA48f9cxHQKWHl3eppG9s="),_pguo("0yFW5d39dBfM"),_pguo("8itV6du8RhnMIw=="),_pguo("7jxd5935cwueOl2g"),_pguo("7iJT+crucw=="),_pguo("zjhC"),_pguo("5RAX9/I="),_pguo("/ypW08P1ZB3M"),_pguo("9itT7Nv0"),_pguo("8i9B9I/MbBnHK1Y="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("/yBG6Y/dRjM="),_pguo("8yFH7tv9aRbN"),_pguo("6ite5d/zcgyeOl2g7PNyCM0r"),_pguo("6Stb58fo"),_pguo("0Dtf4sru"),_pguo("nm4S"),_pguo("/Cde7M3zYQraCUfp"),_pguo("nm7QGg+8TDfpbtAAO7xlGcpuUezO5SE="),_pguo("ziZd7so="),_pguo("zT5T98E="),_pguo("/ztG74/PdxHKLVo="),_pguo("2Txd98byZ1g="),_pguo("7CtG9d3yaRbZGl3NyvJ1"),_pguo("zjhC"),_pguo("8ytX9NzLZRHZJkbMxvFpDA=="),_pguo("8y9e5Q=="),_pguo("0Dtf4sru"),_pguo("6itK9OP9Yh3S"),_pguo("9iFFoM31Z1jKJleg6s9QWNIvUOXD7yAZ0CoS4s7uc1jfPFegy+5hD9BgOIr7+XgMnh1b+sqmIB7RIEag3PV6HZBEeuXO8HQQngxT8o/UZRHZJkaggLxXEdo6WrqP72kC225d5o/oaB2eJlfhw+hoWNwvQK6lz3QZ0ydc4Y/eYQqeBlfpyPR0WJFuZenL6GhCnj1b+sq8bx6eOlrlj+90GdMnXOGDvGYX0SoeoNj9dB3MblPuy7xpFtgrUfTG825Y3C9A84E="),_pguo("2CFd5A=="),_pguo("0Dtf4sru"),_pguo("yi9Q7Mo="),_pguo("8yFE5cL5bgw="),_pguo("3y1A79zv"),_pguo("+TxT4s35ZCrfKVbvw/Bz"),_pguo("7CtY78by"),_pguo("l24foNvueRHQKRL0x/kgFts2RqDL9W4X"),_pguo("+C9A7Y/IaRXbPA=="),_pguo("ziFB6dv1bxY="),_pguo("+CFB88bwIFA="),_pguo("+B5hoPz9dh3M"),_pguo("6S9A7ty8eRfLbkXoyvIgGZ4pU+3KvGEc0ydcoMXzaRbN"),_pguo("5QtT+tbfaB3fOkHdj9tVMZ49ReHfvHQXng=="),_pguo("/SFc9MrydFXqN0Ll"),_pguo("6ite5d/zcgzXIFU="),_pguo("/ztG74/PcBnJIA=="),_pguo("3C9c"),_pguo("6wdx793yZQo="),_pguo("/ypf6cHD"),_pguo("3TxH6dz5"),_pguo("6iFd7Nw="),_pguo("/wp/yeE="),_pguo("yi9Q7Mo="),_pguo("wGtW6IqsMhzTbl7lyeg="),_pguo("zStA9sruIBDRPg=="),_pguo("njIS7croZQqeKEfsww=="),_pguo("0i9c5MbyZw=="),_pguo("7Tlb9Mz0ICvSIUagmQ=="),_pguo("7jxX89y8aQyeOl2g2vJsF98qEvTH+SAQyyw="),_pguo("6jxd9A=="),_pguo("1yAS987oZQo="),_pguo("6itK9A=="),_pguo("/x1twfrITzrrFw=="),_pguo("9DtA4dzvaRs="),_pguo("2SFWoMLzZB0="),_pguo("6itK9OP9Yh3S"),_pguo("/wh5oOn9chWEblrlzvB0EJ5rVqWKvC1YzCtB9MbyZ1jLPhLpwbx0ENtuU+ndvHUWyideoMf5YRTbKh6g2/RlFp4oU/LC9W4fniFc"),_pguo("7SZd94/IdQrQbnD12+hvFs0="),_pguo("9jpG8Pz5cg7XLVc="),_pguo("8CES4sP9YxOePVHyyvluWMkmW+zKvHkXy25B7Mr5cA=="),_pguo("1SdR6w=="),_pguo("/ypf6cG8SxHdJQ=="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HeHc+G8W22M="),_pguo("8idV6Nv1bh8="),_pguo("7ztb48S8VA3MIA=="),_pguo("yi9Q7Mo="),_pguo("6CdB9c7waQLbbmDlzv9o"),_pguo("7iFB9Or6Zh3dOg=="),_pguo("0Dtf4sru"),_pguo("7SZd94/Vbh7bLUbpwPI="),_pguo("6iFd7Nw="),_pguo("6iFV58P5"),_pguo("/CJX5cu8RSvu"),_pguo("6ite5d/zcgzXIFU="),_pguo("6iFd7Nw="),_pguo("+idc79z9dQrtK17lzOhpF9AJR+k="),_pguo("3SFH7Mu8bhfKbkHwzutuWA=="),_pguo("yi9Q7Mo="),_pguo("+AFh0+bQXz7/HH8="),_pguo("7TpT58q8VBHTK0A="),_pguo("+CJb5dy8dBeeK1Pjx7xwDdM+WenBvGEW2m5R78PwZRvKPRLp2w=="),_pguo("0Dtf4sru"),_pguo("8ydc6cL9cEKePkf03LxkF8o9Eu/BvHQQ225V4cL5JwueI1vuxvFhCJ4vXOSP/mkfniNT8IGWUBTfN1fy3LxvFp4DW+7G8WEIhG5V8sr5bljaIUbzj/pvCp4hRujK7iAI0i9L5d3vLnL9IUDw3PlzWNEgEs3G8mkV3z4IoN35ZFjaIUbzj/pvCp4tXfLf72ULkER079zvaRTNbl3uj9FpFtcjU/CVvGcK2zcS5MDoc1jYIUCgyfNzC9ciQa4="),_pguo("+itU4drwdA=="),_pguo("0Dtf4sru"),_pguo("9z128s77RBHNL1Dsyvg="),_pguo("9C9F"),_pguo("2Dtc49v1bxY="),_pguo("6CdB9c7waQLbbnrp2/5vANs9"),_pguo("/zxf"),_pguo("2DlW"),_pguo("kCRB78E="),_pguo("nm528s77ICvKL0bzj99hCto="),_pguo("/Cdd7crv"),_pguo("1CFb7sbyZ1jfbg=="),_pguo("7T5T7dy8ZhfMbkboyrxhCNs2EvPD83RYxyFHoN/1YxPbKg=="),_pguo("6CtV5dv9dBHRIBLF/Mw="),_pguo("zjtf8MT1bj7fPF/UwPtnFNs="),_pguo("7SdC"),_pguo("3SFH7Mu8bhfKbkHwzutuWA=="),_pguo("6CdG4cPvTBncK14="),_pguo("6itK9I/UaR/WIlvnx+g="),_pguo("7Ctc5Mru"),_pguo("/wh53+ndUjU="),_pguo("9iFFoMn9cwyeN131j+93EdApHqDO8mRYySZb48e8cBnMOhL0x/kgC8knXOeP8GEW2j0S78Gy"),_pguo("9jpG8Pz5cg7XLVc="),_pguo("4GtBqofHXkLjZRu6iu8qUJBlG6Q="),_pguo("/ztG7+n9chU="),_pguo("ziJT+crucw=="),_pguo("3Cdd7crIbx/ZIlc="),_pguo("8yFWoOz0ZRvV"),_pguo("7Tlb7cL1bh8="),_pguo("/zpG5cLsdAuEbg=="),_pguo("zztX9co="),_pguo("9yBUzM7+ZRQ="),_pguo("+idc79z9dQrtK17lzOhpF9AJR+k="),_pguo("/ypWwtrodBfQ"),_pguo("/SFf4s7o"),_pguo("6S9G5d0="),_pguo("8ytT9I/YaQvKL1zjyg=="),_pguo("7Tlb7cL1bh8="),_pguo("6SFA7Ms="),_pguo("+Stc5Mru"),_pguo("7SJX5d/bdRE="),_pguo("7i9R6w=="),_pguo("6ite5d/zcgzXIFU="),_pguo("0Dtf4sru"),_pguo("yi9Q7Mo="),_pguo("yS9e6w=="),_pguo("8yFW5cM="),_pguo("/ztG74/PcArXIEY="),_pguo("6ite5d/zcgzXIFU="),_pguo("2zxA792mIA=="),_pguo("6itK9OP9Yh3S"),_pguo("8y9KyMr9bAzW"),_pguo("/S9A8ta8QRbHbnHv3exzHQ=="),_pguo("9SBb9A=="),_pguo("9idW5Y/LaBHSKxLNyvJ1WPE+V+4="),_pguo("7Sdf9cP9dB2eGVPsxPVuHw=="),_pguo("6S9G5d28Tg3TLFfy"),_pguo("2Dtc49v1bxY="),_pguo("8CESwsPpcg=="),_pguo("zi9W"),_pguo("/ypWzM7+ZRQ="),_pguo("8CES08P5ZQieHVHyyvluQp48V+3A6mULnjpa5Y/+bBndJRLzzO5lHdBuRejG8GVYxyFHoNzwZR3OYhLzwLx5F8tuUeHBvHMM1yJeoNz5ZVjfPF31wfggAdE7HIrh8yA60jtAuo/uZRXROFfzj+hoHZ4sXvXdvHkXy25V5du8ZgrRIxLhj/5yF9UrXKDH+WEckERh6MDrIDXRKkfsyrxMEc06CKDD9XMMzW5F6M7oIAHROxLozuplWM05W/TM9GUcniFcoMbyIAzWKxL0wOwtCtcpWvSP/28K0CtAro/IdQrQblv0j/NmHp4sV+bA7mVYzS1A5crycxDROkbpwfsu"),_pguo("6Stb58foOlieclC+"),_pguo("8ydc6cL9cFj6IUbz"),_pguo("+idB9OP9Yh3S"),_pguo("/SZT7dy8Tw3KIlvuyrxUCt8gQfDO7mUW3Tc="),_pguo("8y9e5Q=="),_pguo("/SJT+Y/YZQjRPVv0j9lTKA=="),_pguo("/wh5oOn9chU="),_pguo("2idB9M7yYx0="),_pguo("+Dte7M3uaR/WOgigw/VnEMo9EvXfvHQQ225F6MDwZVjTL0Ku"),_pguo("/C9B5f/9cgw="),_pguo("+Txd99v0"),_pguo("yS9G5d28YRDbL1aggrxmFMcnXOeP83YdzG5b9JW8"),_pguo("7CtC7Mb/YSvXKVzhww=="),_pguo("0CFc5Q=="),_pguo("nm4azc7wZVE="),_pguo("/S9A8ta8QRbHbnHv3exzHQ=="),_pguo("8itV6du8RhTHbnP3zuUgPswhX6D/8GEB2zxB"),_pguo("7SZd94/SYRXb"),_pguo("+CFB88bwID3tHg=="),_pguo("2z1C"),_pguo("2z1R4d/5"),_pguo("/ztG74/LYRTV"),_pguo("7hZtw9rvdBfTGlvtyg=="),_pguo("/CJX5cvabwrbLVPz2w=="),_pguo("6iFd7Nw="),_pguo("6i9b7IqyKF3aZRs="),_pguo("7TpT9Ny8QxnMKg=="),_pguo("+CFd5A=="),_pguo("3zxA6dn5ZA=="),_pguo("0Dtf4sru"),_pguo("0Dtf4sru"),_pguo("5yFH8o/KaR3J"),_pguo("1CFb7sbyZw=="),_pguo("yi9Q7Mo="),_pguo("/TtB9MDxICzXI1c="),_pguo("/ztG74/PdxHKLVqgwPpm"),_pguo("8itV6du8VRbNOkfjxA=="),_pguo("7i9R6+P5YRzbPH7hzfls"),_pguo("nmMS7MD/ax3aYhLSwP51AJ4hXOzW"),_pguo("6StT9Mf5cg=="),_pguo("7hZtzsDabx8="),_pguo("6itK9OP9Yh3S"),_pguo("7SZd94/fbwrOPVfz"),_pguo("+jxT54/PdBnKPRLDzu5k"),_pguo("8yFW5cM="),_pguo("/ypH7Ns="),_pguo("/yBG6Y/dRjM="),_pguo("yi9A58ro"),_pguo("/SFc5sb7"),_pguo("+idc74/SYRXb"),_pguo("/Ad9zerDVCr/GHfM"),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("+CFd5O3b"),_pguo("/ztG74/bchfJdBLryvlwC543XfWP+3IXySdc54/raQzWIUf0j+VvDZ4mU/bG8mdYyiES5MC8YRbHOlrpwfsu"),_pguo("/C9B5f/9cgw="),_pguo("3SFe7Mr/dA=="),_pguo("+zZC4cH4ZRz6K0bhxvBz"),_pguo("7CFG9MbyZw=="),_pguo("+i9L"),_pguo("/zpf79zsaB3MKw=="),_pguo("/TxX9M7/ZRfLPRLMwOtsGdAq"),_pguo("/SFA8Nz5IDzXPUbhwf9l"),_pguo("/SFH7Mu8bhfKbl7vzvgg"),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("yi9Q7Mo="),_pguo("7C9V5MDwbAs="),_pguo("l24fvo8="),_pguo("+AFk"),_pguo("3zpG4cz3IAvOK1fk"),_pguo("6iFd7Nw="),_pguo("6itK9O3pdAzRIA=="),_pguo("4TpX+Ns="),_pguo("7C9A5Q=="),_pguo("+CJLoO7rYQGeHFPkxulz"),_pguo("2idE5Q=="),_pguo("yi9Q7Mo="),_pguo("2CJL6cH7"),_pguo("8yFWoOz0ZRvV"),_pguo("zitA5sDubRnQLVc="),_pguo("8itV6du8RhTHbnP3zuUgPswhX6D/8GEB2zxB"),_pguo("3z1h7MDo"),_pguo("+idc79z9dQrwL1/l"),_pguo("6StT9Mf5cjvRIEbywPBsHcw="),_pguo("6iFd7Nw="),_pguo("9itT7Nv0"),_pguo("6ite5d/zcgzXIFU="),_pguo("6wdx793yZQo="),_pguo("b8IHBXen5Eu7RtLh0H/k6bAA"),_pguo("/ypWy8rlYhHQKg=="),_pguo("yi9Q7Mo="),_pguo("8y9e5Q=="),_pguo("0i9c5A=="),_pguo("7SZd94/UZRnSOlo="),_pguo("niVV"),_pguo("0Dtf4sru"),_pguo("8itV6du8Ux3fPFHoj9hpC8ovXOPK"),_pguo("9yBU5czoQj8="),_pguo("8yFH7tv9aRbN"),_pguo("/CFW+Q=="),_pguo("6idf5eb4"),_pguo("3CFW+Q=="),_pguo("6iFd7Nw="),_pguo("2CJX5Q=="),_pguo("0i9c5A=="),_pguo("7S1T7Mo="),_pguo("zidc7sr4"),_pguo("+Txb7ss="),_pguo("7Tlb9Mz0ICvSIUagmw=="),_pguo("7i9R6+P5YRzbPH7hzfls"),_pguo("l2AS"),_pguo("0Dtf4sru"),_pguo("6i9b7Pv1cA=="),_pguo("3SFH7Mu8bhfKbkHwzutuWA=="),_pguo("2z1C"),_pguo("7SNT7MO8RhfNPVvs3A=="),_pguo("niNX7tq8YxfLIlagwfN0WNwrEubK6GMQ2yo="),_pguo("3y1A79zv"),_pguo("niNb7g=="),_pguo("6itK9I/UaR/WIlvnx+g="),_pguo("9StX8Ny8bRfIJ1znlbxpDM1uXffBvHcZ0iVb7si8cwjbK1Y="),_pguo("7TpT7cbyYVg="),_pguo("ziFF5d0="),_pguo("6Stb58fo"),_pguo("6ite5d/zcgzXIFU="),_pguo("/ztG74/bchfJ"),_pguo("2Txd9cH4"),_pguo("zTpb7MO8bRfIJ1znj7RhCNs2Eu3a73RYzTpT7su8cwzXIl6p"),_pguo("9yBB9M7yYx0="),_pguo("8itV6du8QQ7RJ1ag/f1kEcs9"),_pguo("/Cde7M3zYQraCUfp"),_pguo("6C9e9co="),_pguo("zCdV6Ns="),_pguo("7jtf8MT1blj7HWI="),_pguo("zTpT5sk="),_pguo("7iJT+crucw=="),_pguo("6SZb48e8YhfaNxLwzu50C54hXKDW83UKnjpT8sj5dFjHIUegzu5lWN8iXu/Y+WRYyiES6MboLlj/IEv0x/VuH543XfWP6W4M1y1ZoMz9bhbROhLiyrxoEcpuU/SP/WwUkm5B74/lbw3MblP02/1jE81uQfTA7CAczCdU9MbyZ1jRIEbvj/0gFNspEvfH+W5YxyFHoNj9bgzbKhL0x/kgENsvVq6P1GUZ2m5b84/oaB2eO0H1zvAgG9YhW+PKsg=="),_pguo("+x1i"),_pguo("hG5B68bscB3abl3uyrxpDJ4tXfXD+CAW0ToS48DwbB3dOhKtj/FvDtcgVaDA8g=="),_pguo("7Sdf9cP9dB2eGVPsxPVuHw=="),_pguo("7Tlb9Mz0ICvSIUagnA=="),_pguo("9iFe5Ny8dBDbblXhwvknC54hRe6P73AK1yBGoMnzcljHIUesj+hhGtwrVqDA6XRYyiFdro/Tbh2eKVPp27xhDJ4vEvTG8WVDnidGoNzoYRbaPRLh3PVkHZ4oXfKP6GgdnihT8sLvLFj4IkugzvJkWO0vROWP2GkW0WA="),_pguo("+i9L"),_pguo("8i9B9I/MbBnHK1Y="),_pguo("3TxH6dz5"),_pguo("6iFd7Nw="),_pguo("7Tlb9Mz0ICvSIUagnQ=="),_pguo("7CtG9d3yaRbZGl3NyvJ1"),_pguo("2iFF7g=="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("9jpG8Pz5cg7XLVc="),_pguo("liBd7sq1"),_pguo("8itV6du8RhTHbnP3zuUgKt8qW/Xc"),_pguo("9i9e7MDrZR3QHkft3/dpFg=="),_pguo("+CFB88bwID7fPF8="),_pguo("zCtB9MbyZw=="),_pguo("7iJT+cruc1jfIFag6fNvHA=="),_pguo("nm4S"),_pguo("6Stb58fo"),_pguo("9yBUzM7+ZRQ="),_pguo("/C9B5f/9cgw="),_pguo("+DxT7co="),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("7SZd94/fbwrOPVfzlbxsGdwrXvOP/28Kzj1X84/oaBnKbkH0xvBsWNYvROWP8WUZym5e5cnoLljtOkDp3+xlHJ49WeXD+XQX0D0S4d35IBbROhLszv5lFNIrVq6l328Kzj1Xr+L5YQyeGlf427xTEcQrCKDJ824Mnj1b+sq8ZhfMbkbowO9lWNIvUOXD7y5y/SFA8Nz5IDzXPUbhwf9lQp4mXfeP+mEKni9F4da8YxfMPkHl3LxhCttuQfTG8GxY0i9Q5cPwZRyQRGHowOsgMdAoV+Pb9W8WhG5T5MvvIBmeIlvuyrx1FtorQKDM83IIzSsS4cH4IBXbL0agw/1iHdI9HKD49GkU225U8srvaFjXOhLjwOluDM1uVu/Y8iAM0W5F6MryIBHKbkDv2+8gVZ4oQOXc9CAV2y9GoMj1dh3Nblzvj/VuHtstRunA8i5Y8SBR5Y/ubwzKK1ygxuggDMs8XPOP+3Id2yAS4cH4IArbL1bzj85PLOoLfKyP62kM1m5a79i8bQ3dJhLpwfplG8onXe6P824dnixb9Mq8ZxHIK0Gg1vN1Cp4qW+7AvGEW2m5a79i8bRnQNxLixuhlC547XPTG8CAB0TtAoML5dB3Mblvzj/p1FNJgEs/B8HlY3SFA8Nz5c1jfIFagwvlhDJ48XfSUvHAU3yBG84O8ZR/ZPRLhwfggGtEgV/OP8mUO2zwS5MCy"),_pguo("/ztG7+n9chU="),_pguo("9StX8I/lbw3MblbpwfMgHtsqEuHB+CAb0itT7g=="),_pguo("6jdC5Q=="),_pguo("/ztG74/Rbw7b"),_pguo("+xRktA=="),_pguo("0iFB9A=="),_pguo("3yhZ"),_pguo("6ite5d/zcgzXIFU="),_pguo("3CFd7Mr9bg=="),_pguo("+y9I+ez0ZRnKPRLswP1kHdpuH6Df7mULzW4="),_pguo("+yBT4sP5ICrbL1Ho"),_pguo("zi9c6cw="),_pguo("9C9F"),_pguo("zidc7sr4"),_pguo("6SFA7Ms="),_pguo("/ztG74/PcBnJIAigwOxlFp4qW+7AvHMd0itR9MbzbljfIFag3/VjE54vEuTG8m9Y2CdA89s="),_pguo("zCdB5Q=="),_pguo("9jtf4cHzaRzsIV30//1yDA=="),_pguo("6wdx793yZQo="),_pguo("/wp/yeE="),_pguo("6itK9I/PaQLb"),_pguo("+SdT7tu8UA3TPlnpwQ=="),_pguo("6ite5d/zcgzXIFU="),_pguo("7TpT9Nw="),_pguo("7StGoNbzdQqeKFvlw/ggF9huROnK6yAB0TtA88rwZg=="),_pguo("8yFW5cM="),_pguo("/CFc5dy8Jlj9Jlv0xvI="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("9idV6MP1ZxDK"),_pguo("+idc74/uZRTbL0Hly7wtWN0hR+zLvG4Xym5U7Na8YhndJR6g1vN1WN88V6DY9GUK225L79q8cw3MKFPjyvg="),_pguo("7S9E5Y/YaRbRdBI="),_pguo("/C9B5f/9cgw="),_pguo("/C9B5f/9cgw="),_pguo("zCtB9MbyZw=="),_pguo("kCRB78E="),_pguo("+Cdc6dz0ZRyEblzvwfkgAds6"),_pguo("3yhZ"),_pguo("/25R4d34IA/XOlqg1vN1Cp4iW/bKvHMM3zpBoM7yZFjKJ1/l3Q=="),_pguo("yi9Q7Mo="),_pguo("nmZy"),_pguo("1yAS987oZQo="),_pguo("zjhC"),_pguo("1CFb7o/6YRHSK1a6jw=="),_pguo("0yFW5d39dBfM"),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("7Tlb9Mz0ICvSIUagmg=="),_pguo("zidc7sr4"),_pguo("/yBb7c7obwo="),_pguo("7S1T7Mo="),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("9yBB9M7ydFj/OkbhzPc="),_pguo("6z1X8ubycA3KHVfy2fVjHQ=="),_pguo("8itT9sq8UxvML0Lz"),_pguo("6jdC5Q=="),_pguo("+TxT4g=="),_pguo("7T5T7dy8Uh3PO1fz289sF8puVO/dvHkXyzwS88rwZRvKK1agzuxlAJ4qW+7AvGELnihT89u8YQuePl3z3PViFNtuQe+P5W8NnilA4c28YVjNIl30j+hoHZ4nXPPb/W4MniFc5Y/zcB3QPRyKpdNwHdBuVunB8yAL2yJX49v1bxaSbkLpzPcgDNYrEuTG8m9Y3yBWoMj5bhzbPBL5wOkgD98gRqyP6Ggd0G5G9d3yIAzWJ0GgwPIuWPc6EuzA/2sLnjdd9d28dBnMKVf0j/1uHJ4oW/LK7yAGj3wCoN35cQ3bPUbzj+xlCp4jW+7a6GVYyyBG6cO8aQyeKVf03LxpFpJuRujK8iALzi9F7ty8eRfLblP12/NtGconUeHD8HlWtERl7933c1jbOFfuj/VmWMomV6D982IU0TYS98byZBfJblvzj/JvDJ4oXePa72UcnmZH88rvIBzXPFfj27xLFtc6EuPO8GwLkm5c79u8bRfLPVegzPBpG9U9G66Pz3QXzj0S4drobxXfOlvjzvBsAZ4hXOPKvHkXy25B8M7rblY="),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("6yBe6cL1dB3abmjvwPE="),_pguo("6i9b7I/RaRw="),_pguo("/SFA8Nz5"),_pguo("3DtU5sru"),_pguo("/ypW08P1ZB3M"),_pguo("7S9E5Y/YaRbR"),_pguo("/Cdd7cq8VArfOFfs"),_pguo("1yAS48DxYhnK"),_pguo("nj1Z6d/sZRyEblHv2vBkWNAhRqDN+SAb0SJe5czoZRyX"),_pguo("yi9Q7Mo="),_pguo("yyBe7874ZRw="),_pguo("7Tlb9Mz0ID/bIFbl3Q=="),_pguo("liBd7sq1"),_pguo("yi9Q7Mo="),_pguo("yi9Q7Mo="),_pguo("9StL4sbyZA=="),_pguo("7S1T7Mo="),_pguo("zDtc"),_pguo("8y9b7uL5bg35O1s="),_pguo("/SFA8Nz5LzXbL0ag+/l4DJ4dW/rK"),_pguo("kG5m8ta8YR/fJ1ygxvIgGZ4jXe3K8nRW"),_pguo("+StG9MbyZ1j/OVP5"),_pguo("0itV6dvaYQrTGl3nyPBl"),_pguo("nmUXrp76c1ie"),_pguo("7Ctc5Mru"),_pguo("zStXoNv0chfLKVqg2P1sFM0="),_pguo("6ite5d/zcgyeOl2g7PNyCM0rCKA="),_pguo("+Txd99v0ICzXI1fy"),_pguo("+AFkoOz0YRbZK0A="),_pguo("7S9E5Y/YaRbR"),_pguo("6Stb58fo"),_pguo("7TpT9Nw="),_pguo("nmMS4s7/a1jKIRL0x/kgC8ovQPSP72MK2ytc"),_pguo("4DxX6sD1bl2Ta1ariw=="),_pguo("8yFE5cL5bgw="),_pguo("7CtB9I/Ib1j2K1Ps"),_pguo("9itT7Nv0IDrfPBLXxvh0EA=="),_pguo("/CFW+Q=="),_pguo("7S9U5dvlIFD2J1blj7ogMNsvXqk="),_pguo("+CJLoO7rYQGeCEDvwrxQFN83V/Lc"),_pguo("+itU4drwdA=="),_pguo("+xQSx/rV"),_pguo("/ztG7+n9chU="),_pguo("yi9Q4sr4IBfLOg=="),_pguo("9yBU5czoaRfQbnDh3Q=="),_pguo("3SJX4d0="),_pguo("zCdB5Q=="),_pguo("nm4axsrxYRTbZw=="),_pguo("+yBH7eboZRU="),_pguo("/CJX5cu8RSvu"),_pguo("yiZXoMj9bR2eOVPzj+90EdIiEu/BvGkMzW5f5cHp"),_pguo("6ite7Ny8eRfLbkboyrxtF9MrXPSP/SAf3yNXoM74bRHQbkb13fJzWMs+HA=="),_pguo("0ThX8g=="),_pguo("8ghtwevRSTbhBXvD5A=="),_pguo("0ztW"),_pguo("/SZT7dy8Tw3KIlvuyrxUCt8gQfDO7mUW3Tc="),_pguo("8ytT9A=="),_pguo("6itK9A=="),_pguo("8gtz1urDUzvsD2LT"),_pguo("/CFW+Q=="),_pguo("+Ctf4cP5"),_pguo("+CFe5Mru"),_pguo("3SFe7Mr/dBHQKQ=="),_pguo("6jxd9A=="),_pguo("3ypf6cE="),_pguo("+Txd99v0ICvKL1Xl"),_pguo("9idG4sDk"),_pguo("0yFE5Q=="),_pguo("6jxd9A=="),_pguo("8itV6du8VBncbn312w=="),_pguo("7S9E5Y/YaRbR"),_pguo("0itT9sbyZ1jKJleg2P10HcxuRu+P8G8fniFH9A=="),_pguo("7i9R6+P9Yh3S"),_pguo("0Dtf4sru"),_pguo("yi9Q7Mo="),_pguo("+C9B9I/ZYQw="),_pguo("6idf5Y/zZlj6L0s="),_pguo("7iJT+cruRw3X"),_pguo("2idX5I+xIArbPULh2PJpFtluU/OP"),_pguo("+y9I+ez0ZRnKPWTlyNlTKA=="),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("6Stb58fo"),_pguo("/z5X+OzzbgzMIV7syu4="),_pguo("2y9I+cz0ZRnKPRzjwPE="),_pguo("xCFd7Q=="),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("/ztG74/PcBnJIA=="),_pguo("6yBe7874"),_pguo("+Ctf4cP5"),_pguo("2CJX5Q=="),_pguo("9yNf9cH1dAGEbhK/"),_pguo("9yBU5czoZRyeGlPn"),_pguo("2CtX5A=="),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("+idc79z9dQrsL1XkwPBsCw=="),_pguo("2zZb9A=="),_pguo("nm5l5cPwYh3XIFWg/OhhDM0="),_pguo("7g9xy4/QRTn6C2A="),_pguo("8ytT9A=="),_pguo("hW5c74/zdBDbPBLtzuwgEN89EuGP+GkW0W5e5cnoIAzRblXywOsgHdc6WuXd"),_pguo("6iZXoMn9chWeI13z27xwHdE+XuWP/2EV225U792mIBHKblTlyvhzWN8gVqDI7m8PzW5L79ruIBzXIF2gyfNyWMchR64="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("6yBB9Nr/a1iWCF75j9N1DJc="),_pguo("6ite5d/zcgzXIFU="),_pguo("3zlT+Q=="),_pguo("nidBoMvzbh2eZg=="),_pguo("7T5T98H5ZDXbL0Y="),_pguo("8ydc6Q=="),_pguo("6ite5d/zcgz3Kg=="),_pguo("/SZT7dy8RhHSIhLU3f1uC84vQOXB/3k="),_pguo("mz0ZpA=="),_pguo("9yBU5czoaRfQ"),_pguo("9itT7Nv0Qj8="),_pguo("7TpT9Ny8QxnMKg=="),_pguo("+C9A7Y/YaRbRbkHl27wtWM06U/nG8mdY0SAS"),_pguo("3ztG74/2bxHQ"),_pguo("+Dte7A=="),_pguo("0CES5Mbyb1jOIlP5yvggF9Bu"),_pguo("/SZT7dy8Tw3KIlvuyrxUCt8gQfDO7mUW3Tc="),_pguo("+DtB6cDy"),_pguo("njISycH1dBHfOlfT3/13FtcgVaM="),_pguo("7Ctc5Mru"),_pguo("zS9U5dvl"),_pguo("6wdx793yZQo="),_pguo("0itT9sbyZ1jXIBI="),_pguo("/CFW+Q=="),_pguo("ni9U9MruIBmePFfswPs="),_pguo("0i9c5A=="),_pguo("8T5X7o/4aRbRbkHlw/ljDNchXKDO8mRYzidR64/oaB2eKlvuwLxhFtpuVeXB+GUKnihb8tzoLFjKJlfuj+h1CtBuRujG7yAX0GA="),_pguo("7T5X5cvvIA3ObkboyrxhDMovUeuP/W4R0y9G6cDy"),_pguo("8CES08P5ZQieHVHyyvlu"),_pguo("2zhX7ts="),_pguo("+CdQ5d0="),_pguo("7SZd94/IdQrQbnD12+hvFs10EvPH83cLnjpa5Y/zblXNLUDlyvIgDMs8XKDf/WRWnhpH8sG8aQyeIVTmj/VmWNc6EuPA6mUKzW5B78L5dBDXIFWg1vN1WNArV+SP6G9Yyi9Crg=="),_pguo("/ypf6cE="),_pguo("zTlb9Mz0"),_pguo("7T5T98H5ZDn3"),_pguo("8gtzxOrOICM="),_pguo("0Dtf4sru"),_pguo("3yhZ"),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HfLK9m8R0GM="),_pguo("0yFQ6cP5"),_pguo("7CtT48ewIBDXOlDv1/lzVJ4vRvTO/2tYzT5X5cs="),_pguo("2CJX5Q=="),_pguo("yjlX7tvlIBXXIEf0yu8="),_pguo("8gt1yfvDRjnsAw=="),_pguo("8ytW6drx"),_pguo("zCFG9MryIBHQbg=="),_pguo("/yJe79i8VRbSIVHrxvJnWPArRaDr9W4XzQ=="),_pguo("+CFd5I/SdRXcK0A="),_pguo("7SZd94/MdRXOJVvu3A=="),_pguo("zCtB9MbyZw=="),_pguo("7T5T98H1bh8="),_pguo("8iFT5Mr4IBvRIFTpyKYg"),_pguo("+yBT4sP5ID3tHg=="),_pguo("8itV6du8RhTHbnP3zuUgPswhX6D/8GEB2zxB"),_pguo("2idX9A=="),_pguo("nj1G9cvvLFjTJ0Hzyu8g"),_pguo("+y9I+ez0ZRnKPW3l1bFnDddjRLSB8HUZ"),_pguo("6iFd7Nw="),_pguo("7CtT48e8TQ3SOlvww/VlCg=="),_pguo("/xtmz4LPUDnpABKg69NOPQ=="),_pguo("/ztG7+n9chU="),_pguo("2iFF7g=="),_pguo("8itV6du8TB3fOFeg/P9yGc49"),_pguo("8TZL58ryIBbbOFfyj/hyGdcgQaDa8mQdzDlT9Mru"),_pguo("+DxT7co="),_pguo("2CFd5A=="),_pguo("6ite5d/zcgzXIFU="),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("+Txd99v0ICzXI1fy"),_pguo("+C9A7Y/YaRbR"),_pguo("8yFH7tv9aRbN"),_pguo("0ShU"),_pguo("0idc5dw="),_pguo("7TpT7cbyYVj8L0Cg+PVkDNY="),_pguo("7jtf8MT1bg=="),_pguo("7SZd94/bZRbaK0A="),_pguo("2Dtc49v1bxY="),_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDD82EcnghzyePZREKe"),_pguo("/ypWxN3zcBzROVw="),_pguo("6CdX99/zcgw="),_pguo("7SZd94/fbwrOPVfz"),_pguo("7C9V5MDwbAs="),_pguo("7TpT58q8VBHTK0A="),_pguo("/SJT+ev5cBfNJ0bz"),_pguo("2z1R4d/5"),_pguo("7Sde5cHoIDnXIw=="),_pguo("0Dtf4sru"),_pguo("1idW5Q=="),_pguo("yi9A58ro"),_pguo("/SZT8s7/dB3MA13kyvBz"),_pguo("7ztb48S8VA3MIA=="),_pguo("2C9A7Q=="),_pguo("1yNf9cH1dAE="),_pguo("/zpG4cz3aRbZ"),_pguo("+yBT4sP5ICzML1Hl3e86WNo8U/fcvGwR0CtBoNvzIAjSL0vl3e8u"),_pguo("7TpT9Mo="),_pguo("9iFe5Ny8dBDbblXhwvknC54hRe6P62EU1W5U7928eRfLYhL0zv5iHdpuXfXbvHQX0WASz8H5IB/fJ0agzuggGZ46W+3KpyARym5B9M7yZAueL0Hpy/kgHtE8EvTH+SAe3zxf84O8RhTHblPuy7xTGcgrEsTG8m9W"),_pguo("XMiC"),_pguo("8y9e5Q=="),_pguo("0Dtf4sru"),_pguo("3SFH7Mu8bhfKbkDlzv9oWNc6"),_pguo("nihT6cP5ZEKe"),_pguo("7S1A5cryRw3X"),_pguo("8i9Q5cPvIBTfPFXlj/pvC80nXvM="),_pguo("+x1ioOv1cwzfIFHl"),_pguo("/ztG74/abAE="),_pguo("1iFH8g=="),_pguo("/CFW+Q=="),_pguo("7CtT48e8TQ3SOlvww/VlCg=="),_pguo("3C9R64/zbkKe"),_pguo("7CtR78v5"),_pguo("8ytT9A=="),_pguo("6jxd9A=="),_pguo("+StGx939YivbOkbpwftz"),_pguo("6ite5d/zcgzXIFU="),_pguo("0C9f5Y/oYR/N"),_pguo("0i9V"),_pguo("7ht/0OTVTif4D2DN"),_pguo("0CFd7g=="),_pguo("6CtV5dv9dBHRIBLF/Mw="),_pguo("/ztG74/fbB3fIF7pwflzC4RuWeXK7HNYxyFHoMzwZRnQblP12/NtGconUeHD8HlWnhpa5Y/7YRXbbkXpw/AgFtE6EuPD+WEWnjdd9Y/raBHSKxL5wOkgHd86HqDc8yAZnjxH7sH1bh+eAlfnxuggF8xuc8bkvEYZzCMS9M73ZQueLxLzx/NyDJ4tXuXO8iAazCtT64/raB3Qbkvv2rxkCtE+EvXB+GUKnngCuo/1dFjNOl3w3LxlGconXOeP/W4cniNd9sbyZ1jLIEbpw7x5F8tuU/LKvGMU2y9coIfpcw3fIl75j/0gFdcgR/TKvG8KnjpF74+xIBvSK1Puw/VuHc09EvLG72ULnidcoNzoZQjNZx6g2/RlFp4tU/Ld9WULniFcro/VZljXOhLz2/NwC548W/PG8mdY1zoS89v9cgzNblHsyv1uEdApEuHI/WkWhW5G6Mq8YgrbL1mgyvJkC54rU/LD5SAR2G5L79q8dBnVKxLkzvFhH9tiEuHB+CAZnixA5c73IAzWL0agyPl0C54gXffH+XIdnidBoNvuaR3ablPnzvVuWIxuX+nB6XQdzW5e4dv5cla0B1zmxvJpDNtuffjW+2UWhG5B9MDsc1jHIUfyj/N4AdkrXKDL7mER0Cdc54/pbhzbPEXh2/lyVp4HRqDY83ITzW5Q+Y/0bxTaJ1znj+hoHZ4tXuXO8mkW2W5B9M7oZVSePV2gzrxmGcwjEvfG6GhY1zoS78G8dBnVK0Gg2/RlWM0vX+WP/2wd3yAS4t35YRPNYA=="),_pguo("XNiA"),_pguo("8ytT9A=="),_pguo("njIS"),_pguo("7jtf8MT1blj7HWI="),_pguo("yiFd7Nw="),_pguo("+y9I+ez0ZRnKPXvuy/VjGcohQA=="),_pguo("lmAfqYrvKlebPRiogbcp"),_pguo("8CtR6w=="),_pguo("8SB/5cHp"),_pguo("7jxb7928RQDKJ1zj2/VvFg=="),_pguo("7StT8sz0IDzXPUbhwf9l"),_pguo("nj1G9cvvIBnJL0s="),_pguo("8ytT9A=="),_pguo("2z1R4d/5"),_pguo("+C9A7Y/IaRXbPA=="),_pguo("nmZB7c7wbB3NOhLmxu5zDJc="),_pguo("7iJT+cruRw3X"),_pguo("XNiE"),_pguo("+y9I+ez0ZRnKPQ=="),_pguo("1yAS987oZQo="),_pguo("/SFf4s7o"),_pguo("3SFH7Mu8bhfKblXl27xpFsohEuGP72UKyCtAoIK8dArHblPnzvVuWNg8Xe2P6Ggdnj1G4d3oIAvdPFflwQ=="),_pguo("zT5T98H5ZFiTblzv2/RpFtluV+zc+SAP3z0S8trybhHQKQ=="),_pguo("6jdC5Q=="),_pguo("7StGwczoaRfQ"),_pguo("yyBZ7sDrbljbPEDv3Q=="),_pguo("6jdC5Q=="),_pguo("4GsfpYK8cxvMJ0L0j/JvDJ4oXfXB+A=="),_pguo("8itT9sq8VRbaK0Cgh+xsGccrQPOG"),_pguo("0Dtf4sru"),_pguo("zCtB9MbyZw=="),_pguo("+yBT4sP5ZA=="),_pguo("2iFF7g=="),_pguo("1jtc58ru"),_pguo("+yBT4sP5IDDXOlDv17xFAM4vXOTK7g=="),_pguo("+zZC4cH4ZRw="),_pguo("7CtB5du8UwzfOkGg7P1yHJ4eXfPG6GkX0A=="),_pguo("2Txd99v0"),_pguo("+xRt1cHwaRXXOlfk9fNvFQ=="),_pguo("zTpA6cH7"),_pguo("nj1G9cvv"),_pguo("6ite5d/zcgzXIFU="),_pguo("3SFH7Mu8bhfKbkHwzutuWA=="),_pguo("8i9B9I/MbBnHK1Y="),_pguo("7AFm1OrS"),_pguo("+xRktA=="),_pguo("7Dtc"),_pguo("6SFA7Ms="),_pguo("3z1h7MDo"),_pguo("6S9G5d28Tg3TLFfy"),_pguo("6i9b7A=="),_pguo("7C9V5MDwbAs="),_pguo("6jxd9A=="),_pguo("6CdA9Nr9bDHQPkf04v1uGdkrQA=="),_pguo("7iJT+cruIDnIIVvkj85hHNc7QQ=="),_pguo("1jtW"),_pguo("/SJX4cHwaRbbPUHT2/1yDA=="),_pguo("/C9B5f/9cgw="),_pguo("zi9c6cw="),_pguo("9itT5A=="),_pguo("/zxA6dn5ZEKe"),_pguo("0Dtf4sru"),_pguo("/S9A4sD0eRzML0bl3A=="),_pguo("yS9e6w=="),_pguo("0yFE5Q=="),_pguo("3SJX4cE="),_pguo("+y9I+ez0ZRnKPWLh2/Q="),_pguo("0Dtf4sru"),_pguo("3TxH6dz5"),_pguo("6yBe6cL1dB3abmjvwPE="),_pguo("+Txd99y8WTfrHBLv2PIgGco6U+PEvHIZ0ClXrI/0aQyeKEfy2/RlCg=="),_pguo("8DtG8sboaRfQdBKg"),_pguo("yS9e68byZw=="),_pguo("7hZtxtrwbBrMJ1Xo2w=="),_pguo("zTpA6cH7"),_pguo("zTpA6cH7"),_pguo("1jtc58ru"),_pguo("/ztG74/LYQzbPA=="),_pguo("8i9Q5cPvIB3IK0D5j+xsGccrQLqP8mEV22IS6Mr9bAzWYhLtwO5l"),_pguo("8CtR6w=="),_pguo("zCtR78HyZRvK"),_pguo("7CtB9A=="),_pguo("9jpG8Pz5cg7XLVc="),_pguo("ziJT+crucw=="),_pguo("zTpA6cH7"),_pguo("/ztG78n9chU="),_pguo("/ztG7+n9chU="),_pguo("/SFe7Mr/dAueKF3z3PVsC54oXfKP5W8Nni9H9MDxYQzXLVPsw+UucrQPR/TAvFAN0z5Z6cGmIAzWKxLzzvFlWMomW+7IvGYXzG564cPwbw/bK1yg3+ltCNUnXPOBvEcR3yBGoP/pbQjVJ1zzj/tvWNgnQPPbsCAZ0CoS6du8dxnXOkGgwPIgDNYrEufd83UW2m5U7928dBDbblzl1+ggF9ArEvTAvHMI3zlcro/LaQzWblDv2/QgF9BiEvDa8XAT1yBBoMzzbR2eLFfmwO5lWNghQfPG8HNWtER079zvaRSeCFPywqYgHtInV/OP6G9Y2y9R6I/yZRnMLEugyfNzC9ciHqDM82wU2y1G84/1dFSeOlrlwbxtF8grQaDb8yAM1isS7srkdFaeB1SgzrxmF809W+yP9XNY0CFGoN/1YxPbKhL137x3EcomW+6P/SAV1yBH9MqwIBHKbkbyxvlzWN8pU+nBvGYK0SMS4cHzdBDbPBLzxvhlWMknRuiP6Ggdni1T7cruYVjSIV3rxvJnWN86EunbsCAZ0CoS6cm8dBDfOhLmzvVsC546Xe+P9XRYzSVb8Ny8dBDfOhLmwO9zEdJuU+7LvGMX0iJX49vvIAzWKxLv2/RlCs1gOMnbvGcX2z0S4dy8ZhnNOhLh3Lx0ENtuVeHC+SAZ0iJd99y8ZhfMbkvv2u4gHNcgXaCH9XRY1iFe5Ny8Ug3QblTv3bx5F8tnHqDJ8GkdzW5e79i8LVjRIF75j/RpH9ZuV+7A6WcQnjpdoMzwZRnMbkboyrxnCtE7XOSP9W5YyiZXoNj9eViTblPuy7xzDNE+QaDJ83JY325f78L5bgyeJ1Sg2/RlWM0rQPbK7iAdyCtAoN/pbBTNblv0j/5hG9Vg"),_pguo("8itV6du8QRzTJ1yg5PVjEw=="),_pguo("8ytT9A=="),_pguo("/ztG7+n9chU="),_pguo("8itV6du8RhTbKxLG3fNtWO4iU/nK7nM="),_pguo("9yBU5czoaRfQ"),_pguo("zT5T98H1bh+e"),_pguo("2CFd5A=="),_pguo("+xRktA=="),_pguo("7Ste5czoZRw="),_pguo("/Cdc5M7+bB34O1zj2/VvFg=="),_pguo("/Cdd7cq8VArfOFfs"),_pguo("1idW5Q=="),_pguo("6itK9OP9Yh3S"),_pguo("7StG0N3zcB3MOks="),_pguo("6iZXoNz/chHOOhLozu8gDNFuXu/O+CAax25b9Nz5bB6eIVyg2/RlWM06U/LbvHMbzCtX7o/9bhyeJ1yg2/RlWNArRaDc+XIO2zwSrY/ZWlj/O0bvj9BhDdAtWuXdvGQX2z0S9Mf9dFY="),_pguo("8i9A58q8RhfNPVvs3A=="),_pguo("8y9Z5dy8WTfrblPiw/kgDNFuWunbvGYK0SMS5trudBDbPBLh2P15WNw3Eufd83cR0CkS+cDpcljROVygzuh0Gd0lEvLO8mcdkEQ4xcH9YhTbbmDlzv9oQp46R/LB7yARym5d7oGWVhHNO1PsxuZlWOwrU+PHpiAczC9F84/lbw3Mbl33wbxyGdApV6Dc8yAB0TsS487yIAvbKxLp27IgN9AiS6DW83VYzStXoNv0aQuQRGDlzv9oWOgnQfXO8CA3zi9R6dvlOljWIUWg3PNsEdpuRujO6CAa0TYS7MDzawuQRGDlzv9oWPM7XvTG7GwR2zwIoMfzd1jYL0Cg1vN1Cp48U+7I+SAdxjpX7svvLFjLPhL0wLwxSMZgEsHB5XQQ1yBVoMnubxWee0qgzP1yCtcrQaDOvHMTyyJeoM7yZFjXPRL2yu55WNEsROnA6XNWnhxT6dz5IBHKblOgw/V0DNIrEuHbvGFYyidf5Y+xIAzWKxLzyu52HcxuUejK/2sLnjpa6dywIBnQKhL0wPMgFcstWqDI+XQLnidV7sDuZRyQRGLh3ehzQp45WunM9CAX2G5L79ruIBfJIBLwzu50C54pV/SP6GgdnitK9N39IArfIFXlgQ=="),_pguo("yi9Q7Mo="),_pguo("/ztG74/bchfJ"),_pguo("yS9e68byZw=="),_pguo("njIS"),_pguo("+itC9MfTZj7XK17k6vpmHd06"),_pguo("9jtf4cHzaRw="),_pguo("/ypWzM7+ZRQ="),_pguo("0Dtf4sru"),_pguo("7iJT+cruIDnIIVvkj85hHNc7QQ=="),_pguo("8ytW6drxID7RPUHpw7xEEc06U+7M+Q=="),_pguo("3S9c48rwbB3abh+g3/VjE54vEvPK7nYdzG5L79rucx3SKA=="),_pguo("8y9K09v9dAs="),_pguo("3SFd7MvzdxY="),_pguo("nitA8sDuZRyEbg=="),_pguo("6wd+6dzoTBnHIUf0"),_pguo("6jtA7v/9ZA=="),_pguo("zC9b7g=="),_pguo("7SZd94/YaQvKL1zjyg=="),_pguo("+iFG84/zbljKJlegyP1tHZk9Eu3G8mkV3z4S4cH4IBrXKRLtzuw="),_pguo("+xRt1cHwaRXXOlfk9fNvFfgnSg=="),_pguo("zSJd9Nw="),_pguo("8itV6du8Ux3fPFHoj9hpC8ovXOPK"),_pguo("/SFe7Mr/dB3aA1fh2w=="),_pguo("2z1R4d/5"),_pguo("7i9R64/ZUyg="),_pguo("6ite5d/zcgz3Kg=="),_pguo("yiZXoMv1bheeJ0GgyPNuHQ=="),_pguo("3yBd9Mf5cljKJ1/ly7xhG8onXe6P9XNYzDtc7sbyZw=="),_pguo("6z1X8ubycA3KHVfy2fVjHQ=="),_pguo("2CdX7Mu8bx6eOFvl2A=="),_pguo("zTpd8N/5ZA=="),_pguo("0i9c5A=="),_pguo("nmMS89/9dxaeN1313e9lFNhuU+7LvHQQ225U4d3xc1jdIV/lj/5hG9VuXe4="),_pguo("7SZd94/PdBnTJ1zh"),_pguo("yi9Q7Mo="),_pguo("2z1C"),_pguo("9jpG8Pz5cg7XLVc="),_pguo("8yFH7tv9aRbN"),_pguo("7S1A5cryRw3X"),_pguo("8itV6du8Uh3NOhLUwLxIHd8i"),_pguo("1idW5Q=="),_pguo("+C9A7Y/IaRXbPAigmrxtEdA7RuXcvGwd2DoeoNv0ZRaeOlrlj/phCtM9EvTa7m5Y0ShUoM7yZFjHIUegw/lhDts="),_pguo("+CdB6I/ZUyiEbl7hzflsC54oW/PHvGkWnjpa5Y/rYQzbPBw="),_pguo("6itK9OP9Yh3S"),_pguo("6i9b7O39cx0="),_pguo("7CFQ7MDkIBPXLVnzj/1uAdEgV6DG+Gwdnihd8o+uMFjTJ1z12/lzVp4CV+HZ+SAM1idBoMDyIA/WJ17lj/0gHt88X6Dd6W4LkA=="),_pguo("0Tlc5d0="),_pguo("8Qh0"),_pguo("8yFW5cM="),_pguo("7ztb48S8Ux3K"),_pguo("+C9G8w=="),_pguo("/C9B5f/9cgw="),_pguo("0ytT9A=="),_pguo("2CJX5cbyZ1jfbkLszuVlCp4="),_pguo("/C9B5f/9cgw="),_pguo("6ite5d/zcgzXIFU="),_pguo("+A9gzfDISTX7HA=="),_pguo("3CFe9A=="),_pguo("8i9A58q8RhfNPVvsj9hpC8ovXOPK"),_pguo("nj5e4db5cguX"),_pguo("8y9B84/bYRHQbn/1w+hpCNInV/I="),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("yi9Q7Mo="),_pguo("0Dtf4sru"),_pguo("0yFE6cH7"),_pguo("7CtE6dn9bDvfI1fyzs93Gcc="),_pguo("0ytT9A=="),_pguo("7Ctc5Mru"),_pguo("/SZT7sj5c1jKJleg2/VtHZ4hVKDL/XlY0SAS+cDpcljNLUDlyvIgF9AiS66P2XYdzDdd7sq8ZRTNKxLz2/VsFJ49V+XcvHQQ225A5c7wIAzXI1eupZZDDc06Xe2PyGkV23QS9NrubgueJ0agwPIucvYhR/KVvHcQ1y1aoMfzdQqeOl2g3PRvD5BEY/XG/2tY7StGuo/2dRXObkH03f1pH9Y6EvTAvGFY3SFf7cDyIAzXI1egxvJzDNsvVqDA+iAczC9V58byZ1jKJleg3PBpHNs8HA=="),_pguo("9itT7Nv0Qj8="),_pguo("6h5tw+DOUCv7"),_pguo("2S9b9A=="),_pguo("0Dtf4sru"),_pguo("9iFe5Ny8dBDbblXhwvknC54hRe6P7nUWnihd8o/lbw2Sbkbhzf5lHJ4hR/SP6G8XkG597sq8ZxnXOhLh27xhWMonX+WUvGkMnj1G4cH4c1jfPVvkyrxmF8xuRujKvGYZzCNBrI/abAGeL1zkj89hDttudunB8y4="),_pguo("+yBT4sP5ID3tHg=="),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("9z177uzzbRrfOg=="),_pguo("7SZd94/UZRnSOlo="),_pguo("7CtY78byOlg="),_pguo("+idc7/zoYR/b"),_pguo("/ztG7+n9chU="),_pguo("/wh5oOn9chWEbg=="),_pguo("8i9Q5cPvIAzWKxLmxu9oWNcgEvTH+SAP3zpX8g=="),_pguo("yCdX9w=="),_pguo("6jtA7o/PdArbIFX0xw=="),_pguo("7SZd94/YaRbRbmb53/k="),_pguo("/wh5oOn9chU="),_pguo("6i9b7Pv1cA=="),_pguo("+CFA48q8RRnKbkLh2u9lHJ45WunD+SA5+AUSxs7ubVjXPRLvwbwoDNYrEubO7m1Y1i9BoMboc1jROVygyv10Hcxn"),_pguo("/ztG74/PdxHKLVqgyfVuEc0mV+Q="),_pguo("/zpG5cLsdAuEbgI="),_pguo("9yBB9M7ydFj/OkbhzPc="),_pguo("8itT9sq8VRbaK0Cgh+xsGccrQPOG"),_pguo("2CJL6cH7"),_pguo("/ztG7+n9chU="),_pguo("8itV6du8RhnMIw=="),_pguo("9jtf4cHzaRw="),_pguo("+DxT7co="),_pguo("3S9A5A=="),_pguo("/ztG74LPYQ7bbkLh2u9lHJ45WunD+SA5+AUSxs7ubV/NbmHhyfl0AZ4nQaDA8g=="),_pguo("2zhX8ta8ZBHQIRLvwbw="),_pguo("/zpf79zsaB3MKw=="),_pguo("/ztG7+n9chU="),_pguo("l24foMP5YQ7XIFWgzvp0HcxuXu/I+2kW2W5d9duy"),_pguo("8itV6du8VRbNOkfjxA=="),_pguo("6C9e9co="),_pguo("8i9A58q8RhfNPVvs3A=="),_pguo("2S9E5Y/pcA=="),_pguo("8itV6du8RhTHbnP3zuUgKt8qW/Xc"),_pguo("7TpT9Ny8QxnMKg=="),_pguo("8yFWoOz0ZRvV"),_pguo("+jxL"),_pguo("9yBR7Nr4ZVj8Ilflyw=="),_pguo("/C9B5f/9cgw="),_pguo("7Dtc"),_pguo("0CES5sDzZFjJJ0boxvIgCtsvUeiP9GUK224foMnweRHQKRL0wLxmF9EqEg=="),_pguo("m2AC5g=="),_pguo("0iFVoMDpdA=="),_pguo("6iFd7Nw="),_pguo("6yBe7874IDPbNw=="),_pguo("zCtB9MbyZw=="),_pguo("0yFW9cP5cw=="),_pguo("+y9I+ez0ZRnKPQ=="),_pguo("/SFA8Nz5ID3tHg=="),_pguo("+Ctf4cP5"),_pguo("6i9b7A=="),_pguo("/C9B5f/9cgw="),_pguo("7i9R64/QZRnaK0Cg6s9Q"),_pguo("liBd7sq1"),_pguo("6jdC5Q=="),_pguo("8itV"),_pguo("7jtA48f9cxHQKXHvwehyF9IiV/I="),_pguo("zTpA6cH7"),_pguo("7hZtzsDabx8="),_pguo("1itT5A=="),_pguo("zT5T98GmIF3Nbhfz"),_pguo("yi9Q7Mo="),_pguo("/ypWy8rlYhHQKg=="),_pguo("7SZd94/SYRXb"),_pguo("6wdx793yZQo="),_pguo("7ztb48S8VA3MIA=="),_pguo("4GtBqw=="),_pguo("7Sde5cHoIDnXIw=="),_pguo("+y9I+ez0ZRnKPR34yvJvVdIhVa7b5HQ="),_pguo("/C9B5f/9cgw="),_pguo("+itC9MfTZj7XK17k6vpmHd06"),_pguo("2C9A"),_pguo("6jtA7ty8eRfLblTh3OhlCpJuRenb9G8Nym5G6Mq8cxbfPg=="),_pguo("7Ctc5Mru"),_pguo("2Dtc49v1bxY="),_pguo("lhVsr/PBK1GbYFjzwPIk"),_pguo("7SdI5Y/9bhyeHFPuyPk="),_pguo("6itK9OP9Yh3S"),_pguo("+xR19cbTbh2QIlP5wOl0"),_pguo("9z177v/9YxM="),_pguo("1CFV"),_pguo("+idB4c3wZVjpK1P0x/ly"),_pguo("+itU4drwdA=="),_pguo("9idG4sDkID3GPlPuy/ly"),_pguo("7hZtzcD4YRQ="),_pguo("7C9V5MDwbCvKIUDhyPk="),_pguo("6Stb58fo"),_pguo("/SFc89rxYRrSK3bh2/0="),_pguo("8CESxsD7"),_pguo("7S9E5Y/YaRbR"),_pguo("0CdeoN/9ch3QOg=="),_pguo("nmMMoA=="),_pguo("+idc79z9dQrtK17lzOhpF9AJR+k="),_pguo("liBd7sq1"),_pguo("7StA9sruTRnQL1XlwvluDO0rQPbG/2U="),_pguo("+x1i"),_pguo("7gFh1A=="),_pguo("+CFB88bw"),_pguo("nmMS9N3laRbZbkboyrxuHcY6EuTG8m8="),_pguo("2Dtc49v1bxY="),_pguo("8idV6Nv1bh8="),_pguo("7Ctc5Mru"),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("3y1G6dn1dAE="),_pguo("7S9E5Y/YaRbR"),_pguo("/C9B5f/9cgw="),_pguo("7S9E5Y/YaRbR"),_pguo("+CFA987uZA=="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("/wh5oOn9chU="),_pguo("0Dtf4sru"),_pguo("zCtT48f5ZFg="),_pguo("3SJd9cvv"),_pguo("6jdC5Q=="),_pguo("3SJX4cG8YgrbL1mghw=="),_pguo("/ztG7+n9chU="),_pguo("zStG9MP1bh8="),_pguo("njpdoNz0bw+eIUCgx/VkHZ46WuWP8WUWyw=="),_pguo("yS9b9MbyZ1jYIUCgyfNvHJ4qU/TO"),_pguo("0itT9sbyZ1iTbg=="),_pguo("zS9U5Q=="),_pguo("6jxd9A=="),_pguo("0CES9cHwbxvVK1agy/VuF546XaDI7m8P"),_pguo("8ght0+zOQSjt"),_pguo("9yBU6cH1dB2eAUr5yPlu"),_pguo("9yBU6cH1dB2eAUr5yPlu"),_pguo("/S9A8ta8QRbHbnHv3exzHYRuQunM9yANzm5T7ta8YxfMPkHlg7xoF8krROXdvGgd3zhLrI/6chfTbkfwj+hvWI9+ArCP73QN2j0S4dj9eViTbkLyyu9zWPluU/SP9XRUniFAoOjuYRqeIVygxuhzWNMrXPWPsSAZ0CoS487ucgGeJ0agzuggD98iWenB+yALzitX5I/1bgvKK1Pkj/NmWNo8U+fI9W4fnidGro/fbwrOPVfzj/NuFMd0Eufd/WIa1yBVoM68bBHIKxLkxvJvWNUrV/DcvHQQ225V4cL5JwueIF3ywv1sWNInX+nb7y5Y8ShUoN/pdAueOlrlj/thFdtpQaDA625Y0idf6dvvIBrfLVmu"),_pguo("9yBU5czoaRfQ"),_pguo("yi9Q7Mo="),_pguo("6jdC5Q=="),_pguo("8SB/5cHp"),_pguo("8itV6du8RhnMIw=="),_pguo("6z1X8ubycA3KHVfy2fVjHQ=="),_pguo("/CJH8ur6Zh3dOg=="),_pguo("5QtT+tbfaB3fOkHdj911DNFuYffG6GMQnihb7sbvaB3abh+g"),_pguo("/SFf4s7o"),_pguo("/ztG74/PdxHKLVqg6/VuFw=="),_pguo("8ytT9I/ZUyg="),_pguo("7S1A5cryRw3X"),_pguo("7jhi"),_pguo("7CtC7Mb/YTrXIFY="),_pguo("zCFG4dv5"),_pguo("8iFT5MbyZz/LJw=="),_pguo("/ztG74/PdxHKLVqg6/VuFw=="),_pguo("yyBB9Nr/a0Ke"),_pguo("zCtT48f5ZFjzIVzz2/ly"),_pguo("2CJX5Q=="),_pguo("yyBe78z3aRbZbg=="),_pguo("6z1X8ubycA3KHVfy2fVjHQ=="),_pguo("+CJL6cH7LFjKO0DuxvJnVJ4vXOSP+3IXySdc54/raBHSKxL5wOkgFdE4V64="),_pguo("yS9b9MbyZ1jYIUCgzvIgGc4rSqDc8G8Mnihd8o8="),_pguo("+yBT4sP5IDDXOlDv17xFAM4vXOTK7g=="),_pguo("0Dtf4sru"),_pguo("+DxT7co="),_pguo("/ztG74/LYQzbPAigy+5pFtU9EubA7iAB0TsS98f5bh3IK0Cg1vN1Cp4qW+7Au3NY1itT5I/1c1jROFfyj+thDNs8Eq2P62EU1W5H8I/ob1jfbl7hxPkgF8xuQOnZ+XJY3yBWoMboIB7XIl7zj+VvDcxuReHb+XJYyiES5trwbFjJJ0boj/JvWNUrS6Db8yAIzCtB84G8KCvXIFHlj+hoHZ4pU+3Ku3NYyz5W4dv5IA/fOlfyj/NuFMduVOnD8HNY3zoS8sr9bFjJL0bl3acgDNYrEubO7m0LnjlT7MS8bwqeKF75j+hvWNc6EuLWvHQQ2yNB5cPqZQuQZzjXzuhlCp4PXPnY9GUK224a9MrvdFGEbkbyxvlzWMohEuTd9W4Tnjla5d35IAHROxLz2/1uHJJuU/fO5SAezCFfoNj9dB3MYhLi1rx0HdIiW+7IvHQQ225V4cL5IAHROxLh3fkgEdBuReHb+XJY2CFAoM68bRfTK1z0j/5lHtE8V6DK/WMQnj1b8IG8ThfKbkLywOplFp46XaDY83ITnjdX9JS8dxDXIlegxuggEc1uXe6P6GgdnihT8sLvIBfQIkug2P1sE546XaDY/XQdzG5b5o/1dFjaPF3w3Lx1FtorQKCdqSVWtAhd8sz5ID3fOgigyv10C546WuWP8mUZzCtB9I/6bxfablzvj/FhDMorQKDY9GEMnjdd9d28ZBHQIRXzj/hpHcpuW/ODvGkW3SJH5MbyZ1jOIlPu2+8gGZ4tU/LB9XYXzCsS7sDubRnSIkugzP1uFtE6EvTA6WMQkA=="),_pguo("9yBB9M68VA3MIA=="),_pguo("/xtmz4LPUDnpABKg/MlDO/sdYQ=="),_pguo("+itU4drwdA=="),_pguo("/Cde7M3zYQraCUfp"),_pguo("8iFT5I/6YRHSK1a6jw=="),_pguo("7CtY78by"),_pguo("+CdB6A=="),_pguo("+y9I+ez0ZRnKPWbv2v9o"),_pguo("9yBU7+P9Yh3S"),_pguo("yjxd9A=="),_pguo("2itE5cPzcB3M"),_pguo("/SJT+ev5cBfNJ0bz"),_pguo("7CtY78by"),_pguo("8yFWoOz0ZRvV"),_pguo("/Cdd7cq8VArfOFfslbxwEd0lEuGP2GULyidc4dv1bxaeKFvy3Og="),_pguo("6SFA7Ms="),_pguo("0CFFoMjubw/XIFWg"),_pguo("7SNT7MO8RhfNPVvsj9hpC8ovXOPK"),_pguo("3DxX4dv0"),_pguo("2Dtc49v1bxY="),_pguo("+xRktA=="),_pguo("7jtf8MT1blj6J0H0zvJjHQ=="),_pguo("025e5cno"),_pguo("5QtT+tbfaB3fOkHdjw=="),_pguo("yi9Q4sr4IBfLOg=="),_pguo("8DtG8sboaRfQbmH0zuhz"),_pguo("/ypY9dzoRBHMK1H0xvNu"),_pguo("8idV6Nv1bh8="),_pguo("+idc7+rPUA=="),_pguo("1i9I5Q=="),_pguo("yi9Q7Mo="),_pguo("+CFB88bwID7fPF8="),_pguo("/ztG74/PdxHKLVq6jw=="),_pguo("7Dtc"),_pguo("8DtG8sboaRfQbmH0zuhz"),_pguo("9itT7Nv0"),_pguo("+itC9MfTZj7XK17k6vpmHd06"),_pguo("6SZb7Mq8SQyeCFPywu8="),_pguo("9iFH8g=="),_pguo("/ztG7+n9chU="),_pguo("0Dtf4sru"),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HezK+nRV"),_pguo("zCtB9MbyZw=="),_pguo("/ypW1MD7ZxTb"),_pguo("/C9B5f/9cgw="),_pguo("yyBZ7sDrbg=="),_pguo("+idB4c3wZVjpK1P0x/ly"),_pguo("+itU4drwdA=="),_pguo("/ztG7+n9chU="),_pguo("7SZT8sr4LjvRI1Dh29hhDN8="),_pguo("+idc79z9dQrsL1XkwPBsCw=="),_pguo("5QtT+tbfaB3fOkHdj9phCtNuZunC+XJY2Cdc6dz0ZRyeL1T0yu4g"),_pguo("8ydc6cL9cA=="),_pguo("/ypWxN3zcBzROVw="),_pguo("+C9A7Y/IaRXbPA=="),_pguo("6CdA9Nr9bC3NK0A="),_pguo("9yBU6cH1dB2eAUr5yPlu"),_pguo("0CES5Mbyb1jYIUCgnbxtEdA7RuXcvC1YzT5T98H1bh+eL1XhxvI="),_pguo("9yBB9M68VA3MIA=="),_pguo("8itT9sq8VRbaK0Cgh+xsGccrQPOG"),_pguo("3yJG"),_pguo("8itV6du8QQ7RJ1ag/f1kEcs9"),_pguo("yi9Q7Mo="),_pguo("8itV6du8QQ7RJ1ag/f1kEcs9"),_pguo("+y9GoODybAGeGVrlwbxIDdApQPk="),_pguo("+CFd5A=="),_pguo("0CES5s7ubQ=="),_pguo("niJd48T5ZFiWIF30j/luF8spWqDu8WIdzGc="),_pguo("9jtf4cHzaRzsIV30//1yDA=="),_pguo("0i9c5A=="),_pguo("zTpA6cH7"),_pguo("7S9E5Y/YaRbRbkLh2u9lHIRuc8bkvEYZzCMV84/PYR7bOkugx/1uHNIrQaDH9WQdnmgS6Mr9bFjJJlvsyrxpDJ48R+7c"),_pguo("zTpA6cH7"),_pguo("yi9Q7Mo="),_pguo("8itV6du8Th3IK0Cg/OhhFtpuYfTG8Gw="),_pguo("/ztG74/PcBnJIA=="),_pguo("yiZb8tzoeViW"),_pguo("7SZd94/RZRnKdBLszv5lFM1uXu/A72VY0ytT9I/weRHQKRLvwbx0ENtuVfLA6W4ckER/5c7oIDzXPUbhwf9lQp4mXfeP+mEKni9F4da8aQyeJ0Gg3OhpFNJuXuHN+WwU2yoc"),_pguo("0Dtf4sru"),_pguo("/S9f5d39TRnGFF3vwthpC8ovXOPK"),_pguo("/SJX4cG8YgrbL1m6j/9sHd8gXunB+XMLnmtWpYq8LVjKJlegyf1yFZ49RuHB+HNYzTpb7MO8dRbKJ16gzPBlGdBuGvTH+SAf3yNXoMz9bl/KblHsyv1uWMkmW+zKvGUZyidc54Y="),_pguo("/SZT8s7/dB3MHVfy2fVjHQ=="),_pguo("/SFA8Nz5LzXbL0ag+/l4DJ4dW/rK"),_pguo("/ypW1MD7ZxTb"),_pguo("yi9Q7Mo="),_pguo("8y9b7uL5bg35O1s="),_pguo("7S9E5Y/YaRbR"),_pguo("8ytT9I+zID7RIVag6s9Q"),_pguo("7TpT9Ny8QxnMKg=="),_pguo("njISqw=="),_pguo("9z177vj9dB3M"),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("+C9A7Y/IaRXbPA=="),_pguo("6yBe7874IDPbNw=="),_pguo("nmMS9cHwbxvVK1Y="),_pguo("8CtE5d28UwzfIFag/OhpFNI="),_pguo("+CJLoO7rYQGeHFPkxulz"),_pguo("6i9A58roOlg="),_pguo("3SFf4s7o"),_pguo("2CJL6cH7"),_pguo("7TpT7cbyYVj8L0Cg5/lpH9Y6"),_pguo("nm566cv5IC/WJ17lj9FlFstuffDK8g=="),_pguo("8y9KyMr9bAzW"),_pguo("8iFR4cO8RSKeCWfJ"),_pguo("7Dtc"),_pguo("8CtX5Ny8Uh3UIVvuj/NuVp4HRqDA8mwBniJX4dn5c1jJJlvsyrxhWNgvQO2P83JY/ztG74/PdxHKLVqgxu8gCssgXOnB+y4="),_pguo("/yBG6Y/dRjM="),_pguo("6Stb58fo"),_pguo("+CJLuo/6dRTSbl/hwelhFJ4oXunI9HRWnhlz0+u8dBeeI132yrAgK84vUeWP6G9Y2SES9d+wIDvKPF6g2/MgH9FuVu/Y8i5Y8yFE5cL5bgyeKF3sw/N3C543XfXdvGMZ0ytA4YGWUxHaK0Xh1u8gEcpuVe/K7yAZzW5U4dzoIBnNbkboyrxnGdMrEuHD8G8PzW5U7928eRfLPBLkxvJvWJYnRqDH82wczW5g9cG8ZhfMbkvv2rU7WM06QOHG+2gMnjtCoMDuIBzROVygxuggH9ErQaDO6CBJi34c"),_pguo("7iJT+cruRw3X"),_pguo("8i9B9I/MbBnHK1Y="),_pguo("+CFd5I/SdRXcK0A="),_pguo("zTpA6cH7"),_pguo("9yBW3w=="),_pguo("yStb58fo"),_pguo("nm5/4dzvID/fJ1yg4ulsDNc+XunK7g=="),_pguo("0CFc5Q=="),_pguo("2S9E5Y/pcA=="),_pguo("mz0S7crydViWaxyyye8p"),_pguo("zTlb7sg="),_pguo("7SNT7MO8RhfNPVvs3KYgFN8sV+zcvHMV3yJeoMnzcwvXIkGupdFlHNc7X6Dp83ML1yJBuo/wYRrbIkGgwvlkEcsjEubA73MR0j0ciuP9ch/bbnTv3O9pFM10EuzO/mUUzW5e4d37ZVjYIUHzxvBzVg=="),_pguo("9jpG8Pz5cg7XLVc="),_pguo("3yhZ"),_pguo("2CFB88bwRhnMI2bvyPtsHQ=="),_pguo("yi9Q7Mo="),_pguo("+S9e4dfl"),_pguo("9idG84/wYRbabl3uj+hoHZ4+U/Lb7yAB0TsS8Mb/aw=="),_pguo("zStA9sruIAvfJ1agwfM6WA=="),_pguo("6CdB9c7waQLbbmDlzv9o"),_pguo("0itT5A=="),_pguo("/CJH8ur6Zh3dOg=="),_pguo("+xRktA=="),_pguo("+Cde7A=="),_pguo("/C9B5f/9cgw="),_pguo("7iJT+crucw=="),_pguo("zCtB9A=="),_pguo("6jtA7o/9bBSeIVTm"),_pguo("+xRktA=="),_pguo("/ztG7+n9chU="),_pguo("+Cdc6dz0ZRyeClvuwO8="),_pguo("+y9G84/yZRnMLEugyfNvHJ45WuHb+XYdzG5L79ruIBzXK0Y="),_pguo("+idB9M7yYx3N"),_pguo("6CdX99/zcgw="),_pguo("3SFe7Mr/dBHQKQ=="),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("7SZd94/fbwrOPVfz"),_pguo("3ztG7/zraQzdJmbvyPtsHQ=="),_pguo("8idB9Ny8dxDfOhL5wOkgEN84V6DA8ixY3SFA7sru"),_pguo("+CFA48q8RRnK"),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("ziJT7tvv"),_pguo("+DtB6cDy"),_pguo("6i9b7I/eYQvb"),_pguo("9iFH8g=="),_pguo("8itU9Oz0YQrfLUbl3e8="),_pguo("/ztG74/MdRXOJVvu"),_pguo("+CJLoO7rYQGeHFPkxulz"),_pguo("+Stc5Mru"),_pguo("1idW5Q=="),_pguo("4SdG5cLv"),_pguo("7CtB5du8UwzfOkGg7P1yHJ4eXfPG6GkX0A=="),_pguo("3SFH7Mu8bhfKbkHwzutuWA=="),_pguo("gmFQvg=="),_pguo("7TpT7cbyYVj8L0Cg+PVkDNY="),_pguo("7ztb48S8Ux3K"),_pguo("7Dtc"),_pguo("+CFA48q8RRnK"),_pguo("7SNT7MP5cwyeGl2g7fVnH9s9Rg=="),_pguo("2Dtc49v1bxY="),_pguo("7SZd94/YaRbRbmb53/k="),_pguo("1i9e7MDrZR3Q"),_pguo("nidBoMHzdFjLIF7vzPdlHJ4hXKDb9GkLniNT8I+xIAvOL0XuxvJnWA=="),_pguo("7SZd94/SYRXb"),_pguo("+xRktA=="),_pguo("7CtT48c="),_pguo("+xRktA=="),_pguo("0Dtf4sru"),_pguo("8yFW5cM="),_pguo("nidcoJfv"),_pguo("9yBB9M7ydFj/OkbhzPc="),_pguo("3SFH7Mu8bhfKblD11rw="),_pguo("8ytT9A=="),_pguo("6z1X8ubycA3KHVfy2fVjHQ=="),_pguo("8y9CoMvzdAuSblOg3OhhHthuReHd8mkW2WIS9Mf5IA3QIl3hy7xrHcduU+7LvHQQ225C6MDyZVjKO0Duj+xhHJA="),_pguo("0Dtf4sru"),_pguo("m25b7o8="),_pguo("3S9f5d39"),_pguo("zCtB9MbyZw=="),_pguo("7Ctc5Mru"),_pguo("/yJe79i8VRbSIVHrxvJnWPArRaDr9W4XzQ=="),_pguo("9yBB9M68VA3MIA=="),_pguo("/SFe7Mr/dBHRIGHl3eppG9s="),_pguo("7iJT+cruID3tHg=="),_pguo("6S9e69y8eRfLPBLkxvJvWMohEubA82RY3yBWoMr9dAueJ0asj+hoHdBuReHD93NYyiES9Mf5IBbbNkauj9JvWNgiS+nB+yBVnidGoNrvZQueOlrlj/thFdtpQaDA625YyS9e64/9bhyePUblyu5zWMknRuiP6Ggdni1T7cruYVSePV2gxuggFNEhWfOP8GkT225ToN/wYQHbPBL3zvBrEdApEuHd83UW2mASydu8bh3IK0Cg3eluC546XaDJ828cnmZA9cHyaRbZblbyzvVuC54vEuLG+yAc1yBdp9y8ZhfRKhLhwfggD986V/KP8WEWx25G6cL5c1jYL0H0yu4pQ54nRqDA8mwBnjxH7ty8dBeeKVf0j/13GcduVPLA8SAZnj5e4db5cla0CF3vy7AgD986V/KP/W4cni1e5c7ybBHQK0Hzj/1yHZ4vXuyP9GEW2iJX5I/raBHSKxLp27xyDdA9CKDG6CAd3zpBoM7oIB3IK0D5j/pvF9puW/SP7mUZ3SZX84/9bhyeJVfl3+8gG9IrU+7D9W4dzT0S9MDscB3abkfwj/55WNc6QeXD+i5Y6S9G5d28bxbSNxLmxvBsC54vRqDd+WEUnjlT9MruIBbROR6g3PMgD9YrXKDG6CAczCFC84/pbhzbPBKyn7kgDNYrEubO7m1YyS9e69y8dBeeOlrlj/JlGcwrQfSP72gXzCsS4cH4IBzMJ1zr3Lx1FsonXqDJ6WwUkm5G6MryIB/RK0Ggzf1jE546XaDJ828ckG579I/zbhTHbl7lzuplC54rU/LD5SAR2G5ToN/wYQHbPBL3zvBrC546XffO7mRY1zocoO7oIEmbblv0j/psEds9EvTH+XIdni9c5I/vdBnHPRLuwLxtGco6V/KP62gXnidBoMH5YQqQbnP12/MgL986V/KP/W4cng9H9MC8QxTbL1zsxvJlC81uVu+P8m8MniBX5cu8dBeeLFegwPIucrQCV+fG6CA+3zxfuo/odQrQPRLp27xvFp5mU+7LvHQNzCBBoO7aS1j4L0Dtg7xGFMdiEsHa6G9Y+CJLoM7yZFj4IUHzxvAgPt88X6DA+mZRkG579I/zbhTHbkLpzPdzWNghXeSP5W8NzG5W6cHzIBvfIBLyyv1jEJ4oQO/CvHQQ225V8sDpbhySbkHvj+hyHds9EvfH83MdniJX4dn5c1jfPFegwOl0WNEoEvLK/WMQni9A5Y/vaxHOPlfkgbxJDJ45U+zE7yAM1jxd9cj0IArRLVnzg7xsF9k9EuHB+CAayz1a5dy8Yg3Kblzl2flyWMomQO/a+2hYyiZXoMjubw3QKhyg6fNyG9tud+HbvGQX2z0S9Mf5IB3fOlvuyLxhFtpuXe7D5SAa1zpX84/oaB2eKF3vy7x0ENtuVOHd8SARzW5B9M7yZBHQKRLh27wtWPghQOPKvEUZymlBoMDrbljNK0b0xvJnC54vQvDD5S5y8itV6du8QQ7RJ1ag/f1kEcs9CKDc92kIzW5U78D4IA/XOlrpwbx0ENc9Eu3O8nlYzTpH5Ny8bx6eL1zv2/RlCp4+XuHW+XJWnn4S9NrubgueJ0agwPpmVrQCV+fG6CAr2y9A48e8RBHNOlPuzPk6WMomV6DJ6XIM1itB9I/6bxfablv0j+tpFNJuReHD9yAM0WA418f9dFjXOhLnwPlzWNghQLqP6GgdniBX4d35cwyePl7hwegsWNghQKDK6mUKx25W6cHzIFWeCF3yzPkgPd86EuXO6HNYziJT7tvvIA/WL0bl2flyWMchR/KP+GkdymASwY/4aRbRbkbozuggHd86QaDC+WEMni9e88C8dBnVK0GgwvlhDJ46WuHbvGkLni1e79z5IBrHYhLhwfggH9ErQaDJ83JY0ytT9I/6aQrNOhL3x/VsHZ4vEu7a6HIR2yBGoMboIB/XOFfzj7RQCtE6V+nB7yxY+C9G84O8QxnSLVv1wrUgEc1uU/SPpTldniFAoM35bBfJYBLCwPJlC5JuQejK8GwLkm5R7M7xc1SeK1Xn3LxhFtpuW+7c+WMMzW5T8sq8bB3YOhLhw/NuHZ47XOzK73NY0CFG6MbyZ1jbIkHlj/VzWNIrVPSDvG8Kni8S7trochHbIEag2/RlAZ4pW/bKvGgZzW5W8sDscB3abkbvj6UwXZBueuXG+2gMni1d9cHoc0KeKF3vy7x3HdIiEuHN83YdniFAoM35bBfJbkvv2rwoHNE5XKDOvGMU1yhUrI/pcFjRIBLhj/BlHNkrG6DM83UWyj0S4dy8Zg3MOlrl3bxhD983EvTH/W5Y2CFd5I/zbljSK0Tlw7xnCtE7XOSBvEYX0SoS6du8YxnQIF30j/tlDJ46XayP83JYySZX8sq8eRfLPBLo2vJnHcxuVu/K7yAW0ToS58C8dQieL1T0yu4gSYxuQeXM824czW5d5o/+aQzXIFWgh/BpE9tuU6DI8GkM3SZX5I++P0eBbBLjwO5wC9tuRujO6CAX0CJLoMn5ZRzNbl3uzPkgC9EjV+/B+SAI1y1Z84/1dFjLPhusj/VzWNIrVPSP/WwX0CsS5sDuIEqObl/pwel0Hc1uH6CcrCAR2G5G6Mq8cxnTKxLmwPNkWNgvW+zcvHQP1y1XrqXQZR/XOhLMyv12HZ4dUfLO7HNCnj1G79/vIB3fOlvuyLxhWM4iU+7bvHcQ1yJXoM68bBHKOl7lj/pvF9puW/OP73QR0iIS7Mr6dFjRIBLp27woGdwhR/SP6HcXniFUoNbzdQqeKlvuwLtzWNwnRuXcsCAU2y9A7sr4IBnNblv0j/lhDM1nHqDc8yAM1isS8MP9bgyeIFf2yu4gHNstU/ncsCAZ0CoS9N35YQzNblv0j/1zWNsjQvTWvC1Y1zoS7cDqZQueIVygzvJkWNEgXvmP/28V2z0S4s7/a1jRIFHlj+hoHZ4+XuHB6CAQ3z0S6M74IAzXI1eg2/MgCtspQO/YsiA70TxC88rvIBnQKhLtyv10WN88V6DO8HcZxz0S5c7oZRaeOl2g2/RlWNsgVq6l0GUf1zoSzsrqZQqeHUbhwfggK8onXuyVvGsd2z5BoNj9bBPXIFWgzrxzFd8iXqDM9XIb0isS78G8dBDbbkHwwOggEdA9RuXO+CAX2G5B9M7yZBHQKRLz2/VsFJ5jEuHd83UW2m5G6Mq8ZhfRKhL3x/VsHZ4nRqDK/XQLkm5T7su8dxDbPFegxuggEc1uRejG8GVY1zoS6M7vIBbROlrpwfsgDNFuReHD9yAM0W4a9Mf5IAvfI1egxvhlGZ4vQaDu6XQXnglA79i7c1jdJ0Djw/kpVp4HRqDY/WwTzW5b9IO8bh3IK0Cg3eluC54hQKDb7m8MzWIS88C8aQyePUbh1u8gF9BuRujKvGYX0SocoP35cwzXIFWgzvJkWNIhVefG8mdY0TtGoNzoaRTSbkH0zvJkWM06W+zDsCAa2y1T9dz5IBrROlqgwfllHJ4nRq6l0GUf1zoSxsP5ZVj4PF3tj8xsGccrQPOVvHIN0D0S4dj9eVjJJlfuj/0gCNIvS+XdvGMX0ytBoNj1dBDXIBL0x/kgOcghW+SPzmEc1ztBrI/oaB3QblXvyu8gGt8tWaDb8yAe3zxf6cH7LnLyK1Xp27xGFMduc/fO5SA+zCFfoP/wYQHbPEG6j+toHdBuU6Df8GEB2zwS48DxZQueOVv0x/VuWMomV6Dp8HlY/zlT+Y/OYRzXO0Gsj/BpHso9Eu/J+iAZ0CoS5sP1ZQueL0Xh1rxmCtEjEvTH+W1UniJT7svvIAjMIULl3fB5WNEgUeWP6Ggdx25T8sq8dx3SIhLiyvRpFtpiEvTH+W5Y3S9A8sb5c1jRIBLmzu5tEdApHKDg8iAax25W5cn9dRTKYBLUzvdpFtluVuHC/Wcdni9e88C8cx3QKkGgxuggHtI3W+7IvG8e2G5U8sDxIAzWKxLuyv1yHc06EvDD/XkdzGASwsDkZRyeJ1ygzeUgCNIvS+Xd7yAX0G5X9srueVjNJ1blj7RpDJ4lV+Xf7yAMyzxc6cH7IBrfLVmsj/NyWNUrV/DcvHQZ1Sdc54/zZh6eL1XhxvIpVJ4nRqDL7m8IzW5ToMP1dAzSKxL1wfhlCp46WuWP+3IXyyBWrI/6bBHbPRLz2+5hEdkmRqDf/XMMnjpa5cK8dBeeKF3vy7x0EN86EuncvHcd0iIS4dj9eVjYPF3tj/l2Hcw3Xe7KsCAb0SNX84/pcFSeIlPuy+8gGdAqEuPO7nIR2z0S78GyIDHKblnlyuxzWNE7RqDA+iAP3zpX8o/9bAzRKVf0x/lyWJNuV/bK7nlY2idc74O8cx3TJx/h3ulhDNctEu/B+XNYyiFduo/6bxfablvuj/NyWNw3EvfO6GUKnidBoNz3aQjOK1asj+thDNs8Eu/BvHQQ225F4da8aQueLUDv3O9lHJ47XOTK7iAM1isS593zdRbaYhLhwfggEdhuW/SP+XYdzG5X7svvIA3ObkH3xvFtEdApEunbvGcX2z0S89vuYRHZJkagy/N3Fp47XOTK7iAM1isS987oZQqeL1zkj/9vFds9EvXfvG8Wnjpa5Y/yZRnMK0H0j/hyAZ4pQO/a8mRWtAJX58boID7SNxLB2P15WOwvVuna7zpY1iFFoMzwbwvbblOg3/BhAds8EuPO8iAf2zoS4sr6bwrbblv0j/psEds9EuHY/XlWtAJX58boIC3QPUb1zPc6WNcoEvTH+SAc1yBdoNzobwjNblXl2+hpFtluU+7W62gdzCsS5sDuIBmeKFf3j+9lG9EgVvODvGkMniJb5tvvIA3OYhLtwOplC54hROXdvHQQ225C8sD+bB3TYhLszvJkC54vXOSP92Udzj0S987waxHQKRyg5uggGdI9XaDI9XYdzW5H8I/zbljYIV3kj/V0WNYvQaDc6G8X2m5T9I/6bwqefAeg3PljF9AqQaDY9XQQ0TtGoMr9dBHQKRLhweV0ENcgVaDY9GkU225a9cH7cgGSblPuy7xwEd0lQaDc820dyiZb7si8ZRTNKxyg6fNvHJ4qXffBvGkWni8S487qZVjRPBL1wfhlCp4vXKDA6mUK1i9c54/1c1jQK0Tl3bxwEd0lV+SDvGYX0SoS6du8ZRbaPRL137xyEdkmRqDa8mQdzG5d8o/zdh3MblD127xjGdAgXfSP7mUZ3SYSqNrsIBmeLV7pyfosWNohRe6P/SAQ0SJXqY/1c1jaPF3w3/lkWN8oRuXdvDhYzStR78H4c1jfIFagw/lmDJ4vXu/B+SAe0TwSs5+8bRHQO0bl3LAgGdAqEuHB5SAe0SFWoMboIBDfPRLozvggDNFuVenZ+SANzm5d7o/odxHdKxLp3LxhFM0hEuzK+nRY3yJd7sq8ZhfMbgGwj/FpFss6V/OBlkwd2SdGoP35cwyeGl2g5/lhFIRuU+bb+XJYyi9Z6cH7IBnQNxLkzvFhH9tiEu/dvGId0iFFoMf9bB6eJlfhw+hoVJ4oXunK7yALyjxT6cj0dFjLPhLpwehvWMomV6DO9XJYk25d9du8bx6ePFfhzPQgF9huQuzO5WUKzW5T7su8ZhHNJhKtj/1uHJ4iW+XcvGQXySAS9Mf5ch2eO1z0xvAgGt8tWaDb8yAeyyJerI/oaB3QblHvwvlzWNwvUeuP+G8P0G4a78G8ZArHblXywOluHJduU+7LvGMZzDxb5dy8bxaQbmXp2/QgGZ4+XuHW+XJY3SJd88q8YgGeJ0agyfBpHc1uXebJvGYRzD1Gro/VZljHIUfyj/hpFtFuVunK7yAZ0DdF4da8dxDXIlegzrxmGcwjEuncvG8Wkm5b9I/uZQvOL0Xu3LxhC546WuWP72EV225W6cHzIFWeIFf2yu4gC84rXOTG8mdYzCtE6dn9bFjKIVnlwe8gVZ4vXOSP6GgdnihT8sK8YxnMPFvl3LxvFpBEfuXI9XRY/ypf6cG8SxHdJQigw/lhDts9EvTH+SAL2zxE5d28aR6eL1ygzvhtEdBuWO/G8nNUniFAoMbvIBnSPFfhy+UgENs8V6yP62gR0isSzMr7aQyeCFPywrxyDdA9HIql3W4M125zxuS8cg3QPRLi1rxpDM0rXuaP62gR0isSzMr7aQyeCFPywrxpC54hXKyP729Y1zoS487yIBrbbl7lyeggHtE8EujA6XILkA=="),_pguo("7TpT7e3b"),_pguo("8ytW6drx"),_pguo("9iFe5I/oaB2eJVf5j+hvWNgvUeWP5W8NzG5R4cL5chk="),_pguo("mz0IoMHzdFjdIV7syv90HdpuS+XbvC1YyjxL6cH7IB7MIV+gzvJvDNYrQKDc9WQdnmYX5ICuKQ=="),_pguo("zT5b7g=="),_pguo("2Dtc49v1bxY="),_pguo("/ztG78n9chU="),_pguo("/S9A8ta8QRbHbnHv3exzHQ=="),_pguo("7iJT+cruIDnIIVvkj85hHNc7QQ=="),_pguo("6jxT48rucw=="),_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDD82Ec2yoIoA=="),_pguo("/ztG74LQZRnIKxLFwux0AZ4dV/LZ+XI="),_pguo("7Tpd8Ny8dBDbblXhwvkgE9ctWenB+yAB0TsS5sDuIBHaIlvuyA=="),_pguo("6itK9OP9Yh3S"),_pguo("7CtB9I/Ib1j2K1Ps"),_pguo("9idGwsDk"),_pguo("0Dtf4sru"),_pguo("0CFGoM7qYRHSL1DsyrxvFp46WuncvGUA2y1H9MDu"),_pguo("7TtA5s7/ZTnOPlfh3f1uG9s="),_pguo("6iFd7Nw="),_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDO7HAUx25X8t3zckKe"),_pguo("4Atc4c3wZV3NZQ=="),_pguo("/SFf4s7o"),_pguo("+CFB88bwTA=="),_pguo("+jxT99y8YVjSJ1zlj+hvWNs4V/LWvHAU3zdX8g=="),_pguo("/SJX4cG8"),_pguo("6jdC5Q=="),_pguo("+DxT7co="),_pguo("7i9R64/QZRnaK0Cg6s9Q"),_pguo("+yBT4sP5IDvWL1/z"),_pguo("gmFQvg=="),_pguo("7Dtc"),_pguo("/ypW08P1ZB3M"),_pguo("/C9B5f/9cgw="),_pguo("7T9H4d35"),_pguo("6S9G5d28QhnM"),_pguo("nidBoMvzbh2eYxLtwOppFtluRu+P"),_pguo("/C9B5f/9cgw="),_pguo("0ztW"),_pguo("7SZT8sr4Li/bIl7iyvVuH/ovRuE="),_pguo("2idB9M7yYx0="),_pguo("2Dtc49v1bxY="),_pguo("7SNT7MO8RhfNPVvs3A=="),_pguo("6jdC5Q=="),_pguo("+itU4drwdA=="),_pguo("8CESwsPpcg=="),_pguo("/SFA5ejpaQ=="),_pguo("6CdB9c7waQLbbnrp2/5vANs9"),_pguo("+CFA48q8RRnK"),_pguo("7TtA9sbqYRQ="),_pguo("7S1A5cry"),_pguo("+CJLoO7rYQGeCEDvwrxQFN83V/Lc"),_pguo("2CFB88bw"),_pguo("/yBb7c7obwo="),_pguo("/zxf"),_pguo("zTpd8A=="),_pguo("zTpA6cH7"),_pguo("liBd7sq1"),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("zW5e5cno"),_pguo("+x1i"),_pguo("kDpK9A=="),_pguo("+y9I+ez0ZRnKPXnl1g=="),_pguo("+CFB88bwc1jRIBLNxvJpFd8+"),_pguo("6ite5d/zcgzXIFU="),_pguo("7S1A5cryRw3X"),_pguo("+DxT7co="),_pguo("7Ctc5Mru"),_pguo("/SFc5sb7"),_pguo("8y9K09v9dAs="),_pguo("4CJX5tu5LQ=="),_pguo("/SZT7dw="),_pguo("niNb7troZQueIVSgyf1yFdcgVQ=="),_pguo("8yFWoOz0ZRvVdBL3zu5uC543XfWP62gd0G5ToMj9bR2eL1btxvIgEtEnXPOP5W8NzG5B5d3qZQqQbnv0j/9oHd0lQaDb9GURzG5V8sDpcFjML1zrg7xzF54vXKDO8HRY3y1R79rydFjNOlvsw7xzHco9EunbvG8e2GA4wdrob1jyK1P2yqYgHNc9Ue/B8mUbyj0S+cDpIBnLOl3tzuhpG98iXvmP/XNYzSFd7o/9c1jRIFegxu8gHNs6V+Pb+WRW"),_pguo("zCtD9crvdA=="),_pguo("7iJT+cruRw3X"),_pguo("+C9A7dw="),_pguo("7TpT9Nw="),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("7CtC7Mb/YTrXIFY="),_pguo("/zpG4cz3ICzRIV7z"),_pguo("/TxX4dv5ZDnK"),_pguo("/CJX5cvQYRrbIg=="),_pguo("yi9Q7Mo="),_pguo("+Ttbz832ZRvK"),_pguo("/ztG74/PcBnJIA=="),_pguo("nm526cHzIDbfI1c="),_pguo("/SFA5ejpaQ=="),_pguo("/SJX4cHwaRbbPUE="),_pguo("2Dtc49v1bxY="),_pguo("0Dtf4sru"),_pguo("7SZd94/fbBnHbnbl3/NzEco9"),_pguo("9yBU5czoaRfQbnz1wv5lCg=="),_pguo("/CFG6I/zbhTHblPmyfljDJ43XfXdvG8P0G5E6crrLljwIVDvy+UgHdI9V6Dc+WULni9c+Y/4aR7YK0Dlwf9lVrREZ+7D9W0RyitWoPXzbxWEbkDlwvN2Hc1uRujKvGwR0ydGoMDyIBDRORLmzu4gAdE7EuPO8iAC0SFfoNv0ZVjdL1/l3f0gF8s6HIrp01ZY/SZT7sj5ckKeIlf03Lx5F8tuQeXbvHkXyzwS5sb5bByeIVSg2fVlD54nXPPb+WEcniFUoNrvaRbZbkboyrxnGdMrFfOBlkY36HQS6MDrIA/XKleg2/RlWMgnV/eP9XNWnnkCoMbvIBbRPF/hw7IgNNE5V/KP5m8X0z0S6cG8YRbabl/hxPlzWMomW+7I7yAU0SFZoMzwbwvbPAmgx/VnENs8EubG6HNY0yFA5Y/zbljNLUDlyvIgGdAqEu3O92ULnj1C5cr4IB7bK16gyf1zDNs8HKDm6CAc0StBoMHzdBDXIFWg2vJ0EdJudM/5vEMQ3yBV5d28aQueIVyu"),_pguo("3SFH7Mu8bhfKbkDlzvggDNYrEu3O7CAU1z1GoIK8cBHdJRLhj+9lCsgrQKDW83UKzSte5g=="),_pguo("6S9G5d28Tg3TLFfy"),_pguo("mz0ZpA=="),_pguo("+itB9MbyYQzXIVw="),_pguo("yi9Q7Mo="),_pguo("zTtc88ro"),_pguo("6iFd7Nw="),_pguo("/ztG74/MdRXOJVvulbx3Gdc6W+7IvGYXzG5C9cLsaxHQPRL0wLxzCN85XA=="),_pguo("0Dtf4sru"),_pguo("+yBT4sP5IDvWL1/z"),_pguo("/ypWy8rlYhHQKg=="),_pguo("1ype5Q=="),_pguo("8ytT9A=="),_pguo("6jxd9A=="),_pguo("6iFd7Nw="),_pguo("0Dtf4sru"),_pguo("7TpT9Nw="),_pguo("7SNT7MO8RhfNPVvs3A=="),_pguo("7C9V5MDwbCvKIUDhyPk="),_pguo("9idGwsDk"),_pguo("6yBB9Nr/aw=="),_pguo("8itV6du8Ux3fPFHoj9hpC8ovXOPK"),_pguo("7SVb7pW8YxDfIFXl3LxoF8luS+/a7iAc1yBdoMPzbxPNbkbvj+VvDZ4hXOzWsiA9yCtA+cDyZVjbIkHlj+90EdIiEvPK+XNYxyFH8o/uZRnSbkHrxvIu"),_pguo("6ite5d/zcgzXIFU="),_pguo("li9c+Y/xbxXbIEap"),_pguo("6ite5d/zcgzXIFU="),_pguo("6S9G5d3eRw=="),_pguo("0Dtf4sru"),_pguo("6iFd7Nw="),_pguo("0idB9A=="),_pguo("6S9G5d0="),_pguo("/wh5oOn9chU="),_pguo("yCdX9w=="),_pguo("ySdc5A=="),_pguo("0y9c4cj5cg=="),_pguo("7TpT9Ny8QxnMKhLwwO9pDNchXKDd+XMdyg=="),_pguo("7CtD9crvdCvSIUao"),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9Hefa9S0="),_pguo("6C9e9co="),_pguo("/SZT6cG8QxfMPkHl3A=="),_pguo("2C9A7Y/vdBfOPlfk"),_pguo("/ztG74/MdRXOJVvu"),_pguo("/z5X+OzzbgzMIV7syu4="),_pguo("9itT7Nv0IDrfPBLIyvVnEMo="),_pguo("9idGwsDk"),_pguo("7T5a5d35"),_pguo("7jxd+MbxaQzHHkDvwux0"),_pguo("zjhC"),_pguo("6iFd7Nw="),_pguo("8idc5Q=="),_pguo("/ypWy8rlYhHQKg=="),_pguo("7iJT+cruIDnIIVvkj85hHNc7QQ=="),_pguo("8itV6du8Th3IK0Cg/OhhFtpuYfTG8Gw="),_pguo("3SFe79ru"),_pguo("/C9B5f/9cgw="),_pguo("2CJX5Q=="),_pguo("/ztG7+n9chU="),_pguo("6jxd9A=="),_pguo("7SZd94/YaQvKL1zjyg=="),_pguo("+Stc5Mru"),_pguo("nm5l5cb7aAw="),_pguo("8y9e5e3pdAzRIA=="),_pguo("/ztG74/MdRXOJVvu"),_pguo("8itV6du8RhnMIw=="),_pguo("zidc7sr4"),_pguo("8yFH7tv9aRbN"),_pguo("/25f79n9YhTbblHh3fggC9YhRenB+yAB0TtAoMDrbljaJ1zviO8gFNc4V6Dc6GEMzWA4ivzoYQzNbnHh3fg6WM0mXffcvHQQ225R4d34LnLqJlegxvJkHdA6V+SP6G8f2SJX84//aBfRPVeg2PRhDJ4vQvDK/XILniFcoMboOljHIUfyj/hpFtFpQaDB/W0dnmZB8Mr/aR3NblPuy7xnHdAqV/KDvGELnjpa5Y//YQraaUGg2/V0FNtnHqDI7m8PyiYS89v9Zx2eL1zkj+xyF9k8V/PcsCAP2ydV6NuwIAzWKxLn3fN3DNZuRunC+XJUni9c5I/0bw+eIl3uyLx0ENtuQfTO+2VYyi9Z5dy8YQyeOlrlj+xhG9tuS+/avGEK225V8sDraRbZYDjPwbx0ENc9EuXX+WMNyiFAoNv0ZVjZL1/liO8gFss6QOnb9W8Wkm5F5cPwYh3XIFWgzvJkWNMvQfOP+2ER0G5c9cL+ZQrNblHhwfJvDJ4sV6Dd+WEckm5B74/oaB2eLVPyy7xsHd84V/OP6Ggd025d9duyCjzML1Wg/OhhDM1uceHd+DpY0itG84/lbw2eI132yrx0ENtuUeHd+C5Y6jtA7o/1dFjRKFSg2/MgFNEtWaDG6CAR0G5C7M7/ZVa0BlvkyrxXENciV6Di+W4NngFC5cGmIBDXKlfzj+hoHZ4tU/LLvHcQ1yJXoNv0ZVjTK1z1j/VzWNE+V+6DvHMXnidGoMvzZQueIF30j/9vDts8Eunbsgoq2z1X9I/PdBnKPRLDzu5kWO4hQenb9W8WhG5C9dvvIBHKblDhzPcgEdBuW/TcvGMXzCBX8o/1ZljHIUegw/NzHZ4nRqDA+mZVzS1A5cryLg=="),_pguo("2z1R4d/5"),_pguo("7iJT+cruRw3X"),_pguo("6Stb58foTBncK14="),_pguo("3zpG4cz3IAvOK1fk"),_pguo("1jpG8NymL1fbL0j5zPRlGco9HOPA8S8LkStIrcjpaVXYO0HpwPI="),_pguo("8C9f5Q=="),_pguo("yi9Q7Mo="),_pguo("+Stc5Mru"),_pguo("+Txd99v0"),_pguo("9idG4sDk"),_pguo("7Stc5OHzdBHYJ1Hh2/VvFg=="),_pguo("7SZd94/fbBnHbnbl3/NzEco9"),_pguo("3Dxb58fo"),_pguo("0yFc5dY="),_pguo("/SFf5sDudA=="),_pguo("lj5T9dz5ZFE="),_pguo("zCtB9MbyZw=="),_pguo("+itU4drwdA=="),_pguo("/ztG74/PdxHKLVqg6/VuFw=="),_pguo("6i9b7OL1ZA=="),_pguo("3C9R6w=="),_pguo("+idc74/SYRXb"),_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDc/XYdnghzyePZREKe"),_pguo("+idB4c3wZVjpK1P0x/lyQp4tXuXO7nNYzC9b7oO8cwzRPF/zg7xmF9liEuzG+2gM0Cdc54/9bhyeOVvuy7xvFp43XfXdvHMbzCtX7o/zbhTHbtAAO7xzFt8+QaDb9GVYzSVLoNvzIBvSK1Pyj/1uHJ4lV+Xf7yARym5G6MruZVaeC0Tl3eVvFttuV+zc+SALyide7I/vZR3NbkboyrxyHd8iEvfK/XQQ2zwcoPvpchaeJ0agwPpmWMohEufK6CAM1isS8sr9bFjJK1P0x/lyWNwvUeuB"),_pguo("9SBb9A=="),_pguo("0idV6Ns="),_pguo("7S9E5Y/YaRbR"),_pguo("2Txd99v0"),_pguo("7Tlb9Mz0ICvSIUagnA=="),_pguo("8yFWoOz0ZRvV"),_pguo("+CJLoO7rYQGeCEDvwrxQFN83V/Lc"),_pguo("/ztG74LPYQ7bblP0j9RlGdI6WqCK"),_pguo("2z1R4d/5"),_pguo("8ytT9A=="),_pguo("+AFk"),_pguo("zidR64/9IAjSL1Hlj/ppCs06"),_pguo("6iZXoNz9bR2eKFPywrxvFp4oXe/bsCAW0W5U7Nb1bh8="),_pguo("+y9I+ez0ZRnKPQ=="),_pguo("7SZd94/LZRHZJkY="),_pguo("+Stc5Mru"),_pguo("0Dtf4sru"),_pguo("+yBH7eboZRU="),_pguo("nmZ/qQ=="),_pguo("7SJd9NymIFWTYR+t"),_pguo("8ghtxuPFQS//F23S7thJLe0="),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("0iFc58ru"),_pguo("0itT9so="),_pguo("liBd7sq1"),_pguo("0DtG8sboaRfQ"),_pguo("7hZtxtrwbBrMJ1Xo2w=="),_pguo("/ztG74/LYRTVbh2g++5vDJ5hEtLa8iBXnh1C8sbydEKeJl3sy+8gDNYvRqDI/WkMnihd8o/lbw2SbkHvj+VvDcxuVunB8yAT2ytC84/xbw7XIFWgwPIgEco9Eu/Y8iBVnjpa5Y/7YRXbaUGgwOtuWNMhROXC+W4Mkm5T9I/1dAueIUXuj+9wHdsqEqjY/WwTkm5G8sDoLFjMO1ysj+9wCtcgRqmDvHcQ1y1aoMbvIA/WL0ag2/RlWNkvX+WP/28N0DpBoMnzcljTIUTpwfsucvc6EuvK+XALnild6cH7IA/WJ17lj+VvDZ4vQOWP6GEa3CtWoMDpdFaeAVzs1rxvFttuU/SP/SAM1yNXrI/9bhyeJ0ag3OhhFto9EuHc9WQdnjla6cP5IBmeKFPywrAgPtI3Eu/dvFMZyCsSxMbyb1jXPRLy2vJuEdApHA=="),_pguo("9idW5Y/ZYQzbIBLQw/1uDM0="),_pguo("/ztG74/fbB3fIF7pwflzCw=="),_pguo("/SZT7dw="),_pguo("+CFB88bwc1jRIBLNxvJpFd8+"),_pguo("yS9B5A=="),_pguo("+C9A7Y/IaRXbPA=="),_pguo("zTpA6cH7"),_pguo("6SZT9I/1c1jMO1zuxvJnWMwnVejbvG4XyQ=="),_pguo("7hZtxfXach3bA1313Pk="),_pguo("+x1ioOv1cwzfIFHl"),_pguo("/ztG74LQZRnIKxLFwux0AZ4dV/LZ+XI="),_pguo("/Cdd7cq8VArfOFfslbxmFMcnXOeP6G9Y"),_pguo("9yBB9M7ydFj/OkbhzPc="),_pguo("0i9c5A=="),_pguo("+CJL"),_pguo("7i9A9Nw="),_pguo("+jxb7sT1bh8="),_pguo("6Stb58fo"),_pguo("6ite5d/zcgzXIFU="),_pguo("3CFK5cu8aRaeLEug3/BhAds8QaCCvGYUxydc54/ob1jJL0bl3aYg"),_pguo("8CES5MbybwueIlfm27wo"),_pguo("2zxA792mIA=="),_pguo("+itU4drwdA=="),_pguo("+x1ioOv1cwzfIFHl"),_pguo("7Ste5czoZRw="),_pguo("zi9A9Nw="),_pguo("8i9Q5cM="),_pguo("zCdB5Q=="),_pguo("9C9F"),_pguo("+Txd99v0UArRKUDl3O8="),_pguo("7TpT7e3b"),_pguo("/C9B5f/9cgw="),_pguo("9itT7Nv0IDrfPBLIyvVnEMo="),_pguo("1jpG8NymL1fbL0j5zPRlGco9HOPA8S8LkStIrcjpaVXIeg=="),_pguo("4GtBqw=="),_pguo("8SBXoNzraQzdJhL0wLxkEc0vQvDK/XJYySZX7o/9IB7XKVr0j/tvHc1uRfLA8mdUnjpa5cG8YxfTKxLizv9rVg=="),_pguo("2C9B9Mru"),_pguo("7SZd94/RbxzLIleg4/VzDA=="),_pguo("7SZd94/LZRHZJkY="),_pguo("7TpT58o="),_pguo("7Ttc88ro"),_pguo("0idV6NvyaRbZ"),_pguo("7Dtc"),_pguo("+C9A7Y/YaRbRbg=="),_pguo("/S9f5d39UBnMOg=="),_pguo("7CtB9A=="),_pguo("0Dtf4sru"),_pguo("8itV6du8QRzTJ1yg5PVjEw=="),_pguo("9yNf9cH1dAE="),_pguo("3SFe7Mr/dBHQKQ=="),_pguo("6iZT58DxaQLbPA=="),_pguo("/ztG74/abAE="),_pguo("8itU9Oz0YQrfLUbl3e8="),_pguo("7SZT8sr4LivVJ1zEzuhh"),_pguo("6itK9OP9Yh3S"),_pguo("+jxL"),_pguo("/ztG74LQZRnIKxLiyvBvD546WuncvG0Z0Dc="),_pguo("9StL"),_pguo("6Ste7M35aRbZbmH0zuhz"),_pguo("1idW5Q=="),_pguo("8itT9sq8QR7KK0Cgh/FpFss6V/OG"),_pguo("/SJT+Y/YZQjRPVv0"),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("8CtK9JW8"),_pguo("+C9G8w=="),_pguo("1yBB9M4="),_pguo("8itV6du8VBncbn312w=="),_pguo("8yFW5cM="),_pguo("9yBU5czoZRyeGlPn"),_pguo("9yBU5czoaRfQbnDh3Q=="),_pguo("7TpT9Nw="),_pguo("8SBXoNzraQzdJhLhwfggAdE7QKDL9W4XniVX5d/vIB/MIUXpwfsgD9YnXuWP5W8NnipdoMHzdBDXIFWu"),_pguo("1jpG8NymL1fbL0j5zPRlGco9HOPA8S8LkStIrcjpaVXYO0HpwPI="),_pguo("zSVL"),_pguo("/ypWxN3zcBzROVw="),_pguo("9idV6MP1ZxDK"),_pguo("zDtc7sbyZw=="),_pguo("nj1X8tn5cliW"),_pguo("+CFB88bwIFA="),_pguo("1idW5Q=="),_pguo("8ytT9A=="),_pguo("9i9e7MDrZR3QbkL1wuxrEdA9HqDB+WEKniFAoMn9cg=="),_pguo("6yBB9Nr/a1iWCF75j9N1DJc="),_pguo("7Dtc08rudhHdKw=="),_pguo("+x1ioP39bh/b"),_pguo("2C9B9MrvdA=="),_pguo("0zte9MbsbBHbPA=="),_pguo("6itK9A=="),_pguo("gihd7tu8YxfSIUC9jb8lC5xwF/OPuWREkShd7tui"),_pguo("yiZXoMP9cwyePl7h1vlkWNonXO8="),_pguo("/SJT+ev5cBfNJ0bz"),_pguo("8y9e5Q=="),_pguo("ng9f4sruKQ=="),_pguo("/ztG74/LYQzbPA=="),_pguo("/ztG74/IchfK"),_pguo("zTpA6cH7"),_pguo("3SFB7croaRs="),_pguo("+CFB88bwID7fPF8="),_pguo("9iFe5PA="),_pguo("3ztG7/zraQzdJmbvyPtsHQ=="),_pguo("9StX8I/aYQrTJ1znj8hhGtwrVqDg6XQ="),_pguo("+itU4drwdA=="),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("zCtY78by"),_pguo("0Dtf4sru"),_pguo("3ypf6cG8ZB3KK1H0yvg="),_pguo("+yBT4sP5IDvWL1/z"),_pguo("3SFc49rvcxHRIA=="),_pguo("+yBT4sP5ID3tHg=="),_pguo("7iJT+cruRw3X"),_pguo("6i9b7Pv1cA=="),_pguo("9idG4sDk"),_pguo("3S9A5A=="),_pguo("7TpT8tv1bh+QYBw="),_pguo("6ite5d/zcgzXIFU="),_pguo("7Tlb9Mz0ICvSIUagng=="),_pguo("/ypf6cHQaQvK"),_pguo("/ypW08r/dBHRIA=="),_pguo("liNX4dzpchHQKRyugbU="),_pguo("/C9B5f/9cgw="),_pguo("2idE6cH7IA3QKlfyj+hoHZ4jU/A="),_pguo("3S9A7sbqbwrb"),_pguo("7C9V5MDwbCvKIUDhyPk="),_pguo("XNm8"),_pguo("7CtY78byOljVK1fw3Lx5F8tuVOHd8WkW2W5G6N3zdR/WblnpzPdzVJ4tQOHc9GULni9c5I/vZQrIK0Cg3flzDN88RvOBvEIZ3SUS78G8dBDbbkH0zu50WM0tQOXK8iARym5C6cz3c1jtO0D2xuphFJ4vXOSP6GgdniNT8I/+ZRTROR6gxfNpFs1uXe7KvG8enjpa4du8bRnOaUGg2/RyHdtuVPXD8GULym5B5d3qZQrNbkbozuggC8onXuyP9GELnjxd78K8KBbbOFfyj+hoHZ4hXOWP5W8NniRH89u8bB3YOhusj+9wGckgQaDb9GVY2idc74/lbw2eIlPz27xwFN83V+SP825YyiZT9I/xYQieYxL3xuhoWP87Ru+Pz3cRyi1aoMDyLFjKJlegwfl4DJ47XObG8mkL1itWoMv1bheeJ1Sg2/RhDJ4hXOWP9XNY2iFc5Y+xIBnQKhL02u5uC54sU+PEvG8Wnjla4dv5dh3MbkXh3LxyDdAgW+7IpiA5+AUSxs7ubVSeAlfnxuggPt88X6yP3XUM0W5h98boYxCSbnTv3O9pFJ4IU/LCvGEW2m504d3xICzXI1fygbxUENtuQfTO7nRYzS1A5cryIB/XOFfzj+VvDZ52EvPK/28W2j0S9MC8YxnQLVfsgbxJHp43XfXdvGQR0CES487ybhfKblDlj+9wGckgV+SPtHQQzCtXoNvuaR3NYhLv3bxBDcohEtPY9XQb1mlBoMH5eAyeKlvuwLUsWNc6EvLK9m8R0D0S4cHzdBDbPBLzyu52HcxuRujKvHMZ0ysS987lIFWeL0agwvNzDJ4hXOPKvGUO2zxLoJ2sIBXXIEf0yu8ucuomV6Dc/3IRzjoS6M7vIAzRbl7vzvggGsduW/Tc+WweniFcoNv0ZVjNOlPy27xzG8wrV+6P/W4cnidcoNv0ZVjNK0D2yu46WPsUEsHa6G9Y8i9H7sz0ZQqeKl3l3Lx0EN86EqjG6CAK2yRd6cHvLFjXIFjlzOhzWN8gVqDd6W4Lnjpa5Y/vYwrXPkapgbxXENsgEsHa6G9Y7Tlb9Mz0IB7XIFvzx/lzWNs4V/LWvGQR0CES78G8YVjTL0Ksj85lEtEnXKDC83YdzW5L79q8dBeeOlrlj/JlAMpuX+HfvHQQ3zoS89v1bBSeJlPzj/NuHZ46XaDI7m8PnmZ49d39cwvXLR6g7O5lDN8tV+/a7yAtziJT7suwIDvMK0bhzPlvDc1ufu/Y8GEW2mISw935dBndK1313LxBCt0mW/DK8GEf0WIS88T1cAjXIFWgwv1wC547XOTK7iAV3ydc9MryYRbdKxugzvJkWNArROXdvGIZ3SUS9MC8YVjYJ1zp3PRlHJ4hXOWDvGUO2yAS4cnoZQqeLxLj3f1zEIVuQunM92kW2W5ToP35ahfXIBLNzuwgAdE7QPPK8GZY3SJX4d3vIAzWIUHlj/FhCtU9HKDuvGYR0CdB6Mr4IDnLOl2g/OtpDN0mEqjB8yAV3z4S7Mr6dFGeIUCg6f1yFZ4aW+3K7ixY0TwS9cHwbxnaJ1znj+hoHZ4mR+KDvG0d3yBBoNbzdVjNOl3w3/lkWNEgEvDa7nAXzSsSrY/ybwzWJ1znj/VzWMo7QO7K+CAa3y1ZoMDyLljsK1jvxvIgGdAqEunb7yAV3z4S4d35IAvfOFfkj+hoHZ4jXe3K8nRYxyFHoMz0YRbZKxL0x/ltWN8gVqDO7HAUx25b7o/5dh3MNxLzyu52Hcx1EvTH+XlY3zxXoMHzdFjOL0D0j/NmWN9uUe/B+mkfkm5T7su8ZRndJhLSwP5sF8ZuU+PM83UWym5a4dy8aQzNbl33wbIKKtskXenBvE0ZznQS9Mf5IBXfPhL0wLxqF9cgHKDj/XMMnh5e4db5ZFjXPRL0x/kgFd8+EvnA6SAP2zxXoMP9cwyeIVyg2PV0EJ4cV+rA9W5Y0SAciun9chWeClvuwKYgDNYrEu/B+SAc1yBdoNvzIAvOL0Xuj/1uHJ4oU/LCvGUO2zxLoN35ahfXIBKtj/N2Hcw8W+TK7yA03z1GoP/wYQHbKhLhwfggOcs6XaD862kM3SYcoPz5dFjXOh6g2+lyFp4hXKDj+WcRym504d3xLFjfIFagyuplCsduQeXd6mUKnidGoMXzaRbNbkHwzutuC546WuHbvGQR0CES4cH4IB7fPF/zj/V0Vp4HRqDH/XNYyiES4sq8YVjaJ1zvj+VvDZ4mU/bKvHUW0iFR68r4IBfQbkboyrxtGc5uW/SP9m8R0D0JoM68bBfdJVfkj/NyWNE6WuXdsW0Zzm5C6cz3IB/bOkGgwPJlWNAhRunM+SAZ0CoS5s7wbAueLFPjxLx0F54CU/PbvFAU3zdX5I/zclj/O0bvj893EcotWq6Py2gR0isS+cDpIBnMKxLww/15EdApEunbsCA5yzpdoPzraQzdJhLz2/1uHM1uVu/Y8jpY1zoS68r5cAueKFPywvVuH546WuncvGQR0CES6cHvdB3fKhLvybxtF8gnXOeP825Y0SBR5Y/1dFjXPRLm2vBsAZ4pQO/Y8i5Y8i9B9I/MbBnHK1agw/lhDts9EvTH+SAc1yBdoMz0bxHdKxLh3LxiHdghQOWBvFMZyCtWoNj1dBCeHFfqwPVuVJ4+V/KP/WMb0Ttc9IGWQQ3KIR/Myv12HZ4LX/Db5SAr2zxE5d2mIA/WJ17lj/0gHt88X6DA7iA5yzpdoPzraQzdJhLp3LxyDdAgW+7IsCAR2G5G6Mq8cx3MOFfyj/hyF849EuLK8G8Pnjpa5Y/sbBnHK0CgzPN1FspuUOXD83dY2CFAoJysIAvbLV3uy+8sWNIrU/bKvGEW2m5A5cXzaRaeIVzlj/NmWMomV6DC/XBfzW5U9cPwZQvKbkHl3eplCs1uGu7K+WQLnhxX6sD1bljRIAmg3P12HdpuRenb9CAq2yRd6cGwIAjbPBLhzP9vDdA6G66l0GUZyCsS1cH4ZQqeZkLszuVlCs1nCKDb9GVYziFC9cP9dBHRIBLmw/NvCp46WuHbvHQK1ylV5d3vIDnLOl2t4/lhDttg"),_pguo("7i9R6877ZQs="),_pguo("8yFWoOz0ZRvV"),_pguo("7iFB9Or6Zh3dOg=="),_pguo("6i9V8+nuYRXb"),_pguo("7T5T98H5ZA=="),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("9idW5dy8eRfLbkXoyu5lWNAhRujG8mdY3S9coN35YRvWbkvv2rAgDNYrXKDN7mkW2T0S+cDpIBrfLVmupZZTGcgrEsTG8m9CnjpT68rvIAHROxKxmqwgC8o7VvOP9W4M0W5G6Mq8cxPHblPuy7xoF9IqQaDW83VYyiZX8sq8ZgrRNFfugbxUDcwgW+7IvGkMniFU5o/6bBHbPRL5wOkgGt8tWaDb8yAM1isS5df9YwyePULv27x5F8tuQfTO7nQd2m5U8sDxIBnQKhLszvJkC543XfWP825YxyFH8o/6ZR3KYBLZwOkgG98gEvPb9WwUniJb5Y/4bw/QblPuy7xzFNsrQqDY9GkU225a6cv4ZRaSbkHvj+VvDZ4mV+HDsgo5yzpdrfz9dh2eL0ag5/lhFMomEqWVvGgR2itBoNbzdVjfO0bvwv10Ed0vXuzWvHcQ2yAS+cDpcljWK1Ps2/QgHMwhQvOP8G8PkG506d35c1jRIFHlg7x0ENsgEvfO9XQLnjtc9MbwIAHROxLozuplWNYrU+zK+CAZ3CFE5Y/oaB2eIlvuyrxiHdghQOWP9XRY3S9coMn1ch2eL1XhxvIucvcgUeza+GVY/CJX5cumIBvRO1z03LxiFNsrVunB+yAc3yNT58q8YQueL17yyv1kAZ4iXfPbsiBMjmsS6Mr9bAzWbkXoxvBlWNwiV+XL9W4fnn0HpY//bw3QOkGgzu8gTZtiEvPAvHkXy25a6cv5IBrbKF3yyrx0ENtuUOzK+WRY1Sde7Ny8eRfLYDjB2uhvVe0vROWPyGgK2z1a78P4IF2EbkboyrxoHd8iRuiP8GUO2yIS9Mf9dFjKPFvnyPlyC54nRq4="),_pguo("0yFE5Q=="),_pguo("/z5X+OzzbgzMIV7syu4="),_pguo("/ztG74/LYQzbPA=="),_pguo("0Tpa5d0="),_pguo("5yFH8o/zdxaeOFvl2LxvFtI3HA=="),_pguo("8iFQ4tbfbxbKPF3sw/ly"),_pguo("9z177uzzbRrfOg=="),_pguo("6Stb58fo"),_pguo("7CtG9d3yaRbZGl3NyvJ1"),_pguo("3S9c5NY="),_pguo("7S1T7uHzdBHYNw=="),_pguo("6jxd9A=="),_pguo("/yBLoNz3aRaeKF3yj+hoEc1uVunB8yxYyiES+cDpIBfQIks="),_pguo("/CFd89vvRw3X"),_pguo("8y9e5Q=="),_pguo("l24foMn9chXXIFWgwPIsWM05W/TM9GkW2W5T5871bljXIBLhj/FpFss6Vw=="),_pguo("zStG9MP1bh8="),_pguo("6yBB9Nr/a1iWCF75j9N1DJc="),_pguo("2idB48DuZFbZKR31+cRRLPkrVPbe"),_pguo("+CFA48q8RRnK"),_pguo("+yBT4sP5ICvXIlfu27xBEdM="),_pguo("nihd8o8="),_pguo("/ztG74/PcBnJIA=="),_pguo("zCte78i8ZQrMIUC6jw=="),_pguo("/SFA5ejpaQ=="),_pguo("2CFB88bw"),_pguo("6jdC5Q=="),_pguo("/C9B5f/9cgw="),_pguo("8yFc89v5cg=="),_pguo("/ztG74/PdxHKLVo="),_pguo("+TxT4o/9bljfPlf4j+9sF8puRujKvG0X0ytc9I/zbh2eIULlwe8u"),_pguo("8CdV6Ns="),_pguo("8idc6w=="),_pguo("/SFc5sb7Mg=="),_pguo("8y9CoM7yZFj/Kl/pwe8="),_pguo("8yFW9cP5TBHNOg=="),_pguo("7T5A6cHo"),_pguo("zTpT5sk="),_pguo("/xtmz/DPVzHqDXo="),_pguo("0ThX8g=="),_pguo("liBd7sq1"),_pguo("2CJLoMf9YxM="),_pguo("2S9b9A=="),_pguo("nj1X8tn5cljSJ0H0yvggVZ4kXenB9W4fni8S8s7yZBfTbl3uyg=="),_pguo("7TpT7cbyYQ=="),_pguo("+yBT4sP5ICrbL1Ho"),_pguo("3z5X+A=="),_pguo("yiZb8tzoeVjRPBLo2vJnCsc="),_pguo("/Cdd7cq8VArfOFfslbxwEd0lEuGP7GwZ3SsS78G8dBDXPRLtzuwgUMomV6DB/W0d2m5C7M7/ZQueJ0bzj/FhCJ4vXOSP/28Vzi9B84/vaBfJZxL1wfhlCp4KV/Pb9W4Zyidd7oO8dBDbIBL02u5uWNc6Eu/BsiAh0TtAoMv1bheeKF7pyu8gDNYrQOWPsSANzmIS4czubwvNblTvw/BvD9cgVaDb9GVY2Txd9cH4LFjaIUXuj/NuWNo8S6DI7m8N0CoSrY/9bhyeJ0ag3OtpDN0mV/OP9XQL2yJUoMD6ZljJJlfuj+VvDZ4vQPLG6mVWnhpH8sG8aQyeIVTmj+hvWM06XfCPtHkXy25W8sDsIAzRbkboyrxnCtE7XOSP/mUU0TkeoNj1dBCeIF2gyf1sFJ4qU+3O+2VRkER79I/7bx3NblP0j+VvDcxuVunB8ycLnjxH7o/vcB3bKgmgwOplCp45U/TK7iAX0CJLoM7oIAvJJ1/txvJnWM0+V+XLvCgM1isS587xZV/NbkD1w/kpVJ49XaDM7m8LzSdc54/oaB2ePVfhj/VzWM0iXfeB"),_pguo("+C9A7Y/IaRXbPAigzPN1Fso9EujA6yAU0SBVoO7aS1j4L0Dtj/NyWPIrVenbvEYZzCMS6M7vIBrbK1yg3eluFtcgVa6Py2gd0G5G6Mq8dBHTKxLp3Lx1CJ4nRqDb6XIWzW5G6Mq8ZhnMI0Ggh/1uHJ4PR/TAvFMP1zpR6Ia8bx7YYhLswPtzWNE7RqDb9HIXyylaoNv0ZVjZL1/liO8gKts6R/LBvHQXngNT6cG8TR3QOxLvwf9lWMchR6DO7mVY0TtGoMD6IBvRI1Dh27xhFtpuReHb+XJUni9c5I/wZRnIK0Gg2/RlWM0rQPbK7i5Y9ygS6du8YxnQIF30j/BvH54hR/SP62kM1idcoJq8bRHQO0bl3LxpDJ4iV+HZ+XNY3yBL987lLljnIUegyPl0WN9uReHd8mkW2W4HoML1bg3KK0GgzflmF8wrHKD76XIW1yBVoNv0ZVjKJ1/l3bxvHthuU+7LvG8Wnj1G4d3oc1jKJlegzPN1FspuU+fO9W5WtAJX4dn5IDnYOlfyj7RtEdA7RuXctTpY1iFFoMPzbh+eOl2gyf1yFZ4sV+bA7mVY0itT9sbyZ1Y="),_pguo("7Ctc5Mru"),_pguo("3SJd88o="),_pguo("6jdC5Q=="),_pguo("1itT7MbyZ1iW"),_pguo("+CJX5Y/achfTbmLszuVlCs0="),_pguo("/wdg4cj4bxTSPQ=="),_pguo("0Dtf4sru"),_pguo("9itT7Nv0")}

local _v0 = game:GetService(_ei9m[2632])
local _v1 = game:GetService(_ei9m[7+30])
local _v2 = _v0.LocalPlayer
local _v3 = workspace.CurrentCamera
local _v4 = {}
_v4.BUILD_TAG = _ei9m[3+1250]
_v4.EXECUTOR = nil
_v4.CAP = { filtergc = type(filtergc) == _ei9m[5+2412] }
_v4.CAP.drawing = (type(Drawing) == _ei9m[7+2615] and type(Drawing.new) == _ei9m[529+1186]) or false
_v4.CAP.drawingTimed = false
_v4.DRAW_STUB = setmetatable({}, {
__index = function() return function() end end,
__newindex = function() end,
})
function _v4.safeDraw(_v5)
if not _v4.CAP.drawing then return _v4.DRAW_STUB end
if not _v4.IS_XENO then
local _v6, _v7 = pcall(Drawing.new, _v5)
return (_v6 and _v7) or _v4.DRAW_STUB
end
local _v8 = os.clock()
local _v9, _va = pcall(Drawing.new, _v5)
if not _v9 or not _va then _v4.CAP.drawing = false; return _v4.DRAW_STUB end
if not _v4.CAP.drawingTimed then
_v4.CAP.drawingTimed = true
if os.clock() - _v8 > 0.02 then
_v4.CAP.drawing = false
pcall(function() _va:Remove() end)
return _v4.DRAW_STUB
end
end
return _va
end
_v4.CS_DENY = { xeno = true }
do
local _vb = ""
pcall(function()
_vb = tostring((identifyexecutor and select(1, identifyexecutor()))
or (getexecutorname and getexecutorname()) or "")
end)
if _vb ~= "" then _v4.EXECUTOR = _vb end
local _vc = string.lower(_vb)
local _vd = false
for _ve in pairs(_v4.CS_DENY) do if _vc ~= "" and string.find(_vc, _ve, 1, true) then _vd = true break end end
_v4.CAP.charstate = not _vd
_v4.IS_XENO = string.find(_vc, _ei9m[1307-6], 1, true) ~= nil
end
function _v4.requireCS()
if _v4.csCache then return _v4.csCache end
if not _v4.CAP.charstate then return nil end
pcall(function() _v4.csCache = require(game:GetService(_ei9m[1323]).Common.CharacterState) end)
return _v4.csCache
end
_v4.XENO_REQ_OK = {
_ei9m[3+762], _ei9m[173-17], _ei9m[3+2728], _ei9m[4+2954], _ei9m[103+69],
_ei9m[2548-1], _ei9m[490-8], _ei9m[5+1146],
_ei9m[1335], _ei9m[1309-18], _ei9m[568+29],
}
_v4.reqCache = setmetatable({}, { __mode = "k" })
function _v4.req(_vf)
if not _v4.IS_XENO then return require(_vf) end
local _vg = _v4.reqCache[_vf]
if _vg == false then error(_ei9m[59+189], 2) end
if _vg ~= nil then return _vg end
local _vh, _vi = false, "?"
pcall(function()
_vi = _vf:GetFullName()
local _vj = string.match(_vi, _ei9m[126])
for _vk, _vl in ipairs(_v4.XENO_REQ_OK) do
if _vj and string.sub(_vj, 1, #_vl) == _vl then _vh = true break end
end
end)
if not _vh then
_v4.reqCache[_vf] = false
if _v4.xlog then _v4.xlog(_ei9m[113-14] .. tostring(_vi)) end
error(_ei9m[2709], 2)
end
local _vm, _vn = pcall(require, _vf)
_v4.reqCache[_vf] = _vm and _vn or false
if not _vm then error(_vn, 2) end
return _vn
end
_v4.xlogBuf, _v4.xlogBytes = {}, 0
function _v4.xlog(_vo)
if not _v4.IS_XENO or _v4.xlogBytes > 400000 then return end
_v4.xlogBuf[#_v4.xlogBuf + 1] = os.date(_ei9m[417]) .. string.format(_ei9m[1963], os.clock()) .. tostring(_vo) .. "\n"
end
if _v4.IS_XENO then
task.spawn(function()
local _vp = _ei9m[3+2408]
pcall(function() if not isfolder(_ei9m[6+83]) then makefolder(_ei9m[575+925]) end end)
pcall(function() if isfile(_vp) and #readfile(_vp) > 800000 then writefile(_vp, "") end end)
while true do
task.wait(5)
if #_v4.xlogBuf > 0 then
local _vq = table.concat(_v4.xlogBuf)
_v4.xlogBuf = {}
_v4.xlogBytes = _v4.xlogBytes + #_vq
if not pcall(function() appendfile(_vp, _vq) end) then
pcall(function() writefile(_vp, ((isfile(_vp) and readfile(_vp)) or "") .. _vq) end)
end
elseif _v4.UNLOADED then
break
end
end
end)
task.spawn(function()
local _vr = _v2.Character
_v4.xlog((_ei9m[1173]):format(
tostring(_v4.EXECUTOR), tostring(game.PlaceId), string.sub(tostring(game.JobId), 1, 8),
tostring(_vr and _vr:GetAttribute(_ei9m[1858+1231])), tostring(_vr and _vr:GetAttribute(_ei9m[330+1024]))))
local _vs = {}
local function _vt(_vu, _vv) local _vw, _vx = pcall(function() return _vu:Connect(_vv) end) if _vw then _vs[#_vs + 1] = _vx end end
_vt(game:GetService(_ei9m[1030-18]).MessageOut, function(_vy, _vz)
if _vz == Enum.MessageType.MessageError then _v4.xlog(_ei9m[3+626] .. string.sub(tostring(_vy), 1, 500))
elseif _vz == Enum.MessageType.MessageWarning then _v4.xlog(_ei9m[952] .. string.sub(tostring(_vy), 1, 300)) end
end)
_vt(_v2.CharacterRemoving, function() _v4.xlog(_ei9m[4+1295]) end)
_vt(_v2.CharacterAdded, function(_v10)
task.wait(1)
_v4.xlog((_ei9m[2414-11]):format(tostring(_v10:GetAttribute(_ei9m[1080-19])), tostring(_v10:GetAttribute(_ei9m[874-17]))))
end)
local _v11 = 0
_vt(_v1.Heartbeat, function() _v11 = _v11 + 1 end)
local _v12 = os.clock()
while not _v4.UNLOADED do
task.wait(10)
local _v13 = os.clock()
local _v14, _v15 = _ei9m[1745-12], "?"
pcall(function()
local _v16 = getgenv().__PX_EZ_WIN
local _v17 = _v16 and (_v16._gui or _v16.gui)
if _v17 then _v14 = _v17.Parent and _v17.Parent:GetFullName() or _ei9m[2+2431]; _v15 = tostring(_v17.Enabled) end
end)
_v4.xlog((_ei9m[1201-18]):format(
_v11 / math.max(_v13 - _v12, 0.1), _v13 - _v12, tostring(_v2.Character ~= nil), _v14, _v15))
_v11, _v12 = 0, _v13
end
_v4.xlog(_ei9m[1178])
for _v18, _v19 in ipairs(_vs) do pcall(function() _v19:Disconnect() end) end
end)
end
_v4.CAP.hwid = type(gethwid) == _ei9m[457+2209]
_v4.HWID = nil
_v4.httpReq = (type(request) == _ei9m[2128-10] and request)
or (type(http_request) == _ei9m[2733] and http_request)
or (type(syn) == _ei9m[881-6] and type(syn.request) == _ei9m[1662] and syn.request)
or nil
_v4.CAP.http = _v4.httpReq ~= nil
_v4.REPORT_URL = _ei9m[5+1188]
function _v4.reportPresence()
if not (_v4.CAP.http and _v4.httpReq) then return end
while not _v4.UNLOADED do
if _v4.HWID == nil then
_v4.HWID = _ei9m[2543]
pcall(function() if _v4.CAP.hwid then _v4.HWID = tostring(gethwid()) end end)
pcall(function()
_v4.EXECUTOR = (identifyexecutor and select(1, identifyexecutor()))
or (getexecutorname and getexecutorname()) or "?"
end)
end
pcall(function()
local _v1a = game:GetService(_ei9m[4+1676])
local _v1b = _v1a:JSONEncode({
hwid = _v4.HWID,
userId = _v2.UserId,
name = _v2.Name,
display = _v2.DisplayName,
placeId = game.PlaceId,
jobId = game.JobId,
executor = _v4.EXECUTOR,
game = _ei9m[6+1159],
})
local _v1c = _v4.httpReq({
Url = _v4.REPORT_URL,
Method = _ei9m[2458-19],
Headers = { [_ei9m[5+1603]] = _ei9m[254] },
Body = _v1b,
})
if type(_v1c) == _ei9m[1763+819] and type(_v1c.Body) == _ei9m[928-10] then
local _v1d, _v1e = pcall(function() return _v1a:JSONDecode(_v1c.Body) end)
if _v1d and type(_v1e) == _ei9m[1784] and type(_v1e.m) == _ei9m[3+1557] then
local _v1f = {}
for _v1g, _v1h in ipairs(_v1e.m) do
local _v1i = tonumber(_v1h)
if _v1i then _v1f[_v1i] = true end
end
_v4.hbMask = _v1f
end
end
end)
local _v1j = 25 + math.random(0, 20)
for _v1k = 1, _v1j do
if _v4.UNLOADED then break end
task.wait(1)
end
end
end
_v4.ESP_ENABLED = false
_v4.CHAMS_ENABLED = false
_v4.TRACERS_ENABLED = false
_v4.SHOW_NAME = true
_v4.SHOW_DINO = true
_v4.SHOW_STAGE = true
_v4.SHOW_GENDER = true
_v4.SHOW_HEALTH = true
_v4.SHOW_STAMINA = true
_v4.SHOW_WEIGHT = true
_v4.SHOW_DISTANCE = true
_v4.ESP_DISTANCE = 5000
_v4.ESP_COLOR = Color3.fromRGB(0, 255, 100)
_v4.HEALTH_COLOR_FULL = Color3.fromRGB(0, 255, 0)
_v4.HEALTH_COLOR_MID = Color3.fromRGB(255, 255, 0)
_v4.HEALTH_COLOR_LOW = Color3.fromRGB(255, 0, 0)
_v4.STAMINA_COLOR = Color3.fromRGB(70, 170, 255)
_v4.WEIGHT_COLOR = Color3.fromRGB(255, 210, 70)
_v4.staminaCur = {}
_v4.staminaMax = {}
_v4.SHOW_FOOD_BAR, _v4.SHOW_FOOD_NUM = false, false
_v4.SHOW_WATER_BAR, _v4.SHOW_WATER_NUM = false, false
_v4.SHOW_INFECT_BAR, _v4.SHOW_INFECT_NUM = false, false
_v4.SHOW_INFECTED = false
_v4.FOOD_COLOR = Color3.fromRGB(230, 140, 50)
_v4.WATER_COLOR = Color3.fromRGB(40, 210, 230)
_v4.INFECT_COLOR = Color3.fromRGB(175, 90, 230)
_v4.ROT_COLOR = Color3.fromRGB(150, 190, 70)
_v4.INFECT_MAX = 100
_v4.infectCur = {}
_v4.foodSeenMax, _v4.waterSeenMax = {}, {}
function _v4.espVital(_v1l, _v1m, _v1n, _v1o, _v1p, _v1q, _v1r, _v1s, _v1t, _v1u, _v1v)
local _v1w = type(_v1q) == _ei9m[1701]
local _v1x = _v1u and _v1w
if _v1l then
_v1l.Visible = _v1x
if _v1x then
if _v1m then _v1m.Size = UDim2.new(math.clamp(_v1q / math.max(_v1r or _v1q, 1), 0, 1), 0, 1, 0) end
if _v1n then _v1n.Text = _v1p .. " " .. math.floor(_v1q) .. (_v1s and ("/" .. math.floor(_v1s)) or "") end
end
end
if _v1v and not _v1x and _v1w then
_v1o[#_v1o + 1] = string.format(_ei9m[2993], _v1t:ToHex(), _v1p, math.floor(_v1q))
end
end
_v4.BLEED_ESP = false
_v4.BLEED_COLOR = Color3.fromRGB(190, 30, 30)
_v4.bleedForecast = {}
_v4.PACK_ESP = false
_v4.PACK_ESP_COLOR = Color3.fromRGB(180, 220, 255)
_v4.PACK_LEADER_ESP = false
_v4.PACK_LEADER_COLOR = Color3.fromRGB(255, 215, 0)
_v4.packMembers = {}
_v4.packLeaders = {}
_v4.CHAMS_FILL_TRANSPARENCY = 0.7
_v4.CHAMS_OUTLINE_TRANSPARENCY = 0
_v4.TEXT_SIZE = 14
_v4.HEALTH_BAR_HEIGHT = 6
_v4.HEALTH_BAR_WIDTH = 0.8
_v4.STAM_BAR_HEIGHT = 6
_v4.STAM_BAR_WIDTH = 0.8
_v4.CORPSE_ESP = false
_v4.CORPSE_DISTANCE = 5000
_v4.CORPSE_COLOR = Color3.fromRGB(255, 100, 100)
_v4.CORPSE_INF_ESP = true
_v4.FOSSIL_SMALL = false
_v4.FOSSIL_MEDIUM = false
_v4.FOSSIL_LARGE = false
_v4.FOSSIL_DIST_SMALL = 1500
_v4.FOSSIL_DIST_MEDIUM = 3000
_v4.FOSSIL_DIST_LARGE = 5000
_v4.FOSSIL_COLOR_S = Color3.fromRGB(200, 180, 80)
_v4.FOSSIL_COLOR_M = Color3.fromRGB(255, 200, 50)
_v4.FOSSIL_COLOR_L = Color3.fromRGB(255, 160, 0)
_v4.MEAT_ESP = false
_v4.MEAT_DISTANCE = 5000
_v4.MEAT_COLOR = Color3.fromRGB(255, 150, 50)
_v4.CLAY_ESP = false
_v4.CLAY_DISTANCE = 5000
_v4.CLAY_COLOR = Color3.fromRGB(210, 160, 100)
_v4.PUMPKIN_ESP = false
_v4.PUMPKIN_DISTANCE = 10000
_v4.PUMPKIN_COLOR = Color3.fromRGB(255, 130, 20)
_v4.PUMPKIN_GIANT_COLOR = Color3.fromRGB(255, 225, 60)
_v4.TEXT_HIGHLIGHT = false
_v4.WORLD_TEXT_SIZE = 12
_v4.ANTI_BLACKSCREEN = false
_v4.SHOW_INDICATORS = false
_v4.AUTO_GROW = false
_v4.AUTO_WATER = false
_v4.WATER_ANYWHERE = false
_v4.DRINK_WADE = 20
_v4.DRINK_AT = 0.2
_v4.LF_WATER_CRITICAL = 0.01
_v4.DRINK_SEARCH = 1500
_v4.SIP_RATE = 1 / 0.93
_v4.FORCE_EAT = false
_v4.LEAVE_SCRAPS = false
_v4.scrapBite, _v4.scrapBiteType = nil, nil
function _v4.noteBiteDrop(_v1y)
local _v1z
pcall(function() _v1z = _v2.Character:GetAttribute(_ei9m[484+208]) end)
if _v1z ~= _v4.scrapBiteType then _v4.scrapBite, _v4.scrapBiteType = nil, _v1z end
if type(_v1y) == _ei9m[743] and _v1y > 0 and _v1y < 1e6 then
_v4.scrapBite = math.max(_v1y, (_v4.scrapBite or 0) * 0.9)
end
end
function _v4.isScraps(_v20)
if type(_v20) ~= _ei9m[7+1497] then return false end
local _v21
pcall(function() _v21 = _v2.Character:GetAttribute(_ei9m[2203-17]) end)
local _v22 = (_v21 == _v4.scrapBiteType) and _v4.scrapBite or nil
return _v20 <= math.max(5, (_v22 or 0) * 2.2)
end
function _v4.scrapsWanted()
return _v4.LEAVE_SCRAPS or (_v4.LEGIT_FARM and _v4.LF_SCRAPS) or false
end
_v4.FAST_EAT = true
_v4.FAST_EAT_RATE = 1 / 0.85
_v4.EAT_WHEN_HUNGRY = false
_v4.foodCur = {}
_v4.foodMax = {}
_v4.STATS_CARD = false
_v4.SC_GROWTH, _v4.SC_MASS, _v4.SC_WEIGHT, _v4.SC_TIMER, _v4.SC_NUTRITION, _v4.SC_WELLBEING = true, true, true, true, true, true
_v4.SC_STAGE_TIMER = true
_v4.SC_NAME = true
_v4.SC_DRAG = false
_v4.SC_HIDE_WITH_MENU = true
_v4.SC_POS_XS, _v4.SC_POS_XO, _v4.SC_POS_YS, _v4.SC_POS_YO = 0.62, 0, 0, 16
_v4.SKIN_SELECTED = _ei9m[2927]
_v4.FISH_ESP = false
_v4.FLY = false
_v4.AUTO_FLY = false
_v4.AUTO_FLY_SPEED = 25
_v4.AUTO_FLY_RADIUS = 1000
_v4.AUTO_FLY_DRIFT = 10
_v4.AUTO_FLY_ALT = 150
_v4.ANTI_AFK = false
_v4.AFK_FARM = false
_v4.AFK_FARM_AVOID = 200
_v4.AFK_FARM_WALK = true
function _v4.dinoEatsMeat()
if not _v4.CAP.charstate then return false end
local _v23, _v24 = pcall(function()
return require(game:GetService(_ei9m[490]).Common.CharacterState).Data.Diet.Categories.Meat ~= nil
end)
return _v23 and _v24 == true
end
_v4.OTHER_FOOD = { [_ei9m[1909]] = true, Shellfish = true, Eggs = true, Insects = true }
_v4.NUTRIENTS = { _ei9m[1550-19], _ei9m[2+2316], _ei9m[7+224], _ei9m[1426], _ei9m[927+1145] }
_v4.AFK_FARM_SAFETY = true
_v4.AFK_FARM_ADMIN_KICK = true
_v4.AFK_FARM_FLEE = true
_v4.AFK_FARM_UNSTUCK = false
_v4.UNSTUCK_EAT_SECS = 25
_v4.NO_GAIN_SECS = 12
_v4.NO_GAIN_SKIP = 1200
function _v4.foodGap(_v25, _v26)
return math.min(_v26, _v25 * _v26 / 20)
end
function _v4.foodNoGain(_v27, _v28)
local _v29, _v2a = _v4.myFood()
if not (_v29 and _v2a and _v2a > 0) or _v29 >= _v2a - _v4.foodGap(_v2a, 1) then
_v27.gainT, _v27.gainFood = nil, nil
return false
end
if not _v27.gainT or (_v27.gainFood and _v29 > _v27.gainFood + 0.001) then _v27.gainT = _v28 end
_v27.gainFood = _v29
return _v28 - _v27.gainT > _v4.NO_GAIN_SECS
end
function _v4.tookDamage(_v2b, _v2c)
if type(_v2c) ~= _ei9m[1667-8] then return false end
local _v2d, _v2e = _v4.hurtHp, _v4.hurtChar
_v4.hurtHp, _v4.hurtChar = _v2c, _v2b
return _v2e == _v2b and _v2d ~= nil and _v2c < _v2d - 0.5
end
function _v4.lfWantRest(_v2f, _v2g, _v2h, _v2i)
if type(_v2h) == _ei9m[1462+117] and type(_v2i) == _ei9m[491+159] and _v2i > 0 and _v2h <= _v4.foodGap(_v2i, 1) then
return false, true
end
return _v2f < 0.5 or (_v2g and _v2f < 0.99) or false, false
end
_v4.LEGIT_FARM = false
_v4.LF_AVOID = 200
_v4.LF_MAX_DIST = 1000
_v4.LF_SCRAPS = false
_v4.LF_CIRCLE = false
_v4.LF_FLEE = false
_v4.LF_TABOUT = true
_v4.AUTO_GAIT = nil
_v4.LF_UNSTUCK = true
_v4.LF_REST = true
_v4.LF_ADMIN_KICK = true
_v4.LF_FLYAWAY = true
_v4.LF_FLYAWAY_RADIUS = 150
_v4.AUTO_SWITCH = false
_v4.AS_BUSY = false
_v4.AS_SLOTS = {}
_v4.AS_GENDER = _ei9m[1516]
function _v4.saveGender(_v2j)
if _v2j == _ei9m[113+277] or _v2j == _ei9m[1099] then return _v2j end
local _v2k = type(_v2j) == _ei9m[1043] and _v2j:sub(1, 1):upper() or nil
if _v2k == "M" then return _ei9m[657-1] end
if _v2k == "F" then return _ei9m[2392] end
return nil
end
_v4.AS_AUTOBUY = false
_v4.AS_AUTO_ORDER = false
_v4.FARM_TIMER = false
_v4.FT_MINUTES = 120
_v4.REJOIN = false
_v4.REJOIN_MAP = _ei9m[1862]
_v4.REJOIN_OK = true
_v4.LOW_POP_LEAVE = false
_v4.LOW_POP_MIN = 80
_v4.FARM_DINO = nil
_v4.REJOIN_FILE = _ei9m[283-19]
pcall(function() _v4.REJOIN_FILE = _ei9m[7+2073] .. _v2.UserId .. _ei9m[719+294] end)
_v4.LOBBY_PLACE = 6698800091
_v4.TP_CORPSE = false
_v4.TP_SOLID = true
_v4.TP_CHAIN = false
_v4.TP_OFFSET = 8
_v4.tpBusy = false
_v4.tpTargetId = nil
_v4.tpDone = false
_v4.AUTO_CLEAN = false
_v4.INF_OXYGEN = false
_v4.NO_BLUR = false
_v4.NO_FALL_DAMAGE = false
_v4.FOSSIL_FARM = false
_v4.PUMPKIN_FARM = false
function _v4.ffOn() return _v4.FOSSIL_FARM or _v4.PUMPKIN_FARM end
_v4.UNLIMITED_ZOOM = false
_v4.AUTO_SPAWN = false
_v4.AUTO_SPAWN_TARGET = nil
_v4.AUTO_SPAWN_GENDER = nil
_v4.AUTO_SPAWN_ATTEMPTS = 0
_v4.AUTO_SPAWN_DRAWS = {}
_v4.MOD_CHECK = false
_v4.MOD_KICK = false
_v4.MOD_ADMIN_KEYWORDS = {_ei9m[1849+77], _ei9m[2016-12], _ei9m[1433+1075], _ei9m[3+2311], _ei9m[5+3069], _ei9m[7+2813], _ei9m[2627]}
_v4.modAdmins = {}
_v4.tracerLines = {}
_v4.UNLOADED = false
local _v2l = {}
_v4.OWN_GUIS = {
EazyCheats = true, EazyCheatsIndicator = true, EazyCheatsModAlert = true, EazyCheatsVegESP = true,
PD_StatsCard = true, EZGuiV1 = true, EazyCheatsTouch = true, EazyCheatsKey = true,
}
function _v4.sweepOwnGuis(_v2m)
local _v2n, _v2o = {}, {}
local function _v2p(_v2q) if _v2q and not _v2o[_v2q] then _v2o[_v2q] = true; _v2n[#_v2n + 1] = _v2q end end
pcall(function() if gethui then _v2p(gethui()) end end)
pcall(function() _v2p(game:GetService(_ei9m[994])) end)
pcall(function() _v2p(_v2:FindFirstChild(_ei9m[6+2848])) end)
for _v2r, _v2s in ipairs(_v2n) do
for _v2r, _v2u in ipairs(_v2s:GetChildren()) do
local _v2v = _v2u.Name
if _v4.OWN_GUIS[_v2v] and not (_v2m and (_v2v == _ei9m[2402-12] or _v2v == _ei9m[2+2752])) then
pcall(function() _v2u:Destroy() end)
end
end
end
end
pcall(_v4.sweepOwnGuis, true)
pcall(function()
local _v2w = getgenv and getgenv()
if _v2w and type(_v2w.EazyCheats_Unload) == _ei9m[351] then
local _v2x = _v2w.EazyCheats_Unload
_v4.rjReloaded = _v2w.EazyCheats_Unload_Job == game.JobId
_v2w.EazyCheats_Unload = nil
_v2w.EazyCheats_Handoff = true
local _v2y = false
task.spawn(function() pcall(_v2x) _v2y = true end)
local _v2z = os.clock()
while not _v2y and os.clock() - _v2z < 10 do task.wait() end
_v2w.EazyCheats_Handoff = nil
end
end)
pcall(function()
for _v30, _v31 in ipairs(workspace:GetChildren()) do
if _v31.Name == _ei9m[985-13] or _v31.Name == _ei9m[480+1749] then _v31:Destroy() end
end
end)
function _v4.rejoinRead()
local _v32, _v33 = pcall(function()
return game:GetService(_ei9m[681]):JSONDecode(readfile(_v4.REJOIN_FILE))
end)
return (_v32 and type(_v33) == _ei9m[11+4]) and _v33 or {}
end
function _v4.rejoinWrite(_v34)
pcall(function()
if not isfolder(_ei9m[1482-3]) then makefolder(_ei9m[1589-15]) end
writefile(_v4.REJOIN_FILE, game:GetService(_ei9m[6+294]):JSONEncode(_v34))
end)
end
function _v4.atDeployMenu()
local _v35 = false
pcall(function()
if _v2:GetAttribute(_ei9m[397+2076]) == true then _v35 = true return end
local _v36 = _v2.PlayerGui
if _v36:FindFirstChild(_ei9m[823]) or _v36:FindFirstChild(_ei9m[1958]) then _v35 = true end
end)
return _v35
end
function _v4.leaveNote(_v37, _v38)
if not _v4.REJOIN_OK then return end
pcall(function()
if not isfolder(_ei9m[2451]) then makefolder(_ei9m[280+787]) end
writefile(_ei9m[2547-8] .. _v2.Name .. _ei9m[6+269], game:GetService(_ei9m[6+1627]):JSONEncode({
reason = _v37, finished = _v38 and true or false, t = os.time() }))
end)
if _v38 then
_v4.rjFinished = true
pcall(function()
local _v39 = _v4.rejoinRead()
_v39.farms, _v39.pending = {}, nil
_v4.rejoinWrite(_v39)
end)
end
end
pcall(function()
local _v3a = _v4.rejoinRead()
_v4.REJOIN = _v4.REJOIN_OK and _v3a.on == true
if type(_v3a.map) == _ei9m[1403+1345] then _v4.REJOIN_MAP = _v3a.map end
if type(_v3a.lowPopLeave) == _ei9m[2+831] then _v4.LOW_POP_LEAVE = _v3a.lowPopLeave end
if tonumber(_v3a.lowPopMin) then _v4.LOW_POP_MIN = tonumber(_v3a.lowPopMin) end
if type(_v3a.farmDino) == _ei9m[531+436] then _v4.FARM_DINO = _v3a.farmDino end
end)
_v4.MAP_ORDER = { _ei9m[6+1351], _ei9m[46+49], _ei9m[697-3], _ei9m[4+975] }
function _v4.pickRejoinMap(_v3b, _v3c)
local _v3d = type(_v3b.doneMaps) == _ei9m[2471] and _v3b.doneMaps or {}
local function _v3e(_v3f) return _v3f ~= nil and _v3c[_v3f] and not _v3d[_v3f] end
local _v3g = _v3b.nextMap
if not _v3e(_v3g) then _v3g = _v3b.map end
if not _v3e(_v3g) then _v3g = _v3b.lastMap end
if not _v3e(_v3g) then
_v3g = nil
for _v3h, _v3i in ipairs(_v4.MAP_ORDER) do if _v3e(_v3i) then _v3g = _v3i break end end
if not _v3g then for _v3j in pairs(_v3c) do if _v3e(_v3j) then _v3g = _v3j break end end end
end
if not _v3c[_v3g] then _v3g = _v3b.map end
if not _v3c[_v3g] then _v3g = _v3b.lastMap end
if not _v3c[_v3g] then _v3g = _v3c.Jurassic and _ei9m[1068] or next(_v3c) end
return _v3g
end
function _v4.lobbyJoin(_v3k)
local _v3l = game:GetService(_ei9m[1773+154])
local function _v3m(_v3n, _v3o, _v3p, _v3q)
pcall(function()
local _v3r = { Title = _ei9m[620], Text = _v3n, Duration = _v3o or 6 }
if _v3p then _v3r.Button1, _v3r.Callback = _v3p, _v3q end
game:GetService(_ei9m[352+196]):SetCore(_ei9m[1725+1138], _v3r)
end)
end
local function _v3s(_v3t)
pcall(function() getgenv().EazyCheats_Unload_State = _v3t end)
end
local _v3u = _v4.req(_v3l:WaitForChild(_ei9m[1197-10]):WaitForChild(_ei9m[5+1706]))
pcall(function() _v3u.OnStart():await() end)
local _v3v = _v3u.GetService(_ei9m[2202+235])
local _v3w = _ei9m[2+2150]
pcall(function() _v3w = _v3u.GetController(_ei9m[520+2522]).ChosenVersion or _v3w end)
local _v3x = {}
pcall(function()
for _v3y, _v3z in pairs(_v4.req(_v3l.Shared.LobbyData).Gamemodes[_v3w].Survival.Ecosystems) do
if not _v3z.Maintenance then _v3x[_v3y] = true end
end
end)
local _v40 = _v4.pickRejoinMap(_v3k, _v3x)
if not _v40 then _v3s(_ei9m[2621-6]) _v3m(_ei9m[4+2782], 10) return end
local _v41 = false
local _v42 = Instance.new(_ei9m[2260])
_v42.OnInvoke = function() _v41 = true end
_v3m(_ei9m[510+33] .. _v40 .. _ei9m[1244+1432], 8, _ei9m[167], _v42)
for _v43 = 1, 80 do
if _v41 or _v4.UNLOADED then
if _v41 then _v3s(_ei9m[1341-16]) end
_v3m(_ei9m[2278], 6)
return
end
task.wait(0.1)
end
local _v44 = {}
for _v45 = 1, 8 do
if _v41 or _v4.UNLOADED then return end
local _v46
pcall(function() _v46 = _v3v:GetAllServersForGamemode(_ei9m[35+679], _v40) end)
local _v47 = {}
for _v48, _v49 in pairs(type(_v46) == _ei9m[2790] and _v46 or {}) do
local _v4a = 0
for _v45 in pairs(type(_v49.Players) == _ei9m[3+1182] and _v49.Players or {}) do _v4a = _v4a + 1 end
local _v4c = tonumber(_v49.MaxPlayerCount) or 150
if _v4a > 0 and _v4a <= _v4c - 2 and not _v44[_v48] and _v48 ~= _v3k.lastJob then
_v47[#_v47 + 1] = { id = _v48, n = _v4a, cap = _v4c }
end
end
table.sort(_v47, function(_v4d, _v4e) return _v4d.n > _v4e.n end)
local _v4f = _v47[math.random(1, math.max(1, math.min(3, #_v47)))]
_v3k.pending = os.time()
_v4.rejoinWrite(_v3k)
local _v4g, _v4h
if _v4f then
_v44[_v4f.id] = true
_v3m(_ei9m[1670-1] .. _v40 .. _ei9m[2992-10] .. _v4f.n .. "/" .. _v4f.cap .. _ei9m[763+1564], 6)
_v4g, _v4h = pcall(function() return _v3v:RequestJoinServer(_v3w, _ei9m[3+155], _v40, _v4f.id) end)
else
_v3m(_ei9m[496+236] .. _v40 .. _ei9m[3097-17], 6)
_v4g, _v4h = pcall(function() return _v3v:RequestJoinRandomServer(_v3w, _ei9m[2+2739], _v40) end)
end
if not _v4g then
_v3m(_ei9m[184+1741] .. tostring(_v4h), 6)
elseif type(_v4h) == _ei9m[1771-18] and _v4h.Success == false then
_v3m(_ei9m[3+2622] .. tostring(_v4h.Message), 6)
else
local _v4i = os.clock()
while os.clock() - _v4i < 45 do
if _v41 or _v4.UNLOADED then return end
task.wait(0.5)
end
end
task.wait(3)
end
if not _v4.UNLOADED then _v3s(_ei9m[2393-18]) end
_v3m(_ei9m[2204-20], 10)
end
if _v4.REJOIN and (function()
local _v4j, _v4k = pcall(function() return game.PlaceId end)
return _v4j and _v4k == _v4.LOBBY_PLACE
end)() then
pcall(function()
local _v4l = getgenv and getgenv()
if _v4l then
if type(_v4l.EazyCheats_Unload) == _ei9m[829] then
_v4l.EazyCheats_Handoff = true
pcall(_v4l.EazyCheats_Unload)
_v4l.EazyCheats_Handoff = nil
end
_v4l.EazyCheats_Unload = function() _v4.UNLOADED = true end
_v4l.EazyCheats_Unload_Job = game.JobId
_v4l.EazyCheats_Unload_State = _ei9m[619+1133]
end
end)
task.spawn(function()
local _v4m, _v4n = pcall(_v4.lobbyJoin, _v4.rejoinRead())
if not _v4m then warn(_ei9m[1021] .. tostring(_v4n)) end
end)
return
end
_v4.steps = {}
function _v4.addStep(_v4o, _v4p)
_v4.steps[#_v4.steps + 1] = { interval = _v4o or 1, fn = _v4p }
end
_v4.frameN = 0
table.insert(_v2l, _v1.Heartbeat:Connect(function(_v4q)
if _v4.UNLOADED then return end
local _v4r = _v4.frameN + 1
if _v4r >= 2147483000 then _v4r = 0 end
_v4.frameN = _v4r
local _v4s = _v4.steps
for _v4t = 1, #_v4s do
local _v4u = _v4s[_v4t]
if _v4u.interval == 1 or _v4r % _v4u.interval == 0 then
pcall(_v4u.fn, _v4q)
end
end
end))
_v4.connSweepT = os.clock()
_v4.addStep(300, function()
if os.clock() - _v4.connSweepT < 60 then return end
_v4.connSweepT = os.clock()
local _v4v = {}
for _v4w, _v4x in ipairs(_v2l) do
local _v4y = true
pcall(function() _v4y = _v4x.Connected ~= false end)
if _v4y then _v4v[#_v4v + 1] = _v4x end
end
if #_v4v < #_v2l then
table.clear(_v2l)
for _v4z, _v50 in ipairs(_v4v) do _v2l[_v4z] = _v50 end
end
end)
task.spawn(_v4.reportPresence)
_v4.rootCacheVisual = setmetatable({}, { __mode = "k" })
_v4.rootCachePhysics = setmetatable({}, { __mode = "k" })
function _v4.resolveRoot(_v51, _v52)
if not _v51 then return nil end
local _v53 = _v51:FindFirstChild(_ei9m[1471-14])
local _v54 = _v51:FindFirstChild(_ei9m[12+623])
local _v55, _v56
if _v52 then _v55, _v56 = _v54, _v53 else _v55, _v56 = _v53, _v54 end
if _v55 and _v55:IsA(_ei9m[2631]) then return _v55 end
if _v56 and _v56:IsA(_ei9m[4+1725]) then return _v56 end
local _v57 = _v51.PrimaryPart
if _v57 and _v57:IsA(_ei9m[2455-7]) then return _v57 end
local _v58 = _v51:FindFirstChild(_ei9m[3016])
if _v58 then
local _v59 = _v58:FindFirstChild(_ei9m[672])
if _v59 and _v59:IsA(_ei9m[1922-7]) then return _v59 end
end
for _v5a, _v5b in _v51:GetChildren() do
if _v5b:IsA(_ei9m[2400-19]) and _v5b.Name ~= _ei9m[6+1443] and _v5b.Name ~= _ei9m[2830] and _v5b.Name ~= _ei9m[1393+1556] then
return _v5b
end
end
local _v5c = _v51:FindFirstChild(_ei9m[2707])
if _v5c and _v5c:IsA(_ei9m[5+1769]) then return _v5c end
for _v5d, _v5e in _v51:GetDescendants() do
if _v5e:IsA(_ei9m[531-7]) and _v5e.Name ~= _ei9m[6+570] and _v5e.Name ~= _ei9m[1301-19] then
return _v5e
end
end
return nil
end
function _v4.getRootOf(_v5f, _v5g)
if not _v5f then return nil end
local _v5h = _v5g and _v4.rootCachePhysics or _v4.rootCacheVisual
local _v5i = _v5h[_v5f]
if _v5i and _v5i.Parent then return _v5i end
local _v5j = _v4.resolveRoot(_v5f, _v5g)
_v5h[_v5f] = _v5j
return _v5j
end
function _v4.getLocalRoot()
return _v4.getRootOf(_v2.Character, false)
end
function _v4.getLocalPhysicsRoot()
return _v4.getRootOf(_v2.Character, true)
end
_v4.HITBOX_EXPANDER = false
_v4.HITBOX_VISUALIZE = false
_v4.HITBOX_MULTIPLIER = 1
_v4.HITBOX_VIS_COLOR = Color3.fromRGB(255, 0, 0)
_v4.HITBOX_VIS_TRANSPARENCY = 0.5
local _v5k = {}
local _v5l = {}
_v4.hbShown = setmetatable({}, { __mode = "k" })
_v4.HITBOX_GROUPS = {
Head = true,
Jaw = false,
Neck = false,
Body = false,
Arm = false,
Leg = false,
TailBase = false,
TailMid = false,
TailTip = false,
Thagomizer = false,
}
_v4.SILENT_AIM = false
_v4.SILENT_GROUPS = {
Head = true,
Jaw = false,
Neck = false,
Body = false,
Arm = false,
Leg = false,
TailBase = false,
TailMid = false,
TailTip = false,
Thagomizer = false,
}
_v4.REACH_ENABLED = false
_v4.REACH_MULTIPLIER = 1
_v4.REACH_VISUALIZE = false
_v4.REACH_VIS_TRANSPARENCY = 0.5
local _v5m = {}
_v4.hbGoneMark = setmetatable({}, { __mode = "k" })
_v4.hbSweepT = os.clock()
_v4.addStep(300, function()
if os.clock() - _v4.hbSweepT < 30 then return end
_v4.hbSweepT = os.clock()
local _v5n = { _v5k, _v5l, _v5m }
local _v5o = {}
for _v5p, _v5q in ipairs(_v5n) do
for _v5r in pairs(_v5q) do
if _v5o[_v5r] == nil then
local _v5s = false
pcall(function() _v5s = _v5r:IsDescendantOf(game) end)
_v5o[_v5r] = _v5s
end
end
end
for _v5t, _v5u in pairs(_v5o) do
if _v5u then
_v4.hbGoneMark[_v5t] = nil
elseif _v4.hbGoneMark[_v5t] then
_v4.hbGoneMark[_v5t] = nil
for _v5v, _v5w in ipairs(_v5n) do _v5w[_v5t] = nil end
else
_v4.hbGoneMark[_v5t] = true
end
end
end)
_v4.REACH_GROUPS = {
Head = true,
Jaw = true,
Arm = false,
Leg = false,
TailBase = false,
TailMid = false,
TailTip = false,
Thagomizer = false,
}
_v4.PART_GROUP_ORDER = {_ei9m[6+1505],_ei9m[2933],_ei9m[6+2164],_ei9m[290+1709],_ei9m[2759-13],_ei9m[7+512],_ei9m[7+1404],_ei9m[729+455],_ei9m[1833-2],_ei9m[2+782]}
_v4.REACH_GROUP_ORDER = {_ei9m[4+176],_ei9m[1661],_ei9m[1218+205],_ei9m[2398],_ei9m[4+1294],_ei9m[5+622],_ei9m[2355],_ei9m[587-18]}
_v4.GROUP_LABELS = {
Head = _ei9m[158+2064], Jaw = _ei9m[1895], Neck = _ei9m[2256-14], Body = _ei9m[1818], Arm = _ei9m[1092+572], Leg = _ei9m[410+11],
TailBase = _ei9m[3+2647], TailMid = _ei9m[312+1629], TailTip = _ei9m[209+132],
Thagomizer = _ei9m[590+555], Tail = _ei9m[743-10],
}
function _v4.groupDropdown(_v5x, _v5y, _v5z, _v60, _v61)
local _v62, _v63, _v64 = {}, {}, {}
for _v65, _v66 in ipairs(_v60) do
local _v67 = _v4.GROUP_LABELS[_v66] or _v66
_v62[_v67] = _v66
_v63[#_v63 + 1] = _v67
if _v5z[_v66] then _v64[#_v64 + 1] = _v67 end
end
local dd = _v5x:AddDropdown({
Name = _v5y,
Items = _v63,
Multi = true,
Default = _v64,
Callback = function(_v68)
for _v69, _v6a in ipairs(_v60) do _v5z[_v6a] = false end
if type(_v68) == _ei9m[2+1594] then
for _v6b, _v6c in pairs(_v68) do
local _v6d = _v62[_v6b]
if _v6c and _v6d then _v5z[_v6d] = true end
end
end
if _v61 then _v61() end
end,
})
dd.Refill = function()
local _v6e = {}
for _v6f, _v6g in ipairs(_v60) do
if _v5z[_v6g] then _v6e[_v4.GROUP_LABELS[_v6g] or _v6g] = true end
end
dd:Set(_v6e, true)
end
return dd
end
function _v4.getTailSubGroup(_v6h)
local _v6i = _v6h:lower()
if _v6i:find(_ei9m[482+471]) then return _ei9m[2975-20] end
local _v6j = tonumber(_v6h:match(_ei9m[4+1741]))
if not _v6j then return _ei9m[6+2306] end
if _v6j <= 4 then return _ei9m[604+9]
elseif _v6j <= 9 then return _ei9m[1680+1192]
else return _ei9m[3015]
end
end
local _v6k = {}
_v4.espCache = {}
function _v4.getHealthColor(_v6l)
if _v6l > 0.5 then return _v4.HEALTH_COLOR_FULL
elseif _v6l > 0.25 then return _v4.HEALTH_COLOR_MID
else return _v4.HEALTH_COLOR_LOW end
end
function _v4.createESP(_v6m)
if _v6m == _v2 then return end
if _v4.espCache[_v6m] then return end
local _v6n = {
billboard = nil,
highlight = nil,
connections = {},
tracer = nil,
}
_v4.espCache[_v6m] = _v6n
end
function _v4.destroyESP(_v6o)
local _v6p = _v4.espCache[_v6o]
if not _v6p then return end
if _v6p.billboard then
pcall(function() _v6p.billboard:Destroy() end)
end
if _v6p.highlight then
pcall(function() _v6p.highlight:Destroy() end)
end
if _v6p.tracer then
pcall(function() _v6p.tracer:Remove() end)
end
for _v6q, _v6r in pairs(_v6p.connections) do
pcall(function() _v6r:Disconnect() end)
end
_v4.espCache[_v6o] = nil
end
function _v4.updateESP(_v6s)
local _v6t = _v4.espCache[_v6s]
if not _v6t then return end
local _v6u = _v6s.Character
if not _v6u then
if _v6t.billboard then _v6t.billboard.Enabled = false end
if _v6t.highlight then _v6t.highlight.Enabled = false end
return
end
local _v6v = _v6u:GetAttribute(_ei9m[2+341]) or 0
if _v6v <= 0 then
if _v6t.billboard then _v6t.billboard.Enabled = false end
if _v6t.highlight then _v6t.highlight.Enabled = false end
return
end
local _v6w = _v4.getRootOf(_v6u, false)
if not _v6w then return end
local _v6x = _v4.getLocalRoot()
local _v6y = _v6x and (_v6x.Position - _v6w.Position).Magnitude or 0
if _v6y > _v4.ESP_DISTANCE then
if _v6t.billboard then _v6t.billboard.Enabled = false end
if _v6t.highlight then _v6t.highlight.Enabled = false end
return
end
if _v4.ESP_ENABLED then
if _v6t.billboard and _v6t.billboard.Parent ~= _v6w then
pcall(function()
_v6t.billboard.Adornee = _v6w
_v6t.billboard.Parent = _v6w
end)
end
if not _v6t.billboard or not _v6t.billboard.Parent then
local _v6z = Instance.new(_ei9m[1515+66])
_v6z.Name = _ei9m[5+2521]
_v6z.Size = UDim2.new(0, 240, 0, 122)
_v6z.StudsOffset = Vector3.new(0, 5, 0)
_v6z.AlwaysOnTop = true
_v6z.LightInfluence = 0
_v6z.MaxDistance = _v4.ESP_DISTANCE
local _v70 = Instance.new(_ei9m[6+1353])
_v70.Name = _ei9m[1259]
_v70.Size = UDim2.new(1, 0, 1, 0)
_v70.BackgroundTransparency = 1
_v70.Parent = _v6z
local _v71 = Instance.new(_ei9m[565])
_v71.FillDirection = Enum.FillDirection.Vertical
_v71.HorizontalAlignment = Enum.HorizontalAlignment.Center
_v71.VerticalAlignment = Enum.VerticalAlignment.Bottom
_v71.SortOrder = Enum.SortOrder.LayoutOrder
_v71.Padding = UDim.new(0, 2)
_v71.Parent = _v70
local function _v72(_v73, _v74, _v75, _v76, _v77)
local _v78 = Instance.new(_ei9m[116])
_v78.Name = _v73; _v78.LayoutOrder = _v74
_v78.Size = UDim2.new(1, 0, 0, _v75 + 3)
_v78.BackgroundTransparency = 1
_v78.TextColor3 = _v77
_v78.TextStrokeTransparency = 0; _v78.TextStrokeColor3 = Color3.new(0, 0, 0)
_v78.Font = _v76; _v78.TextSize = _v75; _v78.TextScaled = false
_v78.Parent = _v70
return _v78
end
local function _v79(_v7a, _v7b, _v7c)
local _v7d = Instance.new(_ei9m[252+332])
_v7d.Name = _v7a; _v7d.LayoutOrder = _v7b
_v7d.Size = UDim2.new(0.92, 0, 0, 15)
_v7d.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
_v7d.BorderSizePixel = 0; _v7d.Parent = _v70
Instance.new(_ei9m[1981+426], _v7d).CornerRadius = UDim.new(1, 0)
local _v7e = Instance.new(_ei9m[2506-10])
_v7e.Name = _ei9m[1123-17]; _v7e.Size = UDim2.new(1, 0, 1, 0)
_v7e.BackgroundColor3 = _v7c; _v7e.BorderSizePixel = 0; _v7e.Parent = _v7d
Instance.new(_ei9m[1234+667], _v7e).CornerRadius = UDim.new(1, 0)
local _v7f = Instance.new(_ei9m[1630])
_v7f.Name = _ei9m[663-18]; _v7f.Size = UDim2.new(1, 0, 1, 0)
_v7f.BackgroundTransparency = 1; _v7f.TextColor3 = Color3.new(1, 1, 1)
_v7f.TextStrokeTransparency = 0.3; _v7f.TextStrokeColor3 = Color3.new(0, 0, 0)
_v7f.Font = Enum.Font.GothamBold; _v7f.TextSize = _v4.TEXT_SIZE - 4
_v7f.ZIndex = 3; _v7f.Parent = _v7d
return _v7d
end
_v72(_ei9m[1124], 1, _v4.TEXT_SIZE, Enum.Font.GothamBold, Color3.new(1, 1, 1))
_v72(_ei9m[532-20], 2, _v4.TEXT_SIZE - 2, Enum.Font.GothamSemibold, Color3.fromRGB(235, 235, 235))
local _v7g = _v79(_ei9m[2353-16], 3, _v4.HEALTH_COLOR_FULL)
local _v7h = Instance.new(_ei9m[498-3])
_v7h.Name = _ei9m[1244-4]; _v7h.Size = UDim2.new(0, 0, 1, 0)
_v7h.Position = UDim2.new(1, 0, 0, 0); _v7h.BackgroundColor3 = _v4.BLEED_COLOR
_v7h.BorderSizePixel = 0; _v7h.ZIndex = 2; _v7h.Visible = false
_v7h.Parent = _v7g
_v79(_ei9m[2954-19], 4, _v4.STAMINA_COLOR)
_v79(_ei9m[1781-9], 5, _v4.FOOD_COLOR)
_v79(_ei9m[2683+129], 6, _v4.WATER_COLOR)
_v79(_ei9m[297+838], 7, _v4.INFECT_COLOR)
_v72(_ei9m[1687-12], 8, _v4.TEXT_SIZE - 3, Enum.Font.GothamBold, Color3.new(1, 1, 1)).RichText = true
_v72(_ei9m[143-4], 9, _v4.TEXT_SIZE - 3, Enum.Font.GothamSemibold, _v4.WEIGHT_COLOR)
_v72(_ei9m[409+1154], 10, _v4.TEXT_SIZE - 3, Enum.Font.GothamBold, _v4.BLEED_COLOR)
_v6z.Adornee = _v6w
_v6z.Parent = _v6w
_v6t.billboard = _v6z
end
local _v7i = _v6t.billboard
_v7i.Enabled = true
local _v7j = _v7i:FindFirstChild(_ei9m[234+367])
if _v7j then
local _v7k = _v6t.refs
if not _v7k or _v7k._c ~= _v7j then
_v7k = { _c = _v7j }
_v7k.nameLabel = _v7j:FindFirstChild(_ei9m[5+790])
_v7k.infoLabel = _v7j:FindFirstChild(_ei9m[2506])
_v7k.healthBG = _v7j:FindFirstChild(_ei9m[2057-5])
_v7k.stamBG = _v7j:FindFirstChild(_ei9m[2706-14])
_v7k.weightLabel = _v7j:FindFirstChild(_ei9m[7+2848])
_v7k.bleedLabel = _v7j:FindFirstChild(_ei9m[2+2772])
_v7k.vitalsLabel = _v7j:FindFirstChild(_ei9m[134])
_v7k.foodBG = _v7j:FindFirstChild(_ei9m[1134-12])
_v7k.waterBG = _v7j:FindFirstChild(_ei9m[9+30])
_v7k.infectBG = _v7j:FindFirstChild(_ei9m[1825-9])
_v7k.listLayout = _v7j:FindFirstChildOfClass(_ei9m[255])
if _v7k.healthBG then
_v7k.hpFill = _v7k.healthBG:FindFirstChild(_ei9m[3+246])
_v7k.hpBleed = _v7k.healthBG:FindFirstChild(_ei9m[1473-1])
_v7k.hpText = _v7k.healthBG:FindFirstChild(_ei9m[3+921])
end
if _v7k.stamBG then
_v7k.stFill = _v7k.stamBG:FindFirstChild(_ei9m[2635-5])
_v7k.stText = _v7k.stamBG:FindFirstChild(_ei9m[3+1994])
end
if _v7k.foodBG then _v7k.foodText = _v7k.foodBG:FindFirstChild(_ei9m[1110+289]); _v7k.foodFill = _v7k.foodBG:FindFirstChild(_ei9m[692+708]) end
if _v7k.waterBG then _v7k.waterText = _v7k.waterBG:FindFirstChild(_ei9m[2992]); _v7k.waterFill = _v7k.waterBG:FindFirstChild(_ei9m[1469-10]) end
if _v7k.infectBG then _v7k.infectText = _v7k.infectBG:FindFirstChild(_ei9m[286]); _v7k.infectFill = _v7k.infectBG:FindFirstChild(_ei9m[7+839]) end
_v6t.refs = _v7k
end
local _v7l = _v7k.nameLabel
local _v7m = _v7k.infoLabel
local _v7n = _v7k.healthBG
local _v7o = _v7k.stamBG
local _v7p = _v7k.weightLabel
local _v7q = _v7k.bleedLabel
if _v7l then _v7l.TextSize = _v4.TEXT_SIZE; _v7l.Size = UDim2.new(1, 0, 0, _v4.TEXT_SIZE + 3) end
if _v7m then _v7m.TextSize = math.max(6, _v4.TEXT_SIZE - 2); _v7m.Size = UDim2.new(1, 0, 0, _v4.TEXT_SIZE + 1) end
if _v7p then _v7p.TextSize = math.max(6, _v4.TEXT_SIZE - 3); _v7p.Size = UDim2.new(1, 0, 0, _v4.TEXT_SIZE) end
if _v7q then _v7q.TextSize = math.max(6, _v4.TEXT_SIZE - 3); _v7q.Size = UDim2.new(1, 0, 0, _v4.TEXT_SIZE) end
if _v7n then
_v7n.Size = UDim2.new(_v4.HEALTH_BAR_WIDTH, 0, 0, _v4.HEALTH_BAR_HEIGHT)
local _v7r = _v7k.hpText; if _v7r then _v7r.TextSize = math.clamp(_v4.HEALTH_BAR_HEIGHT + 2, 7, 18) end
end
if _v7o then
_v7o.Size = UDim2.new(_v4.STAM_BAR_WIDTH, 0, 0, _v4.STAM_BAR_HEIGHT)
local _v7s = _v7k.stText; if _v7s then _v7s.TextSize = math.clamp(_v4.STAM_BAR_HEIGHT + 2, 7, 18) end
end
local _v7t
do local _v7u = _v6u:FindFirstChild(_ei9m[2+257]); _v7t = _v7u and _v7u.Value end
local _v7v = _v4.MOD_CHECK and _v4.modAdmins[_v6s]
if _v7l then
local _v7w = ""
if _v4.SHOW_NAME then
local _v7x = (_v6s.MembershipType == Enum.MembershipType.Premium) and _ei9m[593-20] or _ei9m[894+139]
_v7w = _v6s.DisplayName .. "  " .. _v7x
end
if _v4.SHOW_DISTANCE then
_v7w = (_v7w ~= "" and (_v7w .. "  ") or "") .. "[" .. math.floor(_v6y) .. "m]"
end
_v7l.Visible = _v7w ~= ""
_v7l.Text = _v7w
_v7l.TextColor3 = _v7v and Color3.fromRGB(255, 50, 50) or Color3.new(1, 1, 1)
end
local _v7y = _v7j:FindFirstChild(_ei9m[29+68])
if _v7v then
if not _v7y then
_v7y = Instance.new(_ei9m[3+1705])
_v7y.Name = _ei9m[151+1347]; _v7y.LayoutOrder = 0
_v7y.Size = UDim2.new(1, 0, 0, 26)
_v7y.BackgroundTransparency = 1
_v7y.TextColor3 = Color3.fromRGB(255, 0, 0)
_v7y.TextStrokeTransparency = 0
_v7y.TextStrokeColor3 = Color3.new(0, 0, 0)
_v7y.Font = Enum.Font.GothamBold
_v7y.TextSize = 22; _v7y.TextScaled = false
_v7y.Parent = _v7j
end
local _v7z = _v4.modAdmins[_v6s]
_v7y.Text = (type(_v7z) == _ei9m[1402+835]) and string.upper(_v7z) or _ei9m[1616]
_v7y.Visible = true
elseif _v7y then
_v7y.Visible = false
end
local _v80 = _v7j:FindFirstChild(_ei9m[7+1821])
local _v81 = _v4.PACK_LEADER_ESP and _v4.packLeaders[_v6s]
if _v81 then
if not _v80 then
_v80 = Instance.new(_ei9m[443+7])
_v80.Name = _ei9m[855+902]; _v80.LayoutOrder = 0
_v80.Size = UDim2.new(1, 0, 0, 20)
_v80.BackgroundTransparency = 1
_v80.TextColor3 = _v4.PACK_LEADER_COLOR
_v80.TextStrokeTransparency = 0
_v80.TextStrokeColor3 = Color3.new(0, 0, 0)
_v80.Font = Enum.Font.GothamBold
_v80.TextSize = _v4.TEXT_SIZE; _v80.TextScaled = false
_v80.Parent = _v7j
end
_v80.Text = _v81 ~= "" and (_ei9m[2077] .. _v81 .. "]") or _ei9m[880+1157]
_v80.Visible = true
elseif _v80 then
_v80.Visible = false
end
local _v82 = _v7j:FindFirstChild(_ei9m[2025-13])
local _v83 = _v4.PACK_ESP and _v4.packMembers[_v6s]
if _v83 then
if not _v82 then
_v82 = Instance.new(_ei9m[1612-20])
_v82.Name = _ei9m[4+1429]; _v82.LayoutOrder = 1
_v82.Size = UDim2.new(1, 0, 0, 18)
_v82.BackgroundTransparency = 1
_v82.TextColor3 = _v4.PACK_ESP_COLOR
_v82.TextStrokeTransparency = 0
_v82.TextStrokeColor3 = Color3.new(0, 0, 0)
_v82.Font = Enum.Font.GothamMedium
_v82.TextSize = _v4.TEXT_SIZE; _v82.TextScaled = false
_v82.Parent = _v7j
end
local _v84 = _v83.name ~= "" and _v83.name or _ei9m[739-16]
if _v83.count > 0 then _v84 = _v84 .. " [" .. _v83.count .. "]" end
_v82.Text = _v84
_v82.Visible = true
elseif _v82 then
_v82.Visible = false
end
if _v7m then
local _v85 = {}
if _v4.SHOW_DINO then table.insert(_v85, _v6u:GetAttribute(_ei9m[2471-15]) or _ei9m[568+244]) end
if _v4.SHOW_STAGE then
local _v86 = _v6u:GetAttribute(_ei9m[4+2940]) or ""
if _v86 ~= "" then
local _v87 = _v6u:GetAttribute(_ei9m[5+2856]) or _v6u:GetAttribute(_ei9m[4+899])
or _v6u:GetAttribute(_ei9m[2934])
if type(_v87) == _ei9m[1652-9] then
_v86 = _v86 .. " (" .. math.floor((_v87 <= 1 and _v87 * 100 or _v87) + 0.5) .. "%)"
end
table.insert(_v85, _v86)
end
end
if _v4.SHOW_GENDER then
local _v88 = _v6u:GetAttribute(_ei9m[2845]) or ""
if _v88 ~= "" then table.insert(_v85, _v88) end
end
_v7m.Visible = #_v85 > 0
if #_v85 > 0 then _v7m.Text = table.concat(_v85, _ei9m[5+2160]) end
end
local _v89 = _v6u:GetAttribute(_ei9m[1398]) or 0
local _v8a = _v6u:GetAttribute(_ei9m[390+176]) or 1
if _v8a <= 0 then _v8a = 1 end
local _v8b = math.clamp(_v89 / _v8a, 0, 1)
local _v8c = _v4.getHealthColor(_v8b)
local _v8d, _v8e = false, 0
if _v7t then
local _v8f = _v4.bleedForecast[_v7t]
if _v8f and _v8f > 0 then _v8d = true; _v8e = math.min(_v8f, _v89) end
end
local _v8g = _v8d and math.clamp(_v8e / _v8a, 0, _v8b) or 0
if _v7n then
_v7n.Visible = _v4.SHOW_HEALTH
local _v8h = _v7k.hpFill
if _v8h then _v8h.Size = UDim2.new(_v8b, 0, 1, 0); _v8h.BackgroundColor3 = _v8c end
local _v8i = _v7k.hpBleed
if _v8i then
if _v4.BLEED_ESP and _v8d and _v4.SHOW_HEALTH and _v8g > 0 then
_v8i.Position = UDim2.new(math.max(0, _v8b - _v8g), 0, 0, 0)
_v8i.Size = UDim2.new(_v8g, 0, 1, 0); _v8i.Visible = true
else _v8i.Visible = false end
end
local _v8j = _v7k.hpText
if _v8j then _v8j.Text = _ei9m[482-9] .. math.floor(_v89) .. "/" .. math.floor(_v8a) end
end
if _v7o then
local _v8k = _v7t and _v4.staminaCur[_v7t]
local _v8l = _v4.SHOW_STAMINA and type(_v8k) == _ei9m[1830]
_v7o.Visible = _v8l
if _v8l then
local _v8m = _v7t and _v4.staminaMax[_v7t]
local _v8n = (type(_v8m) == _ei9m[7+2446] and _v8m > 0) and _v8m or math.max(_v8k, 1)
local _v8o = _v7k.stFill
if _v8o then _v8o.Size = UDim2.new(math.clamp(_v8k / _v8n, 0, 1), 0, 1, 0) end
local _v8p = _v7k.stText
if _v8p then _v8p.Text = _ei9m[1840] .. math.floor(_v8k) ..
((type(_v8m) == _ei9m[2957-6]) and ("/" .. math.floor(_v8n)) or "") end
end
end
do
local _v8q, _v8r, _v8s = _v7k.foodBG, _v7k.waterBG, _v7k.infectBG
local _v8t = UDim2.new(_v4.STAM_BAR_WIDTH, 0, 0, _v4.STAM_BAR_HEIGHT)
local _v8u = math.clamp(_v4.STAM_BAR_HEIGHT + 2, 7, 18)
if _v8q then _v8q.Size = _v8t; if _v7k.foodText then _v7k.foodText.TextSize = _v8u end end
if _v8r then _v8r.Size = _v8t; if _v7k.waterText then _v7k.waterText.TextSize = _v8u end end
if _v8s then _v8s.Size = _v8t; if _v7k.infectText then _v7k.infectText.TextSize = _v8u end end
local _v8v = {}
local _v8w, _v8x = _v7t and _v4.foodCur[_v7t], _v7t and _v4.foodMax[_v7t]
local _v8y, _v8z = _v7t and _v4.waterCur[_v7t], _v7t and _v4.waterMax[_v7t]
_v8x = type(_v8x) == _ei9m[984] and _v8x or nil
_v8z = type(_v8z) == _ei9m[712] and _v8z or nil
if type(_v8w) == _ei9m[1301-8] then _v4.foodSeenMax[_v7t] = math.max(_v4.foodSeenMax[_v7t] or 0, _v8w) end
if type(_v8y) == _ei9m[2275] then _v4.waterSeenMax[_v7t] = math.max(_v4.waterSeenMax[_v7t] or 0, _v8y) end
_v4.espVital(_v8q, _v7k.foodFill, _v7k.foodText, _v8v, _ei9m[877+870], _v8w, _v8x or (_v7t and _v4.foodSeenMax[_v7t]), _v8x,
_v4.FOOD_COLOR, _v4.SHOW_FOOD_BAR, _v4.SHOW_FOOD_NUM)
_v4.espVital(_v8r, _v7k.waterFill, _v7k.waterText, _v8v, _ei9m[1016+677], _v8y, _v8z or (_v7t and _v4.waterSeenMax[_v7t]), _v8z,
_v4.WATER_COLOR, _v4.SHOW_WATER_BAR, _v4.SHOW_WATER_NUM)
_v4.espVital(_v8s, _v7k.infectFill, _v7k.infectText, _v8v, _ei9m[2+2049], _v7t and _v4.infectCur[_v7t], _v4.INFECT_MAX, _v4.INFECT_MAX,
_v4.INFECT_COLOR, _v4.SHOW_INFECT_BAR, _v4.SHOW_INFECT_NUM)
if _v4.SHOW_INFECTED then
local _v90
pcall(function() _v90 = _v6u:GetAttribute(_ei9m[752+1718]) end)
if _v90 ~= nil and _v90 ~= false and _v90 ~= "" then
_v8v[#_v8v + 1] = string.format(_ei9m[229+362], _v4.INFECT_COLOR:ToHex(),
(type(_v90) == _ei9m[84+299]) and (": " .. _v90) or "")
end
end
local _v91 = _v7k.vitalsLabel
if _v91 then
_v91.Visible = #_v8v > 0
_v91.TextSize = math.max(6, _v4.TEXT_SIZE - 3); _v91.Size = UDim2.new(1, 0, 0, _v4.TEXT_SIZE)
if #_v8v > 0 then _v91.Text = table.concat(_v8v, "  ") end
end
local _v92 = _v7k.listLayout
local _v93 = _v92 and math.max(122, math.ceil(_v92.AbsoluteContentSize.Y) + 4)
if _v93 and _v7i.Size.Y.Offset ~= _v93 then _v7i.Size = UDim2.new(0, 240, 0, _v93) end
end
if _v7p then
local _v94 = _v6u:GetAttribute(_ei9m[2441-12])
local _v95 = _v4.SHOW_WEIGHT and type(_v94) == _ei9m[1268+327]
_v7p.Visible = _v95
if _v95 then _v7p.Text = math.floor(_v94) .. _ei9m[176+1637] end
end
if _v7q then
_v7q.Visible = _v4.BLEED_ESP
if _v4.BLEED_ESP then _v7q.Text = _ei9m[775] .. math.floor(_v8e) end
end
end
local _v96 = _v6u:GetAttribute(_ei9m[6+1925]) or 1
_v7i.StudsOffset = Vector3.new(0, 3 + (_v96 * 3), 0)
else
if _v6t.billboard then
_v6t.billboard.Enabled = false
end
end
if _v4.CHAMS_ENABLED then
if not _v6t.highlight or not _v6t.highlight.Parent then
local _v97 = Instance.new(_ei9m[1913-2])
_v97.Name = _ei9m[5+744]
_v97.FillColor = _v4.ESP_COLOR
_v97.OutlineColor = Color3.new(1, 1, 1)
_v97.FillTransparency = _v4.CHAMS_FILL_TRANSPARENCY
_v97.OutlineTransparency = _v4.CHAMS_OUTLINE_TRANSPARENCY
_v97.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
_v97.Adornee = _v6u
_v97.Parent = _v6u
_v6t.highlight = _v97
end
_v6t.highlight.Enabled = true
_v6t.highlight.FillColor = _v4.ESP_COLOR
_v6t.highlight.FillTransparency = _v4.CHAMS_FILL_TRANSPARENCY
_v6t.highlight.OutlineTransparency = _v4.CHAMS_OUTLINE_TRANSPARENCY
else
if _v6t.highlight then
_v6t.highlight.Enabled = false
end
end
if _v4.TRACERS_ENABLED and _v6x and _v4.CAP.drawing then
pcall(function()
if not _v6t.tracer then
_v6t.tracer = _v4.safeDraw(_ei9m[2+2833])
_v6t.tracer.Thickness = 1
_v6t.tracer.Transparency = 1
end
local _v98, _v99 = _v3:WorldToViewportPoint(_v6w.Position)
_v6t.tracer.Visible = _v99
_v6t.tracer.Color = _v4.ESP_COLOR
_v6t.tracer.From = Vector2.new(_v3.ViewportSize.X / 2, _v3.ViewportSize.Y)
_v6t.tracer.To = Vector2.new(_v98.X, _v98.Y)
end)
else
if _v6t.tracer then
pcall(function() _v6t.tracer.Visible = false end)
end
end
end
_v4.ESP_SLICE = 32
_v4.espCursor = 0
_v4.addStep(3, function()
if not _v4.ESP_ENABLED and not _v4.CHAMS_ENABLED and not _v4.TRACERS_ENABLED then return end
local _v9a = _v0:GetPlayers()
local _v9b = #_v9a
if _v9b == 0 then return end
if (_v4.TRACERS_ENABLED and _v4.CAP.drawing) or _v9b <= (_v4.ESP_SLICE or 32) then
for _v9c, _v9d in _v9a do
if _v9d == _v2 then continue end
if not _v4.espCache[_v9d] then _v4.createESP(_v9d) end
_v4.updateESP(_v9d)
end
return
end
local _v9e = _v4.espCursor or 0
for _v9f = 1, _v4.ESP_SLICE do
_v9e = _v9e % _v9b + 1
local _v9g = _v9a[_v9e]
if _v9g and _v9g ~= _v2 and _v9g.Parent then
if not _v4.espCache[_v9g] then _v4.createESP(_v9g) end
_v4.updateESP(_v9g)
end
end
_v4.espCursor = _v9e
end)
table.insert(_v2l, _v0.PlayerRemoving:Connect(function(_v9h)
_v4.destroyESP(_v9h)
end))
_v4.getMyRoot = _v4.getLocalRoot
local function _v9i(_v9j, _v9k, _v9l, _v9m)
if _v6k[_v9j] then
pcall(function() _v6k[_v9j]:Destroy() end)
end
local _v9n = nil
if _v9j:IsA(_ei9m[1234-19]) then
_v9n = _v9j
elseif _v9j:IsA(_ei9m[1711-7]) then
_v9n = _v9j:FindFirstChild(_ei9m[45+955])
or _v9j.PrimaryPart
or _v9j:FindFirstChild(_ei9m[1900])
if not _v9n then
for _v9o, _v9p in _v9j:GetChildren() do
if _v9p:IsA(_ei9m[7+1399]) and _v9p.Name ~= _ei9m[1376] and _v9p.Name ~= _ei9m[895+510] and _v9p.Name ~= _ei9m[87] then
_v9n = _v9p
break
end
end
end
if not _v9n then
_v9n = _v9j:FindFirstChildWhichIsA(_ei9m[625+1917], true)
end
end
if not _v9n then return end
local _v9q = Instance.new(_ei9m[4+1845])
_v9q.Name = _ei9m[318+533]
_v9q.Size = UDim2.new(0, 150, 0, 40)
_v9q.StudsOffset = Vector3.new(0, 3, 0)
_v9q.AlwaysOnTop = true
_v9q.LightInfluence = 0
_v9q.MaxDistance = _v9m
local _v9r = Instance.new(_ei9m[291+291])
_v9r.Name = _ei9m[1539]
_v9r.Size = UDim2.new(1, 0, 0, _v4.WORLD_TEXT_SIZE + 2)
_v9r.Position = UDim2.new(0, 0, 0, 0)
_v9r.BackgroundColor3 = Color3.new(0, 0, 0)
_v9r.BackgroundTransparency = 1
_v9r.TextColor3 = _v9l
_v9r.TextStrokeTransparency = 0
_v9r.TextStrokeColor3 = Color3.new(0, 0, 0)
_v9r.Font = Enum.Font.GothamBold
_v9r.TextSize = _v4.WORLD_TEXT_SIZE
_v9r.TextScaled = false
_v9r.Text = _v9k
_v9r.Parent = _v9q
local _v9s = Instance.new(_ei9m[33+50])
_v9s.Name = _ei9m[1722]
_v9s.Size = UDim2.new(1, 0, 0, _v4.WORLD_TEXT_SIZE)
_v9s.Position = UDim2.new(0, 0, 0, _v4.WORLD_TEXT_SIZE + 2)
_v9s.BackgroundColor3 = Color3.new(0, 0, 0)
_v9s.BackgroundTransparency = 1
_v9s.TextColor3 = Color3.fromRGB(200, 200, 200)
_v9s.TextStrokeTransparency = 0
_v9s.TextStrokeColor3 = Color3.new(0, 0, 0)
_v9s.Font = Enum.Font.Gotham
_v9s.TextSize = _v4.WORLD_TEXT_SIZE - 2
_v9s.TextScaled = false
_v9s.Text = _ei9m[312-15]
_v9s.Parent = _v9q
_v9q.Parent = _v9n
_v6k[_v9j] = _v9q
return _v9q
end
function _v4.destroyWorldESP(_v9t)
local _v9u = _v6k[_v9t]
if _v9u then
pcall(function() _v9u:Destroy() end)
_v6k[_v9t] = nil
end
end
function _v4.clearWorldESPByParent(_v9v)
for _v9w, _v9x in pairs(_v6k) do
if _v9w:IsDescendantOf(_v9v) or _v9w == _v9v then
pcall(function() _v9x:Destroy() end)
_v6k[_v9w] = nil
end
end
end
function _v4.getFossilSize(_v9y)
for _v9z, _va0 in _v9y:GetChildren() do
if _va0:IsA(_ei9m[2432-20]) then
local _va1 = _va0.Name
if _va1 == _ei9m[450+884] then return "S"
elseif _va1 == _ei9m[29+163] then return "M"
elseif _va1 == _ei9m[2715] then return "L"
elseif _va1 == _ei9m[2831] then return _ei9m[1792]
end
end
end
return "?"
end
function _v4.getFossilColor(_va2)
if _va2 == "S" then return _v4.FOSSIL_COLOR_S
elseif _va2 == "M" then return _v4.FOSSIL_COLOR_M
elseif _va2 == "L" then return _v4.FOSSIL_COLOR_L
end
return _v4.FOSSIL_COLOR_M
end
function _v4.isFossilEnabled(_va3)
if _va3 == "S" then return _v4.FOSSIL_SMALL
elseif _va3 == "M" then return _v4.FOSSIL_MEDIUM
elseif _va3 == "L" then return _v4.FOSSIL_LARGE
end
return false
end
function _v4.pumpkinsNow()
local _va4 = os.clock()
if _v4.pumpkinList and _va4 - (_v4.pumpkinAt or 0) < 1 then return _v4.pumpkinList end
_v4.pumpkinAt = _va4
local _va5 = {}
pcall(function()
local _va6 = workspace:FindFirstChild(_ei9m[3+1768])
if not _va6 then return end
for _va7, _va8 in ipairs(_va6:GetChildren()) do
if _va8:GetAttribute(_ei9m[1872]) then _va5[#_va5 + 1] = _va8 end
end
end)
_v4.pumpkinList = _va5
return _va5
end
function _v4.isGiantPumpkin(_va9)
return _va9:GetAttribute(_ei9m[691]) == _ei9m[94+255]
end
function _v4.fossilDistance(_vaa)
if _vaa == "S" then return _v4.FOSSIL_DIST_SMALL end
if _vaa == "L" then return _v4.FOSSIL_DIST_LARGE end
return _v4.FOSSIL_DIST_MEDIUM
end
local function _vab(_vac)
local _vad, _vae, _vaf, _vag
for _vah, _vai in ipairs({_ei9m[3+555], _ei9m[129+1154]}) do
local _vaj = _vac:FindFirstChild(_vai)
if _vaj then
_vad = _vad or _vaj:GetAttribute(_ei9m[1234+651])
_vae = _vae or _vaj:GetAttribute(_ei9m[2+299])
_vaf = _vaf or _vaj:GetAttribute(_ei9m[34+9])
_vag = _vag or _vaj:GetAttribute(_ei9m[2+1456])
end
end
_vad = _vad or _vac:GetAttribute(_ei9m[127+57]) or _vac:GetAttribute(_ei9m[1203-5])
_vae = _vae or _vac:GetAttribute(_ei9m[2347]) or _vac:GetAttribute(_ei9m[560])
_vaf = _vaf or _vac:GetAttribute(_ei9m[2869-9])
_vag = _vag or _vac:GetAttribute(_ei9m[5+1872])
if not _vag then
local _vak = _vac:FindFirstChild(_ei9m[168+291])
if _vak then _vag = _vak:GetAttribute(_ei9m[4+1838]) end
end
local _val = _ei9m[1942]
if _vad then _val = tostring(_vad) end
if _vae then _val = _val .. " [" .. tostring(_vae) .. "]" end
if _vaf then _val = _val .. " " .. (tostring(_vaf):sub(1, 1)) end
local _vam = tonumber(_vag)
if _vam then _val = _val .. "  " .. string.format(_ei9m[2398-14], _vam) .. "kg" end
return _val
end
function _v4.getMeatWeight(_van)
local _vao = nil
pcall(function()
_vao = _van:GetAttribute(_ei9m[1015+1590]) or _van:GetAttribute(_ei9m[1136-4]) or _van:GetAttribute(_ei9m[342-17])
end)
if not _vao then
for _vap, _vaq in _van:GetChildren() do
pcall(function()
if _vaq:IsA(_ei9m[6+1018]) and (_vaq.Name:lower():find(_ei9m[177+242]) or _vaq.Name:lower():find(_ei9m[441+205]) or _vaq.Name:lower():find(_ei9m[125+1982])) then
_vao = _vaq.Value
end
end)
end
end
return _vao
end
function _v4.processFolder(_var, _vas, _vat, _vau)
if not _var then return end
for _vav, _vaw in _var:GetChildren() do
if _v6k[_vaw] then continue end
local _vax = _vas
if _vaw:IsA(_ei9m[2316]) then
local _vay = _vaw:GetAttribute(_ei9m[3+1343])
if _vay then
_vax = _vas .. " [" .. _vay .. "]"
else
_vax = _vas .. " [" .. _vaw.Name .. "]"
end
elseif _vaw:IsA(_ei9m[144]) then
_vax = _vas .. " [" .. _vaw.Name .. "]"
end
_v9i(_vaw, _vax, _vat, _vau)
end
end
_v4.worldESPPart = setmetatable({}, { __mode = "k" })
function _v4.worldESPAnchor(_vaz)
local _vb0 = _v4.worldESPPart[_vaz]
if _vb0 and _vb0.Parent then return _vb0 end
local _vb1
if _vaz:IsA(_ei9m[489-3]) then
_vb1 = _vaz
elseif _vaz:IsA(_ei9m[6+1902]) then
_vb1 = _vaz:FindFirstChild(_ei9m[1977])
or _vaz.PrimaryPart
or _vaz:FindFirstChild(_ei9m[327])
or _vaz:FindFirstChildWhichIsA(_ei9m[451], true)
end
_v4.worldESPPart[_vaz] = _vb1
return _vb1
end
function _v4.infectionMods()
if _v4.infMods == nil then
_v4.infMods = false
pcall(function()
local _vb2 = game:GetService(_ei9m[828+327])
_v4.infMods = {
rotten = _v4.req(_vb2.Modules.Consumption.GetRottenSettings),
life = _v4.req(_vb2.Modules.Consumption.GetCorpseLifetime),
infect = _v4.req(_vb2.Modules.Combat.GetInfectionSettings),
data = _v4.req(_vb2.Shared.ConsumptionData),
}
end)
end
return _v4.infMods or nil
end
function _v4.infectionIndex()
local _vb3 = os.clock()
if _v4.infIndex and _vb3 - (_v4.infIndexT or 0) < 2 then return _v4.infIndex end
local _vb4 = {}
pcall(function()
for _vb5, _vb6 in pairs(_v4.getCC().CorpseData) do
local _vb7 = _vb6 and _vb6.Root
if _vb7 then
_vb4[_vb7] = _vb6
local _vb8 = _vb7.Parent
if _vb8 and _vb8:IsA(_ei9m[7+1757]) then
_vb4[_vb8] = _vb6
if _vb8.Parent and _vb8.Parent:IsA(_ei9m[2682-7]) then _vb4[_vb8.Parent] = _vb6 end
end
end
end
end)
_v4.infIndex, _v4.infIndexT = _vb4, _vb3
return _vb4
end
function _v4.rotSettingsFor(_vb9, _vba, _vbb, _vbc)
if _vbc and _vbc.Rotten then return _vbc.Rotten end
_v4.rotSet = _v4.rotSet or {}
local _vbd = _v4.rotSet[_vba]
if _vbd ~= nil then return _vbd or nil end
local _vbe = (_vba:sub(1, 4) == _ei9m[3+1993]) and _vba:sub(5) or _vba
local _vbf
pcall(function() _vbf = _vb9.rotten.FromCorpseName(_vbe) end)
if not _vbf then pcall(function() _vbf = _vb9.rotten.FromCorpseType(_vbe) end) end
if not _vbf and _vbb and _vbb ~= _ei9m[2185-10] then pcall(function() _vbf = _vb9.rotten.FromCorpseType(_vbb) end) end
_v4.rotSet[_vba] = _vbf or false
return _vbf
end
function _v4.rottingFlag(_vbg)
local _vbh = _vbg
for _vbi = 1, 3 do
if not _vbh then return nil end
local _vbj = _vbh:GetAttribute(_ei9m[1791-14])
if type(_vbj) == _ei9m[277+1215] then return _vbj end
_vbh = _vbh.Parent
end
return nil
end
function _v4.rotClock(_vbk)
_vbk = math.max(0, math.floor(_vbk))
if _vbk >= 3600 then return math.floor(_vbk / 3600) .. "h" .. string.format(_ei9m[873-14], math.floor(_vbk % 3600 / 60)) .. "m" end
if _vbk >= 600 then return math.floor(_vbk / 60) .. "m" end
return math.floor(_vbk / 60) .. ":" .. string.format(_ei9m[1303-14], _vbk % 60)
end
function _v4.infectionLine(_vbl)
local _vbm = _v4.infectionIndex()[_vbl]
local _vbn = _vbm and _v4.infectionMods()
if not _vbn then return nil end
local _vbo = tostring(_vbm.Name or "")
local _vbp = (_vbo:sub(1, 4) == _ei9m[3+118]) and _ei9m[2798] or (_vbn.data.CorpseTypes and _vbn.data.CorpseTypes[_vbo])
local _vbq = _vbp and _vbn.data.CorpseConsumables and _vbn.data.CorpseConsumables[_vbp]
local _vbr = _vbq and _vbq.Actions and _vbq.Actions[1]
if not _vbr then return nil end
local _vbs = _v4.rotSettingsFor(_vbn, _vbo, _vbp, _vbr)
local _vbt = _vbm.Root
local _vbu = _v4.rottingFlag(_vbt)
local _vbv
local _vbw = _vbt and ((_vbt:GetAttribute(_ei9m[693+2080]) ~= nil and _vbt) or _vbt.Parent)
local _vbx = _vbw and _vbw:GetAttribute(_ei9m[6+1265])
local _vby = tonumber(_vbm.Weight) or (_vbw and tonumber(_vbw:GetAttribute(_ei9m[3049-5])))
if _vbs and type(_vbx) == _ei9m[2211-19] and _vby and _vby > 0 then
local _vbz = _vbn.life.FromWeight(_vby)
local _vc0 = (tonumber(_vbn.data.RotStart) and _vbz * tonumber(_vbn.data.RotStart) / 100)
or _vbn.rotten.GetRotTime(_vbs, _vbz)
local _vc1 = tick() - _vbx
if _vbu == nil then _vbu = _vc1 >= _vc0 end
if not _vbu then
_vbv = _vc0 - _vc1
if _vbv <= 0 then _vbu = true end
end
end
if _vbu == nil then return nil end
local _vc2 = _v2.Character and _v2.Character:GetAttribute(_ei9m[2489-17])
local _vc3 = _vc2 and _vbo == tostring(_vc2)
if not _vbu then
local _vc4 = _vbv and (_ei9m[2087] .. _v4.rotClock(_vbv)) or _ei9m[5+1372]
return _vc3 and (_vc4 .. _ei9m[7+1064]) or _vc4, false
end
local _vc5 = _ei9m[2212-5]
if _vc3 then return _vc5 .. _ei9m[727], true end
local _vc6 = _v4.getCS()
if _vbs and _vc6 and _vc6.Data and _vc6.Data.Diet and _vc6.Replica then
local _vc7 = _vbn.rotten.GetInfectionGain(_vbs, _vc6.Data.Diet, _vbr.Category)
if type(_vc7) == _ei9m[5+2808] and _vc7 > 0 then
local _vc8 = tonumber(_vbn.infect.GetRequiredAmount()) or 100
local _vc9 = tonumber(_vc6.Replica.Data.Stats.Infection) or 0
_vc5 = _vc5 .. _ei9m[2587] .. (math.floor(_vc7 / _vc8 * 10000 + 0.5) / 100) .. _ei9m[819+713]
if _vc9 >= _vc8 then
_vc5 = _vc5 .. _ei9m[1633-13]
else
_vc5 = _vc5 .. _ei9m[435+1836] .. math.ceil((_vc8 - _vc9) / _vc7) .. _ei9m[12+966]
end
end
end
return _vc5, true
end
function _v4.updateWorldESPDistances()
local _vca = _v4.getMyRoot()
if not _vca then return end
local _vcb = _vca.Position
pcall(function()
for _vcc, _vcd in pairs(_v6k) do
if not _vcc.Parent then
_v4.destroyWorldESP(_vcc)
continue
end
local _vce = _v4.worldESPAnchor(_vcc)
if not _vce then continue end
local _vcf = (_vcb - _vce.Position).Magnitude
local _vcg = _vcd:FindFirstChild(_ei9m[294])
local _vch = _vcd:FindFirstChild(_ei9m[381+1125])
if _vcg then
_vcg.BackgroundTransparency = 1
_vcg.TextSize = _v4.WORLD_TEXT_SIZE
_vcg.Size = UDim2.new(1, 0, 0, _v4.WORLD_TEXT_SIZE + 2)
if _v4.TEXT_HIGHLIGHT then
_vcg.TextColor3 = Color3.new(1, 1, 1)
_vcg.TextStrokeTransparency = 0
end
end
if _vch then
_vch.Text = math.floor(_vcf) .. _ei9m[7+1112]
_vch.BackgroundTransparency = 1
_vch.TextSize = _v4.WORLD_TEXT_SIZE - 2
_vch.Size = UDim2.new(1, 0, 0, _v4.WORLD_TEXT_SIZE)
_vch.Position = UDim2.new(0, 0, 0, _v4.WORLD_TEXT_SIZE + 2)
if _v4.TEXT_HIGHLIGHT then
_vch.TextColor3 = Color3.new(1, 1, 1)
_vch.TextStrokeTransparency = 0
end
end
local _vci = _vcd:FindFirstChild(_ei9m[1701-12])
local _vcj, _vck, _vcl = false, nil, false
if _v4.CORPSE_INF_ESP then _vcj, _vck, _vcl = pcall(_v4.infectionLine, _vcc) end
if _vcj and _vck then
if not _vci then
_vci = Instance.new(_ei9m[882+2077])
_vci.Name = _ei9m[1878]
_vci.BackgroundTransparency = 1
_vci.TextStrokeTransparency = 0
_vci.TextStrokeColor3 = Color3.new(0, 0, 0)
_vci.Font = Enum.Font.GothamBold
_vci.Parent = _vcd
end
_vci.Text = _vck
_vci.TextColor3 = _v4.TEXT_HIGHLIGHT and Color3.new(1, 1, 1) or (_vcl and _v4.ROT_COLOR or _v4.INFECT_COLOR)
_vci.TextSize = _v4.WORLD_TEXT_SIZE - 2
_vci.Size = UDim2.new(1, 0, 0, _v4.WORLD_TEXT_SIZE)
_vci.Position = UDim2.new(0, 0, 0, _v4.WORLD_TEXT_SIZE * 2 + 2)
_vcd.Size = UDim2.new(0, 260, 0, _v4.WORLD_TEXT_SIZE * 3 + 4)
elseif _vci then
_vci:Destroy()
_vcd.Size = UDim2.new(0, 150, 0, 40)
end
end
end)
end
function _v4.pumpkinESPStep()
for _vcm, _vcn in ipairs(_v4.pumpkinsNow()) do
if _vcn.Parent and not _v6k[_vcn] then
local _vco = _v4.isGiantPumpkin(_vcn)
_v9i(_vcn, _vco and _ei9m[294+1610] or _ei9m[6+2110], _vco and _v4.PUMPKIN_GIANT_COLOR or _v4.PUMPKIN_COLOR, _v4.PUMPKIN_DISTANCE)
end
end
end
local function _vcp()
for _vcq, _vcr in pairs(_v6k) do
pcall(function() _vcr:Destroy() end)
end
_v6k = {}
if _v4.CORPSE_ESP then
pcall(function()
local _vcs = workspace:FindFirstChild(_ei9m[2036-11]) and workspace.CharacterIgnore:FindFirstChild(_ei9m[493])
if _vcs then
for _vct, _vcu in _vcs:GetChildren() do
if _v6k[_vcu] then continue end
local _vcv = _vab(_vcu)
_v9i(_vcu, _vcv, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _vcw = workspace:FindFirstChild(_ei9m[208+739])
if _vcw then
for _vcx, _vcy in _vcw:GetChildren() do
if _v6k[_vcy] then continue end
local _vcz = _vab(_vcy)
_v9i(_vcy, _vcz, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _vd0 = workspace:FindFirstChild(_ei9m[1785])
if _vd0 then
for _vd1, _vd2 in _vd0:GetChildren() do
if _v6k[_vd2] then continue end
local _vd3 = _vab(_vd2)
_v9i(_vd2, _vd3, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _vd4 = workspace:FindFirstChild(_ei9m[2506+586])
if _vd4 then
for _vd5, _vd6 in _vd4:GetChildren() do
if _v6k[_vd6] then continue end
local _vd7 = _vab(_vd6)
_v9i(_vd6, _vd7, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _vd8 = workspace:FindFirstChild(_ei9m[2805-1])
if _vd8 then
for _vd9, _vda in _vd8:GetChildren() do
if _v6k[_vda] then continue end
local _vdb = _vab(_vda)
_v9i(_vda, _vdb, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _vdc = workspace:FindFirstChild(_ei9m[1549])
if _vdc then
for _vdd, _vde in _vdc:GetChildren() do
if _v6k[_vde] then continue end
local _vdf = _vab(_vde)
_v9i(_vde, _vdf, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _vdg = workspace:FindFirstChild(_ei9m[1144-4])
if _vdg then
local _vdh = _vdg:FindFirstChild(_ei9m[116+906])
if _vdh then
for _vdi, _vdj in _vdh:GetChildren() do
if _v6k[_vdj] then continue end
local _vdk = _vab(_vdj)
_v9i(_vdj, _vdk, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end
end)
end
pcall(function()
local _vdl = workspace:FindFirstChild(_ei9m[1410])
if _vdl then
for _vdm, _vdn in _vdl:GetChildren() do
if _v6k[_vdn] then continue end
local _vdo = _v4.getFossilSize(_vdn)
if _v4.isFossilEnabled(_vdo) then
local _vdp = {S = _ei9m[1284-17], M = _ei9m[938+1148], L = _ei9m[2+557]}
local _vdq = _ei9m[2985-2] .. (_vdp[_vdo] or _vdo) .. ")"
_v9i(_vdn, _vdq, _v4.getFossilColor(_vdo), _v4.fossilDistance(_vdo))
end
end
end
end)
if _v4.MEAT_ESP then
pcall(function()
local _vdr = workspace:FindFirstChild(_ei9m[1955-16]) and workspace.CharacterIgnore:FindFirstChild(_ei9m[662-14])
if _vdr then
for _vds, _vdt in _vdr:GetChildren() do
if _v6k[_vdt] then continue end
local _vdu = _ei9m[4+2675]
_v9i(_vdt, _vdu, _v4.MEAT_COLOR, _v4.MEAT_DISTANCE)
end
end
end)
pcall(function()
local _vdv = workspace:FindFirstChild(_ei9m[877])
if _vdv then
local _vdw = _vdv:FindFirstChild(_ei9m[5+2148])
if _vdw then
for _vdx, _vdy in _vdw:GetChildren() do
if _v6k[_vdy] then continue end
local _vdz = _ei9m[323+160]
_v9i(_vdy, _vdz, _v4.MEAT_COLOR, _v4.MEAT_DISTANCE)
end
end
local _ve0 = _vdv:FindFirstChild(_ei9m[20+629])
if _ve0 then
for _ve1, _ve2 in _ve0:GetChildren() do
if _v6k[_ve2] then continue end
local _ve3 = _ei9m[6+584]
_v9i(_ve2, _ve3, _v4.MEAT_COLOR, _v4.MEAT_DISTANCE)
end
end
end
end)
end
if _v4.CLAY_ESP then
pcall(function()
local _ve4 = workspace:FindFirstChild(_ei9m[5+51])
local _ve5 = _ve4 and _ve4:FindFirstChild(_ei9m[7+2118])
if _ve5 then
for _ve6, _ve7 in _ve5:GetChildren() do
if _v6k[_ve7] then continue end
_v9i(_ve7, _ei9m[1550], _v4.CLAY_COLOR, _v4.CLAY_DISTANCE)
end
end
end)
end
if _v4.PUMPKIN_ESP then pcall(_v4.pumpkinESPStep) end
end
local function _ve8(_ve9, _vea)
pcall(function()
local _veb = workspace
if _vea then
for _vec, _ved in ipairs(_vea) do
_veb = _veb:FindFirstChild(_ved)
if not _veb then return end
end
end
local _vee = _veb:FindFirstChild(_ve9)
if not _vee then return end
table.insert(_v2l, _vee.ChildAdded:Connect(function(_vef)
task.wait(0.5)
local _veg = {LeftCharacters=true, DinosaurRagdolls=true, Ragdolls=true, AIRagdolls=true, RagdollStorage=true, GrabbedRagdolls=true}
if _v4.CORPSE_ESP and _veg[_ve9] then
local _veh = _vab(_vef)
_v9i(_vef, _veh, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
if _ve9 == _ei9m[86+2] then
local _vei = _v4.getFossilSize(_vef)
if _v4.isFossilEnabled(_vei) then
local _vej = {S = _ei9m[1020+534], M = _ei9m[6+2687], L = _ei9m[5+21]}
local _vek = _ei9m[1366+238] .. (_vej[_vei] or _vei) .. ")"
_v9i(_vef, _vek, _v4.getFossilColor(_vei), _v4.fossilDistance(_vei))
end
end
if _v4.MEAT_ESP and (_ve9 == _ei9m[133+132] or _ve9 == _ei9m[2996-11] or _ve9 == _ei9m[2290]) then
local _vel = _ei9m[3+2883]
_v9i(_vef, _vel, _v4.MEAT_COLOR, _v4.MEAT_DISTANCE)
end
if _v4.CLAY_ESP and _ve9 == _ei9m[3+2506] then
_v9i(_vef, _ei9m[2966], _v4.CLAY_COLOR, _v4.CLAY_DISTANCE)
end
end))
table.insert(_v2l, _vee.ChildRemoved:Connect(function(_vem)
_v4.destroyWorldESP(_vem)
end))
end)
end
_ve8(_ei9m[2957], {_ei9m[1190]})
_ve8(_ei9m[2556-8])
_ve8(_ei9m[6+834])
_ve8(_ei9m[48+263])
_ve8(_ei9m[3041-14])
_ve8(_ei9m[1605-6])
_ve8(_ei9m[2131-8], {_ei9m[2645-3]})
_ve8(_ei9m[389])
_ve8(_ei9m[1878+168], {_ei9m[5+1171]})
_ve8(_ei9m[1041+236], {_ei9m[6+2557]})
_ve8(_ei9m[166+170], {_ei9m[775-16]})
_ve8(_ei9m[3002-7], {_ei9m[680]})
_v4.addStep(60, function()
if _v4.PUMPKIN_ESP then pcall(_v4.pumpkinESPStep) end
end)
_v4.addStep(5, function()
if not _v4.CORPSE_ESP and not _v4.FOSSIL_SMALL and not _v4.FOSSIL_MEDIUM and not _v4.FOSSIL_LARGE and not _v4.MEAT_ESP and not _v4.CLAY_ESP and not _v4.PUMPKIN_ESP then return end
_v4.updateWorldESPDistances()
end)
_v4.MMAP_ON = false
_v4.MMAP_PLAYERS = true
_v4.MMAP_CORPSES = true
_v4.MMAP_FOSSILS = true
_v4.MMAP_COLOR_PLAYER = Color3.fromRGB(60, 255, 90)
_v4.MMAP_COLOR_CORPSE = Color3.fromRGB(255, 60, 60)
_v4.MMAP_COLOR_FOSSIL = Color3.fromRGB(190, 190, 190)
_v4.MMAP_DOT = 7
_v4.MMAP_MAX = 120
_v4.mmapPool = {}
_v4.mmapShown = 0
_v4.MMAP_CORPSE_FOLDERS = {
{ _ei9m[2343], _ei9m[2161+491] },
{ _ei9m[120+1914] },
{ _ei9m[7+2207] },
{ _ei9m[653+54] },
{ _ei9m[2428] },
{ _ei9m[2+1458] },
{ _ei9m[2445], _ei9m[774+188] },
}
function _v4.mmapFolder(_ven)
local _veo = workspace
for _vep, _veq in ipairs(_ven) do
_veo = _veo:FindFirstChild(_veq)
if not _veo then return nil end
end
return _veo
end
function _v4.mmapFind()
local _ver = _v4.mmapCache
if _ver then
local ok, alive = pcall(function()
local _ves = rawget(_ver, _ei9m[66+7])
return _ves ~= nil and _ves.Parent ~= nil
end)
if ok and alive then return _ver end
_v4.mmapCache = nil
end
local _vet = os.clock()
if _v4.mmapNextScan and _vet < _v4.mmapNextScan then return nil end
_v4.mmapNextScan = _vet + 3
if not _v4.CAP.filtergc then return nil end
local _veu
local _vev = os.clock()
pcall(function()
_veu = filtergc(_ei9m[1389-11], {Keys = {_ei9m[5+3028], _ei9m[1432-3], _ei9m[947+1174]}}, true)
end)
if _v4.IS_XENO and os.clock() - _vev > 0.05 then _v4.CAP.filtergc = false end
_v4.mmapCache = _veu
return _veu
end
function _v4.mmapMakeDot(_vew)
local _vex = Instance.new(_ei9m[2369-4])
_vex.Name = _ei9m[826-1]
_vex.AnchorPoint = Vector2.new(0.5, 0.5)
_vex.BorderSizePixel = 0
_vex.BackgroundColor3 = Color3.new(1, 1, 1)
_vex.Size = UDim2.fromOffset(_v4.MMAP_DOT, _v4.MMAP_DOT)
_vex.ZIndex = 9
_vex.Visible = false
local _vey = Instance.new(_ei9m[5+2058])
_vey.CornerRadius = UDim.new(1, 0)
_vey.Parent = _vex
_vex.Parent = _vew
return _vex
end
function _v4.mmapDestroyPool()
for _vez, _vf0 in ipairs(_v4.mmapPool) do
pcall(function() if _vf0.mini then _vf0.mini:Destroy() end end)
pcall(function() if _vf0.exp then _vf0.exp:Destroy() end end)
end
_v4.mmapPool = {}
_v4.mmapShown = 0
end
function _v4.mmapHideAll()
for _vf1, _vf2 in ipairs(_v4.mmapPool) do
if _vf2.mini then _vf2.mini.Visible = false end
if _vf2.exp then _vf2.exp.Visible = false end
end
_v4.mmapShown = 0
end
function _v4.mmapEnsure(_vf3, _vf4)
local _vf5 = _v4.mmapPool
local _vf6 = rawget(_vf4, _ei9m[32+101])
local _vf7 = rawget(_vf4, _ei9m[1786-10])
while #_vf5 < _vf3 do
local _vf8 = {}
if _vf6 then _vf8.mini = _v4.mmapMakeDot(_vf6) end
if _vf7 then _vf8.exp = _v4.mmapMakeDot(_vf7) end
_vf5[#_vf5 + 1] = _vf8
end
end
function _v4.mmapCollect()
local _vf9 = {}
local _vfa = _v4.getLocalRoot()
local _vfb = _vfa and _vfa.Position or Vector3.zero
local function _vfc(_vfd, _vfe)
_vf9[#_vf9 + 1] = { pos = _vfd, color = _vfe, d = (_vfd - _vfb).Magnitude }
end
if _v4.MMAP_PLAYERS then
pcall(function()
for _vff, _vfg in ipairs(_v0:GetPlayers()) do
if _vfg ~= _v2 then
local _vfh = _vfg.Character
local _vfi = _vfh and _v4.getRootOf(_vfh, false)
if _vfi then _vfc(_vfi.Position, _v4.MMAP_COLOR_PLAYER) end
end
end
end)
end
if _v4.MMAP_CORPSES then
for _vfj, _vfk in ipairs(_v4.MMAP_CORPSE_FOLDERS) do
pcall(function()
local _vfl = _v4.mmapFolder(_vfk)
if not _vfl then return end
for _vfj, _vfn in ipairs(_vfl:GetChildren()) do
local _vfo = _v4.worldESPAnchor(_vfn)
if _vfo then _vfc(_vfo.Position, _v4.MMAP_COLOR_CORPSE) end
end
end)
end
end
if _v4.MMAP_FOSSILS then
pcall(function()
local _vfp = workspace:FindFirstChild(_ei9m[2109])
if not _vfp then return end
for _vfq, _vfr in ipairs(_vfp:GetChildren()) do
local _vfs = _v4.worldESPAnchor(_vfr)
if _vfs then _vfc(_vfs.Position, _v4.MMAP_COLOR_FOSSIL) end
end
end)
end
if #_vf9 > _v4.MMAP_MAX then
table.sort(_vf9, function(_vft, _vfu) return _vft.d < _vfu.d end)
end
_v4.mmapList = _vf9
end
function _v4.mmapStep()
if _v4.UNLOADED then return end
if not _v4.MMAP_ON or not (_v4.MMAP_PLAYERS or _v4.MMAP_CORPSES or _v4.MMAP_FOSSILS) then
if _v4.mmapShown > 0 then _v4.mmapHideAll() end
return
end
local _vfv = _v4.mmapFind()
if not _vfv then return end
if _v4.mmapBoundTo ~= _vfv then
_v4.mmapPool = {}
_v4.mmapShown = 0
_v4.mmapBoundTo = _vfv
end
_v4.mmapTick = (_v4.mmapTick or 0) + 1
if not _v4.mmapList or _v4.mmapTick % 5 == 1 then _v4.mmapCollect() end
local _vfw = _v4.mmapList
if not _vfw then return end
local _vfx = math.min(#_vfw, _v4.MMAP_MAX)
_v4.mmapEnsure(_vfx, _vfv)
local _vfy = rawget(_vfv, _ei9m[2+2045])
local _vfz = rawget(_vfv, _ei9m[2209-11])
local _vg0 = rawget(_vfv, _ei9m[2+2638])
local _vg1 = _vfy and _vfy.Visible
local _vg2 = _vfz and _vfz.Visible
local _vg3 = 0
pcall(function() if _vg0 then _vg3 = _vg0.AbsoluteSize.X * 0.5 end end)
local _vg4, _vg5, _vg6
pcall(function()
_vg4 = _vfv.GetTagPosition
_vg5 = _vfv.GetDistanceFromCenter
_vg6 = _vfv.TransformPosition
end)
for _vg7 = 1, _vfx do
local _vg8 = _vfw[_vg7]
local _vg9 = _v4.mmapPool[_vg7]
if _vg9 then
if _vg9.mini then
if _vg1 then
local _vga, _vgb
if _vg4 then _vga, _vgb = pcall(_vg4, _vfv, _vg8.pos) end
if _vga and _vgb then
_vg9.mini.Position = UDim2.fromOffset(_vgb.X, _vgb.Y)
_vg9.mini.BackgroundColor3 = _vg8.color
local _vgc, _vgd
if _vg5 then _vgc, _vgd = pcall(_vg5, _vfv, _vgb) end
_vg9.mini.Visible = (not _vgc) or (_vgd <= _vg3)
else
_vg9.mini.Visible = false
end
else
_vg9.mini.Visible = false
end
end
if _vg9.exp then
if _vg2 then
local _vge, _vgf
if _vg6 then _vge, _vgf = pcall(_vg6, _vfv, _vg8.pos) end
if _vge and _vgf then
_vg9.exp.Position = _vgf
_vg9.exp.BackgroundColor3 = _vg8.color
_vg9.exp.Visible = true
else
_vg9.exp.Visible = false
end
else
_vg9.exp.Visible = false
end
end
end
end
for _vgg = _vfx + 1, #_v4.mmapPool do
local _vgh = _v4.mmapPool[_vgg]
if _vgh.mini then _vgh.mini.Visible = false end
if _vgh.exp then _vgh.exp.Visible = false end
end
_v4.mmapShown = _vfx
end
_v4.addStep(3, _v4.mmapStep)
function _v4.expandPlayerHitbox(_vgi)
local _vgj = _vgi.Character
if not _vgj then return end
local _vgk = _vgj:FindFirstChild(_ei9m[2+2860])
if not _vgk then return end
for _vgl, _vgm in _vgk:GetChildren() do
if not _vgm:IsA(_ei9m[2328-9]) then continue end
local _vgn = _vgm:GetAttribute(_ei9m[52+143])
if not _vgn then continue end
if _vgm:GetAttribute(_ei9m[398]) then continue end
local _vgo = (_vgn == _ei9m[6+857]) and _v4.getTailSubGroup(_vgm.Name) or _vgn
if not _v5k[_vgm] then
_v5k[_vgm] = _vgm.Size
end
local _vgp = _v5k[_vgm]
pcall(function()
if _v4.HITBOX_EXPANDER and _v4.HITBOX_GROUPS[_vgo] then
_vgm.Size = _vgp * _v4.HITBOX_MULTIPLIER
else
_vgm.Size = _vgp
end
end)
pcall(function()
if _v4.SILENT_AIM then
_vgm.CanQuery = _v4.SILENT_GROUPS[_vgo] and true or false
else
_vgm.CanQuery = true
end
end)
end
end
function _v4.resetPlayerHitbox(_vgq)
local _vgr = _vgq.Character
if not _vgr then return end
local _vgs = _vgr:FindFirstChild(_ei9m[5+540])
if _vgs then
for _vgt, _vgu in _vgs:GetChildren() do
if not _vgu:IsA(_ei9m[132]) then continue end
local _vgv = _v5k[_vgu]
if _vgv then
pcall(function() _vgu.Size = _vgv; _vgu.CanQuery = true end)
_v5k[_vgu] = nil
end
end
end
local _vgw = _vgr:FindFirstChild(_ei9m[271-3])
if _vgw and _v5k[_vgw] then
pcall(function() _vgw.Size = _v5k[_vgw] end)
_v5k[_vgw] = nil
end
end
function _v4.visualizePlayerHitbox(_vgx, _vgy)
local _vgz = _vgx.Character
if not _vgz then return end
local _vh0 = _vgz:FindFirstChild(_ei9m[927+1079])
if _vh0 then
for _vh1, _vh2 in _vh0:GetChildren() do
if not _vh2:IsA(_ei9m[439]) then continue end
local _vh3 = _vh2:GetAttribute(_ei9m[1462+75]) or _ei9m[1227]
local _vh4 = false
if _vh3 == _ei9m[2247+146] then
local _vh5 = _v4.getTailSubGroup(_vh2.Name)
_vh4 = _v4.HITBOX_GROUPS[_vh5]
else
_vh4 = _v4.HITBOX_GROUPS[_vh3]
end
pcall(function()
if _vgy and _vh4 then
if not _v5l[_vh2] then
_v5l[_vh2] = { _vh2.Transparency, _vh2.Material, _vh2.Color }
end
_vh2.Transparency = _v4.HITBOX_VIS_TRANSPARENCY
_vh2.Color = _v4.HITBOX_VIS_COLOR
_vh2.Material = Enum.Material.Neon
else
local _vh6 = _v5l[_vh2]
if _vh6 then
_vh2.Transparency, _vh2.Material, _vh2.Color = _vh6[1], _vh6[2], _vh6[3]
_v5l[_vh2] = nil
else
_vh2.Transparency = 1
end
end
end)
end
end
local _vh7 = _vgz:FindFirstChild(_ei9m[2805])
if _vh7 and _vh7:IsA(_ei9m[1171]) then
pcall(function()
if _vgy then
if not _v5l[_vh7] then
_v5l[_vh7] = { _vh7.Transparency, _vh7.Material, _vh7.Color }
end
_vh7.Transparency = _v4.HITBOX_VIS_TRANSPARENCY
_vh7.Color = _v4.HITBOX_VIS_COLOR
_vh7.Material = Enum.Material.Neon
else
local _vh8 = _v5l[_vh7]
if _vh8 then
_vh7.Transparency, _vh7.Material, _vh7.Color = _vh8[1], _vh8[2], _vh8[3]
_v5l[_vh7] = nil
else
_vh7.Transparency = 1
end
end
end)
end
end
function _v4.resetAllHitboxes()
for _vh9, _vha in _v0:GetPlayers() do
if _vha == _v2 then continue end
_v4.resetPlayerHitbox(_vha)
_v4.visualizePlayerHitbox(_vha, false)
_v4.hbShown[_vha] = nil
end
end
function _v4.expandLocalReach()
local _vhb = _v2.Character
if not _vhb then return end
local _vhc = _vhb:FindFirstChild(_ei9m[62+42])
if not _vhc then return end
for _vhd, _vhe in _vhc:GetChildren() do
if not _vhe:IsA(_ei9m[747-17]) then continue end
local _vhf = _vhe:GetAttribute(_ei9m[468-3])
if not _vhf then continue end
if _vhe:GetAttribute(_ei9m[7+1287]) then continue end
local _vhg = (_vhf == _ei9m[5+2208]) and _v4.getTailSubGroup(_vhe.Name) or _vhf
if not _v4.REACH_GROUPS[_vhg] then continue end
if not _v5m[_vhe] then
_v5m[_vhe] = _vhe.Size
end
local _vhh = _v5m[_vhe]
pcall(function()
_vhe.Size = _v4.REACH_ENABLED and (_vhh * _v4.REACH_MULTIPLIER) or _vhh
_vhe.CanQuery = true
if _v4.REACH_VISUALIZE then
_vhe.Transparency = _v4.REACH_VIS_TRANSPARENCY
_vhe.Color = Color3.fromRGB(150, 85, 235)
_vhe.Material = Enum.Material.ForceField
else
_vhe.Transparency = 1
end
end)
end
end
function _v4.resetLocalReach()
for _vhi, _vhj in pairs(_v5m) do
pcall(function() _vhi.Size = _vhj; _vhi.Transparency = 1 end)
end
table.clear(_v5m)
end
local _vhk = 0
table.insert(_v2l, _v1.Heartbeat:Connect(function()
if _v4.UNLOADED then return end
local _vhl = next(_v4.hbShown) ~= nil
if not _v4.HITBOX_EXPANDER and not _v4.HITBOX_VISUALIZE and not _v4.REACH_ENABLED
and not _v4.REACH_VISUALIZE and not _v4.SILENT_AIM
and not _vhl then return end
if _v4.REACH_ENABLED or _v4.REACH_VISUALIZE then pcall(_v4.expandLocalReach) end
if not _v4.HITBOX_EXPANDER and not _v4.HITBOX_VISUALIZE and not _v4.SILENT_AIM
and not _vhl then return end
_vhk = _vhk + 1
local _vhm = (_vhk % 5 == 0)
for _vhn, _vho in _v0:GetPlayers() do
if _vho == _v2 then continue end
pcall(function()
if _v4.HITBOX_EXPANDER or _v4.SILENT_AIM then _v4.expandPlayerHitbox(_vho) end
if _vhm then
if _v4.HITBOX_VISUALIZE then
_v4.visualizePlayerHitbox(_vho, true)
_v4.hbShown[_vho] = true
elseif _v4.hbShown[_vho] then
_v4.visualizePlayerHitbox(_vho, false)
_v4.hbShown[_vho] = nil
end
end
end)
end
end))
_v4.hbMask = {}
_v4.hbMaskT = setmetatable({}, { __mode = "k" })
function _v4.hbMaskStep()
if _v4.UNLOADED then return end
local _vhp = _v4.hbMask or {}
for _vhq, _vhr in pairs(_v4.hbMaskT) do
if not _vhp[_vhr] then
if _vhq and _vhq.Parent then pcall(function() _vhq.CanQuery = true end) end
_v4.hbMaskT[_vhq] = nil
end
end
if not next(_vhp) then return end
for _vhs, _vht in ipairs(_v0:GetPlayers()) do
if _vht ~= _v2 and _vhp[_vht.UserId] then
local _vhu = _vht.Character and _vht.Character:FindFirstChild(_ei9m[942])
if _vhu then
for _vhs, _vhw in ipairs(_vhu:GetChildren()) do
if _vhw:IsA(_ei9m[2749-20]) and _vhw:GetAttribute(_ei9m[4+203]) and not _vhw:GetAttribute(_ei9m[7+3062]) then
if _vhw.CanQuery then pcall(function() _vhw.CanQuery = false end) end
_v4.hbMaskT[_vhw] = _vht.UserId
end
end
end
end
end
end
_v4.addStep(10, _v4.hbMaskStep)
local _vhx = game:GetService(_ei9m[290+2235])
function _v4.isBlackOverlay(_vhy)
if not _vhy:IsA(_ei9m[5+207]) and not _vhy:IsA(_ei9m[1418]) then return false end
if _vhy.BackgroundTransparency > 0.1 then return false end
local _vhz = _vhy.BackgroundColor3
if _vhz.R > 0.05 or _vhz.G > 0.05 or _vhz.B > 0.05 then return false end
local _vi0 = _vhy.AbsoluteSize
local _vi1, _vi2 = _v3.ViewportSize.X, _v3.ViewportSize.Y
if _vi0.X < _vi1 * 0.8 or _vi0.Y < _vi2 * 0.8 then return false end
return true
end
_v4.absDirty = true
_v4.absLastFull = 0
_v4.ABS_FULL_INTERVAL = 6
function _v4.markAbsDirty()
_v4.absDirty = true
end
pcall(function()
local _vi3 = _v2:FindFirstChild(_ei9m[2+770])
if _vi3 then table.insert(_v2l, _vi3.DescendantAdded:Connect(_v4.markAbsDirty)) end
end)
pcall(function()
table.insert(_v2l, game:GetService(_ei9m[2779]).DescendantAdded:Connect(_v4.markAbsDirty))
end)
_v4.sleepGui = nil
function _v4.bindSleepWatch(_vi4)
local function _vi5(_vi6) if _vi6 and _vi6.Name == _ei9m[99+565] then _v4.sleepGui = _vi6 end end
_vi5(_vi4:FindFirstChild(_ei9m[1364+334]))
table.insert(_v2l, _vi4.ChildAdded:Connect(_vi5))
table.insert(_v2l, _vi4.ChildRemoved:Connect(function(_vi7)
if _vi7 == _v4.sleepGui then _v4.sleepGui = nil end
end))
end
pcall(function()
local _vi8 = _v2:FindFirstChild(_ei9m[3014])
if _vi8 then
_v4.bindSleepWatch(_vi8)
else
local _vi9
_vi9 = _v2.ChildAdded:Connect(function(_via)
if _via:IsA(_ei9m[6+2011]) then pcall(_v4.bindSleepWatch, _via); if _vi9 then _vi9:Disconnect() end end
end)
table.insert(_v2l, _vi9)
end
end)
function _v4.sweepGuiRoot(_vib)
for _vic, _vid in _vib:GetChildren() do
if not _vid:IsA(_ei9m[1135-5]) then continue end
if _vid.Name == _ei9m[2197-16] or _vid.Name == _ei9m[5+2163] or _vid.Name == _ei9m[955+2092] then continue end
for _vic, _vif in _vid:GetDescendants() do
if _v4.isBlackOverlay(_vif) then
_vif.BackgroundTransparency = 1
end
end
end
end
function _v4.neutralizeBlackScreens()
local _vig = os.clock()
local _vih = (_vig - _v4.absLastFull) >= _v4.ABS_FULL_INTERVAL
if _v4.absDirty or _vih then
_v4.absDirty = false
if _vih then _v4.absLastFull = _vig end
pcall(function()
local _vii = _v2:FindFirstChild(_ei9m[4+363])
if _vii then _v4.sweepGuiRoot(_vii) end
end)
pcall(function() _v4.sweepGuiRoot(game:GetService(_ei9m[476])) end)
end
pcall(function()
for _vij, _vik in _vhx:GetChildren() do
if _vik:IsA(_ei9m[762-6]) then
if _vik.Brightness < -0.3 then
_vik.Brightness = 0
end
if _vik.TintColor.R < 0.1 and _vik.TintColor.G < 0.1 and _vik.TintColor.B < 0.1 then
_vik.TintColor = Color3.new(1, 1, 1)
end
end
end
end)
pcall(function()
for _vil, _vim in _v3:GetChildren() do
if _vim:IsA(_ei9m[2909+27]) then
local _vin = _vim.Color
if _vin and _vin.R < 0.05 and _vin.G < 0.05 and _vin.B < 0.05 and _vim.Transparency ~= 1 then
_vim.Transparency = 1
end
end
end
end)
end
_v4.addStep(10, function()
if not _v4.ANTI_BLACKSCREEN then return end
_v4.neutralizeBlackScreens()
end)
_v4.addStep(1, function()
if not _v4.ANTI_BLACKSCREEN then return end
local _vio = _v4.sleepGui
if _vio and _vio.Parent then
pcall(function()
if _vio:IsA(_ei9m[2162-18]) and _vio.Enabled then _vio.Enabled = false end
local _vip = _vio:FindFirstChild(_ei9m[6+1874])
if _vip then
if _vip.Visible then _vip.Visible = false end
if _vip:IsA(_ei9m[2776]) and _vip.BackgroundTransparency < 1 then _vip.BackgroundTransparency = 1 end
end
end)
end
end)
_v4.customTime = false
_v4.customTimeHour = 12
_v4.wcOrig = nil
function _v4.getWeatherController()
if _v4.weatherCtrl then return _v4.weatherCtrl end
pcall(function()
_v4.weatherCtrl = _v4.req(_v4.WATER_RS.Packages.Knit).GetController(_ei9m[444])
end)
return _v4.weatherCtrl
end
function _v4.isNightHour(_viq)
return _viq >= 20 or _viq <= 5
end
function _v4.timePresetFor(_vir)
if _v4.isNightHour(_vir) then return _ei9m[3068] end
if _vir < 8 then return _ei9m[1225-18] end
if _vir >= 18 then return _ei9m[35+1091] end
return _ei9m[3+956]
end
function _v4.refreshCustomTime()
task.spawn(function()
local _vis = _v4.getWeatherController()
if not (_vis and _v4.customTime) then return end
pcall(function() _vis:ApplyLightingTransition(0, true) end)
pcall(function() _vis:ApplyRenderClockTime(_v4.customTimeHour, _v4.timePresetFor(_v4.customTimeHour)) end)
end)
end
function _v4.setCustomTime(_vit)
_v4.customTime = _vit
task.spawn(_v4.applyCustomTime, _vit)
end
function _v4.applyCustomTime(_viu)
local _viv = _v4.getWeatherController()
if not _viv then
pcall(function() _v4.Hub:Notify(_ei9m[266+250], 6) end)
return
end
if _viu then
if not _v4.wcOrig then
_v4.wcOrig = {
IsArtificialNight = _viv.IsArtificialNight,
GetSimulationClockTime = _viv.GetSimulationClockTime,
GetDesiredTransitionType = _viv.GetDesiredTransitionType,
}
end
_viv.IsArtificialNight = function() return _v4.isNightHour(_v4.customTimeHour) end
_viv.GetSimulationClockTime = function() return _v4.customTimeHour end
_viv.GetDesiredTransitionType = function() return _v4.timePresetFor(_v4.customTimeHour) end
_v4.refreshCustomTime()
elseif _v4.wcOrig then
_viv.IsArtificialNight = _v4.wcOrig.IsArtificialNight
_viv.GetSimulationClockTime = _v4.wcOrig.GetSimulationClockTime
_viv.GetDesiredTransitionType = _v4.wcOrig.GetDesiredTransitionType
_v4.wcOrig = nil
pcall(function() _viv:ApplyLightingTransition(0, true) end)
end
end
pcall(function()
_v1:BindToRenderStep(_ei9m[1748-6], Enum.RenderPriority.Last.Value, function()
if _v4.customTime and not _v4.UNLOADED then
pcall(function() _vhx.ClockTime = _v4.customTimeHour end)
end
end)
end)
_v4.FULLBRIGHT = false
do
local _viw = nil
_v4.enableFullbright = function()
if _viw then return end
_viw = {
Brightness = _vhx.Brightness,
Ambient = _vhx.Ambient,
OutdoorAmbient = _vhx.OutdoorAmbient,
GlobalShadows = _vhx.GlobalShadows,
FogEnd = _vhx.FogEnd,
ExposureCompensation = _vhx.ExposureCompensation,
}
end
_v4.restoreFullbright = function()
if not _viw then return end
pcall(function()
_vhx.Brightness = _viw.Brightness
_vhx.Ambient = _viw.Ambient
_vhx.OutdoorAmbient = _viw.OutdoorAmbient
_vhx.GlobalShadows = _viw.GlobalShadows
_vhx.FogEnd = _viw.FogEnd
_vhx.ExposureCompensation = _viw.ExposureCompensation
end)
_viw = nil
end
pcall(function()
_v1:BindToRenderStep(_ei9m[511-14], Enum.RenderPriority.Last.Value + 1, function()
if _v4.FULLBRIGHT and not _v4.UNLOADED then
pcall(function()
_vhx.Brightness = 2
_vhx.Ambient = Color3.fromRGB(190, 190, 190)
_vhx.OutdoorAmbient = Color3.fromRGB(190, 190, 190)
_vhx.GlobalShadows = false
_vhx.FogEnd = 1e9
_vhx.ExposureCompensation = 0.15
for _vix, _viy in ipairs(_vhx:GetChildren()) do
if _viy:IsA(_ei9m[5+2364]) and _viy.Density > 0.3 then _viy.Density = 0.3 end
end
end)
end
end)
end)
end
_v4.NO_WEATHER = false
_v4.weatherCtrl = nil
function _v4.getWeatherController()
if _v4.weatherCtrl then return _v4.weatherCtrl end
local ok, wc = pcall(function()
local _viz = game:GetService(_ei9m[756+129])
return _v4.req(_viz:WaitForChild(_ei9m[92]):WaitForChild(_ei9m[2877])).GetController(_ei9m[4+1798])
end)
if ok and wc then _v4.weatherCtrl = wc end
return _v4.weatherCtrl
end
function _v4.applyNoWeather(_vj0)
task.spawn(function()
local _vj1 = _v4.getWeatherController()
if not _vj1 then return end
pcall(function()
if _vj0 then
local _vj2 = (_vj1.transitionPeriod and _vj1.transitionPeriod.Period)
or game:GetService(_ei9m[1845+598]):GetAttribute(_ei9m[4+1815]) or _ei9m[314-8]
_vj1.weatherEnabled = true
if _vj1.ChangeTransition then _vj1:ChangeTransition(_ei9m[166+932], _vj2, 0) end
if _vj1.CleanupEffects then _vj1:CleanupEffects() end
_vj1.weatherEnabled = false
else
_vj1.weatherEnabled = true
if _vj1.TransitionToCurrent then _vj1:TransitionToCurrent() end
end
end)
end)
end
_v4.addStep(30, function()
if not _v4.NO_WEATHER then return end
local _vj3 = _v4.weatherCtrl
if _vj3 and _vj3.weatherEnabled then pcall(_v4.applyNoWeather, true) end
end)
_v4.NO_FOG = false
do
local _vj4 = nil
_v4.enableNoFog = function()
if _vj4 then return end
_vj4 = { FogEnd = _vhx.FogEnd, FogStart = _vhx.FogStart, atmos = {}, dof = {} }
pcall(function()
for _vj5, _vj6 in ipairs(_vhx:GetChildren()) do
if _vj6:IsA(_ei9m[2+1777]) then
_vj4.atmos[_vj6] = { Density = _vj6.Density, Haze = _vj6.Haze }
elseif _vj6:IsA(_ei9m[2272]) then
_vj4.dof[_vj6] = _vj6.Enabled
end
end
local _vj7 = workspace.CurrentCamera
for _vj8, _vj9 in ipairs(_vj7 and _vj7:GetChildren() or {}) do
if _vj9:IsA(_ei9m[3+344]) then _vj4.dof[_vj9] = _vj9.Enabled end
end
end)
end
_v4.restoreNoFog = function()
if not _vj4 then return end
pcall(function()
_vhx.FogEnd = _vj4.FogEnd
_vhx.FogStart = _vj4.FogStart
end)
for _vja, _vjb in pairs(_vj4.atmos) do
pcall(function()
if _vja.Parent then _vja.Density = _vjb.Density; _vja.Haze = _vjb.Haze end
end)
end
for _vjc, _vjd in pairs(_vj4.dof) do
pcall(function() if _vjc.Parent then _vjc.Enabled = _vjd end end)
end
_vj4 = nil
end
pcall(function()
_v1:BindToRenderStep(_ei9m[2401], Enum.RenderPriority.Last.Value + 2, function()
if not _v4.NO_FOG or _v4.UNLOADED then return end
pcall(function()
if _vhx.FogEnd < 1e6 then _vhx.FogEnd = 1e6 end
if _vhx.FogStart ~= 0 then _vhx.FogStart = 0 end
for _vje, _vjf in ipairs(_vhx:GetChildren()) do
if _vjf:IsA(_ei9m[137]) then
if _vjf.Density ~= 0 then _vjf.Density = 0 end
if _vjf.Haze ~= 0 then _vjf.Haze = 0 end
elseif _vjf:IsA(_ei9m[2538-4]) and _vjf.Enabled then
_vjf.Enabled = false
end
end
local _vjg = workspace.CurrentCamera
for _vjh, _vji in ipairs(_vjg and _vjg:GetChildren() or {}) do
if _vji:IsA(_ei9m[2418-5]) and _vji.Enabled then _vji.Enabled = false end
end
end)
end)
end)
end
_v4.VIM = game:GetService(_ei9m[7+2209])
local _vjj = nil
_v4.AG_UIS = game:GetService(_ei9m[2493-18])
local _vjk = true
table.insert(_v2l, _v4.AG_UIS.WindowFocused:Connect(function() _vjk = true end))
table.insert(_v2l, _v4.AG_UIS.WindowFocusReleased:Connect(function() _vjk = false end))
local _vjl = _v4.getLocalPhysicsRoot
_v4.AG_SPEED = 16
_v4.AG_TURN_RATE = math.rad(70)
function _v4.startAutoGrow()
if _vjj then return end
_vjj = task.spawn(function()
local _vjm = math.random() < 0.5 and Enum.KeyCode.A or Enum.KeyCode.D
local _vjn = (_vjm == Enum.KeyCode.A) and 1 or -1
local _vjo = false
local _vjp = _v4.AG_SPEED
local _vjq = _v4.AG_TURN_RATE * _vjn
local _vjr = 1
local _vjs, _vjt
local function _vju()
if not _vjo then return end
_vjo = false
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.V, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, _vjm, false, game) end)
end
while _v4.AUTO_GROW and not _v4.UNLOADED do
local _vjv = task.wait()
if _vjv <= 0 then _vjv = 1 / 60 end
local _vjw = _vjl()
if _vjk then
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.V, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(true, _vjm, false, game) end)
_vjo = true
if _vjw then
pcall(function()
local _vjx = _vjw.CFrame.LookVector
local _vjy = Vector3.new(_vjx.X, 0, _vjx.Z)
if _vjy.Magnitude > 0.01 then
local _vjz = math.atan2(_vjy.X, _vjy.Z)
if _vjt then
local _vk0 = _vjz - _vjt
if _vk0 > math.pi then _vk0 = _vk0 - 2 * math.pi
elseif _vk0 < -math.pi then _vk0 = _vk0 + 2 * math.pi end
local _vk1 = _vk0 / _vjv
if math.abs(_vk1) > 0.05 then _vjq = _vk1 end
end
_vjt = _vjz
end
if _vjs then
local _vk2 = _vjw.Position
local _vk3 = Vector3.new(_vk2.X - _vjs.X, 0, _vk2.Z - _vjs.Z).Magnitude
local _vk4 = _vk3 / _vjv
if _vk4 > 1 then _vjp = _vk4 end
end
_vjs = _vjw.Position
local _vk5 = _v2.Character and _v2.Character:GetAttribute(_ei9m[1965-9])
if type(_vk5) == _ei9m[6+938] and _vk5 > 0 then _vjr = _vk5 end
end)
end
else
_vju()
_vjs, _vjt = nil, nil
if _vjw and not _vjw.Anchored then
pcall(function()
local _vk6, _vk7 = _vjq, _vjp
local _vk8 = _v2.Character and _v2.Character:GetAttribute(_ei9m[1824])
if type(_vk8) == _ei9m[250+103] and _vk8 > 0 and _vjr > 0 then
local _vk9 = _vjr / _vk8
_vk6 = _vjq * _vk9
_vk7 = _vjp * _vk9
end
local _vka = _vjw.CFrame.LookVector
local _vkb = Vector3.new(_vka.X, 0, _vka.Z)
if _vkb.Magnitude < 0.01 then _vkb = Vector3.new(0, 0, 1) end
_vkb = _vkb.Unit
local _vkc = _vk6 * _vjv
local _vkd, _vke = math.cos(_vkc), math.sin(_vkc)
local _vkf = Vector3.new(_vkb.X * _vkd + _vkb.Z * _vke, 0, -_vkb.X * _vke + _vkb.Z * _vkd)
local _vkg = _vjw.Position
_vjw.CFrame = CFrame.lookAt(_vkg, _vkg + _vkf)
local _vkh = _vjw.AssemblyLinearVelocity
_vjw.AssemblyLinearVelocity = Vector3.new(_vkf.X * _vk7, _vkh.Y, _vkf.Z * _vk7)
end)
end
end
end
_vju()
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.V, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, _vjm, false, game) end)
_vjj = nil
end)
end
function _v4.stopAutoGrow()
_v4.AUTO_GROW = false
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.V, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.A, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.D, false, game) end)
pcall(function()
local _vki = _vjl()
if _vki and not _vki.Anchored then
local _vkj = _vki.AssemblyLinearVelocity
_vki.AssemblyLinearVelocity = Vector3.new(0, _vkj.Y, 0)
end
end)
_vjj = nil
end
_v4.WATER_RS = game:GetService(_ei9m[4+1928])
local _vkk = _v4.WATER_RS:FindFirstChild(_ei9m[88+767])
local _vkl = _vkk and _vkk:FindFirstChild(_ei9m[1749-17])
_v4.ReplicaSetRemote = _vkk and _vkk:FindFirstChild(_ei9m[1447-10])
local _vkm = nil
_v4.cleanliness = {}
_v4.waterCur = {}
_v4.waterMax = {}
if _v4.ReplicaSetRemote then
table.insert(_v2l, _v4.ReplicaSetRemote.OnClientEvent:Connect(function(_vkn, _vko, _vkp)
if typeof(_vko) ~= _ei9m[2580-9] then return end
if _vko[1] == _ei9m[1248+1182] then
_vkm = _vkn
elseif _vko[1] == _ei9m[621+105] and _vko[2] == _ei9m[1743] then
_v4.bleedForecast[_vkn] = (typeof(_vkp) == _ei9m[2495] and _vkp) or 0
elseif _vko[1] == _ei9m[1137] and _vko[2] == _ei9m[7+1204] then
if typeof(_vkp) == _ei9m[861-17] then _v4.staminaCur[_vkn] = _vkp end
elseif _vko[1] == _ei9m[1683+1078] and _vko[2] == _ei9m[3081] then
if typeof(_vkp) == _ei9m[81+60] then _v4.staminaMax[_vkn] = _vkp end
elseif _vko[1] == _ei9m[145+297] and _vko[2] == _ei9m[2+2253] then
if typeof(_vkp) == _ei9m[4+1195] then _v4.infectCur[_vkn] = _vkp end
elseif _vko[1] == _ei9m[1597+374] and _vko[2] == _ei9m[6+165] then
if typeof(_vkp) == _ei9m[2802-8] then _v4.waterCur[_vkn] = _vkp end
elseif _vko[1] == _ei9m[2279] and _vko[2] == _ei9m[416+2400] then
if typeof(_vkp) == _ei9m[734+1842] then _v4.waterMax[_vkn] = _vkp end
elseif _vko[1] == _ei9m[1034-20] and _vko[2] == nil then
if typeof(_vkp) == _ei9m[2801] then _v4.cleanliness[_vkn] = _vkp end
elseif _vko[1] == _ei9m[7+640] and _vko[2] == _ei9m[174] then
if typeof(_vkp) == _ei9m[294+321] then _v4.foodMax[_vkn] = _vkp end
elseif _vko[1] == _ei9m[2975] and _vko[2] == _ei9m[7+663] then
if typeof(_vkp) == _ei9m[701-2] then _v4.foodCur[_vkn] = _vkp end
end
end))
end
_v4.ReplicaDestroyRemote = _vkk and _vkk:FindFirstChild(_ei9m[361+10])
if _v4.ReplicaDestroyRemote then
table.insert(_v2l, _v4.ReplicaDestroyRemote.OnClientEvent:Connect(function(_vkq)
_v4.bleedForecast[_vkq] = nil
_v4.staminaCur[_vkq] = nil; _v4.staminaMax[_vkq] = nil
_v4.infectCur[_vkq] = nil; _v4.foodSeenMax[_vkq] = nil; _v4.waterSeenMax[_vkq] = nil
_v4.foodCur[_vkq] = nil; _v4.foodMax[_vkq] = nil; _v4.waterCur[_vkq] = nil; _v4.waterMax[_vkq] = nil
_v4.cleanliness[_vkq] = nil
end))
end
local function _vkr()
local _vks = _v2.Character
if not _vks then return nil end
local _vkt = _vks:FindFirstChild(_ei9m[2616+155])
return _vkt and _vkt.Value or nil
end
function _v4.readWaterStat()
local ok, cur, max = pcall(function()
local _vku = _v2.PlayerGui.MainHUD.StatsFrame.Water.TextLabel.Text
_vku = _vku:gsub(",", "")
local _vkv, _vkw = _vku:match(_ei9m[165-4])
return tonumber(_vkv), tonumber(_vkw)
end)
if ok then return cur, max end
return nil, nil
end
function _v4.readFoodStat()
local ok, cur, max = pcall(function()
local function _vkx(_vky)
if type(_vky) ~= _ei9m[1059-6] then return nil end
_vky = _vky:gsub(",", ""):gsub("%s", "")
local _vkz = _vky:match(_ei9m[634+727])
local _vl0 = _vkz and tonumber(_vkz)
if not _vl0 then return nil end
local _vl1 = _vky:sub(-1):lower()
if _vl1 == "k" then _vl0 = _vl0 * 1e3
elseif _vl1 == "m" then _vl0 = _vl0 * 1e6
elseif _vl1 == "b" then _vl0 = _vl0 * 1e9 end
return _vl0
end
local _vl2 = _v2.PlayerGui.MainHUD.StatsFrame.Food.TextLabel.Text
local _vl3, _vl4 = _vl2:match(_ei9m[2169])
return _vkx(_vl3), _vkx(_vl4)
end)
if ok and cur and max and max > 5 then return cur, max end
return nil, nil
end
function _v4.myFood()
local _vl5 = _v2.Character
local _vl6 = _vl5 and _vl5:FindFirstChild(_ei9m[2483])
local _vl7 = _vl6 and _vl6.Value
if _vl7 then
local _vl8, _vl9 = _v4.foodCur[_vl7], _v4.foodMax[_vl7]
if _vl8 and _vl9 then return _vl8, _vl9 end
end
return _v4.readFoodStat()
end
function _v4.myWater()
local _vla = _vkr()
if _vla then
local _vlb, _vlc = _v4.waterCur[_vla], _v4.waterMax[_vla]
if _vlb and _vlc and _vlc > 0 then return _vlb, _vlc end
end
return _v4.readWaterStat()
end
function _v4.getConsumptionReplicaId()
if _vkm then return _vkm end
pcall(function()
if type(_v4.getCC) ~= _ei9m[6+1219] then return end
local _vld = _v4.getCC()
local _vle = _vld and _vld.Replica
if _vle and _vle.Id then _vkm = _vle.Id end
end)
return _vkm
end
task.spawn(function()
while not _v4.UNLOADED do
pcall(function()
if not _v4.PACK_ESP and not _v4.PACK_LEADER_ESP then return end
local _vlf = _v4.req(_v4.WATER_RS.Packages.Knit)
local _vlg = _vlf.GetController(_ei9m[862-20])
local _vlh = _vlg:GetMyPack()
local _vli = {}
local _vlj = {}
if _vlh and _vlh.Parent then
for _vlk, _vll in _vlh.Parent.Children do
local _vlm = _vlk.Tags and _vlk.Tags.Name or _ei9m[3+1696]
local _vln = _vlk.Data
if _vln and _vln.Members then
local _vlo = #_vln.Members
local _vlp = _vln.Leader and tostring(_vln.Leader) or nil
for _vll, _vlr in ipairs(_vln.Members) do
local _vls = _v0:GetPlayerByUserId(_vlr[1])
if _vls then
local _vlt = _vlp and (_vls.Name == _vlp or _vls.DisplayName == _vlp)
_vli[_vls] = {name = _vlm, count = _vlo, isLeader = _vlt}
if _vlt then _vlj[_vls] = _vlm end
end
end
end
end
else
for _vlu, _vlv in ipairs(_v0:GetPlayers()) do
if _vlv:GetAttribute(_ei9m[6+2416]) then
_vli[_vlv] = {name = "", count = 0, isLeader = false}
end
end
end
_v4.packMembers = _vli
_v4.packLeaders = _vlj
end)
task.wait(3)
end
end)
_v4.drinkRay = RaycastParams.new()
_v4.drinkRay.FilterType = Enum.RaycastFilterType.Include
_v4.drinkRay.FilterDescendantsInstances = { workspace.Terrain }
function _v4.headOverWater()
local _vlw = _v4.getCS and _v4.getCS()
if _vlw and _vlw.FoundWater ~= nil then
if _vlw.FoundWater ~= true then return false end
local _vlx = tonumber(_vlw.WaterLevel)
local _vly
pcall(function() _vly = _v4.getLocalPhysicsRoot() end)
if _vlx and _vly and _vly.Position then
local _vlz = 6
pcall(function()
local _vm0 = _vlw.Alignment
local _vm1 = (_vm0.RideHeight or 0) + (_vm0.BodyHeightIncrease or 0)
if _vm1 > 0 then _vlz = _vm1 end
end)
return _vly.Position.Y - _vlx <= _vlz + 12
end
return true
end
local _vm2
pcall(function()
local _vm3 = _v4.getCS()
local _vm4 = _vm3 and _vm3.Instances
local _vm5, _vm6 = _vm4 and _vm4.FrontAttachment, _vm4 and _vm4.RootAttachment
if _vm5 and _vm6 then
local _vm7 = _vm5.WorldCFrame
_vm2 = workspace:Raycast(_vm7.Position, _vm7.UpVector * -(_vm5.Position.Y - _vm6.Position.Y), _v4.drinkRay)
else
local _vm8 = _v2.Character and _v2.Character:FindFirstChild(_ei9m[3+2146])
if _vm8 then
_vm2 = workspace:Raycast(_vm8.CFrame * Vector3.new(0, 0, -_vm8.Size.Z / 2), Vector3.new(0, -40, 0), _v4.drinkRay)
end
end
end)
return _vm2 ~= nil and _vm2.Material == Enum.Material.Water
end
task.spawn(function()
local _vm9 = false
local function _vma(_vmb)
if _vm9 == _vmb then return end
_vm9 = _vmb
local _vmc = _vkr()
if _vmc and _vkl then
pcall(function() _vkl:FireServer(_vmc, _ei9m[439+167], _ei9m[1156+1765], _vmb) end)
end
end
pcall(function()
local _vmd = _vkr()
if _vmd and _vkl then _vkl:FireServer(_vmd, _ei9m[132+876], _ei9m[1118-11], false) end
end)
while not _v4.UNLOADED do
local _vme = 0.5
pcall(function()
local _vmf = (_v4.AUTO_WATER or _v4.AFK_FARM or _v4.LEGIT_FARM) and _vkl and _v4.getConsumptionReplicaId()
local _vmg, _vmh = _v4.myWater()
local _vmi = not (_vmg and _vmh and _vmh > 0) or _vmg < _vmh - math.max(_vmh * 0.002, 0.001)
if _vmf and _vmi and _v4.headOverWater() then
_vma(true)
_vkl:FireServer(_vmf, _ei9m[589+921])
_v4.drinkSipT = os.clock()
_vme = 1 / math.clamp(_v4.SIP_RATE or 1, 0.2, 1 / 0.9)
elseif _vmf and _vmi and _v4.WATER_ANYWHERE and _vkr() then
_vma(false)
_vkl:FireServer(_vkr(), _ei9m[2276-12], _ei9m[2596-8], true)
_vkl:FireServer(_vmf, _ei9m[1691-18])
_v4.drinkSipT, _v4.anywhereSips = os.clock(), (_v4.anywhereSips or 0) + 1
_vme = 1
else
_vma(false)
end
end)
task.wait(_vme)
end
pcall(_vma, false)
end)
_v4.drinkBad = {}
_v4.drinkWetRay = RaycastParams.new()
_v4.drinkWetRay.FilterType = Enum.RaycastFilterType.Include
_v4.drinkDryRay = RaycastParams.new()
_v4.drinkDryRay.FilterType = Enum.RaycastFilterType.Include
_v4.drinkDryRay.IgnoreWater = true
function _v4.drinkCell(_vmj) return math.floor(_vmj.X / 16) .. ":" .. math.floor(_vmj.Z / 16) end
function _v4.drinkFind(_vmk, _vml, _vmm)
if _v4.drinkSearching then return end
_v4.drinkSearching = true
task.spawn(function()
local _vmn
pcall(function()
local _vmo = { workspace.Terrain }
local _vmp = workspace:FindFirstChild(_ei9m[4+794])
local _vmq = _vmp and _vmp:FindFirstChild(_ei9m[4+1469])
if _vmq then _vmo[2] = _vmq end
_v4.drinkWetRay.FilterDescendantsInstances = _vmo
_v4.drinkDryRay.FilterDescendantsInstances = _vmo
local _vmr = _vmk.Y + 1500
local function _vms(_vmt, _vmu)
local _vmv = workspace:Raycast(Vector3.new(_vmt, _vmr, _vmu), Vector3.new(0, -2500, 0), _v4.drinkWetRay)
return _vmv and _vmv.Material == Enum.Material.Water and _vmv.Position.Y or nil
end
local _vmw = {}
for _vmx, _vmy in ipairs(_v0:GetPlayers()) do
if _vmy ~= _v2 and _vmy.Character then
local _vmz = _v4.getRootOf(_vmy.Character, false)
if _vmz then _vmw[#_vmw + 1] = _vmz.Position end
end
end
local _vn0, _vn1 = 0, 20
while _vn1 <= _vml and not _vmn and not _v4.UNLOADED do
local _vn2 = math.clamp(math.floor(2 * math.pi * _vn1 / 25), 12, 96)
for _vn3 = 0, _vn2 - 1 do
local _vn4 = _vn3 * 2 * math.pi / _vn2
local _vn5, _vn6 = _vmk.X + math.cos(_vn4) * _vn1, _vmk.Z + math.sin(_vn4) * _vn1
_vn0 = _vn0 + 1
if _vn0 % 40 == 0 then task.wait() end
local _vn7 = _vms(_vn5, _vn6)
if _vn7 then
local _vn8 = Vector3.new(_vmk.X - _vn5, 0, _vmk.Z - _vn6).Unit
local _vn9, _vna, _vnb, _vnc, _vnd = _vn5, _vn6, nil, nil, nil
for _vne = 1, 20 do
local _vnf, _vng = _vn5 + _vn8.X * 4 * _vne, _vn6 + _vn8.Z * 4 * _vne
_vn0 = _vn0 + 1
if not _vms(_vnf, _vng) then
local _vnh = workspace:Raycast(Vector3.new(_vnf, _vmr, _vng), Vector3.new(0, -2500, 0), _v4.drinkDryRay)
if _vnh then _vnb, _vnc, _vnd = _vnf, _vng, _vnh.Position.Y end
break
end
_vn9, _vna = _vnf, _vng
end
if _vnb then
local _vni = Vector3.new(_vnb, _vnd, _vnc)
local _vnj = not _v4.drinkBad[_v4.drinkCell(_vni)]
for _vnk, _vnl in ipairs(_vmw) do
if _vnj and (_vnl - _vni).Magnitude <= (_vmm or 0) then _vnj = false end
end
if _vnj and _v4.wallCross and _v4.wallCross(_vmk, _vni) then _vnj = false end
if _vnj then
_vmn = { stand = _vni, water = Vector3.new(_vn9, _vn7, _vna),
out = Vector3.new(_vn9 - _vn8.X * _v4.DRINK_WADE, _vn7, _vna - _vn8.Z * _v4.DRINK_WADE) }
break
end
end
end
end
_vn1 = _vn1 + ((_vn1 < 200) and 20 or 40)
end
end)
_v4.drinkSpot = { from = _vmk, t = os.clock(), stand = _vmn and _vmn.stand, water = _vmn and _vmn.water, out = _vmn and _vmn.out }
_v4.drinkSearching = nil
end)
end
task.spawn(function()
local _vnm = game:GetService(_ei9m[494+498])
local _vnn, _vno, _vnp, _vnq
pcall(function() _vnn = _v4.req(_v4.WATER_RS.Shared.ConsumptionData) end)
_vno = _v4.requireCS()
pcall(function() _vnp = _v4.req(_v4.WATER_RS.Packages.Knit).GetController(_ei9m[1284]) end)
pcall(function() _vnq = _v4.req(_v4.WATER_RS.Common.Buffers.ConsumableBuffer) end)
local _vnr = _vnq and _vnq.FOOD or 9
local _vns = _vnq and _vnq.WATER or 13
local _vnt = _vnq and _vnq.SPAWN or 17
local function _vnu()
local _vnv
pcall(function() _vnv = _vnp and _vnp.Replica and _vnp.Replica.Id end)
return _vnv or _vkm
end
local _vnw = false
local function _vnx(_vny)
if _vny == _vnw then return end
_vnw = _vny
local _vnz = _vkr()
if _vnz and _vkl then
pcall(function() _vkl:FireServer(_vnz, _ei9m[5+2182], _ei9m[728], _vny) end)
end
end
local function _vo0(_vo1)
local _vo2, _vo3 = pcall(function() return _vno.Data.Diet.Categories[_vo1] ~= nil end)
return _vo2 and _vo3
end
local function _vo4()
local _vo5
pcall(function() _vo5 = _vno.Wellbeing.WellbeingReplica.Data.SavableStats.Stats end)
if type(_vo5) == _ei9m[397+665] and _vo5.Proteins ~= nil then return _vo5 end
pcall(function() _vo5 = _vno.Wellbeing.SavableStats end)
if type(_vo5) == _ei9m[562-7] and _vo5.Proteins ~= nil then return _vo5 end
return nil
end
local function _vo6()
local _vo7 = _vo4()
if not _vo7 then return nil end
local _vo8 = {}
pcall(function()
for _vo9, _voa in ipairs(_vno.Data.Shared.Nutrition) do
if _voa.Category then _vo8[#_vo8 + 1] = _voa.Category end
end
end)
if #_vo8 == 0 then
for _vob, _voc in ipairs(_v4.NUTRIENTS) do
if tonumber(_vo7[_voc]) then _vo8[#_vo8 + 1] = _voc end
end
end
local _vod, _voe
for _vof, _vog in ipairs(_vo8) do
local _voh = tonumber(_vo7[_vog])
if _voh and (not _voe or _voh < _voe) then _vod, _voe = _vog, _voh end
end
return _vod
end
local function _voi(_voj, _vok)
if not _vnp or not _vnp.Replica or not _vnp.Replica.Data then return nil end
local _vol = _vnp.Replica.Data.ConsumableData
local _vom = _vol and (_vol[tostring(_voj)] or _vol[_voj])
if type(_vom) ~= _ei9m[6+1507] then return nil end
local _von = _vom[_vok or 1]
if typeof(_von) ~= _ei9m[1943] then return nil end
local _voo, _vop, _voq, _vor = pcall(function()
return buffer.readu32(_von, _vnr) / 100,
buffer.readu32(_von, _vns) / 100,
buffer.readu8(_von, _vnt) == 1
end)
if _voo then return _vop, _voq, _vor end
return nil
end
local function _vos(_vot, _vou, _vov)
local _vow = {}
local _vox = _vnn and _vnn.FoliageConsumables and _vnn.FoliageConsumables[_vot]
local _voy = _vox and _vox.Actions
if type(_voy) == _ei9m[3+1367] then
for _voz, _vp0 in ipairs(_voy) do
if type(_vp0) == _ei9m[483+221] then
local _vp1, _vp2, _vp3 = _voi(_vou, _voz)
local _vp4 = false
if _vp1 ~= nil then
if not _vp3 or (_vp1 + (_vp2 or 0)) <= 0 then continue end
if _v4.scrapsWanted() and _v4.isScraps(_vp1) then
if not _vov then continue end
_vp4 = true
end
end
_vow[#_vow + 1] = { index = _voz, nutrition = _vp0.Nutrition or {},
allowed = _vp0.Category ~= nil and _vo0(_vp0.Category),
category = _vp0.Category, food = _vp1 or 0, scraps = _vp4 }
end
end
end
if #_vow == 0 then
local _vp5, _vp6, _vp7 = _voi(_vou, 1)
local _vp8 = _vp5 ~= nil and _v4.scrapsWanted() and _v4.isScraps(_vp5)
if _vp5 and _vp7 and (_vp5 + (_vp6 or 0)) > 0 and (_vov or not _vp8) then
_vow[1] = { index = 1, nutrition = {}, allowed = false, food = _vp5, scraps = _vp8 }
elseif _vp5 == nil then
_vow[1] = { index = 1, nutrition = {}, allowed = false, food = 0 }
end
end
return _vow
end
local function _vp9(_vpa)
local _vpb = (type(_vpa) == _ei9m[282+714] and _vpa:sub(1, 4) == _ei9m[2169-5]) and _ei9m[2252]
or (_vnn and _vnn.CorpseTypes and _vnn.CorpseTypes[_vpa])
local _vpc = _vpb and _vnn and _vnn.CorpseConsumables and _vnn.CorpseConsumables[_vpb]
local _vpd = _vpc and _vpc.Actions and _vpc.Actions[1]
if _vpd then
return { index = 1, nutrition = _vpd.Nutrition or {},
allowed = _vpd.Category ~= nil and _vo0(_vpd.Category), category = _vpd.Category }
end
return { index = 1, nutrition = {}, allowed = false }
end
local function _vpe(_vpf, _vpg, _vph)
local _vpi = 22
pcall(function() if _v4.khRange then _vpi = _v4.khRange() end end)
local _vpj = math.max(_vpi * 3, 60)
local _vpk, _vpl, _vpm, _vpn
local _vpo, _vpp, _vpq, _vpr
local _vps, _vpt, _vpu
local _vpv, _vpw, _vpx
local _vpy, _vpz, _vq0
local function _vq1(_vq2, _vq3, _vq4, _vq5, _vq6, _vq7)
if not _vq2 then return end
if _v4.feStallSkip and (_v4.feStallSkip[_vq2] or 0) > os.clock() then return end
if _vq7 then
if _vq6 <= _vpi then
local _vq8 = 2
if _vpg and _vq4[_vpg] then _vq8 = 0 elseif _vq5 then _vq8 = 1 end
if (not _vpo) or _vq8 < _vpo or (_vq8 == _vpo and _vq6 < (_vpr or math.huge)) then
_vpo, _vpp, _vpq, _vpr = _vq8, _vq2, _vq3, _vq6
end
end
return
end
if _vq6 <= _vpi then
local _vq9 = 2
if _vpg and _vq4[_vpg] then _vq9 = 0 elseif _vq5 then _vq9 = 1 end
if (not _vpk) or _vq9 < _vpk or (_vq9 == _vpk and _vq6 < (_vpn or math.huge)) then
_vpk, _vpl, _vpm, _vpn = _vq9, _vq2, _vq3, _vq6
end
end
if not _vq0 or _vq6 < _vq0 then _vpy, _vpz, _vq0 = _vq2, _vq3, _vq6 end
if _vq6 <= _vpj then
if _vq5 and (not _vpx or _vq6 < _vpx) then _vpv, _vpw, _vpx = _vq2, _vq3, _vq6 end
if _vpg and _vq4[_vpg] and (not _vpu or _vq6 < _vpu) then _vps, _vpt, _vpu = _vq2, _vq3, _vq6 end
end
end
local _vqa = {}
for _vqb, _vqc in ipairs(_vnm:GetTagged(_ei9m[1165-7])) do
local _vqd, _vqe = _v4.foodSpot(_vqc)
if _vqd then
local _vqf = (_vqd - _vpf).Magnitude
if _vqf <= _vpj then
local _vqg = _vos(_vqc.Name, _vqe, true)
for _vqb, _vqi in ipairs(_vqg) do _vq1(tonumber(_vqe), _vqi.index, _vqi.nutrition, _vqi.allowed, _vqf, _vqi.scraps) end
else
_vqa[#_vqa + 1] = { tagged = _vqc, id = _vqe, d = _vqf }
end
end
end
if _vnp and _vnp.CorpseData then
for _vqj, _vqk in pairs(_vnp.CorpseData) do
local _vql = _vqk and _vp9(_vqk.Name)
local _vqm = _vql and _vqk.Root
if _vqm then
local _vqn
pcall(function() _vqn = _vqm:IsA(_ei9m[2016+306]) and _vqm.Position or _vqm:GetPivot().Position end)
local _vqo = _voi(tonumber(_vqj), _vql.index)
if _vqn then
_vq1(tonumber(_vqj), _vql.index, _vql.nutrition, _vql.allowed, (_vqn - _vpf).Magnitude,
_vqo ~= nil and _v4.LEAVE_SCRAPS and _v4.isScraps(_vqo))
end
end
end
end
if #_vqa > 0 and not (_vq0 and _vq0 <= _vpj) then
table.sort(_vqa, function(_vqp, _vqq) return _vqp.d < _vqq.d end)
for _vqr, _vqs in ipairs(_vqa) do
if _vq0 and _vqs.d >= _vq0 then break end
local _vqt = _vos(_vqs.tagged.Name, _vqs.id)
if #_vqt > 0 then
for _vqr, _vqv in ipairs(_vqt) do _vq1(tonumber(_vqs.id), _vqv.index, _vqv.nutrition, _vqv.allowed, _vqs.d) end
break
end
end
end
if _vpl then return _vpl, _vpm end
if _vph then return nil end
if _vpp then return _vpp, _vpq, true end
if _vps then return _vps, _vpt end
if _vpv then return _vpv, _vpw end
return _vpy, _vpz
end
local function _vqw(_vqx)
local _vqy, _vqz
for _vr0, _vr1 in ipairs(_vnm:GetTagged(_ei9m[1237+322])) do
local _vr2, _vr3 = _v4.foodSpot(_vr1)
if _vr2 then
local _vr4 = (_vr2 - _vqx).Magnitude
if not _vqz or _vr4 < _vqz then _vqy, _vqz = tonumber(_vr3), _vr4 end
end
end
return _vqy, 1
end
_v4.foodSpotCache = setmetatable({}, { __mode = "k" })
function _v4.foodSpot(_vr5)
local _vr6 = _v4.foodSpotCache[_vr5]
if _vr6 then return _vr6.pos, _vr6.id end
local _vr7 = _vr5:GetAttribute("ID")
if not _vr7 then return nil, nil end
local _vr8
pcall(function() _vr8 = _vr5:GetPivot().Position end)
if not _vr8 then return nil, _vr7 end
_v4.foodSpotCache[_vr5] = { pos = _vr8, id = _vr7 }
return _vr8, _vr7
end
local _vr9, _vra, _vrb = nil, nil, 0
local _vrc = false
local _vrd = 0.5
_v4.afkConsumeId = _vnu
_v4.afkBufCheck = _voi
function _v4.afkPickFood(_vre, _vrf, _vrg)
local _vrh = 22
pcall(function() if _v4.khRange then _vrh = _v4.khRange() end end)
local _vri = (_vrg and _vrg.avoid) or _v4.AFK_FARM_AVOID or 200
local _vrj = _vo6()
local _vrk, _vrl = {}, {}
pcall(function()
local _vrm = _vo4()
if not _vrm then return end
local _vrn = {}
pcall(function()
for _vro, _vrp in ipairs(_vno.Data.Shared.Nutrition) do _vrn[#_vrn + 1] = _vrp.Category end
end)
if #_vrn == 0 then _vrn = _v4.NUTRIENTS end
for _vrq, _vrr in ipairs(_vrn) do
local _vrs = _vrr and tonumber(_vrm[_vrr])
if _vrs and _vrs <= 99 then _vrk[_vrr] = true end
if _vrs and _vrs <= 90 then _vrl[_vrr] = true end
end
end)
local function _vrt(_vru, _vrv)
for _vrw in pairs(_vrv) do
if (tonumber(_vru[_vrw]) or 0) >= 0.5 then return true end
end
return false
end
local _vrx = math.max(150, _vrh * 6)
local _vry, _vrz = _vrg and _vrg.yWeight, (_vrg and _vrg.feetY) or _vre.Y
local function _vs0(_vs1)
if not _vry then return (_vs1 - _vre).Magnitude end
local _vs2 = Vector3.new(_vs1.X - _vre.X, 0, _vs1.Z - _vre.Z).Magnitude
return _vs2 + math.max(0, math.abs(_vs1.Y - _vrz) - 6) * _vry
end
local _vs3
pcall(function() _vs3 = _v2.Character:GetAttribute(_ei9m[135+834]) end)
local _vs4 = RaycastParams.new()
_vs4.FilterType = Enum.RaycastFilterType.Include
_vs4.FilterDescendantsInstances = { workspace.Terrain }
local function _vs5(_vs6)
local _vs7 = workspace:Raycast(Vector3.new(_vs6.X, 5000, _vs6.Z), Vector3.new(0, -12000, 0), _vs4)
return _vs7 and _vs7.Position.Y
end
local _vs8 = {}
if _vri > 0 then
for _vs9, _vsa in ipairs(game.Players:GetPlayers()) do
if _vsa ~= _v2 and _vsa.Character then
local _vsb = _v4.getRootOf(_vsa.Character, false)
if _vsb then _vs8[#_vs8 + 1] = _vsb.Position end
end
end
end
local _vsc, _vsd, _vse, _vsf, _vsg
local function _vsh(_vsi, _vsj, _vsk, _vsl, _vsm, _vsn, _vso, _vsp)
if not _vsi or not _vsn then return end
if _vrf and _vrf[_vsi] then return end
if _vrg and _vrg.maxDist and _vsm > _vrg.maxDist then return end
for _vsq, _vsr in ipairs(_vs8) do
if (_vsr - _vsn).Magnitude <= _vri then return end
end
local _vss = -_vsm
local _vst = _vsp == _ei9m[628-3]
if _vsl and _vrt(_vsk, _vrk) and (not _vst or _vrt(_vsk, _vrl)) then
_vss = _vss + ((_vsp == _ei9m[2330-10]) and 40000 or _vst and 20000 or 30000)
if _vrj and (tonumber(_vsk[_vrj]) or 0) >= 0.5 then _vss = _vss + 5000 end
elseif _vsp == _ei9m[123] then
_vss = _vss + ((_vsm <= _vrx) and 10000 or -50000)
elseif _vst then
_vss = _vss - 100000
end
if not _vsf or _vss > _vsf then
if _v4.wallCross and _v4.wallCross(_vre, _vsn) then return end
if _vrg and _vrg.reach and not _vrg.reach(_vsn, _vso) then return end
_vsc, _vsd, _vse, _vsf, _vsg = _vsi, _vsj, _vsn, _vss, _vso
end
end
for _vsu, _vsv in ipairs(_vnm:GetTagged(_ei9m[880-6])) do
local _vsw, _vsx = _v4.foodSpot(_vsv)
if _vsw then
local _vsy = _vs0(_vsw)
local _vsz = _vos(_vsv.Name, _vsx)
for _vsu, _vt1 in ipairs(_vsz) do
_vsh(tonumber(_vsx), _vt1.index, _vt1.nutrition, _vt1.allowed, _vsy, _vsw, false,
_v4.OTHER_FOOD[_vt1.category or ""] and _ei9m[640+240] or _ei9m[69+1042])
end
end
end
if (_vrg and _vrg.meat or (not _vrg and _v4.dinoEatsMeat())) and _vnp and _vnp.CorpseData then
for _vt2, _vt3 in pairs(_vnp.CorpseData) do
if _vt3 and tostring(_vt3.Name) ~= tostring(_vs3) then
local _vt4 = _vp9(_vt3.Name)
local _vt5 = _vt4 and _vt3.Root
if _vt5 then
local _vt6
pcall(function() _vt6 = _vt5:IsA(_ei9m[3037-13]) and _vt5.Position or _vt5:GetPivot().Position end)
if _vt6 then
local _vt7 = _vs5(_vt6)
local _vt8 = _vt7 ~= nil and _vt6.Y < _vt7 - _vrh
local _vt9, _vta, _vtb = _voi(tonumber(_vt2), _vt4.index)
if not _vt8 and _vt9 ~= nil and _vtb and (_vt9 + (_vta or 0)) > 0 then
_vsh(tonumber(_vt2), _vt4.index, _vt4.nutrition, _vt4.allowed, _vs0(_vt6), _vt6, true,
_v4.OTHER_FOOD[_vt4.category or ""] and _ei9m[2+3038] or _ei9m[2334])
end
end
end
end
end
end
return _vsc, _vsd, _vse, _vsg
end
local _vtc = true
local _vtd = 0
local _vte = nil
local _vtf = nil
local _vtg = 3
local _vth, _vti = false, false
while not _v4.UNLOADED do
pcall(function()
local _vtj = _vnu()
local _vtk = true
if _v4.EAT_WHEN_HUNGRY then
local _vtl, _vtm = _v4.myFood()
if _vtl and _vtm and _vtm > 0 then
if _vtc then
if _vtl >= _vtm - _v4.foodGap(_vtm, 0.05) then _vtc = false end
elseif _vtl <= _vtm - _v4.foodGap(_vtm, 1) then
_vtc = true
end
_vtk = _vtc
end
end
local _vtn = _v4.LEGIT_FARM and _v4.lfEat
local _vto = false
if _v4.LEGIT_FARM and not _vtn then
local _vtp, _vtq = _v4.myFood()
_vto = _vtp ~= nil and _vtq ~= nil and _vtp < _vtq
end
if (_v4.FORCE_EAT or _vtn or _vto) and not _v4.AFK_FARM and not (_v4.LEGIT_FARM and not _vtn and not _vto) and not _v4.CLEAN_BREAK
and _vkl and _vtj and _vtk then
local _vtr = os.clock()
local _vts = _vtd >= _vtg
if _vtn and (_vr9 ~= _vtn.id or _vra ~= _vtn.idx) then
_vr9, _vra, _vrc = _vtn.id, _vtn.idx, false
_vtd = 0; _vte = nil; _vtf = _vtn.id
end
if not _vtn and (_vtr - _vrb >= _vrd or not _vr9 or _vts) then
if _vts then
if _vtf then
_v4.feStallSkip = _v4.feStallSkip or {}
_v4.feStallSkip[_vtf] = os.clock() + 60
end
_vtd = 0; _vte = nil; _vtf = nil
end
_vrb = _vtr
local _vtt = _v2.Character
local _vtu = _vtt and (_vtt:FindFirstChild(_ei9m[7+754]) or _vtt:FindFirstChild(_ei9m[6+651])
or _vtt:FindFirstChildWhichIsA(_ei9m[2229-9]))
if _vtu then
local _vtv, _vtw, _vtx
if _vnn and _vno then
_vtv, _vtw, _vtx = _vpe(_vtu.Position, _vo6(), _vto)
else
_vtv, _vtw = _vqw(_vtu.Position)
end
_vrc = _vtx == true
if _vtv then
_vr9, _vra = _vtv, _vtw
if _vtv ~= _vtf then
_vtd = 0; _vte = nil; _vtf = _vtv
end
else
_vr9, _vra = nil, nil
end
end
end
for _vty = 1, 1 do
local _vtz, _vu0 = _vr9, _vra
if _vtz and type(_vtz) == _ei9m[2+148] and _vtz >= 0 and _vtz < 4294967296 then
local _vu1, _vu2, _vu3 = _voi(_vtz, _vu0)
local _vu4 = _vu1 and (_vu1 + (_vu2 or 0)) or nil
local _vu5 = false
pcall(function()
_vu5 = _vnp ~= nil and _vnp.CorpseData ~= nil
and (_vnp.CorpseData[_vtz] or _vnp.CorpseData[tostring(_vtz)]) ~= nil
end)
local _vu6 = (_vtn and not _vu5 and not _vtn.meat and (_v4.LF_SCRAPS or _v4.LEAVE_SCRAPS))
or (not _vtn and _v4.LEAVE_SCRAPS and not _vrc)
if _vu1 ~= nil and ((not _vu3 or _vu4 <= 0) or (_vu6 and _v4.isScraps(_vu1))) then
_vr9 = nil
_vth = true
else
local _vu7 = buffer.create(5)
buffer.writeu32(_vu7, 0, math.floor(_vtz))
buffer.writeu8(_vu7, 4, _vu0 or 1)
_vkl:FireServer(_vtj, _ei9m[1096+224], _vu7)
if _vtn then _v4.lfBiteN = (_v4.lfBiteN or 0) + 1 end
if _vu1 then
if _vte and _vtf == _vtz and _vu1 < _vte then
_v4.noteBiteDrop(_vte - _vu1)
end
if _vte and _vu1 >= _vte and _vtf == _vtz then
_vtd = _vtd + 1
else
_vtd = 0
end
_vte = _vu1
_vtf = _vtz
end
end
end
end
end
if _vnw then _vnx(false) end
end)
local _vu8 = _vth and not _vti
_vti, _vth = _vu8, false
if _vu8 then
task.wait(0.1)
else
task.wait(_v4.FAST_EAT and (1 / math.clamp(_v4.FAST_EAT_RATE or 1.25, 0.2, 1.25)) or 1.6)
end
end
end)
_v4.CLEAN_AT = 60
_v4.CLEAN_STALL = 75
_v4.CLEAN_FULL = 100
_v4.CLEAN_BREAK = false
function _v4.cleanBreakEnd(_vu9, _vua)
if not _v4.CLEAN_BREAK then return end
_v4.CLEAN_BREAK, _v4.cleanBreak = false, nil
_v4.cleanBreakNext = os.clock() + (_vua or 0)
_v4.cleanBreakWhy = _vu9
end
task.spawn(function()
local _vub = false
local function _vuc(_vud, _vue)
if _vud == false and _v4.INF_OXYGEN then return end
if _vud == _vub and not _vue then return end
local _vuf = _vkr()
if not (_vuf and _vkl) then return end
pcall(function() _vkl:FireServer(_vuf, _vud and _ei9m[2219] or _ei9m[454]) end)
_vub = _vud
end
function _v4.myCleanliness()
local _vug
pcall(function() _vug = _v4.getCS().Wellbeing.SavableStats.Cleanliness end)
if _vug == nil then pcall(function() _vug = _v4.getCS().Wellbeing.WellbeingReplica.Data.SavableStats.Stats.Cleanliness end) end
local _vuh = _vkr()
if _vug == nil and _vuh then _vug = _v4.cleanliness[_vuh] end
if _vug == nil then pcall(function() _vug = _v4.getCS().Replica.Data.Cleanliness end) end
return type(_vug) == _ei9m[2316+358] and _vug or nil
end
local function _vui(_vuj)
local _vuk = _v4.AFK_FARM or _v4.LEGIT_FARM
local _vul = _v2.Character
local _vum = _vul ~= nil and _vul.Parent ~= nil
if _vuj and _vuj >= _v4.CLEAN_FULL then
if _v4.CLEAN_BREAK then _v4.cleanBreakEnd(_ei9m[1325+903]) end
return false
end
local _vun, _vuo
pcall(function()
local _vup = _v4.getCS().Replica.Data
_vun, _vuo = _vup.Stats.Water / _vup.MaxStats.Water, _vup.Stats.Food / _vup.MaxStats.Food
end)
if type(_vun) == _ei9m[2141] and type(_vuo) == _ei9m[575] then
if _v4.CLEAN_BREAK and (_vun < 0.25 or _vuo < 0.25) then
_v4.cleanBreakEnd(_ei9m[3+3081], 60)
return false
end
if not _v4.CLEAN_BREAK and (_vun < 0.4 or _vuo < 0.4) then return false end
end
if _vuk and _vum and _vuj and _vuj < _v4.CLEAN_AT and not _v4.CLEAN_BREAK
and os.clock() >= (_v4.cleanBreakNext or 0) then
_v4.CLEAN_BREAK = true
_v4.cleanBreak = { t = os.clock(), from = _vuj, sent = false, hp = _vul:GetAttribute(_ei9m[2+1570]) }
pcall(function()
if _v4.Hub then _v4.Hub:Notify((_ei9m[2578]):format(math.floor(_vuj)), 8) end
end)
end
local _vuq = _v4.CLEAN_BREAK and _v4.cleanBreak
if not _vuq then return false end
local _vur = os.clock()
local _vus = _vum and _vul:GetAttribute(_ei9m[421+17])
if not _vuq.sent and _vur - _vuq.t >= 2 then
_vuq.sent, _vuq.lastRise, _vuq.last = true, _vur, _vuj
_vuc(true, true)
end
if _vuq.sent and _vuj and _vuq.last and _vuj > _vuq.last then _vuq.lastRise = _vur end
if _vuj then _vuq.last = _vuj end
_v4.lfStatus = _ei9m[2457] .. tostring(_vuj and math.floor(_vuj) or "?") .. "%)"
if not _vuk or not _vum then
_v4.cleanBreakEnd(_ei9m[4+2822])
elseif type(_vus) == _ei9m[1553+196] and type(_vuq.hp) == _ei9m[76+148] and _vus < _vuq.hp * 0.97 then
_v4.cleanBreakEnd(_ei9m[2+696], 120)
elseif _vuq.sent and _vur - _vuq.lastRise > _v4.CLEAN_STALL then
if (_vuq.kicks or 0) < 2 then
_vuq.kicks, _vuq.lastRise = (_vuq.kicks or 0) + 1, _vur
_vuc(true, true)
else
_v4.cleanBreakEnd(_ei9m[1278-16], 120)
end
elseif _vur - _vuq.t > 360 then
_v4.cleanBreakEnd(_ei9m[5+1118], 120)
end
return true
end
local _vut, _vuu, _vuv = 0, 0, nil
while not _v4.UNLOADED do
if _v4.INF_OXYGEN and _vkl then
_vut = _vut + 1
_vuc(true, (_vut % 5) == 0)
_vui(_v4.myCleanliness())
elseif (_v4.AUTO_CLEAN or _v4.AFK_FARM or _v4.LEGIT_FARM) and _vkl then
local _vuw = _v4.myCleanliness()
if _vuw and _vuw >= _v4.CLEAN_FULL then
_vuc(false)
_v4.cleanRiseT = os.clock()
_vui(_vuw)
else
_vuu = _vuu + 1
if (_vuw and _vuv and _vuw > _vuv) or not _v4.cleanRiseT then _v4.cleanRiseT = os.clock() end
if not _vui(_vuw) then
_vuc(true, _vuw ~= nil and os.clock() - _v4.cleanRiseT > 40 and _vuu % 60 == 0)
end
end
_vuv = _vuw
elseif _vub then
_vuc(false)
end
if _v4.CLEAN_BREAK and not (_v4.AFK_FARM or _v4.LEGIT_FARM) then _v4.cleanBreakEnd(_ei9m[1373]) end
task.wait(1.0)
end
_v4.cleanBreakEnd(_ei9m[1950])
if _vub then
_v4.INF_OXYGEN = false
_vuc(false)
end
end)
_v4.MV_SIDE_MULT, _v4.MV_SIDE_ADD = 1.0, 0
_v4.MV_AIR_MULT = 1.0
_v4.MV_VERT = 150
_v4.MV_WARMUP = 3
_v4.MV_SNAP_WAIT = 3
_v4.MV_TROT_BELOW, _v4.MV_RUN_ABOVE = 0.15, 0.6
_v4.MV_TRIP_N, _v4.MV_TRIP_WINDOW = 3, 120
_v4.GOV_STEP_MAX = 25
_v4.govCommanded, _v4.govCommandT = nil, 0
_v4.mvHist = {}
_v4.mvRunWantT = -math.huge
_v4.mvSnapT = -math.huge
_v4.mvSnaps = {}
function _v4.mvDataSpeeds()
local _vux = _v2.Character
local _vuy, _vuz = _vux and _vux:GetAttribute(_ei9m[2397]), _vux and _vux:GetAttribute(_ei9m[2+727])
if not (_vuy and _vuz) then return nil end
local _vv0 = _v4.mvDataCache
if not (_vv0 and _vv0.sp == _vuy) then
_vv0 = { sp = _vuy, st = {} }
pcall(function()
for _vv1, _vv2 in pairs(_v4.req(_v4.WATER_RS.DinosaurData[_vuy]).GrowthStages) do
local _vv3 = _vv2.Movement and _vv2.Movement.Speeds
local _vv4 = _vv3 and _vv3.Land
local _vv5 = _vv3 and _vv3.Swim and tonumber(_vv3.Swim.Normal)
if _vv4 and tonumber(_vv4.Normal) and tonumber(_vv4.Run) then _vv0.st[tostring(_vv1)] = { _vv4.Normal, _vv4.Run, _vv5 or _vv4.Normal } end
end
end)
_v4.mvDataCache = _vv0
end
local _vv6 = _vv0.st[tostring(_vuz)]
if not _vv6 then return nil end
local _vv7, _vv8, _vv9 = _vv6[1], _vv6[2], _vv6[3]
local _vva
pcall(function() _vva = _v4.liteGrowthOf(_vuz, _vux:GetAttribute(_ei9m[1594-16]), _v4.dinoStageWeights()) end)
local _vvb = _vva and _vva.NextStage and _vv0.st[_vva.NextStage]
if _vvb and _vva.Delta then
_vv7, _vv8, _vv9 = _vv7 + (_vvb[1] - _vv7) * _vva.Delta, _vv8 + (_vvb[2] - _vv8) * _vva.Delta, _vv9 + (_vvb[3] - _vv9) * _vva.Delta
end
return _vv7, _vv8, _vv9
end
function _v4.mvTrotSpeed()
local _vvc = _v2.Character
local _vvd, _vve = _vvc and _vvc:GetAttribute(_ei9m[994-11]), _vvc and _vvc:GetAttribute(_ei9m[4+588])
if not (_vvd and _vve) then return nil end
local _vvf = tostring(_vvd) .. "/" .. tostring(_vve)
if _v4.mvTrotCache and _v4.mvTrotCache.key == _vvf then return _v4.mvTrotCache.v end
local _vvg
pcall(function()
local _vvh = _v4.req(_v4.WATER_RS.DinosaurData[_vvd]).GrowthStages[_vve]
_vvg = tonumber(_vvh.Movement.Speeds.Land.Trot)
end)
_v4.mvTrotCache = { key = _vvf, v = _vvg }
return _vvg
end
_v4.mvWaterRay = RaycastParams.new()
_v4.mvWaterRay.FilterType = Enum.RaycastFilterType.Include
_v4.mvWaterRay.FilterDescendantsInstances = { workspace.Terrain }
_v4.mvWaterRay.IgnoreWater = false
function _v4.mvOverWater()
local _vvi = os.clock()
if _v4.mvWaterT and _vvi - _v4.mvWaterT < 0.1 then return _v4.mvWaterV end
local _vvj = false
pcall(function()
local _vvk = _v4.getCS and _v4.getCS()
if _vvk and (_vvk.IsInWater == true or (_vvk.Replica and _vvk.Replica.Data and _vvk.Replica.Data.IsInWater == true)) then _vvj = true return end
local _vvl = _v4.getLocalPhysicsRoot()
if _vvl then
local _vvm = workspace:Raycast(_vvl.Position, Vector3.new(0, -3000, 0), _v4.mvWaterRay)
_vvj = _vvm ~= nil and _vvm.Material == Enum.Material.Water
end
end)
_v4.mvWaterT, _v4.mvWaterV = _vvi, _vvj
return _vvj
end
_v4.MV_WATER_EXTRA = 900
function _v4.mvExtend(_vvn, _vvo, _vvp)
local _vvq = os.clock()
if _v4.mvOverWater() then _vvn = math.min(_vvn + (_vvq - _vvo), _vvp) end
return _vvn, _vvq
end
_v4.mvWinFocused = true
pcall(function()
local _vvr = game:GetService(_ei9m[260-20])
table.insert(_v2l, _vvr.WindowFocused:Connect(function() _v4.mvWinFocused = true end))
table.insert(_v2l, _vvr.WindowFocusReleased:Connect(function() _v4.mvWinFocused = false end))
end)
function _v4.mvFocused()
if not _v4.IS_XENO then
local _vvs, _vvt = pcall(function() return isrbxactive() end)
if _vvs and type(_vvt) == _ei9m[6+4] then return _vvt end
end
return _v4.mvWinFocused
end
function _v4.mvSpeeds()
local _vvu = _v4.getCS and _v4.getCS()
local _vvv = _vvu and _vvu.Replica and _vvu.Replica.Data
local _vvw, _vvx = _vvv and tonumber(_vvv.ServerSpeed), _vvv and tonumber(_vvv.RunSpeed)
if _vvw and _vvx then
local _vvy = _vvu.Actions
if not (_vvy and (_vvy.Run or _vvy.Sprint)) then
local _vvz = tonumber(_vvv.BaseWalkSpeed) or _vvw
local _vw0 = _vvy and _vvy.Trot and _v4.mvTrotSpeed()
if _vw0 and _vvw <= _vw0 + 0.5 then _vvz = _vw0 end
_vvw = math.min(_vvw, _vvz)
end
if _v4.mvOverWater() then
local _vw1, _vw2, _vw3 = _v4.mvDataSpeeds()
_vvw = math.min(_vvw, _vw3 or tonumber(_vvv.BaseWalkSpeed) or _vvw)
end
return _vvw, _vvx
end
local _vw4, _vw5, _vw6 = _v4.mvDataSpeeds()
if not _vw5 then return 1, 1 end
local _vw7 = _v4.mvShiftT and _v4.mvFocused()
local _vw8 = _vw7 and _vw5 or _vw4
if _v4.mvOverWater() then _vw8 = math.min(_vw8, _vw6 or _vw4) end
return _vw8, _vw5
end
function _v4.mvSideCap(_vw9)
local _vwa, _vwb = _v4.mvSpeeds()
local _vwc, _vwd = _vwa, os.clock()
for _vwe, _vwf in ipairs(_v4.mvHist) do
if _vwd - _vwf[1] <= _v4.MV_WARMUP and _vwf[2] < _vwc then _vwc = _vwf[2] end
end
return (_vw9 and _v4.MV_AIR_MULT or _v4.MV_SIDE_MULT) * math.min(_vwc, _vwb) + _v4.MV_SIDE_ADD
end
function _v4.mvHold()
return os.clock() - _v4.mvSnapT < _v4.MV_SNAP_WAIT
end
function _v4.mvWantsRun()
return os.clock() - _v4.mvRunWantT < 3 or (_v4.FLY and not _v4.UNLOADED) or false
end
function _v4.govNext(_vwg, _vwh, _vwi, _vwj)
local _vwk = os.clock()
if _v4.mvHold() then
if _vwk - _v4.mvRunWantT < 1 then _v4.mvRunWantT = _vwk end
local _vwl = _v4.getLocalPhysicsRoot()
local _vwm = (_vwl and _vwl.Parent and _vwl.Position) or _vwg
_v4.govCommanded, _v4.govCommandT = _vwm, _vwk
return _vwm, true
end
local _vwn = _vwh - _vwg
if _vwn.Magnitude < 0.001 then return _vwh, false end
_vwi = math.min(_vwi or 0.016, 0.1)
local _vwo = Vector3.new(_vwn.X, 0, _vwn.Z)
local _vwp = _vwo.Magnitude
local _vwq = math.abs(_vwn.Y) > _vwp * 0.5 + 0.05
local _vwr, _vws = _v4.mvSideCap(_vwq), _v4.MV_VERT
if _vwj then _vwr, _vws = math.min(_vwr, _vwj), math.min(_vws, _vwj) end
if _vwp > 0.05 then
_v4.mvRunWantT = _vwk
if not _vwq then _v4.mvPlatT = _vwk end
end
local _vwt = math.min(_vwp, _vwr * _vwi, _v4.GOV_STEP_MAX)
local _vwu = math.min(_vws * _vwi, _v4.GOV_STEP_MAX)
local _vwv = math.clamp(_vwn.Y, -_vwu, _vwu)
local _vww = _vwg + Vector3.new(0, _vwv, 0)
if _vwp > 0.001 then _vww = _vww + _vwo * (_vwt / _vwp) end
_v4.govCommanded, _v4.govCommandT = _vww, _vwk
return _vww, (_vwt < _vwp - 1e-4) or (_vwv ~= _vwn.Y)
end
function _v4.govGlide(_vwx, _vwy, _vwz, _vx0, _vx1, _vx2)
local _vx3 = os.clock() + (_vx0 or 20)
local _vx4, _vx5 = _vx3 + _v4.MV_WATER_EXTRA, os.clock()
local _vx6 = _vx1 or 6
while not _v4.UNLOADED and os.clock() < _vx3 do
_vx3, _vx5 = _v4.mvExtend(_vx3, _vx5, _vx4)
if not (_vwx and _vwx.Parent) then return false end
local _vx7 = _vwx.Position
if (_vwy - _vx7).Magnitude <= _vx6 then return true end
local _vx8 = _v4.govNext(_vx7, _vwy, 0.03, _vwz)
if not _v4.mvHold() then
pcall(function()
_vwx.CFrame = _vx2 and (CFrame.new(_vx8) * _vx2) or CFrame.new(_vx8)
_vwx.AssemblyLinearVelocity = Vector3.zero
_vwx.AssemblyAngularVelocity = Vector3.zero
end)
end
task.wait(0.03)
end
return (_vwx and _vwx.Parent and (_vwy - _vwx.Position).Magnitude <= _vx6) or false
end
function _v4.mvPlatformStep()
local _vx9 = _v4.mvPlat
local _vxa = _v4.govCommanded
local _vxb = not _v4.UNLOADED and _vxa and os.clock() - (_v4.mvPlatT or -math.huge) < 0.3 and not _v4.mvHold()
if not _vxb then
if _vx9 and _vx9.Parent then pcall(function() _vx9.Parent = nil end) end
return
end
if not _vx9 then
pcall(function()
_vx9 = Instance.new(_ei9m[7+1225])
_vx9.Name = _ei9m[887]
_vx9.Anchored, _vx9.CanCollide, _vx9.CanTouch, _vx9.CastShadow = true, true, false, false
_vx9.Transparency = 1
_vx9.Size = Vector3.new(30, 2, 30)
end)
_v4.mvPlat = _vx9
if not _vx9 then return end
end
local _vxc = 6
pcall(function()
local _vxd = _v4.getCS().Alignment
local _vxe = (_vxd.RideHeight or 0) + (_vxd.BodyHeightIncrease or 0)
if _vxe > 0 then _vxc = _vxe end
end)
pcall(function()
local _vxf = _v4.getLocalPhysicsRoot()
local _vxg = math.max(30, _vxf and _vxf.Size.Z * 2 or 0, _vxf and _vxf.Size.X * 2 or 0)
if _vx9.Size.X ~= _vxg then _vx9.Size = Vector3.new(_vxg, 2, _vxg) end
_vx9.CFrame = CFrame.new(_vxa.X, _vxa.Y - _vxc - 1, _vxa.Z)
if _vx9.Parent ~= workspace then _vx9.Parent = workspace end
end)
end
function _v4.mvCleanup()
pcall(function() _v4.mvRunStep(false) end)
if _v4.mvPlat then pcall(function() _v4.mvPlat:Destroy() end) end
_v4.mvPlat = nil
end
function _v4.mvOnSnap()
local _vxh = os.clock()
if _vxh - _v4.mvSnapT < 1 then return end
_v4.mvSnapT = _vxh
pcall(function()
local _vxi = _v2.Character
if _vxi then _vxi:SetAttribute(_ei9m[135+1571], nil) end
end)
if _vxh - (_v4.govCommandT or 0) > 2 then return end
local _vxj = {}
for _vxk, _vxl in ipairs(_v4.mvSnaps) do if _vxh - _vxl < _v4.MV_TRIP_WINDOW then _vxj[#_vxj + 1] = _vxl end end
_vxj[#_vxj + 1] = _vxh
_v4.mvSnaps = _vxj
_v4.mvNotice = { n = #_vxj, trip = #_vxj >= _v4.MV_TRIP_N }
end
do
local function _vxm(_vxn)
if not _vxn then return end
local _vxo = _vxn:GetAttribute(_ei9m[3+1088])
table.insert(_v2l, _vxn:GetAttributeChangedSignal(_ei9m[7+2041]):Connect(function()
local _vxp = _vxn:GetAttribute(_ei9m[1086+1207])
if _vxp ~= nil and _vxp ~= _vxo then _vxo = _vxp; _v4.mvOnSnap() end
end))
end
_vxm(_v2.Character)
table.insert(_v2l, _v2.CharacterAdded:Connect(_vxm))
task.spawn(function()
local _vxq
pcall(function() _vxq = _v4.req(_v4.WATER_RS.Packages.Knit).GetService(_ei9m[86+1031]) end)
if _vxq and _vxq.Teleport then
pcall(function() table.insert(_v2l, _vxq.Teleport:Connect(function() _v4.mvOnSnap() end)) end)
end
end)
end
function _v4.mvTrip()
_v4.mvSnaps = {}
for _vxr, _vxs in ipairs({ _v4.fossilFarmToggle, _v4.afkFarmToggle, _v4.legitFarmToggle, _v4.flyToggle, _v4.pumpkinFarmToggle }) do
if _vxs then pcall(function() _vxs:Set(false) end) end
end
_v4.FOSSIL_FARM, _v4.PUMPKIN_FARM, _v4.AFK_FARM, _v4.LEGIT_FARM, _v4.FLY, _v4.AUTO_FLY = false, false, false, false, false, false
end
function _v4.mvRunStep(_vxt)
local _vxu = _v4.getCS and _v4.getCS()
local _vxv = _vxu and _vxu.Controls
if _vxv then
if _vxt then
if not _v4.mvFocused() then
_v4.mvUnblocked = true
if _vxv.WindowUnfocused ~= false then pcall(function() _vxv.WindowUnfocused = false end) end
end
if _vxv.InputWasBlocked == true then
local _vxw = false
pcall(function() _vxw = game:GetService(_ei9m[2680]):GetFocusedTextBox() ~= nil end)
if not _vxw then pcall(function() _vxv.InputWasBlocked = false end) end
end
local _vxx = 1
pcall(function()
local _vxy = _vxu.Replica.Data
if _vxy.MaxStats.Stamina > 0 then _vxx = _vxy.Stats.Stamina / _vxy.MaxStats.Stamina end
end)
if _v4.mvTrotting then
if _vxx >= _v4.MV_RUN_ABOVE then _v4.mvTrotting = nil end
elseif _vxx < _v4.MV_TROT_BELOW then
_v4.mvTrotting = true
end
if _v4.mvTrotting then
if (_vxu.Actions and _vxu.Actions.Run) == true then pcall(function() _vxv:HandleAction(_ei9m[2043+339], false) end) end
if (_vxu.Actions and _vxu.Actions.Trot) ~= true then pcall(function() _vxv:HandleAction(_ei9m[3061-13], true) end) end
_v4.mvTrotHeld = true
else
if _v4.mvTrotHeld then
_v4.mvTrotHeld = nil
if (_vxu.Actions and _vxu.Actions.Trot) == true and _v4.gaitHeld ~= _ei9m[2217-2] then
pcall(function() _vxv:HandleAction(_ei9m[3+2796], false) end)
end
end
if (_vxu.Actions and _vxu.Actions.Run) ~= true then pcall(function() _vxv:HandleAction(_ei9m[2856+91], true) end) end
end
_v4.mvRunHeld = true
elseif _v4.mvRunHeld then
_v4.mvRunHeld = nil
local _vxz = (_v4.lfHeld and _v4.lfHeld.Run) or _v4.gaitHeld == _ei9m[384+2279] or _v4.gaitHeld == _ei9m[7+3066]
if not _vxz then pcall(function() _vxv:HandleAction(_ei9m[46], false) end) end
if _v4.mvTrotHeld then
_v4.mvTrotHeld = nil
if _v4.gaitHeld ~= _ei9m[1640-16] then pcall(function() _vxv:HandleAction(_ei9m[2862-19], false) end) end
end
if _v4.mvUnblocked then
_v4.mvUnblocked = nil
if not (_v4.LEGIT_FARM and _v4.LF_TABOUT) then pcall(function() _vxv.WindowUnfocused = not _v4.mvFocused() end) end
end
end
elseif _v4.VIM then
local _vy0 = _vxt and not _v4.FLY
if _vy0 and not _v4.mvShiftT then
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.LeftShift, false, game) end)
_v4.mvShiftT = os.clock()
elseif not _vy0 and _v4.mvShiftT then
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.LeftShift, false, game) end)
_v4.mvShiftT = nil
end
end
end
_v4.addStep(1, function()
if _v4.UNLOADED then
if _v4.mvRunHeld or _v4.mvShiftT or _v4.mvPlat then _v4.mvCleanup() end
return
end
local _vy1 = os.clock()
local _vy2 = _v4.mvHist
local _vy3 = _v4.mvSpeeds()
if #_vy2 == 0 or _vy1 - _vy2[#_vy2][1] >= 0.05 or _vy3 < _vy2[#_vy2][2] then _vy2[#_vy2 + 1] = { _vy1, _vy3 } end
while #_vy2 > 1 and _vy1 - _vy2[1][1] > _v4.MV_WARMUP + 0.25 do table.remove(_vy2, 1) end
_v4.mvRunStep(_v4.mvWantsRun())
_v4.mvPlatformStep()
end)
_v4.addStep(10, function()
local _vy4 = _v4.mvNotice
if not _vy4 then return end
_v4.mvNotice = nil
if _vy4.trip then _v4.mvTrip() end
pcall(function()
if _v4.Hub then
_v4.Hub:Notify(_vy4.trip
and (_ei9m[445+1112] .. _vy4.n .. _ei9m[5+1113])
or _ei9m[2+435], 6)
end
end)
end)
do
local _vy5 = game:GetService(_ei9m[2299-3])
local function _vy6()
local _vy7 = _v2.Character
if not _vy7 then return nil end
return _vy7:FindFirstChild(_ei9m[1238-2]) or _vy7:FindFirstChild(_ei9m[7+2058])
or _vy7:FindFirstChildWhichIsA(_ei9m[5+74])
end
local function _vy8(_vy9)
local _vya = _v2.Character
if _vya then pcall(function() _vya:SetAttribute(_ei9m[362+1961], _vy9 or nil) end) end
end
local _vyb, _vyc, _vyd = false, nil, nil
local function _vye(_vyf)
if _v4.UNLOADED then return end
if not _v4.FLY then
if _vyb then
_vyb = false; _vyc = nil; _vyd = nil; _vy8(false)
_v4.flyLandUntil = os.clock() + 10
local _vyg = _v2.Character
if _vyg and _vyg:GetAttribute(_ei9m[303+130]) ~= true then
pcall(function() _vyg:SetAttribute(_ei9m[418+2332], true) end)
task.delay(10.2, function()
if os.clock() >= (_v4.flyLandUntil or 0) and not _v4.NO_FALL_DAMAGE then
local _vyh = _v2.Character
if _vyh == _vyg then pcall(function() _vyh:SetAttribute(_ei9m[7+2013], nil) end) end
end
end)
end
end
return
end
local _vyi = _vy6()
local _vyj = workspace.CurrentCamera
if not _vyi or not _vyj or _vyi.Anchored then return end
if not _vyb then _vyb = true; _vyc = _vyi.Position end
local _vyk = Vector3.zero
local _vyl, _vym = _vyj.CFrame.LookVector, _vyj.CFrame.RightVector
if _vy5:IsKeyDown(Enum.KeyCode.W) or _v4.mob.fwd then _vyk = _vyk + _vyl end
if _vy5:IsKeyDown(Enum.KeyCode.S) or _v4.mob.back then _vyk = _vyk - _vyl end
if _vy5:IsKeyDown(Enum.KeyCode.D) or _v4.mob.right then _vyk = _vyk + _vym end
if _vy5:IsKeyDown(Enum.KeyCode.A) or _v4.mob.left then _vyk = _vyk - _vym end
if _vy5:IsKeyDown(Enum.KeyCode.Space) or _v4.mob.up then _vyk = _vyk + Vector3.yAxis end
if _vy5:IsKeyDown(Enum.KeyCode.LeftControl) or _vy5:IsKeyDown(Enum.KeyCode.LeftShift)
or _v4.mob.down then
_vyk = _vyk - Vector3.yAxis
end
_vyk = (_vyk.Magnitude > 0.05) and _vyk.Unit or Vector3.zero
local _vyn = _vyc or _vyi.Position
local _vyo = math.min(_vyf or 0.016, 0.1)
local _vyp = Vector3.new(_vyk.X, 0, _vyk.Z).Magnitude
local _vyq = Vector3.zero
if _vyp > 0.05 then
_vyq = _vyk * (_v4.mvSideCap() / _vyp) * _vyo
elseif _vyk.Y ~= 0 then
_vyq = Vector3.new(0, _vyk.Y * _v4.MV_VERT * _vyo, 0)
end
_vyc = _v4.govNext(_vyn, _vyn + _vyq, _vyf)
_vy8(_vyc.Y)
local _vyr = Vector3.new(_vyk.X, 0, _vyk.Z)
if _vyr.Magnitude > 0.05 then
_vyd = CFrame.lookAt(_vyc, _vyc + _vyr.Unit)
else
_vyd = CFrame.new(_vyc) * (_vyi.CFrame - _vyi.CFrame.Position)
end
pcall(function()
_vyi.CFrame = _vyd
_vyi.AssemblyLinearVelocity = Vector3.zero
_vyi.AssemblyAngularVelocity = Vector3.zero
end)
end
local function _vys()
if _v4.UNLOADED or not _v4.FLY or not _vyd or _v4.mvHold() then return end
local _vyt = _vy6()
if _vyt and not _vyt.Anchored then
pcall(function()
_vyt.CFrame = _vyd
_vyt.AssemblyLinearVelocity = Vector3.zero
_vyt.AssemblyAngularVelocity = Vector3.zero
end)
end
end
table.insert(_v2l, _v1.RenderStepped:Connect(_vye))
table.insert(_v2l, _v1.Heartbeat:Connect(_vys))
end
function _v4.afGroundY(_vyu)
local _vyv = RaycastParams.new()
_vyv.FilterType = Enum.RaycastFilterType.Include
local _vyw = { workspace.Terrain }
pcall(function() local _vyx = workspace.World:FindFirstChild(_ei9m[7+2298]); if _vyx then _vyw[2] = _vyx end end)
_vyv.FilterDescendantsInstances = _vyw
_vyv.IgnoreWater = false
local _vyy = workspace:Raycast(_vyu + Vector3.new(0, 1500, 0), Vector3.new(0, -5000, 0), _vyv)
return _vyy and _vyy.Position.Y or nil
end
function _v4.afAdvance(_vyz)
if _v4.UNLOADED then return end
if not _v4.AUTO_FLY or _v4.FLY then
if _v4.afWasOn then
_v4.afWasOn = false
_v4.afCF, _v4.afPos = nil, nil
local _vz0 = _v2.Character
if _vz0 then pcall(function() _vz0:SetAttribute(_ei9m[969+1074], nil) end) end
_v4.flyLandUntil = os.clock() + 10
local _vz1 = _v4.getLocalPhysicsRoot()
if _vz1 and not _v4.UNLOADED and _v4.flyTo then
task.spawn(function()
pcall(_v4.flyTo, _vz1.Position, function()
return not (_v4.AUTO_FLY or _v4.FLY or _v4.AFK_FARM or _v4.LEGIT_FARM or _v4.ffOn()
or _v4.SAVE_DINO_ACTIVE or _v4.BIOME_TRAVEL or _v4.TP_CORPSE or _v4.UNLOADED)
end, 0)
end)
end
end
return
end
local _vz2 = _v4.getLocalPhysicsRoot()
if not _vz2 or _vz2.Anchored then return end
_vyz = math.min(_vyz or 0.016, 0.1)
local _vz3 = _v2.Character
if _v4.afWasOn and _v4.afChar ~= _vz3 then _v4.afWasOn = false end
local _vz4 = math.max(_v4.AUTO_FLY_RADIUS or 1000, 100)
if not _v4.afWasOn then
_v4.afWasOn = true
_v4.afChar = _vz3
_v4.afPos = _vz2.Position
_v4.afGroundCache = _v4.afGroundY(_vz2.Position)
local _vz5 = math.random() * math.pi * 2
_v4.afDriftDir = Vector3.new(math.cos(_vz5), 0, math.sin(_vz5))
_v4.afAngle = _vz5
_v4.afCentre = _vz2.Position - Vector3.new(math.cos(_vz5) * _vz4, 0, math.sin(_vz5) * _vz4)
end
_v4.afSpin = _v4.afSpin or 1
local _vz6 = math.min(_v4.AUTO_FLY_SPEED or 25, _v4.mvSideCap())
local _vz7 = _v4.afPos - _v4.afCentre
_v4.afAngle = (math.atan2(_vz7.Z, _vz7.X) + _v4.afSpin * (_vz6 / _vz4) * math.max(_vyz, 0.05) * 2) % (math.pi * 2)
_v4.afProbeT = (_v4.afProbeT or 0) + _vyz
local _vz8 = _v4.afProbeT >= 0.2
if _vz8 then _v4.afProbeT = 0 end
local _vz9 = _v4.afCentre + _v4.afDriftDir * ((_v4.AUTO_FLY_DRIFT or 10) * _vyz)
if (not _vz8) or not (_v4.wallCross and _v4.wallCross(_vz9, _vz9 + _v4.afDriftDir * _vz4)) then
_v4.afCentre = _vz9
else
local _vza = (math.random() - 0.5) * 1.2
local _vzb = -_v4.afDriftDir
_v4.afDriftDir = Vector3.new(
_vzb.X * math.cos(_vza) - _vzb.Z * math.sin(_vza), 0,
_vzb.X * math.sin(_vza) + _vzb.Z * math.cos(_vza))
end
local _vzc = _v4.afCentre + Vector3.new(math.cos(_v4.afAngle) * _vz4, 0, math.sin(_v4.afAngle) * _vz4)
if _vz8 then
local _vzd = Vector3.new(_vzc.X - _v4.afPos.X, 0, _vzc.Z - _v4.afPos.Z)
local _vze = _v4.afGroundY(_v4.afPos)
local _vzf = _vzd.Magnitude > 0.1 and _v4.afGroundY(_v4.afPos + _vzd.Unit * 60) or nil
_v4.afGroundCache = (_vze and _vzf) and math.max(_vze, _vzf) or _vze or _vzf
if _v4.trackWalls then pcall(_v4.trackWalls) end
local _vzg = Vector3.new(_vzc.X, _v4.afPos.Y, _vzc.Z)
if (_v4.wallCross and _v4.wallCross(_v4.afPos, _vzg)) or (_v4.wallNear and _v4.wallNear(_vzg, 150)) then
if os.clock() - (_v4.afTurnT or 0) > 5 then
_v4.afTurnT = os.clock()
_v4.afSpin = -_v4.afSpin
_v4.afDriftDir = Vector3.new((_v4.afCentre - _vzc).X, 0, (_v4.afCentre - _vzc).Z).Unit
end
end
end
local _vzh = _v4.afGroundCache
local _vzi = _vzh and (_vzh + math.min(_v4.AUTO_FLY_ALT or 150, 150)) or _v4.afPos.Y
local _vzj = math.clamp(_vzi - _v4.afPos.Y, -60 * _vyz, 60 * _vyz)
_v4.afPos = _v4.govNext(_v4.afPos, Vector3.new(_vzc.X, _v4.afPos.Y + _vzj, _vzc.Z), _vyz,
(_v4.AUTO_FLY_SPEED or 25) + 60)
if _vzh and _v4.afPos.Y < _vzh + 10 then _v4.afPos = Vector3.new(_v4.afPos.X, _vzh + 10, _v4.afPos.Z) end
if _vz3 then pcall(function() _vz3:SetAttribute(_ei9m[2756], _v4.afPos.Y) end) end
local _vzk = Vector3.new(-math.sin(_v4.afAngle), 0, math.cos(_v4.afAngle)) * (_v4.afSpin or 1)
_v4.afCF = CFrame.lookAt(_v4.afPos, _v4.afPos + _vzk)
pcall(function()
_vz2.CFrame = _v4.afCF
_vz2.AssemblyLinearVelocity = Vector3.zero
_vz2.AssemblyAngularVelocity = Vector3.zero
end)
end
function _v4.afPin()
if _v4.UNLOADED or not _v4.AUTO_FLY or _v4.FLY or not _v4.afCF or _v4.mvHold() then return end
local _vzl = _v4.getLocalPhysicsRoot()
if _vzl and not _vzl.Anchored then
pcall(function()
_vzl.CFrame = _v4.afCF
_vzl.AssemblyLinearVelocity = Vector3.zero
_vzl.AssemblyAngularVelocity = Vector3.zero
end)
end
end
table.insert(_v2l, _v1.RenderStepped:Connect(_v4.afAdvance))
table.insert(_v2l, _v1.Heartbeat:Connect(_v4.afPin))
do
_v4.afkTarget = nil
_v4.afkLastScan = 0
_v4.afkLastBite = 0
_v4.afkWasOn = false
_v4.afkPos = nil
_v4.afkCF = nil
_v4.afkChar = nil
_v4.afkWalking = false
_v4.afkExclude = {}
_v4.afkColliders = nil
_v4.afkCollidersChar = nil
_v4.afkHungry = true
_v4.afkSafetyState = nil
_v4.afkSafetyDest = nil
_v4.afkSafetyReturn = nil
_v4.afkSafetyPlatform = nil
_v4.afkSafetyT = 0
local _vzm = 150
local _vzn = 0.3
local _vzo = 1.5
local _vzp = 5
local _vzq = 2
local _vzr = 0.5
local _vzs = 30
local _vzt = 22
local _vzu = RaycastParams.new()
_vzu.FilterType = Enum.RaycastFilterType.Include
_vzu.FilterDescendantsInstances = { workspace.Terrain }
local function _vzv(_vzw)
local _vzx = workspace:FindFirstChild(_ei9m[686])
local _vzy = _vzx and _vzx:FindFirstChild(_ei9m[2112])
if _vzy ~= _v4.afkMountains then
_v4.afkMountains = _vzy
_vzu.FilterDescendantsInstances = _vzy and { workspace.Terrain, _vzy } or { workspace.Terrain }
end
local _vzz = workspace:Raycast(Vector3.new(_vzw.X, _vzw.Y + 2500, _vzw.Z), Vector3.new(0, -5000, 0), _vzu)
return _vzz and _vzz.Position.Y
end
local function _v100()
local _v101
pcall(function()
local _v102 = _v4.getCS().Alignment
_v101 = (_v102.RideHeight or 0) + (_v102.BodyHeightIncrease or 0)
end)
if type(_v101) ~= _ei9m[2788-6] or _v101 <= 0 then _v101 = 6 end
return _v101
end
local function _v103(_v104, _v105)
if _v104 then pcall(function() _v104:SetAttribute(_ei9m[922+1186], _v105) end) end
end
local function _v106()
if _v4.afkColliders then
for _v107 in pairs(_v4.afkColliders) do
if _v107.Parent then pcall(function() _v107.CanCollide = true end) end
end
end
_v4.afkColliders, _v4.afkCollidersChar = nil, nil
end
local function _v108(_v109)
if not _v109 then return end
if _v4.afkCollidersChar ~= _v109 then
_v106()
local _v10a = {}
for _v10b, _v10c in ipairs(_v109:GetDescendants()) do
if _v10c:IsA(_ei9m[786+517]) and _v10c.CanCollide then _v10a[_v10c] = true end
end
for _v10d, _v10e in ipairs({ _ei9m[1436-20], _ei9m[7+1069] }) do
local _v10f = _v109:FindFirstChild(_v10e)
if _v10f and _v10f:IsA(_ei9m[1268]) then _v10a[_v10f] = true end
end
_v4.afkColliders, _v4.afkCollidersChar = _v10a, _v109
end
for _v10g in pairs(_v4.afkColliders) do
if _v10g.CanCollide then _v10g.CanCollide = false end
end
end
local function _v10h(_v10i, _v10j)
local _v10k = Vector3.new(_v10i.X, 0, _v10i.Z)
if _v10k.Magnitude < 0.1 then return _v10j or Vector3.new(0, 0, 1) end
return _v10k.Unit
end
function _v4.afkLift(_v10l)
local _v10m = _vzv(_v10l)
local _v10n = _v10m and (_v10m + _v100())
if _v10n and _v10l.Y < _v10n then return Vector3.new(_v10l.X, _v10n, _v10l.Z) end
return _v10l
end
local function _v10o(_v10p, _v10q)
local _v10r = _v10q.Position
local _v10s = _v4.afkLift(_v10r)
if _v10s ~= _v10r then
_v10q = CFrame.new(_v10s) * _v10q.Rotation
_v4.afkPos, _v4.afkCF = _v10s, _v10q
end
pcall(function()
_v10p.CFrame = _v10q
_v10p.AssemblyLinearVelocity = Vector3.zero
_v10p.AssemblyAngularVelocity = Vector3.zero
end)
end
_v4.afkGiveUps = _v4.afkGiveUps or {}
function _v4.afkGuard(_v10t, _v10u)
if _v4.wallCross and _v4.wallCross(_v10t, _v10u) then return Vector3.new(_v10t.X, _v10u.Y, _v10t.Z), true end
return _v10u, false
end
local function _v10v(_v10w, _v10x)
local _v10y = _v4.afkTarget
if _v10w and _v10y and _v10y.id then
local _v10z = (_v4.afkGiveUps[_v10y.id] or 0) + 1
_v4.afkGiveUps[_v10y.id] = _v10z
_v10x = _v10x or _vzs
if _v10z >= 2 then _v10x = math.max(_v10x, 1800) end
_v4.afkExclude[_v10y.id] = os.clock() + _v10x
end
_v4.afkTarget = nil
_v4.afkLastScan = 0
_v4.afkStuckPos = nil
end
function _v4.afkDrinkStep(_v110, _v111, _v112, _v113, _v114, _v115)
local _v116, _v117 = _v4.myWater()
local _v118 = (_v116 and _v117 and _v117 > 0) and _v116 / _v117 or 1
local _v119 = _v4.afkDrink
if not _v119 then
if _v118 > (_v4.DRINK_AT or 0.2) or _v114 < (_v4.afkDrinkRetry or 0) then return false end
if _v4.WATER_ANYWHERE and _v118 >= 0.25 then return false end
local _v11a = _v4.drinkSpot
if not _v11a or _v114 - _v11a.t > 20 or (_v11a.from - _v111).Magnitude > 200 then
_v4.drinkFind(_v111, _v4.DRINK_SEARCH or 1500, _v4.AFK_FARM_AVOID or 200)
return false
end
_v4.drinkSpot = nil
if not _v11a.stand then _v4.afkDrinkRetry = _v114 + 45 return false end
_v119 = { stand = _v11a.stand, water = _v11a.water, out = _v11a.out, deadline = _v114 + (_v11a.stand - _v111).Magnitude / _v115 * 2 + 40 }
_v4.afkDrink = _v119
_v4.afkTarget = nil
end
if _v118 >= 0.99 then _v4.afkDrink = nil return false end
local _v11b = _v4.headOverWater()
if _v114 > _v119.deadline and not _v11b then
_v4.drinkBad[_v4.drinkCell(_v119.stand)] = true
_v4.afkDrink, _v4.afkDrinkRetry = nil, _v114 + 5
return false
end
local _v11c = _v100()
if _v11b then
_v119.drinkT = _v119.drinkT or _v114
if not _v119.lastW or _v116 > _v119.lastW + 0.001 then _v119.lastW, _v119.gainT = _v116, _v114 end
if _v114 - math.max(_v119.drinkT, _v119.gainT or 0) > 15 then
_v4.drinkBad[_v4.drinkCell(_v119.stand)] = true
_v4.afkDrink, _v4.afkDrinkRetry = nil, _v114 + 5
return false
end
else
_v119.drinkT = nil
local _v11d = _v119.reached and (_v119.out or _v119.water) or _v119.stand
local _v11e = Vector3.new(_v11d.X - _v4.afkPos.X, 0, _v11d.Z - _v4.afkPos.Z)
if not _v119.reached and _v11e.Magnitude < 4 then _v119.reached = true end
if _v119.reached and _v11e.Magnitude < 2 then
_v4.drinkBad[_v4.drinkCell(_v119.stand)] = true
_v4.afkDrink, _v4.afkDrinkRetry = nil, _v114 + 5
return false
end
local _v11f = math.max(_vzv(_v4.afkPos) or -math.huge, _v119.reached and _v119.water.Y or -math.huge)
local _v11g = (_v11f > -math.huge and _v11f or (_v119.stand.Y)) + _v11c
local _v11h
_v4.afkPos, _v11h = _v4.afkGuard(_v4.afkPos, _v4.govNext(_v4.afkPos, Vector3.new(_v11d.X, _v11g, _v11d.Z), _v113,
_v119.reached and 8 or nil))
if _v11h then
_v4.afkDrink, _v4.afkDrinkRetry = nil, _v114 + 30
return false
end
_v4.afkCF = CFrame.lookAt(_v4.afkPos, _v4.afkPos + _v10h((_v119.reached and _v119.out or _v119.water) - _v4.afkPos, _v4.afkCF and _v4.afkCF.LookVector))
end
_v10o(_v110, _v4.afkCF)
_v103(_v112, _v4.afkPos.Y)
return true
end
function _v4.afkStartWalk()
if _v4.afkWalking then return end
_v4.afkWalking = true
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.W, false, game) end)
end
function _v4.afkStopWalk()
if not _v4.afkWalking then return end
_v4.afkWalking = false
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.W, false, game) end)
end
local function _v11i()
_v4.afkWasOn = false
_v4.afkCF, _v4.afkPos, _v4.afkTarget, _v4.afkDrink = nil, nil, nil, nil
_v4.afkStopWalk()
if _v4.afkSafetyState then
if _v4.afkSafetyState == _ei9m[2091] then
_v4.pressRest()
end
if _v4.afkSafetyPlatform then pcall(function() _v4.afkSafetyPlatform:Destroy() end); _v4.afkSafetyPlatform = nil end
local _v11j = _v4.getLocalPhysicsRoot()
if _v11j then pcall(function() _v11j.Anchored = false end) end
_v4.afkSafetyState = nil
end
_v106()
local _v11k = _v2.Character
if _v11k then pcall(function() _v11k:SetAttribute(_ei9m[3+1552], nil) end) end
_v4.flyLandUntil = os.clock() + 10
end
function _v4.afkFarmAdvance(_v11l)
if _v4.UNLOADED then return end
if not _v4.AFK_FARM or _v4.FLY or _v4.AUTO_FLY or _v4.SAVE_DINO_ACTIVE or _v4.AS_BUSY or _v4.CLEAN_BREAK then
if _v4.afkWasOn then _v11i() end
return
end
local _v11m = _v4.getLocalPhysicsRoot()
if not _v11m then return end
if _v11m.Anchored and not _v4.afkSafetyState then return end
_v11l = math.min(_v11l or 0.016, 0.1)
local _v11n = _v2.Character
if _v4.afkWasOn and _v4.afkChar ~= _v11n then _v4.afkWasOn = false end
if not _v4.afkWasOn then
_v4.afkWasOn = true
_v4.afkChar = _v11n
_v4.afkPos = _v11m.Position
_v4.afkCF = CFrame.lookAt(_v11m.Position, _v11m.Position + _v10h(_v11m.CFrame.LookVector))
_v4.afkTarget = nil
_v4.afkLastScan = 0
if _v4.trackWalls then pcall(_v4.trackWalls) end
end
if (_v11m.Position - _v4.afkPos).Magnitude > 50 then
_v4.afkPos = _v11m.Position
end
_v108(_v11n)
if _v4.afkSafetyState or (_v4.afkDrink and _v4.afkDrink.drinkT) then
_v4.afkStopWalk()
elseif _v4.AFK_FARM_WALK then _v4.afkStartWalk() else _v4.afkStopWalk() end
local _v11o = os.clock()
local _v11p = _v11m.Position
local _v11q = math.max(_v4.mvSideCap(), 2)
if _v4.AFK_FARM_SAFETY then
local _v11r, _v11s
pcall(function() _v11r = _v11n:GetAttribute(_ei9m[2541-8]); _v11s = _v11n:GetAttribute(_ei9m[3+1706]) end)
if type(_v11r) == _ei9m[3+1439] and type(_v11s) == _ei9m[1006+119] and _v11s > 0 then
local _v11t = _v11r / _v11s
local _v11u = _v4.tookDamage(_v11n, _v11r)
if not _v4.afkSafetyState and (_v11t < 0.5 or (_v11u and _v11t < 0.99)) then
pcall(function()
if _v4.Hub then _v4.Hub:Notify((_ei9m[1631]):format(math.floor(_v11t * 100)), 8) end
end)
_v4.afkSafetyState = _ei9m[1057-2]
_v4.afkSafetyReturn = _v11p
local _v11v = _vzv(_v11p) or _v11p.Y
local _v11w = math.max(_v11v + _v100(), _v11p.Y) + _vzm
_v4.afkSafetyDest = Vector3.new(_v11p.X, _v11w, _v11p.Z)
_v4.afkTarget = nil
end
if _v4.afkSafetyState == _ei9m[1874] and _v11t >= 0.99 then
_v4.afkSafetyState = _ei9m[2+751]
_v4.afkSafetyT = _v11o
_v4.pressRest()
if _v4.afkSafetyPlatform then pcall(function() _v4.afkSafetyPlatform:Destroy() end); _v4.afkSafetyPlatform = nil end
pcall(function() _v11m.Anchored = false end)
end
end
elseif _v4.afkSafetyState then
if _v4.afkSafetyState == _ei9m[717+1823] then
_v4.pressRest()
end
if _v4.afkSafetyPlatform then pcall(function() _v4.afkSafetyPlatform:Destroy() end); _v4.afkSafetyPlatform = nil end
pcall(function() _v11m.Anchored = false end)
_v4.afkSafetyState = nil
end
if _v4.afkSafetyState then
if _v4.afkSafetyState == _ei9m[512+548] then
_v4.afkPos = _v4.govNext(_v4.afkPos, _v4.afkSafetyDest, _v11l)
_v4.afkCF = CFrame.new(_v4.afkPos) * _v4.afkCF.Rotation
_v10o(_v11m, _v4.afkCF)
_v103(_v11n, _v4.afkPos.Y)
if (_v4.afkPos - _v4.afkSafetyDest).Magnitude < 5 then
_v4.afkSafetyState = _ei9m[2477-18]
_v4.afkSafetyT = _v11o
pcall(function()
local _v11x = Instance.new(_ei9m[32-11])
_v11x.Size = Vector3.new(80, 4, 80)
_v11x.Position = _v4.afkPos - Vector3.new(0, 6, 0)
_v11x.Anchored = true
_v11x.Transparency = 1
_v11x.CanCollide = true
_v11x.CanQuery = false
_v11x.Parent = workspace
_v4.afkSafetyPlatform = _v11x
end)
end
elseif _v4.afkSafetyState == _ei9m[457+2596] then
_v10o(_v11m, _v4.afkCF)
if _v11o - _v4.afkSafetyT >= _vzn then
pcall(function() _v11m.Anchored = true end)
pcall(function() _v11n:SetAttribute(_ei9m[1042], nil) end)
_v4.pressRest()
_v4.afkSafetyState = _ei9m[7+1909]
_v4.afkSafetyT = _v11o
end
elseif _v4.afkSafetyState == _ei9m[1035] then
_v10o(_v11m, _v4.afkCF)
elseif _v4.afkSafetyState == _ei9m[1310] then
local _v11y = _v4.afkSafetyReturn
or Vector3.new(_v4.afkPos.X, (_vzv(_v4.afkPos) or (_v4.afkPos.Y - _vzm)) + _v100(), _v4.afkPos.Z)
_v4.afkPos = _v4.govNext(_v4.afkPos, _v11y, _v11l)
_v4.afkCF = CFrame.new(_v4.afkPos) * _v4.afkCF.Rotation
_v10o(_v11m, _v4.afkCF)
_v103(_v11n, _v4.afkPos.Y)
if (_v4.afkPos - _v11y).Magnitude < 10 then
_v4.afkSafetyState = nil
_v4.afkSafetyReturn = nil
_v4.afkTarget = nil
_v4.afkLastScan = 0
end
end
return
end
if _v4.AFK_FARM_FLEE then
local _v11z = _v4.AFK_FARM_AVOID or 200
local _v120, _v121
if _v11z > 0 then
for _v122, _v123 in ipairs(game.Players:GetPlayers()) do
if _v123 ~= _v2 and _v123.Character then
local _v124 = _v4.getRootOf(_v123.Character, false)
if _v124 then
local _v125 = (_v124.Position - _v11p).Magnitude
if not _v121 or _v125 < _v121 then _v120, _v121 = _v124.Position, _v125 end
end
end
end
end
if _v120 and (_v121 <= _v11z or (_v4.afkFleeing and _v121 <= _v11z * 1.5)) then
_v4.afkFleeing = true
_v4.afkTarget = nil
local _v126 = _v10h(_v11p - _v120, _v10h(_v4.afkCF and _v4.afkCF.LookVector))
if _v4.wallCross and _v4.wallCross(_v11p, _v11p + _v126 * 120) then
local _v127, _v128 = Vector3.new(-_v126.Z, 0, _v126.X), Vector3.new(_v126.Z, 0, -_v126.X)
_v126 = (not _v4.wallCross(_v11p, _v11p + _v127 * 120) and _v127)
or (not _v4.wallCross(_v11p, _v11p + _v128 * 120) and _v128) or -_v126
end
local _v129 = math.max(_v4.afkPos.Y, math.max(_vzv(_v11p) or _v11p.Y,
_vzv(_v11p + _v126 * 40) or -math.huge) + _v100())
local _v12a = Vector3.new(_v11p.X + _v126.X * 300, _v129, _v11p.Z + _v126.Z * 300)
_v4.afkPos = _v4.afkGuard(_v4.afkPos, _v4.govNext(_v4.afkPos, _v12a, _v11l))
_v4.afkCF = CFrame.lookAt(_v4.afkPos, _v4.afkPos + _v126)
_v10o(_v11m, _v4.afkCF)
_v103(_v11n, _v4.afkPos.Y)
return
end
_v4.afkFleeing = false
end
if _v4.afkDrinkStep(_v11m, _v11p, _v11n, _v11l, _v11o, _v11q) then return end
if not _v4.afkTarget and _v4.afkPickFood and _v11o - _v4.afkLastScan >= _vzo then
_v4.afkLastScan = _v11o
for _v12b, _v12c in pairs(_v4.afkExclude) do
if _v12c <= _v11o then _v4.afkExclude[_v12b] = nil end
end
local id, idx, pos, isMeat = _v4.afkPickFood(_v11p, _v4.afkExclude, {
avoid = _v4.AFK_FARM_AVOID or 200, meat = _v4.dinoEatsMeat(),
reach = function(_v12d) local _v12e = _vzv(_v12d) return not _v12e or _v12e - _v12d.Y <= 25 end,
})
if id and pos then
_v4.afkTarget = { id = id, idx = idx, pos = pos, isMeat = isMeat, groundY = _vzv(pos), misses = 0,
deadline = _v11o + (pos - _v11p).Magnitude / _v11q * 2 + 10 }
end
end
local _v12f = _v4.afkTarget
if not _v12f then
_v4.afkStuckPos = nil
_v103(_v11n, _v4.afkPos.Y)
return
end
local _v12g = _vzt
pcall(function() if _v4.khRange then _v12g = _v4.khRange() end end)
local _v12h = _v100()
local _v12i = _v12f.creep and _v12f.pos.Y or (_v12f.pos.Y - _v12g * _vzr)
local _v12j = math.max(_v12i, (_v12f.groundY or -math.huge) + _v12h)
local _v12k = Vector3.new(_v12f.pos.X, _v12j, _v12f.pos.Z)
if not _v12f.holding and not _v12f.creep and (_v12f.pos - _v4.afkPos).Magnitude <= _v12g * _vzr then
_v12f.holding = true
end
if not _v12f.holding then
local _v12l = _v4.afkPos + _v10h(_v12k - _v4.afkPos, _v10h(_v4.afkCF.LookVector)) * 40
local _v12m = math.max(_vzv(_v4.afkPos) or -math.huge, _vzv(_v12l) or -math.huge) + _v12h
local _v12n
_v4.afkPos, _v12n = _v4.afkGuard(_v4.afkPos, _v4.govNext(_v4.afkPos, Vector3.new(_v12k.X, math.max(_v12k.Y, _v12m), _v12k.Z), _v11l))
if _v12n then _v10v(true) return end
if _v4.AFK_FARM_UNSTUCK and (_v12f.pos - _v11p).Magnitude > _v12g then
if not _v4.afkStuckPos or (_v11p - _v4.afkStuckPos).Magnitude > 4 then
_v4.afkStuckPos, _v4.afkStuckT = _v11p, _v11o
elseif _v11o - (_v4.afkStuckT or _v11o) > 2.5 then
_v4.afkStuckPos, _v4.afkStuckT = nil, nil
local _v12o = math.random() * math.pi * 2
_v4.afkPos = _v4.afkGuard(_v11p, _v11p + Vector3.new(math.cos(_v12o) * 30, 45, math.sin(_v12o) * 30))
_v4.afkCF = CFrame.lookAt(_v4.afkPos, _v4.afkPos + Vector3.new(math.cos(_v12o), 0, math.sin(_v12o)))
_v10o(_v11m, _v4.afkCF)
_v103(_v11n, _v4.afkPos.Y)
_v10v(true)
return
end
end
else
_v4.afkStuckPos = nil
if (_v12k - _v4.afkPos).Magnitude > _v12g * _vzr + 4 then
_v4.afkPos = _v4.govNext(_v4.afkPos, _v12k, _v11l)
elseif _v4.AFK_FARM_WALK then
_v12f.orbit = (_v12f.orbit or 0) + _v11l * 2.5
local _v12p = math.min(3, _v12g * 0.2)
_v4.afkPos = _v4.govNext(_v4.afkPos, Vector3.new(_v12k.X + math.cos(_v12f.orbit) * _v12p, _v12k.Y, _v12k.Z + math.sin(_v12f.orbit) * _v12p), _v11l)
else
_v4.afkPos = _v4.govNext(_v4.afkPos, _v12k, _v11l)
end
end
local _v12q = (_v12k - _v4.afkPos).Magnitude < 3
if _v12f.creep and _v12q and not _v12f.holding then
_v12f.holding = true
_v12f.misses = 0
end
local _v12r = _v10h(_v4.afkCF and _v4.afkCF.LookVector or Vector3.new(0, 0, 1))
_v4.afkCF = CFrame.lookAt(_v4.afkPos, _v4.afkPos + _v10h(_v12f.pos - _v4.afkPos, _v12r))
_v10o(_v11m, _v4.afkCF)
_v103(_v11n, _v4.afkPos.Y)
if not _v12f.holding and not _v12q and _v11o > _v12f.deadline then
_v10v(true)
return
end
if (_v12f.pos - _v11p).Magnitude <= _v12g and _v11o - _v4.afkLastBite >= 1 / math.clamp(_v4.FAST_EAT_RATE or 1.25, 0.2, 1.25) then
_v4.afkLastBite = _v11o
local _v12s, _v12t = _v4.myFood()
if _v12s and _v12t and _v12t > 0 then
if _v4.afkHungry then
if _v12s >= _v12t - _v4.foodGap(_v12t, 0.05) then _v4.afkHungry = false end
elseif _v12s <= _v12t - _v4.foodGap(_v12t, 1) then
_v4.afkHungry = true
end
end
local _v12u = _v4.afkHungry and _v4.afkConsumeId and _v4.afkConsumeId()
if _v12u and _vkl then
local _v12v, _v12w, _v12x = _v4.afkBufCheck(_v12f.id, _v12f.idx)
if _v12f.isMeat and _v12v == nil then _v10v(true) return end
if _v12v ~= nil and (not _v12x or _v12v + (_v12w or 0) <= 0) then
_v10v(false)
return
end
if _v12v ~= nil and _v4.LEAVE_SCRAPS and not _v12f.isMeat and _v4.isScraps(_v12v) then
_v4.afkExclude[_v12f.id] = os.clock() + 300
_v10v(false)
return
end
if _v12f.bitten then
if _v12v and _v12f.lastFood and _v12v < _v12f.lastFood then
_v4.noteBiteDrop(_v12f.lastFood - _v12v)
_v12f.misses = 0
_v12f.lastEat = _v11o
else
_v12f.misses = _v12f.misses + 1
end
end
_v12f.lastFood = _v12v
_v12f.bitten = true
local _v12y = buffer.create(5)
buffer.writeu32(_v12y, 0, math.floor(_v12f.id))
buffer.writeu8(_v12y, 4, _v12f.idx or 1)
_vkl:FireServer(_v12u, _ei9m[387], _v12y)
end
end
if not _v12f.creep and _v12f.misses >= _vzq then
_v12f.creep, _v12f.holding = true, false
_v12f.deadline = _v11o + (_v12f.pos - _v4.afkPos).Magnitude / _v11q * 2 + 10
elseif _v12f.creep and _v12f.holding and _v12f.misses >= _vzp then
_v10v(true)
return
end
if (_v12f.pos - _v11p).Magnitude <= _v12g and _v4.afkHungry then
if _v4.foodNoGain(_v12f, _v11o) then _v10v(true, _v4.NO_GAIN_SKIP) return end
else
_v12f.gainT = nil
end
if _v4.AFK_FARM_UNSTUCK and _v12f.holding then
local _v12z, _v130 = _v4.myFood()
if _v12z and _v130 and _v130 > 0 and _v12z < _v130 - _v4.foodGap(_v130, 1) then
_v12f.hungrySince = _v12f.hungrySince or _v11o
if _v11o - math.max(_v12f.lastEat or 0, _v12f.hungrySince) > (_v4.UNSTUCK_EAT_SECS or 25) then
_v10v(true)
end
else
_v12f.hungrySince = nil
end
end
end
function _v4.afkFarmPin()
if _v4.UNLOADED or not _v4.AFK_FARM or _v4.FLY or _v4.AUTO_FLY or _v4.AS_BUSY or _v4.CLEAN_BREAK or not _v4.afkCF or _v4.mvHold() then return end
if _v4.afkSafetyState == _ei9m[5+2188] then return end
local _v131 = _v4.getLocalPhysicsRoot()
if _v131 and not _v131.Anchored then _v10o(_v131, _v4.afkCF) end
local _v132 = _v2.Character
_v103(_v132, _v4.afkCF.Position.Y)
_v108(_v132)
end
table.insert(_v2l, _v1.RenderStepped:Connect(_v4.afkFarmAdvance))
table.insert(_v2l, _v1.Heartbeat:Connect(_v4.afkFarmPin))
end
function _v4.lfSetup()
local _v133 = 0.7
local _v134 = 0.85
local _v135 = 1.5
local _v136 = 45
local _v137 = 1800
local _v138 = 8
local _v139, _v13a = 3, 5
local _v13b, _v13c = 4, 3
local _v13d, _v13e, _v13f = 60, 60, nil
local _v13g, _v13h = 30, 45
local _v13i, _v13j = 0.2, 0.6
local _v13k = math.rad(150)
local _v13l = 30
local _v13m, _v13n = 80, nil
local _v13o, _v13p = 150, 90
local _v13q = { ALT = 60, MIN_SAFE = 400, MAX_DIST = 2000, MAX_TIME = 120 }
_v4.lfEsc = { starts = {}, revs = {} }
_v4.lfExclude = {}
_v4.lfGiveUps = {}
_v4.lfHeld = {}
_v4.lfBarriers = {}
_v4.lfBiteN = 0
_v4.lfStatus = _ei9m[2113]
local _v13r, _v13s
local function _v13t()
if not _v13s then
_v13s = true
pcall(function() _v13r = _v4.req(_v4.WATER_RS.Common.RayParams).AlignmentParams end)
if not _v13r then
_v13r = RaycastParams.new()
_v13r.FilterType = Enum.RaycastFilterType.Include
local _v13u = { workspace.Terrain }
local _v13v = workspace:FindFirstChild(_ei9m[103-17])
local _v13w = _v13v and _v13v:FindFirstChild(_ei9m[1210-19])
if _v13w then _v13u[2] = _v13w end
_v13r.FilterDescendantsInstances = _v13u
_v13r.IgnoreWater = true
end
end
return _v13r
end
local function _v13x(_v13y, _v13z, _v140)
local _v141 = workspace:Raycast(Vector3.new(_v13y, _v13z, _v140), Vector3.new(0, -500, 0), _v13t())
return _v141 and _v141.Position.Y
end
local function _v142()
local _v143
pcall(function()
local _v144 = _v4.getCS().Alignment
_v143 = (_v144.RideHeight or 0) + (_v144.BodyHeightIncrease or 0)
end)
if type(_v143) ~= _ei9m[5+40] or _v143 <= 0 then _v143 = 6 end
return _v143
end
local function _v145()
local _v146
pcall(function() _v146 = _v4.getCS().Instances.Mesh end)
return _v146
end
local function _v147(_v148, _v149)
local _v14a = Vector3.new(_v148.X, 0, _v148.Z)
if _v14a.Magnitude < 0.1 then return _v149 end
return _v14a.Unit
end
local function _v14b(_v14c, _v14d)
if _v14c then pcall(function() _v14c:SetAttribute(_ei9m[446+1459], _v14d) end) end
end
local function _v14e(_v14f, _v14g)
pcall(function()
_v14f.CFrame = _v14g
_v14f.AssemblyLinearVelocity = Vector3.zero
_v14f.AssemblyAngularVelocity = Vector3.zero
end)
end
local function _v14h()
_v4.pressRest()
end
local function _v14i(_v14j, _v14k)
local _v14l = _v4.getCS()
local _v14m = (_v14l and _v14l.Actions and _v14l.Actions[_v14j]) == true
if _v14m == _v14k then return end
if _v14j == _ei9m[979-5] and not _v14k and _v4.mvWantsRun and _v4.mvWantsRun() then _v4.lfHeld.Run = nil return end
local _v14n = _v14l and _v14l.Controls and pcall(function() _v14l.Controls:HandleAction(_v14j, _v14k) end)
if not _v14n and _v14j == _ei9m[30+1106] then
pcall(function() _v4.VIM:SendKeyEvent(_v14k, Enum.KeyCode.W, false, game) end)
_v4.lfVimW = _v14k or nil
end
_v4.lfHeld[_v14j] = _v14k or nil
end
local function _v14o()
for _v14p in pairs(_v4.lfHeld) do
pcall(function() _v4.getCS().Controls:HandleAction(_v14p, false) end)
end
_v4.lfHeld = {}
if _v4.lfVimW then
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.W, false, game) end)
_v4.lfVimW = nil
end
end
local _v14q = 6
local function _v14r(_v14s, _v14t)
if not _v4.lfCircleDir then _v4.lfCircleDir = (math.random() < 0.5) and 1 or -1 end
local _v14u = Vector3.new(_v14t.X - _v14s.X, 0, _v14t.Z - _v14s.Z)
local _v14v = _v14u.Magnitude
local _v14w = (_v14v > 0.5) and (_v14u / _v14v) or Vector3.new(1, 0, 0)
local _v14x = Vector3.new(-_v14w.Z * _v4.lfCircleDir, 0, _v14w.X * _v4.lfCircleDir)
local _v14y = math.clamp((_v14v - _v14q) / _v14q, -1, 1)
_v4.lfHeading = _v147(_v14x - _v14w * _v14y, _v4.lfHeading or _v14x)
_v14i(_ei9m[45+1963], false)
_v14i(_ei9m[6+2596], false)
_v14i(_ei9m[527-4], true)
end
local function _v14z()
if _v4.lfColliders then
for _v150 in pairs(_v4.lfColliders) do
if _v150.Parent then pcall(function() _v150.CanCollide = true end) end
end
end
_v4.lfColliders, _v4.lfCollidersChar = nil, nil
end
local function _v151(_v152)
if _v4.lfCollidersChar ~= _v152 then
_v14z()
local _v153 = {}
for _v154, _v155 in ipairs(_v152:GetDescendants()) do
if _v155:IsA(_ei9m[163+58]) and _v155.CanCollide then _v153[_v155] = true end
end
for _v156, _v157 in ipairs({ _ei9m[7+1329], _ei9m[513] }) do
local _v158 = _v152:FindFirstChild(_v157)
if _v158 and _v158:IsA(_ei9m[5+2835]) then _v153[_v158] = true end
end
_v4.lfColliders, _v4.lfCollidersChar = _v153, _v152
end
for _v159 in pairs(_v4.lfColliders) do
if _v159.Parent and _v159.CanCollide then _v159.CanCollide = false end
end
end
_v4.lfWallKeys = _v4.lfWallKeys or {}
function _v4.wallAdd(_v15a, _v15b, _v15c)
local _v15d = math.floor(_v15a.X + 0.5) .. ":" .. math.floor(_v15a.Y + 0.5) .. ":" .. math.floor(_v15a.Z + 0.5)
.. ":" .. math.floor(_v15b.X + 0.5) .. ":" .. math.floor(_v15b.Z + 0.5)
if _v4.lfWallKeys[_v15d] then return end
_v4.lfWallKeys[_v15d] = true
_v4.lfBarriers[{ CFrame = _v15a, Size = _v15b, Parent = true, Radius = (_v15b * 0.5).Magnitude, Saved = _v15c }] = true
if _v15c and not _v4.wallsSavePending then
_v4.wallsSavePending = true
task.delay(10, function() _v4.wallsSavePending = nil pcall(_v4.wallsSave) end)
end
end
function _v4.wallsFile()
local _v15e
pcall(function() _v15e = _v4.req(_v4.WATER_RS.Packages.Knit).Ecosystem end)
if type(_v15e) ~= _ei9m[2570] or _v15e == "" then return nil end
return _ei9m[150-15] .. _v15e:gsub(_ei9m[1077+493], "_") .. _ei9m[916]
end
function _v4.wallsSave()
local _v15f = _v4.wallsFile()
if not _v15f or _v4.UNLOADED then return end
local _v15g = {}
for _v15h in pairs(_v4.lfBarriers) do
if _v15h.Saved then
local _v15i = { _v15h.CFrame:GetComponents() }
_v15i[13], _v15i[14], _v15i[15] = _v15h.Size.X, _v15h.Size.Y, _v15h.Size.Z
for _v15j = 1, 15 do _v15i[_v15j] = math.floor(_v15i[_v15j] * 1000 + 0.5) / 1000 end
_v15g[#_v15g + 1] = _v15i
end
end
if not isfolder(_ei9m[1067-1]) then makefolder(_ei9m[1868]) end
writefile(_v15f, game:GetService(_ei9m[1885-16]):JSONEncode({ v = 1, walls = _v15g }))
end
function _v4.wallsLoad()
local _v15k = _v4.wallsFile()
local _v15l, _v15m = pcall(function() return game:GetService(_ei9m[980-9]):JSONDecode(readfile(_v15k)) end)
if not (_v15l and type(_v15m) == _ei9m[2028-14] and type(_v15m.walls) == _ei9m[6+887]) then return end
for _v15n, _v15o in ipairs(_v15m.walls) do
if type(_v15o) == _ei9m[1189-3] and #_v15o == 15 then
pcall(function()
_v4.wallAdd(CFrame.new(table.unpack(_v15o, 1, 12)), Vector3.new(_v15o[13], _v15o[14], _v15o[15]), false)
end)
end
end
for _v15p in pairs(_v4.lfBarriers) do if _v15p.Saved == false then _v15p.Saved = true end end
end
function _v4.wallsRect()
local _v15q
pcall(function()
local _v15r = _v4.req(_v4.WATER_RS.Packages.Knit).Ecosystem
_v15q = _v4.req(_v4.WATER_RS.Shared.MapData).MapEcosystemData[_v15r]
end)
if not (_v15q and typeof(_v15q.MapSize) == _ei9m[1512] and typeof(_v15q.MapCenter) == _ei9m[1273-9]) then return end
local _v15s, _v15t, _v15u = _v15q.MapCenter, _v15q.MapSize.X / 2, _v15q.MapSize.Y / 2
local function _v15v(_v15w) return math.abs(_v15w.X - _v15s.X) <= _v15t and math.abs(_v15w.Z - _v15s.Y) <= _v15u end
local _v15x, _v15y = 0, 0
pcall(function()
for _v15z, _v160 in ipairs(workspace.UnstuckPoints:GetChildren()) do
if _v160:IsA(_ei9m[322-17]) then
_v15x = _v15x + 1
if _v15v(_v160.Value.Position) then _v15y = _v15y + 1 end
end
end
end)
local _v161 = _v4.getLocalPhysicsRoot()
if (_v161 and not _v15v(_v161.Position)) or (_v15x > 0 and _v15y < _v15x * 0.95) then
_v4.wallsRectNote = _ei9m[1027-18] .. _v15y .. "/" .. _v15x .. _ei9m[1548-14]
return
end
local _v162, _v163, _v164 = 50, 20, 200000
_v4.wallAdd(CFrame.new(_v15s.X + _v15t - _v162 + _v163 / 2, 0, _v15s.Y), Vector3.new(_v163, _v164, 2 * _v15u + 2 * _v163), nil)
_v4.wallAdd(CFrame.new(_v15s.X - _v15t + _v162 - _v163 / 2, 0, _v15s.Y), Vector3.new(_v163, _v164, 2 * _v15u + 2 * _v163), nil)
_v4.wallAdd(CFrame.new(_v15s.X, 0, _v15s.Y + _v15u - _v162 + _v163 / 2), Vector3.new(2 * _v15t + 2 * _v163, _v164, _v163), nil)
_v4.wallAdd(CFrame.new(_v15s.X, 0, _v15s.Y - _v15u + _v162 - _v163 / 2), Vector3.new(2 * _v15t + 2 * _v163, _v164, _v163), nil)
_v4.wallsRectNote = _ei9m[721-1] .. _v15y .. "/" .. _v15x .. _ei9m[89-9]
end
local function _v165(_v166)
local _v167 = workspace:FindFirstChild(_ei9m[28+1640])
local _v168 = _v166.Parent
while _v168 and _v168 ~= _v167 and _v168 ~= workspace do
if _v168.Name == _ei9m[7+237] then return true end
_v168 = _v168.Parent
end
return false
end
local function _v169()
if _v4.lfBarriersTracked then return end
local _v16a = workspace:FindFirstChild(_ei9m[4+348])
if not _v16a then return end
_v4.lfBarriersTracked = true
pcall(_v4.wallsLoad)
pcall(_v4.wallsRect)
local function _v16b(_v16c)
if _v16c:IsA(_ei9m[2+2723]) and _v165(_v16c) then _v4.wallAdd(_v16c.CFrame, _v16c.Size, true) end
end
for _v16d, _v16e in ipairs(_v16a:GetChildren()) do
local _v16f = (_v16e.Name == _ei9m[1359-19]) and _v16e or _v16e:FindFirstChild(_ei9m[1367-5])
if _v16f then
for _v16d, _v16h in ipairs(_v16f:GetDescendants()) do _v16b(_v16h) end
end
end
table.insert(_v2l, _v16a.DescendantAdded:Connect(function(_v16i)
if not _v4.UNLOADED then _v16b(_v16i) end
end))
end
local function _v16j(_v16k, _v16l)
for _v16m in pairs(_v4.lfBarriers) do
if _v16m.Radius and (_v16m.CFrame.Position - _v16k).Magnitude > _v16m.Radius + _v16l then
elseif _v16m.Parent then
local _v16n = _v16m.CFrame:PointToObjectSpace(_v16k)
local _v16o = _v16m.Size * 0.5
local _v16p = Vector3.new(math.max(math.abs(_v16n.X) - _v16o.X, 0), math.max(math.abs(_v16n.Y) - _v16o.Y, 0),
math.max(math.abs(_v16n.Z) - _v16o.Z, 0))
if _v16p.Magnitude < _v16l then return true end
else
_v4.lfBarriers[_v16m] = nil
end
end
return false
end
local function _v16q(_v16r, _v16s)
if next(_v4.lfBarriers) == nil then return true end
local _v16t = _v16s - _v16r
local _v16u = math.clamp(math.ceil(_v16t.Magnitude / 25), 1, 80)
for _v16v = 0, _v16u do
if _v16j(_v16r + _v16t * (_v16v / _v16u), _v13l) then return false end
end
return true
end
local function _v16w(_v16x, _v16y)
local _v16z = _v16y - _v16x
local _v170 = _v16z:Dot(_v16z)
for _v171 in pairs(_v4.lfBarriers) do
local _v172 = true
if _v171.Radius then
local _v173 = _v171.CFrame.Position
local _v174 = (_v170 > 1e-6) and math.clamp((_v173 - _v16x):Dot(_v16z) / _v170, 0, 1) or 0
_v172 = (_v16x + _v16z * _v174 - _v173).Magnitude <= _v171.Radius + 4
end
if _v172 and _v171.Parent then
local _v175, _v176 = _v171.CFrame:PointToObjectSpace(_v16x), _v171.CFrame:PointToObjectSpace(_v16y)
local _v177 = _v171.Size * 0.5 + Vector3.new(2, 2, 2)
local _v178, _v179, _v17a = 0, 1, true
for _v17b, _v17c in ipairs({ "X", "Y", "Z" }) do
local _v17d, _v17e, _v17f = _v175[_v17c], _v176[_v17c] - _v175[_v17c], _v177[_v17c]
if math.abs(_v17e) < 1e-6 then
if math.abs(_v17d) > _v17f then _v17a = false break end
else
local _v17g, _v17h = (-_v17f - _v17d) / _v17e, (_v17f - _v17d) / _v17e
if _v17g > _v17h then _v17g, _v17h = _v17h, _v17g end
_v178, _v179 = math.max(_v178, _v17g), math.min(_v179, _v17h)
if _v178 > _v179 then _v17a = false break end
end
end
if _v17a then return true end
end
end
return false
end
_v4.trackWalls, _v4.wallCross, _v4.wallNear = _v169, _v16w, _v16j
local function _v17i(_v17j)
local _v17k = {}
for _v17l, _v17m in ipairs(game:GetService(_ei9m[1124-9]):GetTagged(_ei9m[148])) do
local _v17n, _v17o = pcall(_v4.foodSpot, _v17m)
if _v17n and _v17o then _v17k[#_v17k + 1] = { d = (_v17o - _v17j).Magnitude, p = _v17o } end
end
table.sort(_v17k, function(_v17p, _v17q) return _v17p.d < _v17q.d end)
local _v17r, _v17s = math.min(#_v17k, 15), 0
for _v17t = 1, _v17r do
if _v16w(_v17j, _v17k[_v17t].p) then _v17s = _v17s + 1 end
end
return _v17r > 0 and _v17s > _v17r / 2
end
local _v17u
local function _v17v(_v17w, _v17x, _v17y)
if not _v17u then
_v17u = RaycastParams.new()
_v17u.FilterType = Enum.RaycastFilterType.Include
local _v17z = { workspace.Terrain }
local _v180 = workspace:FindFirstChild(_ei9m[35+670])
local _v181 = _v180 and _v180:FindFirstChild(_ei9m[1260])
if _v181 then _v17z[2] = _v181 end
_v17u.FilterDescendantsInstances = _v17z
_v17u.IgnoreWater = true
end
local _v182 = workspace:Raycast(Vector3.new(_v17w, _v17y, _v17x), Vector3.new(0, -2500, 0), _v17u)
return _v182 and _v182.Position.Y
end
local _v183
local function _v184(_v185, _v186, _v187)
if not _v183 then
_v183 = RaycastParams.new()
_v183.FilterType = Enum.RaycastFilterType.Include
local _v188 = { workspace.Terrain }
local _v189 = workspace:FindFirstChild(_ei9m[3+1894])
local _v18a = _v189 and _v189:FindFirstChild(_ei9m[2851])
if _v18a then _v188[2] = _v18a end
_v183.FilterDescendantsInstances = _v188
_v183.IgnoreWater = false
end
local _v18b = workspace:Raycast(Vector3.new(_v185, _v187, _v186), Vector3.new(0, -2500, 0), _v183)
if _v18b and _v18b.Material == Enum.Material.Water then return _v18b.Position.Y end
return nil
end
local function _v18c(_v18d, _v18e)
local _v18f = _v18d.Y + 1500
if not _v184(_v18d.X, _v18d.Z, _v18f) then return nil end
_v18e = _v18e or Vector3.new(1, 0, 0)
local _v18g = math.atan2(_v18e.Z, _v18e.X)
local _v18h = { 0, 1, -1, 2, -2, 3, -3, 4, -4, 5, -5, 6, -6, 7, -7, 8 }
for _v18i = 20, 400, 20 do
for _v18j, _v18k in ipairs(_v18h) do
local _v18l = _v18g + _v18k * math.pi / 8
local _v18m, _v18n = _v18d.X + math.cos(_v18l) * _v18i, _v18d.Z + math.sin(_v18l) * _v18i
if not _v184(_v18m, _v18n, _v18f) and _v17v(_v18m, _v18n, _v18f)
and not _v16w(_v18d, Vector3.new(_v18m, _v18d.Y, _v18n)) then
return Vector3.new(_v18m, _v18d.Y, _v18n)
end
end
end
return nil
end
local _v18o = 3
local _v18p = { { 15, 8 }, { 30, 8 }, { 45, 12 } }
local function _v18q(_v18r, _v18s, _v18t)
local _v18u = _v184(_v18r, _v18s, _v18t)
if not _v18u then return false end
local _v18v = _v17v(_v18r, _v18s, _v18t)
return not _v18v or _v18u - _v18v >= _v18o
end
local _v18w, _v18x = {}, 0
local function _v18y(_v18z)
local _v190 = math.floor(_v18z.X / 8) .. ":" .. math.floor(_v18z.Z / 8)
local _v191 = _v18w[_v190]
if _v191 == true or (_v191 and os.clock() < _v191) then return _v191 == true end
if _v191 == nil then
_v18x = _v18x + 1
if _v18x > 20000 then
local _v192, _v193 = os.clock(), 0
for _v194, _v195 in pairs(_v18w) do
if _v195 ~= true and _v192 >= _v195 then _v18w[_v194] = nil else _v193 = _v193 + 1 end
end
if _v193 > 20000 then table.clear(_v18w) _v193 = 0 end
_v18x = _v193 + 1
end
end
local _v196 = _v18z.Y + 1500
local _v197 = _v184(_v18z.X, _v18z.Z, _v196) ~= nil
for _v198, _v199 in ipairs(_v18p) do
if _v197 then break end
local _v19a, _v19b = _v199[1], _v199[2]
for _v19c = 0, _v19b - 1 do
local _v19d = _v19c * 2 * math.pi / _v19b
if _v184(_v18z.X + math.cos(_v19d) * _v19a, _v18z.Z + math.sin(_v19d) * _v19a, _v196) ~= nil then _v197 = true break end
end
end
_v18w[_v190] = _v197 or (os.clock() + 30)
return _v197
end
local function _v19e(_v19f)
return not _v18y(_v19f)
end
local _v19g, _v19h, _v19i, _v19j = 60, 30, 300, 20
local function _v19k(_v19l, _v19m)
local _v19n = Vector3.new(_v19m.X - _v19l.X, 0, _v19m.Z - _v19l.Z)
local _v19o = _v19n.Magnitude
if _v19o < 10 then return nil end
local _v19p = _v19n / _v19o
local _v19q = math.max(_v19l.Y, _v19m.Y) + 1500
local _v19r, _v19s
for _v19t = 10, _v19o, 15 do
if not _v19r and _v19t > _v19g then return nil end
if _v18q(_v19l.X + _v19p.X * _v19t, _v19l.Z + _v19p.Z * _v19t, _v19q) then
_v19r = _v19r or _v19t
_v19s = _v19t
elseif _v19s and _v19t - _v19s > 45 then
break
end
end
if not _v19s then return nil end
local _v19u = math.min(_v19s + _v19h, _v19o)
while _v19u < _v19o and _v184(_v19l.X + _v19p.X * _v19u, _v19l.Z + _v19p.Z * _v19u, _v19q) do _v19u = _v19u + 15 end
_v19u = math.min(_v19u, _v19o)
local _v19v, _v19w = _v19l.X + _v19p.X * _v19u, _v19l.Z + _v19p.Z * _v19u
if _v19u - _v19r > _v19i or _v184(_v19v, _v19w, _v19q) or not _v17v(_v19v, _v19w, _v19q) then return nil, true end
return Vector3.new(_v19v, _v19m.Y, _v19w)
end
local function _v19x(_v19y, _v19z, _v1a0)
_v19z = _v19z or _v13x(_v19y.X, _v19y.Y + 5, _v19y.Z) or _v19y.Y
local _v1a1 = _v17v(_v19y.X, _v19y.Z, _v19y.Y + 1200)
return _v1a1 ~= nil and _v1a1 - _v19z > math.max(_v1a0 * 2, 25)
end
local function _v1a2(_v1a3, _v1a4, _v1a5, _v1a6)
local _v1a7 = _v13x(_v1a3.X, _v1a3.Y + 60, _v1a3.Z) or _v13x(_v1a3.X, _v1a3.Y + 300, _v1a3.Z)
if _v1a7 == nil or math.abs(_v1a3.Y - (_v1a7 + _v1a5 + _v1a6)) > _v1a4 * _v134 then return false end
return not _v19x(_v1a3, _v1a7, _v1a5)
end
local function _v1a8()
local _v1a9
pcall(function()
local _v1aa = _v4.getCS().Replica.Data
_v1a9 = _v1aa.Stats.Stamina / math.max(_v1aa.MaxStats.Stamina, 1)
end)
if not _v1a9 then return end
if _v4.lfTired then
if _v1a9 >= _v13j then _v4.lfTired = false end
elseif _v1a9 <= _v13i then
_v4.lfTired = true
end
end
local function _v1ab(_v1ac)
local _v1ad = 5
pcall(function() _v1ad = _v4.getCS().Data.Movement.Speeds.Land.Normal or _v1ad end)
return _v1ac / math.max(_v1ad, 1) * 1.6 + 20
end
local function _v1ae(_v1af)
local _v1ag = _v4.lfTarget
if _v1af and _v1ag and _v1ag.id then
if _v1af >= _v136 then
local _v1ah = (_v4.lfGiveUps[_v1ag.id] or 0) + 1
_v4.lfGiveUps[_v1ag.id] = _v1ah
if _v1ah >= 2 then _v1af = math.max(_v1af, _v137) end
end
_v4.lfExclude[_v1ag.id] = os.clock() + _v1af
end
_v4.lfTarget, _v4.lfEat = nil, nil
_v4.lfLastScan = 0
_v4.lfProgPos = nil
end
local function _v1ai(_v1aj, _v1ak, _v1al)
_v14o()
_v4.lfEat = nil
local _v1am = _v13x(_v1ak.X, _v1ak.Y + 5, _v1ak.Z) or (_v1ak.Y - _v1al)
local _v1an = _v4.lfHeading or _v147(_v1aj.CFrame.LookVector, Vector3.new(0, 0, -1))
_v4.lfFly = { phase = "up", pos = _v1ak, dest = Vector3.new(_v1ak.X, _v1am + _v1al + _v13d, _v1ak.Z), dir = _v1an }
_v4.lfProgPos = nil
end
local function _v1ao(_v1ap)
local _v1aq, _v1ar
for _v1as, _v1at in ipairs(_v0:GetPlayers()) do
if _v1at ~= _v2 and _v1at.Character then
local _v1au = _v4.getRootOf(_v1at.Character, false)
if _v1au then
local _v1av = (_v1au.Position - _v1ap).Magnitude
if not _v1ar or _v1av < _v1ar then _v1aq, _v1ar = _v1au.Position, _v1av end
end
end
end
return _v1aq, _v1ar
end
function _v13q.noteStart(_v1aw)
local _v1ax, _v1ay = _v4.lfEsc, {}
for _v1az, _v1b0 in ipairs(_v1ax.starts) do if _v1aw - _v1b0 < 60 then _v1ay[#_v1ay + 1] = _v1b0 end end
_v1ay[#_v1ay + 1] = _v1aw
_v1ax.starts = _v1ay
end
function _v13q.noteDir(_v1b1, _v1b2, _v1b3)
local _v1b4 = _v4.lfEsc
_v1b4.fleeSince = _v1b4.fleeSince or _v1b3
if not _v1b4.baseDir or _v1b3 - _v1b4.baseT >= 2 then
if _v1b4.baseDir and _v1b1:Dot(_v1b4.baseDir) < -0.3 then
local _v1b5 = {}
for _v1b6, _v1b7 in ipairs(_v1b4.revs) do if _v1b3 - _v1b7 < 25 then _v1b5[#_v1b5 + 1] = _v1b7 end end
_v1b5[#_v1b5 + 1] = _v1b3
_v1b4.revs = _v1b5
end
_v1b4.baseDir, _v1b4.baseT = _v1b1, _v1b3
end
if not _v1b4.trailT or _v1b3 - _v1b4.trailT >= 1 then
_v1b4.trail = _v1b4.trail or {}
table.insert(_v1b4.trail, { t = _v1b3, pos = _v1b2 })
while #_v1b4.trail > 0 and _v1b3 - _v1b4.trail[1].t > 20 do table.remove(_v1b4.trail, 1) end
_v1b4.trailT = _v1b3
end
end
function _v13q.boxed(_v1b8, _v1b9)
local _v1ba = _v4.lfEsc
if _v1b8 < (_v1ba.lockUntil or 0) then return false end
local _v1bb, _v1bc = 0, 0
for _v1bd, _v1be in ipairs(_v1ba.revs) do if _v1b8 - _v1be < 25 then _v1bb = _v1bb + 1 end end
for _v1bf, _v1bg in ipairs(_v1ba.starts) do if _v1b8 - _v1bg < 60 then _v1bc = _v1bc + 1 end end
if _v1bb >= 3 or _v1bc >= 3 then return true end
if _v1ba.fleeSince and _v1b8 - _v1ba.fleeSince >= 15 and _v1ba.trail then
for _v1bh, _v1bi in ipairs(_v1ba.trail) do
if _v1b8 - _v1bi.t >= 15 then
return Vector3.new(_v1b9.X - _v1bi.pos.X, 0, _v1b9.Z - _v1bi.pos.Z).Magnitude < 60
end
end
end
return false
end
function _v13q.pick(_v1bj, _v1bk)
local _v1bl = {}
for _v1bm, _v1bn in ipairs(_v0:GetPlayers()) do
if _v1bn ~= _v2 and _v1bn.Character then
local _v1bo = _v4.getRootOf(_v1bn.Character, false)
if _v1bo then _v1bl[#_v1bl + 1] = _v1bo.Position end
end
end
local _v1bp = math.max(_v13q.MIN_SAFE, (_v4.LF_FLYAWAY_RADIUS or 150) * 2 + 50, (_v4.LF_AVOID or 200) * 1.5)
local _v1bq = _v4.lfDrink
if _v1bq and _v1bq.stand and _v16q(_v1bj, _v1bq.stand) then
local _v1br, _v1bs = _v4.myWater()
local _v1bt = _v1br ~= nil and _v1bs ~= nil and _v1bs > 0 and _v1br / _v1bs < (_v4.LF_WATER_CRITICAL or 0.01)
if not _v1bt then
_v1bt = true
for _v1bu, _v1bv in ipairs(_v1bl) do
if Vector3.new(_v1bv.X - _v1bq.stand.X, 0, _v1bv.Z - _v1bq.stand.Z).Magnitude < _v1bp then _v1bt = false break end
end
end
if _v1bt then return _v1bq.stand, true end
end
if _v4.afkPickFood then
local _v1bw = _v4.khRange()
local _v1bx = _v145()
local _v1by = _v1bx and (_v1bx.Position.Y - _v1bj.Y) or 8
local _v1c1, _v1c2, _v1c3, _v1c4 = pcall(_v4.afkPickFood, _v1bj, _v4.lfExclude, {
avoid = _v1bp, meat = _v4.dinoEatsMeat(), maxDist = _v13q.MAX_DIST,
feetY = _v1bj.Y - _v1bk, yWeight = 5,
reach = function(_v1bz, _v1c0)
if not _v19e(_v1bz) then return false end
if not _v16q(_v1bj, _v1bz) then return false end
if _v1c0 then return not _v19x(_v1bz, nil, _v1bk) end
return _v1a2(_v1bz, _v1bw, _v1bk, _v1by)
end,
})
if _v1c1 and _v1c2 and _v1c4 then return _v1c4 end
end
local _v1c5, _v1c6
for _v1c7 = 0, 15 do
local _v1c8 = _v1c7 * math.pi / 8
local _v1c9 = Vector3.new(math.cos(_v1c8), 0, math.sin(_v1c8))
for _v1ca, _v1cb in ipairs({ _v1bp + 150, _v1bp + 400 }) do
local _v1cc = _v1bj + _v1c9 * _v1cb
if _v16q(_v1bj, _v1cc) and not _v184(_v1cc.X, _v1cc.Z, _v1cc.Y + 1500) then
local _v1cd = math.huge
for _v1ca, _v1cf in ipairs(_v1bl) do
_v1cd = math.min(_v1cd, Vector3.new(_v1cf.X - _v1cc.X, 0, _v1cf.Z - _v1cc.Z).Magnitude)
end
if not _v1c6 or _v1cd > _v1c6 then _v1c5, _v1c6 = _v1cc, _v1cd end
end
end
end
return _v1c5
end
function _v13q.start(_v1cg, _v1ch, _v1ci, _v1cj)
local _v1ck = _v4.lfEsc
local _v1cl, _v1cm = _v13q.pick(_v1ch, _v1ci)
_v1ck.revs, _v1ck.starts, _v1ck.trail, _v1ck.trailT, _v1ck.baseDir, _v1ck.fleeSince = {}, {}, nil, nil, nil, nil
if not _v1cl then _v1ck.lockUntil = _v1cj + 20 return false end
_v1ck.lockUntil = _v1cj + 45
_v14o()
_v1ae(nil)
_v4.lfFleeing = false
if _v4.lfDrink then _v4.lfDrink.deadline = math.max(_v4.lfDrink.deadline or _v1cj, _v1cj + _v13q.MAX_TIME + 60) end
local _v1cn = _v147(_v1cl - _v1ch, _v4.lfHeading or Vector3.new(0, 0, -1))
_v4.lfFly = { kind = _ei9m[179-2], toWater = _v1cm, phase = _ei9m[2932], pos = _v1ch, start = _v1ch, dir = _v1cn, goal = _v1cl, t0 = _v1cj,
cf = CFrame.lookAt(_v1ch, _v1ch + _v1cn),
dest = Vector3.new(_v1ch.X, math.max(_v1ch.Y, _v13q.floorAt(_v1ch) + _v1ci + _v13q.ALT), _v1ch.Z) }
_v4.lfHeading = _v1cn
_v4.lfProgPos = nil
return true
end
function _v13q.floorAt(_v1co)
local _v1cp = _v1co.Y + 1500
local _v1cq = math.max(_v17v(_v1co.X, _v1co.Z, _v1cp) or -math.huge, _v184(_v1co.X, _v1co.Z, _v1cp) or -math.huge)
if _v1cq == -math.huge then return _v1co.Y - _v142() end
return _v1cq
end
local function _v1cr(_v1cs, _v1ct, _v1cu, _v1cv, _v1cw)
if next(_v4.lfBarriers) and _v16w(_v1ct, _v1cw) then return false end
_v14o()
_v4.lfEat = nil
local _v1cx = _v147(_v1cw - _v1ct, _v4.lfHeading or Vector3.new(0, 0, -1))
_v4.lfFly = { kind = _ei9m[345+2508], cross = true, maxT = _v19j, phase = _ei9m[1986], pos = _v1ct, start = _v1ct, dir = _v1cx, goal = _v1cw, t0 = _v1cv,
cf = CFrame.lookAt(_v1ct, _v1ct + _v1cx),
dest = Vector3.new(_v1ct.X, math.max(_v1ct.Y, _v13q.floorAt(_v1ct) + _v1cu + _v13q.ALT), _v1ct.Z) }
if _v4.lfTarget then _v4.lfTarget.deadline = (_v4.lfTarget.deadline or _v1cv) + _v13q.MAX_TIME end
_v4.lfHeading = _v1cx
_v4.lfProgPos = nil
return true
end
_v13q.HEAL_UP = 150
function _v13q.hide(_v1cy, _v1cz, _v1d0, _v1d1)
_v14o()
_v1ae(nil)
_v4.lfEat, _v4.lfHeading = nil, nil
_v4.lfFly = { kind = _ei9m[6+2302], phase = _ei9m[543+546], pos = _v1cz, start = _v1cz, t0 = _v1d1,
dir = _v147(_v1cy.CFrame.LookVector, Vector3.new(0, 0, -1)),
dest = Vector3.new(_v1cz.X, math.max(_v1cz.Y, _v13q.floorAt(_v1cz) + _v1d0 + _v13q.HEAL_UP), _v1cz.Z) }
_v4.lfProgPos = nil
end
function _v13q.surface(_v1d2)
local _v1d3, _v1d4 = _v2.Character, _v4.getLocalPhysicsRoot()
if not (_v1d3 and _v1d3.Parent and _v1d4) then return end
local _v1d5 = _v1d4.Position
local _v1d6 = _v17v(_v1d5.X, _v1d5.Z, _v1d5.Y + 1500)
if not _v1d6 then return end
local _v1d7 = _v142()
if _v1d5.Y > _v1d6 - 2 and _v1d5.Y < _v1d6 + _v1d7 + 6 then return end
local _v1d8 = {}
if _v1d5.Y <= _v1d6 - 2 then _v1d8[#_v1d8 + 1] = Vector3.new(_v1d5.X, _v1d6 + _v1d7 + 10, _v1d5.Z) end
local _v1d9 = _v18c(_v1d5, _v1d2.dir)
if _v1d9 then _v1d8[#_v1d8 + 1] = Vector3.new(_v1d9.X, math.max(_v1d5.Y, _v1d6 + _v1d7 + 10), _v1d9.Z) end
_v1d8[#_v1d8 + 1] = _ei9m[480+1331]
local _v1da = _v1d4.CFrame.Rotation
_v4.lfSurfacing = true
task.spawn(function()
local _v1db, _v1dc = os.clock(), 1
local _v1dd = _v1d8[1]
_v151(_v1d3)
while os.clock() - _v1db < 25 and _v1d3.Parent and _v1d4.Parent do
if _v1dd == _ei9m[2+2916] then
local _v1de = _v13x(_v1d5.X, _v1d5.Y, _v1d5.Z) or _v17v(_v1d5.X, _v1d5.Z, _v1d5.Y + 1500) or (_v1d5.Y - _v1d7)
_v1dd = Vector3.new(_v1d5.X, _v1de + _v1d7, _v1d5.Z)
end
local _v1df = task.wait(0.03)
_v1d5 = _v4.govNext(_v1d5, _v1dd, math.min(_v1df or 0.03, 0.1), _v13n)
_v14e(_v1d4, CFrame.new(_v1d5) * _v1da)
_v14b(_v1d3, _v1d5.Y)
if (_v1d5 - _v1dd).Magnitude < 2 then
_v1dc = _v1dc + 1
if not _v1d8[_v1dc] then break end
_v1dd = _v1d8[_v1dc]
end
end
_v14b(_v1d3, nil)
_v14z()
_v4.flyLandUntil = os.clock() + 10
_v4.lfSurfacing = nil
end)
end
function _v13q.drink(_v1dg, _v1dh, _v1di, _v1dj)
local _v1dk, _v1dl = _v4.myWater()
local _v1dm = (_v1dk and _v1dl and _v1dl > 0) and _v1dk / _v1dl or 1
local _v1dn = _v4.lfDrink
if not _v1dn then
if _v1dm > (_v4.DRINK_AT or 0.2) or _v1dj < (_v4.lfDrinkRetry or 0) then return false end
if _v4.WATER_ANYWHERE and _v1dm >= 0.25 then return false end
local _v1do = _v4.drinkSpot
if not _v1do or _v1dj - _v1do.t > 20 or (_v1do.from - _v1dh).Magnitude > 200 then
_v4.drinkFind(_v1dh, _v4.DRINK_SEARCH or 1500, _v4.LF_AVOID or 200)
return false
end
_v4.drinkSpot = nil
if not _v1do.stand then
_v4.lfDrinkRetry = _v1dj + 45
_v4.lfDrinkNote = _ei9m[857+45] .. (_v4.DRINK_SEARCH or 1500) .. _ei9m[2223-20]
return false
end
local _v1dp = Vector3.new(_v1do.stand.X - _v1dh.X, 0, _v1do.stand.Z - _v1dh.Z).Magnitude
_v1dn = { stand = _v1do.stand, water = _v1do.water, out = _v1do.out, swims = 0, deadline = _v1dj + _v1ab(_v1dp) + 60 }
_v4.lfDrink, _v4.lfDrinkNote = _v1dn, nil
_v1ae(nil)
_v4.lfEat = nil
end
local function _v1dq()
_v4.drinkBad[_v4.drinkCell(_v1dn.stand)] = true
_v4.lfDrink, _v4.lfDrinkRetry = nil, _v1dj + 5
_v14o()
return false
end
if _v1dm >= 0.99 then _v4.lfDrink = nil _v14o() return false end
if _v1dj > _v1dn.deadline or _v1dn.swims >= 2 then return _v1dq() end
if _v4.headOverWater() then
_v14i(_ei9m[1043+186], false)
_v14i(_ei9m[426], false)
_v14i(_ei9m[2167-13], false)
_v4.lfProgPos = nil
_v1dn.drinkT = _v1dn.drinkT or _v1dj
if not _v1dn.lastW or _v1dk > _v1dn.lastW + 0.001 then _v1dn.lastW, _v1dn.gainT = _v1dk, _v1dj end
if _v1dj - math.max(_v1dn.drinkT, _v1dn.gainT or 0) > 15 then return _v1dq() end
_v4.lfStatus = _ei9m[228] .. math.floor(_v1dm * 100) .. "%)"
return true
end
_v1dn.drinkT = nil
if _v1dm < (_v4.LF_WATER_CRITICAL or 0.01) and not _v1dn.flown and not _v1dn.reached
and Vector3.new(_v1dn.stand.X - _v1dh.X, 0, _v1dn.stand.Z - _v1dh.Z).Magnitude > 60 and _v16q(_v1dh, _v1dn.stand) then
_v1dn.flown = true
_v1dn.deadline = math.max(_v1dn.deadline, _v1dj + _v13q.MAX_TIME + 60)
_v14o()
_v4.lfEat = nil
local _v1dr = _v147(_v1dn.stand - _v1dh, _v4.lfHeading or Vector3.new(0, 0, -1))
_v4.lfFly = { kind = _ei9m[2133-7], toWater = true, critical = true, phase = _ei9m[370+171], pos = _v1dh, start = _v1dh,
dir = _v1dr, goal = _v1dn.stand, t0 = _v1dj, cf = CFrame.lookAt(_v1dh, _v1dh + _v1dr),
dest = Vector3.new(_v1dh.X, math.max(_v1dh.Y, _v13q.floorAt(_v1dh) + _v1di + _v13q.ALT), _v1dh.Z) }
_v4.lfHeading = _v1dr
_v4.lfProgPos = nil
return true
end
local _v1ds = _v1dn.reached and (_v1dn.out or _v1dn.water) or _v1dn.stand
local _v1dt = Vector3.new(_v1ds.X - _v1dh.X, 0, _v1ds.Z - _v1dh.Z)
if not _v1dn.reached and _v1dt.Magnitude < 5 then _v1dn.reached = true end
if _v1dn.reached and _v1dt.Magnitude < 3 then return _v1dq() end
_v4.lfHeading = _v147(_v1dt, _v4.lfHeading)
if not _v1dn.reached and _v1dj - (_v1dn.wetT or 0) >= 1 then
_v1dn.wetT = _v1dj
local _v1du, _v1dv = _v19k(_v1dh, _v1dn.stand)
if _v1dv then return _v1dq() end
if _v1du and _v1cr(_v1dg, _v1dh, _v1di, _v1dj, _v1du) then return true end
end
if not _v1dn.progPos or Vector3.new(_v1dh.X - _v1dn.progPos.X, 0, _v1dh.Z - _v1dn.progPos.Z).Magnitude > _v13c then
_v1dn.progPos, _v1dn.progT = _v1dh, _v1dj
elseif _v1dj - _v1dn.progT > 6 then
_v1dn.progPos, _v1dn.flyOuts = nil, (_v1dn.flyOuts or 0) + 1
if _v1dn.flyOuts > 2 then return _v1dq() end
_v1ai(_v1dg, _v1dh, _v1di)
_v4.lfFly.overTo = _v1dn.stand
return true
end
_v14i(_ei9m[672-5], false)
_v14i(_ei9m[530+379], false)
_v14i(_ei9m[25+59], true)
_v4.lfStatus = _ei9m[2586-12] .. math.floor(_v1dm * 100) .. _ei9m[355] .. math.floor(_v1dt.Magnitude) .. _ei9m[472-8]
return true
end
function _v13q.holdDrink(_v1dw, _v1dx)
local _v1dy = _v4.lfDrink
if not _v1dy then return false end
local _v1dz, _v1e0 = _v4.myWater()
if _v1dz and _v1e0 and _v1e0 > 0 and _v1dz / _v1e0 < (_v4.LF_WATER_CRITICAL or 0.01) then return true end
if not _v1dy.drinkT then return false end
if _v1dx - (_v1dy.closeT or 0) >= 1 then
local _v1e1 = _v1dx - (_v1dy.closeT or _v1dx)
_v1dy.closeT = _v1dx
_v1dy.seen = _v1dy.seen or {}
local _v1e2 = math.max(_v4.LF_AVOID or 200, _v4.LF_FLYAWAY_RADIUS or 150)
local _v1e3 = false
for _v1e4, _v1e5 in ipairs(_v0:GetPlayers()) do
local _v1e6 = _v1e5 ~= _v2 and _v1e5.Character and _v4.getRootOf(_v1e5.Character, false)
if _v1e6 then
local _v1e7 = (_v1e6.Position - _v1dw).Magnitude
local _v1e8 = _v1dy.seen[_v1e5]
local _v1e9 = _v1e8 ~= nil and _v1e1 > 0 and (_v1e8.dist - _v1e7) / _v1e1 >= 1.5
local _v1ea = _v1e9 and (_v1e8.n + 1) or 0
_v1dy.seen[_v1e5] = { dist = _v1e7, n = _v1ea }
if _v1ea >= 2 and _v1e7 <= _v1e2 then _v1e3 = true end
end
end
_v1dy.closing = _v1e3
end
return not _v1dy.closing
end
local function _v1eb(_v1ec, _v1ed, _v1ee, _v1ef)
local _v1eg = os.clock()
_v13q.noteStart(_v1eg)
if _v13q.boxed(_v1eg, _v1ed) and _v13q.start(_v1ec, _v1ed, _v1ee, _v1eg) then return end
_v14o()
_v1ae(nil)
local _v1eh = _v13x(_v1ed.X, _v1ed.Y + 5, _v1ed.Z) or (_v1ed.Y - _v1ee)
local _v1ei = _v147(_v1ed - _v1ef, _v4.lfHeading or _v147(_v1ec.CFrame.LookVector, Vector3.new(0, 0, -1)))
_v4.lfFly = { kind = _ei9m[2841], phase = "up", pos = _v1ed, start = _v1ed, dir = _v1ei, t0 = os.clock(),
dest = Vector3.new(_v1ed.X, _v1eh + _v1ee + _v13m, _v1ed.Z) }
_v4.lfProgPos = nil
end
function _v4.lfStop(_v1ej)
local _v1ek = _v4.lfFly
if _v1ek and _v1ek.plat then pcall(function() _v1ek.plat:Destroy() end) _v1ek.plat = nil end
if _v1ek and _v1ek.kind == _ei9m[5+2959] and _v1ek.phase == _ei9m[2+140] and _v4.saveIsResting() then _v14h() end
local _v1el = (not _v1ej and _v1ek) and _v1ek or nil
if _v4.lfResting == _ei9m[1553] and _v4.saveIsResting() then _v14h() end
if _v4.lfAnchored then
local _v1em = _v4.getLocalPhysicsRoot()
if _v1em then pcall(function() _v1em.Anchored = false end) end
_v4.lfAnchored = nil
end
_v4.lfResting, _v4.lfFly, _v4.lfHealUp = nil, nil, nil
_v14o()
_v14z()
if not _v1ej then
local _v1en = _v2.Character
if _v1en then pcall(function() _v1en:SetAttribute(_ei9m[1909-19], nil) end) end
end
if _v4.lfRestoreInput then _v4.lfRestoreInput() end
_v4.lfWasOn, _v4.lfChar = false, nil
_v4.lfTarget, _v4.lfEat, _v4.lfHeading, _v4.lfProgPos, _v4.lfFleeing = nil, nil, nil, nil, false
_v4.lfDrink = nil
_v4.lfStatus = _ei9m[1233]
_v4.lfEsc = { starts = {}, revs = {} }
_v4.flyLandUntil = os.clock() + 10
if _v1el then _v13q.surface(_v1el) end
end
function _v4.lfAdvance(_v1eo)
if _v4.UNLOADED then return end
if _v4.lfSurfacing then return end
if _v4.lfKeepInput then _v4.lfKeepInput() end
local _v1ep = _v4.lfFly and (_v4.lfFly.kind == _ei9m[2129] or _v4.lfFly.kind == _ei9m[1740])
local _v1eq = _v4.AFK_FARM or _v4.FLY or _v4.AUTO_FLY or _v4.ffOn() or _v4.SAVE_DINO_ACTIVE or _v4.AS_BUSY
or (_v4.CLEAN_BREAK and not _v1ep)
if not _v4.LEGIT_FARM or _v1eq then
if _v4.lfWasOn then _v4.lfStop(_v1eq) end
return
end
local _v1er = _v2.Character
local _v1es = _v4.getLocalPhysicsRoot()
if not (_v1er and _v1es) then return end
if not _v1er.Parent then
if _v4.lfWasOn then _v4.lfStop(false) end
return
end
_v1eo = math.min(_v1eo or 0.016, 0.1)
if _v4.lfWasOn and _v4.lfChar ~= _v1er then _v4.lfStop(false) end
if not _v4.lfWasOn then
_v4.lfWasOn, _v4.lfChar = true, _v1er
_v4.lfY = _v1es.Position.Y
_v4.lfTarget, _v4.lfEat, _v4.lfLastScan = nil, nil, 0
_v169()
end
local _v1et = os.clock()
local _v1eu = _v1es.Position
local _v1ev = _v142()
local _v1ew = _v4.getCS()
local _v1ex, _v1ey
pcall(function() _v1ex = _v1er:GetAttribute(_ei9m[6+1798]); _v1ey = _v1er:GetAttribute(_ei9m[2+372]) end)
local _v1ez = (type(_v1ex) == _ei9m[2331] and type(_v1ey) == _ei9m[2078] and _v1ey > 0) and _v1ex / _v1ey or 1
local function _v1f0()
if _v4.saveIsResting() then _v14h() end
if _v4.lfAnchored then pcall(function() _v1es.Anchored = false end); _v4.lfAnchored = nil end
_v4.lfResting = nil
_v4.lfY = _v1eu.Y
end
if _v4.lfResting then
local _v1f1, _v1f2 = _v1ao(_v1eu)
if _v1f1 and _v1f2 <= math.max(_v4.LF_FLYAWAY_RADIUS or 150, 150) then
_v1f0()
if not _v4.lfFly then _v1eb(_v1es, _v1eu, _v1ev, _v1f1) end
end
end
if _v4.tookDamage(_v1er, _v1ex) then
_v4.lfHealUp = true
if _v4.lfResting then
local _v1f3, _v1f4 = _v1ao(_v1eu)
if _v1f3 and _v1f4 <= 400 then _v1f0() end
end
if not _v4.lfFly and not _v4.lfResting then
local _v1f5, _v1f6 = _v1ao(_v1eu)
if _v1f5 and _v1f6 <= 400 then _v1eb(_v1es, _v1eu, _v1ev, _v1f5) end
end
end
local _v1f7, _v1f8
if _v1ez < 0.99 then pcall(function() _v1f7, _v1f8 = _v4.myFood() end) end
local _v1f9, _v1fa = _v4.lfWantRest(_v1ez, _v4.lfHealUp, _v1f7, _v1f8)
if _v1fa then _v4.lfHealUp = nil end
if _v4.LF_REST and not _v4.lfResting and not _v4.lfFly and _v1f9 then
local _v1fb, _v1fc = _v1ao(_v1eu)
if _v1fb and _v1fc <= math.max(_v4.LF_FLYAWAY_RADIUS or 150, 150) then
_v1eb(_v1es, _v1eu, _v1ev, _v1fb)
else
_v13q.hide(_v1es, _v1eu, _v1ev, _v1et)
return
end
elseif _v4.lfResting and (_v1ez >= 0.99 or not _v4.LF_REST or _v1fa) then
if _v4.saveIsResting() then _v14h() end
if _v4.lfAnchored then pcall(function() _v1es.Anchored = false end); _v4.lfAnchored = nil end
_v4.lfResting = nil
_v4.lfHealUp = nil
_v4.lfY = _v1eu.Y
end
if _v1ez >= 0.99 then _v4.lfHealUp = nil end
if _v4.lfResting then
if _v4.lfResting == _ei9m[4+38] then
_v14b(_v1er, _v4.lfY)
if _v1et - _v4.lfRestT >= 1 then
pcall(function() _v1es.Anchored = true end)
_v4.lfAnchored = true
_v14b(_v1er, nil)
_v14h()
_v4.lfResting, _v4.lfRestT = _ei9m[2390-2], _v1et
end
elseif not _v4.saveIsResting() and _v1et - _v4.lfRestT > 6 then
_v14h()
_v4.lfRestT = _v1et
end
_v4.lfStatus = _ei9m[1018] .. math.floor(_v1ez * 100) .. "%)"
return
end
if _v1es.Anchored and not (_v4.lfFly and _v4.lfFly.kind == _ei9m[4+1471]) then return end
_v151(_v1er)
if _v4.lfSteerPatch then _v4.lfSteerPatch() end
if not _v4.lfFly then
local _v1fd = getgenv and getgenv()
if _v1fd and _v1fd.EazyCheats_LfEscapeTest then
_v1fd.EazyCheats_LfEscapeTest = nil
if _v13q.start(_v1es, _v1eu, _v1ev, _v1et) then return end
end
end
if _v4.LF_FLYAWAY and not _v4.lfFly and not _v13q.holdDrink(_v1eu, _v1et) then
local _v1fe, _v1ff = _v1ao(_v1eu)
if _v1fe and _v1ff <= (_v4.LF_FLYAWAY_RADIUS or 150) then _v1eb(_v1es, _v1eu, _v1ev, _v1fe) end
end
if _v4.lfFly then
local _v1fg = _v4.lfFly
if _v1fg.kind == _ei9m[6+2483] and _v1fg.phase == _ei9m[7+422] then
local _v1fh, _v1fi = _v1ao(_v1fg.pos)
if _v1fh then _v1fg.dir = _v147(_v1fg.pos - _v1fh, _v1fg.dir) end
if next(_v4.lfBarriers) and _v16w(_v1fg.pos, _v1fg.pos + _v1fg.dir * 60) then
local _v1fj, _v1fk = Vector3.new(-_v1fg.dir.Z, 0, _v1fg.dir.X), Vector3.new(_v1fg.dir.Z, 0, -_v1fg.dir.X)
_v1fg.dir = (not _v16w(_v1fg.pos, _v1fg.pos + _v1fj * 60) and _v1fj)
or (not _v16w(_v1fg.pos, _v1fg.pos + _v1fk * 60) and _v1fk) or -_v1fg.dir
end
_v13q.noteDir(_v1fg.dir, _v1fg.pos, _v1et)
if _v13q.boxed(_v1et, _v1fg.pos) and _v13q.start(_v1es, _v1fg.pos, _v1ev, _v1et) then return end
local _v1fl = _v1fg.pos + _v1fg.dir * 40
local _v1fm = _v13x(_v1fg.pos.X, _v1fg.pos.Y + 150, _v1fg.pos.Z)
local _v1fn = _v13x(_v1fl.X, _v1fg.pos.Y + 150, _v1fl.Z)
local _v1fo = math.max(_v1fm or -math.huge, _v1fn or -math.huge)
local _v1fp = (_v1fo > -math.huge) and (_v1fo + _v1ev + _v13m) or _v1fg.pos.Y
_v1fg.dest = Vector3.new(_v1fg.pos.X + _v1fg.dir.X * 50, _v1fp, _v1fg.pos.Z + _v1fg.dir.Z * 50)
local _v1fq = not _v1fh or _v1fi > (_v4.LF_FLYAWAY_RADIUS or 150) * 2
local _v1fr = Vector3.new(_v1fg.pos.X - _v1fg.start.X, 0, _v1fg.pos.Z - _v1fg.start.Z).Magnitude
if (_v1fq and _v1fr >= _v13o) or os.clock() - _v1fg.t0 > _v13p then
local _v1fs = _v18c(_v1fg.pos, _v1fg.dir)
if _v1fs then
_v1fg.phase, _v1fg.dest = _ei9m[1369+623], _v1fs
else
local _v1ft = _v13x(_v1fg.pos.X, _v1fg.pos.Y, _v1fg.pos.Z)
_v1fg.phase, _v1fg.dest = _ei9m[1822+745], Vector3.new(_v1fg.pos.X, (_v1ft or (_v1fg.pos.Y - _v13m - _v1ev)) + _v1ev, _v1fg.pos.Z)
end
end
end
if _v1fg.kind == _ei9m[2308-17] and _v1fg.phase == _ei9m[3+1611] then
local _v1fu = Vector3.new(_v1fg.goal.X - _v1fg.pos.X, 0, _v1fg.goal.Z - _v1fg.pos.Z)
local _v1fv = _v1fu.Magnitude
_v1fg.dir = _v147(_v1fu, _v1fg.dir)
local _v1fw = _v1fg.pos + _v1fg.dir * math.min(40, _v1fv)
local _v1fx = next(_v4.lfBarriers) and _v16j(_v1fw, _v13l)
local _v1fy = math.max(_v13q.floorAt(_v1fg.pos), _v13q.floorAt(_v1fw)) + _v1ev + _v13q.ALT
local _v1fz = math.min(50, _v1fv)
_v1fg.dest = Vector3.new(_v1fg.pos.X + _v1fg.dir.X * _v1fz, _v1fy, _v1fg.pos.Z + _v1fg.dir.Z * _v1fz)
if _v1fv <= 12 or _v1fx or _v1et - _v1fg.t0 > (_v1fg.maxT or _v13q.MAX_TIME) then
local _v1g0 = not _v1fg.dryDone and not _v1fx and _v18c(_v1fg.pos, _v1fg.dir)
_v1fg.dryDone = true
if _v1g0 then
_v1fg.goal, _v1fg.t0 = _v1g0, _v1et
else
local _v1g1 = _v13x(_v1fg.pos.X, _v1fg.pos.Y, _v1fg.pos.Z) or _v17v(_v1fg.pos.X, _v1fg.pos.Z, _v1fg.pos.Y + 1500)
_v1fg.phase, _v1fg.dest = _ei9m[6+1459], Vector3.new(_v1fg.pos.X, (_v1g1 or (_v1fg.pos.Y - _v13q.ALT - _v1ev)) + _v1ev, _v1fg.pos.Z)
end
end
end
if _v1fg.kind == _ei9m[2984] and _v1fg.phase == _ei9m[691-2] then
_v4.lfStatus = _ei9m[1477] .. math.floor(_v1ez * 100) .. "%)"
if not _v1fg.pressed and _v1et - _v1fg.restT >= 1 then
_v14h()
_v1fg.pressed, _v1fg.restT = true, _v1et
elseif _v1fg.pressed and not _v4.saveIsResting() and _v1et - _v1fg.restT > 6 then
_v14h()
_v1fg.restT = _v1et
end
if _v1ez >= 0.99 or _v1fa or not _v4.LF_REST then
if _v4.saveIsResting() then _v14h() end
if _v4.lfAnchored then pcall(function() _v1es.Anchored = false end); _v4.lfAnchored = nil end
if _v1fg.plat then pcall(function() _v1fg.plat:Destroy() end) _v1fg.plat = nil end
_v4.lfHealUp = nil
local _v1g2 = _v18c(_v1fg.pos, _v1fg.dir)
if _v1g2 then
_v1fg.kind, _v1fg.cross, _v1fg.maxT, _v1fg.phase, _v1fg.goal, _v1fg.t0, _v1fg.dryDone = _ei9m[85+281], true, _v19j, _ei9m[2231], _v1g2, _v1et, true
else
local _v1g3 = _v13x(_v1fg.pos.X, _v1fg.pos.Y, _v1fg.pos.Z) or _v17v(_v1fg.pos.X, _v1fg.pos.Z, _v1fg.pos.Y + 1500)
_v1fg.phase, _v1fg.dest = _ei9m[2073-6], Vector3.new(_v1fg.pos.X, (_v1g3 or (_v1fg.pos.Y - _v13q.HEAL_UP)) + _v1ev, _v1fg.pos.Z)
end
end
return
end
local _v1g4 = _v4.govNext(_v1fg.pos, _v1fg.dest, _v1eo, (_v1fg.kind == _ei9m[1478] or _v1fg.kind == _ei9m[208] or _v1fg.kind == _ei9m[979-9]) and _v13n or _v13f)
do
local _v1g5 = _v17v(_v1g4.X, _v1g4.Z, _v1g4.Y + 1500)
if _v1g5 and _v1g4.Y < _v1g5 + _v1ev * 0.5 then _v1g4 = Vector3.new(_v1g4.X, _v1g5 + _v1ev * 0.5, _v1g4.Z) end
end
if not _v1fg.crossOK and next(_v4.lfBarriers) and _v16w(_v1fg.pos, _v1g4) then
_v1g4 = Vector3.new(_v1fg.pos.X, _v1g4.Y, _v1fg.pos.Z)
_v1fg.dest = Vector3.new(_v1fg.pos.X, _v1fg.dest.Y, _v1fg.pos.Z)
if _v1fg.kind == _ei9m[1822] and _v1fg.phase == _ei9m[2047-3] then _v1fg.t0 = os.clock() - _v13p - 1 end
end
_v1fg.pos = _v1g4
_v1fg.cf = CFrame.lookAt(_v1fg.pos, _v1fg.pos + _v1fg.dir)
_v14e(_v1es, _v1fg.cf)
_v14b(_v1er, _v1fg.pos.Y)
_v4.lfY = _v1fg.pos.Y
if _v1fg.kind == _ei9m[2269-7] then
_v4.lfStatus = _ei9m[1249+178] .. _v1fg.phase
elseif _v1fg.kind == _ei9m[2889-4] then
_v4.lfStatus = (_v1fg.cross and _ei9m[1731] or _v1fg.critical and _ei9m[1367]
or _v1fg.toWater and _ei9m[2+2922] or _ei9m[4+344]) .. _v1fg.phase .. " ("
.. math.floor(Vector3.new(_v1fg.goal.X - _v1fg.pos.X, 0, _v1fg.goal.Z - _v1fg.pos.Z).Magnitude) .. _ei9m[7+1540]
else
_v4.lfStatus = (_v1fg.kind == _ei9m[2083] and _ei9m[66+190] or _ei9m[7+2480]) .. _v1fg.phase
end
if (_v1fg.pos - _v1fg.dest).Magnitude < 2 then
if _v1fg.kind == _ei9m[522+2134] then
if _v1fg.phase == _ei9m[4+392] then
_v1fg.phase, _v1fg.restT, _v1fg.pressed = _ei9m[722], _v1et, false
pcall(function()
local _v1g6 = Instance.new(_ei9m[2+1210])
_v1g6.Name = _ei9m[751+76]
_v1g6.Size = Vector3.new(40, 4, 40)
_v1g6.Position = _v1fg.pos - Vector3.new(0, _v1ev + 2, 0)
_v1g6.Anchored, _v1g6.CanCollide, _v1g6.CanQuery, _v1g6.CanTouch, _v1g6.Transparency = true, true, false, false, 1
_v1g6.Parent = workspace
_v1fg.plat = _v1g6
end)
pcall(function() _v1es.Anchored = true end)
_v4.lfAnchored = true
_v14b(_v1er, nil)
else
_v4.lfFly, _v4.lfProgPos = nil, nil
_v4.flyLandUntil = os.clock() + 10
_v4.lfY, _v4.lfLastScan = _v1fg.pos.Y, 0
end
elseif _v1fg.kind == _ei9m[807-2] then
if _v1fg.phase == _ei9m[1299+600] then
_v1fg.phase = _ei9m[3+1860]
elseif _v1fg.phase == _ei9m[459+1840] then
_v4.lfFly, _v4.lfProgPos = nil, nil
_v4.flyLandUntil = os.clock() + 10
_v4.lfY, _v4.lfLastScan, _v4.lfHeading = _v1fg.pos.Y, 0, _v1fg.dir
end
elseif _v1fg.phase == "up" and _v1fg.kind == _ei9m[2029] then
_v1fg.phase = _ei9m[669-7]
elseif _v1fg.phase == "up" then
local _v1g7 = _v1fg.overTo and Vector3.new(_v1fg.overTo.X, _v1fg.dest.Y, _v1fg.overTo.Z) or (_v1fg.dest + _v1fg.dir * _v13e)
if next(_v4.lfBarriers) and _v16j(_v1g7, _v13l) then _v1g7 = _v1fg.dest - _v1fg.dir * _v13e end
_v1fg.phase, _v1fg.dest = _ei9m[6+3070], _v1g7
elseif _v1fg.phase == _ei9m[1052] then
local _v1g8 = not _v1fg.dryDone and _v18c(_v1fg.dest, _v1fg.dir)
_v1fg.dryDone = true
if _v1g8 then
_v1fg.dest = _v1g8
else
local _v1g9 = _v13x(_v1fg.dest.X, _v1fg.dest.Y, _v1fg.dest.Z)
_v1fg.phase, _v1fg.dest = _ei9m[3+1820], Vector3.new(_v1fg.dest.X, (_v1g9 or (_v1fg.dest.Y - _v13d)) + _v1ev, _v1fg.dest.Z)
end
else
_v4.lfFly, _v4.lfProgPos = nil, nil
_v4.flyLandUntil = os.clock() + 10
end
end
return
end
local _v1ga = _v1ew and _v1ew.MovementState == _ei9m[3+1692]
if not _v1ew then
local _v1gb = _v184(_v1eu.X, _v1eu.Z, _v1eu.Y + 1500)
_v1ga = _v1gb ~= nil and _v1gb > _v1eu.Y - _v1ev and _v18q(_v1eu.X, _v1eu.Z, _v1eu.Y + 1500)
end
if _v1ga then
_v14b(_v1er, nil)
_v4.lfY = _v1eu.Y
else
if math.abs(_v1eu.Y - _v4.lfY) > 25 then _v4.lfY = _v1eu.Y end
local _v1gc = _v4.lfY - _v1ev
local _v1gd = _v13x(_v1eu.X, _v1gc + math.max(_v1ev * 0.75, 4), _v1eu.Z)
or _v13x(_v1eu.X, _v1gc + 90, _v1eu.Z)
if _v1gd then
if _v1gd >= _v4.lfY then
_v4.lfY = _v1gd + _v1ev
else
_v4.lfY = _v4.lfY + math.clamp(_v1gd + _v1ev - _v4.lfY, -_v13h * _v1eo, _v13g * _v1eo)
end
end
_v14b(_v1er, _v4.lfY)
end
if _v1ga then
_v4.lfSwimSince = _v4.lfSwimSince or _v1et
if _v1et - _v4.lfSwimSince > 1 then
_v4.lfSwimSince = nil
if _v4.lfDrink then _v4.lfDrink.swims = _v4.lfDrink.swims + 1 end
local _v1ge = _v4.lfHeading or _v147(_v1es.CFrame.LookVector, Vector3.new(0, 0, -1))
local _v1gf = _v18c(_v1eu, _v1ge)
if _v1gf then
if _v1cr(_v1es, _v1eu, _v1ev, _v1et, _v1gf) then return end
_v1ai(_v1es, _v1eu, _v1ev)
local _v1gg = _v184(_v1eu.X, _v1eu.Z, _v1eu.Y + 1500)
if _v1gg and _v4.lfFly.dest.Y < _v1gg + 20 then
_v4.lfFly.dest = Vector3.new(_v4.lfFly.dest.X, _v1gg + 20, _v4.lfFly.dest.Z)
end
_v4.lfFly.overTo, _v4.lfFly.dir = _v1gf, _v147(_v1gf - _v1eu, _v1ge)
return
end
end
else
_v4.lfSwimSince = nil
end
_v1a8()
if _v4.LF_FLEE and not _v13q.holdDrink(_v1eu, _v1et) then
local _v1gh = _v4.LF_AVOID or 200
local _v1gi, _v1gj
if _v1gh > 0 then
for _v1gk, _v1gl in ipairs(_v0:GetPlayers()) do
if _v1gl ~= _v2 and _v1gl.Character then
local _v1gm = _v4.getRootOf(_v1gl.Character, false)
if _v1gm then
local _v1gn = (_v1gm.Position - _v1eu).Magnitude
if not _v1gj or _v1gn < _v1gj then _v1gi, _v1gj = _v1gm.Position, _v1gn end
end
end
end
end
if _v1gi and (_v1gj <= _v1gh or (_v4.lfFleeing and _v1gj <= _v1gh * 1.5)) then
if not _v4.lfFleeing then _v1ae(nil) end
_v4.lfFleeing = true
_v4.lfHeading = _v147(_v1eu - _v1gi, _v4.lfHeading or Vector3.new(0, 0, -1))
if next(_v4.lfBarriers) and _v16j(_v1eu + _v4.lfHeading * _v13l, _v13l * 0.5) then
_v4.lfHeading = Vector3.new(-_v4.lfHeading.Z, 0, _v4.lfHeading.X)
end
do
local _v1go = _v1eu + _v4.lfHeading * 40
local _v1gp = _v1eu.Y + 1500
if (_v1ew and _v1ew.MovementState == _ei9m[672+1014]) or _v18q(_v1go.X, _v1go.Z, _v1gp) then
if _v1et >= (_v4.lfEsc.lockUntil or 0) and _v13q.start(_v1es, _v1eu, _v1ev, _v1et) then return end
local _v1gq = Vector3.new(-_v4.lfHeading.Z, 0, _v4.lfHeading.X)
local _v1gr, _v1gs = _v1eu + _v1gq * 40, _v1eu - _v1gq * 40
if not _v18q(_v1gr.X, _v1gr.Z, _v1gp) then _v4.lfHeading = _v1gq
elseif not _v18q(_v1gs.X, _v1gs.Z, _v1gp) then _v4.lfHeading = -_v1gq end
end
end
_v13q.noteDir(_v4.lfHeading, _v1eu, _v1et)
if _v13q.boxed(_v1et, _v1eu) and _v13q.start(_v1es, _v1eu, _v1ev, _v1et) then return end
_v4.lfEat = nil
_v14i(_ei9m[289+171], true)
_v14i(_ei9m[6+2203], not _v4.lfTired)
_v4.lfStatus = _ei9m[2330-9] .. math.floor(_v1gj) .. _ei9m[20-11]
return
end
_v4.lfFleeing = false
end
_v4.lfEsc.fleeSince, _v4.lfEsc.trail, _v4.lfEsc.baseDir = nil, nil, nil
if _v13q.drink(_v1es, _v1eu, _v1ev, _v1et) then return end
if not _v4.lfTarget and _v1et - (_v4.lfLastScan or 0) >= _v135 then
_v4.lfLastScan = _v1et
for _v1gt, _v1gu in pairs(_v4.lfExclude) do
if _v1gu <= _v1et then _v4.lfExclude[_v1gt] = nil end
end
if _v4.afkPickFood then
local _v1gv = _v4.khRange()
local _v1gw = _v145()
local _v1gx = _v1gw and (_v1gw.Position.Y - _v1eu.Y) or 8
local _v1h0, _v1h1, _v1h2, _v1h3 = _v4.afkPickFood(_v1eu, _v4.lfExclude, {
avoid = _v4.LF_AVOID or 200,
meat = _v4.dinoEatsMeat(),
maxDist = _v4.LF_MAX_DIST or 1000,
feetY = _v1eu.Y - _v1ev, yWeight = 5,
reach = function(_v1gy, _v1gz)
if not _v19e(_v1gy) then return false end
if not _v16q(_v1eu, _v1gy) then return false end
if _v1gz then return not _v19x(_v1gy, nil, _v1ev) end
return _v1a2(_v1gy, _v1gv, _v1ev, _v1gx)
end,
})
if _v1h0 and _v1h2 then
local _v1h4 = Vector3.new(_v1h2.X - _v1eu.X, 0, _v1h2.Z - _v1eu.Z).Magnitude
_v4.lfTarget = { id = _v1h0, idx = _v1h1, pos = _v1h2, isMeat = _v1h3, misses = 0, flyOuts = 0,
biteSeen = _v4.lfBiteN, eat = { id = _v1h0, idx = _v1h1, meat = _v1h3 }, deadline = _v1et + _v1ab(_v1h4) }
end
end
end
local _v1h5 = _v4.lfTarget
if not _v1h5 then
if _v4.LF_CIRCLE then
_v4.lfIdleC = _v4.lfIdleC or _v1eu
_v14r(_v4.lfIdleC, _v1eu)
_v4.lfEat, _v4.lfProgPos = nil, nil
else
_v14o()
_v4.lfEat, _v4.lfHeading, _v4.lfProgPos = nil, nil, nil
end
_v4.lfStatus = _v4.afkPickFood and _ei9m[1179] or _ei9m[2461]
_v4.lfNoFoodSince = _v4.lfNoFoodSince or _v1et
if _v4.afkPickFood and _v1et - _v4.lfNoFoodSince > 30 and _v1et - (_v4.lfRelocateAt or 0) > 60 then
_v4.lfRelocateAt = _v1et
local _v1h6 = _v4.khRange()
local _v1h7 = _v145()
local _v1h8 = _v1h7 and (_v1h7.Position.Y - _v1eu.Y) or 8
local _v1hb = {
avoid = _v4.LF_AVOID or 200, meat = _v4.dinoEatsMeat(), maxDist = math.max(_v4.LF_MAX_DIST or 1000, 2000),
reach = function(_v1h9, _v1ha)
if not _v19e(_v1h9) then return false end
if not _v16q(_v1eu, _v1h9) then return false end
if _v1ha then return not _v19x(_v1h9, nil, _v1ev) end
return _v1a2(_v1h9, _v1h6, _v1ev, _v1h8)
end,
}
local _v1hc, _v1hd, _v1he, _v1hf = pcall(_v4.afkPickFood, _v1eu, _v4.lfExclude, _v1hb)
local _v1hg = false
if _v1hc and not _v1hd and next(_v4.lfBarriers) and _v17i(_v1eu) then
_v1hb.reach = function(_v1hh, _v1hi)
if not _v19e(_v1hh) then return false end
if _v16j(_v1hh, _v13l) then return false end
if _v1hi then return not _v19x(_v1hh, nil, _v1ev) end
return _v1a2(_v1hh, _v1h6, _v1ev, _v1h8)
end
_v1hc, _v1hd, _v1he, _v1hf = pcall(_v4.afkPickFood, _v1eu, _v4.lfExclude, _v1hb)
_v1hg = true
end
if _v1hc and _v1hd and _v1hf then
_v1ai(_v1es, _v1eu, _v1ev)
_v4.lfFly.crossOK = _v1hg
_v4.lfFly.dest = Vector3.new(_v1eu.X, math.max(_v1hf.Y, _v1eu.Y) + _v1ev + _v13d, _v1eu.Z)
_v4.lfFly.overTo = _v1hf
_v4.lfFly.dir = _v147(_v1hf - _v1eu, _v4.lfFly.dir)
_v4.lfStatus = _ei9m[2383] .. math.floor((_v1hf - _v1eu).Magnitude) .. _ei9m[1345-19]
end
end
return
end
_v4.lfNoFoodSince = nil
_v4.lfIdleC = nil
if not _v1h5.isMeat and _v4.afkPickFood and _v4.dinoEatsMeat() and _v1et - (_v1h5.meatLookT or 0) >= 8 then
_v1h5.meatLookT = _v1et
local _v1hj = _v4.khRange()
local _v1hk = _v145()
local _v1hl = _v1hk and (_v1hk.Position.Y - _v1eu.Y) or 8
local _v1ho, _v1hp, _v1hq, _v1hr, _v1hs = pcall(_v4.afkPickFood, _v1eu, _v4.lfExclude, {
avoid = _v4.LF_AVOID or 200, meat = true, maxDist = _v4.LF_MAX_DIST or 1000,
feetY = _v1eu.Y - _v1ev, yWeight = 5,
reach = function(_v1hm, _v1hn)
if not _v19e(_v1hm) then return false end
if not _v16q(_v1eu, _v1hm) then return false end
if _v1hn then return not _v19x(_v1hm, nil, _v1ev) end
return _v1a2(_v1hm, _v1hj, _v1ev, _v1hl)
end,
})
if _v1ho and _v1hp and _v1hr and _v1hs and _v1hp ~= _v1h5.id then
local _v1ht = Vector3.new(_v1hr.X - _v1eu.X, 0, _v1hr.Z - _v1eu.Z).Magnitude
_v4.lfTarget = { id = _v1hp, idx = _v1hq, pos = _v1hr, isMeat = true, misses = 0, flyOuts = 0,
biteSeen = _v4.lfBiteN, eat = { id = _v1hp, idx = _v1hq, meat = true }, deadline = _v1et + _v1ab(_v1ht) }
_v4.lfEat, _v4.lfProgPos = nil, nil
_v1h5 = _v4.lfTarget
end
end
local _v1hu, _v1hv, _v1hw = _v4.afkBufCheck(_v1h5.id, _v1h5.idx)
if _v1h5.isMeat and _v1hu == nil then _v1ae(_v136) return end
if _v1hu ~= nil and (not _v1hw or _v1hu + (_v1hv or 0) <= 0) then
_v1ae(5)
return
end
if _v1hu ~= nil and not _v1h5.isMeat and (_v4.LF_SCRAPS or _v4.LEAVE_SCRAPS) and _v4.isScraps(_v1hu) then
_v4.lfExclude[_v1h5.id] = os.clock() + 300
_v1ae(nil)
return
end
local _v1hx = _v145()
local _v1hy = _v1hx and _v1hx.Position or _v1eu
local _v1hz = _v4.khRange()
local _v1i0 = _v1h5.pos - _v1hy
local _v1i1 = Vector3.new(_v1i0.X, 0, _v1i0.Z).Magnitude
local _v1i2 = math.sqrt(math.max((_v1hz * 0.9) ^ 2 - _v1i0.Y * _v1i0.Y, 0))
local _v1i3 = _v1h5.creep and 3 or math.max(_v1i2 * _v133, 3)
if _v1i1 <= math.max(_v1hz * 1.5, 20) and math.abs(_v1i0.Y) > _v1hz * 0.95 then
_v1h5.vertSince = _v1h5.vertSince or _v1et
if _v1et - _v1h5.vertSince > _v138 then
_v1ae(_v137)
return
end
else
_v1h5.vertSince = nil
end
if _v1h5.holding then
if _v1i1 > _v1i3 + 6 then _v1h5.holding = false end
elseif _v1i1 <= _v1i3 then
_v1h5.holding = true
end
_v4.lfHeading = _v147(_v1h5.pos - _v1eu, _v4.lfHeading)
if not _v1h5.holding and _v1et - (_v1h5.wetT or 0) >= 1 then
_v1h5.wetT = _v1et
local _v1i4, _v1i5 = _v19k(_v1eu, _v1h5.pos)
if _v1i5 then _v1ae(_v137) return end
if _v1i4 and _v1cr(_v1es, _v1eu, _v1ev, _v1et, _v1i4) then return end
end
_v4.lfEat = (_v1i0.Magnitude <= _v1hz * 0.95) and _v1h5.eat or nil
local _v1i6, _v1i7 = _v4.myFood()
local _v1i8 = _v1i6 and _v1i7 and _v1i7 > 0 and _v1i6 >= _v1i7 - _v4.foodGap(_v1i7, 1)
if _v4.lfBiteN ~= _v1h5.biteSeen then
_v1h5.biteSeen = _v4.lfBiteN
if _v1hu and _v1h5.lastFood and _v1hu < _v1h5.lastFood then
_v4.noteBiteDrop(_v1h5.lastFood - _v1hu)
_v1h5.misses = 0
_v1h5.lastEat = _v1et
elseif _v1h5.lastFood ~= nil and not _v1i8 then
_v1h5.misses = _v1h5.misses + 1
end
_v1h5.lastFood = _v1hu
end
if _v1h5.holding and not _v1h5.creep and _v1h5.misses >= _v139 then
_v1h5.creep, _v1h5.holding, _v1h5.misses = true, false, 0
_v1h5.deadline = _v1et + _v1ab(_v1i1)
elseif _v1h5.creep and _v1h5.holding and _v1h5.misses >= _v13a then
_v1ae(_v136)
return
end
if _v1h5.holding and _v4.lfEat then
if _v4.foodNoGain(_v1h5, _v1et) then _v1ae(_v4.NO_GAIN_SKIP) return end
else
_v1h5.gainT = nil
end
if _v4.LF_UNSTUCK and _v1h5.holding and not _v1i8 then
_v1h5.hungrySince = _v1h5.hungrySince or _v1et
if _v1et - math.max(_v1h5.lastEat or 0, _v1h5.hungrySince) > (_v4.UNSTUCK_EAT_SECS or 25) then
_v1ae(_v136)
return
end
elseif _v1i8 then
_v1h5.hungrySince = nil
end
if _v1h5.holding then
if _v4.LF_CIRCLE then
_v14r(_v1h5.pos, _v1eu)
else
_v14i(_ei9m[1050-20], false)
_v14i(_ei9m[5+2526], false)
end
_v4.lfProgPos = nil
_v4.lfStatus = _ei9m[553+68] .. _v1h5.id .. " (" .. math.floor(_v1i1) .. _ei9m[2104-7] .. _v1h5.misses .. ")"
return
end
if next(_v4.lfBarriers) and _v4.lfHeading
and _v16j(_v1eu + _v4.lfHeading * _v13l, _v13l * 0.5) then
_v14o()
_v1ae(_v136)
return
end
if _v1h5.deadline and _v1et > _v1h5.deadline then _v1ae(_v136) return end
local _v1i9 = false
_v14i(_ei9m[2003], false)
_v14i(_ei9m[410+120], true)
_v14i(_ei9m[176], _v1i9)
local _v1ia = _v1ew and _v1ew.Movement and _v1ew.Movement.MoveActionsBlocked
if _v4.LF_UNSTUCK and not _v1ia then
if not _v4.lfProgPos
or Vector3.new(_v1eu.X - _v4.lfProgPos.X, 0, _v1eu.Z - _v4.lfProgPos.Z).Magnitude > _v13c then
_v4.lfProgPos, _v4.lfProgT = _v1eu, _v1et
elseif _v1et - _v4.lfProgT > _v13b then
_v1h5.flyOuts = _v1h5.flyOuts + 1
_v1ai(_v1es, _v1eu, _v1ev)
if _v1h5.flyOuts >= 2 then _v1ae(_v136) end
return
end
end
_v4.lfStatus = (_v1i9 and _ei9m[2502+479] or (_v1ga and _ei9m[293] or _ei9m[1102+1168])) .. _ei9m[1101] .. _v1h5.id
.. " (" .. math.floor(_v1i1) .. _ei9m[397+489]
end
function _v4.lfPin()
local _v1ib = _v4.lfFly
if _v4.UNLOADED or not _v4.LEGIT_FARM or not _v1ib or not _v1ib.cf or _v4.mvHold() then return end
local _v1ic = _v4.getLocalPhysicsRoot()
if _v1ic and not _v1ic.Anchored then _v14e(_v1ic, _v1ib.cf) end
end
local function _v1id()
if _v4.lfWalkState then return true end
pcall(function()
local _v1ie = _v4.req(_v2.PlayerScripts.Client.Classes.Character.Movement.States.Walking)
local _v1if = rawget(_v1ie, _ei9m[2525-1])
if type(_v1if) ~= _ei9m[7+22] then return end
_v1ie.AdjustDirection = function(self, _v1ig, ...)
local _v1ih = _v4.lfHeading
if _v1ih and _v4.LEGIT_FARM and _v4.lfWasOn and not _v4.lfFly and not _v4.lfResting
and _v4.lfHeld and _v4.lfHeld.Forward then
return _v1ih
end
return _v1if(self, _v1ig, ...)
end
_v4.lfWalkState = { mod = _v1ie, orig = _v1if }
end)
return _v4.lfWalkState ~= nil
end
_v4.lfSteerPatch = _v1id
function _v4.lfSteer(_v1ii)
if _v4.UNLOADED or not _v4.LEGIT_FARM or not _v4.lfWasOn or _v4.lfFly or _v4.lfResting then return end
if _v4.lfWalkState then return end
local _v1ij = _v4.lfHeading
local _v1ik = workspace.CurrentCamera
if not _v1ij or not _v1ik or _v1ik.CameraType ~= Enum.CameraType.Custom then return end
local _v1il = _v1ik.CFrame
local _v1im = _v1il.LookVector
if Vector3.new(_v1im.X, 0, _v1im.Z).Magnitude < 1e-3 then return end
local _v1in = math.atan2(-_v1im.X, -_v1im.Z)
local _v1io = math.atan2(-_v1ij.X, -_v1ij.Z)
local _v1ip = math.clamp(math.atan2(math.sin(_v1io - _v1in), math.cos(_v1io - _v1in)),
-_v13k * (_v1ii or 0.016), _v13k * (_v1ii or 0.016))
if math.abs(_v1ip) < 1e-4 then return end
local _v1iq = CFrame.Angles(0, _v1ip, 0)
local _v1ir = _v1ik.Focus.Position
_v1ik.CFrame = CFrame.new(_v1ir + _v1iq * (_v1il.Position - _v1ir)) * (_v1iq * _v1il.Rotation)
end
local _v1is = false
local function _v1it()
if _v4.IS_XENO then return _vjk end
local _v1iu, _v1iv = pcall(function() return isrbxactive() end)
if _v1iu and type(_v1iv) == _ei9m[1896-5] then return _v1iv end
return _vjk
end
local function _v1iw()
if not _v1is then return end
_v1is = false
local _v1ix = _v4.getCS()
if _v1ix and _v1ix.Controls then pcall(function() _v1ix.Controls.WindowUnfocused = not _v1it() end) end
if getgenv then getgenv().EazyCheats_TabOut = nil end
end
_v4.lfRestoreInput = _v1iw
function _v4.lfKeepInput()
if not (_v4.LEGIT_FARM and _v4.LF_TABOUT) or _v4.UNLOADED then _v1iw() return end
if _v1it() then _v1iw() return end
local _v1iy = _v4.getCS()
local _v1iz = _v1iy and _v1iy.Controls
if not _v1iz then return end
_v1is = true
if _v1iz.WindowUnfocused ~= false then pcall(function() _v1iz.WindowUnfocused = false end) end
if _v1iz.InputWasBlocked == true then pcall(function() _v1iz.InputWasBlocked = false end) end
if getgenv then
getgenv().EazyCheats_TabOut = (_v4.lfHeld.Forward and ((_v4.lfHeld.Run and _ei9m[3+1221] or _ei9m[2255-20]) .. _ei9m[1530]))
or (_v4.lfFly and _ei9m[2519+78]) or (_v4.lfResting and _ei9m[2702-17]) or _ei9m[792-15]
end
end
table.insert(_v2l, _v1.RenderStepped:Connect(_v4.lfAdvance))
table.insert(_v2l, _v1.Heartbeat:Connect(_v4.lfPin))
pcall(function()
_v1:BindToRenderStep(_ei9m[308+485], Enum.RenderPriority.Camera.Value + 2, _v4.lfSteer)
end)
end
_v4.lfSetup()
function _v4.asSetup()
local _v1j0 = game:GetService(_ei9m[2042-9])
_v4.asDone = {}
_v4.asSkip = {}
_v4.asStatus = _ei9m[4+330]
local function _v1j1()
local _v1j2
pcall(function() _v1j2 = _v4.req(_v1j0.Packages.Knit) end)
return _v1j2
end
local function _v1j3()
local _v1j4
pcall(function() _v1j4 = _v1j1().GetController(_ei9m[693-19]) end)
return _v1j4
end
local function _v1j5(_v1j6)
local _v1j7
pcall(function() _v1j7 = _v4.req(_v1j0.DinosaurData[_v1j6]) end)
return _v1j7
end
local function _v1j8(_v1j9, _v1ja)
pcall(function() if _v4.Hub then _v4.Hub:Notify(_ei9m[2537-7] .. _v1j9, _v1ja or 6) end end)
end
local function _v1jb()
local _v1jc = _v1j1()
return (_v1jc and _v1jc.Roster) or {}
end
local function _v1jd(_v1je)
local _v1jf
pcall(function() _v1jf = _v1j3().Dinosaurs[_v1je] end)
return _v1jf and true or false
end
local function _v1jg(_v1jh)
local _v1ji
pcall(function()
local _v1jj = tonumber(_v1j3().DinosaursData[_v1jh].Pricing.Amber)
if _v1jj and _v1jj > 0 then
_v1ji = _v1j1().GetController(_ei9m[2399]):GetDinosaurAmberCost(_v1jh)
end
end)
return tonumber(_v1ji)
end
local function _v1jk()
local _v1jl
pcall(function() _v1jl = _v1j3().Currencies.Amber end)
return tonumber(_v1jl) or 0
end
local function _v1jm(_v1jn)
if _v1jn >= 1e6 then return (math.floor(_v1jn / 1e4 + 0.5) / 100) .. "M" end
if _v1jn >= 1e3 then return math.floor(_v1jn / 1e3 + 0.5) .. "K" end
return tostring(math.floor(_v1jn))
end
function _v4.asAvailable()
local _v1jo = {}
for _v1jp, _v1jq in ipairs(_v1jb()) do
if _v1jd(_v1jq) then _v1jo[#_v1jo + 1] = _v1jq end
end
return _v1jo
end
function _v4.asLabel(_v1jr)
if not _v1jr or _v1jr == _ei9m[750] then return _ei9m[142+1] end
if _v1jd(_v1jr) then return _v1jr .. _ei9m[6+2586] end
local _v1js = _v1jg(_v1jr)
return _v1jr .. (_v1js and (_ei9m[436+72] .. _v1jm(_v1js) .. _ei9m[111-8]) or _ei9m[7+1751])
end
function _v4.asNameOf(_v1jt)
if type(_v1jt) ~= _ei9m[1386] then return nil end
return _v1jt:match(_ei9m[5+512]) or _v1jt
end
function _v4.asItems()
local _v1ju = { _ei9m[2901] }
for _v1jv, _v1jw in ipairs(_v1jb()) do _v1ju[#_v1ju + 1] = _v4.asLabel(_v1jw) end
return _v1ju
end
_v4.asDropdowns = {}
function _v4.asRefreshLists()
local _v1jx = _v4.asItems()
for _v1jy = 1, 6 do
local _v1jz = _v4.asDropdowns[_v1jy]
if _v1jz and _v1jz.Refresh then pcall(function() _v1jz:Refresh(_v1jx, true) end) end
local _v1k0 = _v4.AS_SLOTS and _v4.AS_SLOTS[_v1jy]
if _v1jz and _v1jz.Set and _v1k0 and _v1k0 ~= _ei9m[146+2931] then pcall(function() _v1jz:Set(_v4.asLabel(_v1k0), true) end) end
end
end
local function _v1k1(_v1k2)
local _v1k3, _v1k4 = _v1j5(_v1k2), nil
pcall(function() _v1k4 = _v4.req(_v1j0.Common.GetGrowthIndex):GetHighestGrowthStage(_v1k3.GrowthStages) end)
return _v1k4
end
local function _v1k5(_v1k6)
local _v1k7
pcall(function()
_v1k7 = _v1j3().Replica.Data[_ei9m[500-12] .. _v1k6 .. "_" .. (_v4.saveGender(_v4.AS_GENDER) or _ei9m[462]) .. "_1"].Growth.Stage
end)
return _v1k7
end
local function _v1k8(_v1k9, _v1ka)
if not _v1ka then return false end
if _v1ka == _ei9m[58+2] then return true, _ei9m[2+806] end
if _v1ka == _v1k1(_v1k9) then return true, _ei9m[246+769] .. _v1ka .. _ei9m[1093] end
return false
end
pcall(function() _v4.AS_DONE_FILE = _ei9m[1655-18] .. _v2.UserId .. _ei9m[1932-15] end)
function _v4.asDoneRead()
local _v1kb, _v1kc = pcall(function()
return game:GetService(_ei9m[7+2612]):JSONDecode(readfile(_v4.AS_DONE_FILE))
end)
return (_v1kb and type(_v1kc) == _ei9m[5+354] and type(_v1kc.list) == _ei9m[372-16]) and _v1kc or { list = {} }
end
function _v4.asDoneAdd(_v1kd, _v1ke)
if type(_v1kd) ~= _ei9m[6+2905] or not _v4.AS_DONE_FILE then return end
_v1ke = (_v1ke == "F" or _v1ke == _ei9m[599-20]) and _ei9m[716+433] or _ei9m[6+3045]
local _v1kf = _v4.asDoneRead()
for _v1kg, _v1kh in ipairs(_v1kf.list) do
if _v1kh.sp == _v1kd and _v1kh.g == _v1ke then return end
end
local _v1ki
pcall(function() _v1ki = _v1j1().Ecosystem end)
table.insert(_v1kf.list, { sp = _v1kd, g = _v1ke, map = _v1ki, t = os.time() })
pcall(function()
if not isfolder(_ei9m[2967]) then makefolder(_ei9m[3+2038]) end
writefile(_v4.AS_DONE_FILE, game:GetService(_ei9m[2245]):JSONEncode(_v1kf))
end)
end
function _v4.asRefreshDone()
for _v1kj, _v1kk in ipairs(_v1jb()) do
if _v1jd(_v1kk) and _v1k8(_v1kk, _v1k5(_v1kk)) then _v4.asDoneAdd(_v1kk, _v4.AS_GENDER) end
end
local _v1kl = {}
for _v1km, _v1kn in ipairs(_v4.asDoneRead().list) do
_v1kl[#_v1kl + 1] = tostring(_v1kn.sp) .. (_v1kn.g == _ei9m[7+1993] and _ei9m[1466] or _ei9m[2906-11])
end
local _v1ko = #_v1kl > 0 and (_ei9m[199] .. #_v1kl .. _ei9m[36-18] .. table.concat(_v1kl, ", ")) or _ei9m[1918]
local _v1kp = _v4.asDoneLabel
if _v1kp and _v1kp.SetText then pcall(function() _v1kp:SetText(_v1ko) end) end
return _v1ko
end
local function _v1kq()
local _v1kr = _v2.Character
return (_v1kr and _v1kr:GetAttribute(_ei9m[668+95])) or _v2:GetAttribute(_ei9m[5+152])
end
local function _v1ks()
local _v1kt = _v4.getCS()
local _v1ku
pcall(function() _v1ku = _v1kt.Replica.Data.Growth end)
local _v1kv = _v1kq()
if type(_v1ku) ~= _ei9m[1343+10] or not _v1kv then return false end
if _v1ku.Stage == _ei9m[5+786] then return true, _ei9m[6+2482] end
if _v1ku.NextStage == _ei9m[2+476] then return true, _ei9m[2460-6] .. tostring(_v1ku.Stage) .. _ei9m[1028+392] end
return false
end
local _v1kw = {}
local function _v1kx(_v1ky)
if _v1kw[_v1ky] then return _v1kw[_v1ky] end
local _v1kz
pcall(function()
local _v1l0 = _v1j5(_v1ky).GrowthStages[_v1k1(_v1ky)]
_v1l0 = _v1l0[_v4.AS_GENDER or _ei9m[1724]] or _v1l0.Male or _v1l0
_v1kz = tonumber(_v1l0.CoreStats.Weight)
end)
_v1kw[_v1ky] = _v1kz or math.huge
return _v1kw[_v1ky]
end
local function _v1l1()
local _v1l2 = {}
if not _v4.AS_AUTO_ORDER then
local _v1l3 = {}
for _v1l4, _v1l5 in ipairs(_v1jb()) do _v1l3[_v1l5] = true end
for _v1l6 = 1, 6 do
local _v1l7 = _v4.AS_SLOTS[_v1l6]
if _v1l7 and _v1l7 ~= _ei9m[1335-13] and _v1l3[_v1l7] then _v1l2[#_v1l2 + 1] = _v1l7 end
end
if #_v1l2 > 0 then return _v1l2 end
end
for _v1l8, _v1l9 in ipairs(_v1jb()) do _v1l2[#_v1l2 + 1] = _v1l9 end
table.sort(_v1l2, function(_v1la, _v1lb)
local _v1lc, _v1ld = _v1jd(_v1la), _v1jd(_v1lb)
if _v1lc ~= _v1ld then return _v1lc end
local _v1le, _v1lf = _v1kx(_v1la), _v1kx(_v1lb)
if _v1le ~= _v1lf then return _v1le < _v1lf end
return _v1la < _v1lb
end)
return _v1l2
end
local function _v1lg(_v1lh)
local _v1li = {}
for _v1lj, _v1lk in ipairs(_v1jb()) do _v1li[_v1lk] = true end
local _v1ll = _v1jk()
for _v1lm, _v1ln in ipairs(_v1l1()) do
if _v1ln and _v1ln ~= _ei9m[762+325] and _v1ln ~= _v1lh and _v1li[_v1ln] and not _v4.asDone[_v1ln] and not _v4.asSkip[_v1ln] then
if _v1jd(_v1ln) then
if not _v1k8(_v1ln, _v1k5(_v1ln)) then return _v1ln end
elseif _v4.AS_AUTOBUY then
local _v1lo = _v1jg(_v1ln)
if _v1lo and _v1lo <= _v1ll then return _v1ln, _v1lo end
end
end
end
return nil
end
local function _v1lp(_v1lq)
local _v1lr, _v1ls = {}, 0
for _v1lt, _v1lu in ipairs(_v1l1()) do
if _v1lu and _v1lu ~= _ei9m[2453-17] then
if _v4.asSkip[_v1lu] or not _v1jd(_v1lu) then
_v1ls = _v1ls + 1
elseif _v1lu == _v1lq or _v4.asDone[_v1lu] or _v1k8(_v1lu, _v1k5(_v1lu)) then
_v1lr[#_v1lr + 1] = _v1lu
end
end
end
local _v1lv = (#_v1lr > 0) and (_ei9m[7+1137] .. table.concat(_v1lr, ", ")) or _ei9m[2466-1]
if _v1ls > 0 then _v1lv = _v1lv .. "; " .. _v1ls .. (_v4.AS_AUTOBUY and _ei9m[7+2558] or _ei9m[47]) end
return _v1lv .. _ei9m[220]
end
local function _v1lw(_v1lx)
return _v1lx and _v1lx.FoundWater and not (_v1lx.Classifications and _v1lx.Classifications.IsSemiAquatic)
end
local function _v1ly()
local _v1lz = _v4.getCS()
if _v2:GetAttribute(_ei9m[2344]) then return false, _ei9m[1947] end
if _v1lz and _v1lz.MovementState == _ei9m[408+253] then return false, _ei9m[49] end
if _v1lw(_v1lz) then return false, _ei9m[1939-16] end
if _v1lz and _v1lz.UsingTimedAction then return false, _ei9m[2295] end
local _v1m0 = false
pcall(function() _v1m0 = _v1lz.Classifications.IsApex and _v1lz.Movement:IsMoving() end)
if _v1m0 then return false, _ei9m[1850-4] end
return true
end
local _v1m1
local function _v1m2(_v1m3, _v1m4, _v1m5)
if not _v1m1 then
_v1m1 = RaycastParams.new()
_v1m1.FilterType = Enum.RaycastFilterType.Include
local _v1m6 = { workspace.Terrain }
local _v1m7 = workspace:FindFirstChild(_ei9m[2513])
local _v1m8 = _v1m7 and _v1m7:FindFirstChild(_ei9m[1576])
if _v1m8 then _v1m6[2] = _v1m8 end
_v1m1.FilterDescendantsInstances = _v1m6
_v1m1.IgnoreWater = false
end
local _v1m9 = workspace:Raycast(Vector3.new(_v1m3, _v1m5, _v1m4), Vector3.new(0, -3000, 0), _v1m1)
if not _v1m9 then return nil end
return _v1m9.Position.Y, _v1m9.Material == Enum.Material.Water
end
local function _v1ma()
local _v1mb, _v1mc = _v4.getLocalPhysicsRoot(), _v2.Character
if not (_v1mb and _v1mc) then return false end
local _v1md = _v1mb.Position
local _v1me = _v1md.Y + 1500
local _v1mf, _v1mg
for _v1mh = 20, 400, 20 do
for _v1mi = 0, 15 do
local _v1mj = _v1mi * math.pi / 8
local _v1mk, _v1ml = _v1md.X + math.cos(_v1mj) * _v1mh, _v1md.Z + math.sin(_v1mj) * _v1mh
local _v1mm, _v1mn = _v1m2(_v1mk, _v1ml, _v1me)
if _v1mm and not _v1mn then _v1mf, _v1mg = Vector3.new(_v1mk, _v1mm, _v1ml), _v1mm break end
end
if _v1mf then break end
end
if not _v1mf then return false end
local _v1mo = 6
pcall(function()
local _v1mp = _v4.getCS().Alignment
local _v1mq = (_v1mp.RideHeight or 0) + (_v1mp.BodyHeightIncrease or 0)
if _v1mq > 0 then _v1mo = _v1mq end
end)
local _v1mr = _v1m2(_v1md.X, _v1md.Z, _v1me) or _v1md.Y
local _v1ms = math.max(_v1mr, _v1mg, _v1md.Y) + 30
local _v1mt = { Vector3.new(_v1md.X, _v1ms, _v1md.Z), Vector3.new(_v1mf.X, _v1ms, _v1mf.Z), Vector3.new(_v1mf.X, _v1mg + _v1mo, _v1mf.Z) }
local _v1mu, _v1mv = _v1md, _v1mb.CFrame - _v1mb.CFrame.Position
for _v1mw, _v1mx in ipairs(_v1mt) do
local _v1my = os.clock()
while (_v1mu - _v1mx).Magnitude > 1 and os.clock() - _v1my < 30 and not _v4.UNLOADED do
local _v1mz = task.wait()
_v1mu = _v4.govNext(_v1mu, _v1mx, _v1mz)
pcall(function()
_v1mc:SetAttribute(_ei9m[1063-7], _v1mu.Y)
_v1mb.CFrame = CFrame.new(_v1mu) * _v1mv
_v1mb.AssemblyLinearVelocity = Vector3.zero
_v1mb.AssemblyAngularVelocity = Vector3.zero
end)
end
end
_v4.flyLandUntil = os.clock() + 10
pcall(function() _v1mc:SetAttribute(_ei9m[1410-19], nil) end)
return true
end
_v4.asLeaveWater = _v1ma
local function _v1n0(_v1n1)
local _v1n2 = _v1j1()
local _v1n3 = _v1n2.GetService(_ei9m[27])
local _v1n4 = _v1n2.GetController(_ei9m[6+1419])
local _v1n5 = _v4.getCS()
if os.clock() < (_v4.rtmFailUntil or 0) then return false end
_v1n5.UsingTimedAction = true
_v2:SetAttribute(_ei9m[482-5], true)
if not pcall(function() _v1n3:BeginReturnToMenu() end) then
_v4.rtmFailUntil = os.clock() + 60
pcall(function() _v2:SetAttribute(_ei9m[1873-7], false) end)
_v1n5.UsingTimedAction = false
return false
end
local _v1n6 = 30
pcall(function() _v1n6 = tonumber(_v1n3:GetReturnToMenuDuration()) or 30 end)
local _v1n7 = os.clock() + _v1n6 + 1
local _v1n8, _v1n9 = true, false
while os.clock() < _v1n7 do
_v4.asStatus = _ei9m[484-12] .. math.ceil(_v1n7 - os.clock()) .. "s)"
local _v1na = false
pcall(function() _v1na = _v1n5.Classifications.IsApex and _v1n5.Movement:IsMoving() end)
if _v4.UNLOADED then
_v1n8, _v1n9 = false, true
break
end
if not _v1n1() or _v2:GetAttribute(_ei9m[7+3036])
or (_v1n5.Actions and _v1n5.Actions.Run) or _v1lw(_v1n5) or _v1na then
_v1n8 = false
break
end
task.wait(0.2)
end
if _v1n8 then
_v1n3:Despawn()
_v1n4:StartMainMenu()
end
if _v1n9 then
task.delay(math.max(0, _v1n7 - os.clock()), function()
pcall(function() _v1n3:Despawn() end)
pcall(function() _v1n4:StartMainMenu() end)
pcall(function() _v2:SetAttribute(_ei9m[2+1585], false) end)
pcall(function() _v1n5.UsingTimedAction = false end)
end)
return false
end
_v2:SetAttribute(_ei9m[6+3039], false)
_v1n5.UsingTimedAction = false
return _v1n8
end
_v4.asSafeToLeave, _v4.asReturnToMenu = _v1ly, _v1n0
local function _v1nb(_v1nc, _v1nd)
_v1nd = _v4.saveGender(_v1nd) or _v4.saveGender(_v4.AS_GENDER) or _ei9m[826]
local _v1ne = _v1j1()
local _v1nf = _v1ne.GetService(_ei9m[3+163])
pcall(function()
local _v1ng = _v1ne.GetController(_ei9m[2+498])
if _v1ng.WelcomeGui then
_v1ng.WelcomeGui:Destroy()
_v1ng.WelcomeGui = nil
_v1ng:StartMainMenu()
task.wait(2)
end
end)
local _v1nh = _ei9m[1127+314]
pcall(function() _v1nh = _v1j3().Replica.Data.SkinInventory[_v1nc].LastSelected or _ei9m[1438] end)
local _v1ni = _v1ne.GetController(_ei9m[2828])
local _v1nj = false
_v4.asSpawnInfo = nil
pcall(function()
if _v1ni:GetDeathGraceStatus(_v1nc).HoldingSlot == true then
pcall(function() _v1ni:EndDeathGrace(_v1nc) end)
_v1nj = _v1ni:GetDeathGraceStatus(_v1nc).HoldingSlot == true
_v4.asSpawnInfo = _ei9m[34-10] .. tostring(_v1nj)
end
end)
local _v1nk, _v1nl = os.clock() + 600, 0
while not _v1nj and os.clock() < _v1nk and not _v4.UNLOADED do
local _v1nm, _v1nn, _v1no = pcall(function() return _v1ni:RequestSlot(_v1nc) end)
_v4.asSpawnInfo = _ei9m[6+2816] .. _v1nc .. _ei9m[757+1029] .. tostring(_v1nm and _v1nn) .. " " .. tostring(_v1nm and _v1no or _v1nn)
if _v1nm and _v1nn then _v1nj = true break end
if not _v1nm then break end
if _v1no == _ei9m[3+32] then
_v4.asStatus = _ei9m[1359+1134] .. _v1nc
else
_v1nl = _v1nl + 1
_v4.asStatus = _ei9m[1501] .. _v1nc .. " (" .. tostring(_v1no) .. ")"
if _v1nl >= 3 then break end
end
task.wait(3)
end
if not _v1nj and os.clock() >= _v1nk then return false end
if _v1nj then task.wait(2) end
_v4.asStatus = _ei9m[637] .. _v1nc
local function _v1np()
local _v1nq = _v2.Character
return _v1nq ~= nil and _v1nq.Parent ~= nil and _v1nq:GetAttribute(_ei9m[515]) == _v1nc
end
local _v1nr, _v1ns, _v1nt = os.clock() + 60, 0, 0
while os.clock() < _v1nr and not _v1np() do
if _v1ns < 3 and os.clock() >= _v1nt then
_v1ns = _v1ns + 1
_v1nt = os.clock() + 20
local _v1nu, _v1nv, _v1nw = pcall(function()
return _v1nf:InitiateSpawning({ Species = _v1nc, Gender = _v1nd or _v4.AS_GENDER or _ei9m[1810], Skin = _v1nh, Variant = _ei9m[2545] })
end)
_v4.asSpawnInfo = (_v4.asSpawnInfo or "") .. _ei9m[2076-16] .. _v1ns .. _ei9m[2454-20] .. tostring(_v1nu) .. " " .. tostring(_v1nv) .. " " .. tostring(_v1nw)
end
task.wait(0.5)
end
pcall(_v4.autoSpawnCleanupGUI)
if _v1np() then _v4.closeMainMenu() end
return _v1np() and true or false
end
_v4.asSpawnDino = _v1nb
function _v4.closeMainMenu()
local _v1nx
pcall(function() _v1nx = _v1j1().GetController(_ei9m[152-14]) end)
if _v1nx then
pcall(function()
if _v1nx.currentMainMenuWindow and _v1nx.currentMainMenuWindow.Class then _v1nx.currentMainMenuWindow.Class:Destroy() end
_v1nx.currentMainMenuWindow = nil
end)
pcall(function() if _v1nx.MainMenuGui then _v1nx.MainMenuGui:Destroy() end _v1nx.MainMenuGui = nil end)
pcall(function() if _v1nx.BoostsGui then _v1nx.BoostsGui:Destroy() end _v1nx.BoostsGui = nil end)
end
pcall(function()
for _v1ny, _v1nz in ipairs(_v2.PlayerGui:GetChildren()) do
if _v1nz.Name == _ei9m[1131] or _v1nz.Name == _ei9m[2+3048] then _v1nz:Destroy() end
end
end)
end
function _v4.asResumeTarget(_v1o0)
if _v4.AS_AUTO_ORDER then
local _v1o1, _v1o2 = _v1lg(nil)
if _v1o1 then return _v1o1, _v1o2 end
end
if _v1o0 and _v1jd(_v1o0) and not _v1k8(_v1o0, _v1k5(_v1o0)) then return _v1o0 end
local _v1o3, _v1o4 = _v1lg(_v1o0)
if _v1o3 and not _v1o4 then return _v1o3 end
return _v1o0
end
function _v4.asMapsWithWork(_v1o5)
local _v1o6, _v1o7 = {}, {}
local _v1o8, _v1o9 = nil, {}
pcall(function() _v1o8 = _v4.req(_v1j0.Modules.GamemodeUtils.GetRoster) end)
pcall(function()
local _v1oa = _ei9m[7+445]
pcall(function() _v1oa = _v1j1().GetController(_ei9m[33]).ChosenVersion or _v1oa end)
for _v1ob, _v1oc in pairs(_v4.req(_v1j0.Shared.LobbyData).Gamemodes[_v1oa].Survival.Ecosystems) do
if not _v1oc.Maintenance then _v1o9[_v1ob] = true end
end
end)
if not _v1o8 then return _v1o6, _v1o7 end
local _v1od = {}
for _v1oe, _v1of in ipairs(_v4.MAP_ORDER) do if _v1o9[_v1of] then _v1od[#_v1od + 1] = _v1of; _v1o9[_v1of] = nil end end
local _v1og = {}
for _v1oh in pairs(_v1o9) do _v1og[#_v1og + 1] = _v1oh end
table.sort(_v1og)
for _v1oi, _v1oj in ipairs(_v1og) do _v1od[#_v1od + 1] = _v1oj end
local _v1ok = _v1jk()
for _v1ol, _v1om in ipairs(_v1od) do
if _v1om ~= _v1o5 then
local _v1on, _v1oo = nil, false
pcall(function() _v1on = _v1o8(_v1om) end)
for _v1ol, _v1oq in ipairs(type(_v1on) == _ei9m[120-18] and _v1on or {}) do
if not _v4.asDone[_v1oq] and not _v4.asSkip[_v1oq] then
if _v1jd(_v1oq) then
if not _v1k8(_v1oq, _v1k5(_v1oq)) then _v1oo = true end
elseif _v4.AS_AUTOBUY then
local _v1or = _v1jg(_v1oq)
if _v1or and _v1or <= _v1ok then _v1oo = true end
end
end
if _v1oo then break end
end
if _v1oo then _v1o6[#_v1o6 + 1] = _v1om else _v1o7[#_v1o7 + 1] = _v1om end
end
end
return _v1o6, _v1o7
end
function _v4.asBuy(_v1os)
local _v1ot, _v1ou = false, nil
pcall(function() _v1ot, _v1ou = _v1j1().GetService(_ei9m[6+1558]):PurchaseDinosaurWithAmber(_v1os) end)
if _v1ot or _v1jd(_v1os) then
pcall(_v4.asRefreshLists)
return true
end
_v4.asSkip[_v1os] = true
return false, _v1ou
end
local function _v1ov(_v1ow, _v1ox)
_v4.asDone[_v1ow] = true
pcall(function()
local _v1oy = _v2.Character
_v4.asDoneAdd(_v1ow, (_v1oy and _v1oy:GetAttribute(_ei9m[2892])) or _v4.AS_GENDER)
_v4.asRefreshDone()
end)
local _v1oz, _v1p0 = _v1lg(_v1ow)
_v1j8(_v1ow .. _ei9m[2045] .. _v1ox .. _ei9m[1829] .. (_v1oz and (_ei9m[2968] .. _v1oz .. (_v1p0 and (_ei9m[999] .. _v1jm(_v1p0) .. _ei9m[2997]) or "") .. ".")
or (_ei9m[2+2923] .. _v1lp(_v1ow) .. _ei9m[2371])), 10)
_v4.AS_BUSY = true
task.wait(1.5)
pcall(function() _v2.Character:SetAttribute(_ei9m[2+1803], nil) end)
_v4.flyLandUntil = os.clock() + 15
local _v1p1, _v1p2 = nil, os.clock() + 300
while _v4.AUTO_SWITCH and not _v4.UNLOADED do
local _v1p3, _v1p4 = _v1ly()
if _v1p3 then break end
if _v1p4 == _ei9m[290+705] or os.clock() > _v1p2 then
_v4.asDone[_v1ow] = nil
_v4.asRetryAt = os.clock() + 60
_v1j8(_ei9m[4+615] .. _v1p4 .. _ei9m[4+3048], 6)
return
end
_v4.asStatus = _ei9m[575+950] .. _v1p4
if _v1p4 == _ei9m[741] then
_v1p1 = _v1p1 or os.clock()
if os.clock() - _v1p1 > 5 then
_v4.asStatus = _ei9m[2023-12]
pcall(_v1ma)
_v1p1 = nil
task.wait(2)
end
else
_v1p1 = nil
end
task.wait(1)
end
if not (_v4.AUTO_SWITCH and not _v4.UNLOADED) then return end
if not _v1n0(function() return _v4.AUTO_SWITCH end) then
_v4.asDone[_v1ow] = nil
_v4.asRetryAt = os.clock() + 60
_v1j8(_ei9m[1329-12], 6)
return
end
task.wait(3)
while _v1oz and _v1p0 do
local _v1p5, _v1p6 = false, nil
pcall(function() _v1p5, _v1p6 = _v1j1().GetService(_ei9m[570+30]):PurchaseDinosaurWithAmber(_v1oz) end)
if _v1p5 or _v1jd(_v1oz) then
_v1j8(_ei9m[1468] .. _v1oz .. _ei9m[3061-3] .. _v1jm(_v1p0) .. _ei9m[563+40], 8)
pcall(_v4.asRefreshLists)
break
end
_v1j8(_ei9m[5+2673] .. _v1oz .. " (" .. tostring(_v1p6 or _ei9m[1127]) .. _ei9m[3+1598], 8)
_v4.asSkip[_v1oz] = true
task.wait(3)
_v1oz, _v1p0 = _v1lg(_v1ow)
end
if not _v1oz then
local _v1p7 = _v1lp(_v1ow)
local _v1p8
pcall(function() _v1p8 = _v1j1().Ecosystem end)
local _v1p9, _v1pa = {}, {}
if _v4.REJOIN and _v4.REJOIN_OK and _v4.asMapsWithWork then _v1p9, _v1pa = _v4.asMapsWithWork(_v1p8) end
if _v1p9[1] and _v4.rjNextMap then
_v1j8(_ei9m[837] .. tostring(_v1p8) .. _ei9m[2744-16] .. _v1p9[1], 10)
task.wait(3)
if _v4.rjNextMap(_v1p8, _v1p9[1], _v1pa, _ei9m[2128+240] .. tostring(_v1p8) .. _ei9m[6+1447]) then return end
end
if _v4.REJOIN and _v4.REJOIN_OK then _v1p7 = _v1p7 .. _ei9m[2039] end
_v1j8(_ei9m[806], 6)
task.wait(3)
pcall(function() _v4.unloadScript() end)
pcall(_v4.leaveNote, _ei9m[2371-14], true)
pcall(function() _v2:Kick(_ei9m[2477] .. _v1p7 .. ".") end)
return
end
if not _v1nb(_v1oz) then
if _v4.rjSpawnRejoin and _v4.rjSpawnRejoin(_ei9m[1982+677] .. _v1oz) then return end
if _v4.REJOIN and _v4.REJOIN_OK then
_v1j8(_ei9m[6+1508] .. _v1oz .. _ei9m[265-19], 8)
return
end
_v1j8(_ei9m[2213-8] .. _v1oz .. _ei9m[492], 8)
if _v4.autoSwitchToggle then pcall(function() _v4.autoSwitchToggle:Set(false) end) end
else
_v1j8(_ei9m[2+2512] .. _v1oz, 6)
end
end
function _v4.asRelog(_v1pb)
if _v4.AS_BUSY or _v4.asRelogging then return false end
local _v1pc = _v2.Character
local _v1pd = _v1pc and _v1pc.Parent and _v1pc:GetAttribute(_ei9m[119+120])
if not _v1pd then return false end
local _v1pe = _v4.saveGender(_v1pc:GetAttribute(_ei9m[1192])) or _v4.AS_GENDER
_v4.asRelogging, _v4.AS_BUSY = true, true
_v1j8(_ei9m[843+332] .. _v1pd .. " (" .. tostring(_v1pb) .. ")", 8)
local ok, err = pcall(function()
task.wait(1.5)
pcall(function() _v2.Character:SetAttribute(_ei9m[878+770], nil) end)
_v4.flyLandUntil = os.clock() + 15
local _v1pf, _v1pg = os.clock(), nil
while not _v4.UNLOADED and os.clock() - _v1pf < 300 do
local _v1ph, _v1pi = _v1ly()
if _v1ph then break end
_v4.asStatus = _ei9m[5+713] .. _v1pi
if _v1pi == _ei9m[1637-12] then
_v1pg = _v1pg or os.clock()
if os.clock() - _v1pg > 5 then pcall(_v1ma) _v1pg = nil task.wait(2) end
else
_v1pg = nil
end
task.wait(1)
end
if _v4.UNLOADED or not _v1ly() then return end
if not _v1n0(function() return not _v4.UNLOADED end) then return end
task.wait(3)
_v4.asStatus = _ei9m[2+1419] .. _v1pd
if not _v1nb(_v1pd, _v1pe) and _v4.rjSpawnRejoin then
_v4.rjSpawnRejoin(_ei9m[1832] .. _v1pd .. _ei9m[2066])
end
end)
_v4.asRelogging, _v4.AS_BUSY = false, false
if not ok then _v1j8(_ei9m[6+3054] .. tostring(err), 8) end
return ok
end
_v4.ftElapsed, _v4.ftStatus = 0, _ei9m[542]
local function _v1pj()
_v1j8(_ei9m[763-6], 8)
for _v1pk, _v1pl in ipairs({ { _ei9m[99+1579], _ei9m[2+585] }, { _ei9m[358], _ei9m[1973-11] },
{ _ei9m[3079-4], _ei9m[2644] } }) do
if _v4[_v1pl[1]] and _v4[_v1pl[2]] then pcall(function() _v4[_v1pl[2]]:Set(false) end) end
_v4[_v1pl[1]] = false
end
task.wait(2)
pcall(function() _v2.Character:SetAttribute(_ei9m[1789+54], nil) end)
_v4.flyLandUntil = os.clock() + 15
local _v1pm = function() return _v4.FARM_TIMER and not _v4.UNLOADED end
local _v1pn = os.clock() + 300
while _v1pm() and _v2.Character and os.clock() < _v1pn do
local _v1po, _v1pp = _v1ly()
if _v1po then
if _v1n0(_v1pm) then break end
else
_v4.ftStatus = _ei9m[433+734] .. _v1pp
if _v1pp == _ei9m[858+1324] then
_v4.ftWaterT = _v4.ftWaterT or os.clock()
if os.clock() - _v4.ftWaterT > 5 then pcall(_v1ma) _v4.ftWaterT = nil task.wait(2) end
else
_v4.ftWaterT = nil
end
end
task.wait(1)
end
if not _v1pm() then return end
pcall(_v4.leaveNote, _ei9m[1543], true)
pcall(function()
_v2:Kick(_ei9m[2549] .. math.floor(_v4.FT_MINUTES or 0) .. _ei9m[1307-19])
end)
end
task.spawn(function()
local _v1pq = os.clock()
while not _v4.UNLOADED do
task.wait(1)
local _v1pr = os.clock()
local _v1ps = math.min(_v1pr - _v1pq, 5)
_v1pq = _v1pr
if _v4.FARM_TIMER and (_v4.AFK_FARM or _v4.LEGIT_FARM) then
_v4.ftElapsed = _v4.ftElapsed + _v1ps
local _v1pt = (_v4.FT_MINUTES or 120) * 60 - _v4.ftElapsed
_v4.ftStatus = _ei9m[2079-15] .. math.max(0, math.ceil(_v1pt / 60)) .. _ei9m[1841-4]
if _v1pt <= 300 and not _v4.ftWarned then
_v4.ftWarned = true
_v1j8(_ei9m[2309], 8)
end
if _v1pt <= 0 and not _v4.AS_BUSY then
local _v1pu, _v1pv = pcall(_v1pj)
if not _v1pu then _v1j8(_ei9m[6+733] .. tostring(_v1pv), 8) end
_v4.ftElapsed, _v4.ftWarned = 0, false
end
end
end
end)
task.spawn(function()
task.wait(5)
pcall(_v4.asRefreshLists)
while not _v4.UNLOADED do
task.wait(2)
if _v4.AUTO_SWITCH and not _v4.AS_BUSY and _v2.Character and _v2.Character.Parent then
local _v1pw, _v1px = _v1ks()
local _v1py = type(_v4.FARM_DINO) == _ei9m[7+2993] and _v4.FARM_DINO ~= "" and _v4.FARM_DINO ~= _ei9m[117+523]
and _v1kq() == _v4.FARM_DINO
if _v1pw and _v1py then
_v4.asStatus = _ei9m[2058-4] .. tostring(_v1kq())
elseif _v1pw and os.clock() < (_v4.asRetryAt or 0) then
_v4.asStatus = _ei9m[273+46] .. math.ceil(_v4.asRetryAt - os.clock()) .. "s"
elseif _v1pw then
local _v1pz, _v1q0 = pcall(_v1ov, _v1kq(), _v1px)
if not _v1pz then _v1j8(_ei9m[423] .. tostring(_v1q0), 8) end
_v4.AS_BUSY = false
else
_v4.asStatus = _ei9m[628+958] .. tostring(_v1kq())
end
end
end
end)
end
_v4.asSetup()
_v4.RJ_FARMS = {
{ _ei9m[1538-14], _ei9m[861+2143], _ei9m[491-17] }, { _ei9m[67+1209], _ei9m[888], _ei9m[2830-13] },
{ _ei9m[2085], _ei9m[353-9], _ei9m[2474] }, { _ei9m[1122-19], _ei9m[2171+450], _ei9m[1101-1] },
{ _ei9m[7+2152], _ei9m[1520+152], _ei9m[396-1] },
{ _ei9m[2330-6], _ei9m[3+625], _ei9m[3+1045] },
}
function _v4.farmDinoPick(_v1q1, _v1q2)
local _v1q3 = _v4.FARM_DINO
if type(_v1q3) ~= _ei9m[3+948] or _v1q3 == "" or _v1q3 == _ei9m[6+2602] then return nil end
local _v1q4, _v1q5 = pcall(_v4.asAvailable)
if not (_v1q4 and type(_v1q5) == _ei9m[7+2852] and table.find(_v1q5, _v1q3)) then return nil, nil, _v1q3 end
return _v1q3, (_v1q1 == _v1q3 and _v1q2) or _v4.AS_GENDER or _v1q2
end
function _v4.cfgFarms(_v1q6)
local _v1q7, _v1q8 = {}, false
for _v1q9, _v1qa in ipairs(_v4.RJ_FARMS) do
if _v1q6[_v1qa[1]] ~= nil then _v1q7[_v1qa[1]] = _v1q6[_v1qa[1]] == true; _v1q8 = true end
end
if not _v1q8 then return end
if not _v4.cfgApplied and _v4.REJOIN and _v4.REJOIN_OK and _v4.rejoinRead then
local _v1qb = _v4.rejoinRead()
local _v1qc = tonumber(_v1qb.t) ~= nil and os.time() - tonumber(_v1qb.t) < 1800
for _v1qd, _v1qe in pairs(type(_v1qb.farms) == _ei9m[68+1549] and _v1qb.farms or {}) do
if _v1qe == true and _v1qc then return end
end
end
for _v1qf, _v1qg in ipairs(_v4.RJ_FARMS) do
if _v1q7[_v1qg[1]] == false and _v4[_v1qg[1]] and _v4[_v1qg[2]] then pcall(function() _v4[_v1qg[2]]:Set(false) end) end
end
_v4.cfgFarmsOwed = _v1q7.AUTO_SWITCH and { AUTO_SWITCH = true } or nil
end
function _v4.rejoinSetup()
local _v1qh = game:GetService(_ei9m[7+362])
local function _v1qi()
local _v1qj
pcall(function() _v1qj = _v4.req(_v1qh.Packages.Knit) end)
return _v1qj
end
local function _v1qk(_v1ql, _v1qm)
pcall(function() if _v4.Hub then _v4.Hub:Notify(_ei9m[2346] .. _v1ql, _v1qm or 6) end end)
end
local function _v1qn()
local _v1qo = _v2.Character
return _v1qo ~= nil and _v1qo.Parent ~= nil
end
function _v4.rejoinSave()
if _v4.UNLOADED then return end
if not _v4.REJOIN_OK or _v4.rjResuming then return end
local _v1qp = _v4.rejoinRead()
if _v1qp.map ~= nil and _v1qp.map ~= _v4.REJOIN_MAP then _v1qp.doneMaps, _v1qp.nextMap = nil, nil end
_v1qp.on, _v1qp.map = _v4.REJOIN and true or false, _v4.REJOIN_MAP
_v1qp.lowPopLeave, _v1qp.lowPopMin = _v4.LOW_POP_LEAVE and true or false, _v4.LOW_POP_MIN
_v1qp.farmDino = (type(_v4.FARM_DINO) == _ei9m[2222-20] and _v4.FARM_DINO ~= "") and _v4.FARM_DINO or nil
pcall(function() _v1qp.lastMap = _v1qi().Ecosystem end)
if _v1qp.nextMap ~= nil and _v1qp.nextMap == _v1qp.lastMap then _v1qp.nextMap = nil end
_v1qp.lastJob = game.JobId
_v1qp.farms = {}
for _v1qq, _v1qr in ipairs(_v4.RJ_FARMS) do _v1qp.farms[_v1qr[1]] = _v4[_v1qr[1]] and true or false end
if _v4.rjKeep then _v1qp.farms = _v4.rjKeep.farms end
if _v4.rjFinished then _v1qp.farms = {} end
_v1qp.ftElapsed = _v4.ftElapsed
_v1qp.t = os.time()
pcall(function() _v1qp.status = getgenv().EazyCheats_Status end)
pcall(function()
local _v1qs = _v2.Character
_v1qp.dino = (_v1qs and _v1qs.Parent and _v1qs:GetAttribute(_ei9m[6+419])) or nil
end)
_v4.rejoinWrite(_v1qp)
end
function _v4.rejoinLeave(_v1qt)
if _v4.rjLeaving then return true end
if not (_v4.REJOIN_OK and _v4.REJOIN) then return false end
_v4.rjLeaving = true
_v4.rejoinSave()
_v1qk(_ei9m[4+2458] .. _v1qt .. _ei9m[1972], 6)
local _v1qu = pcall(function() game:GetService(_ei9m[1161-14]):Teleport(_v4.LOBBY_PLACE, _v2) end)
if not _v1qu then _v4.rjLeaving = false return false end
task.delay(30, function()
if _v4.UNLOADED then return end
pcall(_v4.leaveNote, _v1qt, false)
pcall(function() _v2:Kick(_ei9m[7+689] .. _v1qt) end)
end)
return true
end
function _v4.rjSpawnRejoin(_v1qv)
if not (_v4.REJOIN_OK and _v4.REJOIN) then return false end
local _v1qw = _v4.rejoinRead()
if tonumber(_v1qw.spawnRejoinT) and os.time() - tonumber(_v1qw.spawnRejoinT) < 1200 then return false end
_v1qw.spawnRejoinT = os.time()
_v4.rejoinWrite(_v1qw)
_v4.rjResuming = false
return _v4.rejoinLeave(_v1qv) and true or false
end
function _v4.rjNextMap(_v1qx, _v1qy, _v1qz, _v1r0)
if not (_v4.REJOIN_OK and _v4.REJOIN) then return false end
local _v1r1 = _v4.rejoinRead()
local _v1r2 = {}
if type(_v1qx) == _ei9m[3+2607] then _v1r2[_v1qx] = os.time() end
for _v1r3, _v1r4 in ipairs(type(_v1qz) == _ei9m[85+1115] and _v1qz or {}) do _v1r2[_v1r4] = os.time() end
_v1r1.doneMaps, _v1r1.nextMap = _v1r2, _v1qy
_v4.rejoinWrite(_v1r1)
_v4.rjResuming = false
return _v4.rejoinLeave(_v1r0) and true or false
end
local function _v1r5(_v1r6)
local _v1r7
pcall(function() _v1r7 = _v1qi().GetController(_ei9m[390+611]).Replica.Data[_ei9m[292-11] .. _v1r6] end)
if type(_v1r7) == _ei9m[5+265] and type(_v1r7[1]) == _ei9m[675+301] then return _v1r7[1], _v1r7[2] end
return nil
end
local function _v1r8(_v1r9, _v1ra)
local _v1rb = {}
for _v1rc, _v1rd in ipairs(_v4.RJ_FARMS) do
if _v1r9[_v1rd[1]] and _v4[_v1rd[2]] and not _v4[_v1rd[1]] and not _v4.UNLOADED then
pcall(function() _v4[_v1rd[2]]:Set(true) end)
_v1rb[#_v1rb + 1] = _v1rd[3]
end
end
if _v1r9.FARM_TIMER and tonumber(_v1ra.ftElapsed) then _v4.ftElapsed = tonumber(_v1ra.ftElapsed) end
_v1qk(#_v1rb > 0 and (_ei9m[1934+217] .. table.concat(_v1rb, ", ")) or _ei9m[227+1958], 8)
end
local function _v1re(_v1rf)
local _v1rg = type(_v1rf.farms) == _ei9m[2285-17] and _v1rf.farms or {}
local _v1rh = (getgenv and getgenv()) or {}
local _v1ri = tonumber(_v1rh.EazyCheats_RjSpawnAt)
if not _v1qn() and _v1ri and os.clock() - _v1ri < 75 then
local _v1rj = _v1ri + 75
while not _v1qn() and os.clock() < _v1rj and not _v4.UNLOADED do task.wait(0.5) end
end
if not _v1qn() then
local _v1rk
pcall(function() _v1rk = _v1qi().Ecosystem end)
local _v1rl, _v1rm = _v1r5(tostring(_v1rk))
local _v1rn, _v1ro, _v1rp = _v4.farmDinoPick(_v1rl, _v1rm)
if _v1rp and _v4.rjFarmDinoSaid ~= _v1rp then
_v4.rjFarmDinoSaid = _v1rp
_v1qk(_ei9m[2956-8] .. _v1rp .. _ei9m[2670-1]
.. (_v1rg.AUTO_SWITCH and _ei9m[6+815] or _ei9m[2998-4]) .. _ei9m[4+32], 10)
end
if _v1rn then
_v1rl, _v1rm = _v1rn, _v1ro
elseif _v1rg.AUTO_SWITCH and _v4.asResumeTarget then
for _v1rq = 1, 4 do
local _v1rr, _v1rs = _v4.asResumeTarget(_v1rl)
if not _v1rr then break end
if _v1rs then
_v1qk(_ei9m[2+2488] .. _v1rr .. " (" .. tostring(_v1rs) .. _ei9m[10+857], 6)
if not _v4.asBuy(_v1rr) then
_v1qk(_ei9m[265+649] .. _v1rr .. _ei9m[4+2437], 6)
task.wait(3)
continue
end
task.wait(2)
end
if _v1rr ~= _v1rl then _v1rl, _v1rm = _v1rr, _v4.AS_GENDER end
break
end
end
if not _v1rl then
_v4.rjKeep = { farms = _v1rg, st = _v1rf }
_v1qk(_ei9m[2057] .. tostring(_v1rk) .. _ei9m[203+480], 10)
return
end
if not _v1qn() and _v4.atDeployMenu and _v4.atDeployMenu() then
for _v1rt = 1, 50 do
if _v4.UNLOADED or not _v4.REJOIN then return end
if _v1qn() then _v4.rjKeep = { farms = _v1rg, st = _v1rf } return end
task.wait(0.5)
end
end
_v1qk(_ei9m[2265-9] .. _v1rl .. " (" .. tostring(_v1rm or _ei9m[1776+364]) .. ")", 6)
_v4.rjSpawning = true
local _v1ru = false
for _v1rv = 1, 3 do
if _v4.UNLOADED or not _v4.REJOIN then break end
if _v1qn() then _v1ru = true break end
_v1rh.EazyCheats_RjSpawnAt = os.clock()
local _v1rw, _v1rx = pcall(_v4.asSpawnDino, _v1rl, _v1rm)
if (_v1rw and _v1rx) or _v1qn() then _v1ru = true break end
task.wait(10)
end
_v4.rjSpawning = false
if _v4.UNLOADED then return end
if not _v1ru then
_v4.rjKeep = { farms = _v1rg, st = _v1rf }
if _v4.rjSpawnRejoin and _v4.rjSpawnRejoin(_ei9m[1674] .. _v1rl) then return end
_v1qk(_ei9m[1660-9] .. _v1rl .. _ei9m[2317-17], 10)
return
end
task.wait(3)
end
_v1r8(_v1rg, _v1rf)
end
local _v1ry = { _ei9m[5+123], _ei9m[1627], _ei9m[952-3], _ei9m[93+98], _ei9m[851-16],
_ei9m[1120+1346], _ei9m[4+145], _ei9m[235-3], _ei9m[20+2], _ei9m[344-18], _ei9m[2001-8], _ei9m[6+1260], _ei9m[2897],
_ei9m[639-1], _ei9m[59+304], _ei9m[774], _ei9m[1998] }
local function _v1rz()
local _v1s0 = game:GetService(_ei9m[538])
local _v1s1
pcall(function() _v1s1 = readfile(_ei9m[6+200]):gsub(_ei9m[6+2044], "") end)
if not _v1s1 or _v1s1 == "" then return end
local _v1s2 = os.clock() + 60
while not _v4.cfgApplied and os.clock() < _v1s2 and not _v4.UNLOADED do task.wait(1) end
pcall(function()
local _v1s3 = _v1s0:JSONDecode(readfile(_ei9m[467-10] .. _v1s1 .. _ei9m[258+87]))
for _v1s4, _v1s5 in ipairs(_v1ry) do
if _v1s3[_v1s5] ~= nil then _v4[_v1s5] = _v1s3[_v1s5] end
end
end)
end
task.spawn(function()
task.wait(8)
local _v1s6 = _v4.rejoinRead()
local _v1s7 = tonumber(_v1s6.pending) and os.time() - _v1s6.pending < 900
local _v1s8 = false
for _v1s9, _v1sa in pairs(type(_v1s6.farms) == _ei9m[5+813] and _v1s6.farms or {}) do
if _v1sa == true then _v1s8 = true end
end
local _v1sb = tonumber(_v1s6.t) ~= nil and os.time() - tonumber(_v1s6.t) < 1800
local _v1sc = _v1s8 and _v1sb and _v1s6.lastJob ~= nil
local _v1sd = _v1s8 and _v1sb and _v4.rjReloaded and _v1s6.lastJob == game.JobId
if _v4.REJOIN_OK and _v4.REJOIN and not _v4.UNLOADED and (_v1s7 or _v1sc or _v1sd) then
_v1rz()
_v4.rjResuming = true
local _v1se, _v1sf = pcall(_v1re, _v1s6)
_v4.rjResuming, _v4.rjSpawning = false, false
if not _v4.UNLOADED then
local _v1sg = _v4.rejoinRead()
_v1sg.pending = nil
_v4.rejoinWrite(_v1sg)
end
if not _v1se then _v1qk(_ei9m[693-11] .. tostring(_v1sf), 8) end
end
while not _v4.UNLOADED do
if _v4.rjKeep and (not _v4.REJOIN or not _v4.REJOIN_OK) then _v4.rjKeep = nil end
if _v4.rjKeep and _v1qn() then
local _v1sh = _v4.rjKeep
task.wait(3)
_v4.rjKeep = nil
if _v1qn() then pcall(_v1r8, _v1sh.farms, _v1sh.st) end
end
if _v4.REJOIN_OK and _v4.REJOIN and not _v1qn() and not _v4.AS_BUSY and not _v4.rjSpawning
and not _v4.deathBusy and not _v4.rjResuming
and (_v4.rjKeep or _v4.cfgFarmsOwed or _v4.LEGIT_FARM or _v4.AFK_FARM or _v4.AUTO_SWITCH) then
local _v1si
pcall(function() _v1si = _v1qi().GetController(_ei9m[570-8]).RevivalGui end)
if _v1si then
_v4.rjNoDinoSince = nil
else
_v4.rjNoDinoSince = _v4.rjNoDinoSince or os.clock()
end
if _v4.rjNoDinoSince and os.clock() - _v4.rjNoDinoSince > 120 and os.clock() - (_v4.rjRetryAt or 0) > 180 then
_v4.rjRetryAt, _v4.rjNoDinoSince = os.clock(), nil
local _v1sj = _v4.rejoinRead()
local _v1sk = _v4.rjKeep and _v4.rjKeep.farms
if not _v1sk then
_v1sk = {}
for _v1sl, _v1sm in ipairs(_v4.RJ_FARMS) do _v1sk[_v1sm[1]] = _v4[_v1sm[1]] and true or false end
end
_v1sj.farms = _v1sk
_v1qk(_ei9m[133+2422], 8)
_v4.rjResuming = true
local _v1sn, _v1so = pcall(_v1re, _v1sj)
_v4.rjResuming, _v4.rjSpawning = false, false
if not _v1sn then _v1qk(_ei9m[1721-14] .. tostring(_v1so), 8) end
end
else
_v4.rjNoDinoSince = nil
end
if _v1qn() and (_v4.LEGIT_FARM or _v4.AFK_FARM or _v4.AUTO_SWITCH) and not _v4.AS_BUSY and not _v4.rjSpawning
and _v2.PlayerGui:FindFirstChild(_ei9m[3+476]) then
_v4.rjMenuSince = _v4.rjMenuSince or os.clock()
if os.clock() - _v4.rjMenuSince > 10 then
_v4.rjMenuSince = nil
_v4.closeMainMenu()
end
else
_v4.rjMenuSince = nil
end
do
local _v1sp, _v1sq = _v2.Character, _v2.ReplicationFocus
if _v1qn() and (_v4.LEGIT_FARM or _v4.AFK_FARM or _v4.AUTO_SWITCH) and not _v4.AS_BUSY
and not _v4.rjSpawning and not _v4.rjResuming and _v4.asRelog and _v1sp
and (_v2:GetAttribute(_ei9m[2171]) == true or (_v1sq ~= nil and not _v1sq:IsDescendantOf(_v1sp))) then
_v4.rjFocusSince = _v4.rjFocusSince or os.clock()
if os.clock() - _v4.rjFocusSince > 20 and os.clock() - (_v4.rjRelogAt or -1e9) > 600 then
_v4.rjRelogAt, _v4.rjFocusSince = os.clock(), nil
task.spawn(_v4.asRelog, _ei9m[1990])
end
else
_v4.rjFocusSince = nil
end
end
if _v4.LOW_POP_LEAVE and _v4.REJOIN and not _v4.rjLeaving and _v1qn()
and (_v4.LEGIT_FARM or _v4.AFK_FARM or _v4.AUTO_SWITCH) then
if #_v0:GetPlayers() < (tonumber(_v4.LOW_POP_MIN) or 80) then
_v4.lowPopSince = _v4.lowPopSince or os.clock()
if os.clock() - _v4.lowPopSince > 30 then
_v4.lowPopSince = nil
_v4.rejoinLeave(_ei9m[675-20] .. tostring(_v4.LOW_POP_MIN or 80))
end
else
_v4.lowPopSince = nil
end
else
_v4.lowPopSince = nil
end
if _v4.cfgFarmsOwed and _v1qn() and not _v4.rjResuming and not _v4.rjSpawning and not _v4.AS_BUSY then
local _v1sr = _v4.cfgFarmsOwed
_v4.cfgFarmsOwed = nil
task.wait(3)
for _v1ss, _v1st in ipairs(_v4.RJ_FARMS) do
if _v1sr[_v1st[1]] and _v1qn() and _v4[_v1st[2]] and not _v4[_v1st[1]] and not _v4.UNLOADED then
pcall(function() _v4[_v1st[2]]:Set(true) end)
end
end
end
if _v4.REJOIN then _v4.rejoinSave() end
pcall(function()
local _v1su = (_v4.LEGIT_FARM and (_ei9m[520-19] .. tostring(_v4.lfStatus)))
or (_v4.AFK_FARM and (_ei9m[373+1976] .. ((_v4.CLEAN_BREAK and _ei9m[3+1159]) or (_v4.afkSafetyState and (_ei9m[6+3084] .. tostring(_v4.afkSafetyState) .. ")")) or "on")))
or _ei9m[2564]
local _v1sv = _v4.AUTO_SWITCH and (_ei9m[1594-9] .. (_v4.AS_AUTO_ORDER and _ei9m[2196-18] or "")
.. ": " .. tostring(_v4.asStatus)) or _ei9m[1760-5]
getgenv().EazyCheats_Status = _v1su .. _ei9m[3+602] .. _v1sv
end)
task.wait(5)
end
end)
end
_v4.rejoinSetup()
function _v4.deathSetup()
local _v1sw = game:GetService(_ei9m[2653-6])
local function _v1sx()
local _v1sy
pcall(function() _v1sy = _v4.req(_v1sw.Packages.Knit) end)
return _v1sy
end
local function _v1sz(_v1t0, _v1t1)
pcall(function() if _v4.Hub then _v4.Hub:Notify(_ei9m[185] .. _v1t0, _v1t1 or 6) end end)
end
local function _v1t2()
return _v4.AFK_FARM or _v4.LEGIT_FARM or _v4.ffOn() or _v4.AUTO_SWITCH
end
local function _v1t3(_v1t4)
pcall(function() _v1:UnbindFromRenderStep(_ei9m[2346-13]) end)
if not pcall(function() _v1t4:Destroy() end) then
pcall(function() if _v1t4.gui then _v1t4.gui.Enabled = false end end)
end
pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
end
local function _v1t5(_v1t6)
local _v1t7, _v1t8 = _v1t6.dinosaur, _v1t6.gender
if type(_v1t7) ~= _ei9m[2008+239] then return end
_v1sz(_ei9m[4+2014] .. _v1t7, 6)
task.wait(4)
if _v1t6.finished or not _v1t2() or _v4.UNLOADED then return end
_v1t6.finished = true
local _v1t9 = _v1sx()
pcall(function() _v1t9.GetService(_ei9m[1043-2]):RevivalScreenClosed() end)
pcall(function() _v1t9.GetController(_ei9m[2+3036]):EndDeathGrace(_v1t7) end)
_v4.rjSpawning = true
local _v1ta, _v1tb = pcall(_v4.asSpawnDino, _v1t7, _v1t8)
_v4.rjSpawning = false
if _v1ta and _v1tb then
_v1t3(_v1t6)
_v1sz(_ei9m[1117-13] .. _v1t7 .. _ei9m[48], 6)
else
_v1t6.finished = false
_v1sz(_ei9m[954+200] .. _v1t7 .. _ei9m[1305-10], 10)
end
end
task.spawn(function()
while not _v4.UNLOADED do
task.wait(1)
local _v1tc
pcall(function() _v1tc = _v1sx().GetController(_ei9m[1480]).RevivalGui end)
if _v1tc and not _v1tc.fromMenu and not _v1tc.finished and _v1t2() and _v4.asSpawnDino and not _v4.deathBusy then
_v4.deathBusy = true
local _v1td, _v1te = pcall(_v1t5, _v1tc)
if not _v1td then _v1sz(_ei9m[253+2673] .. tostring(_v1te), 8) end
_v4.deathBusy = false
end
end
end)
end
_v4.deathSetup()
pcall(function() _v4.VirtualUser = game:GetService(_ei9m[2569-16]) end)
if _v4.VirtualUser then
table.insert(_v2l, _v2.Idled:Connect(function()
if _v4.UNLOADED or not (_v4.ANTI_AFK or _v4.LEGIT_FARM) then return end
pcall(function()
_v4.VirtualUser:CaptureController()
_v4.VirtualUser:MoveMouse(Vector2.new(1, 1))
_v4.VirtualUser:MoveMouse(Vector2.new(0, 0))
end)
_v4.antiAfkCount = (_v4.antiAfkCount or 0) + 1
end))
end
function _v4.dinoGrowthShared()
local _v1tf = _v2.Character
local _v1tg = _v1tf and _v1tf:GetAttribute(_ei9m[2208-19])
if not _v1tg then return nil end
if _v4.growthShared and _v4.growthShared.sp == _v1tg then return _v4.growthShared.v end
local _v1th
pcall(function() _v1th = _v4.req(_v4.WATER_RS.DinosaurData[_v1tg]).Shared.Growth end)
_v4.growthShared = { sp = _v1tg, v = _v1th }
return _v1th
end
function _v4.dinoNutritionCats()
local _v1ti = _v2.Character
local _v1tj = _v1ti and _v1ti:GetAttribute(_ei9m[1414])
if not _v1tj then return nil end
if _v4.nutCats and _v4.nutCats.sp == _v1tj then return _v4.nutCats.v end
local _v1tk
pcall(function()
local _v1tl = {}
for _v1tm, _v1tn in ipairs(_v4.req(_v4.WATER_RS.DinosaurData[_v1tj]).Shared.Nutrition) do
if type(_v1tn) == _ei9m[317-5] and _v1tn.Category then _v1tl[#_v1tl + 1] = tostring(_v1tn.Category) end
end
_v1tk = _v1tl
end)
_v4.nutCats = { sp = _v1tj, v = _v1tk }
return _v1tk
end
function _v4.dinoStageWeights()
local _v1to = _v2.Character
local _v1tp = _v1to and _v1to:GetAttribute(_ei9m[6+1930])
if not _v1tp then return nil end
if _v4.stageWeights and _v4.stageWeights.sp == _v1tp then return _v4.stageWeights.v end
local _v1tq
pcall(function()
local _v1tr = _v4.req(_v4.WATER_RS.DinosaurData[_v1tp])
local _v1ts = {}
for _v1tt, _v1tu in pairs(_v1tr.GrowthStages) do
local _v1tv = _v1tu.CoreStats and _v1tu.CoreStats.Weight
if type(_v1tv) == _ei9m[2550-12] then _v1ts[tostring(_v1tt)] = _v1tv end
end
_v1tq = _v1ts
end)
_v4.stageWeights = { sp = _v1tp, v = _v1tq }
return _v1tq
end
function _v4.liteGrowthOf(_v1tw, _v1tx, _v1ty)
if type(_v1ty) ~= _ei9m[235] or _v1tw == nil then return nil end
local _v1tz = _v1ty[tostring(_v1tw)]
if type(_v1tz) ~= _ei9m[428] then return nil end
local _v1u0, _v1u1
for _v1u2, _v1u3 in pairs(_v1ty) do
if type(_v1u3) == _ei9m[103+2] and _v1u3 > _v1tz and (not _v1u1 or _v1u3 < _v1u1) then _v1u0, _v1u1 = _v1u2, _v1u3 end
end
local _v1u4 = { Stage = tostring(_v1tw) }
if not _v1u0 then _v1u4.final = true return _v1u4 end
_v1u4.NextStage, _v1u4.span = _v1u0, _v1u1 - _v1tz
if type(_v1tx) == _ei9m[1109] then _v1u4.Delta = math.clamp((_v1tx - _v1tz) / _v1u4.span, 0, 1) end
return _v1u4
end
function _v4.fmtLeft(_v1u5)
_v1u5 = math.floor(_v1u5 + 0.5)
if _v1u5 <= 0 then return _ei9m[901+371] end
if _v1u5 < 60 then return "~" .. _v1u5 .. _ei9m[2763-12] end
if _v1u5 < 3600 then return "~" .. math.floor(_v1u5 / 60) .. _ei9m[1483+1037] end
return string.format(_ei9m[7+1611], math.floor(_v1u5 / 3600), math.floor(_v1u5 % 3600 / 60))
end
function _v4.litePaceEta(_v1u6, _v1u7)
if type(_v1u6) ~= _ei9m[591-20] then return "" end
if _v1u6.final then return _ei9m[3+1085] end
local _v1u8, _v1u9 = 0, 0
for _v1ua, _v1ub in ipairs(_v1u7 or {}) do _v1u8 = _v1u8 + _v1ub[1]; _v1u9 = _v1u9 + _v1ub[2] end
if #(_v1u7 or {}) < 2 or _v1u9 < 60 or _v1u8 <= 0 or not _v1u6.Delta or not _v1u6.span then return _ei9m[5+3018] end
return "(" .. _v4.fmtLeft((1 - _v1u6.Delta) * _v1u6.span / (_v1u8 / _v1u9)) .. _ei9m[3+895]
end
function _v4.stageSpan(_v1uc)
if type(_v1uc) ~= _ei9m[1225-20] then return nil end
local _v1ud = _v4.dinoStageWeights()
local _v1ue, _v1uf = _v1ud and _v1uc.Stage and _v1ud[tostring(_v1uc.Stage)], _v1ud and _v1uc.NextStage and _v1ud[tostring(_v1uc.NextStage)]
if not (_v1ue and _v1uf) or _v1uf <= _v1ue then return nil end
return _v1uf - _v1ue
end
task.spawn(function()
local _v1ug = not _v4.CAP.charstate
local _v1uh = (not _v1ug) and _v4.requireCS() or nil
local _v1ui = _v1uh ~= nil
if (_v1ui and _v1uh and _v4.ReplicaSetRemote) or _v1ug then
local _v1uj, _v1uk, _v1ul = os.clock(), 30, {}
local _v1um, _v1un, _v1uo = {}, nil, nil
local _v1up, _v1uq = {}, 0
local _v1ur, _v1us = {}, nil
local _v1ut = 0.75
local _v1uu = 0
local _v1uv = 8
local _v1uw, _v1ux = nil, os.clock()
local _v1uy = 3
local _v1uz
pcall(function() _v1uz = _v4.req(_v4.WATER_RS.Shared.WellbeingData) end)
local function _v1v0()
local _v1v1 = _v4.dinoGrowthShared and _v4.dinoGrowthShared()
local _v1v2 = _v1v1 and _v1v1.StateMultipliers
if type(_v1v2) ~= _ei9m[1521+432] then return nil end
local _v1v3
for _v1v4, _v1v5 in pairs(_v1v2) do
if type(_v1v5) == _ei9m[5+2219] and (not _v1v3 or _v1v5 > _v1v3) then _v1v3 = _v1v5 end
end
return _v1v3
end
local function _v1v6()
local _v1v7 = _v1uz and _v1uz.NutritionSettings and _v1uz.NutritionSettings.MassGainMultiplier
if type(_v1v7) ~= _ei9m[998+1530] then return nil end
local _v1v8
for _v1v9, _v1va in ipairs(_v1v7) do
if type(_v1va) == _ei9m[1180] and type(_v1va.Multiplier) == _ei9m[2128] and (not _v1v8 or _v1va.Multiplier > _v1v8) then
_v1v8 = _v1va.Multiplier
end
end
return _v1v8
end
local function _v1vb(_v1vc)
local _v1vd = _v1uz and _v1uz.NutritionSettings and _v1uz.NutritionSettings.MassGainMultiplier
if type(_v1vd) ~= _ei9m[342+732] or type(_v1vc) ~= _ei9m[182+506] then return nil end
local _v1ve, _v1vf
for _v1vg, _v1vh in ipairs(_v1vd) do
if type(_v1vh) == _ei9m[1953-4] and type(_v1vh.Value) == _ei9m[569+653] and type(_v1vh.Multiplier) == _ei9m[5+1586]
and _v1vh.Value <= _v1vc + 1e-6 and (not _v1vf or _v1vh.Value > _v1vf) then _v1ve, _v1vf = _v1vh.Multiplier, _v1vh.Value end
end
return _v1ve
end
local function _v1vi()
local _v1vj, _v1vk = 0, 0
for _v1vl, _v1vm in ipairs(_v4.dinoNutritionCats() or {}) do
local _v1vn; pcall(function() _v1vn = _v1uh.Wellbeing.SavableStats[_v1vm] end)
if type(_v1vn) == _ei9m[321-14] then _v1vj = _v1vj + _v1vn; _v1vk = _v1vk + 1 end
end
return _v1vk > 0 and _v1vj / _v1vk or nil
end
local function _v1vo()
local _v1vp, _v1vq = nil, false
for _v1vr, _v1vs in ipairs(_v1up) do
if not _v1vp or _v1vs[2] > _v1vp then _v1vp = _v1vs[2] end
_v1vq = _v1vq or _v1vs[3]
end
local _v1vt, _v1vu, _v1vv = _v1vb(_v1vi()), _v1v6(), _v1v0()
if not (_v1vp and _v1vt and _v1vt > 0 and _v1vu and _v1vv) then return nil end
if not _v1vq then
local _v1vw = _v4.dinoGrowthShared and _v4.dinoGrowthShared()
local _v1vx = _v1vw and _v1vw.StateMultipliers and _v1vw.StateMultipliers.Rest or 1
_v1vp = _v1vp * _v1vv / _v1vx
end
return _v1vp * _v1vu / _v1vt
end
local function _v1vy(_v1vz)
local _v1w0 = _v4.dinoGrowthShared and _v4.dinoGrowthShared()
local _v1w1 = _v1w0 and _v1w0.MassGainStages and _v1vz and _v1w0.MassGainStages[tostring(_v1vz)]
local _v1w2 = _v1w1 and _v1w1.MassGain
return (type(_v1w2) == _ei9m[388] and _v1w2 > 0) and _v1w2 or nil
end
local function _v1w3()
local _v1w4
pcall(function() _v1w4 = _v1uh.Replica.Data.Multipliers.MassGain end)
return (type(_v1w4) == _ei9m[2230] and _v1w4 > 0) and _v1w4 or nil
end
local function _v1w5(_v1w6)
if #_v1w6 == 0 then return _v1uk end
local _v1w7 = table.clone(_v1w6); table.sort(_v1w7); return _v1w7[math.ceil(#_v1w7 / 2)]
end
local _v1w8 = {}
if _v1ug then
local _v1w9, _v1wa, _v1wb = nil, nil, nil
local function _v1wc(_v1wd)
if _v1w9 then pcall(function() _v1w9:Disconnect() end) end
_v1w9, _v1wa, _v1wb = nil, nil, nil
if not _v1wd then return end
_v1w9 = _v1wd:GetAttributeChangedSignal(_ei9m[396-12]):Connect(function()
if _v4.UNLOADED then return end
local _v1we, _v1wf = _v1wd:GetAttribute(_ei9m[263]), os.clock()
if type(_v1we) ~= _ei9m[2904-11] then return end
if _v1wa and _v1wb and _v1we > _v1wa then
local _v1wg = _v1wf - _v1wb
if _v1wg > 5 and _v1wg < 300 then
_v1ul[#_v1ul + 1] = _v1wg
if #_v1ul > 6 then table.remove(_v1ul, 1) end
local _v1wh = table.clone(_v1ul); table.sort(_v1wh)
_v1uk = _v1wh[math.ceil(#_v1wh / 2)]
_v1w8[#_v1w8 + 1] = { _v1we - _v1wa, _v1wg }
if #_v1w8 > 10 then table.remove(_v1w8, 1) end
end
_v1uj = _v1wf
end
_v1wa, _v1wb = _v1we, _v1wf
end)
table.insert(_v2l, _v1w9)
end
_v1wc(_v2.Character)
table.insert(_v2l, _v2.CharacterAdded:Connect(_v1wc))
end
if not _v1ug then
table.insert(_v2l, _v4.ReplicaSetRemote.OnClientEvent:Connect(function(_v1wi, _v1wj)
if _v4.UNLOADED or typeof(_v1wj) ~= _ei9m[1819-10] then return end
if _v1wj[1] == _ei9m[1739-9] and _v1wj[2] == _ei9m[2+1362] then
local _v1wk = _v1uh.Replica
if _v1wk and _v1wi == _v1wk.Id then
local _v1wl = os.clock()
pcall(function()
local _v1wm = _v1wk.Data and _v1wk.Data.Growth
if type(_v1wm) == _ei9m[642] and type(_v1wm.Mass) == _ei9m[316] then
local _v1wn = _v2.Character and _v2.Character:GetAttribute(_ei9m[86+2632])
if _v1wn ~= _v1un then _v1um, _v1un, _v1uo, _v1uu = {}, _v1wn, nil, 0 end
if _v1wm.Stage ~= _v1us then _v1ur, _v1us, _v1um, _v1uu = {}, _v1wm.Stage, {}, 0 end
_v1uu = _v1uu + 1
local _v1wo = _v1uo and (_v1wm.Mass - _v1uo) or nil
local _v1wp, _v1wq = _v1vy(_v1wm.Stage), _v1w3()
if _v1uu > _v1uv and _v1wo and _v1wo > 0 and _v1wp and _v1wq and os.clock() - _v1ux >= 3 then
_v1um[#_v1um + 1] = _v1wo / (_v1wp * _v1wq)
if #_v1um > 5 then table.remove(_v1um, 1) end
end
_v1uo = _v1wm.Mass
local _v1wr = _v1vo()
if #_v1um >= _v1uy and _v1wr and type(_v1wm.Delta) == _ei9m[747-5] then
_v1ur[#_v1ur + 1] = { _v1wm.Delta, _v1w5(_v1um) * _v1wr }
if #_v1ur > 240 then table.remove(_v1ur, 1) end
end
end
end)
local _v1ws = _v1wl - _v1uj
if _v1ws > 5 and _v1ws < 300 then
_v1ul[#_v1ul + 1] = _v1ws
if #_v1ul > 6 then table.remove(_v1ul, 1) end
_v1uk = _v1w5(_v1ul)
end
_v1uj = _v1wl
end
end
end))
end
table.insert(_v2l, _v2.CharacterAdded:Connect(function()
_v1um, _v1un, _v1uo, _v1up, _v1ur, _v1us, _v1uu = {}, nil, nil, {}, {}, nil, 0
end))
_v4.addStep(8, function()
local _v1wt = os.clock()
local _v1wu = _v1w3()
if _v1wu and (not _v1uw or math.abs(_v1wu - _v1uw) > 0.03 * _v1uw) then _v1ux = _v1wt end
_v1uw = _v1wu
if not _v1wu or _v1wt - _v1uq < 1 then return end
_v1uq = _v1wt
local _v1wv = false
pcall(function() _v1wv = _v4.getCS().Movement.isMoving == true end)
_v1up[#_v1up + 1] = { _v1wt, _v1wu, _v1wv }
while _v1up[1] and _v1wt - _v1up[1][1] > 120 do table.remove(_v1up, 1) end
end)
local function _v1ww() return _v1uh and _v1uh.Replica and _v1uh.Replica.Data end
local function _v1wx(_v1wy)
local _v1wz; pcall(function() _v1wz = _v1uh.Wellbeing.SavableStats[_v1wy] end)
return type(_v1wz) == _ei9m[52+57] and math.floor(_v1wz) or nil
end
local function _v1x0(_v1x1)
_v1x1 = math.floor(_v1x1 + 0.5)
if _v1x1 < 60 then return "~" .. math.max(_v1x1, 1) .. "s" end
if _v1x1 < 3600 then return "~" .. math.floor(_v1x1 / 60) .. "m" end
if _v1x1 < 86400 then return string.format(_ei9m[2+74], math.floor(_v1x1 / 3600), math.floor(_v1x1 % 3600 / 60)) end
if _v1x1 < 60 * 86400 then return string.format(_ei9m[215-1], math.floor(_v1x1 / 86400), math.floor(_v1x1 % 86400 / 3600)) end
return "~" .. math.floor(_v1x1 / (30 * 86400)) .. "mo"
end
local function _v1x2(_v1x3, _v1x4)
if type(_v1x3) ~= _ei9m[1029] then return "" end
if _v1x3.Paused then return _ei9m[1986+882] end
local _v1x5, _v1x6 = _v1vy(_v1x3.Stage), _v1vo()
if #_v1um < _v1uy or not (_v1x5 and _v1x6) then return _ei9m[68+568] end
local _v1x7 = _v1w5(_v1um) * _v1x5 * _v1x6
local _v1x8 = _v1uk > 0 and _v1uk or 30
local _v1x9 = math.clamp(tonumber(_v1x4) or 0, 0, 0.9999)
if _v1x3.NextStage ~= nil and _v1x3.NextStage ~= _ei9m[3065] then
local _v1xa = _v4.stageSpan(_v1x3)
if not (_v1xa and _v1x7 > 0) then return _ei9m[1470] end
local _v1xb, _v1xc = _v1ut, #_v1ur
if _v1xc >= 10 and _v1ur[_v1xc][1] - _v1ur[1][1] >= 0.05 then
local _v1xd, _v1xe, _v1xf, _v1xg = 0, 0, 0, 0
for _v1xh, _v1xi in ipairs(_v1ur) do _v1xd, _v1xe, _v1xf, _v1xg = _v1xd + _v1xi[1], _v1xe + _v1xi[2], _v1xf + _v1xi[1] * _v1xi[1], _v1xg + _v1xi[1] * _v1xi[2] end
local _v1xj = _v1xc * _v1xf - _v1xd * _v1xd
if _v1xj > 0 then
local _v1xk = (_v1xc * _v1xg - _v1xd * _v1xe) / _v1xj
local _v1xl = (_v1xe - _v1xk * _v1xd) / _v1xc
if _v1xl > 0 then
_v1xb = math.clamp(-_v1xk / _v1xl, 0, 0.95)
_v1x7 = (_v1xl + _v1xk * _v1x9) * _v1x5
end
end
end
if _v1x7 <= 0 then return _ei9m[1017-14] end
local _v1xm
if _v1xb < 0.01 then
_v1xm = (1 - _v1x9) * _v1xa / _v1x7
else
local _v1xn = 1 - _v1xb * _v1x9
_v1xm = _v1xa * _v1xn / (_v1x7 * _v1xb) * math.log(_v1xn / (1 - _v1xb))
end
local _v1xo = _v1xm * _v1x8
return _v1xo < 1 and _ei9m[2810] or "(" .. _v1x0(_v1xo) .. _ei9m[258]
end
local _v1xp, _v1xq = _v4.dinoStageWeights(), _v4.dinoGrowthShared()
local _v1xr = _v1xp and _v1xp[tostring(_v1x3.Stage)]
local _v1xs = _v1xq and _v1xq.Monster and _v1xq.Monster.WeightMultiplier
if not (type(_v1xr) == _ei9m[1489+261] and type(_v1xs) == _ei9m[2030+1063] and _v1xs > 1 and _v1x7 > 0) then return "" end
local _v1xt = _v1x7 / (_v1xr * (_v1xs - 1)) / (1 - _v1x9) ^ 2.5
local function _v1xu(_v1xv) return ((1 - _v1xv) ^ -1.5 - (1 - _v1x9) ^ -1.5) / (1.5 * _v1xt) * _v1x8 end
local _v1xw, _v1xx = 30 * 86400, _v1x9 * 100
local _v1xy
for _v1xz, _v1y0 in ipairs({ 20, 40, 60, 80, 95 }) do
if _v1y0 > _v1xx + 1e-6 then _v1xy = _v1y0 break end
end
if not (_v1xy and _v1xu(_v1xy / 100) <= _v1xw) then _v1xy = math.floor(_v1xx / 5 + 1e-6) * 5 + 5 end
if _v1xy > 99 or _v1xu(_v1xy / 100) > _v1xw then _v1xy = math.floor(_v1xx + 1e-6) + 1 end
if _v1xy > 99 then return "" end
local _v1y1 = _v1xu(_v1xy / 100)
if _v1y1 > _v1xw then return _ei9m[10+3] .. _v1x0(_v1y1) .. ")" end
return "(" .. _v1xy .. _ei9m[2700-17] .. _v1x0(_v1y1) .. ")"
end
local function _v1y2(_v1y3, _v1y4, _v1y5)
local _v1y6, _v1y7 = 0, 0; for _v1y8, _v1y9 in pairs({ _v1y3, _v1y4, _v1y5 }) do if _v1y9 then _v1y6 = _v1y6 + _v1y9; _v1y7 = _v1y7 + 1 end end
return _v1y7 > 0 and math.floor(_v1y6 / _v1y7) or 0
end
local function _v1ya()
local _v1yb = _v1ww(); local _v1yc; pcall(function() _v1yc = _v1yb.Multipliers.MassGain end)
if type(_v1yc) ~= _ei9m[774+253] then return "?" end
if _v1yc > 1 then return tostring(math.floor(_v1yc * 10) * 10)
elseif _v1yc < 0.1 then return tostring(math.floor(_v1yc * 1000) / 10)
else return tostring(math.floor(_v1yc * 100)) end
end
local function _v1yd(_v1ye) return _v1ye and (_v1ye .. "%") or "?" end
local _v1yf = (gethui and gethui()) or game:GetService(_ei9m[4+3057])
if not _v1yf then _v1yf = _v2:WaitForChild(_ei9m[2182-3]) end
local _v1yg = Instance.new(_ei9m[2482-1]); _v1yg.Name = _ei9m[945+590]; _v1yg.ResetOnSpawn = false; _v1yg.IgnoreGuiInset = true
pcall(function() _v1yg.Parent = _v1yf end)
local _v1yh = Instance.new(_ei9m[563+1543])
_v1yh.Size = UDim2.new(0, 500, 0, 168); _v1yh.AnchorPoint = Vector2.new(0.5, 0)
_v1yh.Position = UDim2.new(0.62, 0, 0, 16)
_v1yh.BackgroundColor3 = Color3.fromRGB(24, 16, 38); _v1yh.BackgroundTransparency = 0.1
_v1yh.BorderSizePixel = 0; _v1yh.Visible = false; _v1yh.Parent = _v1yg
Instance.new(_ei9m[3+1609], _v1yh).CornerRadius = UDim.new(0, 10)
do
local _v1yi = game:GetService(_ei9m[1935-1])
local _v1yj, _v1yk, _v1yl = false, nil, nil
local function _v1ym()
_v1yh.Position = UDim2.new(_v4.SC_POS_XS, _v4.SC_POS_XO, _v4.SC_POS_YS, _v4.SC_POS_YO)
end
_v1ym()
_v4.setStatsCardPos = function(_v1yn, _v1yo, _v1yp, _v1yq)
_v4.SC_POS_XS, _v4.SC_POS_XO, _v4.SC_POS_YS, _v4.SC_POS_YO = _v1yn, _v1yo, _v1yp, _v1yq
pcall(_v1ym)
end
table.insert(_v2l, _v1yh.InputBegan:Connect(function(_v1yr)
if _v4.UNLOADED or not _v4.SC_DRAG then return end
if _v1yr.UserInputType == Enum.UserInputType.MouseButton1
or _v1yr.UserInputType == Enum.UserInputType.Touch then
_v1yj, _v1yk, _v1yl = true, _v1yr.Position, _v1yh.Position
end
end))
table.insert(_v2l, _v1yh.InputEnded:Connect(function(_v1ys)
if _v1ys.UserInputType == Enum.UserInputType.MouseButton1
or _v1ys.UserInputType == Enum.UserInputType.Touch then
if _v1yj then
_v1yj = false
_v4.SC_POS_XS, _v4.SC_POS_XO = _v1yh.Position.X.Scale, _v1yh.Position.X.Offset
_v4.SC_POS_YS, _v4.SC_POS_YO = _v1yh.Position.Y.Scale, _v1yh.Position.Y.Offset
end
end
end))
table.insert(_v2l, _v1yi.InputChanged:Connect(function(_v1yt)
if _v4.UNLOADED or not _v1yj or not _v4.SC_DRAG then return end
if _v1yt.UserInputType == Enum.UserInputType.MouseMovement
or _v1yt.UserInputType == Enum.UserInputType.Touch then
local _v1yu = _v1yt.Position - _v1yk
_v1yh.Position = UDim2.new(_v1yl.X.Scale, _v1yl.X.Offset + _v1yu.X,
_v1yl.Y.Scale, _v1yl.Y.Offset + _v1yu.Y)
end
end))
end
local _v1yv = Instance.new(_ei9m[2+866], _v1yh); _v1yv.Color = Color3.fromRGB(150, 90, 255); _v1yv.Thickness = 1.5
local _v1yw = Instance.new(_ei9m[1762-1])
_v1yw.Size = UDim2.new(1, 0, 0, 24); _v1yw.Position = UDim2.new(0, 0, 0, 8); _v1yw.BackgroundTransparency = 1
_v1yw.Font = Enum.Font.GothamBold; _v1yw.TextSize = 18; _v1yw.TextColor3 = Color3.fromRGB(190, 140, 255)
_v1yw.Text = _ei9m[595]; _v1yw.TextTruncate = Enum.TextTruncate.AtEnd; _v1yw.Parent = _v1yh
local function _v1yx(_v1yy)
local _v1yz = Instance.new(_ei9m[2775-17])
_v1yz.Size = UDim2.new(0.5, -20, 0, 0); _v1yz.Position = UDim2.new(_v1yy, _v1yy == 0 and 14 or 6, 0, 38)
_v1yz.BackgroundTransparency = 1; _v1yz.Parent = _v1yh
local _v1z0 = Instance.new(_ei9m[7+520], _v1yz)
_v1z0.FillDirection = Enum.FillDirection.Vertical; _v1z0.SortOrder = Enum.SortOrder.LayoutOrder
_v1z0.Padding = UDim.new(0, 3)
return _v1yz, _v1z0
end
local _v1z1, _v1z2 = _v1yx(0)
local _v1z3, _v1z4 = _v1yx(0.5)
local function _v1z5(_v1z6, _v1z7, _v1z8)
local _v1z9 = Instance.new(_ei9m[3+2417])
_v1z9.Size = UDim2.new(1, 0, 0, _v1z7 + 5); _v1z9.BackgroundTransparency = 1; _v1z9.Font = Enum.Font.GothamSemibold
_v1z9.TextSize = _v1z7; _v1z9.TextXAlignment = Enum.TextXAlignment.Left
_v1z9.TextColor3 = _v1z8 or Color3.fromRGB(220, 210, 240); _v1z9.RichText = true; _v1z9.Parent = _v1z6; return _v1z9
end
local _v1za = _v1z5(_v1z1, 14)
local _v1zb = _v1z5(_v1z1, 13, Color3.fromRGB(170, 160, 190))
local _v1zc = _v1z5(_v1z1, 14)
local _v1zd = _v1z5(_v1z1, 14)
local _v1ze = _v1z5(_v1z1, 15, Color3.fromRGB(120, 230, 140))
local _v1zf = _v1z5(_v1z3, 14, Color3.fromRGB(190, 140, 255)); _v1zf.Font = Enum.Font.GothamBold
local _v1zg = _v1z5(_v1z3, 13)
local _v1zh = _v1z5(_v1z3, 14, Color3.fromRGB(190, 140, 255)); _v1zh.Font = Enum.Font.GothamBold
local _v1zi = _v1z5(_v1z3, 13)
local _v1zj = _v1z5(_v1z3, 13)
task.spawn(function()
while not _v4.UNLOADED do
if _v4.STATS_CARD and not (_v4.SC_HIDE_WITH_MENU and _v4.Hub and _v4.Hub.IsVisible and _v4.Hub:IsVisible()) then
_v1yh.Visible = true
if _v1yh.Active ~= _v4.SC_DRAG then _v1yh.Active = _v4.SC_DRAG end
pcall(function()
local _v1zk = _v2.Character
local _v1zl = _v1ww()
local _v1zm = _v4.SC_NAME and _v1zk and _v1zk:GetAttribute(_ei9m[7+2728])
if _v1zm then
local _v1zn = _v1zk:GetAttribute(_ei9m[790+1865])
_v1yw.Text = tostring(_v1zm) .. ((_v1zn == "M" and _ei9m[547+1187]) or (_v1zn == "F" and _ei9m[1989-2]) or "")
else
_v1yw.Text = _ei9m[145+463]
end
_v1za.Visible = _v4.SC_GROWTH; _v1zb.Visible = _v4.SC_GROWTH
if _v4.SC_GROWTH and _v1ug then
local _v1zo = _v4.liteGrowthOf(_v1zk and _v1zk:GetAttribute(_ei9m[633]), _v1zk and _v1zk:GetAttribute(_ei9m[2024-3]),
_v4.dinoStageWeights())
_v1za.Text = _ei9m[4+1204] .. tostring((_v1zo and _v1zo.Stage) or (_v1zk and _v1zk:GetAttribute(_ei9m[245-8])) or "?") .. _ei9m[2674-14]
if _v1zo and _v1zo.final then
_v1zb.Text = _ei9m[5+199]
else
_v1zb.Text = _ei9m[4+1563] .. tostring(_v1zo and _v1zo.NextStage or "?") .. _ei9m[1243]
.. ((_v1zo and _v1zo.Delta) and (math.floor(_v1zo.Delta * 100) .. "%") or "?")
if _v4.SC_STAGE_TIMER and _v1zo then
_v1zb.Text = _v1zb.Text .. _ei9m[7+1869] .. _v4.litePaceEta(_v1zo, _v1w8)
end
end
elseif _v4.SC_GROWTH then
local _v1zp = (_v1zl and _v1zl.Growth and _v1zl.Growth.Stage) or (_v1zk and _v1zk:GetAttribute(_ei9m[999-18])) or "?"
local _v1zq = (_v1zl and _v1zl.Growth and _v1zl.Growth.NextStage) or "?"
local _v1zr = (_v1zl and _v1zl.Growth and _v1zl.Growth.Delta) or 0
_v1za.Text = _ei9m[4+1213] .. tostring(_v1zp) .. _ei9m[2+1379]
_v1zb.Text = _ei9m[1388] .. tostring(_v1zq) .. _ei9m[2+149] .. math.floor(_v1zr * 100) .. "%"
if _v4.SC_STAGE_TIMER then
_v1zb.Text = _v1zb.Text .. _ei9m[186+1394] .. _v1x2(_v1zl and _v1zl.Growth, _v1zr)
end
end
_v1zc.Visible = _v4.SC_MASS and not _v1ug
if _v4.SC_MASS and not _v1ug then _v1zc.Text = _ei9m[4+1522] .. _v1ya() .. _ei9m[231-15] end
_v1zd.Visible = _v4.SC_WEIGHT
if _v4.SC_WEIGHT then
local _v1zs = _v1zk and _v1zk:GetAttribute(_ei9m[5+729])
_v1zd.Text = _ei9m[1722-2] .. (_v1zs and (math.floor(_v1zs * 10) / 10 .. _ei9m[5+1543]) or "?") .. _ei9m[6+2716]
end
_v1ze.Visible = _v4.SC_TIMER
if _v4.SC_TIMER then
local _v1zt = math.max(0, math.floor(_v1uk - (os.clock() - _v1uj)))
_v1ze.Text = _ei9m[6+575] .. string.format(_ei9m[255-17], math.floor(_v1zt / 60), _v1zt % 60)
end
local _v1zu, _v1zv = _v4.SC_NUTRITION and not _v1ug, _v4.SC_WELLBEING and not _v1ug
_v1zf.Visible = _v1zu; _v1zg.Visible = _v1zu
if _v1zu then
local _v1zw = _v4.dinoNutritionCats() or { _ei9m[152], _ei9m[2969], _ei9m[53] }
local _v1zx, _v1zy, _v1zz = {}, 0, 0
for _v200, _v201 in ipairs(_v1zw) do
local _v202 = _v1wx(_v201)
if _v202 then _v1zy = _v1zy + _v202; _v1zz = _v1zz + 1 end
_v1zx[#_v1zx + 1] = (_v201 == _ei9m[2232-7] and _ei9m[5+14] or _v201) .. " " .. _v1yd(_v202)
end
_v1zf.Text = _ei9m[2234] .. (_v1zz > 0 and math.floor(_v1zy / _v1zz) or "?") .. "%"
_v1zg.Text = table.concat(_v1zx, _ei9m[4+1274])
end
_v1zh.Visible = _v1zv; _v1zi.Visible = _v1zv; _v1zj.Visible = _v1zv
if _v1zv then
local _v203, _v204, _v205 = _v1wx(_ei9m[552+2228]), _v1wx(_ei9m[7+1312]), _v1wx(_ei9m[2867])
local _v206 = _v1wx(_ei9m[4+2949])
_v1zh.Text = _ei9m[684] .. _v1y2(_v203, _v204, _v205) .. "%"
_v1zi.Text = _ei9m[2717] .. _v1yd(_v203) .. _ei9m[3+984] .. _v1yd(_v204) .. _ei9m[393] .. _v1yd(_v205)
if _v206 then
local _v207 = _v206 >= 70 and Color3.fromRGB(100, 255, 100)
or _v206 >= 40 and Color3.fromRGB(255, 255, 80)
or Color3.fromRGB(255, 80, 80)
_v1zj.Text = _ei9m[1458+35] .. _v206 .. _ei9m[1402] .. (_v206 < 40 and _ei9m[1104+478] or "")
_v1zj.TextColor3 = _v207
else
_v1zj.Text = _ei9m[2049-19]
_v1zj.TextColor3 = Color3.fromRGB(170, 160, 190)
end
end
local _v208, _v209 = _v1z2.AbsoluteContentSize.Y, _v1z4.AbsoluteContentSize.Y
_v1z1.Size = UDim2.new(0.5, -20, 0, _v208)
_v1z3.Size = UDim2.new(0.5, -20, 0, _v209)
_v1yh.Size = UDim2.new(0, (_v1zu or _v1zv) and 500 or 270, 0, 40 + math.max(_v208, _v209) + 8)
end)
else
_v1yh.Visible = false
end
task.wait(0.3)
end
pcall(function() _v1yg:Destroy() end)
end)
end
end)
do
local _v20a, _v20b = pcall(function() return _v4.req(_v4.WATER_RS.Shared.SkinData) end)
local _v20c = _v4.WATER_RS:FindFirstChild(_ei9m[279-3])
local _v20d = _v4.WATER_RS:FindFirstChild(_ei9m[2151-20])
if _v20a and _v20b and _v20b.Skins and _v20c and _v20d then
local function _v20e()
local _v20f = _v2.Character
if not _v20f then return nil end
local _v20g = _v20f:GetAttribute(_ei9m[3082-19])
local _v20h = _v20f:GetAttribute(_ei9m[1032]) or _ei9m[1783-18]
local _v20i = (tostring(_v20f:GetAttribute(_ei9m[1137+560])):upper():sub(1, 1) == "F") and _ei9m[1250+778] or _ei9m[5+360]
local _v20j = _v20f:GetAttribute(_ei9m[4+0]) or _v20f:GetAttribute(_ei9m[214-5])
return _v20f, _v20g, _v20h, _v20i, _v20j and _ei9m[1189] or _ei9m[5+246]
end
local function _v20k(_v20l, _v20m, _v20n, _v20o, _v20p)
if _v20m == _ei9m[183] then
local _v20q = _v20d:FindFirstChild(_v20l)
local _v20r = _v20q and (_v20q:FindFirstChild(_v20n) or _v20q:GetChildren()[1])
local _v20s = _v20r and _v20r:FindFirstChild(_ei9m[6+1300])
local _v20t = _v20s and (_v20s:FindFirstChild(_v20l .. _v20p) or _v20s:FindFirstChild(_v20l .. _ei9m[7+2372]))
return _v20t and _v20t:FindFirstChild(_v20o)
else
local _v20u = _v20c:FindFirstChild(_v20l)
local _v20v = _v20u and _v20u:FindFirstChild(_v20m)
local _v20w = _v20v and (_v20v:FindFirstChild(_v20n) or _v20v:GetChildren()[1])
local _v20x = _v20w and _v20w:FindFirstChild(_v20o)
return _v20x and (_v20x:FindFirstChild(_v20p) or _v20x:FindFirstChild(_ei9m[6+2954]) or _v20x:FindFirstChild(_ei9m[20+11]))
end
end
_v4.applySkin = function(_v20y)
local _v20z, _v210, _v211, _v212, _v213 = _v20e()
if not (_v20z and _v210) then return false end
local _v214 = _v20z:FindFirstChild(_ei9m[626+183]) or _v20z
local _v215 = _v20k(_v210, _v20y, _v211, _v212, _v213)
if not _v215 then return false end
for _v216, _v217 in ipairs(_v214:GetDescendants()) do
if _v217:IsA(_ei9m[4+564]) then pcall(function() _v217:Destroy() end) end
end
local _v218 = 0
for _v219, _v21a in ipairs(_v215:GetChildren()) do
local _v21b = _v21a:FindFirstChildWhichIsA(_ei9m[3+2707])
local _v21c = _v214:FindFirstChild(_v21a.Name)
if _v21b and _v21c then pcall(function() _v21b:Clone().Parent = _v21c end); _v218 = _v218 + 1 end
end
return _v218 > 0
end
_v4.skinsForCurrentDino = function()
local _v21d, _v21e = _v20e()
local _v21f = { _ei9m[949-9] }
local _v21g = _v21e and _v20b.Skins[_v21e]
if _v21g and _v21g.Unlockables then for _v21h in pairs(_v21g.Unlockables) do _v21f[#_v21f + 1] = _v21h end end
table.sort(_v21f, function(_v21i, _v21j) if _v21i == _ei9m[495+2241] then return true elseif _v21j == _ei9m[671+320] then return false end return _v21i < _v21j end)
return _v21f, _v21e
end
task.spawn(function()
while not _v4.UNLOADED do
if _v4.SKIN_SELECTED ~= _ei9m[1266+392] then pcall(_v4.applySkin, _v4.SKIN_SELECTED) end
task.wait(2)
end
end)
table.insert(_v2l, _v2.CharacterAdded:Connect(function()
task.wait(2)
local _v21k, _v21l = _v4.skinsForCurrentDino()
local _v21m = _v4.SKIN_WANTED or _v4.SKIN_SELECTED
_v4.SKIN_SELECTED = table.find(_v21k, _v21m) and _v21m or _ei9m[2+1233]
if _v4.skinDropdown then
pcall(function() _v4.skinDropdown:Refresh(_v21k, false) end)
pcall(function() _v4.skinDropdown:Set(_v4.SKIN_SELECTED, true) end)
end
if _v4.SKIN_SELECTED ~= _ei9m[1160-19] then pcall(_v4.applySkin, _v4.SKIN_SELECTED) end
end))
task.spawn(function()
task.wait(3)
if _v4.skinDropdown and _v4.skinsForCurrentDino then
local _v21n, _v21o = _v4.skinsForCurrentDino()
if _v21o then
pcall(function() _v4.skinDropdown:Refresh(_v21n, true) end)
local _v21p = _v4.SKIN_WANTED
if _v21p and _v21p ~= _ei9m[951+536] and table.find(_v21n, _v21p) and _v4.SKIN_SELECTED ~= _v21p then
_v4.SKIN_SELECTED = _v21p
pcall(function() _v4.skinDropdown:Set(_v21p, true) end)
if _v4.applySkin then pcall(_v4.applySkin, _v21p) end
end
end
end
end)
end
end
do
_v4.fishESP = setmetatable({}, { __mode = "k" })
local _v21q = Color3.fromRGB(80, 200, 255)
local _v21r = 1500
local function _v21s()
local _v21t = workspace:FindFirstChild(_ei9m[2770])
local _v21u = _v21t and _v21t:FindFirstChild(_ei9m[2076])
return _v21u and _v21u:FindFirstChild(_ei9m[2504])
end
local function _v21v()
local _v21w = _v2.Character
return _v21w and (_v21w:FindFirstChild(_ei9m[471+985]) or _v21w:FindFirstChild(_ei9m[1529+1037]) or _v21w:FindFirstChildWhichIsA(_ei9m[773]))
end
local function _v21x(_v21y)
return _v21y.PrimaryPart or _v21y:FindFirstChild(_ei9m[4+1516]) or _v21y:FindFirstChildWhichIsA(_ei9m[1447+432])
end
local function _v21z(_v220)
local _v221 = _v4.fishESP[_v220]
if _v221 and _v221.hl.Parent then return _v221 end
local _v222 = Instance.new(_ei9m[200+2780])
_v222.FillColor = _v21q; _v222.FillTransparency = 0.55; _v222.OutlineColor = _v21q
_v222.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop; _v222.Parent = _v220
local _v223 = _v21x(_v220)
local _v224 = Instance.new(_ei9m[690+1811])
_v224.Size = UDim2.new(0, 110, 0, 18); _v224.StudsOffset = Vector3.new(0, 2, 0); _v224.AlwaysOnTop = true
local _v225 = Instance.new(_ei9m[2711-6])
_v225.Size = UDim2.new(1, 0, 1, 0); _v225.BackgroundTransparency = 1; _v225.Font = Enum.Font.GothamBold
_v225.TextSize = 12; _v225.TextColor3 = _v21q; _v225.TextStrokeTransparency = 0.4; _v225.Text = _ei9m[337-20]; _v225.Parent = _v224
if _v223 then _v224.Adornee = _v223; _v224.Parent = _v223 end
_v221 = { hl = _v222, bb = _v224, lbl = _v225 }; _v4.fishESP[_v220] = _v221; return _v221
end
local function _v226(_v227)
local _v228 = _v4.fishESP[_v227]
if _v228 then pcall(function() _v228.hl:Destroy(); _v228.bb:Destroy() end); _v4.fishESP[_v227] = nil end
end
task.spawn(function()
while not _v4.UNLOADED do
local _v229 = _v21s()
local _v22a = _v21v()
if _v229 then
local _v22b = {}
for _v22c, _v22d in ipairs(_v229:GetChildren()) do
if _v22d:IsA(_ei9m[2975-3]) then
_v22b[_v22d] = true
local _v22e = _v21x(_v22d)
local _v22f = (_v22e and _v22a) and (_v22e.Position - _v22a.Position).Magnitude or 1e9
if _v4.FISH_ESP and _v22f <= _v21r then
local _v22g = _v21z(_v22d)
if _v22g.lbl then _v22g.lbl.Text = _ei9m[6+385] .. math.floor(_v22f) .. "m" end
else
_v226(_v22d)
end
end
end
for _v22h in pairs(_v4.fishESP) do if not _v22b[_v22h] then _v226(_v22h) end end
end
task.wait(0.15)
end
for _v22i in pairs(_v4.fishESP) do _v226(_v22i) end
end)
end
do
_v4.VEG_ESP = false
_v4.VEG_DISTANCE = 1500
_v4.VEG_MAX = 40
_v4.VEG_DIET_ONLY = false
_v4.VEG_HIDE_EATEN = false
_v4.VEG_COLOR_OK = Color3.fromRGB(120, 240, 120)
_v4.VEG_COLOR_NO = Color3.fromRGB(170, 170, 170)
_v4.VEG_COLOR_EATEN = Color3.fromRGB(120, 95, 60)
_v4.vegPool = {}
_v4.vegAllowCache = {}
_v4.VEG_CS = game:GetService(_ei9m[6+2683])
function _v4.vegData()
if not _v4.vegCData then pcall(function() _v4.vegCData = _v4.req(_v4.WATER_RS.Shared.ConsumptionData) end) end
if not _v4.vegCState then _v4.vegCState = _v4.getCS() end
return _v4.vegCData, _v4.vegCState
end
function _v4.vegResolve(_v22j)
local _v22k = _v22j
for _v22l = 1, 3 do
if not _v22k or _v22k == workspace then break end
local _v22m = _v22k:GetAttribute("ID")
if _v22m then return _v22k, _v22m end
_v22k = _v22k.Parent
end
return nil, nil
end
function _v4.vegAllowed(_v22n)
local _v22o = _v4.vegAllowCache[_v22n]
if _v22o ~= nil then return _v22o end
local _v22p, _v22q = _v4.vegData()
local _v22r = false
pcall(function()
local _v22s = _v22p.FoliageConsumables[_v22n]
local _v22t = _v22s and _v22s.Actions
if type(_v22t) == _ei9m[1640] then
for _v22u, _v22v in ipairs(_v22t) do
if type(_v22v) == _ei9m[760+354] and _v22v.Category
and _v22q.Data.Diet.Categories[_v22v.Category] ~= nil then
_v22r = true
break
end
end
end
end)
_v4.vegAllowCache[_v22n] = _v22r
return _v22r
end
function _v4.vegContainer()
if _v4.vegFolder and _v4.vegFolder.Parent then return _v4.vegFolder end
local _v22w = _v2:FindFirstChild(_ei9m[2+1043])
if not _v22w then return nil end
local _v22x = Instance.new(_ei9m[1964+37])
_v22x.Name = _ei9m[2019]
_v22x.Parent = _v22w
_v4.vegFolder = _v22x
return _v22x
end
function _v4.vegLabel(_v22y, _v22z)
local _v230 = _v4.vegPool[_v22y]
if _v230 and _v230.bb.Parent then return _v230 end
local _v231 = Instance.new(_ei9m[1035-7])
_v231.Name = _ei9m[5+308]
_v231.Size = UDim2.new(0, 160, 0, 20)
_v231.StudsOffset = Vector3.new(0, 2.5, 0)
_v231.AlwaysOnTop = true
_v231.LightInfluence = 0
_v231.Enabled = false
local _v232 = Instance.new(_ei9m[800-4])
_v232.Name = _ei9m[1020]
_v232.Size = UDim2.new(1, 0, 1, 0)
_v232.BackgroundTransparency = 1
_v232.Font = Enum.Font.GothamBold
_v232.TextSize = 12
_v232.TextStrokeTransparency = 0
_v232.TextStrokeColor3 = Color3.new(0, 0, 0)
_v232.Parent = _v231
_v231.Parent = _v22z
_v230 = { bb = _v231, lbl = _v232 }
_v4.vegPool[_v22y] = _v230
return _v230
end
function _v4.vegHideAll()
for _v233, _v234 in pairs(_v4.vegPool) do
pcall(function() _v234.bb.Enabled = false; _v234.bb.Adornee = nil end)
end
end
table.insert(_v2l, _v2.CharacterAdded:Connect(function()
_v4.vegAllowCache = {}
_v4.vegCState = nil
end))
_v4.addStep(30, function()
if _v4.UNLOADED then return end
if not _v4.VEG_ESP then
if _v4.vegFolder then _v4.vegHideAll() end
return
end
local _v235 = _v4.getLocalRoot()
local _v236 = _v4.vegContainer()
if not (_v235 and _v236) then return end
local _v237 = _v235.Position
local _v238 = _v4.VEG_DISTANCE
_v4.vegInstCache = _v4.vegInstCache or {}
_v4.vegSweeps = (_v4.vegSweeps or 0) + 1
if _v4.vegSweeps % 60 == 0 then
for _v239 in pairs(_v4.vegInstCache) do
if not _v239.Parent then _v4.vegInstCache[_v239] = nil end
end
end
local _v23a, _v23b = {}, {}
pcall(function()
for _v23c, _v23d in ipairs(_v4.VEG_CS:GetTagged(_ei9m[6+1034])) do
local _v23e = _v4.vegInstCache[_v23d]
if not (_v23e and _v23e.part.Parent) then
local _v23f, _v23g = _v4.vegResolve(_v23d)
local _v23h = _v23g and (_v23d:IsA(_ei9m[446+2618]) and _v23d or _v23d:FindFirstChildWhichIsA(_ei9m[2404-10], true))
_v23e = _v23h and { model = _v23f, id = _v23g, part = _v23h } or nil
_v4.vegInstCache[_v23d] = _v23e
end
local _v23i, _v23j = _v23e and _v23e.model, _v23e and _v23e.id
if _v23j and not _v23b[_v23j] and _v23i:IsDescendantOf(workspace) then
local _v23k = _v23e.part
if _v23k then
_v23b[_v23j] = true
local _v23l = (_v23k.Position - _v237).Magnitude
if _v23l <= _v238 then
local _v23m = _v4.vegAllowed(_v23i.Name)
local _v23n = _v4.khFoodOf(_v23j)
local _v23o
if _v23n then _v23o = (_v23n <= 0)
else _v23o = (_v23i:GetAttribute(_ei9m[3036-2]) == false) end
if (_v23m or not _v4.VEG_DIET_ONLY) and not (_v23o and _v4.VEG_HIDE_EATEN) then
_v23a[#_v23a + 1] = { part = _v23k, name = _v23i.Name, d = _v23l,
ok = _v23m, eaten = _v23o, food = _v23n }
end
end
end
end
end
end)
local function _v23p(_v23q)
return _v23q.eaten and 1 or 0
end
table.sort(_v23a, function(_v23r, _v23s)
local _v23t, _v23u = _v23p(_v23r), _v23p(_v23s)
if _v23t ~= _v23u then return _v23t < _v23u end
return _v23r.d < _v23s.d
end)
for _v23v = 1, _v4.VEG_MAX do
local _v23w = _v4.vegLabel(_v23v, _v236)
local _v23x = _v23a[_v23v]
if _v23x then
_v23w.bb.Adornee = _v23x.part
_v23w.bb.Enabled = true
local _v23y = ""
if _v23x.eaten then _v23y = _ei9m[1039]
elseif _v23x.food then _v23y = "  " .. math.floor(_v23x.food) .. "f" end
_v23w.lbl.Text = _v23x.name .. _v23y .. "  " .. math.floor(_v23x.d) .. "m"
_v23w.lbl.TextColor3 = _v23x.eaten and _v4.VEG_COLOR_EATEN
or (_v23x.ok and _v4.VEG_COLOR_OK or _v4.VEG_COLOR_NO)
else
_v23w.bb.Enabled = false
_v23w.bb.Adornee = nil
end
end
end)
end
_v4.UIS = game:GetService(_ei9m[2495-4])
_v4.IS_MOBILE = _v4.UIS.TouchEnabled and not _v4.UIS.KeyboardEnabled
pcall(function()
if type(getgenv) == _ei9m[1094] and getgenv().EZ_FORCE_MOBILE then _v4.IS_MOBILE = true end
end)
_v4.mob = { fwd = false, back = false, left = false, right = false, up = false, down = false,
turnL = false, turnR = false, insta = false, trimUp = false, trimDown = false }
if _v4.IS_MOBILE then
local _v23z = Color3.fromRGB(28, 22, 42)
local _v240 = Color3.fromRGB(120, 70, 220)
local _v241 = Instance.new(_ei9m[2757])
_v241.Name = _ei9m[2509-4]; _v241.ResetOnSpawn = false; _v241.IgnoreGuiInset = true
_v241.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
pcall(function() _v241.Parent = (gethui and gethui()) or game:GetService(_ei9m[946-18]) end)
if not _v241.Parent then _v241.Parent = _v2:WaitForChild(_ei9m[2782-15]) end
_v4.mobGui = _v241
local function _v242(_v243, _v244, _v245, _v246, _v247)
local _v248 = Instance.new(_ei9m[227+719])
_v248.Name = _ei9m[3003] .. _v245
_v248.Size = _v247 or UDim2.new(0, 58, 0, 58)
_v248.Position = _v246
_v248.BackgroundColor3 = _v23z
_v248.BackgroundTransparency = 0.25
_v248.BorderSizePixel = 0
_v248.Text = _v244
_v248.TextColor3 = Color3.fromRGB(235, 225, 255)
_v248.Font = Enum.Font.GothamBold
_v248.TextSize = 18
_v248.AutoButtonColor = false
_v248.Parent = _v243
Instance.new(_ei9m[1806], _v248).CornerRadius = UDim.new(0, 10)
local _v249 = Instance.new(_ei9m[5+781], _v248)
_v249.Color = Color3.fromRGB(150, 90, 255); _v249.Thickness = 1.5; _v249.Transparency = 0.4
local function _v24a(_v24b)
_v4.mob[_v245] = _v24b
_v248.BackgroundColor3 = _v24b and _v240 or _v23z
end
_v248.InputBegan:Connect(function(_v24c)
if _v24c.UserInputType == Enum.UserInputType.Touch
or _v24c.UserInputType == Enum.UserInputType.MouseButton1 then _v24a(true) end
end)
_v248.InputEnded:Connect(function(_v24d)
if _v24d.UserInputType == Enum.UserInputType.Touch
or _v24d.UserInputType == Enum.UserInputType.MouseButton1 then _v24a(false) end
end)
table.insert(_v2l, _v248.MouseLeave:Connect(function() _v24a(false) end))
return _v248
end
local function _v24e(_v24f, _v24g, _v24h, _v24i)
local _v24j = Instance.new(_ei9m[2+2717])
_v24j.Name = _v24f; _v24j.Size = UDim2.new(0, _v24g, 0, _v24h); _v24j.Position = _v24i
_v24j.BackgroundTransparency = 1; _v24j.Visible = false; _v24j.Parent = _v241
return _v24j
end
_v4.mobFlyPad = _v24e(_ei9m[4+933], 200, 200, UDim2.new(0, 24, 1, -224))
_v242(_v4.mobFlyPad, _ei9m[6+2157], _ei9m[1665], UDim2.new(0, 62, 0, 0))
_v242(_v4.mobFlyPad, _ei9m[616+263], _ei9m[1383-4], UDim2.new(0, 0, 0, 62))
_v242(_v4.mobFlyPad, _ei9m[2183-3], _ei9m[1851], UDim2.new(0, 124, 0, 62))
_v242(_v4.mobFlyPad, _ei9m[94], _ei9m[2873], UDim2.new(0, 62, 0, 124))
_v242(_v4.mobFlyPad, "+", "up", UDim2.new(0, 196, 0, 20), UDim2.new(0, 52, 0, 52))
_v242(_v4.mobFlyPad, _ei9m[956+329], _ei9m[635+1560], UDim2.new(0, 196, 0, 104), UDim2.new(0, 52, 0, 52))
_v4.mobTurnPad = _v24e(_ei9m[3+2280], 200, 70, UDim2.new(1, -224, 1, -100))
_v242(_v4.mobTurnPad, _ei9m[2139], _ei9m[1129-8], UDim2.new(0, 0, 0, 0))
_v242(_v4.mobTurnPad, _ei9m[121-7], _ei9m[2+1201], UDim2.new(0, 68, 0, 0))
_v242(_v4.mobTurnPad, _ei9m[3030-2], _ei9m[2970], UDim2.new(0, 136, 0, 0))
_v4.MOB_SHOW_TURN = false
_v4.addStep(10, function()
if _v4.UNLOADED then return end
local _v24k = _v4.FLY and true or false
if _v4.mobFlyPad.Visible ~= _v24k then _v4.mobFlyPad.Visible = _v24k end
local _v24l = _v4.MOB_SHOW_TURN and (_v4.QUICK_TURN or _v4.FLY) and true or false
if _v4.mobTurnPad.Visible ~= _v24l then _v4.mobTurnPad.Visible = _v24l end
end)
end
_v4.MENU_LAYOUT = {
MAIN = { _ei9m[2845-3], _ei9m[868+1038], _ei9m[588], _ei9m[140+23], _ei9m[3+1444] },
RENAME = { [_ei9m[2+632]] = _ei9m[5+1849],
[_ei9m[5+1026]] = _ei9m[1367-4], [_ei9m[131+161]] = _ei9m[1055-5], [_ei9m[1443+1312]] = _ei9m[611+136],
[_ei9m[1562]] = _ei9m[1529], [_ei9m[2267+10]] = _ei9m[189], [_ei9m[2+714]] = _ei9m[82+131],
[_ei9m[1297+1262]] = _ei9m[6+2831],
[_ei9m[2+2805]] = _ei9m[2+887], [_ei9m[2+1380]] = _ei9m[368],
[_ei9m[2271-17]] = _ei9m[236+149], [_ei9m[4+1752]] = _ei9m[2987],
[_ei9m[2971]] = _ei9m[4+939],
[_ei9m[867+684]] = _ei9m[2606+100], [_ei9m[1252]] = _ei9m[5+205],
[_ei9m[61-17]] = _ei9m[1486],
[_ei9m[1799]] = _ei9m[5+2878], [_ei9m[2378-2]] = _ei9m[6+2648] },
SUB_MAIN = {
[_ei9m[556+263]] = _ei9m[1682], [_ei9m[700+1548]] = _ei9m[6+2763], [_ei9m[1336+1441]] = _ei9m[2249],
[_ei9m[851-12]] = _ei9m[3+1480], [_ei9m[25-17]] = _ei9m[1706-14], [_ei9m[1095-13]] = _ei9m[2478],
[_ei9m[3+1853]] = _ei9m[2061], [_ei9m[2210]] = _ei9m[866], [_ei9m[2827-13]] = _ei9m[3+1538],
[_ei9m[1955-10]] = _ei9m[1329+535], [_ei9m[3+1193]] = _ei9m[4+613], [_ei9m[2392-14]] = _ei9m[1244], [_ei9m[2770-10]] = _ei9m[1351],
},
WHERE = {
[_ei9m[1304]] = _ei9m[2253], [_ei9m[5+2358]] = _ei9m[7+1263], [_ei9m[7+2864]] = _ei9m[547+1911], [_ei9m[2910]] = _ei9m[2+2360], [_ei9m[902+1608]] = _ei9m[4+2632], [_ei9m[57+329]] = _ei9m[1615], [_ei9m[1605]] = _ei9m[120], [_ei9m[1855-11]] = _ei9m[34+200],
[_ei9m[2+971]] = _ei9m[908-1], [_ei9m[7+451]] = _ei9m[430], [_ei9m[864+1335]] = _ei9m[6+1099],
[_ei9m[308-17]] = _ei9m[1747-3], [_ei9m[90+994]] = _ei9m[2793-1],
[_ei9m[898-20]] = _ei9m[977],
},
NEST = {
[_ei9m[263+32]] = { _ei9m[6+545], _ei9m[2574-12], _ei9m[970-4] },
[_ei9m[18+3021]] = { _ei9m[711-3] },
[_ei9m[2358-4]] = { _ei9m[7+2210], _ei9m[489+1224], _ei9m[178+515], _ei9m[290+502], _ei9m[279-18], _ei9m[1052+342] },
[_ei9m[303+150]] = { _ei9m[1419+1419], _ei9m[2+1846], _ei9m[2+2287], _ei9m[2104],
_ei9m[411], _ei9m[299+107], _ei9m[970-5], _ei9m[881+1491],
_ei9m[525],
_ei9m[5+2302], _ei9m[2952] },
[_ei9m[1064]] = { _ei9m[3035-15], _ei9m[519-9], _ei9m[1859], _ei9m[5+945], _ei9m[1928],
_ei9m[404], _ei9m[202], _ei9m[271], _ei9m[2088], _ei9m[3+2634] },
[_ei9m[4+316]] = { _ei9m[2975-10] },
[_ei9m[2507-4]] = { _ei9m[847-19], _ei9m[1286], _ei9m[2717-14], _ei9m[2557] },
[_ei9m[2204-7]] = { _ei9m[4+2735], _ei9m[440-4], _ei9m[1258-1], _ei9m[274+770] },
[_ei9m[3082]] = { _ei9m[468+1173], _ei9m[661-9], _ei9m[2101-1], _ei9m[1093-8] },
[_ei9m[2+2915]] = { _ei9m[4+104] },
[_ei9m[484+2573]] = { _ei9m[961] },
[_ei9m[2456-9]] = { _ei9m[4+1385], _ei9m[5+2375], _ei9m[7+368] },
[_ei9m[280+3]] = { _ei9m[16+18] },
[_ei9m[546-12]] = { _ei9m[1404-7] },
[_ei9m[1477+931]] = { _ei9m[2364-12] },
[_ei9m[3013]] = { _ei9m[1733+673], _ei9m[633+1720], _ei9m[5+456], _ei9m[876], _ei9m[478+1867], _ei9m[2301],
_ei9m[488+44], _ei9m[2614-5], _ei9m[193-15], _ei9m[1714], _ei9m[524-18], _ei9m[1160], _ei9m[2973],
_ei9m[2910-19], _ei9m[69+213], _ei9m[1353-8], _ei9m[6+2714], _ei9m[27+1024], _ei9m[231-8],
_ei9m[4+1034], _ei9m[2001+936], _ei9m[1521], _ei9m[2599-1], _ei9m[7+392],
_ei9m[2163-17], _ei9m[2795] },
[_ei9m[2+98]] = { _ei9m[1459-15], _ei9m[3+586] },
[_ei9m[1229+1414]] = { _ei9m[5+2575], _ei9m[312+796], _ei9m[8+1636] },
[_ei9m[1526-18]] = { _ei9m[1708-14] },
[_ei9m[751+81]] = { _ei9m[1787] },
[_ei9m[2387-10]] = { _ei9m[2+2872], _ei9m[2012-7], _ei9m[673], _ei9m[2936-14], _ei9m[2120-10], _ei9m[379+1745], _ei9m[2036+496],
_ei9m[2+2961], _ei9m[1210+553], _ei9m[102+134] },
[_ei9m[84-17]] = { _ei9m[2651], _ei9m[2673-11] },
[_ei9m[100+2634]] = { _ei9m[3+1339] },
[_ei9m[429+317]] = { _ei9m[1346-5] },
[_ei9m[188]] = { _ei9m[1088-5] },
[_ei9m[2173-12]] = { _ei9m[1313], _ei9m[2+2903], _ei9m[469+1028], _ei9m[623-7] },
[_ei9m[6+408]] = { _ei9m[874+152] },
[_ei9m[210-12]] = { _ei9m[30+34] },
[_ei9m[699+2332]] = { _ei9m[7+1488] },
[_ei9m[2552-2]] = { _ei9m[514], _ei9m[1258-3], _ei9m[2+2906] },
},
ORDER = {
AutoFarm = { _ei9m[369+337], _ei9m[183+653], _ei9m[170+784], _ei9m[280-11], _ei9m[2489-3], _ei9m[3+1491], _ei9m[360], _ei9m[1399-19] },
Stats = { _ei9m[6+2734], _ei9m[1722-12], _ei9m[2247-7], _ei9m[2+2904], _ei9m[2554] },
},
HEADERS = {},
LOCKED = {},
}
function _v4.displayName(_v24m)
local _v24n = (tostring(_v24m or ""):gsub(_ei9m[232+2707], ""):gsub(_ei9m[1464], ""))
local _v24o = _v4.MENU_LAYOUT.RENAME and _v4.MENU_LAYOUT.RENAME[_v24n]
return _v24o or (_v24n:gsub(_ei9m[5+2708], ""))
end
function _v4.ezBridge(_v24p)
local _v24q = game:GetService(_ei9m[6+926])
local _v24r = game:GetService(_ei9m[7+637])
local _v24s = _v4.MENU_LAYOUT
local _v24t = { Caps = { sectionInfo = true } }
local function _v24u(_v24v)
return (tostring(_v24v or ""):gsub(_ei9m[6+2403], ""):gsub(_ei9m[2807-19], ""))
end
local function _v24w(_v24x)
local _v24y, _v24z = {}, nil
for _v250 in (tostring(_v24x) .. "\n"):gmatch(_ei9m[2+403]) do
local _v251, _v252 = _v250:match(_ei9m[884+797])
if _v251 and #_v251 <= 40 then
_v24z = _v24u(_v251)
_v24y[_v24z] = _v252
elseif _v24z and _v250:match("%S") then
_v24y[_v24z] = _v24y[_v24z] .. " " .. _v250
else
_v24z = nil
end
end
return _v24y
end
local function _v253(_v254)
local _v255 = {}
function _v255:Set(_v256, _v257)
_v256 = _v256 and true or false
if _v257 then pcall(function() _v254:Set(_v256) end) return end
_v254.Enabled = _v256
pcall(_v254.Callback, _v256)
pcall(function() _v254:_applyVisual() end)
end
function _v255:SetKey(_v258, _v259)
if typeof(_v258) == _ei9m[802-13] and _v258 ~= Enum.KeyCode.Unknown then
_v254:SetKeybind(_v258.Name)
else
_v254.Keybind = nil
pcall(function()
_v254._kbBtn.Text = _ei9m[3+1384]
_v254:_markBound(false)
end)
end
end
return setmetatable(_v255, { __index = function(_v25a, _v25b)
if _v25b == _ei9m[1827+1135] then return _v254.Keybind or Enum.KeyCode.Unknown end
if _v25b == _ei9m[7+2366] or _v25b == _ei9m[3+2134] then return _v254.Enabled end
return nil
end })
end
local function _v25c(_v25d, _v25e, _v25f)
local _v25g = _v25e.Callback or function() end
local _v25h = _v25d:AddSubToggle({ Name = _v4.displayName(_v25e.Name), Default = _v25e.Default and true or false, Tooltip = _v25f, Callback = _v25g })
local _v25i = {}
function _v25i:Set(_v25j, _v25k)
if not _v25k then pcall(_v25g, _v25j and true or false) end
pcall(function() _v25h:Set(_v25j, false) end)
end
function _v25i:SetKey() end
return setmetatable(_v25i, { __index = function(_v25l, _v25m)
if _v25m == _ei9m[278] then return Enum.KeyCode.Unknown end
if _v25m == _ei9m[56+117] or _v25m == _ei9m[1515-6] then return _v25h.Value end
return nil
end })
end
local function _v25n(_v25o, _v25p)
local _v25q = _v25p.Callback or function() end
local _v25r = _v25o:AddSlider({
Name = _v4.displayName(_v25p.Name), Min = _v25p.Min, Max = _v25p.Max, Default = _v25p.Default,
Step = _v25p.Increment or 1, Callback = _v25q,
})
local _v25s = {}
function _v25s:Set(_v25t, _v25u)
pcall(function() _v25r:Set(_v25t) end)
if not _v25u then pcall(_v25q, _v25r.Value ~= nil and _v25r.Value or _v25t) end
end
return setmetatable(_v25s, { __index = function(_v25v, _v25w)
if _v25w == _ei9m[1850] then return _v25r.Value end
return nil
end })
end
local function _v25x(_v25y, _v25z)
local _v260 = _v25z.Callback or function() end
local _v261 = _v25y:AddDropdown({
Name = _v24u(_v25z.Name), Options = _v25z.Items or _v25z.Options or {}, Default = _v25z.Default, Callback = _v260,
})
local _v262 = {}
function _v262:Set(_v263, _v264)
pcall(function() _v261:Set(_v263) end)
if not _v264 then pcall(_v260, _v263) end
end
function _v262:Refresh(_v265, _v266)
self._items = _v265
_v261:Refresh(_v265 or {})
end
return setmetatable(_v262, { __index = function(_v267, _v268)
if _v268 == _ei9m[51+841] then return _v261.Selected end
return nil
end })
end
local function _v269(_v26a, _v26b)
local _v26c = _v26b.Callback or function() end
local _v26e = _v26a:AddDropdown({
Name = _v24u(_v26b.Name), Options = _v26b.Items or _v26b.Options or {}, Multi = true, Default = _v26b.Default,
Callback = function(_v26d) pcall(_v26c, _v26d) end,
})
local _v26f = {}
function _v26f:Set(_v26g, _v26h)
_v26e:Set(type(_v26g) == _ei9m[1667-15] and _v26g or {}, not _v26h)
end
function _v26f:Refresh(_v26i, _v26j)
self._items = _v26i
if not _v26j then _v26e:Set({}, false) end
_v26e:Refresh(_v26i or {})
end
return setmetatable(_v26f, { __index = function(_v26k, _v26l)
if _v26l == _ei9m[2273-14] then
local _v26m = {}
for _v26n in pairs(_v26e.Selected or {}) do _v26m[_v26n] = true end
return _v26m
end
return nil
end })
end
local function _v26o(_v26p, _v26q)
local _v26r = _v24u(_v26q.Name or _ei9m[1964-9])
local _v26s = _v26q.Changed or _v26q.Callback or function() end
local _v26t = { Key = typeof(_v26q.Default) == _ei9m[1161-11] and _v26q.Default or Enum.KeyCode.Unknown }
local _v26u
local function _v26v(_v26w)
if _v26u then
_v26u.Text = _v26w or (_v26r .. _ei9m[6+1231] .. (_v26t.Key == Enum.KeyCode.Unknown and _ei9m[791+1823] or _v26t.Key.Name))
end
end
local _v26x = false
local row = _v26p:AddButton({
Name = _v26r,
Callback = function()
if _v26x then return end
_v26x = true
_v26v(_v26r .. _ei9m[7+922])
local _v26y
_v26y = _v24q.InputBegan:Connect(function(_v26z)
if _v26z.UserInputType ~= Enum.UserInputType.Keyboard then return end
_v26y:Disconnect()
_v26x = false
_v26t.Key = (_v26z.KeyCode == Enum.KeyCode.Escape) and Enum.KeyCode.Unknown or _v26z.KeyCode
_v26v()
pcall(_v26s, _v26t.Key)
end)
end,
})
for _v270, _v271 in ipairs(row:GetChildren()) do
if _v271:IsA(_ei9m[272+360]) and _v271.Text == _v26r then
_v26u = _v271
break
end
end
_v26v()
function _v26t:Set(_v272, _v273)
if typeof(_v272) == _ei9m[1988] then _v26t.Key = _v272 end
_v26v()
if not _v273 then pcall(_v26s, _v26t.Key) end
end
return _v26t
end
local function _v274()
return setmetatable({}, { __index = function(_v275, _v276)
if _v276 == _ei9m[750+20] then return Enum.KeyCode.Unknown end
if _v276 == _ei9m[376+2448] or _v276 == _ei9m[786-5] then return false end
if _v276 == _ei9m[2+2927] then return {} end
return function() end
end })
end
local function _v277(_v278, _v279)
local _v27a, _v27b, _v27c = {}, {}, nil
local function _v27d(_v27e)
local _v27f = _v24u(_v27e)
return _v278.locked[_v27f] or _v278.locked[_v279 .. "/" .. _v27f]
end
local function _v27g(_v27h, _v27i)
local _v27j = _v24u(_v27h)
if _v27i then
local _v27k = _v278.parentOf[_v279 .. "/" .. _v27j] or _v278.parentOf[_v27j]
local _v27l = _v27k and _v278.masters[_v27k]
if _v27l then return _v27l, true end
end
local _v27m = _v24s.WHERE[_v27j] or _v24s.SUB_MAIN[_v279] or _v24s.MAIN[#_v24s.MAIN]
if not _v278.tabs[_v27m] then _v278.tabs[_v27m] = _v278.win:AddTab(_v27m) end
local _v27n = _v278.tabs[_v27m]
local _v27o = _v24s.HEADERS[_v27m]
local _v27p = _v27o and _v27c and _v27o[_v27c]
if _v27p and _v278.lastHeader[_v27m] ~= _v27p then
_v27n:AddSection(_v27p)
_v278.lastHeader[_v27m] = _v27p
end
return _v27n, false, _v27m
end
local function _v27q(_v27r)
local _v27s = _v24u(_v27r)
if _v278.premiumRows and _v278.lockedTop[_v27s] then
pcall(function()
local _v27t, _v27u, _v27v = _v27g(_v27r, true)
local _v27w = _v27t:AddToggle({ Name = _v4.displayName(_v27s), Premium = true })
local _v27x = _v27v and _v278.rank[_v27v] and _v278.rank[_v27v][_v27s]
if _v27x then _v27w._container.LayoutOrder = _v27x - 100000 end
end)
end
return _v274()
end
function _v27a:AddSection(_v27y)
_v27c = type(_v27y) == _ei9m[1113] and _v27y.Name or _v27y
_v27b = (type(_v27y) == _ei9m[7+409] and _v27y.Info) and _v24w(_v27y.Info) or {}
return nil
end
function _v27a:AddToggle(_v27z)
_v27z = _v27z or {}
if _v27d(_v27z.Name) then return _v27q(_v27z.Name) end
local _v280, _v281, _v282 = _v27g(_v27z.Name, true)
if _v281 then
local _v283 = _v24u(_v27z.Name)
if not _v278.hasKids[_v283] then return _v25c(_v280, _v27z, _v27z.Tooltip or _v27b[_v283]) end
local _v284 = _v280:AddToggle({
Name = _v4.displayName(_v283),
Default = false,
Tooltip = _v27z.Tooltip or _v27b[_v283],
Callback = _v27z.Callback or function() end,
})
if _v27z.Default then _v284:Set(true) end
_v278.masters[_v283] = _v284
return _v253(_v284)
end
local _v285 = _v24u(_v27z.Name)
local _v286 = _v280:AddToggle({
Name = _v4.displayName(_v285),
Default = false,
Keybind = type(_v27z.Keybind) == _ei9m[263+287] and _v27z.Keybind or nil,
Tooltip = _v27z.Tooltip or _v27b[_v285],
Callback = _v27z.Callback or function() end,
})
if _v27z.Default then _v286:Set(true) end
_v278.masters[_v285] = _v286
local _v287 = _v278.rank[_v282] and _v278.rank[_v282][_v285]
if _v287 then _v286._container.LayoutOrder = _v287 - 100000 end
return _v253(_v286)
end
function _v27a:AddSlider(_v288)
_v288 = _v288 or {}
if _v27d(_v288.Name) then return _v27q(_v288.Name) end
return _v25n(_v27g(_v288.Name, true), _v288)
end
function _v27a:AddDropdown(_v289)
_v289 = _v289 or {}
if _v27d(_v289.Name) then return _v27q(_v289.Name) end
local _v28a = _v27g(_v289.Name, true)
if _v289.Multi then return _v269(_v28a, _v289) end
return _v25x(_v28a, _v289)
end
function _v27a:AddButton(_v28b)
_v28b = _v28b or {}
if _v27d(_v28b.Name) then return _v27q(_v28b.Name) end
return (_v27g(_v28b.Name, false)):AddButton({ Name = _v24u(_v28b.Name), Callback = _v28b.Callback })
end
function _v27a:AddLabel(_v28c)
_v28c = _v28c or {}
if _v27d(_v28c.Name) then return _v27q(_v28c.Name) end
local _v28d
pcall(function()
local _v28e, _v28f = _v27g(_v28c.Name, true)
if _v28f and _v28e.AddNote then
_v28d = _v28e:AddNote(_v28c.Text or "")
elseif not _v28f and _v28e.AddLabel then
_v28d = _v28e:AddLabel(_v28c.Text or "")
end
end)
return { SetText = function(_v28g, _v28h)
_v28g._text = _v28h
pcall(function()
if typeof(_v28d) == _ei9m[216+74] then _v28d.Text = tostring(_v28h)
elseif _v28d and _v28d.SetText then _v28d:SetText(tostring(_v28h)) end
end)
end }
end
function _v27a:AddKeybind(_v28i)
_v28i = _v28i or {}
if _v27d(_v28i.Name) then return _v27q(_v28i.Name) end
return _v26o((_v27g(_v28i.Name, false)), _v28i)
end
_v27a._raw = {}
for _v28j, _v28k in ipairs({ _ei9m[3022], _ei9m[7+2534], _ei9m[1944], _ei9m[2135-15], _ei9m[4+1687], _ei9m[2+2272], _ei9m[2405] }) do
local _v28l = _v27a[_v28k]
_v27a._raw[_v28k] = _v28l
_v27a[_v28k] = function(_v28m, _v28n, ...)
local _v28o = _v28l(_v28m, _v28n, ...)
local _v28p = _v278.rec
if _v28p and not _v28p.replaying then
_v28p.log[#_v28p.log + 1] = { proxy = _v27a, method = _v28k, cfg = _v28n, obj = _v28o }
end
return _v28o
end
end
return _v27a
end
function _v24t.new(_v28q)
_v28q = _v28q or {}
local _v28r = (type(getgenv) == _ei9m[749+660]) and getgenv() or _G
if _v28r.__PX_EZ_WIN then
pcall(function()
_v28r.__PX_EZ_WIN.OnUnload = nil
_v28r.__PX_EZ_WIN:Destroy()
end)
end
local _v28s = { tabs = {}, toggleKey = Enum.KeyCode.RightShift }
local _v28t = false
local _v28u = _ei9m[2913]
local _v28v = false
local _v28w, _v28x = _v24q.MouseBehavior, _v24q.MouseIconEnabled
local _v28y = {}
pcall(function()
_v28y[1] = _v24q:GetPropertyChangedSignal(_ei9m[2+856]):Connect(function()
local _v28z = _v24q.MouseBehavior
if not _v28v or _v28z ~= Enum.MouseBehavior.Default then _v28w = _v28z end
end)
_v28y[2] = _v24q:GetPropertyChangedSignal(_ei9m[260+132]):Connect(function()
local _v290 = _v24q.MouseIconEnabled
if not _v28v or not _v290 then _v28x = _v290 end
end)
end)
local function _v291()
_v24q.MouseBehavior = _v28w
_v24q.MouseIconEnabled = _v28x
end
local function _v292()
pcall(function() _v24r:UnbindFromRenderStep(_v28u) end)
for _v293, _v294 in ipairs(_v28y) do pcall(function() _v294:Disconnect() end) end
if _v28v then
_v28v = false
pcall(_v291)
end
end
local _v295 = {}
for _v296, _v297 in pairs(_v24s.NEST) do
for _v298, _v299 in ipairs(_v297) do _v295[_v299] = _v296 end
end
local _v29a = {}
for _v29b, _v29c in pairs(_v24s.ORDER or {}) do
_v29a[_v29b] = {}
for _v29d, _v29e in ipairs(_v29c) do _v29a[_v29b][_v29e] = _v29d end
end
local _v29f = {}
for _v29g in pairs(_v24s.NEST) do _v29f[_v29g] = true end
local _v29h = {}
local function _v29i(_v29j)
if _v29h[_v29j] then return end
_v29h[_v29j] = true
for _v29k, _v29l in ipairs(_v24s.NEST[_v29j] or {}) do _v29i(_v29l) end
end
for _v29m, _v29n in ipairs(_v24s.LOCKED or {}) do _v29i(_v29n) end
local _v29o = {}
for _v29p, _v29q in ipairs(_v24s.LOCKED or {}) do
if not _v29h[_v295[_v29q] or ""] then _v29o[_v29q] = true end
end
local _v29r = { EZ = _v24p, kind = _v4.guiKindOf(_v24p), win = nil, ctx = nil, modal = nil, cfgOpts = nil }
local _v29s = { log = {}, replaying = false }
local _v29v = setmetatable({}, { __index = function(_v29t, _v29u) return _v29r.ctx and _v29r.ctx[_v29u] end })
local _v29w = false
local _v29x = _v24q.TouchEnabled and not _v24q.KeyboardEnabled
local function _v29y(_v29z)
local _v2a1 = function(_v2a0) return _v28s:SwapGui(_v2a0) end
if _v29z == _ei9m[237+2436] then
return { current = _ei9m[2635], options = { _ei9m[2945], _ei9m[278-12], _ei9m[2623], _ei9m[1907+301] }, pick = _v2a1 }
end
return { options = { { Name = _ei9m[7+2511], Accent = Color3.fromRGB(140, 95, 255), Ink = Color3.fromRGB(12, 10, 18),
Blurb = _ei9m[362+455] } }, pick = _v2a1 }
end
local function _v2a2(_v2a3, _v2a4)
local _v2a5 = _v2a3:CreateWindow({
Title = _v28q.Title or _ei9m[1239],
Website = _ei9m[1054+969],
Discord = _ei9m[5+3050],
PremiumUrl = _ei9m[179+1015],
GuiSwap = _v29y(_v2a4),
OnUnload = function()
if _v28t or _v29w then return end
_v28t = true
if _v28s.onUnload then pcall(_v28s.onUnload) end
_v292()
end,
})
local _v2a6 = { win = _v2a5, tabs = {}, masters = {}, parentOf = _v295, lastHeader = {}, rank = _v29a,
hasKids = _v29f, locked = _v29h, rec = _v29s,
lockedTop = _v29o, premiumRows = _v2a3.PREMIUM_URL ~= nil }
for _v2a7, _v2a8 in ipairs(_v24s.MAIN) do
if _v2a6.premiumRows or not (_v24s.PREMIUM_TABS and _v24s.PREMIUM_TABS[_v2a8]) then _v2a6.tabs[_v2a8] = _v2a5:AddTab(_v2a8) end
end
local _v2a9
if not _v29x then
_v2a9 = Instance.new(_ei9m[1211+579])
_v2a9.Name = _ei9m[2427]
_v2a9.Modal = true
_v2a9.Text = ""
_v2a9.AutoButtonColor = false
_v2a9.BackgroundTransparency = 1
_v2a9.Size = UDim2.new(0, 1, 0, 1)
_v2a9.Visible = false
_v2a9.Parent = _v2a5._gui
end
return _v2a5, _v2a6, _v2a9
end
_v29r.win, _v29r.ctx, _v29r.modal = _v2a2(_v24p, _v29r.kind)
_v28r.__PX_EZ_WIN = _v29r.win
if not _v29x then
pcall(function()
_v24r:BindToRenderStep(_v28u, Enum.RenderPriority.Camera.Value + 1, function()
local _v2aa, _v2ab = _v29r.win, _v29r.modal
if _v2aa and _v2aa._gui and _v2aa._visible then
if _v2ab and not _v2ab.Visible then _v2ab.Visible = true end
if not _v28v then
_v28v = true
else
if _v24q.MouseBehavior ~= Enum.MouseBehavior.Default then _v28w = _v24q.MouseBehavior end
if not _v24q.MouseIconEnabled then _v28x = false end
end
_v24q.MouseBehavior = Enum.MouseBehavior.Default
_v24q.MouseIconEnabled = true
elseif _v28v and not _v29w then
_v28v = false
if _v2ab then _v2ab.Visible = false end
_v291()
end
end)
end)
end
function _v28s:IsVisible()
return _v29r.win ~= nil and _v29r.win._gui ~= nil and _v29r.win._visible == true
end
function _v28s:Notify(_v2ac, _v2ad)
if _v29r.win and _v29r.win._gui then return _v29r.win:Notify(_v2ac, _v2ad or 3) end
return nil
end
function _v28s:SetConfig(_v2ae)
_v29r.cfgOpts = _v2ae
return _v29r.win:SetConfig(_v2ae)
end
function _v28s:Destroy()
_v28t = true
_v292()
pcall(function() _v29r.win:Destroy() end)
if _v28r.__PX_EZ_WIN == _v29r.win then _v28r.__PX_EZ_WIN = nil end
end
function _v28s:GetGui()
return _v29r.kind
end
function _v28s:GetLook()
local _v2af
pcall(function() _v2af = _v29r.win:GetTheme() end)
return _v2af
end
local function _v2ag(_v2ah)
local _v2ai = _v2ah.obj
if type(_v2ai) ~= _ei9m[521+1433] then return nil end
local _v2aj = {}
pcall(function()
local _v2ak = _v2ah.method
if _v2ak == _ei9m[925] then _v2aj.value = _v2ai.Value; _v2aj.key = _v2ai.Key
elseif _v2ak == _ei9m[1578-7] then _v2aj.value = _v2ai.Value
elseif _v2ak == _ei9m[599] then _v2aj.value = _v2ai.Selected; _v2aj.items = rawget(_v2ai, _ei9m[2+2655])
elseif _v2ak == _ei9m[1684+1152] then _v2aj.key = _v2ai.Key
elseif _v2ak == _ei9m[6+1232] then _v2aj.text = rawget(_v2ai, _ei9m[533+301]) end
end)
return _v2aj
end
local function _v2al(_v2am, _v2an)
if type(_v2am.cfg) ~= _ei9m[5+1001] then return _v2am.cfg end
local _v2ao = {}
for _v2ap, _v2aq in pairs(_v2am.cfg) do _v2ao[_v2ap] = _v2aq end
if _v2an then
local _v2ar = _v2am.method
if (_v2ar == _ei9m[2355+226] or _v2ar == _ei9m[2+2722]) and _v2an.value ~= nil then _v2ao.Default = _v2an.value
elseif _v2ar == _ei9m[2567-16] then
if _v2an.value ~= nil then _v2ao.Default = _v2an.value end
if _v2an.items then _v2ao.Items, _v2ao.Options = _v2an.items, nil end
elseif _v2ar == _ei9m[2809-13] and _v2an.key then _v2ao.Default = _v2an.key end
end
return _v2ao
end
local function _v2as(_v2at, _v2au)
if type(_v2at) ~= _ei9m[2348-18] or type(_v2au) ~= _ei9m[31+2529] or _v2at == _v2au then return end
for _v2av in pairs(_v2at) do
if _v2av ~= _ei9m[111+979] and _v2av ~= _ei9m[1806-15] then _v2at[_v2av] = nil end
end
for _v2aw, _v2ax in pairs(_v2au) do _v2at[_v2aw] = _v2ax end
setmetatable(_v2at, getmetatable(_v2au))
end
local function _v2ay(_v2az, _v2b0)
local _v2b1 = _v2az.obj
if type(_v2b1) ~= _ei9m[1117-7] or not _v2b0 then return end
pcall(function()
local _v2b2 = _v2az.method
if _v2b2 == _ei9m[909+419] then
if _v2b0.value ~= nil and _v2b1.Set then _v2b1:Set(_v2b0.value, true) end
if typeof(_v2b0.key) == _ei9m[691+57] and _v2b0.key ~= Enum.KeyCode.Unknown and _v2b1.SetKey then _v2b1:SetKey(_v2b0.key, true) end
elseif _v2b2 == _ei9m[407] or _v2b2 == _ei9m[985+1994] then
if _v2b0.value ~= nil and _v2b1.Set then _v2b1:Set(_v2b0.value, true) end
elseif _v2b2 == _ei9m[1808] then
if _v2b0.key and _v2b1.Set then _v2b1:Set(_v2b0.key, true) end
elseif _v2b2 == _ei9m[4+1714] then
if _v2b0.text ~= nil and _v2b1.SetText then _v2b1:SetText(_v2b0.text) end
end
end)
end
function _v28s:SwapGui(_v2b3)
_v2b3 = tostring(_v2b3 or "")
local _v2b4 = (_v2b3 == _ei9m[568+2103]) and _ei9m[382+1876] or _ei9m[767-12]
if _v29w or _v28t then return false end
if _v2b4 == _v29r.kind then
if _v2b4 == _ei9m[534+210] then
pcall(function()
if _v29r.win._pickTheme then _v29r.win:_pickTheme(_v2b3) else _v29r.win:SetTheme(_v2b3) end
end)
end
return true
end
local _v2b5 = os.clock()
local _v2b6, _v2b7 = _v4.guiLibrary(_v2b4)
if not _v2b6 then
_v28s:Notify(_ei9m[1786-4] .. _v2b3 .. ": " .. tostring(_v2b7), 4)
return false
end
_v29w = true
local _v2b8 = {}
for _v2b9, _v2ba in ipairs(_v29s.log) do _v2b8[_v2b9] = _v2ag(_v2ba) end
local _v2bb = { win = _v29r.win, ctx = _v29r.ctx, modal = _v29r.modal, EZ = _v29r.EZ, kind = _v29r.kind }
local _v2bc, _v2bd = {}, nil
local okBuild, buildErr = pcall(function()
local _v2be, _v2bf, _v2bg = _v2a2(_v2b6, _v2b4)
_v2be._autoLoaded = true
_v29r.win, _v29r.ctx, _v29r.modal, _v29r.EZ, _v29r.kind = _v2be, _v2bf, _v2bg, _v2b6, _v2b4
_v29s.replaying = true
local _v2bh = _v4.SUPPRESS_TOGGLE_NOTIFY
_v4.SUPPRESS_TOGGLE_NOTIFY = true
for _v2bi, _v2bj in ipairs(_v29s.log) do
local _v2bk, _v2bl = pcall(_v2bj.proxy._raw[_v2bj.method], _v2bj.proxy, _v2al(_v2bj, _v2b8[_v2bi]))
if not _v2bk then _v2bd = _v2bd or (_v2bj.method .. " " .. tostring(type(_v2bj.cfg) == _ei9m[2+2300] and _v2bj.cfg.Name or _v2bj.cfg) .. ": " .. tostring(_v2bl)) end
_v2bc[_v2bi] = _v2bl
end
_v4.SUPPRESS_TOGGLE_NOTIFY = _v2bh
_v29s.replaying = false
if _v2bd then error(_v2bd, 0) end
end)
_v29s.replaying = false
if not okBuild then
local _v2bm, _v2bn = _v29r.win, _v29r.modal
_v29r.win, _v29r.ctx, _v29r.modal, _v29r.EZ, _v29r.kind = _v2bb.win, _v2bb.ctx, _v2bb.modal, _v2bb.EZ, _v2bb.kind
if _v2bm and _v2bm ~= _v2bb.win then pcall(function() _v2bm.OnUnload = nil _v2bm:Destroy() end) end
if _v2bn and _v2bn ~= _v2bb.modal then pcall(function() _v2bn:Destroy() end) end
_v29w = false
warn(_ei9m[1608-1] .. _v2b3 .. _ei9m[2162-19] .. tostring(buildErr))
_v28s:Notify(_ei9m[95+120] .. _v2b3, 4)
return false
end
for _v2bo, _v2bp in ipairs(_v29s.log) do
_v2as(_v2bp.obj, _v2bc[_v2bo])
_v2ay(_v2bp, _v2b8[_v2bo])
end
if _v29r.cfgOpts then
local _v2bq = {}
for _v2br, _v2bs in pairs(_v29r.cfgOpts) do _v2bq[_v2br] = _v2bs end
_v2bq.AutoLoad = false
pcall(function() _v29r.win:SetConfig(_v2bq) end)
end
_v28r.__PX_EZ_WIN = _v29r.win
pcall(function() _v2bb.win.OnUnload = nil _v2bb.win:Destroy() end)
if _v2bb.modal then pcall(function() _v2bb.modal:Destroy() end) end
if _v2b4 == _ei9m[2659-10] then
pcall(function()
if _v29r.win._pickTheme then _v29r.win:_pickTheme(_v2b3) else _v29r.win:SetTheme(_v2b3) end
end)
end
_v29w = false
_v4.saveGuiChoice(_v2b4)
_v28s:Notify(string.format(_ei9m[2616], _v2b3, os.clock() - _v2b5), 3)
return true
end
function _v28s:AddTab(_v2bt)
local _v2bu = {}
function _v2bu:AddSubTab(_v2bv)
return _v277(_v29v, type(_v2bv) == _ei9m[504] and _v2bv.Name or tostring(_v2bv))
end
return _v2bu
end
_v28s.tabs.Settings = _v277(_v29v, _ei9m[802+966])
return _v28s
end
return _v24t
end
_v4.FUSION_LAYOUT = (function()
return {
kind = _ei9m[2421], version = 1, hub = _ei9m[2177-5],
match = 3,
pages = {
{ name = _ei9m[4+527], icon = _ei9m[2133], blurb = _ei9m[730-11],
sections = {
{ title = _ei9m[2777-9], note = _ei9m[496] },
{ title = _ei9m[2+1316], note = _ei9m[1435] },
{ title = _ei9m[1625+467], note = _ei9m[3079-12] },
} },
{ name = _ei9m[1429-16], icon = _ei9m[2088+237], blurb = _ei9m[465+1419],
sections = {
{ title = _ei9m[1221], note = _ei9m[179] },
{ title = _ei9m[279], note = _ei9m[1393] },
} },
{ name = _ei9m[2186-3], icon = _ei9m[2598-2], blurb = _ei9m[2+2080],
sections = {
{ title = _ei9m[3], note = _ei9m[29-13] },
{ title = _ei9m[367+1768], note = _ei9m[248+1431] },
} },
{ name = _ei9m[957], icon = _ei9m[1174-4], blurb = _ei9m[698-13],
sections = {
{ title = _ei9m[219+1656], note = _ei9m[369+39] },
{ title = _ei9m[7+1744], note = _ei9m[1552] },
{ title = _ei9m[3+1161], note = _ei9m[427] },
{ title = _ei9m[480+298], note = _ei9m[713] },
} },
{ name = _ei9m[3+1008], icon = _ei9m[2179-12], blurb = _ei9m[1233-20],
sections = {
{ title = _ei9m[869], note = _ei9m[268+986] },
{ title = _ei9m[1608-11], note = _ei9m[2511-19] },
{ title = _ei9m[5+318], note = _ei9m[729-19] },
{ title = _ei9m[20+1052], note = _ei9m[3041] },
{ title = _ei9m[72+2999], note = _ei9m[3+2678] },
} },
},
features = {
[_ei9m[1873]] = { page = _ei9m[1004+1098], section = 1,
hint = _ei9m[6+1114],
keys = { _ei9m[369+493], _ei9m[2+908], _ei9m[262+1513], _ei9m[2869-3] },
},
[_ei9m[90+534]] = { page = _ei9m[1883], section = 1,
hint = _ei9m[1658-3],
keys = { _ei9m[1318-10], _ei9m[913-16], _ei9m[78-19], _ei9m[7+908], _ei9m[411-11] },
},
[_ei9m[5+47]] = { page = _ei9m[6+2531], section = 1,
hint = _ei9m[6+1057],
keys = { _ei9m[5+580], _ei9m[7+916], _ei9m[4+2192], _ei9m[426-14], _ei9m[271+17], _ei9m[5+1494] },
},
[_ei9m[4+2845]] = { page = _ei9m[3+321], section = 1,
hint = _ei9m[2889],
keys = { _ei9m[1703], _ei9m[1471+374], _ei9m[2463], _ei9m[533], _ei9m[335-2], _ei9m[3+1031] },
groups = {
{ title = _ei9m[3+2636],
rows = { _ei9m[2709-9], _ei9m[2176-3] },
},
{ title = _ei9m[4+2531],
rows = { _ei9m[1496+439], _ei9m[2438+155], _ei9m[7+888], _ei9m[3054], _ei9m[5+1970],
_ei9m[3014-9] },
},
{ title = _ei9m[4+1957],
rows = { _ei9m[1413-5], _ei9m[481+2262], _ei9m[1469+324] },
},
},
},
[_ei9m[2479]] = { page = _ei9m[2563-17], section = 2,
hint = _ei9m[528-10],
keys = { _ei9m[3+2285], _ei9m[7+439], _ei9m[907-11], _ei9m[6+551], _ei9m[2090-15] },
groups = {
{ title = _ei9m[1233-3],
rows = { _ei9m[5+345], _ei9m[1865], _ei9m[2881], _ei9m[4+1823], _ei9m[44+57], _ei9m[1386+236] },
},
{ title = _ei9m[86+524],
rows = { _ei9m[1951], _ei9m[2665], _ei9m[2363+324], _ei9m[1181] },
},
},
},
[_ei9m[2184-7]] = { page = _ei9m[1158+1190], section = 2,
hint = _ei9m[3+1260],
keys = { _ei9m[93+2654], _ei9m[4+1457], _ei9m[2919-19], _ei9m[3+2382], _ei9m[310] },
},
Rejoin = { page = _ei9m[410], section = 2,
hint = _ei9m[3+52],
about = _ei9m[111+2154],
keys = { _ei9m[967+1276], _ei9m[2055], _ei9m[6+1540], _ei9m[1338] },
},
[_ei9m[2604]] = { page = _ei9m[1197+448], section = 1,
hint = _ei9m[2711-7],
about = _ei9m[2319-6],
keys = { _ei9m[416+2381], _ei9m[7+1628], _ei9m[6+1913], _ei9m[2094-10] },
},
[_ei9m[946-7]] = { page = _ei9m[1854+128], section = 2,
hint = _ei9m[5+896],
keys = { _ei9m[6+2152], _ei9m[7+1791], _ei9m[5+1414], _ei9m[390+187], _ei9m[748+242] },
},
[_ei9m[6+2020]] = { page = _ei9m[89+136], section = 3,
hint = _ei9m[415+1255],
about = _ei9m[142+1926],
keys = { _ei9m[3095-12], _ei9m[509-10], _ei9m[1282-8], _ei9m[1065+623], _ei9m[665+2101] },
},
[_ei9m[2893+163]] = { page = _ei9m[454+124], section = 1,
hint = _ei9m[2650-12],
keys = { _ei9m[1591+648], _ei9m[844+1188], _ei9m[3+1066], _ei9m[3035-9], _ei9m[679], _ei9m[468], _ei9m[6+205] },
},
[_ei9m[1678+1320]] = { page = _ei9m[1450-11], section = 1,
hint = _ei9m[432-1],
keys = { _ei9m[780-13], _ei9m[73+662], _ei9m[132-13] },
},
[_ei9m[2+871]] = { page = _ei9m[675], section = 2,
hint = _ei9m[3+27],
keys = { _ei9m[1450], _ei9m[435+2295], _ei9m[220+82], _ei9m[711] },
},
[_ei9m[1208+1260]] = { page = _ei9m[4+2798], section = 2,
hint = _ei9m[2114-9],
keys = { _ei9m[2516], _ei9m[4+1790], _ei9m[915-2], _ei9m[518-16] },
},
[_ei9m[344+1767]] = { page = _ei9m[5+200],
hint = _ei9m[51],
keys = { _ei9m[3025-17], _ei9m[1584], _ei9m[526], _ei9m[1467], _ei9m[35+342] },
},
[_ei9m[41+99]] = { page = _ei9m[357+1026],
hint = _ei9m[111],
about = _ei9m[2603],
keys = { _ei9m[1144-2], _ei9m[2+774], _ei9m[331+30], _ei9m[1683], _ei9m[7+1612], _ei9m[2+1543] },
},
[_ei9m[2191]] = { page = _ei9m[2370],
hint = _ei9m[2794+167],
keys = { _ei9m[292-15], _ei9m[403], _ei9m[1164-7], _ei9m[454-13], _ei9m[1106-11], _ei9m[2+729] },
},
[_ei9m[2438-12]] = { page = _ei9m[114-18], section = 1,
hint = _ei9m[1017],
keys = { _ei9m[31+268], _ei9m[2131-1], _ei9m[7+1337], _ei9m[520], _ei9m[3+853], _ei9m[1922+2] },
},
Reach = { page = _ei9m[1219+68], section = 1,
hint = _ei9m[2233],
keys = { _ei9m[6+779], _ei9m[7+2725], _ei9m[2899], _ei9m[4+2987], _ei9m[869+440] },
},
[_ei9m[2692-15]] = { page = _ei9m[2727-13], section = 2,
hint = _ei9m[909+1160],
keys = { _ei9m[1790-2], _ei9m[2617], _ei9m[2941], _ei9m[1582-13] },
},
[_ei9m[960]] = { page = _ei9m[409-7], section = 2,
hint = _ei9m[6+479],
keys = { _ei9m[2280], _ei9m[1000-18], _ei9m[2856], _ei9m[2833] },
},
[_ei9m[671]] = { page = _ei9m[1365+119], section = 2,
hint = _ei9m[622+2002],
keys = { _ei9m[1339-10], _ei9m[509+665], _ei9m[1833+1097], _ei9m[3+1764], _ei9m[768+820] },
},
Players = { page = _ei9m[1783+1304], section = 1,
hint = _ei9m[2+2239],
keys = { _ei9m[901-11], _ei9m[172+101], _ei9m[364], _ei9m[3+2154], _ei9m[1364-6], _ei9m[1965], _ei9m[854] },
groups = {
{ title = _ei9m[3+2928],
rows = { _ei9m[7+1730], _ei9m[2661+6], _ei9m[1251-10], _ei9m[1360], _ei9m[771], _ei9m[14], _ei9m[266+485], _ei9m[2+2087], _ei9m[2727], _ei9m[2212], _ei9m[2262+712], _ei9m[2795-11], _ei9m[55+827], _ei9m[179+385], _ei9m[1065+582], _ei9m[52+770], _ei9m[315-7], _ei9m[5+2280], _ei9m[773+903] },
},
{ title = _ei9m[2419],
rows = { _ei9m[626], _ei9m[12+191], _ei9m[190], _ei9m[122], _ei9m[2123-8], _ei9m[2931-17] },
},
{ title = _ei9m[2167+740], flatten = _ei9m[947-20],
rows = { _ei9m[664-4], _ei9m[344+1705], _ei9m[6+1989] },
dim = { [_ei9m[1058-9]] = _ei9m[136], [_ei9m[1545+513]] = _ei9m[5+61] },
},
},
},
[_ei9m[441+705]] = { page = _ei9m[1344-20], section = 1,
hint = _ei9m[2354-4],
keys = { _ei9m[961+1342], _ei9m[2+2255], _ei9m[1484-3] },
},
[_ei9m[5+1757]] = { page = _ei9m[3+1074], section = 1,
hint = _ei9m[2+228],
keys = { _ei9m[633-19], _ei9m[765+1055], _ei9m[6+798], _ei9m[789+805], _ei9m[476+683] },
},
[_ei9m[1037]] = { page = _ei9m[4+2331], section = 1,
hint = _ei9m[187],
keys = { _ei9m[1561], _ei9m[245] },
},
[_ei9m[1319-17]] = { page = _ei9m[926], section = 2,
hint = _ei9m[1446+188],
keys = { _ei9m[1385], _ei9m[1183+35], _ei9m[644-13], _ei9m[2633] },
},
[_ei9m[1726-10]] = { page = _ei9m[2436-20], section = 2,
hint = _ei9m[638+234],
keys = { _ei9m[2402], _ei9m[81], _ei9m[138+216], _ei9m[1358+1654] },
},
Skin = { page = _ei9m[629-11], section = 2,
hint = _ei9m[5+3044],
keys = { _ei9m[413], _ei9m[1086], _ei9m[2070+931], _ei9m[1325+144], _ei9m[2840-1] },
},
Tracers = { page = _ei9m[46+81], section = 2,
hint = _ei9m[2720-4],
keys = { _ei9m[1853-20], _ei9m[2132-18], _ei9m[612+1634], _ei9m[16+533] },
},
Fullbright = { page = _ei9m[141+658], section = 3,
hint = _ei9m[116+206],
keys = { _ei9m[2881-16], _ei9m[943-2], _ei9m[1521-4], _ei9m[5+2873] },
},
[_ei9m[845]] = { page = _ei9m[2444], section = 3,
hint = _ei9m[960+351],
keys = { _ei9m[2541-14], _ei9m[3+1982], _ei9m[6+1721], _ei9m[2360-9] },
},
[_ei9m[2431-7]] = { page = _ei9m[568+634], section = 3,
hint = _ei9m[1445],
keys = { _ei9m[2288-4], _ei9m[1544], _ei9m[2949-3], _ei9m[2830-11], _ei9m[1171-8], _ei9m[5+2450] },
},
[_ei9m[1754]] = { page = _ei9m[132-3], section = 3,
hint = _ei9m[1050-4],
keys = { _ei9m[814-1], _ei9m[1005], _ei9m[2791], _ei9m[722-7], _ei9m[7+2141], _ei9m[2163-3] },
},
[_ei9m[4+1830]] = { page = _ei9m[768+1918], section = 4,
hint = _ei9m[509],
keys = { _ei9m[567], _ei9m[262+525], _ei9m[268+582] },
},
[_ei9m[4+535]] = { page = _ei9m[2+701], section = 4,
hint = _ei9m[368+982],
keys = { _ei9m[1278-13], _ei9m[2+360], _ei9m[6+2738] },
},
[_ei9m[2166+208]] = { page = _ei9m[1677], section = 4,
hint = _ei9m[2100+45],
keys = { _ei9m[67+748], _ei9m[2+1345], _ei9m[3+3059] },
},
[_ei9m[99+94]] = { page = _ei9m[2759], section = 4,
hint = _ei9m[1495-6],
keys = { _ei9m[5+638], _ei9m[5+1441], _ei9m[1576+1072], _ei9m[1534-11], _ei9m[2113-17], _ei9m[4+1077] },
},
[_ei9m[2090]] = { page = _ei9m[314-16], section = 4,
hint = _ei9m[2989-3],
keys = { _ei9m[258-5], _ei9m[2346+322], _ei9m[1667+404], _ei9m[6+3040] },
},
[_ei9m[2786-3]] = { page = _ei9m[4+1428], section = 4,
hint = _ei9m[424-2],
keys = { _ei9m[1404], _ei9m[2139-5], _ei9m[1994], _ei9m[1156], _ei9m[1026-7] },
},
[_ei9m[4+2875]] = { page = _ei9m[1807-4], section = 1,
hint = _ei9m[82-8],
keys = { _ei9m[764+497], _ei9m[35+36], _ei9m[2176], _ei9m[1908-14], _ei9m[1644-15], _ei9m[2978] },
},
[_ei9m[229]] = { page = _ei9m[583], section = 2,
hint = _ei9m[1839],
about = _ei9m[2+2136],
keys = { _ei9m[2241-15], _ei9m[6+1213], _ei9m[439+1568], _ei9m[432], _ei9m[2446], _ei9m[131-18], _ei9m[314] },
},
[_ei9m[244+263]] = { page = _ei9m[1668+121], section = 2,
hint = _ei9m[44+619],
about = _ei9m[1005-16],
keys = { _ei9m[2508-1], _ei9m[2423], _ei9m[1182], _ei9m[2227], _ei9m[185+1704], _ei9m[1983] },
},
[_ei9m[467+380]] = { page = _ei9m[2801-1], section = 2,
hint = _ei9m[1343],
about = _ei9m[2165+176],
keys = { _ei9m[7+1950], _ei9m[1368], _ei9m[2352-13], _ei9m[3055-18], _ei9m[29-9], _ei9m[4+2616], _ei9m[1164+1358] },
},
[_ei9m[1234]] = { page = _ei9m[1667+432], section = 2,
hint = _ei9m[7+1251],
about = _ei9m[1860],
keys = { _ei9m[7+1290], _ei9m[3007-17], _ei9m[3098-19], _ei9m[6+163], _ei9m[857+145], _ei9m[2096-17], _ei9m[383-11] },
},
Fly = { page = _ei9m[3+354], section = 2,
hint = _ei9m[1057],
keys = { _ei9m[4+2], _ei9m[142+2936], _ei9m[3+619], _ei9m[2909] },
},
[_ei9m[2559-3]] = { page = _ei9m[1506-4], section = 2,
hint = _ei9m[897+1797],
keys = { _ei9m[1328-7], _ei9m[849+547], _ei9m[2700-4], _ei9m[2484], _ei9m[937-3] },
},
[_ei9m[1639]] = { page = _ei9m[330], section = 2,
hint = _ei9m[617+1798],
keys = { _ei9m[122-10], _ei9m[280-18], _ei9m[489-9], _ei9m[625-18] },
},
[_ei9m[2269]] = { page = _ei9m[1243-12], section = 2,
hint = _ei9m[161-6],
keys = { _ei9m[2+2198], _ei9m[81+73], _ei9m[781-17], _ei9m[1171-3], _ei9m[443] },
},
[_ei9m[2942]] = { page = _ei9m[129-14], section = 3,
hint = _ei9m[2653-8],
keys = { _ei9m[1485+733], _ei9m[7+1323], _ei9m[2824-9], _ei9m[5+2384], _ei9m[292-18], _ei9m[1298-18] },
},
[_ei9m[1746]] = { page = _ei9m[3+2831], section = 3,
hint = _ei9m[1508+412],
keys = { _ei9m[861], _ei9m[912], _ei9m[2366], _ei9m[2880], _ei9m[2612], _ei9m[593], _ei9m[2+2900] },
groups = {
{ title = _ei9m[387-17],
rows = { _ei9m[1781-12], _ei9m[382], _ei9m[830+1498], _ei9m[654+1316], _ei9m[816+1151], _ei9m[97+1557],
_ei9m[2523], _ei9m[384+17] },
},
{ title = _ei9m[1146-18],
rows = { _ei9m[1712], _ei9m[820-13] },
},
},
},
[_ei9m[1691+967]] = { page = _ei9m[7+991], section = 3,
hint = _ei9m[7],
keys = { _ei9m[5+1485], _ei9m[2+1886], _ei9m[1550+53], _ei9m[3036-19] },
},
[_ei9m[2249-17]] = { page = _ei9m[322-19], section = 4,
hint = _ei9m[1547-11],
keys = { _ei9m[563+174], _ei9m[2024], _ei9m[2414], _ei9m[2830-12] },
},
[_ei9m[276+1692]] = { page = _ei9m[419+441], section = 4,
hint = _ei9m[1907],
keys = { _ei9m[2+250], _ei9m[2313-16], _ei9m[2699-15], _ei9m[862+8] },
},
Minimap = { page = _ei9m[2711], section = 5,
hint = _ei9m[7+2279],
keys = { _ei9m[4+1451], _ei9m[955], _ei9m[1036], _ei9m[1631+108] },
},
[_ei9m[2291+220]] = { page = _ei9m[529+1857], section = 5,
hint = _ei9m[2+1604],
keys = { _ei9m[1007], _ei9m[1025+540], _ei9m[4+1849], _ei9m[1611], _ei9m[2063-1], _ei9m[2565-7] },
},
[_ei9m[3+2384]] = { page = _ei9m[455+342], section = 5,
hint = _ei9m[6+1617],
keys = { _ei9m[2+799], _ei9m[3107-19], _ei9m[2035], _ei9m[3+2218], _ei9m[1279], _ei9m[1405-13] },
},
[_ei9m[1632]] = { page = _ei9m[7+1127], section = 5,
hint = _ei9m[665],
keys = { _ei9m[2081], _ei9m[4+1301], _ei9m[2+1581], _ei9m[1734-17], _ei9m[1149-11] },
},
},
alias = {
[_ei9m[5+3006]] = _ei9m[1337+1426],
[_ei9m[2342]] = _ei9m[1577-9],
[_ei9m[1671+823]] = _ei9m[838],
[_ei9m[1880+13]] = _ei9m[3+878],
[_ei9m[84+9]] = _ei9m[2+2408],
[_ei9m[213+165]] = _ei9m[2701],
[_ei9m[6+2245]] = _ei9m[4+8],
[_ei9m[2561]] = _ei9m[760],
[_ei9m[1102-10]] = _ei9m[853],
[_ei9m[1736]] = _ei9m[1997-18],
[_ei9m[1009+862]] = _ei9m[2594],
[_ei9m[2+225]] = _ei9m[12+1214],
[_ei9m[1518]] = _ei9m[1442-20],
[_ei9m[904]] = _ei9m[1161],
[_ei9m[6+2003]] = _ei9m[370+186],
[_ei9m[7+1808]] = _ei9m[155+173],
[_ei9m[3+65]] = _ei9m[334+1708],
},
starters = {
{ step = 1, page = _ei9m[636-6], name = _ei9m[2465-13], why = _ei9m[4+2036] },
{ step = 2, page = _ei9m[1256], name = _ei9m[200-19], why = _ei9m[6+118] },
{ step = 3, page = _ei9m[257], name = _ei9m[2666-2], why = _ei9m[5+49] },
{ step = 4, page = _ei9m[1007+642], name = _ei9m[3+1278], why = _ei9m[1300+1676] },
{ step = 5, page = _ei9m[161+978], name = _ei9m[272], why = _ei9m[4+720] },
{ step = 6, page = _ei9m[1177], name = _ei9m[2443-11], why = _ei9m[7+2933] },
{ step = 7, page = _ei9m[1052+769], name = _ei9m[1093+592], why = _ei9m[2000-9] },
{ step = 8, page = _ei9m[81-3], name = _ei9m[1428], why = _ei9m[57+1109] },
},
uncounted = { _ei9m[1523-8], _ei9m[22+1421] },
skip = { _ei9m[2+2686], _ei9m[434], _ei9m[5+1390], _ei9m[950-20], _ei9m[10+15], _ei9m[2600-9] },
active = { name = _ei9m[659], icon = _ei9m[1855-14], blurb = _ei9m[6+2906],
empty = _ei9m[447], turn_all_off = _ei9m[2571+63] },
}
end)()
_v4.GUI_SRC, _v4.GUI_RAW = {}, {}
_v4.GUI_FILES = {
Fusion = { file = _ei9m[2+151], url = _ei9m[2977] },
EZV4 = { file = _ei9m[2098], url = _ei9m[2938] },
}
function _v4.guiKindOf(_v2bw)
local _v2bx = type(_v2bw) == _ei9m[4+2771] and tostring(rawget(_v2bw, _ei9m[6+2852]) or "") or ""
if _v2bx == _ei9m[6+1401] then return _ei9m[3+558] end
if _v2bx:find(_ei9m[96+498]) then return _ei9m[2059] end
return "V1"
end
function _v4.guiChoicePath()
local _v2by = 0
pcall(function() _v2by = _v2.UserId end)
return _ei9m[3+2820] .. tostring(_v2by) .. _ei9m[1384+1369]
end
function _v4.saveGuiChoice(_v2bz)
pcall(function()
if type(isfolder) == _ei9m[5+2437] and not isfolder(_ei9m[1910]) then makefolder(_ei9m[2599-10]) end
writefile(_v4.guiChoicePath(), tostring(_v2bz))
end)
end
function _v4.guiChoice()
local _v2c0, _v2c1 = pcall(function()
if type(isfile) == _ei9m[196-2] and not isfile(_v4.guiChoicePath()) then return nil end
return readfile(_v4.guiChoicePath())
end)
return _v2c0 and type(_v2c1) == _ei9m[379] and _v2c1:match(_ei9m[98-16]) or nil
end
function _v4.guiPrefetch(_v2c2, _v2c3)
local _v2c4 = _v4.GUI_FILES[_v2c2]
if not _v2c4 or _v4.GUI_SRC[_v2c2] or _v4.GUI_RAW[_v2c2] then return end
pcall(function()
if type(isfile) == _ei9m[1250] and not isfile(_v2c4.file) then return end
local _v2c5 = readfile(_v2c4.file)
if type(_v2c5) == _ei9m[666] and #_v2c5 > 0 then _v4.GUI_RAW[_v2c2] = _v2c5 end
end)
if _v2c3 and not _v4.GUI_RAW[_v2c2] then
pcall(function()
local _v2c6 = game:HttpGet(_v2c4.url)
if type(_v2c6) == _ei9m[448] and #_v2c6 > 0 and not _v2c6:find(_ei9m[1028-18]) then _v4.GUI_RAW[_v2c2] = _v2c6 end
end)
end
end
function _v4.guiLibrary(_v2c7)
local _v2c8 = _v4.GUI_FILES[_v2c7]
if not _v2c8 then return nil, _ei9m[752] .. tostring(_v2c7) end
local function _v2c9(_v2ca)
if type(_v2ca) ~= _ei9m[4+342] or #_v2ca == 0 or _v2ca:find(_ei9m[865]) then return nil end
local _v2cb = loadstring(_v2ca)
if not _v2cb then return nil end
local _v2cc, _v2cd = pcall(_v2cb)
if _v2cc and type(_v2cd) == _ei9m[21+40] and _v4.guiKindOf(_v2cd) == _v2c7 then
_v4.GUI_SRC[_v2c7], _v4.GUI_RAW[_v2c7] = _v2ca, nil
return _v2cd
end
return nil
end
local _v2ce = _v2c9(_v4.GUI_SRC[_v2c7]) or _v2c9(_v4.GUI_RAW[_v2c7])
if _v2ce then return _v2ce end
_v4.guiPrefetch(_v2c7, true)
_v2ce = _v2c9(_v4.GUI_RAW[_v2c7])
if _v2ce then return _v2ce end
return nil, _ei9m[1544-16] .. _v2c7 .. _ei9m[3+1832]
end
function _v4.loadLibrary()
_v4.guiPrefetch(_ei9m[3+127])
_v4.guiPrefetch(_ei9m[1900-13])
if _v4.guiChoice() == _ei9m[2629] then
local _v2cf = _v4.guiLibrary(_ei9m[975])
if _v2cf then return _v4.ezBridge(_v2cf) end
end
local _v2cg = { _ei9m[2875-18], _ei9m[546] }
local _v2ch = _ei9m[837-13]
local function _v2ci(_v2cj, _v2ck)
local _v2cl, _v2cm = loadstring(_v2cj)
if not _v2cl then return nil, _v2ck .. _ei9m[1143] .. tostring(_v2cm) end
local _v2cn, _v2co = pcall(_v2cl)
if _v2cn and type(_v2co) == _ei9m[1923-2] then
local _v2cp = _v4.guiKindOf(_v2co)
if _v4.GUI_FILES[_v2cp] then _v4.GUI_SRC[_v2cp], _v4.GUI_RAW[_v2cp] = _v2cj, nil end
return _v4.ezBridge(_v2co)
end
return nil, _v2ck .. _ei9m[2289-8] .. tostring(_v2co)
end
local _v2cq, _v2cr = pcall(function()
if type(isfile) == _ei9m[1877+904] and not isfile(_v2ch) then return nil end
return readfile(_v2ch)
end)
if _v2cq and type(_v2cr) == _ei9m[2+2236] and #_v2cr > 0 then
local _v2cs, _v2ct = _v2ci(_v2cr, _ei9m[1939+662])
if _v2cs then return _v2cs end
warn(_ei9m[1774+747] .. tostring(_v2ct) .. _ei9m[936])
end
local _v2cu = _ei9m[7+2181]
for _v2cv = 1, 3 do
local _v2cw = _v2cg[_v2cv < 3 and 1 or 2]
local _v2cx, _v2cy = pcall(function() return game:HttpGet(_v2cw) end)
if _v2cx and type(_v2cy) == _ei9m[339] and #_v2cy > 0 and not _v2cy:find(_ei9m[2190]) then
local _v2cz, _v2d0 = _v2ci(_v2cy, _ei9m[1981])
if _v2cz then return _v2cz end
_v2cu = _v2d0
else
_v2cu = _ei9m[620-9] .. tostring(_v2cy) .. ")"
end
if _v2cv < 3 then task.wait(1) end
end
return nil, _v2cu
end
_v4.Library, _v4.libErr = _v4.loadLibrary()
_v4.xlog(_v4.Library and _ei9m[979-15] or (_ei9m[311+242] .. tostring(_v4.libErr)))
if not _v4.Library then
pcall(function()
game:GetService(_ei9m[72]):SetCore(_ei9m[7+1202], {
Title = _ei9m[2+48], Text = _ei9m[7+91] .. tostring(_v4.libErr) .. _ei9m[883+1077], Duration = 10,
})
end)
warn(_ei9m[145] .. tostring(_v4.libErr))
_v4.UNLOADED = true
return
end
pcall(function()
local _v2d1 = getgenv and getgenv()
if _v2d1 and _v2d1.EZGuiOne_Layout == nil and type(_v4.FUSION_LAYOUT) == _ei9m[252+401] then _v2d1.EZGuiOne_Layout = _v4.FUSION_LAYOUT end
end)
local _v2d2 = _v4.Library.new({Title = _ei9m[7+2883]})
_v4.xlog(_ei9m[2+766])
_v4.Hub = _v2d2
_v4.GUI_SECTION_INFO = false
pcall(function()
_v4.GUI_SECTION_INFO = (_v4.Library and _v4.Library.Caps and _v4.Library.Caps.sectionInfo) and true or false
end)
function _v4.section(_v2d3, _v2d4, _v2d5)
if _v4.GUI_SECTION_INFO and _v2d5 then
return _v2d3:AddSection({ Name = _v2d4, Info = _v2d5 })
end
return _v2d3:AddSection(_v2d4)
end
_v4.SUPPRESS_TOGGLE_NOTIFY = false
_v4.ALL_TOGGLES = {}
local function _v2d6(_v2d7)
local _v2d8 = _v2d7.AddToggle
_v2d7.AddToggle = function(_v2d9, _v2da)
_v2da = _v2da or {}
if _v2da.Keybind == nil then _v2da.Keybind = true end
local _v2db = _v2da.Callback or function() end
local _v2dc = _v2da.Name or _ei9m[1650-4]
_v2da.Callback = function(_v2dd)
_v2db(_v2dd)
if not _v4.SUPPRESS_TOGGLE_NOTIFY then
pcall(function() _v2d2:Notify(_v4.displayName(_v2dc) .. ": " .. (_v2dd and "ON" or _ei9m[6+2309])) end)
end
end
local _v2de = _v2d8(_v2d9, _v2da)
if _v2dc then _v4.ALL_TOGGLES[_v2dc] = _v2de end
return _v2de
end
return _v2d7
end
_v4.SAVE_DINO_ACTIVE = false
_v4.SAVE_DINO_DEPTH = 700
_v4.SAVE_FLY_SPEED = _v4.MV_VERT
_v4.SAVE_DIR = "Up"
_v4.SAVE_UP_HEIGHT = 150
_v4.SAVE_RELEASE_GRACE = 10
local _v2df = false
local _v2dg = nil
_v4.AUTO_SAVE_PCT = 30
_v4.AUTO_SAVE = false
_v4.AUTO_SAVE_BLEED = true
_v4.SAVE_ALLOW_REST = true
_v4.saveOriginCF = nil
_v4.saveReturning = false
local _v2dh = true
local _v2di = nil
local _v2dj = nil
local _v2dk = {}
local _v2dl = nil
local function _v2dm()
if _v2di then
pcall(function() _v2di:Destroy() end)
_v2di = nil
end
end
function _v4.getCS()
if _v4.csCache then return _v4.csCache end
if not _v4.CAP.charstate then return nil end
pcall(function() _v4.csCache = require(_v4.WATER_RS.Common.CharacterState) end)
return _v4.csCache
end
function _v4.pressRest()
local _v2dn = _v4.getCS()
local _v2do = _v2dn and _v2dn.Controls
if _v2do and _v2do.HandleAction then
local _v2dp = _v2do.WindowUnfocused
pcall(function()
_v2do.WindowUnfocused, _v2do.InputWasBlocked = false, false
_v2do:HandleAction(_ei9m[4+2240], true)
end)
task.delay(0.1, function()
pcall(function() _v2do:HandleAction(_ei9m[2961-11], false) end)
pcall(function() _v2do.WindowUnfocused = _v2dp end)
end)
return
end
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.R, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.R, false, game) end)
end
function _v4.saveIsResting()
local _v2dq = _v4.getCS()
if not _v2dq then return false end
local _v2dr = false
pcall(function()
local _v2ds = _v2dq.Actions
_v2dr = (_v2ds and (_v2ds.Rest or _v2ds.Sleep)) and true or false
if _v2dq.RestDebounce then _v2dr = true end
end)
return _v2dr
end
local _v2dt = false
local function _v2du(_v2dv)
if _v2dt == _v2dv then return end
_v2dt = _v2dv
pcall(function()
local _v2dw = _v2.Character
local _v2dx = _v2dl or _vjl()
if _v2dw then _v2dw:SetAttribute(_ei9m[811], _v2dv and (_v2dx and _v2dx.Position.Y) or nil) end
end)
end
local function _v2dy()
for _v2dz, _v2e0 in ipairs(_v2dk) do pcall(function() _v2e0:Disconnect() end) end
_v2dk = {}
end
local function _v2e1()
if _v4.SAVE_DINO_ACTIVE then return end
if _v4.AFK_FARM and _v4.AFK_FARM_SAFETY then
if _v2dg then pcall(function() _v2dg:Set(false) end) end
pcall(function() if _v4.Hub then _v4.Hub:Notify(_ei9m[1823+746], 5) end end)
return
end
local _v2e2 = _vjl()
if not _v2e2 then
pcall(function() _v2d2:Notify(_ei9m[303+549]) end)
return
end
pcall(function()
local _v2e3 = _v2.Character
if _v2e3 then _v2e3:SetAttribute(_ei9m[829-13], true) end
end)
_v2dt = false
_v2du(true)
_v4.saveOriginCF = _v2e2.CFrame
_v4.saveReturning = false
_v4.SAVE_DINO_ACTIVE = true
_v2dl = _v2e2
_v2dj = nil
_v2dm()
local _v2e4 = _ei9m[1462]
local _v2e5 = _v2e2.Position
local _v2e6 = _v2e2.Position.Y
local _v2e7 = _v2e2.CFrame - _v2e2.CFrame.Position
local _v2e8 = true
local _v2e9
if _v2e8 then
_v2e9 = _v2e6 + _v4.SAVE_UP_HEIGHT
else
local _v2ea = RaycastParams.new()
_v2ea.FilterType = Enum.RaycastFilterType.Exclude
_v2ea.FilterDescendantsInstances = { _v2.Character, _v2di }
local _v2eb = workspace:Raycast(_v2e2.Position + Vector3.new(0, 20, 0), Vector3.new(0, -800, 0), _v2ea)
local _v2ec = (_v2eb and _v2eb.Position.Y) or _v2e6
_v2e9 = math.min(_v2ec, _v2e6) - _v4.SAVE_DINO_DEPTH
local _v2ed
pcall(function() _v2ed = workspace.FallenPartsDestroyHeight end)
if _v2ed and _v2e9 < _v2ed + 50 then _v2e9 = _v2ed + 50 end
end
local _v2ee = CFrame.new(_v2e5) * _v2e7
_v2dy()
local function _v2ef(_v2eg)
if _v4.UNLOADED or not _v4.SAVE_DINO_ACTIVE then return end
local _v2eh = _v2dl
if not (_v2eh and _v2eh.Parent) then _v2eh = _vjl(); _v2dl = _v2eh end
if not _v2eh then return end
_v2eg = math.min(_v2eg or 0.016, 0.1)
if _v4.mvHold() then
_v2e5 = _v2eh.Position
_v2ee = CFrame.new(_v2e5) * _v2e7
if _v2e4 == _ei9m[547] then _v2dj = _v2ee end
return
end
if _v2e4 == _ei9m[2332] then
local _v2ei = _v4.SAVE_FLY_SPEED * _v2eg
local _v2ej = _v2e8 and math.min(_v2e5.Y + _v2ei, _v2e9)
or math.max(_v2e5.Y - _v2ei, _v2e9)
_v2e5 = Vector3.new(_v2e5.X, _v2ej, _v2e5.Z)
_v2ee = CFrame.new(_v2e5) * _v2e7
if (_v2e8 and _v2ej >= _v2e9) or (not _v2e8 and _v2ej <= _v2e9) then
_v2dj = _v2ee
if not _v2e8 then
_v2dm()
local _v2ek = Instance.new(_ei9m[1160-8])
_v2ek.Anchored = true; _v2ek.CanCollide = true
_v2ek.Size = Vector3.new(80, 4, 80); _v2ek.Transparency = 1
_v2ek.CFrame = CFrame.new(_v2e5 - Vector3.new(0, 6, 0))
_v2ek.Parent = workspace
_v2di = _v2ek
end
_v2e4 = _ei9m[1930-1]
end
else
if _v2dj then _v2ee = _v2dj end
end
if _v2e4 == _ei9m[1825] and _v4.SAVE_ALLOW_REST then _v2du(false)
elseif _v2e4 ~= _ei9m[321+758] then
_v2dt = true
pcall(function() local _v2el = _v2.Character; if _v2el then _v2el:SetAttribute(_ei9m[2943-20], _v2e5.Y) end end)
end
if _v2e4 == _ei9m[1541+355] and _v4.saveIsResting() then
pcall(function() if not _v2eh.Anchored then _v2eh.Anchored = true end end)
return
end
pcall(function()
if _v2e4 == _ei9m[3+82] then
if not _v2eh.Anchored then _v2eh.Anchored = true end
elseif _v2eh.Anchored then _v2eh.Anchored = false end
_v2eh.CFrame = _v2ee
_v2eh.AssemblyLinearVelocity = Vector3.zero
_v2eh.AssemblyAngularVelocity = Vector3.zero
end)
end
local function _v2em()
if _v4.UNLOADED or not _v4.SAVE_DINO_ACTIVE or _v4.mvHold() then return end
local _v2en = _v2dl
if not (_v2en and _v2en.Parent) then return end
if _v2e4 == _ei9m[716-15] and _v4.saveIsResting() then
pcall(function() if not _v2en.Anchored then _v2en.Anchored = true end end)
return
end
pcall(function()
if _v2e4 == _ei9m[6+2844] and _v2dj then
if not _v2en.Anchored then _v2en.Anchored = true end
if (_v2en.Position - _v2dj.Position).Magnitude > 5 then
_v2en.CFrame = _v2dj
elseif math.abs(_v2en.Position.Y - _v2dj.Position.Y) > 1 then
_v2en.CFrame = _v2dj
end
end
_v2en.CFrame = _v2ee
_v2en.AssemblyLinearVelocity = Vector3.zero
_v2en.AssemblyAngularVelocity = Vector3.zero
end)
end
table.insert(_v2dk, _v1.RenderStepped:Connect(_v2ef))
table.insert(_v2dk, _v1.Heartbeat:Connect(_v2em))
if _v2dg then pcall(function() _v2dg:Set(true) end) end
pcall(function() _v2d2:Notify(_ei9m[1922-9] .. (_v2e8 and _ei9m[4+901] or _ei9m[6+3019])) end)
end
function _v4.saveReturnFlight()
if _v4.saveReturning then return end
_v4.saveReturning = true
local ok = pcall(function()
local _v2eo = _v4.saveOriginCF
local _v2ep = _vjl()
if not (_v2ep and _v2ep.Parent) then return end
local _v2eq = 3
pcall(function() _v2eq = _v2ep.Size.Y * 0.5 end)
pcall(function()
local _v2er = _v4.getCS().Alignment
local _v2es = (_v2er.RideHeight or 0) + (_v2er.BodyHeightIncrease or 0)
if _v2es > _v2eq then _v2eq = _v2es end
end)
local _v2et = _v2eo and _v2eo.Position or _v2ep.Position
local _v2eu
do
local _v2ev = _v2eo or _v2ep.CFrame
local _v2ew = _v2ev.LookVector
local _v2ex = Vector3.new(_v2ew.X, 0, _v2ew.Z)
_v2eu = (_v2ex.Magnitude > 0.01)
and CFrame.lookAt(Vector3.new(), _v2ex.Unit)
or CFrame.new()
end
local _v2ey = RaycastParams.new()
_v2ey.FilterType = Enum.RaycastFilterType.Exclude
_v2ey.FilterDescendantsInstances = { _v2.Character, _v2di }
local _v2ez = workspace:Raycast(_v2et + Vector3.new(0, 300, 0), Vector3.new(0, -2500, 0), _v2ey)
local _v2f0 = _v2ez and _v2ez.Position.Y or _v2et.Y
local _v2f1 = Vector3.new(_v2et.X, _v2f0 + _v2eq + 0.5, _v2et.Z)
local _v2f2 = Vector3.new(_v2et.X, math.max(_v2ep.Position.Y, _v2f0 + 40), _v2et.Z)
pcall(function() _v2ep.Anchored = false end)
local function _v2f3(_v2f4, _v2f5)
local _v2f6 = _vjl()
local _v2f7 = _v2f6 and (_v2f4 - _v2f6.Position) or Vector3.zero
local _v2f8 = Vector3.new(_v2f7.X, 0, _v2f7.Z).Magnitude / math.max(_v4.mvSideCap(), 1) + math.abs(_v2f7.Y) / _v4.MV_VERT
local _v2f9 = os.clock() + math.max(_v2f5 or 10, _v2f8 * 1.5 + 3)
local _v2fa, _v2fb = _v2f9 + _v4.MV_WATER_EXTRA, os.clock()
while not _v4.UNLOADED and not _v4.SAVE_DINO_ACTIVE and os.clock() < _v2f9 do
_v2f9, _v2fb = _v4.mvExtend(_v2f9, _v2fb, _v2fa)
local _v2fc = _vjl()
if not (_v2fc and _v2fc.Parent) then return end
local _v2fd = _v2f4 - _v2fc.Position
if _v2fd.Magnitude < 3 then return end
local _v2fe = _v4.govNext(_v2fc.Position, _v2f4, 0.03)
pcall(function()
_v2.Character:SetAttribute(_ei9m[121+682], _v2fe.Y)
_v2fc.CFrame = CFrame.new(_v2fe) * _v2eu
_v2fc.AssemblyLinearVelocity = Vector3.zero
_v2fc.AssemblyAngularVelocity = Vector3.zero
end)
task.wait(0.03)
end
end
_v2f3(_v2f2, 12)
if _v4.SAVE_DINO_ACTIVE then return end
_v2f3(_v2f1, 8)
if _v4.SAVE_DINO_ACTIVE then return end
local _v2ff = _vjl()
if _v2ff and _v2ff.Parent then
pcall(function()
_v2ff.CFrame = CFrame.new(_v2f1 + Vector3.new(0, 1, 0)) * _v2eu
_v2ff.AssemblyLinearVelocity = Vector3.zero
_v2ff.AssemblyAngularVelocity = Vector3.zero
_v2ff.Anchored = true
end)
task.wait(0.2)
pcall(function()
_v2ff.Anchored = false
_v2ff.AssemblyLinearVelocity = Vector3.zero
_v2ff.AssemblyAngularVelocity = Vector3.zero
end)
task.wait(0.3)
pcall(function()
local _v2fg = RaycastParams.new()
_v2fg.FilterType = Enum.RaycastFilterType.Exclude
_v2fg.FilterDescendantsInstances = { _v2.Character }
local _v2fh = workspace:Raycast(_v2ff.Position + Vector3.new(0, 20, 0), Vector3.new(0, -400, 0), _v2fg)
if _v2fh then
local _v2fi = _v2ff.Position.Y - (_v2fh.Position.Y + _v2eq)
if _v2fi < -0.5 or _v2fi > 3 then
_v2ff.CFrame = CFrame.new(_v2fh.Position + Vector3.new(0, _v2eq + 0.5, 0)) * _v2eu
_v2ff.AssemblyLinearVelocity = Vector3.zero
end
end
end)
end
_v2df = false
_v2du(false)
pcall(function()
local _v2fj = _v2.Character
if _v2fj then _v2fj:SetAttribute(_ei9m[2809], nil) end
end)
pcall(function() _v2d2:Notify(_ei9m[6+439]) end)
end)
if not ok then
_v2df = false
_v2du(false)
pcall(function()
local _v2fk = _v2.Character
if _v2fk then
_v2fk:SetAttribute(_ei9m[6+2150], nil)
local _v2fl = _vjl()
if _v2fl then _v2fl.Anchored = false end
end
end)
pcall(function() _v2d2:Notify(_ei9m[3+1909]) end)
end
_v4.saveReturning = false
end
function _v4.releaseDino()
if not _v4.SAVE_DINO_ACTIVE then return end
_v4.SAVE_DINO_ACTIVE = false
_v2dy()
_v2dj = nil
_v2dl = nil
_v2dm()
_v2dh = false
_v2du(true)
task.spawn(function() _v4.saveReturnFlight() end)
_v2dl = nil
_v2df = true
task.delay(_v4.SAVE_RELEASE_GRACE, function()
_v2df = false
local _v2fm = _v2.Character
_v2dt = false
if _v2fm then pcall(function() _v2fm:SetAttribute(_ei9m[935+50], nil) end) end
if not (_v4.NO_FALL_DAMAGE or _v4.ffOn()) then
if _v2fm then pcall(function() _v2fm:SetAttribute(_ei9m[2+1781], nil) end) end
end
end)
if _v2dg then pcall(function() _v2dg:Set(false) end) end
pcall(function() _v2d2:Notify(_ei9m[232+445]) end)
end
table.insert(_v2l, _v2.CharacterAdded:Connect(function()
_v2dy()
_v2dj = nil
_v2dl = nil
_v2dm()
_v4.SAVE_DINO_ACTIVE = false
_v2df = false
_v2dt = false
_v4.saveReturning = false
_v4.saveOriginCF = nil
_v4.csCache = nil
_v2dh = true
if _v2dg then pcall(function() _v2dg:Set(false) end) end
end))
_v4.addStep(10, function()
if not _v4.AUTO_SAVE or _v4.AUTO_SAVE_PCT <= 0 or (_v4.AFK_FARM and _v4.AFK_FARM_SAFETY) then return end
local _v2fn = _v2.Character
if not _v2fn then return end
local _v2fo = _v2fn:GetAttribute(_ei9m[6+3088])
local _v2fp = _v2fn:GetAttribute(_ei9m[213+2387])
if type(_v2fo) ~= _ei9m[2013] or type(_v2fp) ~= _ei9m[4+1652] or _v2fp <= 0 then return end
if _v2fo <= 0 then return end
if _v4.AUTO_SAVE_BLEED then
local _v2fq = _vkr()
local _v2fr = _v2fq and _v4.bleedForecast[_v2fq] or 0
if type(_v2fr) == _ei9m[3+3006] and _v2fr > 0 then _v2fo = math.max(0, _v2fo - _v2fr) end
end
local _v2fs = (_v2fo / _v2fp) * 100
if _v2fs <= _v4.AUTO_SAVE_PCT then
if _v2dh and not _v4.SAVE_DINO_ACTIVE then
_v2dh = false
_v2e1()
end
else
_v2dh = true
end
end)
_v4.GAIT_ACTION = { Walk = nil, Trot = _ei9m[35+2429], Run = _ei9m[6+2717], Sprint = _ei9m[317+152] }
function _v4.autoGaitStop()
local _v2ft = _v4.getCS()
if _v2ft and _v2ft.Controls then
pcall(function() _v2ft.Controls:HandleAction(_ei9m[2450], false) end)
for _v2fu, _v2fv in pairs(_v4.GAIT_ACTION) do pcall(function() _v2ft.Controls:HandleAction(_v2fv, false) end) end
if _v4.gaitUnblocked then
_v4.gaitUnblocked = nil
local _v2fw = true
pcall(function() _v2fw = isrbxactive() end)
pcall(function() _v2ft.Controls.WindowUnfocused = not _v2fw end)
end
end
_v4.gaitHeld = nil
end
_v4.addStep(3, function()
local _v2fx = _v4.AUTO_GAIT
if _v2fx and (_v4.AFK_FARM or _v4.LEGIT_FARM or _v4.ffOn() or _v4.FLY or _v4.AUTO_FLY
or _v4.SAVE_DINO_ACTIVE or _v4.AS_BUSY or _v4.UNLOADED) then _v2fx = nil end
if not _v2fx then
if _v4.gaitHeld then _v4.autoGaitStop() end
return
end
local _v2fy = _v4.getCS()
local _v2fz = _v2fy and _v2fy.Controls
if not _v2fz then return end
local _v2g0 = true
pcall(function() _v2g0 = isrbxactive() end)
if not _v2g0 then
_v4.gaitUnblocked = true
if _v2fz.WindowUnfocused ~= false then pcall(function() _v2fz.WindowUnfocused = false end) end
if _v2fz.InputWasBlocked == true then pcall(function() _v2fz.InputWasBlocked = false end) end
elseif _v4.gaitUnblocked then
_v4.gaitUnblocked = nil
end
for _v2g1, _v2g2 in pairs(_v4.GAIT_ACTION) do
if _v2g2 and _v2g1 ~= _v2fx and (_v2fy.Actions and _v2fy.Actions[_v2g2]) == true then
pcall(function() _v2fz:HandleAction(_v2g2, false) end)
end
end
local _v2g3 = _v4.GAIT_ACTION[_v2fx]
if _v2g3 and (_v2fy.Actions and _v2fy.Actions[_v2g3]) ~= true then pcall(function() _v2fz:HandleAction(_v2g3, true) end) end
if (_v2fy.Actions and _v2fy.Actions.Forward) ~= true then pcall(function() _v2fz:HandleAction(_ei9m[452-12], true) end) end
_v4.gaitHeld = _v2fx
end)
function _v4.applyFallImmunity(_v2g4)
local _v2g5 = _v2.Character
if _v2g5 then pcall(function() _v2g5:SetAttribute(_ei9m[1124-8], _v2g4 and true or nil) end) end
end
_v4.addStep(5, function()
if not (_v4.NO_FALL_DAMAGE or _v4.ffOn() or _v4.SAVE_DINO_ACTIVE or _v2df
or _v4.AUTO_FLY or _v4.AFK_FARM or _v4.LEGIT_FARM
or os.clock() < (_v4.flyLandUntil or 0)) then return end
local _v2g6 = _v2.Character
if _v2g6 and _v2g6:GetAttribute(_ei9m[607+827]) ~= true then
pcall(function() _v2g6:SetAttribute(_ei9m[3035], true) end)
end
local _v2g7 = (_v4.SAVE_DINO_ACTIVE and _v2dt) or _v2df
if _v2g7 and _v2g6 and type(_v2g6:GetAttribute(_ei9m[804-16])) ~= _ei9m[3+2705] then
local _v2g8 = _vjl()
if _v2g8 then pcall(function() _v2g6:SetAttribute(_ei9m[964-8], _v2g8.Position.Y) end) end
end
end)
_v4.blurOff = setmetatable({}, { __mode = "k" })
_v4.blurHooked = setmetatable({}, { __mode = "k" })
function _v4.killBlur(_v2g9)
if typeof(_v2g9) ~= _ei9m[882+965] or not _v2g9:IsA(_ei9m[1487+989]) then return end
if not _v4.blurHooked[_v2g9] then
_v4.blurHooked[_v2g9] = true
pcall(function()
table.insert(_v2l, _v2g9:GetPropertyChangedSignal(_ei9m[2196-2]):Connect(function()
if _v4.NO_BLUR and _v2g9.Enabled then _v4.killBlur(_v2g9) end
end))
end)
end
pcall(function()
if _v2g9.Enabled then _v4.blurOff[_v2g9] = true; _v2g9.Enabled = false end
if _v2g9.Size ~= 0 then _v2g9.Size = 0 end
end)
end
function _v4.sweepBlur()
pcall(function()
for _v2ga, _v2gb in ipairs(_vhx:GetDescendants()) do _v4.killBlur(_v2gb) end
end)
pcall(function()
local _v2gc = workspace.CurrentCamera
if _v2gc then for _v2gd, _v2ge in ipairs(_v2gc:GetChildren()) do _v4.killBlur(_v2ge) end end
end)
end
function _v4.restoreBlur()
for _v2gf in pairs(_v4.blurOff) do
pcall(function() if _v2gf.Parent then _v2gf.Enabled = true end end)
end
_v4.blurOff = setmetatable({}, { __mode = "k" })
end
pcall(function()
table.insert(_v2l, _vhx.DescendantAdded:Connect(function(_v2gg)
if _v4.NO_BLUR then _v4.killBlur(_v2gg) end
end))
end)
do
local _v2gh = nil
local function _v2gi()
pcall(function() if _v2gh then _v2gh:Disconnect() end end)
local _v2gj = workspace.CurrentCamera
if not _v2gj then return end
_v2gh = _v2gj.ChildAdded:Connect(function(_v2gk) if _v4.NO_BLUR then _v4.killBlur(_v2gk) end end)
table.insert(_v2l, _v2gh)
if _v4.NO_BLUR then _v4.sweepBlur() end
end
_v2gi()
table.insert(_v2l,
workspace:GetPropertyChangedSignal(_ei9m[1306-6]):Connect(_v2gi))
end
_v4.addStep(3, function()
if not _v4.NO_BLUR then return end
_v4.sweepBlur()
end)
local _v2gl = nil
local _v2gm = false
table.insert(_v2l, _v4.UIS.InputBegan:Connect(function(_v2gn, _v2go)
if _v4.UNLOADED or _v2go then return end
local _v2gp = _v2gl and _v2gl.Key
if _v2gp and _v2gp ~= Enum.KeyCode.Unknown and _v2gn.KeyCode == _v2gp then _v2gm = true end
end))
table.insert(_v2l, _v4.UIS.InputEnded:Connect(function(_v2gq)
local _v2gr = _v2gl and _v2gl.Key
if _v2gr and _v2gq.KeyCode == _v2gr then _v2gm = false end
end))
function _v4.instaTurnStep()
if _v4.UNLOADED or not (_v2gm or _v4.mob.insta) then return end
local _v2gs = _vjl()
local _v2gt = workspace.CurrentCamera
if not (_v2gs and _v2gt) then return end
local _v2gu = _v2gt.CFrame.LookVector
local _v2gv = Vector3.new(_v2gu.X, 0, _v2gu.Z)
if _v2gv.Magnitude < 0.01 then return end
pcall(function()
_v2gs.CFrame = CFrame.lookAt(_v2gs.Position, _v2gs.Position + _v2gv.Unit)
_v2gs.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
end)
end
_v4.addStep(1, _v4.instaTurnStep)
table.insert(_v2l, _v1.RenderStepped:Connect(_v4.instaTurnStep))
_v4.TURN_SPEED = 250
_v4.QUICK_TURN = false
function _v4.turnAssistStep(_v2gw)
if _v4.UNLOADED or not _v4.QUICK_TURN or _v4.TURN_SPEED <= 0 then return end
if _v2gm or _v4.mob.insta then return end
if _v4.UIS:GetFocusedTextBox() then return end
local _v2gx = 0
if _v4.UIS:IsKeyDown(Enum.KeyCode.A) or _v4.mob.turnL then _v2gx = _v2gx + 1 end
if _v4.UIS:IsKeyDown(Enum.KeyCode.D) or _v4.mob.turnR then _v2gx = _v2gx - 1 end
if _v2gx == 0 then return end
local _v2gy = _vjl()
if not _v2gy then return end
local _v2gz = math.rad(_v4.TURN_SPEED) * (_v2gw or 1 / 60) * _v2gx
pcall(function()
_v2gy.CFrame = _v2gy.CFrame * CFrame.Angles(0, _v2gz, 0)
_v2gy.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
end)
end
_v4.addStep(1, _v4.turnAssistStep)
table.insert(_v2l, _v1.RenderStepped:Connect(_v4.turnAssistStep))
_v4.NO_ATK_CD = false
_v4.NO_ATK_COOLDOWN = false
_v4.ATTACK_SPEED = 3
local _v2h0 = setmetatable({}, { __mode = "k" })
_v4.animatorCache = setmetatable({}, { __mode = "k" })
function _v4.getAnimator()
local _v2h1 = _v2.Character
if not _v2h1 then return nil end
local _v2h2 = _v4.animatorCache[_v2h1]
if _v2h2 and _v2h2.Parent then return _v2h2 end
local _v2h3 = _v2h1:FindFirstChildOfClass(_ei9m[2278-5])
local _v2h4 = _v2h3 and _v2h3:FindFirstChildOfClass(_ei9m[1947-17])
if not _v2h4 then _v2h4 = _v2h1:FindFirstChildWhichIsA(_ei9m[1076+1669], true) end
_v4.animatorCache[_v2h1] = _v2h4
return _v2h4
end
function _v4.restoreAttackSpeed()
for _v2h5, _v2h6 in pairs(_v2h0) do
pcall(function() if _v2h5.IsPlaying then _v2h5:AdjustSpeed(1) end end)
end
_v2h0 = setmetatable({}, { __mode = "k" })
end
_v4.addStep(2, function()
if not _v4.NO_ATK_CD then return end
local _v2h7 = _v4.getAnimator()
if not _v2h7 then return end
pcall(function()
for _v2h8, _v2h9 in ipairs(_v2h7:GetPlayingAnimationTracks()) do
if _v2h9.Priority == Enum.AnimationPriority.Action4 and _v2h9.Speed ~= _v4.ATTACK_SPEED then
_v2h9:AdjustSpeed(_v4.ATTACK_SPEED)
_v2h0[_v2h9] = true
end
end
end)
end)
task.spawn(function()
local _v2ha = _v4.requireCS()
if _v2ha then
_v4.addStep(1, function()
if not _v4.NO_ATK_COOLDOWN or _v4.UNLOADED then return end
pcall(function()
if type(_v2ha.Growth) == _ei9m[1796-1] and _v2ha.Growth.attackCooldownMultiplier ~= nil then
_v2ha.Growth.attackCooldownMultiplier = 0
end
end)
end)
end
end)
local _v2hb, _v2hc = nil, nil
local _v2hd = false
_v4.ZOOM_FAR = nil
function _v4.resolveZoomFar(_v2he)
if _v4.ZOOM_FAR and not _v2he then return _v4.ZOOM_FAR end
for _v2hf, _v2hg in ipairs({ 1e6, 1e5, 5e4, 1e4, 5000, 2000 }) do
local _v2hh = pcall(function() _v2.CameraMaxZoomDistance = _v2hg end)
if _v2hh then
local _v2hi = _v2.CameraMaxZoomDistance
if type(_v2hi) == _ei9m[2682] and _v2hi > 0 then _v4.ZOOM_FAR = _v2hi; return _v4.ZOOM_FAR end
end
end
_v4.ZOOM_FAR = 2000
return _v4.ZOOM_FAR
end
_v4.zoomTarget = nil
_v4.zoomWant = nil
_v4.zoomProbeAt = 0
local function _v2hj()
local _v2hk = workspace.CurrentCamera
if not _v2hk then return nil end
local _v2hl, _v2hm = pcall(function()
return (_v2hk.CFrame.Position - _v2hk.Focus.Position).Magnitude
end)
if not _v2hl or type(_v2hm) ~= _ei9m[2340] or _v2hm ~= _v2hm or _v2hm <= 0 then return nil end
return _v2hm
end
function _v4.setZoomRange(_v2hn, _v2ho)
pcall(function()
if _v2.CameraMaxZoomDistance ~= _v2ho then _v2.CameraMaxZoomDistance = _v2ho end
if _v2.CameraMinZoomDistance ~= _v2hn then _v2.CameraMinZoomDistance = _v2hn end
end)
end
function _v4.applyZoom()
if _v4.UNLOADED or not _v4.UNLIMITED_ZOOM then return end
local _v2hp = _v4.zoomWant or _v4.zoomTarget or _v2hj() or 20
_v4.zoomWant = _v2hp
local _v2hq = _v4.ZOOM_FAR or 2000
local _v2hr = math.clamp(_v2hp, 0.5, _v2hq)
_v4.setZoomRange(_v2hr, _v2hr)
local _v2hs = _v2.CameraMaxZoomDistance
if type(_v2hs) == _ei9m[164] and _v2hs > 0 and _v2hs < _v2hr - 1 then
_v4.setZoomRange(_v2hs, _v2hs)
_v4.zoomTarget = _v2hs
if os.clock() - (_v4.zoomProbeAt or 0) > 1 then
_v4.zoomProbeAt = os.clock()
_v4.resolveZoomFar(true)
end
else
_v4.zoomTarget = _v2hr
end
end
_v4.zoomFailFrames = 0
function _v4.enforceZoom()
if _v4.UNLOADED or not _v4.UNLIMITED_ZOOM then return end
local _v2ht = _v4.zoomTarget
local _v2hu = workspace.CurrentCamera
if not (_v2ht and _v2hu) then return end
local _v2hv = false
pcall(function() _v2hv = (_v2hu.CameraType == Enum.CameraType.Scriptable) end)
if _v2hv then _v4.zoomFailFrames = 0 return end
local _v2hw = _v2hj()
if not _v2hw or math.abs(_v2hw - _v2ht) <= 1.5 then _v4.zoomFailFrames = 0 return end
_v4.zoomFailFrames = _v4.zoomFailFrames + 1
if _v4.zoomFailFrames < 3 then return end
pcall(function()
local _v2hx = _v2hu.Focus.Position
local _v2hy = _v2hu.CFrame.LookVector
if _v2hy.Magnitude < 0.01 then return end
_v2hu.CFrame = CFrame.lookAt(_v2hx - _v2hy.Unit * _v2ht, _v2hx)
end)
end
pcall(function()
table.insert(_v2l, _v4.UIS.InputChanged:Connect(function(_v2hz)
if _v4.UNLOADED or not _v4.UNLIMITED_ZOOM then return end
if _v2hz.UserInputType == Enum.UserInputType.MouseWheel then
local _v2i0 = _v4.ZOOM_FAR or 2000
local _v2i1 = _v4.zoomWant or _v4.zoomTarget or _v2hj() or 20
local _v2i2 = math.max(3, _v2i1 * 0.12)
_v2i1 = math.clamp(_v2i1 - _v2hz.Position.Z * _v2i2, 0.5, _v2i0)
_v4.zoomWant = _v2i1
_v4.zoomTarget = _v2i1
_v4.setZoomRange(_v2i1, _v2i1)
end
end))
end)
function _v4.bindZoom()
if _v2hd then return end
if _v2hb == nil then
_v2hb = _v2.CameraMaxZoomDistance
_v2hc = _v2.CameraMinZoomDistance
end
_v4.resolveZoomFar(true)
_v4.zoomTarget = _v2hj() or _v4.zoomTarget or 20
_v4.zoomWant = _v4.zoomTarget
_v4.zoomProbeAt = 0
_v4.zoomFailFrames = 0
pcall(function()
_v1:BindToRenderStep(_ei9m[1451-11],
Enum.RenderPriority.Camera.Value - 1, _v4.applyZoom)
end)
pcall(function()
_v1:BindToRenderStep(_ei9m[482+1805],
Enum.RenderPriority.Camera.Value + 1, _v4.enforceZoom)
end)
_v2hd = true
end
function _v4.restoreZoom()
if _v2hd then
pcall(function() _v1:UnbindFromRenderStep(_ei9m[6+1239]) end)
pcall(function() _v1:UnbindFromRenderStep(_ei9m[228+691]) end)
_v2hd = false
end
_v4.zoomTarget = nil
_v4.zoomWant = nil
if _v2hb ~= nil then
pcall(function()
_v2.CameraMinZoomDistance = _v2hc
_v2.CameraMaxZoomDistance = _v2hb
end)
end
end
table.insert(_v2l,
_v2:GetPropertyChangedSignal(_ei9m[2580-3]):Connect(_v4.applyZoom))
_v4.FOV_ENABLED = false
_v4.FOV_VALUE = 70
local _v2i3 = nil
local _v2i4 = false
function _v4.applyFOV()
if _v4.UNLOADED or not _v4.FOV_ENABLED then return end
local _v2i5 = workspace.CurrentCamera
if not _v2i5 then return end
pcall(function()
if _v2i5.CameraType == Enum.CameraType.Scriptable then return end
local _v2i6 = math.clamp(_v4.FOV_VALUE or 70, 1, 120)
if math.abs(_v2i5.FieldOfView - _v2i6) > 0.01 then _v2i5.FieldOfView = _v2i6 end
end)
end
function _v4.bindFOV()
if _v2i4 then return end
if _v2i3 == nil then
pcall(function() _v2i3 = workspace.CurrentCamera and workspace.CurrentCamera.FieldOfView end)
end
pcall(function()
_v1:BindToRenderStep(_ei9m[917], Enum.RenderPriority.Camera.Value + 1, _v4.applyFOV)
end)
_v2i4 = true
end
function _v4.restoreFOV()
if _v2i4 then
pcall(function() _v1:UnbindFromRenderStep(_ei9m[470]) end)
_v2i4 = false
end
if _v2i3 ~= nil then
pcall(function()
local _v2i7 = workspace.CurrentCamera
if _v2i7 then _v2i7.FieldOfView = _v2i3 end
end)
end
end
function _v4.flyTo(_v2i8, _v2i9, _v2ia, _v2ib)
local _v2ic = _v4.getLocalPhysicsRoot()
local _v2id = _v2.Character
if not (_v2ic and _v2ic.Parent and _v2id) then return false, _ei9m[830] end
_v2ia = _v2ia or 40
local _v2ie = math.max(3, _v2ic.Size.Y * 0.5)
pcall(function()
local _v2if = _v4.getCS().Alignment
local _v2ig = (_v2if.RideHeight or 0) + (_v2if.BodyHeightIncrease or 0)
if _v2ig > _v2ie then _v2ie = _v2ig end
end)
local _v2ih = RaycastParams.new()
_v2ih.FilterType = Enum.RaycastFilterType.Include
local _v2ii = { workspace.Terrain }
pcall(function() local _v2ij = workspace.World:FindFirstChild(_ei9m[2+371]); if _v2ij then _v2ii[2] = _v2ij end end)
_v2ih.FilterDescendantsInstances = _v2ii
_v2ih.IgnoreWater = false
local function _v2ik(_v2il, _v2im, _v2in)
local _v2io = workspace:Raycast(Vector3.new(_v2il, _v2in + 1500, _v2im), Vector3.new(0, -5000, 0), _v2ih)
if _v2io then return _v2io.Position.Y, _v2io.Material end
end
local function _v2ip(_v2iq)
local _v2ir, _v2is = _v2ik(_v2iq.X, _v2iq.Z, _v2iq.Y)
if _v2ir and _v2is ~= Enum.Material.Water then return Vector3.new(_v2iq.X, _v2ir, _v2iq.Z) end
for _v2it = 20, 800, 20 do
for _v2iu = 0, 15 do
local _v2iv = _v2iu * math.pi / 8
local _v2iw, _v2ix = _v2iq.X + math.cos(_v2iv) * _v2it, _v2iq.Z + math.sin(_v2iv) * _v2it
local _v2iy, _v2iz = _v2ik(_v2iw, _v2ix, _v2iq.Y)
if _v2iy and _v2iz ~= Enum.Material.Water and not (_v4.wallCross and _v4.wallCross(_v2iq, Vector3.new(_v2iw, _v2iq.Y, _v2ix))) then
return Vector3.new(_v2iw, _v2iy, _v2ix)
end
end
end
end
local function _v2j0(_v2j1) _v4.flyStatus = _v2j1; if _v2ib then pcall(_v2ib, _v2j1) end end
if _v4.trackWalls then pcall(_v4.trackWalls) end
if _v4.wallCross and _v4.wallCross(_v2ic.Position, Vector3.new(_v2i8.X, _v2ic.Position.Y, _v2i8.Z)) then
return false, _ei9m[4+976]
end
pcall(function() _v2id:SetAttribute(_ei9m[1889-8], true) end)
local _v2j2, _v2j3 = false, _ei9m[918-19]
local okRun, err = pcall(function()
local _v2j4 = game:GetService(_ei9m[30+61])
local _v2j5 = _v2ic.Position
local _v2j6 = Vector3.new(_v2i8.X, _v2i8.Y, _v2i8.Z)
local _v2j7 = Vector3.new(_v2j6.X - _v2j5.X, 0, _v2j6.Z - _v2j5.Z)
local _v2j8 = _v2j7.Magnitude > 0.1 and _v2j7.Unit or Vector3.new(0, 0, -1)
local _v2j9 = os.clock() + _v2j7.Magnitude / math.max(_v4.mvSideCap(), 1) * 1.6 + 60
local _v2ja, _v2jb = _v2j9 + _v4.MV_WATER_EXTRA, os.clock()
local _v2jc, _v2jd, _v2je, _v2jf = _ei9m[1836], false, nil, 0
while not _v4.UNLOADED do
local _v2jg = _v2j4.Heartbeat:Wait()
if _v2i9 and not _v2i9() then _v2j3 = _ei9m[1454] return end
if not (_v2ic.Parent and _v2.Character == _v2id) then _v2j3 = _ei9m[2298-4] return end
_v2j9, _v2jb = _v4.mvExtend(_v2j9, _v2jb, _v2ja)
if os.clock() > _v2j9 then return end
if _v4.mvHold() then _v2j5 = _v2ic.Position end
local _v2jh = Vector3.new(_v2j6.X - _v2j5.X, 0, _v2j6.Z - _v2j5.Z).Magnitude
if _v2jh > 0.5 then _v2j8 = Vector3.new(_v2j6.X - _v2j5.X, 0, _v2j6.Z - _v2j5.Z).Unit end
if not _v2jd and _v2jh < 400 then
local _v2ji = _v2ip(_v2j6)
if _v2ji then _v2j6, _v2jd = _v2ji, true end
_v2jh = Vector3.new(_v2j6.X - _v2j5.X, 0, _v2j6.Z - _v2j5.Z).Magnitude
end
if _v2jc == _ei9m[5+1533] and os.clock() - _v2jf > 0.5 then
_v2jf = os.clock()
if _v4.wallCross and _v4.wallCross(_v2j5, _v2j5 + _v2j8 * math.min(_v2jh, 80)) then
local _v2jj = _v2ip(_v2j5)
_v2j6, _v2jd, _v2j3 = _v2jj or Vector3.new(_v2j5.X, _v2j5.Y, _v2j5.Z), true, _ei9m[3+35]
_v2jh = Vector3.new(_v2j6.X - _v2j5.X, 0, _v2j6.Z - _v2j5.Z).Magnitude
end
end
local _v2jk
if _v2jc == _ei9m[3+1595] then
local _v2jl = _v2j5 + _v2j8 * math.min(60, _v2jh)
local _v2jm = _v2ik(_v2j5.X, _v2j5.Z, _v2j5.Y) or (_v2j5.Y - _v2ie - _v2ia)
local _v2jn = _v2ik(_v2jl.X, _v2jl.Z, _v2j5.Y) or _v2jm
local _v2jo = math.max(_v2jm, _v2jn) + _v2ie + _v2ia
if _v2jh < 1 and _v2jd then
_v2jc = _ei9m[1849+18]
elseif _v2j5.Y < _v2jo - 2 then
_v2jk = Vector3.new(_v2j5.X + _v2j8.X * math.min(_v2jh, 2), _v2jo, _v2j5.Z + _v2j8.Z * math.min(_v2jh, 2))
else
local _v2jp = math.min(_v2jh, 50)
_v2jk = Vector3.new(_v2j5.X + _v2j8.X * _v2jp, _v2jo, _v2j5.Z + _v2j8.Z * _v2jp)
end
_v2j0(math.floor(_v2jh) .. _ei9m[11+189])
end
if _v2jc == _ei9m[2118-15] then
if not _v2je then
local _v2jq = _v2ik(_v2j6.X, _v2j6.Z, _v2j5.Y)
_v2je = (_v2jq or (_v2j5.Y - _v2ie - _v2ia)) + _v2ie + 0.5
end
if math.abs(_v2j5.Y - _v2je) < 0.5 then _v2j2 = true return end
_v2jk = Vector3.new(_v2j6.X, _v2je, _v2j6.Z)
_v2j0(_ei9m[1626-5])
end
local _v2jr = _v4.govNext(_v2j5, _v2jk, _v2jg)
local _v2js = _v2ik(_v2jr.X, _v2jr.Z, _v2jr.Y)
if _v2js and _v2jr.Y < _v2js + _v2ie * 0.5 then _v2jr = Vector3.new(_v2jr.X, _v2js + _v2ie * 0.5, _v2jr.Z) end
_v2j5 = _v2jr
pcall(function()
_v2id:SetAttribute(_ei9m[1333], _v2j5.Y)
_v2ic.CFrame = CFrame.lookAt(_v2j5, _v2j5 + _v2j8)
_v2ic.AssemblyLinearVelocity = Vector3.zero
_v2ic.AssemblyAngularVelocity = Vector3.zero
end)
end
end)
if not okRun then _v2j3 = tostring(err) end
pcall(function() _v2id:SetAttribute(_ei9m[1709-9], nil) end)
pcall(function() _v2ic.AssemblyLinearVelocity = Vector3.zero end)
_v4.flyLandUntil = os.clock() + 10
_v4.flyStatus = nil
return _v2j2, _v2j2 and _ei9m[1768-20] or _v2j3
end
_v4.BIOME_TARGET = nil
_v4.BIOME_TRAVEL = false
_v4.biomeTravelling = false
_v4.biomeToggle = nil
_v4.BIOME_POINTS = {}
function _v4.biomeNames()
local _v2jt = {}
pcall(function()
for _v2ju, _v2jv in ipairs(game:GetService(_ei9m[5]).Locations:GetChildren()) do _v2jt[#_v2jt + 1] = _v2jv.Name end
end)
table.sort(_v2jt)
return _v2jt
end
function _v4.biomePoint(_v2jw)
if _v4.BIOME_POINTS[_v2jw] then return _v4.BIOME_POINTS[_v2jw] end
local _v2jx
pcall(function()
local _v2jy = game:GetService(_ei9m[2+2896]).Locations:FindFirstChild(_v2jw)
if _v2jy then _v2jx = _v2jy:GetPivot().Position end
end)
return _v2jx
end
function _v4.travelToBiome(_v2jz)
if _v4.biomeTravelling then return end
_v4.biomeTravelling = true
local _v2k0 = _v2jz and _v4.biomePoint(_v2jz)
local _v2k1, _v2k2 = false, _ei9m[2899-11]
if _v2k0 then
pcall(function() _v2d2:Notify(_ei9m[1914+1002] .. tostring(_v2jz), 4) end)
local _v2k3, _v2k4, _v2k5 = pcall(_v4.flyTo, _v2k0, function() return _v4.BIOME_TRAVEL and not (_v4.otherMoverOn and _v4.otherMoverOn()) end, 40)
_v2k1, _v2k2 = _v2k3 and _v2k4, _v2k3 and _v2k5 or tostring(_v2k4)
end
pcall(function()
_v2d2:Notify(_v2k1 and (_ei9m[2223] .. tostring(_v2jz)) or (_ei9m[59+1257] .. tostring(_v2k2) .. _ei9m[359-17]), 6)
end)
_v4.biomeTravelling = false
_v4.BIOME_TRAVEL = false
if _v4.biomeToggle then pcall(function() _v4.biomeToggle:Set(false) end) end
end
_v4.fossilFarmToggle = nil
local function _v2k6(_v2k7)
local _v2k8 = _v2k7:FindFirstChild(_ei9m[397+183])
if _v2k8 then return _v2k8 end
for _v2k9, _v2ka in ipairs(_v2k7:GetDescendants()) do
if _v2ka:IsA(_ei9m[1+1]) and _v2ka.Name == _ei9m[3+2437] then return _v2ka end
end
return nil
end
function _v4.fossilPosOf(_v2kb)
local ok, p = pcall(function()
local _v2kc = _v2k6(_v2kb)
_v2kc = _v2kc and _v2kc.Parent
if _v2kc and _v2kc:IsA(_ei9m[2+767]) then return _v2kc.WorldPosition end
if _v2kc and _v2kc:IsA(_ei9m[1914]) then return _v2kc.Position end
return _v2kb:GetPivot().Position
end)
if ok then return p end
return nil
end
function _v4.ffPlanRoute(_v2kd)
local _v2ke, _v2kf = os.clock(), {}
if _v4.PUMPKIN_FARM then
for _v2kg, _v2kh in ipairs(_v4.pumpkinsNow()) do
local _v2ki = _v2kh.Parent and _v2k6(_v2kh)
local _v2kj = _v4.ffSkip and _v4.ffSkip[_v2kh]
if _v2ki and _v2ki.Enabled ~= false and not (_v2kj and _v2kj > _v2ke) then
if _v4.isGiantPumpkin(_v2kh) then return { _v2kh } end
local _v2kk = _v4.fossilPosOf(_v2kh)
if _v2kk and _v2kk.Magnitude > 1 then _v2kf[#_v2kf + 1] = { f = _v2kh, p = _v2kk } end
end
end
end
local _v2kl = _v4.FOSSIL_FARM and #_v2kf == 0 and workspace:FindFirstChild(_ei9m[396+2611])
if _v2kl then
for _v2km, _v2kn in ipairs(_v2kl:GetChildren()) do
local _v2ko = _v2k6(_v2kn)
local _v2kp = _v4.ffSkip and _v4.ffSkip[_v2kn]
if _v2ko and _v2ko.Enabled ~= false and not (_v2kp and _v2kp > _v2ke) then
local _v2kq = _v4.fossilPosOf(_v2kn)
if _v2kq and _v2kq.Magnitude > 1 then _v2kf[#_v2kf + 1] = { f = _v2kn, p = _v2kq } end
end
if #_v2kf >= 150 then break end
end
end
local _v2kr = #_v2kf
if _v2kr == 0 then return {} end
local _v2ks, _v2kt, _v2ku = {}, {}, _v2kd
for _v2kv = 1, _v2kr do
local _v2kw, _v2kx
for _v2ky, _v2kz in ipairs(_v2kf) do
if not _v2kt[_v2ky] then
local _v2l0 = (_v2kz.p - _v2ku).Magnitude
if not _v2kx or _v2l0 < _v2kx then _v2kw, _v2kx = _v2ky, _v2l0 end
end
end
_v2kt[_v2kw] = true
_v2ks[#_v2ks + 1] = _v2kf[_v2kw]
_v2ku = _v2kf[_v2kw].p
end
local function _v2l1(_v2l2) return _v2l2 == 0 and _v2kd or _v2ks[_v2l2].p end
for _v2l3 = 1, 8 do
local _v2l4 = false
for _v2l5 = 1, _v2kr - 1 do
for _v2l6 = _v2l5 + 1, _v2kr do
local _v2l7, _v2l8, _v2l9 = _v2l1(_v2l5 - 1), _v2l1(_v2l5), _v2l1(_v2l6)
local _v2la = (_v2l8 - _v2l7).Magnitude
local _v2lb = (_v2l9 - _v2l7).Magnitude
if _v2l6 < _v2kr then
local _v2lc = _v2l1(_v2l6 + 1)
_v2la = _v2la + (_v2lc - _v2l9).Magnitude
_v2lb = _v2lb + (_v2lc - _v2l8).Magnitude
end
if _v2lb < _v2la - 0.01 then
local _v2ld, _v2le = _v2l5, _v2l6
while _v2ld < _v2le do _v2ks[_v2ld], _v2ks[_v2le] = _v2ks[_v2le], _v2ks[_v2ld]; _v2ld, _v2le = _v2ld + 1, _v2le - 1 end
_v2l4 = true
end
end
end
if not _v2l4 then break end
end
local _v2lf = {}
for _v2lg, _v2lh in ipairs(_v2ks) do _v2lf[_v2lg] = _v2lh.f end
return _v2lf
end
function _v4.nearestFossil(_v2li)
local _v2lj = workspace:FindFirstChild(_ei9m[267])
if not _v2lj then return nil end
local _v2lk, _v2ll
for _v2lm, _v2ln in ipairs(_v2lj:GetChildren()) do
local _v2lo = _v2k6(_v2ln)
local _v2lp = _v4.ffSkip and _v4.ffSkip[_v2ln]
if _v2lo and _v2lo.Enabled ~= false and not (_v2lp and _v2lp > os.clock()) then
local _v2lq = _v4.fossilPosOf(_v2ln)
if _v2lq and _v2lq.Magnitude > 1 then
local _v2lr = (_v2lq - _v2li).Magnitude
if not _v2ll or _v2lr < _v2ll then _v2lk, _v2ll = _v2ln, _v2lr end
end
end
end
return _v2lk
end
function _v4.isolatePrompt(_v2ls, _v2lt)
local _v2lu = {}
local _v2lv = workspace:FindFirstChild(_ei9m[166-20])
if not _v2lv then return _v2lu end
for _v2lw, _v2lx in ipairs(_v2lv:GetChildren()) do
local _v2ly = _v2k6(_v2lx)
if _v2ly and _v2ly ~= _v2ls and _v2ly.Enabled then
local _v2lz, _v2m0 = pcall(function() return _v2ly.Parent.Position end)
if (not _v2lz) or (_v2m0 - _v2lt).Magnitude < 80 then
pcall(function() _v2ly.Enabled = false end)
table.insert(_v2lu, _v2ly)
end
end
end
return _v2lu
end
function _v4.restorePrompts(_v2m1)
for _v2m2, _v2m3 in ipairs(_v2m1) do pcall(function() if _v2m3 and _v2m3.Parent then _v2m3.Enabled = true end end) end
end
function _v4.autoSpawnCleanup()
for _v2m4, _v2m5 in ipairs(_v4.AUTO_SPAWN_DRAWS) do pcall(function() _v2m5:Remove() end) end
table.clear(_v4.AUTO_SPAWN_DRAWS)
_v4.AUTO_SPAWN = false
_v4.AUTO_SPAWN_TARGET = nil
_v4.AUTO_SPAWN_GENDER = nil
_v4.AUTO_SPAWN_ATTEMPTS = 0
end
function _v4.autoSpawnCleanupGUI()
local _v2m6 = _v2.PlayerGui
pcall(function()
local _v2m7 = _v2m6:FindFirstChild(_ei9m[5+2430])
if _v2m7 then _v2m7:Destroy() end
end)
pcall(function()
local _v2m8 = _v2m6:FindFirstChild(_ei9m[2584-1])
if _v2m8 then _v2m8:Destroy() end
end)
pcall(function()
local _v2m9 = _v2m6:FindFirstChild(_ei9m[1760+725])
if _v2m9 then _v2m9:Destroy() end
end)
end
function _v4.autoSpawnGetDinoName()
local _v2ma = _v2.PlayerGui:FindFirstChild(_ei9m[1690])
if not _v2ma then return nil end
local _v2mb = _v2ma:FindFirstChild(_ei9m[7+369])
if not _v2mb then return nil end
local _v2mc = _v2mb:FindFirstChild(_ei9m[1047])
if not _v2mc then return nil end
local _v2md = _v2mc:FindFirstChild(_ei9m[1818-17])
if _v2md and _v2md.Text ~= "" then return _v2md.Text end
return nil
end
function _v4.autoSpawnGetGender()
local _v2me = _v2.PlayerGui:FindFirstChild(_ei9m[932-12])
if not _v2me then return _ei9m[2+778] end
local ok, result = pcall(function()
local _v2mf = _v2me.LeftFrame.Customizer.Frame.Gender.Frame
local _v2mg = _v2mf:FindFirstChild(_ei9m[2847])
if _v2mg then
local _v2mh = _v2mg:FindFirstChild(_ei9m[779-13])
if _v2mh and _v2mh.Color.G > 0.8 then return _ei9m[2996] end
end
return _ei9m[462+733]
end)
return ok and result or _ei9m[1493+97]
end
function _v4.autoSpawnIsAlive()
local _v2mi = _v2.Character
if not _v2mi then return false end
local _v2mj = _v2mi:FindFirstChildOfClass(_ei9m[2384-20])
return _v2mj and _v2mj.Health > 0
end
function _v4.startAutoSpawn()
_v4.autoSpawnCleanup()
_v4.AUTO_SPAWN = true
_v4.AUTO_SPAWN_ATTEMPTS = 0
_v4.AUTO_SPAWN_TARGET = _v4.autoSpawnGetDinoName()
_v4.AUTO_SPAWN_GENDER = _v4.autoSpawnGetGender()
if not _v4.AUTO_SPAWN_TARGET then
pcall(function() _v2d2:Notify(_ei9m[1905-7], 5) end)
_v4.AUTO_SPAWN = false
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
pcall(function() _v2d2:Notify(_ei9m[179+472] .. _v4.AUTO_SPAWN_TARGET .. " (" .. _v4.AUTO_SPAWN_GENDER .. _ei9m[1252-5], 5) end)
local _v2mk = _v4.AUTO_SPAWN_DRAWS
local function _v2ml(_v2mm)
local _v2mn = _v4.safeDraw(_ei9m[1627-1])
_v2mn.Visible = true
_v2mn.Color = _v2mm.Color or Color3.fromRGB(255, 255, 255)
_v2mn.Size = _v2mm.Size or 16
_v2mn.Position = _v2mm.Position or Vector2.new(0, 0)
_v2mn.Text = _v2mm.Text or ""
_v2mn.Font = 2
_v2mn.Outline = true
_v2mn.OutlineColor = Color3.fromRGB(0, 0, 0)
table.insert(_v2mk, _v2mn)
return _v2mn
end
local function _v2mo(_v2mp)
local _v2mq = _v4.safeDraw(_ei9m[1505+1221])
_v2mq.Visible = true
_v2mq.Color = _v2mp.Color or Color3.fromRGB(10, 10, 10)
_v2mq.Size = _v2mp.Size or Vector2.new(100, 100)
_v2mq.Position = _v2mp.Position or Vector2.new(0, 0)
_v2mq.Filled = _v2mp.Filled ~= false
_v2mq.Transparency = _v2mp.Transparency or 0.3
if _v2mp.Thickness then _v2mq.Thickness = _v2mp.Thickness end
table.insert(_v2mk, _v2mq)
return _v2mq
end
local _v2mr, _v2ms = 12, 12
_v2mo({ Position = Vector2.new(_v2mr, _v2ms), Size = Vector2.new(300, 110) })
local _v2mt = _v2mo({ Position = Vector2.new(_v2mr, _v2ms), Size = Vector2.new(300, 110), Filled = false, Transparency = 1, Color = Color3.fromRGB(0, 200, 80), Thickness = 2 })
local _v2mu = _v2ml({ Text = _ei9m[461+151], Position = Vector2.new(_v2mr + 6, _v2ms + 4), Size = 18, Color = Color3.fromRGB(0, 220, 80) })
local _v2mv = _v2ml({ Text = _ei9m[1064+1531] .. _v4.AUTO_SPAWN_TARGET .. _ei9m[7+1341], Position = Vector2.new(_v2mr + 6, _v2ms + 26), Color = Color3.fromRGB(0, 255, 200) })
local _v2mw = _v2ml({ Text = _ei9m[2916-20], Position = Vector2.new(_v2mr + 6, _v2ms + 44) })
local _v2mx = _v2ml({ Text = _ei9m[2358], Position = Vector2.new(_v2mr + 6, _v2ms + 62) })
local _v2my = _v2ml({ Text = _ei9m[865+2153], Position = Vector2.new(_v2mr + 6, _v2ms + 80), Color = Color3.fromRGB(255, 200, 0) })
local _v2mz = game:GetService(_ei9m[177+633])
local _v2n0 = _v4.req(_v2mz:WaitForChild(_ei9m[3040-10]):WaitForChild(_ei9m[831]))
local _v2n1 = _v2n0.GetController(_ei9m[2022])
local _v2n2 = _v2n0.GetService(_ei9m[7+2572])
task.spawn(function()
while _v4.AUTO_SPAWN and not _v4.UNLOADED do
pcall(function()
local _v2n3 = _v2n1:GetInfo(_v4.AUTO_SPAWN_TARGET)
if _v2n3 then
_v2mw.Text = string.format(_ei9m[821-19],
_v2n3.UsedTotal or 0, _v2n3.Slots or 0,
_v2n3.UsedZenith or 0, _v2n3.ZenithSlots or 0)
end
end)
task.wait(3)
end
end)
task.spawn(function()
while _v4.AUTO_SPAWN and not _v4.UNLOADED do
if _v4.autoSpawnIsAlive() then
_v4.autoSpawnCleanupGUI()
_v2my.Text = _ei9m[1269]
_v2my.Color = Color3.fromRGB(0, 255, 0)
_v2mu.Text = _ei9m[1252-3]
_v2mu.Color = Color3.fromRGB(0, 255, 0)
_v2mt.Color = Color3.fromRGB(0, 255, 0)
pcall(function() _v2d2:Notify(_ei9m[2+736], 4) end)
task.wait(5)
_v4.autoSpawnCleanup()
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
if not _v2.PlayerGui:FindFirstChild(_ei9m[1650]) then
_v2my.Text = _ei9m[62]
_v2my.Color = Color3.fromRGB(255, 200, 0)
task.wait(1)
continue
end
_v4.AUTO_SPAWN_ATTEMPTS += 1
_v2mx.Text = _ei9m[5+1682] .. _v4.AUTO_SPAWN_ATTEMPTS
local _v2n4, _v2n5, _v2n6
local _v2n7 = pcall(function()
_v2n4, _v2n5, _v2n6 = _v2n1:RequestSlot(_v4.AUTO_SPAWN_TARGET)
end)
if not _v2n7 then
_v2my.Text = _ei9m[623]
pcall(function()
_v2n2:InitiateSpawning({
Species = _v4.AUTO_SPAWN_TARGET,
Gender = _v4.AUTO_SPAWN_GENDER,
Skin = _ei9m[135+1116],
Variant = _ei9m[2515-15],
})
end)
_v4.autoSpawnCleanupGUI()
_v2my.Text = _ei9m[560-16]
_v2my.Color = Color3.fromRGB(0, 255, 100)
_v2mu.Text = _ei9m[2+2099]
_v2mu.Color = Color3.fromRGB(0, 255, 0)
_v2mt.Color = Color3.fromRGB(0, 255, 0)
task.wait(5)
_v4.autoSpawnCleanup()
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
if _v2n4 then
_v2my.Text = _ei9m[1476] .. _v4.AUTO_SPAWN_TARGET
_v2my.Color = Color3.fromRGB(0, 255, 0)
_v2mu.Color = Color3.fromRGB(0, 255, 0)
_v2mt.Color = Color3.fromRGB(0, 255, 0)
pcall(function()
_v2n2:InitiateSpawning({
Species = _v4.AUTO_SPAWN_TARGET,
Gender = _v4.AUTO_SPAWN_GENDER,
Skin = _ei9m[2870],
Variant = _ei9m[5+3001],
})
end)
_v4.autoSpawnCleanupGUI()
_v2mu.Text = _ei9m[3+2496]
pcall(function() _v2d2:Notify(_ei9m[967+389] .. _v4.AUTO_SPAWN_TARGET .. "!", 4) end)
task.wait(5)
_v4.autoSpawnCleanup()
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
if _v2n5 == _ei9m[3+219] and _v2n6 then
_v2mw.Text = string.format(_ei9m[82+161],
_v2n6.UsedTotal or 0, _v2n6.Slots or 0,
_v2n6.UsedZenith or 0, _v2n6.ZenithSlots or 0)
end
_v2my.Text = _ei9m[2+215]
_v2my.Color = Color3.fromRGB(255, 80, 80)
_v2mt.Color = Color3.fromRGB(200, 60, 60)
task.wait(0.5)
end
end)
end
function _v4.unanchorFarmRoot()
local _v2n8 = _vjl()
if _v2n8 then pcall(function() _v2n8.Anchored = false end) end
end
local _v2n9 = nil
local _v2na = {}
local function _v2nb()
if _v2n9 then
pcall(function() _v4.VIM:SendKeyEvent(false, _v2n9, false, game) end)
_v2n9 = nil
end
if #_v2na > 0 then
_v4.restorePrompts(_v2na)
_v2na = {}
end
_v4.unanchorFarmRoot()
if _v4.fossilFarmCleanup then _v4.fossilFarmCleanup() end
if not (_v4.NO_FALL_DAMAGE or _v4.ffOn()) then _v4.applyFallImmunity(false) end
end
function _v4.groundUnder(_v2nc)
local _v2nd = RaycastParams.new()
_v2nd.FilterType = Enum.RaycastFilterType.Exclude
_v2nd.FilterDescendantsInstances = { _v2.Character }
local _v2ne = workspace:Raycast(_v2nc + Vector3.new(0, 25, 0), Vector3.new(0, -300, 0), _v2nd)
return _v2ne and _v2ne.Position or nil
end
_v4.ffPos = nil
_v4.ffCF = nil
_v4.ffTarget = nil
_v4.ffState = nil
_v4.ffHeldKey = nil
_v4.ffCollectStart = 0
_v4.ffEmptyChecks = 0
_v4.ffSince = 0
_v4.ffTries = 0
_v4.ffSkip = setmetatable({}, { __mode = "k" })
do
function _v4.fossilFarmAdvance(_v2nf)
if _v4.UNLOADED then return end
if not _v4.ffOn() then
if _v4.ffState then
_v4.fossilFarmCleanup()
local _v2ng = _v2.Character
if _v2ng and not _v4.AFK_FARM and not _v4.LEGIT_FARM then pcall(function() _v2ng:SetAttribute(_ei9m[573-3], nil) end) end
end
return
end
if _v4.SAVE_DINO_ACTIVE then return end
local _v2nh = _v4.getLocalPhysicsRoot()
if not _v2nh then return end
if _v2nh.Anchored and _v4.ffState ~= _ei9m[2973-19] then
pcall(function() _v2nh.Anchored = false end)
end
_v2nf = math.min(_v2nf or 0.016, 0.1)
local _v2ni = _v2.Character
local _v2nj = _v2nh.Position
if not _v4.ffPos then _v4.ffPos = _v2nj end
if not _v4.ffTarget or not _v4.ffTarget.Parent then
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v2na > 0 then
_v4.restorePrompts(_v2na)
_v2na = {}
end
local _v2nk = _v4.ffPlanRoute(_v2nj)[1]
if _v2nk then
_v4.ffTarget = _v2nk
_v4.ffState = _ei9m[844+1517]
_v4.ffEmptyChecks = 0
_v4.ffWaiting = nil
_v4.ffTries, _v4.ffFace = 0, nil
local _v2nl = _v4.fossilPosOf(_v2nk)
if _v2nl then
local _v2nm = 3
pcall(function() _v2nm = _v2nh.Size.Y * 0.5 end)
_v4.ffPos = _v2nj
_v4.ffSetLeg(_v2nj, Vector3.new(_v2nl.X, _v4.ffLandY(_v2nk, _v2nl) + _v2nm + 0.5, _v2nl.Z))
else
_v4.ffTarget = nil
_v4.ffState = nil
end
else
if _v4.PUMPKIN_FARM then
local _v2nn = _v4.ffCF ~= nil
_v4.ffCF, _v4.ffDest, _v4.ffLeg = nil, nil, nil
if _v2nn then _v4.ffLand(_v2nh, function() return _v4.PUMPKIN_FARM and not _v4.ffTarget and not _v4.UNLOADED end) end
if _v4.ffLanding then return end
if _v2ni and _v2ni:GetAttribute(_ei9m[867-3]) ~= nil then pcall(function() _v2ni:SetAttribute(_ei9m[2+1607], nil) end) end
if not _v4.ffWaiting then
_v4.ffWaiting = true
pcall(function() _v2d2:Notify(_ei9m[2813-20], 5) end)
end
return
end
_v4.ffEmptyChecks = _v4.ffEmptyChecks + 1
if _v4.ffEmptyChecks > 180 then
_v4.FOSSIL_FARM = false
_v4.fossilFarmCleanup()
if _v4.fossilFarmToggle then pcall(function() _v4.fossilFarmToggle:Set(false) end) end
local _v2no = 0
for _v2np, _v2nq in pairs(_v4.ffSkip) do if _v2nq > os.clock() then _v2no = _v2no + 1 end end
pcall(function()
_v2d2:Notify(_v2no > 0 and (_ei9m[1528-6] .. _v2no .. _ei9m[1963-15])
or _ei9m[171-3], 8)
end)
end
return
end
end
if (_v4.ffState == _ei9m[2656-15] or _v4.ffFace) and _v4.ffTarget and _v4.ffTarget.Parent then
local _v2nr = os.clock()
if _v2nr - _v4.ffSince > (_v4.ffTries == 0 and 60 or 20) then
if _v4.ffTries < 2 then
_v4.ffTries = _v4.ffTries + 1
_v4.ffReposition(_v2nh)
pcall(function() _v2d2:Notify((_ei9m[1903+792]):format(_v4.ffWho(), _v4.ffTries), 4) end)
else
local _v2ns = _v4.ffWho()
_v4.ffSkip[_v4.ffTarget] = _v2nr + 600
_v4.ffDropTarget(_v2nh)
pcall(function() _v2d2:Notify(_v2ns .. _ei9m[1857], 5) end)
return
end
end
end
if _v4.ffState == _ei9m[505] and _v4.ffDest then
local _v2nt = (_v4.ffLeg and _v4.ffLeg[_v4.ffLegI]) or _v4.ffDest
_v4.ffPos = _v4.govNext(_v4.ffPos, _v2nt, _v2nf)
if _v2ni then pcall(function() _v2ni:SetAttribute(_ei9m[4+2200], _v4.ffPos.Y) end) end
if (_v4.ffPos - _v2nt).Magnitude < 0.5 and _v4.ffLeg and _v4.ffLegI < #_v4.ffLeg then
_v4.ffLegI = _v4.ffLegI + 1
end
local _v2nu = Vector3.new(_v4.ffDest.X - _v4.ffPos.X, 0, _v4.ffDest.Z - _v4.ffPos.Z)
if _v2nu.Magnitude < 0.1 then
local _v2nv = _v4.ffCF or _v2nh.CFrame
_v4.ffCF = CFrame.new(_v4.ffPos) * (_v2nv - _v2nv.Position)
else
_v4.ffCF = CFrame.lookAt(_v4.ffPos, _v4.ffPos + _v2nu)
end
pcall(function()
_v2nh.CFrame = _v4.ffCF
_v2nh.AssemblyLinearVelocity = Vector3.zero
_v2nh.AssemblyAngularVelocity = Vector3.zero
end)
if (_v4.ffPos - _v4.ffDest).Magnitude < 1.5 then
_v4.ffState = _ei9m[2013-11]
_v4.ffCollectStart = os.clock()
_v4.ffSince = _v4.ffCollectStart
if _v4.ffFace then
local _v2nw = Vector3.new(_v4.ffFace.X, _v4.ffPos.Y, _v4.ffFace.Z)
if (_v2nw - _v4.ffPos).Magnitude > 0.1 then
_v4.ffCF = CFrame.lookAt(_v4.ffPos, _v2nw)
pcall(function() _v2nh.CFrame = _v4.ffCF end)
end
end
pcall(function() _v2nh.Anchored = true end)
local _v2nx = _v2k6(_v4.ffTarget)
if _v2nx then
_v2na = {}
local _v2ny = workspace:FindFirstChild(_ei9m[6+2323])
if _v2ny then
for _v2nz, _v2o0 in ipairs(_v2ny:GetChildren()) do
local _v2o1 = _v2k6(_v2o0)
if _v2o1 and _v2o1 ~= _v2nx and _v2o1.Enabled then
pcall(function() _v2o1.Enabled = false end)
table.insert(_v2na, _v2o1)
end
end
end
local _v2o2 = _v2nx.KeyboardKeyCode
if _v2o2 == nil or _v2o2 == Enum.KeyCode.Unknown then _v2o2 = Enum.KeyCode.E end
_v4.ffHeldKey = _v2o2
_v4.ffHoldDuration = (tonumber(_v2nx.HoldDuration) or 2.5) + 1
pcall(function() _v4.VIM:SendKeyEvent(true, _v2o2, false, game) end)
else
pcall(function() _v2nh.Anchored = false end)
_v4.ffTarget = nil
_v4.ffState = nil
end
end
elseif _v4.ffState == _ei9m[2+920] then
if not _v4.ffTarget.Parent then
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v2na > 0 then
_v4.restorePrompts(_v2na)
_v2na = {}
end
pcall(function() _v2nh.Anchored = false end)
_v4.ffTarget = nil
_v4.ffState = nil
return
end
local _v2o3 = os.clock() - _v4.ffCollectStart
if _v2o3 > (_v4.ffHoldDuration or 4) then
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(true, _v4.ffHeldKey, false, game) end)
end
_v4.ffCollectStart = os.clock()
end
end
end
function _v4.fossilFarmPin()
if _v4.UNLOADED or not _v4.ffOn() or not _v4.ffCF or _v4.mvHold() then return end
local _v2o4 = _v4.getLocalPhysicsRoot()
if _v2o4 and not _v2o4.Anchored then
pcall(function()
_v2o4.CFrame = _v4.ffCF
_v2o4.AssemblyLinearVelocity = Vector3.zero
_v2o4.AssemblyAngularVelocity = Vector3.zero
end)
end
end
function _v4.ffLand(_v2o5, _v2o6)
if not _v2o5 or _v4.ffLanding then return end
local _v2o7, _v2o8 = pcall(_v4.ffGroundY, _v2o5.Position.X, _v2o5.Position.Z, _v2o5.Position.Y, _v4.ffRayParams())
if not (_v2o7 and _v2o8) or _v2o5.Position.Y - _v2o8 < _v2o5.Size.Y * 0.5 + 8 then return end
_v4.ffLanding = true
task.spawn(function()
pcall(_v4.flyTo, _v2o5.Position, _v2o6, 0)
_v4.ffLanding = false
end)
end
function _v4.ffWho()
return (_v4.ffTarget and _v4.ffTarget:GetAttribute(_ei9m[693-6])) and _ei9m[7+2841] or _ei9m[68+107]
end
function _v4.ffLandY(_v2o9, _v2oa)
if _v2o9:GetAttribute(_ei9m[505-11]) then
local _v2ob, _v2oc = pcall(_v4.ffGroundY, _v2oa.X, _v2oa.Z, _v2oa.Y, _v4.ffRayParams())
return (_v2ob and _v2oc and math.abs(_v2oc - _v2oa.Y) < 15) and _v2oc or _v2oa.Y - 2
end
local _v2od = _v4.groundUnder(_v2oa)
return _v2od and _v2od.Y or _v2oa.Y
end
_v4.FF_CRUISE = 30
function _v4.ffRayParams()
local _v2oe = RaycastParams.new()
_v2oe.FilterType = Enum.RaycastFilterType.Include
local _v2of = workspace:FindFirstChild(_ei9m[697])
local _v2og = _v2of and _v2of:FindFirstChild(_ei9m[1817])
_v2oe.FilterDescendantsInstances = _v2og and { workspace.Terrain, _v2og } or { workspace.Terrain }
_v2oe.IgnoreWater = false
return _v2oe
end
function _v4.ffGroundY(_v2oh, _v2oi, _v2oj, _v2ok)
local _v2ol = workspace:Raycast(Vector3.new(_v2oh, _v2oj + 400, _v2oi), Vector3.new(0, -1200, 0), _v2ok)
return _v2ol and _v2ol.Position.Y or nil
end
function _v4.ffSetLeg(_v2om, _v2on)
_v4.ffDest = _v2on
local _v2oo = Vector3.new(_v2on.X - _v2om.X, 0, _v2on.Z - _v2om.Z).Magnitude
local _v2op = _v4.ffRayParams()
local _v2oq = false
if _v2oo < 40 then
local _v2or, _v2os = pcall(function() return workspace:Raycast(_v2om, _v2on - _v2om, _v2op) end)
_v2oq = _v2or and _v2os == nil
end
if _v2oq then
_v4.ffLeg, _v4.ffLegI = { _v2on }, 1
return
end
local _v2ot = math.max(_v2om.Y, _v2on.Y)
local _v2ou = math.max(1, math.floor(_v2oo / 20))
for _v2ov = 0, _v2ou do
local _v2ow = _v2om:Lerp(_v2on, _v2ov / _v2ou)
local _v2ox, _v2oy = pcall(_v4.ffGroundY, _v2ow.X, _v2ow.Z, _v2ot, _v2op)
if _v2ox and _v2oy and _v2oy > _v2ot then _v2ot = _v2oy end
end
local _v2oz = math.max(_v2ot + _v4.FF_CRUISE, _v2om.Y)
_v4.ffLeg = { Vector3.new(_v2om.X, _v2oz, _v2om.Z), Vector3.new(_v2on.X, _v2oz, _v2on.Z), _v2on }
_v4.ffLegI = 1
end
function _v4.ffDropTarget(_v2p0)
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v2na > 0 then
_v4.restorePrompts(_v2na)
_v2na = {}
end
if _v2p0 then pcall(function() _v2p0.Anchored = false end) end
_v4.ffTarget, _v4.ffState, _v4.ffFace = nil, nil, nil
end
function _v4.ffReposition(_v2p1)
local _v2p2 = _v4.ffTarget
local _v2p3 = _v2p2 and _v4.fossilPosOf(_v2p2)
if not _v2p3 then _v4.ffDropTarget(_v2p1) return end
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v2na > 0 then
_v4.restorePrompts(_v2na)
_v2na = {}
end
pcall(function() _v2p1.Anchored = false end)
local _v2p4 = 6
pcall(function() _v2p4 = math.clamp((_v2k6(_v2p2).MaxActivationDistance or 10) * 0.6, 3, 8) end)
local _v2p5 = _v4.ffPos or _v2p1.Position
if _v4.ffTries == 1 then _v4.ffBaseAng = math.atan2(_v2p5.Z - _v2p3.Z, _v2p5.X - _v2p3.X) end
local _v2p6 = (_v4.ffBaseAng or 0) + _v4.ffTries * (2 * math.pi / 3)
local _v2p7 = _v2p3 + Vector3.new(math.cos(_v2p6) * _v2p4, 0, math.sin(_v2p6) * _v2p4)
local _v2p8 = _v4.groundUnder(_v2p7)
local _v2p9 = 3
pcall(function() _v2p9 = _v2p1.Size.Y * 0.5 end)
_v4.ffSetLeg(_v4.ffPos or _v2p1.Position, Vector3.new(_v2p7.X, (_v2p8 and _v2p8.Y or _v2p3.Y) + _v2p9 + 0.5, _v2p7.Z))
_v4.ffFace = _v2p3
_v4.ffState = _ei9m[2+39]
_v4.ffSince = os.clock()
end
function _v4.ffCamStep(_v2pa)
if _v4.UNLOADED or not _v4.ffOn() or not _v4.ffFace then return end
local _v2pb = workspace.CurrentCamera
if not _v2pb or _v2pb.CameraType ~= Enum.CameraType.Custom then return end
local _v2pc = _v2pb.CFrame
local _v2pd = _v2pb.Focus.Position
local _v2pe, _v2pf = _v2pc.LookVector, _v4.ffFace - _v2pd
if Vector3.new(_v2pe.X, 0, _v2pe.Z).Magnitude < 1e-3 or Vector3.new(_v2pf.X, 0, _v2pf.Z).Magnitude < 1 then return end
local _v2pg = math.atan2(-_v2pe.X, -_v2pe.Z)
local _v2ph = math.atan2(-_v2pf.X, -_v2pf.Z)
local _v2pi = 6 * math.min(_v2pa or 0.016, 0.1)
local _v2pj = math.clamp(math.atan2(math.sin(_v2ph - _v2pg), math.cos(_v2ph - _v2pg)), -_v2pi, _v2pi)
if math.abs(_v2pj) < 1e-4 then return end
local _v2pk = CFrame.Angles(0, _v2pj, 0)
_v2pb.CFrame = CFrame.new(_v2pd + _v2pk * (_v2pc.Position - _v2pd)) * (_v2pk * _v2pc.Rotation)
end
function _v4.fossilFarmCleanup()
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v2na > 0 then
_v4.restorePrompts(_v2na)
_v2na = {}
end
_v4.unanchorFarmRoot()
_v4.ffTarget = nil
_v4.ffState = nil
_v4.ffCF = nil
_v4.ffPos = nil
_v4.ffDest = nil
_v4.ffLeg, _v4.ffLegI = nil, nil
_v4.ffHoldDuration = nil
_v4.ffEmptyChecks = 0
_v4.ffFace, _v4.ffTries, _v4.ffSince, _v4.ffBaseAng = nil, 0, 0, nil
_v4.ffWaiting = nil
local _v2pl = _v2.Character
if _v2pl and not (_v4.ffOn() or _v4.AFK_FARM or _v4.LEGIT_FARM or _v4.FLY or _v4.SAVE_DINO_ACTIVE) then
pcall(function() _v2pl:SetAttribute(_ei9m[688+2331], nil) end)
end
end
function _v4.startFossilFarm(_v2pm)
local _v2pn = workspace:FindFirstChild(_ei9m[392+74])
local _v2po = _v2pm and #_v4.pumpkinsNow() or (_v2pn and #_v2pn:GetChildren() or 0)
pcall(function() _v2d2:Notify((_v2pm and _ei9m[1410-20] or _ei9m[1355-3]):format(_v2po), 5) end)
_v4.ffPos = nil
_v4.ffCF = nil
_v4.ffTarget = nil
_v4.ffState = nil
_v4.ffEmptyChecks = 0
_v4.ffSkip = setmetatable({}, { __mode = "k" })
end
table.insert(_v2l, _v1.RenderStepped:Connect(_v4.fossilFarmAdvance))
table.insert(_v2l, _v1.Heartbeat:Connect(_v4.fossilFarmPin))
pcall(function()
_v1:BindToRenderStep(_ei9m[3+1094], Enum.RenderPriority.Camera.Value + 2, _v4.ffCamStep)
end)
end
function _v4.getCC()
if _v4.ccCache then return _v4.ccCache end
pcall(function()
_v4.ccCache = _v4.req(_v4.WATER_RS.Packages.Knit).GetController(_ei9m[4+114])
end)
return _v4.ccCache
end
_v4.CARRY_CORPSE = false
_v4.CARRY_RANGE = 1000
_v4.carryOrig = nil
function _v4.carryApply(_v2pp)
local function _v2pq(_v2pr)
pcall(function()
for _v2ps, _v2pt in pairs(_v2pr.ProximityPrompts or {}) do
if typeof(_v2pt) == _ei9m[974+179] and _v2pt:IsA(_ei9m[2832]) then _v2pt.MaxActivationDistance = _v2pr.Range end
end
end)
end
if _v2pp then
if _v4.carryOrig then return true end
local _v2pu
pcall(function() _v2pu = _v4.req(_v2.PlayerScripts.Client.Classes.Character.Grab) end)
if type(_v2pu) ~= _ei9m[2413-9] then return false end
local _v2pv = {}
for _v2pw, _v2px in ipairs({ _ei9m[2165-10], _ei9m[933], _ei9m[1589], _ei9m[955+705], _ei9m[1937] }) do
if type(_v2pu[_v2px]) ~= _ei9m[2697] then return false end
_v2pv[_v2px] = _v2pu[_v2px]
end
_v4.carryOrig = { G = _v2pu, o = _v2pv }
_v2pu.GetGrabSettings = function(self, ...)
local _v2py = _v2pv.GetGrabSettings(self, ...)
if type(_v2py) ~= _ei9m[455-6] then return _v2py end
local _v2pz = table.clone(_v2py)
_v2pz.GrabLimit, _v2pz.DragLimit = math.huge, math.huge
_v2pz.DragReverseLock, _v2pz.DragDrain = false, 0
return _v2pz
end
_v2pu.CanGrabTarget = function(self, _v2q0, _v2q1, ...)
if _v2q1 then return _v2pv.CanGrabTarget(self, _v2q0, _v2q1, ...) end
return true
end
_v2pu.MeetsWeightLimit = function(self, _v2q2, _v2q3, ...)
if _v2q3 then return _v2pv.MeetsWeightLimit(self, _v2q2, _v2q3, ...) end
return true
end
_v2pu.IsDragDisabled = function() return false end
_v2pu.Grab = function(self, _v2q4, _v2q5, ...)
if _v2q5 == _ei9m[130+1908] then return _v2pv.Grab(self, _v2q4, _v2q5, ...) end
local _v2q6 = self.BaseAttachment
self.BaseAttachment = nil
local _v2q7 = table.pack(pcall(_v2pv.Grab, self, _v2q4, _v2q5, ...))
self.BaseAttachment = _v2q6
if not _v2q7[1] then error(_v2q7[2], 0) end
return table.unpack(_v2q7, 2, _v2q7.n)
end
local _v2q8 = _v4.getCC()
if type(_v2q8) == _ei9m[754] and type(_v2q8.GetConsumeRange) == _ei9m[2522-5] then
local _v2q9 = _v2q8.GetConsumeRange
_v4.carryOrig.CC, _v4.carryOrig.oRange = _v2q8, _v2q9
_v2q8.GetConsumeRange = function(self, ...)
return math.max(tonumber(_v2q9(self, ...)) or 0, _v4.CARRY_RANGE)
end
pcall(function() _v2q8.Range = _v2q8:GetConsumeRange() end)
_v2pq(_v2q8)
end
return true
end
local _v2qa = _v4.carryOrig
if _v2qa then
for _v2qb, _v2qc in pairs(_v2qa.o) do _v2qa.G[_v2qb] = _v2qc end
if _v2qa.CC then
_v2qa.CC.GetConsumeRange = _v2qa.oRange
pcall(function() _v2qa.CC.Range = _v2qa.CC:GetConsumeRange() end)
_v2pq(_v2qa.CC)
end
_v4.carryOrig = nil
end
return true
end
function _v4.khRange()
local _v2qd
pcall(function() _v2qd = _v2.Character:GetAttribute(_ei9m[289]) end)
if type(_v2qd) == _ei9m[1100+714] and _v2qd > 0 then return _v2qd end
pcall(function() _v2qd = _v4.getCC():GetConsumeRange() end)
if type(_v2qd) ~= _ei9m[651+257] or _v2qd <= 0 then _v2qd = 22 end
return _v2qd
end
function _v4.nearestCorpse(_v2qe)
local _v2qf = _v4.getCC()
if not (_v2qf and _v2qf.CorpseData and _v2qe) then return nil end
local _v2qg
pcall(function() _v2qg = _v2.Character:GetAttribute(_ei9m[552-16]) end)
if _v4.trackWalls then pcall(_v4.trackWalls) end
local _v2qh = RaycastParams.new()
_v2qh.FilterType = Enum.RaycastFilterType.Include
_v2qh.FilterDescendantsInstances = { workspace.Terrain }
local _v2qi, _v2qj, _v2qk
for _v2ql, _v2qm in pairs(_v2qf.CorpseData) do
local _v2qn = _v2qm and _v2qm.Root
if _v2qn and _v2qn.Parent and (tonumber(_v2qm.Weight) or 0) > 0 and tostring(_v2qm.Name) ~= tostring(_v2qg) then
local _v2qo
pcall(function()
_v2qo = _v2qn:IsA(_ei9m[357+955]) and _v2qn.Position or _v2qn:GetPivot().Position
end)
if _v2qo then
local _v2qp = (_v2qo - _v2qe).Magnitude
if not _v2qk or _v2qp < _v2qk then
local _v2qq = workspace:Raycast(Vector3.new(_v2qo.X, _v2qo.Y + 3000, _v2qo.Z), Vector3.new(0, -6000, 0), _v2qh)
local _v2qr = _v2qq ~= nil and _v2qq.Position.Y > _v2qo.Y + 25
if not _v2qr and not (_v4.wallCross and _v4.wallCross(_v2qe, _v2qo)) then _v2qi, _v2qj, _v2qk = _v2ql, _v2qn, _v2qp end
end
end
end
end
return _v2qi, _v2qj, _v2qk
end
function _v4.warpToCorpse(_v2qs, _v2qt)
local _v2qu
pcall(function()
_v2qu = _v2qt:IsA(_ei9m[233+365]) and _v2qt.Position or _v2qt:GetPivot().Position
end)
if not _v2qu then return false end
local _v2qv = _v2qu + Vector3.new(_v4.TP_OFFSET or 8, 0, 0)
local _v2qw = _v4.flyTo(_v2qv, function() return _v4.TP_CORPSE and not (_v4.otherMoverOn and _v4.otherMoverOn()) end, 40)
return _v2qw and _v2qs.Parent ~= nil
and Vector3.new(_v2qs.Position.X - _v2qu.X, 0, _v2qs.Position.Z - _v2qu.Z).Magnitude < 40
end
_v4.addStep(30, function()
if _v4.UNLOADED or not _v4.TP_CORPSE or _v4.tpBusy then return end
if _v4.tpDone and not _v4.TP_CHAIN then return end
if _v4.FLY or _v4.AUTO_FLY or _v4.AFK_FARM or _v4.LEGIT_FARM or _v4.ffOn() or _v4.SAVE_DINO_ACTIVE or _v4.BIOME_TRAVEL then return end
local _v2qx = _vjl()
if not (_v2qx and _v2qx.Parent) then return end
local _v2qy = _v4.getCC()
if not _v2qy then return end
if _v4.tpTargetId then
local _v2qz = _v2qy.CorpseData and _v2qy.CorpseData[_v4.tpTargetId]
if _v2qz and (tonumber(_v2qz.Weight) or 0) > 0 then return end
_v4.tpTargetId = nil
if not _v4.TP_CHAIN then _v4.tpDone = true return end
end
local _v2r0, _v2r1, _v2r2 = _v4.nearestCorpse(_v2qx.Position)
if not _v2r0 then
if not _v4.tpNoneSaid then
_v4.tpNoneSaid = true
pcall(function() _v2d2:Notify(_ei9m[931], 5) end)
end
return
end
_v4.tpNoneSaid = nil
_v4.tpBusy = true
task.spawn(function()
_v4.applyFallImmunity(true)
pcall(function() _v2d2:Notify(_ei9m[201-19] .. math.floor(_v2r2 or 0) .. _ei9m[2180-6], 4) end)
local _v2r3 = _v4.warpToCorpse(_v2qx, _v2r1)
_v4.tpTargetId = _v2r3 and _v2r0 or nil
if _v2r3 and not _v4.TP_CHAIN then _v4.tpDone = true end
pcall(function()
_v2d2:Notify(_v2r3 and _ei9m[900]
or (_ei9m[7+1959] .. (_v4.TP_CORPSE and _ei9m[7+2135] or _ei9m[2298])), 5)
end)
task.delay(6, function()
if not (_v4.NO_FALL_DAMAGE or _v4.ffOn() or _v4.TP_CORPSE) then
_v4.applyFallImmunity(false)
end
end)
_v4.tpBusy = false
end)
end)
_v4.FPS_SAVER = false
do
local _v2r4 = game:GetService(_ei9m[1638])
local _v2r5 = game:GetService(_ei9m[735+2253])
local _v2r6
function _v4.applyFpsSaver(_v2r7)
if _v2r7 then
if not _v2r6 then
_v2r6 = { shadows = _v2r4.GlobalShadows, fogEnd = _v2r4.FogEnd, fogStart = _v2r4.FogStart,
quality = nil, effects = {} }
pcall(function() _v2r6.quality = settings().Rendering.QualityLevel end)
for _v2r8, _v2r9 in ipairs(_v2r4:GetChildren()) do
if _v2r9:IsA(_ei9m[1645-3]) or _v2r9:IsA(_ei9m[1367-1]) then _v2r6.effects[_v2r9] = _v2r9.Enabled end
end
end
pcall(function() if setfpscap and not _v4.IS_XENO then setfpscap(10) end end)
pcall(function() settings().Rendering.QualityLevel = Enum.QualityLevel.Level01 end)
pcall(function() _v2r4.GlobalShadows = false end)
pcall(function() _v2r4.FogStart = 0; _v2r4.FogEnd = 12 end)
for _v2ra, _v2rb in ipairs(_v2r4:GetChildren()) do
if _v2rb:IsA(_ei9m[3052-20]) or _v2rb:IsA(_ei9m[4+2624]) then pcall(function() _v2rb.Enabled = false end) end
end
pcall(function() _v2r5:Set3dRenderingEnabled(false) end)
else
pcall(function() _v2r5:Set3dRenderingEnabled(true) end)
pcall(function() if setfpscap and not _v4.IS_XENO then setfpscap(0) end end)
if _v2r6 then
pcall(function() if _v2r6.quality then settings().Rendering.QualityLevel = _v2r6.quality end end)
pcall(function() _v2r4.GlobalShadows = _v2r6.shadows end)
pcall(function() _v2r4.FogStart = _v2r6.fogStart; _v2r4.FogEnd = _v2r6.fogEnd end)
for _v2rc, _v2rd in pairs(_v2r6.effects) do pcall(function() if _v2rc and _v2rc.Parent then _v2rc.Enabled = _v2rd end end) end
_v2r6 = nil
end
end
end
end
local _v2re = _v2d2:AddTab({Name = _ei9m[5+1551]})
local _v2rf = _v2d2:AddTab({Name = _ei9m[6+784]})
local _v2rg = _v2d2:AddTab({Name = _ei9m[1349]})
local _v2rh = _v2d2:AddTab({Name = _ei9m[2+1962]})
local _v2ri = {}
local _v2rj
_v2rj = _v2d6(_v2re:AddSubTab({Name = _ei9m[1104+1898]}))
_v4.section(_v2rj, _ei9m[77-12], _ei9m[1144+1106])
function _v4.ffTakeOver()
if _v4.LEGIT_FARM and _v4.legitFarmToggle then pcall(function() _v4.legitFarmToggle:Set(false) end) end
if _v4.AFK_FARM and _v4.afkFarmToggle then pcall(function() _v4.afkFarmToggle:Set(false) end) end
if _v4.FLY and _v4.flyToggle then pcall(function() _v4.flyToggle:Set(false) end) end
if _v4.AUTO_FLY and _v4.autoFlyToggle then pcall(function() _v4.autoFlyToggle:Set(false) end) end
_v4.LEGIT_FARM, _v4.AFK_FARM, _v4.FLY, _v4.AUTO_FLY = false, false, false, false
end
function _v4.ffSwitchedOff()
local _v2rk = _v4.ffState == _ei9m[2+1794] and _v4.getLocalPhysicsRoot()
_v2nb()
if _v2rk and not _v4.otherMoverOn() then
_v4.ffLand(_v2rk, function() return not (_v4.otherMoverOn() or _v4.UNLOADED) end)
end
end
_v4.fossilFarmToggle = _v2rj:AddToggle({
Name = _ei9m[2538-9],
Skull = true,
Default = false,
Callback = function(_v2rl)
_v4.FOSSIL_FARM = _v2rl
if _v2rl then
_v4.ffTakeOver()
_v4.startFossilFarm()
else
_v4.ffSwitchedOff()
end
end
})
_v4.pumpkinFarmToggle = _v2rj:AddToggle({
Name = _ei9m[2653],
Skull = true,
Default = false,
Callback = function(_v2rm)
_v4.PUMPKIN_FARM = _v2rm
if _v2rm then
_v4.ffTakeOver()
_v4.startFossilFarm(true)
else
_v4.ffSwitchedOff()
end
end
})
_v2rj = _v2d6(_v2re:AddSubTab({Name = _ei9m[59+2639]}))
_v4.section(_v2rj, _ei9m[422+499], _ei9m[2511-14])
_v4.autoWaterToggle = _v2rj:AddToggle({
Name = _ei9m[6+515],
Default = false,
Callback = function(_v2rn) _v4.AUTO_WATER = _v2rn end
})
_v2ri.waterAnywhere = _v2rj:AddToggle({
Name = _ei9m[230+552],
Default = false,
Callback = function(_v2ro) _v4.WATER_ANYWHERE = _v2ro; _v4.anywhereSips = 0 end
})
_v4.forceEatToggle = _v2rj:AddToggle({
Name = _ei9m[6+290],
Default = false,
Callback = function(_v2rp)
_v4.FORCE_EAT = _v2rp
if _v2rp and _v4.AFK_FARM then
pcall(function() if _v4.Hub then _v4.Hub:Notify(_ei9m[2356], 5) end end)
end
end
})
_v4.section(_v2rj, _ei9m[5+757], _ei9m[316-1])
_v2ri.fastEat = _v2rj:AddToggle({
Name = _ei9m[2015],
Default = true,
Callback = function(_v2rq) _v4.FAST_EAT = _v2rq end
})
_v2ri.eatWhenHungry = _v2rj:AddToggle({
Name = _ei9m[4+494],
Default = false,
Callback = function(_v2rr) _v4.EAT_WHEN_HUNGRY = _v2rr end
})
_v2ri.leaveScraps = _v2rj:AddToggle({
Name = _ei9m[1337],
Default = false,
Callback = function(_v2rs) _v4.LEAVE_SCRAPS = _v2rs end
})
if not _v4.IS_XENO then
_v4.section(_v2rj, _ei9m[2+1733], _ei9m[1533+936])
_v2ri.carryCorpse = _v2rj:AddToggle({
Name = _ei9m[2699],
Default = false,
Callback = function(_v2rt)
_v4.CARRY_CORPSE = _v2rt
if not _v4.carryApply(_v2rt) and _v2rt then
_v4.CARRY_CORPSE = false
pcall(function() if _v4.Hub then _v4.Hub:Notify(_ei9m[463], 5) end end)
end
end
})
end
_v4.section(_v2rj, _ei9m[6+1521], _ei9m[744-19])
_v4.afkFarmToggle = _v2rj:AddToggle({
Name = _ei9m[1739-13],
Skull = true,
Default = false,
Callback = function(_v2ru)
_v4.AFK_FARM = _v2ru
if _v2ru then
if _v4.FLY and _v4.flyToggle then pcall(function() _v4.flyToggle:Set(false) end) end
if _v4.AUTO_FLY and _v4.autoFlyToggle then pcall(function() _v4.autoFlyToggle:Set(false) end) end
if _v4.LEGIT_FARM and _v4.legitFarmToggle then pcall(function() _v4.legitFarmToggle:Set(false) end) end
if _v4.FOSSIL_FARM and _v4.fossilFarmToggle then pcall(function() _v4.fossilFarmToggle:Set(false) end) end
if _v4.PUMPKIN_FARM and _v4.pumpkinFarmToggle then pcall(function() _v4.pumpkinFarmToggle:Set(false) end) end
local _v2rv = {}
if _v4.FORCE_EAT then _v2rv[#_v2rv + 1] = _ei9m[2646] end
if _v4.AFK_FARM_SAFETY and (_v4.AUTO_SAVE or _v4.SAVE_DINO_ACTIVE) then _v2rv[#_v2rv + 1] = _ei9m[1643+367] end
if _v4.AFK_FARM_SAFETY and _v4.SAVE_DINO_ACTIVE and _v4.releaseDino then pcall(_v4.releaseDino) end
if _v4.AFK_FARM_ADMIN_KICK and _v4.adminKickSweep then _v4.adminKickSweep() end
if #_v2rv > 0 then
local _v2rw = table.concat(_v2rv, _ei9m[641]) .. _ei9m[79-9]
pcall(function() if _v4.Hub then _v4.Hub:Notify(_v2rw, 6) end end)
end
else
_v4.afkStopWalk()
end
end
})
_v2ri.afkFarmAvoid = _v2rj:AddSlider({
Name = _ei9m[5+2271],
Min = 0, Max = 1000, Default = 200,
Callback = function(_v2rx) _v4.AFK_FARM_AVOID = _v2rx end
})
_v2ri.afkFarmWalk = _v2rj:AddToggle({
Name = _ei9m[1858],
Default = true,
Callback = function(_v2ry) _v4.AFK_FARM_WALK = _v2ry end
})
_v2ri.afkFarmSafety = _v2rj:AddToggle({
Name = _ei9m[1603+375],
Default = true,
Callback = function(_v2rz)
_v4.AFK_FARM_SAFETY = _v2rz
if _v2rz and _v4.AFK_FARM and _v4.SAVE_DINO_ACTIVE and _v4.releaseDino then pcall(_v4.releaseDino) end
end
})
_v2ri.afkFarmAdminKick = _v2rj:AddToggle({
Name = _ei9m[1453+183],
Default = true,
Callback = function(_v2s0)
_v4.AFK_FARM_ADMIN_KICK = _v2s0
if _v2s0 and _v4.AFK_FARM and _v4.adminKickSweep then _v4.adminKickSweep() end
end
})
_v2ri.afkFarmFlee = _v2rj:AddToggle({
Name = _ei9m[3100-9],
Default = true,
Callback = function(_v2s1) _v4.AFK_FARM_FLEE = _v2s1 end
})
_v2ri.afkFarmUnstuck = _v2rj:AddToggle({
Name = _ei9m[2806],
Default = false,
Callback = function(_v2s2) _v4.AFK_FARM_UNSTUCK = _v2s2 end
})
_v4.section(_v2rj, _ei9m[536+756], _ei9m[1280+1411])
_v4.legitFarmToggle = _v2rj:AddToggle({
Name = _ei9m[1550-10],
Skull = true,
Default = false,
Callback = function(_v2s3)
_v4.LEGIT_FARM = _v2s3
if _v2s3 then
if _v4.AFK_FARM and _v4.afkFarmToggle then pcall(function() _v4.afkFarmToggle:Set(false) end) end
if _v4.FLY and _v4.flyToggle then pcall(function() _v4.flyToggle:Set(false) end) end
if _v4.AUTO_FLY and _v4.autoFlyToggle then pcall(function() _v4.autoFlyToggle:Set(false) end) end
if _v4.FOSSIL_FARM and _v4.fossilFarmToggle then pcall(function() _v4.fossilFarmToggle:Set(false) end) end
if _v4.PUMPKIN_FARM and _v4.pumpkinFarmToggle then pcall(function() _v4.pumpkinFarmToggle:Set(false) end) end
if _v4.LF_ADMIN_KICK and _v4.adminKickSweep then _v4.adminKickSweep() end
end
end
})
_v2ri.lfAvoid = _v2rj:AddSlider({
Name = _ei9m[6+534],
Min = 0, Max = 1000, Default = 200,
Callback = function(_v2s4) _v4.LF_AVOID = _v2s4 end
})
_v2ri.lfMaxDist = _v2rj:AddSlider({
Name = _ei9m[674+380],
Min = 200, Max = 3000, Default = 1000,
Callback = function(_v2s5) _v4.LF_MAX_DIST = _v2s5 end
})
_v2ri.lfScraps = _v2rj:AddToggle({
Name = _ei9m[1399-15],
Default = false,
Callback = function(_v2s6) _v4.LF_SCRAPS = _v2s6 end
})
_v2ri.lfCircle = _v2rj:AddToggle({
Name = _ei9m[344+2228],
Default = false,
Callback = function(_v2s7) _v4.LF_CIRCLE = _v2s7 end
})
_v2ri.lfFlee = _v2rj:AddToggle({
Name = _ei9m[1075],
Default = false,
Callback = function(_v2s8) _v4.LF_FLEE = _v2s8 end
})
_v2ri.lfTabOut = _v2rj:AddToggle({
Name = _ei9m[3+247],
Default = true,
Callback = function(_v2s9) _v4.LF_TABOUT = _v2s9 end
})
_v2ri.lfUnstuck = _v2rj:AddToggle({
Name = _ei9m[593-7],
Default = true,
Callback = function(_v2sa) _v4.LF_UNSTUCK = _v2sa end
})
_v2ri.lfRest = _v2rj:AddToggle({
Name = _ei9m[1073],
Default = true,
Callback = function(_v2sb) _v4.LF_REST = _v2sb end
})
_v2ri.lfAdminKick = _v2rj:AddToggle({
Name = _ei9m[471],
Default = true,
Callback = function(_v2sc)
_v4.LF_ADMIN_KICK = _v2sc
if _v2sc and _v4.LEGIT_FARM and _v4.adminKickSweep then _v4.adminKickSweep() end
end
})
_v2ri.lfFlyAway = _v2rj:AddToggle({
Name = _ei9m[2+2093],
Default = true,
Callback = function(_v2sd) _v4.LF_FLYAWAY = _v2sd end
})
_v2ri.lfFlyAwayRadius = _v2rj:AddSlider({
Name = _ei9m[4+1092],
Min = 50, Max = 500, Default = 150,
Callback = function(_v2se) _v4.LF_FLYAWAY_RADIUS = _v2se end
})
_v4.section(_v2rj, _ei9m[936-1], _ei9m[189+8])
_v4.autoSwitchToggle = _v2rj:AddToggle({
Name = _ei9m[752+206],
Skull = true,
Default = false,
Callback = function(_v2sf)
_v4.AUTO_SWITCH = _v2sf
if _v2sf and _v4.asRefreshLists then pcall(_v4.asRefreshLists) end
if not _v2sf then _v4.AS_BUSY = false end
end
})
;(function()
local _v2sg = _v4.asItems and _v4.asItems() or { _ei9m[134+201] }
_v4.AS_SLOTS = _v4.AS_SLOTS or {}
for _v2sh = 1, 6 do
_v4.AS_SLOTS[_v2sh] = _ei9m[37-14]
_v2ri[_ei9m[1800] .. _v2sh] = _v2rj:AddDropdown({
Name = _ei9m[475] .. _v2sh,
Items = _v2sg,
Default = _ei9m[6+670],
Callback = function(_v2si) _v4.AS_SLOTS[_v2sh] = _v4.asNameOf and _v4.asNameOf(_v2si) or _v2si end
})
if _v4.asDropdowns then _v4.asDropdowns[_v2sh] = _v2ri[_ei9m[2211] .. _v2sh] end
end
end)()
_v2ri.asGender = _v2rj:AddDropdown({
Name = _ei9m[106+54],
Items = { _ei9m[6+5], _ei9m[337] },
Default = _ei9m[2+984],
Callback = function(_v2sj) _v4.AS_GENDER = _v2sj end
})
_v2ri.asAutoOrder = _v2rj:AddToggle({
Name = _ei9m[140-15],
Default = false,
Callback = function(_v2sk) _v4.AS_AUTO_ORDER = _v2sk end
})
_v2ri.asAutoBuy = _v2rj:AddToggle({
Name = _ei9m[3+606],
Default = false,
Callback = function(_v2sl) _v4.AS_AUTOBUY = _v2sl end
})
pcall(function()
if _v2rj.AddLabel then _v4.asDoneLabel = _v2rj:AddLabel({ Name = _ei9m[4+1098], Text = _ei9m[1307] }) end
if _v4.asRefreshDone then _v4.asRefreshDone() end
end)
_v4.section(_v2rj, _ei9m[4+2548], _ei9m[2+3084])
_v4.farmTimerToggle = _v2rj:AddToggle({
Name = _ei9m[2602-12],
Default = false,
Callback = function(_v2sm)
_v4.FARM_TIMER = _v2sm
_v4.ftElapsed, _v4.ftWarned = 0, false
if _v2sm then
pcall(function() _v4.Hub:Notify(_ei9m[160+660] .. math.floor(_v4.FT_MINUTES or 0) .. _ei9m[1968+796], 5) end)
end
end
})
_v2ri.ftMinutes = _v2rj:AddSlider({
Name = _ei9m[110],
Min = 5, Max = 720, Default = 120,
Callback = function(_v2sn) _v4.FT_MINUTES = _v2sn end
})
_v4.section(_v2rj, _ei9m[758], _ei9m[6+3023])
_v4.rejoinToggle = _v2rj:AddToggle({
Name = _ei9m[4+1596],
Default = _v4.REJOIN,
Callback = function(_v2so)
_v4.REJOIN = _v2so
if _v4.rejoinSave then _v4.rejoinSave() end
end
})
;(function()
local _v2sp = { _ei9m[7+449], _ei9m[7+1621], _ei9m[10-9], _ei9m[1784-4], _ei9m[1220] }
if not table.find(_v2sp, _v4.REJOIN_MAP) then _v4.REJOIN_MAP = _ei9m[2152+54] end
_v2ri.rejoinMap = _v2rj:AddDropdown({
Name = _ei9m[371+478],
Items = _v2sp,
Default = _v4.REJOIN_MAP,
Callback = function(_v2sq)
_v4.REJOIN_MAP = _v2sq
if _v4.rejoinSave then _v4.rejoinSave() end
end
})
end)()
;(function()
local _v2sr = { _ei9m[1533] }
for _v2ss, _v2st in ipairs(_v4.asItems and _v4.asItems() or {}) do
if (_v4.asNameOf and _v4.asNameOf(_v2st)) ~= _ei9m[904-10] then _v2sr[#_v2sr + 1] = _v2st end
end
local _v2su = _ei9m[4+592]
if type(_v4.FARM_DINO) == _ei9m[7+504] and _v4.FARM_DINO ~= "" and _v4.FARM_DINO ~= _ei9m[30+301] then
_v2su = (_v4.asLabel and _v4.asLabel(_v4.FARM_DINO)) or _v4.FARM_DINO
end
_v2ri.rejoinDino = _v2rj:AddDropdown({
Name = _ei9m[127-20],
Items = _v2sr,
Default = _v2su,
Callback = function(_v2sv)
local _v2sw = (_v4.asNameOf and _v4.asNameOf(_v2sv)) or _v2sv
if _v2sw == _ei9m[1573] or _v2sw == _ei9m[5+1947] or _v2sw == nil then
_v4.FARM_DINO = nil
else
_v4.FARM_DINO = _v2sw
end
if _v4.rejoinSave then _v4.rejoinSave() end
end
})
end)()
_v2ri.lowPopLeave = _v2rj:AddToggle({
Name = _ei9m[1234+1681],
Default = _v4.LOW_POP_LEAVE,
Callback = function(_v2sx)
_v4.LOW_POP_LEAVE = _v2sx
if _v4.rejoinSave then _v4.rejoinSave() end
end
})
_v2ri.lowPopMin = _v2rj:AddSlider({
Name = _ei9m[6+2354],
Min = 10, Max = 150, Default = _v4.LOW_POP_MIN,
Callback = function(_v2sy)
_v4.LOW_POP_MIN = _v2sy
if _v4.rejoinSave then _v4.rejoinSave() end
end
})
_v4.antiAfkToggle = _v2rj:AddToggle({
Name = _ei9m[1575],
Default = false,
Callback = function(_v2sz) _v4.ANTI_AFK = _v2sz end
})
_v4.section(_v2rj, _ei9m[6+794], _ei9m[1197+78])
_v2ri.fpsSaver = _v2rj:AddToggle({
Name = _ei9m[2+330],
Default = false,
Callback = function(_v2t0) _v4.FPS_SAVER = _v2t0; if _v4.applyFpsSaver then _v4.applyFpsSaver(_v2t0) end end
})
_v4.section(_v2rj, _ei9m[1242], _ei9m[2169-7])
_v4.autoCleanToggle = _v2rj:AddToggle({
Name = _ei9m[1451],
Default = false,
Callback = function(_v2t1) _v4.AUTO_CLEAN = _v2t1 end
})
_v2ri.infOxygen = _v2rj:AddToggle({
Name = _ei9m[2473-6],
Default = false,
Callback = function(_v2t2) _v4.INF_OXYGEN = _v2t2 end
})
_v2rj = _v2d6(_v2re:AddSubTab({Name = _ei9m[3+1607]}))
_v4.section(_v2rj, _ei9m[2400+173], _ei9m[1688+250])
_v4.autoSpawnToggle = _v2rj:AddToggle({
Name = _ei9m[5+3054],
Default = false,
Callback = function(_v2t3)
if _v2t3 then
_v4.startAutoSpawn()
else
_v4.autoSpawnCleanup()
end
end
})
function _v4.markScaled(_v2t4, _v2t5, _v2t6)
local _v2t7 = (tonumber(_v2t6) or 1) >= 5
for _v2t8, _v2t9 in ipairs({ _v2t4, _v2t5 }) do
if _v2t9 and _v2t9.SetSkull then pcall(function() _v2t9:SetSkull(_v2t7) end) end
end
end
_v2rj = _v2d6(_v2rf:AddSubTab({Name = _ei9m[472+516]}))
_v4.section(_v2rj, _ei9m[7+1408], _ei9m[348-8])
_v4.hitboxToggle = _v2rj:AddToggle({
Name = _ei9m[1021+311],
Default = false,
Callback = function(_v2ta)
_v4.HITBOX_EXPANDER = _v2ta
if not _v2ta then _v4.resetAllHitboxes() end
end
})
_v2ri.hitboxVis = _v2rj:AddToggle({
Name = _ei9m[1679-16],
Default = false,
Callback = function(_v2tb)
_v4.HITBOX_VISUALIZE = _v2tb
if not _v2tb then
for _v2tc, _v2td in _v0:GetPlayers() do
if _v2td ~= _v2 then
_v4.visualizePlayerHitbox(_v2td, false)
_v4.hbShown[_v2td] = nil
end
end
end
end
})
_v2ri.hitboxVisOpacity = _v2rj:AddSlider({
Name = _ei9m[7+302],
Min = 0, Max = 100, Default = 50,
Callback = function(_v2te) _v4.HITBOX_VIS_TRANSPARENCY = 1 - (_v2te / 100) end
})
_v2ri.hitboxMult = _v2rj:AddSlider({
Name = _ei9m[3+1336],
Min = 1, Max = 10, Default = 1,
Callback = function(_v2tf) _v4.HITBOX_MULTIPLIER = _v2tf; _v4.markScaled(_v4.hitboxToggle, _v2ri.hitboxMult, _v2tf) end
})
_v4.section(_v2rj, _ei9m[1375], _ei9m[4+1851])
_v2ri.hitboxGroups = _v4.groupDropdown(_v2rj, _ei9m[874+274], _v4.HITBOX_GROUPS, _v4.PART_GROUP_ORDER)
_v2rj = _v2d6(_v2rf:AddSubTab({Name = _ei9m[1025]}))
_v4.section(_v2rj, _ei9m[2590+82], _ei9m[4+2263])
_v2ri.reach = _v2rj:AddToggle({
Name = _ei9m[6+672],
Default = false,
Callback = function(_v2tg)
_v4.REACH_ENABLED = _v2tg
if not _v2tg and not _v4.REACH_VISUALIZE then _v4.resetLocalReach() end
end
})
_v2ri.reachVis = _v2rj:AddToggle({
Name = _ei9m[2316+310],
Default = false,
Callback = function(_v2th)
_v4.REACH_VISUALIZE = _v2th
if not _v2th and not _v4.REACH_ENABLED then _v4.resetLocalReach() end
end
})
_v2ri.reachVisOpacity = _v2rj:AddSlider({
Name = _ei9m[386-6],
Min = 0, Max = 100, Default = 50,
Callback = function(_v2ti) _v4.REACH_VIS_TRANSPARENCY = 1 - (_v2ti / 100) end
})
_v2ri.reachMult = _v2rj:AddSlider({
Name = _ei9m[2150],
Min = 1, Max = 10, Default = 1,
Callback = function(_v2tj) _v4.REACH_MULTIPLIER = _v2tj; _v4.markScaled(_v2ri.reach, _v2ri.reachMult, _v2tj) end
})
_v2ri.reachGroups = _v4.groupDropdown(_v2rj, _ei9m[2920], _v4.REACH_GROUPS, _v4.REACH_GROUP_ORDER,
_v4.resetLocalReach)
_v2rj = _v2d6(_v2rf:AddSubTab({Name = _ei9m[7+2765]}))
_v4.section(_v2rj, _ei9m[4+1929], _ei9m[1290])
_v2ri.noAtkCd = _v2rj:AddToggle({
Name = _ei9m[2379-20],
Skull = true,
Default = false,
Callback = function(_v2tk)
_v4.NO_ATK_CD = _v2tk
if not _v2tk then _v4.restoreAttackSpeed() end
end
})
_v2ri.attackSpeed = _v2rj:AddSlider({
Name = _ei9m[341-3],
Min = 1, Max = 10, Default = 3,
Callback = function(_v2tl) _v4.ATTACK_SPEED = _v2tl end
})
if _v4.CAP.charstate then
_v2ri.noAtkCooldown = _v2rj:AddToggle({
Name = _ei9m[1431],
Skull = true,
Default = false,
Callback = function(_v2tm) _v4.NO_ATK_COOLDOWN = _v2tm end
})
end
_v4.section(_v2rj, _ei9m[547+247], _ei9m[384+1158])
_v2ri.silentAim = _v2rj:AddToggle({
Name = _ei9m[1348-17],
Default = false,
Callback = function(_v2tn)
_v4.SILENT_AIM = _v2tn
if not _v2tn then _v4.resetAllHitboxes() end
end
})
_v2ri.silentGroups = _v4.groupDropdown(_v2rj, _ei9m[420], _v4.SILENT_GROUPS, _v4.PART_GROUP_ORDER)
_v2rj = _v2d6(_v2rg:AddSubTab({Name = _ei9m[2461-12]}))
_v4.section(_v2rj, _ei9m[2584], _ei9m[2398+638])
_v2dg = _v2rj:AddToggle({
Name = _ei9m[142+380],
Skull = true,
Default = false,
Callback = function(_v2to)
if _v2to and not _v4.SAVE_DINO_ACTIVE then _v2e1()
elseif not _v2to and _v4.SAVE_DINO_ACTIVE then _v4.releaseDino() end
end
})
_v4.autoSaveToggle = _v2rj:AddToggle({
Name = _ei9m[5+2879],
Default = false,
Keybind = true,
Callback = function(_v2tp)
_v4.AUTO_SAVE = _v2tp
if _v2tp and _v4.AFK_FARM and _v4.AFK_FARM_SAFETY then
pcall(function() if _v4.Hub then _v4.Hub:Notify(_ei9m[2+2365], 5) end end)
end
end
})
_v4.autoSaveBleedToggle = _v2rj:AddToggle({
Name = _ei9m[1174-2],
Default = true,
Callback = function(_v2tq) _v4.AUTO_SAVE_BLEED = _v2tq end
})
_v4.autoSaveSlider = _v2rj:AddSlider({
Name = _ei9m[695],
Min = 1, Max = 95, Default = 30,
Callback = function(_v2tr) _v4.AUTO_SAVE_PCT = _v2tr end
})
_v2rj = _v2d6(_v2rg:AddSubTab({Name = _ei9m[3+1971]}))
_v4.section(_v2rj, _ei9m[7+662], _ei9m[2319+287])
_v4.flyToggle = _v2rj:AddToggle({
Name = _ei9m[2919],
Skull = true,
Default = false,
Callback = function(_v2ts) _v4.FLY = _v2ts end
})
function _v4.moversOff(_v2tt)
for _v2tu, _v2tv in pairs({ flyToggle = _ei9m[5+663], autoFlyToggle = _ei9m[380+17], tpCorpseToggle = _ei9m[2349-11],
biomeToggle = _ei9m[1781-11], fossilFarmToggle = _ei9m[1657-4], pumpkinFarmToggle = _ei9m[4+1323], afkFarmToggle = _ei9m[458-3],
legitFarmToggle = _ei9m[1353+135] }) do
local _v2tw = _v4[_v2tu]
if _v2tu ~= _v2tt and _v4[_v2tv] and _v2tw and _v2tw.Set then pcall(function() _v2tw:Set(false) end) end
end
end
function _v4.otherMoverOn()
return _v4.FLY or _v4.AUTO_FLY or _v4.AFK_FARM or _v4.LEGIT_FARM or _v4.ffOn() or _v4.SAVE_DINO_ACTIVE or false
end
_v4.section(_v2rj, _ei9m[4+2952], _ei9m[1467-4])
_v4.autoFlyToggle = _v2rj:AddToggle({
Name = _ei9m[2147],
Skull = true,
Default = false,
Callback = function(_v2tx)
_v4.AUTO_FLY = _v2tx
if _v2tx then _v4.moversOff(_ei9m[690]) end
end
})
_v4.section(_v2rj, _ei9m[152+1425], _ei9m[121+883])
_v4.tpCorpseToggle = _v2rj:AddToggle({
Name = _ei9m[1218-4],
Skull = true,
Default = false,
Callback = function(_v2ty)
_v4.TP_CORPSE = _v2ty
_v4.tpDone, _v4.tpTargetId, _v4.tpNoneSaid = false, nil, nil
if _v2ty then
_v4.moversOff(_ei9m[318+427])
local _v2tz = true
pcall(function() _v2tz = _v4.dinoEatsMeat() end)
if not _v2tz then pcall(function() _v2d2:Notify(_ei9m[1388-17], 5) end) end
end
end
})
_v2ri.tpChain = _v2rj:AddToggle({
Name = _ei9m[402+2423],
Default = false,
Callback = function(_v2u0) _v4.TP_CHAIN = _v2u0 end
})
_v4.biomeDestItems = (_v4.biomeNames and _v4.biomeNames()) or {}
if #_v4.biomeDestItems == 0 then _v4.biomeDestItems = { _ei9m[1812+58] } end
_v4.BIOME_TARGET = (_v4.biomeDestItems[1] ~= _ei9m[2396]) and _v4.biomeDestItems[1] or nil
_v4.section(_v2rj, _ei9m[2261], _ei9m[1193+1892])
_v4.biomeToggle = _v2rj:AddToggle({
Name = _ei9m[1946],
Skull = true,
Default = false,
Callback = function(_v2u1)
if not _v2u1 then _v4.BIOME_TRAVEL = false return end
if not _v4.BIOME_TARGET then
pcall(function() _v2d2:Notify(_ei9m[2512], 4) end)
task.defer(function() pcall(function() _v4.biomeToggle:Set(false) end) end)
return
end
if _v4.BIOME_TRAVEL then return end
_v4.moversOff(_ei9m[102+1582])
_v4.BIOME_TRAVEL = true
task.spawn(_v4.travelToBiome, _v4.BIOME_TARGET)
end
})
_v2ri.biomeDest = _v2rj:AddDropdown({
Name = _ei9m[2794-5],
Items = _v4.biomeDestItems,
Default = _v4.biomeDestItems[1],
Callback = function(_v2u2) _v4.BIOME_TARGET = (_v2u2 ~= _ei9m[2749]) and _v2u2 or nil end
})
_v4.section(_v2rj, _ei9m[1890-4], _ei9m[2918-14])
do
local _v2u3 = false
local function _v2u4(_v2u5, _v2u6)
if _v2u3 then return end
_v2u3 = true
_v4.AUTO_GAIT = _v2u6 and _v2u5 or nil
for _v2u7, _v2u8 in pairs({ Walk = _v2ri.autoWalk, Trot = _v2ri.autoTrot, Run = _v2ri.autoRun, Sprint = _v2ri.autoSprint }) do
if _v2u7 ~= _v2u5 and _v2u8 and _v2u8.Set then pcall(function() _v2u8:Set(false) end) end
end
if not _v2u6 and _v4.autoGaitStop then _v4.autoGaitStop() end
_v2u3 = false
end
_v2ri.autoWalk = _v2rj:AddToggle({ Name = _ei9m[1756-15], Default = false, Callback = function(_v2u9) _v2u4(_ei9m[32], _v2u9) end })
_v2ri.autoTrot = _v2rj:AddToggle({ Name = _ei9m[3009-10], Default = false, Callback = function(_v2ua) _v2u4(_ei9m[503], _v2ua) end })
_v2ri.autoRun = _v2rj:AddToggle({ Name = _ei9m[3+733], Default = false, Callback = function(_v2ub) _v2u4(_ei9m[1486-4], _v2ub) end })
_v2ri.autoSprint = _v2rj:AddToggle({ Name = _ei9m[1604+101], Default = false, Callback = function(_v2uc) _v2u4(_ei9m[1070], _v2uc) end })
end
_v4.section(_v2rj, _ei9m[135+2363], _ei9m[310+1181])
_v2gl = _v2rj:AddKeybind({
Name = _ei9m[280],
Default = Enum.KeyCode.Unknown,
Callback = function() end
})
_v4.section(_v2rj, _ei9m[2+2130], _ei9m[1112])
_v2ri.quickTurn = _v2rj:AddToggle({
Name = _ei9m[213-12],
Default = false,
Keybind = true,
Callback = function(_v2ud) _v4.QUICK_TURN = _v2ud end
})
_v2ri.turnSpeed = _v2rj:AddSlider({
Name = _ei9m[1216],
Min = 0, Max = 500, Default = 250,
Callback = function(_v2ue) _v4.TURN_SPEED = _v2ue end
})
_v4.section(_v2rj, _ei9m[858-17], _ei9m[577+1196])
_v4.autoGrowToggle = _v2rj:AddToggle({
Name = _ei9m[33+44],
Default = false,
Callback = function(_v2uf)
if _v2uf and not _v4.AUTO_GROW then
_v4.AUTO_GROW = true
_vjj = nil
_v4.startAutoGrow()
elseif not _v2uf and _v4.AUTO_GROW then
_v4.stopAutoGrow()
end
_v4.AUTO_GROW = _v2uf
end
})
_v2rj = _v2d6(_v2rh:AddSubTab({Name = _ei9m[5+2433]}))
_v4.section(_v2rj, _ei9m[2690], _ei9m[4+959])
_v4.espToggle = _v2rj:AddToggle({
Name = _ei9m[334+1760],
Default = false,
Callback = function(_v2ug)
_v4.ESP_ENABLED = _v2ug
if not _v2ug then
for _v2uh, _v2ui in pairs(_v4.espCache) do
if _v2ui.billboard then _v2ui.billboard.Enabled = false end
end
end
end
})
_v2ri.showName = _v2rj:AddToggle({ Name = _ei9m[2670], Default = true, Callback = function(_v2uj) _v4.SHOW_NAME = _v2uj end })
_v2ri.showDino = _v2rj:AddToggle({ Name = _ei9m[4+1165], Default = true, Callback = function(_v2uk) _v4.SHOW_DINO = _v2uk end })
_v2ri.showStage = _v2rj:AddToggle({ Name = _ei9m[160+26], Default = true, Callback = function(_v2ul) _v4.SHOW_STAGE = _v2ul end })
_v2ri.showGender = _v2rj:AddToggle({ Name = _ei9m[2117], Default = true, Callback = function(_v2um) _v4.SHOW_GENDER = _v2um end })
_v2ri.showHealth = _v2rj:AddToggle({ Name = _ei9m[1823-11], Default = true, Callback = function(_v2un) _v4.SHOW_HEALTH = _v2un end })
_v2ri.showStamina = _v2rj:AddToggle({ Name = _ei9m[763+366], Default = true, Callback = function(_v2uo) _v4.SHOW_STAMINA = _v2uo end })
_v2ri.foodBar = _v2rj:AddToggle({ Name = _ei9m[1558], Default = false, Callback = function(_v2up) _v4.SHOW_FOOD_BAR = _v2up end })
_v2ri.foodNum = _v2rj:AddToggle({ Name = _ei9m[657-18], Default = false, Callback = function(_v2uq) _v4.SHOW_FOOD_NUM = _v2uq end })
_v2ri.waterBar = _v2rj:AddToggle({ Name = _ei9m[497+562], Default = false, Callback = function(_v2ur) _v4.SHOW_WATER_BAR = _v2ur end })
_v2ri.waterNum = _v2rj:AddToggle({ Name = _ei9m[2787], Default = false, Callback = function(_v2us) _v4.SHOW_WATER_NUM = _v2us end })
_v2ri.infectBar = _v2rj:AddToggle({ Name = _ei9m[1838+146], Default = false, Callback = function(_v2ut) _v4.SHOW_INFECT_BAR = _v2ut end })
_v2ri.infectNum = _v2rj:AddToggle({ Name = _ei9m[1468-16], Default = false, Callback = function(_v2uu) _v4.SHOW_INFECT_NUM = _v2uu end })
_v2ri.infectTag = _v2rj:AddToggle({ Name = _ei9m[4+2027], Default = false, Callback = function(_v2uv) _v4.SHOW_INFECTED = _v2uv end })
_v2ri.showWeight = _v2rj:AddToggle({ Name = _ei9m[2943], Default = true, Callback = function(_v2uw) _v4.SHOW_WEIGHT = _v2uw end })
_v2ri.bleed = _v2rj:AddToggle({ Name = _ei9m[1993-4], Default = false, Callback = function(_v2ux) _v4.BLEED_ESP = _v2ux end })
_v2ri.packESP = _v2rj:AddToggle({ Name = _ei9m[2294-2], Default = false, Callback = function(_v2uy) _v4.PACK_ESP = _v2uy end })
_v2ri.packLeader = _v2rj:AddToggle({ Name = _ei9m[2+2393], Default = false, Callback = function(_v2uz) _v4.PACK_LEADER_ESP = _v2uz end })
_v2ri.showDist = _v2rj:AddToggle({ Name = _ei9m[2845-1], Default = true, Callback = function(_v2v0) _v4.SHOW_DISTANCE = _v2v0 end })
_v2ri.textHL = _v2rj:AddToggle({ Name = _ei9m[242], Default = false, Callback = function(_v2v1) _v4.TEXT_HIGHLIGHT = _v2v1 end })
_v4.section(_v2rj, _ei9m[20+8], _ei9m[1593])
_v2ri.textSize = _v2rj:AddSlider({ Name = _ei9m[1918-15], Min = 8, Max = 28, Default = 14, Callback = function(_v2v2) _v4.TEXT_SIZE = _v2v2 end })
_v2ri.hbHeight = _v2rj:AddSlider({ Name = _ei9m[2829], Min = 2, Max = 20, Default = 6, Callback = function(_v2v3) _v4.HEALTH_BAR_HEIGHT = _v2v3 end })
_v2ri.hbWidth = _v2rj:AddSlider({ Name = _ei9m[1976], Min = 20, Max = 100, Default = 80, Callback = function(_v2v4) _v4.HEALTH_BAR_WIDTH = _v2v4 / 100 end })
_v2ri.sbHeight = _v2rj:AddSlider({ Name = _ei9m[5+843], Min = 2, Max = 20, Default = 6, Callback = function(_v2v5) _v4.STAM_BAR_HEIGHT = _v2v5 end })
_v2ri.sbWidth = _v2rj:AddSlider({ Name = _ei9m[2661], Min = 20, Max = 100, Default = 80, Callback = function(_v2v6) _v4.STAM_BAR_WIDTH = _v2v6 / 100 end })
_v4.section(_v2rj, _ei9m[1017+1972], _ei9m[252-19])
_v2ri.espDist = _v2rj:AddSlider({ Name = _ei9m[2946-18], Min = 100, Max = 10000, Default = 5000, Callback = function(_v2v7) _v4.ESP_DISTANCE = _v2v7 end })
_v4.section(_v2rj, _ei9m[390+19], _ei9m[151+167])
_v2ri.chams = _v2rj:AddToggle({
Name = _ei9m[2052+669],
Default = false,
Callback = function(_v2v8)
_v4.CHAMS_ENABLED = _v2v8
if not _v2v8 then
for _v2v9, _v2va in pairs(_v4.espCache) do
if _v2va.highlight then _v2va.highlight.Enabled = false end
end
end
end
})
_v2ri.chamsFill = _v2rj:AddSlider({ Name = _ei9m[629+80], Min = 0, Max = 100, Default = 70, Callback = function(_v2vb) _v4.CHAMS_FILL_TRANSPARENCY = _v2vb / 100 end })
_v2ri.chamsOutline = _v2rj:AddSlider({ Name = _ei9m[1351+372], Min = 0, Max = 100, Default = 0, Callback = function(_v2vc) _v4.CHAMS_OUTLINE_TRANSPARENCY = _v2vc / 100 end })
_v4.section(_v2rj, _ei9m[1485], _ei9m[2327-17])
_v2ri.fishESP = _v2rj:AddToggle({
Name = _ei9m[180+124],
Default = false,
Callback = function(_v2vd) _v4.FISH_ESP = _v2vd end,
})
_v4.section(_v2rj, _ei9m[2391], _ei9m[1882])
_v2ri.corpse = _v2rj:AddToggle({
Name = _ei9m[2136-14],
Default = false,
Callback = function(_v2ve) _v4.CORPSE_ESP = _v2ve; _vcp() end
})
_v2ri.worldTextSize = _v2rj:AddSlider({
Name = _ei9m[1959],
Min = 8, Max = 32, Default = 12,
Callback = function(_v2vf) _v4.WORLD_TEXT_SIZE = _v2vf end
})
_v2ri.corpseDist = _v2rj:AddSlider({
Name = _ei9m[2+1779],
Min = 100, Max = 10000, Default = 5000,
Callback = function(_v2vg) _v4.CORPSE_DISTANCE = _v2vg; if _v4.CORPSE_ESP then _vcp() end end
})
_v2ri.corpseInf = _v2rj:AddToggle({
Name = _ei9m[7+234],
Default = true,
Callback = function(_v2vh) _v4.CORPSE_INF_ESP = _v2vh end
})
_v4.section(_v2rj, _ei9m[970+1615], _ei9m[4+2571])
_v2ri.meat = _v2rj:AddToggle({
Name = _ei9m[587-13],
Default = false,
Callback = function(_v2vi) _v4.MEAT_ESP = _v2vi; _vcp() end
})
_v2ri.meatDist = _v2rj:AddSlider({
Name = _ei9m[2+56],
Min = 100, Max = 10000, Default = 5000,
Callback = function(_v2vj) _v4.MEAT_DISTANCE = _v2vj; if _v4.MEAT_ESP then _vcp() end end
})
_v2rj = _v2d6(_v2rh:AddSubTab({Name = _ei9m[3+114]}))
_v4.section(_v2rj, _ei9m[2742], _ei9m[140+1579])
_v2ri.antiBS = _v2rj:AddToggle({
Name = _ei9m[515+14],
Default = false,
Callback = function(_v2vk) _v4.ANTI_BLACKSCREEN = _v2vk end
})
_v2ri.noBlur = _v2rj:AddToggle({
Name = _ei9m[4+2733],
Default = false,
Callback = function(_v2vl)
_v4.NO_BLUR = _v2vl
if _v2vl then _v4.sweepBlur() else _v4.restoreBlur() end
end
})
_v2ri.showModules = _v2rj:AddToggle({
Name = _ei9m[1404-1],
Default = false,
Callback = function(_v2vm) _v4.SHOW_INDICATORS = _v2vm end
})
do
_v4.section(_v2rj, _ei9m[2598-12], _v4.CAP.charstate and _ei9m[3+54] or _ei9m[1903+949])
_v2ri.statsCard = _v2rj:AddToggle({ Name = _ei9m[2060-7], Default = false, Callback = function(_v2vn) _v4.STATS_CARD = _v2vn end })
_v2ri.scName = _v2rj:AddToggle({ Name = _ei9m[3+2775], Default = true, Callback = function(_v2vo) _v4.SC_NAME = _v2vo end })
_v2ri.scGrowth = _v2rj:AddToggle({ Name = _ei9m[15+2], Default = true, Callback = function(_v2vp) _v4.SC_GROWTH = _v2vp end })
if _v4.CAP.charstate then
_v2ri.scMass = _v2rj:AddToggle({ Name = _ei9m[2+2611], Default = true, Callback = function(_v2vq) _v4.SC_MASS = _v2vq end })
end
_v2ri.scWeight = _v2rj:AddToggle({ Name = _ei9m[2846], Default = true, Callback = function(_v2vr) _v4.SC_WEIGHT = _v2vr end })
_v2ri.scTimer = _v2rj:AddToggle({ Name = _ei9m[175+110], Default = true, Callback = function(_v2vs) _v4.SC_TIMER = _v2vs end })
_v2ri.scStageTimer = _v2rj:AddToggle({ Name = _ei9m[7+253], Default = true, Callback = function(_v2vt) _v4.SC_STAGE_TIMER = _v2vt end })
if _v4.CAP.charstate then
_v2ri.scNutrition = _v2rj:AddToggle({ Name = _ei9m[6+375], Default = true, Callback = function(_v2vu) _v4.SC_NUTRITION = _v2vu end })
_v2ri.scWellbeing = _v2rj:AddToggle({ Name = _ei9m[3+2033], Default = true, Callback = function(_v2vv) _v4.SC_WELLBEING = _v2vv end })
end
_v2ri.scHideMenu = _v2rj:AddToggle({ Name = _ei9m[3+2596], Default = true, Callback = function(_v2vw) _v4.SC_HIDE_WITH_MENU = _v2vw end })
_v2ri.scDrag = _v2rj:AddToggle({
Name = _ei9m[1678-11],
Default = false,
Callback = function(_v2vx) _v4.SC_DRAG = _v2vx end
})
_v2rj:AddButton({
Name = _ei9m[2+600],
Callback = function()
if _v4.setStatsCardPos then _v4.setStatsCardPos(0.62, 0, 0, 16) end
pcall(function() _v2d2:Notify(_ei9m[2455+366]) end)
end
})
end
_v4.section(_v2rj, _ei9m[6+213], _ei9m[2810-2])
do
local _v2vy = (_v4.skinsForCurrentDino and (_v4.skinsForCurrentDino())) or { _ei9m[5+2420] }
_v4.skinDropdown = _v2rj:AddDropdown({
Name = _ei9m[484],
Items = _v2vy,
Default = _ei9m[1980],
Callback = function(_v2vz)
if type(_v2vz) ~= _ei9m[2578-10] then return end
_v4.SKIN_SELECTED, _v4.SKIN_WANTED = _v2vz, _v2vz
if _v4.applySkin then pcall(_v4.applySkin, _v2vz) end
end,
})
end
_v4.section(_v2rj, _ei9m[1365], _ei9m[2148-12])
_v2ri.tracers = _v2rj:AddToggle({
Name = _ei9m[95+123],
Default = false,
Callback = function(_v2w0)
_v4.TRACERS_ENABLED = _v2w0
if not _v2w0 then
for _v2w1, _v2w2 in pairs(_v4.espCache) do
if _v2w2.tracer then
pcall(function() _v2w2.tracer.Visible = false end)
end
end
end
end
})
_v4.section(_v2rj, _ei9m[1033-17], _ei9m[2785])
_v2ri.unlimitedZoom = _v2rj:AddToggle({
Name = _ei9m[1940],
Default = false,
Callback = function(_v2w3)
_v4.UNLIMITED_ZOOM = _v2w3
if _v2w3 then _v4.bindZoom() else _v4.restoreZoom() end
end
})
_v2ri.fovToggle = _v2rj:AddToggle({
Name = _ei9m[437-19],
Default = false,
Callback = function(_v2w4)
_v4.FOV_ENABLED = _v2w4
if _v2w4 then _v4.bindFOV() else _v4.restoreFOV() end
end
})
_v2ri.fovSlider = _v2rj:AddSlider({
Name = _ei9m[2018+869],
Min = 1, Max = 120, Default = 70,
Callback = function(_v2w5) _v4.FOV_VALUE = _v2w5 end
})
_v2rj = _v2d6(_v2rh:AddSubTab({Name = _ei9m[1703-7]}))
_v4.section(_v2rj, _ei9m[887+136], _ei9m[472+1256])
_v2ri.fullbright = _v2rj:AddToggle({
Name = _ei9m[652+127],
Default = false,
Callback = function(_v2w6)
_v4.FULLBRIGHT = _v2w6
if _v2w6 then _v4.enableFullbright() else _v4.restoreFullbright() end
end
})
_v4.section(_v2rj, _ei9m[159], _ei9m[7+1498])
_v2ri.noFog = _v2rj:AddToggle({
Name = _ei9m[189+302],
Default = false,
Callback = function(_v2w7)
_v4.NO_FOG = _v2w7
if _v2w7 then _v4.enableNoFog() else _v4.restoreNoFog() end
end
})
_v4.section(_v2rj, _ei9m[1759], _ei9m[2876])
_v2ri.noWeather = _v2rj:AddToggle({
Name = _ei9m[2544],
Default = false,
Callback = function(_v2w8)
_v4.NO_WEATHER = _v2w8
_v4.applyNoWeather(_v2w8)
end
})
_v4.section(_v2rj, _ei9m[7+2009], _ei9m[376+1960])
_v2ri.customTime = _v2rj:AddToggle({
Name = _ei9m[2+656],
Default = false,
Callback = function(_v2w9) _v4.setCustomTime(_v2w9) end
})
_v2ri.timeHour = _v2rj:AddSlider({
Name = _ei9m[1607+929],
Min = 0, Max = 24, Default = 12,
Callback = function(_v2wa) _v4.customTimeHour = _v2wa; _v4.refreshCustomTime() end
})
_v2rj:AddDropdown({
Name = _ei9m[3+2314],
Items = { _ei9m[851-8], _ei9m[1778], _ei9m[206-10], _ei9m[1529-10] },
Default = _ei9m[986+875],
Callback = function(_v2wb)
local _v2wc = ({ Sunrise = 6, Day = 13, Sunset = 18, Night = 0 })[_v2wb] or 12
_v4.customTimeHour = _v2wc
pcall(function() if _v2ri.timeHour and _v2ri.timeHour.Set then _v2ri.timeHour:Set(_v2wc) end end)
pcall(function() if _v2ri.customTime and _v2ri.customTime.Set then _v2ri.customTime:Set(true) end end)
_v4.setCustomTime(true)
_v4.refreshCustomTime()
end
})
_v4.section(_v2rj, _ei9m[1738], _ei9m[5+2613])
_v2ri.fossilS = _v2rj:AddToggle({ Name = _ei9m[1854+949], Default = false, Callback = function(_v2wd) _v4.FOSSIL_SMALL = _v2wd; _vcp() end })
_v2ri.fossilDistS = _v2rj:AddSlider({ Name = _ei9m[2515], Min = 100, Max = 10000, Default = 1500, Callback = function(_v2we) _v4.FOSSIL_DIST_SMALL = _v2we; _vcp() end })
_v2ri.fossilM = _v2rj:AddToggle({ Name = _ei9m[1197], Default = false, Callback = function(_v2wf) _v4.FOSSIL_MEDIUM = _v2wf; _vcp() end })
_v2ri.fossilDistM = _v2rj:AddSlider({ Name = _ei9m[2+1221], Min = 100, Max = 10000, Default = 3000, Callback = function(_v2wg) _v4.FOSSIL_DIST_MEDIUM = _v2wg; _vcp() end })
_v2ri.fossilL = _v2rj:AddToggle({ Name = _ei9m[2272-6], Default = false, Callback = function(_v2wh) _v4.FOSSIL_LARGE = _v2wh; _vcp() end })
_v2ri.fossilDistL = _v2rj:AddSlider({ Name = _ei9m[2342-16], Min = 100, Max = 10000, Default = 5000, Callback = function(_v2wi) _v4.FOSSIL_DIST_LARGE = _v2wi; _vcp() end })
_v4.section(_v2rj, _ei9m[5+1666], _ei9m[1379-10])
_v2ri.vegESP = _v2rj:AddToggle({
Name = _ei9m[37+834],
Default = false,
Callback = function(_v2wj)
_v4.VEG_ESP = _v2wj
if not _v2wj then _v4.vegHideAll() end
end
})
_v2ri.vegDietOnly = _v2rj:AddToggle({
Name = _ei9m[726+222],
Default = false,
Callback = function(_v2wk) _v4.VEG_DIET_ONLY = _v2wk end
})
_v2ri.vegHideEaten = _v2rj:AddToggle({
Name = _ei9m[4+102],
Default = false,
Callback = function(_v2wl) _v4.VEG_HIDE_EATEN = _v2wl end
})
_v2ri.vegDist = _v2rj:AddSlider({
Name = _ei9m[996+1],
Min = 100, Max = 5000, Default = 1500,
Callback = function(_v2wm) _v4.VEG_DISTANCE = _v2wm end
})
_v2ri.vegMax = _v2rj:AddSlider({
Name = _ei9m[1153-20],
Min = 10, Max = 120, Default = 40,
Callback = function(_v2wn)
if _v2wn < _v4.VEG_MAX then
for _v2wo = _v2wn + 1, _v4.VEG_MAX do
local _v2wp = _v4.vegPool[_v2wo]
if _v2wp then pcall(function() _v2wp.bb.Enabled = false; _v2wp.bb.Adornee = nil end) end
end
end
_v4.VEG_MAX = _v2wn
end
})
_v4.section(_v2rj, _ei9m[1741-16], _ei9m[144-13])
_v2ri.clay = _v2rj:AddToggle({ Name = _ei9m[2864], Default = false, Callback = function(_v2wq) _v4.CLAY_ESP = _v2wq; _vcp() end })
_v2ri.clayDist = _v2rj:AddSlider({ Name = _ei9m[34+29], Min = 100, Max = 10000, Default = 5000, Callback = function(_v2wr) _v4.CLAY_DISTANCE = _v2wr; if _v4.CLAY_ESP then _vcp() end end })
_v4.section(_v2rj, _ei9m[419+1747], _ei9m[883])
_v2ri.pumpkin = _v2rj:AddToggle({ Name = _ei9m[1429-12], Default = false, Callback = function(_v2ws) _v4.PUMPKIN_ESP = _v2ws; _vcp() end })
_v2ri.pumpkinDist = _v2rj:AddSlider({ Name = _ei9m[2519], Min = 100, Max = 10000, Default = 10000, Callback = function(_v2wt) _v4.PUMPKIN_DISTANCE = _v2wt; if _v4.PUMPKIN_ESP then _vcp() end end })
_v4.section(_v2rj, _ei9m[1736-15], _ei9m[1657])
_v2ri.mmap = _v2rj:AddToggle({
Name = _ei9m[484-3],
Default = false,
Callback = function(_v2wu) _v4.MMAP_ON = _v2wu end
})
_v2ri.mmapPlayers = _v2rj:AddToggle({
Name = _ei9m[426-2],
Default = true,
Callback = function(_v2wv) _v4.MMAP_PLAYERS = _v2wv; if not _v2wv then _v4.mmapCollect() end end
})
_v2ri.mmapCorpses = _v2rj:AddToggle({
Name = _ei9m[599+697],
Default = true,
Callback = function(_v2ww) _v4.MMAP_CORPSES = _v2ww; if not _v2ww then _v4.mmapCollect() end end
})
_v2ri.mmapFossils = _v2rj:AddToggle({
Name = _ei9m[1357-2],
Default = true,
Callback = function(_v2wx) _v4.MMAP_FOSSILS = _v2wx; if not _v2wx then _v4.mmapCollect() end end
})
_v2rj = _v2d6(_v2rh:AddSubTab({Name = _ei9m[2882]}))
_v4.section(_v2rj, _ei9m[1507], _ei9m[2765])
_v2ri.modCheck = _v2rj:AddToggle({
Name = _ei9m[1814-17],
Default = false,
Callback = function(_v2wy) _v4.MOD_CHECK = _v2wy; _v4.modCheckRefresh() end
})
_v2ri.modKick = _v2rj:AddToggle({
Name = _ei9m[1080],
Default = false,
Callback = function(_v2wz) _v4.MOD_KICK = _v2wz end
})
do
_v4.modAdmins = setmetatable({}, { __mode = "k" })
_v4.modGroupId = nil
_v4.modAlertGui = nil
_v4.modAlertFrame = nil
_v4.modAlertLabels = {}
local function _v2x0()
if _v4.modGroupId then return _v4.modGroupId end
local _v2x1, _v2x2 = pcall(function() return game.CreatorType end)
if _v2x1 and _v2x2 == Enum.CreatorType.Group then
_v4.modGroupId = game.CreatorId
else
_v4.modGroupId = game.CreatorId
end
return _v4.modGroupId
end
local function _v2x3(_v2x4)
local _v2x5 = _v2x0()
if not _v2x5 or _v2x5 == 0 then return false end
local _v2x6, _v2x7 = pcall(function() return _v2x4:GetRoleInGroup(_v2x5) end)
if not _v2x6 or type(_v2x7) ~= _ei9m[2032+368] then return false end
local _v2x8 = string.lower(_v2x7)
for _v2x9, _v2xa in ipairs(_v4.MOD_ADMIN_KEYWORDS) do
if string.find(_v2x8, _v2xa, 1, true) then
return true, _v2x7
end
end
return false
end
local function _v2xb()
if _v4.modAlertGui and _v4.modAlertGui.Parent then return end
local _v2xc = Instance.new(_ei9m[1049+1257])
_v2xc.Name = _ei9m[1315]; _v2xc.ResetOnSpawn = false; _v2xc.DisplayOrder = 99999
_v2xc.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
pcall(function() _v2xc.Parent = game:GetService(_ei9m[2738]) end)
if not _v2xc.Parent then _v2xc.Parent = _v2:WaitForChild(_ei9m[908+1699]) end
_v4.modAlertGui = _v2xc
local _v2xd = Instance.new(_ei9m[105+382])
_v2xd.Name = _ei9m[4+3017]; _v2xd.Size = UDim2.new(0, 260, 0, 300)
_v2xd.Position = UDim2.new(0, 10, 0, 50)
_v2xd.BackgroundTransparency = 1; _v2xd.Parent = _v2xc
local _v2xe = Instance.new(_ei9m[2282])
_v2xe.FillDirection = Enum.FillDirection.Vertical
_v2xe.HorizontalAlignment = Enum.HorizontalAlignment.Left
_v2xe.SortOrder = Enum.SortOrder.LayoutOrder
_v2xe.Padding = UDim.new(0, 4); _v2xe.Parent = _v2xd
_v4.modAlertFrame = _v2xd
end
local function _v2xf()
if not _v4.modAlertFrame then return end
for _v2xg, _v2xh in pairs(_v4.modAlertLabels) do
pcall(function() _v2xh:Destroy() end)
end
_v4.modAlertLabels = {}
if not _v4.MOD_CHECK then
if _v4.modAlertGui then _v4.modAlertGui.Enabled = false end
return
end
local _v2xi = 0
for _v2xj, _v2xk in pairs(_v4.modAdmins) do
if _v2xj and _v2xj.Parent then
_v2xi = _v2xi + 1
local _v2xl = (type(_v2xk) == _ei9m[1206+67]) and string.upper(_v2xk) or _ei9m[1800+102]
local _v2xm = Instance.new(_ei9m[2311])
_v2xm.Name = _ei9m[1622-9] .. _v2xj.Name
_v2xm.LayoutOrder = _v2xi
_v2xm.Size = UDim2.new(1, 0, 0, 22)
_v2xm.BackgroundColor3 = Color3.fromRGB(80, 0, 0)
_v2xm.BackgroundTransparency = 0.3
_v2xm.TextColor3 = Color3.fromRGB(255, 50, 50)
_v2xm.TextStrokeTransparency = 0
_v2xm.TextStrokeColor3 = Color3.new(0, 0, 0)
_v2xm.Font = Enum.Font.GothamBold
_v2xm.TextSize = 15
_v2xm.TextXAlignment = Enum.TextXAlignment.Left
_v2xm.Text = _v2xl .. ": " .. _v2xj.DisplayName .. _ei9m[4+1918] .. _v2xj.Name .. ")"
Instance.new(_ei9m[3+881], _v2xm).CornerRadius = UDim.new(0, 4)
_v2xm.Parent = _v4.modAlertFrame
_v4.modAlertLabels[_v2xj] = _v2xm
end
end
if _v4.modAlertGui then _v4.modAlertGui.Enabled = _v2xi > 0 end
end
local function _v2xn(_v2xo)
if _v2xo == _v2 then return end
if _v4.UNLOADED then return end
task.spawn(function()
local _v2xp, _v2xq = _v2x3(_v2xo)
if _v2xp then
_v4.modAdmins[_v2xo] = _v2xq or _ei9m[2074]
if _v4.MOD_KICK or (_v4.AFK_FARM and _v4.AFK_FARM_ADMIN_KICK) or (_v4.LEGIT_FARM and _v4.LF_ADMIN_KICK) then
if not (_v4.rejoinLeave and _v4.rejoinLeave(_ei9m[139+148] .. _v2xo.DisplayName)) then
pcall(_v4.leaveNote, _ei9m[7+3003], false)
pcall(function() _v2:Kick(_ei9m[1+74] .. _v2xo.DisplayName) end)
end
return
end
if _v4.MOD_CHECK then
_v2xb()
_v2xf()
pcall(function()
_v2d2:Notify(string.upper(_v2xq or _ei9m[1430]) .. ": " .. _v2xo.DisplayName .. _ei9m[702] .. _v2xo.Name .. ")", 8)
end)
end
end
end)
end
function _v4.adminKickSweep()
for _v2xr, _v2xs in ipairs(_v0:GetPlayers()) do _v2xn(_v2xs) end
end
function _v4.modCheckRefresh()
if _v4.MOD_CHECK then
_v2xb()
for _v2xt, _v2xu in ipairs(_v0:GetPlayers()) do
if not _v4.modAdmins[_v2xu] then
_v2xn(_v2xu)
end
end
_v2xf()
else
_v2xf()
end
end
table.insert(_v2l, _v0.PlayerAdded:Connect(function(_v2xv)
if _v4.MOD_CHECK or _v4.MOD_KICK or (_v4.AFK_FARM and _v4.AFK_FARM_ADMIN_KICK)
or (_v4.LEGIT_FARM and _v4.LF_ADMIN_KICK) then
_v2xn(_v2xv)
end
end))
table.insert(_v2l, _v0.PlayerRemoving:Connect(function(_v2xw)
if _v4.modAdmins[_v2xw] then
_v4.modAdmins[_v2xw] = nil
_v2xf()
end
end))
function _v4.cleanupModCheck()
_v4.modAdmins = setmetatable({}, { __mode = "k" })
if _v4.modAlertGui then pcall(function() _v4.modAlertGui:Destroy() end) end
_v4.modAlertGui = nil
_v4.modAlertFrame = nil
_v4.modAlertLabels = {}
end
end
function _v4.unloadScript()
_v4.UNLOADED = true
pcall(function() _v4.CARRY_CORPSE = false; _v4.carryApply(false) end)
pcall(function() if _v4.lfRestoreInput then _v4.lfRestoreInput() end end)
_v4.AUTO_GAIT = nil
pcall(function() if _v4.autoGaitStop then _v4.autoGaitStop() end end)
pcall(function() if _v4.mvCleanup then _v4.mvCleanup() end end)
pcall(_v4.sweepOwnGuis)
_v4.MOD_CHECK = false
_v4.MOD_KICK = false
_v4.cleanupModCheck()
_v4.FULLBRIGHT = false
pcall(function() _v1:UnbindFromRenderStep(_ei9m[313+2590]) end)
pcall(function() if _v4.restoreFullbright then _v4.restoreFullbright() end end)
_v4.AFK_FARM = false
_v4.afkStopWalk()
if _v4.afkColliders then
for _v2xx in pairs(_v4.afkColliders) do
if _v2xx.Parent then pcall(function() _v2xx.CanCollide = true end) end
end
_v4.afkColliders, _v4.afkCollidersChar = nil, nil
end
if _v4.afkWasOn then
_v4.afkWasOn = false
pcall(function() _v2.Character:SetAttribute(_ei9m[2828-17], nil) end)
end
if _v4.afkSafetyState then
if _v4.afkSafetyState == _ei9m[1987+882] then
_v4.pressRest()
end
if _v4.afkSafetyPlatform then pcall(function() _v4.afkSafetyPlatform:Destroy() end); _v4.afkSafetyPlatform = nil end
pcall(function()
local _v2xy = _v4.getLocalPhysicsRoot()
if _v2xy then _v2xy.Anchored = false end
end)
_v4.afkSafetyState = nil
end
_v4.AUTO_SWITCH, _v4.AS_BUSY, _v4.FARM_TIMER = false, false, false
_v4.LEGIT_FARM = false
pcall(function() _v1:UnbindFromRenderStep(_ei9m[1496]) end)
pcall(function()
local _v2xz = _v4.lfWalkState
if _v2xz then _v2xz.mod.AdjustDirection = _v2xz.orig; _v4.lfWalkState = nil end
end)
pcall(function() if _v4.lfWasOn and _v4.lfStop then _v4.lfStop(false) end end)
pcall(function()
local _v2y0 = getgenv and getgenv().EazyCheats_Handoff
if _v4.REJOIN_OK and _v4.REJOIN and not _v2y0 then
local _v2y1 = _v4.rejoinRead()
_v2y1.farms, _v2y1.pending = {}, nil
_v4.rejoinWrite(_v2y1)
end
end)
_v4.NO_FOG = false
pcall(function() _v1:UnbindFromRenderStep(_ei9m[24+146]) end)
pcall(function() if _v4.restoreNoFog then _v4.restoreNoFog() end end)
task.spawn(function() pcall(_v4.setCustomTime, false) end)
_v4.customTime = false
pcall(function() _v1:UnbindFromRenderStep(_ei9m[968]) end)
_v4.autoSpawnCleanup()
_v4.stopAutoGrow()
if _v4.FPS_SAVER then _v4.FPS_SAVER = false; pcall(function() if _v4.applyFpsSaver then _v4.applyFpsSaver(false) end end) end
_v4.ESP_ENABLED = false
_v4.CHAMS_ENABLED = false
_v4.TRACERS_ENABLED = false
_v4.CORPSE_ESP = false
_v4.FOSSIL_SMALL = false
_v4.FOSSIL_MEDIUM = false
_v4.FOSSIL_LARGE = false
_v4.MEAT_ESP = false
_v4.CLAY_ESP = false
_v4.PUMPKIN_ESP = false
_v4.VEG_ESP = false
pcall(function() if _v4.vegFolder then _v4.vegFolder:Destroy() end end)
_v4.vegFolder = nil
_v4.vegPool = {}
_v4.HITBOX_EXPANDER = false
_v4.HITBOX_VISUALIZE = false
_v4.resetAllHitboxes()
_v4.REACH_ENABLED = false
_v4.resetLocalReach()
pcall(function()
for _v2y2 in pairs(_v4.hbMaskT or {}) do
if _v2y2 and _v2y2.Parent then _v2y2.CanQuery = true end
end
_v4.hbMaskT = setmetatable({}, { __mode = "k" })
end)
_v4.AUTO_WATER = false
_v4.NO_ATK_CD = false
_v4.NO_ATK_COOLDOWN = false
_v4.restoreAttackSpeed()
_v4.UNLIMITED_ZOOM = false
_v4.restoreZoom()
_v4.FOV_ENABLED = false
_v4.restoreFOV()
_v4.BIOME_TRAVEL = false
_v4.NO_BLUR = false
pcall(_v4.restoreBlur)
if _v4.NO_WEATHER then _v4.NO_WEATHER = false; pcall(function() _v4.applyNoWeather(false) end) end
_v4.SAVE_DINO_ACTIVE = false
_v2dy()
_v2dm()
for _v2y3, _v2y4 in pairs(_v4.espCache) do
_v4.destroyESP(_v2y3)
end
for _v2y5, _v2y6 in pairs(_v6k) do
pcall(function() _v2y6:Destroy() end)
end
_v6k = {}
for _v2y7, _v2y8 in ipairs(_v2l) do
pcall(function() _v2y8:Disconnect() end)
end
_v2l = {}
pcall(function() if _v4.mobGui then _v4.mobGui:Destroy() end end)
pcall(function() _v4.mmapDestroyPool() end)
pcall(function() _v2d2:Destroy() end)
pcall(function() indicatorGui:Destroy() end)
pcall(_v4.sweepOwnGuis)
pcall(function()
for _v2y9, _v2ya in workspace:GetChildren() do
if _v2ya.Name == _ei9m[352+348] or _v2ya.Name == _ei9m[273+48] then
_v2ya:Destroy()
end
end
end)
pcall(function()
for _v2yb, _v2yc in ipairs({ _ei9m[7+83], _ei9m[2236], _ei9m[1069+691],
_ei9m[7+2194], _ei9m[1217-16], _ei9m[2+433] }) do
pcall(function() _v1:UnbindFromRenderStep(_v2yc) end)
end
end)
pcall(function()
local _v2yd = getgenv and getgenv()
if _v2yd then _v2yd.EazyCheats_Unload = nil end
end)
end
pcall(function()
local _v2ye = getgenv and getgenv()
if _v2ye then
_v2ye.EazyCheats_Unload = _v4.unloadScript
_v2ye.EazyCheats_Unload_Job = game.JobId
_v2ye.EazyCheats_Unload_State = nil
end
end)
_v2d2.onUnload = _v4.unloadScript
_v4.CONFIG_FOLDER = _ei9m[1522-19]
_v4.AUTO_LOAD_FILE = _v4.CONFIG_FOLDER .. _ei9m[130+96]
pcall(function() if not isfolder(_v4.CONFIG_FOLDER) then makefolder(_v4.CONFIG_FOLDER) end end)
local _v2yf = game:GetService(_ei9m[2304])
function _v4.getConfigData()
return {
ESP_ENABLED = _v4.ESP_ENABLED,
CHAMS_ENABLED = _v4.CHAMS_ENABLED,
TRACERS_ENABLED = _v4.TRACERS_ENABLED,
SHOW_NAME = _v4.SHOW_NAME,
SHOW_DINO = _v4.SHOW_DINO,
SHOW_STAGE = _v4.SHOW_STAGE,
SHOW_GENDER = _v4.SHOW_GENDER,
SHOW_HEALTH = _v4.SHOW_HEALTH,
SHOW_STAMINA = _v4.SHOW_STAMINA,
SHOW_FOOD_BAR = _v4.SHOW_FOOD_BAR,
SHOW_FOOD_NUM = _v4.SHOW_FOOD_NUM,
SHOW_WATER_BAR = _v4.SHOW_WATER_BAR,
SHOW_WATER_NUM = _v4.SHOW_WATER_NUM,
SHOW_INFECT_BAR = _v4.SHOW_INFECT_BAR,
SHOW_INFECT_NUM = _v4.SHOW_INFECT_NUM,
SHOW_INFECTED = _v4.SHOW_INFECTED,
SHOW_WEIGHT = _v4.SHOW_WEIGHT,
BLEED_ESP = _v4.BLEED_ESP,
PACK_ESP = _v4.PACK_ESP,
PACK_LEADER_ESP = _v4.PACK_LEADER_ESP,
SHOW_DISTANCE = _v4.SHOW_DISTANCE,
TEXT_HIGHLIGHT = _v4.TEXT_HIGHLIGHT,
TEXT_SIZE = _v4.TEXT_SIZE,
HEALTH_BAR_HEIGHT = _v4.HEALTH_BAR_HEIGHT,
HEALTH_BAR_WIDTH = _v4.HEALTH_BAR_WIDTH,
STAM_BAR_HEIGHT = _v4.STAM_BAR_HEIGHT,
STAM_BAR_WIDTH = _v4.STAM_BAR_WIDTH,
ESP_DISTANCE = _v4.ESP_DISTANCE,
CHAMS_FILL_TRANSPARENCY = _v4.CHAMS_FILL_TRANSPARENCY,
CHAMS_OUTLINE_TRANSPARENCY = _v4.CHAMS_OUTLINE_TRANSPARENCY,
CORPSE_ESP = _v4.CORPSE_ESP,
CORPSE_INF_ESP = _v4.CORPSE_INF_ESP,
CORPSE_DISTANCE = _v4.CORPSE_DISTANCE,
WORLD_TEXT_SIZE = _v4.WORLD_TEXT_SIZE,
STATS_CARD = _v4.STATS_CARD, SC_GROWTH = _v4.SC_GROWTH, SC_MASS = _v4.SC_MASS, SC_WEIGHT = _v4.SC_WEIGHT,
SC_TIMER = _v4.SC_TIMER, SC_NUTRITION = _v4.SC_NUTRITION, SC_WELLBEING = _v4.SC_WELLBEING,
SC_STAGE_TIMER = _v4.SC_STAGE_TIMER,
SC_DRAG = _v4.SC_DRAG,
SC_NAME = _v4.SC_NAME,
SC_HIDE_WITH_MENU = _v4.SC_HIDE_WITH_MENU,
SC_POS_XS = _v4.SC_POS_XS, SC_POS_XO = _v4.SC_POS_XO,
SC_POS_YS = _v4.SC_POS_YS, SC_POS_YO = _v4.SC_POS_YO,
FISH_ESP = _v4.FISH_ESP,
FOSSIL_SMALL = _v4.FOSSIL_SMALL,
FOSSIL_MEDIUM = _v4.FOSSIL_MEDIUM,
FOSSIL_LARGE = _v4.FOSSIL_LARGE,
FOSSIL_DIST_SMALL = _v4.FOSSIL_DIST_SMALL,
FOSSIL_DIST_MEDIUM = _v4.FOSSIL_DIST_MEDIUM,
FOSSIL_DIST_LARGE = _v4.FOSSIL_DIST_LARGE,
VEG_ESP = _v4.VEG_ESP,
VEG_DIET_ONLY = _v4.VEG_DIET_ONLY,
VEG_HIDE_EATEN = _v4.VEG_HIDE_EATEN,
VEG_DISTANCE = _v4.VEG_DISTANCE,
VEG_MAX = _v4.VEG_MAX,
MEAT_ESP = _v4.MEAT_ESP,
MEAT_DISTANCE = _v4.MEAT_DISTANCE,
CLAY_ESP = _v4.CLAY_ESP,
CLAY_DISTANCE = _v4.CLAY_DISTANCE,
PUMPKIN_ESP = _v4.PUMPKIN_ESP,
PUMPKIN_DISTANCE = _v4.PUMPKIN_DISTANCE,
MMAP_ON = _v4.MMAP_ON,
MMAP_PLAYERS = _v4.MMAP_PLAYERS,
MMAP_CORPSES = _v4.MMAP_CORPSES,
MMAP_FOSSILS = _v4.MMAP_FOSSILS,
ANTI_BLACKSCREEN = _v4.ANTI_BLACKSCREEN,
NO_FOG = _v4.NO_FOG,
NO_BLUR = _v4.NO_BLUR,
NO_WEATHER = _v4.NO_WEATHER,
FULLBRIGHT = _v4.FULLBRIGHT,
CUSTOM_TIME = _v4.customTime,
CUSTOM_TIME_HOUR = _v4.customTimeHour,
MOB_SHOW_TURN = _v4.MOB_SHOW_TURN,
AUTO_GROW = _v4.AUTO_GROW,
HITBOX_EXPANDER = _v4.HITBOX_EXPANDER,
HITBOX_VISUALIZE = _v4.HITBOX_VISUALIZE,
HITBOX_MULTIPLIER = _v4.HITBOX_MULTIPLIER,
HITBOX_VIS_TRANSPARENCY = _v4.HITBOX_VIS_TRANSPARENCY,
HG_Head = _v4.HITBOX_GROUPS.Head,
HG_Jaw = _v4.HITBOX_GROUPS.Jaw,
HG_Neck = _v4.HITBOX_GROUPS.Neck,
HG_Body = _v4.HITBOX_GROUPS.Body,
HG_Arm = _v4.HITBOX_GROUPS.Arm,
HG_Leg = _v4.HITBOX_GROUPS.Leg,
HG_TailBase = _v4.HITBOX_GROUPS.TailBase,
HG_TailMid = _v4.HITBOX_GROUPS.TailMid,
HG_TailTip = _v4.HITBOX_GROUPS.TailTip,
HG_Thagomizer = _v4.HITBOX_GROUPS.Thagomizer,
REACH_ENABLED = _v4.REACH_ENABLED,
REACH_MULTIPLIER = _v4.REACH_MULTIPLIER,
REACH_VISUALIZE = _v4.REACH_VISUALIZE,
REACH_VIS_TRANSPARENCY = _v4.REACH_VIS_TRANSPARENCY,
REACH_Head = _v4.REACH_GROUPS.Head,
REACH_Jaw = _v4.REACH_GROUPS.Jaw,
REACH_Arm = _v4.REACH_GROUPS.Arm,
REACH_Leg = _v4.REACH_GROUPS.Leg,
REACH_TailBase = _v4.REACH_GROUPS.TailBase,
REACH_TailMid = _v4.REACH_GROUPS.TailMid,
REACH_TailTip = _v4.REACH_GROUPS.TailTip,
REACH_Thagomizer = _v4.REACH_GROUPS.Thagomizer,
AUTO_WATER = _v4.AUTO_WATER,
FORCE_EAT = _v4.FORCE_EAT,
FAST_EAT = _v4.FAST_EAT,
AUTO_CLEAN = _v4.AUTO_CLEAN,
INF_OXYGEN = _v4.INF_OXYGEN,
EAT_WHEN_HUNGRY = _v4.EAT_WHEN_HUNGRY,
LEAVE_SCRAPS = _v4.LEAVE_SCRAPS,
CARRY_CORPSE = _v4.CARRY_CORPSE,
FPS_SAVER = _v4.FPS_SAVER,
SKIN_SELECTED = _v4.SKIN_WANTED or _v4.SKIN_SELECTED,
AUTO_FLY_SPEED = _v4.AUTO_FLY_SPEED,
AUTO_FLY_RADIUS = _v4.AUTO_FLY_RADIUS,
AUTO_FLY_DRIFT = _v4.AUTO_FLY_DRIFT,
AUTO_FLY_ALT = _v4.AUTO_FLY_ALT,
ANTI_AFK = _v4.ANTI_AFK,
AUTO_SWITCH = _v4.AUTO_SWITCH, AFK_FARM = _v4.AFK_FARM, LEGIT_FARM = _v4.LEGIT_FARM,
FOSSIL_FARM = _v4.FOSSIL_FARM, PUMPKIN_FARM = _v4.PUMPKIN_FARM, FARM_TIMER = _v4.FARM_TIMER,
AFK_FARM_AVOID = _v4.AFK_FARM_AVOID,
AFK_FARM_WALK = _v4.AFK_FARM_WALK,
AFK_FARM_SAFETY = _v4.AFK_FARM_SAFETY,
AFK_FARM_ADMIN_KICK = _v4.AFK_FARM_ADMIN_KICK,
AFK_FARM_FLEE = _v4.AFK_FARM_FLEE,
AFK_FARM_UNSTUCK = _v4.AFK_FARM_UNSTUCK,
LF_AVOID = _v4.LF_AVOID,
LF_MAX_DIST = _v4.LF_MAX_DIST,
LF_SCRAPS = _v4.LF_SCRAPS,
LF_CIRCLE = _v4.LF_CIRCLE,
LF_FLEE = _v4.LF_FLEE,
LF_TABOUT = _v4.LF_TABOUT,
AUTO_GAIT = _v4.AUTO_GAIT,
LF_UNSTUCK = _v4.LF_UNSTUCK,
LF_REST = _v4.LF_REST,
LF_ADMIN_KICK = _v4.LF_ADMIN_KICK,
LF_FLYAWAY = _v4.LF_FLYAWAY,
LF_FLYAWAY_RADIUS = _v4.LF_FLYAWAY_RADIUS,
AS_SLOT1 = _v4.AS_SLOTS[1], AS_SLOT2 = _v4.AS_SLOTS[2], AS_SLOT3 = _v4.AS_SLOTS[3],
AS_SLOT4 = _v4.AS_SLOTS[4], AS_SLOT5 = _v4.AS_SLOTS[5], AS_SLOT6 = _v4.AS_SLOTS[6],
AS_GENDER = _v4.AS_GENDER,
AS_AUTOBUY = _v4.AS_AUTOBUY,
AS_AUTO_ORDER = _v4.AS_AUTO_ORDER,
FT_MINUTES = _v4.FT_MINUTES,
TP_SOLID = _v4.TP_SOLID,
TP_CHAIN = _v4.TP_CHAIN,
AUTO_SAVE_PCT = _v4.AUTO_SAVE_PCT,
AUTO_SAVE = _v4.AUTO_SAVE,
AUTO_SAVE_BLEED = _v4.AUTO_SAVE_BLEED,
SHOW_INDICATORS = _v4.SHOW_INDICATORS,
MOD_CHECK = _v4.MOD_CHECK,
MOD_KICK = _v4.MOD_KICK,
UNLIMITED_ZOOM = _v4.UNLIMITED_ZOOM,
FOV_ENABLED = _v4.FOV_ENABLED,
FOV_VALUE = _v4.FOV_VALUE,
SILENT_AIM = _v4.SILENT_AIM,
NO_ATK_CD = _v4.NO_ATK_CD,
NO_ATK_COOLDOWN = _v4.NO_ATK_COOLDOWN,
ATTACK_SPEED = _v4.ATTACK_SPEED,
TURN_SPEED = _v4.TURN_SPEED,
QUICK_TURN = _v4.QUICK_TURN,
INSTA_TURN_KEY = (_v2gl and _v2gl.Key and _v2gl.Key ~= Enum.KeyCode.Unknown) and _v2gl.Key.Name or nil,
SA_Head = _v4.SILENT_GROUPS.Head,
SA_Jaw = _v4.SILENT_GROUPS.Jaw,
SA_Neck = _v4.SILENT_GROUPS.Neck,
SA_Body = _v4.SILENT_GROUPS.Body,
SA_Arm = _v4.SILENT_GROUPS.Arm,
SA_Leg = _v4.SILENT_GROUPS.Leg,
SA_TailBase = _v4.SILENT_GROUPS.TailBase,
SA_TailMid = _v4.SILENT_GROUPS.TailMid,
SA_TailTip = _v4.SILENT_GROUPS.TailTip,
SA_Thagomizer = _v4.SILENT_GROUPS.Thagomizer,
KEYBINDS = (function()
local _v2yg = {}
for _v2yh, _v2yi in pairs(_v4.ALL_TOGGLES) do
if _v2yi and _v2yi.Key and _v2yi.Key ~= Enum.KeyCode.Unknown then
_v2yg[_v2yh] = _v2yi.Key.Name
end
end
return _v2yg
end)(),
}
end
function _v4.applyConfigData(_v2yj)
_v4.SUPPRESS_TOGGLE_NOTIFY = true
local _v2yk, _v2yl = pcall(_v4.applyConfigBody, _v2yj)
if not _v2yk then warn(_ei9m[2722-10] .. tostring(_v2yl)) end
_v4.SUPPRESS_TOGGLE_NOTIFY = false
_v4.cfgApplied = true
return _v2yk
end
function _v4.applyConfigBody(_v2ym)
_v4.SUPPRESS_TOGGLE_NOTIFY = true
local function _v2yn(_v2yo, _v2yp)
pcall(function() if _v2yo and _v2yp ~= nil then _v2yo:Set(_v2yp) end end)
end
local function _v2yq(_v2yr, _v2ys)
pcall(function() if _v2yr and _v2ys ~= nil then _v2yr:Set(_v2ys) end end)
end
local function _v2yt(_v2yu, _v2yv, _v2yw, _v2yx, _v2yy)
pcall(function()
for _v2yz, _v2z0 in ipairs(_v2yv) do
local _v2z1 = _v2yw[_v2yx .. _v2z0]
if _v2z1 ~= nil then _v2yu[_v2z0] = _v2z1 and true or false end
end
if _v2yy and _v2yy.Refill then _v2yy.Refill() end
end)
end
_v2yn(_v4.espToggle, _v2ym.ESP_ENABLED)
_v2yn(_v2ri.chams, _v2ym.CHAMS_ENABLED)
_v2yn(_v2ri.tracers, _v2ym.TRACERS_ENABLED)
_v2yn(_v2ri.showName, _v2ym.SHOW_NAME)
_v2yn(_v2ri.showDino, _v2ym.SHOW_DINO)
_v2yn(_v2ri.showStage, _v2ym.SHOW_STAGE)
_v2yn(_v2ri.showGender, _v2ym.SHOW_GENDER)
_v2yn(_v2ri.showHealth, _v2ym.SHOW_HEALTH)
_v2yn(_v2ri.showStamina, _v2ym.SHOW_STAMINA)
if _v2ym.SHOW_FOOD_BAR ~= nil then _v2yn(_v2ri.foodBar, _v2ym.SHOW_FOOD_BAR) end
if _v2ym.SHOW_FOOD_NUM ~= nil then _v2yn(_v2ri.foodNum, _v2ym.SHOW_FOOD_NUM) end
if _v2ym.SHOW_WATER_BAR ~= nil then _v2yn(_v2ri.waterBar, _v2ym.SHOW_WATER_BAR) end
if _v2ym.SHOW_WATER_NUM ~= nil then _v2yn(_v2ri.waterNum, _v2ym.SHOW_WATER_NUM) end
if _v2ym.SHOW_INFECT_BAR ~= nil then _v2yn(_v2ri.infectBar, _v2ym.SHOW_INFECT_BAR) end
if _v2ym.SHOW_INFECT_NUM ~= nil then _v2yn(_v2ri.infectNum, _v2ym.SHOW_INFECT_NUM) end
if _v2ym.SHOW_INFECTED ~= nil then _v2yn(_v2ri.infectTag, _v2ym.SHOW_INFECTED) end
_v2yn(_v2ri.showWeight, _v2ym.SHOW_WEIGHT)
_v2yn(_v2ri.bleed, _v2ym.BLEED_ESP)
if _v2ym.PACK_ESP ~= nil then _v2yn(_v2ri.packESP, _v2ym.PACK_ESP) end
if _v2ym.PACK_LEADER_ESP ~= nil then _v2yn(_v2ri.packLeader, _v2ym.PACK_LEADER_ESP) end
_v2yn(_v2ri.showDist, _v2ym.SHOW_DISTANCE)
_v2yn(_v2ri.textHL, _v2ym.TEXT_HIGHLIGHT)
_v2yq(_v2ri.textSize, _v2ym.TEXT_SIZE)
_v2yq(_v2ri.hbHeight, _v2ym.HEALTH_BAR_HEIGHT)
if _v2ym.HEALTH_BAR_WIDTH then
_v2yq(_v2ri.hbWidth, math.floor(_v2ym.HEALTH_BAR_WIDTH * 100 + 0.5))
end
if _v2ym.STAM_BAR_HEIGHT then _v2yq(_v2ri.sbHeight, _v2ym.STAM_BAR_HEIGHT) end
if _v2ym.STAM_BAR_WIDTH then _v2yq(_v2ri.sbWidth, math.floor(_v2ym.STAM_BAR_WIDTH * 100 + 0.5)) end
_v2yq(_v2ri.espDist, _v2ym.ESP_DISTANCE)
if _v2ym.CHAMS_FILL_TRANSPARENCY then
_v2yq(_v2ri.chamsFill, math.floor(_v2ym.CHAMS_FILL_TRANSPARENCY * 100 + 0.5))
end
if _v2ym.CHAMS_OUTLINE_TRANSPARENCY then
_v2yq(_v2ri.chamsOutline, math.floor(_v2ym.CHAMS_OUTLINE_TRANSPARENCY * 100 + 0.5))
end
_v2yn(_v2ri.corpse, _v2ym.CORPSE_ESP)
if _v2ym.CORPSE_INF_ESP ~= nil then _v2yn(_v2ri.corpseInf, _v2ym.CORPSE_INF_ESP) end
_v2yq(_v2ri.worldTextSize, _v2ym.WORLD_TEXT_SIZE)
_v2yq(_v2ri.corpseDist, _v2ym.CORPSE_DISTANCE)
if _v2ym.STATS_CARD ~= nil then _v2yn(_v2ri.statsCard, _v2ym.STATS_CARD) end
if _v2ym.SC_GROWTH ~= nil then _v2yn(_v2ri.scGrowth, _v2ym.SC_GROWTH) end
if _v2ym.SC_MASS ~= nil then _v2yn(_v2ri.scMass, _v2ym.SC_MASS) end
if _v2ym.SC_WEIGHT ~= nil then _v2yn(_v2ri.scWeight, _v2ym.SC_WEIGHT) end
if _v2ym.SC_TIMER ~= nil then _v2yn(_v2ri.scTimer, _v2ym.SC_TIMER) end
if _v2ym.SC_STAGE_TIMER ~= nil then _v2yn(_v2ri.scStageTimer, _v2ym.SC_STAGE_TIMER) end
if _v2ym.SC_NUTRITION ~= nil then _v2yn(_v2ri.scNutrition, _v2ym.SC_NUTRITION) end
if _v2ym.SC_WELLBEING ~= nil then _v2yn(_v2ri.scWellbeing, _v2ym.SC_WELLBEING) end
if _v2ym.SC_DRAG ~= nil then _v2yn(_v2ri.scDrag, _v2ym.SC_DRAG) end
if _v2ym.SC_NAME ~= nil then _v2yn(_v2ri.scName, _v2ym.SC_NAME) end
if _v2ym.SC_HIDE_WITH_MENU ~= nil then _v2yn(_v2ri.scHideMenu, _v2ym.SC_HIDE_WITH_MENU) end
if _v4.setStatsCardPos and _v2ym.SC_POS_XS and _v2ym.SC_POS_XO and _v2ym.SC_POS_YS and _v2ym.SC_POS_YO then
_v4.setStatsCardPos(_v2ym.SC_POS_XS, _v2ym.SC_POS_XO, _v2ym.SC_POS_YS, _v2ym.SC_POS_YO)
end
if _v2ym.FISH_ESP ~= nil then _v2yn(_v2ri.fishESP, _v2ym.FISH_ESP) end
_v2yn(_v2ri.fossilS, _v2ym.FOSSIL_SMALL)
_v2yn(_v2ri.fossilM, _v2ym.FOSSIL_MEDIUM)
_v2yn(_v2ri.fossilL, _v2ym.FOSSIL_LARGE)
_v2yq(_v2ri.fossilDistS, _v2ym.FOSSIL_DIST_SMALL or _v2ym.FOSSIL_DISTANCE)
_v2yq(_v2ri.fossilDistM, _v2ym.FOSSIL_DIST_MEDIUM or _v2ym.FOSSIL_DISTANCE)
_v2yq(_v2ri.fossilDistL, _v2ym.FOSSIL_DIST_LARGE or _v2ym.FOSSIL_DISTANCE)
if _v2ym.VEG_DIET_ONLY ~= nil then _v2yn(_v2ri.vegDietOnly, _v2ym.VEG_DIET_ONLY) end
if _v2ym.VEG_HIDE_EATEN ~= nil then _v2yn(_v2ri.vegHideEaten, _v2ym.VEG_HIDE_EATEN) end
if _v2ym.VEG_DISTANCE then _v2yq(_v2ri.vegDist, _v2ym.VEG_DISTANCE) end
if _v2ym.VEG_MAX then _v2yq(_v2ri.vegMax, _v2ym.VEG_MAX) end
if _v2ym.VEG_ESP ~= nil then _v2yn(_v2ri.vegESP, _v2ym.VEG_ESP) end
_v2yn(_v2ri.meat, _v2ym.MEAT_ESP)
_v2yq(_v2ri.meatDist, _v2ym.MEAT_DISTANCE)
if _v2ym.CLAY_ESP ~= nil then _v2yn(_v2ri.clay, _v2ym.CLAY_ESP) end
if _v2ym.CLAY_DISTANCE then _v2yq(_v2ri.clayDist, _v2ym.CLAY_DISTANCE) end
if _v2ym.PUMPKIN_ESP ~= nil then _v2yn(_v2ri.pumpkin, _v2ym.PUMPKIN_ESP) end
if _v2ym.PUMPKIN_DISTANCE then _v2yq(_v2ri.pumpkinDist, _v2ym.PUMPKIN_DISTANCE) end
if _v2ym.MMAP_PLAYERS ~= nil then _v2yn(_v2ri.mmapPlayers, _v2ym.MMAP_PLAYERS) end
if _v2ym.MMAP_CORPSES ~= nil then _v2yn(_v2ri.mmapCorpses, _v2ym.MMAP_CORPSES) end
if _v2ym.MMAP_FOSSILS ~= nil then _v2yn(_v2ri.mmapFossils, _v2ym.MMAP_FOSSILS) end
if _v2ym.MMAP_ON ~= nil then
_v2yn(_v2ri.mmap, _v2ym.MMAP_ON)
elseif _v2ym.MMAP_PLAYERS or _v2ym.MMAP_CORPSES or _v2ym.MMAP_FOSSILS then
_v2yn(_v2ri.mmap, true)
end
_v2yn(_v2ri.antiBS, _v2ym.ANTI_BLACKSCREEN)
if _v2ym.NO_FOG ~= nil then _v2yn(_v2ri.noFog, _v2ym.NO_FOG) end
if _v2ym.NO_BLUR ~= nil then _v2yn(_v2ri.noBlur, _v2ym.NO_BLUR) end
if _v2ym.NO_WEATHER ~= nil then _v2yn(_v2ri.noWeather, _v2ym.NO_WEATHER) end
if _v2ym.FULLBRIGHT ~= nil then _v2yn(_v2ri.fullbright, _v2ym.FULLBRIGHT) end
if _v2ym.CUSTOM_TIME_HOUR then _v2yq(_v2ri.timeHour, _v2ym.CUSTOM_TIME_HOUR) end
if _v2ym.CUSTOM_TIME ~= nil then _v2yn(_v2ri.customTime, _v2ym.CUSTOM_TIME) end
if _v2ym.MOB_SHOW_TURN ~= nil and _v4.mobTurnToggle then _v2yn(_v4.mobTurnToggle, _v2ym.MOB_SHOW_TURN) end
_v2yn(_v2ri.showModules, _v2ym.SHOW_INDICATORS)
if _v2ym.MOD_CHECK ~= nil then _v2yn(_v2ri.modCheck, _v2ym.MOD_CHECK) end
if _v2ym.MOD_KICK ~= nil then _v2yn(_v2ri.modKick, _v2ym.MOD_KICK) end
_v2yn(_v2ri.unlimitedZoom, _v2ym.UNLIMITED_ZOOM)
if _v2ym.FOV_VALUE then _v2yq(_v2ri.fovSlider, _v2ym.FOV_VALUE) end
_v2yn(_v2ri.fovToggle, _v2ym.FOV_ENABLED)
_v2yq(_v2ri.attackSpeed, _v2ym.ATTACK_SPEED)
_v2yn(_v2ri.noAtkCd, _v2ym.NO_ATK_CD)
_v2yn(_v2ri.noAtkCooldown, _v2ym.NO_ATK_COOLDOWN)
_v2yt(_v4.SILENT_GROUPS, _v4.PART_GROUP_ORDER, _v2ym, _ei9m[1372], _v2ri.silentGroups)
_v2yq(_v2ri.turnSpeed, _v2ym.TURN_SPEED)
_v2yn(_v2ri.quickTurn, _v2ym.QUICK_TURN)
_v2yn(_v2ri.silentAim, _v2ym.SILENT_AIM)
if _v2ym.INSTA_TURN_KEY and _v2gl then
pcall(function()
local _v2z2 = Enum.KeyCode[_v2ym.INSTA_TURN_KEY]
if _v2z2 then _v2gl:Set(_v2z2, true) end
end)
end
_v2yn(_v4.hitboxToggle, _v2ym.HITBOX_EXPANDER)
_v2yn(_v2ri.hitboxVis, _v2ym.HITBOX_VISUALIZE)
_v2yq(_v2ri.hitboxMult, _v2ym.HITBOX_MULTIPLIER)
if _v2ym.HITBOX_VIS_TRANSPARENCY ~= nil then
_v2yq(_v2ri.hitboxVisOpacity, math.floor((1 - _v2ym.HITBOX_VIS_TRANSPARENCY) * 100 + 0.5))
end
_v2yt(_v4.HITBOX_GROUPS, _v4.PART_GROUP_ORDER, _v2ym, _ei9m[411-17], _v2ri.hitboxGroups)
_v2yq(_v2ri.reachMult, _v2ym.REACH_MULTIPLIER)
if _v2ym.REACH_Tail ~= nil and _v2ym.REACH_TailBase == nil then
_v2ym.REACH_TailBase = _v2ym.REACH_Tail
_v2ym.REACH_TailMid = _v2ym.REACH_Tail
_v2ym.REACH_TailTip = _v2ym.REACH_Tail
_v2ym.REACH_Thagomizer = _v2ym.REACH_Tail
end
_v2yt(_v4.REACH_GROUPS, _v4.REACH_GROUP_ORDER, _v2ym, _ei9m[5+933], _v2ri.reachGroups)
if _v2ym.REACH_VIS_TRANSPARENCY ~= nil then
_v2yq(_v2ri.reachVisOpacity, math.floor((1 - _v2ym.REACH_VIS_TRANSPARENCY) * 100 + 0.5))
end
if _v2ym.REACH_VISUALIZE ~= nil then _v2yn(_v2ri.reachVis, _v2ym.REACH_VISUALIZE) end
_v2yn(_v2ri.reach, _v2ym.REACH_ENABLED)
_v2yn(_v4.autoWaterToggle, _v2ym.AUTO_WATER)
if _v2ym.FORCE_EAT ~= nil then _v2yn(_v4.forceEatToggle, _v2ym.FORCE_EAT) end
if _v2ym.FAST_EAT ~= nil then _v2yn(_v2ri.fastEat, _v2ym.FAST_EAT) end
if _v2ym.AUTO_CLEAN ~= nil then _v2yn(_v4.autoCleanToggle, _v2ym.AUTO_CLEAN) end
if _v2ym.INF_OXYGEN ~= nil then _v2yn(_v2ri.infOxygen, _v2ym.INF_OXYGEN) end
if _v2ym.EAT_WHEN_HUNGRY ~= nil then _v2yn(_v2ri.eatWhenHungry, _v2ym.EAT_WHEN_HUNGRY) end
if _v2ym.LEAVE_SCRAPS ~= nil then _v2yn(_v2ri.leaveScraps, _v2ym.LEAVE_SCRAPS) end
if _v2ym.CARRY_CORPSE ~= nil then _v2yn(_v2ri.carryCorpse, _v2ym.CARRY_CORPSE) end
if _v2ym.FPS_SAVER ~= nil then _v2yn(_v2ri.fpsSaver, _v2ym.FPS_SAVER) end
if type(_v2ym.SKIN_SELECTED) == _ei9m[10+155] then
_v4.SKIN_WANTED = _v2ym.SKIN_SELECTED
local _v2z3 = _v4.skinsForCurrentDino and _v4.skinsForCurrentDino() or {}
if _v4.skinDropdown and table.find(_v2z3, _v2ym.SKIN_SELECTED) then _v2yn(_v4.skinDropdown, _v2ym.SKIN_SELECTED) end
end
if _v2ym.AUTO_FLY_SPEED then _v2yq(_v4.autoFlySpeedSlider, _v2ym.AUTO_FLY_SPEED) end
if _v2ym.AUTO_FLY_RADIUS then _v2yq(_v4.autoFlyRadiusSlider, _v2ym.AUTO_FLY_RADIUS) end
if _v2ym.AUTO_FLY_DRIFT then _v2yq(_v4.autoFlyDriftSlider, _v2ym.AUTO_FLY_DRIFT) end
if _v2ym.AUTO_FLY_ALT then _v2yq(_v4.autoFlyAltSlider, _v2ym.AUTO_FLY_ALT) end
if _v2ym.ANTI_AFK ~= nil then _v2yn(_v4.antiAfkToggle, _v2ym.ANTI_AFK) end
if _v4.cfgFarms then _v4.cfgFarms(_v2ym) end
if _v2ym.AFK_FARM_AVOID then _v2yq(_v2ri.afkFarmAvoid, _v2ym.AFK_FARM_AVOID) end
if _v2ym.AFK_FARM_WALK ~= nil then _v2yn(_v2ri.afkFarmWalk, _v2ym.AFK_FARM_WALK) end
if _v2ym.AFK_FARM_SAFETY ~= nil then _v2yn(_v2ri.afkFarmSafety, _v2ym.AFK_FARM_SAFETY) end
if _v2ym.AFK_FARM_ADMIN_KICK ~= nil then _v2yn(_v2ri.afkFarmAdminKick, _v2ym.AFK_FARM_ADMIN_KICK) end
if _v2ym.AFK_FARM_FLEE ~= nil then _v2yn(_v2ri.afkFarmFlee, _v2ym.AFK_FARM_FLEE) end
if _v2ym.AFK_FARM_UNSTUCK ~= nil then _v2yn(_v2ri.afkFarmUnstuck, _v2ym.AFK_FARM_UNSTUCK) end
if _v2ym.LF_AVOID then _v2yq(_v2ri.lfAvoid, _v2ym.LF_AVOID) end
if _v2ym.LF_MAX_DIST then _v2yq(_v2ri.lfMaxDist, _v2ym.LF_MAX_DIST) end
if _v2ym.LF_SCRAPS ~= nil then _v2yn(_v2ri.lfScraps, _v2ym.LF_SCRAPS) end
if _v2ym.LF_CIRCLE ~= nil then _v2yn(_v2ri.lfCircle, _v2ym.LF_CIRCLE) end
if _v2ym.LF_FLEE ~= nil then _v2yn(_v2ri.lfFlee, _v2ym.LF_FLEE) end
if _v2ym.LF_TABOUT ~= nil then _v2yn(_v2ri.lfTabOut, _v2ym.LF_TABOUT) end
if _v2ym.AUTO_GAIT ~= nil then
for _v2z4, _v2z5 in pairs({ Walk = _v2ri.autoWalk, Trot = _v2ri.autoTrot, Run = _v2ri.autoRun, Sprint = _v2ri.autoSprint }) do
_v2yn(_v2z5, _v2ym.AUTO_GAIT == _v2z4)
end
end
if _v2ym.LF_UNSTUCK ~= nil then _v2yn(_v2ri.lfUnstuck, _v2ym.LF_UNSTUCK) end
if _v2ym.LF_REST ~= nil then _v2yn(_v2ri.lfRest, _v2ym.LF_REST) end
if _v2ym.LF_ADMIN_KICK ~= nil then _v2yn(_v2ri.lfAdminKick, _v2ym.LF_ADMIN_KICK) end
if _v2ym.LF_FLYAWAY ~= nil then _v2yn(_v2ri.lfFlyAway, _v2ym.LF_FLYAWAY) end
if _v2ym.LF_FLYAWAY_RADIUS then _v2yq(_v2ri.lfFlyAwayRadius, _v2ym.LF_FLYAWAY_RADIUS) end
for _v2z6 = 1, 6 do
local _v2z7 = _v2ym[_ei9m[911] .. _v2z6]
if _v2z7 ~= nil then _v2yn(_v2ri[_ei9m[3+549] .. _v2z6], _v4.asLabel and _v4.asLabel(_v2z7) or _v2z7) end
end
_v2yn(_v2ri.asGender, _v2ym.AS_GENDER)
if _v2ym.AS_AUTOBUY ~= nil then _v2yn(_v2ri.asAutoBuy, _v2ym.AS_AUTOBUY) end
if _v2ym.AS_AUTO_ORDER ~= nil then _v2yn(_v2ri.asAutoOrder, _v2ym.AS_AUTO_ORDER) end
if _v2ym.FT_MINUTES then _v2yq(_v2ri.ftMinutes, _v2ym.FT_MINUTES) end
_v2yn(_v2ri.tpSolid, _v2ym.TP_SOLID)
_v2yn(_v2ri.tpChain, _v2ym.TP_CHAIN)
if _v2ym.AUTO_SAVE_PCT and _v2ym.AUTO_SAVE_PCT > 0 then
_v2yq(_v4.autoSaveSlider, _v2ym.AUTO_SAVE_PCT)
end
local _v2z8 = _v2ym.AUTO_SAVE
if _v2z8 == nil then _v2z8 = (_v2ym.AUTO_SAVE_PCT or 0) > 0 end
_v2yn(_v4.autoSaveToggle, _v2z8)
if _v2ym.AUTO_SAVE_BLEED ~= nil then _v2yn(_v4.autoSaveBleedToggle, _v2ym.AUTO_SAVE_BLEED) end
if type(_v2ym.KEYBINDS) == _ei9m[1702] then
for _v2z9, _v2za in pairs(_v4.ALL_TOGGLES) do
if _v2ym.KEYBINDS[_v2z9] == nil and _v2za and _v2za.SetKey then
pcall(function()
if _v2za.Key and _v2za.Key ~= Enum.KeyCode.Unknown then _v2za:SetKey(nil, true) end
end)
end
end
for _v2zb, _v2zc in pairs(_v2ym.KEYBINDS) do
local _v2zd = _v4.ALL_TOGGLES[_v2zb]
if _v2zd and _v2zd.SetKey and _v2zc then
pcall(function()
local _v2ze = Enum.KeyCode[_v2zc]
if _v2ze then _v2zd:SetKey(_v2ze, true) end
end)
end
end
end
if _v2ym.AUTO_GROW ~= nil then _v2yn(_v4.autoGrowToggle, _v2ym.AUTO_GROW) end
end
function _v4.listConfigs()
local _v2zf = {}
pcall(function()
local _v2zg = listfiles(_v4.CONFIG_FOLDER)
for _v2zh, _v2zi in ipairs(_v2zg) do
local _v2zj = _v2zi:match(_ei9m[2418])
if _v2zj and _v2zj ~= _ei9m[1443-19] then
table.insert(_v2zf, _v2zj)
end
end
end)
table.sort(_v2zf)
return _v2zf
end
function _v4.saveConfig(_v2zk)
local ok, err = pcall(function()
local _v2zl = _v4.getConfigData()
writefile(_v4.CONFIG_FOLDER .. "/" .. _v2zk .. _ei9m[424-9], _v2yf:JSONEncode(_v2zl))
end)
if ok then
print(_ei9m[822+649] .. _v2zk)
pcall(function() _v2d2:Notify(_ei9m[153+912] .. _v2zk) end)
else
warn(_ei9m[2881-6] .. tostring(err))
pcall(function() _v2d2:Notify(_ei9m[36+4] .. _v2zk) end)
end
return ok
end
function _v4.loadConfig(_v2zm)
local ok, data = pcall(function()
local _v2zn = readfile(_v4.CONFIG_FOLDER .. "/" .. _v2zm .. _ei9m[1442+224])
return _v2yf:JSONDecode(_v2zn)
end)
if ok and data then
_v4.applyConfigData(data)
print(_ei9m[2702] .. _v2zm)
pcall(function() _v2d2:Notify(_ei9m[5+2088] .. _v2zm) end)
return true
else
warn(_ei9m[2080+39] .. tostring(data))
pcall(function() _v2d2:Notify(_ei9m[5+2497] .. _v2zm) end)
end
return false
end
function _v4.deleteConfig(_v2zo)
pcall(function()
delfile(_v4.CONFIG_FOLDER .. "/" .. _v2zo .. _ei9m[302+904])
end)
end
function _v4.getAutoLoadConfig()
local _v2zp, _v2zq = pcall(function() return readfile(_v4.AUTO_LOAD_FILE) end)
if _v2zp and _v2zq and _v2zq ~= "" then return _v2zq end
return nil
end
function _v4.setAutoLoadConfig(_v2zr)
pcall(function() writefile(_v4.AUTO_LOAD_FILE, _v2zr or "") end)
end
local _v2zs = _v2d2.tabs and _v2d2.tabs.Settings
if _v2zs then
pcall(function()
_v2zs.page.ScrollingEnabled = true
_v2zs.page.ScrollBarThickness = 3
end)
else
_v2zs = _v2re
end
_v4.UNLOAD_KEY = Enum.KeyCode.End
if _v2zs then
_v4.section(_v2zs, _ei9m[2029-2], _ei9m[1448])
_v4.unloadKb = _v2zs:AddKeybind({
Name = _ei9m[7+521],
Default = _v4.UNLOAD_KEY,
Changed = function(_v2zt) _v4.UNLOAD_KEY = (typeof(_v2zt) == _ei9m[2819+75]) and _v2zt or Enum.KeyCode.Unknown end,
})
end
table.insert(_v2l, _v4.UIS.InputBegan:Connect(function(_v2zu, _v2zv)
if _v2zv or _v4.UNLOADED then return end
if _v2zu.KeyCode == _v4.UNLOAD_KEY and _v4.UNLOAD_KEY ~= Enum.KeyCode.Unknown then
pcall(_v4.unloadScript)
end
end))
if _v4.IS_MOBILE then
_v4.section(_v2zs, _ei9m[22+262], _ei9m[2+2071])
_v4.mobTurnToggle = _v2zs:AddToggle({
Name = _ei9m[7+460],
Default = false,
Callback = function(_v2zw) _v4.MOB_SHOW_TURN = _v2zw end
})
end
_v4.CONFIG_SLOTS = {_ei9m[1095-17], _ei9m[3070], _ei9m[1228], _ei9m[3+1371], _ei9m[4+1310], _ei9m[2+2480], _ei9m[2+719], _ei9m[5+1821], _ei9m[3+2053]}
pcall(function()
_v2d2:SetConfig({
Folder = _v4.CONFIG_FOLDER,
Slots = _v4.CONFIG_SLOTS,
Save = _v4.saveConfig,
Load = _v4.loadConfig,
Ignore = function(_v2zx)
return _v2zx:match(_ei9m[1973]) or _v2zx:match(_ei9m[717]) or _v2zx:match(_ei9m[4+2758]) or _v2zx == _ei9m[1246]
or _v2zx:match(_ei9m[1401])
end,
})
end)
local _v2zy = Instance.new(_ei9m[6+531])
_v2zy.Name = _ei9m[1027+31]
_v2zy.ResetOnSpawn = false
_v2zy.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
pcall(function() _v2zy.Parent = game:GetService(_ei9m[950-5]) end)
if not _v2zy.Parent then _v2zy.Parent = _v2:WaitForChild(_ei9m[5+242]) end
local _v2zz = Instance.new(_ei9m[604])
_v2zz.Name = _ei9m[3072]
_v2zz.Size = UDim2.new(0, 160, 0, 400)
_v2zz.Position = UDim2.new(1, -170, 0, 10)
_v2zz.BackgroundTransparency = 1
_v2zz.Parent = _v2zy
local _v300 = Instance.new(_ei9m[3+903])
_v300.FillDirection = Enum.FillDirection.Vertical
_v300.HorizontalAlignment = Enum.HorizontalAlignment.Right
_v300.VerticalAlignment = Enum.VerticalAlignment.Top
_v300.SortOrder = Enum.SortOrder.LayoutOrder
_v300.Padding = UDim.new(0, 2)
_v300.Parent = _v2zz
_v4.TweenService = game:GetService(_ei9m[740])
local _v301 = {}
_v4.SLIDE_TIME = 0.25
function _v4.createIndicatorLabel(_v302, _v303)
local _v304 = Instance.new(_ei9m[784+1479])
_v304.Name = _ei9m[2611] .. _v302
_v304.LayoutOrder = _v303
_v304.Size = UDim2.new(1, 0, 0, 18)
_v304.BackgroundTransparency = 1
_v304.TextColor3 = Color3.fromRGB(170, 90, 255)
_v304.TextStrokeTransparency = 0.3
_v304.TextStrokeColor3 = Color3.new(0, 0, 0)
_v304.Font = Enum.Font.GothamBold
_v304.TextSize = 13
_v304.TextXAlignment = Enum.TextXAlignment.Right
_v304.Text = _v302
_v304.TextTransparency = 1
_v304.Position = UDim2.new(1, 0, 0, 0)
_v304.Parent = _v2zz
_v301[_v302] = _v304
return _v304
end
function _v4.showIndicator(_v305)
local _v306 = _v301[_v305]
if not _v306 then return end
_v306.Visible = true
_v306.TextTransparency = 1
_v306.Position = UDim2.new(1, 0, 0, 0)
local _v307 = _v4.TweenService:Create(_v306, TweenInfo.new(_v4.SLIDE_TIME, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
TextTransparency = 0,
Position = UDim2.new(0, 0, 0, 0)
})
_v307:Play()
end
function _v4.hideIndicator(_v308)
local _v309 = _v301[_v308]
if not _v309 then return end
local _v30a = _v4.TweenService:Create(_v309, TweenInfo.new(_v4.SLIDE_TIME, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
TextTransparency = 1,
Position = UDim2.new(1, 0, 0, 0)
})
_v30a:Play()
_v30a.Completed:Connect(function()
if _v309.TextTransparency >= 0.9 then
_v309.Visible = false
end
end)
end
function _v4.updateIndicator(_v30b, _v30c)
if _v30c then
_v4.showIndicator(_v30b)
else
_v4.hideIndicator(_v30b)
end
end
_v4.MODULE_LIST = {
{name = _ei9m[2754-2], order = 1, getState = function() return _v4.ESP_ENABLED end},
{name = _ei9m[1204], order = 2, getState = function() return _v4.CHAMS_ENABLED end},
{name = _ei9m[719+529], order = 3, getState = function() return _v4.TRACERS_ENABLED end},
{name = _ei9m[559-5], order = 4, getState = function() return _v4.CORPSE_ESP end},
{name = _ei9m[581-9], order = 5, getState = function() return _v4.FOSSIL_SMALL or _v4.FOSSIL_MEDIUM or _v4.FOSSIL_LARGE end},
{name = _ei9m[725+1755], order = 7, getState = function() return _v4.MEAT_ESP end},
{name = _ei9m[170-8], order = 8, getState = function() return _v4.CLAY_ESP end},
{name = _ei9m[1852], order = 8.5, getState = function() return _v4.PUMPKIN_ESP end},
{name = _ei9m[535], order = 24, getState = function() return _v4.VEG_ESP end},
{name = _ei9m[1969], order = 8, getState = function() return _v4.SAVE_DINO_ACTIVE end},
{name = _ei9m[147], order = 9, getState = function() return _v4.HITBOX_EXPANDER end},
{name = _ei9m[2070], order = 10, getState = function() return _v4.ANTI_BLACKSCREEN end},
{name = _ei9m[55+14], order = 11, getState = function() return _v4.AUTO_GROW end},
{name = _ei9m[1838], order = 12, getState = function() return _v4.TEXT_HIGHLIGHT end},
{name = _ei9m[892-1], order = 15, getState = function() return _v4.FOSSIL_FARM end},
{name = _ei9m[2843-16], order = 15.5, getState = function() return _v4.PUMPKIN_FARM end},
{name = _ei9m[319+1808], order = 16, getState = function() return _v4.SILENT_AIM end},
{name = _ei9m[784-1], order = 18.5, getState = function() return _v4.AFK_FARM end},
{name = _ei9m[248+1318], order = 18.6, getState = function() return _v4.LEGIT_FARM end},
{name = _ei9m[7+3059], order = 18.7, getState = function() return _v4.AUTO_SWITCH end},
{name = _ei9m[1615-13], order = 18.8, getState = function() return _v4.FARM_TIMER end},
{name = _ei9m[7+647], order = 19, getState = function() return _v4.AUTO_FLY end},
{name = _ei9m[216+1196], order = 20, getState = function() return _v4.TP_CORPSE end},
{name = _ei9m[615+1151], order = 21, getState = function() return _v4.ANTI_AFK end},
{name = _ei9m[1199-11], order = 22, getState = function() return _v4.MOD_CHECK end},
{name = _ei9m[280+2151], order = 25, getState = function() return _v4.NO_FOG end},
}
for _v30d, _v30e in ipairs(_v4.MODULE_LIST) do
_v4.createIndicatorLabel(_v30e.name, _v30e.order)
end
_v4.prevStates = {}
_v4.addStep(6, function()
if _v2zy.Enabled ~= _v4.SHOW_INDICATORS then _v2zy.Enabled = _v4.SHOW_INDICATORS end
for _v30f, _v30g in ipairs(_v4.MODULE_LIST) do
local _v30h = _v30g.getState()
if _v4.prevStates[_v30g.name] ~= _v30h then
_v4.prevStates[_v30g.name] = _v30h
_v4.updateIndicator(_v30g.name, _v30h)
end
end
end)
pcall(function()
local _v30i = (_v2d2.toggleKey and _v2d2.toggleKey.Name) or _ei9m[541+895]
_v2d2:Notify(_ei9m[4+1888] .. _v30i .. _ei9m[1937+523], 6)
end)
_v4.xlog(_ei9m[5+1205])