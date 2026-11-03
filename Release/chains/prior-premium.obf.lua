--EZ:__EZ_WM__
-- EazyCheats | Prior Extinction Hub | PREMIUM
local _pguo do local B="" for c=65,90 do B=B..string.char(c) end for c=97,122 do B=B..string.char(c) end for c=48,57 do B=B..string.char(c) end B=B..string.char(43)..string.char(47) local L={} for i=1,#B do L[B:sub(i,i)]=i-1 end local Kr={90,170,214,100,75,120,228,156} local m=228 local bx=bit32.bxor local ch=string.char local K={} for i=1,#Kr do K[i]=bx(Kr[i],m) end local C={} _pguo=function(s) local c=C[s] if c then return c end local o={} local a,b,n=0,0,0 for i=1,#s do local v=L[s:sub(i,i)] if v then a=a*64+v b=b+6 if b>=8 then b=b-8 local by=math.floor(a/2^b)%256 a=a%(2^b) o[#o+1]=ch(bx(by,K[n%8+1])) n=n+1 end end end local r=table.concat(o) C[s]=r return r end end
local _ei9m={_pguo("+C9A7Y/IaRXbPA=="),_pguo("2idB9M7yYx0="),_pguo("+CFA48q8RRnK"),_pguo("/C9B5f/9cgw="),_pguo("zC9W4d0="),_pguo("7TpT9Nw="),_pguo("7TpT58o="),_pguo("6SFA7Ms="),_pguo("/x1twfrITyfxHHbF/Q=="),_pguo("3SFc49rvcxHRIA=="),_pguo("+y9GoM7yZFjaPFvuxLx3EcomXfXbvGQX1yBVoMboIAHRO0DzyvBmVg=="),_pguo("/SFA5ejpaQ=="),_pguo("0y9CoN35YwzfIFXsyrxuF8puR/PK+CBQ"),_pguo("6iFd7Nw="),_pguo("zTpA6cH7"),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("+C9A7Y/IaRXbPA=="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HQ=="),_pguo("6CdA9Nr9bDHQPkf04v1uGdkrQA=="),_pguo("yi9Q7Mo="),_pguo("/SFA5ejpaQ=="),_pguo("2CJL6cH7"),_pguo("/ypW08P1ZB3M"),_pguo("/ztG74/abAE="),_pguo("7Ste5czoZRw="),_pguo("zCtB9MbyZw=="),_pguo("8DtG8sboaRfQbmH0zuhz"),_pguo("4CJX5tu5LQ=="),_pguo("yi9Q7Mo="),_pguo("+CFB88bwTQ=="),_pguo("8ghtze7EXzz3HWY="),_pguo("3z1h7MDo"),_pguo("6S9e69y8eRfLPBLkxvJvWMohEubA82RY3yBWoMr9dAueJ0asj+hoHdBuReHD93NYyiES9Mf5IBbbNkauj9JvWNgiS+nB+yBVnidGoNrvZQueOlrlj/thFdtpQaDA625YyS9e64/9bhyePUblyu5zWMknRuiP6Ggdni1T7cruYVSePV2gxuggFNEhWfOP8GkT225ToN/wYQHbPBL3zvBrEdApEuHd83UW2mASydu8bh3IK0Cg3eluC546XaDJ828cnmZA9cHyaRbZblbyzvVuC54vEuLG+yAc1yBdp9y8ZhfRKhLhwfggD986V/KP8WEWx25G6cL5c1jYL0H0yu4pQ54nRqDA8mwBnjxH7ty8dBeeKVf0j/13GcduVPLA8SAZnj5e4db5cla0CF3vy7AgD986V/KP/W4cni1e5c7ybBHQK0Hzj/1yHZ4vXuyP9GEW2iJX5I/raBHSKxLp27xyDdA9CKDG6CAd3zpBoM7oIB3IK0D5j/pvF9puW/SP7mUZ3SZX84/9bhyeJVfl3+8gG9IrU+7D9W4dzT0S9MDscB3abkfwj/55WNc6QeXD+i5Y6S9G5d28bxbSNxLmxvBsC54vRqDd+WEUnjlT9MruIBbROR6g3PMgD9YrXKDG6CAczCFC84/pbhzbPBK0n7kgDNYrEubO7m1YyS9e69y8dBeeOlrlj/JlGcwrQfSP72gXzCseoMvuaRbVPRL1wehpFJ4oR+zDsCAM1itcoMjzZQueLFPjxLx0F54oXe/LsiA5yzpdoPj9dB3MblPuy7xBDcohEsPD+WEW0idc5dzvIBzRblzv27xuHdsqEvTAvGIdniFcrqWWTB3ZJ0ag6f1yFYRuRvXd8nNY1zoS78G8KBnQKhL02u5uC54PdMuP2mEK02ISxsPlLFj/O0bvj9psAZ4vXOSP2m8LzSdeoOn9chWeIVTmhrIgMcpuXe7D5SAI1y1Z84/6bxfabkvv2u4gHNcgXaDM/W5YzCtT48e8ZgrRIxL0x/kgH8whR+7LsCAL0W5G8sr5c1jJJl3zyrxsHd84V/OP/XIdniFH9I/zZljMK1Pjx7xhCttuQevG7HAd2mASydu8dxnSJUGg2/RyF8spWqDd82MTzWIS7MD7c1jfIFagzelzENs9EuLa6CAW2zhX8o/oaArRO1Xoj+hoHZ4pQO/a8mRWnghd8sz5ID3fOhLkwPlzWMomV6DK/XQR0CkS4cH4IBfQIkugzfV0Hc1uRujKvGYX0SoS9Mf5IB7fPF+gxu8gC8ovXOTG8mdY3zoSrY/abwrdKxLFzugnC54hRe6P72UMyidc59y8YQjOIkuupdBlH9c6EsHZ82kcnhxT5Mbpc0KePVnp3+8gHtEhVqDY9XQQ1yAS9Mf1c1jTL1z5j+90Ddo9Eu/JvGEW0Tpa5d28cBTfN1fygbwwWMo7QO7cvGkMniFU5oGWTB3ZJ0ag/PlhCt0mEsTG73QZ0C1Xuo/oaB2eKEfy2/RlC8puVO/A+CARym5F6cPwIA/fIlmg2/MucukmU/SP9XRY2SFX84/6bwqEbkboyrxuHd88V/PbvHAU3yBGrI/6bwqeK0Tl3eUgHNcgXaCCvEYXzC1XoOr9dFjbL0bzj+xsGdA6QaDY9GEM2zhX8o/lbw3MblbpyuguWP9uVunB8yAM1i9GoMr9dAueI1fh27xhFM0hEvTO92ULniNX4du8dBDfOhLp3LxjFNE9V6DN5SxY3yBWoMjzZQueKF3yj/FlGcpuVOnd73RYySZb7Mq8YVjQO0byxvluDJ4nRqDI9XYdzW4a0N3zdB3XIEGsj9phDM1iEsPO8GMRyyMboMbvIBnKbgu5irxvCp4sV+zA6y5Y/CFc5dywIAvWK17s3LAgG9IvX/ODvGUf2T0S4cH4IBHQPVfj2+8gGcwrEuzK+nRY3yJd7sq8dRbSK0Hzj/JvDNYnXOeP+WwL225b84/wZR7KYhLv3bxhWNA7RvLG+W4Mnjpa5da8ZxHIKxLozu8gHMwhQvDK+CAM0W4LsIqyIDDbJ1Xo27xjF8sgRvOVvGYX0SoS98rwbFjfLF32yrxvCp4sV+zA6yAB0TsSqMvzdxaeLxLjw/VmHpJuR/CP825Y325e5cv7ZVGeLV31wehzWN89Euba7nQQ2zwS4dj9eVjKJlPuj/pvF9puXe6P8GUO2yIS593zdRbaYBLGwPNkWNc6EuPO8m4Xym5V5du8dBeSbl3yj+toHcwrEvnA6XJY1jtc58ruIBzRK0GgwfN0WNkhEvXfvGEeyitAoJ6uIAvbLV3uy+8gF9huUOnb9W4fnmZe6cT5IBmeKV7p2/9oHdpuEL+QoyJY3SFA8Nz5IAzWL0agwPJsAZ4oV+XL7yAX0C1XoNzzbR3RIFeg3/VjE81uW/SP6XBRkm5b84/wZR7KblPswPJlWNghQKCdrCAV1yBH9MrvIFWefQKgxvogDNYrEvPO8WVY2CFd5I/6YRHSPRL02PVjHZBEfuXI9XRY8itT9sq8UxvML0LzlbxzDNE+QaDK/XQR0CkS4Y/sbBnQOhL3x/VsHZ4vEuzG6HQU225U78D4IBHNbkH0xvBsWNIrVPSP825Y1zoSqM7+bw3Kbkb3wLxvHp43XfXdvGQR0CEV84/+aQzbPR6gw/lhCtArVqDO7yARym5X4dvvKVSePV2g2/RlWM4iU+7bvG4dyCtAoMv5YxnHPR6gzvJkWMo8V+Hb7yARym5T84/5bQjKNxKtj/V0WNMhROXcvG8Wni9c5I/zbhTHblHvwvlzWNwvUeuP824b225G6Mq8cBTfIEagx/1zWNYvVqDb9W0dnjpdoN35ZwrRORyg7PNyCM0rQaDO8mRY0ytT9I/9ch2eL173zuVzWNsvRuXBvHQXnjpa5Y/5bhyQRH7lyPV0WPArROXdvFMM3yBWoPzoaRTSdBLryvlwC545U+zE9W4fni8S88L9bBSeLVvyzPBlWNEgEvTH+SALziFGoMbycwzbL1agwPogC8ovXOTG8mdYzTpb7MO8LVjfPF31wfggDNYrEubA82RYySZb7Mq8aQyeK1P03LAgGdAqEvfH+XIdnidGoMbvIA/WJ17lj/V0WNYvQaDB83QQ1yBVoNvzIA/fIlmg2/MgUMomV6Dc/W0dnidW5c68YQueD0f0wLxHCtE5FfOP/2kK3SJXqYG8SQyeOVPsxO8gEcpiEu7K6mUKnjxH7ty8bwqeOkDv2+8sWM0hEunbvHMM3zdBoMDyIAzWKxLmwPNkVp4cV/Pb9W4fni9c5I/wbx/ZJ1znj/N1DJ49RunD8CALyi9c5I/vdBHSIh6gzfljGcs9V6DN83QQniBX5cu8aQyQRH7lyPV0WPgiV+WP2nIX025i7M7lZQrNdBLy2vJzWN85U/mP62gd0G5ToN/wYQHbPBLjwPFlC545W/TH9W5YyiZXoO7qbxHabmDhy/V1C5JuRujK8iAf0StBoM39YxOeOl2gyf1yFdcgVa6l0GUf1zoSxsPlIDnJL0ug6e5vFZ4eXuHW+XILhG5F6MryIBmePl7h1vlyWN0hX+XcvHcRyiZb7o/oaB2eCF75j913GcduYOHL9XULkm5e6cnoc1jRKFSgzvJkWNgiW+XcvGEP3zcS5t3zbVjKJlftg7xsGdAqQaDf7m8I2zxe+Y/zbhvbbkboyuUgGcwrEvfK8GxY3Cta6cH4LFjKJlfuj/9hCswnV/OP825Y2C9A7cbyZ1aeAVygzeUgHNsoU/XD6C5Y6i9Z6cH7IBzfI1PnyrxhFM0hEvPK8mQLnidGoMnweRHQKRLvyfogHswhX6Db9GVY0CtT8srvdFjOIlP5yu4uWPwhSuXLvGkWnixLoN/wYQHbPEGgwPIgHcgrQPmP72kc224a6du8ax3bPkGg2+lyFtcgVaDN/WMTkm5d8o/3ZR3OPRL0zvdpFtluXebJvGEf3ydcqYO8aQyeKkDv3+8gGZ4iW/Tb8GVYyyBW5d28dBDbblXywOluHJJuVOzG+XNYzTpA4cb7aAyePlPz27x0ENsjEvTAvGYX0SoS9Mf9dFjXPRL3yvBsWN85U/mP+nIX025X9srueRfQKx6gzPNtHc1uR/CDvGwZ0CpBoM7yZFjdL0DyxvlzWNEgHKDm6CAT2ytC84/zdQyeIVSg2P10HcxuU+zb82cdyiZX8o+xIB3IK0D5j/hpFtFiEvPK8WlV3z9H4dv1Y1jRIFfzj+hvF4RuVO/A+CAR0G5d8o/+eVjJL0bl3bxpC549Wenf7GUckm5F4dv5cljRIBL0x/kgD983EuncvGMK0T1B5cu8dRbaK0Cg2/RlWNk8XfXB+CxY3yBWoMb6IBHKblf2yu4gHdAqQaDa7CALySdf7cbyZ1jXOhLnwPlzWM06QOHG+2gMnipd98G8dRbaK0Cg2/RlWMkvRuXdvGEW2m5R78L5c1jLPhLvwbx0ENtuXOXO7mULym5W8ta8ZwrRO1zkgZZMHdknRqDp8HlY/zlT+Y/OYRzXO0G6j/RvD54tXu/c+SAZnj5e4db5cljdL1ygyPl0WNwrVO/d+SARym5U7Mb5c1jfOVP5gZZMHdknRqD68nMMyy1Zuo/1ZljKJlegy/VuF549Ru/f7yAf2zpG6cH7IBnQN0Xoyu5lWNghQKDOvGYdyW5B5czzbhzNYhLp27xsEdg6QaDa7CxY0yFE5dy8bw7bPBL0x/kgCMwhUOzK8SxY0i9c5Ny8YRbablnlyuxzWMkvXuvG8mdWngdGoM7wcxeeKVv2yu8gDc5uXe6P+m8X2m5b9I/0YQuePUbvwPggGcpuVO/dvDJNnj1X48DyZAueOVv0x/N1DJ4rU/TG8mdY3yBL9Mf1bh+eOVrpw/kgEMsgVfLWsCAZ0CoS8Mb/awuePV3tyuhoEdApEuXD72VWnghd78u8ZBfJIBLpwbxhWN0vROWP83JYyyBW5d28YRaeIUTl3fRhFtluW/OP8mUO2zwS8Mb/ax3aYhLmwPNkWNc6EuXB+HNYyz4S8sb7aAyeO1zkyu4gF8xuXfbK7iAayzoS487ybhfKbkDlzv9oWJY7QqDOvGMU1yhUrI/4bw/QblOgx/NsHZduW/OP+HIXzj5X5I/9ZgzbPBK4j+9lG9EgVvOP/W4cniJX5tu8YRTRIFegyfNyWI1+Eu3G8nUM2z0eoM7yZFjfIEugyfNvHJ4nRqDH/XNY1i9WoNvzIB/XOFeg2uwgF9BuRvfG/2VY1z0S4cPvb1jSK1T0j/1sF9ArEubA7iBLjm5f6cHpdB3NYDjMyvtpDJ4cV/PbvFQXngZX4cOmIBnYOlfyj+hhE9cgVaDO8nlY2i9f4cj5LFjRPBLiyvBvD54mU+zJvGgd3yJG6IO8ZhTXK0Gg3OhyGdcpWvSP6XBY1yBG74/oaB2eL1vyj7EgF8s6Eu/JvHId3y1aoMD6IAjSL0vl3e8gGdAqEubG72hYk25T7su8bBHbPRLkwOtuWMomV/LKvHUWyideoM39YxOeOl2gyelsFJJuRujK8iAb0SNX84/+YRvVblbv2PIgUNEgEuTd5SAfzCFH7su1IBnQKhLjzu5yEds9Eu/BsiAv1zpaoM68cBTfN1fyj/9sF80rEuLWvGkMnihe6crvIBfYKBLmxu5zDJBue+aP5W8NzG5W6cHzIBzXK0GgzvJ5D983EvfH9Wwdni8S5s7ubVjXPRLvwbAgEcpuQOXc7GEP0D0S4dy8dBDbbkHhwvkgHNcgXaCCvG4dyCtAoNzsZRbaJ1znj+5lDtc4U+yP6G8T2yBBoIK8YRbabkboyrxmGcwjEuPO7nIR2z0S78GyCjTbKVv0j91kFdcgEsvG/2tCniJX4dn5c1jKJleg3PlyDts8EunJvGEWni9W7cbyIBLRJ1zzg7xvCp4nQaDO8HId3ypLoMf5ch2SbkXoxvBlWPIrVenbvEYZzCMS8tryc1a0RHPu2/UgOfgFEvLa8nNY3DcS6dvvZRTYbkXoxvBlWPIrVenbvEYZzCMS6dy8bxaSbkHvj/V0WN0vXKDN+SAU2yhGoMnzcljWIUfy3LI="),_pguo("/yJeoMnzcwvXIkGgyf1yFdsq"),_pguo("7SZT8sr4LjTRLFD56/10GQ=="),_pguo("0itT9sbyZ1jXIBI="),_pguo("/ztG74/LYRTV"),_pguo("1jpG8NymL1fbL0j5zPRlGco9HOPA8S8LkStIrcjpaQ=="),_pguo("7S1A5cryRw3X"),_pguo("8i9Q5cM="),_pguo("2itT9Me8ZwrfLVegyvJkHdpiEvPD83RYzTpb7MO8aB3SKgig"),_pguo("0Dtf4sru"),_pguo("+Cdc6dz0ZRyeZg=="),_pguo("3z5X+A=="),_pguo("7ztb48S8Ux3K"),_pguo("zCdB6cH7"),_pguo("3SFH7Mu8bhfKbkHwzutuWA=="),_pguo("5CFd7Y/zdQyeL0Ggyf1yWN89EvnA6SAU1yVX"),_pguo("lihb7s7wIAvKL1Xlhg=="),_pguo("6iFd7Nw="),_pguo("6ite5d/zcgzXIFU="),_pguo("0itU9A=="),_pguo("/SJT+ev5cBfNJ0bz"),_pguo("/C9B5f/9cgw="),_pguo("7SZd94/YaQvKL1zjyg=="),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("/ztG74LPYQ7bbmbo3flzENEiVqCK"),_pguo("0ThX8sP9eQ=="),_pguo("8SBXoNzraQzdJhLhwfggAdE7QKDL9W4XniVX5d/vIB/MIUXpwfsgD9YnXuWP5W8NnipdoMHzdBDXIFWu"),_pguo("8SBe+Y/ReVj6J1f0"),_pguo("+Txd99v0ICvKL1XllbwgRNxw"),_pguo("3CFd7Mr9bg=="),_pguo("3ydf"),_pguo("0ytc9Y/raRbaIUWgzO5lGcorVg=="),_pguo("1iFH8g=="),_pguo("6itK9A=="),_pguo("0iFVoMDpdA=="),_pguo("9StX8Ny8eRfLblXywOtpFtliEu7AvGkWzjtGoMH5ZRzbKg=="),_pguo("0yFE6cH7"),_pguo("+CJLuo/6dRTSbl/hwelhFJ4oXunI9HRWnhlz0+u8dBeeI132yrAgK84vUeWP6G9Y2SES9d+wIDvKPF6g2/MgH9FuVu/Y8i5Y8yFE5cL5bgyeKF3sw/N3C543XfXdvGMZ0ytA4YGWUxHaK0Xh1u8gEcpuVe/K7yAZzW5U4dzoIBnNbkboyrxnGdMrEuHD8G8PzW5U7928eRfLPBLkxvJvWJYnRqDH82wczW5g9cG8ZhfMbkvv2rU7WM06QOHG+2gMnjtCoMDuIBzROVygxuggH9ErQaDO6CBJi34c"),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("3zlT+Q=="),_pguo("zidc7sr4"),_pguo("7SVb7g=="),_pguo("/SJX4cHwaRbbPUE="),_pguo("liBd7sq1"),_pguo("0Dtf4sru"),_pguo("7i9R64/ZUyg="),_pguo("/Cdd7cq8VArfOFfs"),_pguo("/SFc5sb7"),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("7C9V5MDwbAs="),_pguo("nmZQ9db1bh+eJ0agyfNyWA=="),_pguo("7SZd94/IdQrQbnD12+hvFs0="),_pguo("0Dtf4sru"),_pguo("3CFd7Mr9bg=="),_pguo("8ytT9A=="),_pguo("3TxH6dz5"),_pguo("+xRktA=="),_pguo("6itK9A=="),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("ziJT+crucw=="),_pguo("2S9b9A=="),_pguo("nj1G9cvvKQ=="),_pguo("7SNT7MO8RhfNPVvs3A=="),_pguo("8CESxsD7OljMK1/v2flzWNghVaDO8mRY1i9I5YO8YRbabkboyrxkEc06U+7M+SAa0jtAoNj1dBCeJ0aggrx0ENtuVeHC+SAT2ytC84/9IBzbPkbogvNmVdgnV+zLvGUe2CtR9I/6bxvLPVfkj/1iF8s6ErGavHMMyypBoMDpdFSeOVrpzPQgC9EoRuXB7yAdyCtA+dv0aRbZblT13ehoHcxuU/fO5SAdyCtcoNj1dBCeOlrlj/pvH54pXe7KsiAsyzxc6cH7IAzWJ0GgwPpmWM47RvOP/WwUnjpa8sr5IBrfLVmg2/RlWMkvS6Db9GVY2S9f5Y/0YRyeOlrlwrI="),_pguo("/ztG74/OdRY="),_pguo("yyBe7874"),_pguo("zCFG9MryIBHQbg=="),_pguo("/SJX4cG8YgrbL1m6j/9sHd8gXunB+XMLnmtWpYq8LVjKJlegyf1yFZ49RuHB+HNYzTpb7MO8dRbKJ16gzPBlGdBuGvTH+SAf3yNXoMz9bl/KblHsyv1uWMkmW+zKvGUZyidc54Y="),_pguo("2yNC9NY="),_pguo("7i9R6877ZQs="),_pguo("6StT9Mf5cg=="),_pguo("SSEqrs7F"),_pguo("6i9b7I/RaRw="),_pguo("liBd7sq1"),_pguo("/25f79n9YhTbblHh3fggC9YhRenB+yAB0TtAoMDrbljaJ1zviO8gFNc4V6Dc6GEMzWA4ivzoYQzNbnHh3fg6WM0mXffcvHQQ225R4d34LnLqJlegxvJkHdA6V+SP6G8f2SJX84//aBfRPVeg2PRhDJ4vQvDK/XILniFcoMboOljHIUfyj/hpFtFpQaDB/W0dnmZB8Mr/aR3NblPuy7xnHdAqV/KDvGELnjpa5Y//YQraaUGg2/V0FNtnHqDI7m8PyiYS89v9Zx2Sbl/h3O8gH98nXKDC6WwM1z5e6cruLFjJK1vnx+gsWNk8Xffb9CAM1yNX8oO8bg3KPFv0xvNuWN8gVqDY+WwU3Ctb7siyCjzML1Wg/OhhDM1uceHd+DpY0itG84/lbw2eI132yrx0ENtuUeHd+C5Y6jtA7o/1dFjRKFSg2/MgFNEtWaDG6CAR0G5C7M7/ZVa0BlvkyrxXENciV6Di+W4NngFC5cGmIBDXKlfzj+hoHZ4tU/LLvHcQ1yJXoNv0ZVjTK1z1j/VzWNE+V+6DvHMXnidGoMvzZQueIF30j/9vDts8Eunbsgoq2z1X9I/PdBnKPRLDzu5kWO4hQenb9W8WhG5C9dvvIBHKblDhzPcgEdBuW/TcvGMXzCBX8o/1ZljHIUegw/NzHZ4nRqDA+mZVzS1A5cryLg=="),_pguo("2z1C"),_pguo("7SZd94/UZRnSOlo="),_pguo("zCdB6cH7IBHQOl2g2/RlWM0lSw=="),_pguo("7SZd94/RbxzLIleg4/VzDA=="),_pguo("+yBT4sP5IDvWL1/z"),_pguo("9idG4sDkID3GPlPuy/ly"),_pguo("9yNT58rQYRrbIg=="),_pguo("6iFd7Nw="),_pguo("2Txd99v0"),_pguo("+C9A7Y/YaRbR"),_pguo("4BxX8MP1YxnKK1bT2/NyGdkrF66HsitRmg=="),_pguo("3yhZ"),_pguo("nm5l5cPwYh3XIFWg/OhhDM0="),_pguo("/SFA8Nz5ID3tHg=="),_pguo("/C9B5f/9cgw="),_pguo("8ytT9A=="),_pguo("+yBT4sP5ICzML1Hl3e86WNo8U/fcvGwR0CtBoNvzIAjSL0vl3e8u"),_pguo("9yNf9cH1dAGEbhK/"),_pguo("7Tlb9Mz0ICvSIUagmQ=="),_pguo("/zxf"),_pguo("+itU4drwdA=="),_pguo("/SZT7dy8Tw3KIlvuyrxUCt8gQfDO7mUW3Tc="),_pguo("0Dtf4sru"),_pguo("/ypf6cHQYRrbIg=="),_pguo("/ztG74/PcBnJIA=="),_pguo("zTpA6cH7"),_pguo("/wh5oOn9chWEblrlzvB0EJ5rVqWKvC1YzCtB9MbyZ1jLPhLpwbx0ENtuU+ndvHUWyideoMf5YRTbKh6g2/RlFp4oU/LC9W4fniFc"),_pguo("zCtc5Mru"),_pguo("yi9Z6cH7IBzfI1Pnyg=="),_pguo("0yFE5Q=="),_pguo("8ytT9A=="),_pguo("/SJX4cHwaRbbPUHT2/1yDA=="),_pguo("7CtT48e8YRbabnrp2/5vANs9"),_pguo("8y9KoOP9Yh3SPQ=="),_pguo("+C9e7MbyZw=="),_pguo("2zxA792mIA=="),_pguo("/wh5oOn9chU="),_pguo("8itV6du8Uh3NOhLUwLxIHd8i"),_pguo("yi9Q7Mo="),_pguo("+xRtxMDo"),_pguo("0itT5A=="),_pguo("/SFA8Nz5IDzXPUbhwf9l"),_pguo("6CtV5dv9dBHRIBLF/Mw="),_pguo("7TpT7e3b"),_pguo("/C9B5f/9cgw="),_pguo("7S9E5Y/YaRbRdBLuwLxjEN88U+Pb+XJY2CFH7ss="),_pguo("8idc5Q=="),_pguo("+itU4drwdA=="),_pguo("+xRktA=="),_pguo("6jdC5Q=="),_pguo("3zlT+Q=="),_pguo("+CFB88bwID7fPF+6j+9rEc4+V+SP/SAe0T1B6cO8aQyeLV31w/ggFtE6EuPA8Gwd3ToSrY/xbw7XIFWgwPI="),_pguo("/ztG7+n9chU="),_pguo("zTtc88ro"),_pguo("7i9A9Nw="),_pguo("+CFA987uZA=="),_pguo("2z1R4d/5"),_pguo("1jtW"),_pguo("3yhZ"),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("9SBb9A=="),_pguo("7TpT9Nw="),_pguo("7TpT9Mo="),_pguo("/wh5oOn9chU="),_pguo("9idG84/wYRbabl3uj+hoHZ4+U/Lb7yAB0TsS8Mb/aw=="),_pguo("8yFE5cL5bgw="),_pguo("zTpA6cH7"),_pguo("+CFA987uZA=="),_pguo("zTpA6cH7"),_pguo("6i9b7Pv1cA=="),_pguo("7C9V5MDwbAs="),_pguo("+Ctf4cP5"),_pguo("0Dtf4sru"),_pguo("7SZd94/Vbh7bLUbpwPI="),_pguo("/ztG78n9chU="),_pguo("7Sdf9cP9dB2eGVPsxPVuHw=="),_pguo("/SFf7cDyLjrLKFTl3e8uO9EgQfXC/WIU2wxH5sn5cg=="),_pguo("/ztG74LPYQ7bblP0j9RlGdI6WqCK"),_pguo("+idc79z9dQr6L0bhgQ=="),_pguo("zTpA6cH7"),_pguo("8itT9sq8UxvML0Lz"),_pguo("8ytB6OLzZB3S"),_pguo("/ypf6cG8SxHdJQ=="),_pguo("7iJT+cruc1jfIFag6fNvHA=="),_pguo("/ztG7+n9chU="),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("yS9b9MbyZ1jKIRLswPsgF8s6CKA="),_pguo("5QtT+tbfaB3fOkHdj9BlGcgnXOeVvA=="),_pguo("6ite5d/zcgzXIFU="),_pguo("/C9B5f/9cgw="),_pguo("/SZT8s7/dB3MHVfy2fVjHQ=="),_pguo("nj1G9cvvIBfYKA=="),_pguo("0Dtf4sru"),_pguo("/ypW1MD7ZxTb"),_pguo("6iFd7Nw="),_pguo("/Cdd7crv"),_pguo("1jtW"),_pguo("+CJLoO7rYQGeHFPkxulz"),_pguo("+idc74/uZRTbL0Hly7wtWN0hR+zLvG4Xym5U7Na8YhndJR6g1vN1WN88V6DY9GUK225L79q8cw3MKFPjyvg="),_pguo("yS9b9MbyZ1jYIUCgzvIgGc4rSqDc8G8Mnihd8o8="),_pguo("3S9f5d39"),_pguo("7C9A5Q=="),_pguo("/C9B5f/9cgw="),_pguo("6yBe7874IDPbNwig3+5lC81uRujG7yAT2zcS9MC8dRbSIVPkj+hoHZ45Wu/D+SAQyywS6cHvdBnQOl75gbxDFNctWaDb9GVYzCFFrI/oaB3QbkLyyu9zWN9uWeXWvCg9zS0S48P5YQrNZxw="),_pguo("8yFW9cP5c1b9IV/izuguP9s6e+7J+WMM1yFc08rodBHQKUE="),_pguo("6wdx793yZQo="),_pguo("0Dtf4sru"),_pguo("6Stb58fo"),_pguo("+DtB6cDy"),_pguo("yi9Q7Mo="),_pguo("8SBXoNzraQzdJhL0wLxkEc0vQvDK/XJYySZX7o/9IB7XKVr0j/tvHc1uRfLA8mdUnjpa5cG8YxfTKxLizv9rVg=="),_pguo("2z1R4d/5"),_pguo("6iZXoNz9bR2eKFPywrxvFp4oXe/bsCAW0W5U7Nb1bh8="),_pguo("6iFd7Nw="),_pguo("zidc7sr4"),_pguo("+i9L"),_pguo("3C9G6A=="),_pguo("6itK9A=="),_pguo("ng9f4sru"),_pguo("+CFB88bwTA=="),_pguo("0Dtf4sru"),_pguo("9jpG8Pz5cg7XLVc="),_pguo("yidf5cu8bw3K"),_pguo("8yFWoOz0ZRvV"),_pguo("+xRt1cHwaRXXOlfk9fNvFfgnSg=="),_pguo("7CtG9d3yaRbZGl3NyvJ1"),_pguo("/ztG74/bchfJ"),_pguo("8CtE5d28UwzfIFag/OhpFNI="),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("7i9A9Nw="),_pguo("7TpT9Nw="),_pguo("7Rpz1Pw="),_pguo("+Cdc4cO8cwzfKVc="),_pguo("0CFGoM7qYRHSL1DsyrxvFp46WuncvGUA2y1H9MDu"),_pguo("6jxd9A=="),_pguo("nitA8sDuZRyEbg=="),_pguo("4GtBqw=="),_pguo("zTlb7sg="),_pguo("/zxf"),_pguo("/ztG7+n9chU="),_pguo("9yBB9M68VA3MIA=="),_pguo("/SFc89rxYRrSK3Tvw/VhH9s="),_pguo("7TpT9Mo="),_pguo("7iJT+cruRw3X"),_pguo("niNb7troZQueIVSgyf1yFdcgVa4="),_pguo("8iFR4cO8RSKeCWfJ"),_pguo("/SFc89rxaRbZ"),_pguo("3SFB7croaRs="),_pguo("2C9A7Y/vdBfOPlfk"),_pguo("l27QADu8cwjfI1/pwfsgKts/R+Xc6FMU0To="),_pguo("2Txd9w=="),_pguo("6jxd9A=="),_pguo("yi9Q7Mo="),_pguo("6iFd7Nw="),_pguo("6i9V8+nuYRXb"),_pguo("8y9b7uL5bg35O1s="),_pguo("+CFA48q8RRnK"),_pguo("8i9Q5cPvIAzWKxLww/1uDM1uS+/avGMZ0G5X4ds="),_pguo("8yFW5cM="),_pguo("6jxd9A=="),_pguo("+TxT4o/9bljfPlf4j+9sF8puRujKvG0X0ytc9I/zbh2eIULlwe8u"),_pguo("/SFA8Nz5c1jRIBLNxvJpFd8+"),_pguo("7SZd94/LZRHZJkY="),_pguo("yi9Q7Mo="),_pguo("+Cde7A=="),_pguo("+CJLoO7rYQGeCEDvwrxQFN83V/Lc"),_pguo("/SZT7dy8RhHSIhLU3f1uC84vQOXB/3k="),_pguo("8i9B9I/MbBnHK1Y="),_pguo("3S9A7sbqbwrb"),_pguo("7S1A5cryRw3X"),_pguo("8itV6du8Ux3fPFHoj9hpC8ovXOPK"),_pguo("2iFF7g=="),_pguo("/Ad9zerDVCr/GHfM"),_pguo("6yBe7874IDPbNw=="),_pguo("+CFV"),_pguo("2idV"),_pguo("zi9R6w=="),_pguo("8SBe+Y/ReVj6J1f0"),_pguo("7SZd94/RbxzLIleg4/VzDA=="),_pguo("8SAS08zuZR3Q"),_pguo("7ztb48S8VA3MIA=="),_pguo("9yBU5czoaRfQ"),_pguo("/S9f5d39"),_pguo("7Sde5cHoIDnXIw=="),_pguo("+y9G84/yZRnMLEugyfNvHJ45WuHb+XYdzG5L79ruIBzXK0Y="),_pguo("2C9A7Y/vdBfOPlfk"),_pguo("8CESxsD7"),_pguo("9yBUzM7+ZRQ="),_pguo("2Txd99v0"),_pguo("1ype5Q=="),_pguo("/S9A8ta8QRbHbnHv3exzHQ=="),_pguo("/SZT7dy8RhHSIhLU3f1uC84vQOXB/3k="),_pguo("/zpf79zsaB3MKw=="),_pguo("7TpT9Mo="),_pguo("7TpT9Nw="),_pguo("6jxT48rucw=="),_pguo("8C9f5Q=="),_pguo("+yBT4sP5ICrbL1Ho"),_pguo("+C9G8w=="),_pguo("0Dtf4sru"),_pguo("zSJd9I/uZR7LPVfkj/pvCp4="),_pguo("+Ctf4cP5"),_pguo("/ztG74/PdxHKLVq6jw=="),_pguo("yi9Q7Mo="),_pguo("8itV6du8VRbNOkfjxA=="),_pguo("/S9A8ta8QRbHbnHv3exzHYRuQunM9yANzm5T7ta8YxfMPkHlg7xoF8krROXdvGgd3zhLrI/6chfTbkfwj+hvWI9+ArCP73QN2j0S4dj9eViTbkLyyu9zWPluU/SP9XRUniFAoOjuYRqeIVygxuhzWNMrXPWPsSAZ0CoS487ucgGeJ0agzuggD98iWenB+yALzitX5I/1bgvKK1Pkj/NmWNo8U+fI9W4fnidGro/fbwrOPVfzj/NuFMd0Eufd/WIa1yBVoM68bBHIKxLkxvJvWNUrV/DcvHQQ225V4cL5JwueIF3ywv1sWNInX+nb7y5Y8ShUoN/pdAueOlrlj/thFdtpQaDA625Y0idf6dvvIBrfLVmu"),_pguo("zStG9MP1bh8="),_pguo("3SFH7Mu8bhfKbkHwzutuWA=="),_pguo("0Dtf4sru"),_pguo("+C9A7Y/IaRXbPAigw/lhDts9EuHJ6GUKng=="),_pguo("+y9I+ez0ZRnKPW3l1bFnDddjRLSB8HUZ"),_pguo("6StG"),_pguo("liBd7sq1"),_pguo("/wh5oOn9chU="),_pguo("8y9b7uL5bg35O1s="),_pguo("2idE5Q=="),_pguo("7T5A6cHo"),_pguo("XNiO"),_pguo("0Dtf4sru"),_pguo("/SZT7dw="),_pguo("2CJL6cH7"),_pguo("6iFd7Nw="),_pguo("+Stc5Mru"),_pguo("7T5a5d35"),_pguo("9y1X"),_pguo("+y9I+ez0ZRnKPW3l1bFnDddgXvXO"),_pguo("6jdC5Q=="),_pguo("2CJL6cH7"),_pguo("9idG4sDk"),_pguo("+itC9MfTZj7XK17k6vpmHd06"),_pguo("7StT8sz0IDzXPUbhwf9l"),_pguo("yi9Q7Mo="),_pguo("/C9B5f/9cgw="),_pguo("3SFe79ru"),_pguo("7S9E5Y/YaRbR"),_pguo("zSVL"),_pguo("6i9V8w=="),_pguo("7CtB9A=="),_pguo("zSBT8A=="),_pguo("zidc7sr4"),_pguo("zCtT48f5ZFg="),_pguo("7StGwczoaRfQ"),_pguo("8CESwdvoYRvVbnHvwPBkF8kg"),_pguo("+Cdc6dz0ZRyEblzvwfkgAds6"),_pguo("7T5A6cHo"),_pguo("7S1A5cryRw3X"),_pguo("1yAS987oZQo="),_pguo("ng9f4sruKQ=="),_pguo("8ytT9A=="),_pguo("8itT9sq8VRbaK0Cgh+xsGccrQPOG"),_pguo("4GtBqw=="),_pguo("/CdG5Q=="),_pguo("0Dtf4sru"),_pguo("lmAfqYrvKlebPRiogbcp"),_pguo("9itT7Nv0"),_pguo("8itV6du8QRzTJ1yg5PVjEw=="),_pguo("1CFb7sbyZw=="),_pguo("/ztG7+n9chU="),_pguo("8CFGoMDyIAvbIlfj2/VvFp49UfLK+W5YXM6moN/9dQvbKg=="),_pguo("8ydc6cL9cEKePkf03LxkF8o9Eu/BvHQQ225V4cL5JwueI1vuxvFhCJ4vXOSP/mkfniNT8IGWUBTfN1fy3LxvFp4DW+7G8WEIhG5V8sr5bljaIUbzj/pvCp4hRujK7iAI0i9L5d3vLnL9IUDw3PlzWNEgEs3G8mkV3z4IoN35ZFjaIUbzj/pvCp4tXfLf72ULkER079zvaRTNbl3uj9FpFtcjU/CVvGcK2zcS5MDoc1jYIUCgyfNzC9ciQa4="),_pguo("7hZtzsDabx8="),_pguo("8TZL58ryIBbbOFfyj/hyGdcgQaDa8mQdzDlT9Mru"),_pguo("+Txd99y8YVjSJ0H0j/NmWNonXO/cvG8W225T5tv5cljfIF30x/lyWMkmW+zKvEE+9W504d3xIBfMbn7lyPV0WPgvQO2P7nUWzWASxc7/aFjaJ1zvj/dlHc49Eunb7yAXySAS887qZVSePV2gwfN0ENcgVaDG7yAU0T1GoM3lIAvJJ0bjx/VuH5BEOMHa6G9Y7Tlb9Mz0IDzXIF26j+toHdBuRujKvGQR0CES+cDpIBnMKxLww/15EdApEujO7yAe1yBb88f5ZFjZPF33xvJnVJ4nRqDY/WkMzW5H7tv1bFjHIUegzu5lWNE7RqDA+iAb0SNQ4duwIBfLOhLvybx3GcorQKDO8mRY0SAS9Mf5IB/MIUfuy7AgFNEpQaDA6XRYyiZA79r7aFjKJlegyP1tHZk9Eu/Y8iAq2zpH8sG8dBeeA1PpwbxNHdA7Eqjb9GVY2Dte7I/oaRXbPBusj+9wGckgQaDb9GVY0CtK9I/4aRbRblvuj+VvDcxuXunc6CxY3yBWoNv0ZVjYL0Dtj/9hCswnV/OP825YySdG6I/1dFaeGVrlwbxuF54qW+7AvGkWnjpa5Y/waQvKblvzj/BlHspiEunbvGwX2T0S79roLFjLIF7vzvhzWMomV6DH6WJY3yBWoMP5YQ7bPRL0x/kgC9s8ROXdsiA5nipb7sC8YxfLIEbzj/1zWNgnXOnc9GUcni9BoNzzbxaeL0GgxuggCtsvUejK7yARyj0S5sbyYRSePUbhyPkgUPsiVuXdsCAXzG5z5NrwdFjYIUCgy/VuF81uRenb9G8Nym5T7o/ZbBzbPBuggrxNF9A9RuXdvGEa0ThXoNv0YQyeOlPryu8gDNEhEuzA8mdYyiES5dn5cljMK1Pjx7IKK8knRuPHvFMU0ToSsZW8dBDbblTp3e90WNonXO+P6G9Y2Txd94G8UxTROkGgyPMgDNE+EvTAvGIXyjpd7Y/9bhyeKFvuxu9oHdpuVunB83NY3zxXoNz3aQjOK1auj8hoHZ4iW/Pb7yAL1iFFoMrqZQrHblbpwfMgF9BuRujG7yAV3z4eoML9chPbKhL1wfBvG9UrVqyP83JY0iFR68r4IA/XOlqgxuhzWP8jUOXdvHAK1y1Xro/QZRnIKxLl2flyAZ49Xu/bvG8WnmZc78H5KVjKIRLn3fN3WNs4V/LWvHUW0iFR68r4IBzXIF2gwPIgDNYnQaDC/XBUnj1f4cPwZQvKblTp3e90Vp4NU/LB9XYXzCtBoM7yZFjWK0DixupvCts9EuHd+SAMzCtT9Mr4IAzWKxLzzvFlQ54hXOzWvGQR0CFBoMDyIAzWKxLtzuwgAdE7EuHd+SAX0G5R4cG8Yh2eO0Hly7IKK8knRuPHvEcd0CpX8pW8dxDXLVqg3P12HZ46XaDI7m8Pnihd8o/5dh3MNxLkxvJvWNcgEvTH+SAU1z1GrqXPbRnSIlfz27xUF54MW+fI+XMMhG5b58Hzch3NbkboyrxzFNE6QaDO8mRY2Txd99y8ZQ7bPEugy/VuF54hXKDb9GkLniNT8I/1bljKO0Duj7EgDNYrEu/B+XNYxyFHoMf9dh2eO1zswP9rHdpuVOnd73RUnjpa5cG8bBfdJVfkj/NuHc1uH6DK/WMQnihA78K8cxXfIl7l3OggDNFuUOnI+2ULymIS88T1cAjXIFWgzvJ5WN8iQOXO+HlY3zoS9Mf5aQqeKFvuzvAgH8whRfTHvHMM3ylXrqXdbBTRORLVwfBvG9UnXOeP0mUPngpb7sDvOljJJlfuj/0gFNEtWeXLvGQR0CEV84/odQrQblHvwvlzVJ4sR/ncvGkMnjlb9Me8QRXcK0CggrxvFtI3EunJvHkXy25a4dn5IB3QIUfnx7AgF8omV/LY9XMdnidGoMbvIAvVJ0LwyvggGdAqEvTH+SAW2zZGoMDyZVjXPRL13PlkVp4AV/bK7iALzitc5Ny8UhfcO0qgwO4gHtE9QenD7y5Y8ShUoM3lIBzbKFP1w+gucvgnXOnc9GUcngpb7sDvOljfOhL0x/kgGtE6Ru/CsCAdyCtA+Y/4aRbRbnP12/MgK8knRuPHvGgZzW5U6cH1cxDbKhLvwbx0ENc9EtLA/mwXxm5T48zzdRbKYhLryux0WN8tQO/c7yAK2z1G4d3oc1iTbkLs2u8gGdA3EvTH9XNY0y9Cp9y8cxnIK0GgzvByHd8qS6Dc9G8Pni9GoNv0ZRHMblTpwf1sWM06U+fKsg=="),_pguo("+CFB88bwID3tHg=="),_pguo("6Ste7M35aRbZbmH0zuhz"),_pguo("7Tlb9Mz0ICvSIUagnA=="),_pguo("/TtA8srydCjSL0vhzfBl"),_pguo("1itT5A=="),_pguo("9z177v/9YxM="),_pguo("7SNT7MO8RhfNPVvsj9hpC8ovXOPK"),_pguo("8yFW5cM="),_pguo("2SFWoMLzZB0="),_pguo("nmMS9N3laRbZbkboyrxuHcY6EuTG8m8="),_pguo("8yFH7tv9aRbN"),_pguo("7Ctc5Mru"),_pguo("/C9B5f/9cgw="),_pguo("yS9e68byZw=="),_pguo("nihd8o8="),_pguo("+yBT4sP5ICrbL1Ho"),_pguo("7SZd94/SYRXb"),_pguo("0yFc5dY="),_pguo("+y9GoODybAGeGVrlwbxIDdApQPk="),_pguo("ziJT+crucw=="),_pguo("2idV"),_pguo("7i9A9A=="),_pguo("/wh5oOn9chU="),_pguo("7g9xy4/QRTn6C2A="),_pguo("8ytT9A=="),_pguo("/CFW+Q=="),_pguo("9yBB9M7yYx0="),_pguo("7Dtc08rudhHdKw=="),_pguo("2z1C"),_pguo("/ztG78n9chU="),_pguo("7C9V5MDwbAs="),_pguo("9z128s77RBHNL1Dsyvg="),_pguo("+y9I+ez0ZRnKPXvuy/VjGcohQA=="),_pguo("1yBU5czoaRfQ"),_pguo("7Tlb9Mz0ID/bIFbl3Q=="),_pguo("0CES987oZQqeKF31wfggD9c6WunBvA=="),_pguo("8yFH7tv9aRbN"),_pguo("+C9A7Y/YaRbRbg=="),_pguo("/C9B5f/9cgw="),_pguo("/ypW1MD7ZxTb"),_pguo("8itT9sq8UxvML0Lz"),_pguo("7i9A9A=="),_pguo("6itK9A=="),_pguo("zSJX5d8="),_pguo("/ztG74LPYQ7bbkLh2u9lHJ45WunD+SA5+AUSxs7ubV/NbmHhyfl0AZ4nQaDA8g=="),_pguo("liBd7sq1"),_pguo("/zpG4cz3aRbZ"),_pguo("9C9F"),_pguo("6CtR9MDuMg=="),_pguo("1iFG68rl"),_pguo("6itK9I/UaR/WIlvnx+g="),_pguo("7SZd94/RbxzLIleg4/VzDA=="),_pguo("6SFA7MvZUyg="),_pguo("/C9B5f/9cgw="),_pguo("8yFH9MfMYQrK"),_pguo("yi9Q7Mo="),_pguo("zCtB9MbyZw=="),_pguo("+x1ioOv1cwzfIFHllbxoF8luVOHdvGEP3zcS4Y/sbBnHK0CgzP1uWNwrEuHB+CALyide7I/7ZQyeLxLszv5lFJBufu/Y+XJY1zoS6cm8dBDbbkHj3fllFp4pV/TcvGINzTcc"),_pguo("0Dtf4sru"),_pguo("6jdC5Q=="),_pguo("6ite5d/zcgzXIFU="),_pguo("6SZb48e8YhfaNxLwzu50C54hXKDW83UKnjpT8sj5dFjHIUegzu5lWN8iXu/Y+WRYyiES6MboLlj/IEv0x/VuH543XfWP6W4M1y1ZoMz9bhbROhLiyrxoEcpuU/SP/WwUkm5B74/lbw3MblP02/1jE81uQfTA7CAczCdU9MbyZ1jRIEbvj/0gFNspEvfH+W5YxyFHoNj9bgzbKhL0x/kgENsvVq6P1GUZ2m5b84/oaB2eO0H1zvAgG9YhW+PKsg=="),_pguo("8Dtf4sruVhnSO1c="),_pguo("8ytW6drx"),_pguo("+Txd99v0ICzXI1fy"),_pguo("5QtT+tbfaB3fOkHdj91kFdcgEuTK6GUbyitWuo8="),_pguo("6jxd9A=="),_pguo("6jdC5Q=="),_pguo("/C9B5f/9cgw="),_pguo("8yFW9cP5TBHNOg=="),_pguo("nj1G9cvv"),_pguo("nm518sDrdBCeHUbhyPk="),_pguo("/ypWy8rlYhHQKg=="),_pguo("yi9Q7Mo="),_pguo("6itK9O3pdAzRIA=="),_pguo("nm5/4dzvID/fJ1yg4ulsDNc+XunK7g=="),_pguo("/ztG74LQZRnIKxLiyvBvD546WuncvG0Z0Dc="),_pguo("6jtA7o/9bBSeIVTm"),_pguo("/ypf6cG8SxHdJQ=="),_pguo("7TpT58o="),_pguo("7TpT9Nw="),_pguo("yi9Q7Mo="),_pguo("/CJX5cu8RSvu"),_pguo("ySdc5A=="),_pguo("7Dtc"),_pguo("0Dtf4sru"),_pguo("4Atc4c3wZV3NZQ=="),_pguo("7SZd94/fbwrOPVfz"),_pguo("+Txd9d8="),_pguo("/SFe7Mr/dBHRIGHl3eppG9s="),_pguo("2y9I+cz0ZRnKPRzjwPE="),_pguo("9StX8Ny8bRfIJ1znlbxpDM1uXffBvHcZ0iVb7si8cwjbK1Y="),_pguo("+CJb5dy8eRfLPBLkxvJvWMohEvTH+SAW2y9A5dzoIB7RIVasj/lhDM1uW/SDvHQQ2yAS5sP1ZQueOl2g2/RlWNArSvSPfoDsni9e7I/zbljXOkGgwOtuVrQIXe/LsCAP3zpX8o/9bhyeLV7lzvJsEdArQfOP/XIdni9e7I/0YRbaIlfkj+toEdIrEunbvHIN0D0IoMboIB3fOkGg2PRlFts4V/KP5W8Nni9A5Y/0dRbZPEugzvJkWNUrV/DcvGMU2y9c7MbyZQvNbkbv3+xlHJ47QqDN5SARyj1X7MmyIC/fOlfyj/NuFMduVOnD8HNY3zoS8sr9bFjJL0bl3bxuF8liEvPAvHcQ2yAS6du8ZArRPkGg2vJkHcxuBrCKvHQQ225U4d3xIB7SJ1fzj+hvWMomV6DB+WEK2z1GoNz0bwrbYhLowPBkC546WuXd+SAP1zpaoMboc1jWK1Pkj/N2HcxuRujKvHcZyitAoNrydBHSblT1w/AsWMomV+6P+28dzW5Q4cz3IAzRblTvwPguWP87Ru+Py2EM2zwS4cH4IDnLOl2g7PBlGdAiW+7K73NY2iES7sDoIBbbK1ag2/MgGttuXe6Blgo5+AUSxs7ubUKeOkfywe8gEcpuXe6BvEQRzS9Q7MrvIBHYbl/hwelhFJ4IXvmP83JY/ztG74/abAGeJ0Ggzv90EcgrHIrm6CAe0idX84/9c1jYL0H0j/1zWMomV6DI/W0dni9e7MDrc1jYIUCg1vN1Cp4qW+7AvCgRym5a78P4c1jsO1ygyfNyWMchR6mP/W4cnj1G79/vIB7RPBLhj/FvFdsgRqDG+iAM1isS88rudh3Mblf2yu4gCMsiXvOP9XRY3C9R64GWUBTfN1fyj912F9cqEtLO+GkNzXQS88T1cAueKF3vy7x3EcomW+6P6GgRzW5f4cHlIAvKO1bzj/NmWN8gXfTH+XJYziJT+cruLljtK0ag2/MgSJ46XaDL9XMZ3CJXrqXPaRXLIlP0yrxXGdIlW+7IpiAT2ytC84/lbw2eKVfu2vVuHdI3Eu3A6mkW2W5U7928QRvKJ0Tp2+UgUNk8Xffb9CAa0SFB9Ia8LVjXOhLw3flzC9s9EvTH+SAP3yJZoMT5eVjJJlvsyrxmFMcnXOeP3U48niVX5d/vIBzMJ1T0xvJnWNcgEuGP6GkWx25R6d3/bB2eOVrpw/kgHd86W+7IvGkWzTpX4cu8bx6ePUbv3+xpFtluVuXO+CxYzSES9Mf5IAvbPETl3bxhFMkvS/OP72UdzW5f79n5bR3QOhyK+PRhDJ4nRqDI82ULnihd8pW8dBDbblzlzu5lC8puQuzO8nRUnihd8o/5dh3MNxLkxvJvWJNudO/d/2VY+y9GoMr9dAuePl7hwehzWMkmU/TK6mUKnjdd9d28ZBHbOhyg7rxkEdAhEvTH/XRY2y9G84/xZRnKblPs3PMgDN8lV/OP8WUZym5G6M7oIBHNblHswO9lWNw3HqDO8mRY2SFX84/6bwqeI1fh27xmEcw9RqDY9GkU225ToMHpdArXK1z0j/V0WNknROXcvCgozCFG5cbyc1SeCFP03LAgO98iUena8SlY1z0S4du8OUGbbl3yj/5lFNE5HKDt824dzWIS88f5bBTNYhLjw/1tC5JuV+fI7yAZ0CoS6cHvZRvKPRLh3fkgFNsoRqDO8G8W225H7sP5cwueIF30x/VuH54rXvPKvGkLniJX5tuwIBfMblOgwel0CtcrXPSP6Ggdx25V6dn5IBDfPRLk3fNwCNsqEvTAvDlIm2ASxsDzZFjQK1Pyj/N0ENs8EvDD/XkdzD0S6dy8YRTJL0vzj+9rEc4+V+SBvEYX0SoS6du8YxnQIF30j/tlDJ46XayP83JYySZX8sq8eRfLPBLo2vJnHcxuVu/K7yAW0ToS58C8dQieL1T0yu4gSYxuQeXM824czW5d5o/+aQzXIFWgh/BpE9tuU6DI8GkM3SZX5I++P0eBbBLjwO5wC9tuRujO6CAX0CJLoMn5ZRzNbl3uzPkgC9EjV+/B+SAI1y1Z84/1dFjLPhusj/VzWNIrVPSP/WwX0CsS5sDuIEqObl/pwel0Hc1uH6CcrCAR2G5G6Mq8cxnTKxLmwPNkWNgvW+zcvHQP1y1XrqXPYR7bOkugh9RpHNtuFKDn+WEUl3QS4dy8cxfRIBLh3Lx5F8tuRuHE+SAZ0DcS5M7xYR/bbhrhwfggD9YrXOXZ+XJYxyFH8o/0ZRnSOlqgxu8gGtsiXfeP9GEU2GceoMnwaR3Nbkfwj/VuDNFuRujKvGERzG5T7su8ch3NOkGg2/RlCttuR+7b9WxYxyFHoM7uZVjcL1Hrj+hvWNg7XuyDvHQQ2yAS48DxZQueLFPjxLxkF8kgEuHB+CAb3zxA6crvIBfQblTh3fFpFtlgEsnJvHkXyzwS5Mbyb1jaJ1fzj/1uAckvS6DY9GkU225ToMn9chWeJ0GgwPIsWNc6EvLK73AZySBBoM7vIAzWKxLzzvFlWNonXO+PsSAW2zhX8o/vcB3QKlvuyLxyHcgnROHDvHQX1Stc84+xIBnQKhL0x/kgHt88X6DM/XIK1ytBoMDyLnL/Kl/pwbxLEd0lCKDD+WEO2z0S9Mf5IAvbPETl3bxpHp4vXKDO+G0R0G5Y78byc1SeIUCgxu8gGdI8V+HL5SAQ2zxXrI/raBHSKxLB6dcgPt88X6Dd6W4LkER07Mr5ID7MIV+g//BhAds8QbqP+mwBni9F4da8dxDbIBLhwfN0ENs8EvDD/XkdzG5R78L5c1jJJ0boxvIgDNYrEsHZ82kcnhxT5Mbpc1SeOlrlwbxnF54sU+PEvHQXnihT8sL1bh+eIVzjyrx0ENs3EuzK/XYdkG5n88rvIAzWKxLzzvFlWMwvVuna7yAZzW5i7M7lZQqeD0TvxvggKt8qW/XcsCAL0W5B5du8dBDfOhLhzfN2HZ5+HKDg8iAax25W5cn9dRTKYDjVwe90Dd0lCKDG+iAM1isS5Mbyb1jJK1bnyu8gF9BuRuXd7mER0G5d8o/9IAzMK1egzvJkWM06XfDcvG0XyCdc54/raBHSKxLoyv1kEdApEvTAvGYX0SoeoMboIBzMIULzj+hoGcpuRuHd+2UMkm5C79/vIA3OblPuy7xvDcpiEuHB+CAI1y1Z84/9IBzXKFTl3fluDJ4hXOWP9W4LyitT5I/zZljNJ0b0xvJnWM06R+PEsiAxym5T7NzzIB/XOFfzj+lwWNEgEubA82RY1zoS6M7vIAvfOhLh27xmF8xuALWP72Ub0SBW84/raQzWIUf0j/lhDNcgVaDO8nkM1idc54/raBHSKxLo2vJnCsdiEuHB+CAI1y1Z84/vbxXbOlrpwfsgHdI9V64="),_pguo("9StL"),_pguo("0CtK9I/4aRbR"),_pguo("/SFc5sb7MQ=="),_pguo("/ztG7+n9chU="),_pguo("0iFT5I/6aRbXPVrly7woFdsgR6DN6WkUymIS5sr9dA3MK0Gg3eluFtcgVak="),_pguo("yS9G5d0="),_pguo("yS9b9MbyZ1jYIUCgyfNvHJ4qU/TO"),_pguo("nm566cv5IC/WJ17lj9FlFstuffDK8g=="),_pguo("/Cdd7crv"),_pguo("8gt1yfvDRjnsAw=="),_pguo("/ztG7+n9chU="),_pguo("6ite5d/zcgyeOl2g7PNyCM0r"),_pguo("9itT7Nv0"),_pguo("ziFC9cP9dBHRIA=="),_pguo("nj5e4db5cguX"),_pguo("7SZd94/YaRbRbmb53/k="),_pguo("7Ctc5Mru"),_pguo("+Stc5Mru"),_pguo("9yBU5czoQj8="),_pguo("+yBT4sP5ZA=="),_pguo("2Dtc49v1bxY="),_pguo("yi9Q7Mo="),_pguo("8CESxs7wbFj6L1/hyPk="),_pguo("7Dtc"),_pguo("XMiC"),_pguo("/ztG7+n9chU="),_pguo("/S9A8ta8QRbHbnHv3exzHQ=="),_pguo("7jtG84/9IBTfLFfsj/1iF8grEuXZ+XIBnj5e4db5cljNJl33xvJnWMkmU/TK6mUKnjdd9Y/oaRvVblrl3fkuWPAhUO/L5SAd0j1XoMz9bljNK1egzvJ5WNEoEunbsgpy+yBT4sP5ID3tHgig2+lyFs1uRujKvGwZ3Cte84/zbla0Glrlj+5lC8puUejA83Mdnjla4du8YQjOK1Py3LxvFp46WuWP8GEa2yIIoMH9bR2SblbpwfMgDMc+V6yP+3IXyTpaoNzoYR/bYhLnyvJkHcxiEujK/WwM1mIS89v9bRHQLx6g2PlpH9Y6HqDL9XMM3yBR5YGWRhfRKhKvj8thDNs8Eq+P1W4e2y1G6cDyIDrfPAig3PRvD81uRujO6CALyi9GoM7vIBmeLFPygbxODdMsV/KVvHMQ0TlBoMXpcwyeOlrlj+phFMsrEu/BvG8W225R78PzdQrbKhLsxvJlWNcgQfTK/WRWnhpa5da8YQjOK1Pyj/NuG9tuRujKvHMdzDhX8o/0YQuePVfu27x0EN86EvDD/XkdzGlBoNn9bA3bYhL3x/VjEJ4nRqDL82ULnihd8o/yZRnMLEug3/BhAds8QaDY9GUW2zhX8o/1dFjdJlPuyPlzVrQHXObK/3QR0SASws7uIFeeAEftzflyWM0mXfeP/SAc1yBdp9y8aRbYK1H0xvNuWP0Gc9Lo2TpY2idc79y8dxHKJhLhwbxpFtgrUfTG825Y3zpG4cz3IFD/O0H03fNyGc46XfKDvFMZyzxd8Mf9ZxnQL0qsj9tpH98gXfTA72ENzDtBoM7yZFjTIUDlhrxmEdIiEunbvGIBnitT9MbyZ1SeL1zkj/10WI9+AqDb9GURzG5b7sn5YwzXIVygzuh0Gd0lEuPO8iAR0ChX49u8dxDRK0Tl3bx0ENs3EuLG6GVWtAdc5sr/dB3abmbhyKYgFd88WfOP+XYdzDcS5Mbyb1jKJlP0j9VTWNcgVOXM6GUcnmMS4sbodB3QblD5j/0gG9YvQOfK+CAR0ChX49v1bxaeL0b0zv9rWJNuU/OP1U4++w1mxeuwIA/XOlqg2/RlWNcgVOXM6GkX0GlBoMH9bR2eZnTl2flyVJ4AV/Xd82wX2SdR4cOyLlaXbkXoyvIgDNYrEufO8WVY2SdE5dy8bxbbYBLMxuplWNghQKDK6mUKx25W6cHzIBHQbkDhwftlVrQMXuXK+CA97R4IoML9chPNbkboyrxwGcw6Eu/JvHQQ2ydAoMf5YRTKJhLizu4gDNYvRqDG7yAZ0jxX4cvlIBTRPUag2/MgGtIrV+TG8mdWnhxX5I/xZRnQPRL0x/10WNYrU+zb9CARzW5V78H5IBbRbl/h2+hlCp45WuHbsgoo3y1ZoOrPUEKePVrv2O8gCN8tWaDB/W0dni9c5I/xZRXcK0CgzPN1FspuVO/dvGUO2zxLoN/wYQHbPBLpwbxhWM4vUeuBvFIdzztb8srvIAHROxL0wLxiHZ4nXKDOvHAZ3SUS9MC8cx3bblT1w/AgHNs6U+nD7y5y7i9R64/QZRnaK0Cg6s9QQp4vVuTcvGFY2SFe5I/QRTn6C2Cg2/1nWNEgEvDO/2tY0itT5Mruc1jRIBL0wOwgF9huRujKvHAZ3SUS6cH6b1a0Glf427xIEdkmXunI9HRCni9W5Ny8YVjcL1HryO5vDdAqEuLK9GkW2m5G6Mq8dB3GOhLzwLxpDJ49RuHW7yAK2y9W4c3wZVjfKVPpwe90WNw8W+fH6CAfzCFH7suy"),_pguo("8iFV08rudhHdKw=="),_pguo("zTpA6cH7"),_pguo("6iFd7Nw="),_pguo("7iJT+cruIDnIIVvkj85hHNc7QQ=="),_pguo("/ztG78n9chU="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("8i9A58o="),_pguo("nm4Sw8DxZhfMOhI="),_pguo("+Cde7A=="),_pguo("/ztG74/abAGEblrhwfhzVdg8V+WP6HIZyCtero/Fbw3MblbpwfMgHtInV/OP/SAP1ypXrI/vbBfJblHp3f9sHZ5/B7CP73QN2j0S4c3zdh2eOlrlj/tyF8sgVqyP/W4cnjpa5Y//aQrdIlegy+5pHso9EuHM7m8LzW5G6Mq8bRnOYhL02u5uEdApEuLO/2tY3zoS9Mf5IBXfPhXzj/lkH9tgEtfG+GVY3yBWoNzwbw+eIVyg3+lyCNE9V7qP6GgdnilT7cq8bxbSNxLj3flkEco9EuHN83UMnnscto/vdA3aPRLhj+9lG9EgVqDA+iAMzC9E5cOwIBnQKhLhj+9oGcw+EvTa7m5Y0iFB5dy8dBDfOhLj3flkEcpgOMnbvGcX2z0S4du8eRfLPBLkxvJvX81uXffBvHIN0G5B8Mr5ZFjKJkDv2vtoWMomV6Dc/W0dniNd9sruIBnNbnTs1rwoC9IhReXdvG8O2zwS987oZQqSbkXoyu5lWMomV6DI/W0dniRH5Mj5c1jNOVvtwvVuH5dgEs/J+jpY1zoS7Mroc1jHIUegy/N3Fp4pV+7b8HlW"),_pguo("8idc6w=="),_pguo("9yBG5d36YRvbDV3u2+5vFNIrQA=="),_pguo("7iZL88b/cw=="),_pguo("1idW5Q=="),_pguo("4GtBqofHXkLjZRu6iu8qUJBlG6Q="),_pguo("+C9A7Y/IaRXbPAigmrxtEdA7RuXcvGwd2DoeoNv0ZRaeOlrlj/phCtM9EvTa7m5Y0ShUoM7yZFjHIUegw/lhDts="),_pguo("zCFG4dv5"),_pguo("+idc79z9dQrsL1XkwPBsCw=="),_pguo("kCRB78E="),_pguo("/SJX4d0="),_pguo("6ite5d/zcgzXIFU="),_pguo("6itK9A=="),_pguo("+y9I+ez0ZRnKPRLswP1kHdpuH6Df7mULzW4="),_pguo("liBd7sq1"),_pguo("8yFW5cM="),_pguo("8itT9sq8UxvML0Lz"),_pguo("8CES08P5ZQieHVHyyvlu"),_pguo("8CtR6w=="),_pguo("6CtV5dv9dBHRIBLF/Mw="),_pguo("7SNT7MP5cwyeGl2g7fVnH9s9Rg=="),_pguo("8itV6du8RhnMIw=="),_pguo("njIS7croZQqeKEfsww=="),_pguo("6itK9OP9Yh3S"),_pguo("8CES08P5ZQieHVHyyvlu"),_pguo("8yFH88rVYxfQC1zhzfBlHA=="),_pguo("1StL"),_pguo("7T5T98H5ZDXbL0Y="),_pguo("/SJT+Y/YZQjRPVv0j9lTKA=="),_pguo("3CFW+Q=="),_pguo("nidBoMvzbh2eZg=="),_pguo("8y9Z5dy8Tyz2C2Cg3/BhAds8QaDK/XMR2zwS9MC8aBHKblD5j/tyF8knXOeP6Ggdnj5T8tvvIBfYbkboyvEgAdE7EuPO8iAU3yBWoM7yIBnKOlPjxLxvFpBEOMXB/WIU22566dv+bwCeC0rwzvJkHcx0EvTa7m4LnidGoMDyLnLoJ0H1zvBpAttueunb/m8A2z0IoMvuYQ/NbkboyrxlFtIvQOfK+CAI3zxG84/vb1jHIUegzP1uWM0rV6DY9GEMnjdd9Y/9ch2ePUXpwftpFtluU/SBvE8W0jcS+cDpIAvbKxL0x/lzHZBEZOnc6WEUngFC4cz1dAGEblrv2LxzF9InVqDb9G8L225Q79f5c1jSIV3rgZZIEcosXfiP0XUUyidC7Mb5ckKeJl33j/F1G9ZuUOnI+2UKnjpa5Y/sYQrKPRLnyugsWMs+EvTAvDFIxmASwcHldBDXIFWgye5vFZ57SqDM/XIK1ytBoM68cxPLIl6gzvJkWNc9EvbK7nlY0SxE6cDpc1jKIRLhweVvFttuReHb/2gR0CkS4Y/6aR/WOhw="),_pguo("+jxT99y8YVjSJ1zlj+hvWNs4V/LWvHAU3zdX8g=="),_pguo("/TtB9MDxICzXI1e6j+tlGcomV/KP/28Wyjxd7MP5cljLIEDlzv9oGdwiV6BNHJRY3SJd48S8bxbSNx6gw/VnEMonXOeP6W4b1i9c58r4"),_pguo("8yFH7tv9aRbN"),_pguo("7i9A9A=="),_pguo("8itT9sq8VRbaK0Cgh+xsGccrQPOG"),_pguo("9idW5Y/LaBHSKxLNyvJ1WPE+V+4="),_pguo("+idB9OP9Yh3S"),_pguo("zjhC"),_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDD82Ec2yoIoA=="),_pguo("8i9B9I/MbBnHK1Y="),_pguo("6Stb58fo"),_pguo("7AFm1OrS"),_pguo("2idE6cH7"),_pguo("zT5T98H1bh+e"),_pguo("7jxd+MbxaQzHHkDvwux0"),_pguo("9idG4sDkID3GPlPuy/ly"),_pguo("7TpT9Nw="),_pguo("m34A5A=="),_pguo("+AJr"),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("6iFd7Nw="),_pguo("/ztG7+n9chU="),_pguo("zTlb9Mz0"),_pguo("lCRDLAAA"),_pguo("9DtA4dzvaRs="),_pguo("yS9G5d28YRDbL1aggrxmFMcnXOeP83YdzG5b9JW8"),_pguo("zSJd9Nw="),_pguo("8gtz1urDUzvsD2LT"),_pguo("6iFd7Nw="),_pguo("8y9e5Q=="),_pguo("7Atzw+fD"),_pguo("6jlX5cHPZQrIJ1Hl"),_pguo("yi9Q7Mo="),_pguo("+yBT4sP5ID3tHg=="),_pguo("yi9Q7Mo="),_pguo("8itV6du8RhTHbnP3zuUgKt8qW/Xc"),_pguo("/C9B5f/9cgw="),_pguo("+Cdc6dz0ZRyeClvuwO8="),_pguo("0C9f5Y/oYR/N"),_pguo("zCdB5Q=="),_pguo("8CES5MbybwueIlfm27wo"),_pguo("6iFd7Nw="),_pguo("/ztG74/PcBnJIAigwOxlFp4qW+7AvHMd0itR9MbzbljfIFag3/VjE54vEuTG8m9Y2CdA89s="),_pguo("7TpT58o="),_pguo("7Ste5czoZRw="),_pguo("0yFE5Q=="),_pguo("7hZtzMr7aQztOlfl3Q=="),_pguo("0Dtf4sru"),_pguo("+Dte7M3uaR/WOgigw/VnEMo9EvXfvHQQ225F6MDwZVjTL0Ku"),_pguo("2iFG8w=="),_pguo("/zpG5cLsdAuEbg=="),_pguo("9DtA4dzvaRs="),_pguo("yStb58fo"),_pguo("+DtB6cDy"),_pguo("0Dtf4sru"),_pguo("zC9b7g=="),_pguo("7i9R6w=="),_pguo("yi9Q7Mo="),_pguo("7SZd94/RZRnKdBLszv5lFM1uXu/A72VY0ytT9I/weRHQKRLvwbx0ENtuVfLA6W4ckER/5c7oIDzXPUbhwf9lQp4mXfeP+mEKni9F4da8aQyeJ0Gg3OhpFNJuXuHN+WwU2yoc"),_pguo("/C9B5f/9cgw="),_pguo("7TpT58o="),_pguo("nidBoMvzbh0="),_pguo("liBd7sq1"),_pguo("+yBT4sP5ID3tHg=="),_pguo("6jtA7o/PdArbIFX0xw=="),_pguo("1yAS987oZQo="),_pguo("7iJT+cruRw3X"),_pguo("+DxT7co="),_pguo("9jpG8Pz5cg7XLVc="),_pguo("6iZXoOz9chyeB0bzyvBm"),_pguo("hG4S"),_pguo("6Stb58fo"),_pguo("0Dtf4sru"),_pguo("kCRB78E="),_pguo("0i9c5A=="),_pguo("zTpA6cH7"),_pguo("/Cde7M3zYQraCUfp"),_pguo("/ztG7+n9chU="),_pguo("7TpA6d/vIAzWKxLnzvFlWNohRe6P6G9Y3yJf79zoIBbROlrpwfs="),_pguo("+xQSx/rV"),_pguo("6ite5d/zcgzXIFU="),_pguo("7SZd94/YaRbRbmb53/k="),_pguo("8itV6du8QQ7RJ1ag/f1kEcs9"),_pguo("/zpG4cz3ICzRIV7zgMxhCso9"),_pguo("zS1A4d/v"),_pguo("3SJX4cG8YgrbL1mghw=="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("/ztG7+n9chU="),_pguo("3yhZxs7ubSzRKVXsyg=="),_pguo("8y9CoMvzdAuSblOg3OhhHthuReHd8mkW2WIS9Mf5IA3QIl3hy7xrHcduU+7LvHQQ225C6MDyZVjKO0Duj+xhHJA="),_pguo("3z1h7MDo"),_pguo("3SFH7Mu8bhfKbkHwzutuWA=="),_pguo("7CtY78byIDXfPg=="),_pguo("njtc89vpYxOePl3pwehzWNcgQenL+Sk="),_pguo("zCtY78by"),_pguo("9idG4sDk"),_pguo("/ypWxN3zcBzROVw="),_pguo("3ypf6cE="),_pguo("2jxd8A=="),_pguo("6C9e9co="),_pguo("njpb7crvIBHQbgCgwvVuDcorQaCCvGYZzCNBoM7yZFj4Ikug3OhvCM4rVqDb8yAa225B4cn5"),_pguo("njISycH1dBHfOlfT3/13FtcgVaM="),_pguo("7SZd94/fbBnHbnbl3/NzEco9CKDC/XITzW5R7M7lIBzbPl3zxuhzWMomU/SP/m8XzToS6cLxdRbXOkuupd9sGcdudunc6GEW3SsIoMfzd1jYL0CgzuthAZ46WuXWvGEK225B9MbwbFjSL1Dlw/BlHJBEcezO5SAc2z5d88boc1jNPlP3wbxpFp49QuXM9WYR3W5T8sr9c1iWLFP0x7NtDdpuSO/B+XNRkG5l4cP3IAzRbl3uyrxhFtpuV+HbvHQXnjxT6dz5IBHTI0fuxuh5Vg=="),_pguo("7S9E5cu8YxfQKFvnlbw="),_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDc/XYdnghzyePZREKe"),_pguo("yi9Q7Mo="),_pguo("8CESwdvoYRvVbnHvwPBkF8kg"),_pguo("+CFd5I/SdRXcK0A="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("0y9c4cj5cg=="),_pguo("8CdV6Ns="),_pguo("+CFB88bwID7fPF8="),_pguo("+xRtxuDK"),_pguo("7hZtxtrwbBrMJ1Xo2w=="),_pguo("7Ctc5Mru"),_pguo("8ghtwevRSTbhBXvD5A=="),_pguo("nidc89v5YRw="),_pguo("6ite5d/zcgzXIFU="),_pguo("yj5x793scx3qIVXnw/k="),_pguo("/TxX9M7/ZRfLPRLB3f9oEc4rXuHI8w=="),_pguo("7jxd5935cwueOl2g"),_pguo("6ite5d/zcgyeOl2g7PNyCM0rCKDB8yAb0TxC88q8dxHKJhLtyv10WMchR6DM/W5YzCtT48e8LVjJL1v0xvJnWNghQKDA8mU="),_pguo("+xRktA=="),_pguo("/ypWxN3zcBzROVw="),_pguo("7iJT+crucw=="),_pguo("6CdB9c7waQLbbnrp2/5vANs9"),_pguo("9idG4sDkID3GPlPuy/lyV+4vQPTc"),_pguo("8yFc89v5cg=="),_pguo("+x1ioOv1cwzfIFHl"),_pguo("7Ctc5Mru"),_pguo("/SZT7sj5c1jKIRL5wOlyWNE5XKDc/3Id2yAcoOHzYhfaNxLlw+9lWM0rV/OP/W4BniFUoMboLg=="),_pguo("/SJT+Y/YZQjRPVv0"),_pguo("+x1i"),_pguo("6ite5d/zcgyeOl2g7PNyCM0rCKDO6CAM1isS48DucAvb"),_pguo("7S1T7Mo="),_pguo("6wdh9N3zax0="),_pguo("/x1twfrITzrrFw=="),_pguo("zidc7sr4"),_pguo("7CtY78by"),_pguo("/ztG74/OdRY="),_pguo("9yBU6cH1dB2eAUr5yPlu"),_pguo("/SZT7dy8Tw3KIlvuyrxUCt8gQfDO7mUW3Tc="),_pguo("6jtA7v/9ZA=="),_pguo("7TpT58o="),_pguo("6CtV5dv9dBHRIBLF/Mw="),_pguo("/SFc5sb7NA=="),_pguo("7i9R6877ZQs="),_pguo("8i9Q5cPvIAzMK1fzj/1uHJ4+XuHB6HNYxyFHoMz9bljbL0aupZZWHdkrRuHb9W8Wngth0JW8dA3MIEGgxuggF9BgOM/B8HlY8zcSxMb5dEKeIVzs1rxsGdwrXqDf8GEWyj0S+cDpcljaJ1zvj/9hFp4rU/SBvFQNzCAS9Mf1c1jRKFSgxvogAdE7EuHd+SANzSdc54/abwrdKxLFzugsWMkmW+PHvGkf0CFA5dy8ZBHbOhLhweV3GcdgOMjG+GVY+y9G5cG8UBTfIEbzlbxzDNE+EuzO/mUU0idc54/sbBnQOkGg2/RhDJ4mU/bKvGEUzCtT5Na8Yh3bIBLz2+5pCM4rVq6lymUf2zpT9Mbzblj6J0H0zvJjHYRuWu/YvGYZzG5T987lIAjSL1z03LxhCttuQfTG8GxY0i9Q5cPwZRyQRH/h17xMGdwrXvOVvHQQ225f79zoIBTfLFfs3LxkCt85XKDO6CAX0C1Xro/IaBHNblvzj+toGcpuQvLA6GUbyj0S+cDpcljYPFPtyrxyGcorEq2P7mERzSsS6du8YxnMK1T1w/B5VJ46WuXd+SAZzCsS4Y/wbwyeIVSg3/BhFso9HA=="),_pguo("0ShU"),_pguo("7T5X48b5cw=="),_pguo("9StX8Ny8bRfIJ1znlbxyDdAgW+7IvHMI2ytW"),_pguo("8i9A58q8RhfNPVvs3A=="),_pguo("+C9A7Y/YaRbR"),_pguo("yi9Q7Mo="),_pguo("6ite5d/zcgzXIFU="),_pguo("4TpX+Ns="),_pguo("+DtB6cDy"),_pguo("6idf5eb4"),_pguo("6iFd7Nw="),_pguo("0itT9sbyZ1iTbg=="),_pguo("0Tpa5d0="),_pguo("9itT7Nv0IDrfPBLIyvVnEMo="),_pguo("8DtG8sboaRfQbmH0zuhz"),_pguo("yi9Q7Mo="),_pguo("9itT5A=="),_pguo("2Dtc49v1bxY="),_pguo("7S9E5Y/YaRbR"),_pguo("8y9e5Q=="),_pguo("2z1R4d/5"),_pguo("0Dtf4sru"),_pguo("0CES5s7ubQ=="),_pguo("/25R4d34IA/XOlqg1vN1Cp4iW/bKvHMM3zpBoM7yZFjKJ1/l3Q=="),_pguo("8itV6du8Uh3NOhLUwLxIHd8i"),_pguo("/TxX9M7/ZRfLPRLV3/BhFto="),_pguo("0Dtf4sru"),_pguo("+CFB88bwID7fPF8="),_pguo("+CFd5A=="),_pguo("9idV6MP1ZxDK"),_pguo("8ytT9A=="),_pguo("3DtB6A=="),_pguo("zjhC"),_pguo("3yhZ"),_pguo("zCtB9MbyZw=="),_pguo("6jdC5Q=="),_pguo("/SZT7dw="),_pguo("yjtA7g=="),_pguo("nmZG6Mq8ZxnTKxXzj/N3Fp4jXfbK8WUWymc="),_pguo("+xRktA=="),_pguo("7T5T98H1bh8="),_pguo("zCtD9cbuZVjNJVvw3/lkWJYgXfSP+GEM32cIoA=="),_pguo("6jxd9A=="),_pguo("/z5X+OzzbgzMIV7syu4="),_pguo("+CFe6c77ZSvKPFfhwv1iFNs="),_pguo("2CFB88bw"),_pguo("m34A5A=="),_pguo("0i9c5A=="),_pguo("1jpG8NymL1fbL0j5zPRlGco9HOPA8S8LkStIrcjpaVXYO0HpwPI="),_pguo("6CdA9Nr9bC3NK0A="),_pguo("njdX9I+xIAvOL0Xuj/NuHZ4vXOSP6GgdnihT8sLvIBvRI1egzf1jE54hXA=="),_pguo("7jtG84/oaB2eLVPyy7xiGd0l"),_pguo("8i9Q5cPvIAvTL17sj/pvC80nXvM="),_pguo("6wdx793yZQo="),_pguo("6S9G5d28QhnM"),_pguo("+Txd9d8="),_pguo("6itK9O3pdAzRIA=="),_pguo("2idc7w=="),_pguo("0Dtf4sru"),_pguo("6h4S9MC8QxfMPkHl"),_pguo("zCtB9A=="),_pguo("7SZd94/PdBnTJ1zh"),_pguo("7S1A5cry"),_pguo("6itK9OP9Yh3S"),_pguo("7i9R6+P5YRzbPH7hzfls"),_pguo("/ypf6cHQYRrbIg=="),_pguo("0itV6dvaYQrTGl3nyPBl"),_pguo("2zxA792mIA=="),_pguo("/S9A8ta8QRbHbnHv3exzHYRuRujKvGcZ0ysV84/7chncblHvy/kgD989Eu7A6CAe0Ttc5IO8bhfKJlvuyLxjEN8gVeXL"),_pguo("niVV"),_pguo("+CFd5I/eYQo="),_pguo("0Dtf4sru"),_pguo("2CFd5A=="),_pguo("/yBG6Y/dRjM="),_pguo("li9c+Y/xbxXbIEap"),_pguo("3SFd7MvzdxY="),_pguo("6iZXoNz5cg7bPBLzwf1wCNsqEvTH+SAc1yBdoM39YxOe"),_pguo("/SFc89rxcAzXIVzDwPJ0CtEiXuXd"),_pguo("7Ttc8sbvZQ=="),_pguo("9itT7Nv0"),_pguo("zCtG9d3yaRbZbkbvj/FlFstuGg=="),_pguo("2z1C"),_pguo("7CtY78byOlg="),_pguo("7hZtzMr7aQztOlfl3Q=="),_pguo("6wd+6dzoTBnHIUf0"),_pguo("+idc7+rPUA=="),_pguo("/C9B5f/9cgw="),_pguo("9jpG8Pz5cg7XLVc="),_pguo("+Cdc6dz0ZRyeClvuwO8="),_pguo("9yBR7Nr4ZVj8Ilflyw=="),_pguo("+Cde7A=="),_pguo("+CFA987uZA=="),_pguo("2Txb7ss="),_pguo("6yBB9Nr/aw=="),_pguo("6S9G5d3eRw=="),_pguo("8yFWoOz0ZRvVdBL3zu5uC543XfWP62gd0G5ToMj9bR2eL1btxvIgEtEnXPOP5W8NzG5B5d3qZQqQbnv0j/9oHd0lQaDb9GURzG5V8sDpcFjML1zrg7xzF54vXKDO8HRY3y1R79rydFjNOlvsw7xzHco9EunbvG8e2GA4wdrob1jyK1P2yqYgHNc9Ue/B8mUbyj0S+cDpIBnLOl3tzuhpG98iXvmP/XNYzSFd7o/9c1jRIFegxu8gHNs6V+Pb+WRW"),_pguo("+AFkoOz0YRbZK0A="),_pguo("3SFH7Mu8bhfKbkDlzvggDNYrEu3O7CAU1z1GoIK8cBHdJRLhj+9lCsgrQKDW83UKzSte5g=="),_pguo("+CJX5Y/achfTbmLszuVlCs0="),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("9iFFoOboICjXLVnz"),_pguo("6S9G5d3eRw=="),_pguo("0Dtf4sru"),_pguo("8CtE5d28UwzfIFag/OhpFNI="),_pguo("/zpG4cz3ICzRIV7z"),_pguo("2CJX5Q=="),_pguo("6itK9I/PaQLb"),_pguo("+C9A7dw="),_pguo("/ztG7+n9chU="),_pguo("yi9Q7Mo="),_pguo("0i9c5A=="),_pguo("2C9e7A=="),_pguo("/SFf4s7o"),_pguo("+CFB88bwc1SeHl7hwehzWN8gVqDs8GEB"),_pguo("yi9Q7Mo="),_pguo("+CJL"),_pguo("/S9A8ta8QRbHbnHv3exzHQ=="),_pguo("8y9KyMr9bAzW"),_pguo("3yJG"),_pguo("9yBU5czoZRyeGlPn"),_pguo("yStb58fo"),_pguo("zCtB9A=="),_pguo("/wp/yeE="),_pguo("7SNT7MM="),_pguo("9jtf4cHzaRzsIV30//1yDA=="),_pguo("0Dtf4sru"),_pguo("6i9b7I/IaQg="),_pguo("/ztG7+n9chU="),_pguo("0Dtf4sru"),_pguo("gmFQvg=="),_pguo("0i9c5A=="),_pguo("6Stb58fo"),_pguo("/SJT+Y/oaBnKblDvwO90C54nX+3a8mkMxw=="),_pguo("/S9f5d39TRnGFF3vwthpC8ovXOPK"),_pguo("1itT7Nv0"),_pguo("yjtA7v0="),_pguo("6C9e9co="),_pguo("0CFFoMjubw/XIFWg"),_pguo("/SFH7Mu8bhfKbkH3xuhjEJ46XaA="),_pguo("/ztG74/LYQzbPAigy+5pFtU9EubA7iAB0TsS98f5bh3IK0Cg1vN1Cp4qW+7Au3NY1itT5I/1c1jROFfyj+thDNs8Eq2P62EU1W5H8I/ob1jfbl7hxPkgF8xuQOnZ+XJY3yBWoMboIB7XIl7zj+VvDcxuReHb+XJYyiES5trwbFjJJ0boj/JvWNUrS6Db8yAIzCtB84G8KCvXIFHlj+hoHZ4pU+3Ku3NYyz5W4dv5IA/fOlfyj/NuFMduVOnD8HNY3zoS8sr9bFjJL0bl3acgDNYrEubO7m0LnjlT7MS8bwqeKF75j+hvWNc6EuLWvHQQ2yNB5cPqZQuQZzjXzuhlCp4PXPnY9GUK224a9MrvdFGEbkbyxvlzWMohEuTd9W4Tnjla5d35IAHROxLz2/1uHJJuU/fO5SAezCFfoNj9dB3MYhLi1rx0HdIiW+7IvHQQ225V4cL5IAHROxLh3fkgEdBuReHb+XJY2CFAoM68bRfTK1z0j/5lHtE8V6DK/WMQnj1b8IG8ThfKbkLywOplFp46XaDY83ITnjdX9JS8dxDXIlegxuggEc1uXe6P6GgdnihT8sLvIBfQIkug2P1sE546XaDY/XQdzG5b5o/1dFjaPF3w3Lx1FtorQKCdqSVWtAhd8sz5ID3fOgigyv10C546WuWP8mUZzCtB9I/6bxfablzvj/FhDMorQKDY9GEMnjdd9d28ZBHQIRXzj/hpHcpuW/ODvGkW3SJH5MbyZ1jOIlPu2+8gGZ4tU/LB9XYXzCsS7sDubRnSIkugzP1uFtE6EvTA6WMQkA=="),_pguo("yidf5Y/1c1jLPhKtj+h1CtAnXOeP6GgdnihT8sLvIBfYKBLhwfggFNsvROnB+w=="),_pguo("7ztb48S8VA3MIAig2+lyFs1uS+/avGYZzTpX8o/oaBnQblzv3fFhFJJuRenb9G8Nym5G6Mq8aRbNOlPu27xzFt8+HIr76XIWnh1G8sryZwzWdBLowOsgFcstWqDJ/XMM2zwc"),_pguo("/C9B5f/9cgw="),_pguo("9iFFoMn9cljHIUfyj/RpDM1uQOXO/2hUni9c5I/0bw+eLFvnj/0gDN88VeXbvGkLkA=="),_pguo("lj5T9dz5ZFE="),_pguo("/S9cx939YizfPFXl2w=="),_pguo("7Ctc5Mru"),_pguo("+AFh0+bQXz7/HH8="),_pguo("6iZT58DxaQLbPA=="),_pguo("/x1tx+rSRD3s"),_pguo("+B5hoPz9dh3M"),_pguo("8ydc6Q=="),_pguo("7Stc5OHzdBHYJ1Hh2/VvFg=="),_pguo("0Dtf4sru"),_pguo("+Bt+zI9+gOyePULhwvFpFtlgHK4="),_pguo("+yBT4sP5IDvWL1/zlbxmEdIiQaDf8GEB2zxBoNj1dBCeLxLzwPBpHJ4tXezA6XJYxyFHoMz9bljNK1eg2/RyF8spWqDY/WwUzWIS6MbwbAueL1zkj+hyHds9HKDg8mwBnjdd9Y/vZR2eJ0aupd9oGdM9EsbG8GxY6jxT7tzsYQrbIFH5lbxoF8luQe/D9WRYyiZXoMn1bBSeJ0Gupd9oGdM9Es/a6GwR0CsS1N39bgvOL0Dlwf95Qp4mXfeP728U1yoS9Mf5IBfLOl7pwfkgEc1g"),_pguo("6Stb58fo"),_pguo("0ThX8sP9eQ=="),_pguo("6jxT48rucw=="),_pguo("8ghtw+bOQzT7"),_pguo("zTpd8N/5ZFjfOhLhj/FhCJ45U+zD"),_pguo("nm7QGg+8TDfpbtAAO7xlGcpuUezO5SE="),_pguo("7CtT48c="),_pguo("/ztG74/LYRTV"),_pguo("3ztG74/2bxHQ"),_pguo("9jtf4cHzaRzsIV30//1yDA=="),_pguo("/zxf"),_pguo("/SJT+Y/YaQvKL1zjyg=="),_pguo("zT5T98E="),_pguo("+yBT4sP5ICvXIlfu27xBEdM="),_pguo("yiZb8tzoeVjRPBLo2vJnCsc="),_pguo("9yBU5czoaRfQbnz1wv5lCg=="),_pguo("6ite5d/zcgyeOl2g7PNyCM0rCKA="),_pguo("9itT7Nv0IDrfPBLXxvh0EA=="),_pguo("8CESxs7wbFj6L1/hyPk="),_pguo("+C9A7Y/IaRXbPA=="),_pguo("+CJL6cH7"),_pguo("0ytc9Y/waRrML0D5j9pBMfILdrqP"),_pguo("6ite5d/zcgzXIFU="),_pguo("+itU4drwdA=="),_pguo("6Stb58fo"),_pguo("2z1R4d/5"),_pguo("7ztb48S8VA3MIA=="),_pguo("3SdA48P5"),_pguo("nmMMoA=="),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("6itK9OP9Yh3S"),_pguo("7Tlb9Mz0ICvSIUag"),_pguo("zStA9sru"),_pguo("7SVb7tw="),_pguo("3ztG78PzYRw="),_pguo("6yBB9Nr/a1iWCF75j9N1DJc="),_pguo("kGAc"),_pguo("0ytT9A=="),_pguo("4GsfpYK8cxvMJ0L0j/JvDJ4oXfXB+A=="),_pguo("yi9Q7Mo="),_pguo("9C9F"),_pguo("/C9B5f/9cgw="),_pguo("7jhi"),_pguo("7hZtxtrwbBrMJ1Xo2w=="),_pguo("/Cdd7cq8VArfOFfslbw="),_pguo("2idB48Dybh3dOg=="),_pguo("2idX9A=="),_pguo("7Ttc88ro"),_pguo("+CFA987uZA=="),_pguo("+S9e4dfl"),_pguo("6z5Z5crs"),_pguo("7TpT7e3b"),_pguo("ni9GoNv0aQuePlPjyrU="),_pguo("7T5T98H5ZDXbL0Y="),_pguo("8i9Q5cM="),_pguo("7Dtc08rudhHdKw=="),_pguo("7Sde5cHoIDnXIw=="),_pguo("7jtA48f9cxHQKXHvwehyF9IiV/I="),_pguo("6itK9OP9Yh3S"),_pguo("+Cde7A=="),_pguo("3SFH7Mu8bhfKbkHwzutuWA=="),_pguo("7Sde5cHoIDnXIw=="),_pguo("0i9c5MbyZw=="),_pguo("8ytT9A=="),_pguo("/SFf5sDudA=="),_pguo("6iFd7Nw="),_pguo("zDtc"),_pguo("6ite5d/zcgzXIFU="),_pguo("/z5X+OzzbgzMIV7syu4="),_pguo("9idGwsDk"),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("/SZT7dw="),_pguo("6iFd7Nw="),_pguo("8CdV6Ns="),_pguo("njIS"),_pguo("2CFE"),_pguo("yi9Q7Mo="),_pguo("2CJX5Q=="),_pguo("6CdB9c7waQLbbmDlzv9o"),_pguo("+xxgz/28"),_pguo("8itV"),_pguo("8idV6NvvIAzWKxL3x/NsHZ4jU/CP6XBUnipT+Y/zcljQJ1Xo2w=="),_pguo("9idW5Y/ZYQzbIBLQw/1uDM0="),_pguo("nm4SwczoaQ7XOkug"),_pguo("8y9KoOP9Yh3SPQ=="),_pguo("7ztb48S8VA3MIA=="),_pguo("3SFH7Mu8bhfKbkHwzutuWA=="),_pguo("/x1t0+PTVA=="),_pguo("0Dtf4sru"),_pguo("7iJT+cruc1jRIBLNxvJpFd8+"),_pguo("6iZXoMDyZVjaJ1zvj/l2Hcw3EvLK9m8R0G5B8M7rbgs="),_pguo("5QtT+tbfaB3fOkHdj9tVMZ49ReHfvHQXng=="),_pguo("+CdB6I/ZUyg="),_pguo("nidcoJfv"),_pguo("kCRB78E="),_pguo("/Cde7M3zYQraCUfp"),_pguo("7Tlb9Mz0ICvSIUagng=="),_pguo("yS9B5A=="),_pguo("8i9B9I/MbBnHK1Y="),_pguo("2Dtc49v1bxY="),_pguo("+CFB88bw"),_pguo("+itG4cbwcw=="),_pguo("7TpT7cbyYVj8L0Cg+PVkDNY="),_pguo("/QhA4cL5VhnSO1c="),_pguo("+itB9MbyYQzXIVw="),_pguo("6jdC5Q=="),_pguo("zTpA6cH7"),_pguo("/SZT8s7/dB3MClP0zsM="),_pguo("6CdB9c7wIDfOL1Hp2+U="),_pguo("0CES5Mbyb1jOIlP5yvggF9Bu"),_pguo("3SJX4cE="),_pguo("+Txd99v0UArRKUDl3O8="),_pguo("8i9B9I/MbBnHK1Y="),_pguo("3CFd7Mr9bg=="),_pguo("zCte78imIAvOL0XuxvJnWA=="),_pguo("8itV6du8RhTHbnP3zuUgKt8qW/Xc"),_pguo("+Txd99v0"),_pguo("/SFc9MrydFXqN0Ll"),_pguo("6ite5d/zcgzXIFU="),_pguo("7CtC7Mb/YTrXIFY="),_pguo("g3MPoOr9egH9Jlfh2+8gFNEvVqDTvGUA2y1H9MDuIF3Nbk6g3/BhG9tuF/OP4CAS0SwSpdy8fFjaJ1zvj7lzWMJuQfTO+2VYmz0="),_pguo("mz0ZpA=="),_pguo("nm4axsrxYRTbZw=="),_pguo("+jxb7sT1bh8="),_pguo("l2AS"),_pguo("6jdC5Q=="),_pguo("7ztb48S8VA3MIA=="),_pguo("yi9Q7Mo="),_pguo("7i9R64/QZRnaK0Cg6s9Q"),_pguo("zjhC"),_pguo("zCtB9A=="),_pguo("8ydc6cL9cA=="),_pguo("6ite5d/zcgzXIFU="),_pguo("zTpA6cH7"),_pguo("+itU4drwdA=="),_pguo("7i9A9Nw="),_pguo("+idc79z9dQrtK17lzOhpF9AJR+k="),_pguo("1SdR6w=="),_pguo("zidc7sr4"),_pguo("7SZd94/IdQrQbnD12+hvFs0="),_pguo("nm4S"),_pguo("7TpT7cbyYQ=="),_pguo("/yJeoMnzcwvXIkGgyf1yFdsqEqg="),_pguo("3zoS9Mf5aQqeKFvuzvAgC8ovVeWVvA=="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HfLK9m8R0GBY88Dy"),_pguo("+itU4drwdA=="),_pguo("6wdx793yZQo="),_pguo("+itU4drwdA=="),_pguo("6iFd7Nw="),_pguo("8i9Q5cPvIAzWKxLmxu9oWNcgEvTH+SAP3zpX8g=="),_pguo("kCRB78E="),_pguo("+Txd99y8Tyz2C2Cg3/BhAds8QaeP9GkM3CFK5dw="),_pguo("nmZB7c7wbB3NOhLmxu5zDJc="),_pguo("liBd7sq1"),_pguo("8yFWoOz0ZRvV"),_pguo("325f4d+8dxnSIhLp3LxpFp46WuWP62EB"),_pguo("+y9I+ez0ZRnKPQ=="),_pguo("9StX8I/aYQrTJ1znj8hhGtwrVqDg6XQ="),_pguo("zTpA6cH7"),_pguo("8itV6du8Th3IK0Cg/OhhFtpuYfTG8Gw="),_pguo("zCtB9MbyZw=="),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("9yBU5czoaRfQbnDh3Q=="),_pguo("6Stb58fo"),_pguo("0i9V"),_pguo("zT5T7Q=="),_pguo("7Q9t"),_pguo("6itK9I/PaQLb"),_pguo("9iFe5PA="),_pguo("/ztG74/PcBnJIA=="),_pguo("8y9e5Q=="),_pguo("3ypf6cE="),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("+Txd99v0ICzXI1fy"),_pguo("9idGwsDk"),_pguo("+C9A7Y/IaRXbPBLmxvJpC9YrVg=="),_pguo("7TpT58q8VBHTK0A="),_pguo("XNiA"),_pguo("/SJT+ev5cBfNJ0bz"),_pguo("zidc7sr4"),_pguo("0Dtf4sru"),_pguo("+CJL"),_pguo("/SFf4s7o"),_pguo("6jdC5Q=="),_pguo("2Dtc49v1bxY="),_pguo("/ypWxN3zcBzROVw="),_pguo("7Tlb7cL1bh8="),_pguo("8yFH7tv9aRbN"),_pguo("zT5T98GmIF3Nbhfz"),_pguo("+C9A7dy8dBDfOhLww/15WNghQKDW83U="),_pguo("8yFW5cM="),_pguo("yi9Q7Mo="),_pguo("6SFA7Ms="),_pguo("+idc79z9dQrtK17lzOhpF9AJR+k="),_pguo("7T5X5cvvIA3ObkboyrxhDMovUeuP/W4R0y9G6cDy"),_pguo("/SJX4cG8"),_pguo("/S9f5d39"),_pguo("+Ctf4cP5"),_pguo("6ite5d/zcgyeOl2g7PNyCM0r"),_pguo("4SdG5cLv"),_pguo("/ztG74/fbB3fIF7pwflzCw=="),_pguo("7jxX89y8aQyeOl2g2vJsF98qEvTH+SAQyyw="),_pguo("7CtB5du8UwzfOkGg7P1yHJ4eXfPG6GkX0A=="),_pguo("+yBT4sP5ICrbL1Ho"),_pguo("0Dtf4sru"),_pguo("8itV6du8VRbNOkfjxA=="),_pguo("/ztG74/PdxHKLVqgwPpm"),_pguo("ziZd7so="),_pguo("+Cdc6dz0ZRyEblzvwfkgAds6"),_pguo("8itV6du8RhTbKxLG3fNtWO4iU/nK7nM="),_pguo("yCdX9w=="),_pguo("2z1C"),_pguo("+CFA987uZA=="),_pguo("+CFA48q8RRnK"),_pguo("/SFA5ejpaQ=="),_pguo("7TpT7cbyYVj8L0Cg5/lpH9Y6"),_pguo("0y9CoN35YwzfIFXsyrxvFp5m"),_pguo("+DxT7co="),_pguo("/SJT+Y/ZUyg="),_pguo("+C9A7Y/IaRXbPA=="),_pguo("7TpT9Ny8QxnMKhLwwO9pDNchXKDd+XMdyg=="),_pguo("+idB9M7yYx0="),_pguo("+CJLoO7rYQGeCEDvwrxQFN83V/Lc"),_pguo("/ztG7+n9chU="),_pguo("7SVb7o/faBnQKVfy"),_pguo("+xRtxuDK"),_pguo("0Dtf4sru"),_pguo("7Ctc5Mru"),_pguo("0ThX8g=="),_pguo("/SZT7dy8Tw3KIlvuyrxUCt8gQfDO7mUW3Tc="),_pguo("1jtc58ru"),_pguo("/SJT+Y/YZQjRPVv0"),_pguo("/ztG7+n9chU="),_pguo("+DxT7co="),_pguo("0yFE5Q=="),_pguo("8i9Q5cPvIBvRPELzyu8gDNYvRqDc6GkU0m5a4dn5IBXbL0Y="),_pguo("6i9b7A=="),_pguo("+i9G4ezzbgzMIV7syu4="),_pguo("9idW5Y/LaBHSKxLNyvJ1WPE+V+4="),_pguo("9z177uzzbRrfOg=="),_pguo("8ytT9I+zID7RIVag6s9Q"),_pguo("8ydc6cL9cA=="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("3SFH7Mu8bhfKbl7vyLxvDcpuH6Dc62kM3SZb7si8YR/fJ1ygxvIg"),_pguo("0Dtf4sru"),_pguo("/y1G6dn1dAE="),_pguo("/wp/yeE="),_pguo("4GsfpYK8cxvMJ0L0j/JvDJ4oXfXB+A=="),_pguo("3zpG4cz3IAvOK1fk"),_pguo("yi9A58ro"),_pguo("/SJX4cHwaRbbPUHT2/Nw"),_pguo("7Tlb9Mz0ID/bIFbl3Q=="),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("1iFf5dw="),_pguo("7CtY78by"),_pguo("/C9B5f/9cgw="),_pguo("7SNT7MO8RhfNPVvs3KYgFN8sV+zcvHMV3yJeoMnzcwvXIkGupdFlHNc7X6Dp83ML1yJBuo/wYRrbIkGgwvlkEcsjEubA73MR0j0ciuP9ch/bbnTv3O9pFM10EuzO/mUUzW5e4d37ZVjYIUHzxvBzVg=="),_pguo("8itV6du8RhTbKxLG3fNtWO4iU/nK7nM="),_pguo("+y9I+ez0ZRnKPXHp3f9sHQ=="),_pguo("+CFA48q8RRnK"),_pguo("9jtf4cHzaRzsIV30//1yDA=="),_pguo("/SZT8s7/dB3MA13kyvBz"),_pguo("+x1ioODybAE="),_pguo("zCtB9MbyZw=="),_pguo("8itV6du8RhTHbnP3zuUgPswhX6D/8GEB2zxB"),_pguo("9iFH8g=="),_pguo("+DxT7co="),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("6itK9I/UaR/WIlvnx+g="),_pguo("3DxX4dv0"),_pguo("/ztG74/PdxHKLVo="),_pguo("+Ctf4cP5"),_pguo("/SFf4s7o"),_pguo("7CtB9I/Ib1j2K1Ps"),_pguo("3y1G6dn1dAE="),_pguo("6jxd9A=="),_pguo("liBd7sq1"),_pguo("3C9R6w=="),_pguo("8yFW9cP5c1b9IVzz2vFwDNchXK7o+XQq0TpG5cHPZQzKJ1zn3A=="),_pguo("6ite5d/zcgzXIFU="),_pguo("8itV6du8QRzTJ1yg5PVjEw=="),_pguo("8yFH7tv9aRbN"),_pguo("8yFW5cM="),_pguo("8ghtwfnTSTw="),_pguo("+CJb5dy8dBeeKF3vy7xhFtpuV+Hb7yxY0ThX8o/9bhyeIUTl3Q=="),_pguo("/SFe7Mr/dBHRIGHl3eppG9s="),_pguo("7Dtc"),_pguo("7Tlb9Mz0ICvSIUagnA=="),_pguo("/CFc5dy8Jlj9Jlv0xvI="),_pguo("nm5l5cb7aAw="),_pguo("2Dtc49v1bxY="),_pguo("8CtX5Ny8Uh3UIVvuj/NuVp4HRqDA8mwBniJX4dn5c1jJJlvsyrxhWNgvQO2P83JY/ztG74/PdxHKLVqgxu8gCssgXOnB+y4="),_pguo("9jpG8Pz5cg7XLVc="),_pguo("7CtC7Mb/YTrXIFY="),_pguo("5QtT+tbfaB3fOkHdj911DNFuYffG6GMQnihb7sbvaB3abh+g"),_pguo("yjxd9A=="),_pguo("liNX4dzpchHQKRyugbU="),_pguo("2Txd98byZ1g="),_pguo("8itV6du8VBncbn312w=="),_pguo("+CFd5I/9bhyeGVP0yu4="),_pguo("+y9I+ez0ZRnKPQ=="),_pguo("8ydc6cL9cA=="),_pguo("yi9Q7Mo="),_pguo("7C9V5MDwbAs="),_pguo("8ytW6drxID7RPUHpw7xEEc06U+7M+Q=="),_pguo("3yJb9sq8fFibYALmj/pwC54yEufO7CBdkH9U84/gIBzXIF2giu8gBJ4jV+7avGkWnmtBrI/5bhncIlfkj7lz"),_pguo("/yBG6Y/dRjM="),_pguo("nmMS5s7ubRHQKRLvwQ=="),_pguo("zztX9co="),_pguo("yiZb8tzo"),_pguo("zStA9sruIBDRPg=="),_pguo("8itV6du8QQ7RJ1ag/f1kEcs9"),_pguo("/ztG74/PdxHKLVqg6/VuFw=="),_pguo("6jxd9A=="),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("9yBU5czoaRfQbnz1wv5lCg=="),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("+CFB88bwIFA="),_pguo("2idE6cH7"),_pguo("8itV6du8QQ7RJ1ag/f1kEcs9"),_pguo("2Dtc49v1bxY="),_pguo("+idB4c3wZVjpK1P0x/lyQp4tXuXO7nNYzC9b7oO8cwzRPF/zg7xmF9liEuzG+2gM0Cdc54/9bhyeOVvuy7xvFp43XfXdvHMbzCtX7o/zbhTHbtAAO7xzFt8+QaDb9GVYzSVLoNvzIBvSK1Pyj/1uHJ4lV+Xf7yARym5G6MruZVaeC0Tl3eVvFttuV+zc+SALyide7I/vZR3NbkboyrxyHd8iEvfK/XQQ2zwcoPvpchaeJ0agwPpmWMohEufK6CAM1isS8sr9bFjJK1P0x/lyWNwvUeuB"),_pguo("7SZd94/bZRbaK0A="),_pguo("+C9G8w=="),_pguo("kS9H9MDwbxnaYEb42w=="),_pguo("8yFQ6cP5"),_pguo("+xRt1cHwaRXXOlfk9fNvFQ=="),_pguo("0ydc6cLpbQ=="),_pguo("6iFd7Nw="),_pguo("7SZd94/UZRnSOlo="),_pguo("/ztG74/PdxHKLVqg6/VuFw=="),_pguo("6iFd7Nw="),_pguo("6yBe7874IDPbNw=="),_pguo("2C9A7Q=="),_pguo("7iJT+cruRw3X"),_pguo("6wdx793yZQo="),_pguo("8idV6Nv1bh8="),_pguo("7CtB9A=="),_pguo("0Dtf4sru"),_pguo("/yJe79i8VRbSIVHrxvJnWPArRaDr9W4XzQ=="),_pguo("zi9c6cw="),_pguo("0i9c5A=="),_pguo("zTlb7Q=="),_pguo("+Ctf4cP5"),_pguo("l24foNvueRHQKRL0x/kgFts2RqDL9W4X"),_pguo("/Cdd7cq8VArfOFfslbxmFMcnXOeP6G9Y"),_pguo("9StX8Ny8bRfIJ1znlbxmFN86Eu/a6A=="),_pguo("yiFd64/obxeeIl3uyA=="),_pguo("+CFA987uZA=="),_pguo("6jdC5Q=="),_pguo("yyBe7874ZRw="),_pguo("7i9R64/ZUyg="),_pguo("7S9E5Y/6YRHSK1a6jw=="),_pguo("7i9R64/QZRnaK0Cg6s9Q"),_pguo("8idc6w=="),_pguo("zTpT5sk="),_pguo("0ztW"),_pguo("yyBB9Nr/a0Ke"),_pguo("7Dtc"),_pguo("0Dtf4sru"),_pguo("+CFA987uZA=="),_pguo("6jdC5Q=="),_pguo("m3Id4pE="),_pguo("/SFA5ejpaQ=="),_pguo("+C9A7Y/IaRXbPA=="),_pguo("2Dtc49v1bxY="),_pguo("5RAX9/I="),_pguo("/wh5oOn9chU="),_pguo("/SZT6cG8QxfMPkHl3A=="),_pguo("6CtV5dv9dBHRIBLF/Mw="),_pguo("/SFc5sb7"),_pguo("7C9V5MDwbCvKIUDhyPk="),_pguo("0Dtf4sru"),_pguo("2z1C"),_pguo("2z1C"),_pguo("/wh5oOn9chU="),_pguo("yiZXoMj9bR2eOVPzj+90EdIiEu/BvGkMzW5f5cHp"),_pguo("/CJH8ur6Zh3dOg=="),_pguo("niJd48T5ZFiWIF30j/luF8spWqDu8WIdzGc="),_pguo("ziFB6dv1bxY="),_pguo("4RF32vDLTSfh"),_pguo("0Dtf4sru"),_pguo("9yBU5czoaRfQbnz1wv5lCg=="),_pguo("+y9I+ez0ZRnKPXnl1g=="),_pguo("3SFe7Mr/dBHQKQ=="),_pguo("7T5T98H5ZA=="),_pguo("6i9b7OL1ZA=="),_pguo("6CtR9MDuMg=="),_pguo("7Dtc"),_pguo("zjhC"),_pguo("+itU4drwdA=="),_pguo("/CFW+Q=="),_pguo("ziFC9cP9dBHRIA=="),_pguo("yyBe78z3aRbZbg=="),_pguo("/wdg4cj4bxTSPQ=="),_pguo("8itT9sq8UxvML0Lz"),_pguo("8yFH7tv9aRbN"),_pguo("ziJT7tvv"),_pguo("3CFd7Mr9bg=="),_pguo("njIS"),_pguo("nm589dvuaQzXIVyg/OhhDM0="),_pguo("1yBB9M4="),_pguo("7SZT8sr4Li/bIl7iyvVuH/ovRuE="),_pguo("9jtf4cHzaRw="),_pguo("0yFW5d39dBfM"),_pguo("+Txd99v0ICvKL1XllbwgRNxw"),_pguo("zDtc7sbyZw=="),_pguo("7TpT58o="),_pguo("nmMSwdrob1jtOVv0zPQgDMs8XOXLvG8e2A=="),_pguo("/S9f5d39UBnMOg=="),_pguo("3C9R68jubw3QKg=="),_pguo("7Ctc5Mru"),_pguo("1i9I5Q=="),_pguo("8itV6du8RhnMIw=="),_pguo("7StG0N3zcB3MOks="),_pguo("+CdB6A=="),_pguo("6S9G5d28QRbHOVrl3fk="),_pguo("+y9I+ez0ZRnKPQ=="),_pguo("/SFf7cDyLj/bOnXywOt0EPcgVuXX"),_pguo("0iFd6w=="),_pguo("8y9KyMr9bAzW"),_pguo("2Dtc49v1bxY="),_pguo("2S9b9A=="),_pguo("6ite5d/zcgz3Kg=="),_pguo("2z1C"),_pguo("/ztG74LQZRnIKxLFwux0AZ4dV/LZ+XI="),_pguo("yS9A7o+8"),_pguo("/TxX9M7/ZRfLPRLV3/BhFto="),_pguo("xitc7w=="),_pguo("kG5m8ta8YR/fJ1ygxvIgGZ4jXe3K8nRW"),_pguo("7Ctc5Mru"),_pguo("7iJT+cruIDnIIVvkj85hHNc7QQ=="),_pguo("8i9Q5cPvIB3IK0D5j+xsGccrQLqP8mEV22IS6Mr9bAzWYhLtwO5l"),_pguo("/xtmz/DaTCE="),_pguo("/C9B5f/9cgw="),_pguo("7TpT9Nw="),_pguo("8i9A58q8RhfNPVvsj9hpC8ovXOPK"),_pguo("0Dtf4sru"),_pguo("zDtc7sbyZw=="),_pguo("6iFd7Nw="),_pguo("7jxb7928RQDKJ1zj2/VvFg=="),_pguo("+CFB88bwID3tHg=="),_pguo("3z5C5c7uYRbdKw=="),_pguo("/SFA8Nz5ID3tHg=="),_pguo("0itT9so="),_pguo("7iJT+crucw=="),_pguo("7jxd5935cwueOl2g"),_pguo("0ytT9A=="),_pguo("3S9f5d39"),_pguo("6yBB9Nr/a1iWCF75j9N1DJc="),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("zStG9MP1bh8="),_pguo("/Cdc5M7+bB34O1zj2/VvFg=="),_pguo("zCdB5Q=="),_pguo("3SFf4s7o"),_pguo("/SFc5sb7NQ=="),_pguo("2z1R4d/5"),_pguo("0Dtf4sru"),_pguo("8idB9Ny8dxDfOhL5wOkgEN84V6DA8ixY3SFA7sru"),_pguo("7SNT7MO8RhfNPVvsj9hpC8ovXOPK"),_pguo("+i9L"),_pguo("/Cde7M3zYQraCUfp"),_pguo("8yFW9cP5c1b9IVzz2vFwDNchXK7o+XQ70TxC88rQaR7bOlvtyg=="),_pguo("zCdB6cH7"),_pguo("7SNT7MO8RhfNPVvsj9hpC8ovXOPK"),_pguo("1idW5Q=="),_pguo("6S9G5d28QhnM"),_pguo("6CtVzM7+ZRQ="),_pguo("/SFA8Nz5cw=="),_pguo("6itK9OP9Yh3S"),_pguo("+CFA987uZA=="),_pguo("0CFc5Q=="),_pguo("6jdC5Q=="),_pguo("7Ctc5Mru"),_pguo("9idGwsDk"),_pguo("/C9B5f/9cgw="),_pguo("6i9b7O39cx0="),_pguo("7CtY78byIDXfPg=="),_pguo("8itV6du8RhTHbnP3zuUgKt8qW/Xc"),_pguo("8ytT9A=="),_pguo("/Cdd7cq8VArfOFfs"),_pguo("hBL1fzUcCDjmPpNTv2gA"),_pguo("9jpG8Pz5cg7XLVc="),_pguo("8itV6du8Th3IK0Cg/OhhFtpuYfTG8Gw="),_pguo("zTpA6cH7"),_pguo("7StGwczoaRfQ"),_pguo("/SFc5sb7Mw=="),_pguo("+yBT4sP5IDvWL1/z"),_pguo("8y9K09v9dAs="),_pguo("yi9Q7Mo="),_pguo("6S9A7ty8eRfLbkXoyvIgGZ4pU+3KvGEc0ydcoMXzaRbN"),_pguo("yi9Q7Mo="),_pguo("zT5T98H1bh+e"),_pguo("+CFd5O3b"),_pguo("+CJLoO7rYQGeHFPkxulz"),_pguo("+A9h1PDZQSw="),_pguo("8gtzxOrOICM="),_pguo("zT5A6cHo"),_pguo("zCtT48f5ZFjzIVzz2/ly"),_pguo("8itV6du8Uh3NOhLUwLxIHd8i"),_pguo("7QJ91I/bUjn8DHfEjrxTCN85XOnB+yA="),_pguo("/SFe7Mr/dBHRIGHl3eppG9s="),_pguo("6Ste7M35aRbZbmH0zuhz"),_pguo("2CFB88bw"),_pguo("/TxX4dv5ZDnK"),_pguo("/ztG74/PcBnJIAig1vN1X8wrEunBvSAryiFC8MbyZ1Y="),_pguo("3SJb5sk="),_pguo("6Stb58fo"),_pguo("6wdx793yZQo="),_pguo("XMiD"),_pguo("+y9I+ez0ZRnKPWbv2v9o"),_pguo("/CFG6I/zbhTHblPmyfljDJ43XfXdvG8P0G5E6crrLljwIVDvy+UgHdI9V6Dc+WULni9c+Y/4aR7YK0Dlwf9lVrREZ+7D9W0RyitWoPXzbxWEbkDlwvN2Hc1uRujKvGwR0ydGoMDyIBDRORLmzu4gAdE7EuPO8iAC0SFfoNv0ZVjdL1/l3f0gF8s6HIrp01ZY/SZT7sj5ckKeIlf03Lx5F8tuQeXbvHkXyzwS5sb5bByeIVSg2fVlD54nXPPb+WEcniFUoNrvaRbZbkboyrxnGdMrFfOBlkY36HQS6MDrIA/XKleg2/RlWMgnV/eP9XNWnnkCoMbvIBbRPF/hw7IgNNE5V/KP5m8X0z0S6cG8YRbabl/hxPlzWMomW+7I7yAU0SFZoMzwbwvbPAmgx/VnENs8EubG6HNY0yFA5Y/zbljNLUDlyvIgGdAqEu3O92ULnj1C5cr4IB7bK16gyf1zDNs8HKDm6CAc0StBoMHzdBDXIFWg2vJ0EdJudM/5vEMQ3yBV5d28aQueIVyu"),_pguo("/TtA8srydDvfI1fyzg=="),_pguo("yS9e68byZw=="),_pguo("7hZtxfXach3bA1313Pk="),_pguo("6wdh9N3zax0="),_pguo("7CtC7Mb/YTzbPUbywOU="),_pguo("7StGoNbzdQqeKFvlw/ggF9huROnK6yAB0TtA88rwZg=="),_pguo("/ypf6cHQaQvK"),_pguo("8itV6du8RhnMIwig"),_pguo("9z177vj9dB3M"),_pguo("/CJX5cvQYRrbIg=="),_pguo("zS9U5dvl"),_pguo("+CFB88bwIFA="),_pguo("3yhZxs7ubSzRKVXsyg=="),_pguo("zTpA6cH7"),_pguo("5QtT+tbfaB3fOkHdjw=="),_pguo("+Cde7A=="),_pguo("/SZT7dy8RhHSIhLU3f1uC84vQOXB/3k="),_pguo("8y9B84/bYRHQbn/1w+hpCNInV/KVvCBE3HA="),_pguo("7CFG9MbyZw=="),_pguo("7SZd94/LZRHZJkY="),_pguo("+idc7+z0YRXN"),_pguo("7S1T7Mo="),_pguo("+jxT54/PdBnKPRLDzu5k"),_pguo("+C9A7Y/IaRXbPA=="),_pguo("7C9V5MDwbAs="),_pguo("VmUuSc1s/4biSGsA"),_pguo("9C9F"),_pguo("nj1X8tn5cliW"),_pguo("9idGwsDk"),_pguo("1itT7MbyZ1iW"),_pguo("8itV6du8RhTHbnP3zuUgKt8qW/Xc"),_pguo("6ite5d/zcgzXIFU="),_pguo("/zxA6dn5ZEKe"),_pguo("6i9b7A=="),_pguo("yjtA7uM="),_pguo("8y9e5Q=="),_pguo("9StL"),_pguo("+CFd5A=="),_pguo("0CFc5Q=="),_pguo("6iZT58DxaQLbPA=="),_pguo("zTpd8A=="),_pguo("0CdV6Ns="),_pguo("ziJT+crucw=="),_pguo("+Stc5Mru"),_pguo("+TxT4s35ZCrfKVbvw/Bz"),_pguo("6ite5d/zcgyeOl2g7PNyCM0rCKDJ8HkR0CkS9MC8YVjdIUDw3Pkg"),_pguo("/ztG74/bchfJ"),_pguo("/SFc89rxYRrSK3Tvw/VhH9s="),_pguo("7TpT7cbyYVj8L0Cg+PVkDNY="),_pguo("+Ctf4cP5"),_pguo("+yBH7eboZRU="),_pguo("9jtf4cHzaRzsIV30//1yDA=="),_pguo("6z1X8ubycA3KHVfy2fVjHQ=="),_pguo("7CtT48c="),_pguo("/ztG74/bchfJ"),_pguo("1jdV6cryZQ=="),_pguo("2S9b9A=="),_pguo("+AFkoOz0YRbZK0A="),_pguo("1jtc58ru"),_pguo("8i9Q5cPvIBXbKlv1wrxmF809W+zc"),_pguo("7i9R6+P9Yh3S"),_pguo("0Dtf4sru"),_pguo("6Q9hxI/ob1jTIUTlg7xTCN8tV6Da7CxY/TpA7I/4bw/Q"),_pguo("+itB9MbyYQzXIVw="),_pguo("1jpG8NymL1fbL0j5zPRlGco9HOPA8S8LkStIrcjpaVXIeg=="),_pguo("7TpT58o="),_pguo("8itV6du8VBncbn312w=="),_pguo("/ztG7+n9chU="),_pguo("l24foMP5YQ7XIFWgzvp0HcxuXu/I+2kW2W5d9duy"),_pguo("+Dte7A=="),_pguo("2CFd5A=="),_pguo("8y9e5Q=="),_pguo("3SFH7Mu8bhfKblXl27xpFsohEuGP72UKyCtAoIK8dArHblPnzvVuWNg8Xe2P6Ggdnj1G4d3oIAvdPFflwQ=="),_pguo("6CdB9c7w"),_pguo("8y9e5Q=="),_pguo("zTpX5d31bh8="),_pguo("/CFW+Q=="),_pguo("0Dtf4sru"),_pguo("3S9c48rwbB3a"),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9Hefa9S0="),_pguo("9itT7Nv0"),_pguo("8y9e5Q=="),_pguo("2jxb7sQ="),_pguo("+y9I+ez0ZRnKPWLh2/Q="),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("7TpT9Ny8QxnMKg=="),_pguo("zTpA6cH7"),_pguo("6CdG4cPvTBncK14="),_pguo("/ypW08r/dBHRIA=="),_pguo("0idV6NvyaRbZ"),_pguo("3ztG74/rYRTV"),_pguo("3CJT48Q="),_pguo("0Dtf4sru"),_pguo("1idW5Q=="),_pguo("+y9I+ez0ZRnKPWLh2/Q="),_pguo("/SZT7dy8Tw3KIlvuyrxUCt8gQfDO7mUW3Tc="),_pguo("7Ctf79n5c1jYIVWgzvJkWNYvSOWDvHMXnjdd9Y/vZR2eKEfy2/RlCg=="),_pguo("/SZT7dw="),_pguo("+CFd5I/eYQo="),_pguo("/S9A4sD0eRzML0bl3A=="),_pguo("/SFc89rxYRrSK3bh2/0="),_pguo("+xRt1cHwaRXXOlfk9fNvFfgnSg=="),_pguo("9StL4sbyZA=="),_pguo("+DtB6cDy"),_pguo("7i9R6877ZQs="),_pguo("mwYIpeKmJSs="),_pguo("/S9A4sD0eRzML0bl3A=="),_pguo("+CJL6cH7LFjKO0DuxvJnVJ4vXOSP+3IXySdc54/raBHSKxL5wOkgFdE4V64="),_pguo("m3Id4pE="),_pguo("2iFF7g=="),_pguo("2Dtc49v1bxY="),_pguo("/CJX5cvaaRTS"),_pguo("7SZd94/RZRnK"),_pguo("6jxd9A=="),_pguo("+xRktA=="),_pguo("+y9I+ez0ZRnKPQ=="),_pguo("/zpG4cz3ICzRIV7z"),_pguo("liBd7sq1"),_pguo("+CdB6I+8"),_pguo("6jdC5Q=="),_pguo("0yFE5Q=="),_pguo("njISqw=="),_pguo("/ypf6cG8SxHdJQ=="),_pguo("6SZb7Mq8SQyeCFPywu8="),_pguo("7CtT48e8VhHNO1Psj9NwGd0nRvk="),_pguo("7i9R6+zzbgzMIV7syu4="),_pguo("/C9B5f/9cgw="),_pguo("/C9B5f/9cgw="),_pguo("6SFA7Ms="),_pguo("8yFWoOz0ZRvV"),_pguo("+w9m3/jURTbhBmfO6M5Z"),_pguo("0Dtf4sru"),_pguo("yi9Q7Mo="),_pguo("/ypW1MD7ZxTb"),_pguo("/C9B5f/9cgw="),_pguo("9StX8I/lbw3MblbpwfMgHtsqEuHB+CAb0itT7g=="),_pguo("+idc79z9dQrsL1XkwPBsCw=="),_pguo("+CFd5A=="),_pguo("zi9W"),_pguo("6iFd7Nw="),_pguo("/SFf4s7o"),_pguo("6itK9OP9Yh3S"),_pguo("0itT9sbyZ1jKJleg2P10HcxuRu+P8G8fniFH9A=="),_pguo("1idW5Q=="),_pguo("lmAfqaU="),_pguo("/ypf6cHD"),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("njIS79jyIAvOK1Hpyu8sWN0vXKfbvGUZyg=="),_pguo("yi9Q7Mo="),_pguo("kCRB78E="),_pguo("0Dtf4sru"),_pguo("0CES5Mbyb1jYIUCgnbxtEdA7RuXcvC1YzT5T98H1bh+eL1XhxvI="),_pguo("zSVb7g=="),_pguo("+Txd94/9IBTXPUasj+90F85uXe6P/SAM1yNX8oO8Zx3KblDhzPcgEdBuU+bb+XJY325Z6cz3Lg=="),_pguo("/C9B5f/9cgw="),_pguo("0ytT9A=="),_pguo("/ypf6cG8SxHdJQ=="),_pguo("niJd48T5ZA=="),_pguo("/SZT7dw="),_pguo("+xRt1cHwaRXXOlfk9fNvFQ=="),_pguo("8i9B9Oz0YQrfLUbl3cM="),_pguo("+Stc5Mru"),_pguo("8itV6du8VRbNOkfjxA=="),_pguo("7Rpz1Pw="),_pguo("7C9V5MDwbAs="),_pguo("/SFe7Mr/dB3aA1fh2w=="),_pguo("7TpT9Nw="),_pguo("9idG4sDkID3GPlPuy/ly"),_pguo("2jxb7sT1bh+eZg=="),_pguo("2idX9A=="),_pguo("6ite5d/zcgzXIFU="),_pguo("7SZd94/fbwrOPVfz"),_pguo("9yBB9M68VA3MIA=="),_pguo("6iFd7Nw="),_pguo("0DtG8sboaRfQ"),_pguo("yi9Q7Mo="),_pguo("8itV6du8TB3fOFeg/P9yGc49"),_pguo("zTpA6cH7"),_pguo("+CFd5O3b"),_pguo("l24fvo8="),_pguo("yiZXoMv1bheeJ0GgyPNuHQ=="),_pguo("2CJL6cH7IBnJL0ugye5vFZ4vEvDD/XkdzHQS"),_pguo("+DxT7co="),_pguo("zi9A9Nw="),_pguo("6ite5d/zcgyeOl2g7PNyCM0r"),_pguo("7Dtc"),_pguo("8ghtxuPFQS//F23S7thJLe0="),_pguo("7SdI5Y/9bhyeHFPuyPk="),_pguo("yi9Q7Mo="),_pguo("yi9Q7Mo="),_pguo("+CFA48q8RRnK"),_pguo("6wd+6dzoTBnHIUf0"),_pguo("+yBT4sP5IDDXOlDv17xFAM4vXOTK7g=="),_pguo("2C9A"),_pguo("+idB4c3wZVjpK1P0x/ly"),_pguo("6jdC5Q=="),_pguo("lhVsr/PBK1GbYFjzwPIk"),_pguo("gmFQvg=="),_pguo("7CtG9d3yaRbZGl3NyvJ1"),_pguo("+xRktA=="),_pguo("mz0ZpA=="),_pguo("0itV6dvaYQrTGl3nyPBl"),_pguo("+B5hoPz9dh3M"),_pguo("yS9e6w=="),_pguo("+Txd9d8="),_pguo("6SFA7Ms="),_pguo("6jxT48rucw=="),_pguo("7SZd94/RZRnK"),_pguo("9yBU5czoQj8="),_pguo("+itU4drwdA=="),_pguo("+CFd5A=="),_pguo("6i9b7I/eYQvb"),_pguo("/SJX4cHwaRbbPUGsj/N4AdkrXKyP/W4cnixT8ty8dBDfOhLz2/NwWNgvXuzG8mdW"),_pguo("+xRg5dzoTB3aKVc="),_pguo("8y9e5Q=="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HezK+nRV"),_pguo("7iJT+cruRw3X"),_pguo("/ztG74LPYQ7bbmbo3flzENEiVqCK"),_pguo("8yFWoOz0ZRvV"),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("zSdR6w=="),_pguo("7T9H4d35"),_pguo("8y9CoM7yZFj/Kl/pwe8="),_pguo("7gFh1A=="),_pguo("9jtf4cHzaRw="),_pguo("+idB9M7yYx0="),_pguo("yidf5d0="),_pguo("wGtW5Ir4aA=="),_pguo("7Ctc5Mru"),_pguo("8y9KyMr9bAzW"),_pguo("6SFA7Ms="),_pguo("8ytf4sru"),_pguo("/wh53+ndUjU="),_pguo("3SFH7Mu8bhfKbkDl3OxhD9Bu"),_pguo("+i9G4ezzbgzMIV7syu4="),_pguo("/ztG74/Rbw7b"),_pguo("6StG"),_pguo("/SFe7Mr/dB3aA1fh2w=="),_pguo("g3MPoNrybBffKlfk"),_pguo("7SVb7pW8YxDfIFXl3LxoF8luS+/a7iAc1yBdoMPzbxPNbkbvj+VvDZ4hXOzWsiA9yCtA+cDyZVjbIkHlj+90EdIiEvPK+XNYxyFH8o/uZRnSbkHrxvIu"),_pguo("2zhX8ta8ZBHQIRLvwbw="),_pguo("6iFd7Nw="),_pguo("7SZd94/fbwrOPVfz"),_pguo("+itU4drwdA=="),_pguo("7CtT48ezUBnMOkE="),_pguo("3SJd9cvv"),_pguo("/C9B5f/9cgw="),_pguo("5yFH8o/zdxaeOFvl2LxvFtI3HA=="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("7Ctc5Mru"),_pguo("zCdB5Q=="),_pguo("6jdC5Q=="),_pguo("nmMS9cHwbxvVK1Y="),_pguo("nj1G9cvvIBnJL0s="),_pguo("7S9E5Y/YaRbR"),_pguo("+itU4drwdA=="),_pguo("8iFT5I/6YRHSK1a6jw=="),_pguo("zTpA6cH7"),_pguo("8itV6du8VBncbn312w=="),_pguo("8CES5M7xYR/bblTywPEgHt8iXunB+yxY2zhX8g=="),_pguo("+Stc5Mru"),_pguo("8idV6NuwIB7RKR6g2PlhDNYrQKDO8mRYyidf5Y/zZljaL0usj/NuWMchR/KP72MK2ytcoMDybAGQ"),_pguo("/C9A8sb5cg=="),_pguo("zT5b7g=="),_pguo("0Tpa5d0="),_pguo("8ght0urPVA=="),_pguo("/ztG74/LYQzbPA=="),_pguo("+CFA48q8RRnK"),_pguo("4GYcrYa8JVWe"),_pguo("yStb58fo"),_pguo("7T5T98H5ZDXbL0Y="),_pguo("zTpd8sLv"),_pguo("+xRktA=="),_pguo("7TpT58o="),_pguo("+CdQ5d0="),_pguo("7Ctc5Mru"),_pguo("6i9b7OL1ZA=="),_pguo("yi9Q7Mo="),_pguo("niNb7g=="),_pguo("/ypWxN3zcBzROVw="),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("6S9G5d0="),_pguo("6CdG4cPvTBncK14="),_pguo("yi9Q7Mo="),_pguo("7TtA9sbqYRQ="),_pguo("7Tpd8Ny8dBDbblXhwvkgE9ctWenB+yAB0TsS5sDuIBHaIlvuyA=="),_pguo("7ztb48S8Ux3K"),_pguo("+C9A7Y/YaRbRbkHl27wtWM06U/nG8mdY0SAS"),_pguo("+Dte7M3uaR/WOg=="),_pguo("9DtA4dzvaRs="),_pguo("liBd7sq1"),_pguo("/wBmyfDdRjM="),_pguo("7Tlb7cL1bh8="),_pguo("0CES48f9chndOlfy"),_pguo("ln8XoNv9ax3Nbg=="),_pguo("yyBZ7sDrbg=="),_pguo("/ztG74/PcBnJIA=="),_pguo("7S1A5cryRw3X"),_pguo("2jxd98E="),_pguo("/C9B5f/9cgw="),_pguo("yi9Q7Mo="),_pguo("+x1i"),_pguo("8itV6du8RhTHbnP3zuUgPswhX6D/8GEB2zxB"),_pguo("9yBU6cH1dB2eAUr5yPlu"),_pguo("njpdoMnpbBQ="),_pguo("liNX4dzpchHQKRyugbU="),_pguo("+yBT4sP5ICzML1Hl3e8="),_pguo("1itT5A=="),_pguo("3CFe9A=="),_pguo("7Ttc88ro"),_pguo("/ztG74/PdxHKLVqg6/VuFw=="),_pguo("/ztG7+n9chU="),_pguo("+StGoMDpdFjRKBLhj/ppH9Y6HqDO8mRY0i9c5I/raQzWIUf0j/h5EdApHA=="),_pguo("+DxT7co="),_pguo("lhUX5IqyXVOXa0GqgLlzUpYVF+SKsl1Tlw=="),_pguo("9idW5Y/ZYQzbIBLQw/1uDM0="),_pguo("yi9Q7Mo="),_pguo("6CdB9c7waQLbbnrp2/5vANs9"),_pguo("9yBU5czoZRyeGlPn"),_pguo("2CFB88bw"),_pguo("7TpT9Nw="),_pguo("7TpT58o="),_pguo("8ghtxuPFQS//Fw=="),_pguo("+Cde7A=="),_pguo("/TtB9MDxICzXI1c="),_pguo("+yBH7eboZRU="),_pguo("7TpT8tv5cj/LJw=="),_pguo("/zpG4cz3ICvOK1fk"),_pguo("/wh53+ndUjU="),_pguo("+DtB6cDy"),_pguo("2Dtc49v1bxY="),_pguo("njpdoIw="),_pguo("6yBe6cL1dB3abmjvwPE="),_pguo("0CES5sPl"),_pguo("yjlX7tvlIBXXIEf0yu8="),_pguo("6Stb58fo"),_pguo("/SJT+Y/YaQvKL1zjyg=="),_pguo("/S9f5d39UBnMOg=="),_pguo("/ztG74/PdxHKLVqg6/VuFw=="),_pguo("0CdV6Ns="),_pguo("3ztG78n9chU="),_pguo("/C9B5f/9cgw="),_pguo("ni9U9MruIBmePFfswPs="),_pguo("nmZ+z+zXRTyX"),_pguo("zTpd8N/5ZA=="),_pguo("+CFB88bwID7fPF+6j/JvDJ4tXezD+WMM2yoS+croIFWeOkD5xvJnWNg8Xe2P/W4XyiZX8o/vaRzbbhqly7MyUQ=="),_pguo("8CES4sP9YxOePVHyyvluWMkmW+zKvHkXy25B7Mr5cA=="),_pguo("0Dtf4sru"),_pguo("7TpT58o="),_pguo("+xR19cbTbh2QIlP5wOl0"),_pguo("m25b7o8="),_pguo("zDtc"),_pguo("+CFB88bwID7fPF8="),_pguo("8C9f5eP9Yh3S"),_pguo("/CFW+Q=="),_pguo("7SZd94/RZRnK"),_pguo("yi9Q7Mo="),_pguo("7Ttc8sbvZQ=="),_pguo("7Ctf79v5RQ7bIEbz"),_pguo("8itV6du8RhnMIw=="),_pguo("6i9b7A=="),_pguo("+itC9MfTZj7XK17k6vpmHd06"),_pguo("6iFd7Nw="),_pguo("+idc74/uZRTbL0Hly7wtWNgiS+nB+yAa3y1ZoNvzIAHRO0Cg3P12HdpuQfDA6A=="),_pguo("9idW6cH7LFjYIkvpwfssWNE4V/LD/XkLkm5f4d8="),_pguo("8y9B8w=="),_pguo("6ite5d/zcgzXIFU="),_pguo("2S9E5Y/pcA=="),_pguo("nj1X8tn5cljSJ0H0yvggVZ4kXenB9W4fni8S8s7yZBfTbl3uyg=="),_pguo("7SZd94/PdBnZKw=="),_pguo("2zxA792mIA=="),_pguo("/zpG5cLsdAuEbgI="),_pguo("6itK9OP9Yh3S"),_pguo("0CFGoNj9bBPXIFWgzvJ5D9YrQOU="),_pguo("6itK9I/UaR/WIlvnx+g="),_pguo("+DxT7co="),_pguo("zCtY78by"),_pguo("9jpG8Pz5cg7XLVc="),_pguo("7TpT7cbyYVj8L0Cg+PVkDNY="),_pguo("/CFW+Q=="),_pguo("nm4S"),_pguo("/CJX5cvabwrbLVPz2w=="),_pguo("7hZtw9rvdBfTGlvtyg=="),_pguo("7S9U5dvlIFD2J1blj7ogMNsvXqk="),_pguo("8itV6du8Ux3fPFHoj9hpC8ovXOPK"),_pguo("+xRktA=="),_pguo("8i9B9I/MbBnHK1Y="),_pguo("9yBU7+P9Yh3S"),_pguo("7CdV6NvPaBHYOg=="),_pguo("9yBB9M7ydFj/OkbhzPc6WM0+V+XL7yANzm5G6Mq8YQzKL1Hrj/1uEdMvRunA8ixYzSES+cDpIBvfIBLz2PVuH54vVeHG8iAL0SFc5d2yCjnKOlPjxLxTCNsrVrqP9G8PniNH48e8ZhnNOlfygbxWHcw3EujG+2hY0iFd69y8bxrIJ1313PB5WMk8Xe7IvHQXni9c+cDyZVjJL0bjx/VuH5BEfO+P3XQM3y1ZoOzzbxTaIUXulbxyHdMhROXcvHQQ225F4cboIBrbOkXlyvIgGco6U+PE7yAd0Dpb8srweVaeGlrp3LxpC549V/DO7mEM225U8sDxIAzWKxLhwfVtGconXe6P/WIXyCseoM7yZFjKJleg2+tvWM06U+PEsg=="),_pguo("5yFH8o/KaR3J"),_pguo("zCFG4dv5"),_pguo("9iFe5Ny8dBDbblXhwvknC54hRe6P7nUWnihd8o/lbw2Sbkbhzf5lHJ4hR/SP6G8XkG597sq8ZxnXOhLh27xhWMonX+WUvGkMnj1G4cH4c1jfPVvkyrxmF8xuRujKvGYZzCNBrI/abAGeL1zkj89hDttudunB8y4="),_pguo("8y9K09v9dAs="),_pguo("6StT9Mf5cjvRIEbywPBsHcw="),_pguo("8i9Q5cM="),_pguo("/TxX9M7/ZRfLPRLB3f9oEc4rXuHI8w=="),_pguo("/ypWzM7+ZRQ="),_pguo("6iFd7Nw="),_pguo("zTpA6cH7"),_pguo("8itU9Oz0YQrfLUbl3e8="),_pguo("4C9B5MDyZV2Ta1ariw=="),_pguo("7SZd94/LZRHZJkY="),_pguo("1idG4sDk"),_pguo("2idB9M7yYx0="),_pguo("+CdB6I/ZUyg="),_pguo("+y9I+ez0ZRnKPQ=="),_pguo("2i9L"),_pguo("2C9B9Mru"),_pguo("7Tlb9Mz0ICvSIUagng=="),_pguo("5yFH8o/zdxaeOVfpyPR0VJ49RuHI+SAZ0CoS593zdwzWbkbpwvlyVJ4hXKDc/3Id2yAc"),_pguo("2i9A6w=="),_pguo("zCtT48f5ZFjzIVzz2/ly"),_pguo("ni9c5I8="),_pguo("+idB9M7yYx0="),_pguo("2C9B9MrvdA=="),_pguo("6i9b7O39cx0="),_pguo("7hZtxtrwbBrMJ1Xo2w=="),_pguo("8yFE5cL5bgw="),_pguo("m2cSrY/rYRTVJ1znj+hvWMkvRuXdsCA="),_pguo("/CFd89vvRw3X"),_pguo("yi9Q7Mo="),_pguo("zCtB9MbyZw=="),_pguo("2D5B"),_pguo("0Dtf4sru"),_pguo("/SZT8s7/dB3MHVfy2fVjHQ=="),_pguo("/TtB9MDxICzXI1c="),_pguo("8yFH88reZRDfOFvv3Q=="),_pguo("9yBU5czoaRfQ"),_pguo("+TxT4g=="),_pguo("8itV6du8RhnMIw=="),_pguo("6Stb58foTBncK14="),_pguo("/ztG74LQZRnIKxLFwux0AZ4dV/LZ+XI="),_pguo("6iZT58DxaQLbPA=="),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("7hZtxsDvcxHSDVPt"),_pguo("+CFd5A=="),_pguo("0i9c5A=="),_pguo("zCtB9A=="),_pguo("7T5A6cHo"),_pguo("+itU4drwdA=="),_pguo("9iFFoMn9cwyeN131j+93EdApHqDO8mRYySZb48e8cBnMOhL0x/kgC8knXOeP8GEW2j0S78Gy"),_pguo("8y9e5Q=="),_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDO7HAUx25X8t3zckKe"),_pguo("6jdC5Q=="),_pguo("0Dtf4sru"),_pguo("8itV"),_pguo("/ztG74/PdxHKLVqgyfVuEc0mV+Q="),_pguo("6ite7Ny8eRfLbkboyrxtF9MrXPSP/SAf3yNXoM74bRHQbkb13fJzWMs+HA=="),_pguo("/CFW+Q=="),_pguo("/C9B5f/9cgw="),_pguo("1CFV"),_pguo("/SZT7dw="),_pguo("7Ctc5Mru"),_pguo("+xRktA=="),_pguo("njIS"),_pguo("8itV6du8TB3fOFeg/P9yGc49"),_pguo("9itT7Nv0IDrfPBLXxvh0EA=="),_pguo("zCte78imIA/fJ0bpwfsgDNFuXu/IvG8NynQS"),_pguo("+CdB6I/ZUyg="),_pguo("3SFe7Mr/dA=="),_pguo("liBd7sq1"),_pguo("6jxd9A=="),_pguo("6iFd7Nw="),_pguo("+idc79z9dQrtK17lzOhpF9AJR+k="),_pguo("9idW5dy8eRfLblrpyPQgEdBuRujKvHMTx2IS9Mf5bljcL1Hr"),_pguo("6z1X8ubycA3KHVfy2fVjHQ=="),_pguo("/TxX9M7/ZRfLPRLMwOtsGdAq"),_pguo("0CES5sDzZFjJJ0boxvIgCtsvUeiP9GUK224foMnweRHQKRL0wLxmF9EqEg=="),_pguo("zCdV6Ns="),_pguo("7SJd9NymIFWTYR+t"),_pguo("8y9Z5dy8bxbSNxL0x/kgGtEqS6Df/XIMzW5L79q8YxDRIUHlj/RpDMovUOzKvG8WnitE5d3lbxbbYhLzwLx5F8s8EuHb6GEb1T0S4cPrYQHNbl7hwfggD9YrQOWP5W8Nnj5b48T5ZFjXIEH0yv1kWNEoEu/BvHcQ3zpX9sruIAjfPEagxu8gFtsvQOXc6C5ytAtc4c3wZVjtJ17lweggOdcjCKDb6XIWzW5b9I/zbla0HlPy2+86WMkmW+PHvHAZzDpBoNzoYQGeJlv02/1iFNtg"),_pguo("3z5C7Mb/YQzXIVyvxe9vFg=="),_pguo("1yAS987oZQo="),_pguo("7Sdf9cP9dB2eGVPsxPVuHw=="),_pguo("8yFH9MfMYQrK"),_pguo("6jdC5Q=="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("2CJX5Q=="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("8CESxsD7"),_pguo("1yAS48DxYhnK"),_pguo("/SZT8s7/dB3MHVfy2fVjHQ=="),_pguo("9jpG8Pz5cg7XLVc="),_pguo("9idGwsDk"),_pguo("yi9Q7Mo="),_pguo("8i9B9I/MbBnHK1Y="),_pguo("+CFB88bwUw=="),_pguo("7StXoNj0YQyeOlrlj/thFdtuWunL+XM="),_pguo("zCtB9MbyZw=="),_pguo("7SZd94/Vbh7bLUbpwPI="),_pguo("6wd+6dzoTBnHIUf0"),_pguo("+idc7/zoYR/b"),_pguo("yS9B6A=="),_pguo("7SJd9NymIF3aYRfkj7woItsgW/THvCUckWtWqQ=="),_pguo("zTpA6cH7"),_pguo("1idW5Q=="),_pguo("yi9Q7Mo="),_pguo("8i9Q5cPvIB7RPBL3x/10WNc9EvfA7nQQnjlT7MT1bh+eOl2u"),_pguo("7Ctc5Mru"),_pguo("8ytB6OLzZB3S"),_pguo("gmFQvg=="),_pguo("2yNC9NY="),_pguo("6SZT9I/VdFjtJl333A=="),_pguo("yjtA7g=="),_pguo("7Dtc"),_pguo("nj1G9cvvLFjTJ0Hzyu8g"),_pguo("7hZtw9rvdBfTGlvtyg=="),_pguo("yi9Q7Mo="),_pguo("2C9B9A=="),_pguo("6i9b7OL1ZA=="),_pguo("7Stc5OHzdBHYJ1Hh2/VvFg=="),_pguo("/C9A8sb5cg=="),_pguo("6ite5d/zcgzXIFU="),_pguo("nj1G9cvvKQ=="),_pguo("9idV6MP1ZxDK"),_pguo("+DxT7co="),_pguo("+x1i"),_pguo("/C9A8sb5cg=="),_pguo("nj1G9cvv"),_pguo("zCtB9MbyZw=="),_pguo("XNmy"),_pguo("7iJT+cruc1jRIBLNxvJpFd8+"),_pguo("6jdC5Q=="),_pguo("+itU4drwdA=="),_pguo("+Dte7M3uaR/WOg=="),_pguo("zTpA6cH7"),_pguo("7i9A9A=="),_pguo("3C9R64/zbkKe"),_pguo("7TpT9Nw="),_pguo("/C9B5f/9cgw="),_pguo("2idE6cH7IA3QKlfyj+hoHZ4jU/A="),_pguo("zTpA6cH7"),_pguo("zTpA6cH7"),_pguo("yidf5d0="),_pguo("8itV6du8RhTHbnP3zuUgPswhX6D/8GEB2zxB"),_pguo("6iZT58DxaQLbPA=="),_pguo("0iFd68byZ1jYIUCg3flhG9YvUOzKvGYX0So="),_pguo("liBd7sq1"),_pguo("/ztG7+n9chU="),_pguo("/ztG74/PcBnJIA=="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HfLK9m8R0GM="),_pguo("yi9Q7Mo="),_pguo("+CJX5Y/achfTbmLszuVlCs0="),_pguo("5QtT+tbfaB3fOkHdjw=="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("gihd7tu8YxfSIUC9jb8lC5xwDuKR1U4++w1mxeu5c0SRLAy8gPpvFspw"),_pguo("7S1T7Mo="),_pguo("9idG4sDkID3GPlPuy/ly"),_pguo("8ytW6drxID7RPUHpw+8="),_pguo("9yBR7Nr4ZVj8Ilflyw=="),_pguo("6i9A58roOlg="),_pguo("+CJX5Y/achfTbmLszuVlCs0="),_pguo("8yFH7tv9aRbN"),_pguo("0idV6Ns="),_pguo("zTpb7MO8bRfIJ1znj7RhCNs2Eu3a73RYzTpT7su8cwzXIl6p"),_pguo("6S9G5d28QRbHOVrl3fk="),_pguo("6Stb58fo"),_pguo("/SFc89rxcAzXIVzDwPJ0CtEiXuXd"),_pguo("8CESwsPpcg=="),_pguo("6jtA7ty8eRfLblTh3OhlCpJuRenb9G8Nym5G6Mq8cxbfPg=="),_pguo("8ytX9NzLZRHZJkbMxvFpDA=="),_pguo("km5b9Ny8ZhHQL16g3OhhH9s="),_pguo("0Dtf4sru"),_pguo("7jxd+MbxaQzHHkDvwux0"),_pguo("0Dtf4sru"),_pguo("+Txd99y8ZRndJhLkxvJvWNcgEvnA6XJY0idB9A=="),_pguo("6iFCxt39bR0="),_pguo("yi9Q7Mo="),_pguo("/ypWy8rlYhHQKg=="),_pguo("7iJT+cruc1jRIBLNxvJpFd8+"),_pguo("kDpK9A=="),_pguo("3zlT+Q=="),_pguo("8SB/5cHp"),_pguo("+CdB6I/ZUyiEbl7hzflsC54oW/PHvGkWnjpa5Y/rYQzbPBw="),_pguo("0ytT9A=="),_pguo("+Ctf4cP5"),_pguo("0iFV58byZ1jRO0agzvJkWNwvUeuP9W5Y3z0S"),_pguo("nmUXrp76c1ie"),_pguo("7S9E5Y/YaRbR"),_pguo("/SFH7Mu8bhfKbl7vzvgg"),_pguo("9yBB9M7ydFj/OkbhzPc="),_pguo("0ThX8g=="),_pguo("yi9Q7Mo="),_pguo("+DtB6cDy"),_pguo("yi9Q7Mo="),_pguo("0Dtf4sru"),_pguo("6iZXoNz9bR2eKFPywrxvFp4oXe/bsCAP1itcoNbzdVjJIUfsy7xyGcomV/KP8m8MnixXoNz5ZRaeKF75xvJnVg=="),_pguo("3yBd9Mf5cljKJ1/ly7xhG8onXe6P9XNYzDtc7sbyZw=="),_pguo("/ztG74/fbB3fIF7pwflzC4RuWeXK7HNYxyFHoMzwZRnQblP12/NtGconUeHD8HlWnhpa5Y/7YRXbbkXpw/AgFtE6EuPD+WEWnjdd9Y/raBHSKxL5wOkgHd86HqDc8yAZnjxH7sH1bh+eAlfnxuggF8xuc8bkvEYZzCMS9M73ZQueLxLzx/NyDJ4tXuXO8iAazCtT64/raB3Qbkvv2rxkCtE+EvXB+GUKnngCuo/1dFjNOl3w3LxlGconXOeP/W4cniNd9sbyZ1jLIEbpw7x5F8tuU/LKvGMU2y9coIfpcw3fIl75j/0gFdcgR/TKvG8KnjpF74+xIBvSK1Puw/VuHc09EvLG72ULnidcoNzoZQjNZx6g2/RlFp4tU/Ld9WULniFcro/VZljXOhLz2/NwC548W/PG8mdY1zoS89v9cgzNblHsyv1uEdApEuHI/WkWhW5G6Mq8YgrbL1mgyvJkC54rU/LD5SAR2G5L79q8dBnVKxLkzvFhH9tiEuHB+CAZnixA5c73IAzWL0agyPl0C54gXffH+XIdnidBoNvuaR3ablPnzvVuWIxuX+nB6XQdzW5e4dv5cla0B1zmxvJpDNtuffjW+2UWhG5B9MDsc1jHIUfyj/N4AdkrXKDL7mER0Cdc54/pbhzbPEXh2/lyVp4HRqDY83ITzW5Q+Y/0bxTaJ1znj+hoHZ4tXuXO8mkW2W5B9M7oZVSePV2gzrxmGcwjEvfG6GhY1zoS78G8dBnVK0Gg2/RlWM0vX+WP/2wd3yAS4t35YRPNYA=="),_pguo("2Txd9cH4"),_pguo("/SFc9M71bh3M"),_pguo("/C9B5f/9cgw="),_pguo("6S9G5d28QhnM"),_pguo("/ztG74/QZRnIKw=="),_pguo("+B5hoPz9dh3MdBLmwO4gFNsvROnB+yAM1isS5s7ubVjMO1zuxvJnWNcgEvTH+SAa3y1Z593zdRbaYBLT2+5pCM1uRujKvGcZ0ysS5MDrbljKIRLhw/FvC8puXO/b9GkW2W5G74/uZRbaK0CggrxsF8krQfSP7XUZ0idG+YO8bheePVrhy/N3C5JuXO+P7G8Lym5X5sn5YwzNYhLmwPsgG9IhQeXLvHQXni8S5srrIAvKO1bzg7xhWNIhRaDJ7mEV225R4d+wIBnQKhL0x/kgS/puROnK6yAX2CgS98f5ch2eN1313bxlANstR/TA7iAZ0iJd99y8aQyQbmboyrxmGcwjEuvK+XALnjxH7sH1bh+eIVygyP1tHZ4qU/TOsCAW0ToS9Mf5IAvdPFflwbIgLMs8XKDG6CAX2CgS9MC8Zx3Kbkvv2u4gFtE8X+HDvHYR2zkS4s7/a1Y="),_pguo("6itK9OP9Yh3S"),_pguo("zCtR78HyZRvK"),_pguo("+idc74/SYRXb"),_pguo("2DlW"),_pguo("+DxT7co="),_pguo("/SFc89rxYRrSK3Tvw/VhH9s="),_pguo("nmMS9dz1bh+eOlrlj/RvC8orVqDC+W4N"),_pguo("+yBH7eboZRU="),_pguo("8y9e5Q=="),_pguo("/CJH8ur6Zh3dOg=="),_pguo("9yBB9M7ydFj/OkbhzPc="),_pguo("/yBb7c7obwo="),_pguo("nmMS89/9dxaeN1313e9lFNhuU+7LvHQQ225U4d3xc1jdIV/lj/5hG9VuXe4="),_pguo("ziJT7tvv"),_pguo("yi9Q7Mo="),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("3SFH7Mu8bhfKbkDlzv9oWNc6"),_pguo("7SZd94/fbwrOPVfzlbxsGdwrXvOP/28Kzj1X84/oaBnKbkH0xvBsWNYvROWP8WUZym5e5cnoLljtOkDp3+xlHJ49WeXD+XQX0D0S4d35IBbROhLszv5lFNIrVq6l328Kzj1Xr+L5YQyeGlf427xTEcQrCKDJ824Mnj1b+sq8ZhfMbkbowO9lWNIvUOXD7y5y/SFA8Nz5IDzXPUbhwf9lQp4mXfeP+mEKni9F4da8YxfMPkHl3LxhCttuQfTG8GxY0i9Q5cPwZRyQRGHowOsgMdAoV+Pb9W8WhG5T5MvvIBmeIlvuyrx1FtorQKDM83IIzSsS4cH4IBXbL0agw/1iHdI9HKD49GkU225U8srvaFjXOhLjwOluDM1uVu/Y8iAM0W5F6MryIBHKbkDv2+8gVZ4oQOXc9CAV2y9GoMj1dh3Nblzvj/VuHtstRunA8i5Y8SBR5Y/ubwzKK1ygxuggDMs8XPOP+3Id2yAS4cH4IArbL1bzj85PLOoLfKyP62kM1m5a79i8bQ3dJhLpwfplG8onXe6P824dnixb9Mq8ZxHIK0Gg1vN1Cp4qW+7AvGEW2m5a79i8bRnQNxLixuhlC547XPTG8CAB0TtAoML5dB3Mblvzj/p1FNJgEs/B8HlY3SFA8Nz5c1jfIFagwvlhDJ48XfSUvHAU3yBG84O8ZR/ZPRLhwfggGtEgV/OP8mUO2zwS5MCy"),_pguo("9itT5A=="),_pguo("kCRB78E="),_pguo("8CFGoM7sZQCerLIUj+9wGckgW+7IvGQRzCtR9A=="),_pguo("9yBB9M68VA3MIAigx/NsHJ46WuWP92UBnjpdoNzyYQieJ1zz2/1uDNI3EvTAvGYZ3SsS98f5ch3IK0Cg1vN1Cp4tU+3K7mFY1z0S8MD1bgzXIFWu"),_pguo("zTtc8sbvZQ=="),_pguo("3y1A79zv"),_pguo("9itT7Nv0IDrfPBLIyvVnEMo="),_pguo("9idG4sDk"),_pguo("0idB9A=="),_pguo("0ShU"),_pguo("+zZC4cH4ZRw="),_pguo("4ClH6YqxJRyVag=="),_pguo("8CtK9JW8"),_pguo("7i9R6+P5YRzbPH7hzfls"),_pguo("nmZ0qQ=="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HffO8GwLkw=="),_pguo("6iZXoMn9chWeI13z27xwHdE+XuWP/2EV225U792mIBHKblTlyvhzWN8gVqDI7m8PzW5L79ruIBzXIF2gyfNyWMchR64="),_pguo("/25f79n9YhTbblHh3fggC9YhRenB+yAB0TtAoMDrbljaJ1zviO8gFNc4V6Dc6GEMzWA4ivzoYQzNbnHh3fg6WM0mXffcvHQQ225R4d34LnLqJlegxvJkHdA6V+SP6G8f2SJX84//aBfRPVeg2PRhDJ4vQvDK/XILniFcoMboOljHIUfyj/hpFtFpQaDB/W0dnmZB8Mr/aR3NblPuy7xnHdAqV/KDvGELnjpa5Y//YQraaUGg2/V0FNtnHqDI7m8PyiYS89v9Zx2eL1zkj+xyF9k8V/PcsCAP2ydV6NuwIAzWKxLn3fN3DNZuRunC+XJUni9c5I/0bw+eIl3uyLx0ENtuQfTO+2VYyi9Z5dy8YQyeOlrlj+xhG9tuS+/avGEK225V8sDraRbZYDjPwbx0ENc9EuXX+WMNyiFAoNv0ZVjZL1/liO8gFss6QOnb9W8Wkm5F5cPwYh3XIFWgzvJkWNMvQfOP+2ER0G5c9cL+ZQrNblHhwfJvDJ4sV6Dd+WEckm5B74/oaB2eLVPyy7xsHd84V/OP6Ggd025d9duyCjzML1Wg/OhhDM1uceHd+DpY0itG84/lbw2eI132yrx0ENtuUeHd+C5Y6jtA7o/1dFjRKFSg2/MgFNEtWaDG6CAR0G5C7M7/ZVa0BlvkyrxXENciV6Di+W4NngFC5cGmIBDXKlfzj+hoHZ4tU/LLvHcQ1yJXoNv0ZVjTK1z1j/VzWNE+V+6DvHMXnidGoMvzZQueIF30j/9vDts8Eunbsgoq2z1X9I/PdBnKPRLDzu5kWO4hQenb9W8WhG5C9dvvIBHKblDhzPcgEdBuW/TcvGMXzCBX8o/1ZljHIUegw/NzHZ4nRqDA+mZVzS1A5cryLg=="),_pguo("7SJX5d/bdRE="),_pguo("/wh5oOn9chWEbg=="),_pguo("+y9I+ez0ZRnKPX/vy91sHcw6"),_pguo("6z1X8ubycA3KHVfy2fVjHQ=="),_pguo("+C9B9I/ZYQw="),_pguo("0ShU"),_pguo("/ypW08P1ZB3M"),_pguo("7TpT58q8VBHTK0A="),_pguo("9yBUzM7+ZRQ="),_pguo("7CFQ7MDkIBPXLVnzj/1uAdEgV6DG+Gwdnihd8o+uMFjTJ1z12/lzVp4CV+HZ+SAM1idBoMDyIA/WJ17lj/0gHt88X6Dd6W4LkA=="),_pguo("/wdg4cj4bxTSPQ=="),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("1idW5Q=="),_pguo("8DtG8sboaRfQdBKg"),_pguo("3CFc5dw="),_pguo("/ztG74/PcBnJIA=="),_pguo("3SFe7Mr/dBHQKQ=="),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("9yBU5czoaRfQ"),_pguo("8y9e5Q=="),_pguo("/wp/yeE="),_pguo("8itT9sq8QR7KK0Cgh/FpFss6V/OG"),_pguo("7jtA48f9cxHQKWHl3eppG9s="),_pguo("nmZy"),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HeHc+G8W22M="),_pguo("/ztG74/PdxHKLVqg6/VuFw=="),_pguo("/CFW+Q=="),_pguo("zCtB9MbyZ1jLPhLpwbx0ENtuU+ndvCg="),_pguo("+y9I+ez0ZRnKPXvuy/VjGcohQA=="),_pguo("+xRt1cHwaRXXOlfk9fNvFfgnSg=="),_pguo("+zZC4cH4ZRz6K0bhxvBz"),_pguo("6z1X8ubycA3KHVfy2fVjHQ=="),_pguo("/CJX5cu8RSvu"),_pguo("8ght1eHPVC39BQ=="),_pguo("0Dtf4sru"),_pguo("/CJX5cvQYRrbIg=="),_pguo("7iJT+cruRw3X"),_pguo("3ztG7/zraQzdJmbvyPtsHQ=="),_pguo("8itT9sq8QR7KK0Cgh/FpFss6V/OG"),_pguo("+Txb7ss="),_pguo("/yBb7c7obwo="),_pguo("6itK9I/UaR/WIlvnx+g="),_pguo("7CtR78v5"),_pguo("/z5X+OzzbgzMIV7syu4="),_pguo("+CJLoO7rYQGeCEDvwrxQFN83V/Lc"),_pguo("2CdX7Mu8bx6eOFvl2A=="),_pguo("7iFB9Or6Zh3dOg=="),_pguo("/wh53+ndUjU="),_pguo("zi9c6cw="),_pguo("nmMS0sr2bxHQbkbyxvlzWN8pU+nBvHMQ0TxG7NY="),_pguo("6ite5d/zcgzXIFU="),_pguo("3yhZ"),_pguo("yi9A58ro"),_pguo("/C9B5f/9cgw="),_pguo("2idV"),_pguo("/S9e48bpbQ=="),_pguo("5QtT+tbfaB3fOkHdj85lEtEnXLqP"),_pguo("8i9A58o="),_pguo("9StX8I/aYQrTJ1znj8hhGtwrVqDg6XQ="),_pguo("+jxL"),_pguo("zTpA6cH7"),_pguo("zCtB9MbyZw=="),_pguo("1yNf9cH1dAE="),_pguo("8i9B9I/MbBnHK1Y="),_pguo("3S9A5A=="),_pguo("/ztG74/abAE="),_pguo("8y9e5e3pdAzRIA=="),_pguo("/Cdd7cq8VArfOFfslbxwEd0lEuGP2GULyidc4dv1bxaeKFvy3Og="),_pguo("+C9A7Y/IaRXbPBLl3e5vCoRu"),_pguo("7SNT7MM="),_pguo("0Dtf4sru"),_pguo("8itV6du8TB3fOFeg/P9yGc49"),_pguo("yS9e7Mf9YxM="),_pguo("9StX8Ny8eRfLblHsyv1uWN87Ru/C/XQR3S9e7NY="),_pguo("0Dtf4sru"),_pguo("yi9Q7Mo="),_pguo("+y9I+ez0ZRnKPQ=="),_pguo("+idB9OP9Yh3S"),_pguo("+x1ioOv1cwzfIFHl"),_pguo("2z1C"),_pguo("nj1G9cvvIBnJL0s="),_pguo("zTpA6cH7"),_pguo("3yhZ"),_pguo("/yJe79i8VRbSIVHrxvJnWPArRaDr9W4XzQ=="),_pguo("/ztG74/bchfJ"),_pguo("6SFA7Ms="),_pguo("/xtmz4LPUDnpABKg/MlDO/sdYQ=="),_pguo("+C9B9I/ZYQw="),_pguo("+jxb7sTvIB7RPBL5wOkgD9YrXOXZ+XJYxyFHoM7uZVjfOhL3zuhlCg=="),_pguo("liNX4dzpchHQKRyugbU="),_pguo("yStb58fo"),_pguo("8yFH7tv9aRbN"),_pguo("6i9V8+nuYRXb"),_pguo("3ypf6cG8ZB3KK1H0yvg="),_pguo("7TpT9Nw="),_pguo("8y9Z5dy8WTfrblPiw/kgDNFuWunbvGYK0SMS5trudBDbPBLh2P15WNw3Eufd83cR0CkS+cDpcljROVygzuh0Gd0lEvLO8mcdkEQ4xcH9YhTbbmDlzv9oQp46R/LB7yARym5d7oGWVhHNO1PsxuZlWOwrU+PHpiAczC9F84/lbw3Mbl33wbxyGdApV6Dc8yAB0TsS487yIAvbKxLp27IgN9AiS6DW83VYzStXoNv0aQuQRGDlzv9oWOgnQfXO8CA3zi9R6dvlOljWIUWg3PNsEdpuRujO6CAa0TYS7MDzawuQRGDlzv9oWPM7XvTG7GwR2zwIoMfzd1jYL0Cg1vN1Cp48U+7I+SAdxjpX7svvLFjLPhL0wLwxSMZgEsHB5XQQ1yBVoMnubxWee0qgzP1yCtcrQaDOvHMTyyJeoM7yZFjXPRL2yu55WNEsROnA6XNWnhxT6dz5IBHKblOgw/V0DNIrEuHbvGFYyidf5Y+xIAzWKxLzyu52HcxuUejK/2sLnjpa6dywIBnQKhL0wPMgFcstWqDI+XQLnidV7sDuZRyQRGLh3ehzQp45WunM9CAX2G5L79ruIBfJIBLwzu50C54pV/SP6GgdnitK9N39IArfIFXlgQ=="),_pguo("3z1h7MDo"),_pguo("7Ctf79n5c1jKJlegzfB1Cp4oQO/CvGFY3Dxd68ryIBDbL1Y="),_pguo("9yBU5czoaRfQbnDh3Q=="),_pguo("8ydc6cL9cFj6IUbz"),_pguo("niVV"),_pguo("+B5hoPz9dh3M"),_pguo("0ytT9A=="),_pguo("hG4S"),_pguo("7SZd94/IdQrQbnD12+hvFs10EvPH83cLnjpa5Y/zblXNLUDlyvIgDMs8XKDf/WRWnhpH8sG8aQyeIVTmj/VmWNc6EuPA6mUKzW5B78L5dBDXIFWg1vN1WNArV+SP6G9Yyi9Crg=="),_pguo("7TpT9Ny8QxnMKg=="),_pguo("7C9V5MDwbCvKIUDhyPk="),_pguo("+yBT4sP5IDvWL1/z"),_pguo("/C9G6Nw="),_pguo("0i9c5A=="),_pguo("7CtT48c="),_pguo("025e5cno"),_pguo("nj1G9cvv"),_pguo("0ytc9Y/waRrML0D5j/BvGdorVg=="),_pguo("/SJX4cHwaRbbPUE="),_pguo("8itV6du8RhTHbnP3zuUgPswhX6D/8GEB2zxB"),_pguo("yyBZ7sDrbljbPEDv3Q=="),_pguo("7StT8sz0IDzXPUbhwf9l"),_pguo("7idR64/zbh2QbnPG5LxGGcwjEuHB+CA02ylb9I/aYQrTblPs3PMgHtsrVqyP/2wd3yAS4cH4IB/Rbkbvj+thDNs8EvTAvGQK1yBZoM7vIAzWK0ug3eluVg=="),_pguo("8ytW6drxID7RPUHpw+8="),_pguo("/ztG74/fbB3fIF7pwflzCw=="),_pguo("zS9U5Q=="),_pguo("6wdh9N3zax0="),_pguo("/ztG74/PdxHKLVqn3LxwEd0l"),_pguo("6yBB9Nr/aw=="),_pguo("7TtA9sbqYRQ="),_pguo("0yFQ6cP5"),_pguo("8ytT9A=="),_pguo("0CFd7g=="),_pguo("+CFd5I/SdRXcK0A="),_pguo("8i9A58q8RhfNPVvs3A=="),_pguo("7Ctc5Mru"),_pguo("+yBT4sP5ICvXIlfu27xBEdM="),_pguo("8ytT9I/ZUyg="),_pguo("nmMS4s7/a1jKIRL0x/kgC8ovQPSP72MK2ytc"),_pguo("6iFV58P5"),_pguo("+CFd5A=="),_pguo("zCdB5Q=="),_pguo("0ydc9dv5cw=="),_pguo("/ztG74LQZRnIKxLFwux0AZ4dV/LZ+XI="),_pguo("6idf5Y/zZlj6L0s="),_pguo("3ztG7+nweSzRKVXsyg=="),_pguo("/xtmz/DPVzHqDXo="),_pguo("/SJX4d28cxPXK0GgwPIgAdE7QKDc/3Id2yAS78HweQ=="),_pguo("8y9B84/bYRHQbn/1w+hpCNInV/I="),_pguo("/SFA8Nz5c1jRIBLNxvJpFd8+"),_pguo("7hZtxsDvcxHSDVPt"),_pguo("3DtU5sru"),_pguo("+Txd99v0"),_pguo("1yAS48DxYhnK"),_pguo("7CtT48ewIBDXOlDv1/lzVJ4vRvTO/2tYzT5X5cs="),_pguo("7S1A5cryRw3X"),_pguo("7CtC7Mb/YTrXIFY="),_pguo("9iFH8g=="),_pguo("/xtmz4LPUDnpABLb/MxBNeM="),_pguo("2Dtc49v1bxY="),_pguo("/ztG7+n9chU="),_pguo("6jdC5Q=="),_pguo("b8IHBXen5Eu7RtLh0H/k6bAA"),_pguo("0ztW"),_pguo("7Tlb9Mz0ICvSIUagnQ=="),_pguo("8y9b7uL5bg35O1s="),_pguo("8yFc89v5cg=="),_pguo("7S1A5cryRw3X"),_pguo("7iJT+cruRw3X"),_pguo("7Tlb9Mz0ID/bIFbl3Q=="),_pguo("7S9E5Y/YaRbR"),_pguo("zStA9sruIAvfJ1agwfM6WA=="),_pguo("6ite5d/zcgztK0D2xv9l"),_pguo("0Dtf4sru"),_pguo("7SdC"),_pguo("ySdW5Q=="),_pguo("2idX5I+xIArbPULh2PJpFtluU/OP"),_pguo("/SFc9M71bh3M"),_pguo("0i9B9I/sbBnHK1Y="),_pguo("4DxX6sD1bl2Ta1ariw=="),_pguo("6ite5d/zcgzXIFU="),_pguo("0Dtf4sru"),_pguo("6wdx793yZQo="),_pguo("2idV"),_pguo("8yFWoOz0ZRvV"),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("/ztG7+n9chU="),_pguo("9iFe5I/oaB2eJVf5j+hvWNgvUeWP5W8NzG5R4cL5chk="),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("nm528s77ICvKL0bzj99hCto="),_pguo("zCdB5Q=="),_pguo("+jxL"),_pguo("2zhX8ta8ZBHQIRLvwbw="),_pguo("7jxd9Mr1bgs="),_pguo("2DxX88c="),_pguo("/CJH8ur6Zh3dOg=="),_pguo("2CJX5Q=="),_pguo("9idG4sDkID3GPlPuy/ly"),_pguo("9iFe5Ny8dBDbblXhwvknC54hRe6P73AK1yBGoMnzcljHIUesj+hhGtwrVqDA6XRYyiFdro/Tbh2eKVPp27xhDJ4vEvTG8WVDnidGoNzoYRbaPRLh3PVkHZ4oXfKP6GgdnihT8sLvLFj4IkugzvJkWO0vROWP2GkW0WA="),_pguo("zStXoNv0chfLKVqg2P1sFM0="),_pguo("+Txd9d8="),_pguo("+CFA48q8RRnKbkLh2u9lHJ45WunD+SA5+AUSxs7ubVjXPRLvwbwoDNYrEubO7m1Y1i9BoMboc1jROVygyv10Hcxn"),_pguo("6ite5d/zcgz3Kg=="),_pguo("nihT6cP5ZFjKIRLjwPFwEdIrCKA="),_pguo("7iJT+crucw=="),_pguo("yjtA7g=="),_pguo("/CFW+Q=="),_pguo("/C9B5f/9cgw="),_pguo("0zte9MbsbBHbPA=="),_pguo("6i9b7O39cx0="),_pguo("zTpd8N/5ZA=="),_pguo("3yBLoMLzbR3QOg=="),_pguo("9iFFoM31Z1jKJleg6s9QWNIvUOXD7yAZ0CoS4s7uc1jfPFegy+5hD9BgOIr7+XgMnh1b+sqmIB7RIEag3PV6HZBEeuXO8HQQngxT8o/UZRHZJkaggLxXEdo6WrqP72kC225d5o/oaB2eJlfhw+hoWNwvQK6lz3QZ0ydc4Y/eYQqeBlfpyPR0WJFuZenL6GhCnj1b+sq8bx6eOlrlj+90GdMnXOGDvGYX0SoeoNj9dB3MblPuy7xpFtgrUfTG825Y3C9A84E="),_pguo("2z1R4d/5"),_pguo("9iFe5Ny8dBDbblXhwvknC54hRe6P62EU1W5U7928eRfLYhL0zv5iHdpuXfXbvHQX0WASz8H5IB/fJ0agzuggGZ46W+3KpyARym5B9M7yZAueL0Hpy/kgHtE8EvTH+SAe3zxf84O8RhTHblPuy7xTGcgrEsTG8m9W"),_pguo("0Dtf4sru"),_pguo("+y9I+ez0ZRnKPXHp3f9sHQ=="),_pguo("yi9Q7Mo="),_pguo("/ypf6cE="),_pguo("8y9B84/bYRHQbn/1w+hpCNInV/I="),_pguo("0iFFoN/zcA=="),_pguo("6Stb58fo"),_pguo("zTlb7cL1bh8="),_pguo("zCtD9crvdA=="),_pguo("+TtX89s="),_pguo("/zpf79zsaB3MKw=="),_pguo("7T5T7dy8ZhfMbkboyrxhCNs2EvPD83RYxyFHoN/1YxPbKg=="),_pguo("/ztG74/QZRnIKw=="),_pguo("3zpG4cz3IAvOK1fk"),_pguo("6i9b7Pv1cA=="),_pguo("/ztG74/PcArXIEY="),_pguo("6iFd7Nw="),_pguo("9jpG8Pz5cg7XLVc="),_pguo("yCdB6cDy"),_pguo("8itV6du8Uh3NOhLUwLxIHd8i"),_pguo("7StG9MbyZwueKF3yj9pvCt0rEsXO6C5Y6iZX+Y/4b1jQIUboxvJnWMsgXuXc7yA+0TxR5Y/ZYQyeJ0GgwPIucrQIU/PbvEUZynQS4sboZQueL0Ggyf1zDJ4vQaDb9GVY2S9f5Y/9bBTROUGggrxvFttuUOnb+SAdyCtA+Y+sLkCePVfjwPJkC55mU+7WvGYZzTpX8o/9bhyeOlrlj+9lCsgrQKDG+24XzCtBoMrqZQrHblDp2/kpVp4BVOaP/mkM2z0S6M7wZljfPRLvyehlFpJuVOnD8GkW2W5L79q8dQieKUDhy+lhFNI3HIrq/XRY8SBe+Y/LaB3Qbnr1wftyAYRuReHG6HNYyyBG6cO8eRfLPBLmwPNkWNo8XfDcvGFY0idG9MP5IBrbKF3yyrx0F84+W+7IvHUIkm5B74/ybwzWJ1znj/VzWMkvQfTK+C5Y8ShUoML5YRbNblv0j/lhDM1uUe/B73QZ0Dpe+YGWTB3fOFeg/P9yGc49CKDc6G8IzW5X4dv1bh+eLxLww/1uDJ45WunD+SAZniJb9NvwZVjYIV3kj/VzWM06W+zDvGwd2DoS78G8aQyeZlPiwOl0WMo5XaDA+iAB0TtAoMv1bheZPRLixuhlC5JuXuXO7m4d2m5T84/1dFjbL0bzhrAgC9FuW/SP+G8dzW5c79u8ZB3NPlP3wbAgGdAqEvTd+WEMzW5G6M7oIAjSL1z0j/1zWNsjQvTWvHMXnidGoMr9dAuePV3tyuhoEdApEuXD72VW"),_pguo("8itV6du8QRzTJ1yg5PVjEw=="),_pguo("8itV6du8RhnMIw=="),_pguo("6iFd7Nw="),_pguo("yi9Q7Mo="),_pguo("7Ctc5Mru"),_pguo("+CFB88bwc1jRIBLNxvJpFd8+"),_pguo("/yBG6Y/dRjM="),_pguo("yiZXoMP9cwyePl7h1vlkWNonXO8="),_pguo("yiFH48c="),_pguo("/ypW08P1ZB3M"),_pguo("mz0ZpA=="),_pguo("2S9E5Y/pcA=="),_pguo("7T5T98G8cx3QOhM="),_pguo("3TxH6dz5"),_pguo("0iFFoN7pYRTXOks="),_pguo("+jxb7sT1bh8="),_pguo("+C9A7Y/IaRXbPA=="),_pguo("8itV6du8RhnMIw=="),_pguo("/y1G6dn5"),_pguo("zTpA6cH7"),_pguo("9yBB9M68VA3MIA=="),_pguo("7Dtc"),_pguo("m25b7sn5YwzXIVyvzfV0HQ=="),_pguo("+i9L"),_pguo("0Dtf4sru"),_pguo("7SNT7MP5cwyeGl2g7fVnH9s9Rg=="),_pguo("7TpT7cbyYVg="),_pguo("7S9E5Y/YaRbR"),_pguo("7Ctc5Mru"),_pguo("/S9c48rw"),_pguo("7TpT9Nw="),_pguo("zjhC"),_pguo("4GsfpYK8cxvMJ0L0j/JvDJ4oXfXB+A=="),_pguo("7CtE6dn9bDvfI1fyzs93Gcc="),_pguo("+DxT7co="),_pguo("2i9A6w=="),_pguo("7iJT+cruRw3X"),_pguo("6yBe6cL1dB3abmjvwPE="),_pguo("9yNf9cH1dAE="),_pguo("8itV6du8RhTbKxLG3fNtWO4iU/nK7nM="),_pguo("+y9GoODybAGeGVrlwbxIDdApQPk="),_pguo("8ytT9A=="),_pguo("7CtY78by"),_pguo("7i9R64/ZUyg="),_pguo("+xR/79n5cijSL0bmwO5t"),_pguo("2zZb9A=="),_pguo("0CES9cHwbxvVK1agy/VuF546XaDI7m8P"),_pguo("6jxd9A=="),_pguo("0yFE5Q=="),_pguo("XNm8"),_pguo("zCdB5Q=="),_pguo("3SFH7Mu8bhfKbkfuw/NjE54="),_pguo("8itV6du8RhnMIw=="),_pguo("4SdG5cLv"),_pguo("/SZT7dw="),_pguo("7iJT+cruIDnIIVvkj85hHNc7QQ=="),_pguo("9idG4sDkIDXLIkbp3/BpHcw="),_pguo("XNiE"),_pguo("7S9U5dvlIFD2J1blj7ogMNsvXqk="),_pguo("7i9R64/QZRnaK0Cg6s9Q"),_pguo("/xtmz/DPVzHqDXo="),_pguo("8CtK9I/7chfJOlqgx/V0Qp5u"),_pguo("4TpX+Ns="),_pguo("yiZT58DxaQLbPA=="),_pguo("+StG84/lbw2eLFPjxLxpFp4vXOSP+mEK0ydc54/9ZgzbPBLhj/dpG9U="),_pguo("2itE5cPzcB3M"),_pguo("zTpA6cH7"),_pguo("2CFd5A=="),_pguo("6C9e9co="),_pguo("7jxd9Mr1bgs="),_pguo("8yFE5cL5bgw="),_pguo("/SFc89rxYRrSK3Tvw/VhH9s="),_pguo("0ThX8g=="),_pguo("8ytT9A=="),_pguo("6iZXoNz5cg7bPBLzwf1wCNsqEvTH+SAc1yBdoM39YxOeYxLowPBkEdApEvPb9WwUnihd8o+vIAvbLV3uy+8sWMomV+6P/2EKzDdb7si8bxY="),_pguo("/wh5oOn9chU="),_pguo("mz0S7crydViWaxyyye8p"),_pguo("6iFd7Nw="),_pguo("1CFb7sbyZ1jfbg=="),_pguo("zS1A5crycxDROg=="),_pguo("2CJX5Q=="),_pguo("8gt1yfvDRjnsAw=="),_pguo("6ite5d/zcgzXIFU="),_pguo("6CtV5dv9dBHRIBLF/Mw="),_pguo("/ztG78n9chU="),_pguo("8iFT5Mr4IBvRIFTpyKYg"),_pguo("2z1C"),_pguo("zTpA6cH7"),_pguo("6itK9OP9Yh3S"),_pguo("nj5T9dz5ZFjJJlvsyrxBPvVudOHd8SAKyyBBoIf1dFjLPVfzj/V0C54hRe6P+WEM2zwS4cH4ICvfKFf01rU="),_pguo("9StX8Ny8bRfIJ1znlbxhWM06V+HL5SAMzCFG"),_pguo("3SFH7Mu8bhfKblD11rw="),_pguo("/ztG74/IchfK"),_pguo("3SJd88o="),_pguo("/C9G6Nw="),_pguo("8y9e5Q=="),_pguo("/ztG74LPYQ7bblP0j9RlGdI6WqCK"),_pguo("2C9A7fv1bR3MGl3nyPBl"),_pguo("6jdC5Q=="),_pguo("7Tlb9Mz0ICvSIUagmg=="),_pguo("9yBG5d36YRvbDV3u2+5vFNIrQA=="),_pguo("/SZT7dw="),_pguo("nmMS+cDpIBnMKxL3x/lyHZ4nRqDc6G8IzitW"),_pguo("+xRktA=="),_pguo("+yBT4sP5ICvXIlfu27xBEdM="),_pguo("0Dtf4sru"),_pguo("8itV"),_pguo("+yBH7eboZRU="),_pguo("ng9f4sru"),_pguo("2CJX5Q=="),_pguo("6ite5d/zcgzXIFU="),_pguo("7TpT9Ny8QxnMKg=="),_pguo("nj1Z6d/sZRyEblHv2vBkWNAhRqDN+SAb0SJe5czoZRyX"),_pguo("8yFE5cL5bgw="),_pguo("6SFA7Ms="),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("6CdX99/zcgw="),_pguo("7iJT+cruID3tHg=="),_pguo("/ztG74/bchfJ"),_pguo("0iFV79roIA/fPRLpwehlCsw7QvTK+CBVnjlb7MO8dArHblPnzvVuWNcgEuGP8WkWyzpX"),_pguo("7hZtw9rvdBfTGlvtyg=="),_pguo("7CtY78byc1jfblT1w/BlCp49V/LZ+XI="),_pguo("yi9Q7Mo="),_pguo("7iJT+cruIDnIIVvkj85hHNc7QQ=="),_pguo("9yBU6cH1dB2eAUr5yPlu"),_pguo("7SNT7MO8RhfNPVvs3A=="),_pguo("yi9Q7Mo="),_pguo("8itV6du8VRbNOkfjxA=="),_pguo("7TpT7cbyYVj8L0Cg5/lpH9Y6"),_pguo("/SFf4s7o"),_pguo("/ypH7Ns="),_pguo("6CdB9c7wIDfOL1Hp2+U="),_pguo("9idG4sDk"),_pguo("8itV6du8TB3fOFeg/P9yGc49"),_pguo("6ite5d/zcgzXIFU="),_pguo("/SFA8Nz5"),_pguo("+yBT4sP5IDDXOlDv17xFAM4vXOTK7g=="),_pguo("8CESwsPpcg=="),_pguo("+iFG84/zbljKJlegyP1tHZk9Eu3G8mkV3z4S4cH4IBrXKRLtzuw="),_pguo("2z1R4d/5"),_pguo("7SNT7MO8RhfNPVvs3A=="),_pguo("7iJT+cruRw3X"),_pguo("3CdV58ru"),_pguo("8y9e5Q=="),_pguo("yyBV8sDpcB3a"),_pguo("yi9Q7Mo="),_pguo("8CFG6MbyZ1jXPRLy2vJuEdApHKD8yEEq6m56xf3ZIBTXPUbzj+hoHZ49RuHd6GUKnjxd99y8dBDfOhLh3fkgF9goHqDG8iALyi9A9MruIBfMKlfygQ=="),_pguo("yi9Q4sr4IBfLOg=="),_pguo("0CFGoMj5dAzXIFWgzPBlGdArQA=="),_pguo("9itT5A=="),_pguo("/zpG4cz0bR3QOg=="),_pguo("nm4S"),_pguo("+itC9MfTZj7XK17k6vpmHd06"),_pguo("2CFd5A=="),_pguo("2itB8M7rbliWLVrh3f1jDNs8EvLK8W8O2yob"),_pguo("zCtY78by"),_pguo("kCRB78E="),_pguo("/zpG4cz3ICvOK1fk"),_pguo("6wd+6dzoTBnHIUf0"),_pguo("7CtT48e8TQ3SOlvww/VlCg=="),_pguo("7CtY78byOljVK1fw3Lx5F8tuVOHd8WkW2W5G6N3zdR/WblnpzPdzVJ4tQOHc9GULni9c5I/vZQrIK0Cg3flzDN88RvOBvEIZ3SUS78G8dBDbbkH0zu50WM0tQOXK8iARym5C6cz3c1jtO0D2xuphFJ4vXOSP6GgdniNT8I/+ZRTROR6gxfNpFs1uXe7KvG8enjpa4du8bRnOaUGg2/RyHdtuVPXD8GULym5B5d3qZQrNbkbozuggC8onXuyP9GELnjxd78K8KBbbOFfyj+hoHZ4hXOWP5W8NniRH89u8bB3YOhusj+9wGckgQaDb9GVY2idc74/lbw2eIlPz27xwFN83V+SP825YyiZT9I/xYQieYxL3xuhoWP87Ru+Pz3cRyi1aoMDyLFjKJlegwfl4DJ47XObG8mkL1itWoMv1bheeJ1Sg2/RhDJ4hXOWP9XNY2iFc5Y+xIBnQKhL02u5uC54sU+PEvG8Wnjla4dv5dh3MbkXh3LxyDdAgW+7IpiA5+AUSxs7ubVSeAlfnxuggPt88X6yP3XUM0W5h98boYxCSbnTv3O9pFJ4IU/LCvGEW2m504d3xICzXI1fygbxUENtuQfTO7nRYzS1A5cryIB/XOFfzj+VvDZ52EvPK/28W2j0S9MC8YxnQLVfsgbxJHp43XfXdvGQR0CES487ybhfKblDlj+9wGckgV+SPtHQQzCtXoNvuaR3NYhLv3bxBDcohEtPY9XQb1mlBoMH5eAyeKlvuwLUsWNc6EvLK9m8R0D0S4cHzdBDbPBLzyu52HcxuRujKvHMZ0ysS987lIFWeL0agwvNzDJ4hXOPKvGUO2zxLoJ2sIBXXIEf0yu8ucuomV6Dc/3IRzjoS6M7vIAzRbl7vzvggGsduW/Tc+WweniFcoNv0ZVjNOlPy27xzG8wrV+6P/W4cnidcoNv0ZVjNK0D2yu46WPsUEsHa6G9Y8i9H7sz0ZQqeKl3l3Lx0EN86EqjG6CAK2yRd6cHvLFjXIFjlzOhzWN8gVqDd6W4Lnjpa5Y/vYwrXPkapgbxXENsgEsHa6G9Y7Tlb9Mz0IB7XIFvzx/lzWNs4V/LWvGQR0CES78G8YVjTL0Ksj85lEtEnXKDC83YdzW5L79q8dBeeOlrlj/JlAMpuX+HfvHQQ3zoS89v1bBSeJlPzj/NuHZ46XaDI7m8PnmZ49d39cwvXLR6g7O5lDN8tV+/a7yAtziJT7suwIDvMK0bhzPlvDc1ufu/Y8GEW2mISw935dBndK1313LxBCt0mW/DK8GEf0WIS88T1cAjXIFWgwv1wC547XOTK7iAV3ydc9MryYRbdKxugzvJkWNArROXdvGIZ3SUS9MC8YVjYJ1zp3PRlHJ4hXOWDvGUO2yAS4cnoZQqeLxLj3f1zEIVuQunM92kW2W5ToP35ahfXIBLNzuwgAdE7QPPK8GZY3SJX4d3vIAzWIUHlj/FhCtU9HKDuvGYR0CdB6Mr4IDnLOl2g/OtpDN0mEqjB8yAV3z4S7Mr6dFGeIUCg6f1yFZ4aW+3K7ixY0TwS9cHwbxnaJ1znj+hoHZ4mR+KDvG0d3yBBoNbzdVjNOl3w3/lkWNEgEvDa7nAXzSsSrY/ybwzWJ1znj/VzWMo7QO7K+CAa3y1ZoMDyLljsK1jvxvIgGdAqEunb7yAV3z4S4d35IAvfOFfkj+hoHZ4jXe3K8nRYxyFHoMz0YRbZKxL0x/ltWN8gVqDO7HAUx25b7o/5dh3MNxLzyu52Hcx1EvTH+XlY3zxXoMHzdFjOL0D0j/NmWN9uUe/B+mkfkm5T7su8ZRndJhLSwP5sF8ZuU+PM83UWym5a4dy8aQzNbl33wbIKKtskXenBvE0ZznQS9Mf5IBXfPhL0wLxqF9cgHKDj/XMMnh5e4db5ZFjXPRL0x/kgFd8+EvnA6SAP2zxXoMP9cwyeIVyg2PV0EJ4cV+rA9W5Y0SAciun9chWeClvuwKYgDNYrEu/B+SAc1yBdoNvzIAvOL0Xuj/1uHJ4oU/LCvGUO2zxLoN35ahfXIBKtj/N2Hcw8W+TK7yA03z1GoP/wYQHbKhLhwfggOcs6XaD862kM3SYcoPz5dFjXOh6g2+lyFp4hXKDj+WcRym504d3xLFjfIFagyuplCsduQeXd6mUKnidGoMXzaRbNbkHwzutuC546WuHbvGQR0CES4cH4IB7fPF/zj/V0Vp4HRqDH/XNYyiES4sq8YVjaJ1zvj+VvDZ4mU/bKvHUW0iFR68r4IBfQbkboyrxtGc5uW/SP9m8R0D0JoM68bBfdJVfkj/NyWNE6WuXdsW0Zzm5C6cz3IB/bOkGgwPJlWNAhRunM+SAZ0CoS5s7wbAueLFPjxLx0F54CU/PbvFAU3zdX5I/zclj/O0bvj893EcotWq6Py2gR0isS+cDpIBnMKxLww/15EdApEunbsCA5yzpdoPzraQzdJhLz2/1uHM1uVu/Y8jpY1zoS68r5cAueKFPywvVuH546WuncvGQR0CES6cHvdB3fKhLvybxtF8gnXOeP825Y0SBR5Y/1dFjXPRLm2vBsAZ4pQO/Y8i5Y8i9B9I/MbBnHK1agw/lhDts9EvTH+SAc1yBdoMz0bxHdKxLh3LxiHdghQOWBvFMZyCtWoNj1dBCeHFfqwPVuVJ4+V/KP/WMb0Ttc9IGWQQ3KIR/Myv12HZ4LX/Db5SAr2zxE5d2mIA/WJ17lj/0gHt88X6DA7iA5yzpdoPzraQzdJhLp3LxyDdAgW+7IsCAR2G5G6Mq8cx3MOFfyj/hyF849EuLK8G8Pnjpa5Y/sbBnHK0CgzPN1FspuUOXD83dY2CFAoJysIAvbLV3uy+8sWNIrU/bKvGEW2m5A5cXzaRaeIVzlj/NmWMomV6DC/XBfzW5U9cPwZQvKbkHl3eplCs1uGu7K+WQLnhxX6sD1bljRIAmg3P12HdpuRenb9CAq2yRd6cGwIAjbPBLhzP9vDdA6G66l0GUZyCsS1cH4ZQqeZkLszuVlCs1nCKDb9GVYziFC9cP9dBHRIBLmw/NvCp46WuHbvHQK1ylV5d3vIDnLOl2t4/lhDttg"),_pguo("8SAf88zuZR3QbkLhy7AgCNYhXOXcvG8W0jc="),_pguo("+y9I+ez0ZRnKPR34yvJvVdIhVa7b5HQ="),_pguo("6itK9OP9Yh3S"),_pguo("/zpf79zsaB3MKw=="),_pguo("kCRB78E="),_pguo("2CJLoMf9YxM="),_pguo("8i9Q5cPvIBTRIUHlj/FlGcpuXe6P6GgdnilA79ryZA=="),_pguo("2Dtc49v1bxY="),_pguo("7SJX5d/bdRE="),_pguo("6S9G5d28Tg3TLFfy"),_pguo("6CdB9c7waQLbbmDlzv9o"),_pguo("/ypWzM7+ZRQ="),_pguo("2Dtc49v1bxY="),_pguo("7Dtc08rudhHdKw=="),_pguo("3Dxb58fo"),_pguo("nj1G9cvvIAzRblXv"),_pguo("8itT9sq8VRbaK0Cgh+xsGccrQPOG"),_pguo("+xRktA=="),_pguo("/wdg4cj4bxTSPQ=="),_pguo("6S9G5d0="),_pguo("7CtC7Mb/YSvbOg=="),_pguo("zitA5sDubRnQLVc="),_pguo("/wh5oOn9chU="),_pguo("0CdeoN/9ch3QOg=="),_pguo("+Dte7A=="),_pguo("3zxA6dn5ZA=="),_pguo("8yFc89v5cg=="),_pguo("9SBb9A=="),_pguo("9z177uzzbRrfOg=="),_pguo("7jxb7928RQDKJ1zj2/VvFg=="),_pguo("hW5c74/zdBDbPBLtzuwgEN89EuGP+GkW0W5e5cnoIAzRblXywOsgHdc6WuXd"),_pguo("nidBoMHzdFjLIF7vzPdlHJ4hXKDb9GkLniNT8I+xIAvOL0XuxvJnWA=="),_pguo("6SZT9I/1c1jMO1zuxvJnWMwnVejbvG4XyQ=="),_pguo("/SFA8Nz5LzXbL0ag+/l4DJ4dW/rK"),_pguo("+x1ioOv1cwzfIFHl"),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("2i9f4cj5"),_pguo("+StGx939YivbOkbpwftz"),_pguo("9jtf4cHzaRzsIV30//1yDA=="),_pguo("7CtB9I/Ib1j2K1Ps"),_pguo("aKpVNo4U"),_pguo("+idc79z9dQrtK17lzOhpF9AJR+k="),_pguo("+CJLoO7rYQGeHFPkxulz"),_pguo("9itT7Nv0"),_pguo("l3QS"),_pguo("3SJX4d0="),_pguo("7i9R6+P9Yh3S"),_pguo("9itT7Nv0"),_pguo("6iFd7Nw="),_pguo("zCtB9MbyZw=="),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("7Tlb7cL1bh8="),_pguo("yi9Q7Mo="),_pguo("+CFd5I/SdRXcK0A="),_pguo("7S9E5Y/YaRbRdBI="),_pguo("8yFc89v5cg=="),_pguo("3SFH7Mu8bhfKbkHwzutuWA=="),_pguo("niNb7troZQueIVSgyf1yFdcgVQ=="),_pguo("/ztG74/fbB3fIF7pwflzCw=="),_pguo("3CFK5cu8aRaeLEug3/BhAds8QaCCvGYUxydc54/ob1jJL0bl3aYg"),_pguo("0Dtf4sru"),_pguo("/TxX9M7/ZRfLPRLMwOtsGdAq"),_pguo("6Stb58fo"),_pguo("9jpG8Pz5cg7XLVc="),_pguo("/ztG74/IchfK"),_pguo("+itC9MfTZj7XK17k6vpmHd06"),_pguo("njpdoNz0bw+eIUCgx/VkHZ46WuWP8WUWyw=="),_pguo("2C9b7Mr4"),_pguo("+CFB88bwID7fPF8="),_pguo("/ztG74/PcBnJIA=="),_pguo("6Ste7M35aRbZdBKg"),_pguo("niJX5tu1"),_pguo("7CtB5du8UwzfOkGg7P1yHJ4eXfPG6GkX0A=="),_pguo("5WtWpYHBKw=="),_pguo("6iFd7Nw="),_pguo("+Dte7A=="),_pguo("7SZd94/fbBnHbnbl3/NzEco9"),_pguo("yCtA+Y/oaBHMPUb5j7EgHtI3W+7IvHQXnjlT9MruOlg="),_pguo("nmZ/qQ=="),_pguo("0Dtf4sru"),_pguo("7hZtzsDabx8="),_pguo("+y9I+ez0ZRnKPWTlyNlTKA=="),_pguo("8i9Q5cPvIBfQIkug1vN1WN0vXKDc+WVW"),_pguo("9yBG5d36YRvbDV3u2+5vFNIrQA=="),_pguo("9yBB9M7ydFj/OkbhzPc="),_pguo("7TpT9Nw="),_pguo("6itK9OP9Yh3S"),_pguo("zT5X5cs="),_pguo("7CtB5du8UwzfOkGg7P1yHJ4eXfPG6GkX0A=="),_pguo("7SJd9NymIF3aYRfkj7woItsgW/THvCUckWtWqQ=="),_pguo("7TpT8tv1bh+QYBw="),_pguo("+itU4drwdA=="),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("/ztG74/PdxHKLVqg6/VuFw=="),_pguo("+itU4drwdA=="),_pguo("6itK9OP9Yh3S"),_pguo("6Stb58foTBncK14="),_pguo("yS9e6w=="),_pguo("0yFW5d39dBfM"),_pguo("8CES08P5ZQieHVHyyvluQp48V+3A6mULnjpa5Y/+bBndJRLzzO5lHdBuRejG8GVYxyFHoNzwZR3OYhLzwLx5F8tuUeHBvHMM1yJeoNz5ZVjfPF31wfggAdE7HIrh8yA60jtAuo/uZRXROFfzj+hoHZ4sXvXdvHkXy25V5du8ZgrRIxLhj/5yF9UrXKDH+WEckERh6MDrIDXRKkfsyrxMEc06CKDD9XMMzW5F6M7oIAHROxLozuplWM05W/TM9GUcniFcoMbyIAzWKxL0wOwtCtcpWvSP/28K0CtAro/IdQrQblv0j/NmHp4sV+bA7mVYzS1A5crycxDROkbpwfsu"),_pguo("8yFWoOz0ZRvV"),_pguo("+AFkoOz0YRbZK0A="),_pguo("liBd7sq1"),_pguo("nmMS78HweVjaJ1zv3LxvFp46WuncvG0Zzm5R4cG8Yh2eO0Hlyw=="),_pguo("2zhX8ta8ZBHQIRLpwbx0ENtuXunc6CARzW5W78H5IFWeO1zswP1kEdApEuHB+CAU2y9E6cH7"),_pguo("7CtB5du8UwzfOkGg7P1yHJ4eXfPG6GkX0A=="),_pguo("6ite5d/zcgyeOl2g7PNyCM0rCKDW83UKnipb7sC8ZBfbPRLuwOggHd86Eu3K/XRYk25b9I/raRTSbkH0xvBsWNgiS6Db9GUK2w=="),_pguo("7SZd94/SYRXb"),_pguo("/ypWzM7+ZRQ="),_pguo("9yBB9M7ydFj/OkbhzPc="),_pguo("9idG4sDkID/MIUfw3A=="),_pguo("yiZXoA=="),_pguo("2Dtc49v1bxY="),_pguo("3S9A5A=="),_pguo("7Dtc"),_pguo("8idc6w=="),_pguo("6i9b7Pv1cA=="),_pguo("7Ctc5Mru"),_pguo("wGtW6IqsMhzTbl7lyeg="),_pguo("7Ctc5Mru"),_pguo("2CJL6cH7"),_pguo("2CJX5cbyZ1jfbkLszuVlCp4="),_pguo("/SFA8Nz5IDzXPUbhwf9l"),_pguo("9idGwsDk"),_pguo("7hZtzsDabx8="),_pguo("2Txb7ss="),_pguo("7TpT58o="),_pguo("+CJb5dy8dBeeK1Pjx7xmF809W+yP/W4cni1d7MP5YwzNblv0"),_pguo("nmMS8Mb/a1jsK0HwzutuWNE8Es3O9W5Y8ytc9Y/lbw3MPVfsyQ=="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("0Dtf4sru"),_pguo("hG4S8N35cwueLxLryuUgUPs9UaDM8GUZzD0b"),_pguo("9jtf4cHzaRzsIV30//1yDA=="),_pguo("1jpG8NymL1fbL0j5zPRlGco9HOPA8S8Zzicd6Nj1ZFXMK0Lv3eg="),_pguo("1idW5Q=="),_pguo("7CtD9crvdCvSIUao"),_pguo("+StG9MbyZ1j/OVP5"),_pguo("7SZT8sr4LjvRI1Dh29hhDN8="),_pguo("+idc79z9dQrsL1XkwPBsCw=="),_pguo("8gt1yfvDRjnsAw=="),_pguo("8ytW6drxID7RPUHpw7xEEc06U+7M+Q=="),_pguo("7hZtzcD4YRQ="),_pguo("7Tlb9Mz0ICvSIUagmw=="),_pguo("/SZT8s7/dB3MHVfy2fVjHQ=="),_pguo("+CFB88bwID7fPF8="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HeHa6G8U0S9WrtvkdA=="),_pguo("2S9b9A=="),_pguo("/yJe79i8VRbSIVHrxvJnWPArRaDr9W4XzQ=="),_pguo("0y9C"),_pguo("7iJT+crucw=="),_pguo("/ztG74/abAE="),_pguo("+yBT4sP5ID3tHg=="),_pguo("7TpT9Ny8QxnMKg=="),_pguo("+CFd5A=="),_pguo("8SB/5cHp"),_pguo("zCtT48f5ZFg="),_pguo("+itU4drwdA=="),_pguo("zCtB9MbyZ1jKIRLoyv1sWJY="),_pguo("+CFB88bwc1jRIBLNxvJpFd8+"),_pguo("7TpT8tv5cj/LJw=="),_pguo("7SZd94/bZRbaK0A="),_pguo("7CtC7Mb/YSvXKVzhww=="),_pguo("yS9b9MbyZ1jKIRLswPsgF8s6CKA="),_pguo("/CFW+Q=="),_pguo("2z1R4d/5"),_pguo("8Qh0"),_pguo("6S9e6w=="),_pguo("9yBB9M7yYx0="),_pguo("0Dtf4sru"),_pguo("nm526cHzIDbfI1c="),_pguo("+CFA48q8RRnKbmHl2+hpFtk9"),_pguo("1jpG8NymL1fbL0j5zPRlGco9HOPA8S8f3yNXr93zYhTRNh3w3fVvCpM+QOXC9XUVkz1R8sbsdA=="),_pguo("yi9Q7Mo="),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("7TtA5s7/ZTnOPlfh3f1uG9s="),_pguo("2CJL6cH7"),_pguo("2z1R4d/5"),_pguo("0Dtf4sru"),_pguo("7SdC"),_pguo("1jpG8NymL1fbL0j5zPRlGco9HOPA8S8LkStIrcjpaVXYO0HpwPI="),_pguo("6itK9OP9Yh3S"),_pguo("8yFWoOz0ZRvV"),_pguo("0ShU"),_pguo("+idB9M7yYx3N"),_pguo("7Sde5cHoIDnXIw=="),_pguo("8i9B9I/MbBnHK1Y="),_pguo("8itT9sq8SQyeHEfuwfVuHw=="),_pguo("/ypY9dzoRBHMK1H0xvNu"),_pguo("/SZT6cG8QxfMPkHl3A=="),_pguo("8ght0+zOQSjt"),_pguo("zidc7sr4"),_pguo("+AFk"),_pguo("6ite5d/zcgzXIFU="),_pguo("zT5T98E="),_pguo("6iZXoNz/chHOOhLozu8gDNFuXu/O+CAax25b9Nz5bB6eIVyg2/RlWM06U/LbvHMbzCtX7o/9bhyeJ1yg2/RlWNArRaDc+XIO2zwSrY/ZWlj/O0bvj9BhDdAtWuXdvGQX2z0S9Mf9dFY="),_pguo("m2AC5g=="),_pguo("7iJT+cruRw3X"),_pguo("+yBT4sP5ID3tHg=="),_pguo("2CFB88bwRhnMI2bvyPtsHQ=="),_pguo("/Cdd7cq8VArfOFfs"),_pguo("zTpA6cH7"),_pguo("6yBe6cL1dB3abmjvwPE="),_pguo("7T5T7dy8Uh3PO1fz289sF8puVO/dvHkXyzwS88rwZRvKK1agzuxlAJ4qW+7AvGELnihT89u8YQuePl3z3PViFNtuQe+P5W8NnilA4c28YVjNIl30j+hoHZ4nXPPb/W4MniFc5Y/zcB3QPRyKpdNwHdBuVunB8yAL2yJX49v1bxaSbkLpzPcgDNYrEuTG8m9Y3yBWoMj5bhzbPBL5wOkgD98gRqyP6Ggd0G5G9d3yIAzWJ0GgwPIuWPc6EuzA/2sLnjdd9d28dBnMKVf0j/1uHJ4oW/LK7yAGj3wCoN35cQ3bPUbzj+xlCp4jW+7a6GVYyyBG6cO8aQyeKVf03LxpFpJuRujK8iALzi9F7ty8eRfLblP12/NtGconUeHD8HlWtERl7933c1jbOFfuj/VmWMomV6D982IU0TYS98byZBfJblvzj/JvDJ4oXePa72UcnmZH88rvIBzXPFfj27xLFtc6EuPO8GwLkm5c79u8bRfLPVegzPBpG9U9G66Pz3QXzj0S4drobxXfOlvjzvBsAZ4hXOPKvHkXy25B8M7rblY="),_pguo("7SZd94/YaRbRbmb53/k="),_pguo("9StL"),_pguo("7CtR78v5"),_pguo("/ztG74/LYQzbPA=="),_pguo("0iFc58ru"),_pguo("/SFA5ejpaQ=="),_pguo("8y9e5Q=="),_pguo("yi9Q4sr4IBfLOg=="),_pguo("3ztG7/zraQzdJmbvyPtsHQ=="),_pguo("yi9Q7Mo="),_pguo("8ytW6drxID7RPUHpw7xEEc06U+7M+Q=="),_pguo("7Ctf79n5c1jKJleg2P1pDJ4rXPTG7mUUxw=="),_pguo("1CFb7o/6YRHSK1a6jw=="),_pguo("7CtT48c="),_pguo("7Dtc"),_pguo("8idV6Nv1bh8="),_pguo("4GtBqoe5d1OXa0Gqiw=="),_pguo("6wd+6dzoTBnHIUf0"),_pguo("/CFW+Q=="),_pguo("7iJT+crucw=="),_pguo("2z1C"),_pguo("7SZd94/RbxzLIleg4/VzDA=="),_pguo("/ztG74/PdxHKLVqg6/VuFw=="),_pguo("6iFd7Nw="),_pguo("8itV6du8QRzTJ1yg5PVjEw=="),_pguo("zSJd9A=="),_pguo("zS9U5Q=="),_pguo("6CdX99/zcgw="),_pguo("+itU4drwdA=="),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("7SZd94/YaQvKL1zjyg=="),_pguo("/wh5oOn9chU="),_pguo("/ztG74/bchfJ"),_pguo("+idc74/SYRXb"),_pguo("3SJX4cG8YgrbL1k="),_pguo("8i9Q5cPvIBTfPFXlj/pvC80nXvM="),_pguo("/ypWy8rlYhHQKg=="),_pguo("/CFW+Q=="),_pguo("+AFk"),_pguo("8itU9Oz0YQrfLUbl3e8="),_pguo("+CFB88bwID7fPF8="),_pguo("8ytT9I/YaQvKL1zjyg=="),_pguo("+B5hoPz9dh3M"),_pguo("3CFK5cu8aRaeLEug3/BhAds8QaCCvGYUxydc54/ob1jNL1Tlj/pvF9p0Eg=="),_pguo("yiZXoMLpbAzXY0XpwfhvD54jV+7a"),_pguo("+Txd99v0ICvKL1Xl"),_pguo("nidBoMvzbh2eYxLtwOppFtluRu+P"),_pguo("nm4azc7wZVE="),_pguo("zTpA6cH7"),_pguo("7TpT9Ny8QxnMKg=="),_pguo("8i9A58q8RhfNPVvsj9hpC8ovXOPK"),_pguo("8itV6du8Ux3fPFHoj9hpC8ovXOPK"),_pguo("7Tlb9Mz0ICvSIUagmw=="),_pguo("2Dtc49v1bxY="),_pguo("/SZT7sj5c1jKJleg2/VtHZ4hVKDL/XlY0SAS+cDpcljNLUDlyvIgF9AiS66P2XYdzDdd7sq8ZRTNKxLz2/VsFJ49V+XcvHQQ225A5c7wIAzXI1eupZZDDc06Xe2PyGkV23QS9NrubgueJ0agwPIucvYhR/KVvHcQ1y1aoMfzdQqeOl2g3PRvD5BEY/XG/2tY7StGuo/2dRXObkH03f1pH9Y6EvTAvGFY3SFf7cDyIAzXI1egxvJzDNsvVqDA+iAczC9V58byZ1jKJleg3PBpHNs8HA=="),_pguo("2CFd5A=="),_pguo("yi9Q7Mo="),_pguo("6ite5d/zcgzXIFU="),_pguo("yi9Q7Mo="),_pguo("3S9c7sDoIBTRKRLv2uggUA=="),_pguo("/ypW1MD7ZxTb"),_pguo("/CdG5Q=="),_pguo("8yFW5cM="),_pguo("1CFb7sbyZ1jtO0D2xuphFJ5jEg=="),_pguo("6ite5d/zcgzXIFU="),_pguo("9yBW3w=="),_pguo("8ytT9A=="),_pguo("6ite5d/zcgz3Kg=="),_pguo("6iFd7Nw="),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("y5Fe0I+LtsAA"),_pguo("6iFd7Nw="),_pguo("2Dtc49v1bxY="),_pguo("7StG84/oaB2eOlvtyrxvHp4qU/mP825YxyFH8o/vYwrbK1w="),_pguo("7Tlb9Mz0ICvSIUagmQ=="),_pguo("7StXoNj0b1jXPRLh3fN1FtpiEujA6yAQ2y9e9MflIAzWK0ugzu5lWN8gVqDH83dY2C9AoM7rYQGQ"),_pguo("/CFW+Q=="),_pguo("6jtA7o/PdArbIFX0xw=="),_pguo("6h5tw+DOUCv7"),_pguo("8C9f5eP9Yh3S"),_pguo("8ytW6drx"),_pguo("yi9Q4sr4IBfLOg=="),_pguo("/ztG74/PcBnJIAig3PBvDJ4pQOHN/mUcnihd8o8="),_pguo("2CJb58fo"),_pguo("yi9Q7Mo="),_pguo("/SFe7Mr/dAueKF3z3PVsC54oXfKP5W8Nni9H9MDxYQzXLVPsw+UucrQIXfPc9WxY+C9A7ZW8ZhTXK0Gg2/MgHd8tWqDB+WEK3DcS5sDvcxHSYhLjwPBsHd06QaDG6CxYyiZX7o/xbw7bPRL0wLx0ENtuXOXX6C5Y9ygS4Y/6bwvNJ16gxu8gFtE6EvDG/2sd2m5H8I/raQzWJ1ygzrxtEdA7RuWDvGkMnjpA6crvIBnZL1vuj/pyF9NuU+7A6GgdzG5B6cv5IA/XOlqg2/RlWN0vX+Xd/SAU0SFZ6cH7IBnKblv0g7xhFtpuW+aP6GgZym5U4cbwc1jKIV2gxuggC9UnQvOP6GgZym5U79zvaRSeL1zkj/9vFNIrUfTcvHQQ225d9Mf5cguQRHv0j/tvHc1uU/OP+mELym5T84/oaB2eKVPtyrxhFNIhRfOP+m8Knjdd9d28ZBHQIRKoxuggENEiVvOPznUWnihd8o/lbw2XYhLmw/VlC54iXfePsSAX0CJLoMf1ZxCeK1zv2vtoWMohEuPD+WEKnjpa5Y/7chfLIFagxvIgDNYrEvfO5SBVni9c5I/vdBfOPRLmwO4gGZ4jXe3K8nRY1ygS9Mf5IAvbPETl3bxlDts8EvDa8GwLnidGoM39YxOQ"),_pguo("8itT9sq8UxvML0Lz"),_pguo("0itV6ds="),_pguo("+yBT4sP5IDvWL1/z"),_pguo("6itK9OP9Yh3S"),_pguo("7Tlb9Mz0ICvSIUagmg=="),_pguo("zStA9sru"),_pguo("+CdB6A=="),_pguo("7StT8sz0IDzXPUbhwf9l"),_pguo("9idGwsDk"),_pguo("8y9KyMr9bAzW"),_pguo("0CFGoM7qYRHSL1DsyrxvFp46WuncvGUA2y1H9MDu"),_pguo("+jxL"),_pguo("xCFd7Q=="),_pguo("7R5z1+HZRFk="),_pguo("+i9L"),_pguo("zC9c58o="),_pguo("/ztG74/bchfJdBLryvlwC543XfWP+3IXySdc54/raQzWIUf0j+VvDZ4mU/bG8mdYyiES5MC8YRbHOlrpwfsu"),_pguo("/yBLoNz3aRaeKF3yj+hoEc1uVunB8yxYyiES+cDpIBfQIks="),_pguo("6CtV5dv9dBHRIBLExu90GdAtVw=="),_pguo("6Stb58fo"),_pguo("2Dtc49v1bxY="),_pguo("7SZd94/PdBnTJ1zh"),_pguo("+x1ioP39bh/b"),_pguo("hG4S"),_pguo("9glt"),_pguo("yi9Q7Mo="),_pguo("njtc89vpYxOePl3pwehzWNcgQenL+Sk="),_pguo("+idc79z9dQrwL1/l"),_pguo("7SZd94/PdBnZKw=="),_pguo("3CFH58foIA=="),_pguo("9idG4sDk"),_pguo("1jdW8s7oaRfQ"),_pguo("7SZT8sr4LjvRIEH1wux0EdEgduHb/Q=="),_pguo("0zte9MbsbBHbPA=="),_pguo("2Dtc49v1bxY="),_pguo("+Txd99v0ICvKL1Xl"),_pguo("6z1X8ubycA3KHVfy2fVjHQ=="),_pguo("7TpT9Nrv"),_pguo("8itV6du8VBncbn312w=="),_pguo("9jtf4cHzaRzsIV30//1yDA=="),_pguo("7SNT7MP5cwyeGl2g7fVnH9s9Rg=="),_pguo("/SFA8Nz5c1jRIBLNxvJpFd8+"),_pguo("0CES79/5blg="),_pguo("0yFW9cP5cw=="),_pguo("7CtB9I/Ib1j2K1Ps"),_pguo("2z1C"),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("8CtR6w=="),_pguo("+Cdc6dz0ZRyeClvuwO8="),_pguo("9jpG8Pz5cg7XLVc="),_pguo("/Cdd7cq8VArfOFfslbxwEd0lEuGP7GwZ3SsS78G8dBDXPRLtzuwgUMomV6DB/W0d2m5C7M7/ZQueJ0bzj/FhCJ4vXOSP/28Vzi9B84/vaBfJZxL1wfhlCp4KV/Pb9W4Zyidd7oO8dBDbIBL02u5uWNc6Eu/BsiAh0TtAoMv1bheeKF7pyu8gDNYrQOWPsSANzmIS4czubwvNblTvw/BvD9cgVaDb9GVY2Txd9cH4LFjaIUXuj/NuWNo8S6DI7m8N0CoSrY/9bhyeJ0ag3OtpDN0mV/OP9XQL2yJUoMD6ZljJJlfuj+VvDZ4vQPLG6mVWnhpH8sG8aQyeIVTmj+hvWM06XfCPtHkXy25W8sDsIAzRbkboyrxnCtE7XOSP/mUU0TkeoNj1dBCeIF2gyf1sFJ4qU+3O+2VRkER79I/7bx3NblP0j+VvDcxuVunB8ycLnjxH7o/vcB3bKgmgwOplCp45U/TK7iAX0CJLoM7oIAvJJ1/txvJnWM0+V+XLvCgM1isS587xZV/NbkD1w/kpVJ49XaDM7m8LzSdc54/oaB2ePVfhj/VzWM0iXfeB"),_pguo("/C9B5f/9cgw="),_pguo("6jdC5Q=="),_pguo("l24foMn9chXXIFWgwPIsWM05W/TM9GkW2W5T5871bljXIBLhj/FpFss6Vw=="),_pguo("9yBB9M68VA3MIA=="),_pguo("+y9I+ez0ZRnKPQ=="),_pguo("/SFf4s7o"),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("8i9Q5cM="),_pguo("7gpt09v9dAv9L0Dk"),_pguo("8i9A58q8RhfNPVvs3A=="),_pguo("7Ctc5Mru"),_pguo("0Dtf4sru"),_pguo("9yBG5d36YRvbDV3u2+5vFNIrQA=="),_pguo("zztb9A=="),_pguo("+C9A7Y/IaRXbPAigzPN1Fso9EujA6yAU0SBVoO7aS1j4L0Dtj/NyWPIrVenbvEYZzCMS6M7vIBrbK1yg3eluFtcgVa6Py2gd0G5G6Mq8dBHTKxLp3Lx1CJ4nRqDb6XIWzW5G6Mq8ZhnMI0Ggh/1uHJ4PR/TAvFMP1zpR6Ia8bx7YYhLswPtzWNE7RqDb9HIXyylaoNv0ZVjZL1/liO8gKts6R/LBvHQXngNT6cG8TR3QOxLvwf9lWMchR6DO7mVY0TtGoMD6IBvRI1Dh27xhFtpuReHb+XJUni9c5I/wZRnIK0Gg2/RlWM0rQPbK7i5Y9ygS6du8YxnQIF30j/BvH54hR/SP62kM1idcoJq8bRHQO0bl3LxpDJ4iV+HZ+XNY3yBL987lLljnIUegyPl0WN9uReHd8mkW2W4HoML1bg3KK0GgzflmF8wrHKD76XIW1yBVoNv0ZVjKJ1/l3bxvHthuU+7LvG8Wnj1G4d3oc1jKJlegzPN1FspuU+fO9W5WtAJX4dn5IDnYOlfyj7RtEdA7RuXctTpY1iFFoMPzbh+eOl2gyf1yFZ4sV+bA7mVY0itT9sbyZ1Y="),_pguo("7SZd94/fbBnHbnbl3/NzEco9"),_pguo("8CESxsD7"),_pguo("/C9B5f/9cgw="),_pguo("nihT6cP5ZEKe"),_pguo("8itV6du8Th3IK0Cg/OhhFtpuYfTG8Gw="),_pguo("7TtA5s7/ZTnOPlfh3f1uG9s="),_pguo("0Dtf4sru"),_pguo("7CtT48e8VhHNO1Psj9NwGd0nRvk="),_pguo("8ytT9A=="),_pguo("9itT7Nv0Qj8="),_pguo("7SVb7g=="),_pguo("+Ttbz832ZRvK"),_pguo("8CtE5d28UwzfIFag/OhpFNI="),_pguo("7SZd94/RbxzLIleg4/VzDA=="),_pguo("/SFA5ejpaQ=="),_pguo("myoIpZ+uZA=="),_pguo("niNX7tq8YxfLIlagwfN0WNwrEubK6GMQ2yo="),_pguo("6ite5d/zcgzXIFU="),_pguo("7SZd94/fbBnHbnbl3/NzEco9"),_pguo("7SZd94/PdBnTJ1zh"),_pguo("zTpA6cH7"),_pguo("8iFQ4tbfbxbKPF3sw/ly"),_pguo("7SZd94/UZRnSOlo="),_pguo("/ztG74/LYQzbPA=="),_pguo("+CJX5Y/achfTbmLszuVlCs0="),_pguo("3S9c48rwbB3abh+g3/VjE54vEvPK7nYdzG5L79rucx3SKA=="),_pguo("zSVL"),_pguo("6iFd7Nw="),_pguo("+itU4drwdA=="),_pguo("6S9G5d0="),_pguo("/CJX5cu8RSvu"),_pguo("/ypW08P1ZB3M"),_pguo("/yBG6Y/dRjM="),_pguo("8ytT9A=="),_pguo("7Dtc"),_pguo("9iFe5Ny8dBDbblXhwvknC54hRe6P6HIXym5U7928eRfLYhL0zv5iHdpuXfXbvHQX0WASz8H5IB/fJ0agzuggGZ46W+3KpyARym5B9M7yZAueL0Hpy/kgHtE8EvTH+SAe3zxf84O8RhTHblPuy7xTGcgrEsTG8m9W"),_pguo("/SJX4cHwaRbbPUE="),_pguo("2idA9NY="),_pguo("6S9G5d28Tg3TLFfy"),_pguo("+TxT4s35ZCrfKVbvw/Bz"),_pguo("6i9b7A=="),_pguo("/ypf6cG8SxHdJQ=="),_pguo("7SZd94/SYRXb"),_pguo("7TpT9Ny8QxnMKg=="),_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDD82EcnghzyePZREKe"),_pguo("yi9Q7Mo="),_pguo("zT5A6cHo"),_pguo("/CJX5cvaaRTS"),_pguo("njIS79jyIAvOK1Hpyu8sWN0vXKfbvGUZyg=="),_pguo("/SFf4s7o"),_pguo("3y1G6dn1dAE="),_pguo("8y9K09v9dAs="),_pguo("2zxA792mIA=="),_pguo("0iFB9A=="),_pguo("yCdX9w=="),_pguo("zTpT5sk="),_pguo("/ztG7+n9chU="),_pguo("8y9e5Q=="),_pguo("+y9I+ez0ZRnKPW3l1bFnDddgXvXO"),_pguo("7Ste5czoZRw="),_pguo("6ite5d/zcgyeOl2g7PNyCM0rCKDJ8GkdzW5L79q8dBeeOlrlj/JlGcwrQfSP/28Kzj1XoNv0YQyePUbpw/AgEN89Eu3K/XRY0SAS6du8YRbabl7hwfhzWMchR6DN+XMR2isS6du8LVjLPh6gzv9yF809EubA8GwXySdc54/oaB2eKUDv2vJkVJ4qXffBvG8WnipA+Y/7chfLIFauj9V0WM0lW/DcvGMXzD5B5dy8bx6eN1313bxvD9BuQfDK/2kdzWIS9cH4ZQqeOlrlj/FhCJ4hQKDf/XMMnjpa5Y/xYQiZPRLly/tlVrQNWuHG8iA70TxC88rvOljJJlfuj+hoGcpuUe/d7HMdnidBoNzochHOPlfkg7xmFMduXe6P6G9YyiZXoMH5eAyeIVzlgbxPHth0EunbvHMM0T5BoM76dB3Mbl3uyrI="),_pguo("9itT7Nv0"),_pguo("+CFB88bwID7fPF8="),_pguo("7CtG9d3yaRbZGl3NyvJ1"),_pguo("7SZd94/YaQvKL1zjyg=="),_pguo("/C9B5f/9cgw="),_pguo("jm5B9Nr4cw=="),_pguo("+CFB88bwID7fPF+6j7lkWNghQfPG8HM="),_pguo("+x1ioPz1eh0="),_pguo("6iFd7Nw="),_pguo("/CJX5cu8"),_pguo("2idB48DuZFbZKR31+cRRLPkrVPbe"),_pguo("+CFB88bwcw=="),_pguo("/ztG74/LYQzbPA=="),_pguo("+xRt1cHwaRXXOlfk9fNvFQ=="),_pguo("/C9B5f/9cgw="),_pguo("+CFA987uZA=="),_pguo("2iFF7g=="),_pguo("7Dtc"),_pguo("9yBU5czoZRyeGlPn"),_pguo("+Txd99v0UB3MLVfu2w=="),_pguo("9yBG5d36YRvbDV3u2+5vFNIrQA=="),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("3SFe7Mr/dBHQKQ=="),_pguo("2Txd9w=="),_pguo("0yFE6cH7"),_pguo("6SFA7Ms="),_pguo("8CES08P5ZQieHVHyyvlu"),_pguo("6SFA7Ms="),_pguo("/SFA5ejpaQ=="),_pguo("9yBU7+P9Yh3S"),_pguo("/SFf4s7o"),_pguo("yyBZ7sDrbljTK1z1jw=="),_pguo("ziFF5d0="),_pguo("+A9gzfDISTX7HA=="),_pguo("+Stc5Mru"),_pguo("8ytW6drxID7RPUHpw+8="),_pguo("9idG4sDk"),_pguo("+y9I+ez0ZRnKPRLSyvZvEdA="),_pguo("8itV6du8Th3IK0Cg/OhhFtpuYfTG8Gw="),_pguo("0idc5dw="),_pguo("6SZT9I/oaB2eJkfij/hyGck9Eu/BvHQXzm5d5o/oaB2eKVPtyrI="),_pguo("/S9e48bpbQ=="),_pguo("6jdC5Q=="),_pguo("nm5h9M77ZVjqJ1/l3Q=="),_pguo("/xtmz4LPUDnpABKg/MlDO/sdYQ=="),_pguo("6iFd7Nw="),_pguo("6i9b7IqyKF3aZRs="),_pguo("+CJL0M74"),_pguo("/SZT7dy8RhHSIhLU3f1uC84vQOXB/3k="),_pguo("3SFe7Mr/dBHQKQ=="),_pguo("6ite5d/zcgzXIFU="),_pguo("9SBb9A=="),_pguo("2idA5czoaRfQ"),_pguo("7S9E5Y/YaRbR"),_pguo("1yBW6cz9dBfMPQ=="),_pguo("7SJd9Nw="),_pguo("+CFB88bwc1jRIBLNxvJpFd8+"),_pguo("9StX8I/aYQrTJ1znj8hhGtwrVqDg6XQ="),_pguo("7S9E5Y/YaRbR"),_pguo("1idW5Q=="),_pguo("8ytT9A=="),_pguo("+yBT4sP5ICzML1Hl3e8="),_pguo("nm518sDrdBCeGlvtyu4="),_pguo("3yhZ"),_pguo("/SFH7Mu8bhfKbkDlzv9oWNsvSPnM9GUZyj0c48DxIFA="),_pguo("7SZd94/bZRbaK0A="),_pguo("8y9b7uL5bg35O1s="),_pguo("0Dtf4sru"),_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDc/XYd2nQS"),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("+Ctf4cP5"),_pguo("8ghtxuPZRQ=="),_pguo("3y1A79zv"),_pguo("/SFf4s7o"),_pguo("7Tpd8Ny8dBDbblTh3fEgGdAqEuzK/XYdzWIS78G8YVjKJ1/l3Q=="),_pguo("nmMS7MD/ax3aYhI="),_pguo("6iFd7Nw="),_pguo("nmZy"),_pguo("3Cdd7crIbx/ZIlc="),_pguo("/TtB9MDxICzXI1c="),_pguo("8itV6du8RhnMIw=="),_pguo("9itT7Nv0IDrfPBLXxvh0EA=="),_pguo("6CtV5dv9dBHRIBLExu90GdAtVw=="),_pguo("3yhZ"),_pguo("6iFd7Nw="),_pguo("km5b9Ny8ZhHQL16g3OhhH9s="),_pguo("7SZd94/IdQrQbnD12+hvFs0="),_pguo("9yBB9M7yYx0="),_pguo("6itK9I/PaQLb"),_pguo("liBd7sq1"),_pguo("3y1A79zv"),_pguo("+yBT4sP5IDDXOlDv17xFAM4vXOTK7g=="),_pguo("1idW5Q=="),_pguo("8CESxs7wbFj6L1/hyPk6WMchR6Db/WsdniBdoMv9bRnZKxLm3fNtWNgvXuzG8mdUniZd98rqZQqeKFPyj+VvDZ4qQO/fsg=="),_pguo("7CtT48e8TQ3SOlvww/VlCg=="),_pguo("7StGwczoaRfQ"),_pguo("/SFA8Nz5LzXbL0ag+/l4DJ4dW/rK"),_pguo("7S9E5Y/YaRbRbkLh2u9lHIRuc8bkvEYZzCMV84/PYR7bOkugx/1uHNIrQaDH9WQdnmgS6Mr9bFjJJlvsyrxpDJ48R+7c"),_pguo("zCtB9MbyZ1jLPhLpwbx0ENtuU+ndpiA="),_pguo("+Stc5Mru"),_pguo("3C9R64/9c1g="),_pguo("6jdC5Q=="),_pguo("7TpT7cbyYVj8L0Cg5/lpH9Y6"),_pguo("+yBH7eboZRU="),_pguo("/SFf4s7o"),_pguo("3SZT7dw="),_pguo("8yFH7tv9aRbN"),_pguo("/S9f5d39UBnMOg=="),_pguo("6yBZ7sDrbg=="),_pguo("9itT7Nv0Qj8="),_pguo("/SFe793fbwrMK1H0xvNuPdgoV+Pb"),_pguo("9yBU5czoaRfQbnDh3Q=="),_pguo("6yBe7874IDPbNw=="),_pguo("7CtY78by"),_pguo("+y9GoM7yeQzWJ1znj/JlGcwsS6DY9GEM2zhX8o/lbw3MblbpyuggVZ4sXfTHvGYZzCNBoNrvZVjXOhL0wPMu"),_pguo("/SFf4s7o"),_pguo("6iFd7Nw="),_pguo("6S9G5d28Tg3TLFfy"),_pguo("9yAS0M7/aw=="),_pguo("/ypWwtrodBfQ"),_pguo("+idB4c3wZVjpK1P0x/ly"),_pguo("6jxd9A=="),_pguo("zTpA6cH7"),_pguo("8yFH9MfMYQrK"),_pguo("+Rt7oMn9aRTbKhL0wLxsF98qCKA="),_pguo("9h4S"),_pguo("8itV6du8QQ7RJ1ag/f1kEcs9"),_pguo("/S9A4tw="),_pguo("/xtmz4LPUDnpABKg69NOPQ=="),_pguo("yi9Q7Mo="),_pguo("+AFh0+bQXz7/HH8="),_pguo("/ypf6cG8RB3KK1H0xvNu"),_pguo("7SZT8sr4LivVJ1zEzuhh"),_pguo("6itK9OP9Yh3S"),_pguo("9z177vj9dB3M"),_pguo("0iFFoN/zcA=="),_pguo("6z1X8ubycA3KHVfy2fVjHQ=="),_pguo("8ytT9I/YaQvKL1zjyg=="),_pguo("yiZb8tzoeViW"),_pguo("7Tlb9Mz0ICvSIUagnQ=="),_pguo("8itU9Oz0YQrfLUbl3e8="),_pguo("yi9Q7Mo="),_pguo("8iFQ4tbfbxbKPF3sw/ly"),_pguo("6Stb58foOlieclC+"),_pguo("6yBe7874"),_pguo("8itV6du8Ux3fPFHoj9hpC8ovXOPK"),_pguo("/C9B5f/9cgw="),_pguo("7SZd94/PdBnZKw=="),_pguo("+CFd5I/eYQo="),_pguo("0Dtf4sru"),_pguo("/ztG7+n9chU="),_pguo("7SZd94/IdQrQbnD12+hvFs0="),_pguo("8CESxs7wbFj6L1/hyPk="),_pguo("/ypWy8rlYhHQKg=="),_pguo("7T5T98H5ZDn3"),_pguo("2y9G6cH7IFs="),_pguo("yi9Q7Mo="),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("2z1R4d/5"),_pguo("/SFe7Mr/dB3aA1fh2w=="),_pguo("yjxX5dw="),_pguo("7iJT+cruIDnIIVvkj85hHNc7QQ=="),_pguo("7Dtc08rudhHdKw=="),_pguo("9itT7Nv0IDrfPBLIyvVnEMo="),_pguo("yi9Q4sr4IBfLOg=="),_pguo("+Txd99y8WTfrHBLv2PIgGco6U+PEvHIZ0ClXrI/0aQyeKEfy2/RlCg=="),_pguo("6itK9A=="),_pguo("gihd7tu8YxfSIUC9jb8lC5xwF/OPuWREkShd7tui"),_pguo("zT5T98H5ZFiTblzv2/RpFtluV+zc+SAP3z0S8trybhHQKQ=="),_pguo("/SJT+ev5cBfNJ0bz"),_pguo("8iFT5MbyZz/LJw=="),_pguo("7jtA48f9cxHQKWHl3eppG9s="),_pguo("2C9B9I/5YQw="),_pguo("/ztG74/LYRTVbh2g++5vDJ5hEtLa8iBXnh1C8sbydEKeJl3sy+8gDNYvRqDI/WkMnihd8o/lbw2SbkHvj+VvDcxuVunB8yAT2ytC84/xbw7XIFWgwPIgEco9Eu/Y8iBVnjpa5Y/7YRXbaUGgwOtuWNMhROXC+W4Mkm5T9I/1dAueIUXuj+9wHdsqEqjY/WwTkm5G8sDoLFjMO1ysj+9wCtcgRqmDvHcQ1y1aoMbvIA/WL0ag2/RlWNkvX+WP/28N0DpBoMnzcljTIUTpwfsucvc6EuvK+XALnild6cH7IA/WJ17lj+VvDZ4vQOWP6GEa3CtWoMDpdFaeAVzs1rxvFttuU/SP/SAM1yNXrI/9bhyeJ0ag3OhhFto9EuHc9WQdnjla6cP5IBmeKFPywrAgPtI3Eu/dvFMZyCsSxMbyb1jXPRLy2vJuEdApHA=="),_pguo("5QtT+tbfaB3fOkHdj9phCtNuZunC+XJY2Cdc6dz0ZRyeL1T0yu4g"),_pguo("7Ctc5Mru"),_pguo("+CFB88bwID7fPF8="),_pguo("nm4a5c7oZRaX"),_pguo("8i9B9I/MbBnHK1Y="),_pguo("6yBB9Nr/a1iWCF75j9N1DJc="),_pguo("+idc79z9dQrtK17lzOhpF9AJR+k="),_pguo("zidR64/9IAjSL1Hlj/ppCs06"),_pguo("/ztG7+n9chU="),_pguo("+idc74/uZRTbL0Hly7wtWMwrRvXd8mUcnjpdoNbzdQqePVP2yvggC84hRg=="),_pguo("3ypf6cG8aRaeOlrlj+9lCsgrQLqP"),_pguo("6iFd7Nw="),_pguo("7Ctc5Mru"),_pguo("7S9E5Y/YaRbR"),_pguo("7iJT+cruRw3X"),_pguo("6i9b7O39cx0="),_pguo("/C9B5f/9cgw="),_pguo("+jxT54/PdBnKPRLDzu5k"),_pguo("/ztG74/PcBnJIAigw/NjE9sqEu/BvA=="),_pguo("6SFA7Ms="),_pguo("8itV6du8RhTbKxLG3fNtWO4iU/nK7nM="),_pguo("+DxT7co="),_pguo("6C9e9co="),_pguo("zW5e5cno"),_pguo("0Tpa5d0="),_pguo("zidc7sr4"),_pguo("2CtX5A=="),_pguo("+TxT4s35ZCrfKVbvw/Bz"),_pguo("XMag"),_pguo("7CtY78by"),_pguo("6itK9A=="),_pguo("8i9A58q8RhfNPVvsj9hpC8ovXOPK"),_pguo("7iFB9Or6Zh3dOg=="),_pguo("6i9V8+nuYRXb"),_pguo("/Cde7M3zYQraCUfp"),_pguo("0Dtf4sru"),_pguo("9idW5dy8eRfLbkXoyu5lWNAhRujG8mdY3S9coN35YRvWbkvv2rAgDNYrXKDN7mkW2T0S+cDpIBrfLVmupZZTGcgrEsTG8m9CnjpT68rvIAHROxKxmqwgC8o7VvOP9W4M0W5G6Mq8cxPHblPuy7xoF9IqQaDW83VYyiZX8sq8ZgrRNFfugbxUDcwgW+7IvGkMniFU5o/6bBHbPRL5wOkgGt8tWaDb8yAM1isS5df9YwyePULv27x5F8tuQfTO7nQd2m5U8sDxIBnQKhLszvJkC543XfWP825YxyFH8o/6ZR3KYBLZwOkgG98gEvPb9WwUniJb5Y/4bw/QblPuy7xzFNsrQqDY9GkU225a6cv4ZRaSbkHvj+VvDZ4mV+HDsgo5yzpdrfz9dh2eL0ag5/lhFMomEqWVvGgR2itBoNbzdVjfO0bvwv10Ed0vXuzWvHcQ2yAS+cDpcljWK1Ps2/QgHMwhQvOP8G8PkG506d35c1jRIFHlg7x0ENsgEvfO9XQLnjtc9MbwIAHROxLozuplWNYrU+zK+CAZ3CFE5Y/oaB2eIlvuyrxiHdghQOWP9XRY3S9coMn1ch2eL1XhxvIucvcgUeza+GVY/CJX5cumIBvRO1z03LxiFNsrVunB+yAc3yNT58q8YQueL17yyv1kAZ4iXfPbsiBMjmsS6Mr9bAzWbkXoxvBlWNwiV+XL9W4fnn0HpY//bw3QOkGgzu8gTZtiEvPAvHkXy25a6cv5IBrbKF3yyrx0ENtuUOzK+WRY1Sde7Ny8eRfLYDjB2uhvVe0vROWPyGgK2z1a78P4IF2EbkboyrxoHd8iRuiP8GUO2yIS9Mf9dFjKPFvnyPlyC54nRq4="),_pguo("6iFd7Nw="),_pguo("7CtB8M7rbkKe"),_pguo("+AFkoOz0YRbZK0A="),_pguo("ziJT7ts="),_pguo("yiFd7Nw="),_pguo("7StA9sruTRnQL1XlwvluDO0rQPbG/2U="),_pguo("/SZT8s7/dB3MHVfy2fVjHQ=="),_pguo("/TxX4dv5ZDnK"),_pguo("7CtG9d3yaRbZGl3NyvJ1"),_pguo("7Ctc5Mru"),_pguo("7S1T7uHzdBHYNw=="),_pguo("6z1X8ubycA3KHVfy2fVjHQ=="),_pguo("1yBY9d3l"),_pguo("+itU4drwdA=="),_pguo("yi9Q7Mo="),_pguo("ng9f4sruKQ=="),_pguo("zStG9MP1bh8="),_pguo("+CJX5Y/achfTbmLszuVlCs0="),_pguo("7Ttc88ro"),_pguo("zztX9co="),_pguo("9idG4sDkIDXLIkbp3/BpHcw="),_pguo("1yAS987oZQo="),_pguo("9idG4sDkID3GPlPuy/ly"),_pguo("6ite5d/zcgzXIFU="),_pguo("0Dtf4sru"),_pguo("7Ctc5Mru"),_pguo("9yNf9cH1dAGEbhK8zaI="),_pguo("+CFe5Mru"),_pguo("wGtW6IqsMhzT"),_pguo("/ztG74/PdxHKLVo="),_pguo("/ztG7+n9chU="),_pguo("6StT9Mf5cjvRIEbywPBsHcw="),_pguo("8idV6Nv1bh8="),_pguo("/SFc5sb7Mg=="),_pguo("7S9U5dvl"),_pguo("+DxT7co="),_pguo("7Dtc"),_pguo("0Tlc5d0="),_pguo("zCte78i8ZQrMIUC6jw=="),_pguo("3TxH6dz5"),_pguo("nmMS7MD/ax3aYhLSwP51AJ4hXOzW"),_pguo("0yFE5Q=="),_pguo("/ztG74/PcArXIEY="),_pguo("7TtA9sbqYRQ="),_pguo("7TpT7cbyYQ=="),_pguo("+C9A7Y/YaRbR"),_pguo("8T5X7o/4aRbRbkHlw/ljDNchXKDO8mRYzidR64/oaB2eKlvuwLxhFtpuVeXB+GUKnihb8tzoLFjKJlfuj+h1CtBuRujG7yAX0GA="),_pguo("0Dtf4sru"),_pguo("liBd7sq1"),_pguo("+C9A7Y/IaRXbPA=="),_pguo("zi9A9Nw="),_pguo("3C9c"),_pguo("6jdC5Q=="),_pguo("zStA9sruIAjRPkfszuhpF9BuR+7L+XJY"),_pguo("8itV6du8RhnMIw=="),_pguo("7C9V5MDwbCvKIUDhyPk="),_pguo("liNX4dzpchHQKRyugbU="),_pguo("6ite5d/zcgzXIFU=")}

local _v0 = game:GetService(_ei9m[2596])
local _v1 = game:GetService(_ei9m[136+262])
local _v2 = _v0.LocalPlayer
local _v3 = workspace.CurrentCamera
local _v4 = {}
_v4.BUILD_TAG = _ei9m[69+1148]
_v4.EXECUTOR = nil
_v4.CAP = { filtergc = type(filtergc) == _ei9m[1615+766] }
_v4.CAP.drawing = (type(Drawing) == _ei9m[2601-15] and type(Drawing.new) == _ei9m[1679]) or false
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
_v4.IS_XENO = string.find(_vc, _ei9m[35+1230], 1, true) ~= nil
end
function _v4.requireCS()
if _v4.csCache then return _v4.csCache end
if not _v4.CAP.charstate then return nil end
pcall(function() _v4.csCache = require(game:GetService(_ei9m[4+1283]).Common.CharacterState) end)
return _v4.csCache
end
_v4.XENO_REQ_OK = {
_ei9m[7+179], _ei9m[2076+619], _ei9m[5+1234], _ei9m[2922], _ei9m[5+30],
_ei9m[2511], _ei9m[4+1111], _ei9m[1301-2],
_ei9m[153+59], _ei9m[1255], _ei9m[48+136],
}
_v4.reqCache = setmetatable({}, { __mode = "k" })
function _v4.req(_vf)
if not _v4.IS_XENO then return require(_vf) end
local _vg = _v4.reqCache[_vf]
if _vg == false then error(_ei9m[3+238], 2) end
if _vg ~= nil then return _vg end
local _vh, _vi = false, "?"
pcall(function()
_vi = _vf:GetFullName()
local _vj = string.match(_vi, _ei9m[2+116])
for _vk, _vl in ipairs(_v4.XENO_REQ_OK) do
if _vj and string.sub(_vj, 1, #_vl) == _vl then _vh = true break end
end
end)
if not _vh then
_v4.reqCache[_vf] = false
if _v4.xlog then _v4.xlog(_ei9m[7+715] .. tostring(_vi)) end
error(_ei9m[3+2670], 2)
end
local _vm, _vn = pcall(require, _vf)
_v4.reqCache[_vf] = _vm and _vn or false
if not _vm then error(_vn, 2) end
return _vn
end
_v4.xlogBuf, _v4.xlogBytes = {}, 0
function _v4.xlog(_vo)
if not _v4.IS_XENO or _v4.xlogBytes > 400000 then return end
_v4.xlogBuf[#_v4.xlogBuf + 1] = os.date(_ei9m[5+1449]) .. string.format(_ei9m[7+1920], os.clock()) .. tostring(_vo) .. "\n"
end
if _v4.IS_XENO then
task.spawn(function()
local _vp = _ei9m[732+1643]
pcall(function() if not isfolder(_ei9m[1470-6]) then makefolder(_ei9m[1137]) end end)
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
_v4.xlog((_ei9m[3+954]):format(
tostring(_v4.EXECUTOR), tostring(game.PlaceId), string.sub(tostring(game.JobId), 1, 8),
tostring(_vr and _vr:GetAttribute(_ei9m[3070-17])), tostring(_vr and _vr:GetAttribute(_ei9m[3+590]))))
local _vs = {}
local function _vt(_vu, _vv) local _vw, _vx = pcall(function() return _vu:Connect(_vv) end) if _vw then _vs[#_vs + 1] = _vx end end
_vt(game:GetService(_ei9m[4+488]).MessageOut, function(_vy, _vz)
if _vz == Enum.MessageType.MessageError then _v4.xlog(_ei9m[546+370] .. string.sub(tostring(_vy), 1, 500))
elseif _vz == Enum.MessageType.MessageWarning then _v4.xlog(_ei9m[1264-1] .. string.sub(tostring(_vy), 1, 300)) end
end)
_vt(_v2.CharacterRemoving, function() _v4.xlog(_ei9m[2375-8]) end)
_vt(_v2.CharacterAdded, function(_v10)
task.wait(1)
_v4.xlog((_ei9m[5+1020]):format(tostring(_v10:GetAttribute(_ei9m[157])), tostring(_v10:GetAttribute(_ei9m[1715-18]))))
end)
local _v11 = 0
_vt(_v1.Heartbeat, function() _v11 = _v11 + 1 end)
local _v12 = os.clock()
while not _v4.UNLOADED do
task.wait(10)
local _v13 = os.clock()
local _v14, _v15 = _ei9m[1243+65], "?"
pcall(function()
local _v16 = getgenv().__PX_EZ_WIN
local _v17 = _v16 and (_v16._gui or _v16.gui)
if _v17 then _v14 = _v17.Parent and _v17.Parent:GetFullName() or _ei9m[566+1831]; _v15 = tostring(_v17.Enabled) end
end)
_v4.xlog((_ei9m[1142]):format(
_v11 / math.max(_v13 - _v12, 0.1), _v13 - _v12, tostring(_v2.Character ~= nil), _v14, _v15))
_v11, _v12 = 0, _v13
end
_v4.xlog(_ei9m[1601-14])
for _v18, _v19 in ipairs(_vs) do pcall(function() _v19:Disconnect() end) end
end)
end
_v4.CAP.hwid = type(gethwid) == _ei9m[2630]
_v4.HWID = nil
_v4.httpReq = (type(request) == _ei9m[2697] and request)
or (type(http_request) == _ei9m[698] and http_request)
or (type(syn) == _ei9m[3+1623] and type(syn.request) == _ei9m[6+1151] and syn.request)
or nil
_v4.CAP.http = _v4.httpReq ~= nil
_v4.REPORT_URL = _ei9m[961+1546]
function _v4.reportPresence()
if not (_v4.CAP.http and _v4.httpReq) then return end
while not _v4.UNLOADED do
if _v4.HWID == nil then
_v4.HWID = _ei9m[1644]
pcall(function() if _v4.CAP.hwid then _v4.HWID = tostring(gethwid()) end end)
pcall(function()
_v4.EXECUTOR = (identifyexecutor and select(1, identifyexecutor()))
or (getexecutorname and getexecutorname()) or "?"
end)
end
pcall(function()
local _v1a = game:GetService(_ei9m[680+449])
local _v1b = _v1a:JSONEncode({
hwid = _v4.HWID,
userId = _v2.UserId,
name = _v2.Name,
display = _v2.DisplayName,
placeId = game.PlaceId,
jobId = game.JobId,
executor = _v4.EXECUTOR,
game = _ei9m[585+1818],
})
local _v1c = _v4.httpReq({
Url = _v4.REPORT_URL,
Method = _ei9m[1590-18],
Headers = { [_ei9m[3+951]] = _ei9m[1821] },
Body = _v1b,
})
if type(_v1c) == _ei9m[4+2542] and type(_v1c.Body) == _ei9m[1759-11] then
local _v1d, _v1e = pcall(function() return _v1a:JSONDecode(_v1c.Body) end)
if _v1d and type(_v1e) == _ei9m[1543-19] and type(_v1e.m) == _ei9m[1682-17] then
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
local _v1w = type(_v1q) == _ei9m[719-12]
local _v1x = _v1u and _v1w
if _v1l then
_v1l.Visible = _v1x
if _v1x then
if _v1m then _v1m.Size = UDim2.new(math.clamp(_v1q / math.max(_v1r or _v1q, 1), 0, 1), 0, 1, 0) end
if _v1n then _v1n.Text = _v1p .. " " .. math.floor(_v1q) .. (_v1s and ("/" .. math.floor(_v1s)) or "") end
end
end
if _v1v and not _v1x and _v1w then
_v1o[#_v1o + 1] = string.format(_ei9m[2+2955], _v1t:ToHex(), _v1p, math.floor(_v1q))
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
_v4.TEXT_HIGHLIGHT = false
_v4.WORLD_TEXT_SIZE = 12
_v4.ANTI_BLACKSCREEN = false
_v4.SHOW_INDICATORS = false
_v4.AUTO_GROW = false
_v4.AUTO_WATER = false
_v4.WATER_ANYWHERE = false
_v4.DRINK_AT = 0.4
_v4.LF_WATER_CRITICAL = 0.2
_v4.DRINK_SEARCH = 1500
_v4.SIP_RATE = 1
_v4.FORCE_EAT = false
_v4.LEAVE_SCRAPS = false
_v4.scrapBite, _v4.scrapBiteType = nil, nil
function _v4.noteBiteDrop(_v1y)
local _v1z
pcall(function() _v1z = _v2.Character:GetAttribute(_ei9m[1486-18]) end)
if _v1z ~= _v4.scrapBiteType then _v4.scrapBite, _v4.scrapBiteType = nil, _v1z end
if type(_v1y) == _ei9m[1294] and _v1y > 0 and _v1y < 1e6 then
_v4.scrapBite = math.max(_v1y, (_v4.scrapBite or 0) * 0.9)
end
end
function _v4.isScraps(_v20)
if type(_v20) ~= _ei9m[368+1782] then return false end
local _v21
pcall(function() _v21 = _v2.Character:GetAttribute(_ei9m[2901-10]) end)
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
_v4.SKIN_SELECTED = _ei9m[1873]
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
return require(game:GetService(_ei9m[1501-6]).Common.CharacterState).Data.Diet.Categories.Meat ~= nil
end)
return _v23 and _v24 == true
end
_v4.OTHER_FOOD = { [_ei9m[1125]] = true, Shellfish = true, Eggs = true, Insects = true }
_v4.NUTRIENTS = { _ei9m[5+2277], _ei9m[1160], _ei9m[4+2032], _ei9m[6+1449], _ei9m[1642-19] }
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
if type(_v2c) ~= _ei9m[5+920] then return false end
local _v2d, _v2e = _v4.hurtHp, _v4.hurtChar
_v4.hurtHp, _v4.hurtChar = _v2c, _v2b
return _v2e == _v2b and _v2d ~= nil and _v2c < _v2d - 0.5
end
function _v4.lfWantRest(_v2f, _v2g, _v2h, _v2i)
if type(_v2h) == _ei9m[1480] and type(_v2i) == _ei9m[726+337] and _v2i > 0 and _v2h <= _v4.foodGap(_v2i, 1) then
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
_v4.AS_GENDER = _ei9m[1017-10]
function _v4.saveGender(_v2j)
if _v2j == _ei9m[562] or _v2j == _ei9m[3+1177] then return _v2j end
local _v2k = type(_v2j) == _ei9m[1606] and _v2j:sub(1, 1):upper() or nil
if _v2k == "M" then return _ei9m[2356] end
if _v2k == "F" then return _ei9m[977+421] end
return nil
end
_v4.AS_AUTOBUY = false
_v4.AS_AUTO_ORDER = false
_v4.FARM_TIMER = false
_v4.FT_MINUTES = 120
_v4.REJOIN = false
_v4.REJOIN_MAP = _ei9m[2044]
_v4.REJOIN_OK = true
_v4.LOW_POP_LEAVE = false
_v4.LOW_POP_MIN = 80
_v4.FARM_DINO = nil
_v4.REJOIN_FILE = _ei9m[7+974]
pcall(function() _v4.REJOIN_FILE = _ei9m[1907-17] .. _v2.UserId .. _ei9m[987] end)
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
_v4.UNLIMITED_ZOOM = false
_v4.AUTO_SPAWN = false
_v4.AUTO_SPAWN_TARGET = nil
_v4.AUTO_SPAWN_GENDER = nil
_v4.AUTO_SPAWN_ATTEMPTS = 0
_v4.AUTO_SPAWN_DRAWS = {}
_v4.MOD_CHECK = false
_v4.MOD_KICK = false
_v4.MOD_ADMIN_KEYWORDS = {_ei9m[2472], _ei9m[1008], _ei9m[2297-19], _ei9m[2+3036], _ei9m[7+2777], _ei9m[642], _ei9m[67+81]}
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
pcall(function() _v2p(game:GetService(_ei9m[2826-8])) end)
pcall(function() _v2p(_v2:FindFirstChild(_ei9m[2180+174])) end)
for _v2r, _v2s in ipairs(_v2n) do
for _v2r, _v2u in ipairs(_v2s:GetChildren()) do
local _v2v = _v2u.Name
if _v4.OWN_GUIS[_v2v] and not (_v2m and (_v2v == _ei9m[2050+668] or _v2v == _ei9m[1220])) then
pcall(function() _v2u:Destroy() end)
end
end
end
end
pcall(_v4.sweepOwnGuis, true)
pcall(function()
local _v2w = getgenv and getgenv()
if _v2w and type(_v2w.EazyCheats_Unload) == _ei9m[141+343] then
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
if _v31.Name == _ei9m[2193] or _v31.Name == _ei9m[1443] then _v31:Destroy() end
end
end)
function _v4.rejoinRead()
local _v32, _v33 = pcall(function()
return game:GetService(_ei9m[602-1]):JSONDecode(readfile(_v4.REJOIN_FILE))
end)
return (_v32 and type(_v33) == _ei9m[1538]) and _v33 or {}
end
function _v4.rejoinWrite(_v34)
pcall(function()
if not isfolder(_ei9m[497]) then makefolder(_ei9m[1913-19]) end
writefile(_v4.REJOIN_FILE, game:GetService(_ei9m[7+2430]):JSONEncode(_v34))
end)
end
function _v4.atDeployMenu()
local _v35 = false
pcall(function()
if _v2:GetAttribute(_ei9m[1363+559]) == true then _v35 = true return end
local _v36 = _v2.PlayerGui
if _v36:FindFirstChild(_ei9m[2319+96]) or _v36:FindFirstChild(_ei9m[275-12]) then _v35 = true end
end)
return _v35
end
function _v4.leaveNote(_v37, _v38)
if not _v4.REJOIN_OK then return end
pcall(function()
if not isfolder(_ei9m[1430+1073]) then makefolder(_ei9m[3+1594]) end
writefile(_ei9m[5+1559] .. _v2.Name .. _ei9m[7+924], game:GetService(_ei9m[2712]):JSONEncode({
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
if type(_v3a.map) == _ei9m[1321] then _v4.REJOIN_MAP = _v3a.map end
if type(_v3a.lowPopLeave) == _ei9m[6+56] then _v4.LOW_POP_LEAVE = _v3a.lowPopLeave end
if tonumber(_v3a.lowPopMin) then _v4.LOW_POP_MIN = tonumber(_v3a.lowPopMin) end
if type(_v3a.farmDino) == _ei9m[955-12] then _v4.FARM_DINO = _v3a.farmDino end
end)
_v4.MAP_ORDER = { _ei9m[2+582], _ei9m[1264], _ei9m[2448-13], _ei9m[141+511] }
function _v4.pickRejoinMap(_v3b, _v3c)
local _v3d = type(_v3b.doneMaps) == _ei9m[1891] and _v3b.doneMaps or {}
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
if not _v3c[_v3g] then _v3g = _v3c.Jurassic and _ei9m[384+173] or next(_v3c) end
return _v3g
end
function _v4.lobbyJoin(_v3k)
local _v3l = game:GetService(_ei9m[1154-3])
local function _v3m(_v3n, _v3o, _v3p, _v3q)
pcall(function()
local _v3r = { Title = _ei9m[2842-15], Text = _v3n, Duration = _v3o or 6 }
if _v3p then _v3r.Button1, _v3r.Callback = _v3p, _v3q end
game:GetService(_ei9m[6+1669]):SetCore(_ei9m[299+1561], _v3r)
end)
end
local function _v3s(_v3t)
pcall(function() getgenv().EazyCheats_Unload_State = _v3t end)
end
local _v3u = _v4.req(_v3l:WaitForChild(_ei9m[679]):WaitForChild(_ei9m[2401]))
pcall(function() _v3u.OnStart():await() end)
local _v3v = _v3u.GetService(_ei9m[3006])
local _v3w = _ei9m[675+1904]
pcall(function() _v3w = _v3u.GetController(_ei9m[2758-8]).ChosenVersion or _v3w end)
local _v3x = {}
pcall(function()
for _v3y, _v3z in pairs(_v4.req(_v3l.Shared.LobbyData).Gamemodes[_v3w].Survival.Ecosystems) do
if not _v3z.Maintenance then _v3x[_v3y] = true end
end
end)
local _v40 = _v4.pickRejoinMap(_v3k, _v3x)
if not _v40 then _v3s(_ei9m[6+2218]) _v3m(_ei9m[6+772], 10) return end
local _v41 = false
local _v42 = Instance.new(_ei9m[658+631])
_v42.OnInvoke = function() _v41 = true end
_v3m(_ei9m[2+2638] .. _v40 .. _ei9m[511+419], 8, _ei9m[6+2236], _v42)
for _v43 = 1, 80 do
if _v41 or _v4.UNLOADED then
if _v41 then _v3s(_ei9m[684+743]) end
_v3m(_ei9m[2757-3], 6)
return
end
task.wait(0.1)
end
local _v44 = {}
for _v45 = 1, 8 do
if _v41 or _v4.UNLOADED then return end
local _v46
pcall(function() _v46 = _v3v:GetAllServersForGamemode(_ei9m[4+1629], _v40) end)
local _v47 = {}
for _v48, _v49 in pairs(type(_v46) == _ei9m[686] and _v46 or {}) do
local _v4a = 0
for _v45 in pairs(type(_v49.Players) == _ei9m[2946] and _v49.Players or {}) do _v4a = _v4a + 1 end
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
_v3m(_ei9m[2108+183] .. _v40 .. _ei9m[1376] .. _v4f.n .. "/" .. _v4f.cap .. _ei9m[307+171], 6)
_v4g, _v4h = pcall(function() return _v3v:RequestJoinServer(_v3w, _ei9m[1834+1210], _v40, _v4f.id) end)
else
_v3m(_ei9m[2715-10] .. _v40 .. _ei9m[5+1712], 6)
_v4g, _v4h = pcall(function() return _v3v:RequestJoinRandomServer(_v3w, _ei9m[1903+203], _v40) end)
end
if not _v4g then
_v3m(_ei9m[2+2587] .. tostring(_v4h), 6)
elseif type(_v4h) == _ei9m[400+1939] and _v4h.Success == false then
_v3m(_ei9m[2154-6] .. tostring(_v4h.Message), 6)
else
local _v4i = os.clock()
while os.clock() - _v4i < 45 do
if _v41 or _v4.UNLOADED then return end
task.wait(0.5)
end
end
task.wait(3)
end
if not _v4.UNLOADED then _v3s(_ei9m[4+1712]) end
_v3m(_ei9m[1421], 10)
end
if _v4.REJOIN and (function()
local _v4j, _v4k = pcall(function() return game.PlaceId end)
return _v4j and _v4k == _v4.LOBBY_PLACE
end)() then
pcall(function()
local _v4l = getgenv and getgenv()
if _v4l then
if type(_v4l.EazyCheats_Unload) == _ei9m[1057+70] then
_v4l.EazyCheats_Handoff = true
pcall(_v4l.EazyCheats_Unload)
_v4l.EazyCheats_Handoff = nil
end
_v4l.EazyCheats_Unload = function() _v4.UNLOADED = true end
_v4l.EazyCheats_Unload_Job = game.JobId
_v4l.EazyCheats_Unload_State = _ei9m[170+194]
end
end)
task.spawn(function()
local _v4m, _v4n = pcall(_v4.lobbyJoin, _v4.rejoinRead())
if not _v4m then warn(_ei9m[2037] .. tostring(_v4n)) end
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
local _v53 = _v51:FindFirstChild(_ei9m[2611-16])
local _v54 = _v51:FindFirstChild(_ei9m[2412])
local _v55, _v56
if _v52 then _v55, _v56 = _v54, _v53 else _v55, _v56 = _v53, _v54 end
if _v55 and _v55:IsA(_ei9m[20+389]) then return _v55 end
if _v56 and _v56:IsA(_ei9m[2980]) then return _v56 end
local _v57 = _v51.PrimaryPart
if _v57 and _v57:IsA(_ei9m[3+1876]) then return _v57 end
local _v58 = _v51:FindFirstChild(_ei9m[2346-1])
if _v58 then
local _v59 = _v58:FindFirstChild(_ei9m[1107-10])
if _v59 and _v59:IsA(_ei9m[69+141]) then return _v59 end
end
for _v5a, _v5b in _v51:GetChildren() do
if _v5b:IsA(_ei9m[3+2791]) and _v5b.Name ~= _ei9m[1971+942] and _v5b.Name ~= _ei9m[2688-17] and _v5b.Name ~= _ei9m[2+1244] then
return _v5b
end
end
local _v5c = _v51:FindFirstChild(_ei9m[126+1185])
if _v5c and _v5c:IsA(_ei9m[1493-18]) then return _v5c end
for _v5d, _v5e in _v51:GetDescendants() do
if _v5e:IsA(_ei9m[3+1480]) and _v5e.Name ~= _ei9m[1842-18] and _v5e.Name ~= _ei9m[2917-20] then
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
_v4.PART_GROUP_ORDER = {_ei9m[1963],_ei9m[486+889],_ei9m[2710],_ei9m[1439-14],_ei9m[5+241],_ei9m[1795],_ei9m[4+1309],_ei9m[1632-7],_ei9m[177],_ei9m[1885]}
_v4.REACH_GROUP_ORDER = {_ei9m[2369-7],_ei9m[896-19],_ei9m[6+121],_ei9m[2319],_ei9m[1033+1153],_ei9m[1859],_ei9m[5+2201],_ei9m[1789-7]}
_v4.GROUP_LABELS = {
Head = _ei9m[6+691], Jaw = _ei9m[437-19], Neck = _ei9m[6+513], Body = _ei9m[2614], Arm = _ei9m[6+841], Leg = _ei9m[133+784],
TailBase = _ei9m[1573-13], TailMid = _ei9m[7+98], TailTip = _ei9m[7+800],
Thagomizer = _ei9m[510+319], Tail = _ei9m[1711-2],
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
if type(_v68) == _ei9m[2+2917] then
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
if _v6i:find(_ei9m[4+2272]) then return _ei9m[1388] end
local _v6j = tonumber(_v6h:match(_ei9m[2428+408]))
if not _v6j then return _ei9m[2979] end
if _v6j <= 4 then return _ei9m[4+1761]
elseif _v6j <= 9 then return _ei9m[5+1218]
else return _ei9m[2490]
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
local _v6v = _v6u:GetAttribute(_ei9m[494-18]) or 0
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
local _v6z = Instance.new(_ei9m[44+565])
_v6z.Name = _ei9m[766]
_v6z.Size = UDim2.new(0, 240, 0, 122)
_v6z.StudsOffset = Vector3.new(0, 5, 0)
_v6z.AlwaysOnTop = true
_v6z.LightInfluence = 0
_v6z.MaxDistance = _v4.ESP_DISTANCE
local _v70 = Instance.new(_ei9m[1084-14])
_v70.Name = _ei9m[2154]
_v70.Size = UDim2.new(1, 0, 1, 0)
_v70.BackgroundTransparency = 1
_v70.Parent = _v6z
local _v71 = Instance.new(_ei9m[1556+815])
_v71.FillDirection = Enum.FillDirection.Vertical
_v71.HorizontalAlignment = Enum.HorizontalAlignment.Center
_v71.VerticalAlignment = Enum.VerticalAlignment.Bottom
_v71.SortOrder = Enum.SortOrder.LayoutOrder
_v71.Padding = UDim.new(0, 2)
_v71.Parent = _v70
local function _v72(_v73, _v74, _v75, _v76, _v77)
local _v78 = Instance.new(_ei9m[2391+69])
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
local _v7d = Instance.new(_ei9m[3+1862])
_v7d.Name = _v7a; _v7d.LayoutOrder = _v7b
_v7d.Size = UDim2.new(0.92, 0, 0, 15)
_v7d.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
_v7d.BorderSizePixel = 0; _v7d.Parent = _v70
Instance.new(_ei9m[35+178], _v7d).CornerRadius = UDim.new(1, 0)
local _v7e = Instance.new(_ei9m[676+427])
_v7e.Name = _ei9m[258+242]; _v7e.Size = UDim2.new(1, 0, 1, 0)
_v7e.BackgroundColor3 = _v7c; _v7e.BorderSizePixel = 0; _v7e.Parent = _v7d
Instance.new(_ei9m[1182-10], _v7e).CornerRadius = UDim.new(1, 0)
local _v7f = Instance.new(_ei9m[2+2299])
_v7f.Name = _ei9m[260+253]; _v7f.Size = UDim2.new(1, 0, 1, 0)
_v7f.BackgroundTransparency = 1; _v7f.TextColor3 = Color3.new(1, 1, 1)
_v7f.TextStrokeTransparency = 0.3; _v7f.TextStrokeColor3 = Color3.new(0, 0, 0)
_v7f.Font = Enum.Font.GothamBold; _v7f.TextSize = _v4.TEXT_SIZE - 4
_v7f.ZIndex = 3; _v7f.Parent = _v7d
return _v7d
end
_v72(_ei9m[1722-20], 1, _v4.TEXT_SIZE, Enum.Font.GothamBold, Color3.new(1, 1, 1))
_v72(_ei9m[4+1732], 2, _v4.TEXT_SIZE - 2, Enum.Font.GothamSemibold, Color3.fromRGB(235, 235, 235))
local _v7g = _v79(_ei9m[6+2893], 3, _v4.HEALTH_COLOR_FULL)
local _v7h = Instance.new(_ei9m[1699+25])
_v7h.Name = _ei9m[1624+1152]; _v7h.Size = UDim2.new(0, 0, 1, 0)
_v7h.Position = UDim2.new(1, 0, 0, 0); _v7h.BackgroundColor3 = _v4.BLEED_COLOR
_v7h.BorderSizePixel = 0; _v7h.ZIndex = 2; _v7h.Visible = false
_v7h.Parent = _v7g
_v79(_ei9m[151], 4, _v4.STAMINA_COLOR)
_v79(_ei9m[2+1525], 5, _v4.FOOD_COLOR)
_v79(_ei9m[743+32], 6, _v4.WATER_COLOR)
_v79(_ei9m[5+477], 7, _v4.INFECT_COLOR)
_v72(_ei9m[6+1625], 8, _v4.TEXT_SIZE - 3, Enum.Font.GothamBold, Color3.new(1, 1, 1)).RichText = true
_v72(_ei9m[2470], 9, _v4.TEXT_SIZE - 3, Enum.Font.GothamSemibold, _v4.WEIGHT_COLOR)
_v72(_ei9m[2016], 10, _v4.TEXT_SIZE - 3, Enum.Font.GothamBold, _v4.BLEED_COLOR)
_v6z.Adornee = _v6w
_v6z.Parent = _v6w
_v6t.billboard = _v6z
end
local _v7i = _v6t.billboard
_v7i.Enabled = true
local _v7j = _v7i:FindFirstChild(_ei9m[1940])
if _v7j then
local _v7k = _v6t.refs
if not _v7k or _v7k._c ~= _v7j then
_v7k = { _c = _v7j }
_v7k.nameLabel = _v7j:FindFirstChild(_ei9m[1144+1512])
_v7k.infoLabel = _v7j:FindFirstChild(_ei9m[2320+499])
_v7k.healthBG = _v7j:FindFirstChild(_ei9m[2748-10])
_v7k.stamBG = _v7j:FindFirstChild(_ei9m[905-17])
_v7k.weightLabel = _v7j:FindFirstChild(_ei9m[1155+625])
_v7k.bleedLabel = _v7j:FindFirstChild(_ei9m[1358])
_v7k.vitalsLabel = _v7j:FindFirstChild(_ei9m[1454-18])
_v7k.foodBG = _v7j:FindFirstChild(_ei9m[1330])
_v7k.waterBG = _v7j:FindFirstChild(_ei9m[802-20])
_v7k.infectBG = _v7j:FindFirstChild(_ei9m[1573-16])
_v7k.listLayout = _v7j:FindFirstChildOfClass(_ei9m[2597-3])
if _v7k.healthBG then
_v7k.hpFill = _v7k.healthBG:FindFirstChild(_ei9m[1368-4])
_v7k.hpBleed = _v7k.healthBG:FindFirstChild(_ei9m[1479-19])
_v7k.hpText = _v7k.healthBG:FindFirstChild(_ei9m[99-9])
end
if _v7k.stamBG then
_v7k.stFill = _v7k.stamBG:FindFirstChild(_ei9m[260+12])
_v7k.stText = _v7k.stamBG:FindFirstChild(_ei9m[773+2183])
end
if _v7k.foodBG then _v7k.foodText = _v7k.foodBG:FindFirstChild(_ei9m[425-12]); _v7k.foodFill = _v7k.foodBG:FindFirstChild(_ei9m[775-4]) end
if _v7k.waterBG then _v7k.waterText = _v7k.waterBG:FindFirstChild(_ei9m[18+48]); _v7k.waterFill = _v7k.waterBG:FindFirstChild(_ei9m[349+547]) end
if _v7k.infectBG then _v7k.infectText = _v7k.infectBG:FindFirstChild(_ei9m[5+220]); _v7k.infectFill = _v7k.infectBG:FindFirstChild(_ei9m[1672]) end
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
do local _v7u = _v6u:FindFirstChild(_ei9m[1135-5]); _v7t = _v7u and _v7u.Value end
local _v7v = _v4.MOD_CHECK and _v4.modAdmins[_v6s]
if _v7l then
local _v7w = ""
if _v4.SHOW_NAME then
local _v7x = (_v6s.MembershipType == Enum.MembershipType.Premium) and _ei9m[1594-14] or _ei9m[7+2194]
_v7w = _v6s.DisplayName .. "  " .. _v7x
end
if _v4.SHOW_DISTANCE then
_v7w = (_v7w ~= "" and (_v7w .. "  ") or "") .. "[" .. math.floor(_v6y) .. "m]"
end
_v7l.Visible = _v7w ~= ""
_v7l.Text = _v7w
_v7l.TextColor3 = _v7v and Color3.fromRGB(255, 50, 50) or Color3.new(1, 1, 1)
end
local _v7y = _v7j:FindFirstChild(_ei9m[2+129])
if _v7v then
if not _v7y then
_v7y = Instance.new(_ei9m[1721])
_v7y.Name = _ei9m[758-12]; _v7y.LayoutOrder = 0
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
_v7y.Text = (type(_v7z) == _ei9m[420+1621]) and string.upper(_v7z) or _ei9m[2010-9]
_v7y.Visible = true
elseif _v7y then
_v7y.Visible = false
end
local _v80 = _v7j:FindFirstChild(_ei9m[1976])
local _v81 = _v4.PACK_LEADER_ESP and _v4.packLeaders[_v6s]
if _v81 then
if not _v80 then
_v80 = Instance.new(_ei9m[3+864])
_v80.Name = _ei9m[746-1]; _v80.LayoutOrder = 0
_v80.Size = UDim2.new(1, 0, 0, 20)
_v80.BackgroundTransparency = 1
_v80.TextColor3 = _v4.PACK_LEADER_COLOR
_v80.TextStrokeTransparency = 0
_v80.TextStrokeColor3 = Color3.new(0, 0, 0)
_v80.Font = Enum.Font.GothamBold
_v80.TextSize = _v4.TEXT_SIZE; _v80.TextScaled = false
_v80.Parent = _v7j
end
_v80.Text = _v81 ~= "" and (_ei9m[3+1330] .. _v81 .. "]") or _ei9m[399-5]
_v80.Visible = true
elseif _v80 then
_v80.Visible = false
end
local _v82 = _v7j:FindFirstChild(_ei9m[3+2417])
local _v83 = _v4.PACK_ESP and _v4.packMembers[_v6s]
if _v83 then
if not _v82 then
_v82 = Instance.new(_ei9m[710+185])
_v82.Name = _ei9m[697+712]; _v82.LayoutOrder = 1
_v82.Size = UDim2.new(1, 0, 0, 18)
_v82.BackgroundTransparency = 1
_v82.TextColor3 = _v4.PACK_ESP_COLOR
_v82.TextStrokeTransparency = 0
_v82.TextStrokeColor3 = Color3.new(0, 0, 0)
_v82.Font = Enum.Font.GothamMedium
_v82.TextSize = _v4.TEXT_SIZE; _v82.TextScaled = false
_v82.Parent = _v7j
end
local _v84 = _v83.name ~= "" and _v83.name or _ei9m[2908]
if _v83.count > 0 then _v84 = _v84 .. " [" .. _v83.count .. "]" end
_v82.Text = _v84
_v82.Visible = true
elseif _v82 then
_v82.Visible = false
end
if _v7m then
local _v85 = {}
if _v4.SHOW_DINO then table.insert(_v85, _v6u:GetAttribute(_ei9m[1835-10]) or _ei9m[2898]) end
if _v4.SHOW_STAGE then
local _v86 = _v6u:GetAttribute(_ei9m[7+669]) or ""
if _v86 ~= "" then
local _v87 = _v6u:GetAttribute(_ei9m[2+2127]) or _v6u:GetAttribute(_ei9m[2829-20])
or _v6u:GetAttribute(_ei9m[821+127])
if type(_v87) == _ei9m[523+1271] then
_v86 = _v86 .. " (" .. math.floor((_v87 <= 1 and _v87 * 100 or _v87) + 0.5) .. "%)"
end
table.insert(_v85, _v86)
end
end
if _v4.SHOW_GENDER then
local _v88 = _v6u:GetAttribute(_ei9m[3+1507]) or ""
if _v88 ~= "" then table.insert(_v85, _v88) end
end
_v7m.Visible = #_v85 > 0
if #_v85 > 0 then _v7m.Text = table.concat(_v85, _ei9m[182+1622]) end
end
local _v89 = _v6u:GetAttribute(_ei9m[1515+902]) or 0
local _v8a = _v6u:GetAttribute(_ei9m[1257]) or 1
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
if _v8j then _v8j.Text = _ei9m[7+2908] .. math.floor(_v89) .. "/" .. math.floor(_v8a) end
end
if _v7o then
local _v8k = _v7t and _v4.staminaCur[_v7t]
local _v8l = _v4.SHOW_STAMINA and type(_v8k) == _ei9m[422+7]
_v7o.Visible = _v8l
if _v8l then
local _v8m = _v7t and _v4.staminaMax[_v7t]
local _v8n = (type(_v8m) == _ei9m[105+109] and _v8m > 0) and _v8m or math.max(_v8k, 1)
local _v8o = _v7k.stFill
if _v8o then _v8o.Size = UDim2.new(math.clamp(_v8k / _v8n, 0, 1), 0, 1, 0) end
local _v8p = _v7k.stText
if _v8p then _v8p.Text = _ei9m[2239] .. math.floor(_v8k) ..
((type(_v8m) == _ei9m[320+419]) and ("/" .. math.floor(_v8n)) or "") end
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
_v8x = type(_v8x) == _ei9m[241-13] and _v8x or nil
_v8z = type(_v8z) == _ei9m[2035-20] and _v8z or nil
if type(_v8w) == _ei9m[4+2154] then _v4.foodSeenMax[_v7t] = math.max(_v4.foodSeenMax[_v7t] or 0, _v8w) end
if type(_v8y) == _ei9m[2450-16] then _v4.waterSeenMax[_v7t] = math.max(_v4.waterSeenMax[_v7t] or 0, _v8y) end
_v4.espVital(_v8q, _v7k.foodFill, _v7k.foodText, _v8v, _ei9m[1574-15], _v8w, _v8x or (_v7t and _v4.foodSeenMax[_v7t]), _v8x,
_v4.FOOD_COLOR, _v4.SHOW_FOOD_BAR, _v4.SHOW_FOOD_NUM)
_v4.espVital(_v8r, _v7k.waterFill, _v7k.waterText, _v8v, _ei9m[1674+719], _v8y, _v8z or (_v7t and _v4.waterSeenMax[_v7t]), _v8z,
_v4.WATER_COLOR, _v4.SHOW_WATER_BAR, _v4.SHOW_WATER_NUM)
_v4.espVital(_v8s, _v7k.infectFill, _v7k.infectText, _v8v, _ei9m[4+1773], _v7t and _v4.infectCur[_v7t], _v4.INFECT_MAX, _v4.INFECT_MAX,
_v4.INFECT_COLOR, _v4.SHOW_INFECT_BAR, _v4.SHOW_INFECT_NUM)
if _v4.SHOW_INFECTED then
local _v90
pcall(function() _v90 = _v6u:GetAttribute(_ei9m[5+284]) end)
if _v90 ~= nil and _v90 ~= false and _v90 ~= "" then
_v8v[#_v8v + 1] = string.format(_ei9m[4+1891], _v4.INFECT_COLOR:ToHex(),
(type(_v90) == _ei9m[1875]) and (": " .. _v90) or "")
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
local _v94 = _v6u:GetAttribute(_ei9m[1353-9])
local _v95 = _v4.SHOW_WEIGHT and type(_v94) == _ei9m[180]
_v7p.Visible = _v95
if _v95 then _v7p.Text = math.floor(_v94) .. _ei9m[5+2076] end
end
if _v7q then
_v7q.Visible = _v4.BLEED_ESP
if _v4.BLEED_ESP then _v7q.Text = _ei9m[2799] .. math.floor(_v8e) end
end
end
local _v96 = _v6u:GetAttribute(_ei9m[944+426]) or 1
_v7i.StudsOffset = Vector3.new(0, 3 + (_v96 * 3), 0)
else
if _v6t.billboard then
_v6t.billboard.Enabled = false
end
end
if _v4.CHAMS_ENABLED then
if not _v6t.highlight or not _v6t.highlight.Parent then
local _v97 = Instance.new(_ei9m[1873-9])
_v97.Name = _ei9m[1369]
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
_v6t.tracer = _v4.safeDraw(_ei9m[7+147])
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
if _v9j:IsA(_ei9m[1312]) then
_v9n = _v9j
elseif _v9j:IsA(_ei9m[384-6]) then
_v9n = _v9j:FindFirstChild(_ei9m[1798])
or _v9j.PrimaryPart
or _v9j:FindFirstChild(_ei9m[2506])
if not _v9n then
for _v9o, _v9p in _v9j:GetChildren() do
if _v9p:IsA(_ei9m[1511-8]) and _v9p.Name ~= _ei9m[425] and _v9p.Name ~= _ei9m[692+685] and _v9p.Name ~= _ei9m[1012+674] then
_v9n = _v9p
break
end
end
end
if not _v9n then
_v9n = _v9j:FindFirstChildWhichIsA(_ei9m[2+338], true)
end
end
if not _v9n then return end
local _v9q = Instance.new(_ei9m[395+903])
_v9q.Name = _ei9m[164+259]
_v9q.Size = UDim2.new(0, 150, 0, 40)
_v9q.StudsOffset = Vector3.new(0, 3, 0)
_v9q.AlwaysOnTop = true
_v9q.LightInfluence = 0
_v9q.MaxDistance = _v9m
local _v9r = Instance.new(_ei9m[517+1859])
_v9r.Name = _ei9m[1756-12]
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
local _v9s = Instance.new(_ei9m[417+107])
_v9s.Name = _ei9m[200+1858]
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
_v9s.Text = _ei9m[2795]
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
if _va0:IsA(_ei9m[6+377]) then
local _va1 = _va0.Name
if _va1 == _ei9m[1838-2] then return "S"
elseif _va1 == _ei9m[5+25] then return "M"
elseif _va1 == _ei9m[2+225] then return "L"
elseif _va1 == _ei9m[350-19] then return _ei9m[216-7]
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
function _v4.fossilDistance(_va4)
if _va4 == "S" then return _v4.FOSSIL_DIST_SMALL end
if _va4 == "L" then return _v4.FOSSIL_DIST_LARGE end
return _v4.FOSSIL_DIST_MEDIUM
end
local function _va5(_va6)
local _va7, _va8, _va9, _vaa
for _vab, _vac in ipairs({_ei9m[82+1767], _ei9m[1422]}) do
local _vad = _va6:FindFirstChild(_vac)
if _vad then
_va7 = _va7 or _vad:GetAttribute(_ei9m[7+709])
_va8 = _va8 or _vad:GetAttribute(_ei9m[450])
_va9 = _va9 or _vad:GetAttribute(_ei9m[887+505])
_vaa = _vaa or _vad:GetAttribute(_ei9m[837])
end
end
_va7 = _va7 or _va6:GetAttribute(_ei9m[168+514]) or _va6:GetAttribute(_ei9m[4+2307])
_va8 = _va8 or _va6:GetAttribute(_ei9m[688+1153]) or _va6:GetAttribute(_ei9m[1247+1253])
_va9 = _va9 or _va6:GetAttribute(_ei9m[2824])
_vaa = _vaa or _va6:GetAttribute(_ei9m[737+1169])
if not _vaa then
local _vae = _va6:FindFirstChild(_ei9m[504])
if _vae then _vaa = _vae:GetAttribute(_ei9m[558-15]) end
end
local _vaf = _ei9m[2368-20]
if _va7 then _vaf = tostring(_va7) end
if _va8 then _vaf = _vaf .. " [" .. tostring(_va8) .. "]" end
if _va9 then _vaf = _vaf .. " " .. (tostring(_va9):sub(1, 1)) end
local _vag = tonumber(_vaa)
if _vag then _vaf = _vaf .. "  " .. string.format(_ei9m[866+1703], _vag) .. "kg" end
return _vaf
end
function _v4.getMeatWeight(_vah)
local _vai = nil
pcall(function()
_vai = _vah:GetAttribute(_ei9m[33+182]) or _vah:GetAttribute(_ei9m[900]) or _vah:GetAttribute(_ei9m[1386])
end)
if not _vai then
for _vaj, _vak in _vah:GetChildren() do
pcall(function()
if _vak:IsA(_ei9m[433]) and (_vak.Name:lower():find(_ei9m[3+2068]) or _vak.Name:lower():find(_ei9m[874]) or _vak.Name:lower():find(_ei9m[2280])) then
_vai = _vak.Value
end
end)
end
end
return _vai
end
function _v4.processFolder(_val, _vam, _van, _vao)
if not _val then return end
for _vap, _vaq in _val:GetChildren() do
if _v6k[_vaq] then continue end
local _var = _vam
if _vaq:IsA(_ei9m[300+819]) then
local _vas = _vaq:GetAttribute(_ei9m[3+1869])
if _vas then
_var = _vam .. " [" .. _vas .. "]"
else
_var = _vam .. " [" .. _vaq.Name .. "]"
end
elseif _vaq:IsA(_ei9m[194+1747]) then
_var = _vam .. " [" .. _vaq.Name .. "]"
end
_v9i(_vaq, _var, _van, _vao)
end
end
_v4.worldESPPart = setmetatable({}, { __mode = "k" })
function _v4.worldESPAnchor(_vat)
local _vau = _v4.worldESPPart[_vat]
if _vau and _vau.Parent then return _vau end
local _vav
if _vat:IsA(_ei9m[539+284]) then
_vav = _vat
elseif _vat:IsA(_ei9m[2+1025]) then
_vav = _vat:FindFirstChild(_ei9m[1351+377])
or _vat.PrimaryPart
or _vat:FindFirstChild(_ei9m[2+803])
or _vat:FindFirstChildWhichIsA(_ei9m[85+37], true)
end
_v4.worldESPPart[_vat] = _vav
return _vav
end
function _v4.infectionMods()
if _v4.infMods == nil then
_v4.infMods = false
pcall(function()
local _vaw = game:GetService(_ei9m[1965-5])
_v4.infMods = {
rotten = _v4.req(_vaw.Modules.Consumption.GetRottenSettings),
life = _v4.req(_vaw.Modules.Consumption.GetCorpseLifetime),
infect = _v4.req(_vaw.Modules.Combat.GetInfectionSettings),
data = _v4.req(_vaw.Shared.ConsumptionData),
}
end)
end
return _v4.infMods or nil
end
function _v4.infectionIndex()
local _vax = os.clock()
if _v4.infIndex and _vax - (_v4.infIndexT or 0) < 2 then return _v4.infIndex end
local _vay = {}
pcall(function()
for _vaz, _vb0 in pairs(_v4.getCC().CorpseData) do
local _vb1 = _vb0 and _vb0.Root
if _vb1 then
_vay[_vb1] = _vb0
local _vb2 = _vb1.Parent
if _vb2 and _vb2:IsA(_ei9m[2639]) then
_vay[_vb2] = _vb0
if _vb2.Parent and _vb2.Parent:IsA(_ei9m[266]) then _vay[_vb2.Parent] = _vb0 end
end
end
end
end)
_v4.infIndex, _v4.infIndexT = _vay, _vax
return _vay
end
function _v4.rotSettingsFor(_vb3, _vb4, _vb5, _vb6)
if _vb6 and _vb6.Rotten then return _vb6.Rotten end
_v4.rotSet = _v4.rotSet or {}
local _vb7 = _v4.rotSet[_vb4]
if _vb7 ~= nil then return _vb7 or nil end
local _vb8 = (_vb4:sub(1, 4) == _ei9m[720-9]) and _vb4:sub(5) or _vb4
local _vb9
pcall(function() _vb9 = _vb3.rotten.FromCorpseName(_vb8) end)
if not _vb9 then pcall(function() _vb9 = _vb3.rotten.FromCorpseType(_vb8) end) end
if not _vb9 and _vb5 and _vb5 ~= _ei9m[5+351] then pcall(function() _vb9 = _vb3.rotten.FromCorpseType(_vb5) end) end
_v4.rotSet[_vb4] = _vb9 or false
return _vb9
end
function _v4.rottingFlag(_vba)
local _vbb = _vba
for _vbc = 1, 3 do
if not _vbb then return nil end
local _vbd = _vbb:GetAttribute(_ei9m[499+868])
if type(_vbd) == _ei9m[4+1231] then return _vbd end
_vbb = _vbb.Parent
end
return nil
end
function _v4.rotClock(_vbe)
_vbe = math.max(0, math.floor(_vbe))
if _vbe >= 3600 then return math.floor(_vbe / 3600) .. "h" .. string.format(_ei9m[727], math.floor(_vbe % 3600 / 60)) .. "m" end
if _vbe >= 600 then return math.floor(_vbe / 60) .. "m" end
return math.floor(_vbe / 60) .. ":" .. string.format(_ei9m[564-14], _vbe % 60)
end
function _v4.infectionLine(_vbf)
local _vbg = _v4.infectionIndex()[_vbf]
local _vbh = _vbg and _v4.infectionMods()
if not _vbh then return nil end
local _vbi = tostring(_vbg.Name or "")
local _vbj = (_vbi:sub(1, 4) == _ei9m[1076+1686]) and _ei9m[2741-4] or (_vbh.data.CorpseTypes and _vbh.data.CorpseTypes[_vbi])
local _vbk = _vbj and _vbh.data.CorpseConsumables and _vbh.data.CorpseConsumables[_vbj]
local _vbl = _vbk and _vbk.Actions and _vbk.Actions[1]
if not _vbl then return nil end
local _vbm = _v4.rotSettingsFor(_vbh, _vbi, _vbj, _vbl)
local _vbn = _vbg.Root
local _vbo = _v4.rottingFlag(_vbn)
local _vbp
local _vbq = _vbn and ((_vbn:GetAttribute(_ei9m[1358-17]) ~= nil and _vbn) or _vbn.Parent)
local _vbr = _vbq and _vbq:GetAttribute(_ei9m[6+3002])
local _vbs = tonumber(_vbg.Weight) or (_vbq and tonumber(_vbq:GetAttribute(_ei9m[1028+1408])))
if _vbm and type(_vbr) == _ei9m[1400+651] and _vbs and _vbs > 0 then
local _vbt = _vbh.life.FromWeight(_vbs)
local _vbu = (tonumber(_vbh.data.RotStart) and _vbt * tonumber(_vbh.data.RotStart) / 100)
or _vbh.rotten.GetRotTime(_vbm, _vbt)
local _vbv = tick() - _vbr
if _vbo == nil then _vbo = _vbv >= _vbu end
if not _vbo then
_vbp = _vbu - _vbv
if _vbp <= 0 then _vbo = true end
end
end
if _vbo == nil then return nil end
local _vbw = _v2.Character and _v2.Character:GetAttribute(_ei9m[56+886])
local _vbx = _vbw and _vbi == tostring(_vbw)
if not _vbo then
local _vby = _vbp and (_ei9m[99] .. _v4.rotClock(_vbp)) or _ei9m[3+2168]
return _vbx and (_vby .. _ei9m[1496]) or _vby, false
end
local _vbz = _ei9m[547-3]
if _vbx then return _vbz .. _ei9m[6+2771], true end
local _vc0 = _v4.getCS()
if _vbm and _vc0 and _vc0.Data and _vc0.Data.Diet and _vc0.Replica then
local _vc1 = _vbh.rotten.GetInfectionGain(_vbm, _vc0.Data.Diet, _vbl.Category)
if type(_vc1) == _ei9m[2551] and _vc1 > 0 then
local _vc2 = tonumber(_vbh.infect.GetRequiredAmount()) or 100
local _vc3 = tonumber(_vc0.Replica.Data.Stats.Infection) or 0
_vbz = _vbz .. _ei9m[1470] .. (math.floor(_vc1 / _vc2 * 10000 + 0.5) / 100) .. _ei9m[2235]
if _vc3 >= _vc2 then
_vbz = _vbz .. _ei9m[375+148]
else
_vbz = _vbz .. _ei9m[7+904] .. math.ceil((_vc2 - _vc3) / _vc1) .. _ei9m[1660-7]
end
end
end
return _vbz, true
end
function _v4.updateWorldESPDistances()
local _vc4 = _v4.getMyRoot()
if not _vc4 then return end
local _vc5 = _vc4.Position
pcall(function()
for _vc6, _vc7 in pairs(_v6k) do
if not _vc6.Parent then
_v4.destroyWorldESP(_vc6)
continue
end
local _vc8 = _v4.worldESPAnchor(_vc6)
if not _vc8 then continue end
local _vc9 = (_vc5 - _vc8.Position).Magnitude
local _vca = _vc7:FindFirstChild(_ei9m[3+37])
local _vcb = _vc7:FindFirstChild(_ei9m[549-10])
if _vca then
_vca.BackgroundTransparency = 1
_vca.TextSize = _v4.WORLD_TEXT_SIZE
_vca.Size = UDim2.new(1, 0, 0, _v4.WORLD_TEXT_SIZE + 2)
if _v4.TEXT_HIGHLIGHT then
_vca.TextColor3 = Color3.new(1, 1, 1)
_vca.TextStrokeTransparency = 0
end
end
if _vcb then
_vcb.Text = math.floor(_vc9) .. _ei9m[1882-14]
_vcb.BackgroundTransparency = 1
_vcb.TextSize = _v4.WORLD_TEXT_SIZE - 2
_vcb.Size = UDim2.new(1, 0, 0, _v4.WORLD_TEXT_SIZE)
_vcb.Position = UDim2.new(0, 0, 0, _v4.WORLD_TEXT_SIZE + 2)
if _v4.TEXT_HIGHLIGHT then
_vcb.TextColor3 = Color3.new(1, 1, 1)
_vcb.TextStrokeTransparency = 0
end
end
local _vcc = _vc7:FindFirstChild(_ei9m[55+240])
local _vcd, _vce, _vcf = false, nil, false
if _v4.CORPSE_INF_ESP then _vcd, _vce, _vcf = pcall(_v4.infectionLine, _vc6) end
if _vcd and _vce then
if not _vcc then
_vcc = Instance.new(_ei9m[2937-14])
_vcc.Name = _ei9m[2003-14]
_vcc.BackgroundTransparency = 1
_vcc.TextStrokeTransparency = 0
_vcc.TextStrokeColor3 = Color3.new(0, 0, 0)
_vcc.Font = Enum.Font.GothamBold
_vcc.Parent = _vc7
end
_vcc.Text = _vce
_vcc.TextColor3 = _v4.TEXT_HIGHLIGHT and Color3.new(1, 1, 1) or (_vcf and _v4.ROT_COLOR or _v4.INFECT_COLOR)
_vcc.TextSize = _v4.WORLD_TEXT_SIZE - 2
_vcc.Size = UDim2.new(1, 0, 0, _v4.WORLD_TEXT_SIZE)
_vcc.Position = UDim2.new(0, 0, 0, _v4.WORLD_TEXT_SIZE * 2 + 2)
_vc7.Size = UDim2.new(0, 260, 0, _v4.WORLD_TEXT_SIZE * 3 + 4)
elseif _vcc then
_vcc:Destroy()
_vc7.Size = UDim2.new(0, 150, 0, 40)
end
end
end)
end
local function _vcg()
for _vch, _vci in pairs(_v6k) do
pcall(function() _vci:Destroy() end)
end
_v6k = {}
if _v4.CORPSE_ESP then
pcall(function()
local _vcj = workspace:FindFirstChild(_ei9m[20+1084]) and workspace.CharacterIgnore:FindFirstChild(_ei9m[1749])
if _vcj then
for _vck, _vcl in _vcj:GetChildren() do
if _v6k[_vcl] then continue end
local _vcm = _va5(_vcl)
_v9i(_vcl, _vcm, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _vcn = workspace:FindFirstChild(_ei9m[371+1114])
if _vcn then
for _vco, _vcp in _vcn:GetChildren() do
if _v6k[_vcp] then continue end
local _vcq = _va5(_vcp)
_v9i(_vcp, _vcq, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _vcr = workspace:FindFirstChild(_ei9m[6+1507])
if _vcr then
for _vcs, _vct in _vcr:GetChildren() do
if _v6k[_vct] then continue end
local _vcu = _va5(_vct)
_v9i(_vct, _vcu, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _vcv = workspace:FindFirstChild(_ei9m[1236-5])
if _vcv then
for _vcw, _vcx in _vcv:GetChildren() do
if _v6k[_vcx] then continue end
local _vcy = _va5(_vcx)
_v9i(_vcx, _vcy, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _vcz = workspace:FindFirstChild(_ei9m[3075-19])
if _vcz then
for _vd0, _vd1 in _vcz:GetChildren() do
if _v6k[_vd1] then continue end
local _vd2 = _va5(_vd1)
_v9i(_vd1, _vd2, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _vd3 = workspace:FindFirstChild(_ei9m[2785-17])
if _vd3 then
for _vd4, _vd5 in _vd3:GetChildren() do
if _v6k[_vd5] then continue end
local _vd6 = _va5(_vd5)
_v9i(_vd5, _vd6, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _vd7 = workspace:FindFirstChild(_ei9m[193])
if _vd7 then
local _vd8 = _vd7:FindFirstChild(_ei9m[5+1368])
if _vd8 then
for _vd9, _vda in _vd8:GetChildren() do
if _v6k[_vda] then continue end
local _vdb = _va5(_vda)
_v9i(_vda, _vdb, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end
end)
end
pcall(function()
local _vdc = workspace:FindFirstChild(_ei9m[7+545])
if _vdc then
for _vdd, _vde in _vdc:GetChildren() do
if _v6k[_vde] then continue end
local _vdf = _v4.getFossilSize(_vde)
if _v4.isFossilEnabled(_vdf) then
local _vdg = {S = _ei9m[2055-5], M = _ei9m[434], L = _ei9m[5+2033]}
local _vdh = _ei9m[1360] .. (_vdg[_vdf] or _vdf) .. ")"
_v9i(_vde, _vdh, _v4.getFossilColor(_vdf), _v4.fossilDistance(_vdf))
end
end
end
end)
if _v4.MEAT_ESP then
pcall(function()
local _vdi = workspace:FindFirstChild(_ei9m[1575+1372]) and workspace.CharacterIgnore:FindFirstChild(_ei9m[1632-13])
if _vdi then
for _vdj, _vdk in _vdi:GetChildren() do
if _v6k[_vdk] then continue end
local _vdl = _ei9m[506+2137]
_v9i(_vdk, _vdl, _v4.MEAT_COLOR, _v4.MEAT_DISTANCE)
end
end
end)
pcall(function()
local _vdm = workspace:FindFirstChild(_ei9m[26+2091])
if _vdm then
local _vdn = _vdm:FindFirstChild(_ei9m[395])
if _vdn then
for _vdo, _vdp in _vdn:GetChildren() do
if _v6k[_vdp] then continue end
local _vdq = _ei9m[333+983]
_v9i(_vdp, _vdq, _v4.MEAT_COLOR, _v4.MEAT_DISTANCE)
end
end
local _vdr = _vdm:FindFirstChild(_ei9m[7+1507])
if _vdr then
for _vds, _vdt in _vdr:GetChildren() do
if _v6k[_vdt] then continue end
local _vdu = _ei9m[99-12]
_v9i(_vdt, _vdu, _v4.MEAT_COLOR, _v4.MEAT_DISTANCE)
end
end
end
end)
end
if _v4.CLAY_ESP then
pcall(function()
local _vdv = workspace:FindFirstChild(_ei9m[623+1466])
local _vdw = _vdv and _vdv:FindFirstChild(_ei9m[1015])
if _vdw then
for _vdx, _vdy in _vdw:GetChildren() do
if _v6k[_vdy] then continue end
_v9i(_vdy, _ei9m[165+903], _v4.CLAY_COLOR, _v4.CLAY_DISTANCE)
end
end
end)
end
end
local function _vdz(_ve0, _ve1)
pcall(function()
local _ve2 = workspace
if _ve1 then
for _ve3, _ve4 in ipairs(_ve1) do
_ve2 = _ve2:FindFirstChild(_ve4)
if not _ve2 then return end
end
end
local _ve5 = _ve2:FindFirstChild(_ve0)
if not _ve5 then return end
table.insert(_v2l, _ve5.ChildAdded:Connect(function(_ve6)
task.wait(0.5)
local _ve7 = {LeftCharacters=true, DinosaurRagdolls=true, Ragdolls=true, AIRagdolls=true, RagdollStorage=true, GrabbedRagdolls=true}
if _v4.CORPSE_ESP and _ve7[_ve0] then
local _ve8 = _va5(_ve6)
_v9i(_ve6, _ve8, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
if _ve0 == _ei9m[6+1562] then
local _ve9 = _v4.getFossilSize(_ve6)
if _v4.isFossilEnabled(_ve9) then
local _vea = {S = _ei9m[815-11], M = _ei9m[2657], L = _ei9m[110+388]}
local _veb = _ei9m[1154] .. (_vea[_ve9] or _ve9) .. ")"
_v9i(_ve6, _veb, _v4.getFossilColor(_ve9), _v4.fossilDistance(_ve9))
end
end
if _v4.MEAT_ESP and (_ve0 == _ei9m[722+168] or _ve0 == _ei9m[2255-1] or _ve0 == _ei9m[2949]) then
local _vec = _ei9m[2854-4]
_v9i(_ve6, _vec, _v4.MEAT_COLOR, _v4.MEAT_DISTANCE)
end
if _v4.CLAY_ESP and _ve0 == _ei9m[6+47] then
_v9i(_ve6, _ei9m[664], _v4.CLAY_COLOR, _v4.CLAY_DISTANCE)
end
end))
table.insert(_v2l, _ve5.ChildRemoved:Connect(function(_ved)
_v4.destroyWorldESP(_ved)
end))
end)
end
_vdz(_ei9m[2947-17], {_ei9m[26+30]})
_vdz(_ei9m[2+2510])
_vdz(_ei9m[1142-2])
_vdz(_ei9m[2007-16])
_vdz(_ei9m[2101-14])
_vdz(_ei9m[4+2987])
_vdz(_ei9m[178], {_ei9m[5+2601]})
_vdz(_ei9m[522+258])
_vdz(_ei9m[17+511], {_ei9m[6+230]})
_vdz(_ei9m[5+118], {_ei9m[7+2520]})
_vdz(_ei9m[1586], {_ei9m[1735+50]})
_vdz(_ei9m[1942+1017], {_ei9m[6+2301]})
_v4.addStep(5, function()
if not _v4.CORPSE_ESP and not _v4.FOSSIL_SMALL and not _v4.FOSSIL_MEDIUM and not _v4.FOSSIL_LARGE and not _v4.MEAT_ESP and not _v4.CLAY_ESP then return end
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
{ _ei9m[5+1993], _ei9m[2228+388] },
{ _ei9m[256+253] },
{ _ei9m[93-11] },
{ _ei9m[2392] },
{ _ei9m[3+1205] },
{ _ei9m[3+1390] },
{ _ei9m[2409], _ei9m[401] },
}
function _v4.mmapFolder(_vee)
local _vef = workspace
for _veg, _veh in ipairs(_vee) do
_vef = _vef:FindFirstChild(_veh)
if not _vef then return nil end
end
return _vef
end
function _v4.mmapFind()
local _vei = _v4.mmapCache
if _vei then
local ok, alive = pcall(function()
local _vej = rawget(_vei, _ei9m[262])
return _vej ~= nil and _vej.Parent ~= nil
end)
if ok and alive then return _vei end
_v4.mmapCache = nil
end
local _vek = os.clock()
if _v4.mmapNextScan and _vek < _v4.mmapNextScan then return nil end
_v4.mmapNextScan = _vek + 3
if not _v4.CAP.filtergc then return nil end
local _vel
local _vem = os.clock()
pcall(function()
_vel = filtergc(_ei9m[347-8], {Keys = {_ei9m[6+2991], _ei9m[54+290], _ei9m[2343-14]}}, true)
end)
if _v4.IS_XENO and os.clock() - _vem > 0.05 then _v4.CAP.filtergc = false end
_v4.mmapCache = _vel
return _vel
end
function _v4.mmapMakeDot(_ven)
local _veo = Instance.new(_ei9m[1955-6])
_veo.Name = _ei9m[155-8]
_veo.AnchorPoint = Vector2.new(0.5, 0.5)
_veo.BorderSizePixel = 0
_veo.BackgroundColor3 = Color3.new(1, 1, 1)
_veo.Size = UDim2.fromOffset(_v4.MMAP_DOT, _v4.MMAP_DOT)
_veo.ZIndex = 9
_veo.Visible = false
local _vep = Instance.new(_ei9m[737-3])
_vep.CornerRadius = UDim.new(1, 0)
_vep.Parent = _veo
_veo.Parent = _ven
return _veo
end
function _v4.mmapDestroyPool()
for _veq, _ver in ipairs(_v4.mmapPool) do
pcall(function() if _ver.mini then _ver.mini:Destroy() end end)
pcall(function() if _ver.exp then _ver.exp:Destroy() end end)
end
_v4.mmapPool = {}
_v4.mmapShown = 0
end
function _v4.mmapHideAll()
for _ves, _vet in ipairs(_v4.mmapPool) do
if _vet.mini then _vet.mini.Visible = false end
if _vet.exp then _vet.exp.Visible = false end
end
_v4.mmapShown = 0
end
function _v4.mmapEnsure(_veu, _vev)
local _vew = _v4.mmapPool
local _vex = rawget(_vev, _ei9m[2073])
local _vey = rawget(_vev, _ei9m[1845+166])
while #_vew < _veu do
local _vez = {}
if _vex then _vez.mini = _v4.mmapMakeDot(_vex) end
if _vey then _vez.exp = _v4.mmapMakeDot(_vey) end
_vew[#_vew + 1] = _vez
end
end
function _v4.mmapCollect()
local _vf0 = {}
local _vf1 = _v4.getLocalRoot()
local _vf2 = _vf1 and _vf1.Position or Vector3.zero
local function _vf3(_vf4, _vf5)
_vf0[#_vf0 + 1] = { pos = _vf4, color = _vf5, d = (_vf4 - _vf2).Magnitude }
end
if _v4.MMAP_PLAYERS then
pcall(function()
for _vf6, _vf7 in ipairs(_v0:GetPlayers()) do
if _vf7 ~= _v2 then
local _vf8 = _vf7.Character
local _vf9 = _vf8 and _v4.getRootOf(_vf8, false)
if _vf9 then _vf3(_vf9.Position, _v4.MMAP_COLOR_PLAYER) end
end
end
end)
end
if _v4.MMAP_CORPSES then
for _vfa, _vfb in ipairs(_v4.MMAP_CORPSE_FOLDERS) do
pcall(function()
local _vfc = _v4.mmapFolder(_vfb)
if not _vfc then return end
for _vfa, _vfe in ipairs(_vfc:GetChildren()) do
local _vff = _v4.worldESPAnchor(_vfe)
if _vff then _vf3(_vff.Position, _v4.MMAP_COLOR_CORPSE) end
end
end)
end
end
if _v4.MMAP_FOSSILS then
pcall(function()
local _vfg = workspace:FindFirstChild(_ei9m[5+2157])
if not _vfg then return end
for _vfh, _vfi in ipairs(_vfg:GetChildren()) do
local _vfj = _v4.worldESPAnchor(_vfi)
if _vfj then _vf3(_vfj.Position, _v4.MMAP_COLOR_FOSSIL) end
end
end)
end
if #_vf0 > _v4.MMAP_MAX then
table.sort(_vf0, function(_vfk, _vfl) return _vfk.d < _vfl.d end)
end
_v4.mmapList = _vf0
end
function _v4.mmapStep()
if _v4.UNLOADED then return end
if not _v4.MMAP_ON or not (_v4.MMAP_PLAYERS or _v4.MMAP_CORPSES or _v4.MMAP_FOSSILS) then
if _v4.mmapShown > 0 then _v4.mmapHideAll() end
return
end
local _vfm = _v4.mmapFind()
if not _vfm then return end
if _v4.mmapBoundTo ~= _vfm then
_v4.mmapPool = {}
_v4.mmapShown = 0
_v4.mmapBoundTo = _vfm
end
_v4.mmapTick = (_v4.mmapTick or 0) + 1
if not _v4.mmapList or _v4.mmapTick % 5 == 1 then _v4.mmapCollect() end
local _vfn = _v4.mmapList
if not _vfn then return end
local _vfo = math.min(#_vfn, _v4.MMAP_MAX)
_v4.mmapEnsure(_vfo, _vfm)
local _vfp = rawget(_vfm, _ei9m[678+154])
local _vfq = rawget(_vfm, _ei9m[6+1967])
local _vfr = rawget(_vfm, _ei9m[1282+1322])
local _vfs = _vfp and _vfp.Visible
local _vft = _vfq and _vfq.Visible
local _vfu = 0
pcall(function() if _vfr then _vfu = _vfr.AbsoluteSize.X * 0.5 end end)
local _vfv, _vfw, _vfx
pcall(function()
_vfv = _vfm.GetTagPosition
_vfw = _vfm.GetDistanceFromCenter
_vfx = _vfm.TransformPosition
end)
for _vfy = 1, _vfo do
local _vfz = _vfn[_vfy]
local _vg0 = _v4.mmapPool[_vfy]
if _vg0 then
if _vg0.mini then
if _vfs then
local _vg1, _vg2
if _vfv then _vg1, _vg2 = pcall(_vfv, _vfm, _vfz.pos) end
if _vg1 and _vg2 then
_vg0.mini.Position = UDim2.fromOffset(_vg2.X, _vg2.Y)
_vg0.mini.BackgroundColor3 = _vfz.color
local _vg3, _vg4
if _vfw then _vg3, _vg4 = pcall(_vfw, _vfm, _vg2) end
_vg0.mini.Visible = (not _vg3) or (_vg4 <= _vfu)
else
_vg0.mini.Visible = false
end
else
_vg0.mini.Visible = false
end
end
if _vg0.exp then
if _vft then
local _vg5, _vg6
if _vfx then _vg5, _vg6 = pcall(_vfx, _vfm, _vfz.pos) end
if _vg5 and _vg6 then
_vg0.exp.Position = _vg6
_vg0.exp.BackgroundColor3 = _vfz.color
_vg0.exp.Visible = true
else
_vg0.exp.Visible = false
end
else
_vg0.exp.Visible = false
end
end
end
end
for _vg7 = _vfo + 1, #_v4.mmapPool do
local _vg8 = _v4.mmapPool[_vg7]
if _vg8.mini then _vg8.mini.Visible = false end
if _vg8.exp then _vg8.exp.Visible = false end
end
_v4.mmapShown = _vfo
end
_v4.addStep(3, _v4.mmapStep)
function _v4.expandPlayerHitbox(_vg9)
local _vga = _vg9.Character
if not _vga then return end
local _vgb = _vga:FindFirstChild(_ei9m[2842-16])
if not _vgb then return end
for _vgc, _vgd in _vgb:GetChildren() do
if not _vgd:IsA(_ei9m[599-7]) then continue end
local _vge = _vgd:GetAttribute(_ei9m[459])
if not _vge then continue end
if _vgd:GetAttribute(_ei9m[1191]) then continue end
local _vgf = (_vge == _ei9m[875+198]) and _v4.getTailSubGroup(_vgd.Name) or _vge
if not _v5k[_vgd] then
_v5k[_vgd] = _vgd.Size
end
local _vgg = _v5k[_vgd]
pcall(function()
if _v4.HITBOX_EXPANDER and _v4.HITBOX_GROUPS[_vgf] then
_vgd.Size = _vgg * _v4.HITBOX_MULTIPLIER
else
_vgd.Size = _vgg
end
end)
pcall(function()
if _v4.SILENT_AIM then
_vgd.CanQuery = _v4.SILENT_GROUPS[_vgf] and true or false
else
_vgd.CanQuery = true
end
end)
end
end
function _v4.resetPlayerHitbox(_vgh)
local _vgi = _vgh.Character
if not _vgi then return end
local _vgj = _vgi:FindFirstChild(_ei9m[116+1854])
if _vgj then
for _vgk, _vgl in _vgj:GetChildren() do
if not _vgl:IsA(_ei9m[4]) then continue end
local _vgm = _v5k[_vgl]
if _vgm then
pcall(function() _vgl.Size = _vgm; _vgl.CanQuery = true end)
_v5k[_vgl] = nil
end
end
end
local _vgn = _vgi:FindFirstChild(_ei9m[836+70])
if _vgn and _v5k[_vgn] then
pcall(function() _vgn.Size = _v5k[_vgn] end)
_v5k[_vgn] = nil
end
end
function _v4.visualizePlayerHitbox(_vgo, _vgp)
local _vgq = _vgo.Character
if not _vgq then return end
local _vgr = _vgq:FindFirstChild(_ei9m[628])
if _vgr then
for _vgs, _vgt in _vgr:GetChildren() do
if not _vgt:IsA(_ei9m[2+1646]) then continue end
local _vgu = _vgt:GetAttribute(_ei9m[736]) or _ei9m[1896+461]
local _vgv = false
if _vgu == _ei9m[2491+278] then
local _vgw = _v4.getTailSubGroup(_vgt.Name)
_vgv = _v4.HITBOX_GROUPS[_vgw]
else
_vgv = _v4.HITBOX_GROUPS[_vgu]
end
pcall(function()
if _vgp and _vgv then
if not _v5l[_vgt] then
_v5l[_vgt] = { _vgt.Transparency, _vgt.Material, _vgt.Color }
end
_vgt.Transparency = _v4.HITBOX_VIS_TRANSPARENCY
_vgt.Color = _v4.HITBOX_VIS_COLOR
_vgt.Material = Enum.Material.Neon
else
local _vgx = _v5l[_vgt]
if _vgx then
_vgt.Transparency, _vgt.Material, _vgt.Color = _vgx[1], _vgx[2], _vgx[3]
_v5l[_vgt] = nil
else
_vgt.Transparency = 1
end
end
end)
end
end
local _vgy = _vgq:FindFirstChild(_ei9m[1022-11])
if _vgy and _vgy:IsA(_ei9m[5+49]) then
pcall(function()
if _vgp then
if not _v5l[_vgy] then
_v5l[_vgy] = { _vgy.Transparency, _vgy.Material, _vgy.Color }
end
_vgy.Transparency = _v4.HITBOX_VIS_TRANSPARENCY
_vgy.Color = _v4.HITBOX_VIS_COLOR
_vgy.Material = Enum.Material.Neon
else
local _vgz = _v5l[_vgy]
if _vgz then
_vgy.Transparency, _vgy.Material, _vgy.Color = _vgz[1], _vgz[2], _vgz[3]
_v5l[_vgy] = nil
else
_vgy.Transparency = 1
end
end
end)
end
end
function _v4.resetAllHitboxes()
for _vh0, _vh1 in _v0:GetPlayers() do
if _vh1 == _v2 then continue end
_v4.resetPlayerHitbox(_vh1)
_v4.visualizePlayerHitbox(_vh1, false)
_v4.hbShown[_vh1] = nil
end
end
function _v4.expandLocalReach()
local _vh2 = _v2.Character
if not _vh2 then return end
local _vh3 = _vh2:FindFirstChild(_ei9m[339-3])
if not _vh3 then return end
for _vh4, _vh5 in _vh3:GetChildren() do
if not _vh5:IsA(_ei9m[803+996]) then continue end
local _vh6 = _vh5:GetAttribute(_ei9m[2181-4])
if not _vh6 then continue end
if _vh5:GetAttribute(_ei9m[503-1]) then continue end
local _vh7 = (_vh6 == _ei9m[5+1377]) and _v4.getTailSubGroup(_vh5.Name) or _vh6
if not _v4.REACH_GROUPS[_vh7] then continue end
if not _v5m[_vh5] then
_v5m[_vh5] = _vh5.Size
end
local _vh8 = _v5m[_vh5]
pcall(function()
_vh5.Size = _v4.REACH_ENABLED and (_vh8 * _v4.REACH_MULTIPLIER) or _vh8
_vh5.CanQuery = true
if _v4.REACH_VISUALIZE then
_vh5.Transparency = _v4.REACH_VIS_TRANSPARENCY
_vh5.Color = Color3.fromRGB(150, 85, 235)
_vh5.Material = Enum.Material.ForceField
else
_vh5.Transparency = 1
end
end)
end
end
function _v4.resetLocalReach()
for _vh9, _vha in pairs(_v5m) do
pcall(function() _vh9.Size = _vha; _vh9.Transparency = 1 end)
end
table.clear(_v5m)
end
local _vhb = 0
table.insert(_v2l, _v1.Heartbeat:Connect(function()
if _v4.UNLOADED then return end
local _vhc = next(_v4.hbShown) ~= nil
if not _v4.HITBOX_EXPANDER and not _v4.HITBOX_VISUALIZE and not _v4.REACH_ENABLED
and not _v4.REACH_VISUALIZE and not _v4.SILENT_AIM
and not _vhc then return end
if _v4.REACH_ENABLED or _v4.REACH_VISUALIZE then pcall(_v4.expandLocalReach) end
if not _v4.HITBOX_EXPANDER and not _v4.HITBOX_VISUALIZE and not _v4.SILENT_AIM
and not _vhc then return end
_vhb = _vhb + 1
local _vhd = (_vhb % 5 == 0)
for _vhe, _vhf in _v0:GetPlayers() do
if _vhf == _v2 then continue end
pcall(function()
if _v4.HITBOX_EXPANDER or _v4.SILENT_AIM then _v4.expandPlayerHitbox(_vhf) end
if _vhd then
if _v4.HITBOX_VISUALIZE then
_v4.visualizePlayerHitbox(_vhf, true)
_v4.hbShown[_vhf] = true
elseif _v4.hbShown[_vhf] then
_v4.visualizePlayerHitbox(_vhf, false)
_v4.hbShown[_vhf] = nil
end
end
end)
end
end))
_v4.hbMask = {}
_v4.hbMaskT = setmetatable({}, { __mode = "k" })
function _v4.hbMaskStep()
if _v4.UNLOADED then return end
local _vhg = _v4.hbMask or {}
for _vhh, _vhi in pairs(_v4.hbMaskT) do
if not _vhg[_vhi] then
if _vhh and _vhh.Parent then pcall(function() _vhh.CanQuery = true end) end
_v4.hbMaskT[_vhh] = nil
end
end
if not next(_vhg) then return end
for _vhj, _vhk in ipairs(_v0:GetPlayers()) do
if _vhk ~= _v2 and _vhg[_vhk.UserId] then
local _vhl = _vhk.Character and _vhk.Character:FindFirstChild(_ei9m[630+2063])
if _vhl then
for _vhj, _vhn in ipairs(_vhl:GetChildren()) do
if _vhn:IsA(_ei9m[2044-10]) and _vhn:GetAttribute(_ei9m[1553]) and not _vhn:GetAttribute(_ei9m[2+2487]) then
if _vhn.CanQuery then pcall(function() _vhn.CanQuery = false end) end
_v4.hbMaskT[_vhn] = _vhk.UserId
end
end
end
end
end
end
_v4.addStep(10, _v4.hbMaskStep)
local _vho = game:GetService(_ei9m[3044-11])
function _v4.isBlackOverlay(_vhp)
if not _vhp:IsA(_ei9m[2+1660]) and not _vhp:IsA(_ei9m[2+112]) then return false end
if _vhp.BackgroundTransparency > 0.1 then return false end
local _vhq = _vhp.BackgroundColor3
if _vhq.R > 0.05 or _vhq.G > 0.05 or _vhq.B > 0.05 then return false end
local _vhr = _vhp.AbsoluteSize
local _vhs, _vht = _v3.ViewportSize.X, _v3.ViewportSize.Y
if _vhr.X < _vhs * 0.8 or _vhr.Y < _vht * 0.8 then return false end
return true
end
_v4.absDirty = true
_v4.absLastFull = 0
_v4.ABS_FULL_INTERVAL = 6
function _v4.markAbsDirty()
_v4.absDirty = true
end
pcall(function()
local _vhu = _v2:FindFirstChild(_ei9m[2579-9])
if _vhu then table.insert(_v2l, _vhu.DescendantAdded:Connect(_v4.markAbsDirty)) end
end)
pcall(function()
table.insert(_v2l, game:GetService(_ei9m[728+2015]).DescendantAdded:Connect(_v4.markAbsDirty))
end)
_v4.sleepGui = nil
function _v4.bindSleepWatch(_vhv)
local function _vhw(_vhx) if _vhx and _vhx.Name == _ei9m[1981] then _v4.sleepGui = _vhx end end
_vhw(_vhv:FindFirstChild(_ei9m[6+2376]))
table.insert(_v2l, _vhv.ChildAdded:Connect(_vhw))
table.insert(_v2l, _vhv.ChildRemoved:Connect(function(_vhy)
if _vhy == _v4.sleepGui then _v4.sleepGui = nil end
end))
end
pcall(function()
local _vhz = _v2:FindFirstChild(_ei9m[5+2973])
if _vhz then
_v4.bindSleepWatch(_vhz)
else
local _vi0
_vi0 = _v2.ChildAdded:Connect(function(_vi1)
if _vi1:IsA(_ei9m[2145]) then pcall(_v4.bindSleepWatch, _vi1); if _vi0 then _vi0:Disconnect() end end
end)
table.insert(_v2l, _vi0)
end
end)
function _v4.sweepGuiRoot(_vi2)
for _vi3, _vi4 in _vi2:GetChildren() do
if not _vi4:IsA(_ei9m[2135-3]) then continue end
if _vi4.Name == _ei9m[459+534] or _vi4.Name == _ei9m[403] or _vi4.Name == _ei9m[2863+148] then continue end
for _vi3, _vi6 in _vi4:GetDescendants() do
if _v4.isBlackOverlay(_vi6) then
_vi6.BackgroundTransparency = 1
end
end
end
end
function _v4.neutralizeBlackScreens()
local _vi7 = os.clock()
local _vi8 = (_vi7 - _v4.absLastFull) >= _v4.ABS_FULL_INTERVAL
if _v4.absDirty or _vi8 then
_v4.absDirty = false
if _vi8 then _v4.absLastFull = _vi7 end
pcall(function()
local _vi9 = _v2:FindFirstChild(_ei9m[1171])
if _vi9 then _v4.sweepGuiRoot(_vi9) end
end)
pcall(function() _v4.sweepGuiRoot(game:GetService(_ei9m[2425+157])) end)
end
pcall(function()
for _via, _vib in _vho:GetChildren() do
if _vib:IsA(_ei9m[2900]) then
if _vib.Brightness < -0.3 then
_vib.Brightness = 0
end
if _vib.TintColor.R < 0.1 and _vib.TintColor.G < 0.1 and _vib.TintColor.B < 0.1 then
_vib.TintColor = Color3.new(1, 1, 1)
end
end
end
end)
pcall(function()
for _vic, _vid in _v3:GetChildren() do
if _vid:IsA(_ei9m[152]) then
local _vie = _vid.Color
if _vie and _vie.R < 0.05 and _vie.G < 0.05 and _vie.B < 0.05 and _vid.Transparency ~= 1 then
_vid.Transparency = 1
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
local _vif = _v4.sleepGui
if _vif and _vif.Parent then
pcall(function()
if _vif:IsA(_ei9m[165+112]) and _vif.Enabled then _vif.Enabled = false end
local _vig = _vif:FindFirstChild(_ei9m[617-17])
if _vig then
if _vig.Visible then _vig.Visible = false end
if _vig:IsA(_ei9m[2743-3]) and _vig.BackgroundTransparency < 1 then _vig.BackgroundTransparency = 1 end
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
_v4.weatherCtrl = _v4.req(_v4.WATER_RS.Packages.Knit).GetController(_ei9m[7+3025])
end)
return _v4.weatherCtrl
end
function _v4.isNightHour(_vih)
return _vih >= 20 or _vih <= 5
end
function _v4.timePresetFor(_vii)
if _v4.isNightHour(_vii) then return _ei9m[5+638] end
if _vii < 8 then return _ei9m[1706] end
if _vii >= 18 then return _ei9m[904-20] end
return _ei9m[4+1293]
end
function _v4.refreshCustomTime()
task.spawn(function()
local _vij = _v4.getWeatherController()
if not (_vij and _v4.customTime) then return end
pcall(function() _vij:ApplyLightingTransition(0, true) end)
pcall(function() _vij:ApplyRenderClockTime(_v4.customTimeHour, _v4.timePresetFor(_v4.customTimeHour)) end)
end)
end
function _v4.setCustomTime(_vik)
_v4.customTime = _vik
task.spawn(_v4.applyCustomTime, _vik)
end
function _v4.applyCustomTime(_vil)
local _vim = _v4.getWeatherController()
if not _vim then
pcall(function() _v4.Hub:Notify(_ei9m[7+527], 6) end)
return
end
if _vil then
if not _v4.wcOrig then
_v4.wcOrig = {
IsArtificialNight = _vim.IsArtificialNight,
GetSimulationClockTime = _vim.GetSimulationClockTime,
GetDesiredTransitionType = _vim.GetDesiredTransitionType,
}
end
_vim.IsArtificialNight = function() return _v4.isNightHour(_v4.customTimeHour) end
_vim.GetSimulationClockTime = function() return _v4.customTimeHour end
_vim.GetDesiredTransitionType = function() return _v4.timePresetFor(_v4.customTimeHour) end
_v4.refreshCustomTime()
elseif _v4.wcOrig then
_vim.IsArtificialNight = _v4.wcOrig.IsArtificialNight
_vim.GetSimulationClockTime = _v4.wcOrig.GetSimulationClockTime
_vim.GetDesiredTransitionType = _v4.wcOrig.GetDesiredTransitionType
_v4.wcOrig = nil
pcall(function() _vim:ApplyLightingTransition(0, true) end)
end
end
pcall(function()
_v1:BindToRenderStep(_ei9m[268+2065], Enum.RenderPriority.Last.Value, function()
if _v4.customTime and not _v4.UNLOADED then
pcall(function() _vho.ClockTime = _v4.customTimeHour end)
end
end)
end)
_v4.FULLBRIGHT = false
do
local _vin = nil
_v4.enableFullbright = function()
if _vin then return end
_vin = {
Brightness = _vho.Brightness,
Ambient = _vho.Ambient,
OutdoorAmbient = _vho.OutdoorAmbient,
GlobalShadows = _vho.GlobalShadows,
FogEnd = _vho.FogEnd,
ExposureCompensation = _vho.ExposureCompensation,
}
end
_v4.restoreFullbright = function()
if not _vin then return end
pcall(function()
_vho.Brightness = _vin.Brightness
_vho.Ambient = _vin.Ambient
_vho.OutdoorAmbient = _vin.OutdoorAmbient
_vho.GlobalShadows = _vin.GlobalShadows
_vho.FogEnd = _vin.FogEnd
_vho.ExposureCompensation = _vin.ExposureCompensation
end)
_vin = nil
end
pcall(function()
_v1:BindToRenderStep(_ei9m[5+1761], Enum.RenderPriority.Last.Value + 1, function()
if _v4.FULLBRIGHT and not _v4.UNLOADED then
pcall(function()
_vho.Brightness = 2
_vho.Ambient = Color3.fromRGB(190, 190, 190)
_vho.OutdoorAmbient = Color3.fromRGB(190, 190, 190)
_vho.GlobalShadows = false
_vho.FogEnd = 1e9
_vho.ExposureCompensation = 0.15
for _vio, _vip in ipairs(_vho:GetChildren()) do
if _vip:IsA(_ei9m[300]) and _vip.Density > 0.3 then _vip.Density = 0.3 end
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
local _viq = game:GetService(_ei9m[2+1781])
return _v4.req(_viq:WaitForChild(_ei9m[102]):WaitForChild(_ei9m[423+2418])).GetController(_ei9m[1400+343])
end)
if ok and wc then _v4.weatherCtrl = wc end
return _v4.weatherCtrl
end
function _v4.applyNoWeather(_vir)
task.spawn(function()
local _vis = _v4.getWeatherController()
if not _vis then return end
pcall(function()
if _vir then
local _vit = (_vis.transitionPeriod and _vis.transitionPeriod.Period)
or game:GetService(_ei9m[1173]):GetAttribute(_ei9m[6+684]) or _ei9m[2241-5]
_vis.weatherEnabled = true
if _vis.ChangeTransition then _vis:ChangeTransition(_ei9m[527-16], _vit, 0) end
if _vis.CleanupEffects then _vis:CleanupEffects() end
_vis.weatherEnabled = false
else
_vis.weatherEnabled = true
if _vis.TransitionToCurrent then _vis:TransitionToCurrent() end
end
end)
end)
end
_v4.addStep(30, function()
if not _v4.NO_WEATHER then return end
local _viu = _v4.weatherCtrl
if _viu and _viu.weatherEnabled then pcall(_v4.applyNoWeather, true) end
end)
_v4.NO_FOG = false
do
local _viv = nil
_v4.enableNoFog = function()
if _viv then return end
_viv = { FogEnd = _vho.FogEnd, FogStart = _vho.FogStart, atmos = {}, dof = {} }
pcall(function()
for _viw, _vix in ipairs(_vho:GetChildren()) do
if _vix:IsA(_ei9m[5+2197]) then
_viv.atmos[_vix] = { Density = _vix.Density, Haze = _vix.Haze }
elseif _vix:IsA(_ei9m[742+1623]) then
_viv.dof[_vix] = _vix.Enabled
end
end
local _viy = workspace.CurrentCamera
for _viz, _vj0 in ipairs(_viy and _viy:GetChildren() or {}) do
if _vj0:IsA(_ei9m[4+1706]) then _viv.dof[_vj0] = _vj0.Enabled end
end
end)
end
_v4.restoreNoFog = function()
if not _viv then return end
pcall(function()
_vho.FogEnd = _viv.FogEnd
_vho.FogStart = _viv.FogStart
end)
for _vj1, _vj2 in pairs(_viv.atmos) do
pcall(function()
if _vj1.Parent then _vj1.Density = _vj2.Density; _vj1.Haze = _vj2.Haze end
end)
end
for _vj3, _vj4 in pairs(_viv.dof) do
pcall(function() if _vj3.Parent then _vj3.Enabled = _vj4 end end)
end
_viv = nil
end
pcall(function()
_v1:BindToRenderStep(_ei9m[2498], Enum.RenderPriority.Last.Value + 2, function()
if not _v4.NO_FOG or _v4.UNLOADED then return end
pcall(function()
if _vho.FogEnd < 1e6 then _vho.FogEnd = 1e6 end
if _vho.FogStart ~= 0 then _vho.FogStart = 0 end
for _vj5, _vj6 in ipairs(_vho:GetChildren()) do
if _vj6:IsA(_ei9m[2383-6]) then
if _vj6.Density ~= 0 then _vj6.Density = 0 end
if _vj6.Haze ~= 0 then _vj6.Haze = 0 end
elseif _vj6:IsA(_ei9m[334+3]) and _vj6.Enabled then
_vj6.Enabled = false
end
end
local _vj7 = workspace.CurrentCamera
for _vj8, _vj9 in ipairs(_vj7 and _vj7:GetChildren() or {}) do
if _vj9:IsA(_ei9m[2457-18]) and _vj9.Enabled then _vj9.Enabled = false end
end
end)
end)
end)
end
_v4.VIM = game:GetService(_ei9m[6+13])
local _vja = nil
_v4.AG_UIS = game:GetService(_ei9m[1401])
local _vjb = true
table.insert(_v2l, _v4.AG_UIS.WindowFocused:Connect(function() _vjb = true end))
table.insert(_v2l, _v4.AG_UIS.WindowFocusReleased:Connect(function() _vjb = false end))
local _vjc = _v4.getLocalPhysicsRoot
_v4.AG_SPEED = 16
_v4.AG_TURN_RATE = math.rad(70)
function _v4.startAutoGrow()
if _vja then return end
_vja = task.spawn(function()
local _vjd = math.random() < 0.5 and Enum.KeyCode.A or Enum.KeyCode.D
local _vje = (_vjd == Enum.KeyCode.A) and 1 or -1
local _vjf = false
local _vjg = _v4.AG_SPEED
local _vjh = _v4.AG_TURN_RATE * _vje
local _vji = 1
local _vjj, _vjk
local function _vjl()
if not _vjf then return end
_vjf = false
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.V, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, _vjd, false, game) end)
end
while _v4.AUTO_GROW and not _v4.UNLOADED do
local _vjm = task.wait()
if _vjm <= 0 then _vjm = 1 / 60 end
local _vjn = _vjc()
if _vjb then
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.V, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(true, _vjd, false, game) end)
_vjf = true
if _vjn then
pcall(function()
local _vjo = _vjn.CFrame.LookVector
local _vjp = Vector3.new(_vjo.X, 0, _vjo.Z)
if _vjp.Magnitude > 0.01 then
local _vjq = math.atan2(_vjp.X, _vjp.Z)
if _vjk then
local _vjr = _vjq - _vjk
if _vjr > math.pi then _vjr = _vjr - 2 * math.pi
elseif _vjr < -math.pi then _vjr = _vjr + 2 * math.pi end
local _vjs = _vjr / _vjm
if math.abs(_vjs) > 0.05 then _vjh = _vjs end
end
_vjk = _vjq
end
if _vjj then
local _vjt = _vjn.Position
local _vju = Vector3.new(_vjt.X - _vjj.X, 0, _vjt.Z - _vjj.Z).Magnitude
local _vjv = _vju / _vjm
if _vjv > 1 then _vjg = _vjv end
end
_vjj = _vjn.Position
local _vjw = _v2.Character and _v2.Character:GetAttribute(_ei9m[1896])
if type(_vjw) == _ei9m[1696] and _vjw > 0 then _vji = _vjw end
end)
end
else
_vjl()
_vjj, _vjk = nil, nil
if _vjn and not _vjn.Anchored then
pcall(function()
local _vjx, _vjy = _vjh, _vjg
local _vjz = _v2.Character and _v2.Character:GetAttribute(_ei9m[685-18])
if type(_vjz) == _ei9m[37+1138] and _vjz > 0 and _vji > 0 then
local _vk0 = _vji / _vjz
_vjx = _vjh * _vk0
_vjy = _vjg * _vk0
end
local _vk1 = _vjn.CFrame.LookVector
local _vk2 = Vector3.new(_vk1.X, 0, _vk1.Z)
if _vk2.Magnitude < 0.01 then _vk2 = Vector3.new(0, 0, 1) end
_vk2 = _vk2.Unit
local _vk3 = _vjx * _vjm
local _vk4, _vk5 = math.cos(_vk3), math.sin(_vk3)
local _vk6 = Vector3.new(_vk2.X * _vk4 + _vk2.Z * _vk5, 0, -_vk2.X * _vk5 + _vk2.Z * _vk4)
local _vk7 = _vjn.Position
_vjn.CFrame = CFrame.lookAt(_vk7, _vk7 + _vk6)
local _vk8 = _vjn.AssemblyLinearVelocity
_vjn.AssemblyLinearVelocity = Vector3.new(_vk6.X * _vjy, _vk8.Y, _vk6.Z * _vjy)
end)
end
end
end
_vjl()
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.V, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, _vjd, false, game) end)
_vja = nil
end)
end
function _v4.stopAutoGrow()
_v4.AUTO_GROW = false
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.V, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.A, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.D, false, game) end)
pcall(function()
local _vk9 = _vjc()
if _vk9 and not _vk9.Anchored then
local _vka = _vk9.AssemblyLinearVelocity
_vk9.AssemblyLinearVelocity = Vector3.new(0, _vka.Y, 0)
end
end)
_vja = nil
end
_v4.WATER_RS = game:GetService(_ei9m[3+1150])
local _vkb = _v4.WATER_RS:FindFirstChild(_ei9m[878+829])
local _vkc = _vkb and _vkb:FindFirstChild(_ei9m[2541-6])
_v4.ReplicaSetRemote = _vkb and _vkb:FindFirstChild(_ei9m[2408-14])
local _vkd = nil
_v4.cleanliness = {}
_v4.waterCur = {}
_v4.waterMax = {}
if _v4.ReplicaSetRemote then
table.insert(_v2l, _v4.ReplicaSetRemote.OnClientEvent:Connect(function(_vke, _vkf, _vkg)
if typeof(_vkf) ~= _ei9m[5+212] then return end
if _vkf[1] == _ei9m[1237+212] then
_vkd = _vke
elseif _vkf[1] == _ei9m[2459] and _vkf[2] == _ei9m[1730] then
_v4.bleedForecast[_vke] = (typeof(_vkg) == _ei9m[4+196] and _vkg) or 0
elseif _vkf[1] == _ei9m[128+41] and _vkf[2] == _ei9m[4+974] then
if typeof(_vkg) == _ei9m[2733-8] then _v4.staminaCur[_vke] = _vkg end
elseif _vkf[1] == _ei9m[263+1479] and _vkf[2] == _ei9m[2+3043] then
if typeof(_vkg) == _ei9m[1935] then _v4.staminaMax[_vke] = _vkg end
elseif _vkf[1] == _ei9m[3+1666] and _vkf[2] == _ei9m[1999] then
if typeof(_vkg) == _ei9m[702] then _v4.infectCur[_vke] = _vkg end
elseif _vkf[1] == _ei9m[2247-4] and _vkf[2] == _ei9m[2763-5] then
if typeof(_vkg) == _ei9m[7+799] then _v4.waterCur[_vke] = _vkg end
elseif _vkf[1] == _ei9m[2798-18] and _vkf[2] == _ei9m[1639-9] then
if typeof(_vkg) == _ei9m[6+828] then _v4.waterMax[_vke] = _vkg end
elseif _vkf[1] == _ei9m[2765] and _vkf[2] == nil then
if typeof(_vkg) == _ei9m[93+37] then _v4.cleanliness[_vke] = _vkg end
elseif _vkf[1] == _ei9m[4+1321] and _vkf[2] == _ei9m[73+636] then
if typeof(_vkg) == _ei9m[2956-17] then _v4.foodMax[_vke] = _vkg end
elseif _vkf[1] == _ei9m[248-10] and _vkf[2] == _ei9m[1495-9] then
if typeof(_vkg) == _ei9m[1404+1331] then _v4.foodCur[_vke] = _vkg end
end
end))
end
_v4.ReplicaDestroyRemote = _vkb and _vkb:FindFirstChild(_ei9m[1157+196])
if _v4.ReplicaDestroyRemote then
table.insert(_v2l, _v4.ReplicaDestroyRemote.OnClientEvent:Connect(function(_vkh)
_v4.bleedForecast[_vkh] = nil
_v4.staminaCur[_vkh] = nil; _v4.staminaMax[_vkh] = nil
_v4.infectCur[_vkh] = nil; _v4.foodSeenMax[_vkh] = nil; _v4.waterSeenMax[_vkh] = nil
_v4.foodCur[_vkh] = nil; _v4.foodMax[_vkh] = nil; _v4.waterCur[_vkh] = nil; _v4.waterMax[_vkh] = nil
_v4.cleanliness[_vkh] = nil
end))
end
local function _vki()
local _vkj = _v2.Character
if not _vkj then return nil end
local _vkk = _vkj:FindFirstChild(_ei9m[2133])
return _vkk and _vkk.Value or nil
end
function _v4.readWaterStat()
local ok, cur, max = pcall(function()
local _vkl = _v2.PlayerGui.MainHUD.StatsFrame.Water.TextLabel.Text
_vkl = _vkl:gsub(",", "")
local _vkm, _vkn = _vkl:match(_ei9m[1663])
return tonumber(_vkm), tonumber(_vkn)
end)
if ok then return cur, max end
return nil, nil
end
function _v4.readFoodStat()
local ok, cur, max = pcall(function()
local function _vko(_vkp)
if type(_vkp) ~= _ei9m[187] then return nil end
_vkp = _vkp:gsub(",", ""):gsub("%s", "")
local _vkq = _vkp:match(_ei9m[7+2440])
local _vkr = _vkq and tonumber(_vkq)
if not _vkr then return nil end
local _vks = _vkp:sub(-1):lower()
if _vks == "k" then _vkr = _vkr * 1e3
elseif _vks == "m" then _vkr = _vkr * 1e6
elseif _vks == "b" then _vkr = _vkr * 1e9 end
return _vkr
end
local _vkt = _v2.PlayerGui.MainHUD.StatsFrame.Food.TextLabel.Text
local _vku, _vkv = _vkt:match(_ei9m[378-17])
return _vko(_vku), _vko(_vkv)
end)
if ok and cur and max and max > 5 then return cur, max end
return nil, nil
end
function _v4.myFood()
local _vkw = _v2.Character
local _vkx = _vkw and _vkw:FindFirstChild(_ei9m[583+373])
local _vky = _vkx and _vkx.Value
if _vky then
local _vkz, _vl0 = _v4.foodCur[_vky], _v4.foodMax[_vky]
if _vkz and _vl0 then return _vkz, _vl0 end
end
return _v4.readFoodStat()
end
function _v4.myWater()
local _vl1 = _vki()
if _vl1 then
local _vl2, _vl3 = _v4.waterCur[_vl1], _v4.waterMax[_vl1]
if _vl2 and _vl3 and _vl3 > 0 then return _vl2, _vl3 end
end
return _v4.readWaterStat()
end
function _v4.getConsumptionReplicaId()
if _vkd then return _vkd end
pcall(function()
if type(_v4.getCC) ~= _ei9m[2386] then return end
local _vl4 = _v4.getCC()
local _vl5 = _vl4 and _vl4.Replica
if _vl5 and _vl5.Id then _vkd = _vl5.Id end
end)
return _vkd
end
task.spawn(function()
while not _v4.UNLOADED do
pcall(function()
if not _v4.PACK_ESP and not _v4.PACK_LEADER_ESP then return end
local _vl6 = _v4.req(_v4.WATER_RS.Packages.Knit)
local _vl7 = _vl6.GetController(_ei9m[844+630])
local _vl8 = _vl7:GetMyPack()
local _vl9 = {}
local _vla = {}
if _vl8 and _vl8.Parent then
for _vlb, _vlc in _vl8.Parent.Children do
local _vld = _vlb.Tags and _vlb.Tags.Name or _ei9m[192+397]
local _vle = _vlb.Data
if _vle and _vle.Members then
local _vlf = #_vle.Members
local _vlg = _vle.Leader and tostring(_vle.Leader) or nil
for _vlc, _vli in ipairs(_vle.Members) do
local _vlj = _v0:GetPlayerByUserId(_vli[1])
if _vlj then
local _vlk = _vlg and (_vlj.Name == _vlg or _vlj.DisplayName == _vlg)
_vl9[_vlj] = {name = _vld, count = _vlf, isLeader = _vlk}
if _vlk then _vla[_vlj] = _vld end
end
end
end
end
else
for _vll, _vlm in ipairs(_v0:GetPlayers()) do
if _vlm:GetAttribute(_ei9m[2+374]) then
_vl9[_vlm] = {name = "", count = 0, isLeader = false}
end
end
end
_v4.packMembers = _vl9
_v4.packLeaders = _vla
end)
task.wait(3)
end
end)
_v4.drinkRay = RaycastParams.new()
_v4.drinkRay.FilterType = Enum.RaycastFilterType.Include
_v4.drinkRay.FilterDescendantsInstances = { workspace.Terrain }
function _v4.headOverWater()
local _vln = _v4.getCS and _v4.getCS()
if _vln and _vln.FoundWater ~= nil then
if _vln.FoundWater ~= true then return false end
local _vlo = tonumber(_vln.WaterLevel)
local _vlp
pcall(function() _vlp = _v4.getLocalPhysicsRoot() end)
if _vlo and _vlp and _vlp.Position then
local _vlq = 6
pcall(function()
local _vlr = _vln.Alignment
local _vls = (_vlr.RideHeight or 0) + (_vlr.BodyHeightIncrease or 0)
if _vls > 0 then _vlq = _vls end
end)
return _vlp.Position.Y - _vlo <= _vlq + 12
end
return true
end
local _vlt
pcall(function()
local _vlu = _v4.getCS()
local _vlv = _vlu and _vlu.Instances
local _vlw, _vlx = _vlv and _vlv.FrontAttachment, _vlv and _vlv.RootAttachment
if _vlw and _vlx then
local _vly = _vlw.WorldCFrame
_vlt = workspace:Raycast(_vly.Position, _vly.UpVector * -(_vlw.Position.Y - _vlx.Position.Y), _v4.drinkRay)
else
local _vlz = _v2.Character and _v2.Character:FindFirstChild(_ei9m[4+1699])
if _vlz then
_vlt = workspace:Raycast(_vlz.CFrame * Vector3.new(0, 0, -_vlz.Size.Z / 2), Vector3.new(0, -40, 0), _v4.drinkRay)
end
end
end)
return _vlt ~= nil and _vlt.Material == Enum.Material.Water
end
task.spawn(function()
local _vm0 = false
local function _vm1(_vm2)
if _vm0 == _vm2 then return end
_vm0 = _vm2
local _vm3 = _vki()
if _vm3 and _vkc then
pcall(function() _vkc:FireServer(_vm3, _ei9m[2338+547], _ei9m[6+2222], _vm2) end)
end
end
pcall(function()
local _vm4 = _vki()
if _vm4 and _vkc then _vkc:FireServer(_vm4, _ei9m[357-8], _ei9m[960], false) end
end)
while not _v4.UNLOADED do
local _vm5 = 0.5
pcall(function()
local _vm6 = (_v4.AUTO_WATER or _v4.AFK_FARM or _v4.LEGIT_FARM) and _vkc and _v4.getConsumptionReplicaId()
local _vm7, _vm8 = _v4.myWater()
local _vm9 = not (_vm7 and _vm8 and _vm8 > 0) or _vm7 < _vm8 - math.max(_vm8 * 0.002, 0.001)
if _vm6 and _vm9 and _v4.headOverWater() then
_vm1(true)
_vkc:FireServer(_vm6, _ei9m[377+2175])
_v4.drinkSipT = os.clock()
_vm5 = 1 / math.clamp(_v4.SIP_RATE or 1, 0.2, 1)
elseif _vm6 and _vm9 and _v4.WATER_ANYWHERE and _vki() then
_vm1(false)
_vkc:FireServer(_vki(), _ei9m[357+894], _ei9m[1377-20], true)
_vkc:FireServer(_vm6, _ei9m[2151])
_v4.drinkSipT, _v4.anywhereSips = os.clock(), (_v4.anywhereSips or 0) + 1
_vm5 = 1
else
_vm1(false)
end
end)
task.wait(_vm5)
end
pcall(_vm1, false)
end)
_v4.drinkBad = {}
_v4.drinkWetRay = RaycastParams.new()
_v4.drinkWetRay.FilterType = Enum.RaycastFilterType.Include
_v4.drinkDryRay = RaycastParams.new()
_v4.drinkDryRay.FilterType = Enum.RaycastFilterType.Include
_v4.drinkDryRay.IgnoreWater = true
function _v4.drinkCell(_vma) return math.floor(_vma.X / 16) .. ":" .. math.floor(_vma.Z / 16) end
function _v4.drinkFind(_vmb, _vmc, _vmd)
if _v4.drinkSearching then return end
_v4.drinkSearching = true
task.spawn(function()
local _vme
pcall(function()
local _vmf = { workspace.Terrain }
local _vmg = workspace:FindFirstChild(_ei9m[7+1470])
local _vmh = _vmg and _vmg:FindFirstChild(_ei9m[1118])
if _vmh then _vmf[2] = _vmh end
_v4.drinkWetRay.FilterDescendantsInstances = _vmf
_v4.drinkDryRay.FilterDescendantsInstances = _vmf
local _vmi = _vmb.Y + 1500
local function _vmj(_vmk, _vml)
local _vmm = workspace:Raycast(Vector3.new(_vmk, _vmi, _vml), Vector3.new(0, -2500, 0), _v4.drinkWetRay)
return _vmm and _vmm.Material == Enum.Material.Water and _vmm.Position.Y or nil
end
local _vmn = {}
for _vmo, _vmp in ipairs(_v0:GetPlayers()) do
if _vmp ~= _v2 and _vmp.Character then
local _vmq = _v4.getRootOf(_vmp.Character, false)
if _vmq then _vmn[#_vmn + 1] = _vmq.Position end
end
end
local _vmr, _vms = 0, 20
while _vms <= _vmc and not _vme and not _v4.UNLOADED do
local _vmt = math.clamp(math.floor(2 * math.pi * _vms / 25), 12, 96)
for _vmu = 0, _vmt - 1 do
local _vmv = _vmu * 2 * math.pi / _vmt
local _vmw, _vmx = _vmb.X + math.cos(_vmv) * _vms, _vmb.Z + math.sin(_vmv) * _vms
_vmr = _vmr + 1
if _vmr % 40 == 0 then task.wait() end
local _vmy = _vmj(_vmw, _vmx)
if _vmy then
local _vmz = Vector3.new(_vmb.X - _vmw, 0, _vmb.Z - _vmx).Unit
local _vn0, _vn1, _vn2, _vn3, _vn4 = _vmw, _vmx, nil, nil, nil
for _vn5 = 1, 20 do
local _vn6, _vn7 = _vmw + _vmz.X * 4 * _vn5, _vmx + _vmz.Z * 4 * _vn5
_vmr = _vmr + 1
if not _vmj(_vn6, _vn7) then
local _vn8 = workspace:Raycast(Vector3.new(_vn6, _vmi, _vn7), Vector3.new(0, -2500, 0), _v4.drinkDryRay)
if _vn8 then _vn2, _vn3, _vn4 = _vn6, _vn7, _vn8.Position.Y end
break
end
_vn0, _vn1 = _vn6, _vn7
end
if _vn2 then
local _vn9 = Vector3.new(_vn2, _vn4, _vn3)
local _vna = not _v4.drinkBad[_v4.drinkCell(_vn9)]
for _vnb, _vnc in ipairs(_vmn) do
if _vna and (_vnc - _vn9).Magnitude <= (_vmd or 0) then _vna = false end
end
if _vna and _v4.wallCross and _v4.wallCross(_vmb, _vn9) then _vna = false end
if _vna then
_vme = { stand = _vn9, water = Vector3.new(_vn0, _vmy, _vn1) }
break
end
end
end
end
_vms = _vms + ((_vms < 200) and 20 or 40)
end
end)
_v4.drinkSpot = { from = _vmb, t = os.clock(), stand = _vme and _vme.stand, water = _vme and _vme.water }
_v4.drinkSearching = nil
end)
end
task.spawn(function()
local _vnd = game:GetService(_ei9m[536+586])
local _vne, _vnf, _vng, _vnh
pcall(function() _vne = _v4.req(_v4.WATER_RS.Shared.ConsumptionData) end)
_vnf = _v4.requireCS()
pcall(function() _vng = _v4.req(_v4.WATER_RS.Packages.Knit).GetController(_ei9m[1907]) end)
pcall(function() _vnh = _v4.req(_v4.WATER_RS.Common.Buffers.ConsumableBuffer) end)
local _vni = _vnh and _vnh.FOOD or 9
local _vnj = _vnh and _vnh.WATER or 13
local _vnk = _vnh and _vnh.SPAWN or 17
local function _vnl()
local _vnm
pcall(function() _vnm = _vng and _vng.Replica and _vng.Replica.Id end)
return _vnm or _vkd
end
local _vnn = false
local function _vno(_vnp)
if _vnp == _vnn then return end
_vnn = _vnp
local _vnq = _vki()
if _vnq and _vkc then
pcall(function() _vkc:FireServer(_vnq, _ei9m[7+1315], _ei9m[256-2], _vnp) end)
end
end
local function _vnr(_vns)
local _vnt, _vnu = pcall(function() return _vnf.Data.Diet.Categories[_vns] ~= nil end)
return _vnt and _vnu
end
local function _vnv()
local _vnw
pcall(function() _vnw = _vnf.Wellbeing.WellbeingReplica.Data.SavableStats.Stats end)
if type(_vnw) == _ei9m[552+15] and _vnw.Proteins ~= nil then return _vnw end
pcall(function() _vnw = _vnf.Wellbeing.SavableStats end)
if type(_vnw) == _ei9m[862+51] and _vnw.Proteins ~= nil then return _vnw end
return nil
end
local function _vnx()
local _vny = _vnv()
if not _vny then return nil end
local _vnz = {}
pcall(function()
for _vo0, _vo1 in ipairs(_vnf.Data.Shared.Nutrition) do
if _vo1.Category then _vnz[#_vnz + 1] = _vo1.Category end
end
end)
if #_vnz == 0 then
for _vo2, _vo3 in ipairs(_v4.NUTRIENTS) do
if tonumber(_vny[_vo3]) then _vnz[#_vnz + 1] = _vo3 end
end
end
local _vo4, _vo5
for _vo6, _vo7 in ipairs(_vnz) do
local _vo8 = tonumber(_vny[_vo7])
if _vo8 and (not _vo5 or _vo8 < _vo5) then _vo4, _vo5 = _vo7, _vo8 end
end
return _vo4
end
local function _vo9(_voa, _vob)
if not _vng or not _vng.Replica or not _vng.Replica.Data then return nil end
local _voc = _vng.Replica.Data.ConsumableData
local _vod = _voc and (_voc[tostring(_voa)] or _voc[_voa])
if type(_vod) ~= _ei9m[1936-4] then return nil end
local _voe = _vod[_vob or 1]
if typeof(_voe) ~= _ei9m[2134-6] then return nil end
local _vof, _vog, _voh, _voi = pcall(function()
return buffer.readu32(_voe, _vni) / 100,
buffer.readu32(_voe, _vnj) / 100,
buffer.readu8(_voe, _vnk) == 1
end)
if _vof then return _vog, _voh, _voi end
return nil
end
local function _voj(_vok, _vol, _vom)
local _von = {}
local _voo = _vne and _vne.FoliageConsumables and _vne.FoliageConsumables[_vok]
local _vop = _voo and _voo.Actions
if type(_vop) == _ei9m[1032+1184] then
for _voq, _vor in ipairs(_vop) do
if type(_vor) == _ei9m[876] then
local _vos, _vot, _vou = _vo9(_vol, _voq)
local _vov = false
if _vos ~= nil then
if not _vou or (_vos + (_vot or 0)) <= 0 then continue end
if _v4.scrapsWanted() and _v4.isScraps(_vos) then
if not _vom then continue end
_vov = true
end
end
_von[#_von + 1] = { index = _voq, nutrition = _vor.Nutrition or {},
allowed = _vor.Category ~= nil and _vnr(_vor.Category),
category = _vor.Category, food = _vos or 0, scraps = _vov }
end
end
end
if #_von == 0 then
local _vow, _vox, _voy = _vo9(_vol, 1)
local _voz = _vow ~= nil and _v4.scrapsWanted() and _v4.isScraps(_vow)
if _vow and _voy and (_vow + (_vox or 0)) > 0 and (_vom or not _voz) then
_von[1] = { index = 1, nutrition = {}, allowed = false, food = _vow, scraps = _voz }
elseif _vow == nil then
_von[1] = { index = 1, nutrition = {}, allowed = false, food = 0 }
end
end
return _von
end
local function _vp0(_vp1)
local _vp2 = (type(_vp1) == _ei9m[608] and _vp1:sub(1, 4) == _ei9m[6+2280]) and _ei9m[158-20]
or (_vne and _vne.CorpseTypes and _vne.CorpseTypes[_vp1])
local _vp3 = _vp2 and _vne and _vne.CorpseConsumables and _vne.CorpseConsumables[_vp2]
local _vp4 = _vp3 and _vp3.Actions and _vp3.Actions[1]
if _vp4 then
return { index = 1, nutrition = _vp4.Nutrition or {},
allowed = _vp4.Category ~= nil and _vnr(_vp4.Category), category = _vp4.Category }
end
return { index = 1, nutrition = {}, allowed = false }
end
local function _vp5(_vp6, _vp7)
local _vp8 = 22
pcall(function() if _v4.khRange then _vp8 = _v4.khRange() end end)
local _vp9 = math.max(_vp8 * 3, 60)
local _vpa, _vpb, _vpc, _vpd
local _vpe, _vpf, _vpg, _vph
local _vpi, _vpj, _vpk
local _vpl, _vpm, _vpn
local _vpo, _vpp, _vpq
local function _vpr(_vps, _vpt, _vpu, _vpv, _vpw, _vpx)
if not _vps then return end
if _v4.feStallSkip and (_v4.feStallSkip[_vps] or 0) > os.clock() then return end
if _vpx then
if _vpw <= _vp8 then
local _vpy = 2
if _vp7 and _vpu[_vp7] then _vpy = 0 elseif _vpv then _vpy = 1 end
if (not _vpe) or _vpy < _vpe or (_vpy == _vpe and _vpw < (_vph or math.huge)) then
_vpe, _vpf, _vpg, _vph = _vpy, _vps, _vpt, _vpw
end
end
return
end
if _vpw <= _vp8 then
local _vpz = 2
if _vp7 and _vpu[_vp7] then _vpz = 0 elseif _vpv then _vpz = 1 end
if (not _vpa) or _vpz < _vpa or (_vpz == _vpa and _vpw < (_vpd or math.huge)) then
_vpa, _vpb, _vpc, _vpd = _vpz, _vps, _vpt, _vpw
end
end
if not _vpq or _vpw < _vpq then _vpo, _vpp, _vpq = _vps, _vpt, _vpw end
if _vpw <= _vp9 then
if _vpv and (not _vpn or _vpw < _vpn) then _vpl, _vpm, _vpn = _vps, _vpt, _vpw end
if _vp7 and _vpu[_vp7] and (not _vpk or _vpw < _vpk) then _vpi, _vpj, _vpk = _vps, _vpt, _vpw end
end
end
local _vq0 = {}
for _vq1, _vq2 in ipairs(_vnd:GetTagged(_ei9m[3+1393])) do
local _vq3, _vq4 = _v4.foodSpot(_vq2)
if _vq3 then
local _vq5 = (_vq3 - _vp6).Magnitude
if _vq5 <= _vp9 then
local _vq6 = _voj(_vq2.Name, _vq4, true)
for _vq1, _vq8 in ipairs(_vq6) do _vpr(tonumber(_vq4), _vq8.index, _vq8.nutrition, _vq8.allowed, _vq5, _vq8.scraps) end
else
_vq0[#_vq0 + 1] = { tagged = _vq2, id = _vq4, d = _vq5 }
end
end
end
if _vng and _vng.CorpseData then
for _vq9, _vqa in pairs(_vng.CorpseData) do
local _vqb = _vqa and _vp0(_vqa.Name)
local _vqc = _vqb and _vqa.Root
if _vqc then
local _vqd
pcall(function() _vqd = _vqc:IsA(_ei9m[6+1265]) and _vqc.Position or _vqc:GetPivot().Position end)
local _vqe = _vo9(tonumber(_vq9), _vqb.index)
if _vqd then
_vpr(tonumber(_vq9), _vqb.index, _vqb.nutrition, _vqb.allowed, (_vqd - _vp6).Magnitude,
_vqe ~= nil and _v4.LEAVE_SCRAPS and _v4.isScraps(_vqe))
end
end
end
end
if #_vq0 > 0 and not (_vpq and _vpq <= _vp9) then
table.sort(_vq0, function(_vqf, _vqg) return _vqf.d < _vqg.d end)
for _vqh, _vqi in ipairs(_vq0) do
if _vpq and _vqi.d >= _vpq then break end
local _vqj = _voj(_vqi.tagged.Name, _vqi.id)
if #_vqj > 0 then
for _vqh, _vql in ipairs(_vqj) do _vpr(tonumber(_vqi.id), _vql.index, _vql.nutrition, _vql.allowed, _vqi.d) end
break
end
end
end
if _vpb then return _vpb, _vpc end
if _vpf then return _vpf, _vpg, true end
if _vpi then return _vpi, _vpj end
if _vpl then return _vpl, _vpm end
return _vpo, _vpp
end
local function _vqm(_vqn)
local _vqo, _vqp
for _vqq, _vqr in ipairs(_vnd:GetTagged(_ei9m[3+2281])) do
local _vqs, _vqt = _v4.foodSpot(_vqr)
if _vqs then
local _vqu = (_vqs - _vqn).Magnitude
if not _vqp or _vqu < _vqp then _vqo, _vqp = tonumber(_vqt), _vqu end
end
end
return _vqo, 1
end
_v4.foodSpotCache = setmetatable({}, { __mode = "k" })
function _v4.foodSpot(_vqv)
local _vqw = _v4.foodSpotCache[_vqv]
if _vqw then return _vqw.pos, _vqw.id end
local _vqx = _vqv:GetAttribute("ID")
if not _vqx then return nil, nil end
local _vqy
pcall(function() _vqy = _vqv:GetPivot().Position end)
if not _vqy then return nil, _vqx end
_v4.foodSpotCache[_vqv] = { pos = _vqy, id = _vqx }
return _vqy, _vqx
end
local _vqz, _vr0, _vr1 = nil, nil, 0
local _vr2 = false
local _vr3 = 0.5
_v4.afkConsumeId = _vnl
_v4.afkBufCheck = _vo9
function _v4.afkPickFood(_vr4, _vr5, _vr6)
local _vr7 = 22
pcall(function() if _v4.khRange then _vr7 = _v4.khRange() end end)
local _vr8 = (_vr6 and _vr6.avoid) or _v4.AFK_FARM_AVOID or 200
local _vr9 = _vnx()
local _vra, _vrb = {}, {}
pcall(function()
local _vrc = _vnv()
if not _vrc then return end
local _vrd = {}
pcall(function()
for _vre, _vrf in ipairs(_vnf.Data.Shared.Nutrition) do _vrd[#_vrd + 1] = _vrf.Category end
end)
if #_vrd == 0 then _vrd = _v4.NUTRIENTS end
for _vrg, _vrh in ipairs(_vrd) do
local _vri = _vrh and tonumber(_vrc[_vrh])
if _vri and _vri <= 99 then _vra[_vrh] = true end
if _vri and _vri <= 90 then _vrb[_vrh] = true end
end
end)
local function _vrj(_vrk, _vrl)
for _vrm in pairs(_vrl) do
if (tonumber(_vrk[_vrm]) or 0) >= 0.5 then return true end
end
return false
end
local _vrn = math.max(150, _vr7 * 6)
local _vro, _vrp = _vr6 and _vr6.yWeight, (_vr6 and _vr6.feetY) or _vr4.Y
local function _vrq(_vrr)
if not _vro then return (_vrr - _vr4).Magnitude end
local _vrs = Vector3.new(_vrr.X - _vr4.X, 0, _vrr.Z - _vr4.Z).Magnitude
return _vrs + math.max(0, math.abs(_vrr.Y - _vrp) - 6) * _vro
end
local _vrt
pcall(function() _vrt = _v2.Character:GetAttribute(_ei9m[242+92]) end)
local _vru = RaycastParams.new()
_vru.FilterType = Enum.RaycastFilterType.Include
_vru.FilterDescendantsInstances = { workspace.Terrain }
local function _vrv(_vrw)
local _vrx = workspace:Raycast(Vector3.new(_vrw.X, 5000, _vrw.Z), Vector3.new(0, -12000, 0), _vru)
return _vrx and _vrx.Position.Y
end
local _vry = {}
if _vr8 > 0 then
for _vrz, _vs0 in ipairs(game.Players:GetPlayers()) do
if _vs0 ~= _v2 and _vs0.Character then
local _vs1 = _v4.getRootOf(_vs0.Character, false)
if _vs1 then _vry[#_vry + 1] = _vs1.Position end
end
end
end
local _vs2, _vs3, _vs4, _vs5, _vs6
local function _vs7(_vs8, _vs9, _vsa, _vsb, _vsc, _vsd, _vse, _vsf)
if not _vs8 or not _vsd then return end
if _vr5 and _vr5[_vs8] then return end
if _vr6 and _vr6.maxDist and _vsc > _vr6.maxDist then return end
for _vsg, _vsh in ipairs(_vry) do
if (_vsh - _vsd).Magnitude <= _vr8 then return end
end
local _vsi = -_vsc
local _vsj = _vsf == _ei9m[639+974]
if _vsb and _vrj(_vsa, _vra) and (not _vsj or _vrj(_vsa, _vrb)) then
_vsi = _vsi + ((_vsf == _ei9m[273+1810]) and 40000 or _vsj and 20000 or 30000)
if _vr9 and (tonumber(_vsa[_vr9]) or 0) >= 0.5 then _vsi = _vsi + 5000 end
elseif _vsf == _ei9m[1295-11] then
_vsi = _vsi + ((_vsc <= _vrn) and 10000 or -50000)
elseif _vsj then
_vsi = _vsi - 100000
end
if not _vs5 or _vsi > _vs5 then
if _v4.wallCross and _v4.wallCross(_vr4, _vsd) then return end
if _vr6 and _vr6.reach and not _vr6.reach(_vsd, _vse) then return end
_vs2, _vs3, _vs4, _vs5, _vs6 = _vs8, _vs9, _vsd, _vsi, _vse
end
end
for _vsk, _vsl in ipairs(_vnd:GetTagged(_ei9m[98+151])) do
local _vsm, _vsn = _v4.foodSpot(_vsl)
if _vsm then
local _vso = _vrq(_vsm)
local _vsp = _voj(_vsl.Name, _vsn)
for _vsk, _vsr in ipairs(_vsp) do
_vs7(tonumber(_vsn), _vsr.index, _vsr.nutrition, _vsr.allowed, _vso, _vsm, false,
_v4.OTHER_FOOD[_vsr.category or ""] and _ei9m[3000-12] or _ei9m[3012-8])
end
end
end
if (_vr6 and _vr6.meat or (not _vr6 and _v4.dinoEatsMeat())) and _vng and _vng.CorpseData then
for _vss, _vst in pairs(_vng.CorpseData) do
if _vst and tostring(_vst.Name) ~= tostring(_vrt) then
local _vsu = _vp0(_vst.Name)
local _vsv = _vsu and _vst.Root
if _vsv then
local _vsw
pcall(function() _vsw = _vsv:IsA(_ei9m[2202-18]) and _vsv.Position or _vsv:GetPivot().Position end)
if _vsw then
local _vsx = _vrv(_vsw)
local _vsy = _vsx ~= nil and _vsw.Y < _vsx - _vr7
local _vsz, _vt0, _vt1 = _vo9(tonumber(_vss), _vsu.index)
if not _vsy and _vsz ~= nil and _vt1 and (_vsz + (_vt0 or 0)) > 0 then
_vs7(tonumber(_vss), _vsu.index, _vsu.nutrition, _vsu.allowed, _vrq(_vsw), _vsw, true,
_v4.OTHER_FOOD[_vsu.category or ""] and _ei9m[4+689] or _ei9m[4+1500])
end
end
end
end
end
end
return _vs2, _vs3, _vs4, _vs6
end
local _vt2 = true
local _vt3 = 0
local _vt4 = nil
local _vt5 = nil
local _vt6 = 3
local _vt7, _vt8 = false, false
while not _v4.UNLOADED do
pcall(function()
local _vt9 = _vnl()
local _vta = true
if _v4.EAT_WHEN_HUNGRY then
local _vtb, _vtc = _v4.myFood()
if _vtb and _vtc and _vtc > 0 then
if _vt2 then
if _vtb >= _vtc - _v4.foodGap(_vtc, 0.05) then _vt2 = false end
elseif _vtb <= _vtc - _v4.foodGap(_vtc, 1) then
_vt2 = true
end
_vta = _vt2
end
end
local _vtd = _v4.LEGIT_FARM and _v4.lfEat
if (_v4.FORCE_EAT or _vtd) and not _v4.AFK_FARM and not (_v4.LEGIT_FARM and not _vtd) and not _v4.CLEAN_BREAK
and _vkc and _vt9 and _vta then
local _vte = os.clock()
local _vtf = _vt3 >= _vt6
if _vtd and (_vqz ~= _vtd.id or _vr0 ~= _vtd.idx) then
_vqz, _vr0, _vr2 = _vtd.id, _vtd.idx, false
_vt3 = 0; _vt4 = nil; _vt5 = _vtd.id
end
if not _vtd and (_vte - _vr1 >= _vr3 or not _vqz or _vtf) then
if _vtf then
if _vt5 then
_v4.feStallSkip = _v4.feStallSkip or {}
_v4.feStallSkip[_vt5] = os.clock() + 60
end
_vt3 = 0; _vt4 = nil; _vt5 = nil
end
_vr1 = _vte
local _vtg = _v2.Character
local _vth = _vtg and (_vtg:FindFirstChild(_ei9m[697+703]) or _vtg:FindFirstChild(_ei9m[2183])
or _vtg:FindFirstChildWhichIsA(_ei9m[5+873]))
if _vth then
local _vti, _vtj, _vtk
if _vne and _vnf then
_vti, _vtj, _vtk = _vp5(_vth.Position, _vnx())
else
_vti, _vtj = _vqm(_vth.Position)
end
_vr2 = _vtk == true
if _vti then
_vqz, _vr0 = _vti, _vtj
if _vti ~= _vt5 then
_vt3 = 0; _vt4 = nil; _vt5 = _vti
end
else
_vqz, _vr0 = nil, nil
end
end
end
for _vtl = 1, 1 do
local _vtm, _vtn = _vqz, _vr0
if _vtm and type(_vtm) == _ei9m[2192] and _vtm >= 0 and _vtm < 4294967296 then
local _vto, _vtp, _vtq = _vo9(_vtm, _vtn)
local _vtr = _vto and (_vto + (_vtp or 0)) or nil
local _vts = false
pcall(function()
_vts = _vng ~= nil and _vng.CorpseData ~= nil
and (_vng.CorpseData[_vtm] or _vng.CorpseData[tostring(_vtm)]) ~= nil
end)
local _vtt = (_vtd and not _vts and not _vtd.meat and (_v4.LF_SCRAPS or _v4.LEAVE_SCRAPS))
or (not _vtd and _v4.LEAVE_SCRAPS and not _vr2)
if _vto ~= nil and ((not _vtq or _vtr <= 0) or (_vtt and _v4.isScraps(_vto))) then
_vqz = nil
_vt7 = true
else
local _vtu = buffer.create(5)
buffer.writeu32(_vtu, 0, math.floor(_vtm))
buffer.writeu8(_vtu, 4, _vtn or 1)
_vkc:FireServer(_vt9, _ei9m[986+1652], _vtu)
if _vtd then _v4.lfBiteN = (_v4.lfBiteN or 0) + 1 end
if _vto then
if _vt4 and _vt5 == _vtm and _vto < _vt4 then
_v4.noteBiteDrop(_vt4 - _vto)
end
if _vt4 and _vto >= _vt4 and _vt5 == _vtm then
_vt3 = _vt3 + 1
else
_vt3 = 0
end
_vt4 = _vto
_vt5 = _vtm
end
end
end
end
end
if _vnn then _vno(false) end
end)
local _vtv = _vt7 and not _vt8
_vt8, _vt7 = _vtv, false
if _vtv then
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
function _v4.cleanBreakEnd(_vtw, _vtx)
if not _v4.CLEAN_BREAK then return end
_v4.CLEAN_BREAK, _v4.cleanBreak = false, nil
_v4.cleanBreakNext = os.clock() + (_vtx or 0)
_v4.cleanBreakWhy = _vtw
end
task.spawn(function()
local _vty = false
local function _vtz(_vu0, _vu1)
if _vu0 == false and _v4.INF_OXYGEN then return end
if _vu0 == _vty and not _vu1 then return end
local _vu2 = _vki()
if not (_vu2 and _vkc) then return end
pcall(function() _vkc:FireServer(_vu2, _vu0 and _ei9m[146-7] or _ei9m[6+1081]) end)
_vty = _vu0
end
function _v4.myCleanliness()
local _vu3
pcall(function() _vu3 = _v4.getCS().Wellbeing.SavableStats.Cleanliness end)
if _vu3 == nil then pcall(function() _vu3 = _v4.getCS().Wellbeing.WellbeingReplica.Data.SavableStats.Stats.Cleanliness end) end
local _vu4 = _vki()
if _vu3 == nil and _vu4 then _vu3 = _v4.cleanliness[_vu4] end
if _vu3 == nil then pcall(function() _vu3 = _v4.getCS().Replica.Data.Cleanliness end) end
return type(_vu3) == _ei9m[1912] and _vu3 or nil
end
local function _vu5(_vu6)
local _vu7 = _v4.AFK_FARM or _v4.LEGIT_FARM
local _vu8 = _v2.Character
local _vu9 = _vu8 ~= nil and _vu8.Parent ~= nil
if _vu6 and _vu6 >= _v4.CLEAN_FULL then
if _v4.CLEAN_BREAK then _v4.cleanBreakEnd(_ei9m[3+944]) end
return false
end
local _vua, _vub
pcall(function()
local _vuc = _v4.getCS().Replica.Data
_vua, _vub = _vuc.Stats.Water / _vuc.MaxStats.Water, _vuc.Stats.Food / _vuc.MaxStats.Food
end)
if type(_vua) == _ei9m[2090+958] and type(_vub) == _ei9m[720+1822] then
if _v4.CLEAN_BREAK and (_vua < 0.25 or _vub < 0.25) then
_v4.cleanBreakEnd(_ei9m[856-5], 60)
return false
end
if not _v4.CLEAN_BREAK and (_vua < 0.4 or _vub < 0.4) then return false end
end
if _vu7 and _vu9 and _vu6 and _vu6 < _v4.CLEAN_AT and not _v4.CLEAN_BREAK
and os.clock() >= (_v4.cleanBreakNext or 0) then
_v4.CLEAN_BREAK = true
_v4.cleanBreak = { t = os.clock(), from = _vu6, sent = false, hp = _vu8:GetAttribute(_ei9m[2421]) }
pcall(function()
if _v4.Hub then _v4.Hub:Notify((_ei9m[107-7]):format(math.floor(_vu6)), 8) end
end)
end
local _vud = _v4.CLEAN_BREAK and _v4.cleanBreak
if not _vud then return false end
local _vue = os.clock()
local _vuf = _vu9 and _vu8:GetAttribute(_ei9m[2423+367])
if not _vud.sent and _vue - _vud.t >= 2 then
_vud.sent, _vud.lastRise, _vud.last = true, _vue, _vu6
_vtz(true, true)
end
if _vud.sent and _vu6 and _vud.last and _vu6 > _vud.last then _vud.lastRise = _vue end
if _vu6 then _vud.last = _vu6 end
_v4.lfStatus = _ei9m[491+127] .. tostring(_vu6 and math.floor(_vu6) or "?") .. "%)"
if not _vu7 or not _vu9 then
_v4.cleanBreakEnd(_ei9m[36+220])
elseif type(_vuf) == _ei9m[1917-3] and type(_vud.hp) == _ei9m[1206-10] and _vuf < _vud.hp * 0.97 then
_v4.cleanBreakEnd(_ei9m[136], 120)
elseif _vud.sent and _vue - _vud.lastRise > _v4.CLEAN_STALL then
if (_vud.kicks or 0) < 2 then
_vud.kicks, _vud.lastRise = (_vud.kicks or 0) + 1, _vue
_vtz(true, true)
else
_v4.cleanBreakEnd(_ei9m[2367-6], 120)
end
elseif _vue - _vud.t > 360 then
_v4.cleanBreakEnd(_ei9m[861+323], 120)
end
return true
end
local _vug, _vuh, _vui = 0, 0, nil
while not _v4.UNLOADED do
if _v4.INF_OXYGEN and _vkc then
_vug = _vug + 1
_vtz(true, (_vug % 5) == 0)
_vu5(_v4.myCleanliness())
elseif (_v4.AUTO_CLEAN or _v4.AFK_FARM or _v4.LEGIT_FARM) and _vkc then
local _vuj = _v4.myCleanliness()
if _vuj and _vuj >= _v4.CLEAN_FULL then
_vtz(false)
_v4.cleanRiseT = os.clock()
_vu5(_vuj)
else
_vuh = _vuh + 1
if (_vuj and _vui and _vuj > _vui) or not _v4.cleanRiseT then _v4.cleanRiseT = os.clock() end
if not _vu5(_vuj) then
_vtz(true, _vuj ~= nil and os.clock() - _v4.cleanRiseT > 40 and _vuh % 60 == 0)
end
end
_vui = _vuj
elseif _vty then
_vtz(false)
end
if _v4.CLEAN_BREAK and not (_v4.AFK_FARM or _v4.LEGIT_FARM) then _v4.cleanBreakEnd(_ei9m[19+274]) end
task.wait(1.0)
end
_v4.cleanBreakEnd(_ei9m[1200-13])
if _vty then
_v4.INF_OXYGEN = false
_vtz(false)
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
local _vuk = _v2.Character
local _vul, _vum = _vuk and _vuk:GetAttribute(_ei9m[2+960]), _vuk and _vuk:GetAttribute(_ei9m[1670])
if not (_vul and _vum) then return nil end
local _vun = _v4.mvDataCache
if not (_vun and _vun.sp == _vul) then
_vun = { sp = _vul, st = {} }
pcall(function()
for _vuo, _vup in pairs(_v4.req(_v4.WATER_RS.DinosaurData[_vul]).GrowthStages) do
local _vuq = _vup.Movement and _vup.Movement.Speeds
local _vur = _vuq and _vuq.Land
local _vus = _vuq and _vuq.Swim and tonumber(_vuq.Swim.Normal)
if _vur and tonumber(_vur.Normal) and tonumber(_vur.Run) then _vun.st[tostring(_vuo)] = { _vur.Normal, _vur.Run, _vus or _vur.Normal } end
end
end)
_v4.mvDataCache = _vun
end
local _vut = _vun.st[tostring(_vum)]
if not _vut then return nil end
local _vuu, _vuv, _vuw = _vut[1], _vut[2], _vut[3]
local _vux
pcall(function() _vux = _v4.liteGrowthOf(_vum, _vuk:GetAttribute(_ei9m[7+993]), _v4.dinoStageWeights()) end)
local _vuy = _vux and _vux.NextStage and _vun.st[_vux.NextStage]
if _vuy and _vux.Delta then
_vuu, _vuv, _vuw = _vuu + (_vuy[1] - _vuu) * _vux.Delta, _vuv + (_vuy[2] - _vuv) * _vux.Delta, _vuw + (_vuy[3] - _vuw) * _vux.Delta
end
return _vuu, _vuv, _vuw
end
function _v4.mvTrotSpeed()
local _vuz = _v2.Character
local _vv0, _vv1 = _vuz and _vuz:GetAttribute(_ei9m[6+424]), _vuz and _vuz:GetAttribute(_ei9m[1253-9])
if not (_vv0 and _vv1) then return nil end
local _vv2 = tostring(_vv0) .. "/" .. tostring(_vv1)
if _v4.mvTrotCache and _v4.mvTrotCache.key == _vv2 then return _v4.mvTrotCache.v end
local _vv3
pcall(function()
local _vv4 = _v4.req(_v4.WATER_RS.DinosaurData[_vv0]).GrowthStages[_vv1]
_vv3 = tonumber(_vv4.Movement.Speeds.Land.Trot)
end)
_v4.mvTrotCache = { key = _vv2, v = _vv3 }
return _vv3
end
_v4.mvWaterRay = RaycastParams.new()
_v4.mvWaterRay.FilterType = Enum.RaycastFilterType.Include
_v4.mvWaterRay.FilterDescendantsInstances = { workspace.Terrain }
_v4.mvWaterRay.IgnoreWater = false
function _v4.mvOverWater()
local _vv5 = os.clock()
if _v4.mvWaterT and _vv5 - _v4.mvWaterT < 0.1 then return _v4.mvWaterV end
local _vv6 = false
pcall(function()
local _vv7 = _v4.getCS and _v4.getCS()
if _vv7 and (_vv7.IsInWater == true or (_vv7.Replica and _vv7.Replica.Data and _vv7.Replica.Data.IsInWater == true)) then _vv6 = true return end
local _vv8 = _v4.getLocalPhysicsRoot()
if _vv8 then
local _vv9 = workspace:Raycast(_vv8.Position, Vector3.new(0, -3000, 0), _v4.mvWaterRay)
_vv6 = _vv9 ~= nil and _vv9.Material == Enum.Material.Water
end
end)
_v4.mvWaterT, _v4.mvWaterV = _vv5, _vv6
return _vv6
end
_v4.MV_WATER_EXTRA = 900
function _v4.mvExtend(_vva, _vvb, _vvc)
local _vvd = os.clock()
if _v4.mvOverWater() then _vva = math.min(_vva + (_vvd - _vvb), _vvc) end
return _vva, _vvd
end
_v4.mvWinFocused = true
pcall(function()
local _vve = game:GetService(_ei9m[2+2010])
table.insert(_v2l, _vve.WindowFocused:Connect(function() _v4.mvWinFocused = true end))
table.insert(_v2l, _vve.WindowFocusReleased:Connect(function() _v4.mvWinFocused = false end))
end)
function _v4.mvFocused()
if not _v4.IS_XENO then
local _vvf, _vvg = pcall(function() return isrbxactive() end)
if _vvf and type(_vvg) == _ei9m[789+161] then return _vvg end
end
return _v4.mvWinFocused
end
function _v4.mvSpeeds()
local _vvh = _v4.getCS and _v4.getCS()
local _vvi = _vvh and _vvh.Replica and _vvh.Replica.Data
local _vvj, _vvk = _vvi and tonumber(_vvi.ServerSpeed), _vvi and tonumber(_vvi.RunSpeed)
if _vvj and _vvk then
local _vvl = _vvh.Actions
if not (_vvl and (_vvl.Run or _vvl.Sprint)) then
local _vvm = tonumber(_vvi.BaseWalkSpeed) or _vvj
local _vvn = _vvl and _vvl.Trot and _v4.mvTrotSpeed()
if _vvn and _vvj <= _vvn + 0.5 then _vvm = _vvn end
_vvj = math.min(_vvj, _vvm)
end
if _v4.mvOverWater() then
local _vvo, _vvp, _vvq = _v4.mvDataSpeeds()
_vvj = math.min(_vvj, _vvq or tonumber(_vvi.BaseWalkSpeed) or _vvj)
end
return _vvj, _vvk
end
local _vvr, _vvs, _vvt = _v4.mvDataSpeeds()
if not _vvs then return 1, 1 end
local _vvu = _v4.mvShiftT and _v4.mvFocused()
local _vvv = _vvu and _vvs or _vvr
if _v4.mvOverWater() then _vvv = math.min(_vvv, _vvt or _vvr) end
return _vvv, _vvs
end
function _v4.mvSideCap(_vvw)
local _vvx, _vvy = _v4.mvSpeeds()
local _vvz, _vw0 = _vvx, os.clock()
for _vw1, _vw2 in ipairs(_v4.mvHist) do
if _vw0 - _vw2[1] <= _v4.MV_WARMUP and _vw2[2] < _vvz then _vvz = _vw2[2] end
end
return (_vvw and _v4.MV_AIR_MULT or _v4.MV_SIDE_MULT) * math.min(_vvz, _vvy) + _v4.MV_SIDE_ADD
end
function _v4.mvHold()
return os.clock() - _v4.mvSnapT < _v4.MV_SNAP_WAIT
end
function _v4.mvWantsRun()
return os.clock() - _v4.mvRunWantT < 3 or (_v4.FLY and not _v4.UNLOADED) or false
end
function _v4.govNext(_vw3, _vw4, _vw5, _vw6)
local _vw7 = os.clock()
if _v4.mvHold() then
if _vw7 - _v4.mvRunWantT < 1 then _v4.mvRunWantT = _vw7 end
local _vw8 = _v4.getLocalPhysicsRoot()
local _vw9 = (_vw8 and _vw8.Parent and _vw8.Position) or _vw3
_v4.govCommanded, _v4.govCommandT = _vw9, _vw7
return _vw9, true
end
local _vwa = _vw4 - _vw3
if _vwa.Magnitude < 0.001 then return _vw4, false end
_vw5 = math.min(_vw5 or 0.016, 0.1)
local _vwb = Vector3.new(_vwa.X, 0, _vwa.Z)
local _vwc = _vwb.Magnitude
local _vwd = math.abs(_vwa.Y) > _vwc * 0.5 + 0.05
local _vwe, _vwf = _v4.mvSideCap(_vwd), _v4.MV_VERT
if _vw6 then _vwe, _vwf = math.min(_vwe, _vw6), math.min(_vwf, _vw6) end
if _vwc > 0.05 then
_v4.mvRunWantT = _vw7
if not _vwd then _v4.mvPlatT = _vw7 end
end
local _vwg = math.min(_vwc, _vwe * _vw5, _v4.GOV_STEP_MAX)
local _vwh = math.min(_vwf * _vw5, _v4.GOV_STEP_MAX)
local _vwi = math.clamp(_vwa.Y, -_vwh, _vwh)
local _vwj = _vw3 + Vector3.new(0, _vwi, 0)
if _vwc > 0.001 then _vwj = _vwj + _vwb * (_vwg / _vwc) end
_v4.govCommanded, _v4.govCommandT = _vwj, _vw7
return _vwj, (_vwg < _vwc - 1e-4) or (_vwi ~= _vwa.Y)
end
function _v4.govGlide(_vwk, _vwl, _vwm, _vwn, _vwo, _vwp)
local _vwq = os.clock() + (_vwn or 20)
local _vwr, _vws = _vwq + _v4.MV_WATER_EXTRA, os.clock()
local _vwt = _vwo or 6
while not _v4.UNLOADED and os.clock() < _vwq do
_vwq, _vws = _v4.mvExtend(_vwq, _vws, _vwr)
if not (_vwk and _vwk.Parent) then return false end
local _vwu = _vwk.Position
if (_vwl - _vwu).Magnitude <= _vwt then return true end
local _vwv = _v4.govNext(_vwu, _vwl, 0.03, _vwm)
if not _v4.mvHold() then
pcall(function()
_vwk.CFrame = _vwp and (CFrame.new(_vwv) * _vwp) or CFrame.new(_vwv)
_vwk.AssemblyLinearVelocity = Vector3.zero
_vwk.AssemblyAngularVelocity = Vector3.zero
end)
end
task.wait(0.03)
end
return (_vwk and _vwk.Parent and (_vwl - _vwk.Position).Magnitude <= _vwt) or false
end
function _v4.mvPlatformStep()
local _vww = _v4.mvPlat
local _vwx = _v4.govCommanded
local _vwy = not _v4.UNLOADED and _vwx and os.clock() - (_v4.mvPlatT or -math.huge) < 0.3 and not _v4.mvHold()
if not _vwy then
if _vww and _vww.Parent then pcall(function() _vww.Parent = nil end) end
return
end
if not _vww then
pcall(function()
_vww = Instance.new(_ei9m[392])
_vww.Name = _ei9m[2257]
_vww.Anchored, _vww.CanCollide, _vww.CanTouch, _vww.CastShadow = true, true, false, false
_vww.Transparency = 1
_vww.Size = Vector3.new(30, 2, 30)
end)
_v4.mvPlat = _vww
if not _vww then return end
end
local _vwz = 6
pcall(function()
local _vx0 = _v4.getCS().Alignment
local _vx1 = (_vx0.RideHeight or 0) + (_vx0.BodyHeightIncrease or 0)
if _vx1 > 0 then _vwz = _vx1 end
end)
pcall(function()
local _vx2 = _v4.getLocalPhysicsRoot()
local _vx3 = math.max(30, _vx2 and _vx2.Size.Z * 2 or 0, _vx2 and _vx2.Size.X * 2 or 0)
if _vww.Size.X ~= _vx3 then _vww.Size = Vector3.new(_vx3, 2, _vx3) end
_vww.CFrame = CFrame.new(_vwx.X, _vwx.Y - _vwz - 1, _vwx.Z)
if _vww.Parent ~= workspace then _vww.Parent = workspace end
end)
end
function _v4.mvCleanup()
pcall(function() _v4.mvRunStep(false) end)
if _v4.mvPlat then pcall(function() _v4.mvPlat:Destroy() end) end
_v4.mvPlat = nil
end
function _v4.mvOnSnap()
local _vx4 = os.clock()
if _vx4 - _v4.mvSnapT < 1 then return end
_v4.mvSnapT = _vx4
pcall(function()
local _vx5 = _v2.Character
if _vx5 then _vx5:SetAttribute(_ei9m[563+87], nil) end
end)
if _vx4 - (_v4.govCommandT or 0) > 2 then return end
local _vx6 = {}
for _vx7, _vx8 in ipairs(_v4.mvSnaps) do if _vx4 - _vx8 < _v4.MV_TRIP_WINDOW then _vx6[#_vx6 + 1] = _vx8 end end
_vx6[#_vx6 + 1] = _vx4
_v4.mvSnaps = _vx6
_v4.mvNotice = { n = #_vx6, trip = #_vx6 >= _v4.MV_TRIP_N }
end
do
local function _vx9(_vxa)
if not _vxa then return end
local _vxb = _vxa:GetAttribute(_ei9m[749+511])
table.insert(_v2l, _vxa:GetAttributeChangedSignal(_ei9m[2644]):Connect(function()
local _vxc = _vxa:GetAttribute(_ei9m[2179])
if _vxc ~= nil and _vxc ~= _vxb then _vxb = _vxc; _v4.mvOnSnap() end
end))
end
_vx9(_v2.Character)
table.insert(_v2l, _v2.CharacterAdded:Connect(_vx9))
task.spawn(function()
local _vxd
pcall(function() _vxd = _v4.req(_v4.WATER_RS.Packages.Knit).GetService(_ei9m[3+1828]) end)
if _vxd and _vxd.Teleport then
pcall(function() table.insert(_v2l, _vxd.Teleport:Connect(function() _v4.mvOnSnap() end)) end)
end
end)
end
function _v4.mvTrip()
_v4.mvSnaps = {}
for _vxe, _vxf in ipairs({ _v4.fossilFarmToggle, _v4.afkFarmToggle, _v4.legitFarmToggle, _v4.flyToggle }) do
if _vxf then pcall(function() _vxf:Set(false) end) end
end
_v4.FOSSIL_FARM, _v4.AFK_FARM, _v4.LEGIT_FARM, _v4.FLY, _v4.AUTO_FLY = false, false, false, false, false
end
function _v4.mvRunStep(_vxg)
local _vxh = _v4.getCS and _v4.getCS()
local _vxi = _vxh and _vxh.Controls
if _vxi then
if _vxg then
if not _v4.mvFocused() then
_v4.mvUnblocked = true
if _vxi.WindowUnfocused ~= false then pcall(function() _vxi.WindowUnfocused = false end) end
end
if _vxi.InputWasBlocked == true then
local _vxj = false
pcall(function() _vxj = game:GetService(_ei9m[2+3010]):GetFocusedTextBox() ~= nil end)
if not _vxj then pcall(function() _vxi.InputWasBlocked = false end) end
end
local _vxk = 1
pcall(function()
local _vxl = _vxh.Replica.Data
if _vxl.MaxStats.Stamina > 0 then _vxk = _vxl.Stats.Stamina / _vxl.MaxStats.Stamina end
end)
if _v4.mvTrotting then
if _vxk >= _v4.MV_RUN_ABOVE then _v4.mvTrotting = nil end
elseif _vxk < _v4.MV_TROT_BELOW then
_v4.mvTrotting = true
end
if _v4.mvTrotting then
if (_vxh.Actions and _vxh.Actions.Run) == true then pcall(function() _vxi:HandleAction(_ei9m[2763], false) end) end
if (_vxh.Actions and _vxh.Actions.Trot) ~= true then pcall(function() _vxi:HandleAction(_ei9m[233+9], true) end) end
_v4.mvTrotHeld = true
else
if _v4.mvTrotHeld then
_v4.mvTrotHeld = nil
if (_vxh.Actions and _vxh.Actions.Trot) == true and _v4.gaitHeld ~= _ei9m[2911] then
pcall(function() _vxi:HandleAction(_ei9m[4+1108], false) end)
end
end
if (_vxh.Actions and _vxh.Actions.Run) ~= true then pcall(function() _vxi:HandleAction(_ei9m[2696+341], true) end) end
end
_v4.mvRunHeld = true
elseif _v4.mvRunHeld then
_v4.mvRunHeld = nil
local _vxm = (_v4.lfHeld and _v4.lfHeld.Run) or _v4.gaitHeld == _ei9m[377+746] or _v4.gaitHeld == _ei9m[2+322]
if not _vxm then pcall(function() _vxi:HandleAction(_ei9m[2823-16], false) end) end
if _v4.mvTrotHeld then
_v4.mvTrotHeld = nil
if _v4.gaitHeld ~= _ei9m[5+262] then pcall(function() _vxi:HandleAction(_ei9m[2260], false) end) end
end
if _v4.mvUnblocked then
_v4.mvUnblocked = nil
if not (_v4.LEGIT_FARM and _v4.LF_TABOUT) then pcall(function() _vxi.WindowUnfocused = not _v4.mvFocused() end) end
end
end
elseif _v4.VIM then
local _vxn = _vxg and not _v4.FLY
if _vxn and not _v4.mvShiftT then
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.LeftShift, false, game) end)
_v4.mvShiftT = os.clock()
elseif not _vxn and _v4.mvShiftT then
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
local _vxo = os.clock()
local _vxp = _v4.mvHist
local _vxq = _v4.mvSpeeds()
if #_vxp == 0 or _vxo - _vxp[#_vxp][1] >= 0.05 or _vxq < _vxp[#_vxp][2] then _vxp[#_vxp + 1] = { _vxo, _vxq } end
while #_vxp > 1 and _vxo - _vxp[1][1] > _v4.MV_WARMUP + 0.25 do table.remove(_vxp, 1) end
_v4.mvRunStep(_v4.mvWantsRun())
_v4.mvPlatformStep()
end)
_v4.addStep(10, function()
local _vxr = _v4.mvNotice
if not _vxr then return end
_v4.mvNotice = nil
if _vxr.trip then _v4.mvTrip() end
pcall(function()
if _v4.Hub then
_v4.Hub:Notify(_vxr.trip
and (_ei9m[757] .. _vxr.n .. _ei9m[633])
or _ei9m[2+2285], 6)
end
end)
end)
do
local _vxs = game:GetService(_ei9m[2000-16])
local function _vxt()
local _vxu = _v2.Character
if not _vxu then return nil end
return _vxu:FindFirstChild(_ei9m[857-11]) or _vxu:FindFirstChild(_ei9m[4+2003])
or _vxu:FindFirstChildWhichIsA(_ei9m[2734-20])
end
local function _vxv(_vxw)
local _vxx = _v2.Character
if _vxx then pcall(function() _vxx:SetAttribute(_ei9m[779+601], _vxw or nil) end) end
end
local _vxy, _vxz, _vy0 = false, nil, nil
local function _vy1(_vy2)
if _v4.UNLOADED then return end
if not _v4.FLY then
if _vxy then
_vxy = false; _vxz = nil; _vy0 = nil; _vxv(false)
_v4.flyLandUntil = os.clock() + 10
local _vy3 = _v2.Character
if _vy3 and _vy3:GetAttribute(_ei9m[7+160]) ~= true then
pcall(function() _vy3:SetAttribute(_ei9m[2720], true) end)
task.delay(10.2, function()
if os.clock() >= (_v4.flyLandUntil or 0) and not _v4.NO_FALL_DAMAGE then
local _vy4 = _v2.Character
if _vy4 == _vy3 then pcall(function() _vy4:SetAttribute(_ei9m[86+1003], nil) end) end
end
end)
end
end
return
end
local _vy5 = _vxt()
local _vy6 = workspace.CurrentCamera
if not _vy5 or not _vy6 or _vy5.Anchored then return end
if not _vxy then _vxy = true; _vxz = _vy5.Position end
local _vy7 = Vector3.zero
local _vy8, _vy9 = _vy6.CFrame.LookVector, _vy6.CFrame.RightVector
if _vxs:IsKeyDown(Enum.KeyCode.W) or _v4.mob.fwd then _vy7 = _vy7 + _vy8 end
if _vxs:IsKeyDown(Enum.KeyCode.S) or _v4.mob.back then _vy7 = _vy7 - _vy8 end
if _vxs:IsKeyDown(Enum.KeyCode.D) or _v4.mob.right then _vy7 = _vy7 + _vy9 end
if _vxs:IsKeyDown(Enum.KeyCode.A) or _v4.mob.left then _vy7 = _vy7 - _vy9 end
if _vxs:IsKeyDown(Enum.KeyCode.Space) or _v4.mob.up then _vy7 = _vy7 + Vector3.yAxis end
if _vxs:IsKeyDown(Enum.KeyCode.LeftControl) or _vxs:IsKeyDown(Enum.KeyCode.LeftShift)
or _v4.mob.down then
_vy7 = _vy7 - Vector3.yAxis
end
_vy7 = (_vy7.Magnitude > 0.05) and _vy7.Unit or Vector3.zero
local _vya = _vxz or _vy5.Position
local _vyb = math.min(_vy2 or 0.016, 0.1)
local _vyc = Vector3.new(_vy7.X, 0, _vy7.Z).Magnitude
local _vyd = Vector3.zero
if _vyc > 0.05 then
_vyd = _vy7 * (_v4.mvSideCap() / _vyc) * _vyb
elseif _vy7.Y ~= 0 then
_vyd = Vector3.new(0, _vy7.Y * _v4.MV_VERT * _vyb, 0)
end
_vxz = _v4.govNext(_vya, _vya + _vyd, _vy2)
_vxv(_vxz.Y)
local _vye = Vector3.new(_vy7.X, 0, _vy7.Z)
if _vye.Magnitude > 0.05 then
_vy0 = CFrame.lookAt(_vxz, _vxz + _vye.Unit)
else
_vy0 = CFrame.new(_vxz) * (_vy5.CFrame - _vy5.CFrame.Position)
end
pcall(function()
_vy5.CFrame = _vy0
_vy5.AssemblyLinearVelocity = Vector3.zero
_vy5.AssemblyAngularVelocity = Vector3.zero
end)
end
local function _vyf()
if _v4.UNLOADED or not _v4.FLY or not _vy0 or _v4.mvHold() then return end
local _vyg = _vxt()
if _vyg and not _vyg.Anchored then
pcall(function()
_vyg.CFrame = _vy0
_vyg.AssemblyLinearVelocity = Vector3.zero
_vyg.AssemblyAngularVelocity = Vector3.zero
end)
end
end
table.insert(_v2l, _v1.RenderStepped:Connect(_vy1))
table.insert(_v2l, _v1.Heartbeat:Connect(_vyf))
end
function _v4.afGroundY(_vyh)
local _vyi = RaycastParams.new()
_vyi.FilterType = Enum.RaycastFilterType.Include
local _vyj = { workspace.Terrain }
pcall(function() local _vyk = workspace.World:FindFirstChild(_ei9m[3+2069]); if _vyk then _vyj[2] = _vyk end end)
_vyi.FilterDescendantsInstances = _vyj
_vyi.IgnoreWater = false
local _vyl = workspace:Raycast(_vyh + Vector3.new(0, 1500, 0), Vector3.new(0, -5000, 0), _vyi)
return _vyl and _vyl.Position.Y or nil
end
function _v4.afAdvance(_vym)
if _v4.UNLOADED then return end
if not _v4.AUTO_FLY or _v4.FLY then
if _v4.afWasOn then
_v4.afWasOn = false
_v4.afCF, _v4.afPos = nil, nil
local _vyn = _v2.Character
if _vyn then pcall(function() _vyn:SetAttribute(_ei9m[7+1512], nil) end) end
_v4.flyLandUntil = os.clock() + 10
local _vyo = _v4.getLocalPhysicsRoot()
if _vyo and not _v4.UNLOADED and _v4.flyTo then
task.spawn(function()
pcall(_v4.flyTo, _vyo.Position, function()
return not (_v4.AUTO_FLY or _v4.FLY or _v4.AFK_FARM or _v4.LEGIT_FARM or _v4.FOSSIL_FARM
or _v4.SAVE_DINO_ACTIVE or _v4.BIOME_TRAVEL or _v4.TP_CORPSE or _v4.UNLOADED)
end, 0)
end)
end
end
return
end
local _vyp = _v4.getLocalPhysicsRoot()
if not _vyp or _vyp.Anchored then return end
_vym = math.min(_vym or 0.016, 0.1)
local _vyq = _v2.Character
if _v4.afWasOn and _v4.afChar ~= _vyq then _v4.afWasOn = false end
local _vyr = math.max(_v4.AUTO_FLY_RADIUS or 1000, 100)
if not _v4.afWasOn then
_v4.afWasOn = true
_v4.afChar = _vyq
_v4.afPos = _vyp.Position
_v4.afGroundCache = _v4.afGroundY(_vyp.Position)
local _vys = math.random() * math.pi * 2
_v4.afDriftDir = Vector3.new(math.cos(_vys), 0, math.sin(_vys))
_v4.afAngle = _vys
_v4.afCentre = _vyp.Position - Vector3.new(math.cos(_vys) * _vyr, 0, math.sin(_vys) * _vyr)
end
_v4.afSpin = _v4.afSpin or 1
local _vyt = math.min(_v4.AUTO_FLY_SPEED or 25, _v4.mvSideCap())
local _vyu = _v4.afPos - _v4.afCentre
_v4.afAngle = (math.atan2(_vyu.Z, _vyu.X) + _v4.afSpin * (_vyt / _vyr) * math.max(_vym, 0.05) * 2) % (math.pi * 2)
_v4.afProbeT = (_v4.afProbeT or 0) + _vym
local _vyv = _v4.afProbeT >= 0.2
if _vyv then _v4.afProbeT = 0 end
local _vyw = _v4.afCentre + _v4.afDriftDir * ((_v4.AUTO_FLY_DRIFT or 10) * _vym)
if (not _vyv) or not (_v4.wallCross and _v4.wallCross(_vyw, _vyw + _v4.afDriftDir * _vyr)) then
_v4.afCentre = _vyw
else
local _vyx = (math.random() - 0.5) * 1.2
local _vyy = -_v4.afDriftDir
_v4.afDriftDir = Vector3.new(
_vyy.X * math.cos(_vyx) - _vyy.Z * math.sin(_vyx), 0,
_vyy.X * math.sin(_vyx) + _vyy.Z * math.cos(_vyx))
end
local _vyz = _v4.afCentre + Vector3.new(math.cos(_v4.afAngle) * _vyr, 0, math.sin(_v4.afAngle) * _vyr)
if _vyv then
local _vz0 = Vector3.new(_vyz.X - _v4.afPos.X, 0, _vyz.Z - _v4.afPos.Z)
local _vz1 = _v4.afGroundY(_v4.afPos)
local _vz2 = _vz0.Magnitude > 0.1 and _v4.afGroundY(_v4.afPos + _vz0.Unit * 60) or nil
_v4.afGroundCache = (_vz1 and _vz2) and math.max(_vz1, _vz2) or _vz1 or _vz2
if _v4.trackWalls then pcall(_v4.trackWalls) end
local _vz3 = Vector3.new(_vyz.X, _v4.afPos.Y, _vyz.Z)
if (_v4.wallCross and _v4.wallCross(_v4.afPos, _vz3)) or (_v4.wallNear and _v4.wallNear(_vz3, 150)) then
if os.clock() - (_v4.afTurnT or 0) > 5 then
_v4.afTurnT = os.clock()
_v4.afSpin = -_v4.afSpin
_v4.afDriftDir = Vector3.new((_v4.afCentre - _vyz).X, 0, (_v4.afCentre - _vyz).Z).Unit
end
end
end
local _vz4 = _v4.afGroundCache
local _vz5 = _vz4 and (_vz4 + math.min(_v4.AUTO_FLY_ALT or 150, 150)) or _v4.afPos.Y
local _vz6 = math.clamp(_vz5 - _v4.afPos.Y, -60 * _vym, 60 * _vym)
_v4.afPos = _v4.govNext(_v4.afPos, Vector3.new(_vyz.X, _v4.afPos.Y + _vz6, _vyz.Z), _vym,
(_v4.AUTO_FLY_SPEED or 25) + 60)
if _vz4 and _v4.afPos.Y < _vz4 + 10 then _v4.afPos = Vector3.new(_v4.afPos.X, _vz4 + 10, _v4.afPos.Z) end
if _vyq then pcall(function() _vyq:SetAttribute(_ei9m[1301+1445], _v4.afPos.Y) end) end
local _vz7 = Vector3.new(-math.sin(_v4.afAngle), 0, math.cos(_v4.afAngle)) * (_v4.afSpin or 1)
_v4.afCF = CFrame.lookAt(_v4.afPos, _v4.afPos + _vz7)
pcall(function()
_vyp.CFrame = _v4.afCF
_vyp.AssemblyLinearVelocity = Vector3.zero
_vyp.AssemblyAngularVelocity = Vector3.zero
end)
end
function _v4.afPin()
if _v4.UNLOADED or not _v4.AUTO_FLY or _v4.FLY or not _v4.afCF or _v4.mvHold() then return end
local _vz8 = _v4.getLocalPhysicsRoot()
if _vz8 and not _vz8.Anchored then
pcall(function()
_vz8.CFrame = _v4.afCF
_vz8.AssemblyLinearVelocity = Vector3.zero
_vz8.AssemblyAngularVelocity = Vector3.zero
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
local _vz9 = 150
local _vza = 0.3
local _vzb = 1.5
local _vzc = 5
local _vzd = 2
local _vze = 0.5
local _vzf = 30
local _vzg = 22
local _vzh = RaycastParams.new()
_vzh.FilterType = Enum.RaycastFilterType.Include
_vzh.FilterDescendantsInstances = { workspace.Terrain }
local function _vzi(_vzj)
local _vzk = workspace:FindFirstChild(_ei9m[119+1435])
local _vzl = _vzk and _vzk:FindFirstChild(_ei9m[1024])
if _vzl ~= _v4.afkMountains then
_v4.afkMountains = _vzl
_vzh.FilterDescendantsInstances = _vzl and { workspace.Terrain, _vzl } or { workspace.Terrain }
end
local _vzm = workspace:Raycast(Vector3.new(_vzj.X, _vzj.Y + 2500, _vzj.Z), Vector3.new(0, -5000, 0), _vzh)
return _vzm and _vzm.Position.Y
end
local function _vzn()
local _vzo
pcall(function()
local _vzp = _v4.getCS().Alignment
_vzo = (_vzp.RideHeight or 0) + (_vzp.BodyHeightIncrease or 0)
end)
if type(_vzo) ~= _ei9m[1763+292] or _vzo <= 0 then _vzo = 6 end
return _vzo
end
local function _vzq(_vzr, _vzs)
if _vzr then pcall(function() _vzr:SetAttribute(_ei9m[982-13], _vzs) end) end
end
local function _vzt()
if _v4.afkColliders then
for _vzu in pairs(_v4.afkColliders) do
if _vzu.Parent then pcall(function() _vzu.CanCollide = true end) end
end
end
_v4.afkColliders, _v4.afkCollidersChar = nil, nil
end
local function _vzv(_vzw)
if not _vzw then return end
if _v4.afkCollidersChar ~= _vzw then
_vzt()
local _vzx = {}
for _vzy, _vzz in ipairs(_vzw:GetDescendants()) do
if _vzz:IsA(_ei9m[1597-2]) and _vzz.CanCollide then _vzx[_vzz] = true end
end
for _v100, _v101 in ipairs({ _ei9m[3+393], _ei9m[2420+77] }) do
local _v102 = _vzw:FindFirstChild(_v101)
if _v102 and _v102:IsA(_ei9m[111+656]) then _vzx[_v102] = true end
end
_v4.afkColliders, _v4.afkCollidersChar = _vzx, _vzw
end
for _v103 in pairs(_v4.afkColliders) do
if _v103.CanCollide then _v103.CanCollide = false end
end
end
local function _v104(_v105, _v106)
local _v107 = Vector3.new(_v105.X, 0, _v105.Z)
if _v107.Magnitude < 0.1 then return _v106 or Vector3.new(0, 0, 1) end
return _v107.Unit
end
function _v4.afkLift(_v108)
local _v109 = _vzi(_v108)
local _v10a = _v109 and (_v109 + _vzn())
if _v10a and _v108.Y < _v10a then return Vector3.new(_v108.X, _v10a, _v108.Z) end
return _v108
end
local function _v10b(_v10c, _v10d)
local _v10e = _v10d.Position
local _v10f = _v4.afkLift(_v10e)
if _v10f ~= _v10e then
_v10d = CFrame.new(_v10f) * _v10d.Rotation
_v4.afkPos, _v4.afkCF = _v10f, _v10d
end
pcall(function()
_v10c.CFrame = _v10d
_v10c.AssemblyLinearVelocity = Vector3.zero
_v10c.AssemblyAngularVelocity = Vector3.zero
end)
end
_v4.afkGiveUps = _v4.afkGiveUps or {}
function _v4.afkGuard(_v10g, _v10h)
if _v4.wallCross and _v4.wallCross(_v10g, _v10h) then return Vector3.new(_v10g.X, _v10h.Y, _v10g.Z), true end
return _v10h, false
end
local function _v10i(_v10j, _v10k)
local _v10l = _v4.afkTarget
if _v10j and _v10l and _v10l.id then
local _v10m = (_v4.afkGiveUps[_v10l.id] or 0) + 1
_v4.afkGiveUps[_v10l.id] = _v10m
_v10k = _v10k or _vzf
if _v10m >= 2 then _v10k = math.max(_v10k, 1800) end
_v4.afkExclude[_v10l.id] = os.clock() + _v10k
end
_v4.afkTarget = nil
_v4.afkLastScan = 0
_v4.afkStuckPos = nil
end
function _v4.afkDrinkStep(_v10n, _v10o, _v10p, _v10q, _v10r, _v10s)
local _v10t, _v10u = _v4.myWater()
local _v10v = (_v10t and _v10u and _v10u > 0) and _v10t / _v10u or 1
local _v10w = _v4.afkDrink
if not _v10w then
if _v10v > (_v4.DRINK_AT or 0.4) or _v10r < (_v4.afkDrinkRetry or 0) then return false end
if _v4.WATER_ANYWHERE and _v10v >= 0.25 then return false end
local _v10x = _v4.drinkSpot
if not _v10x or _v10r - _v10x.t > 20 or (_v10x.from - _v10o).Magnitude > 200 then
_v4.drinkFind(_v10o, _v4.DRINK_SEARCH or 1500, _v4.AFK_FARM_AVOID or 200)
return false
end
_v4.drinkSpot = nil
if not _v10x.stand then _v4.afkDrinkRetry = _v10r + 45 return false end
_v10w = { stand = _v10x.stand, water = _v10x.water, deadline = _v10r + (_v10x.stand - _v10o).Magnitude / _v10s * 2 + 40 }
_v4.afkDrink = _v10w
_v4.afkTarget = nil
end
if _v10v >= 0.99 then _v4.afkDrink = nil return false end
local _v10y = _v4.headOverWater()
if _v10r > _v10w.deadline and not _v10y then
_v4.drinkBad[_v4.drinkCell(_v10w.stand)] = true
_v4.afkDrink, _v4.afkDrinkRetry = nil, _v10r + 5
return false
end
local _v10z = _vzn()
if _v10y then
_v10w.drinkT = _v10w.drinkT or _v10r
if not _v10w.lastW or _v10t > _v10w.lastW + 0.001 then _v10w.lastW, _v10w.gainT = _v10t, _v10r end
if _v10r - math.max(_v10w.drinkT, _v10w.gainT or 0) > 15 then
_v4.drinkBad[_v4.drinkCell(_v10w.stand)] = true
_v4.afkDrink, _v4.afkDrinkRetry = nil, _v10r + 5
return false
end
else
_v10w.drinkT = nil
local _v110 = _v10w.reached and _v10w.water or _v10w.stand
local _v111 = Vector3.new(_v110.X - _v4.afkPos.X, 0, _v110.Z - _v4.afkPos.Z)
if not _v10w.reached and _v111.Magnitude < 4 then _v10w.reached = true end
if _v10w.reached and _v111.Magnitude < 2 then
_v4.drinkBad[_v4.drinkCell(_v10w.stand)] = true
_v4.afkDrink, _v4.afkDrinkRetry = nil, _v10r + 5
return false
end
local _v112 = math.max(_vzi(_v4.afkPos) or -math.huge, _v10w.reached and _v10w.water.Y or -math.huge)
local _v113 = (_v112 > -math.huge and _v112 or (_v10w.stand.Y)) + _v10z
local _v114
_v4.afkPos, _v114 = _v4.afkGuard(_v4.afkPos, _v4.govNext(_v4.afkPos, Vector3.new(_v110.X, _v113, _v110.Z), _v10q,
_v10w.reached and 8 or nil))
if _v114 then
_v4.afkDrink, _v4.afkDrinkRetry = nil, _v10r + 30
return false
end
_v4.afkCF = CFrame.lookAt(_v4.afkPos, _v4.afkPos + _v104(_v10w.water - _v4.afkPos, _v4.afkCF and _v4.afkCF.LookVector))
end
_v10b(_v10n, _v4.afkCF)
_vzq(_v10p, _v4.afkPos.Y)
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
local function _v115()
_v4.afkWasOn = false
_v4.afkCF, _v4.afkPos, _v4.afkTarget, _v4.afkDrink = nil, nil, nil, nil
_v4.afkStopWalk()
if _v4.afkSafetyState then
if _v4.afkSafetyState == _ei9m[7+1831] then
_v4.pressRest()
end
if _v4.afkSafetyPlatform then pcall(function() _v4.afkSafetyPlatform:Destroy() end); _v4.afkSafetyPlatform = nil end
local _v116 = _v4.getLocalPhysicsRoot()
if _v116 then pcall(function() _v116.Anchored = false end) end
_v4.afkSafetyState = nil
end
_vzt()
local _v117 = _v2.Character
if _v117 then pcall(function() _v117:SetAttribute(_ei9m[431], nil) end) end
_v4.flyLandUntil = os.clock() + 10
end
function _v4.afkFarmAdvance(_v118)
if _v4.UNLOADED then return end
if not _v4.AFK_FARM or _v4.FLY or _v4.AUTO_FLY or _v4.SAVE_DINO_ACTIVE or _v4.AS_BUSY or _v4.CLEAN_BREAK then
if _v4.afkWasOn then _v115() end
return
end
local _v119 = _v4.getLocalPhysicsRoot()
if not _v119 then return end
if _v119.Anchored and not _v4.afkSafetyState then return end
_v118 = math.min(_v118 or 0.016, 0.1)
local _v11a = _v2.Character
if _v4.afkWasOn and _v4.afkChar ~= _v11a then _v4.afkWasOn = false end
if not _v4.afkWasOn then
_v4.afkWasOn = true
_v4.afkChar = _v11a
_v4.afkPos = _v119.Position
_v4.afkCF = CFrame.lookAt(_v119.Position, _v119.Position + _v104(_v119.CFrame.LookVector))
_v4.afkTarget = nil
_v4.afkLastScan = 0
if _v4.trackWalls then pcall(_v4.trackWalls) end
end
if (_v119.Position - _v4.afkPos).Magnitude > 50 then
_v4.afkPos = _v119.Position
end
_vzv(_v11a)
if _v4.afkSafetyState or (_v4.afkDrink and _v4.afkDrink.drinkT) then
_v4.afkStopWalk()
elseif _v4.AFK_FARM_WALK then _v4.afkStartWalk() else _v4.afkStopWalk() end
local _v11b = os.clock()
local _v11c = _v119.Position
local _v11d = math.max(_v4.mvSideCap(), 2)
if _v4.AFK_FARM_SAFETY then
local _v11e, _v11f
pcall(function() _v11e = _v11a:GetAttribute(_ei9m[776-16]); _v11f = _v11a:GetAttribute(_ei9m[817-19]) end)
if type(_v11e) == _ei9m[365+909] and type(_v11f) == _ei9m[5+2499] and _v11f > 0 then
local _v11g = _v11e / _v11f
local _v11h = _v4.tookDamage(_v11a, _v11e)
if not _v4.afkSafetyState and (_v11g < 0.5 or (_v11h and _v11g < 0.99)) then
pcall(function()
if _v4.Hub then _v4.Hub:Notify((_ei9m[2+132]):format(math.floor(_v11g * 100)), 8) end
end)
_v4.afkSafetyState = _ei9m[1158-3]
_v4.afkSafetyReturn = _v11c
local _v11i = _vzi(_v11c) or _v11c.Y
local _v11j = math.max(_v11i + _vzn(), _v11c.Y) + _vz9
_v4.afkSafetyDest = Vector3.new(_v11c.X, _v11j, _v11c.Z)
_v4.afkTarget = nil
end
if _v4.afkSafetyState == _ei9m[2425-2] and _v11g >= 0.99 then
_v4.afkSafetyState = _ei9m[7+39]
_v4.afkSafetyT = _v11b
_v4.pressRest()
if _v4.afkSafetyPlatform then pcall(function() _v4.afkSafetyPlatform:Destroy() end); _v4.afkSafetyPlatform = nil end
pcall(function() _v119.Anchored = false end)
end
end
elseif _v4.afkSafetyState then
if _v4.afkSafetyState == _ei9m[5+1095] then
_v4.pressRest()
end
if _v4.afkSafetyPlatform then pcall(function() _v4.afkSafetyPlatform:Destroy() end); _v4.afkSafetyPlatform = nil end
pcall(function() _v119.Anchored = false end)
_v4.afkSafetyState = nil
end
if _v4.afkSafetyState then
if _v4.afkSafetyState == _ei9m[85+460] then
_v4.afkPos = _v4.govNext(_v4.afkPos, _v4.afkSafetyDest, _v118)
_v4.afkCF = CFrame.new(_v4.afkPos) * _v4.afkCF.Rotation
_v10b(_v119, _v4.afkCF)
_vzq(_v11a, _v4.afkPos.Y)
if (_v4.afkPos - _v4.afkSafetyDest).Magnitude < 5 then
_v4.afkSafetyState = _ei9m[2110+907]
_v4.afkSafetyT = _v11b
pcall(function()
local _v11k = Instance.new(_ei9m[82+454])
_v11k.Size = Vector3.new(80, 4, 80)
_v11k.Position = _v4.afkPos - Vector3.new(0, 6, 0)
_v11k.Anchored = true
_v11k.Transparency = 1
_v11k.CanCollide = true
_v11k.CanQuery = false
_v11k.Parent = workspace
_v4.afkSafetyPlatform = _v11k
end)
end
elseif _v4.afkSafetyState == _ei9m[7+1281] then
_v10b(_v119, _v4.afkCF)
if _v11b - _v4.afkSafetyT >= _vza then
pcall(function() _v119.Anchored = true end)
pcall(function() _v11a:SetAttribute(_ei9m[7+2150], nil) end)
_v4.pressRest()
_v4.afkSafetyState = _ei9m[13+13]
_v4.afkSafetyT = _v11b
end
elseif _v4.afkSafetyState == _ei9m[1869] then
_v10b(_v119, _v4.afkCF)
elseif _v4.afkSafetyState == _ei9m[1300] then
local _v11l = _v4.afkSafetyReturn
or Vector3.new(_v4.afkPos.X, (_vzi(_v4.afkPos) or (_v4.afkPos.Y - _vz9)) + _vzn(), _v4.afkPos.Z)
_v4.afkPos = _v4.govNext(_v4.afkPos, _v11l, _v118)
_v4.afkCF = CFrame.new(_v4.afkPos) * _v4.afkCF.Rotation
_v10b(_v119, _v4.afkCF)
_vzq(_v11a, _v4.afkPos.Y)
if (_v4.afkPos - _v11l).Magnitude < 10 then
_v4.afkSafetyState = nil
_v4.afkSafetyReturn = nil
_v4.afkTarget = nil
_v4.afkLastScan = 0
end
end
return
end
if _v4.AFK_FARM_FLEE then
local _v11m = _v4.AFK_FARM_AVOID or 200
local _v11n, _v11o
if _v11m > 0 then
for _v11p, _v11q in ipairs(game.Players:GetPlayers()) do
if _v11q ~= _v2 and _v11q.Character then
local _v11r = _v4.getRootOf(_v11q.Character, false)
if _v11r then
local _v11s = (_v11r.Position - _v11c).Magnitude
if not _v11o or _v11s < _v11o then _v11n, _v11o = _v11r.Position, _v11s end
end
end
end
end
if _v11n and (_v11o <= _v11m or (_v4.afkFleeing and _v11o <= _v11m * 1.5)) then
_v4.afkFleeing = true
_v4.afkTarget = nil
local _v11t = _v104(_v11c - _v11n, _v104(_v4.afkCF and _v4.afkCF.LookVector))
if _v4.wallCross and _v4.wallCross(_v11c, _v11c + _v11t * 120) then
local _v11u, _v11v = Vector3.new(-_v11t.Z, 0, _v11t.X), Vector3.new(_v11t.Z, 0, -_v11t.X)
_v11t = (not _v4.wallCross(_v11c, _v11c + _v11u * 120) and _v11u)
or (not _v4.wallCross(_v11c, _v11c + _v11v * 120) and _v11v) or -_v11t
end
local _v11w = math.max(_v4.afkPos.Y, math.max(_vzi(_v11c) or _v11c.Y,
_vzi(_v11c + _v11t * 40) or -math.huge) + _vzn())
local _v11x = Vector3.new(_v11c.X + _v11t.X * 300, _v11w, _v11c.Z + _v11t.Z * 300)
_v4.afkPos = _v4.afkGuard(_v4.afkPos, _v4.govNext(_v4.afkPos, _v11x, _v118))
_v4.afkCF = CFrame.lookAt(_v4.afkPos, _v4.afkPos + _v11t)
_v10b(_v119, _v4.afkCF)
_vzq(_v11a, _v4.afkPos.Y)
return
end
_v4.afkFleeing = false
end
if _v4.afkDrinkStep(_v119, _v11c, _v11a, _v118, _v11b, _v11d) then return end
if not _v4.afkTarget and _v4.afkPickFood and _v11b - _v4.afkLastScan >= _vzb then
_v4.afkLastScan = _v11b
for _v11y, _v11z in pairs(_v4.afkExclude) do
if _v11z <= _v11b then _v4.afkExclude[_v11y] = nil end
end
local id, idx, pos, isMeat = _v4.afkPickFood(_v11c, _v4.afkExclude, {
avoid = _v4.AFK_FARM_AVOID or 200, meat = _v4.dinoEatsMeat(),
reach = function(_v120) local _v121 = _vzi(_v120) return not _v121 or _v121 - _v120.Y <= 25 end,
})
if id and pos then
_v4.afkTarget = { id = id, idx = idx, pos = pos, isMeat = isMeat, groundY = _vzi(pos), misses = 0,
deadline = _v11b + (pos - _v11c).Magnitude / _v11d * 2 + 10 }
end
end
local _v122 = _v4.afkTarget
if not _v122 then
_v4.afkStuckPos = nil
_vzq(_v11a, _v4.afkPos.Y)
return
end
local _v123 = _vzg
pcall(function() if _v4.khRange then _v123 = _v4.khRange() end end)
local _v124 = _vzn()
local _v125 = _v122.creep and _v122.pos.Y or (_v122.pos.Y - _v123 * _vze)
local _v126 = math.max(_v125, (_v122.groundY or -math.huge) + _v124)
local _v127 = Vector3.new(_v122.pos.X, _v126, _v122.pos.Z)
if not _v122.holding and not _v122.creep and (_v122.pos - _v4.afkPos).Magnitude <= _v123 * _vze then
_v122.holding = true
end
if not _v122.holding then
local _v128 = _v4.afkPos + _v104(_v127 - _v4.afkPos, _v104(_v4.afkCF.LookVector)) * 40
local _v129 = math.max(_vzi(_v4.afkPos) or -math.huge, _vzi(_v128) or -math.huge) + _v124
local _v12a
_v4.afkPos, _v12a = _v4.afkGuard(_v4.afkPos, _v4.govNext(_v4.afkPos, Vector3.new(_v127.X, math.max(_v127.Y, _v129), _v127.Z), _v118))
if _v12a then _v10i(true) return end
if _v4.AFK_FARM_UNSTUCK and (_v122.pos - _v11c).Magnitude > _v123 then
if not _v4.afkStuckPos or (_v11c - _v4.afkStuckPos).Magnitude > 4 then
_v4.afkStuckPos, _v4.afkStuckT = _v11c, _v11b
elseif _v11b - (_v4.afkStuckT or _v11b) > 2.5 then
_v4.afkStuckPos, _v4.afkStuckT = nil, nil
local _v12b = math.random() * math.pi * 2
_v4.afkPos = _v4.afkGuard(_v11c, _v11c + Vector3.new(math.cos(_v12b) * 30, 45, math.sin(_v12b) * 30))
_v4.afkCF = CFrame.lookAt(_v4.afkPos, _v4.afkPos + Vector3.new(math.cos(_v12b), 0, math.sin(_v12b)))
_v10b(_v119, _v4.afkCF)
_vzq(_v11a, _v4.afkPos.Y)
_v10i(true)
return
end
end
else
_v4.afkStuckPos = nil
if (_v127 - _v4.afkPos).Magnitude > _v123 * _vze + 4 then
_v4.afkPos = _v4.govNext(_v4.afkPos, _v127, _v118)
elseif _v4.AFK_FARM_WALK then
_v122.orbit = (_v122.orbit or 0) + _v118 * 2.5
local _v12c = math.min(3, _v123 * 0.2)
_v4.afkPos = _v4.govNext(_v4.afkPos, Vector3.new(_v127.X + math.cos(_v122.orbit) * _v12c, _v127.Y, _v127.Z + math.sin(_v122.orbit) * _v12c), _v118)
else
_v4.afkPos = _v4.govNext(_v4.afkPos, _v127, _v118)
end
end
local _v12d = (_v127 - _v4.afkPos).Magnitude < 3
if _v122.creep and _v12d and not _v122.holding then
_v122.holding = true
_v122.misses = 0
end
local _v12e = _v104(_v4.afkCF and _v4.afkCF.LookVector or Vector3.new(0, 0, 1))
_v4.afkCF = CFrame.lookAt(_v4.afkPos, _v4.afkPos + _v104(_v122.pos - _v4.afkPos, _v12e))
_v10b(_v119, _v4.afkCF)
_vzq(_v11a, _v4.afkPos.Y)
if not _v122.holding and not _v12d and _v11b > _v122.deadline then
_v10i(true)
return
end
if (_v122.pos - _v11c).Magnitude <= _v123 and _v11b - _v4.afkLastBite >= 1 / math.clamp(_v4.FAST_EAT_RATE or 1.25, 0.2, 1.25) then
_v4.afkLastBite = _v11b
local _v12f, _v12g = _v4.myFood()
if _v12f and _v12g and _v12g > 0 then
if _v4.afkHungry then
if _v12f >= _v12g - _v4.foodGap(_v12g, 0.05) then _v4.afkHungry = false end
elseif _v12f <= _v12g - _v4.foodGap(_v12g, 1) then
_v4.afkHungry = true
end
end
local _v12h = _v4.afkHungry and _v4.afkConsumeId and _v4.afkConsumeId()
if _v12h and _vkc then
local _v12i, _v12j, _v12k = _v4.afkBufCheck(_v122.id, _v122.idx)
if _v122.isMeat and _v12i == nil then _v10i(true) return end
if _v12i ~= nil and (not _v12k or _v12i + (_v12j or 0) <= 0) then
_v10i(false)
return
end
if _v12i ~= nil and _v4.LEAVE_SCRAPS and not _v122.isMeat and _v4.isScraps(_v12i) then
_v4.afkExclude[_v122.id] = os.clock() + 300
_v10i(false)
return
end
if _v122.bitten then
if _v12i and _v122.lastFood and _v12i < _v122.lastFood then
_v4.noteBiteDrop(_v122.lastFood - _v12i)
_v122.misses = 0
_v122.lastEat = _v11b
else
_v122.misses = _v122.misses + 1
end
end
_v122.lastFood = _v12i
_v122.bitten = true
local _v12l = buffer.create(5)
buffer.writeu32(_v12l, 0, math.floor(_v122.id))
buffer.writeu8(_v12l, 4, _v122.idx or 1)
_vkc:FireServer(_v12h, _ei9m[359], _v12l)
end
end
if not _v122.creep and _v122.misses >= _vzd then
_v122.creep, _v122.holding = true, false
_v122.deadline = _v11b + (_v122.pos - _v4.afkPos).Magnitude / _v11d * 2 + 10
elseif _v122.creep and _v122.holding and _v122.misses >= _vzc then
_v10i(true)
return
end
if (_v122.pos - _v11c).Magnitude <= _v123 and _v4.afkHungry then
if _v4.foodNoGain(_v122, _v11b) then _v10i(true, _v4.NO_GAIN_SKIP) return end
else
_v122.gainT = nil
end
if _v4.AFK_FARM_UNSTUCK and _v122.holding then
local _v12m, _v12n = _v4.myFood()
if _v12m and _v12n and _v12n > 0 and _v12m < _v12n - _v4.foodGap(_v12n, 1) then
_v122.hungrySince = _v122.hungrySince or _v11b
if _v11b - math.max(_v122.lastEat or 0, _v122.hungrySince) > (_v4.UNSTUCK_EAT_SECS or 25) then
_v10i(true)
end
else
_v122.hungrySince = nil
end
end
end
function _v4.afkFarmPin()
if _v4.UNLOADED or not _v4.AFK_FARM or _v4.FLY or _v4.AUTO_FLY or _v4.AS_BUSY or _v4.CLEAN_BREAK or not _v4.afkCF or _v4.mvHold() then return end
if _v4.afkSafetyState == _ei9m[1777-6] then return end
local _v12o = _v4.getLocalPhysicsRoot()
if _v12o and not _v12o.Anchored then _v10b(_v12o, _v4.afkCF) end
local _v12p = _v2.Character
_vzq(_v12p, _v4.afkCF.Position.Y)
_vzv(_v12p)
end
table.insert(_v2l, _v1.RenderStepped:Connect(_v4.afkFarmAdvance))
table.insert(_v2l, _v1.Heartbeat:Connect(_v4.afkFarmPin))
end
function _v4.lfSetup()
local _v12q = 0.7
local _v12r = 0.85
local _v12s = 1.5
local _v12t = 45
local _v12u = 1800
local _v12v = 8
local _v12w, _v12x = 3, 5
local _v12y, _v12z = 4, 3
local _v130, _v131, _v132 = 60, 60, nil
local _v133, _v134 = 30, 45
local _v135, _v136 = 0.2, 0.6
local _v137 = math.rad(150)
local _v138 = 30
local _v139, _v13a = 80, nil
local _v13b, _v13c = 150, 90
local _v13d = { ALT = 60, MIN_SAFE = 400, MAX_DIST = 2000, MAX_TIME = 120 }
_v4.lfEsc = { starts = {}, revs = {} }
_v4.lfExclude = {}
_v4.lfGiveUps = {}
_v4.lfHeld = {}
_v4.lfBarriers = {}
_v4.lfBiteN = 0
_v4.lfStatus = _ei9m[863+1109]
local _v13e, _v13f
local function _v13g()
if not _v13f then
_v13f = true
pcall(function() _v13e = _v4.req(_v4.WATER_RS.Common.RayParams).AlignmentParams end)
if not _v13e then
_v13e = RaycastParams.new()
_v13e.FilterType = Enum.RaycastFilterType.Include
local _v13h = { workspace.Terrain }
local _v13i = workspace:FindFirstChild(_ei9m[5+3])
local _v13j = _v13i and _v13i:FindFirstChild(_ei9m[401-20])
if _v13j then _v13h[2] = _v13j end
_v13e.FilterDescendantsInstances = _v13h
_v13e.IgnoreWater = true
end
end
return _v13e
end
local function _v13k(_v13l, _v13m, _v13n)
local _v13o = workspace:Raycast(Vector3.new(_v13l, _v13m, _v13n), Vector3.new(0, -500, 0), _v13g())
return _v13o and _v13o.Position.Y
end
local function _v13p()
local _v13q
pcall(function()
local _v13r = _v4.getCS().Alignment
_v13q = (_v13r.RideHeight or 0) + (_v13r.BodyHeightIncrease or 0)
end)
if type(_v13q) ~= _ei9m[7+1034] or _v13q <= 0 then _v13q = 6 end
return _v13q
end
local function _v13s()
local _v13t
pcall(function() _v13t = _v4.getCS().Instances.Mesh end)
return _v13t
end
local function _v13u(_v13v, _v13w)
local _v13x = Vector3.new(_v13v.X, 0, _v13v.Z)
if _v13x.Magnitude < 0.1 then return _v13w end
return _v13x.Unit
end
local function _v13y(_v13z, _v140)
if _v13z then pcall(function() _v13z:SetAttribute(_ei9m[2566], _v140) end) end
end
local function _v141(_v142, _v143)
pcall(function()
_v142.CFrame = _v143
_v142.AssemblyLinearVelocity = Vector3.zero
_v142.AssemblyAngularVelocity = Vector3.zero
end)
end
local function _v144()
_v4.pressRest()
end
local function _v145(_v146, _v147)
local _v148 = _v4.getCS()
local _v149 = (_v148 and _v148.Actions and _v148.Actions[_v146]) == true
if _v149 == _v147 then return end
if _v146 == _ei9m[1534] and not _v147 and _v4.mvWantsRun and _v4.mvWantsRun() then _v4.lfHeld.Run = nil return end
local _v14a = _v148 and _v148.Controls and pcall(function() _v148.Controls:HandleAction(_v146, _v147) end)
if not _v14a and _v146 == _ei9m[3+1046] then
pcall(function() _v4.VIM:SendKeyEvent(_v147, Enum.KeyCode.W, false, game) end)
_v4.lfVimW = _v147 or nil
end
_v4.lfHeld[_v146] = _v147 or nil
end
local function _v14b()
for _v14c in pairs(_v4.lfHeld) do
pcall(function() _v4.getCS().Controls:HandleAction(_v14c, false) end)
end
_v4.lfHeld = {}
if _v4.lfVimW then
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.W, false, game) end)
_v4.lfVimW = nil
end
end
local _v14d = 6
local function _v14e(_v14f, _v14g)
if not _v4.lfCircleDir then _v4.lfCircleDir = (math.random() < 0.5) and 1 or -1 end
local _v14h = Vector3.new(_v14g.X - _v14f.X, 0, _v14g.Z - _v14f.Z)
local _v14i = _v14h.Magnitude
local _v14j = (_v14i > 0.5) and (_v14h / _v14i) or Vector3.new(1, 0, 0)
local _v14k = Vector3.new(-_v14j.Z * _v4.lfCircleDir, 0, _v14j.X * _v4.lfCircleDir)
local _v14l = math.clamp((_v14i - _v14d) / _v14d, -1, 1)
_v4.lfHeading = _v13u(_v14k - _v14j * _v14l, _v4.lfHeading or _v14k)
_v145(_ei9m[1158-8], false)
_v145(_ei9m[3+452], false)
_v145(_ei9m[3+882], true)
end
local function _v14m()
if _v4.lfColliders then
for _v14n in pairs(_v4.lfColliders) do
if _v14n.Parent then pcall(function() _v14n.CanCollide = true end) end
end
end
_v4.lfColliders, _v4.lfCollidersChar = nil, nil
end
local function _v14o(_v14p)
if _v4.lfCollidersChar ~= _v14p then
_v14m()
local _v14q = {}
for _v14r, _v14s in ipairs(_v14p:GetDescendants()) do
if _v14s:IsA(_ei9m[2506+298]) and _v14s.CanCollide then _v14q[_v14s] = true end
end
for _v14t, _v14u in ipairs({ _ei9m[1228], _ei9m[1835-2] }) do
local _v14v = _v14p:FindFirstChild(_v14u)
if _v14v and _v14v:IsA(_ei9m[1476]) then _v14q[_v14v] = true end
end
_v4.lfColliders, _v4.lfCollidersChar = _v14q, _v14p
end
for _v14w in pairs(_v4.lfColliders) do
if _v14w.Parent and _v14w.CanCollide then _v14w.CanCollide = false end
end
end
_v4.lfWallKeys = _v4.lfWallKeys or {}
function _v4.wallAdd(_v14x, _v14y, _v14z)
local _v150 = math.floor(_v14x.X + 0.5) .. ":" .. math.floor(_v14x.Y + 0.5) .. ":" .. math.floor(_v14x.Z + 0.5)
.. ":" .. math.floor(_v14y.X + 0.5) .. ":" .. math.floor(_v14y.Z + 0.5)
if _v4.lfWallKeys[_v150] then return end
_v4.lfWallKeys[_v150] = true
_v4.lfBarriers[{ CFrame = _v14x, Size = _v14y, Parent = true, Radius = (_v14y * 0.5).Magnitude, Saved = _v14z }] = true
if _v14z and not _v4.wallsSavePending then
_v4.wallsSavePending = true
task.delay(10, function() _v4.wallsSavePending = nil pcall(_v4.wallsSave) end)
end
end
function _v4.wallsFile()
local _v151
pcall(function() _v151 = _v4.req(_v4.WATER_RS.Packages.Knit).Ecosystem end)
if type(_v151) ~= _ei9m[2+172] or _v151 == "" then return nil end
return _ei9m[558+1420] .. _v151:gsub(_ei9m[581+622], "_") .. _ei9m[1516-18]
end
function _v4.wallsSave()
local _v152 = _v4.wallsFile()
if not _v152 or _v4.UNLOADED then return end
local _v153 = {}
for _v154 in pairs(_v4.lfBarriers) do
if _v154.Saved then
local _v155 = { _v154.CFrame:GetComponents() }
_v155[13], _v155[14], _v155[15] = _v154.Size.X, _v154.Size.Y, _v154.Size.Z
for _v156 = 1, 15 do _v155[_v156] = math.floor(_v155[_v156] * 1000 + 0.5) / 1000 end
_v153[#_v153 + 1] = _v155
end
end
if not isfolder(_ei9m[630-11]) then makefolder(_ei9m[162+917]) end
writefile(_v152, game:GetService(_ei9m[229]):JSONEncode({ v = 1, walls = _v153 }))
end
function _v4.wallsLoad()
local _v157 = _v4.wallsFile()
local _v158, _v159 = pcall(function() return game:GetService(_ei9m[7+1312]):JSONDecode(readfile(_v157)) end)
if not (_v158 and type(_v159) == _ei9m[1632] and type(_v159.walls) == _ei9m[1326]) then return end
for _v15a, _v15b in ipairs(_v159.walls) do
if type(_v15b) == _ei9m[1537] and #_v15b == 15 then
pcall(function()
_v4.wallAdd(CFrame.new(table.unpack(_v15b, 1, 12)), Vector3.new(_v15b[13], _v15b[14], _v15b[15]), false)
end)
end
end
for _v15c in pairs(_v4.lfBarriers) do if _v15c.Saved == false then _v15c.Saved = true end end
end
function _v4.wallsRect()
local _v15d
pcall(function()
local _v15e = _v4.req(_v4.WATER_RS.Packages.Knit).Ecosystem
_v15d = _v4.req(_v4.WATER_RS.Shared.MapData).MapEcosystemData[_v15e]
end)
if not (_v15d and typeof(_v15d.MapSize) == _ei9m[5+1219] and typeof(_v15d.MapCenter) == _ei9m[419]) then return end
local _v15f, _v15g, _v15h = _v15d.MapCenter, _v15d.MapSize.X / 2, _v15d.MapSize.Y / 2
local function _v15i(_v15j) return math.abs(_v15j.X - _v15f.X) <= _v15g and math.abs(_v15j.Z - _v15f.Y) <= _v15h end
local _v15k, _v15l = 0, 0
pcall(function()
for _v15m, _v15n in ipairs(workspace.UnstuckPoints:GetChildren()) do
if _v15n:IsA(_ei9m[957-17]) then
_v15k = _v15k + 1
if _v15i(_v15n.Value.Position) then _v15l = _v15l + 1 end
end
end
end)
local _v15o = _v4.getLocalPhysicsRoot()
if (_v15o and not _v15i(_v15o.Position)) or (_v15k > 0 and _v15l < _v15k * 0.95) then
_v4.wallsRectNote = _ei9m[32-19] .. _v15l .. "/" .. _v15k .. _ei9m[5+621]
return
end
local _v15p, _v15q, _v15r = 50, 20, 200000
_v4.wallAdd(CFrame.new(_v15f.X + _v15g - _v15p + _v15q / 2, 0, _v15f.Y), Vector3.new(_v15q, _v15r, 2 * _v15h + 2 * _v15q), nil)
_v4.wallAdd(CFrame.new(_v15f.X - _v15g + _v15p - _v15q / 2, 0, _v15f.Y), Vector3.new(_v15q, _v15r, 2 * _v15h + 2 * _v15q), nil)
_v4.wallAdd(CFrame.new(_v15f.X, 0, _v15f.Y + _v15h - _v15p + _v15q / 2), Vector3.new(2 * _v15g + 2 * _v15q, _v15r, _v15q), nil)
_v4.wallAdd(CFrame.new(_v15f.X, 0, _v15f.Y - _v15h + _v15p - _v15q / 2), Vector3.new(2 * _v15g + 2 * _v15q, _v15r, _v15q), nil)
_v4.wallsRectNote = _ei9m[247+806] .. _v15l .. "/" .. _v15k .. _ei9m[2694-5]
end
local function _v15s(_v15t)
local _v15u = workspace:FindFirstChild(_ei9m[13+459])
local _v15v = _v15t.Parent
while _v15v and _v15v ~= _v15u and _v15v ~= workspace do
if _v15v.Name == _ei9m[42+1819] then return true end
_v15v = _v15v.Parent
end
return false
end
local function _v15w()
if _v4.lfBarriersTracked then return end
local _v15x = workspace:FindFirstChild(_ei9m[6+197])
if not _v15x then return end
_v4.lfBarriersTracked = true
pcall(_v4.wallsLoad)
pcall(_v4.wallsRect)
local function _v15y(_v15z)
if _v15z:IsA(_ei9m[443-4]) and _v15s(_v15z) then _v4.wallAdd(_v15z.CFrame, _v15z.Size, true) end
end
for _v160, _v161 in ipairs(_v15x:GetChildren()) do
local _v162 = (_v161.Name == _ei9m[1184+427]) and _v161 or _v161:FindFirstChild(_ei9m[7+1860])
if _v162 then
for _v160, _v164 in ipairs(_v162:GetDescendants()) do _v15y(_v164) end
end
end
table.insert(_v2l, _v15x.DescendantAdded:Connect(function(_v165)
if not _v4.UNLOADED then _v15y(_v165) end
end))
end
local function _v166(_v167, _v168)
for _v169 in pairs(_v4.lfBarriers) do
if _v169.Radius and (_v169.CFrame.Position - _v167).Magnitude > _v169.Radius + _v168 then
elseif _v169.Parent then
local _v16a = _v169.CFrame:PointToObjectSpace(_v167)
local _v16b = _v169.Size * 0.5
local _v16c = Vector3.new(math.max(math.abs(_v16a.X) - _v16b.X, 0), math.max(math.abs(_v16a.Y) - _v16b.Y, 0),
math.max(math.abs(_v16a.Z) - _v16b.Z, 0))
if _v16c.Magnitude < _v168 then return true end
else
_v4.lfBarriers[_v169] = nil
end
end
return false
end
local function _v16d(_v16e, _v16f)
if next(_v4.lfBarriers) == nil then return true end
local _v16g = _v16f - _v16e
local _v16h = math.clamp(math.ceil(_v16g.Magnitude / 25), 1, 80)
for _v16i = 0, _v16h do
if _v166(_v16e + _v16g * (_v16i / _v16h), _v138) then return false end
end
return true
end
local function _v16j(_v16k, _v16l)
local _v16m = _v16l - _v16k
local _v16n = _v16m:Dot(_v16m)
for _v16o in pairs(_v4.lfBarriers) do
local _v16p = true
if _v16o.Radius then
local _v16q = _v16o.CFrame.Position
local _v16r = (_v16n > 1e-6) and math.clamp((_v16q - _v16k):Dot(_v16m) / _v16n, 0, 1) or 0
_v16p = (_v16k + _v16m * _v16r - _v16q).Magnitude <= _v16o.Radius + 4
end
if _v16p and _v16o.Parent then
local _v16s, _v16t = _v16o.CFrame:PointToObjectSpace(_v16k), _v16o.CFrame:PointToObjectSpace(_v16l)
local _v16u = _v16o.Size * 0.5 + Vector3.new(2, 2, 2)
local _v16v, _v16w, _v16x = 0, 1, true
for _v16y, _v16z in ipairs({ "X", "Y", "Z" }) do
local _v170, _v171, _v172 = _v16s[_v16z], _v16t[_v16z] - _v16s[_v16z], _v16u[_v16z]
if math.abs(_v171) < 1e-6 then
if math.abs(_v170) > _v172 then _v16x = false break end
else
local _v173, _v174 = (-_v172 - _v170) / _v171, (_v172 - _v170) / _v171
if _v173 > _v174 then _v173, _v174 = _v174, _v173 end
_v16v, _v16w = math.max(_v16v, _v173), math.min(_v16w, _v174)
if _v16v > _v16w then _v16x = false break end
end
end
if _v16x then return true end
end
end
return false
end
_v4.trackWalls, _v4.wallCross, _v4.wallNear = _v15w, _v16j, _v166
local function _v175(_v176)
local _v177 = {}
for _v178, _v179 in ipairs(game:GetService(_ei9m[460]):GetTagged(_ei9m[5+1945])) do
local _v17a, _v17b = pcall(_v4.foodSpot, _v179)
if _v17a and _v17b then _v177[#_v177 + 1] = { d = (_v17b - _v176).Magnitude, p = _v17b } end
end
table.sort(_v177, function(_v17c, _v17d) return _v17c.d < _v17d.d end)
local _v17e, _v17f = math.min(#_v177, 15), 0
for _v17g = 1, _v17e do
if _v16j(_v176, _v177[_v17g].p) then _v17f = _v17f + 1 end
end
return _v17e > 0 and _v17f > _v17e / 2
end
local _v17h
local function _v17i(_v17j, _v17k, _v17l)
if not _v17h then
_v17h = RaycastParams.new()
_v17h.FilterType = Enum.RaycastFilterType.Include
local _v17m = { workspace.Terrain }
local _v17n = workspace:FindFirstChild(_ei9m[2815])
local _v17o = _v17n and _v17n:FindFirstChild(_ei9m[2911-15])
if _v17o then _v17m[2] = _v17o end
_v17h.FilterDescendantsInstances = _v17m
_v17h.IgnoreWater = true
end
local _v17p = workspace:Raycast(Vector3.new(_v17j, _v17l, _v17k), Vector3.new(0, -2500, 0), _v17h)
return _v17p and _v17p.Position.Y
end
local _v17q
local function _v17r(_v17s, _v17t, _v17u)
if not _v17q then
_v17q = RaycastParams.new()
_v17q.FilterType = Enum.RaycastFilterType.Include
local _v17v = { workspace.Terrain }
local _v17w = workspace:FindFirstChild(_ei9m[1931+886])
local _v17x = _v17w and _v17w:FindFirstChild(_ei9m[535])
if _v17x then _v17v[2] = _v17x end
_v17q.FilterDescendantsInstances = _v17v
_v17q.IgnoreWater = false
end
local _v17y = workspace:Raycast(Vector3.new(_v17s, _v17u, _v17t), Vector3.new(0, -2500, 0), _v17q)
if _v17y and _v17y.Material == Enum.Material.Water then return _v17y.Position.Y end
return nil
end
local function _v17z(_v180, _v181)
local _v182 = _v180.Y + 1500
if not _v17r(_v180.X, _v180.Z, _v182) then return nil end
_v181 = _v181 or Vector3.new(1, 0, 0)
local _v183 = math.atan2(_v181.Z, _v181.X)
local _v184 = { 0, 1, -1, 2, -2, 3, -3, 4, -4, 5, -5, 6, -6, 7, -7, 8 }
for _v185 = 20, 400, 20 do
for _v186, _v187 in ipairs(_v184) do
local _v188 = _v183 + _v187 * math.pi / 8
local _v189, _v18a = _v180.X + math.cos(_v188) * _v185, _v180.Z + math.sin(_v188) * _v185
if not _v17r(_v189, _v18a, _v182) and _v17i(_v189, _v18a, _v182)
and not _v16j(_v180, Vector3.new(_v189, _v180.Y, _v18a)) then
return Vector3.new(_v189, _v180.Y, _v18a)
end
end
end
return nil
end
local _v18b = 3
local _v18c = { { 15, 8 }, { 30, 8 }, { 45, 12 } }
local function _v18d(_v18e, _v18f, _v18g)
local _v18h = _v17r(_v18e, _v18f, _v18g)
if not _v18h then return false end
local _v18i = _v17i(_v18e, _v18f, _v18g)
return not _v18i or _v18h - _v18i >= _v18b
end
local _v18j, _v18k = {}, 0
local function _v18l(_v18m)
local _v18n = math.floor(_v18m.X / 8) .. ":" .. math.floor(_v18m.Z / 8)
local _v18o = _v18j[_v18n]
if _v18o == true or (_v18o and os.clock() < _v18o) then return _v18o == true end
if _v18o == nil then
_v18k = _v18k + 1
if _v18k > 20000 then
local _v18p, _v18q = os.clock(), 0
for _v18r, _v18s in pairs(_v18j) do
if _v18s ~= true and _v18p >= _v18s then _v18j[_v18r] = nil else _v18q = _v18q + 1 end
end
if _v18q > 20000 then table.clear(_v18j) _v18q = 0 end
_v18k = _v18q + 1
end
end
local _v18t = _v18m.Y + 1500
local _v18u = _v17r(_v18m.X, _v18m.Z, _v18t) ~= nil
for _v18v, _v18w in ipairs(_v18c) do
if _v18u then break end
local _v18x, _v18y = _v18w[1], _v18w[2]
for _v18z = 0, _v18y - 1 do
local _v190 = _v18z * 2 * math.pi / _v18y
if _v17r(_v18m.X + math.cos(_v190) * _v18x, _v18m.Z + math.sin(_v190) * _v18x, _v18t) ~= nil then _v18u = true break end
end
end
_v18j[_v18n] = _v18u or (os.clock() + 30)
return _v18u
end
local function _v191(_v192)
return not _v18l(_v192)
end
local _v193, _v194, _v195, _v196 = 60, 30, 300, 20
local function _v197(_v198, _v199)
local _v19a = Vector3.new(_v199.X - _v198.X, 0, _v199.Z - _v198.Z)
local _v19b = _v19a.Magnitude
if _v19b < 10 then return nil end
local _v19c = _v19a / _v19b
local _v19d = math.max(_v198.Y, _v199.Y) + 1500
local _v19e, _v19f
for _v19g = 10, _v19b, 15 do
if not _v19e and _v19g > _v193 then return nil end
if _v18d(_v198.X + _v19c.X * _v19g, _v198.Z + _v19c.Z * _v19g, _v19d) then
_v19e = _v19e or _v19g
_v19f = _v19g
elseif _v19f and _v19g - _v19f > 45 then
break
end
end
if not _v19f then return nil end
local _v19h = math.min(_v19f + _v194, _v19b)
while _v19h < _v19b and _v17r(_v198.X + _v19c.X * _v19h, _v198.Z + _v19c.Z * _v19h, _v19d) do _v19h = _v19h + 15 end
_v19h = math.min(_v19h, _v19b)
local _v19i, _v19j = _v198.X + _v19c.X * _v19h, _v198.Z + _v19c.Z * _v19h
if _v19h - _v19e > _v195 or _v17r(_v19i, _v19j, _v19d) or not _v17i(_v19i, _v19j, _v19d) then return nil, true end
return Vector3.new(_v19i, _v199.Y, _v19j)
end
local function _v19k(_v19l, _v19m, _v19n)
_v19m = _v19m or _v13k(_v19l.X, _v19l.Y + 5, _v19l.Z) or _v19l.Y
local _v19o = _v17i(_v19l.X, _v19l.Z, _v19l.Y + 1200)
return _v19o ~= nil and _v19o - _v19m > math.max(_v19n * 2, 25)
end
local function _v19p(_v19q, _v19r, _v19s, _v19t)
local _v19u = _v13k(_v19q.X, _v19q.Y + 60, _v19q.Z) or _v13k(_v19q.X, _v19q.Y + 300, _v19q.Z)
if _v19u == nil or math.abs(_v19q.Y - (_v19u + _v19s + _v19t)) > _v19r * _v12r then return false end
return not _v19k(_v19q, _v19u, _v19s)
end
local function _v19v()
local _v19w
pcall(function()
local _v19x = _v4.getCS().Replica.Data
_v19w = _v19x.Stats.Stamina / math.max(_v19x.MaxStats.Stamina, 1)
end)
if not _v19w then return end
if _v4.lfTired then
if _v19w >= _v136 then _v4.lfTired = false end
elseif _v19w <= _v135 then
_v4.lfTired = true
end
end
local function _v19y(_v19z)
local _v1a0 = 5
pcall(function() _v1a0 = _v4.getCS().Data.Movement.Speeds.Land.Normal or _v1a0 end)
return _v19z / math.max(_v1a0, 1) * 1.6 + 20
end
local function _v1a1(_v1a2)
local _v1a3 = _v4.lfTarget
if _v1a2 and _v1a3 and _v1a3.id then
if _v1a2 >= _v12t then
local _v1a4 = (_v4.lfGiveUps[_v1a3.id] or 0) + 1
_v4.lfGiveUps[_v1a3.id] = _v1a4
if _v1a4 >= 2 then _v1a2 = math.max(_v1a2, _v12u) end
end
_v4.lfExclude[_v1a3.id] = os.clock() + _v1a2
end
_v4.lfTarget, _v4.lfEat = nil, nil
_v4.lfLastScan = 0
_v4.lfProgPos = nil
end
local function _v1a5(_v1a6, _v1a7, _v1a8)
_v14b()
_v4.lfEat = nil
local _v1a9 = _v13k(_v1a7.X, _v1a7.Y + 5, _v1a7.Z) or (_v1a7.Y - _v1a8)
local _v1aa = _v4.lfHeading or _v13u(_v1a6.CFrame.LookVector, Vector3.new(0, 0, -1))
_v4.lfFly = { phase = "up", pos = _v1a7, dest = Vector3.new(_v1a7.X, _v1a9 + _v1a8 + _v130, _v1a7.Z), dir = _v1aa }
_v4.lfProgPos = nil
end
local function _v1ab(_v1ac)
local _v1ad, _v1ae
for _v1af, _v1ag in ipairs(_v0:GetPlayers()) do
if _v1ag ~= _v2 and _v1ag.Character then
local _v1ah = _v4.getRootOf(_v1ag.Character, false)
if _v1ah then
local _v1ai = (_v1ah.Position - _v1ac).Magnitude
if not _v1ae or _v1ai < _v1ae then _v1ad, _v1ae = _v1ah.Position, _v1ai end
end
end
end
return _v1ad, _v1ae
end
function _v13d.noteStart(_v1aj)
local _v1ak, _v1al = _v4.lfEsc, {}
for _v1am, _v1an in ipairs(_v1ak.starts) do if _v1aj - _v1an < 60 then _v1al[#_v1al + 1] = _v1an end end
_v1al[#_v1al + 1] = _v1aj
_v1ak.starts = _v1al
end
function _v13d.noteDir(_v1ao, _v1ap, _v1aq)
local _v1ar = _v4.lfEsc
_v1ar.fleeSince = _v1ar.fleeSince or _v1aq
if not _v1ar.baseDir or _v1aq - _v1ar.baseT >= 2 then
if _v1ar.baseDir and _v1ao:Dot(_v1ar.baseDir) < -0.3 then
local _v1as = {}
for _v1at, _v1au in ipairs(_v1ar.revs) do if _v1aq - _v1au < 25 then _v1as[#_v1as + 1] = _v1au end end
_v1as[#_v1as + 1] = _v1aq
_v1ar.revs = _v1as
end
_v1ar.baseDir, _v1ar.baseT = _v1ao, _v1aq
end
if not _v1ar.trailT or _v1aq - _v1ar.trailT >= 1 then
_v1ar.trail = _v1ar.trail or {}
table.insert(_v1ar.trail, { t = _v1aq, pos = _v1ap })
while #_v1ar.trail > 0 and _v1aq - _v1ar.trail[1].t > 20 do table.remove(_v1ar.trail, 1) end
_v1ar.trailT = _v1aq
end
end
function _v13d.boxed(_v1av, _v1aw)
local _v1ax = _v4.lfEsc
if _v1av < (_v1ax.lockUntil or 0) then return false end
local _v1ay, _v1az = 0, 0
for _v1b0, _v1b1 in ipairs(_v1ax.revs) do if _v1av - _v1b1 < 25 then _v1ay = _v1ay + 1 end end
for _v1b2, _v1b3 in ipairs(_v1ax.starts) do if _v1av - _v1b3 < 60 then _v1az = _v1az + 1 end end
if _v1ay >= 3 or _v1az >= 3 then return true end
if _v1ax.fleeSince and _v1av - _v1ax.fleeSince >= 15 and _v1ax.trail then
for _v1b4, _v1b5 in ipairs(_v1ax.trail) do
if _v1av - _v1b5.t >= 15 then
return Vector3.new(_v1aw.X - _v1b5.pos.X, 0, _v1aw.Z - _v1b5.pos.Z).Magnitude < 60
end
end
end
return false
end
function _v13d.pick(_v1b6, _v1b7)
local _v1b8 = {}
for _v1b9, _v1ba in ipairs(_v0:GetPlayers()) do
if _v1ba ~= _v2 and _v1ba.Character then
local _v1bb = _v4.getRootOf(_v1ba.Character, false)
if _v1bb then _v1b8[#_v1b8 + 1] = _v1bb.Position end
end
end
local _v1bc = math.max(_v13d.MIN_SAFE, (_v4.LF_FLYAWAY_RADIUS or 150) * 2 + 50, (_v4.LF_AVOID or 200) * 1.5)
local _v1bd = _v4.lfDrink
if _v1bd and _v1bd.stand and _v16d(_v1b6, _v1bd.stand) then
local _v1be = true
for _v1bf, _v1bg in ipairs(_v1b8) do
if Vector3.new(_v1bg.X - _v1bd.stand.X, 0, _v1bg.Z - _v1bd.stand.Z).Magnitude < _v1bc then _v1be = false break end
end
if _v1be then return _v1bd.stand, true end
end
if _v4.afkPickFood then
local _v1bh = _v4.khRange()
local _v1bi = _v13s()
local _v1bj = _v1bi and (_v1bi.Position.Y - _v1b6.Y) or 8
local _v1bm, _v1bn, _v1bo, _v1bp = pcall(_v4.afkPickFood, _v1b6, _v4.lfExclude, {
avoid = _v1bc, meat = _v4.dinoEatsMeat(), maxDist = _v13d.MAX_DIST,
feetY = _v1b6.Y - _v1b7, yWeight = 5,
reach = function(_v1bk, _v1bl)
if not _v191(_v1bk) then return false end
if not _v16d(_v1b6, _v1bk) then return false end
if _v1bl then return not _v19k(_v1bk, nil, _v1b7) end
return _v19p(_v1bk, _v1bh, _v1b7, _v1bj)
end,
})
if _v1bm and _v1bn and _v1bp then return _v1bp end
end
local _v1bq, _v1br
for _v1bs = 0, 15 do
local _v1bt = _v1bs * math.pi / 8
local _v1bu = Vector3.new(math.cos(_v1bt), 0, math.sin(_v1bt))
for _v1bv, _v1bw in ipairs({ _v1bc + 150, _v1bc + 400 }) do
local _v1bx = _v1b6 + _v1bu * _v1bw
if _v16d(_v1b6, _v1bx) and not _v17r(_v1bx.X, _v1bx.Z, _v1bx.Y + 1500) then
local _v1by = math.huge
for _v1bv, _v1c0 in ipairs(_v1b8) do
_v1by = math.min(_v1by, Vector3.new(_v1c0.X - _v1bx.X, 0, _v1c0.Z - _v1bx.Z).Magnitude)
end
if not _v1br or _v1by > _v1br then _v1bq, _v1br = _v1bx, _v1by end
end
end
end
return _v1bq
end
function _v13d.start(_v1c1, _v1c2, _v1c3, _v1c4)
local _v1c5 = _v4.lfEsc
local _v1c6, _v1c7 = _v13d.pick(_v1c2, _v1c3)
_v1c5.revs, _v1c5.starts, _v1c5.trail, _v1c5.trailT, _v1c5.baseDir, _v1c5.fleeSince = {}, {}, nil, nil, nil, nil
if not _v1c6 then _v1c5.lockUntil = _v1c4 + 20 return false end
_v1c5.lockUntil = _v1c4 + 45
_v14b()
_v1a1(nil)
_v4.lfFleeing = false
if _v4.lfDrink then _v4.lfDrink.deadline = math.max(_v4.lfDrink.deadline or _v1c4, _v1c4 + _v13d.MAX_TIME + 60) end
local _v1c8 = _v13u(_v1c6 - _v1c2, _v4.lfHeading or Vector3.new(0, 0, -1))
_v4.lfFly = { kind = _ei9m[702-1], toWater = _v1c7, phase = _ei9m[572], pos = _v1c2, start = _v1c2, dir = _v1c8, goal = _v1c6, t0 = _v1c4,
cf = CFrame.lookAt(_v1c2, _v1c2 + _v1c8),
dest = Vector3.new(_v1c2.X, math.max(_v1c2.Y, _v13d.floorAt(_v1c2) + _v1c3 + _v13d.ALT), _v1c2.Z) }
_v4.lfHeading = _v1c8
_v4.lfProgPos = nil
return true
end
function _v13d.floorAt(_v1c9)
local _v1ca = _v1c9.Y + 1500
local _v1cb = math.max(_v17i(_v1c9.X, _v1c9.Z, _v1ca) or -math.huge, _v17r(_v1c9.X, _v1c9.Z, _v1ca) or -math.huge)
if _v1cb == -math.huge then return _v1c9.Y - _v13p() end
return _v1cb
end
local function _v1cc(_v1cd, _v1ce, _v1cf, _v1cg, _v1ch)
if next(_v4.lfBarriers) and _v16j(_v1ce, _v1ch) then return false end
_v14b()
_v4.lfEat = nil
local _v1ci = _v13u(_v1ch - _v1ce, _v4.lfHeading or Vector3.new(0, 0, -1))
_v4.lfFly = { kind = _ei9m[235-16], cross = true, maxT = _v196, phase = _ei9m[2176-9], pos = _v1ce, start = _v1ce, dir = _v1ci, goal = _v1ch, t0 = _v1cg,
cf = CFrame.lookAt(_v1ce, _v1ce + _v1ci),
dest = Vector3.new(_v1ce.X, math.max(_v1ce.Y, _v13d.floorAt(_v1ce) + _v1cf + _v13d.ALT), _v1ce.Z) }
if _v4.lfTarget then _v4.lfTarget.deadline = (_v4.lfTarget.deadline or _v1cg) + _v13d.MAX_TIME end
_v4.lfHeading = _v1ci
_v4.lfProgPos = nil
return true
end
_v13d.HEAL_UP = 150
function _v13d.hide(_v1cj, _v1ck, _v1cl, _v1cm)
_v14b()
_v1a1(nil)
_v4.lfEat, _v4.lfHeading = nil, nil
_v4.lfFly = { kind = _ei9m[2896-14], phase = _ei9m[6+2112], pos = _v1ck, start = _v1ck, t0 = _v1cm,
dir = _v13u(_v1cj.CFrame.LookVector, Vector3.new(0, 0, -1)),
dest = Vector3.new(_v1ck.X, math.max(_v1ck.Y, _v13d.floorAt(_v1ck) + _v1cl + _v13d.HEAL_UP), _v1ck.Z) }
_v4.lfProgPos = nil
end
function _v13d.surface(_v1cn)
local _v1co, _v1cp = _v2.Character, _v4.getLocalPhysicsRoot()
if not (_v1co and _v1co.Parent and _v1cp) then return end
local _v1cq = _v1cp.Position
local _v1cr = _v17i(_v1cq.X, _v1cq.Z, _v1cq.Y + 1500)
if not _v1cr then return end
local _v1cs = _v13p()
if _v1cq.Y > _v1cr - 2 and _v1cq.Y < _v1cr + _v1cs + 6 then return end
local _v1ct = {}
if _v1cq.Y <= _v1cr - 2 then _v1ct[#_v1ct + 1] = Vector3.new(_v1cq.X, _v1cr + _v1cs + 10, _v1cq.Z) end
local _v1cu = _v17z(_v1cq, _v1cn.dir)
if _v1cu then _v1ct[#_v1ct + 1] = Vector3.new(_v1cu.X, math.max(_v1cq.Y, _v1cr + _v1cs + 10), _v1cu.Z) end
_v1ct[#_v1ct + 1] = _ei9m[2093-3]
local _v1cv = _v1cp.CFrame.Rotation
_v4.lfSurfacing = true
task.spawn(function()
local _v1cw, _v1cx = os.clock(), 1
local _v1cy = _v1ct[1]
_v14o(_v1co)
while os.clock() - _v1cw < 25 and _v1co.Parent and _v1cp.Parent do
if _v1cy == _ei9m[1178] then
local _v1cz = _v13k(_v1cq.X, _v1cq.Y, _v1cq.Z) or _v17i(_v1cq.X, _v1cq.Z, _v1cq.Y + 1500) or (_v1cq.Y - _v1cs)
_v1cy = Vector3.new(_v1cq.X, _v1cz + _v1cs, _v1cq.Z)
end
local _v1d0 = task.wait(0.03)
_v1cq = _v4.govNext(_v1cq, _v1cy, math.min(_v1d0 or 0.03, 0.1), _v13a)
_v141(_v1cp, CFrame.new(_v1cq) * _v1cv)
_v13y(_v1co, _v1cq.Y)
if (_v1cq - _v1cy).Magnitude < 2 then
_v1cx = _v1cx + 1
if not _v1ct[_v1cx] then break end
_v1cy = _v1ct[_v1cx]
end
end
_v13y(_v1co, nil)
_v14m()
_v4.flyLandUntil = os.clock() + 10
_v4.lfSurfacing = nil
end)
end
function _v13d.drink(_v1d1, _v1d2, _v1d3, _v1d4)
local _v1d5, _v1d6 = _v4.myWater()
local _v1d7 = (_v1d5 and _v1d6 and _v1d6 > 0) and _v1d5 / _v1d6 or 1
local _v1d8 = _v4.lfDrink
if not _v1d8 then
if _v1d7 > (_v4.DRINK_AT or 0.4) or _v1d4 < (_v4.lfDrinkRetry or 0) then return false end
if _v4.WATER_ANYWHERE and _v1d7 >= 0.25 then return false end
local _v1d9 = _v4.drinkSpot
if not _v1d9 or _v1d4 - _v1d9.t > 20 or (_v1d9.from - _v1d2).Magnitude > 200 then
_v4.drinkFind(_v1d2, _v4.DRINK_SEARCH or 1500, _v4.LF_AVOID or 200)
return false
end
_v4.drinkSpot = nil
if not _v1d9.stand then
_v4.lfDrinkRetry = _v1d4 + 45
_v4.lfDrinkNote = _ei9m[415-9] .. (_v4.DRINK_SEARCH or 1500) .. _ei9m[458-17]
return false
end
local _v1da = Vector3.new(_v1d9.stand.X - _v1d2.X, 0, _v1d9.stand.Z - _v1d2.Z).Magnitude
_v1d8 = { stand = _v1d9.stand, water = _v1d9.water, swims = 0, deadline = _v1d4 + _v19y(_v1da) + 60 }
_v4.lfDrink, _v4.lfDrinkNote = _v1d8, nil
_v1a1(nil)
_v4.lfEat = nil
end
local function _v1db()
_v4.drinkBad[_v4.drinkCell(_v1d8.stand)] = true
_v4.lfDrink, _v4.lfDrinkRetry = nil, _v1d4 + 5
_v14b()
return false
end
if _v1d7 >= 0.99 then _v4.lfDrink = nil _v14b() return false end
if _v1d4 > _v1d8.deadline or _v1d8.swims >= 2 then return _v1db() end
if _v4.headOverWater() then
_v145(_ei9m[1215-18], false)
_v145(_ei9m[1239-14], false)
_v145(_ei9m[438-1], false)
_v4.lfProgPos = nil
_v1d8.drinkT = _v1d8.drinkT or _v1d4
if not _v1d8.lastW or _v1d5 > _v1d8.lastW + 0.001 then _v1d8.lastW, _v1d8.gainT = _v1d5, _v1d4 end
if _v1d4 - math.max(_v1d8.drinkT, _v1d8.gainT or 0) > 15 then return _v1db() end
_v4.lfStatus = _ei9m[1526-9] .. math.floor(_v1d7 * 100) .. "%)"
return true
end
_v1d8.drinkT = nil
if _v1d7 < (_v4.LF_WATER_CRITICAL or 0.2) and not _v1d8.flown and not _v1d8.reached
and Vector3.new(_v1d8.stand.X - _v1d2.X, 0, _v1d8.stand.Z - _v1d2.Z).Magnitude > 60 and _v16d(_v1d2, _v1d8.stand) then
_v1d8.flown = true
_v1d8.deadline = math.max(_v1d8.deadline, _v1d4 + _v13d.MAX_TIME + 60)
_v14b()
_v4.lfEat = nil
local _v1dc = _v13u(_v1d8.stand - _v1d2, _v4.lfHeading or Vector3.new(0, 0, -1))
_v4.lfFly = { kind = _ei9m[43+2495], toWater = true, critical = true, phase = _ei9m[7+1592], pos = _v1d2, start = _v1d2,
dir = _v1dc, goal = _v1d8.stand, t0 = _v1d4, cf = CFrame.lookAt(_v1d2, _v1d2 + _v1dc),
dest = Vector3.new(_v1d2.X, math.max(_v1d2.Y, _v13d.floorAt(_v1d2) + _v1d3 + _v13d.ALT), _v1d2.Z) }
_v4.lfHeading = _v1dc
_v4.lfProgPos = nil
return true
end
local _v1dd = _v1d8.reached and _v1d8.water or _v1d8.stand
local _v1de = Vector3.new(_v1dd.X - _v1d2.X, 0, _v1dd.Z - _v1d2.Z)
if not _v1d8.reached and _v1de.Magnitude < 5 then _v1d8.reached = true end
if _v1d8.reached and _v1de.Magnitude < 3 then return _v1db() end
_v4.lfHeading = _v13u(_v1de, _v4.lfHeading)
if not _v1d8.reached and _v1d4 - (_v1d8.wetT or 0) >= 1 then
_v1d8.wetT = _v1d4
local _v1df, _v1dg = _v197(_v1d2, _v1d8.stand)
if _v1dg then return _v1db() end
if _v1df and _v1cc(_v1d1, _v1d2, _v1d3, _v1d4, _v1df) then return true end
end
if not _v1d8.progPos or Vector3.new(_v1d2.X - _v1d8.progPos.X, 0, _v1d2.Z - _v1d8.progPos.Z).Magnitude > _v12z then
_v1d8.progPos, _v1d8.progT = _v1d2, _v1d4
elseif _v1d4 - _v1d8.progT > 6 then
_v1d8.progPos, _v1d8.flyOuts = nil, (_v1d8.flyOuts or 0) + 1
if _v1d8.flyOuts > 2 then return _v1db() end
_v1a5(_v1d1, _v1d2, _v1d3)
_v4.lfFly.overTo = _v1d8.stand
return true
end
_v145(_ei9m[4+1807], false)
_v145(_ei9m[2+1852], false)
_v145(_ei9m[2824-19], true)
_v4.lfStatus = _ei9m[2933-5] .. math.floor(_v1d7 * 100) .. _ei9m[1777-9] .. math.floor(_v1de.Magnitude) .. _ei9m[2093]
return true
end
local function _v1dh(_v1di, _v1dj, _v1dk, _v1dl)
local _v1dm = os.clock()
_v13d.noteStart(_v1dm)
if _v13d.boxed(_v1dm, _v1dj) and _v13d.start(_v1di, _v1dj, _v1dk, _v1dm) then return end
_v14b()
_v1a1(nil)
local _v1dn = _v13k(_v1dj.X, _v1dj.Y + 5, _v1dj.Z) or (_v1dj.Y - _v1dk)
local _v1do = _v13u(_v1dj - _v1dl, _v4.lfHeading or _v13u(_v1di.CFrame.LookVector, Vector3.new(0, 0, -1)))
_v4.lfFly = { kind = _ei9m[45+869], phase = "up", pos = _v1dj, start = _v1dj, dir = _v1do, t0 = os.clock(),
dest = Vector3.new(_v1dj.X, _v1dn + _v1dk + _v139, _v1dj.Z) }
_v4.lfProgPos = nil
end
function _v4.lfStop(_v1dp)
local _v1dq = _v4.lfFly
if _v1dq and _v1dq.plat then pcall(function() _v1dq.plat:Destroy() end) _v1dq.plat = nil end
if _v1dq and _v1dq.kind == _ei9m[1492] and _v1dq.phase == _ei9m[3+738] and _v4.saveIsResting() then _v144() end
local _v1dr = (not _v1dp and _v1dq) and _v1dq or nil
if _v4.lfResting == _ei9m[2042] and _v4.saveIsResting() then _v144() end
if _v4.lfAnchored then
local _v1ds = _v4.getLocalPhysicsRoot()
if _v1ds then pcall(function() _v1ds.Anchored = false end) end
_v4.lfAnchored = nil
end
_v4.lfResting, _v4.lfFly, _v4.lfHealUp = nil, nil, nil
_v14b()
_v14m()
if not _v1dp then
local _v1dt = _v2.Character
if _v1dt then pcall(function() _v1dt:SetAttribute(_ei9m[2297-2], nil) end) end
end
if _v4.lfRestoreInput then _v4.lfRestoreInput() end
_v4.lfWasOn, _v4.lfChar = false, nil
_v4.lfTarget, _v4.lfEat, _v4.lfHeading, _v4.lfProgPos, _v4.lfFleeing = nil, nil, nil, nil, false
_v4.lfDrink = nil
_v4.lfStatus = _ei9m[681]
_v4.lfEsc = { starts = {}, revs = {} }
_v4.flyLandUntil = os.clock() + 10
if _v1dr then _v13d.surface(_v1dr) end
end
function _v4.lfAdvance(_v1du)
if _v4.UNLOADED then return end
if _v4.lfSurfacing then return end
if _v4.lfKeepInput then _v4.lfKeepInput() end
local _v1dv = _v4.lfFly and (_v4.lfFly.kind == _ei9m[223+1622] or _v4.lfFly.kind == _ei9m[2352])
local _v1dw = _v4.AFK_FARM or _v4.FLY or _v4.AUTO_FLY or _v4.FOSSIL_FARM or _v4.SAVE_DINO_ACTIVE or _v4.AS_BUSY
or (_v4.CLEAN_BREAK and not _v1dv)
if not _v4.LEGIT_FARM or _v1dw then
if _v4.lfWasOn then _v4.lfStop(_v1dw) end
return
end
local _v1dx = _v2.Character
local _v1dy = _v4.getLocalPhysicsRoot()
if not (_v1dx and _v1dy) then return end
if not _v1dx.Parent then
if _v4.lfWasOn then _v4.lfStop(false) end
return
end
_v1du = math.min(_v1du or 0.016, 0.1)
if _v4.lfWasOn and _v4.lfChar ~= _v1dx then _v4.lfStop(false) end
if not _v4.lfWasOn then
_v4.lfWasOn, _v4.lfChar = true, _v1dx
_v4.lfY = _v1dy.Position.Y
_v4.lfTarget, _v4.lfEat, _v4.lfLastScan = nil, nil, 0
_v15w()
end
local _v1dz = os.clock()
local _v1e0 = _v1dy.Position
local _v1e1 = _v13p()
local _v1e2 = _v4.getCS()
local _v1e3, _v1e4
pcall(function() _v1e3 = _v1dx:GetAttribute(_ei9m[6+1423]); _v1e4 = _v1dx:GetAttribute(_ei9m[787+791]) end)
local _v1e5 = (type(_v1e3) == _ei9m[650+1803] and type(_v1e4) == _ei9m[2+1439] and _v1e4 > 0) and _v1e3 / _v1e4 or 1
local function _v1e6()
if _v4.saveIsResting() then _v144() end
if _v4.lfAnchored then pcall(function() _v1dy.Anchored = false end); _v4.lfAnchored = nil end
_v4.lfResting = nil
_v4.lfY = _v1e0.Y
end
if _v4.lfResting then
local _v1e7, _v1e8 = _v1ab(_v1e0)
if _v1e7 and _v1e8 <= math.max(_v4.LF_FLYAWAY_RADIUS or 150, 150) then
_v1e6()
if not _v4.lfFly then _v1dh(_v1dy, _v1e0, _v1e1, _v1e7) end
end
end
if _v4.tookDamage(_v1dx, _v1e3) then
_v4.lfHealUp = true
if _v4.lfResting then
local _v1e9, _v1ea = _v1ab(_v1e0)
if _v1e9 and _v1ea <= 400 then _v1e6() end
end
if not _v4.lfFly and not _v4.lfResting then
local _v1eb, _v1ec = _v1ab(_v1e0)
if _v1eb and _v1ec <= 400 then _v1dh(_v1dy, _v1e0, _v1e1, _v1eb) end
end
end
local _v1ed, _v1ee
if _v1e5 < 0.99 then pcall(function() _v1ed, _v1ee = _v4.myFood() end) end
local _v1ef, _v1eg = _v4.lfWantRest(_v1e5, _v4.lfHealUp, _v1ed, _v1ee)
if _v1eg then _v4.lfHealUp = nil end
if _v4.LF_REST and not _v4.lfResting and not _v4.lfFly and _v1ef then
local _v1eh, _v1ei = _v1ab(_v1e0)
if _v1eh and _v1ei <= math.max(_v4.LF_FLYAWAY_RADIUS or 150, 150) then
_v1dh(_v1dy, _v1e0, _v1e1, _v1eh)
else
_v13d.hide(_v1dy, _v1e0, _v1e1, _v1dz)
return
end
elseif _v4.lfResting and (_v1e5 >= 0.99 or not _v4.LF_REST or _v1eg) then
if _v4.saveIsResting() then _v144() end
if _v4.lfAnchored then pcall(function() _v1dy.Anchored = false end); _v4.lfAnchored = nil end
_v4.lfResting = nil
_v4.lfHealUp = nil
_v4.lfY = _v1e0.Y
end
if _v1e5 >= 0.99 then _v4.lfHealUp = nil end
if _v4.lfResting then
if _v4.lfResting == _ei9m[299+15] then
_v13y(_v1dx, _v4.lfY)
if _v1dz - _v4.lfRestT >= 1 then
pcall(function() _v1dy.Anchored = true end)
_v4.lfAnchored = true
_v13y(_v1dx, nil)
_v144()
_v4.lfResting, _v4.lfRestT = _ei9m[447-20], _v1dz
end
elseif not _v4.saveIsResting() and _v1dz - _v4.lfRestT > 6 then
_v144()
_v4.lfRestT = _v1dz
end
_v4.lfStatus = _ei9m[2148+383] .. math.floor(_v1e5 * 100) .. "%)"
return
end
if _v1dy.Anchored and not (_v4.lfFly and _v4.lfFly.kind == _ei9m[1442]) then return end
_v14o(_v1dx)
if _v4.lfSteerPatch then _v4.lfSteerPatch() end
if not _v4.lfFly then
local _v1ej = getgenv and getgenv()
if _v1ej and _v1ej.EazyCheats_LfEscapeTest then
_v1ej.EazyCheats_LfEscapeTest = nil
if _v13d.start(_v1dy, _v1e0, _v1e1, _v1dz) then return end
end
end
if _v4.LF_FLYAWAY and not _v4.lfFly then
local _v1ek, _v1el = _v1ab(_v1e0)
if _v1ek and _v1el <= (_v4.LF_FLYAWAY_RADIUS or 150) then _v1dh(_v1dy, _v1e0, _v1e1, _v1ek) end
end
if _v4.lfFly then
local _v1em = _v4.lfFly
if _v1em.kind == _ei9m[799-13] and _v1em.phase == _ei9m[158] then
local _v1en, _v1eo = _v1ab(_v1em.pos)
if _v1en then _v1em.dir = _v13u(_v1em.pos - _v1en, _v1em.dir) end
if next(_v4.lfBarriers) and _v16j(_v1em.pos, _v1em.pos + _v1em.dir * 60) then
local _v1ep, _v1eq = Vector3.new(-_v1em.dir.Z, 0, _v1em.dir.X), Vector3.new(_v1em.dir.Z, 0, -_v1em.dir.X)
_v1em.dir = (not _v16j(_v1em.pos, _v1em.pos + _v1ep * 60) and _v1ep)
or (not _v16j(_v1em.pos, _v1em.pos + _v1eq * 60) and _v1eq) or -_v1em.dir
end
_v13d.noteDir(_v1em.dir, _v1em.pos, _v1dz)
if _v13d.boxed(_v1dz, _v1em.pos) and _v13d.start(_v1dy, _v1em.pos, _v1e1, _v1dz) then return end
local _v1er = _v1em.pos + _v1em.dir * 40
local _v1es = _v13k(_v1em.pos.X, _v1em.pos.Y + 150, _v1em.pos.Z)
local _v1et = _v13k(_v1er.X, _v1em.pos.Y + 150, _v1er.Z)
local _v1eu = math.max(_v1es or -math.huge, _v1et or -math.huge)
local _v1ev = (_v1eu > -math.huge) and (_v1eu + _v1e1 + _v139) or _v1em.pos.Y
_v1em.dest = Vector3.new(_v1em.pos.X + _v1em.dir.X * 50, _v1ev, _v1em.pos.Z + _v1em.dir.Z * 50)
local _v1ew = not _v1en or _v1eo > (_v4.LF_FLYAWAY_RADIUS or 150) * 2
local _v1ex = Vector3.new(_v1em.pos.X - _v1em.start.X, 0, _v1em.pos.Z - _v1em.start.Z).Magnitude
if (_v1ew and _v1ex >= _v13b) or os.clock() - _v1em.t0 > _v13c then
local _v1ey = _v17z(_v1em.pos, _v1em.dir)
if _v1ey then
_v1em.phase, _v1em.dest = _ei9m[1938-7], _v1ey
else
local _v1ez = _v13k(_v1em.pos.X, _v1em.pos.Y, _v1em.pos.Z)
_v1em.phase, _v1em.dest = _ei9m[541+250], Vector3.new(_v1em.pos.X, (_v1ez or (_v1em.pos.Y - _v139 - _v1e1)) + _v1e1, _v1em.pos.Z)
end
end
end
if _v1em.kind == _ei9m[2953-5] and _v1em.phase == _ei9m[52+36] then
local _v1f0 = Vector3.new(_v1em.goal.X - _v1em.pos.X, 0, _v1em.goal.Z - _v1em.pos.Z)
local _v1f1 = _v1f0.Magnitude
_v1em.dir = _v13u(_v1f0, _v1em.dir)
local _v1f2 = _v1em.pos + _v1em.dir * math.min(40, _v1f1)
local _v1f3 = next(_v4.lfBarriers) and _v166(_v1f2, _v138)
local _v1f4 = math.max(_v13d.floorAt(_v1em.pos), _v13d.floorAt(_v1f2)) + _v1e1 + _v13d.ALT
local _v1f5 = math.min(50, _v1f1)
_v1em.dest = Vector3.new(_v1em.pos.X + _v1em.dir.X * _v1f5, _v1f4, _v1em.pos.Z + _v1em.dir.Z * _v1f5)
if _v1f1 <= 12 or _v1f3 or _v1dz - _v1em.t0 > (_v1em.maxT or _v13d.MAX_TIME) then
local _v1f6 = not _v1em.dryDone and not _v1f3 and _v17z(_v1em.pos, _v1em.dir)
_v1em.dryDone = true
if _v1f6 then
_v1em.goal, _v1em.t0 = _v1f6, _v1dz
else
local _v1f7 = _v13k(_v1em.pos.X, _v1em.pos.Y, _v1em.pos.Z) or _v17i(_v1em.pos.X, _v1em.pos.Z, _v1em.pos.Y + 1500)
_v1em.phase, _v1em.dest = _ei9m[531+1255], Vector3.new(_v1em.pos.X, (_v1f7 or (_v1em.pos.Y - _v13d.ALT - _v1e1)) + _v1e1, _v1em.pos.Z)
end
end
end
if _v1em.kind == _ei9m[1314-12] and _v1em.phase == _ei9m[967] then
_v4.lfStatus = _ei9m[2016-8] .. math.floor(_v1e5 * 100) .. "%)"
if not _v1em.pressed and _v1dz - _v1em.restT >= 1 then
_v144()
_v1em.pressed, _v1em.restT = true, _v1dz
elseif _v1em.pressed and not _v4.saveIsResting() and _v1dz - _v1em.restT > 6 then
_v144()
_v1em.restT = _v1dz
end
if _v1e5 >= 0.99 or _v1eg or not _v4.LF_REST then
if _v4.saveIsResting() then _v144() end
if _v4.lfAnchored then pcall(function() _v1dy.Anchored = false end); _v4.lfAnchored = nil end
if _v1em.plat then pcall(function() _v1em.plat:Destroy() end) _v1em.plat = nil end
_v4.lfHealUp = nil
local _v1f8 = _v17z(_v1em.pos, _v1em.dir)
if _v1f8 then
_v1em.kind, _v1em.cross, _v1em.maxT, _v1em.phase, _v1em.goal, _v1em.t0, _v1em.dryDone = _ei9m[1293], true, _v196, _ei9m[5+2221], _v1f8, _v1dz, true
else
local _v1f9 = _v13k(_v1em.pos.X, _v1em.pos.Y, _v1em.pos.Z) or _v17i(_v1em.pos.X, _v1em.pos.Z, _v1em.pos.Y + 1500)
_v1em.phase, _v1em.dest = _ei9m[2+809], Vector3.new(_v1em.pos.X, (_v1f9 or (_v1em.pos.Y - _v13d.HEAL_UP)) + _v1e1, _v1em.pos.Z)
end
end
return
end
local _v1fa = _v4.govNext(_v1em.pos, _v1em.dest, _v1du, (_v1em.kind == _ei9m[2293] or _v1em.kind == _ei9m[2569-19] or _v1em.kind == _ei9m[2849]) and _v13a or _v132)
do
local _v1fb = _v17i(_v1fa.X, _v1fa.Z, _v1fa.Y + 1500)
if _v1fb and _v1fa.Y < _v1fb + _v1e1 * 0.5 then _v1fa = Vector3.new(_v1fa.X, _v1fb + _v1e1 * 0.5, _v1fa.Z) end
end
if not _v1em.crossOK and next(_v4.lfBarriers) and _v16j(_v1em.pos, _v1fa) then
_v1fa = Vector3.new(_v1em.pos.X, _v1fa.Y, _v1em.pos.Z)
_v1em.dest = Vector3.new(_v1em.pos.X, _v1em.dest.Y, _v1em.pos.Z)
if _v1em.kind == _ei9m[2322] and _v1em.phase == _ei9m[1921] then _v1em.t0 = os.clock() - _v13c - 1 end
end
_v1em.pos = _v1fa
_v1em.cf = CFrame.lookAt(_v1em.pos, _v1em.pos + _v1em.dir)
_v141(_v1dy, _v1em.cf)
_v13y(_v1dx, _v1em.pos.Y)
_v4.lfY = _v1em.pos.Y
if _v1em.kind == _ei9m[6+2502] then
_v4.lfStatus = _ei9m[2+2886] .. _v1em.phase
elseif _v1em.kind == _ei9m[862] then
_v4.lfStatus = (_v1em.cross and _ei9m[558] or _v1em.critical and _ei9m[4+2447]
or _v1em.toWater and _ei9m[2435-2] or _ei9m[2620]) .. _v1em.phase .. " ("
.. math.floor(Vector3.new(_v1em.goal.X - _v1em.pos.X, 0, _v1em.goal.Z - _v1em.pos.Z).Magnitude) .. _ei9m[4+1859]
else
_v4.lfStatus = (_v1em.kind == _ei9m[6+1821] and _ei9m[7+1523] or _ei9m[821+373]) .. _v1em.phase
end
if (_v1em.pos - _v1em.dest).Magnitude < 2 then
if _v1em.kind == _ei9m[1415+578] then
if _v1em.phase == _ei9m[2280-17] then
_v1em.phase, _v1em.restT, _v1em.pressed = _ei9m[3+1784], _v1dz, false
pcall(function()
local _v1fc = Instance.new(_ei9m[6+406])
_v1fc.Name = _ei9m[1562]
_v1fc.Size = Vector3.new(40, 4, 40)
_v1fc.Position = _v1em.pos - Vector3.new(0, _v1e1 + 2, 0)
_v1fc.Anchored, _v1fc.CanCollide, _v1fc.CanQuery, _v1fc.CanTouch, _v1fc.Transparency = true, true, false, false, 1
_v1fc.Parent = workspace
_v1em.plat = _v1fc
end)
pcall(function() _v1dy.Anchored = true end)
_v4.lfAnchored = true
_v13y(_v1dx, nil)
else
_v4.lfFly, _v4.lfProgPos = nil, nil
_v4.flyLandUntil = os.clock() + 10
_v4.lfY, _v4.lfLastScan = _v1em.pos.Y, 0
end
elseif _v1em.kind == _ei9m[166-2] then
if _v1em.phase == _ei9m[1290] then
_v1em.phase = _ei9m[706+2334]
elseif _v1em.phase == _ei9m[607] then
_v4.lfFly, _v4.lfProgPos = nil, nil
_v4.flyLandUntil = os.clock() + 10
_v4.lfY, _v4.lfLastScan, _v4.lfHeading = _v1em.pos.Y, 0, _v1em.dir
end
elseif _v1em.phase == "up" and _v1em.kind == _ei9m[2179-6] then
_v1em.phase = _ei9m[72]
elseif _v1em.phase == "up" then
local _v1fd = _v1em.overTo and Vector3.new(_v1em.overTo.X, _v1em.dest.Y, _v1em.overTo.Z) or (_v1em.dest + _v1em.dir * _v131)
if next(_v4.lfBarriers) and _v166(_v1fd, _v138) then _v1fd = _v1em.dest - _v1em.dir * _v131 end
_v1em.phase, _v1em.dest = _ei9m[2285], _v1fd
elseif _v1em.phase == _ei9m[1074-9] then
local _v1fe = not _v1em.dryDone and _v17z(_v1em.dest, _v1em.dir)
_v1em.dryDone = true
if _v1fe then
_v1em.dest = _v1fe
else
local _v1ff = _v13k(_v1em.dest.X, _v1em.dest.Y, _v1em.dest.Z)
_v1em.phase, _v1em.dest = _ei9m[728], Vector3.new(_v1em.dest.X, (_v1ff or (_v1em.dest.Y - _v130)) + _v1e1, _v1em.dest.Z)
end
else
_v4.lfFly, _v4.lfProgPos = nil, nil
_v4.flyLandUntil = os.clock() + 10
end
end
return
end
local _v1fg = _v1e2 and _v1e2.MovementState == _ei9m[1644-3]
if not _v1e2 then
local _v1fh = _v17r(_v1e0.X, _v1e0.Z, _v1e0.Y + 1500)
_v1fg = _v1fh ~= nil and _v1fh > _v1e0.Y - _v1e1 and _v18d(_v1e0.X, _v1e0.Z, _v1e0.Y + 1500)
end
if _v1fg then
_v13y(_v1dx, nil)
_v4.lfY = _v1e0.Y
else
if math.abs(_v1e0.Y - _v4.lfY) > 25 then _v4.lfY = _v1e0.Y end
local _v1fi = _v4.lfY - _v1e1
local _v1fj = _v13k(_v1e0.X, _v1fi + math.max(_v1e1 * 0.75, 4), _v1e0.Z)
or _v13k(_v1e0.X, _v1fi + 90, _v1e0.Z)
if _v1fj then
if _v1fj >= _v4.lfY then
_v4.lfY = _v1fj + _v1e1
else
_v4.lfY = _v4.lfY + math.clamp(_v1fj + _v1e1 - _v4.lfY, -_v134 * _v1du, _v133 * _v1du)
end
end
_v13y(_v1dx, _v4.lfY)
end
if _v1fg then
_v4.lfSwimSince = _v4.lfSwimSince or _v1dz
if _v1dz - _v4.lfSwimSince > 1 then
_v4.lfSwimSince = nil
if _v4.lfDrink then _v4.lfDrink.swims = _v4.lfDrink.swims + 1 end
local _v1fk = _v4.lfHeading or _v13u(_v1dy.CFrame.LookVector, Vector3.new(0, 0, -1))
local _v1fl = _v17z(_v1e0, _v1fk)
if _v1fl then
if _v1cc(_v1dy, _v1e0, _v1e1, _v1dz, _v1fl) then return end
_v1a5(_v1dy, _v1e0, _v1e1)
local _v1fm = _v17r(_v1e0.X, _v1e0.Z, _v1e0.Y + 1500)
if _v1fm and _v4.lfFly.dest.Y < _v1fm + 20 then
_v4.lfFly.dest = Vector3.new(_v4.lfFly.dest.X, _v1fm + 20, _v4.lfFly.dest.Z)
end
_v4.lfFly.overTo, _v4.lfFly.dir = _v1fl, _v13u(_v1fl - _v1e0, _v1fk)
return
end
end
else
_v4.lfSwimSince = nil
end
_v19v()
if _v4.LF_FLEE then
local _v1fn = _v4.LF_AVOID or 200
local _v1fo, _v1fp
if _v1fn > 0 then
for _v1fq, _v1fr in ipairs(_v0:GetPlayers()) do
if _v1fr ~= _v2 and _v1fr.Character then
local _v1fs = _v4.getRootOf(_v1fr.Character, false)
if _v1fs then
local _v1ft = (_v1fs.Position - _v1e0).Magnitude
if not _v1fp or _v1ft < _v1fp then _v1fo, _v1fp = _v1fs.Position, _v1ft end
end
end
end
end
if _v1fo and (_v1fp <= _v1fn or (_v4.lfFleeing and _v1fp <= _v1fn * 1.5)) then
if not _v4.lfFleeing then _v1a1(nil) end
_v4.lfFleeing = true
_v4.lfHeading = _v13u(_v1e0 - _v1fo, _v4.lfHeading or Vector3.new(0, 0, -1))
if next(_v4.lfBarriers) and _v166(_v1e0 + _v4.lfHeading * _v138, _v138 * 0.5) then
_v4.lfHeading = Vector3.new(-_v4.lfHeading.Z, 0, _v4.lfHeading.X)
end
do
local _v1fu = _v1e0 + _v4.lfHeading * 40
local _v1fv = _v1e0.Y + 1500
if (_v1e2 and _v1e2.MovementState == _ei9m[2432-7]) or _v18d(_v1fu.X, _v1fu.Z, _v1fv) then
if _v1dz >= (_v4.lfEsc.lockUntil or 0) and _v13d.start(_v1dy, _v1e0, _v1e1, _v1dz) then return end
local _v1fw = Vector3.new(-_v4.lfHeading.Z, 0, _v4.lfHeading.X)
local _v1fx, _v1fy = _v1e0 + _v1fw * 40, _v1e0 - _v1fw * 40
if not _v18d(_v1fx.X, _v1fx.Z, _v1fv) then _v4.lfHeading = _v1fw
elseif not _v18d(_v1fy.X, _v1fy.Z, _v1fv) then _v4.lfHeading = -_v1fw end
end
end
_v13d.noteDir(_v4.lfHeading, _v1e0, _v1dz)
if _v13d.boxed(_v1dz, _v1e0) and _v13d.start(_v1dy, _v1e0, _v1e1, _v1dz) then return end
_v4.lfEat = nil
_v145(_ei9m[1144+163], true)
_v145(_ei9m[491-4], not _v4.lfTired)
_v4.lfStatus = _ei9m[2495] .. math.floor(_v1fp) .. _ei9m[2061]
return
end
_v4.lfFleeing = false
end
_v4.lfEsc.fleeSince, _v4.lfEsc.trail, _v4.lfEsc.baseDir = nil, nil, nil
if _v13d.drink(_v1dy, _v1e0, _v1e1, _v1dz) then return end
if not _v4.lfTarget and _v1dz - (_v4.lfLastScan or 0) >= _v12s then
_v4.lfLastScan = _v1dz
for _v1fz, _v1g0 in pairs(_v4.lfExclude) do
if _v1g0 <= _v1dz then _v4.lfExclude[_v1fz] = nil end
end
if _v4.afkPickFood then
local _v1g1 = _v4.khRange()
local _v1g2 = _v13s()
local _v1g3 = _v1g2 and (_v1g2.Position.Y - _v1e0.Y) or 8
local _v1g6, _v1g7, _v1g8, _v1g9 = _v4.afkPickFood(_v1e0, _v4.lfExclude, {
avoid = _v4.LF_AVOID or 200,
meat = _v4.dinoEatsMeat(),
maxDist = _v4.LF_MAX_DIST or 1000,
feetY = _v1e0.Y - _v1e1, yWeight = 5,
reach = function(_v1g4, _v1g5)
if not _v191(_v1g4) then return false end
if not _v16d(_v1e0, _v1g4) then return false end
if _v1g5 then return not _v19k(_v1g4, nil, _v1e1) end
return _v19p(_v1g4, _v1g1, _v1e1, _v1g3)
end,
})
if _v1g6 and _v1g8 then
local _v1ga = Vector3.new(_v1g8.X - _v1e0.X, 0, _v1g8.Z - _v1e0.Z).Magnitude
_v4.lfTarget = { id = _v1g6, idx = _v1g7, pos = _v1g8, isMeat = _v1g9, misses = 0, flyOuts = 0,
biteSeen = _v4.lfBiteN, eat = { id = _v1g6, idx = _v1g7, meat = _v1g9 }, deadline = _v1dz + _v19y(_v1ga) }
end
end
end
local _v1gb = _v4.lfTarget
if not _v1gb then
if _v4.LF_CIRCLE then
_v4.lfIdleC = _v4.lfIdleC or _v1e0
_v14e(_v4.lfIdleC, _v1e0)
_v4.lfEat, _v4.lfProgPos = nil, nil
else
_v14b()
_v4.lfEat, _v4.lfHeading, _v4.lfProgPos = nil, nil, nil
end
_v4.lfStatus = _v4.afkPickFood and _ei9m[2+1884] or _ei9m[4+466]
_v4.lfNoFoodSince = _v4.lfNoFoodSince or _v1dz
if _v4.afkPickFood and _v1dz - _v4.lfNoFoodSince > 30 and _v1dz - (_v4.lfRelocateAt or 0) > 60 then
_v4.lfRelocateAt = _v1dz
local _v1gc = _v4.khRange()
local _v1gd = _v13s()
local _v1ge = _v1gd and (_v1gd.Position.Y - _v1e0.Y) or 8
local _v1gh = {
avoid = _v4.LF_AVOID or 200, meat = _v4.dinoEatsMeat(), maxDist = math.max(_v4.LF_MAX_DIST or 1000, 2000),
reach = function(_v1gf, _v1gg)
if not _v191(_v1gf) then return false end
if not _v16d(_v1e0, _v1gf) then return false end
if _v1gg then return not _v19k(_v1gf, nil, _v1e1) end
return _v19p(_v1gf, _v1gc, _v1e1, _v1ge)
end,
}
local _v1gi, _v1gj, _v1gk, _v1gl = pcall(_v4.afkPickFood, _v1e0, _v4.lfExclude, _v1gh)
local _v1gm = false
if _v1gi and not _v1gj and next(_v4.lfBarriers) and _v175(_v1e0) then
_v1gh.reach = function(_v1gn, _v1go)
if not _v191(_v1gn) then return false end
if _v166(_v1gn, _v138) then return false end
if _v1go then return not _v19k(_v1gn, nil, _v1e1) end
return _v19p(_v1gn, _v1gc, _v1e1, _v1ge)
end
_v1gi, _v1gj, _v1gk, _v1gl = pcall(_v4.afkPickFood, _v1e0, _v4.lfExclude, _v1gh)
_v1gm = true
end
if _v1gi and _v1gj and _v1gl then
_v1a5(_v1dy, _v1e0, _v1e1)
_v4.lfFly.crossOK = _v1gm
_v4.lfFly.dest = Vector3.new(_v1e0.X, math.max(_v1gl.Y, _v1e0.Y) + _v1e1 + _v130, _v1e0.Z)
_v4.lfFly.overTo = _v1gl
_v4.lfFly.dir = _v13u(_v1gl - _v1e0, _v4.lfFly.dir)
_v4.lfStatus = _ei9m[7+1810] .. math.floor((_v1gl - _v1e0).Magnitude) .. _ei9m[199]
end
end
return
end
_v4.lfNoFoodSince = nil
_v4.lfIdleC = nil
if not _v1gb.isMeat and _v4.afkPickFood and _v4.dinoEatsMeat() and _v1dz - (_v1gb.meatLookT or 0) >= 8 then
_v1gb.meatLookT = _v1dz
local _v1gp = _v4.khRange()
local _v1gq = _v13s()
local _v1gr = _v1gq and (_v1gq.Position.Y - _v1e0.Y) or 8
local _v1gu, _v1gv, _v1gw, _v1gx, _v1gy = pcall(_v4.afkPickFood, _v1e0, _v4.lfExclude, {
avoid = _v4.LF_AVOID or 200, meat = true, maxDist = _v4.LF_MAX_DIST or 1000,
feetY = _v1e0.Y - _v1e1, yWeight = 5,
reach = function(_v1gs, _v1gt)
if not _v191(_v1gs) then return false end
if not _v16d(_v1e0, _v1gs) then return false end
if _v1gt then return not _v19k(_v1gs, nil, _v1e1) end
return _v19p(_v1gs, _v1gp, _v1e1, _v1gr)
end,
})
if _v1gu and _v1gv and _v1gx and _v1gy and _v1gv ~= _v1gb.id then
local _v1gz = Vector3.new(_v1gx.X - _v1e0.X, 0, _v1gx.Z - _v1e0.Z).Magnitude
_v4.lfTarget = { id = _v1gv, idx = _v1gw, pos = _v1gx, isMeat = true, misses = 0, flyOuts = 0,
biteSeen = _v4.lfBiteN, eat = { id = _v1gv, idx = _v1gw, meat = true }, deadline = _v1dz + _v19y(_v1gz) }
_v4.lfEat, _v4.lfProgPos = nil, nil
_v1gb = _v4.lfTarget
end
end
local _v1h0, _v1h1, _v1h2 = _v4.afkBufCheck(_v1gb.id, _v1gb.idx)
if _v1gb.isMeat and _v1h0 == nil then _v1a1(_v12t) return end
if _v1h0 ~= nil and (not _v1h2 or _v1h0 + (_v1h1 or 0) <= 0) then
_v1a1(5)
return
end
if _v1h0 ~= nil and not _v1gb.isMeat and (_v4.LF_SCRAPS or _v4.LEAVE_SCRAPS) and _v4.isScraps(_v1h0) then
_v4.lfExclude[_v1gb.id] = os.clock() + 300
_v1a1(nil)
return
end
local _v1h3 = _v13s()
local _v1h4 = _v1h3 and _v1h3.Position or _v1e0
local _v1h5 = _v4.khRange()
local _v1h6 = _v1gb.pos - _v1h4
local _v1h7 = Vector3.new(_v1h6.X, 0, _v1h6.Z).Magnitude
local _v1h8 = math.sqrt(math.max((_v1h5 * 0.9) ^ 2 - _v1h6.Y * _v1h6.Y, 0))
local _v1h9 = _v1gb.creep and 3 or math.max(_v1h8 * _v12q, 3)
if _v1h7 <= math.max(_v1h5 * 1.5, 20) and math.abs(_v1h6.Y) > _v1h5 * 0.95 then
_v1gb.vertSince = _v1gb.vertSince or _v1dz
if _v1dz - _v1gb.vertSince > _v12v then
_v1a1(_v12u)
return
end
else
_v1gb.vertSince = nil
end
if _v1gb.holding then
if _v1h7 > _v1h9 + 6 then _v1gb.holding = false end
elseif _v1h7 <= _v1h9 then
_v1gb.holding = true
end
_v4.lfHeading = _v13u(_v1gb.pos - _v1e0, _v4.lfHeading)
if not _v1gb.holding and _v1dz - (_v1gb.wetT or 0) >= 1 then
_v1gb.wetT = _v1dz
local _v1ha, _v1hb = _v197(_v1e0, _v1gb.pos)
if _v1hb then _v1a1(_v12u) return end
if _v1ha and _v1cc(_v1dy, _v1e0, _v1e1, _v1dz, _v1ha) then return end
end
_v4.lfEat = (_v1h6.Magnitude <= _v1h5 * 0.95) and _v1gb.eat or nil
local _v1hc, _v1hd = _v4.myFood()
local _v1he = _v1hc and _v1hd and _v1hd > 0 and _v1hc >= _v1hd - _v4.foodGap(_v1hd, 1)
if _v4.lfBiteN ~= _v1gb.biteSeen then
_v1gb.biteSeen = _v4.lfBiteN
if _v1h0 and _v1gb.lastFood and _v1h0 < _v1gb.lastFood then
_v4.noteBiteDrop(_v1gb.lastFood - _v1h0)
_v1gb.misses = 0
_v1gb.lastEat = _v1dz
elseif _v1gb.lastFood ~= nil and not _v1he then
_v1gb.misses = _v1gb.misses + 1
end
_v1gb.lastFood = _v1h0
end
if _v1gb.holding and not _v1gb.creep and _v1gb.misses >= _v12w then
_v1gb.creep, _v1gb.holding, _v1gb.misses = true, false, 0
_v1gb.deadline = _v1dz + _v19y(_v1h7)
elseif _v1gb.creep and _v1gb.holding and _v1gb.misses >= _v12x then
_v1a1(_v12t)
return
end
if _v1gb.holding and _v4.lfEat then
if _v4.foodNoGain(_v1gb, _v1dz) then _v1a1(_v4.NO_GAIN_SKIP) return end
else
_v1gb.gainT = nil
end
if _v4.LF_UNSTUCK and _v1gb.holding and not _v1he then
_v1gb.hungrySince = _v1gb.hungrySince or _v1dz
if _v1dz - math.max(_v1gb.lastEat or 0, _v1gb.hungrySince) > (_v4.UNSTUCK_EAT_SECS or 25) then
_v1a1(_v12t)
return
end
elseif _v1he then
_v1gb.hungrySince = nil
end
if _v1gb.holding then
if _v4.LF_CIRCLE then
_v14e(_v1gb.pos, _v1e0)
else
_v145(_ei9m[197+575], false)
_v145(_ei9m[7+2227], false)
end
_v4.lfProgPos = nil
_v4.lfStatus = _ei9m[579+2366] .. _v1gb.id .. " (" .. math.floor(_v1h7) .. _ei9m[4+1851] .. _v1gb.misses .. ")"
return
end
if next(_v4.lfBarriers) and _v4.lfHeading
and _v166(_v1e0 + _v4.lfHeading * _v138, _v138 * 0.5) then
_v14b()
_v1a1(_v12t)
return
end
if _v1gb.deadline and _v1dz > _v1gb.deadline then _v1a1(_v12t) return end
local _v1hf = false
_v145(_ei9m[723], false)
_v145(_ei9m[2+161], true)
_v145(_ei9m[2257+231], _v1hf)
local _v1hg = _v1e2 and _v1e2.Movement and _v1e2.Movement.MoveActionsBlocked
if _v4.LF_UNSTUCK and not _v1hg then
if not _v4.lfProgPos
or Vector3.new(_v1e0.X - _v4.lfProgPos.X, 0, _v1e0.Z - _v4.lfProgPos.Z).Magnitude > _v12z then
_v4.lfProgPos, _v4.lfProgT = _v1e0, _v1dz
elseif _v1dz - _v4.lfProgT > _v12y then
_v1gb.flyOuts = _v1gb.flyOuts + 1
_v1a5(_v1dy, _v1e0, _v1e1)
if _v1gb.flyOuts >= 2 then _v1a1(_v12t) end
return
end
end
_v4.lfStatus = (_v1hf and _ei9m[1245-2] or (_v1fg and _ei9m[1505+694] or _ei9m[3+381])) .. _ei9m[335+1345] .. _v1gb.id
.. " (" .. math.floor(_v1h7) .. _ei9m[94]
end
function _v4.lfPin()
local _v1hh = _v4.lfFly
if _v4.UNLOADED or not _v4.LEGIT_FARM or not _v1hh or not _v1hh.cf or _v4.mvHold() then return end
local _v1hi = _v4.getLocalPhysicsRoot()
if _v1hi and not _v1hi.Anchored then _v141(_v1hi, _v1hh.cf) end
end
local function _v1hj()
if _v4.lfWalkState then return true end
pcall(function()
local _v1hk = _v4.req(_v2.PlayerScripts.Client.Classes.Character.Movement.States.Walking)
local _v1hl = rawget(_v1hk, _ei9m[2568-7])
if type(_v1hl) ~= _ei9m[6+2643] then return end
_v1hk.AdjustDirection = function(self, _v1hm, ...)
local _v1hn = _v4.lfHeading
if _v1hn and _v4.LEGIT_FARM and _v4.lfWasOn and not _v4.lfFly and not _v4.lfResting
and _v4.lfHeld and _v4.lfHeld.Forward then
return _v1hn
end
return _v1hl(self, _v1hm, ...)
end
_v4.lfWalkState = { mod = _v1hk, orig = _v1hl }
end)
return _v4.lfWalkState ~= nil
end
_v4.lfSteerPatch = _v1hj
function _v4.lfSteer(_v1ho)
if _v4.UNLOADED or not _v4.LEGIT_FARM or not _v4.lfWasOn or _v4.lfFly or _v4.lfResting then return end
if _v4.lfWalkState then return end
local _v1hp = _v4.lfHeading
local _v1hq = workspace.CurrentCamera
if not _v1hp or not _v1hq or _v1hq.CameraType ~= Enum.CameraType.Custom then return end
local _v1hr = _v1hq.CFrame
local _v1hs = _v1hr.LookVector
if Vector3.new(_v1hs.X, 0, _v1hs.Z).Magnitude < 1e-3 then return end
local _v1ht = math.atan2(-_v1hs.X, -_v1hs.Z)
local _v1hu = math.atan2(-_v1hp.X, -_v1hp.Z)
local _v1hv = math.clamp(math.atan2(math.sin(_v1hu - _v1ht), math.cos(_v1hu - _v1ht)),
-_v137 * (_v1ho or 0.016), _v137 * (_v1ho or 0.016))
if math.abs(_v1hv) < 1e-4 then return end
local _v1hw = CFrame.Angles(0, _v1hv, 0)
local _v1hx = _v1hq.Focus.Position
_v1hq.CFrame = CFrame.new(_v1hx + _v1hw * (_v1hr.Position - _v1hx)) * (_v1hw * _v1hr.Rotation)
end
local _v1hy = false
local function _v1hz()
if _v4.IS_XENO then return _vjb end
local _v1i0, _v1i1 = pcall(function() return isrbxactive() end)
if _v1i0 and type(_v1i1) == _ei9m[86] then return _v1i1 end
return _vjb
end
local function _v1i2()
if not _v1hy then return end
_v1hy = false
local _v1i3 = _v4.getCS()
if _v1i3 and _v1i3.Controls then pcall(function() _v1i3.Controls.WindowUnfocused = not _v1hz() end) end
if getgenv then getgenv().EazyCheats_TabOut = nil end
end
_v4.lfRestoreInput = _v1i2
function _v4.lfKeepInput()
if not (_v4.LEGIT_FARM and _v4.LF_TABOUT) or _v4.UNLOADED then _v1i2() return end
if _v1hz() then _v1i2() return end
local _v1i4 = _v4.getCS()
local _v1i5 = _v1i4 and _v1i4.Controls
if not _v1i5 then return end
_v1hy = true
if _v1i5.WindowUnfocused ~= false then pcall(function() _v1i5.WindowUnfocused = false end) end
if _v1i5.InputWasBlocked == true then pcall(function() _v1i5.InputWasBlocked = false end) end
if getgenv then
getgenv().EazyCheats_TabOut = (_v4.lfHeld.Forward and ((_v4.lfHeld.Run and _ei9m[3+1272] or _ei9m[3+1347]) .. _ei9m[287+432]))
or (_v4.lfFly and _ei9m[1565+929]) or (_v4.lfResting and _ei9m[6+709]) or _ei9m[1731-9]
end
end
table.insert(_v2l, _v1.RenderStepped:Connect(_v4.lfAdvance))
table.insert(_v2l, _v1.Heartbeat:Connect(_v4.lfPin))
pcall(function()
_v1:BindToRenderStep(_ei9m[590-11], Enum.RenderPriority.Camera.Value + 2, _v4.lfSteer)
end)
end
_v4.lfSetup()
function _v4.asSetup()
local _v1i6 = game:GetService(_ei9m[91])
_v4.asDone = {}
_v4.asSkip = {}
_v4.asStatus = _ei9m[2556]
local function _v1i7()
local _v1i8
pcall(function() _v1i8 = _v4.req(_v1i6.Packages.Knit) end)
return _v1i8
end
local function _v1i9()
local _v1ia
pcall(function() _v1ia = _v1i7().GetController(_ei9m[1074]) end)
return _v1ia
end
local function _v1ib(_v1ic)
local _v1id
pcall(function() _v1id = _v4.req(_v1i6.DinosaurData[_v1ic]) end)
return _v1id
end
local function _v1ie(_v1if, _v1ig)
pcall(function() if _v4.Hub then _v4.Hub:Notify(_ei9m[329-19] .. _v1if, _v1ig or 6) end end)
end
local function _v1ih()
local _v1ii = _v1i7()
return (_v1ii and _v1ii.Roster) or {}
end
local function _v1ij(_v1ik)
local _v1il
pcall(function() _v1il = _v1i9().Dinosaurs[_v1ik] end)
return _v1il and true or false
end
local function _v1im(_v1in)
local _v1io
pcall(function()
local _v1ip = tonumber(_v1i9().DinosaursData[_v1in].Pricing.Amber)
if _v1ip and _v1ip > 0 then
_v1io = _v1i7().GetController(_ei9m[914-20]):GetDinosaurAmberCost(_v1in)
end
end)
return tonumber(_v1io)
end
local function _v1iq()
local _v1ir
pcall(function() _v1ir = _v1i9().Currencies.Amber end)
return tonumber(_v1ir) or 0
end
local function _v1is(_v1it)
if _v1it >= 1e6 then return (math.floor(_v1it / 1e4 + 0.5) / 100) .. "M" end
if _v1it >= 1e3 then return math.floor(_v1it / 1e3 + 0.5) .. "K" end
return tostring(math.floor(_v1it))
end
function _v4.asAvailable()
local _v1iu = {}
for _v1iv, _v1iw in ipairs(_v1ih()) do
if _v1ij(_v1iw) then _v1iu[#_v1iu + 1] = _v1iw end
end
return _v1iu
end
function _v4.asLabel(_v1ix)
if not _v1ix or _v1ix == _ei9m[5+590] then return _ei9m[990+123] end
if _v1ij(_v1ix) then return _v1ix .. _ei9m[1608-7] end
local _v1iy = _v1im(_v1ix)
return _v1ix .. (_v1iy and (_ei9m[2865] .. _v1is(_v1iy) .. _ei9m[175+51]) or _ei9m[3041])
end
function _v4.asNameOf(_v1iz)
if type(_v1iz) ~= _ei9m[1579+302] then return nil end
return _v1iz:match(_ei9m[1617]) or _v1iz
end
function _v4.asItems()
local _v1j0 = { _ei9m[52+54] }
for _v1j1, _v1j2 in ipairs(_v1ih()) do _v1j0[#_v1j0 + 1] = _v4.asLabel(_v1j2) end
return _v1j0
end
_v4.asDropdowns = {}
function _v4.asRefreshLists()
local _v1j3 = _v4.asItems()
for _v1j4 = 1, 6 do
local _v1j5 = _v4.asDropdowns[_v1j4]
if _v1j5 and _v1j5.Refresh then pcall(function() _v1j5:Refresh(_v1j3, true) end) end
local _v1j6 = _v4.AS_SLOTS and _v4.AS_SLOTS[_v1j4]
if _v1j5 and _v1j5.Set and _v1j6 and _v1j6 ~= _ei9m[515] then pcall(function() _v1j5:Set(_v4.asLabel(_v1j6), true) end) end
end
end
local function _v1j7(_v1j8)
local _v1j9, _v1ja = _v1ib(_v1j8), nil
pcall(function() _v1ja = _v4.req(_v1i6.Common.GetGrowthIndex):GetHighestGrowthStage(_v1j9.GrowthStages) end)
return _v1ja
end
local function _v1jb(_v1jc)
local _v1jd
pcall(function()
_v1jd = _v1i9().Replica.Data[_ei9m[423+521] .. _v1jc .. "_" .. (_v4.saveGender(_v4.AS_GENDER) or _ei9m[2584-1]) .. "_1"].Growth.Stage
end)
return _v1jd
end
local function _v1je(_v1jf, _v1jg)
if not _v1jg then return false end
if _v1jg == _ei9m[7+653] then return true, _ei9m[1766-5] end
if _v1jg == _v1j7(_v1jf) then return true, _ei9m[3+345] .. _v1jg .. _ei9m[2895-20] end
return false
end
pcall(function() _v4.AS_DONE_FILE = _ei9m[2005] .. _v2.UserId .. _ei9m[1905+59] end)
function _v4.asDoneRead()
local _v1jh, _v1ji = pcall(function()
return game:GetService(_ei9m[2226-17]):JSONDecode(readfile(_v4.AS_DONE_FILE))
end)
return (_v1jh and type(_v1ji) == _ei9m[3030-15] and type(_v1ji.list) == _ei9m[1137+1794]) and _v1ji or { list = {} }
end
function _v4.asDoneAdd(_v1jj, _v1jk)
if type(_v1jj) ~= _ei9m[1891-9] or not _v4.AS_DONE_FILE then return end
_v1jk = (_v1jk == "F" or _v1jk == _ei9m[4+305]) and _ei9m[1127-19] or _ei9m[1391-7]
local _v1jl = _v4.asDoneRead()
for _v1jm, _v1jn in ipairs(_v1jl.list) do
if _v1jn.sp == _v1jj and _v1jn.g == _v1jk then return end
end
local _v1jo
pcall(function() _v1jo = _v1i7().Ecosystem end)
table.insert(_v1jl.list, { sp = _v1jj, g = _v1jk, map = _v1jo, t = os.time() })
pcall(function()
if not isfolder(_ei9m[2859]) then makefolder(_ei9m[16]) end
writefile(_v4.AS_DONE_FILE, game:GetService(_ei9m[1712+14]):JSONEncode(_v1jl))
end)
end
function _v4.asRefreshDone()
for _v1jp, _v1jq in ipairs(_v1ih()) do
if _v1ij(_v1jq) and _v1je(_v1jq, _v1jb(_v1jq)) then _v4.asDoneAdd(_v1jq, _v4.AS_GENDER) end
end
local _v1jr = {}
for _v1js, _v1jt in ipairs(_v4.asDoneRead().list) do
_v1jr[#_v1jr + 1] = tostring(_v1jt.sp) .. (_v1jt.g == _ei9m[6+173] and _ei9m[1695+282] or _ei9m[2460-8])
end
local _v1ju = #_v1jr > 0 and (_ei9m[7+36] .. #_v1jr .. _ei9m[2418] .. table.concat(_v1jr, ", ")) or _ei9m[5+346]
local _v1jv = _v4.asDoneLabel
if _v1jv and _v1jv.SetText then pcall(function() _v1jv:SetText(_v1ju) end) end
return _v1ju
end
local function _v1jw()
local _v1jx = _v2.Character
return (_v1jx and _v1jx:GetAttribute(_ei9m[1020])) or _v2:GetAttribute(_ei9m[18+356])
end
local function _v1jy()
local _v1jz = _v4.getCS()
local _v1k0
pcall(function() _v1k0 = _v1jz.Replica.Data.Growth end)
local _v1k1 = _v1jw()
if type(_v1k0) ~= _ei9m[1661-12] or not _v1k1 then return false end
if _v1k0.Stage == _ei9m[2400] then return true, _ei9m[1281+54] end
if _v1k0.NextStage == _ei9m[2+2427] then return true, _ei9m[611+1918] .. tostring(_v1k0.Stage) .. _ei9m[1911] end
return false
end
local _v1k2 = {}
local function _v1k3(_v1k4)
if _v1k2[_v1k4] then return _v1k2[_v1k4] end
local _v1k5
pcall(function()
local _v1k6 = _v1ib(_v1k4).GrowthStages[_v1j7(_v1k4)]
_v1k6 = _v1k6[_v4.AS_GENDER or _ei9m[2326-18]] or _v1k6.Male or _v1k6
_v1k5 = tonumber(_v1k6.CoreStats.Weight)
end)
_v1k2[_v1k4] = _v1k5 or math.huge
return _v1k2[_v1k4]
end
local function _v1k7()
local _v1k8 = {}
if not _v4.AS_AUTO_ORDER then
local _v1k9 = {}
for _v1ka, _v1kb in ipairs(_v1ih()) do _v1k9[_v1kb] = true end
for _v1kc = 1, 6 do
local _v1kd = _v4.AS_SLOTS[_v1kc]
if _v1kd and _v1kd ~= _ei9m[1902-15] and _v1k9[_v1kd] then _v1k8[#_v1k8 + 1] = _v1kd end
end
if #_v1k8 > 0 then return _v1k8 end
end
for _v1ke, _v1kf in ipairs(_v1ih()) do _v1k8[#_v1k8 + 1] = _v1kf end
table.sort(_v1k8, function(_v1kg, _v1kh)
local _v1ki, _v1kj = _v1ij(_v1kg), _v1ij(_v1kh)
if _v1ki ~= _v1kj then return _v1ki end
local _v1kk, _v1kl = _v1k3(_v1kg), _v1k3(_v1kh)
if _v1kk ~= _v1kl then return _v1kk < _v1kl end
return _v1kg < _v1kh
end)
return _v1k8
end
local function _v1km(_v1kn)
local _v1ko = {}
for _v1kp, _v1kq in ipairs(_v1ih()) do _v1ko[_v1kq] = true end
local _v1kr = _v1iq()
for _v1ks, _v1kt in ipairs(_v1k7()) do
if _v1kt and _v1kt ~= _ei9m[7+69] and _v1kt ~= _v1kn and _v1ko[_v1kt] and not _v4.asDone[_v1kt] and not _v4.asSkip[_v1kt] then
if _v1ij(_v1kt) then
if not _v1je(_v1kt, _v1jb(_v1kt)) then return _v1kt end
elseif _v4.AS_AUTOBUY then
local _v1ku = _v1im(_v1kt)
if _v1ku and _v1ku <= _v1kr then return _v1kt, _v1ku end
end
end
end
return nil
end
local function _v1kv(_v1kw)
local _v1kx, _v1ky = {}, 0
for _v1kz, _v1l0 in ipairs(_v1k7()) do
if _v1l0 and _v1l0 ~= _ei9m[5+1805] then
if _v4.asSkip[_v1l0] or not _v1ij(_v1l0) then
_v1ky = _v1ky + 1
elseif _v1l0 == _v1kw or _v4.asDone[_v1l0] or _v1je(_v1l0, _v1jb(_v1l0)) then
_v1kx[#_v1kx + 1] = _v1l0
end
end
end
local _v1l1 = (#_v1kx > 0) and (_ei9m[996-16] .. table.concat(_v1kx, ", ")) or _ei9m[6+2253]
if _v1ky > 0 then _v1l1 = _v1l1 .. "; " .. _v1ky .. (_v4.AS_AUTOBUY and _ei9m[1235-20] or _ei9m[938+568]) end
return _v1l1 .. _ei9m[6+2471]
end
local function _v1l2(_v1l3)
return _v1l3 and _v1l3.FoundWater and not (_v1l3.Classifications and _v1l3.Classifications.IsSemiAquatic)
end
local function _v1l4()
local _v1l5 = _v4.getCS()
if _v2:GetAttribute(_ei9m[1076]) then return false, _ei9m[3+1827] end
if _v1l5 and _v1l5.MovementState == _ei9m[857] then return false, _ei9m[7+321] end
if _v1l2(_v1l5) then return false, _ei9m[1822] end
if _v1l5 and _v1l5.UsingTimedAction then return false, _ei9m[1948-11] end
local _v1l6 = false
pcall(function() _v1l6 = _v1l5.Classifications.IsApex and _v1l5.Movement:IsMoving() end)
if _v1l6 then return false, _ei9m[1904] end
return true
end
local _v1l7
local function _v1l8(_v1l9, _v1la, _v1lb)
if not _v1l7 then
_v1l7 = RaycastParams.new()
_v1l7.FilterType = Enum.RaycastFilterType.Include
local _v1lc = { workspace.Terrain }
local _v1ld = workspace:FindFirstChild(_ei9m[1047-18])
local _v1le = _v1ld and _v1ld:FindFirstChild(_ei9m[1233])
if _v1le then _v1lc[2] = _v1le end
_v1l7.FilterDescendantsInstances = _v1lc
_v1l7.IgnoreWater = false
end
local _v1lf = workspace:Raycast(Vector3.new(_v1l9, _v1lb, _v1la), Vector3.new(0, -3000, 0), _v1l7)
if not _v1lf then return nil end
return _v1lf.Position.Y, _v1lf.Material == Enum.Material.Water
end
local function _v1lg()
local _v1lh, _v1li = _v4.getLocalPhysicsRoot(), _v2.Character
if not (_v1lh and _v1li) then return false end
local _v1lj = _v1lh.Position
local _v1lk = _v1lj.Y + 1500
local _v1ll, _v1lm
for _v1ln = 20, 400, 20 do
for _v1lo = 0, 15 do
local _v1lp = _v1lo * math.pi / 8
local _v1lq, _v1lr = _v1lj.X + math.cos(_v1lp) * _v1ln, _v1lj.Z + math.sin(_v1lp) * _v1ln
local _v1ls, _v1lt = _v1l8(_v1lq, _v1lr, _v1lk)
if _v1ls and not _v1lt then _v1ll, _v1lm = Vector3.new(_v1lq, _v1ls, _v1lr), _v1ls break end
end
if _v1ll then break end
end
if not _v1ll then return false end
local _v1lu = 6
pcall(function()
local _v1lv = _v4.getCS().Alignment
local _v1lw = (_v1lv.RideHeight or 0) + (_v1lv.BodyHeightIncrease or 0)
if _v1lw > 0 then _v1lu = _v1lw end
end)
local _v1lx = _v1l8(_v1lj.X, _v1lj.Z, _v1lk) or _v1lj.Y
local _v1ly = math.max(_v1lx, _v1lm, _v1lj.Y) + 30
local _v1lz = { Vector3.new(_v1lj.X, _v1ly, _v1lj.Z), Vector3.new(_v1ll.X, _v1ly, _v1ll.Z), Vector3.new(_v1ll.X, _v1lm + _v1lu, _v1ll.Z) }
local _v1m0, _v1m1 = _v1lj, _v1lh.CFrame - _v1lh.CFrame.Position
for _v1m2, _v1m3 in ipairs(_v1lz) do
local _v1m4 = os.clock()
while (_v1m0 - _v1m3).Magnitude > 1 and os.clock() - _v1m4 < 30 and not _v4.UNLOADED do
local _v1m5 = task.wait()
_v1m0 = _v4.govNext(_v1m0, _v1m3, _v1m5)
pcall(function()
_v1li:SetAttribute(_ei9m[2033+290], _v1m0.Y)
_v1lh.CFrame = CFrame.new(_v1m0) * _v1m1
_v1lh.AssemblyLinearVelocity = Vector3.zero
_v1lh.AssemblyAngularVelocity = Vector3.zero
end)
end
end
_v4.flyLandUntil = os.clock() + 10
pcall(function() _v1li:SetAttribute(_ei9m[5+899], nil) end)
return true
end
_v4.asLeaveWater = _v1lg
local function _v1m6(_v1m7)
local _v1m8 = _v1i7()
local _v1m9 = _v1m8.GetService(_ei9m[2983+24])
local _v1ma = _v1m8.GetController(_ei9m[5+2721])
local _v1mb = _v4.getCS()
if os.clock() < (_v4.rtmFailUntil or 0) then return false end
_v1mb.UsingTimedAction = true
_v2:SetAttribute(_ei9m[6+3003], true)
if not pcall(function() _v1m9:BeginReturnToMenu() end) then
_v4.rtmFailUntil = os.clock() + 60
pcall(function() _v2:SetAttribute(_ei9m[2+231], false) end)
_v1mb.UsingTimedAction = false
return false
end
local _v1mc = 30
pcall(function() _v1mc = tonumber(_v1m9:GetReturnToMenuDuration()) or 30 end)
local _v1md = os.clock() + _v1mc + 1
local _v1me, _v1mf = true, false
while os.clock() < _v1md do
_v4.asStatus = _ei9m[767-6] .. math.ceil(_v1md - os.clock()) .. "s)"
local _v1mg = false
pcall(function() _v1mg = _v1mb.Classifications.IsApex and _v1mb.Movement:IsMoving() end)
if _v4.UNLOADED then
_v1me, _v1mf = false, true
break
end
if not _v1m7() or _v2:GetAttribute(_ei9m[1738+664])
or (_v1mb.Actions and _v1mb.Actions.Run) or _v1l2(_v1mb) or _v1mg then
_v1me = false
break
end
task.wait(0.2)
end
if _v1me then
_v1m9:Despawn()
_v1ma:StartMainMenu()
end
if _v1mf then
task.delay(math.max(0, _v1md - os.clock()), function()
pcall(function() _v1m9:Despawn() end)
pcall(function() _v1ma:StartMainMenu() end)
pcall(function() _v2:SetAttribute(_ei9m[1547], false) end)
pcall(function() _v1mb.UsingTimedAction = false end)
end)
return false
end
_v2:SetAttribute(_ei9m[2805-13], false)
_v1mb.UsingTimedAction = false
return _v1me
end
_v4.asSafeToLeave, _v4.asReturnToMenu = _v1l4, _v1m6
local function _v1mh(_v1mi, _v1mj)
_v1mj = _v4.saveGender(_v1mj) or _v4.saveGender(_v4.AS_GENDER) or _ei9m[1953+833]
local _v1mk = _v1i7()
local _v1ml = _v1mk.GetService(_ei9m[1791-17])
pcall(function()
local _v1mm = _v1mk.GetController(_ei9m[7+2450])
if _v1mm.WelcomeGui then
_v1mm.WelcomeGui:Destroy()
_v1mm.WelcomeGui = nil
_v1mm:StartMainMenu()
task.wait(2)
end
end)
local _v1mn = _ei9m[1790-1]
pcall(function() _v1mn = _v1i9().Replica.Data.SkinInventory[_v1mi].LastSelected or _ei9m[7+1220] end)
local _v1mo = _v1mk.GetController(_ei9m[2024])
local _v1mp = false
_v4.asSpawnInfo = nil
pcall(function()
if _v1mo:GetDeathGraceStatus(_v1mi).HoldingSlot == true then
pcall(function() _v1mo:EndDeathGrace(_v1mi) end)
_v1mp = _v1mo:GetDeathGraceStatus(_v1mi).HoldingSlot == true
_v4.asSpawnInfo = _ei9m[41] .. tostring(_v1mp)
end
end)
local _v1mq, _v1mr = os.clock() + 600, 0
while not _v1mp and os.clock() < _v1mq and not _v4.UNLOADED do
local _v1ms, _v1mt, _v1mu = pcall(function() return _v1mo:RequestSlot(_v1mi) end)
_v4.asSpawnInfo = _ei9m[2509] .. _v1mi .. _ei9m[1528] .. tostring(_v1ms and _v1mt) .. " " .. tostring(_v1ms and _v1mu or _v1mt)
if _v1ms and _v1mt then _v1mp = true break end
if not _v1ms then break end
if _v1mu == _ei9m[1481+917] then
_v4.asStatus = _ei9m[207] .. _v1mi
else
_v1mr = _v1mr + 1
_v4.asStatus = _ei9m[324-16] .. _v1mi .. " (" .. tostring(_v1mu) .. ")"
if _v1mr >= 3 then break end
end
task.wait(3)
end
if not _v1mp and os.clock() >= _v1mq then return false end
if _v1mp then task.wait(2) end
_v4.asStatus = _ei9m[546] .. _v1mi
local function _v1mv()
local _v1mw = _v2.Character
return _v1mw ~= nil and _v1mw.Parent ~= nil and _v1mw:GetAttribute(_ei9m[1797-4]) == _v1mi
end
local _v1mx, _v1my, _v1mz = os.clock() + 60, 0, 0
while os.clock() < _v1mx and not _v1mv() do
if _v1my < 3 and os.clock() >= _v1mz then
_v1my = _v1my + 1
_v1mz = os.clock() + 20
local _v1n0, _v1n1, _v1n2 = pcall(function()
return _v1ml:InitiateSpawning({ Species = _v1mi, Gender = _v1mj or _v4.AS_GENDER or _ei9m[1953], Skin = _v1mn, Variant = _ei9m[3014] })
end)
_v4.asSpawnInfo = (_v4.asSpawnInfo or "") .. _ei9m[641-7] .. _v1my .. _ei9m[884-19] .. tostring(_v1n0) .. " " .. tostring(_v1n1) .. " " .. tostring(_v1n2)
end
task.wait(0.5)
end
pcall(_v4.autoSpawnCleanupGUI)
if _v1mv() then _v4.closeMainMenu() end
return _v1mv() and true or false
end
_v4.asSpawnDino = _v1mh
function _v4.closeMainMenu()
local _v1n3
pcall(function() _v1n3 = _v1i7().GetController(_ei9m[2810]) end)
if _v1n3 then
pcall(function()
if _v1n3.currentMainMenuWindow and _v1n3.currentMainMenuWindow.Class then _v1n3.currentMainMenuWindow.Class:Destroy() end
_v1n3.currentMainMenuWindow = nil
end)
pcall(function() if _v1n3.MainMenuGui then _v1n3.MainMenuGui:Destroy() end _v1n3.MainMenuGui = nil end)
pcall(function() if _v1n3.BoostsGui then _v1n3.BoostsGui:Destroy() end _v1n3.BoostsGui = nil end)
end
pcall(function()
for _v1n4, _v1n5 in ipairs(_v2.PlayerGui:GetChildren()) do
if _v1n5.Name == _ei9m[6+2850] or _v1n5.Name == _ei9m[1774-5] then _v1n5:Destroy() end
end
end)
end
function _v4.asResumeTarget(_v1n6)
if _v4.AS_AUTO_ORDER then
local _v1n7, _v1n8 = _v1km(nil)
if _v1n7 then return _v1n7, _v1n8 end
end
if _v1n6 and _v1ij(_v1n6) and not _v1je(_v1n6, _v1jb(_v1n6)) then return _v1n6 end
local _v1n9, _v1na = _v1km(_v1n6)
if _v1n9 and not _v1na then return _v1n9 end
return _v1n6
end
function _v4.asMapsWithWork(_v1nb)
local _v1nc, _v1nd = {}, {}
local _v1ne, _v1nf = nil, {}
pcall(function() _v1ne = _v4.req(_v1i6.Modules.GamemodeUtils.GetRoster) end)
pcall(function()
local _v1ng = _ei9m[2030-7]
pcall(function() _v1ng = _v1i7().GetController(_ei9m[2944-12]).ChosenVersion or _v1ng end)
for _v1nh, _v1ni in pairs(_v4.req(_v1i6.Shared.LobbyData).Gamemodes[_v1ng].Survival.Ecosystems) do
if not _v1ni.Maintenance then _v1nf[_v1nh] = true end
end
end)
if not _v1ne then return _v1nc, _v1nd end
local _v1nj = {}
for _v1nk, _v1nl in ipairs(_v4.MAP_ORDER) do if _v1nf[_v1nl] then _v1nj[#_v1nj + 1] = _v1nl; _v1nf[_v1nl] = nil end end
local _v1nm = {}
for _v1nn in pairs(_v1nf) do _v1nm[#_v1nm + 1] = _v1nn end
table.sort(_v1nm)
for _v1no, _v1np in ipairs(_v1nm) do _v1nj[#_v1nj + 1] = _v1np end
local _v1nq = _v1iq()
for _v1nr, _v1ns in ipairs(_v1nj) do
if _v1ns ~= _v1nb then
local _v1nt, _v1nu = nil, false
pcall(function() _v1nt = _v1ne(_v1ns) end)
for _v1nr, _v1nw in ipairs(type(_v1nt) == _ei9m[7+2328] and _v1nt or {}) do
if not _v4.asDone[_v1nw] and not _v4.asSkip[_v1nw] then
if _v1ij(_v1nw) then
if not _v1je(_v1nw, _v1jb(_v1nw)) then _v1nu = true end
elseif _v4.AS_AUTOBUY then
local _v1nx = _v1im(_v1nw)
if _v1nx and _v1nx <= _v1nq then _v1nu = true end
end
end
if _v1nu then break end
end
if _v1nu then _v1nc[#_v1nc + 1] = _v1ns else _v1nd[#_v1nd + 1] = _v1ns end
end
end
return _v1nc, _v1nd
end
function _v4.asBuy(_v1ny)
local _v1nz, _v1o0 = false, nil
pcall(function() _v1nz, _v1o0 = _v1i7().GetService(_ei9m[2+2959]):PurchaseDinosaurWithAmber(_v1ny) end)
if _v1nz or _v1ij(_v1ny) then
pcall(_v4.asRefreshLists)
return true
end
_v4.asSkip[_v1ny] = true
return false, _v1o0
end
local function _v1o1(_v1o2, _v1o3)
_v4.asDone[_v1o2] = true
pcall(function()
local _v1o4 = _v2.Character
_v4.asDoneAdd(_v1o2, (_v1o4 and _v1o4:GetAttribute(_ei9m[6+2883])) or _v4.AS_GENDER)
_v4.asRefreshDone()
end)
local _v1o5, _v1o6 = _v1km(_v1o2)
_v1ie(_v1o2 .. _ei9m[531] .. _v1o3 .. _ei9m[3+958] .. (_v1o5 and (_ei9m[2+1973] .. _v1o5 .. (_v1o6 and (_ei9m[65+18] .. _v1is(_v1o6) .. _ei9m[3016]) or "") .. ".")
or (_ei9m[573] .. _v1kv(_v1o2) .. _ei9m[1427-10])), 10)
_v4.AS_BUSY = true
task.wait(1.5)
pcall(function() _v2.Character:SetAttribute(_ei9m[6+190], nil) end)
_v4.flyLandUntil = os.clock() + 15
local _v1o7, _v1o8 = nil, os.clock() + 300
while _v4.AUTO_SWITCH and not _v4.UNLOADED do
local _v1o9, _v1oa = _v1l4()
if _v1o9 then break end
if _v1oa == _ei9m[903+1227] or os.clock() > _v1o8 then
_v4.asDone[_v1o2] = nil
_v4.asRetryAt = os.clock() + 60
_v1ie(_ei9m[3+2633] .. _v1oa .. _ei9m[1480+1236], 6)
return
end
_v4.asStatus = _ei9m[2536] .. _v1oa
if _v1oa == _ei9m[3022] then
_v1o7 = _v1o7 or os.clock()
if os.clock() - _v1o7 > 5 then
_v4.asStatus = _ei9m[1491]
pcall(_v1lg)
_v1o7 = nil
task.wait(2)
end
else
_v1o7 = nil
end
task.wait(1)
end
if not (_v4.AUTO_SWITCH and not _v4.UNLOADED) then return end
if not _v1m6(function() return _v4.AUTO_SWITCH end) then
_v4.asDone[_v1o2] = nil
_v4.asRetryAt = os.clock() + 60
_v1ie(_ei9m[2332], 6)
return
end
task.wait(3)
while _v1o5 and _v1o6 do
local _v1ob, _v1oc = false, nil
pcall(function() _v1ob, _v1oc = _v1i7().GetService(_ei9m[2003]):PurchaseDinosaurWithAmber(_v1o5) end)
if _v1ob or _v1ij(_v1o5) then
_v1ie(_ei9m[2708-16] .. _v1o5 .. _ei9m[405-20] .. _v1is(_v1o6) .. _ei9m[2335-14], 8)
pcall(_v4.asRefreshLists)
break
end
_v1ie(_ei9m[2304] .. _v1o5 .. " (" .. tostring(_v1oc or _ei9m[2+2439]) .. _ei9m[7+1174], 8)
_v4.asSkip[_v1o5] = true
task.wait(3)
_v1o5, _v1o6 = _v1km(_v1o2)
end
if not _v1o5 then
local _v1od = _v1kv(_v1o2)
local _v1oe
pcall(function() _v1oe = _v1i7().Ecosystem end)
local _v1of, _v1og = {}, {}
if _v4.REJOIN and _v4.REJOIN_OK and _v4.asMapsWithWork then _v1of, _v1og = _v4.asMapsWithWork(_v1oe) end
if _v1of[1] and _v4.rjNextMap then
_v1ie(_ei9m[2169] .. tostring(_v1oe) .. _ei9m[2641-18] .. _v1of[1], 10)
task.wait(3)
if _v4.rjNextMap(_v1oe, _v1of[1], _v1og, _ei9m[6+1583] .. tostring(_v1oe) .. _ei9m[594]) then return end
end
if _v4.REJOIN and _v4.REJOIN_OK then _v1od = _v1od .. _ei9m[2404] end
_v1ie(_ei9m[2478], 6)
task.wait(3)
pcall(function() _v4.unloadScript() end)
pcall(_v4.leaveNote, _ei9m[1796], true)
pcall(function() _v2:Kick(_ei9m[1131] .. _v1od .. ".") end)
return
end
if not _v1mh(_v1o5) then
if _v4.rjSpawnRejoin and _v4.rjSpawnRejoin(_ei9m[315] .. _v1o5) then return end
if _v4.REJOIN and _v4.REJOIN_OK then
_v1ie(_ei9m[2+622] .. _v1o5 .. _ei9m[2030], 8)
return
end
_v1ie(_ei9m[2+45] .. _v1o5 .. _ei9m[362+883], 8)
if _v4.autoSwitchToggle then pcall(function() _v4.autoSwitchToggle:Set(false) end) end
else
_v1ie(_ei9m[4+814] .. _v1o5, 6)
end
end
function _v4.asRelog(_v1oh)
if _v4.AS_BUSY or _v4.asRelogging then return false end
local _v1oi = _v2.Character
local _v1oj = _v1oi and _v1oi.Parent and _v1oi:GetAttribute(_ei9m[4+1305])
if not _v1oj then return false end
local _v1ok = _v4.saveGender(_v1oi:GetAttribute(_ei9m[607+1002])) or _v4.AS_GENDER
_v4.asRelogging, _v4.AS_BUSY = true, true
_v1ie(_ei9m[1926] .. _v1oj .. " (" .. tostring(_v1oh) .. ")", 8)
local ok, err = pcall(function()
task.wait(1.5)
pcall(function() _v2.Character:SetAttribute(_ei9m[3036-12], nil) end)
_v4.flyLandUntil = os.clock() + 15
local _v1ol, _v1om = os.clock(), nil
while not _v4.UNLOADED and os.clock() - _v1ol < 300 do
local _v1on, _v1oo = _v1l4()
if _v1on then break end
_v4.asStatus = _ei9m[1819-12] .. _v1oo
if _v1oo == _ei9m[336+18] then
_v1om = _v1om or os.clock()
if os.clock() - _v1om > 5 then pcall(_v1lg) _v1om = nil task.wait(2) end
else
_v1om = nil
end
task.wait(1)
end
if _v4.UNLOADED or not _v1l4() then return end
if not _v1m6(function() return not _v4.UNLOADED end) then return end
task.wait(3)
_v4.asStatus = _ei9m[951] .. _v1oj
if not _v1mh(_v1oj, _v1ok) and _v4.rjSpawnRejoin then
_v4.rjSpawnRejoin(_ei9m[926-3] .. _v1oj .. _ei9m[1579+112])
end
end)
_v4.asRelogging, _v4.AS_BUSY = false, false
if not ok then _v1ie(_ei9m[5+3034] .. tostring(err), 8) end
return ok
end
_v4.ftElapsed, _v4.ftStatus = 0, _ei9m[1986]
local function _v1op()
_v1ie(_ei9m[3+818], 8)
for _v1oq, _v1or in ipairs({ { _ei9m[2028], _ei9m[1377-16] }, { _ei9m[2258+255], _ei9m[6+1544] },
{ _ei9m[2273], _ei9m[2018] } }) do
if _v4[_v1or[1]] and _v4[_v1or[2]] then pcall(function() _v4[_v1or[2]]:Set(false) end) end
_v4[_v1or[1]] = false
end
task.wait(2)
pcall(function() _v2.Character:SetAttribute(_ei9m[1130-14], nil) end)
_v4.flyLandUntil = os.clock() + 15
local _v1os = function() return _v4.FARM_TIMER and not _v4.UNLOADED end
local _v1ot = os.clock() + 300
while _v1os() and _v2.Character and os.clock() < _v1ot do
local _v1ou, _v1ov = _v1l4()
if _v1ou then
if _v1m6(_v1os) then break end
else
_v4.ftStatus = _ei9m[194] .. _v1ov
if _v1ov == _ei9m[446+152] then
_v4.ftWaterT = _v4.ftWaterT or os.clock()
if os.clock() - _v4.ftWaterT > 5 then pcall(_v1lg) _v4.ftWaterT = nil task.wait(2) end
else
_v4.ftWaterT = nil
end
end
task.wait(1)
end
if not _v1os() then return end
pcall(_v4.leaveNote, _ei9m[6+1006], true)
pcall(function()
_v2:Kick(_ei9m[2983-19] .. math.floor(_v4.FT_MINUTES or 0) .. _ei9m[260-8])
end)
end
task.spawn(function()
local _v1ow = os.clock()
while not _v4.UNLOADED do
task.wait(1)
local _v1ox = os.clock()
local _v1oy = math.min(_v1ox - _v1ow, 5)
_v1ow = _v1ox
if _v4.FARM_TIMER and (_v4.AFK_FARM or _v4.LEGIT_FARM) then
_v4.ftElapsed = _v4.ftElapsed + _v1oy
local _v1oz = (_v4.FT_MINUTES or 120) * 60 - _v4.ftElapsed
_v4.ftStatus = _ei9m[36] .. math.max(0, math.ceil(_v1oz / 60)) .. _ei9m[2+1625]
if _v1oz <= 300 and not _v4.ftWarned then
_v4.ftWarned = true
_v1ie(_ei9m[252+255], 8)
end
if _v1oz <= 0 and not _v4.AS_BUSY then
local _v1p0, _v1p1 = pcall(_v1op)
if not _v1p0 then _v1ie(_ei9m[2049] .. tostring(_v1p1), 8) end
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
local _v1p2, _v1p3 = _v1jy()
local _v1p4 = type(_v4.FARM_DINO) == _ei9m[11+4] and _v4.FARM_DINO ~= "" and _v4.FARM_DINO ~= _ei9m[1581+1387]
and _v1jw() == _v4.FARM_DINO
if _v1p2 and _v1p4 then
_v4.asStatus = _ei9m[5+1631] .. tostring(_v1jw())
elseif _v1p2 and os.clock() < (_v4.asRetryAt or 0) then
_v4.asStatus = _ei9m[1092-12] .. math.ceil(_v4.asRetryAt - os.clock()) .. "s"
elseif _v1p2 then
local _v1p5, _v1p6 = pcall(_v1o1, _v1jw(), _v1p3)
if not _v1p5 then _v1ie(_ei9m[2+2779] .. tostring(_v1p6), 8) end
_v4.AS_BUSY = false
else
_v4.asStatus = _ei9m[1134] .. tostring(_v1jw())
end
end
end
end)
end
_v4.asSetup()
_v4.RJ_FARMS = {
{ _ei9m[2123], _ei9m[6+2579], _ei9m[2006] }, { _ei9m[1587-6], _ei9m[37+584], _ei9m[2+2286] },
{ _ei9m[473], _ei9m[758-11], _ei9m[526-4] }, { _ei9m[828], _ei9m[2496+76], _ei9m[630+1071] },
{ _ei9m[1110+1713], _ei9m[2310], _ei9m[1201] },
}
function _v4.farmDinoPick(_v1p7, _v1p8)
local _v1p9 = _v4.FARM_DINO
if type(_v1p9) ~= _ei9m[1454-19] or _v1p9 == "" or _v1p9 == _ei9m[950-15] then return nil end
local _v1pa, _v1pb = pcall(_v4.asAvailable)
if not (_v1pa and type(_v1pb) == _ei9m[2430-4] and table.find(_v1pb, _v1p9)) then return nil, nil, _v1p9 end
return _v1p9, (_v1p7 == _v1p9 and _v1p8) or _v4.AS_GENDER or _v1p8
end
function _v4.cfgFarms(_v1pc)
local _v1pd, _v1pe = {}, false
for _v1pf, _v1pg in ipairs(_v4.RJ_FARMS) do
if _v1pc[_v1pg[1]] ~= nil then _v1pd[_v1pg[1]] = _v1pc[_v1pg[1]] == true; _v1pe = true end
end
if not _v1pe then return end
if not _v4.cfgApplied and _v4.REJOIN and _v4.REJOIN_OK and _v4.rejoinRead then
local _v1ph = _v4.rejoinRead()
local _v1pi = tonumber(_v1ph.t) ~= nil and os.time() - tonumber(_v1ph.t) < 1800
for _v1pj, _v1pk in pairs(type(_v1ph.farms) == _ei9m[790] and _v1ph.farms or {}) do
if _v1pk == true and _v1pi then return end
end
end
for _v1pl, _v1pm in ipairs(_v4.RJ_FARMS) do
if _v1pd[_v1pm[1]] == false and _v4[_v1pm[1]] and _v4[_v1pm[2]] then pcall(function() _v4[_v1pm[2]]:Set(false) end) end
end
_v4.cfgFarmsOwed = _v1pd.AUTO_SWITCH and { AUTO_SWITCH = true } or nil
end
function _v4.rejoinSetup()
local _v1pn = game:GetService(_ei9m[6+75])
local function _v1po()
local _v1pp
pcall(function() _v1pp = _v4.req(_v1pn.Packages.Knit) end)
return _v1pp
end
local function _v1pq(_v1pr, _v1ps)
pcall(function() if _v4.Hub then _v4.Hub:Notify(_ei9m[7+756] .. _v1pr, _v1ps or 6) end end)
end
local function _v1pt()
local _v1pu = _v2.Character
return _v1pu ~= nil and _v1pu.Parent ~= nil
end
function _v4.rejoinSave()
if _v4.UNLOADED then return end
if not _v4.REJOIN_OK or _v4.rjResuming then return end
local _v1pv = _v4.rejoinRead()
if _v1pv.map ~= nil and _v1pv.map ~= _v4.REJOIN_MAP then _v1pv.doneMaps, _v1pv.nextMap = nil, nil end
_v1pv.on, _v1pv.map = _v4.REJOIN and true or false, _v4.REJOIN_MAP
_v1pv.lowPopLeave, _v1pv.lowPopMin = _v4.LOW_POP_LEAVE and true or false, _v4.LOW_POP_MIN
_v1pv.farmDino = (type(_v4.FARM_DINO) == _ei9m[468+2106] and _v4.FARM_DINO ~= "") and _v4.FARM_DINO or nil
pcall(function() _v1pv.lastMap = _v1po().Ecosystem end)
if _v1pv.nextMap ~= nil and _v1pv.nextMap == _v1pv.lastMap then _v1pv.nextMap = nil end
_v1pv.lastJob = game.JobId
_v1pv.farms = {}
for _v1pw, _v1px in ipairs(_v4.RJ_FARMS) do _v1pv.farms[_v1px[1]] = _v4[_v1px[1]] and true or false end
if _v4.rjKeep then _v1pv.farms = _v4.rjKeep.farms end
if _v4.rjFinished then _v1pv.farms = {} end
_v1pv.ftElapsed = _v4.ftElapsed
_v1pv.t = os.time()
pcall(function() _v1pv.status = getgenv().EazyCheats_Status end)
pcall(function()
local _v1py = _v2.Character
_v1pv.dino = (_v1py and _v1py.Parent and _v1py:GetAttribute(_ei9m[1604-4])) or nil
end)
_v4.rejoinWrite(_v1pv)
end
function _v4.rejoinLeave(_v1pz)
if _v4.rjLeaving then return true end
if not (_v4.REJOIN_OK and _v4.REJOIN) then return false end
_v4.rjLeaving = true
_v4.rejoinSave()
_v1pq(_ei9m[591+101] .. _v1pz .. _ei9m[2115], 6)
local _v1q0 = pcall(function() game:GetService(_ei9m[851+1298]):Teleport(_v4.LOBBY_PLACE, _v2) end)
if not _v1q0 then _v4.rjLeaving = false return false end
task.delay(30, function()
if _v4.UNLOADED then return end
pcall(_v4.leaveNote, _v1pz, false)
pcall(function() _v2:Kick(_ei9m[209-14] .. _v1pz) end)
end)
return true
end
function _v4.rjSpawnRejoin(_v1q1)
if not (_v4.REJOIN_OK and _v4.REJOIN) then return false end
local _v1q2 = _v4.rejoinRead()
if tonumber(_v1q2.spawnRejoinT) and os.time() - tonumber(_v1q2.spawnRejoinT) < 1200 then return false end
_v1q2.spawnRejoinT = os.time()
_v4.rejoinWrite(_v1q2)
_v4.rjResuming = false
return _v4.rejoinLeave(_v1q1) and true or false
end
function _v4.rjNextMap(_v1q3, _v1q4, _v1q5, _v1q6)
if not (_v4.REJOIN_OK and _v4.REJOIN) then return false end
local _v1q7 = _v4.rejoinRead()
local _v1q8 = {}
if type(_v1q3) == _ei9m[640+1592] then _v1q8[_v1q3] = os.time() end
for _v1q9, _v1qa in ipairs(type(_v1q5) == _ei9m[1498-17] and _v1q5 or {}) do _v1q8[_v1qa] = os.time() end
_v1q7.doneMaps, _v1q7.nextMap = _v1q8, _v1q4
_v4.rejoinWrite(_v1q7)
_v4.rjResuming = false
return _v4.rejoinLeave(_v1q6) and true or false
end
local function _v1qb(_v1qc)
local _v1qd
pcall(function() _v1qd = _v1po().GetController(_ei9m[83+1500]).Replica.Data[_ei9m[1509] .. _v1qc] end)
if type(_v1qd) == _ei9m[2646-13] and type(_v1qd[1]) == _ei9m[2912] then return _v1qd[1], _v1qd[2] end
return nil
end
local function _v1qe(_v1qf, _v1qg)
local _v1qh = {}
for _v1qi, _v1qj in ipairs(_v4.RJ_FARMS) do
if _v1qf[_v1qj[1]] and _v4[_v1qj[2]] and not _v4[_v1qj[1]] and not _v4.UNLOADED then
pcall(function() _v4[_v1qj[2]]:Set(true) end)
_v1qh[#_v1qh + 1] = _v1qj[3]
end
end
if _v1qf.FARM_TIMER and tonumber(_v1qg.ftElapsed) then _v4.ftElapsed = tonumber(_v1qg.ftElapsed) end
_v1pq(#_v1qh > 0 and (_ei9m[1886-9] .. table.concat(_v1qh, ", ")) or _ei9m[2958], 8)
end
local function _v1qk(_v1ql)
local _v1qm = type(_v1ql.farms) == _ei9m[1876-19] and _v1ql.farms or {}
local _v1qn = (getgenv and getgenv()) or {}
local _v1qo = tonumber(_v1qn.EazyCheats_RjSpawnAt)
if not _v1pt() and _v1qo and os.clock() - _v1qo < 75 then
local _v1qp = _v1qo + 75
while not _v1pt() and os.clock() < _v1qp and not _v4.UNLOADED do task.wait(0.5) end
end
if not _v1pt() then
local _v1qq
pcall(function() _v1qq = _v1po().Ecosystem end)
local _v1qr, _v1qs = _v1qb(tostring(_v1qq))
local _v1qt, _v1qu, _v1qv = _v4.farmDinoPick(_v1qr, _v1qs)
if _v1qv and _v4.rjFarmDinoSaid ~= _v1qv then
_v4.rjFarmDinoSaid = _v1qv
_v1pq(_ei9m[338+70] .. _v1qv .. _ei9m[2406-1]
.. (_v1qm.AUTO_SWITCH and _ei9m[7+2097] or _ei9m[2018+202]) .. _ei9m[650-1], 10)
end
if _v1qt then
_v1qr, _v1qs = _v1qt, _v1qu
elseif _v1qm.AUTO_SWITCH and _v4.asResumeTarget then
for _v1qw = 1, 4 do
local _v1qx, _v1qy = _v4.asResumeTarget(_v1qr)
if not _v1qx then break end
if _v1qy then
_v1pq(_ei9m[1236-6] .. _v1qx .. " (" .. tostring(_v1qy) .. _ei9m[3+352], 6)
if not _v4.asBuy(_v1qx) then
_v1pq(_ei9m[3+2261] .. _v1qx .. _ei9m[3+377], 6)
task.wait(3)
continue
end
task.wait(2)
end
if _v1qx ~= _v1qr then _v1qr, _v1qs = _v1qx, _v4.AS_GENDER end
break
end
end
if not _v1qr then
_v4.rjKeep = { farms = _v1qm, st = _v1ql }
_v1pq(_ei9m[6+940] .. tostring(_v1qq) .. _ei9m[7+724], 10)
return
end
if not _v1pt() and _v4.atDeployMenu and _v4.atDeployMenu() then
for _v1qz = 1, 50 do
if _v4.UNLOADED or not _v4.REJOIN then return end
if _v1pt() then _v4.rjKeep = { farms = _v1qm, st = _v1ql } return end
task.wait(0.5)
end
end
_v1pq(_ei9m[56+1273] .. _v1qr .. " (" .. tostring(_v1qs or _ei9m[7+693]) .. ")", 6)
_v4.rjSpawning = true
local _v1r0 = false
for _v1r1 = 1, 3 do
if _v4.UNLOADED or not _v4.REJOIN then break end
if _v1pt() then _v1r0 = true break end
_v1qn.EazyCheats_RjSpawnAt = os.clock()
local _v1r2, _v1r3 = pcall(_v4.asSpawnDino, _v1qr, _v1qs)
if (_v1r2 and _v1r3) or _v1pt() then _v1r0 = true break end
task.wait(10)
end
_v4.rjSpawning = false
if _v4.UNLOADED then return end
if not _v1r0 then
_v4.rjKeep = { farms = _v1qm, st = _v1ql }
if _v4.rjSpawnRejoin and _v4.rjSpawnRejoin(_ei9m[2430] .. _v1qr) then return end
_v1pq(_ei9m[917-20] .. _v1qr .. _ei9m[6+1951], 10)
return
end
task.wait(3)
end
_v1qe(_v1qm, _v1ql)
end
local _v1r4 = { _ei9m[4+5], _ei9m[669], _ei9m[844-14], _ei9m[7+1113], _ei9m[3+28],
_ei9m[181+2382], _ei9m[327+513], _ei9m[2872-11], _ei9m[5+2009], _ei9m[1115+499], _ei9m[583+65], _ei9m[174+1497], _ei9m[1552-17],
_ei9m[1648-8], _ei9m[1480-1], _ei9m[6+1326], _ei9m[564-4] }
local function _v1r5()
local _v1r6 = game:GetService(_ei9m[4+764])
local _v1r7
pcall(function() _v1r7 = readfile(_ei9m[2+2517]):gsub(_ei9m[17+1532], "") end)
if not _v1r7 or _v1r7 == "" then return end
local _v1r8 = os.clock() + 60
while not _v4.cfgApplied and os.clock() < _v1r8 and not _v4.UNLOADED do task.wait(1) end
pcall(function()
local _v1r9 = _v1r6:JSONDecode(readfile(_ei9m[6+12] .. _v1r7 .. _ei9m[4+602]))
for _v1ra, _v1rb in ipairs(_v1r4) do
if _v1r9[_v1rb] ~= nil then _v4[_v1rb] = _v1r9[_v1rb] end
end
end)
end
task.spawn(function()
task.wait(8)
local _v1rc = _v4.rejoinRead()
local _v1rd = tonumber(_v1rc.pending) and os.time() - _v1rc.pending < 900
local _v1re = false
for _v1rf, _v1rg in pairs(type(_v1rc.farms) == _ei9m[1846] and _v1rc.farms or {}) do
if _v1rg == true then _v1re = true end
end
local _v1rh = tonumber(_v1rc.t) ~= nil and os.time() - tonumber(_v1rc.t) < 1800
local _v1ri = _v1re and _v1rh and _v1rc.lastJob ~= nil
local _v1rj = _v1re and _v1rh and _v4.rjReloaded and _v1rc.lastJob == game.JobId
if _v4.REJOIN_OK and _v4.REJOIN and not _v4.UNLOADED and (_v1rd or _v1ri or _v1rj) then
_v1r5()
_v4.rjResuming = true
local _v1rk, _v1rl = pcall(_v1qk, _v1rc)
_v4.rjResuming, _v4.rjSpawning = false, false
if not _v4.UNLOADED then
local _v1rm = _v4.rejoinRead()
_v1rm.pending = nil
_v4.rejoinWrite(_v1rm)
end
if not _v1rk then _v1pq(_ei9m[510+1209] .. tostring(_v1rl), 8) end
end
while not _v4.UNLOADED do
if _v4.rjKeep and (not _v4.REJOIN or not _v4.REJOIN_OK) then _v4.rjKeep = nil end
if _v4.rjKeep and _v1pt() then
local _v1rn = _v4.rjKeep
task.wait(3)
_v4.rjKeep = nil
if _v1pt() then pcall(_v1qe, _v1rn.farms, _v1rn.st) end
end
if _v4.REJOIN_OK and _v4.REJOIN and not _v1pt() and not _v4.AS_BUSY and not _v4.rjSpawning
and not _v4.deathBusy and not _v4.rjResuming
and (_v4.rjKeep or _v4.cfgFarmsOwed or _v4.LEGIT_FARM or _v4.AFK_FARM or _v4.AUTO_SWITCH) then
local _v1ro
pcall(function() _v1ro = _v1po().GetController(_ei9m[2322-9]).RevivalGui end)
if _v1ro then
_v4.rjNoDinoSince = nil
else
_v4.rjNoDinoSince = _v4.rjNoDinoSince or os.clock()
end
if _v4.rjNoDinoSince and os.clock() - _v4.rjNoDinoSince > 120 and os.clock() - (_v4.rjRetryAt or 0) > 180 then
_v4.rjRetryAt, _v4.rjNoDinoSince = os.clock(), nil
local _v1rp = _v4.rejoinRead()
local _v1rq = _v4.rjKeep and _v4.rjKeep.farms
if not _v1rq then
_v1rq = {}
for _v1rr, _v1rs in ipairs(_v4.RJ_FARMS) do _v1rq[_v1rs[1]] = _v4[_v1rs[1]] and true or false end
end
_v1rp.farms = _v1rq
_v1pq(_ei9m[1245+255], 8)
_v4.rjResuming = true
local _v1rt, _v1ru = pcall(_v1qk, _v1rp)
_v4.rjResuming, _v4.rjSpawning = false, false
if not _v1rt then _v1pq(_ei9m[143] .. tostring(_v1ru), 8) end
end
else
_v4.rjNoDinoSince = nil
end
if _v1pt() and (_v4.LEGIT_FARM or _v4.AFK_FARM or _v4.AUTO_SWITCH) and not _v4.AS_BUSY and not _v4.rjSpawning
and _v2.PlayerGui:FindFirstChild(_ei9m[2151-9]) then
_v4.rjMenuSince = _v4.rjMenuSince or os.clock()
if os.clock() - _v4.rjMenuSince > 10 then
_v4.rjMenuSince = nil
_v4.closeMainMenu()
end
else
_v4.rjMenuSince = nil
end
do
local _v1rv, _v1rw = _v2.Character, _v2.ReplicationFocus
if _v1pt() and (_v4.LEGIT_FARM or _v4.AFK_FARM or _v4.AUTO_SWITCH) and not _v4.AS_BUSY
and not _v4.rjSpawning and not _v4.rjResuming and _v4.asRelog and _v1rv
and (_v2:GetAttribute(_ei9m[2545-17]) == true or (_v1rw ~= nil and not _v1rw:IsDescendantOf(_v1rv))) then
_v4.rjFocusSince = _v4.rjFocusSince or os.clock()
if os.clock() - _v4.rjFocusSince > 20 and os.clock() - (_v4.rjRelogAt or -1e9) > 600 then
_v4.rjRelogAt, _v4.rjFocusSince = os.clock(), nil
task.spawn(_v4.asRelog, _ei9m[5+1208])
end
else
_v4.rjFocusSince = nil
end
end
if _v4.LOW_POP_LEAVE and _v4.REJOIN and not _v4.rjLeaving and _v1pt()
and (_v4.LEGIT_FARM or _v4.AFK_FARM or _v4.AUTO_SWITCH) then
if #_v0:GetPlayers() < (tonumber(_v4.LOW_POP_MIN) or 80) then
_v4.lowPopSince = _v4.lowPopSince or os.clock()
if os.clock() - _v4.lowPopSince > 30 then
_v4.lowPopSince = nil
_v4.rejoinLeave(_ei9m[3054] .. tostring(_v4.LOW_POP_MIN or 80))
end
else
_v4.lowPopSince = nil
end
else
_v4.lowPopSince = nil
end
if _v4.cfgFarmsOwed and _v1pt() and not _v4.rjResuming and not _v4.rjSpawning and not _v4.AS_BUSY then
local _v1rx = _v4.cfgFarmsOwed
_v4.cfgFarmsOwed = nil
task.wait(3)
for _v1ry, _v1rz in ipairs(_v4.RJ_FARMS) do
if _v1rx[_v1rz[1]] and _v1pt() and _v4[_v1rz[2]] and not _v4[_v1rz[1]] and not _v4.UNLOADED then
pcall(function() _v4[_v1rz[2]]:Set(true) end)
end
end
end
if _v4.REJOIN then _v4.rejoinSave() end
pcall(function()
local _v1s0 = (_v4.LEGIT_FARM and (_ei9m[1359-3] .. tostring(_v4.lfStatus)))
or (_v4.AFK_FARM and (_ei9m[958+1024] .. ((_v4.CLEAN_BREAK and _ei9m[2627-16]) or (_v4.afkSafetyState and (_ei9m[626+752] .. tostring(_v4.afkSafetyState) .. ")")) or "on")))
or _ei9m[4+699]
local _v1s1 = _v4.AUTO_SWITCH and (_ei9m[1110-3] .. (_v4.AS_AUTO_ORDER and _ei9m[869+120] or "")
.. ": " .. tostring(_v4.asStatus)) or _ei9m[1061-18]
getgenv().EazyCheats_Status = _v1s0 .. _ei9m[1244-8] .. _v1s1
end)
task.wait(5)
end
end)
end
_v4.rejoinSetup()
function _v4.deathSetup()
local _v1s2 = game:GetService(_ei9m[6+65])
local function _v1s3()
local _v1s4
pcall(function() _v1s4 = _v4.req(_v1s2.Packages.Knit) end)
return _v1s4
end
local function _v1s5(_v1s6, _v1s7)
pcall(function() if _v4.Hub then _v4.Hub:Notify(_ei9m[3002] .. _v1s6, _v1s7 or 6) end end)
end
local function _v1s8()
return _v4.AFK_FARM or _v4.LEGIT_FARM or _v4.FOSSIL_FARM or _v4.AUTO_SWITCH
end
local function _v1s9(_v1sa)
pcall(function() _v1:UnbindFromRenderStep(_ei9m[2247-1]) end)
if not pcall(function() _v1sa:Destroy() end) then
pcall(function() if _v1sa.gui then _v1sa.gui.Enabled = false end end)
end
pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
end
local function _v1sb(_v1sc)
local _v1sd, _v1se = _v1sc.dinosaur, _v1sc.gender
if type(_v1sd) ~= _ei9m[369+1931] then return end
_v1s5(_ei9m[2153] .. _v1sd, 6)
task.wait(4)
if _v1sc.finished or not _v1s8() or _v4.UNLOADED then return end
_v1sc.finished = true
local _v1sf = _v1s3()
pcall(function() _v1sf.GetService(_ei9m[2517]):RevivalScreenClosed() end)
pcall(function() _v1sf.GetController(_ei9m[905]):EndDeathGrace(_v1sd) end)
_v4.rjSpawning = true
local _v1sg, _v1sh = pcall(_v4.asSpawnDino, _v1sd, _v1se)
_v4.rjSpawning = false
if _v1sg and _v1sh then
_v1s9(_v1sc)
_v1s5(_ei9m[6+2884] .. _v1sd .. _ei9m[6+1138], 6)
else
_v1sc.finished = false
_v1s5(_ei9m[1592-10] .. _v1sd .. _ei9m[1871+631], 10)
end
end
task.spawn(function()
while not _v4.UNLOADED do
task.wait(1)
local _v1si
pcall(function() _v1si = _v1s3().GetController(_ei9m[3+500]).RevivalGui end)
if _v1si and not _v1si.fromMenu and not _v1si.finished and _v1s8() and _v4.asSpawnDino and not _v4.deathBusy then
_v4.deathBusy = true
local _v1sj, _v1sk = pcall(_v1sb, _v1si)
if not _v1sj then _v1s5(_ei9m[759-11] .. tostring(_v1sk), 8) end
_v4.deathBusy = false
end
end
end)
end
_v4.deathSetup()
pcall(function() _v4.VirtualUser = game:GetService(_ei9m[738-8]) end)
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
local _v1sl = _v2.Character
local _v1sm = _v1sl and _v1sl:GetAttribute(_ei9m[62+1124])
if not _v1sm then return nil end
if _v4.growthShared and _v4.growthShared.sp == _v1sm then return _v4.growthShared.v end
local _v1sn
pcall(function() _v1sn = _v4.req(_v4.WATER_RS.DinosaurData[_v1sm]).Shared.Growth end)
_v4.growthShared = { sp = _v1sm, v = _v1sn }
return _v1sn
end
function _v4.dinoNutritionCats()
local _v1so = _v2.Character
local _v1sp = _v1so and _v1so:GetAttribute(_ei9m[452-14])
if not _v1sp then return nil end
if _v4.nutCats and _v4.nutCats.sp == _v1sp then return _v4.nutCats.v end
local _v1sq
pcall(function()
local _v1sr = {}
for _v1ss, _v1st in ipairs(_v4.req(_v4.WATER_RS.DinosaurData[_v1sp]).Shared.Nutrition) do
if type(_v1st) == _ei9m[3+1136] and _v1st.Category then _v1sr[#_v1sr + 1] = tostring(_v1st.Category) end
end
_v1sq = _v1sr
end)
_v4.nutCats = { sp = _v1sp, v = _v1sq }
return _v1sq
end
function _v4.dinoStageWeights()
local _v1su = _v2.Character
local _v1sv = _v1su and _v1su:GetAttribute(_ei9m[2715])
if not _v1sv then return nil end
if _v4.stageWeights and _v4.stageWeights.sp == _v1sv then return _v4.stageWeights.v end
local _v1sw
pcall(function()
local _v1sx = _v4.req(_v4.WATER_RS.DinosaurData[_v1sv])
local _v1sy = {}
for _v1sz, _v1t0 in pairs(_v1sx.GrowthStages) do
local _v1t1 = _v1t0.CoreStats and _v1t0.CoreStats.Weight
if type(_v1t1) == _ei9m[456] then _v1sy[tostring(_v1sz)] = _v1t1 end
end
_v1sw = _v1sy
end)
_v4.stageWeights = { sp = _v1sv, v = _v1sw }
return _v1sw
end
function _v4.liteGrowthOf(_v1t2, _v1t3, _v1t4)
if type(_v1t4) ~= _ei9m[1937-20] or _v1t2 == nil then return nil end
local _v1t5 = _v1t4[tostring(_v1t2)]
if type(_v1t5) ~= _ei9m[379-19] then return nil end
local _v1t6, _v1t7
for _v1t8, _v1t9 in pairs(_v1t4) do
if type(_v1t9) == _ei9m[51+265] and _v1t9 > _v1t5 and (not _v1t7 or _v1t9 < _v1t7) then _v1t6, _v1t7 = _v1t8, _v1t9 end
end
local _v1ta = { Stage = tostring(_v1t2) }
if not _v1t6 then _v1ta.final = true return _v1ta end
_v1ta.NextStage, _v1ta.span = _v1t6, _v1t7 - _v1t5
if type(_v1t3) == _ei9m[3+74] then _v1ta.Delta = math.clamp((_v1t3 - _v1t5) / _v1ta.span, 0, 1) end
return _v1ta
end
function _v4.fmtLeft(_v1tb)
_v1tb = math.floor(_v1tb + 0.5)
if _v1tb <= 0 then return _ei9m[6+2182] end
if _v1tb < 60 then return "~" .. _v1tb .. _ei9m[2987] end
if _v1tb < 3600 then return "~" .. math.floor(_v1tb / 60) .. _ei9m[2101-9] end
return string.format(_ei9m[2510-18], math.floor(_v1tb / 3600), math.floor(_v1tb % 3600 / 60))
end
function _v4.litePaceEta(_v1tc, _v1td)
if type(_v1tc) ~= _ei9m[1333-5] then return "" end
if _v1tc.final then return _ei9m[3+46] end
local _v1te, _v1tf = 0, 0
for _v1tg, _v1th in ipairs(_v1td or {}) do _v1te = _v1te + _v1th[1]; _v1tf = _v1tf + _v1th[2] end
if #(_v1td or {}) < 2 or _v1tf < 60 or _v1te <= 0 or not _v1tc.Delta or not _v1tc.span then return _ei9m[1139-6] end
return "(" .. _v4.fmtLeft((1 - _v1tc.Delta) * _v1tc.span / (_v1te / _v1tf)) .. _ei9m[889]
end
function _v4.stageSpan(_v1ti)
if type(_v1ti) ~= _ei9m[1947-13] then return nil end
local _v1tj = _v4.dinoStageWeights()
local _v1tk, _v1tl = _v1tj and _v1ti.Stage and _v1tj[tostring(_v1ti.Stage)], _v1tj and _v1ti.NextStage and _v1tj[tostring(_v1ti.NextStage)]
if not (_v1tk and _v1tl) or _v1tl <= _v1tk then return nil end
return _v1tl - _v1tk
end
task.spawn(function()
local _v1tm = not _v4.CAP.charstate
local _v1tn = (not _v1tm) and _v4.requireCS() or nil
local _v1to = _v1tn ~= nil
if (_v1to and _v1tn and _v4.ReplicaSetRemote) or _v1tm then
local _v1tp, _v1tq, _v1tr = os.clock(), 30, {}
local _v1ts, _v1tt, _v1tu = {}, nil, nil
local _v1tv, _v1tw = {}, 0
local _v1tx, _v1ty = {}, nil
local _v1tz = 0.75
local _v1u0 = 0
local _v1u1 = 8
local _v1u2, _v1u3 = nil, os.clock()
local _v1u4 = 3
local _v1u5
pcall(function() _v1u5 = _v4.req(_v4.WATER_RS.Shared.WellbeingData) end)
local function _v1u6()
local _v1u7 = _v4.dinoGrowthShared and _v4.dinoGrowthShared()
local _v1u8 = _v1u7 and _v1u7.StateMultipliers
if type(_v1u8) ~= _ei9m[505+60] then return nil end
local _v1u9
for _v1ua, _v1ub in pairs(_v1u8) do
if type(_v1ub) == _ei9m[4+1769] and (not _v1u9 or _v1ub > _v1u9) then _v1u9 = _v1ub end
end
return _v1u9
end
local function _v1uc()
local _v1ud = _v1u5 and _v1u5.NutritionSettings and _v1u5.NutritionSettings.MassGainMultiplier
if type(_v1ud) ~= _ei9m[2196-2] then return nil end
local _v1ue
for _v1uf, _v1ug in ipairs(_v1ud) do
if type(_v1ug) == _ei9m[2+1026] and type(_v1ug.Multiplier) == _ei9m[98-13] and (not _v1ue or _v1ug.Multiplier > _v1ue) then
_v1ue = _v1ug.Multiplier
end
end
return _v1ue
end
local function _v1uh(_v1ui)
local _v1uj = _v1u5 and _v1u5.NutritionSettings and _v1u5.NutritionSettings.MassGainMultiplier
if type(_v1uj) ~= _ei9m[29] or type(_v1ui) ~= _ei9m[1007+211] then return nil end
local _v1uk, _v1ul
for _v1um, _v1un in ipairs(_v1uj) do
if type(_v1un) == _ei9m[974-10] and type(_v1un.Value) == _ei9m[605] and type(_v1un.Multiplier) == _ei9m[247+2610]
and _v1un.Value <= _v1ui + 1e-6 and (not _v1ul or _v1un.Value > _v1ul) then _v1uk, _v1ul = _v1un.Multiplier, _v1un.Value end
end
return _v1uk
end
local function _v1uo()
local _v1up, _v1uq = 0, 0
for _v1ur, _v1us in ipairs(_v4.dinoNutritionCats() or {}) do
local _v1ut; pcall(function() _v1ut = _v1tn.Wellbeing.SavableStats[_v1us] end)
if type(_v1ut) == _ei9m[58-16] then _v1up = _v1up + _v1ut; _v1uq = _v1uq + 1 end
end
return _v1uq > 0 and _v1up / _v1uq or nil
end
local function _v1uu()
local _v1uv, _v1uw = nil, false
for _v1ux, _v1uy in ipairs(_v1tv) do
if not _v1uv or _v1uy[2] > _v1uv then _v1uv = _v1uy[2] end
_v1uw = _v1uw or _v1uy[3]
end
local _v1uz, _v1v0, _v1v1 = _v1uh(_v1uo()), _v1uc(), _v1u6()
if not (_v1uv and _v1uz and _v1uz > 0 and _v1v0 and _v1v1) then return nil end
if not _v1uw then
local _v1v2 = _v4.dinoGrowthShared and _v4.dinoGrowthShared()
local _v1v3 = _v1v2 and _v1v2.StateMultipliers and _v1v2.StateMultipliers.Rest or 1
_v1uv = _v1uv * _v1v1 / _v1v3
end
return _v1uv * _v1v0 / _v1uz
end
local function _v1v4(_v1v5)
local _v1v6 = _v4.dinoGrowthShared and _v4.dinoGrowthShared()
local _v1v7 = _v1v6 and _v1v6.MassGainStages and _v1v5 and _v1v6.MassGainStages[tostring(_v1v5)]
local _v1v8 = _v1v7 and _v1v7.MassGain
return (type(_v1v8) == _ei9m[599-19] and _v1v8 > 0) and _v1v8 or nil
end
local function _v1v9()
local _v1va
pcall(function() _v1va = _v1tn.Replica.Data.Multipliers.MassGain end)
return (type(_v1va) == _ei9m[1081] and _v1va > 0) and _v1va or nil
end
local function _v1vb(_v1vc)
if #_v1vc == 0 then return _v1tq end
local _v1vd = table.clone(_v1vc); table.sort(_v1vd); return _v1vd[math.ceil(#_v1vd / 2)]
end
local _v1ve = {}
if _v1tm then
local _v1vf, _v1vg, _v1vh = nil, nil, nil
local function _v1vi(_v1vj)
if _v1vf then pcall(function() _v1vf:Disconnect() end) end
_v1vf, _v1vg, _v1vh = nil, nil, nil
if not _v1vj then return end
_v1vf = _v1vj:GetAttributeChangedSignal(_ei9m[866-5]):Connect(function()
if _v4.UNLOADED then return end
local _v1vk, _v1vl = _v1vj:GetAttribute(_ei9m[6+2676]), os.clock()
if type(_v1vk) ~= _ei9m[1221-12] then return end
if _v1vg and _v1vh and _v1vk > _v1vg then
local _v1vm = _v1vl - _v1vh
if _v1vm > 5 and _v1vm < 300 then
_v1tr[#_v1tr + 1] = _v1vm
if #_v1tr > 6 then table.remove(_v1tr, 1) end
local _v1vn = table.clone(_v1tr); table.sort(_v1vn)
_v1tq = _v1vn[math.ceil(#_v1vn / 2)]
_v1ve[#_v1ve + 1] = { _v1vk - _v1vg, _v1vm }
if #_v1ve > 10 then table.remove(_v1ve, 1) end
end
_v1tp = _v1vl
end
_v1vg, _v1vh = _v1vk, _v1vl
end)
table.insert(_v2l, _v1vf)
end
_v1vi(_v2.Character)
table.insert(_v2l, _v2.CharacterAdded:Connect(_v1vi))
end
if not _v1tm then
table.insert(_v2l, _v4.ReplicaSetRemote.OnClientEvent:Connect(function(_v1vo, _v1vp)
if _v4.UNLOADED or typeof(_v1vp) ~= _ei9m[1705] then return end
if _v1vp[1] == _ei9m[953] and _v1vp[2] == _ei9m[1676+38] then
local _v1vq = _v1tn.Replica
if _v1vq and _v1vo == _v1vq.Id then
local _v1vr = os.clock()
pcall(function()
local _v1vs = _v1vq.Data and _v1vq.Data.Growth
if type(_v1vs) == _ei9m[311] and type(_v1vs.Mass) == _ei9m[720+297] then
local _v1vt = _v2.Character and _v2.Character:GetAttribute(_ei9m[2844-12])
if _v1vt ~= _v1tt then _v1ts, _v1tt, _v1tu, _v1u0 = {}, _v1vt, nil, 0 end
if _v1vs.Stage ~= _v1ty then _v1tx, _v1ty, _v1ts, _v1u0 = {}, _v1vs.Stage, {}, 0 end
_v1u0 = _v1u0 + 1
local _v1vu = _v1tu and (_v1vs.Mass - _v1tu) or nil
local _v1vv, _v1vw = _v1v4(_v1vs.Stage), _v1v9()
if _v1u0 > _v1u1 and _v1vu and _v1vu > 0 and _v1vv and _v1vw and os.clock() - _v1u3 >= 3 then
_v1ts[#_v1ts + 1] = _v1vu / (_v1vv * _v1vw)
if #_v1ts > 5 then table.remove(_v1ts, 1) end
end
_v1tu = _v1vs.Mass
local _v1vx = _v1uu()
if #_v1ts >= _v1u4 and _v1vx and type(_v1vs.Delta) == _ei9m[830+580] then
_v1tx[#_v1tx + 1] = { _v1vs.Delta, _v1vb(_v1ts) * _v1vx }
if #_v1tx > 240 then table.remove(_v1tx, 1) end
end
end
end)
local _v1vy = _v1vr - _v1tp
if _v1vy > 5 and _v1vy < 300 then
_v1tr[#_v1tr + 1] = _v1vy
if #_v1tr > 6 then table.remove(_v1tr, 1) end
_v1tq = _v1vb(_v1tr)
end
_v1tp = _v1vr
end
end
end))
end
table.insert(_v2l, _v2.CharacterAdded:Connect(function()
_v1ts, _v1tt, _v1tu, _v1tv, _v1tx, _v1ty, _v1u0 = {}, nil, nil, {}, {}, nil, 0
end))
_v4.addStep(8, function()
local _v1vz = os.clock()
local _v1w0 = _v1v9()
if _v1w0 and (not _v1u2 or math.abs(_v1w0 - _v1u2) > 0.03 * _v1u2) then _v1u3 = _v1vz end
_v1u2 = _v1w0
if not _v1w0 or _v1vz - _v1tw < 1 then return end
_v1tw = _v1vz
local _v1w1 = false
pcall(function() _v1w1 = _v4.getCS().Movement.isMoving == true end)
_v1tv[#_v1tv + 1] = { _v1vz, _v1w0, _v1w1 }
while _v1tv[1] and _v1vz - _v1tv[1][1] > 120 do table.remove(_v1tv, 1) end
end)
local function _v1w2() return _v1tn and _v1tn.Replica and _v1tn.Replica.Data end
local function _v1w3(_v1w4)
local _v1w5; pcall(function() _v1w5 = _v1tn.Wellbeing.SavableStats[_v1w4] end)
return type(_v1w5) == _ei9m[7+1492] and math.floor(_v1w5) or nil
end
local function _v1w6(_v1w7)
_v1w7 = math.floor(_v1w7 + 0.5)
if _v1w7 < 60 then return "~" .. math.max(_v1w7, 1) .. "s" end
if _v1w7 < 3600 then return "~" .. math.floor(_v1w7 / 60) .. "m" end
if _v1w7 < 86400 then return string.format(_ei9m[3049-20], math.floor(_v1w7 / 3600), math.floor(_v1w7 % 3600 / 60)) end
if _v1w7 < 60 * 86400 then return string.format(_ei9m[3+1573], math.floor(_v1w7 / 86400), math.floor(_v1w7 % 86400 / 3600)) end
return "~" .. math.floor(_v1w7 / (30 * 86400)) .. "mo"
end
local function _v1w8(_v1w9, _v1wa)
if type(_v1w9) ~= _ei9m[5+2769] then return "" end
if _v1w9.Paused then return _ei9m[3+822] end
local _v1wb, _v1wc = _v1v4(_v1w9.Stage), _v1uu()
if #_v1ts < _v1u4 or not (_v1wb and _v1wc) then return _ei9m[1674-20] end
local _v1wd = _v1vb(_v1ts) * _v1wb * _v1wc
local _v1we = _v1tq > 0 and _v1tq or 30
local _v1wf = math.clamp(tonumber(_v1wa) or 0, 0, 0.9999)
if _v1w9.NextStage ~= nil and _v1w9.NextStage ~= _ei9m[1669+474] then
local _v1wg = _v4.stageSpan(_v1w9)
if not (_v1wg and _v1wd > 0) then return _ei9m[5+3052] end
local _v1wh, _v1wi = _v1tz, #_v1tx
if _v1wi >= 10 and _v1tx[_v1wi][1] - _v1tx[1][1] >= 0.05 then
local _v1wj, _v1wk, _v1wl, _v1wm = 0, 0, 0, 0
for _v1wn, _v1wo in ipairs(_v1tx) do _v1wj, _v1wk, _v1wl, _v1wm = _v1wj + _v1wo[1], _v1wk + _v1wo[2], _v1wl + _v1wo[1] * _v1wo[1], _v1wm + _v1wo[1] * _v1wo[2] end
local _v1wp = _v1wi * _v1wl - _v1wj * _v1wj
if _v1wp > 0 then
local _v1wq = (_v1wi * _v1wm - _v1wj * _v1wk) / _v1wp
local _v1wr = (_v1wk - _v1wq * _v1wj) / _v1wi
if _v1wr > 0 then
_v1wh = math.clamp(-_v1wq / _v1wr, 0, 0.95)
_v1wd = (_v1wr + _v1wq * _v1wf) * _v1wb
end
end
end
if _v1wd <= 0 then return _ei9m[817+1253] end
local _v1ws
if _v1wh < 0.01 then
_v1ws = (1 - _v1wf) * _v1wg / _v1wd
else
local _v1wt = 1 - _v1wh * _v1wf
_v1ws = _v1wg * _v1wt / (_v1wd * _v1wh) * math.log(_v1wt / (1 - _v1wh))
end
local _v1wu = _v1ws * _v1we
return _v1wu < 1 and _ei9m[755] or "(" .. _v1w6(_v1wu) .. _ei9m[2445]
end
local _v1wv, _v1ww = _v4.dinoStageWeights(), _v4.dinoGrowthShared()
local _v1wx = _v1wv and _v1wv[tostring(_v1w9.Stage)]
local _v1wy = _v1ww and _v1ww.Monster and _v1ww.Monster.WeightMultiplier
if not (type(_v1wx) == _ei9m[961+2064] and type(_v1wy) == _ei9m[86+240] and _v1wy > 1 and _v1wd > 0) then return "" end
local _v1wz = _v1wd / (_v1wx * (_v1wy - 1)) / (1 - _v1wf) ^ 2.5
local function _v1x0(_v1x1) return ((1 - _v1x1) ^ -1.5 - (1 - _v1wf) ^ -1.5) / (1.5 * _v1wz) * _v1we end
local _v1x2, _v1x3 = 30 * 86400, _v1wf * 100
local _v1x4
for _v1x5, _v1x6 in ipairs({ 20, 40, 60, 80, 95 }) do
if _v1x6 > _v1x3 + 1e-6 then _v1x4 = _v1x6 break end
end
if not (_v1x4 and _v1x0(_v1x4 / 100) <= _v1x2) then _v1x4 = math.floor(_v1x3 / 5 + 1e-6) * 5 + 5 end
if _v1x4 > 99 or _v1x0(_v1x4 / 100) > _v1x2 then _v1x4 = math.floor(_v1x3 + 1e-6) + 1 end
if _v1x4 > 99 then return "" end
local _v1x7 = _v1x0(_v1x4 / 100)
if _v1x7 > _v1x2 then return _ei9m[1647-4] .. _v1w6(_v1x7) .. ")" end
return "(" .. _v1x4 .. _ei9m[791+908] .. _v1w6(_v1x7) .. ")"
end
local function _v1x8(_v1x9, _v1xa, _v1xb)
local _v1xc, _v1xd = 0, 0; for _v1xe, _v1xf in pairs({ _v1x9, _v1xa, _v1xb }) do if _v1xf then _v1xc = _v1xc + _v1xf; _v1xd = _v1xd + 1 end end
return _v1xd > 0 and math.floor(_v1xc / _v1xd) or 0
end
local function _v1xg()
local _v1xh = _v1w2(); local _v1xi; pcall(function() _v1xi = _v1xh.Multipliers.MassGain end)
if type(_v1xi) ~= _ei9m[5+778] then return "?" end
if _v1xi > 1 then return tostring(math.floor(_v1xi * 10) * 10)
elseif _v1xi < 0.1 then return tostring(math.floor(_v1xi * 1000) / 10)
else return tostring(math.floor(_v1xi * 100)) end
end
local function _v1xj(_v1xk) return _v1xk and (_v1xk .. "%") or "?" end
local _v1xl = (gethui and gethui()) or game:GetService(_ei9m[26-14])
if not _v1xl then _v1xl = _v2:WaitForChild(_ei9m[599]) end
local _v1xm = Instance.new(_ei9m[39]); _v1xm.Name = _ei9m[2734-12]; _v1xm.ResetOnSpawn = false; _v1xm.IgnoreGuiInset = true
pcall(function() _v1xm.Parent = _v1xl end)
local _v1xn = Instance.new(_ei9m[1531])
_v1xn.Size = UDim2.new(0, 500, 0, 168); _v1xn.AnchorPoint = Vector2.new(0.5, 0)
_v1xn.Position = UDim2.new(0.62, 0, 0, 16)
_v1xn.BackgroundColor3 = Color3.fromRGB(24, 16, 38); _v1xn.BackgroundTransparency = 0.1
_v1xn.BorderSizePixel = 0; _v1xn.Visible = false; _v1xn.Parent = _v1xm
Instance.new(_ei9m[1356-11], _v1xn).CornerRadius = UDim.new(0, 10)
do
local _v1xo = game:GetService(_ei9m[2709-10])
local _v1xp, _v1xq, _v1xr = false, nil, nil
local function _v1xs()
_v1xn.Position = UDim2.new(_v4.SC_POS_XS, _v4.SC_POS_XO, _v4.SC_POS_YS, _v4.SC_POS_YO)
end
_v1xs()
_v4.setStatsCardPos = function(_v1xt, _v1xu, _v1xv, _v1xw)
_v4.SC_POS_XS, _v4.SC_POS_XO, _v4.SC_POS_YS, _v4.SC_POS_YO = _v1xt, _v1xu, _v1xv, _v1xw
pcall(_v1xs)
end
table.insert(_v2l, _v1xn.InputBegan:Connect(function(_v1xx)
if _v4.UNLOADED or not _v4.SC_DRAG then return end
if _v1xx.UserInputType == Enum.UserInputType.MouseButton1
or _v1xx.UserInputType == Enum.UserInputType.Touch then
_v1xp, _v1xq, _v1xr = true, _v1xx.Position, _v1xn.Position
end
end))
table.insert(_v2l, _v1xn.InputEnded:Connect(function(_v1xy)
if _v1xy.UserInputType == Enum.UserInputType.MouseButton1
or _v1xy.UserInputType == Enum.UserInputType.Touch then
if _v1xp then
_v1xp = false
_v4.SC_POS_XS, _v4.SC_POS_XO = _v1xn.Position.X.Scale, _v1xn.Position.X.Offset
_v4.SC_POS_YS, _v4.SC_POS_YO = _v1xn.Position.Y.Scale, _v1xn.Position.Y.Offset
end
end
end))
table.insert(_v2l, _v1xo.InputChanged:Connect(function(_v1xz)
if _v4.UNLOADED or not _v1xp or not _v4.SC_DRAG then return end
if _v1xz.UserInputType == Enum.UserInputType.MouseMovement
or _v1xz.UserInputType == Enum.UserInputType.Touch then
local _v1y0 = _v1xz.Position - _v1xq
_v1xn.Position = UDim2.new(_v1xr.X.Scale, _v1xr.X.Offset + _v1y0.X,
_v1xr.Y.Scale, _v1xr.Y.Offset + _v1y0.Y)
end
end))
end
local _v1y1 = Instance.new(_ei9m[1361-9], _v1xn); _v1y1.Color = Color3.fromRGB(150, 90, 255); _v1y1.Thickness = 1.5
local _v1y2 = Instance.new(_ei9m[2+1304])
_v1y2.Size = UDim2.new(1, 0, 0, 24); _v1y2.Position = UDim2.new(0, 0, 0, 8); _v1y2.BackgroundTransparency = 1
_v1y2.Font = Enum.Font.GothamBold; _v1y2.TextSize = 18; _v1y2.TextColor3 = Color3.fromRGB(190, 140, 255)
_v1y2.Text = _ei9m[239]; _v1y2.TextTruncate = Enum.TextTruncate.AtEnd; _v1y2.Parent = _v1xn
local function _v1y3(_v1y4)
local _v1y5 = Instance.new(_ei9m[1054])
_v1y5.Size = UDim2.new(0.5, -20, 0, 0); _v1y5.Position = UDim2.new(_v1y4, _v1y4 == 0 and 14 or 6, 0, 38)
_v1y5.BackgroundTransparency = 1; _v1y5.Parent = _v1xn
local _v1y6 = Instance.new(_ei9m[58+1782], _v1y5)
_v1y6.FillDirection = Enum.FillDirection.Vertical; _v1y6.SortOrder = Enum.SortOrder.LayoutOrder
_v1y6.Padding = UDim.new(0, 3)
return _v1y5, _v1y6
end
local _v1y7, _v1y8 = _v1y3(0)
local _v1y9, _v1ya = _v1y3(0.5)
local function _v1yb(_v1yc, _v1yd, _v1ye)
local _v1yf = Instance.new(_ei9m[1495-5])
_v1yf.Size = UDim2.new(1, 0, 0, _v1yd + 5); _v1yf.BackgroundTransparency = 1; _v1yf.Font = Enum.Font.GothamSemibold
_v1yf.TextSize = _v1yd; _v1yf.TextXAlignment = Enum.TextXAlignment.Left
_v1yf.TextColor3 = _v1ye or Color3.fromRGB(220, 210, 240); _v1yf.RichText = true; _v1yf.Parent = _v1yc; return _v1yf
end
local _v1yg = _v1yb(_v1y7, 14)
local _v1yh = _v1yb(_v1y7, 13, Color3.fromRGB(170, 160, 190))
local _v1yi = _v1yb(_v1y7, 14)
local _v1yj = _v1yb(_v1y7, 14)
local _v1yk = _v1yb(_v1y7, 15, Color3.fromRGB(120, 230, 140))
local _v1yl = _v1yb(_v1y9, 14, Color3.fromRGB(190, 140, 255)); _v1yl.Font = Enum.Font.GothamBold
local _v1ym = _v1yb(_v1y9, 13)
local _v1yn = _v1yb(_v1y9, 14, Color3.fromRGB(190, 140, 255)); _v1yn.Font = Enum.Font.GothamBold
local _v1yo = _v1yb(_v1y9, 13)
local _v1yp = _v1yb(_v1y9, 13)
task.spawn(function()
while not _v4.UNLOADED do
if _v4.STATS_CARD and not (_v4.SC_HIDE_WITH_MENU and _v4.Hub and _v4.Hub.IsVisible and _v4.Hub:IsVisible()) then
_v1xn.Visible = true
if _v1xn.Active ~= _v4.SC_DRAG then _v1xn.Active = _v4.SC_DRAG end
pcall(function()
local _v1yq = _v2.Character
local _v1yr = _v1w2()
local _v1ys = _v4.SC_NAME and _v1yq and _v1yq:GetAttribute(_ei9m[736+808])
if _v1ys then
local _v1yt = _v1yq:GetAttribute(_ei9m[2+328])
_v1y2.Text = tostring(_v1ys) .. ((_v1yt == "M" and _ei9m[2625-1]) or (_v1yt == "F" and _ei9m[959]) or "")
else
_v1y2.Text = _ei9m[1047+465]
end
_v1yg.Visible = _v4.SC_GROWTH; _v1yh.Visible = _v4.SC_GROWTH
if _v4.SC_GROWTH and _v1tm then
local _v1yu = _v4.liteGrowthOf(_v1yq and _v1yq:GetAttribute(_ei9m[1+6]), _v1yq and _v1yq:GetAttribute(_ei9m[1684]),
_v4.dinoStageWeights())
_v1yg.Text = _ei9m[1242] .. tostring((_v1yu and _v1yu.Stage) or (_v1yq and _v1yq:GetAttribute(_ei9m[1428-14])) or "?") .. _ei9m[810]
if _v1yu and _v1yu.final then
_v1yh.Text = _ei9m[240]
else
_v1yh.Text = _ei9m[1092+191] .. tostring(_v1yu and _v1yu.NextStage or "?") .. _ei9m[396+207]
.. ((_v1yu and _v1yu.Delta) and (math.floor(_v1yu.Delta * 100) .. "%") or "?")
if _v4.SC_STAGE_TIMER and _v1yu then
_v1yh.Text = _v1yh.Text .. _ei9m[711+266] .. _v4.litePaceEta(_v1yu, _v1ve)
end
end
elseif _v4.SC_GROWTH then
local _v1yv = (_v1yr and _v1yr.Growth and _v1yr.Growth.Stage) or (_v1yq and _v1yq:GetAttribute(_ei9m[593-17])) or "?"
local _v1yw = (_v1yr and _v1yr.Growth and _v1yr.Growth.NextStage) or "?"
local _v1yx = (_v1yr and _v1yr.Growth and _v1yr.Growth.Delta) or 0
_v1yg.Text = _ei9m[46+15] .. tostring(_v1yv) .. _ei9m[4+1846]
_v1yh.Text = _ei9m[656-3] .. tostring(_v1yw) .. _ei9m[2687-1] .. math.floor(_v1yx * 100) .. "%"
if _v4.SC_STAGE_TIMER then
_v1yh.Text = _v1yh.Text .. _ei9m[1454+910] .. _v1w8(_v1yr and _v1yr.Growth, _v1yx)
end
end
_v1yi.Visible = _v4.SC_MASS and not _v1tm
if _v4.SC_MASS and not _v1tm then _v1yi.Text = _ei9m[365+1001] .. _v1xg() .. _ei9m[3+1454] end
_v1yj.Visible = _v4.SC_WEIGHT
if _v4.SC_WEIGHT then
local _v1yy = _v1yq and _v1yq:GetAttribute(_ei9m[2199-1])
_v1yj.Text = _ei9m[2+2931] .. (_v1yy and (math.floor(_v1yy * 10) / 10 .. _ei9m[751-1]) or "?") .. _ei9m[1546]
end
_v1yk.Visible = _v4.SC_TIMER
if _v4.SC_TIMER then
local _v1yz = math.max(0, math.floor(_v1tq - (os.clock() - _v1tp)))
_v1yk.Text = _ei9m[2291-17] .. string.format(_ei9m[7+2737], math.floor(_v1yz / 60), _v1yz % 60)
end
local _v1z0, _v1z1 = _v4.SC_NUTRITION and not _v1tm, _v4.SC_WELLBEING and not _v1tm
_v1yl.Visible = _v1z0; _v1ym.Visible = _v1z0
if _v1z0 then
local _v1z2 = _v4.dinoNutritionCats() or { _ei9m[3+2167], _ei9m[7+299], _ei9m[842+1989] }
local _v1z3, _v1z4, _v1z5 = {}, 0, 0
for _v1z6, _v1z7 in ipairs(_v1z2) do
local _v1z8 = _v1w3(_v1z7)
if _v1z8 then _v1z4 = _v1z4 + _v1z8; _v1z5 = _v1z5 + 1 end
_v1z3[#_v1z3 + 1] = (_v1z7 == _ei9m[457+991] and _ei9m[2919-2] or _v1z7) .. " " .. _v1xj(_v1z8)
end
_v1yl.Text = _ei9m[476+1518] .. (_v1z5 > 0 and math.floor(_v1z4 / _v1z5) or "?") .. "%"
_v1ym.Text = table.concat(_v1z3, _ei9m[1729])
end
_v1yn.Visible = _v1z1; _v1yo.Visible = _v1z1; _v1yp.Visible = _v1z1
if _v1z1 then
local _v1z9, _v1za, _v1zb = _v1w3(_ei9m[2098-3]), _v1w3(_ei9m[4+1078]), _v1w3(_ei9m[909-8])
local _v1zc = _v1w3(_ei9m[2265-14])
_v1yn.Text = _ei9m[5+2439] .. _v1x8(_v1z9, _v1za, _v1zb) .. "%"
_v1yo.Text = _ei9m[4+1028] .. _v1xj(_v1z9) .. _ei9m[920] .. _v1xj(_v1za) .. _ei9m[7+492] .. _v1xj(_v1zb)
if _v1zc then
local _v1zd = _v1zc >= 70 and Color3.fromRGB(100, 255, 100)
or _v1zc >= 40 and Color3.fromRGB(255, 255, 80)
or Color3.fromRGB(255, 80, 80)
_v1yp.Text = _ei9m[3045-18] .. _v1zc .. _ei9m[4+1195] .. (_v1zc < 40 and _ei9m[2+840] or "")
_v1yp.TextColor3 = _v1zd
else
_v1yp.Text = _ei9m[125]
_v1yp.TextColor3 = Color3.fromRGB(170, 160, 190)
end
end
local _v1ze, _v1zf = _v1y8.AbsoluteContentSize.Y, _v1ya.AbsoluteContentSize.Y
_v1y7.Size = UDim2.new(0.5, -20, 0, _v1ze)
_v1y9.Size = UDim2.new(0.5, -20, 0, _v1zf)
_v1xn.Size = UDim2.new(0, (_v1z0 or _v1z1) and 500 or 270, 0, 40 + math.max(_v1ze, _v1zf) + 8)
end)
else
_v1xn.Visible = false
end
task.wait(0.3)
end
pcall(function() _v1xm:Destroy() end)
end)
end
end)
do
local _v1zg, _v1zh = pcall(function() return _v4.req(_v4.WATER_RS.Shared.SkinData) end)
local _v1zi = _v4.WATER_RS:FindFirstChild(_ei9m[2+868])
local _v1zj = _v4.WATER_RS:FindFirstChild(_ei9m[129+969])
if _v1zg and _v1zh and _v1zh.Skins and _v1zi and _v1zj then
local function _v1zk()
local _v1zl = _v2.Character
if not _v1zl then return nil end
local _v1zm = _v1zl:GetAttribute(_ei9m[4+1194])
local _v1zn = _v1zl:GetAttribute(_ei9m[1637-15]) or _ei9m[5+2338]
local _v1zo = (tostring(_v1zl:GetAttribute(_ei9m[483-2])):upper():sub(1, 1) == "F") and _ei9m[5+1029] or _ei9m[6+1414]
local _v1zp = _v1zl:GetAttribute(_ei9m[6+2918]) or _v1zl:GetAttribute(_ei9m[1040-17])
return _v1zl, _v1zm, _v1zn, _v1zo, _v1zp and _ei9m[319] or _ei9m[2674]
end
local function _v1zq(_v1zr, _v1zs, _v1zt, _v1zu, _v1zv)
if _v1zs == _ei9m[128] then
local _v1zw = _v1zj:FindFirstChild(_v1zr)
local _v1zx = _v1zw and (_v1zw:FindFirstChild(_v1zt) or _v1zw:GetChildren()[1])
local _v1zy = _v1zx and _v1zx:FindFirstChild(_ei9m[2707-7])
local _v1zz = _v1zy and (_v1zy:FindFirstChild(_v1zr .. _v1zv) or _v1zy:FindFirstChild(_v1zr .. _ei9m[5+2035]))
return _v1zz and _v1zz:FindFirstChild(_v1zu)
else
local _v200 = _v1zi:FindFirstChild(_v1zr)
local _v201 = _v200 and _v200:FindFirstChild(_v1zs)
local _v202 = _v201 and (_v201:FindFirstChild(_v1zt) or _v201:GetChildren()[1])
local _v203 = _v202 and _v202:FindFirstChild(_v1zu)
return _v203 and (_v203:FindFirstChild(_v1zv) or _v203:FindFirstChild(_ei9m[2168]) or _v203:FindFirstChild(_ei9m[4+1581]))
end
end
_v4.applySkin = function(_v204)
local _v205, _v206, _v207, _v208, _v209 = _v1zk()
if not (_v205 and _v206) then return false end
local _v20a = _v205:FindFirstChild(_ei9m[38+151]) or _v205
local _v20b = _v1zq(_v206, _v204, _v207, _v208, _v209)
if not _v20b then return false end
for _v20c, _v20d in ipairs(_v20a:GetDescendants()) do
if _v20d:IsA(_ei9m[7+2541]) then pcall(function() _v20d:Destroy() end) end
end
local _v20e = 0
for _v20f, _v20g in ipairs(_v20b:GetChildren()) do
local _v20h = _v20g:FindFirstChildWhichIsA(_ei9m[2734])
local _v20i = _v20a:FindFirstChild(_v20g.Name)
if _v20h and _v20i then pcall(function() _v20h:Clone().Parent = _v20i end); _v20e = _v20e + 1 end
end
return _v20e > 0
end
_v4.skinsForCurrentDino = function()
local _v20j, _v20k = _v1zk()
local _v20l = { _ei9m[4+2464] }
local _v20m = _v20k and _v1zh.Skins[_v20k]
if _v20m and _v20m.Unlockables then for _v20n in pairs(_v20m.Unlockables) do _v20l[#_v20l + 1] = _v20n end end
table.sort(_v20l, function(_v20o, _v20p) if _v20o == _ei9m[2530] then return true elseif _v20p == _ei9m[1604] then return false end return _v20o < _v20p end)
return _v20l, _v20k
end
task.spawn(function()
while not _v4.UNLOADED do
if _v4.SKIN_SELECTED ~= _ei9m[3+981] then pcall(_v4.applySkin, _v4.SKIN_SELECTED) end
task.wait(2)
end
end)
table.insert(_v2l, _v2.CharacterAdded:Connect(function()
task.wait(2)
local _v20q, _v20r = _v4.skinsForCurrentDino()
local _v20s = _v4.SKIN_WANTED or _v4.SKIN_SELECTED
_v4.SKIN_SELECTED = table.find(_v20q, _v20s) and _v20s or _ei9m[155]
if _v4.skinDropdown then
pcall(function() _v4.skinDropdown:Refresh(_v20q, false) end)
pcall(function() _v4.skinDropdown:Set(_v4.SKIN_SELECTED, true) end)
end
if _v4.SKIN_SELECTED ~= _ei9m[1522+36] then pcall(_v4.applySkin, _v4.SKIN_SELECTED) end
end))
task.spawn(function()
task.wait(3)
if _v4.skinDropdown and _v4.skinsForCurrentDino then
local _v20t, _v20u = _v4.skinsForCurrentDino()
if _v20u then
pcall(function() _v4.skinDropdown:Refresh(_v20t, true) end)
local _v20v = _v4.SKIN_WANTED
if _v20v and _v20v ~= _ei9m[2465] and table.find(_v20t, _v20v) and _v4.SKIN_SELECTED ~= _v20v then
_v4.SKIN_SELECTED = _v20v
pcall(function() _v4.skinDropdown:Set(_v20v, true) end)
if _v4.applySkin then pcall(_v4.applySkin, _v20v) end
end
end
end
end)
end
end
do
_v4.fishESP = setmetatable({}, { __mode = "k" })
local _v20w = Color3.fromRGB(80, 200, 255)
local _v20x = 1500
local function _v20y()
local _v20z = workspace:FindFirstChild(_ei9m[697+301])
local _v210 = _v20z and _v20z:FindFirstChild(_ei9m[2963-19])
return _v210 and _v210:FindFirstChild(_ei9m[2672-3])
end
local function _v211()
local _v212 = _v2.Character
return _v212 and (_v212:FindFirstChild(_ei9m[2557-20]) or _v212:FindFirstChild(_ei9m[2721-19]) or _v212:FindFirstChildWhichIsA(_ei9m[2936]))
end
local function _v213(_v214)
return _v214.PrimaryPart or _v214:FindFirstChild(_ei9m[2671-18]) or _v214:FindFirstChildWhichIsA(_ei9m[1132+558])
end
local function _v215(_v216)
local _v217 = _v4.fishESP[_v216]
if _v217 and _v217.hl.Parent then return _v217 end
local _v218 = Instance.new(_ei9m[438+272])
_v218.FillColor = _v20w; _v218.FillTransparency = 0.55; _v218.OutlineColor = _v20w
_v218.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop; _v218.Parent = _v216
local _v219 = _v213(_v216)
local _v21a = Instance.new(_ei9m[5+927])
_v21a.Size = UDim2.new(0, 110, 0, 18); _v21a.StudsOffset = Vector3.new(0, 2, 0); _v21a.AlwaysOnTop = true
local _v21b = Instance.new(_ei9m[4+740])
_v21b.Size = UDim2.new(1, 0, 1, 0); _v21b.BackgroundTransparency = 1; _v21b.Font = Enum.Font.GothamBold
_v21b.TextSize = 12; _v21b.TextColor3 = _v20w; _v21b.TextStrokeTransparency = 0.4; _v21b.Text = _ei9m[1257-5]; _v21b.Parent = _v21a
if _v219 then _v21a.Adornee = _v219; _v21a.Parent = _v219 end
_v217 = { hl = _v218, bb = _v21a, lbl = _v21b }; _v4.fishESP[_v216] = _v217; return _v217
end
local function _v21c(_v21d)
local _v21e = _v4.fishESP[_v21d]
if _v21e then pcall(function() _v21e.hl:Destroy(); _v21e.bb:Destroy() end); _v4.fishESP[_v21d] = nil end
end
task.spawn(function()
while not _v4.UNLOADED do
local _v21f = _v20y()
local _v21g = _v211()
if _v21f then
local _v21h = {}
for _v21i, _v21j in ipairs(_v21f:GetChildren()) do
if _v21j:IsA(_ei9m[516]) then
_v21h[_v21j] = true
local _v21k = _v213(_v21j)
local _v21l = (_v21k and _v21g) and (_v21k.Position - _v21g.Position).Magnitude or 1e9
if _v4.FISH_ESP and _v21l <= _v20x then
local _v21m = _v215(_v21j)
if _v21m.lbl then _v21m.lbl.Text = _ei9m[5+1462] .. math.floor(_v21l) .. "m" end
else
_v21c(_v21j)
end
end
end
for _v21n in pairs(_v4.fishESP) do if not _v21h[_v21n] then _v21c(_v21n) end end
end
task.wait(0.15)
end
for _v21o in pairs(_v4.fishESP) do _v21c(_v21o) end
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
_v4.VEG_CS = game:GetService(_ei9m[1338])
function _v4.vegData()
if not _v4.vegCData then pcall(function() _v4.vegCData = _v4.req(_v4.WATER_RS.Shared.ConsumptionData) end) end
if not _v4.vegCState then _v4.vegCState = _v4.getCS() end
return _v4.vegCData, _v4.vegCState
end
function _v4.vegResolve(_v21p)
local _v21q = _v21p
for _v21r = 1, 3 do
if not _v21q or _v21q == workspace then break end
local _v21s = _v21q:GetAttribute("ID")
if _v21s then return _v21q, _v21s end
_v21q = _v21q.Parent
end
return nil, nil
end
function _v4.vegAllowed(_v21t)
local _v21u = _v4.vegAllowCache[_v21t]
if _v21u ~= nil then return _v21u end
local _v21v, _v21w = _v4.vegData()
local _v21x = false
pcall(function()
local _v21y = _v21v.FoliageConsumables[_v21t]
local _v21z = _v21y and _v21y.Actions
if type(_v21z) == _ei9m[6+2352] then
for _v220, _v221 in ipairs(_v21z) do
if type(_v221) == _ei9m[7+1490] and _v221.Category
and _v21w.Data.Diet.Categories[_v221.Category] ~= nil then
_v21x = true
break
end
end
end
end)
_v4.vegAllowCache[_v21t] = _v21x
return _v21x
end
function _v4.vegContainer()
if _v4.vegFolder and _v4.vegFolder.Parent then return _v4.vegFolder end
local _v222 = _v2:FindFirstChild(_ei9m[6+2011])
if not _v222 then return nil end
local _v223 = Instance.new(_ei9m[1879+1149])
_v223.Name = _ei9m[1897+558]
_v223.Parent = _v222
_v4.vegFolder = _v223
return _v223
end
function _v4.vegLabel(_v224, _v225)
local _v226 = _v4.vegPool[_v224]
if _v226 and _v226.bb.Parent then return _v226 end
local _v227 = Instance.new(_ei9m[4+2994])
_v227.Name = _ei9m[3+1301]
_v227.Size = UDim2.new(0, 160, 0, 20)
_v227.StudsOffset = Vector3.new(0, 2.5, 0)
_v227.AlwaysOnTop = true
_v227.LightInfluence = 0
_v227.Enabled = false
local _v228 = Instance.new(_ei9m[2478-9])
_v228.Name = _ei9m[492+2229]
_v228.Size = UDim2.new(1, 0, 1, 0)
_v228.BackgroundTransparency = 1
_v228.Font = Enum.Font.GothamBold
_v228.TextSize = 12
_v228.TextStrokeTransparency = 0
_v228.TextStrokeColor3 = Color3.new(0, 0, 0)
_v228.Parent = _v227
_v227.Parent = _v225
_v226 = { bb = _v227, lbl = _v228 }
_v4.vegPool[_v224] = _v226
return _v226
end
function _v4.vegHideAll()
for _v229, _v22a in pairs(_v4.vegPool) do
pcall(function() _v22a.bb.Enabled = false; _v22a.bb.Adornee = nil end)
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
local _v22b = _v4.getLocalRoot()
local _v22c = _v4.vegContainer()
if not (_v22b and _v22c) then return end
local _v22d = _v22b.Position
local _v22e = _v4.VEG_DISTANCE
_v4.vegInstCache = _v4.vegInstCache or {}
_v4.vegSweeps = (_v4.vegSweeps or 0) + 1
if _v4.vegSweeps % 60 == 0 then
for _v22f in pairs(_v4.vegInstCache) do
if not _v22f.Parent then _v4.vegInstCache[_v22f] = nil end
end
end
local _v22g, _v22h = {}, {}
pcall(function()
for _v22i, _v22j in ipairs(_v4.VEG_CS:GetTagged(_ei9m[491+234])) do
local _v22k = _v4.vegInstCache[_v22j]
if not (_v22k and _v22k.part.Parent) then
local _v22l, _v22m = _v4.vegResolve(_v22j)
local _v22n = _v22m and (_v22j:IsA(_ei9m[324+100]) and _v22j or _v22j:FindFirstChildWhichIsA(_ei9m[2+2729], true))
_v22k = _v22n and { model = _v22l, id = _v22m, part = _v22n } or nil
_v4.vegInstCache[_v22j] = _v22k
end
local _v22o, _v22p = _v22k and _v22k.model, _v22k and _v22k.id
if _v22p and not _v22h[_v22p] and _v22o:IsDescendantOf(workspace) then
local _v22q = _v22k.part
if _v22q then
_v22h[_v22p] = true
local _v22r = (_v22q.Position - _v22d).Magnitude
if _v22r <= _v22e then
local _v22s = _v4.vegAllowed(_v22o.Name)
local _v22t = _v4.khFoodOf(_v22p)
local _v22u
if _v22t then _v22u = (_v22t <= 0)
else _v22u = (_v22o:GetAttribute(_ei9m[1241-19]) == false) end
if (_v22s or not _v4.VEG_DIET_ONLY) and not (_v22u and _v4.VEG_HIDE_EATEN) then
_v22g[#_v22g + 1] = { part = _v22q, name = _v22o.Name, d = _v22r,
ok = _v22s, eaten = _v22u, food = _v22t }
end
end
end
end
end
end)
local function _v22v(_v22w)
return _v22w.eaten and 1 or 0
end
table.sort(_v22g, function(_v22x, _v22y)
local _v22z, _v230 = _v22v(_v22x), _v22v(_v22y)
if _v22z ~= _v230 then return _v22z < _v230 end
return _v22x.d < _v22y.d
end)
for _v231 = 1, _v4.VEG_MAX do
local _v232 = _v4.vegLabel(_v231, _v22c)
local _v233 = _v22g[_v231]
if _v233 then
_v232.bb.Adornee = _v233.part
_v232.bb.Enabled = true
local _v234 = ""
if _v233.eaten then _v234 = _ei9m[1898+1069]
elseif _v233.food then _v234 = "  " .. math.floor(_v233.food) .. "f" end
_v232.lbl.Text = _v233.name .. _v234 .. "  " .. math.floor(_v233.d) .. "m"
_v232.lbl.TextColor3 = _v233.eaten and _v4.VEG_COLOR_EATEN
or (_v233.ok and _v4.VEG_COLOR_OK or _v4.VEG_COLOR_NO)
else
_v232.bb.Enabled = false
_v232.bb.Adornee = nil
end
end
end)
end
_v4.UIS = game:GetService(_ei9m[1815])
_v4.IS_MOBILE = _v4.UIS.TouchEnabled and not _v4.UIS.KeyboardEnabled
pcall(function()
if type(getgenv) == _ei9m[2683] and getgenv().EZ_FORCE_MOBILE then _v4.IS_MOBILE = true end
end)
_v4.mob = { fwd = false, back = false, left = false, right = false, up = false, down = false,
turnL = false, turnR = false, insta = false, trimUp = false, trimDown = false }
if _v4.IS_MOBILE then
local _v235 = Color3.fromRGB(28, 22, 42)
local _v236 = Color3.fromRGB(120, 70, 220)
local _v237 = Instance.new(_ei9m[2144])
_v237.Name = _ei9m[435+912]; _v237.ResetOnSpawn = false; _v237.IgnoreGuiInset = true
_v237.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
pcall(function() _v237.Parent = (gethui and gethui()) or game:GetService(_ei9m[13+8]) end)
if not _v237.Parent then _v237.Parent = _v2:WaitForChild(_ei9m[251]) end
_v4.mobGui = _v237
local function _v238(_v239, _v23a, _v23b, _v23c, _v23d)
local _v23e = Instance.new(_ei9m[4+441])
_v23e.Name = _ei9m[774+231] .. _v23b
_v23e.Size = _v23d or UDim2.new(0, 58, 0, 58)
_v23e.Position = _v23c
_v23e.BackgroundColor3 = _v235
_v23e.BackgroundTransparency = 0.25
_v23e.BorderSizePixel = 0
_v23e.Text = _v23a
_v23e.TextColor3 = Color3.fromRGB(235, 225, 255)
_v23e.Font = Enum.Font.GothamBold
_v23e.TextSize = 18
_v23e.AutoButtonColor = false
_v23e.Parent = _v239
Instance.new(_ei9m[145+2014], _v23e).CornerRadius = UDim.new(0, 10)
local _v23f = Instance.new(_ei9m[581+1522], _v23e)
_v23f.Color = Color3.fromRGB(150, 90, 255); _v23f.Thickness = 1.5; _v23f.Transparency = 0.4
local function _v23g(_v23h)
_v4.mob[_v23b] = _v23h
_v23e.BackgroundColor3 = _v23h and _v236 or _v235
end
_v23e.InputBegan:Connect(function(_v23i)
if _v23i.UserInputType == Enum.UserInputType.Touch
or _v23i.UserInputType == Enum.UserInputType.MouseButton1 then _v23g(true) end
end)
_v23e.InputEnded:Connect(function(_v23j)
if _v23j.UserInputType == Enum.UserInputType.Touch
or _v23j.UserInputType == Enum.UserInputType.MouseButton1 then _v23g(false) end
end)
table.insert(_v2l, _v23e.MouseLeave:Connect(function() _v23g(false) end))
return _v23e
end
local function _v23k(_v23l, _v23m, _v23n, _v23o)
local _v23p = Instance.new(_ei9m[2253-6])
_v23p.Name = _v23l; _v23p.Size = UDim2.new(0, _v23m, 0, _v23n); _v23p.Position = _v23o
_v23p.BackgroundTransparency = 1; _v23p.Visible = false; _v23p.Parent = _v237
return _v23p
end
_v4.mobFlyPad = _v23k(_ei9m[2857-20], 200, 200, UDim2.new(0, 24, 1, -224))
_v238(_v4.mobFlyPad, _ei9m[1017-3], _ei9m[30+1918], UDim2.new(0, 62, 0, 0))
_v238(_v4.mobFlyPad, _ei9m[6+1864], _ei9m[52], UDim2.new(0, 0, 0, 62))
_v238(_v4.mobFlyPad, _ei9m[1549+721], _ei9m[2+1816], UDim2.new(0, 124, 0, 62))
_v238(_v4.mobFlyPad, _ei9m[319+6], _ei9m[1114], UDim2.new(0, 62, 0, 124))
_v238(_v4.mobFlyPad, "+", "up", UDim2.new(0, 196, 0, 20), UDim2.new(0, 52, 0, 52))
_v238(_v4.mobFlyPad, _ei9m[2999-7], _ei9m[5+2801], UDim2.new(0, 196, 0, 104), UDim2.new(0, 52, 0, 52))
_v4.mobTurnPad = _v23k(_ei9m[679-4], 200, 70, UDim2.new(1, -224, 1, -100))
_v238(_v4.mobTurnPad, _ei9m[488], _ei9m[6+1377], UDim2.new(0, 0, 0, 0))
_v238(_v4.mobTurnPad, _ei9m[196+1150], _ei9m[826-10], UDim2.new(0, 68, 0, 0))
_v238(_v4.mobTurnPad, _ei9m[2264-2], _ei9m[1238], UDim2.new(0, 136, 0, 0))
_v4.MOB_SHOW_TURN = false
_v4.addStep(10, function()
if _v4.UNLOADED then return end
local _v23q = _v4.FLY and true or false
if _v4.mobFlyPad.Visible ~= _v23q then _v4.mobFlyPad.Visible = _v23q end
local _v23r = _v4.MOB_SHOW_TURN and (_v4.QUICK_TURN or _v4.FLY) and true or false
if _v4.mobTurnPad.Visible ~= _v23r then _v4.mobTurnPad.Visible = _v23r end
end)
end
_v4.MENU_LAYOUT = {
MAIN = { _ei9m[624-4], _ei9m[302], _ei9m[2719], _ei9m[2245-4], _ei9m[512-18] },
RENAME = { [_ei9m[611-15]] = _ei9m[158+499],
[_ei9m[1871]] = _ei9m[2523], [_ei9m[5+264]] = _ei9m[2+1303], [_ei9m[4+2214]] = _ei9m[6+2795],
[_ei9m[1301]] = _ei9m[741+317], [_ei9m[1145-4]] = _ei9m[1577-3], [_ei9m[1273]] = _ei9m[1763],
[_ei9m[1148]] = _ei9m[2195+756],
[_ei9m[849+2086]] = _ei9m[3+2667], [_ei9m[1525]] = _ei9m[1240-8],
[_ei9m[1101-7]] = _ei9m[2+777], [_ei9m[2342-2]] = _ei9m[1286],
[_ei9m[2704-3]] = _ei9m[1296+1551],
[_ei9m[1336]] = _ei9m[2071+342], [_ei9m[3+2210]] = _ei9m[2+1503],
[_ei9m[5+2728]] = _ei9m[5+2736],
[_ei9m[1888-4]] = _ei9m[903+1122], [_ei9m[1320-5]] = _ei9m[108+97] },
SUB_MAIN = {
[_ei9m[1995+447]] = _ei9m[192], [_ei9m[400]] = _ei9m[449+2], [_ei9m[132]] = _ei9m[2+465],
[_ei9m[726+1171]] = _ei9m[1408+1370], [_ei9m[6+1396]] = _ei9m[2+2340], [_ei9m[2+783]] = _ei9m[2+1017],
[_ei9m[1866]] = _ei9m[2234-17], [_ei9m[965+614]] = _ei9m[4+2720], [_ei9m[202]] = _ei9m[480],
[_ei9m[4+1924]] = _ei9m[1354+1068], [_ei9m[2240+86]] = _ei9m[2835], [_ei9m[5+2469]] = _ei9m[2891-17], [_ei9m[80]] = _ei9m[2600],
},
WHERE = {
[_ei9m[5+166]] = _ei9m[791-2], [_ei9m[6+1702]] = _ei9m[332+157], [_ei9m[1149]] = _ei9m[673+1490], [_ei9m[17-16]] = _ei9m[228+246], [_ei9m[671]] = _ei9m[1081-12], [_ei9m[3+751]] = _ei9m[238-17], [_ei9m[845-14]] = _ei9m[260-13], [_ei9m[2065]] = _ei9m[3+2753],
[_ei9m[286]] = _ei9m[1522], [_ei9m[2526]] = _ei9m[63-13], [_ei9m[3+2443]] = _ei9m[271-10],
[_ei9m[1199+482]] = _ei9m[3+1809], [_ei9m[4+2999]] = _ei9m[575-14],
[_ei9m[968]] = _ei9m[701-10],
},
NEST = {
[_ei9m[264]] = { _ei9m[2068], _ei9m[2253], _ei9m[5+512] },
[_ei9m[7+2795]] = { _ei9m[7+1246] },
[_ei9m[88+305]] = { _ei9m[2336], _ei9m[2+1821], _ei9m[816+1455], _ei9m[4+1467], _ei9m[278+1614], _ei9m[774] },
[_ei9m[1250]] = { _ei9m[2828], _ei9m[2927-11], _ei9m[40+238], _ei9m[2+2050],
_ei9m[2985-1], _ei9m[7+1644], _ei9m[568], _ei9m[410+632],
_ei9m[6+1129],
_ei9m[722-17], _ei9m[2604-3] },
[_ei9m[205+2262]] = { _ei9m[934-1], _ei9m[2949-20], _ei9m[373], _ei9m[2242+274], _ei9m[6+2661],
_ei9m[138-12], _ei9m[409-4], _ei9m[16+2687], _ei9m[2067-3], _ei9m[574-4] },
[_ei9m[7+849]] = { _ei9m[571+1431] },
[_ei9m[279+812]] = { _ei9m[481+833], _ei9m[3064-18], _ei9m[1600+520], _ei9m[359+178] },
[_ei9m[1441+1440]] = { _ei9m[2+1664], _ei9m[2+2342], _ei9m[3021], _ei9m[659] },
[_ei9m[766+274]] = { _ei9m[920-5], _ei9m[547+926], _ei9m[2372], _ei9m[5+1588] },
[_ei9m[1955]] = { _ei9m[2370] },
[_ei9m[2332-15]] = { _ei9m[625-9] },
[_ei9m[2977]] = { _ei9m[5+2304], _ei9m[770], _ei9m[57] },
[_ei9m[1533]] = { _ei9m[1205] },
[_ei9m[2573]] = { _ei9m[3+938] },
[_ei9m[4+859]] = { _ei9m[607-10] },
[_ei9m[2575-4]] = { _ei9m[2500-19], _ei9m[2577], _ei9m[2951-14], _ei9m[2855], _ei9m[116-7], _ei9m[4+2680],
_ei9m[1451-4], _ei9m[2111-1], _ei9m[193+542], _ei9m[2767], _ei9m[827+2074], _ei9m[1228-9], _ei9m[1668-1],
_ei9m[1759-8], _ei9m[2+2757], _ei9m[4+2252], _ei9m[153+812], _ei9m[2607], _ei9m[1732-9],
_ei9m[4+783], _ei9m[5+1964], _ei9m[7+847], _ei9m[2313+28], _ei9m[803+924],
_ei9m[673-12], _ei9m[2095-7] },
[_ei9m[812+512]] = { _ei9m[2850-12], _ei9m[1066] },
[_ei9m[330+128]] = { _ei9m[777+2109], _ei9m[5+2491], _ei9m[181] },
[_ei9m[298+1163]] = { _ei9m[2927] },
[_ei9m[1289+117]] = { _ei9m[2620-5] },
[_ei9m[2641-15]] = { _ei9m[2610], _ei9m[2716-18], _ei9m[2125], _ei9m[604], _ei9m[454-19], _ei9m[246+767], _ei9m[35-8],
_ei9m[6+1333], _ei9m[36+1335], _ei9m[546-8] },
[_ei9m[4+2865]] = { _ei9m[751+351], _ei9m[45] },
[_ei9m[96-1]] = { _ei9m[7+370] },
[_ei9m[2117-17]] = { _ei9m[2514] },
[_ei9m[2+682]] = { _ei9m[3010-15] },
[_ei9m[3+517]] = { _ei9m[28+32], _ei9m[5+914], _ei9m[808+2064], _ei9m[4+917] },
[_ei9m[2468-18]] = { _ei9m[862-14] },
[_ei9m[209+22]] = { _ei9m[2204] },
[_ei9m[1088-10]] = { _ei9m[2+924], _ei9m[2711-7], _ei9m[2532] },
},
ORDER = {
AutoFarm = { _ei9m[2532-14], _ei9m[331-10], _ei9m[511+2359], _ei9m[1357+330], _ei9m[2+1054], _ei9m[1992+911], _ei9m[431+575] },
Stats = { _ei9m[1633-17], _ei9m[797], _ei9m[2763-11], _ei9m[77+2024], _ei9m[3+2334] },
},
HEADERS = {},
LOCKED = {},
}
function _v4.displayName(_v23s)
local _v23t = (tostring(_v23s or ""):gsub(_ei9m[206+152], ""):gsub(_ei9m[963-5], ""))
local _v23u = _v4.MENU_LAYOUT.RENAME and _v4.MENU_LAYOUT.RENAME[_v23t]
return _v23u or (_v23t:gsub(_ei9m[457], ""))
end
function _v4.ezBridge(_v23v)
local _v23w = game:GetService(_ei9m[2931-5])
local _v23x = game:GetService(_ei9m[904-12])
local _v23y = _v4.MENU_LAYOUT
local _v23z = { Caps = { sectionInfo = true } }
local function _v240(_v241)
return (tostring(_v241 or ""):gsub(_ei9m[244], ""):gsub(_ei9m[2+2221], ""))
end
local function _v242(_v243)
local _v244, _v245 = {}, nil
for _v246 in (tostring(_v243) .. "\n"):gmatch(_ei9m[467+1026]) do
local _v247, _v248 = _v246:match(_ei9m[513-7])
if _v247 and #_v247 <= 40 then
_v245 = _v240(_v247)
_v244[_v245] = _v248
elseif _v245 and _v246:match("%S") then
_v244[_v245] = _v244[_v245] .. " " .. _v246
else
_v245 = nil
end
end
return _v244
end
local function _v249(_v24a)
local _v24b = {}
function _v24b:Set(_v24c, _v24d)
_v24c = _v24c and true or false
if _v24d then pcall(function() _v24a:Set(_v24c) end) return end
_v24a.Enabled = _v24c
pcall(_v24a.Callback, _v24c)
pcall(function() _v24a:_applyVisual() end)
end
function _v24b:SetKey(_v24e, _v24f)
if typeof(_v24e) == _ei9m[6+1946] and _v24e ~= Enum.KeyCode.Unknown then
_v24a:SetKeybind(_v24e.Name)
else
_v24a.Keybind = nil
pcall(function()
_v24a._kbBtn.Text = _ei9m[744+129]
_v24a:_markBound(false)
end)
end
end
return setmetatable(_v24b, { __index = function(_v24g, _v24h)
if _v24h == _ei9m[1397-12] then return _v24a.Keybind or Enum.KeyCode.Unknown end
if _v24h == _ei9m[296+336] or _v24h == _ei9m[70+231] then return _v24a.Enabled end
return nil
end })
end
local function _v24i(_v24j, _v24k, _v24l)
local _v24m = _v24k.Callback or function() end
local _v24n = _v24j:AddSubToggle({ Name = _v4.displayName(_v24k.Name), Default = _v24k.Default and true or false, Tooltip = _v24l, Callback = _v24m })
local _v24o = {}
function _v24o:Set(_v24p, _v24q)
if not _v24q then pcall(_v24m, _v24p and true or false) end
pcall(function() _v24n:Set(_v24p, false) end)
end
function _v24o:SetKey() end
return setmetatable(_v24o, { __index = function(_v24r, _v24s)
if _v24s == _ei9m[7+2571] then return Enum.KeyCode.Unknown end
if _v24s == _ei9m[819-2] or _v24s == _ei9m[250] then return _v24n.Value end
return nil
end })
end
local function _v24t(_v24u, _v24v)
local _v24w = _v24v.Callback or function() end
local _v24x = _v24u:AddSlider({
Name = _v4.displayName(_v24v.Name), Min = _v24v.Min, Max = _v24v.Max, Default = _v24v.Default,
Step = _v24v.Increment or 1, Callback = _v24w,
})
local _v24y = {}
function _v24y:Set(_v24z, _v250)
pcall(function() _v24x:Set(_v24z) end)
if not _v250 then pcall(_v24w, _v24x.Value ~= nil and _v24x.Value or _v24z) end
end
return setmetatable(_v24y, { __index = function(_v251, _v252)
if _v252 == _ei9m[2284-3] then return _v24x.Value end
return nil
end })
end
local function _v253(_v254, _v255)
local _v256 = _v255.Callback or function() end
local _v257 = _v254:AddDropdown({
Name = _v240(_v255.Name), Options = _v255.Items or _v255.Options or {}, Default = _v255.Default, Callback = _v256,
})
local _v258 = {}
function _v258:Set(_v259, _v25a)
pcall(function() _v257:Set(_v259) end)
if not _v25a then pcall(_v256, _v259) end
end
function _v258:Refresh(_v25b, _v25c)
self._items = _v25b
_v257:Refresh(_v25b or {})
end
return setmetatable(_v258, { __index = function(_v25d, _v25e)
if _v25e == _ei9m[2+23] then return _v257.Selected end
return nil
end })
end
local function _v25f(_v25g, _v25h)
local _v25i = _v25h.Callback or function() end
local _v25k = _v25g:AddDropdown({
Name = _v240(_v25h.Name), Options = _v25h.Items or _v25h.Options or {}, Multi = true, Default = _v25h.Default,
Callback = function(_v25j) pcall(_v25i, _v25j) end,
})
local _v25l = {}
function _v25l:Set(_v25m, _v25n)
_v25k:Set(type(_v25m) == _ei9m[1022+937] and _v25m or {}, not _v25n)
end
function _v25l:Refresh(_v25o, _v25p)
self._items = _v25o
if not _v25p then _v25k:Set({}, false) end
_v25k:Refresh(_v25o or {})
end
return setmetatable(_v25l, { __index = function(_v25q, _v25r)
if _v25r == _ei9m[611+2177] then
local _v25s = {}
for _v25t in pairs(_v25k.Selected or {}) do _v25s[_v25t] = true end
return _v25s
end
return nil
end })
end
local function _v25u(_v25v, _v25w)
local _v25x = _v240(_v25w.Name or _ei9m[258+1193])
local _v25y = _v25w.Changed or _v25w.Callback or function() end
local _v25z = { Key = typeof(_v25w.Default) == _ei9m[2904-11] and _v25w.Default or Enum.KeyCode.Unknown }
local _v260
local function _v261(_v262)
if _v260 then
_v260.Text = _v262 or (_v25x .. _ei9m[2087-3] .. (_v25z.Key == Enum.KeyCode.Unknown and _ei9m[3+1384] or _v25z.Key.Name))
end
end
local _v263 = false
local row = _v25v:AddButton({
Name = _v25x,
Callback = function()
if _v263 then return end
_v263 = true
_v261(_v25x .. _ei9m[2505])
local _v264
_v264 = _v23w.InputBegan:Connect(function(_v265)
if _v265.UserInputType ~= Enum.UserInputType.Keyboard then return end
_v264:Disconnect()
_v263 = false
_v25z.Key = (_v265.KeyCode == Enum.KeyCode.Escape) and Enum.KeyCode.Unknown or _v265.KeyCode
_v261()
pcall(_v25y, _v25z.Key)
end)
end,
})
for _v266, _v267 in ipairs(row:GetChildren()) do
if _v267:IsA(_ei9m[2685-19]) and _v267.Text == _v25x then
_v260 = _v267
break
end
end
_v261()
function _v25z:Set(_v268, _v269)
if typeof(_v268) == _ei9m[6+1393] then _v25z.Key = _v268 end
_v261()
if not _v269 then pcall(_v25y, _v25z.Key) end
end
return _v25z
end
local function _v26a()
return setmetatable({}, { __index = function(_v26b, _v26c)
if _v26c == _ei9m[476-12] then return Enum.KeyCode.Unknown end
if _v26c == _ei9m[2993-7] or _v26c == _ei9m[2+168] then return false end
if _v26c == _ei9m[577] then return {} end
return function() end
end })
end
local function _v26d(_v26e, _v26f)
local _v26g, _v26h, _v26i = {}, {}, nil
local function _v26j(_v26k)
local _v26l = _v240(_v26k)
return _v26e.locked[_v26l] or _v26e.locked[_v26f .. "/" .. _v26l]
end
local function _v26m(_v26n, _v26o)
local _v26p = _v240(_v26n)
if _v26o then
local _v26q = _v26e.parentOf[_v26f .. "/" .. _v26p] or _v26e.parentOf[_v26p]
local _v26r = _v26q and _v26e.masters[_v26q]
if _v26r then return _v26r, true end
end
local _v26s = _v23y.WHERE[_v26p] or _v23y.SUB_MAIN[_v26f] or _v23y.MAIN[#_v23y.MAIN]
if not _v26e.tabs[_v26s] then _v26e.tabs[_v26s] = _v26e.win:AddTab(_v26s) end
local _v26t = _v26e.tabs[_v26s]
local _v26u = _v23y.HEADERS[_v26s]
local _v26v = _v26u and _v26i and _v26u[_v26i]
if _v26v and _v26e.lastHeader[_v26s] ~= _v26v then
_v26t:AddSection(_v26v)
_v26e.lastHeader[_v26s] = _v26v
end
return _v26t, false, _v26s
end
local function _v26w(_v26x)
local _v26y = _v240(_v26x)
if _v26e.premiumRows and _v26e.lockedTop[_v26y] then
pcall(function()
local _v26z, _v270, _v271 = _v26m(_v26x, true)
local _v272 = _v26z:AddToggle({ Name = _v4.displayName(_v26y), Premium = true })
local _v273 = _v271 and _v26e.rank[_v271] and _v26e.rank[_v271][_v26y]
if _v273 then _v272._container.LayoutOrder = _v273 - 100000 end
end)
end
return _v26a()
end
function _v26g:AddSection(_v274)
_v26i = type(_v274) == _ei9m[55+641] and _v274.Name or _v274
_v26h = (type(_v274) == _ei9m[20] and _v274.Info) and _v242(_v274.Info) or {}
return nil
end
function _v26g:AddToggle(_v275)
_v275 = _v275 or {}
if _v26j(_v275.Name) then return _v26w(_v275.Name) end
local _v276, _v277, _v278 = _v26m(_v275.Name, true)
if _v277 then
local _v279 = _v240(_v275.Name)
if not _v26e.hasKids[_v279] then return _v24i(_v276, _v275, _v275.Tooltip or _v26h[_v279]) end
local _v27a = _v276:AddToggle({
Name = _v4.displayName(_v279),
Default = false,
Tooltip = _v275.Tooltip or _v26h[_v279],
Callback = _v275.Callback or function() end,
})
if _v275.Default then _v27a:Set(true) end
_v26e.masters[_v279] = _v27a
return _v249(_v27a)
end
local _v27b = _v240(_v275.Name)
local _v27c = _v276:AddToggle({
Name = _v4.displayName(_v27b),
Default = false,
Keybind = type(_v275.Keybind) == _ei9m[5+1357] and _v275.Keybind or nil,
Tooltip = _v275.Tooltip or _v26h[_v27b],
Callback = _v275.Callback or function() end,
})
if _v275.Default then _v27c:Set(true) end
_v26e.masters[_v27b] = _v27c
local _v27d = _v26e.rank[_v278] and _v26e.rank[_v278][_v27b]
if _v27d then _v27c._container.LayoutOrder = _v27d - 100000 end
return _v249(_v27c)
end
function _v26g:AddSlider(_v27e)
_v27e = _v27e or {}
if _v26j(_v27e.Name) then return _v26w(_v27e.Name) end
return _v24t(_v26m(_v27e.Name, true), _v27e)
end
function _v26g:AddDropdown(_v27f)
_v27f = _v27f or {}
if _v26j(_v27f.Name) then return _v26w(_v27f.Name) end
local _v27g = _v26m(_v27f.Name, true)
if _v27f.Multi then return _v25f(_v27g, _v27f) end
return _v253(_v27g, _v27f)
end
function _v26g:AddButton(_v27h)
_v27h = _v27h or {}
if _v26j(_v27h.Name) then return _v26w(_v27h.Name) end
return (_v26m(_v27h.Name, false)):AddButton({ Name = _v240(_v27h.Name), Callback = _v27h.Callback })
end
function _v26g:AddLabel(_v27i)
_v27i = _v27i or {}
if _v26j(_v27i.Name) then return _v26w(_v27i.Name) end
local _v27j
pcall(function()
local _v27k, _v27l = _v26m(_v27i.Name, true)
if _v27l and _v27k.AddNote then
_v27j = _v27k:AddNote(_v27i.Text or "")
elseif not _v27l and _v27k.AddLabel then
_v27j = _v27k:AddLabel(_v27i.Text or "")
end
end)
return { SetText = function(_v27m, _v27n)
_v27m._text = _v27n
pcall(function()
if typeof(_v27j) == _ei9m[6+2871] then _v27j.Text = tostring(_v27n)
elseif _v27j and _v27j.SetText then _v27j:SetText(tostring(_v27n)) end
end)
end }
end
function _v26g:AddKeybind(_v27o)
_v27o = _v27o or {}
if _v26j(_v27o.Name) then return _v26w(_v27o.Name) end
return _v25u((_v26m(_v27o.Name, false)), _v27o)
end
_v26g._raw = {}
for _v27p, _v27q in ipairs({ _ei9m[7+1430], _ei9m[6+2631], _ei9m[2006-19], _ei9m[2+1020], _ei9m[1529+1380], _ei9m[2495-13], _ei9m[3+1915] }) do
local _v27r = _v26g[_v27q]
_v26g._raw[_v27q] = _v27r
_v26g[_v27q] = function(_v27s, _v27t, ...)
local _v27u = _v27r(_v27s, _v27t, ...)
local _v27v = _v26e.rec
if _v27v and not _v27v.replaying then
_v27v.log[#_v27v.log + 1] = { proxy = _v26g, method = _v27q, cfg = _v27t, obj = _v27u }
end
return _v27u
end
end
return _v26g
end
function _v23z.new(_v27w)
_v27w = _v27w or {}
local _v27x = (type(getgenv) == _ei9m[742+460]) and getgenv() or _G
if _v27x.__PX_EZ_WIN then
pcall(function()
_v27x.__PX_EZ_WIN.OnUnload = nil
_v27x.__PX_EZ_WIN:Destroy()
end)
end
local _v27y = { tabs = {}, toggleKey = Enum.KeyCode.RightShift }
local _v27z = false
local _v280 = _ei9m[7+1344]
local _v281 = false
local _v282, _v283 = _v23w.MouseBehavior, _v23w.MouseIconEnabled
local _v284 = {}
pcall(function()
_v284[1] = _v23w:GetPropertyChangedSignal(_ei9m[3+1773]):Connect(function()
local _v285 = _v23w.MouseBehavior
if not _v281 or _v285 ~= Enum.MouseBehavior.Default then _v282 = _v285 end
end)
_v284[2] = _v23w:GetPropertyChangedSignal(_ei9m[526]):Connect(function()
local _v286 = _v23w.MouseIconEnabled
if not _v281 or not _v286 then _v283 = _v286 end
end)
end)
local function _v287()
_v23w.MouseBehavior = _v282
_v23w.MouseIconEnabled = _v283
end
local function _v288()
pcall(function() _v23x:UnbindFromRenderStep(_v280) end)
for _v289, _v28a in ipairs(_v284) do pcall(function() _v28a:Disconnect() end) end
if _v281 then
_v281 = false
pcall(_v287)
end
end
local _v28b = {}
for _v28c, _v28d in pairs(_v23y.NEST) do
for _v28e, _v28f in ipairs(_v28d) do _v28b[_v28f] = _v28c end
end
local _v28g = {}
for _v28h, _v28i in pairs(_v23y.ORDER or {}) do
_v28g[_v28h] = {}
for _v28j, _v28k in ipairs(_v28i) do _v28g[_v28h][_v28k] = _v28j end
end
local _v28l = {}
for _v28m in pairs(_v23y.NEST) do _v28l[_v28m] = true end
local _v28n = {}
local function _v28o(_v28p)
if _v28n[_v28p] then return end
_v28n[_v28p] = true
for _v28q, _v28r in ipairs(_v23y.NEST[_v28p] or {}) do _v28o(_v28r) end
end
for _v28s, _v28t in ipairs(_v23y.LOCKED or {}) do _v28o(_v28t) end
local _v28u = {}
for _v28v, _v28w in ipairs(_v23y.LOCKED or {}) do
if not _v28n[_v28b[_v28w] or ""] then _v28u[_v28w] = true end
end
local _v28x = { EZ = _v23v, kind = _v4.guiKindOf(_v23v), win = nil, ctx = nil, modal = nil, cfgOpts = nil }
local _v28y = { log = {}, replaying = false }
local _v291 = setmetatable({}, { __index = function(_v28z, _v290) return _v28x.ctx and _v28x.ctx[_v290] end })
local _v292 = false
local _v293 = _v23w.TouchEnabled and not _v23w.KeyboardEnabled
local function _v294(_v295)
local _v297 = function(_v296) return _v27y:SwapGui(_v296) end
if _v295 == _ei9m[766+1625] then
return { current = _ei9m[726-6], options = { _ei9m[3019], _ei9m[19+313], _ei9m[901-15], _ei9m[1635-14] }, pick = _v297 }
end
return { options = { { Name = _ei9m[165-9], Accent = Color3.fromRGB(140, 95, 255), Ink = Color3.fromRGB(12, 10, 18),
Blurb = _ei9m[2632-11] } }, pick = _v297 }
end
local function _v298(_v299, _v29a)
local _v29b = _v299:CreateWindow({
Title = _v27w.Title or _ei9m[6+1749],
Website = _ei9m[140+321],
Discord = _ei9m[7+2793],
PremiumUrl = _ei9m[1095+1450],
GuiSwap = _v294(_v29a),
OnUnload = function()
if _v27z or _v292 then return end
_v27z = true
if _v27y.onUnload then pcall(_v27y.onUnload) end
_v288()
end,
})
local _v29c = { win = _v29b, tabs = {}, masters = {}, parentOf = _v28b, lastHeader = {}, rank = _v28g,
hasKids = _v28l, locked = _v28n, rec = _v28y,
lockedTop = _v28u, premiumRows = _v299.PREMIUM_URL ~= nil }
for _v29d, _v29e in ipairs(_v23y.MAIN) do
if _v29c.premiumRows or not (_v23y.PREMIUM_TABS and _v23y.PREMIUM_TABS[_v29e]) then _v29c.tabs[_v29e] = _v29b:AddTab(_v29e) end
end
local _v29f
if not _v293 then
_v29f = Instance.new(_ei9m[737])
_v29f.Name = _ei9m[2449+66]
_v29f.Modal = true
_v29f.Text = ""
_v29f.AutoButtonColor = false
_v29f.BackgroundTransparency = 1
_v29f.Size = UDim2.new(0, 1, 0, 1)
_v29f.Visible = false
_v29f.Parent = _v29b._gui
end
return _v29b, _v29c, _v29f
end
_v28x.win, _v28x.ctx, _v28x.modal = _v298(_v23v, _v28x.kind)
_v27x.__PX_EZ_WIN = _v28x.win
if not _v293 then
pcall(function()
_v23x:BindToRenderStep(_v280, Enum.RenderPriority.Camera.Value + 1, function()
local _v29g, _v29h = _v28x.win, _v28x.modal
if _v29g and _v29g._gui and _v29g._visible then
if _v29h and not _v29h.Visible then _v29h.Visible = true end
if not _v281 then
_v281 = true
else
if _v23w.MouseBehavior ~= Enum.MouseBehavior.Default then _v282 = _v23w.MouseBehavior end
if not _v23w.MouseIconEnabled then _v283 = false end
end
_v23w.MouseBehavior = Enum.MouseBehavior.Default
_v23w.MouseIconEnabled = true
elseif _v281 and not _v292 then
_v281 = false
if _v29h then _v29h.Visible = false end
_v287()
end
end)
end)
end
function _v27y:IsVisible()
return _v28x.win ~= nil and _v28x.win._gui ~= nil and _v28x.win._visible == true
end
function _v27y:Notify(_v29i, _v29j)
if _v28x.win and _v28x.win._gui then return _v28x.win:Notify(_v29i, _v29j or 3) end
return nil
end
function _v27y:SetConfig(_v29k)
_v28x.cfgOpts = _v29k
return _v28x.win:SetConfig(_v29k)
end
function _v27y:Destroy()
_v27z = true
_v288()
pcall(function() _v28x.win:Destroy() end)
if _v27x.__PX_EZ_WIN == _v28x.win then _v27x.__PX_EZ_WIN = nil end
end
function _v27y:GetGui()
return _v28x.kind
end
function _v27y:GetLook()
local _v29l
pcall(function() _v29l = _v28x.win:GetTheme() end)
return _v29l
end
local function _v29m(_v29n)
local _v29o = _v29n.obj
if type(_v29o) ~= _ei9m[358+2330] then return nil end
local _v29p = {}
pcall(function()
local _v29q = _v29n.method
if _v29q == _ei9m[1487-5] then _v29p.value = _v29o.Value; _v29p.key = _v29o.Key
elseif _v29q == _ei9m[2+2758] then _v29p.value = _v29o.Value
elseif _v29q == _ei9m[656] then _v29p.value = _v29o.Selected; _v29p.items = rawget(_v29o, _ei9m[7+1029])
elseif _v29q == _ei9m[212+231] then _v29p.key = _v29o.Key
elseif _v29q == _ei9m[1300+446] then _v29p.text = rawget(_v29o, _ei9m[2275]) end
end)
return _v29p
end
local function _v29r(_v29s, _v29t)
if type(_v29s.cfg) ~= _ei9m[7+264] then return _v29s.cfg end
local _v29u = {}
for _v29v, _v29w in pairs(_v29s.cfg) do _v29u[_v29v] = _v29w end
if _v29t then
local _v29x = _v29s.method
if (_v29x == _ei9m[410] or _v29x == _ei9m[2237-15]) and _v29t.value ~= nil then _v29u.Default = _v29t.value
elseif _v29x == _ei9m[4+625] then
if _v29t.value ~= nil then _v29u.Default = _v29t.value end
if _v29t.items then _v29u.Items, _v29u.Options = _v29t.items, nil end
elseif _v29x == _ei9m[2+2941] and _v29t.key then _v29u.Default = _v29t.key end
end
return _v29u
end
local function _v29y(_v29z, _v2a0)
if type(_v29z) ~= _ei9m[2635] or type(_v2a0) ~= _ei9m[227+199] or _v29z == _v2a0 then return end
for _v2a1 in pairs(_v29z) do
if _v2a1 ~= _ei9m[2266] and _v2a1 ~= _ei9m[2+686] then _v29z[_v2a1] = nil end
end
for _v2a2, _v2a3 in pairs(_v2a0) do _v29z[_v2a2] = _v2a3 end
setmetatable(_v29z, getmetatable(_v2a0))
end
local function _v2a4(_v2a5, _v2a6)
local _v2a7 = _v2a5.obj
if type(_v2a7) ~= _ei9m[391+199] or not _v2a6 then return end
pcall(function()
local _v2a8 = _v2a5.method
if _v2a8 == _ei9m[18+183] then
if _v2a6.value ~= nil and _v2a7.Set then _v2a7:Set(_v2a6.value, true) end
if typeof(_v2a6.key) == _ei9m[2320] and _v2a6.key ~= Enum.KeyCode.Unknown and _v2a7.SetKey then _v2a7:SetKey(_v2a6.key, true) end
elseif _v2a8 == _ei9m[23] or _v2a8 == _ei9m[1640-12] then
if _v2a6.value ~= nil and _v2a7.Set then _v2a7:Set(_v2a6.value, true) end
elseif _v2a8 == _ei9m[2613] then
if _v2a6.key and _v2a7.Set then _v2a7:Set(_v2a6.key, true) end
elseif _v2a8 == _ei9m[2060+325] then
if _v2a6.text ~= nil and _v2a7.SetText then _v2a7:SetText(_v2a6.text) end
end
end)
end
function _v27y:SwapGui(_v2a9)
_v2a9 = tostring(_v2a9 or "")
local _v2aa = (_v2a9 == _ei9m[7+648]) and _ei9m[648+815] or _ei9m[586]
if _v292 or _v27z then return false end
if _v2aa == _v28x.kind then
if _v2aa == _ei9m[1007+926] then
pcall(function()
if _v28x.win._pickTheme then _v28x.win:_pickTheme(_v2a9) else _v28x.win:SetTheme(_v2a9) end
end)
end
return true
end
local _v2ab = os.clock()
local _v2ac, _v2ad = _v4.guiLibrary(_v2aa)
if not _v2ac then
_v27y:Notify(_ei9m[5+1924] .. _v2a9 .. ": " .. tostring(_v2ad), 4)
return false
end
_v292 = true
local _v2ae = {}
for _v2af, _v2ag in ipairs(_v28y.log) do _v2ae[_v2af] = _v29m(_v2ag) end
local _v2ah = { win = _v28x.win, ctx = _v28x.ctx, modal = _v28x.modal, EZ = _v28x.EZ, kind = _v28x.kind }
local _v2ai, _v2aj = {}, nil
local okBuild, buildErr = pcall(function()
local _v2ak, _v2al, _v2am = _v298(_v2ac, _v2aa)
_v2ak._autoLoaded = true
_v28x.win, _v28x.ctx, _v28x.modal, _v28x.EZ, _v28x.kind = _v2ak, _v2al, _v2am, _v2ac, _v2aa
_v28y.replaying = true
local _v2an = _v4.SUPPRESS_TOGGLE_NOTIFY
_v4.SUPPRESS_TOGGLE_NOTIFY = true
for _v2ao, _v2ap in ipairs(_v28y.log) do
local _v2aq, _v2ar = pcall(_v2ap.proxy._raw[_v2ap.method], _v2ap.proxy, _v29r(_v2ap, _v2ae[_v2ao]))
if not _v2aq then _v2aj = _v2aj or (_v2ap.method .. " " .. tostring(type(_v2ap.cfg) == _ei9m[308+1748] and _v2ap.cfg.Name or _v2ap.cfg) .. ": " .. tostring(_v2ar)) end
_v2ai[_v2ao] = _v2ar
end
_v4.SUPPRESS_TOGGLE_NOTIFY = _v2an
_v28y.replaying = false
if _v2aj then error(_v2aj, 0) end
end)
_v28y.replaying = false
if not okBuild then
local _v2as, _v2at = _v28x.win, _v28x.modal
_v28x.win, _v28x.ctx, _v28x.modal, _v28x.EZ, _v28x.kind = _v2ah.win, _v2ah.ctx, _v2ah.modal, _v2ah.EZ, _v2ah.kind
if _v2as and _v2as ~= _v2ah.win then pcall(function() _v2as.OnUnload = nil _v2as:Destroy() end) end
if _v2at and _v2at ~= _v2ah.modal then pcall(function() _v2at:Destroy() end) end
_v292 = false
warn(_ei9m[628+300] .. _v2a9 .. _ei9m[2732] .. tostring(buildErr))
_v27y:Notify(_ei9m[219+600] .. _v2a9, 4)
return false
end
for _v2au, _v2av in ipairs(_v28y.log) do
_v29y(_v2av.obj, _v2ai[_v2au])
_v2a4(_v2av, _v2ae[_v2au])
end
if _v28x.cfgOpts then
local _v2aw = {}
for _v2ax, _v2ay in pairs(_v28x.cfgOpts) do _v2aw[_v2ax] = _v2ay end
_v2aw.AutoLoad = false
pcall(function() _v28x.win:SetConfig(_v2aw) end)
end
_v27x.__PX_EZ_WIN = _v28x.win
pcall(function() _v2ah.win.OnUnload = nil _v2ah.win:Destroy() end)
if _v2ah.modal then pcall(function() _v2ah.modal:Destroy() end) end
if _v2aa == _ei9m[216] then
pcall(function()
if _v28x.win._pickTheme then _v28x.win:_pickTheme(_v2a9) else _v28x.win:SetTheme(_v2a9) end
end)
end
_v292 = false
_v4.saveGuiChoice(_v2aa)
_v27y:Notify(string.format(_ei9m[2296-7], _v2a9, os.clock() - _v2ab), 3)
return true
end
function _v27y:AddTab(_v2az)
local _v2b0 = {}
function _v2b0:AddSubTab(_v2b1)
return _v26d(_v291, type(_v2b1) == _ei9m[444] and _v2b1.Name or tostring(_v2b1))
end
return _v2b0
end
_v27y.tabs.Settings = _v26d(_v291, _ei9m[2+1205])
return _v27y
end
return _v23z
end
_v4.FUSION_LAYOUT = (function()
return {
kind = _ei9m[1009+689], version = 1, hub = _ei9m[6+1271],
match = 3,
pages = {
{ name = _ei9m[1935+1096], icon = _ei9m[5+1165], blurb = _ei9m[937+89],
sections = {
{ title = _ei9m[2+786], note = _ei9m[2115-16] },
{ title = _ei9m[2573-13], note = _ei9m[1520-18] },
{ title = _ei9m[9+712], note = _ei9m[28+240] },
} },
{ name = _ei9m[564-15], icon = _ei9m[1664-7], blurb = _ei9m[1015+469],
sections = {
{ title = _ei9m[1049+87], note = _ei9m[11] },
{ title = _ei9m[293+594], note = _ei9m[1561] },
} },
{ name = _ei9m[4+789], icon = _ei9m[275+1016], blurb = _ei9m[361+1770],
sections = {
{ title = _ei9m[152-12], note = _ei9m[591+233] },
{ title = _ei9m[421-4], note = _ei9m[2+1788] },
} },
{ name = _ei9m[1803-1], icon = _ei9m[154-19], blurb = _ei9m[806+1031],
sections = {
{ title = _ei9m[201-10], note = _ei9m[2456] },
{ title = _ei9m[1739], note = _ei9m[301+362] },
{ title = _ei9m[2066], note = _ei9m[1615-5] },
{ title = _ei9m[4+790], note = _ei9m[1847] },
} },
{ name = _ei9m[2656-11], icon = _ei9m[3014-9], blurb = _ei9m[1713],
sections = {
{ title = _ei9m[2+3033], note = _ei9m[1661] },
{ title = _ei9m[135+38], note = _ei9m[1468-12] },
{ title = _ei9m[303-16], note = _ei9m[2542+288] },
{ title = _ei9m[255+778], note = _ei9m[1596] },
{ title = _ei9m[1571], note = _ei9m[622] },
} },
},
features = {
[_ei9m[708]] = { page = _ei9m[557-3], section = 1,
hint = _ei9m[2503-2],
keys = { _ei9m[2+2158], _ei9m[5+1990], _ei9m[1822-13], _ei9m[67+321] },
},
[_ei9m[179+1033]] = { page = _ei9m[160], section = 1,
hint = _ei9m[1125-4],
keys = { _ei9m[1702-13], _ei9m[91+682], _ei9m[1271+136], _ei9m[7+1611], _ei9m[2813], _ei9m[3+2850] },
},
[_ei9m[2214]] = { page = _ei9m[1319+818], section = 1,
hint = _ei9m[220],
keys = { _ei9m[3+1549], _ei9m[1951-12], _ei9m[2623-20], _ei9m[2664], _ei9m[533+1966], _ei9m[1693-11] },
groups = {
{ title = _ei9m[2576-19],
rows = { _ei9m[5+2263], _ei9m[357-19] },
},
{ title = _ei9m[28+1444],
rows = { _ei9m[411], _ei9m[19+765], _ei9m[3+3015], _ei9m[2969], _ei9m[1292+1415],
_ei9m[6+2033] },
},
{ title = _ei9m[1073+1437],
rows = { _ei9m[2+188], _ei9m[41+232], _ei9m[1334-3] },
},
},
},
[_ei9m[240+1419]] = { page = _ei9m[808], section = 2,
hint = _ei9m[1918-3],
keys = { _ei9m[569-10], _ei9m[481-16], _ei9m[1164-19], _ei9m[7+251], _ei9m[566-11] },
groups = {
{ title = _ei9m[5+2840],
rows = { _ei9m[6+1752], _ei9m[6+2135], _ei9m[5+1119], _ei9m[7+2622], _ei9m[4+2308], _ei9m[2665-14] },
},
{ title = _ei9m[733+48],
rows = { _ei9m[5+1083], _ei9m[4+517], _ei9m[3+1173], _ei9m[2711] },
},
},
},
[_ei9m[2229]] = { page = _ei9m[2220+565], section = 2,
hint = _ei9m[2864],
keys = { _ei9m[1389], _ei9m[2121-2], _ei9m[3+1278], _ei9m[3+64], _ei9m[1892-9] },
},
Rejoin = { page = _ei9m[368-3], section = 2,
hint = _ei9m[4+2273],
about = _ei9m[1985+583],
keys = { _ei9m[1829+117], _ei9m[7+838], _ei9m[2668], _ei9m[5+877] },
},
[_ei9m[2770-9]] = { page = _ei9m[4+570], section = 1,
hint = _ei9m[1639-5],
about = _ei9m[349+1641],
keys = { _ei9m[244+53], _ei9m[974], _ei9m[2049-17], _ei9m[1693-10] },
},
[_ei9m[3+1548]] = { page = _ei9m[7+1409], section = 2,
hint = _ei9m[622-11],
keys = { _ei9m[6+995], _ei9m[2410-15], _ei9m[1775-3], _ei9m[5+1242], _ei9m[2227] },
},
[_ei9m[1996]] = { page = _ei9m[4+606], section = 3,
hint = _ei9m[953+1250],
about = _ei9m[2603+444],
keys = { _ei9m[7+37], _ei9m[2602], _ei9m[849], _ei9m[2656+364], _ei9m[2200] },
},
[_ei9m[1103-7]] = { page = _ei9m[3+3], section = 1,
hint = _ei9m[3+289],
keys = { _ei9m[36+1031], _ei9m[4+2986], _ei9m[1253-19], _ei9m[3+273], _ei9m[883], _ei9m[2962], _ei9m[3+614] },
},
[_ei9m[79+1536]] = { page = _ei9m[810+1068], section = 1,
hint = _ei9m[2069],
keys = { _ei9m[6+1140], _ei9m[1431], _ei9m[2694] },
},
[_ei9m[1769+663]] = { page = _ei9m[2082-7], section = 2,
hint = _ei9m[2060-6],
keys = { _ei9m[411+2355], _ei9m[7+1186], _ei9m[6+1836], _ei9m[1414-10] },
},
[_ei9m[1659-7]] = { page = _ei9m[1417+98], section = 2,
hint = _ei9m[5+364],
keys = { _ei9m[6+1100], _ei9m[7+316], _ei9m[5+1174], _ei9m[1112+535] },
},
[_ei9m[89+28]] = { page = _ei9m[6+2966],
hint = _ei9m[363+564],
keys = { _ei9m[588+1780], _ei9m[176+2391], _ei9m[750-12], _ei9m[2165-10], _ei9m[877-8] },
},
[_ei9m[796+466]] = { page = _ei9m[255+805],
hint = _ei9m[2209+125],
about = _ei9m[886+242],
keys = { _ei9m[639-12], _ei9m[72+29], _ei9m[198+279], _ei9m[3+387], _ei9m[1156-9], _ei9m[2925] },
},
[_ei9m[2390]] = { page = _ei9m[6+1882],
hint = _ei9m[251+196],
keys = { _ei9m[1736-11], _ei9m[93-1], _ei9m[1242-13], _ei9m[115+1049], _ei9m[1864-13], _ei9m[2+2195] },
},
[_ei9m[113]] = { page = _ei9m[3+1106], section = 1,
hint = _ei9m[988],
keys = { _ei9m[279+1473], _ei9m[1478+555], _ei9m[2355], _ei9m[1319+1377], _ei9m[4+1528], _ei9m[1235-9] },
},
Reach = { page = _ei9m[2863], section = 1,
hint = _ei9m[4+2951],
keys = { _ei9m[2680-2], _ei9m[18-16], _ei9m[420+2161], _ei9m[5+2180], _ei9m[2244] },
},
[_ei9m[1947-17]] = { page = _ei9m[2905], section = 2,
hint = _ei9m[1031],
keys = { _ei9m[1085], _ei9m[23+222], _ei9m[512+1245], _ei9m[184+529] },
},
[_ei9m[350]] = { page = _ei9m[2820], section = 2,
hint = _ei9m[2590-2],
keys = { _ei9m[2+754], _ei9m[918+84], _ei9m[2205], _ei9m[7+533] },
},
[_ei9m[2+289]] = { page = _ei9m[2894], section = 2,
hint = _ei9m[172],
keys = { _ei9m[60+3], _ei9m[1671-15], _ei9m[3051], _ei9m[1093-7], _ei9m[979-13] },
},
Players = { page = _ei9m[393-11], section = 1,
hint = _ei9m[2+1267],
keys = { _ei9m[774-12], _ei9m[2071-18], _ei9m[2895], _ei9m[59+512], _ei9m[816-1], _ei9m[7+2169], _ei9m[284] },
groups = {
{ title = _ei9m[3+888],
rows = { _ei9m[387+0], _ei9m[454+25], _ei9m[2691], _ei9m[6+1153], _ei9m[7+1159], _ei9m[2748], _ei9m[4+2934], _ei9m[425+215], _ei9m[1957-15], _ei9m[2396-13], _ei9m[913+1166], _ei9m[1154-2], _ei9m[800], _ei9m[270], _ei9m[2026-13], _ei9m[1188], _ei9m[1197-7], _ei9m[6+49], _ei9m[2022] },
},
{ title = _ei9m[1554-18],
rows = { _ei9m[2878], _ei9m[694], _ei9m[2871], _ei9m[968+84], _ei9m[331+1066], _ei9m[2069-10] },
},
{ title = _ei9m[1003+1311], flatten = _ei9m[1418+849],
rows = { _ei9m[3+1443], _ei9m[660+705], _ei9m[834+610] },
dim = { [_ei9m[2+297]] = _ei9m[728-11], [_ei9m[81+48]] = _ei9m[1801] },
},
},
},
[_ei9m[3+1751]] = { page = _ei9m[1316-6], section = 1,
hint = _ei9m[986],
keys = { _ei9m[2299], _ei9m[3+750], _ei9m[7+462] },
},
[_ei9m[1517+3]] = { page = _ei9m[1608-10], section = 1,
hint = _ei9m[1072],
keys = { _ei9m[1048], _ei9m[530], _ei9m[680+1244], _ei9m[2+1417], _ei9m[404] },
},
[_ei9m[1556]] = { page = _ei9m[809+255], section = 1,
hint = _ei9m[2391-11],
keys = { _ei9m[161+2436], _ei9m[751+1615] },
},
[_ei9m[335+183]] = { page = _ei9m[80+1187], section = 2,
hint = _ei9m[1702-7],
keys = { _ei9m[5+409], _ei9m[664+776], _ei9m[1760], _ei9m[802] },
},
[_ei9m[105+1803]] = { page = _ei9m[2976], section = 2,
hint = _ei9m[2078],
keys = { _ei9m[383-8], _ei9m[3030-17], _ei9m[1647+563], _ei9m[30-20] },
},
Skin = { page = _ei9m[2969-4], section = 2,
hint = _ei9m[450+2230],
keys = { _ei9m[6+1495], _ei9m[1265-9], _ei9m[255], _ei9m[961+318], _ei9m[24+317] },
},
Tracers = { page = _ei9m[318+509], section = 2,
hint = _ei9m[553-20],
keys = { _ei9m[403-4], _ei9m[1181+1648], _ei9m[2+1389], _ei9m[2845-3] },
},
Fullbright = { page = _ei9m[5+2486], section = 3,
hint = _ei9m[3+915],
keys = { _ei9m[2+2386], _ei9m[1409-19], _ei9m[945+1303], _ei9m[6+1897] },
},
[_ei9m[905+924]] = { page = _ei9m[647+930], section = 3,
hint = _ei9m[1445],
keys = { _ei9m[4+1245], _ei9m[2419], _ei9m[1753], _ei9m[2783] },
},
[_ei9m[2927-17]] = { page = _ei9m[2112], section = 3,
hint = _ei9m[1879+245],
keys = { _ei9m[588], _ei9m[1573+47], _ei9m[1451-13], _ei9m[454], _ei9m[2765-10], _ei9m[1614-20] },
},
[_ei9m[1223+450]] = { page = _ei9m[1848], section = 3,
hint = _ei9m[2650],
keys = { _ei9m[685+1071], _ei9m[761+927], _ei9m[172-11], _ei9m[5+1962], _ei9m[65], _ei9m[2109] },
},
[_ei9m[1613+725]] = { page = _ei9m[1126+122], section = 4,
hint = _ei9m[734-1],
keys = { _ei9m[963+1745], _ei9m[395-4], _ei9m[746-20] },
},
[_ei9m[1916-18]] = { page = _ei9m[177+470], section = 4,
hint = _ei9m[39+1369],
keys = { _ei9m[363+1697], _ei9m[102+181], _ei9m[1356-16] },
},
[_ei9m[2725-2]] = { page = _ei9m[3030-4], section = 4,
hint = _ei9m[5+2607],
keys = { _ei9m[1261], _ei9m[2035], _ei9m[1222+446] },
},
[_ei9m[1220-14]] = { page = _ei9m[3+659], section = 4,
hint = _ei9m[6+259],
keys = { _ei9m[1220-9], _ei9m[2639-7], _ei9m[925+1033], _ei9m[2950], _ei9m[1522-4], _ei9m[712] },
},
[_ei9m[2750-3]] = { page = _ei9m[3021-11], section = 4,
hint = _ei9m[821-8],
keys = { _ei9m[5+1205], _ei9m[2043], _ei9m[2143-3], _ei9m[228-4], _ei9m[1570-1] },
},
[_ei9m[2843]] = { page = _ei9m[1168], section = 1,
hint = _ei9m[1821-7],
keys = { _ei9m[7+2095], _ei9m[508-3], _ei9m[4+2186], _ei9m[337+840], _ei9m[379], _ei9m[343] },
},
[_ei9m[976+1966]] = { page = _ei9m[401+875], section = 1,
hint = _ei9m[4+1604],
keys = { _ei9m[2+790], _ei9m[656+1754], _ei9m[644-13], _ei9m[2+1341] },
},
[_ei9m[6+838]] = { page = _ei9m[2015+193], section = 2,
hint = _ei9m[462],
about = _ei9m[2145+46],
keys = { _ei9m[203+2268], _ei9m[2+1437], _ei9m[3+575], _ei9m[715+690], _ei9m[1111], _ei9m[172-6], _ei9m[5+2355] },
},
[_ei9m[5+2300]] = { page = _ei9m[330+223], section = 2,
hint = _ei9m[2314-11],
about = _ei9m[2781-17],
keys = { _ei9m[4+1128], _ei9m[1800], _ei9m[109-16], _ei9m[1074-3], _ei9m[124-5], _ei9m[2272+312] },
},
[_ei9m[79+18]] = { page = _ei9m[6+2995], section = 2,
hint = _ei9m[686-3],
about = _ei9m[4+1737],
keys = { _ei9m[1702-2], _ei9m[1858], _ei9m[1264-5], _ei9m[1469], _ei9m[2775], _ei9m[2070-7], _ei9m[4+2950] },
},
[_ei9m[3047-4]] = { page = _ei9m[993-8], section = 2,
hint = _ei9m[716+467],
about = _ei9m[1070+1105],
keys = { _ei9m[1334], _ei9m[1778-14], _ei9m[2535-15], _ei9m[903], _ei9m[3042], _ei9m[2873], _ei9m[2658] },
},
Fly = { page = _ei9m[2+2446], section = 2,
hint = _ei9m[1426-15],
keys = { _ei9m[6+2654], _ei9m[520+1859], _ei9m[137], _ei9m[934] },
},
[_ei9m[2251-18]] = { page = _ei9m[1488], section = 2,
hint = _ei9m[1042+1122],
keys = { _ei9m[1728+125], _ei9m[23+323], _ei9m[1628-16], _ei9m[509-1], _ei9m[527] },
},
[_ei9m[922]] = { page = _ei9m[2290], section = 2,
hint = _ei9m[187+1722],
keys = { _ei9m[2182], _ei9m[958+782], _ei9m[2462-1], _ei9m[1424] },
},
[_ei9m[2412+197]] = { page = _ei9m[7+2899], section = 2,
hint = _ei9m[68],
keys = { _ei9m[129-13], _ei9m[2797-18], _ei9m[723-9], _ei9m[4+581], _ei9m[399+465] },
},
[_ei9m[111]] = { page = _ei9m[2222+576], section = 3,
hint = _ei9m[7+1288],
keys = { _ei9m[165], _ei9m[7+51], _ei9m[1988-17], _ei9m[2725-19], _ei9m[6+2838], _ei9m[1959+333] },
},
[_ei9m[2789-17]] = { page = _ei9m[2877-11], section = 3,
hint = _ei9m[3+701],
keys = { _ei9m[204], _ei9m[4+834], _ei9m[115+2372], _ei9m[3+293], _ei9m[801], _ei9m[1578-3], _ei9m[1527-4] },
groups = {
{ title = _ei9m[617+1235],
rows = { _ei9m[1954-7], _ei9m[1594+1028], _ei9m[2200-4], _ei9m[812], _ei9m[1013-3], _ei9m[1988],
_ei9m[695], _ei9m[95+277] },
},
{ title = _ei9m[612-10],
rows = { _ei9m[1093-18], _ei9m[2990-9] },
},
},
},
[_ei9m[2480-18]] = { page = _ei9m[329], section = 3,
hint = _ei9m[744-12],
keys = { _ei9m[2267-6], _ei9m[2+2780], _ei9m[640+576], _ei9m[2062-17] },
},
[_ei9m[2253-3]] = { page = _ei9m[2648], section = 4,
hint = _ei9m[48],
keys = { _ei9m[1299-14], _ei9m[2683-8], _ei9m[1033+509], _ei9m[7+1040] },
},
[_ei9m[2484-9]] = { page = _ei9m[5+9], section = 4,
hint = _ei9m[1372-18],
keys = { _ei9m[930-18], _ei9m[2026], _ei9m[3+205], _ei9m[1690+462] },
},
Minimap = { page = _ei9m[1711], section = 5,
hint = _ei9m[2351],
keys = { _ei9m[2522], _ei9m[582], _ei9m[5], _ei9m[108] },
},
[_ei9m[2+1565]] = { page = _ei9m[1607-17], section = 5,
hint = _ei9m[1339-12],
keys = { _ei9m[630], _ei9m[443+798], _ei9m[396+796], _ei9m[1265+1787], _ei9m[80+1279], _ei9m[799] },
},
[_ei9m[269+12]] = { page = _ei9m[1183-18], section = 5,
hint = _ei9m[1038],
keys = { _ei9m[111-13], _ei9m[1467+839], _ei9m[7+2251], _ei9m[2029], _ei9m[5+415], _ei9m[2+2725] },
},
[_ei9m[82+2]] = { page = _ei9m[2994-19], section = 5,
hint = _ei9m[2391-17],
keys = { _ei9m[2126-19], _ei9m[2232-11], _ei9m[797+247], _ei9m[1487], _ei9m[718] },
},
},
alias = {
[_ei9m[2677-12]] = _ei9m[46+281],
[_ei9m[1230+1295]] = _ei9m[1282],
[_ei9m[2+1539]] = _ei9m[564-16],
[_ei9m[320-15]] = _ei9m[2072+19],
[_ei9m[2113]] = _ei9m[7+2551],
[_ei9m[4+1651]] = _ei9m[303],
[_ei9m[363]] = _ei9m[422+27],
[_ei9m[561+54]] = _ei9m[281+987],
[_ei9m[2+1044]] = _ei9m[1901],
[_ei9m[721+380]] = _ei9m[4+1055],
[_ei9m[952]] = _ei9m[2417-1],
[_ei9m[1812-7]] = _ei9m[3+185],
[_ei9m[754+566]] = _ei9m[6+229],
[_ei9m[2+2209]] = _ei9m[1129-19],
[_ei9m[1607]] = _ei9m[3+991],
[_ei9m[2628]] = _ei9m[2111-13],
[_ei9m[312]] = _ei9m[7+865],
},
starters = {
{ step = 1, page = _ei9m[1660], name = _ei9m[2396], why = _ei9m[4+1975] },
{ step = 2, page = _ei9m[2+2938], name = _ei9m[2282-17], why = _ei9m[1947-11] },
{ step = 3, page = _ei9m[5+1267], name = _ei9m[509+541], why = _ei9m[2904] },
{ step = 4, page = _ei9m[2224-9], name = _ei9m[940+463], why = _ei9m[59] },
{ step = 5, page = _ei9m[1613+11], name = _ei9m[3+2178], why = _ei9m[2382+270] },
{ step = 6, page = _ei9m[2+900], name = _ei9m[193+149], why = _ei9m[218] },
{ step = 7, page = _ei9m[6+903], name = _ei9m[799+1756], why = _ei9m[1797] },
{ step = 8, page = _ei9m[1747], name = _ei9m[2096-10], why = _ei9m[1759] },
},
uncounted = { _ei9m[2598], _ei9m[2894-18] },
skip = { _ei9m[134+114], _ei9m[2479], _ei9m[2+420], _ei9m[29+2912], _ei9m[2739], _ei9m[2922-20] },
active = { name = _ei9m[2231], icon = _ei9m[2822], blurb = _ei9m[6+2400],
empty = _ei9m[1567+792], turn_all_off = _ei9m[7+441] },
}
end)()
_v4.GUI_SRC, _v4.GUI_RAW = {}, {}
_v4.GUI_FILES = {
Fusion = { file = _ei9m[1312+1475], url = _ei9m[3+2550] },
EZV4 = { file = _ei9m[52+266], url = _ei9m[1419-6] },
}
function _v4.guiKindOf(_v2b2)
local _v2b3 = type(_v2b2) == _ei9m[1847-13] and tostring(rawget(_v2b2, _ei9m[4+300]) or "") or ""
if _v2b3 == _ei9m[89] then return _ei9m[1753-19] end
if _v2b3:find(_ei9m[6+1446]) then return _ei9m[689] end
return "V1"
end
function _v4.guiChoicePath()
local _v2b4 = 0
pcall(function() _v2b4 = _v2.UserId end)
return _ei9m[1430-2] .. tostring(_v2b4) .. _ei9m[5+1915]
end
function _v4.saveGuiChoice(_v2b5)
pcall(function()
if type(isfolder) == _ei9m[572+364] and not isfolder(_ei9m[3+1825]) then makefolder(_ei9m[798+1028]) end
writefile(_v4.guiChoicePath(), tostring(_v2b5))
end)
end
function _v4.guiChoice()
local _v2b6, _v2b7 = pcall(function()
if type(isfile) == _ei9m[178+1080] and not isfile(_v4.guiChoicePath()) then return nil end
return readfile(_v4.guiChoicePath())
end)
return _v2b6 and type(_v2b7) == _ei9m[995] and _v2b7:match(_ei9m[4+2589]) or nil
end
function _v4.guiPrefetch(_v2b8, _v2b9)
local _v2ba = _v4.GUI_FILES[_v2b8]
if not _v2ba or _v4.GUI_SRC[_v2b8] or _v4.GUI_RAW[_v2b8] then return end
pcall(function()
if type(isfile) == _ei9m[1459] and not isfile(_v2ba.file) then return end
local _v2bb = readfile(_v2ba.file)
if type(_v2bb) == _ei9m[187-11] and #_v2bb > 0 then _v4.GUI_RAW[_v2b8] = _v2bb end
end)
if _v2b9 and not _v4.GUI_RAW[_v2b8] then
pcall(function()
local _v2bc = game:HttpGet(_v2ba.url)
if type(_v2bc) == _ei9m[7+2618] and #_v2bc > 0 and not _v2bc:find(_ei9m[1297+948]) then _v4.GUI_RAW[_v2b8] = _v2bc end
end)
end
end
function _v4.guiLibrary(_v2bd)
local _v2be = _v4.GUI_FILES[_v2bd]
if not _v2be then return nil, _ei9m[1829+992] .. tostring(_v2bd) end
local function _v2bf(_v2bg)
if type(_v2bg) ~= _ei9m[2071-9] or #_v2bg == 0 or _v2bg:find(_ei9m[1087-3]) then return nil end
local _v2bh = loadstring(_v2bg)
if not _v2bh then return nil end
local _v2bi, _v2bj = pcall(_v2bh)
if _v2bi and type(_v2bj) == _ei9m[452] and _v4.guiKindOf(_v2bj) == _v2bd then
_v4.GUI_SRC[_v2bd], _v4.GUI_RAW[_v2bd] = _v2bg, nil
return _v2bj
end
return nil
end
local _v2bk = _v2bf(_v4.GUI_SRC[_v2bd]) or _v2bf(_v4.GUI_RAW[_v2bd])
if _v2bk then return _v2bk end
_v4.guiPrefetch(_v2bd, true)
_v2bk = _v2bf(_v4.GUI_RAW[_v2bd])
if _v2bk then return _v2bk end
return nil, _ei9m[121+2364] .. _v2bd .. _ei9m[2753-8]
end
function _v4.loadLibrary()
_v4.guiPrefetch(_ei9m[25+1653])
_v4.guiPrefetch(_ei9m[2+1546])
if _v4.guiChoice() == _ei9m[2316] then
local _v2bl = _v4.guiLibrary(_ei9m[5+1798])
if _v2bl then return _v4.ezBridge(_v2bl) end
end
local _v2bm = { _ei9m[749-20], _ei9m[15+23] }
local _v2bn = _ei9m[342-9]
local function _v2bo(_v2bp, _v2bq)
local _v2br, _v2bs = loadstring(_v2bp)
if not _v2br then return nil, _v2bq .. _ei9m[2180] .. tostring(_v2bs) end
local _v2bt, _v2bu = pcall(_v2br)
if _v2bt and type(_v2bu) == _ei9m[809-14] then
local _v2bv = _v4.guiKindOf(_v2bu)
if _v4.GUI_FILES[_v2bv] then _v4.GUI_SRC[_v2bv], _v4.GUI_RAW[_v2bv] = _v2bp, nil end
return _v4.ezBridge(_v2bu)
end
return nil, _v2bq .. _ei9m[6+237] .. tostring(_v2bu)
end
local _v2bw, _v2bx = pcall(function()
if type(isfile) == _ei9m[1021] and not isfile(_v2bn) then return nil end
return readfile(_v2bn)
end)
if _v2bw and type(_v2bx) == _ei9m[130+3] and #_v2bx > 0 then
local _v2by, _v2bz = _v2bo(_v2bx, _ei9m[2+251])
if _v2by then return _v2by end
warn(_ei9m[1363] .. tostring(_v2bz) .. _ei9m[1951])
end
local _v2c0 = _ei9m[2097]
for _v2c1 = 1, 3 do
local _v2c2 = _v2bm[_v2c1 < 3 and 1 or 2]
local _v2c3, _v2c4 = pcall(function() return game:HttpGet(_v2c2) end)
if _v2c3 and type(_v2c4) == _ei9m[4+2275] and #_v2c4 > 0 and not _v2c4:find(_ei9m[6+869]) then
local _v2c5, _v2c6 = _v2bo(_v2c4, _ei9m[6+606])
if _v2c5 then return _v2c5 end
_v2c0 = _v2c6
else
_v2c0 = _ei9m[3+2851] .. tostring(_v2c4) .. ")"
end
if _v2c1 < 3 then task.wait(1) end
end
return nil, _v2c0
end
_v4.Library, _v4.libErr = _v4.loadLibrary()
_v4.xlog(_v4.Library and _ei9m[336+1758] or (_ei9m[858] .. tostring(_v4.libErr)))
if not _v4.Library then
pcall(function()
game:GetService(_ei9m[3+2530]):SetCore(_ei9m[419+414], {
Title = _ei9m[5+1249], Text = _ei9m[2914] .. tostring(_v4.libErr) .. _ei9m[1276-10], Duration = 10,
})
end)
warn(_ei9m[1895-2] .. tostring(_v4.libErr))
_v4.UNLOADED = true
return
end
pcall(function()
local _v2c7 = getgenv and getgenv()
if _v2c7 and _v2c7.EZGuiOne_Layout == nil and type(_v4.FUSION_LAYOUT) == _ei9m[485] then _v2c7.EZGuiOne_Layout = _v4.FUSION_LAYOUT end
end)
local _v2c8 = _v4.Library.new({Title = _ei9m[2073-16]})
_v4.xlog(_ei9m[64])
_v4.Hub = _v2c8
_v4.GUI_SECTION_INFO = false
pcall(function()
_v4.GUI_SECTION_INFO = (_v4.Library and _v4.Library.Caps and _v4.Library.Caps.sectionInfo) and true or false
end)
function _v4.section(_v2c9, _v2ca, _v2cb)
if _v4.GUI_SECTION_INFO and _v2cb then
return _v2c9:AddSection({ Name = _v2ca, Info = _v2cb })
end
return _v2c9:AddSection(_v2ca)
end
_v4.SUPPRESS_TOGGLE_NOTIFY = false
_v4.ALL_TOGGLES = {}
local function _v2cc(_v2cd)
local _v2ce = _v2cd.AddToggle
_v2cd.AddToggle = function(_v2cf, _v2cg)
_v2cg = _v2cg or {}
if _v2cg.Keybind == nil then _v2cg.Keybind = true end
local _v2ch = _v2cg.Callback or function() end
local _v2ci = _v2cg.Name or _ei9m[2116]
_v2cg.Callback = function(_v2cj)
_v2ch(_v2cj)
if not _v4.SUPPRESS_TOGGLE_NOTIFY then
pcall(function() _v2c8:Notify(_v4.displayName(_v2ci) .. ": " .. (_v2cj and "ON" or _ei9m[2539])) end)
end
end
local _v2ck = _v2ce(_v2cf, _v2cg)
if _v2ci then _v4.ALL_TOGGLES[_v2ci] = _v2ck end
return _v2ck
end
return _v2cd
end
_v4.SAVE_DINO_ACTIVE = false
_v4.SAVE_DINO_DEPTH = 700
_v4.SAVE_FLY_SPEED = _v4.MV_VERT
_v4.SAVE_DIR = "Up"
_v4.SAVE_UP_HEIGHT = 150
_v4.SAVE_RELEASE_GRACE = 10
local _v2cl = false
local _v2cm = nil
_v4.AUTO_SAVE_PCT = 30
_v4.AUTO_SAVE = false
_v4.AUTO_SAVE_BLEED = true
_v4.SAVE_ALLOW_REST = true
_v4.saveOriginCF = nil
_v4.saveReturning = false
local _v2cn = true
local _v2co = nil
local _v2cp = nil
local _v2cq = {}
local _v2cr = nil
local function _v2cs()
if _v2co then
pcall(function() _v2co:Destroy() end)
_v2co = nil
end
end
function _v4.getCS()
if _v4.csCache then return _v4.csCache end
if not _v4.CAP.charstate then return nil end
pcall(function() _v4.csCache = require(_v4.WATER_RS.Common.CharacterState) end)
return _v4.csCache
end
function _v4.pressRest()
local _v2ct = _v4.getCS()
local _v2cu = _v2ct and _v2ct.Controls
if _v2cu and _v2cu.HandleAction then
local _v2cv = _v2cu.WindowUnfocused
pcall(function()
_v2cu.WindowUnfocused, _v2cu.InputWasBlocked = false, false
_v2cu:HandleAction(_ei9m[363-18], true)
end)
task.delay(0.1, function()
pcall(function() _v2cu:HandleAction(_ei9m[1174], false) end)
pcall(function() _v2cu.WindowUnfocused = _v2cv end)
end)
return
end
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.R, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.R, false, game) end)
end
function _v4.saveIsResting()
local _v2cw = _v4.getCS()
if not _v2cw then return false end
local _v2cx = false
pcall(function()
local _v2cy = _v2cw.Actions
_v2cx = (_v2cy and (_v2cy.Rest or _v2cy.Sleep)) and true or false
if _v2cw.RestDebounce then _v2cx = true end
end)
return _v2cx
end
local _v2cz = false
local function _v2d0(_v2d1)
if _v2cz == _v2d1 then return end
_v2cz = _v2d1
pcall(function()
local _v2d2 = _v2.Character
local _v2d3 = _v2cr or _vjc()
if _v2d2 then _v2d2:SetAttribute(_ei9m[4+2836], _v2d1 and (_v2d3 and _v2d3.Position.Y) or nil) end
end)
end
local function _v2d4()
for _v2d5, _v2d6 in ipairs(_v2cq) do pcall(function() _v2d6:Disconnect() end) end
_v2cq = {}
end
local function _v2d7()
if _v4.SAVE_DINO_ACTIVE then return end
if _v4.AFK_FARM and _v4.AFK_FARM_SAFETY then
if _v2cm then pcall(function() _v2cm:Set(false) end) end
pcall(function() if _v4.Hub then _v4.Hub:Notify(_ei9m[2887], 5) end end)
return
end
local _v2d8 = _vjc()
if not _v2d8 then
pcall(function() _v2c8:Notify(_ei9m[51+102]) end)
return
end
pcall(function()
local _v2d9 = _v2.Character
if _v2d9 then _v2d9:SetAttribute(_ei9m[2482-16], true) end
end)
_v2cz = false
_v2d0(true)
_v4.saveOriginCF = _v2d8.CFrame
_v4.saveReturning = false
_v4.SAVE_DINO_ACTIVE = true
_v2cr = _v2d8
_v2cp = nil
_v2cs()
local _v2da = _ei9m[3+2811]
local _v2db = _v2d8.Position
local _v2dc = _v2d8.Position.Y
local _v2dd = _v2d8.CFrame - _v2d8.CFrame.Position
local _v2de = true
local _v2df
if _v2de then
_v2df = _v2dc + _v4.SAVE_UP_HEIGHT
else
local _v2dg = RaycastParams.new()
_v2dg.FilterType = Enum.RaycastFilterType.Exclude
_v2dg.FilterDescendantsInstances = { _v2.Character, _v2co }
local _v2dh = workspace:Raycast(_v2d8.Position + Vector3.new(0, 20, 0), Vector3.new(0, -800, 0), _v2dg)
local _v2di = (_v2dh and _v2dh.Position.Y) or _v2dc
_v2df = math.min(_v2di, _v2dc) - _v4.SAVE_DINO_DEPTH
local _v2dj
pcall(function() _v2dj = workspace.FallenPartsDestroyHeight end)
if _v2dj and _v2df < _v2dj + 50 then _v2df = _v2dj + 50 end
end
local _v2dk = CFrame.new(_v2db) * _v2dd
_v2d4()
local function _v2dl(_v2dm)
if _v4.UNLOADED or not _v4.SAVE_DINO_ACTIVE then return end
local _v2dn = _v2cr
if not (_v2dn and _v2dn.Parent) then _v2dn = _vjc(); _v2cr = _v2dn end
if not _v2dn then return end
_v2dm = math.min(_v2dm or 0.016, 0.1)
if _v4.mvHold() then
_v2db = _v2dn.Position
_v2dk = CFrame.new(_v2db) * _v2dd
if _v2da == _ei9m[3+1013] then _v2cp = _v2dk end
return
end
if _v2da == _ei9m[82-13] then
local _v2do = _v4.SAVE_FLY_SPEED * _v2dm
local _v2dp = _v2de and math.min(_v2db.Y + _v2do, _v2df)
or math.max(_v2db.Y - _v2do, _v2df)
_v2db = Vector3.new(_v2db.X, _v2dp, _v2db.Z)
_v2dk = CFrame.new(_v2db) * _v2dd
if (_v2de and _v2dp >= _v2df) or (not _v2de and _v2dp <= _v2df) then
_v2cp = _v2dk
if not _v2de then
_v2cs()
local _v2dq = Instance.new(_ei9m[1876])
_v2dq.Anchored = true; _v2dq.CanCollide = true
_v2dq.Size = Vector3.new(80, 4, 80); _v2dq.Transparency = 1
_v2dq.CFrame = CFrame.new(_v2db - Vector3.new(0, 6, 0))
_v2dq.Parent = workspace
_v2co = _v2dq
end
_v2da = _ei9m[222]
end
else
if _v2cp then _v2dk = _v2cp end
end
if _v2da == _ei9m[3007-18] and _v4.SAVE_ALLOW_REST then _v2d0(false)
elseif _v2da ~= _ei9m[670] then
_v2cz = true
pcall(function() local _v2dr = _v2.Character; if _v2dr then _v2dr:SetAttribute(_ei9m[2044-13], _v2db.Y) end end)
end
if _v2da == _ei9m[975] and _v4.saveIsResting() then
pcall(function() if not _v2dn.Anchored then _v2dn.Anchored = true end end)
return
end
pcall(function()
if _v2da == _ei9m[75-2] then
if not _v2dn.Anchored then _v2dn.Anchored = true end
elseif _v2dn.Anchored then _v2dn.Anchored = false end
_v2dn.CFrame = _v2dk
_v2dn.AssemblyLinearVelocity = Vector3.zero
_v2dn.AssemblyAngularVelocity = Vector3.zero
end)
end
local function _v2ds()
if _v4.UNLOADED or not _v4.SAVE_DINO_ACTIVE or _v4.mvHold() then return end
local _v2dt = _v2cr
if not (_v2dt and _v2dt.Parent) then return end
if _v2da == _ei9m[2572-8] and _v4.saveIsResting() then
pcall(function() if not _v2dt.Anchored then _v2dt.Anchored = true end end)
return
end
pcall(function()
if _v2da == _ei9m[235+112] and _v2cp then
if not _v2dt.Anchored then _v2dt.Anchored = true end
if (_v2dt.Position - _v2cp.Position).Magnitude > 5 then
_v2dt.CFrame = _v2cp
elseif math.abs(_v2dt.Position.Y - _v2cp.Position.Y) > 1 then
_v2dt.CFrame = _v2cp
end
end
_v2dt.CFrame = _v2dk
_v2dt.AssemblyLinearVelocity = Vector3.zero
_v2dt.AssemblyAngularVelocity = Vector3.zero
end)
end
table.insert(_v2cq, _v1.RenderStepped:Connect(_v2dl))
table.insert(_v2cq, _v1.Heartbeat:Connect(_v2ds))
if _v2cm then pcall(function() _v2cm:Set(true) end) end
pcall(function() _v2c8:Notify(_ei9m[2+2426] .. (_v2de and _ei9m[82+28] or _ei9m[1323+557])) end)
end
function _v4.saveReturnFlight()
if _v4.saveReturning then return end
_v4.saveReturning = true
local ok = pcall(function()
local _v2du = _v4.saveOriginCF
local _v2dv = _vjc()
if not (_v2dv and _v2dv.Parent) then return end
local _v2dw = 3
pcall(function() _v2dw = _v2dv.Size.Y * 0.5 end)
pcall(function()
local _v2dx = _v4.getCS().Alignment
local _v2dy = (_v2dx.RideHeight or 0) + (_v2dx.BodyHeightIncrease or 0)
if _v2dy > _v2dw then _v2dw = _v2dy end
end)
local _v2dz = _v2du and _v2du.Position or _v2dv.Position
local _v2e0
do
local _v2e1 = _v2du or _v2dv.CFrame
local _v2e2 = _v2e1.LookVector
local _v2e3 = Vector3.new(_v2e2.X, 0, _v2e2.Z)
_v2e0 = (_v2e3.Magnitude > 0.01)
and CFrame.lookAt(Vector3.new(), _v2e3.Unit)
or CFrame.new()
end
local _v2e4 = RaycastParams.new()
_v2e4.FilterType = Enum.RaycastFilterType.Exclude
_v2e4.FilterDescendantsInstances = { _v2.Character, _v2co }
local _v2e5 = workspace:Raycast(_v2dz + Vector3.new(0, 300, 0), Vector3.new(0, -2500, 0), _v2e4)
local _v2e6 = _v2e5 and _v2e5.Position.Y or _v2dz.Y
local _v2e7 = Vector3.new(_v2dz.X, _v2e6 + _v2dw + 0.5, _v2dz.Z)
local _v2e8 = Vector3.new(_v2dz.X, math.max(_v2dv.Position.Y, _v2e6 + 40), _v2dz.Z)
pcall(function() _v2dv.Anchored = false end)
local function _v2e9(_v2ea, _v2eb)
local _v2ec = _vjc()
local _v2ed = _v2ec and (_v2ea - _v2ec.Position) or Vector3.zero
local _v2ee = Vector3.new(_v2ed.X, 0, _v2ed.Z).Magnitude / math.max(_v4.mvSideCap(), 1) + math.abs(_v2ed.Y) / _v4.MV_VERT
local _v2ef = os.clock() + math.max(_v2eb or 10, _v2ee * 1.5 + 3)
local _v2eg, _v2eh = _v2ef + _v4.MV_WATER_EXTRA, os.clock()
while not _v4.UNLOADED and not _v4.SAVE_DINO_ACTIVE and os.clock() < _v2ef do
_v2ef, _v2eh = _v4.mvExtend(_v2ef, _v2eh, _v2eg)
local _v2ei = _vjc()
if not (_v2ei and _v2ei.Parent) then return end
local _v2ej = _v2ea - _v2ei.Position
if _v2ej.Magnitude < 3 then return end
local _v2ek = _v4.govNext(_v2ei.Position, _v2ea, 0.03)
pcall(function()
_v2.Character:SetAttribute(_ei9m[3058], _v2ek.Y)
_v2ei.CFrame = CFrame.new(_v2ek) * _v2e0
_v2ei.AssemblyLinearVelocity = Vector3.zero
_v2ei.AssemblyAngularVelocity = Vector3.zero
end)
task.wait(0.03)
end
end
_v2e9(_v2e8, 12)
if _v4.SAVE_DINO_ACTIVE then return end
_v2e9(_v2e7, 8)
if _v4.SAVE_DINO_ACTIVE then return end
local _v2el = _vjc()
if _v2el and _v2el.Parent then
pcall(function()
_v2el.CFrame = CFrame.new(_v2e7 + Vector3.new(0, 1, 0)) * _v2e0
_v2el.AssemblyLinearVelocity = Vector3.zero
_v2el.AssemblyAngularVelocity = Vector3.zero
_v2el.Anchored = true
end)
task.wait(0.2)
pcall(function()
_v2el.Anchored = false
_v2el.AssemblyLinearVelocity = Vector3.zero
_v2el.AssemblyAngularVelocity = Vector3.zero
end)
task.wait(0.3)
pcall(function()
local _v2em = RaycastParams.new()
_v2em.FilterType = Enum.RaycastFilterType.Exclude
_v2em.FilterDescendantsInstances = { _v2.Character }
local _v2en = workspace:Raycast(_v2el.Position + Vector3.new(0, 20, 0), Vector3.new(0, -400, 0), _v2em)
if _v2en then
local _v2eo = _v2el.Position.Y - (_v2en.Position.Y + _v2dw)
if _v2eo < -0.5 or _v2eo > 3 then
_v2el.CFrame = CFrame.new(_v2en.Position + Vector3.new(0, _v2dw + 0.5, 0)) * _v2e0
_v2el.AssemblyLinearVelocity = Vector3.zero
end
end
end)
end
_v2cl = false
_v2d0(false)
pcall(function()
local _v2ep = _v2.Character
if _v2ep then _v2ep:SetAttribute(_ei9m[7+2340], nil) end
end)
pcall(function() _v2c8:Notify(_ei9m[2973]) end)
end)
if not ok then
_v2cl = false
_v2d0(false)
pcall(function()
local _v2eq = _v2.Character
if _v2eq then
_v2eq:SetAttribute(_ei9m[1862], nil)
local _v2er = _vjc()
if _v2er then _v2er.Anchored = false end
end
end)
pcall(function() _v2c8:Notify(_ei9m[206]) end)
end
_v4.saveReturning = false
end
function _v4.releaseDino()
if not _v4.SAVE_DINO_ACTIVE then return end
_v4.SAVE_DINO_ACTIVE = false
_v2d4()
_v2cp = nil
_v2cr = nil
_v2cs()
_v2cn = false
_v2d0(true)
task.spawn(function() _v4.saveReturnFlight() end)
_v2cr = nil
_v2cl = true
task.delay(_v4.SAVE_RELEASE_GRACE, function()
_v2cl = false
local _v2es = _v2.Character
_v2cz = false
if _v2es then pcall(function() _v2es:SetAttribute(_ei9m[964-9], nil) end) end
if not (_v4.NO_FALL_DAMAGE or _v4.FOSSIL_FARM) then
if _v2es then pcall(function() _v2es:SetAttribute(_ei9m[922-15], nil) end) end
end
end)
if _v2cm then pcall(function() _v2cm:Set(false) end) end
pcall(function() _v2c8:Notify(_ei9m[963+749]) end)
end
table.insert(_v2l, _v2.CharacterAdded:Connect(function()
_v2d4()
_v2cp = nil
_v2cr = nil
_v2cs()
_v4.SAVE_DINO_ACTIVE = false
_v2cl = false
_v2cz = false
_v4.saveReturning = false
_v4.saveOriginCF = nil
_v4.csCache = nil
_v2cn = true
if _v2cm then pcall(function() _v2cm:Set(false) end) end
end))
_v4.addStep(10, function()
if not _v4.AUTO_SAVE or _v4.AUTO_SAVE_PCT <= 0 or (_v4.AFK_FARM and _v4.AFK_FARM_SAFETY) then return end
local _v2et = _v2.Character
if not _v2et then return end
local _v2eu = _v2et:GetAttribute(_ei9m[362])
local _v2ev = _v2et:GetAttribute(_ei9m[7+2665])
if type(_v2eu) ~= _ei9m[38+1388] or type(_v2ev) ~= _ei9m[7+2992] or _v2ev <= 0 then return end
if _v2eu <= 0 then return end
if _v4.AUTO_SAVE_BLEED then
local _v2ew = _vki()
local _v2ex = _v2ew and _v4.bleedForecast[_v2ew] or 0
if type(_v2ex) == _ei9m[1008+1229] and _v2ex > 0 then _v2eu = math.max(0, _v2eu - _v2ex) end
end
local _v2ey = (_v2eu / _v2ev) * 100
if _v2ey <= _v4.AUTO_SAVE_PCT then
if _v2cn and not _v4.SAVE_DINO_ACTIVE then
_v2cn = false
_v2d7()
end
else
_v2cn = true
end
end)
_v4.GAIT_ACTION = { Walk = nil, Trot = _ei9m[259], Run = _ei9m[461+734], Sprint = _ei9m[7+1781] }
function _v4.autoGaitStop()
local _v2ez = _v4.getCS()
if _v2ez and _v2ez.Controls then
pcall(function() _v2ez.Controls:HandleAction(_ei9m[2+173], false) end)
for _v2f0, _v2f1 in pairs(_v4.GAIT_ACTION) do pcall(function() _v2ez.Controls:HandleAction(_v2f1, false) end) end
if _v4.gaitUnblocked then
_v4.gaitUnblocked = nil
local _v2f2 = true
pcall(function() _v2f2 = isrbxactive() end)
pcall(function() _v2ez.Controls.WindowUnfocused = not _v2f2 end)
end
end
_v4.gaitHeld = nil
end
_v4.addStep(3, function()
local _v2f3 = _v4.AUTO_GAIT
if _v2f3 and (_v4.AFK_FARM or _v4.LEGIT_FARM or _v4.FOSSIL_FARM or _v4.FLY or _v4.AUTO_FLY
or _v4.SAVE_DINO_ACTIVE or _v4.AS_BUSY or _v4.UNLOADED) then _v2f3 = nil end
if not _v2f3 then
if _v4.gaitHeld then _v4.autoGaitStop() end
return
end
local _v2f4 = _v4.getCS()
local _v2f5 = _v2f4 and _v2f4.Controls
if not _v2f5 then return end
local _v2f6 = true
pcall(function() _v2f6 = isrbxactive() end)
if not _v2f6 then
_v4.gaitUnblocked = true
if _v2f5.WindowUnfocused ~= false then pcall(function() _v2f5.WindowUnfocused = false end) end
if _v2f5.InputWasBlocked == true then pcall(function() _v2f5.InputWasBlocked = false end) end
elseif _v4.gaitUnblocked then
_v4.gaitUnblocked = nil
end
for _v2f7, _v2f8 in pairs(_v4.GAIT_ACTION) do
if _v2f8 and _v2f7 ~= _v2f3 and (_v2f4.Actions and _v2f4.Actions[_v2f8]) == true then
pcall(function() _v2f5:HandleAction(_v2f8, false) end)
end
end
local _v2f9 = _v4.GAIT_ACTION[_v2f3]
if _v2f9 and (_v2f4.Actions and _v2f4.Actions[_v2f9]) ~= true then pcall(function() _v2f5:HandleAction(_v2f9, true) end) end
if (_v2f4.Actions and _v2f4.Actions.Forward) ~= true then pcall(function() _v2f5:HandleAction(_ei9m[1189-4], true) end) end
_v4.gaitHeld = _v2f3
end)
function _v4.applyFallImmunity(_v2fa)
local _v2fb = _v2.Character
if _v2fb then pcall(function() _v2fb:SetAttribute(_ei9m[6+2703], _v2fa and true or nil) end) end
end
_v4.addStep(5, function()
if not (_v4.NO_FALL_DAMAGE or _v4.FOSSIL_FARM or _v4.SAVE_DINO_ACTIVE or _v2cl
or _v4.AUTO_FLY or _v4.AFK_FARM or _v4.LEGIT_FARM
or os.clock() < (_v4.flyLandUntil or 0)) then return end
local _v2fc = _v2.Character
if _v2fc and _v2fc:GetAttribute(_ei9m[4+2642]) ~= true then
pcall(function() _v2fc:SetAttribute(_ei9m[2003-11], true) end)
end
local _v2fd = (_v4.SAVE_DINO_ACTIVE and _v2cz) or _v2cl
if _v2fd and _v2fc and type(_v2fc:GetAttribute(_ei9m[613])) ~= _ei9m[1645+673] then
local _v2fe = _vjc()
if _v2fe then pcall(function() _v2fc:SetAttribute(_ei9m[183+329], _v2fe.Position.Y) end) end
end
end)
_v4.blurOff = setmetatable({}, { __mode = "k" })
_v4.blurHooked = setmetatable({}, { __mode = "k" })
function _v4.killBlur(_v2ff)
if typeof(_v2ff) ~= _ei9m[2554-13] or not _v2ff:IsA(_ei9m[1954]) then return end
if not _v4.blurHooked[_v2ff] then
_v4.blurHooked[_v2ff] = true
pcall(function()
table.insert(_v2l, _v2ff:GetPropertyChangedSignal(_ei9m[483]):Connect(function()
if _v4.NO_BLUR and _v2ff.Enabled then _v4.killBlur(_v2ff) end
end))
end)
end
pcall(function()
if _v2ff.Enabled then _v4.blurOff[_v2ff] = true; _v2ff.Enabled = false end
if _v2ff.Size ~= 0 then _v2ff.Size = 0 end
end)
end
function _v4.sweepBlur()
pcall(function()
for _v2fg, _v2fh in ipairs(_vho:GetDescendants()) do _v4.killBlur(_v2fh) end
end)
pcall(function()
local _v2fi = workspace.CurrentCamera
if _v2fi then for _v2fj, _v2fk in ipairs(_v2fi:GetChildren()) do _v4.killBlur(_v2fk) end end
end)
end
function _v4.restoreBlur()
for _v2fl in pairs(_v4.blurOff) do
pcall(function() if _v2fl.Parent then _v2fl.Enabled = true end end)
end
_v4.blurOff = setmetatable({}, { __mode = "k" })
end
pcall(function()
table.insert(_v2l, _vho.DescendantAdded:Connect(function(_v2fm)
if _v4.NO_BLUR then _v4.killBlur(_v2fm) end
end))
end)
do
local _v2fn = nil
local function _v2fo()
pcall(function() if _v2fn then _v2fn:Disconnect() end end)
local _v2fp = workspace.CurrentCamera
if not _v2fp then return end
_v2fn = _v2fp.ChildAdded:Connect(function(_v2fq) if _v4.NO_BLUR then _v4.killBlur(_v2fq) end end)
table.insert(_v2l, _v2fn)
if _v4.NO_BLUR then _v4.sweepBlur() end
end
_v2fo()
table.insert(_v2l,
workspace:GetPropertyChangedSignal(_ei9m[1349]):Connect(_v2fo))
end
_v4.addStep(3, function()
if not _v4.NO_BLUR then return end
_v4.sweepBlur()
end)
local _v2fr = nil
local _v2fs = false
table.insert(_v2l, _v4.UIS.InputBegan:Connect(function(_v2ft, _v2fu)
if _v4.UNLOADED or _v2fu then return end
local _v2fv = _v2fr and _v2fr.Key
if _v2fv and _v2fv ~= Enum.KeyCode.Unknown and _v2ft.KeyCode == _v2fv then _v2fs = true end
end))
table.insert(_v2l, _v4.UIS.InputEnded:Connect(function(_v2fw)
local _v2fx = _v2fr and _v2fr.Key
if _v2fx and _v2fw.KeyCode == _v2fx then _v2fs = false end
end))
function _v4.instaTurnStep()
if _v4.UNLOADED or not (_v2fs or _v4.mob.insta) then return end
local _v2fy = _vjc()
local _v2fz = workspace.CurrentCamera
if not (_v2fy and _v2fz) then return end
local _v2g0 = _v2fz.CFrame.LookVector
local _v2g1 = Vector3.new(_v2g0.X, 0, _v2g0.Z)
if _v2g1.Magnitude < 0.01 then return end
pcall(function()
_v2fy.CFrame = CFrame.lookAt(_v2fy.Position, _v2fy.Position + _v2g1.Unit)
_v2fy.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
end)
end
_v4.addStep(1, _v4.instaTurnStep)
table.insert(_v2l, _v1.RenderStepped:Connect(_v4.instaTurnStep))
_v4.TURN_SPEED = 250
_v4.QUICK_TURN = false
function _v4.turnAssistStep(_v2g2)
if _v4.UNLOADED or not _v4.QUICK_TURN or _v4.TURN_SPEED <= 0 then return end
if _v2fs or _v4.mob.insta then return end
if _v4.UIS:GetFocusedTextBox() then return end
local _v2g3 = 0
if _v4.UIS:IsKeyDown(Enum.KeyCode.A) or _v4.mob.turnL then _v2g3 = _v2g3 + 1 end
if _v4.UIS:IsKeyDown(Enum.KeyCode.D) or _v4.mob.turnR then _v2g3 = _v2g3 - 1 end
if _v2g3 == 0 then return end
local _v2g4 = _vjc()
if not _v2g4 then return end
local _v2g5 = math.rad(_v4.TURN_SPEED) * (_v2g2 or 1 / 60) * _v2g3
pcall(function()
_v2g4.CFrame = _v2g4.CFrame * CFrame.Angles(0, _v2g5, 0)
_v2g4.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
end)
end
_v4.addStep(1, _v4.turnAssistStep)
table.insert(_v2l, _v1.RenderStepped:Connect(_v4.turnAssistStep))
_v4.NO_ATK_CD = false
_v4.NO_ATK_COOLDOWN = false
_v4.ATTACK_SPEED = 3
local _v2g6 = setmetatable({}, { __mode = "k" })
_v4.animatorCache = setmetatable({}, { __mode = "k" })
function _v4.getAnimator()
local _v2g7 = _v2.Character
if not _v2g7 then return nil end
local _v2g8 = _v4.animatorCache[_v2g7]
if _v2g8 and _v2g8.Parent then return _v2g8 end
local _v2g9 = _v2g7:FindFirstChildOfClass(_ei9m[1581-8])
local _v2ga = _v2g9 and _v2g9:FindFirstChildOfClass(_ei9m[1957-1])
if not _v2ga then _v2ga = _v2g7:FindFirstChildWhichIsA(_ei9m[2021], true) end
_v4.animatorCache[_v2g7] = _v2ga
return _v2ga
end
function _v4.restoreAttackSpeed()
for _v2gb, _v2gc in pairs(_v2g6) do
pcall(function() if _v2gb.IsPlaying then _v2gb:AdjustSpeed(1) end end)
end
_v2g6 = setmetatable({}, { __mode = "k" })
end
_v4.addStep(2, function()
if not _v4.NO_ATK_CD then return end
local _v2gd = _v4.getAnimator()
if not _v2gd then return end
pcall(function()
for _v2ge, _v2gf in ipairs(_v2gd:GetPlayingAnimationTracks()) do
if _v2gf.Priority == Enum.AnimationPriority.Action4 and _v2gf.Speed ~= _v4.ATTACK_SPEED then
_v2gf:AdjustSpeed(_v4.ATTACK_SPEED)
_v2g6[_v2gf] = true
end
end
end)
end)
task.spawn(function()
local _v2gg = _v4.requireCS()
if _v2gg then
_v4.addStep(1, function()
if not _v4.NO_ATK_COOLDOWN or _v4.UNLOADED then return end
pcall(function()
if type(_v2gg.Growth) == _ei9m[527+1243] and _v2gg.Growth.attackCooldownMultiplier ~= nil then
_v2gg.Growth.attackCooldownMultiplier = 0
end
end)
end)
end
end)
local _v2gh, _v2gi = nil, nil
local _v2gj = false
_v4.ZOOM_FAR = nil
function _v4.resolveZoomFar(_v2gk)
if _v4.ZOOM_FAR and not _v2gk then return _v4.ZOOM_FAR end
for _v2gl, _v2gm in ipairs({ 1e6, 1e5, 5e4, 1e4, 5000, 2000 }) do
local _v2gn = pcall(function() _v2.CameraMaxZoomDistance = _v2gm end)
if _v2gn then
local _v2go = _v2.CameraMaxZoomDistance
if type(_v2go) == _ei9m[607-20] and _v2go > 0 then _v4.ZOOM_FAR = _v2go; return _v4.ZOOM_FAR end
end
end
_v4.ZOOM_FAR = 2000
return _v4.ZOOM_FAR
end
_v4.zoomTarget = nil
_v4.zoomWant = nil
_v4.zoomProbeAt = 0
local function _v2gp()
local _v2gq = workspace.CurrentCamera
if not _v2gq then return nil end
local _v2gr, _v2gs = pcall(function()
return (_v2gq.CFrame.Position - _v2gq.Focus.Position).Magnitude
end)
if not _v2gr or type(_v2gs) ~= _ei9m[658+151] or _v2gs ~= _v2gs or _v2gs <= 0 then return nil end
return _v2gs
end
function _v4.setZoomRange(_v2gt, _v2gu)
pcall(function()
if _v2.CameraMaxZoomDistance ~= _v2gu then _v2.CameraMaxZoomDistance = _v2gu end
if _v2.CameraMinZoomDistance ~= _v2gt then _v2.CameraMinZoomDistance = _v2gt end
end)
end
function _v4.applyZoom()
if _v4.UNLOADED or not _v4.UNLIMITED_ZOOM then return end
local _v2gv = _v4.zoomWant or _v4.zoomTarget or _v2gp() or 20
_v4.zoomWant = _v2gv
local _v2gw = _v4.ZOOM_FAR or 2000
local _v2gx = math.clamp(_v2gv, 0.5, _v2gw)
_v4.setZoomRange(_v2gx, _v2gx)
local _v2gy = _v2.CameraMaxZoomDistance
if type(_v2gy) == _ei9m[3+749] and _v2gy > 0 and _v2gy < _v2gx - 1 then
_v4.setZoomRange(_v2gy, _v2gy)
_v4.zoomTarget = _v2gy
if os.clock() - (_v4.zoomProbeAt or 0) > 1 then
_v4.zoomProbeAt = os.clock()
_v4.resolveZoomFar(true)
end
else
_v4.zoomTarget = _v2gx
end
end
_v4.zoomFailFrames = 0
function _v4.enforceZoom()
if _v4.UNLOADED or not _v4.UNLIMITED_ZOOM then return end
local _v2gz = _v4.zoomTarget
local _v2h0 = workspace.CurrentCamera
if not (_v2gz and _v2h0) then return end
local _v2h1 = false
pcall(function() _v2h1 = (_v2h0.CameraType == Enum.CameraType.Scriptable) end)
if _v2h1 then _v4.zoomFailFrames = 0 return end
local _v2h2 = _v2gp()
if not _v2h2 or math.abs(_v2h2 - _v2gz) <= 1.5 then _v4.zoomFailFrames = 0 return end
_v4.zoomFailFrames = _v4.zoomFailFrames + 1
if _v4.zoomFailFrames < 3 then return end
pcall(function()
local _v2h3 = _v2h0.Focus.Position
local _v2h4 = _v2h0.CFrame.LookVector
if _v2h4.Magnitude < 0.01 then return end
_v2h0.CFrame = CFrame.lookAt(_v2h3 - _v2h4.Unit * _v2gz, _v2h3)
end)
end
pcall(function()
table.insert(_v2l, _v4.UIS.InputChanged:Connect(function(_v2h5)
if _v4.UNLOADED or not _v4.UNLIMITED_ZOOM then return end
if _v2h5.UserInputType == Enum.UserInputType.MouseWheel then
local _v2h6 = _v4.ZOOM_FAR or 2000
local _v2h7 = _v4.zoomWant or _v4.zoomTarget or _v2gp() or 20
local _v2h8 = math.max(3, _v2h7 * 0.12)
_v2h7 = math.clamp(_v2h7 - _v2h5.Position.Z * _v2h8, 0.5, _v2h6)
_v4.zoomWant = _v2h7
_v4.zoomTarget = _v2h7
_v4.setZoomRange(_v2h7, _v2h7)
end
end))
end)
function _v4.bindZoom()
if _v2gj then return end
if _v2gh == nil then
_v2gh = _v2.CameraMaxZoomDistance
_v2gi = _v2.CameraMinZoomDistance
end
_v4.resolveZoomFar(true)
_v4.zoomTarget = _v2gp() or _v4.zoomTarget or 20
_v4.zoomWant = _v4.zoomTarget
_v4.zoomProbeAt = 0
_v4.zoomFailFrames = 0
pcall(function()
_v1:BindToRenderStep(_ei9m[1178-15],
Enum.RenderPriority.Camera.Value - 1, _v4.applyZoom)
end)
pcall(function()
_v1:BindToRenderStep(_ei9m[6+226],
Enum.RenderPriority.Camera.Value + 1, _v4.enforceZoom)
end)
_v2gj = true
end
function _v4.restoreZoom()
if _v2gj then
pcall(function() _v1:UnbindFromRenderStep(_ei9m[1517-9]) end)
pcall(function() _v1:UnbindFromRenderStep(_ei9m[4+1446]) end)
_v2gj = false
end
_v4.zoomTarget = nil
_v4.zoomWant = nil
if _v2gh ~= nil then
pcall(function()
_v2.CameraMinZoomDistance = _v2gi
_v2.CameraMaxZoomDistance = _v2gh
end)
end
end
table.insert(_v2l,
_v2:GetPropertyChangedSignal(_ei9m[6+808]):Connect(_v4.applyZoom))
_v4.FOV_ENABLED = false
_v4.FOV_VALUE = 70
local _v2h9 = nil
local _v2ha = false
function _v4.applyFOV()
if _v4.UNLOADED or not _v4.FOV_ENABLED then return end
local _v2hb = workspace.CurrentCamera
if not _v2hb then return end
pcall(function()
if _v2hb.CameraType == Enum.CameraType.Scriptable then return end
local _v2hc = math.clamp(_v4.FOV_VALUE or 70, 1, 120)
if math.abs(_v2hb.FieldOfView - _v2hc) > 0.01 then _v2hb.FieldOfView = _v2hc end
end)
end
function _v4.bindFOV()
if _v2ha then return end
if _v2h9 == nil then
pcall(function() _v2h9 = workspace.CurrentCamera and workspace.CurrentCamera.FieldOfView end)
end
pcall(function()
_v1:BindToRenderStep(_ei9m[97+548], Enum.RenderPriority.Camera.Value + 1, _v4.applyFOV)
end)
_v2ha = true
end
function _v4.restoreFOV()
if _v2ha then
pcall(function() _v1:UnbindFromRenderStep(_ei9m[1062]) end)
_v2ha = false
end
if _v2h9 ~= nil then
pcall(function()
local _v2hd = workspace.CurrentCamera
if _v2hd then _v2hd.FieldOfView = _v2h9 end
end)
end
end
function _v4.flyTo(_v2he, _v2hf, _v2hg, _v2hh)
local _v2hi = _v4.getLocalPhysicsRoot()
local _v2hj = _v2.Character
if not (_v2hi and _v2hi.Parent and _v2hj) then return false, _ei9m[6+1636] end
_v2hg = _v2hg or 40
local _v2hk = math.max(3, _v2hi.Size.Y * 0.5)
pcall(function()
local _v2hl = _v4.getCS().Alignment
local _v2hm = (_v2hl.RideHeight or 0) + (_v2hl.BodyHeightIncrease or 0)
if _v2hm > _v2hk then _v2hk = _v2hm end
end)
local _v2hn = RaycastParams.new()
_v2hn.FilterType = Enum.RaycastFilterType.Include
local _v2ho = { workspace.Terrain }
pcall(function() local _v2hp = workspace.World:FindFirstChild(_ei9m[6+1896]); if _v2hp then _v2ho[2] = _v2hp end end)
_v2hn.FilterDescendantsInstances = _v2ho
_v2hn.IgnoreWater = false
local function _v2hq(_v2hr, _v2hs, _v2ht)
local _v2hu = workspace:Raycast(Vector3.new(_v2hr, _v2ht + 1500, _v2hs), Vector3.new(0, -5000, 0), _v2hn)
if _v2hu then return _v2hu.Position.Y, _v2hu.Material end
end
local function _v2hv(_v2hw)
local _v2hx, _v2hy = _v2hq(_v2hw.X, _v2hw.Z, _v2hw.Y)
if _v2hx and _v2hy ~= Enum.Material.Water then return Vector3.new(_v2hw.X, _v2hx, _v2hw.Z) end
for _v2hz = 20, 800, 20 do
for _v2i0 = 0, 15 do
local _v2i1 = _v2i0 * math.pi / 8
local _v2i2, _v2i3 = _v2hw.X + math.cos(_v2i1) * _v2hz, _v2hw.Z + math.sin(_v2i1) * _v2hz
local _v2i4, _v2i5 = _v2hq(_v2i2, _v2i3, _v2hw.Y)
if _v2i4 and _v2i5 ~= Enum.Material.Water and not (_v4.wallCross and _v4.wallCross(_v2hw, Vector3.new(_v2i2, _v2hw.Y, _v2i3))) then
return Vector3.new(_v2i2, _v2i4, _v2i3)
end
end
end
end
local function _v2i6(_v2i7) _v4.flyStatus = _v2i7; if _v2hh then pcall(_v2hh, _v2i7) end end
if _v4.trackWalls then pcall(_v4.trackWalls) end
if _v4.wallCross and _v4.wallCross(_v2hi.Position, Vector3.new(_v2he.X, _v2hi.Position.Y, _v2he.Z)) then
return false, _ei9m[3+989]
end
pcall(function() _v2hj:SetAttribute(_ei9m[1546+83], true) end)
local _v2i8, _v2i9 = false, _ei9m[2+228]
local okRun, err = pcall(function()
local _v2ia = game:GetService(_ei9m[816+1571])
local _v2ib = _v2hi.Position
local _v2ic = Vector3.new(_v2he.X, _v2he.Y, _v2he.Z)
local _v2id = Vector3.new(_v2ic.X - _v2ib.X, 0, _v2ic.Z - _v2ib.Z)
local _v2ie = _v2id.Magnitude > 0.1 and _v2id.Unit or Vector3.new(0, 0, -1)
local _v2if = os.clock() + _v2id.Magnitude / math.max(_v4.mvSideCap(), 1) * 1.6 + 60
local _v2ig, _v2ih = _v2if + _v4.MV_WATER_EXTRA, os.clock()
local _v2ii, _v2ij, _v2ik, _v2il = _ei9m[6+1962], false, nil, 0
while not _v4.UNLOADED do
local _v2im = _v2ia.Heartbeat:Wait()
if _v2hf and not _v2hf() then _v2i9 = _ei9m[179+2008] return end
if not (_v2hi.Parent and _v2.Character == _v2hj) then _v2i9 = _ei9m[1529] return end
_v2if, _v2ih = _v4.mvExtend(_v2if, _v2ih, _v2ig)
if os.clock() > _v2if then return end
if _v4.mvHold() then _v2ib = _v2hi.Position end
local _v2in = Vector3.new(_v2ic.X - _v2ib.X, 0, _v2ic.Z - _v2ib.Z).Magnitude
if _v2in > 0.5 then _v2ie = Vector3.new(_v2ic.X - _v2ib.X, 0, _v2ic.Z - _v2ib.Z).Unit end
if not _v2ij and _v2in < 400 then
local _v2io = _v2hv(_v2ic)
if _v2io then _v2ic, _v2ij = _v2io, true end
_v2in = Vector3.new(_v2ic.X - _v2ib.X, 0, _v2ic.Z - _v2ib.Z).Magnitude
end
if _v2ii == _ei9m[4+2858] and os.clock() - _v2il > 0.5 then
_v2il = os.clock()
if _v4.wallCross and _v4.wallCross(_v2ib, _v2ib + _v2ie * math.min(_v2in, 80)) then
local _v2ip = _v2hv(_v2ib)
_v2ic, _v2ij, _v2i9 = _v2ip or Vector3.new(_v2ib.X, _v2ib.Y, _v2ib.Z), true, _ei9m[3+838]
_v2in = Vector3.new(_v2ic.X - _v2ib.X, 0, _v2ic.Z - _v2ib.Z).Magnitude
end
end
local _v2iq
if _v2ii == _ei9m[41+2839] then
local _v2ir = _v2ib + _v2ie * math.min(60, _v2in)
local _v2is = _v2hq(_v2ib.X, _v2ib.Z, _v2ib.Y) or (_v2ib.Y - _v2hk - _v2hg)
local _v2it = _v2hq(_v2ir.X, _v2ir.Z, _v2ib.Y) or _v2is
local _v2iu = math.max(_v2is, _v2it) + _v2hk + _v2hg
if _v2in < 1 and _v2ij then
_v2ii = _ei9m[6+273]
elseif _v2ib.Y < _v2iu - 2 then
_v2iq = Vector3.new(_v2ib.X + _v2ie.X * math.min(_v2in, 2), _v2iu, _v2ib.Z + _v2ie.Z * math.min(_v2in, 2))
else
local _v2iv = math.min(_v2in, 50)
_v2iq = Vector3.new(_v2ib.X + _v2ie.X * _v2iv, _v2iu, _v2ib.Z + _v2ie.Z * _v2iv)
end
_v2i6(math.floor(_v2in) .. _ei9m[1614+775])
end
if _v2ii == _ei9m[1458] then
if not _v2ik then
local _v2iw = _v2hq(_v2ic.X, _v2ic.Z, _v2ib.Y)
_v2ik = (_v2iw or (_v2ib.Y - _v2hk - _v2hg)) + _v2hk + 0.5
end
if math.abs(_v2ib.Y - _v2ik) < 0.5 then _v2i8 = true return end
_v2iq = Vector3.new(_v2ic.X, _v2ik, _v2ic.Z)
_v2i6(_ei9m[911-12])
end
local _v2ix = _v4.govNext(_v2ib, _v2iq, _v2im)
local _v2iy = _v2hq(_v2ix.X, _v2ix.Z, _v2ix.Y)
if _v2iy and _v2ix.Y < _v2iy + _v2hk * 0.5 then _v2ix = Vector3.new(_v2ix.X, _v2iy + _v2hk * 0.5, _v2ix.Z) end
_v2ib = _v2ix
pcall(function()
_v2hj:SetAttribute(_ei9m[695-8], _v2ib.Y)
_v2hi.CFrame = CFrame.lookAt(_v2ib, _v2ib + _v2ie)
_v2hi.AssemblyLinearVelocity = Vector3.zero
_v2hi.AssemblyAngularVelocity = Vector3.zero
end)
end
end)
if not okRun then _v2i9 = tostring(err) end
pcall(function() _v2hj:SetAttribute(_ei9m[364+495], nil) end)
pcall(function() _v2hi.AssemblyLinearVelocity = Vector3.zero end)
_v4.flyLandUntil = os.clock() + 10
_v4.flyStatus = nil
return _v2i8, _v2i8 and _ei9m[2399] or _v2i9
end
_v4.BIOME_TARGET = nil
_v4.BIOME_TRAVEL = false
_v4.biomeTravelling = false
_v4.biomeToggle = nil
_v4.BIOME_POINTS = {}
function _v4.biomeNames()
local _v2iz = {}
pcall(function()
for _v2j0, _v2j1 in ipairs(game:GetService(_ei9m[1025-16]).Locations:GetChildren()) do _v2iz[#_v2iz + 1] = _v2j1.Name end
end)
table.sort(_v2iz)
return _v2iz
end
function _v4.biomePoint(_v2j2)
if _v4.BIOME_POINTS[_v2j2] then return _v4.BIOME_POINTS[_v2j2] end
local _v2j3
pcall(function()
local _v2j4 = game:GetService(_ei9m[3+2544]).Locations:FindFirstChild(_v2j2)
if _v2j4 then _v2j3 = _v2j4:GetPivot().Position end
end)
return _v2j3
end
function _v4.travelToBiome(_v2j5)
if _v4.biomeTravelling then return end
_v4.biomeTravelling = true
local _v2j6 = _v2j5 and _v4.biomePoint(_v2j5)
local _v2j7, _v2j8 = false, _ei9m[2979-8]
if _v2j6 then
pcall(function() _v2c8:Notify(_ei9m[565+617] .. tostring(_v2j5), 4) end)
local _v2j9, _v2ja, _v2jb = pcall(_v4.flyTo, _v2j6, function() return _v4.BIOME_TRAVEL and not (_v4.otherMoverOn and _v4.otherMoverOn()) end, 40)
_v2j7, _v2j8 = _v2j9 and _v2ja, _v2j9 and _v2jb or tostring(_v2ja)
end
pcall(function()
_v2c8:Notify(_v2j7 and (_ei9m[830+551] .. tostring(_v2j5)) or (_ei9m[883-2] .. tostring(_v2j8) .. _ei9m[2321-6]), 6)
end)
_v4.biomeTravelling = false
_v4.BIOME_TRAVEL = false
if _v4.biomeToggle then pcall(function() _v4.biomeToggle:Set(false) end) end
end
_v4.fossilFarmToggle = nil
local function _v2jc(_v2jd)
for _v2je, _v2jf in ipairs(_v2jd:GetDescendants()) do
if _v2jf:IsA(_ei9m[1918-5]) and _v2jf.Name == _ei9m[954-17] then return _v2jf end
end
return nil
end
function _v4.fossilPosOf(_v2jg)
local ok, p = pcall(function()
local _v2jh = _v2jc(_v2jg)
_v2jh = _v2jh and _v2jh.Parent
if _v2jh and _v2jh:IsA(_ei9m[926+1437]) then return _v2jh.WorldPosition end
if _v2jh and _v2jh:IsA(_ei9m[1093-1]) then return _v2jh.Position end
return _v2jg:GetPivot().Position
end)
if ok then return p end
return nil
end
function _v4.ffPlanRoute(_v2ji)
local _v2jj = workspace:FindFirstChild(_ei9m[866])
if not _v2jj then return {} end
local _v2jk, _v2jl = os.clock(), {}
for _v2jm, _v2jn in ipairs(_v2jj:GetChildren()) do
local _v2jo = _v2jc(_v2jn)
local _v2jp = _v4.ffSkip and _v4.ffSkip[_v2jn]
if _v2jo and _v2jo.Enabled ~= false and not (_v2jp and _v2jp > _v2jk) then
local _v2jq = _v4.fossilPosOf(_v2jn)
if _v2jq and _v2jq.Magnitude > 1 then _v2jl[#_v2jl + 1] = { f = _v2jn, p = _v2jq } end
end
if #_v2jl >= 150 then break end
end
local _v2jr = #_v2jl
if _v2jr == 0 then return {} end
local _v2js, _v2jt, _v2ju = {}, {}, _v2ji
for _v2jv = 1, _v2jr do
local _v2jw, _v2jx
for _v2jy, _v2jz in ipairs(_v2jl) do
if not _v2jt[_v2jy] then
local _v2k0 = (_v2jz.p - _v2ju).Magnitude
if not _v2jx or _v2k0 < _v2jx then _v2jw, _v2jx = _v2jy, _v2k0 end
end
end
_v2jt[_v2jw] = true
_v2js[#_v2js + 1] = _v2jl[_v2jw]
_v2ju = _v2jl[_v2jw].p
end
local function _v2k1(_v2k2) return _v2k2 == 0 and _v2ji or _v2js[_v2k2].p end
for _v2k3 = 1, 8 do
local _v2k4 = false
for _v2k5 = 1, _v2jr - 1 do
for _v2k6 = _v2k5 + 1, _v2jr do
local _v2k7, _v2k8, _v2k9 = _v2k1(_v2k5 - 1), _v2k1(_v2k5), _v2k1(_v2k6)
local _v2ka = (_v2k8 - _v2k7).Magnitude
local _v2kb = (_v2k9 - _v2k7).Magnitude
if _v2k6 < _v2jr then
local _v2kc = _v2k1(_v2k6 + 1)
_v2ka = _v2ka + (_v2kc - _v2k9).Magnitude
_v2kb = _v2kb + (_v2kc - _v2k8).Magnitude
end
if _v2kb < _v2ka - 0.01 then
local _v2kd, _v2ke = _v2k5, _v2k6
while _v2kd < _v2ke do _v2js[_v2kd], _v2js[_v2ke] = _v2js[_v2ke], _v2js[_v2kd]; _v2kd, _v2ke = _v2kd + 1, _v2ke - 1 end
_v2k4 = true
end
end
end
if not _v2k4 then break end
end
local _v2kf = {}
for _v2kg, _v2kh in ipairs(_v2js) do _v2kf[_v2kg] = _v2kh.f end
return _v2kf
end
function _v4.nearestFossil(_v2ki)
local _v2kj = workspace:FindFirstChild(_ei9m[2811])
if not _v2kj then return nil end
local _v2kk, _v2kl
for _v2km, _v2kn in ipairs(_v2kj:GetChildren()) do
local _v2ko = _v2jc(_v2kn)
local _v2kp = _v4.ffSkip and _v4.ffSkip[_v2kn]
if _v2ko and _v2ko.Enabled ~= false and not (_v2kp and _v2kp > os.clock()) then
local _v2kq = _v4.fossilPosOf(_v2kn)
if _v2kq and _v2kq.Magnitude > 1 then
local _v2kr = (_v2kq - _v2ki).Magnitude
if not _v2kl or _v2kr < _v2kl then _v2kk, _v2kl = _v2kn, _v2kr end
end
end
end
return _v2kk
end
function _v4.isolatePrompt(_v2ks, _v2kt)
local _v2ku = {}
local _v2kv = workspace:FindFirstChild(_ei9m[2328])
if not _v2kv then return _v2ku end
for _v2kw, _v2kx in ipairs(_v2kv:GetChildren()) do
local _v2ky = _v2jc(_v2kx)
if _v2ky and _v2ky ~= _v2ks and _v2ky.Enabled then
local _v2kz, _v2l0 = pcall(function() return _v2ky.Parent.Position end)
if (not _v2kz) or (_v2l0 - _v2kt).Magnitude < 80 then
pcall(function() _v2ky.Enabled = false end)
table.insert(_v2ku, _v2ky)
end
end
end
return _v2ku
end
function _v4.restorePrompts(_v2l1)
for _v2l2, _v2l3 in ipairs(_v2l1) do pcall(function() if _v2l3 and _v2l3.Parent then _v2l3.Enabled = true end end) end
end
function _v4.autoSpawnCleanup()
for _v2l4, _v2l5 in ipairs(_v4.AUTO_SPAWN_DRAWS) do pcall(function() _v2l5:Remove() end) end
table.clear(_v4.AUTO_SPAWN_DRAWS)
_v4.AUTO_SPAWN = false
_v4.AUTO_SPAWN_TARGET = nil
_v4.AUTO_SPAWN_GENDER = nil
_v4.AUTO_SPAWN_ATTEMPTS = 0
end
function _v4.autoSpawnCleanupGUI()
local _v2l6 = _v2.PlayerGui
pcall(function()
local _v2l7 = _v2l6:FindFirstChild(_ei9m[1041-11])
if _v2l7 then _v2l7:Destroy() end
end)
pcall(function()
local _v2l8 = _v2l6:FindFirstChild(_ei9m[68+254])
if _v2l8 then _v2l8:Destroy() end
end)
pcall(function()
local _v2l9 = _v2l6:FindFirstChild(_ei9m[6+2954])
if _v2l9 then _v2l9:Destroy() end
end)
end
function _v4.autoSpawnGetDinoName()
local _v2la = _v2.PlayerGui:FindFirstChild(_ei9m[242+731])
if not _v2la then return nil end
local _v2lb = _v2la:FindFirstChild(_ei9m[1919-3])
if not _v2lb then return nil end
local _v2lc = _v2lb:FindFirstChild(_ei9m[938])
if not _v2lc then return nil end
local _v2ld = _v2lc:FindFirstChild(_ei9m[2690])
if _v2ld and _v2ld.Text ~= "" then return _v2ld.Text end
return nil
end
function _v4.autoSpawnGetGender()
local _v2le = _v2.PlayerGui:FindFirstChild(_ei9m[1813])
if not _v2le then return _ei9m[2+1998] end
local ok, result = pcall(function()
local _v2lf = _v2le.LeftFrame.Customizer.Frame.Gender.Frame
local _v2lg = _v2lf:FindFirstChild(_ei9m[4+2043])
if _v2lg then
local _v2lh = _v2lg:FindFirstChild(_ei9m[676-8])
if _v2lh and _v2lh.Color.G > 0.8 then return _ei9m[1810-19] end
end
return _ei9m[923+1937]
end)
return ok and result or _ei9m[1563]
end
function _v4.autoSpawnIsAlive()
local _v2li = _v2.Character
if not _v2li then return false end
local _v2lj = _v2li:FindFirstChildOfClass(_ei9m[1240])
return _v2lj and _v2lj.Health > 0
end
function _v4.startAutoSpawn()
_v4.autoSpawnCleanup()
_v4.AUTO_SPAWN = true
_v4.AUTO_SPAWN_ATTEMPTS = 0
_v4.AUTO_SPAWN_TARGET = _v4.autoSpawnGetDinoName()
_v4.AUTO_SPAWN_GENDER = _v4.autoSpawnGetGender()
if not _v4.AUTO_SPAWN_TARGET then
pcall(function() _v2c8:Notify(_ei9m[579-4], 5) end)
_v4.AUTO_SPAWN = false
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
pcall(function() _v2c8:Notify(_ei9m[5+2977] .. _v4.AUTO_SPAWN_TARGET .. " (" .. _v4.AUTO_SPAWN_GENDER .. _ei9m[3+254], 5) end)
local _v2lk = _v4.AUTO_SPAWN_DRAWS
local function _v2ll(_v2lm)
local _v2ln = _v4.safeDraw(_ei9m[3+2991])
_v2ln.Visible = true
_v2ln.Color = _v2lm.Color or Color3.fromRGB(255, 255, 255)
_v2ln.Size = _v2lm.Size or 16
_v2ln.Position = _v2lm.Position or Vector2.new(0, 0)
_v2ln.Text = _v2lm.Text or ""
_v2ln.Font = 2
_v2ln.Outline = true
_v2ln.OutlineColor = Color3.fromRGB(0, 0, 0)
table.insert(_v2lk, _v2ln)
return _v2ln
end
local function _v2lo(_v2lp)
local _v2lq = _v4.safeDraw(_ei9m[1555+15])
_v2lq.Visible = true
_v2lq.Color = _v2lp.Color or Color3.fromRGB(10, 10, 10)
_v2lq.Size = _v2lp.Size or Vector2.new(100, 100)
_v2lq.Position = _v2lp.Position or Vector2.new(0, 0)
_v2lq.Filled = _v2lp.Filled ~= false
_v2lq.Transparency = _v2lp.Transparency or 0.3
if _v2lp.Thickness then _v2lq.Thickness = _v2lp.Thickness end
table.insert(_v2lk, _v2lq)
return _v2lq
end
local _v2lr, _v2ls = 12, 12
_v2lo({ Position = Vector2.new(_v2lr, _v2ls), Size = Vector2.new(300, 110) })
local _v2lt = _v2lo({ Position = Vector2.new(_v2lr, _v2ls), Size = Vector2.new(300, 110), Filled = false, Transparency = 1, Color = Color3.fromRGB(0, 200, 80), Thickness = 2 })
local _v2lu = _v2ll({ Text = _ei9m[111+2024], Position = Vector2.new(_v2lr + 6, _v2ls + 4), Size = 18, Color = Color3.fromRGB(0, 220, 80) })
local _v2lv = _v2ll({ Text = _ei9m[1915-15] .. _v4.AUTO_SPAWN_TARGET .. _ei9m[1697-5], Position = Vector2.new(_v2lr + 6, _v2ls + 26), Color = Color3.fromRGB(0, 255, 200) })
local _v2lw = _v2ll({ Text = _ei9m[1819], Position = Vector2.new(_v2lr + 6, _v2ls + 44) })
local _v2lx = _v2ll({ Text = _ei9m[1729-9], Position = Vector2.new(_v2lr + 6, _v2ls + 62) })
local _v2ly = _v2ll({ Text = _ei9m[2484-20], Position = Vector2.new(_v2lr + 6, _v2ls + 80), Color = Color3.fromRGB(255, 200, 0) })
local _v2lz = game:GetService(_ei9m[2165])
local _v2m0 = _v4.req(_v2lz:WaitForChild(_ei9m[2+1451]):WaitForChild(_ei9m[179-11]))
local _v2m1 = _v2m0.GetController(_ei9m[475+249])
local _v2m2 = _v2m0.GetService(_ei9m[198])
task.spawn(function()
while _v4.AUTO_SPAWN and not _v4.UNLOADED do
pcall(function()
local _v2m3 = _v2m1:GetInfo(_v4.AUTO_SPAWN_TARGET)
if _v2m3 then
_v2lw.Text = string.format(_ei9m[111+2352],
_v2m3.UsedTotal or 0, _v2m3.Slots or 0,
_v2m3.UsedZenith or 0, _v2m3.ZenithSlots or 0)
end
end)
task.wait(3)
end
end)
task.spawn(function()
while _v4.AUTO_SPAWN and not _v4.UNLOADED do
if _v4.autoSpawnIsAlive() then
_v4.autoSpawnCleanupGUI()
_v2ly.Text = _ei9m[2693-17]
_v2ly.Color = Color3.fromRGB(0, 255, 0)
_v2lu.Text = _ei9m[1937+897]
_v2lu.Color = Color3.fromRGB(0, 255, 0)
_v2lt.Color = Color3.fromRGB(0, 255, 0)
pcall(function() _v2c8:Notify(_ei9m[543+799], 4) end)
task.wait(5)
_v4.autoSpawnCleanup()
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
if not _v2.PlayerGui:FindFirstChild(_ei9m[3+2967]) then
_v2ly.Text = _ei9m[2+364]
_v2ly.Color = Color3.fromRGB(255, 200, 0)
task.wait(1)
continue
end
_v4.AUTO_SPAWN_ATTEMPTS += 1
_v2lx.Text = _ei9m[583] .. _v4.AUTO_SPAWN_ATTEMPTS
local _v2m4, _v2m5, _v2m6
local _v2m7 = pcall(function()
_v2m4, _v2m5, _v2m6 = _v2m1:RequestSlot(_v4.AUTO_SPAWN_TARGET)
end)
if not _v2m7 then
_v2ly.Text = _ei9m[259+1706]
pcall(function()
_v2m2:InitiateSpawning({
Species = _v4.AUTO_SPAWN_TARGET,
Gender = _v4.AUTO_SPAWN_GENDER,
Skin = _ei9m[982],
Variant = _ei9m[880-20],
})
end)
_v4.autoSpawnCleanupGUI()
_v2ly.Text = _ei9m[5+2220]
_v2ly.Color = Color3.fromRGB(0, 255, 100)
_v2lu.Text = _ei9m[2919-1]
_v2lu.Color = Color3.fromRGB(0, 255, 0)
_v2lt.Color = Color3.fromRGB(0, 255, 0)
task.wait(5)
_v4.autoSpawnCleanup()
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
if _v2m4 then
_v2ly.Text = _ei9m[947+390] .. _v4.AUTO_SPAWN_TARGET
_v2ly.Color = Color3.fromRGB(0, 255, 0)
_v2lu.Color = Color3.fromRGB(0, 255, 0)
_v2lt.Color = Color3.fromRGB(0, 255, 0)
pcall(function()
_v2m2:InitiateSpawning({
Species = _v4.AUTO_SPAWN_TARGET,
Gender = _v4.AUTO_SPAWN_GENDER,
Skin = _ei9m[2757],
Variant = _ei9m[7+2598],
})
end)
_v4.autoSpawnCleanupGUI()
_v2lu.Text = _ei9m[2067]
pcall(function() _v2c8:Notify(_ei9m[2676-17] .. _v4.AUTO_SPAWN_TARGET .. "!", 4) end)
task.wait(5)
_v4.autoSpawnCleanup()
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
if _v2m5 == _ei9m[2461-12] and _v2m6 then
_v2lw.Text = string.format(_ei9m[2+1841],
_v2m6.UsedTotal or 0, _v2m6.Slots or 0,
_v2m6.UsedZenith or 0, _v2m6.ZenithSlots or 0)
end
_v2ly.Text = _ei9m[835]
_v2ly.Color = Color3.fromRGB(255, 80, 80)
_v2lt.Color = Color3.fromRGB(200, 60, 60)
task.wait(0.5)
end
end)
end
function _v4.unanchorFarmRoot()
local _v2m8 = _vjc()
if _v2m8 then pcall(function() _v2m8.Anchored = false end) end
end
local _v2m9 = nil
local _v2ma = {}
local function _v2mb()
if _v2m9 then
pcall(function() _v4.VIM:SendKeyEvent(false, _v2m9, false, game) end)
_v2m9 = nil
end
if #_v2ma > 0 then
_v4.restorePrompts(_v2ma)
_v2ma = {}
end
_v4.unanchorFarmRoot()
if _v4.fossilFarmCleanup then _v4.fossilFarmCleanup() end
if not (_v4.NO_FALL_DAMAGE or _v4.FOSSIL_FARM) then _v4.applyFallImmunity(false) end
end
function _v4.groundUnder(_v2mc)
local _v2md = RaycastParams.new()
_v2md.FilterType = Enum.RaycastFilterType.Exclude
_v2md.FilterDescendantsInstances = { _v2.Character }
local _v2me = workspace:Raycast(_v2mc + Vector3.new(0, 25, 0), Vector3.new(0, -300, 0), _v2md)
return _v2me and _v2me.Position or nil
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
function _v4.fossilFarmAdvance(_v2mf)
if _v4.UNLOADED then return end
if not _v4.FOSSIL_FARM then
if _v4.ffState then
_v4.fossilFarmCleanup()
local _v2mg = _v2.Character
if _v2mg and not _v4.AFK_FARM and not _v4.LEGIT_FARM then pcall(function() _v2mg:SetAttribute(_ei9m[64-13], nil) end) end
end
return
end
if _v4.SAVE_DINO_ACTIVE then return end
local _v2mh = _v4.getLocalPhysicsRoot()
if not _v2mh then return end
if _v2mh.Anchored and _v4.ffState ~= _ei9m[1221] then
pcall(function() _v2mh.Anchored = false end)
end
_v2mf = math.min(_v2mf or 0.016, 0.1)
local _v2mi = _v2.Character
local _v2mj = _v2mh.Position
if not _v4.ffPos then _v4.ffPos = _v2mj end
if not _v4.ffTarget or not _v4.ffTarget.Parent then
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v2ma > 0 then
_v4.restorePrompts(_v2ma)
_v2ma = {}
end
local _v2mk = _v4.ffPlanRoute(_v2mj)[1]
if _v2mk then
_v4.ffTarget = _v2mk
_v4.ffState = _ei9m[130+205]
_v4.ffEmptyChecks = 0
_v4.ffTries, _v4.ffFace = 0, nil
local _v2ml = _v4.fossilPosOf(_v2mk)
if _v2ml then
local _v2mm = 3
pcall(function() _v2mm = _v2mh.Size.Y * 0.5 end)
local _v2mn = _v4.groundUnder(_v2ml)
_v4.ffPos = _v2mj
_v4.ffSetLeg(_v2mj, Vector3.new(_v2ml.X, (_v2mn and _v2mn.Y or _v2ml.Y) + _v2mm + 0.5, _v2ml.Z))
else
_v4.ffTarget = nil
_v4.ffState = nil
end
else
_v4.ffEmptyChecks = _v4.ffEmptyChecks + 1
if _v4.ffEmptyChecks > 180 then
_v4.FOSSIL_FARM = false
_v4.fossilFarmCleanup()
if _v4.fossilFarmToggle then pcall(function() _v4.fossilFarmToggle:Set(false) end) end
local _v2mo = 0
for _v2mp, _v2mq in pairs(_v4.ffSkip) do if _v2mq > os.clock() then _v2mo = _v2mo + 1 end end
pcall(function()
_v2c8:Notify(_v2mo > 0 and (_ei9m[919+60] .. _v2mo .. _ei9m[2345-20])
or _ei9m[41-7], 8)
end)
end
return
end
end
if (_v4.ffState == _ei9m[770+2042] or _v4.ffFace) and _v4.ffTarget and _v4.ffTarget.Parent then
local _v2mr = os.clock()
if _v2mr - _v4.ffSince > (_v4.ffTries == 0 and 60 or 20) then
if _v4.ffTries < 2 then
_v4.ffTries = _v4.ffTries + 1
_v4.ffReposition(_v2mh)
pcall(function() _v2c8:Notify((_ei9m[1699-5]):format(_v4.ffTries), 4) end)
else
_v4.ffSkip[_v4.ffTarget] = _v2mr + 600
_v4.ffDropTarget(_v2mh)
pcall(function() _v2c8:Notify(_ei9m[160-1], 5) end)
return
end
end
end
if _v4.ffState == _ei9m[1407+1142] and _v4.ffDest then
local _v2ms = (_v4.ffLeg and _v4.ffLeg[_v4.ffLegI]) or _v4.ffDest
_v4.ffPos = _v4.govNext(_v4.ffPos, _v2ms, _v2mf)
if _v2mi then pcall(function() _v2mi:SetAttribute(_ei9m[1292+423], _v4.ffPos.Y) end) end
if (_v4.ffPos - _v2ms).Magnitude < 0.5 and _v4.ffLeg and _v4.ffLegI < #_v4.ffLeg then
_v4.ffLegI = _v4.ffLegI + 1
end
local _v2mt = Vector3.new(_v4.ffDest.X - _v4.ffPos.X, 0, _v4.ffDest.Z - _v4.ffPos.Z)
if _v2mt.Magnitude < 0.1 then
local _v2mu = _v4.ffCF or _v2mh.CFrame
_v4.ffCF = CFrame.new(_v4.ffPos) * (_v2mu - _v2mu.Position)
else
_v4.ffCF = CFrame.lookAt(_v4.ffPos, _v4.ffPos + _v2mt)
end
pcall(function()
_v2mh.CFrame = _v4.ffCF
_v2mh.AssemblyLinearVelocity = Vector3.zero
_v2mh.AssemblyAngularVelocity = Vector3.zero
end)
if (_v4.ffPos - _v4.ffDest).Magnitude < 1.5 then
_v4.ffState = _ei9m[819+1178]
_v4.ffCollectStart = os.clock()
_v4.ffSince = _v4.ffCollectStart
if _v4.ffFace then
local _v2mv = Vector3.new(_v4.ffFace.X, _v4.ffPos.Y, _v4.ffFace.Z)
if (_v2mv - _v4.ffPos).Magnitude > 0.1 then
_v4.ffCF = CFrame.lookAt(_v4.ffPos, _v2mv)
pcall(function() _v2mh.CFrame = _v4.ffCF end)
end
end
pcall(function() _v2mh.Anchored = true end)
local _v2mw = _v2jc(_v4.ffTarget)
if _v2mw then
_v2ma = {}
local _v2mx = workspace:FindFirstChild(_ei9m[7+1426])
if _v2mx then
for _v2my, _v2mz in ipairs(_v2mx:GetChildren()) do
local _v2n0 = _v2jc(_v2mz)
if _v2n0 and _v2n0 ~= _v2mw and _v2n0.Enabled then
pcall(function() _v2n0.Enabled = false end)
table.insert(_v2ma, _v2n0)
end
end
end
local _v2n1 = _v2mw.KeyboardKeyCode
if _v2n1 == nil or _v2n1 == Enum.KeyCode.Unknown then _v2n1 = Enum.KeyCode.E end
_v4.ffHeldKey = _v2n1
_v4.ffHoldDuration = (tonumber(_v2mw.HoldDuration) or 2.5) + 1
pcall(function() _v4.VIM:SendKeyEvent(true, _v2n1, false, game) end)
else
pcall(function() _v2mh.Anchored = false end)
_v4.ffTarget = nil
_v4.ffState = nil
end
end
elseif _v4.ffState == _ei9m[2859-20] then
if not _v4.ffTarget.Parent then
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v2ma > 0 then
_v4.restorePrompts(_v2ma)
_v2ma = {}
end
pcall(function() _v2mh.Anchored = false end)
_v4.ffTarget = nil
_v4.ffState = nil
return
end
local _v2n2 = os.clock() - _v4.ffCollectStart
if _v2n2 > (_v4.ffHoldDuration or 4) then
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(true, _v4.ffHeldKey, false, game) end)
end
_v4.ffCollectStart = os.clock()
end
end
end
function _v4.fossilFarmPin()
if _v4.UNLOADED or not _v4.FOSSIL_FARM or not _v4.ffCF or _v4.mvHold() then return end
local _v2n3 = _v4.getLocalPhysicsRoot()
if _v2n3 and not _v2n3.Anchored then
pcall(function()
_v2n3.CFrame = _v4.ffCF
_v2n3.AssemblyLinearVelocity = Vector3.zero
_v2n3.AssemblyAngularVelocity = Vector3.zero
end)
end
end
_v4.FF_CRUISE = 30
function _v4.ffRayParams()
local _v2n4 = RaycastParams.new()
_v2n4.FilterType = Enum.RaycastFilterType.Include
local _v2n5 = workspace:FindFirstChild(_ei9m[2983])
local _v2n6 = _v2n5 and _v2n5:FindFirstChild(_ei9m[117+290])
_v2n4.FilterDescendantsInstances = _v2n6 and { workspace.Terrain, _v2n6 } or { workspace.Terrain }
_v2n4.IgnoreWater = false
return _v2n4
end
function _v4.ffGroundY(_v2n7, _v2n8, _v2n9, _v2na)
local _v2nb = workspace:Raycast(Vector3.new(_v2n7, _v2n9 + 400, _v2n8), Vector3.new(0, -1200, 0), _v2na)
return _v2nb and _v2nb.Position.Y or nil
end
function _v4.ffSetLeg(_v2nc, _v2nd)
_v4.ffDest = _v2nd
local _v2ne = Vector3.new(_v2nd.X - _v2nc.X, 0, _v2nd.Z - _v2nc.Z).Magnitude
local _v2nf = _v4.ffRayParams()
local _v2ng = false
if _v2ne < 40 then
local _v2nh, _v2ni = pcall(function() return workspace:Raycast(_v2nc, _v2nd - _v2nc, _v2nf) end)
_v2ng = _v2nh and _v2ni == nil
end
if _v2ng then
_v4.ffLeg, _v4.ffLegI = { _v2nd }, 1
return
end
local _v2nj = math.max(_v2nc.Y, _v2nd.Y)
local _v2nk = math.max(1, math.floor(_v2ne / 20))
for _v2nl = 0, _v2nk do
local _v2nm = _v2nc:Lerp(_v2nd, _v2nl / _v2nk)
local _v2nn, _v2no = pcall(_v4.ffGroundY, _v2nm.X, _v2nm.Z, _v2nj, _v2nf)
if _v2nn and _v2no and _v2no > _v2nj then _v2nj = _v2no end
end
local _v2np = math.max(_v2nj + _v4.FF_CRUISE, _v2nc.Y)
_v4.ffLeg = { Vector3.new(_v2nc.X, _v2np, _v2nc.Z), Vector3.new(_v2nd.X, _v2np, _v2nd.Z), _v2nd }
_v4.ffLegI = 1
end
function _v4.ffDropTarget(_v2nq)
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v2ma > 0 then
_v4.restorePrompts(_v2ma)
_v2ma = {}
end
if _v2nq then pcall(function() _v2nq.Anchored = false end) end
_v4.ffTarget, _v4.ffState, _v4.ffFace = nil, nil, nil
end
function _v4.ffReposition(_v2nr)
local _v2ns = _v4.ffTarget
local _v2nt = _v2ns and _v4.fossilPosOf(_v2ns)
if not _v2nt then _v4.ffDropTarget(_v2nr) return end
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v2ma > 0 then
_v4.restorePrompts(_v2ma)
_v2ma = {}
end
pcall(function() _v2nr.Anchored = false end)
local _v2nu = 6
pcall(function() _v2nu = math.clamp((_v2jc(_v2ns).MaxActivationDistance or 10) * 0.6, 3, 8) end)
local _v2nv = _v4.ffPos or _v2nr.Position
if _v4.ffTries == 1 then _v4.ffBaseAng = math.atan2(_v2nv.Z - _v2nt.Z, _v2nv.X - _v2nt.X) end
local _v2nw = (_v4.ffBaseAng or 0) + _v4.ffTries * (2 * math.pi / 3)
local _v2nx = _v2nt + Vector3.new(math.cos(_v2nw) * _v2nu, 0, math.sin(_v2nw) * _v2nu)
local _v2ny = _v4.groundUnder(_v2nx)
local _v2nz = 3
pcall(function() _v2nz = _v2nr.Size.Y * 0.5 end)
_v4.ffSetLeg(_v4.ffPos or _v2nr.Position, Vector3.new(_v2nx.X, (_v2ny and _v2ny.Y or _v2nt.Y) + _v2nz + 0.5, _v2nx.Z))
_v4.ffFace = _v2nt
_v4.ffState = _ei9m[5+17]
_v4.ffSince = os.clock()
end
function _v4.ffCamStep(_v2o0)
if _v4.UNLOADED or not _v4.FOSSIL_FARM or not _v4.ffFace then return end
local _v2o1 = workspace.CurrentCamera
if not _v2o1 or _v2o1.CameraType ~= Enum.CameraType.Custom then return end
local _v2o2 = _v2o1.CFrame
local _v2o3 = _v2o1.Focus.Position
local _v2o4, _v2o5 = _v2o2.LookVector, _v4.ffFace - _v2o3
if Vector3.new(_v2o4.X, 0, _v2o4.Z).Magnitude < 1e-3 or Vector3.new(_v2o5.X, 0, _v2o5.Z).Magnitude < 1 then return end
local _v2o6 = math.atan2(-_v2o4.X, -_v2o4.Z)
local _v2o7 = math.atan2(-_v2o5.X, -_v2o5.Z)
local _v2o8 = 6 * math.min(_v2o0 or 0.016, 0.1)
local _v2o9 = math.clamp(math.atan2(math.sin(_v2o7 - _v2o6), math.cos(_v2o7 - _v2o6)), -_v2o8, _v2o8)
if math.abs(_v2o9) < 1e-4 then return end
local _v2oa = CFrame.Angles(0, _v2o9, 0)
_v2o1.CFrame = CFrame.new(_v2o3 + _v2oa * (_v2o2.Position - _v2o3)) * (_v2oa * _v2o2.Rotation)
end
function _v4.fossilFarmCleanup()
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v2ma > 0 then
_v4.restorePrompts(_v2ma)
_v2ma = {}
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
local _v2ob = _v2.Character
if _v2ob and not (_v4.FOSSIL_FARM or _v4.AFK_FARM or _v4.LEGIT_FARM or _v4.FLY or _v4.SAVE_DINO_ACTIVE) then
pcall(function() _v2ob:SetAttribute(_ei9m[2644-10], nil) end)
end
end
function _v4.startFossilFarm()
local _v2oc = workspace:FindFirstChild(_ei9m[2424])
local _v2od = _v2oc and #_v2oc:GetChildren() or 0
pcall(function() _v2c8:Notify((_ei9m[2796]):format(_v2od), 5) end)
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
_v1:BindToRenderStep(_ei9m[7+1777], Enum.RenderPriority.Camera.Value + 2, _v4.ffCamStep)
end)
end
function _v4.getCC()
if _v4.ccCache then return _v4.ccCache end
pcall(function()
_v4.ccCache = _v4.req(_v4.WATER_RS.Packages.Knit).GetController(_ei9m[777-19])
end)
return _v4.ccCache
end
_v4.CARRY_CORPSE = false
_v4.CARRY_RANGE = 1000
_v4.carryOrig = nil
function _v4.carryApply(_v2oe)
local function _v2of(_v2og)
pcall(function()
for _v2oh, _v2oi in pairs(_v2og.ProximityPrompts or {}) do
if typeof(_v2oi) == _ei9m[397] and _v2oi:IsA(_ei9m[550-3]) then _v2oi.MaxActivationDistance = _v2og.Range end
end
end)
end
if _v2oe then
if _v4.carryOrig then return true end
local _v2oj
pcall(function() _v2oj = _v4.req(_v2.PlayerScripts.Client.Classes.Character.Grab) end)
if type(_v2oj) ~= _ei9m[2+2659] then return false end
local _v2ok = {}
for _v2ol, _v2om in ipairs({ _ei9m[2411], _ei9m[826], _ei9m[5+1905], _ei9m[402], _ei9m[191+1587] }) do
if type(_v2oj[_v2om]) ~= _ei9m[2151-15] then return false end
_v2ok[_v2om] = _v2oj[_v2om]
end
_v4.carryOrig = { G = _v2oj, o = _v2ok }
_v2oj.GetGrabSettings = function(self, ...)
local _v2on = _v2ok.GetGrabSettings(self, ...)
if type(_v2on) ~= _ei9m[276-16] then return _v2on end
local _v2oo = table.clone(_v2on)
_v2oo.GrabLimit, _v2oo.DragLimit = math.huge, math.huge
_v2oo.DragReverseLock, _v2oo.DragDrain = false, 0
return _v2oo
end
_v2oj.CanGrabTarget = function(self, _v2op, _v2oq, ...)
if _v2oq then return _v2ok.CanGrabTarget(self, _v2op, _v2oq, ...) end
return true
end
_v2oj.MeetsWeightLimit = function(self, _v2or, _v2os, ...)
if _v2os then return _v2ok.MeetsWeightLimit(self, _v2or, _v2os, ...) end
return true
end
_v2oj.IsDragDisabled = function() return false end
_v2oj.Grab = function(self, _v2ot, _v2ou, ...)
if _v2ou == _ei9m[2+2106] then return _v2ok.Grab(self, _v2ot, _v2ou, ...) end
local _v2ov = self.BaseAttachment
self.BaseAttachment = nil
local _v2ow = table.pack(pcall(_v2ok.Grab, self, _v2ot, _v2ou, ...))
self.BaseAttachment = _v2ov
if not _v2ow[1] then error(_v2ow[2], 0) end
return table.unpack(_v2ow, 2, _v2ow.n)
end
local _v2ox = _v4.getCC()
if type(_v2ox) == _ei9m[146] and type(_v2ox.GetConsumeRange) == _ei9m[2486] then
local _v2oy = _v2ox.GetConsumeRange
_v4.carryOrig.CC, _v4.carryOrig.oRange = _v2ox, _v2oy
_v2ox.GetConsumeRange = function(self, ...)
return math.max(tonumber(_v2oy(self, ...)) or 0, _v4.CARRY_RANGE)
end
pcall(function() _v2ox.Range = _v2ox:GetConsumeRange() end)
_v2of(_v2ox)
end
return true
end
local _v2oz = _v4.carryOrig
if _v2oz then
for _v2p0, _v2p1 in pairs(_v2oz.o) do _v2oz.G[_v2p0] = _v2p1 end
if _v2oz.CC then
_v2oz.CC.GetConsumeRange = _v2oz.oRange
pcall(function() _v2oz.CC.Range = _v2oz.CC:GetConsumeRange() end)
_v2of(_v2oz.CC)
end
_v4.carryOrig = nil
end
return true
end
function _v4.khRange()
local _v2p2
pcall(function() _v2p2 = _v4.getCC():GetConsumeRange() end)
if type(_v2p2) ~= _ei9m[5+302] or _v2p2 <= 0 then _v2p2 = 22 end
return _v2p2
end
function _v4.nearestCorpse(_v2p3)
local _v2p4 = _v4.getCC()
if not (_v2p4 and _v2p4.CorpseData and _v2p3) then return nil end
local _v2p5
pcall(function() _v2p5 = _v2.Character:GetAttribute(_ei9m[3+2135]) end)
if _v4.trackWalls then pcall(_v4.trackWalls) end
local _v2p6 = RaycastParams.new()
_v2p6.FilterType = Enum.RaycastFilterType.Include
_v2p6.FilterDescendantsInstances = { workspace.Terrain }
local _v2p7, _v2p8, _v2p9
for _v2pa, _v2pb in pairs(_v2p4.CorpseData) do
local _v2pc = _v2pb and _v2pb.Root
if _v2pc and _v2pc.Parent and (tonumber(_v2pb.Weight) or 0) > 0 and tostring(_v2pb.Name) ~= tostring(_v2p5) then
local _v2pd
pcall(function()
_v2pd = _v2pc:IsA(_ei9m[141+56]) and _v2pc.Position or _v2pc:GetPivot().Position
end)
if _v2pd then
local _v2pe = (_v2pd - _v2p3).Magnitude
if not _v2p9 or _v2pe < _v2p9 then
local _v2pf = workspace:Raycast(Vector3.new(_v2pd.X, _v2pd.Y + 3000, _v2pd.Z), Vector3.new(0, -6000, 0), _v2p6)
local _v2pg = _v2pf ~= nil and _v2pf.Position.Y > _v2pd.Y + 25
if not _v2pg and not (_v4.wallCross and _v4.wallCross(_v2p3, _v2pd)) then _v2p7, _v2p8, _v2p9 = _v2pa, _v2pc, _v2pe end
end
end
end
end
return _v2p7, _v2p8, _v2p9
end
function _v4.warpToCorpse(_v2ph, _v2pi)
local _v2pj
pcall(function()
_v2pj = _v2pi:IsA(_ei9m[3+566]) and _v2pi.Position or _v2pi:GetPivot().Position
end)
if not _v2pj then return false end
local _v2pk = _v2pj + Vector3.new(_v4.TP_OFFSET or 8, 0, 0)
local _v2pl = _v4.flyTo(_v2pk, function() return _v4.TP_CORPSE and not (_v4.otherMoverOn and _v4.otherMoverOn()) end, 40)
return _v2pl and _v2ph.Parent ~= nil
and Vector3.new(_v2ph.Position.X - _v2pj.X, 0, _v2ph.Position.Z - _v2pj.Z).Magnitude < 40
end
_v4.addStep(30, function()
if _v4.UNLOADED or not _v4.TP_CORPSE or _v4.tpBusy then return end
if _v4.tpDone and not _v4.TP_CHAIN then return end
if _v4.FLY or _v4.AUTO_FLY or _v4.AFK_FARM or _v4.LEGIT_FARM or _v4.FOSSIL_FARM or _v4.SAVE_DINO_ACTIVE or _v4.BIOME_TRAVEL then return end
local _v2pm = _vjc()
if not (_v2pm and _v2pm.Parent) then return end
local _v2pn = _v4.getCC()
if not _v2pn then return end
if _v4.tpTargetId then
local _v2po = _v2pn.CorpseData and _v2pn.CorpseData[_v4.tpTargetId]
if _v2po and (tonumber(_v2po.Weight) or 0) > 0 then return end
_v4.tpTargetId = nil
if not _v4.TP_CHAIN then _v4.tpDone = true return end
end
local _v2pp, _v2pq, _v2pr = _v4.nearestCorpse(_v2pm.Position)
if not _v2pp then
if not _v4.tpNoneSaid then
_v4.tpNoneSaid = true
pcall(function() _v2c8:Notify(_ei9m[219+435], 5) end)
end
return
end
_v4.tpNoneSaid = nil
_v4.tpBusy = true
task.spawn(function()
_v4.applyFallImmunity(true)
pcall(function() _v2c8:Notify(_ei9m[2+1392] .. math.floor(_v2pr or 0) .. _ei9m[1605-3], 4) end)
local _v2ps = _v4.warpToCorpse(_v2pm, _v2pq)
_v4.tpTargetId = _v2ps and _v2pp or nil
if _v2ps and not _v4.TP_CHAIN then _v4.tpDone = true end
pcall(function()
_v2c8:Notify(_v2ps and _ei9m[685-19]
or (_ei9m[305+548] .. (_v4.TP_CORPSE and _ei9m[1964-3] or _ei9m[2+1691])), 5)
end)
task.delay(6, function()
if not (_v4.NO_FALL_DAMAGE or _v4.FOSSIL_FARM or _v4.TP_CORPSE) then
_v4.applyFallImmunity(false)
end
end)
_v4.tpBusy = false
end)
end)
_v4.FPS_SAVER = false
do
local _v2pt = game:GetService(_ei9m[2612-20])
local _v2pu = game:GetService(_ei9m[2958-6])
local _v2pv
function _v4.applyFpsSaver(_v2pw)
if _v2pw then
if not _v2pv then
_v2pv = { shadows = _v2pt.GlobalShadows, fogEnd = _v2pt.FogEnd, fogStart = _v2pt.FogStart,
quality = nil, effects = {} }
pcall(function() _v2pv.quality = settings().Rendering.QualityLevel end)
for _v2px, _v2py in ipairs(_v2pt:GetChildren()) do
if _v2py:IsA(_ei9m[2042-15]) or _v2py:IsA(_ei9m[2175-3]) then _v2pv.effects[_v2py] = _v2py.Enabled end
end
end
pcall(function() if setfpscap and not _v4.IS_XENO then setfpscap(10) end end)
pcall(function() settings().Rendering.QualityLevel = Enum.QualityLevel.Level01 end)
pcall(function() _v2pt.GlobalShadows = false end)
pcall(function() _v2pt.FogStart = 0; _v2pt.FogEnd = 12 end)
for _v2pz, _v2q0 in ipairs(_v2pt:GetChildren()) do
if _v2q0:IsA(_ei9m[3011-15]) or _v2q0:IsA(_ei9m[858+356]) then pcall(function() _v2q0.Enabled = false end) end
end
pcall(function() _v2pu:Set3dRenderingEnabled(false) end)
else
pcall(function() _v2pu:Set3dRenderingEnabled(true) end)
pcall(function() if setfpscap and not _v4.IS_XENO then setfpscap(0) end end)
if _v2pv then
pcall(function() if _v2pv.quality then settings().Rendering.QualityLevel = _v2pv.quality end end)
pcall(function() _v2pt.GlobalShadows = _v2pv.shadows end)
pcall(function() _v2pt.FogStart = _v2pv.fogStart; _v2pt.FogEnd = _v2pv.fogEnd end)
for _v2q1, _v2q2 in pairs(_v2pv.effects) do pcall(function() if _v2q1 and _v2q1.Parent then _v2q1.Enabled = _v2q2 end end) end
_v2pv = nil
end
end
end
end
local _v2q3 = _v2c8:AddTab({Name = _ei9m[182]})
local _v2q4 = _v2c8:AddTab({Name = _ei9m[1489]})
local _v2q5 = _v2c8:AddTab({Name = _ei9m[4+2279]})
local _v2q6 = _v2c8:AddTab({Name = _ei9m[2504-11]})
local _v2q7 = {}
local _v2q8
_v2q8 = _v2cc(_v2q3:AddSubTab({Name = _ei9m[6+2960]}))
_v4.section(_v2q8, _ei9m[2+2615], _ei9m[2668-6])
_v4.fossilFarmToggle = _v2q8:AddToggle({
Name = _ei9m[7+637],
Skull = true,
Default = false,
Callback = function(_v2q9)
_v4.FOSSIL_FARM = _v2q9
if _v2q9 then
if _v4.LEGIT_FARM and _v4.legitFarmToggle then pcall(function() _v4.legitFarmToggle:Set(false) end) end
if _v4.AFK_FARM and _v4.afkFarmToggle then pcall(function() _v4.afkFarmToggle:Set(false) end) end
if _v4.FLY and _v4.flyToggle then pcall(function() _v4.flyToggle:Set(false) end) end
if _v4.AUTO_FLY and _v4.autoFlyToggle then pcall(function() _v4.autoFlyToggle:Set(false) end) end
_v4.LEGIT_FARM, _v4.AFK_FARM, _v4.FLY, _v4.AUTO_FLY = false, false, false, false
_v4.startFossilFarm()
else
_v2mb()
end
end
})
_v2q8 = _v2cc(_v2q3:AddSubTab({Name = _ei9m[191+305]}))
_v4.section(_v2q8, _ei9m[2308-11], _ei9m[820])
_v4.autoWaterToggle = _v2q8:AddToggle({
Name = _ei9m[2580],
Default = false,
Callback = function(_v2qa) _v4.AUTO_WATER = _v2qa end
})
_v2q7.waterAnywhere = _v2q8:AddToggle({
Name = _ei9m[84+1821],
Default = false,
Callback = function(_v2qb) _v4.WATER_ANYWHERE = _v2qb; _v4.anywhereSips = 0 end
})
_v4.forceEatToggle = _v2q8:AddToggle({
Name = _ei9m[1+2],
Default = false,
Callback = function(_v2qc)
_v4.FORCE_EAT = _v2qc
if _v2qc and _v4.AFK_FARM then
pcall(function() if _v4.Hub then _v4.Hub:Notify(_ei9m[1832+346], 5) end end)
end
end
})
_v4.section(_v2q8, _ei9m[2564-20], _ei9m[2215-3])
_v2q7.fastEat = _v2q8:AddToggle({
Name = _ei9m[3+1982],
Default = true,
Callback = function(_v2qd) _v4.FAST_EAT = _v2qd end
})
_v2q7.eatWhenHungry = _v2q8:AddToggle({
Name = _ei9m[4+385],
Default = false,
Callback = function(_v2qe) _v4.EAT_WHEN_HUNGRY = _v2qe end
})
_v2q7.leaveScraps = _v2q8:AddToggle({
Name = _ei9m[2250+413],
Default = false,
Callback = function(_v2qf) _v4.LEAVE_SCRAPS = _v2qf end
})
if not _v4.IS_XENO then
_v4.section(_v2q8, _ei9m[298], _ei9m[322-9])
_v2q7.carryCorpse = _v2q8:AddToggle({
Name = _ei9m[500-10],
Default = false,
Callback = function(_v2qg)
_v4.CARRY_CORPSE = _v2qg
if not _v4.carryApply(_v2qg) and _v2qg then
_v4.CARRY_CORPSE = false
pcall(function() if _v4.Hub then _v4.Hub:Notify(_ei9m[749], 5) end end)
end
end
})
end
_v4.section(_v2q8, _ei9m[144], _ei9m[267+196])
_v4.afkFarmToggle = _v2q8:AddToggle({
Name = _ei9m[1204],
Skull = true,
Default = false,
Callback = function(_v2qh)
_v4.AFK_FARM = _v2qh
if _v2qh then
if _v4.FLY and _v4.flyToggle then pcall(function() _v4.flyToggle:Set(false) end) end
if _v4.AUTO_FLY and _v4.autoFlyToggle then pcall(function() _v4.autoFlyToggle:Set(false) end) end
if _v4.LEGIT_FARM and _v4.legitFarmToggle then pcall(function() _v4.legitFarmToggle:Set(false) end) end
if _v4.FOSSIL_FARM and _v4.fossilFarmToggle then pcall(function() _v4.fossilFarmToggle:Set(false) end) end
local _v2qi = {}
if _v4.FORCE_EAT then _v2qi[#_v2qi + 1] = _ei9m[1539] end
if _v4.AFK_FARM_SAFETY and (_v4.AUTO_SAVE or _v4.SAVE_DINO_ACTIVE) then _v2qi[#_v2qi + 1] = _ei9m[2246-6] end
if _v4.AFK_FARM_SAFETY and _v4.SAVE_DINO_ACTIVE and _v4.releaseDino then pcall(_v4.releaseDino) end
if _v4.AFK_FARM_ADMIN_KICK and _v4.adminKickSweep then _v4.adminKickSweep() end
if #_v2qi > 0 then
local _v2qj = table.concat(_v2qi, _ei9m[113+1649]) .. _ei9m[2302]
pcall(function() if _v4.Hub then _v4.Hub:Notify(_v2qj, 6) end end)
end
else
_v4.afkStopWalk()
end
end
})
_v2q7.afkFarmAvoid = _v2q8:AddSlider({
Name = _ei9m[500-5],
Min = 0, Max = 1000, Default = 200,
Callback = function(_v2qk) _v4.AFK_FARM_AVOID = _v2qk end
})
_v2q7.afkFarmWalk = _v2q8:AddToggle({
Name = _ei9m[183],
Default = true,
Callback = function(_v2ql) _v4.AFK_FARM_WALK = _v2ql end
})
_v2q7.afkFarmSafety = _v2q8:AddToggle({
Name = _ei9m[1051+681],
Default = true,
Callback = function(_v2qm)
_v4.AFK_FARM_SAFETY = _v2qm
if _v2qm and _v4.AFK_FARM and _v4.SAVE_DINO_ACTIVE and _v4.releaseDino then pcall(_v4.releaseDino) end
end
})
_v2q7.afkFarmAdminKick = _v2q8:AddToggle({
Name = _ei9m[1984+786],
Default = true,
Callback = function(_v2qn)
_v4.AFK_FARM_ADMIN_KICK = _v2qn
if _v2qn and _v4.AFK_FARM and _v4.adminKickSweep then _v4.adminKickSweep() end
end
})
_v2q7.afkFarmFlee = _v2q8:AddToggle({
Name = _ei9m[2769-16],
Default = true,
Callback = function(_v2qo) _v4.AFK_FARM_FLEE = _v2qo end
})
_v2q7.afkFarmUnstuck = _v2q8:AddToggle({
Name = _ei9m[573+1532],
Default = false,
Callback = function(_v2qp) _v4.AFK_FARM_UNSTUCK = _v2qp end
})
_v4.section(_v2q8, _ei9m[1189+1866], _ei9m[33])
_v4.legitFarmToggle = _v2q8:AddToggle({
Name = _ei9m[2249-19],
Skull = true,
Default = false,
Callback = function(_v2qq)
_v4.LEGIT_FARM = _v2qq
if _v2qq then
if _v4.AFK_FARM and _v4.afkFarmToggle then pcall(function() _v4.afkFarmToggle:Set(false) end) end
if _v4.FLY and _v4.flyToggle then pcall(function() _v4.flyToggle:Set(false) end) end
if _v4.AUTO_FLY and _v4.autoFlyToggle then pcall(function() _v4.autoFlyToggle:Set(false) end) end
if _v4.FOSSIL_FARM and _v4.fossilFarmToggle then pcall(function() _v4.fossilFarmToggle:Set(false) end) end
if _v4.LF_ADMIN_KICK and _v4.adminKickSweep then _v4.adminKickSweep() end
end
end
})
_v2q7.lfAvoid = _v2q8:AddSlider({
Name = _ei9m[1162-6],
Min = 0, Max = 1000, Default = 200,
Callback = function(_v2qr) _v4.LF_AVOID = _v2qr end
})
_v2q7.lfMaxDist = _v2q8:AddSlider({
Name = _ei9m[1733],
Min = 200, Max = 3000, Default = 1000,
Callback = function(_v2qs) _v4.LF_MAX_DIST = _v2qs end
})
_v2q7.lfScraps = _v2q8:AddToggle({
Name = _ei9m[7+2339],
Default = false,
Callback = function(_v2qt) _v4.LF_SCRAPS = _v2qt end
})
_v2q7.lfCircle = _v2q8:AddToggle({
Name = _ei9m[7+989],
Default = false,
Callback = function(_v2qu) _v4.LF_CIRCLE = _v2qu end
})
_v2q7.lfFlee = _v2q8:AddToggle({
Name = _ei9m[2252],
Default = false,
Callback = function(_v2qv) _v4.LF_FLEE = _v2qv end
})
_v2q7.lfTabOut = _v2q8:AddToggle({
Name = _ei9m[1415],
Default = true,
Callback = function(_v2qw) _v4.LF_TABOUT = _v2qw end
})
_v2q7.lfUnstuck = _v2q8:AddToggle({
Name = _ei9m[372+1139],
Default = true,
Callback = function(_v2qx) _v4.LF_UNSTUCK = _v2qx end
})
_v2q7.lfRest = _v2q8:AddToggle({
Name = _ei9m[148-3],
Default = true,
Callback = function(_v2qy) _v4.LF_REST = _v2qy end
})
_v2q7.lfAdminKick = _v2q8:AddToggle({
Name = _ei9m[1118-1],
Default = true,
Callback = function(_v2qz)
_v4.LF_ADMIN_KICK = _v2qz
if _v2qz and _v4.LEGIT_FARM and _v4.adminKickSweep then _v4.adminKickSweep() end
end
})
_v2q7.lfFlyAway = _v2q8:AddToggle({
Name = _ei9m[2116-20],
Default = true,
Callback = function(_v2r0) _v4.LF_FLYAWAY = _v2r0 end
})
_v2q7.lfFlyAwayRadius = _v2q8:AddSlider({
Name = _ei9m[4+1375],
Min = 50, Max = 500, Default = 150,
Callback = function(_v2r1) _v4.LF_FLYAWAY_RADIUS = _v2r1 end
})
_v4.section(_v2q8, _ei9m[5+1162], _ei9m[6+364])
_v4.autoSwitchToggle = _v2q8:AddToggle({
Name = _ei9m[2599],
Skull = true,
Default = false,
Callback = function(_v2r2)
_v4.AUTO_SWITCH = _v2r2
if _v2r2 and _v4.asRefreshLists then pcall(_v4.asRefreshLists) end
if not _v2r2 then _v4.AS_BUSY = false end
end
})
;(function()
local _v2r3 = _v4.asItems and _v4.asItems() or { _ei9m[2+318] }
_v4.AS_SLOTS = _v4.AS_SLOTS or {}
for _v2r4 = 1, 6 do
_v4.AS_SLOTS[_v2r4] = _ei9m[364+626]
_v2q7[_ei9m[2089-12] .. _v2r4] = _v2q8:AddDropdown({
Name = _ei9m[442+426] .. _v2r4,
Items = _v2r3,
Default = _ei9m[2+414],
Callback = function(_v2r5) _v4.AS_SLOTS[_v2r4] = _v4.asNameOf and _v4.asNameOf(_v2r5) or _v2r5 end
})
if _v4.asDropdowns then _v4.asDropdowns[_v2r4] = _v2q7[_ei9m[632-9] .. _v2r4] end
end
end)()
_v2q7.asGender = _v2q8:AddDropdown({
Name = _ei9m[2146],
Items = { _ei9m[31+1399], _ei9m[881+1044] },
Default = _ei9m[1437-14],
Callback = function(_v2r6) _v4.AS_GENDER = _v2r6 end
})
_v2q7.asAutoOrder = _v2q8:AddToggle({
Name = _ei9m[6+2232],
Default = false,
Callback = function(_v2r7) _v4.AS_AUTO_ORDER = _v2r7 end
})
_v2q7.asAutoBuy = _v2q8:AddToggle({
Name = _ei9m[740+1781],
Default = false,
Callback = function(_v2r8) _v4.AS_AUTOBUY = _v2r8 end
})
pcall(function()
if _v2q8.AddLabel then _v4.asDoneLabel = _v2q8:AddLabel({ Name = _ei9m[6+763], Text = _ei9m[1045] }) end
if _v4.asRefreshDone then _v4.asRefreshDone() end
end)
_v4.section(_v2q8, _ei9m[5+12], _ei9m[2729-1])
_v4.farmTimerToggle = _v2q8:AddToggle({
Name = _ei9m[3050],
Default = false,
Callback = function(_v2r9)
_v4.FARM_TIMER = _v2r9
_v4.ftElapsed, _v4.ftWarned = 0, false
if _v2r9 then
pcall(function() _v4.Hub:Notify(_ei9m[4+313] .. math.floor(_v4.FT_MINUTES or 0) .. _ei9m[2431], 5) end)
end
end
})
_v2q7.ftMinutes = _v2q8:AddSlider({
Name = _ei9m[2+2017],
Min = 5, Max = 720, Default = 120,
Callback = function(_v2ra) _v4.FT_MINUTES = _v2ra end
})
_v4.section(_v2q8, _ei9m[1400+855], _ei9m[2373])
_v4.rejoinToggle = _v2q8:AddToggle({
Name = _ei9m[2993],
Default = _v4.REJOIN,
Callback = function(_v2rb)
_v4.REJOIN = _v2rb
if _v4.rejoinSave then _v4.rejoinSave() end
end
})
;(function()
local _v2rc = { _ei9m[6+1729], _ei9m[1657-19], _ei9m[719-13], _ei9m[1816], _ei9m[1426+319] }
if not table.find(_v2rc, _v4.REJOIN_MAP) then _v4.REJOIN_MAP = _ei9m[542] end
_v2q7.rejoinMap = _v2q8:AddDropdown({
Name = _ei9m[634-9],
Items = _v2rc,
Default = _v4.REJOIN_MAP,
Callback = function(_v2rd)
_v4.REJOIN_MAP = _v2rd
if _v4.rejoinSave then _v4.rejoinSave() end
end
})
end)()
;(function()
local _v2re = { _ei9m[5+944] }
for _v2rf, _v2rg in ipairs(_v4.asItems and _v4.asItems() or {}) do
if (_v4.asNameOf and _v4.asNameOf(_v2rg)) ~= _ei9m[1466] then _v2re[#_v2re + 1] = _v2rg end
end
local _v2rh = _ei9m[1487+348]
if type(_v4.FARM_DINO) == _ei9m[438+55] and _v4.FARM_DINO ~= "" and _v4.FARM_DINO ~= _ei9m[2568-9] then
_v2rh = (_v4.asLabel and _v4.asLabel(_v4.FARM_DINO)) or _v4.FARM_DINO
end
_v2q7.rejoinDino = _v2q8:AddDropdown({
Name = _ei9m[685],
Items = _v2re,
Default = _v2rh,
Callback = function(_v2ri)
local _v2rj = (_v4.asNameOf and _v4.asNameOf(_v2ri)) or _v2ri
if _v2rj == _ei9m[114+161] or _v2rj == _ei9m[1369+1510] or _v2rj == nil then
_v4.FARM_DINO = nil
else
_v4.FARM_DINO = _v2rj
end
if _v4.rejoinSave then _v4.rejoinSave() end
end
})
end)()
_v2q7.lowPopLeave = _v2q8:AddToggle({
Name = _ei9m[1791-10],
Default = _v4.LOW_POP_LEAVE,
Callback = function(_v2rk)
_v4.LOW_POP_LEAVE = _v2rk
if _v4.rejoinSave then _v4.rejoinSave() end
end
})
_v2q7.lowPopMin = _v2q8:AddSlider({
Name = _ei9m[6+351],
Min = 10, Max = 150, Default = _v4.LOW_POP_MIN,
Callback = function(_v2rl)
_v4.LOW_POP_MIN = _v2rl
if _v4.rejoinSave then _v4.rejoinSave() end
end
})
_v4.antiAfkToggle = _v2q8:AddToggle({
Name = _ei9m[731+412],
Default = false,
Callback = function(_v2rm) _v4.ANTI_AFK = _v2rm end
})
_v4.section(_v2q8, _ei9m[2097-15], _ei9m[260+1684])
_v2q7.fpsSaver = _v2q8:AddToggle({
Name = _ei9m[2619],
Default = false,
Callback = function(_v2rn) _v4.FPS_SAVER = _v2rn; if _v4.applyFpsSaver then _v4.applyFpsSaver(_v2rn) end end
})
_v4.section(_v2q8, _ei9m[3+72], _ei9m[1945-7])
_v4.autoCleanToggle = _v2q8:AddToggle({
Name = _ei9m[1037],
Default = false,
Callback = function(_v2ro) _v4.AUTO_CLEAN = _v2ro end
})
_v2q7.infOxygen = _v2q8:AddToggle({
Name = _ei9m[673],
Default = false,
Callback = function(_v2rp) _v4.INF_OXYGEN = _v2rp end
})
_v2q8 = _v2cc(_v2q3:AddSubTab({Name = _ei9m[2+1643]}))
_v4.section(_v2q8, _ei9m[4+1885], _ei9m[2577-1])
_v4.autoSpawnToggle = _v2q8:AddToggle({
Name = _ei9m[2342+101],
Default = false,
Callback = function(_v2rq)
if _v2rq then
_v4.startAutoSpawn()
else
_v4.autoSpawnCleanup()
end
end
})
function _v4.markScaled(_v2rr, _v2rs, _v2rt)
local _v2ru = (tonumber(_v2rt) or 1) >= 5
for _v2rv, _v2rw in ipairs({ _v2rr, _v2rs }) do
if _v2rw and _v2rw.SetSkull then pcall(function() _v2rw:SetSkull(_v2ru) end) end
end
end
_v2q8 = _v2cc(_v2q4:AddSubTab({Name = _ei9m[2371+652]}))
_v4.section(_v2q8, _ei9m[870+1304], _ei9m[546-14])
_v4.hitboxToggle = _v2q8:AddToggle({
Name = _ei9m[2349],
Default = false,
Callback = function(_v2rx)
_v4.HITBOX_EXPANDER = _v2rx
if not _v2rx then _v4.resetAllHitboxes() end
end
})
_v2q7.hitboxVis = _v2q8:AddToggle({
Name = _ei9m[658],
Default = false,
Callback = function(_v2ry)
_v4.HITBOX_VISUALIZE = _v2ry
if not _v2ry then
for _v2rz, _v2s0 in _v0:GetPlayers() do
if _v2s0 ~= _v2 then
_v4.visualizePlayerHitbox(_v2s0, false)
_v4.hbShown[_v2s0] = nil
end
end
end
end
})
_v2q7.hitboxVisOpacity = _v2q8:AddSlider({
Name = _ei9m[6+939],
Min = 0, Max = 100, Default = 50,
Callback = function(_v2s1) _v4.HITBOX_VIS_TRANSPARENCY = 1 - (_v2s1 / 100) end
})
_v2q7.hitboxMult = _v2q8:AddSlider({
Name = _ei9m[2269],
Min = 1, Max = 10, Default = 1,
Callback = function(_v2s2) _v4.HITBOX_MULTIPLIER = _v2s2; _v4.markScaled(_v4.hitboxToggle, _v2q7.hitboxMult, _v2s2) end
})
_v4.section(_v2q8, _ei9m[1638+846], _ei9m[6+426])
_v2q7.hitboxGroups = _v4.groupDropdown(_v2q8, _ei9m[237], _v4.HITBOX_GROUPS, _v4.PART_GROUP_ORDER)
_v2q8 = _v2cc(_v2q4:AddSubTab({Name = _ei9m[2+841]}))
_v4.section(_v2q8, _ei9m[2605-15], _ei9m[3+2073])
_v2q7.reach = _v2q8:AddToggle({
Name = _ei9m[4+382],
Default = false,
Callback = function(_v2s3)
_v4.REACH_ENABLED = _v2s3
if not _v2s3 and not _v4.REACH_VISUALIZE then _v4.resetLocalReach() end
end
})
_v2q7.reachVis = _v2q8:AddToggle({
Name = _ei9m[2384],
Default = false,
Callback = function(_v2s4)
_v4.REACH_VISUALIZE = _v2s4
if not _v2s4 and not _v4.REACH_ENABLED then _v4.resetLocalReach() end
end
})
_v2q7.reachVisOpacity = _v2q8:AddSlider({
Name = _ei9m[4+2732],
Min = 0, Max = 100, Default = 50,
Callback = function(_v2s5) _v4.REACH_VIS_TRANSPARENCY = 1 - (_v2s5 / 100) end
})
_v2q7.reachMult = _v2q8:AddSlider({
Name = _ei9m[2+2882],
Min = 1, Max = 10, Default = 1,
Callback = function(_v2s6) _v4.REACH_MULTIPLIER = _v2s6; _v4.markScaled(_v2q7.reach, _v2q7.reachMult, _v2s6) end
})
_v2q7.reachGroups = _v4.groupDropdown(_v2q8, _ei9m[174-12], _v4.REACH_GROUPS, _v4.REACH_GROUP_ORDER,
_v4.resetLocalReach)
_v2q8 = _v2cc(_v2q4:AddSubTab({Name = _ei9m[286+1179]}))
_v4.section(_v2q8, _ei9m[1750+708], _ei9m[1738])
_v2q7.noAtkCd = _v2q8:AddToggle({
Name = _ei9m[2483],
Skull = true,
Default = false,
Callback = function(_v2s7)
_v4.NO_ATK_CD = _v2s7
if not _v2s7 then _v4.restoreAttackSpeed() end
end
})
_v2q7.attackSpeed = _v2q8:AddSlider({
Name = _ei9m[6+1670],
Min = 1, Max = 10, Default = 3,
Callback = function(_v2s8) _v4.ATTACK_SPEED = _v2s8 end
})
if _v4.CAP.charstate then
_v2q7.noAtkCooldown = _v2q8:AddToggle({
Name = _ei9m[4+635],
Skull = true,
Default = false,
Callback = function(_v2s9) _v4.NO_ATK_COOLDOWN = _v2s9 end
})
end
_v4.section(_v2q8, _ei9m[7+891], _ei9m[7+1813])
_v2q7.silentAim = _v2q8:AddToggle({
Name = _ei9m[4+846],
Default = false,
Callback = function(_v2sa)
_v4.SILENT_AIM = _v2sa
if not _v2sa then _v4.resetAllHitboxes() end
end
})
_v2q7.silentGroups = _v4.groupDropdown(_v2q8, _ei9m[976-4], _v4.SILENT_GROUPS, _v4.PART_GROUP_ORDER)
_v2q8 = _v2cc(_v2q5:AddSubTab({Name = _ei9m[699]}))
_v4.section(_v2q8, _ei9m[1564+39], _ei9m[1309+1691])
_v2cm = _v2q8:AddToggle({
Name = _ei9m[2848],
Skull = true,
Default = false,
Callback = function(_v2sb)
if _v2sb and not _v4.SAVE_DINO_ACTIVE then _v2d7()
elseif not _v2sb and _v4.SAVE_DINO_ACTIVE then _v4.releaseDino() end
end
})
_v4.autoSaveToggle = _v2q8:AddToggle({
Name = _ei9m[195-10],
Default = false,
Keybind = true,
Callback = function(_v2sc)
_v4.AUTO_SAVE = _v2sc
if _v2sc and _v4.AFK_FARM and _v4.AFK_FARM_SAFETY then
pcall(function() if _v4.Hub then _v4.Hub:Notify(_ei9m[4+411], 5) end end)
end
end
})
_v4.autoSaveBleedToggle = _v2q8:AddToggle({
Name = _ei9m[7+1892],
Default = true,
Callback = function(_v2sd) _v4.AUTO_SAVE_BLEED = _v2sd end
})
_v4.autoSaveSlider = _v2q8:AddSlider({
Name = _ei9m[140+1426],
Min = 1, Max = 95, Default = 30,
Callback = function(_v2se) _v4.AUTO_SAVE_PCT = _v2se end
})
_v4.section(_v2q8, _ei9m[162-20], _ei9m[2883])
_v4.noFallToggle = _v2q8:AddToggle({
Name = _ei9m[5+850],
Default = false,
Callback = function(_v2sf) _v4.NO_FALL_DAMAGE = _v2sf; _v4.applyFallImmunity(_v2sf) end
})
_v2q8 = _v2cc(_v2q5:AddSubTab({Name = _ei9m[748+1019]}))
_v4.section(_v2q8, _ei9m[6+790], _ei9m[70])
_v4.flyToggle = _v2q8:AddToggle({
Name = _ei9m[6+1012],
Skull = true,
Default = false,
Callback = function(_v2sg) _v4.FLY = _v2sg end
})
function _v4.moversOff(_v2sh)
for _v2si, _v2sj in pairs({ flyToggle = _ei9m[518+33], autoFlyToggle = _ei9m[2+1268], tpCorpseToggle = _ei9m[2655],
biomeToggle = _ei9m[287-7], fossilFarmToggle = _ei9m[2920], afkFarmToggle = _ei9m[1683-6],
legitFarmToggle = _ei9m[3+2291] }) do
local _v2sk = _v4[_v2si]
if _v2si ~= _v2sh and _v4[_v2sj] and _v2sk and _v2sk.Set then pcall(function() _v2sk:Set(false) end) end
end
end
function _v4.otherMoverOn()
return _v4.FLY or _v4.AUTO_FLY or _v4.AFK_FARM or _v4.LEGIT_FARM or _v4.FOSSIL_FARM or _v4.SAVE_DINO_ACTIVE or false
end
_v4.section(_v2q8, _ei9m[23+1], _ei9m[437+64])
_v4.autoFlyToggle = _v2q8:AddToggle({
Name = _ei9m[5+2519],
Skull = true,
Default = false,
Callback = function(_v2sl)
_v4.AUTO_FLY = _v2sl
if _v2sl then _v4.moversOff(_ei9m[1014+1108]) end
end
})
_v4.section(_v2q8, _ei9m[7+1028], _ei9m[2797-8])
_v4.tpCorpseToggle = _v2q8:AddToggle({
Name = _ei9m[364+111],
Skull = true,
Default = false,
Callback = function(_v2sm)
_v4.TP_CORPSE = _v2sm
_v4.tpDone, _v4.tpTargetId, _v4.tpNoneSaid = false, nil, nil
if _v2sm then
_v4.moversOff(_ei9m[667-16])
local _v2sn = true
pcall(function() _v2sn = _v4.dinoEatsMeat() end)
if not _v2sn then pcall(function() _v2c8:Notify(_ei9m[7+2473], 5) end) end
end
end
})
_v2q7.tpChain = _v2q8:AddToggle({
Name = _ei9m[3+2559],
Default = false,
Callback = function(_v2so) _v4.TP_CHAIN = _v2so end
})
_v4.biomeDestItems = (_v4.biomeNames and _v4.biomeNames()) or {}
if #_v4.biomeDestItems == 0 then _v4.biomeDestItems = { _ei9m[2476] } end
_v4.BIOME_TARGET = (_v4.biomeDestItems[1] ~= _ei9m[4+3045]) and _v4.biomeDestItems[1] or nil
_v4.section(_v2q8, _ei9m[61+18], _ei9m[2713])
_v4.biomeToggle = _v2q8:AddToggle({
Name = _ei9m[1277+40],
Skull = true,
Default = false,
Callback = function(_v2sp)
if not _v2sp then _v4.BIOME_TRAVEL = false return end
if not _v4.BIOME_TARGET then
pcall(function() _v2c8:Notify(_ei9m[4+2044], 4) end)
task.defer(function() pcall(function() _v4.biomeToggle:Set(false) end) end)
return
end
if _v4.BIOME_TRAVEL then return end
_v4.moversOff(_ei9m[6+2862])
_v4.BIOME_TRAVEL = true
task.spawn(_v4.travelToBiome, _v4.BIOME_TARGET)
end
})
_v2q7.biomeDest = _v2q8:AddDropdown({
Name = _ei9m[1245+167],
Items = _v4.biomeDestItems,
Default = _v4.biomeDestItems[1],
Callback = function(_v2sq) _v4.BIOME_TARGET = (_v2sq ~= _ei9m[1645-6]) and _v2sq or nil end
})
_v4.section(_v2q8, _ei9m[1584], _ei9m[2963])
do
local _v2sr = false
local function _v2ss(_v2st, _v2su)
if _v2sr then return end
_v2sr = true
_v4.AUTO_GAIT = _v2su and _v2st or nil
for _v2sv, _v2sw in pairs({ Walk = _v2q7.autoWalk, Trot = _v2q7.autoTrot, Run = _v2q7.autoRun, Sprint = _v2q7.autoSprint }) do
if _v2sv ~= _v2st and _v2sw and _v2sw.Set then pcall(function() _v2sw:Set(false) end) end
end
if not _v2su and _v4.autoGaitStop then _v4.autoGaitStop() end
_v2sr = false
end
_v2q7.autoWalk = _v2q8:AddToggle({ Name = _ei9m[7+30], Default = false, Callback = function(_v2sx) _v2ss(_ei9m[4+2536], _v2sx) end })
_v2q7.autoTrot = _v2q8:AddToggle({ Name = _ei9m[2438], Default = false, Callback = function(_v2sy) _v2ss(_ei9m[1482-20], _v2sy) end })
_v2q7.autoRun = _v2q8:AddToggle({ Name = _ei9m[675-3], Default = false, Callback = function(_v2sz) _v2ss(_ei9m[2591], _v2sz) end })
_v2q7.autoSprint = _v2q8:AddToggle({ Name = _ei9m[1521+686], Default = false, Callback = function(_v2t0) _v2ss(_ei9m[88+264], _v2t0) end })
end
_v4.section(_v2q8, _ei9m[2734-17], _ei9m[1966])
_v2fr = _v2q8:AddKeybind({
Name = _ei9m[1533-12],
Default = Enum.KeyCode.Unknown,
Callback = function() end
})
_v4.section(_v2q8, _ei9m[288], _ei9m[650+172])
_v2q7.quickTurn = _v2q8:AddToggle({
Name = _ei9m[261+702],
Default = false,
Keybind = true,
Callback = function(_v2t1) _v4.QUICK_TURN = _v2t1 end
})
_v2q7.turnSpeed = _v2q8:AddSlider({
Name = _ei9m[5+2649],
Min = 0, Max = 500, Default = 250,
Callback = function(_v2t2) _v4.TURN_SPEED = _v2t2 end
})
_v4.section(_v2q8, _ei9m[2+1393], _ei9m[2681-2])
_v4.autoGrowToggle = _v2q8:AddToggle({
Name = _ei9m[234],
Default = false,
Callback = function(_v2t3)
if _v2t3 and not _v4.AUTO_GROW then
_v4.AUTO_GROW = true
_vja = nil
_v4.startAutoGrow()
elseif not _v2t3 and _v4.AUTO_GROW then
_v4.stopAutoGrow()
end
_v4.AUTO_GROW = _v2t3
end
})
_v2q8 = _v2cc(_v2q6:AddSubTab({Name = _ei9m[3+662]}))
_v4.section(_v2q8, _ei9m[7+2323], _ei9m[437+54])
_v4.espToggle = _v2q8:AddToggle({
Name = _ei9m[566],
Default = false,
Callback = function(_v2t4)
_v4.ESP_ENABLED = _v2t4
if not _v2t4 then
for _v2t5, _v2t6 in pairs(_v4.espCache) do
if _v2t6.billboard then _v2t6.billboard.Enabled = false end
end
end
end
})
_v2q7.showName = _v2q8:AddToggle({ Name = _ei9m[5+2766], Default = true, Callback = function(_v2t7) _v4.SHOW_NAME = _v2t7 end })
_v2q7.showDino = _v2q8:AddToggle({ Name = _ei9m[587+27], Default = true, Callback = function(_v2t8) _v4.SHOW_DINO = _v2t8 end })
_v2q7.showStage = _v2q8:AddToggle({ Name = _ei9m[1729-11], Default = true, Callback = function(_v2t9) _v4.SHOW_STAGE = _v2t9 end })
_v2q7.showGender = _v2q8:AddToggle({ Name = _ei9m[2545-11], Default = true, Callback = function(_v2ta) _v4.SHOW_GENDER = _v2ta end })
_v2q7.showHealth = _v2q8:AddToggle({ Name = _ei9m[2755-4], Default = true, Callback = function(_v2tb) _v4.SHOW_HEALTH = _v2tb end })
_v2q7.showStamina = _v2q8:AddToggle({ Name = _ei9m[4+738], Default = true, Callback = function(_v2tc) _v4.SHOW_STAMINA = _v2tc end })
_v2q7.foodBar = _v2q8:AddToggle({ Name = _ei9m[754-3], Default = false, Callback = function(_v2td) _v4.SHOW_FOOD_BAR = _v2td end })
_v2q7.foodNum = _v2q8:AddToggle({ Name = _ei9m[2206+221], Default = false, Callback = function(_v2te) _v4.SHOW_FOOD_NUM = _v2te end })
_v2q7.waterBar = _v2q8:AddToggle({ Name = _ei9m[4+1299], Default = false, Callback = function(_v2tf) _v4.SHOW_WATER_BAR = _v2tf end })
_v2q7.waterNum = _v2q8:AddToggle({ Name = _ei9m[2911-4], Default = false, Callback = function(_v2tg) _v4.SHOW_WATER_NUM = _v2tg end })
_v2q7.infectBar = _v2q8:AddToggle({ Name = _ei9m[999], Default = false, Callback = function(_v2th) _v4.SHOW_INFECT_BAR = _v2th end })
_v2q7.infectNum = _v2q8:AddToggle({ Name = _ei9m[852], Default = false, Callback = function(_v2ti) _v4.SHOW_INFECT_NUM = _v2ti end })
_v2q7.infectTag = _v2q8:AddToggle({ Name = _ei9m[270+2538], Default = false, Callback = function(_v2tj) _v4.SHOW_INFECTED = _v2tj end })
_v2q7.showWeight = _v2q8:AddToggle({ Name = _ei9m[165+1203], Default = true, Callback = function(_v2tk) _v4.SHOW_WEIGHT = _v2tk end })
_v2q7.bleed = _v2q8:AddToggle({ Name = _ei9m[457-4], Default = false, Callback = function(_v2tl) _v4.BLEED_ESP = _v2tl end })
_v2q7.packESP = _v2q8:AddToggle({ Name = _ei9m[34+44], Default = false, Callback = function(_v2tm) _v4.PACK_ESP = _v2tm end })
_v2q7.packLeader = _v2q8:AddToggle({ Name = _ei9m[2289-17], Default = false, Callback = function(_v2tn) _v4.PACK_LEADER_ESP = _v2tn end })
_v2q7.showDist = _v2q8:AddToggle({ Name = _ei9m[398+2395], Default = true, Callback = function(_v2to) _v4.SHOW_DISTANCE = _v2to end })
_v2q7.textHL = _v2q8:AddToggle({ Name = _ei9m[408+13], Default = false, Callback = function(_v2tp) _v4.TEXT_HIGHLIGHT = _v2tp end })
_v4.section(_v2q8, _ei9m[2797], _ei9m[2189])
_v2q7.textSize = _v2q8:AddSlider({ Name = _ei9m[389+615], Min = 8, Max = 28, Default = 14, Callback = function(_v2tq) _v4.TEXT_SIZE = _v2tq end })
_v2q7.hbHeight = _v2q8:AddSlider({ Name = _ei9m[2953], Min = 2, Max = 20, Default = 6, Callback = function(_v2tr) _v4.HEALTH_BAR_HEIGHT = _v2tr end })
_v2q7.hbWidth = _v2q8:AddSlider({ Name = _ei9m[1806], Min = 20, Max = 100, Default = 80, Callback = function(_v2ts) _v4.HEALTH_BAR_WIDTH = _v2ts / 100 end })
_v2q7.sbHeight = _v2q8:AddSlider({ Name = _ei9m[174+2718], Min = 2, Max = 20, Default = 6, Callback = function(_v2tt) _v4.STAM_BAR_HEIGHT = _v2tt end })
_v2q7.sbWidth = _v2q8:AddSlider({ Name = _ei9m[944-5], Min = 20, Max = 100, Default = 80, Callback = function(_v2tu) _v4.STAM_BAR_WIDTH = _v2tu / 100 end })
_v4.section(_v2q8, _ei9m[2685], _ei9m[432-4])
_v2q7.espDist = _v2q8:AddSlider({ Name = _ei9m[2422-14], Min = 100, Max = 10000, Default = 5000, Callback = function(_v2tv) _v4.ESP_DISTANCE = _v2tv end })
_v4.section(_v2q8, _ei9m[923-15], _ei9m[836])
_v2q7.chams = _v2q8:AddToggle({
Name = _ei9m[122-10],
Default = false,
Callback = function(_v2tw)
_v4.CHAMS_ENABLED = _v2tw
if not _v2tw then
for _v2tx, _v2ty in pairs(_v4.espCache) do
if _v2ty.highlight then _v2ty.highlight.Enabled = false end
end
end
end
})
_v2q7.chamsFill = _v2q8:AddSlider({ Name = _ei9m[274], Min = 0, Max = 100, Default = 70, Callback = function(_v2tz) _v4.CHAMS_FILL_TRANSPARENCY = _v2tz / 100 end })
_v2q7.chamsOutline = _v2q8:AddSlider({ Name = _ei9m[3+671], Min = 0, Max = 100, Default = 0, Callback = function(_v2u0) _v4.CHAMS_OUTLINE_TRANSPARENCY = _v2u0 / 100 end })
_v4.section(_v2q8, _ei9m[1812-4], _ei9m[1809+114])
_v2q7.fishESP = _v2q8:AddToggle({
Name = _ei9m[929],
Default = false,
Callback = function(_v2u1) _v4.FISH_ESP = _v2u1 end,
})
_v4.section(_v2q8, _ei9m[7+114], _ei9m[408+1554])
_v2q7.corpse = _v2q8:AddToggle({
Name = _ei9m[1591],
Default = false,
Callback = function(_v2u2) _v4.CORPSE_ESP = _v2u2; _vcg() end
})
_v2q7.worldTextSize = _v2q8:AddSlider({
Name = _ei9m[2+2405],
Min = 8, Max = 32, Default = 12,
Callback = function(_v2u3) _v4.WORLD_TEXT_SIZE = _v2u3 end
})
_v2q7.corpseDist = _v2q8:AddSlider({
Name = _ei9m[149],
Min = 100, Max = 10000, Default = 5000,
Callback = function(_v2u4) _v4.CORPSE_DISTANCE = _v2u4; if _v4.CORPSE_ESP then _vcg() end end
})
_v2q7.corpseInf = _v2q8:AddToggle({
Name = _ei9m[1851-12],
Default = true,
Callback = function(_v2u5) _v4.CORPSE_INF_ESP = _v2u5 end
})
_v4.section(_v2q8, _ei9m[1077], _ei9m[608-17])
_v2q7.meat = _v2q8:AddToggle({
Name = _ei9m[555+1149],
Default = false,
Callback = function(_v2u6) _v4.MEAT_ESP = _v2u6; _vcg() end
})
_v2q7.meatDist = _v2q8:AddSlider({
Name = _ei9m[1115+1503],
Min = 100, Max = 10000, Default = 5000,
Callback = function(_v2u7) _v4.MEAT_DISTANCE = _v2u7; if _v4.MEAT_ESP then _vcg() end end
})
_v2q8 = _v2cc(_v2q6:AddSubTab({Name = _ei9m[5+110]}))
_v4.section(_v2q8, _ei9m[743], _ei9m[4+2469])
_v2q7.antiBS = _v2q8:AddToggle({
Name = _ei9m[449+2367],
Default = false,
Callback = function(_v2u8) _v4.ANTI_BLACKSCREEN = _v2u8 end
})
_v2q7.noBlur = _v2q8:AddToggle({
Name = _ei9m[2350],
Default = false,
Callback = function(_v2u9)
_v4.NO_BLUR = _v2u9
if _v2u9 then _v4.sweepBlur() else _v4.restoreBlur() end
end
})
_v2q7.showModules = _v2q8:AddToggle({
Name = _ei9m[4+2738],
Default = false,
Callback = function(_v2ua) _v4.SHOW_INDICATORS = _v2ua end
})
do
_v4.section(_v2q8, _ei9m[1990+334], _v4.CAP.charstate and _ei9m[107] or _ei9m[1991-11])
_v2q7.statsCard = _v2q8:AddToggle({ Name = _ei9m[969+465], Default = false, Callback = function(_v2ub) _v4.STATS_CARD = _v2ub end })
_v2q7.scName = _v2q8:AddToggle({ Name = _ei9m[2543], Default = true, Callback = function(_v2uc) _v4.SC_NAME = _v2uc end })
_v2q7.scGrowth = _v2q8:AddToggle({ Name = _ei9m[460-18], Default = true, Callback = function(_v2ud) _v4.SC_GROWTH = _v2ud end })
if _v4.CAP.charstate then
_v2q7.scMass = _v2q8:AddToggle({ Name = _ei9m[210+236], Default = true, Callback = function(_v2ue) _v4.SC_MASS = _v2ue end })
end
_v2q7.scWeight = _v2q8:AddToggle({ Name = _ei9m[1126], Default = true, Callback = function(_v2uf) _v4.SC_WEIGHT = _v2uf end })
_v2q7.scTimer = _v2q8:AddToggle({ Name = _ei9m[2642+210], Default = true, Callback = function(_v2ug) _v4.SC_TIMER = _v2ug end })
_v2q7.scStageTimer = _v2q8:AddToggle({ Name = _ei9m[2849-16], Default = true, Callback = function(_v2uh) _v4.SC_STAGE_TIMER = _v2uh end })
if _v4.CAP.charstate then
_v2q7.scNutrition = _v2q8:AddToggle({ Name = _ei9m[4+1233], Default = true, Callback = function(_v2ui) _v4.SC_NUTRITION = _v2ui end })
_v2q7.scWellbeing = _v2q8:AddToggle({ Name = _ei9m[120], Default = true, Callback = function(_v2uj) _v4.SC_WELLBEING = _v2uj end })
end
_v2q7.scHideMenu = _v2q8:AddToggle({ Name = _ei9m[475-4], Default = true, Callback = function(_v2uk) _v4.SC_HIDE_WITH_MENU = _v2uk end })
_v2q7.scDrag = _v2q8:AddToggle({
Name = _ei9m[2168-2],
Default = false,
Callback = function(_v2ul) _v4.SC_DRAG = _v2ul end
})
_v2q8:AddButton({
Name = _ei9m[2+1037],
Callback = function()
if _v4.setStatsCardPos then _v4.setStatsCardPos(0.62, 0, 0, 16) end
pcall(function() _v2c8:Notify(_ei9m[1058-1]) end)
end
})
end
_v4.section(_v2q8, _ei9m[1061], _ei9m[1096+492])
do
local _v2um = (_v4.skinsForCurrentDino and (_v4.skinsForCurrentDino())) or { _ei9m[1592] }
_v4.skinDropdown = _v2q8:AddDropdown({
Name = _ei9m[89-15],
Items = _v2um,
Default = _ei9m[971],
Callback = function(_v2un)
if type(_v2un) ~= _ei9m[2749] then return end
_v4.SKIN_SELECTED, _v4.SKIN_WANTED = _v2un, _v2un
if _v4.applySkin then pcall(_v4.applySkin, _v2un) end
end,
})
end
_v4.section(_v2q8, _ei9m[5+1550], _ei9m[124])
_v2q7.tracers = _v2q8:AddToggle({
Name = _ei9m[970+1881],
Default = false,
Callback = function(_v2uo)
_v4.TRACERS_ENABLED = _v2uo
if not _v2uo then
for _v2up, _v2uq in pairs(_v4.espCache) do
if _v2uq.tracer then
pcall(function() _v2uq.tracer.Visible = false end)
end
end
end
end
})
_v4.section(_v2q8, _ei9m[309-19], _ei9m[1366-18])
_v2q7.unlimitedZoom = _v2q8:AddToggle({
Name = _ei9m[2450+125],
Default = false,
Callback = function(_v2ur)
_v4.UNLIMITED_ZOOM = _v2ur
if _v2ur then _v4.bindZoom() else _v4.restoreZoom() end
end
})
_v2q7.fovToggle = _v2q8:AddToggle({
Name = _ei9m[367+410],
Default = false,
Callback = function(_v2us)
_v4.FOV_ENABLED = _v2us
if _v2us then _v4.bindFOV() else _v4.restoreFOV() end
end
})
_v2q7.fovSlider = _v2q8:AddSlider({
Name = _ei9m[1934+631],
Min = 1, Max = 120, Default = 70,
Callback = function(_v2ut) _v4.FOV_VALUE = _v2ut end
})
_v2q8 = _v2cc(_v2q6:AddSubTab({Name = _ei9m[2064+263]}))
_v4.section(_v2q8, _ei9m[1283+354], _ei9m[581])
_v2q7.fullbright = _v2q8:AddToggle({
Name = _ei9m[1891-17],
Default = false,
Callback = function(_v2uu)
_v4.FULLBRIGHT = _v2uu
if _v2uu then _v4.enableFullbright() else _v4.restoreFullbright() end
end
})
_v4.section(_v2q8, _ei9m[167+115], _ei9m[96])
_v2q7.noFog = _v2q8:AddToggle({
Name = _ei9m[294],
Default = false,
Callback = function(_v2uv)
_v4.NO_FOG = _v2uv
if _v2uv then _v4.enableNoFog() else _v4.restoreNoFog() end
end
})
_v4.section(_v2q8, _ei9m[117-14], _ei9m[1158])
_v2q7.noWeather = _v2q8:AddToggle({
Name = _ei9m[2+1541],
Default = false,
Callback = function(_v2uw)
_v4.NO_WEATHER = _v2uw
_v4.applyNoWeather(_v2uw)
end
})
_v4.section(_v2q8, _ei9m[7+2114], _ei9m[987+1644])
_v2q7.customTime = _v2q8:AddToggle({
Name = _ei9m[4+1771],
Default = false,
Callback = function(_v2ux) _v4.setCustomTime(_v2ux) end
})
_v2q7.timeHour = _v2q8:AddSlider({
Name = _ei9m[2147-13],
Min = 0, Max = 24, Default = 12,
Callback = function(_v2uy) _v4.customTimeHour = _v2uy; _v4.refreshCustomTime() end
})
_v2q8:AddDropdown({
Name = _ei9m[2+1633],
Items = { _ei9m[3+756], _ei9m[223], _ei9m[135+1523], _ei9m[886+24] },
Default = _ei9m[4+2673],
Callback = function(_v2uz)
local _v2v0 = ({ Sunrise = 6, Day = 13, Sunset = 18, Night = 0 })[_v2uz] or 12
_v4.customTimeHour = _v2v0
pcall(function() if _v2q7.timeHour and _v2q7.timeHour.Set then _v2q7.timeHour:Set(_v2v0) end end)
pcall(function() if _v2q7.customTime and _v2q7.customTime.Set then _v2q7.customTime:Set(true) end end)
_v4.setCustomTime(true)
_v4.refreshCustomTime()
end
})
_v4.section(_v2q8, _ei9m[1279-1], _ei9m[1105-12])
_v2q7.fossilS = _v2q8:AddToggle({ Name = _ei9m[3+2350], Default = false, Callback = function(_v2v1) _v4.FOSSIL_SMALL = _v2v1; _vcg() end })
_v2q7.fossilDistS = _v2q8:AddSlider({ Name = _ei9m[865+431], Min = 100, Max = 10000, Default = 1500, Callback = function(_v2v2) _v4.FOSSIL_DIST_SMALL = _v2v2; _vcg() end })
_v2q7.fossilM = _v2q8:AddToggle({ Name = _ei9m[2832-7], Default = false, Callback = function(_v2v3) _v4.FOSSIL_MEDIUM = _v2v3; _vcg() end })
_v2q7.fossilDistM = _v2q8:AddSlider({ Name = _ei9m[3+2584], Min = 100, Max = 10000, Default = 3000, Callback = function(_v2v4) _v4.FOSSIL_DIST_MEDIUM = _v2v4; _vcg() end })
_v2q7.fossilL = _v2q8:AddToggle({ Name = _ei9m[1775+336], Default = false, Callback = function(_v2v5) _v4.FOSSIL_LARGE = _v2v5; _vcg() end })
_v2q7.fossilDistL = _v2q8:AddSlider({ Name = _ei9m[2+2625], Min = 100, Max = 10000, Default = 5000, Callback = function(_v2v6) _v4.FOSSIL_DIST_LARGE = _v2v6; _vcg() end })
_v4.section(_v2q8, _ei9m[150], _ei9m[416+264])
_v2q7.vegESP = _v2q8:AddToggle({
Name = _ei9m[7+2289],
Default = false,
Callback = function(_v2v7)
_v4.VEG_ESP = _v2v7
if not _v2v7 then _v4.vegHideAll() end
end
})
_v2q7.vegDietOnly = _v2q8:AddToggle({
Name = _ei9m[6+279],
Default = false,
Callback = function(_v2v8) _v4.VEG_DIET_ONLY = _v2v8 end
})
_v2q7.vegHideEaten = _v2q8:AddToggle({
Name = _ei9m[3+1661],
Default = false,
Callback = function(_v2v9) _v4.VEG_HIDE_EATEN = _v2v9 end
})
_v2q7.vegDist = _v2q8:AddSlider({
Name = _ei9m[3+2678],
Min = 100, Max = 5000, Default = 1500,
Callback = function(_v2va) _v4.VEG_DISTANCE = _v2va end
})
_v2q7.vegMax = _v2q8:AddSlider({
Name = _ei9m[152-11],
Min = 10, Max = 120, Default = 40,
Callback = function(_v2vb)
if _v2vb < _v4.VEG_MAX then
for _v2vc = _v2vb + 1, _v4.VEG_MAX do
local _v2vd = _v4.vegPool[_v2vc]
if _v2vd then pcall(function() _v2vd.bb.Enabled = false; _v2vd.bb.Adornee = nil end) end
end
end
_v4.VEG_MAX = _v2vb
end
})
_v4.section(_v2q8, _ei9m[2+527], _ei9m[553+82])
_v2q7.clay = _v2q8:AddToggle({ Name = _ei9m[6+2723], Default = false, Callback = function(_v2ve) _v4.CLAY_ESP = _v2ve; _vcg() end })
_v2q7.clayDist = _v2q8:AddSlider({ Name = _ei9m[1687-2], Min = 100, Max = 10000, Default = 5000, Callback = function(_v2vf) _v4.CLAY_DISTANCE = _v2vf; if _v4.CLAY_ESP then _vcg() end end })
_v4.section(_v2q8, _ei9m[5+2075], _ei9m[367])
_v2q7.mmap = _v2q8:AddToggle({
Name = _ei9m[1138],
Default = false,
Callback = function(_v2vg) _v4.MMAP_ON = _v2vg end
})
_v2q7.mmapPlayers = _v2q8:AddToggle({
Name = _ei9m[1929-10],
Default = true,
Callback = function(_v2vh) _v4.MMAP_PLAYERS = _v2vh; if not _v2vh then _v4.mmapCollect() end end
})
_v2q7.mmapCorpses = _v2q8:AddToggle({
Name = _ei9m[2126],
Default = true,
Callback = function(_v2vi) _v4.MMAP_CORPSES = _v2vi; if not _v2vi then _v4.mmapCollect() end end
})
_v2q7.mmapFossils = _v2q8:AddToggle({
Name = _ei9m[2858-12],
Default = true,
Callback = function(_v2vj) _v4.MMAP_FOSSILS = _v2vj; if not _v2vj then _v4.mmapCollect() end end
})
_v2q8 = _v2cc(_v2q6:AddSubTab({Name = _ei9m[942+1219]}))
_v4.section(_v2q8, _ei9m[2938-17], _ei9m[776])
_v2q7.modCheck = _v2q8:AddToggle({
Name = _ei9m[991],
Default = false,
Callback = function(_v2vk) _v4.MOD_CHECK = _v2vk; _v4.modCheckRefresh() end
})
_v2q7.modKick = _v2q8:AddToggle({
Name = _ei9m[1962-19],
Default = false,
Callback = function(_v2vl) _v4.MOD_KICK = _v2vl end
})
do
_v4.modAdmins = setmetatable({}, { __mode = "k" })
_v4.modGroupId = nil
_v4.modAlertGui = nil
_v4.modAlertFrame = nil
_v4.modAlertLabels = {}
local function _v2vm()
if _v4.modGroupId then return _v4.modGroupId end
local _v2vn, _v2vo = pcall(function() return game.CreatorType end)
if _v2vn and _v2vo == Enum.CreatorType.Group then
_v4.modGroupId = game.CreatorId
else
_v4.modGroupId = game.CreatorId
end
return _v4.modGroupId
end
local function _v2vp(_v2vq)
local _v2vr = _v2vm()
if not _v2vr or _v2vr == 0 then return false end
local _v2vs, _v2vt = pcall(function() return _v2vq:GetRoleInGroup(_v2vr) end)
if not _v2vs or type(_v2vt) ~= _ei9m[1067+459] then return false end
local _v2vu = string.lower(_v2vt)
for _v2vv, _v2vw in ipairs(_v4.MOD_ADMIN_KEYWORDS) do
if string.find(_v2vu, _v2vw, 1, true) then
return true, _v2vt
end
end
return false
end
local function _v2vx()
if _v4.modAlertGui and _v4.modAlertGui.Parent then return end
local _v2vy = Instance.new(_ei9m[1653-7])
_v2vy.Name = _ei9m[1719+264]; _v2vy.ResetOnSpawn = false; _v2vy.DisplayOrder = 99999
_v2vy.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
pcall(function() _v2vy.Parent = game:GetService(_ei9m[328+872]) end)
if not _v2vy.Parent then _v2vy.Parent = _v2:WaitForChild(_ei9m[1882+367]) end
_v4.modAlertGui = _v2vy
local _v2vz = Instance.new(_ei9m[2985])
_v2vz.Name = _ei9m[7+1348]; _v2vz.Size = UDim2.new(0, 260, 0, 300)
_v2vz.Position = UDim2.new(0, 10, 0, 50)
_v2vz.BackgroundTransparency = 1; _v2vz.Parent = _v2vy
local _v2w0 = Instance.new(_ei9m[590+950])
_v2w0.FillDirection = Enum.FillDirection.Vertical
_v2w0.HorizontalAlignment = Enum.HorizontalAlignment.Left
_v2w0.SortOrder = Enum.SortOrder.LayoutOrder
_v2w0.Padding = UDim.new(0, 4); _v2w0.Parent = _v2vz
_v4.modAlertFrame = _v2vz
end
local function _v2w1()
if not _v4.modAlertFrame then return end
for _v2w2, _v2w3 in pairs(_v4.modAlertLabels) do
pcall(function() _v2w3:Destroy() end)
end
_v4.modAlertLabels = {}
if not _v4.MOD_CHECK then
if _v4.modAlertGui then _v4.modAlertGui.Enabled = false end
return
end
local _v2w4 = 0
for _v2w5, _v2w6 in pairs(_v4.modAdmins) do
if _v2w5 and _v2w5.Parent then
_v2w4 = _v2w4 + 1
local _v2w7 = (type(_v2w6) == _ei9m[1844]) and string.upper(_v2w6) or _ei9m[1083]
local _v2w8 = Instance.new(_ei9m[2554])
_v2w8.Name = _ei9m[7+1487] .. _v2w5.Name
_v2w8.LayoutOrder = _v2w4
_v2w8.Size = UDim2.new(1, 0, 0, 22)
_v2w8.BackgroundColor3 = Color3.fromRGB(80, 0, 0)
_v2w8.BackgroundTransparency = 0.3
_v2w8.TextColor3 = Color3.fromRGB(255, 50, 50)
_v2w8.TextStrokeTransparency = 0
_v2w8.TextStrokeColor3 = Color3.new(0, 0, 0)
_v2w8.Font = Enum.Font.GothamBold
_v2w8.TextSize = 15
_v2w8.TextXAlignment = Enum.TextXAlignment.Left
_v2w8.Text = _v2w7 .. ": " .. _v2w5.DisplayName .. _ei9m[322+1682] .. _v2w5.Name .. ")"
Instance.new(_ei9m[2+981], _v2w8).CornerRadius = UDim.new(0, 4)
_v2w8.Parent = _v4.modAlertFrame
_v4.modAlertLabels[_v2w5] = _v2w8
end
end
if _v4.modAlertGui then _v4.modAlertGui.Enabled = _v2w4 > 0 end
end
local function _v2w9(_v2wa)
if _v2wa == _v2 then return end
if _v4.UNLOADED then return end
task.spawn(function()
local _v2wb, _v2wc = _v2vp(_v2wa)
if _v2wb then
_v4.modAdmins[_v2wa] = _v2wc or _ei9m[1391+804]
if _v4.MOD_KICK or (_v4.AFK_FARM and _v4.AFK_FARM_ADMIN_KICK) or (_v4.LEGIT_FARM and _v4.LF_ADMIN_KICK) then
if not (_v4.rejoinLeave and _v4.rejoinLeave(_ei9m[3+2971] .. _v2wa.DisplayName)) then
pcall(_v4.leaveNote, _ei9m[2082-8], false)
pcall(function() _v2:Kick(_ei9m[436] .. _v2wa.DisplayName) end)
end
return
end
if _v4.MOD_CHECK then
_v2vx()
_v2w1()
pcall(function()
_v2c8:Notify(string.upper(_v2wc or _ei9m[813-10]) .. ": " .. _v2wa.DisplayName .. _ei9m[2877-10] .. _v2wa.Name .. ")", 8)
end)
end
end
end)
end
function _v4.adminKickSweep()
for _v2wd, _v2we in ipairs(_v0:GetPlayers()) do _v2w9(_v2we) end
end
function _v4.modCheckRefresh()
if _v4.MOD_CHECK then
_v2vx()
for _v2wf, _v2wg in ipairs(_v0:GetPlayers()) do
if not _v4.modAdmins[_v2wg] then
_v2w9(_v2wg)
end
end
_v2w1()
else
_v2w1()
end
end
table.insert(_v2l, _v0.PlayerAdded:Connect(function(_v2wh)
if _v4.MOD_CHECK or _v4.MOD_KICK or (_v4.AFK_FARM and _v4.AFK_FARM_ADMIN_KICK)
or (_v4.LEGIT_FARM and _v4.LF_ADMIN_KICK) then
_v2w9(_v2wh)
end
end))
table.insert(_v2l, _v0.PlayerRemoving:Connect(function(_v2wi)
if _v4.modAdmins[_v2wi] then
_v4.modAdmins[_v2wi] = nil
_v2w1()
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
pcall(function() _v1:UnbindFromRenderStep(_ei9m[467+413]) end)
pcall(function() if _v4.restoreFullbright then _v4.restoreFullbright() end end)
_v4.AFK_FARM = false
_v4.afkStopWalk()
if _v4.afkColliders then
for _v2wj in pairs(_v4.afkColliders) do
if _v2wj.Parent then pcall(function() _v2wj.CanCollide = true end) end
end
_v4.afkColliders, _v4.afkCollidersChar = nil, nil
end
if _v4.afkWasOn then
_v4.afkWasOn = false
pcall(function() _v2.Character:SetAttribute(_ei9m[2641], nil) end)
end
if _v4.afkSafetyState then
if _v4.afkSafetyState == _ei9m[5+992] then
_v4.pressRest()
end
if _v4.afkSafetyPlatform then pcall(function() _v4.afkSafetyPlatform:Destroy() end); _v4.afkSafetyPlatform = nil end
pcall(function()
local _v2wk = _v4.getLocalPhysicsRoot()
if _v2wk then _v2wk.Anchored = false end
end)
_v4.afkSafetyState = nil
end
_v4.AUTO_SWITCH, _v4.AS_BUSY, _v4.FARM_TIMER = false, false, false
_v4.LEGIT_FARM = false
pcall(function() _v1:UnbindFromRenderStep(_ei9m[506+258]) end)
pcall(function()
local _v2wl = _v4.lfWalkState
if _v2wl then _v2wl.mod.AdjustDirection = _v2wl.orig; _v4.lfWalkState = nil end
end)
pcall(function() if _v4.lfWasOn and _v4.lfStop then _v4.lfStop(false) end end)
pcall(function()
local _v2wm = getgenv and getgenv().EazyCheats_Handoff
if _v4.REJOIN_OK and _v4.REJOIN and not _v2wm then
local _v2wn = _v4.rejoinRead()
_v2wn.farms, _v2wn.pending = {}, nil
_v4.rejoinWrite(_v2wn)
end
end)
_v4.NO_FOG = false
pcall(function() _v1:UnbindFromRenderStep(_ei9m[2454]) end)
pcall(function() if _v4.restoreNoFog then _v4.restoreNoFog() end end)
task.spawn(function() pcall(_v4.setCustomTime, false) end)
_v4.customTime = false
pcall(function() _v1:UnbindFromRenderStep(_ei9m[1731]) end)
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
for _v2wo in pairs(_v4.hbMaskT or {}) do
if _v2wo and _v2wo.Parent then _v2wo.CanQuery = true end
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
_v2d4()
_v2cs()
for _v2wp, _v2wq in pairs(_v4.espCache) do
_v4.destroyESP(_v2wp)
end
for _v2wr, _v2ws in pairs(_v6k) do
pcall(function() _v2ws:Destroy() end)
end
_v6k = {}
for _v2wt, _v2wu in ipairs(_v2l) do
pcall(function() _v2wu:Disconnect() end)
end
_v2l = {}
pcall(function() if _v4.mobGui then _v4.mobGui:Destroy() end end)
pcall(function() _v4.mmapDestroyPool() end)
pcall(function() _v2c8:Destroy() end)
pcall(function() indicatorGui:Destroy() end)
pcall(_v4.sweepOwnGuis)
pcall(function()
for _v2wv, _v2ww in workspace:GetChildren() do
if _v2ww.Name == _ei9m[2+1093] or _v2ww.Name == _ei9m[1438-6] then
_v2ww:Destroy()
end
end
end)
pcall(function()
for _v2wx, _v2wy in ipairs({ _ei9m[1872-16], _ei9m[5+641], _ei9m[378-10],
_ei9m[119+2684], _ei9m[1538+472], _ei9m[4+2123] }) do
pcall(function() _v1:UnbindFromRenderStep(_v2wy) end)
end
end)
pcall(function()
local _v2wz = getgenv and getgenv()
if _v2wz then _v2wz.EazyCheats_Unload = nil end
end)
end
pcall(function()
local _v2x0 = getgenv and getgenv()
if _v2x0 then
_v2x0.EazyCheats_Unload = _v4.unloadScript
_v2x0.EazyCheats_Unload_Job = game.JobId
_v2x0.EazyCheats_Unload_State = nil
end
end)
_v2c8.onUnload = _v4.unloadScript
_v4.CONFIG_FOLDER = _ei9m[640+1]
_v4.AUTO_LOAD_FILE = _v4.CONFIG_FOLDER .. _ei9m[1181-20]
pcall(function() if not isfolder(_v4.CONFIG_FOLDER) then makefolder(_v4.CONFIG_FOLDER) end end)
local _v2x1 = game:GetService(_ei9m[1848-16])
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
NO_FALL_DAMAGE = _v4.NO_FALL_DAMAGE,
FPS_SAVER = _v4.FPS_SAVER,
SKIN_SELECTED = _v4.SKIN_WANTED or _v4.SKIN_SELECTED,
AUTO_FLY_SPEED = _v4.AUTO_FLY_SPEED,
AUTO_FLY_RADIUS = _v4.AUTO_FLY_RADIUS,
AUTO_FLY_DRIFT = _v4.AUTO_FLY_DRIFT,
AUTO_FLY_ALT = _v4.AUTO_FLY_ALT,
ANTI_AFK = _v4.ANTI_AFK,
AUTO_SWITCH = _v4.AUTO_SWITCH, AFK_FARM = _v4.AFK_FARM, LEGIT_FARM = _v4.LEGIT_FARM,
FOSSIL_FARM = _v4.FOSSIL_FARM, FARM_TIMER = _v4.FARM_TIMER,
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
INSTA_TURN_KEY = (_v2fr and _v2fr.Key and _v2fr.Key ~= Enum.KeyCode.Unknown) and _v2fr.Key.Name or nil,
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
local _v2x2 = {}
for _v2x3, _v2x4 in pairs(_v4.ALL_TOGGLES) do
if _v2x4 and _v2x4.Key and _v2x4.Key ~= Enum.KeyCode.Unknown then
_v2x2[_v2x3] = _v2x4.Key.Name
end
end
return _v2x2
end)(),
}
end
function _v4.applyConfigData(_v2x5)
_v4.SUPPRESS_TOGGLE_NOTIFY = true
local _v2x6, _v2x7 = pcall(_v4.applyConfigBody, _v2x5)
if not _v2x6 then warn(_ei9m[1805-13] .. tostring(_v2x7)) end
_v4.SUPPRESS_TOGGLE_NOTIFY = false
_v4.cfgApplied = true
return _v2x6
end
function _v4.applyConfigBody(_v2x8)
_v4.SUPPRESS_TOGGLE_NOTIFY = true
local function _v2x9(_v2xa, _v2xb)
pcall(function() if _v2xa and _v2xb ~= nil then _v2xa:Set(_v2xb) end end)
end
local function _v2xc(_v2xd, _v2xe)
pcall(function() if _v2xd and _v2xe ~= nil then _v2xd:Set(_v2xe) end end)
end
local function _v2xf(_v2xg, _v2xh, _v2xi, _v2xj, _v2xk)
pcall(function()
for _v2xl, _v2xm in ipairs(_v2xh) do
local _v2xn = _v2xi[_v2xj .. _v2xm]
if _v2xn ~= nil then _v2xg[_v2xm] = _v2xn and true or false end
end
if _v2xk and _v2xk.Refill then _v2xk.Refill() end
end)
end
_v2x9(_v4.espToggle, _v2x8.ESP_ENABLED)
_v2x9(_v2q7.chams, _v2x8.CHAMS_ENABLED)
_v2x9(_v2q7.tracers, _v2x8.TRACERS_ENABLED)
_v2x9(_v2q7.showName, _v2x8.SHOW_NAME)
_v2x9(_v2q7.showDino, _v2x8.SHOW_DINO)
_v2x9(_v2q7.showStage, _v2x8.SHOW_STAGE)
_v2x9(_v2q7.showGender, _v2x8.SHOW_GENDER)
_v2x9(_v2q7.showHealth, _v2x8.SHOW_HEALTH)
_v2x9(_v2q7.showStamina, _v2x8.SHOW_STAMINA)
if _v2x8.SHOW_FOOD_BAR ~= nil then _v2x9(_v2q7.foodBar, _v2x8.SHOW_FOOD_BAR) end
if _v2x8.SHOW_FOOD_NUM ~= nil then _v2x9(_v2q7.foodNum, _v2x8.SHOW_FOOD_NUM) end
if _v2x8.SHOW_WATER_BAR ~= nil then _v2x9(_v2q7.waterBar, _v2x8.SHOW_WATER_BAR) end
if _v2x8.SHOW_WATER_NUM ~= nil then _v2x9(_v2q7.waterNum, _v2x8.SHOW_WATER_NUM) end
if _v2x8.SHOW_INFECT_BAR ~= nil then _v2x9(_v2q7.infectBar, _v2x8.SHOW_INFECT_BAR) end
if _v2x8.SHOW_INFECT_NUM ~= nil then _v2x9(_v2q7.infectNum, _v2x8.SHOW_INFECT_NUM) end
if _v2x8.SHOW_INFECTED ~= nil then _v2x9(_v2q7.infectTag, _v2x8.SHOW_INFECTED) end
_v2x9(_v2q7.showWeight, _v2x8.SHOW_WEIGHT)
_v2x9(_v2q7.bleed, _v2x8.BLEED_ESP)
if _v2x8.PACK_ESP ~= nil then _v2x9(_v2q7.packESP, _v2x8.PACK_ESP) end
if _v2x8.PACK_LEADER_ESP ~= nil then _v2x9(_v2q7.packLeader, _v2x8.PACK_LEADER_ESP) end
_v2x9(_v2q7.showDist, _v2x8.SHOW_DISTANCE)
_v2x9(_v2q7.textHL, _v2x8.TEXT_HIGHLIGHT)
_v2xc(_v2q7.textSize, _v2x8.TEXT_SIZE)
_v2xc(_v2q7.hbHeight, _v2x8.HEALTH_BAR_HEIGHT)
if _v2x8.HEALTH_BAR_WIDTH then
_v2xc(_v2q7.hbWidth, math.floor(_v2x8.HEALTH_BAR_WIDTH * 100 + 0.5))
end
if _v2x8.STAM_BAR_HEIGHT then _v2xc(_v2q7.sbHeight, _v2x8.STAM_BAR_HEIGHT) end
if _v2x8.STAM_BAR_WIDTH then _v2xc(_v2q7.sbWidth, math.floor(_v2x8.STAM_BAR_WIDTH * 100 + 0.5)) end
_v2xc(_v2q7.espDist, _v2x8.ESP_DISTANCE)
if _v2x8.CHAMS_FILL_TRANSPARENCY then
_v2xc(_v2q7.chamsFill, math.floor(_v2x8.CHAMS_FILL_TRANSPARENCY * 100 + 0.5))
end
if _v2x8.CHAMS_OUTLINE_TRANSPARENCY then
_v2xc(_v2q7.chamsOutline, math.floor(_v2x8.CHAMS_OUTLINE_TRANSPARENCY * 100 + 0.5))
end
_v2x9(_v2q7.corpse, _v2x8.CORPSE_ESP)
if _v2x8.CORPSE_INF_ESP ~= nil then _v2x9(_v2q7.corpseInf, _v2x8.CORPSE_INF_ESP) end
_v2xc(_v2q7.worldTextSize, _v2x8.WORLD_TEXT_SIZE)
_v2xc(_v2q7.corpseDist, _v2x8.CORPSE_DISTANCE)
if _v2x8.STATS_CARD ~= nil then _v2x9(_v2q7.statsCard, _v2x8.STATS_CARD) end
if _v2x8.SC_GROWTH ~= nil then _v2x9(_v2q7.scGrowth, _v2x8.SC_GROWTH) end
if _v2x8.SC_MASS ~= nil then _v2x9(_v2q7.scMass, _v2x8.SC_MASS) end
if _v2x8.SC_WEIGHT ~= nil then _v2x9(_v2q7.scWeight, _v2x8.SC_WEIGHT) end
if _v2x8.SC_TIMER ~= nil then _v2x9(_v2q7.scTimer, _v2x8.SC_TIMER) end
if _v2x8.SC_STAGE_TIMER ~= nil then _v2x9(_v2q7.scStageTimer, _v2x8.SC_STAGE_TIMER) end
if _v2x8.SC_NUTRITION ~= nil then _v2x9(_v2q7.scNutrition, _v2x8.SC_NUTRITION) end
if _v2x8.SC_WELLBEING ~= nil then _v2x9(_v2q7.scWellbeing, _v2x8.SC_WELLBEING) end
if _v2x8.SC_DRAG ~= nil then _v2x9(_v2q7.scDrag, _v2x8.SC_DRAG) end
if _v2x8.SC_NAME ~= nil then _v2x9(_v2q7.scName, _v2x8.SC_NAME) end
if _v2x8.SC_HIDE_WITH_MENU ~= nil then _v2x9(_v2q7.scHideMenu, _v2x8.SC_HIDE_WITH_MENU) end
if _v4.setStatsCardPos and _v2x8.SC_POS_XS and _v2x8.SC_POS_XO and _v2x8.SC_POS_YS and _v2x8.SC_POS_YO then
_v4.setStatsCardPos(_v2x8.SC_POS_XS, _v2x8.SC_POS_XO, _v2x8.SC_POS_YS, _v2x8.SC_POS_YO)
end
if _v2x8.FISH_ESP ~= nil then _v2x9(_v2q7.fishESP, _v2x8.FISH_ESP) end
_v2x9(_v2q7.fossilS, _v2x8.FOSSIL_SMALL)
_v2x9(_v2q7.fossilM, _v2x8.FOSSIL_MEDIUM)
_v2x9(_v2q7.fossilL, _v2x8.FOSSIL_LARGE)
_v2xc(_v2q7.fossilDistS, _v2x8.FOSSIL_DIST_SMALL or _v2x8.FOSSIL_DISTANCE)
_v2xc(_v2q7.fossilDistM, _v2x8.FOSSIL_DIST_MEDIUM or _v2x8.FOSSIL_DISTANCE)
_v2xc(_v2q7.fossilDistL, _v2x8.FOSSIL_DIST_LARGE or _v2x8.FOSSIL_DISTANCE)
if _v2x8.VEG_DIET_ONLY ~= nil then _v2x9(_v2q7.vegDietOnly, _v2x8.VEG_DIET_ONLY) end
if _v2x8.VEG_HIDE_EATEN ~= nil then _v2x9(_v2q7.vegHideEaten, _v2x8.VEG_HIDE_EATEN) end
if _v2x8.VEG_DISTANCE then _v2xc(_v2q7.vegDist, _v2x8.VEG_DISTANCE) end
if _v2x8.VEG_MAX then _v2xc(_v2q7.vegMax, _v2x8.VEG_MAX) end
if _v2x8.VEG_ESP ~= nil then _v2x9(_v2q7.vegESP, _v2x8.VEG_ESP) end
_v2x9(_v2q7.meat, _v2x8.MEAT_ESP)
_v2xc(_v2q7.meatDist, _v2x8.MEAT_DISTANCE)
if _v2x8.CLAY_ESP ~= nil then _v2x9(_v2q7.clay, _v2x8.CLAY_ESP) end
if _v2x8.CLAY_DISTANCE then _v2xc(_v2q7.clayDist, _v2x8.CLAY_DISTANCE) end
if _v2x8.MMAP_PLAYERS ~= nil then _v2x9(_v2q7.mmapPlayers, _v2x8.MMAP_PLAYERS) end
if _v2x8.MMAP_CORPSES ~= nil then _v2x9(_v2q7.mmapCorpses, _v2x8.MMAP_CORPSES) end
if _v2x8.MMAP_FOSSILS ~= nil then _v2x9(_v2q7.mmapFossils, _v2x8.MMAP_FOSSILS) end
if _v2x8.MMAP_ON ~= nil then
_v2x9(_v2q7.mmap, _v2x8.MMAP_ON)
elseif _v2x8.MMAP_PLAYERS or _v2x8.MMAP_CORPSES or _v2x8.MMAP_FOSSILS then
_v2x9(_v2q7.mmap, true)
end
_v2x9(_v2q7.antiBS, _v2x8.ANTI_BLACKSCREEN)
if _v2x8.NO_FOG ~= nil then _v2x9(_v2q7.noFog, _v2x8.NO_FOG) end
if _v2x8.NO_BLUR ~= nil then _v2x9(_v2q7.noBlur, _v2x8.NO_BLUR) end
if _v2x8.NO_WEATHER ~= nil then _v2x9(_v2q7.noWeather, _v2x8.NO_WEATHER) end
if _v2x8.FULLBRIGHT ~= nil then _v2x9(_v2q7.fullbright, _v2x8.FULLBRIGHT) end
if _v2x8.CUSTOM_TIME_HOUR then _v2xc(_v2q7.timeHour, _v2x8.CUSTOM_TIME_HOUR) end
if _v2x8.CUSTOM_TIME ~= nil then _v2x9(_v2q7.customTime, _v2x8.CUSTOM_TIME) end
if _v2x8.MOB_SHOW_TURN ~= nil and _v4.mobTurnToggle then _v2x9(_v4.mobTurnToggle, _v2x8.MOB_SHOW_TURN) end
_v2x9(_v2q7.showModules, _v2x8.SHOW_INDICATORS)
if _v2x8.MOD_CHECK ~= nil then _v2x9(_v2q7.modCheck, _v2x8.MOD_CHECK) end
if _v2x8.MOD_KICK ~= nil then _v2x9(_v2q7.modKick, _v2x8.MOD_KICK) end
_v2x9(_v2q7.unlimitedZoom, _v2x8.UNLIMITED_ZOOM)
if _v2x8.FOV_VALUE then _v2xc(_v2q7.fovSlider, _v2x8.FOV_VALUE) end
_v2x9(_v2q7.fovToggle, _v2x8.FOV_ENABLED)
_v2xc(_v2q7.attackSpeed, _v2x8.ATTACK_SPEED)
_v2x9(_v2q7.noAtkCd, _v2x8.NO_ATK_CD)
_v2x9(_v2q7.noAtkCooldown, _v2x8.NO_ATK_COOLDOWN)
_v2xf(_v4.SILENT_GROUPS, _v4.PART_GROUP_ORDER, _v2x8, _ei9m[1003], _v2q7.silentGroups)
_v2xc(_v2q7.turnSpeed, _v2x8.TURN_SPEED)
_v2x9(_v2q7.quickTurn, _v2x8.QUICK_TURN)
_v2x9(_v2q7.silentAim, _v2x8.SILENT_AIM)
if _v2x8.INSTA_TURN_KEY and _v2fr then
pcall(function()
local _v2xo = Enum.KeyCode[_v2x8.INSTA_TURN_KEY]
if _v2xo then _v2fr:Set(_v2xo, true) end
end)
end
_v2x9(_v4.hitboxToggle, _v2x8.HITBOX_EXPANDER)
_v2x9(_v2q7.hitboxVis, _v2x8.HITBOX_VISUALIZE)
_v2xc(_v2q7.hitboxMult, _v2x8.HITBOX_MULTIPLIER)
if _v2x8.HITBOX_VIS_TRANSPARENCY ~= nil then
_v2xc(_v2q7.hitboxVisOpacity, math.floor((1 - _v2x8.HITBOX_VIS_TRANSPARENCY) * 100 + 0.5))
end
_v2xf(_v4.HITBOX_GROUPS, _v4.PART_GROUP_ORDER, _v2x8, _ei9m[1427+1260], _v2q7.hitboxGroups)
_v2xc(_v2q7.reachMult, _v2x8.REACH_MULTIPLIER)
if _v2x8.REACH_Tail ~= nil and _v2x8.REACH_TailBase == nil then
_v2x8.REACH_TailBase = _v2x8.REACH_Tail
_v2x8.REACH_TailMid = _v2x8.REACH_Tail
_v2x8.REACH_TailTip = _v2x8.REACH_Tail
_v2x8.REACH_Thagomizer = _v2x8.REACH_Tail
end
_v2xf(_v4.REACH_GROUPS, _v4.REACH_GROUP_ORDER, _v2x8, _ei9m[109+454], _v2q7.reachGroups)
if _v2x8.REACH_VIS_TRANSPARENCY ~= nil then
_v2xc(_v2q7.reachVisOpacity, math.floor((1 - _v2x8.REACH_VIS_TRANSPARENCY) * 100 + 0.5))
end
if _v2x8.REACH_VISUALIZE ~= nil then _v2x9(_v2q7.reachVis, _v2x8.REACH_VISUALIZE) end
_v2x9(_v2q7.reach, _v2x8.REACH_ENABLED)
_v2x9(_v4.autoWaterToggle, _v2x8.AUTO_WATER)
if _v2x8.FORCE_EAT ~= nil then _v2x9(_v4.forceEatToggle, _v2x8.FORCE_EAT) end
if _v2x8.FAST_EAT ~= nil then _v2x9(_v2q7.fastEat, _v2x8.FAST_EAT) end
if _v2x8.AUTO_CLEAN ~= nil then _v2x9(_v4.autoCleanToggle, _v2x8.AUTO_CLEAN) end
if _v2x8.INF_OXYGEN ~= nil then _v2x9(_v2q7.infOxygen, _v2x8.INF_OXYGEN) end
if _v2x8.EAT_WHEN_HUNGRY ~= nil then _v2x9(_v2q7.eatWhenHungry, _v2x8.EAT_WHEN_HUNGRY) end
if _v2x8.LEAVE_SCRAPS ~= nil then _v2x9(_v2q7.leaveScraps, _v2x8.LEAVE_SCRAPS) end
if _v2x8.CARRY_CORPSE ~= nil then _v2x9(_v2q7.carryCorpse, _v2x8.CARRY_CORPSE) end
_v2x9(_v4.noFallToggle, _v2x8.NO_FALL_DAMAGE)
if _v2x8.FPS_SAVER ~= nil then _v2x9(_v2q7.fpsSaver, _v2x8.FPS_SAVER) end
if type(_v2x8.SKIN_SELECTED) == _ei9m[970] then
_v4.SKIN_WANTED = _v2x8.SKIN_SELECTED
local _v2xp = _v4.skinsForCurrentDino and _v4.skinsForCurrentDino() or {}
if _v4.skinDropdown and table.find(_v2xp, _v2x8.SKIN_SELECTED) then _v2x9(_v4.skinDropdown, _v2x8.SKIN_SELECTED) end
end
if _v2x8.AUTO_FLY_SPEED then _v2xc(_v4.autoFlySpeedSlider, _v2x8.AUTO_FLY_SPEED) end
if _v2x8.AUTO_FLY_RADIUS then _v2xc(_v4.autoFlyRadiusSlider, _v2x8.AUTO_FLY_RADIUS) end
if _v2x8.AUTO_FLY_DRIFT then _v2xc(_v4.autoFlyDriftSlider, _v2x8.AUTO_FLY_DRIFT) end
if _v2x8.AUTO_FLY_ALT then _v2xc(_v4.autoFlyAltSlider, _v2x8.AUTO_FLY_ALT) end
if _v2x8.ANTI_AFK ~= nil then _v2x9(_v4.antiAfkToggle, _v2x8.ANTI_AFK) end
if _v4.cfgFarms then _v4.cfgFarms(_v2x8) end
if _v2x8.AFK_FARM_AVOID then _v2xc(_v2q7.afkFarmAvoid, _v2x8.AFK_FARM_AVOID) end
if _v2x8.AFK_FARM_WALK ~= nil then _v2x9(_v2q7.afkFarmWalk, _v2x8.AFK_FARM_WALK) end
if _v2x8.AFK_FARM_SAFETY ~= nil then _v2x9(_v2q7.afkFarmSafety, _v2x8.AFK_FARM_SAFETY) end
if _v2x8.AFK_FARM_ADMIN_KICK ~= nil then _v2x9(_v2q7.afkFarmAdminKick, _v2x8.AFK_FARM_ADMIN_KICK) end
if _v2x8.AFK_FARM_FLEE ~= nil then _v2x9(_v2q7.afkFarmFlee, _v2x8.AFK_FARM_FLEE) end
if _v2x8.AFK_FARM_UNSTUCK ~= nil then _v2x9(_v2q7.afkFarmUnstuck, _v2x8.AFK_FARM_UNSTUCK) end
if _v2x8.LF_AVOID then _v2xc(_v2q7.lfAvoid, _v2x8.LF_AVOID) end
if _v2x8.LF_MAX_DIST then _v2xc(_v2q7.lfMaxDist, _v2x8.LF_MAX_DIST) end
if _v2x8.LF_SCRAPS ~= nil then _v2x9(_v2q7.lfScraps, _v2x8.LF_SCRAPS) end
if _v2x8.LF_CIRCLE ~= nil then _v2x9(_v2q7.lfCircle, _v2x8.LF_CIRCLE) end
if _v2x8.LF_FLEE ~= nil then _v2x9(_v2q7.lfFlee, _v2x8.LF_FLEE) end
if _v2x8.LF_TABOUT ~= nil then _v2x9(_v2q7.lfTabOut, _v2x8.LF_TABOUT) end
if _v2x8.AUTO_GAIT ~= nil then
for _v2xq, _v2xr in pairs({ Walk = _v2q7.autoWalk, Trot = _v2q7.autoTrot, Run = _v2q7.autoRun, Sprint = _v2q7.autoSprint }) do
_v2x9(_v2xr, _v2x8.AUTO_GAIT == _v2xq)
end
end
if _v2x8.LF_UNSTUCK ~= nil then _v2x9(_v2q7.lfUnstuck, _v2x8.LF_UNSTUCK) end
if _v2x8.LF_REST ~= nil then _v2x9(_v2q7.lfRest, _v2x8.LF_REST) end
if _v2x8.LF_ADMIN_KICK ~= nil then _v2x9(_v2q7.lfAdminKick, _v2x8.LF_ADMIN_KICK) end
if _v2x8.LF_FLYAWAY ~= nil then _v2x9(_v2q7.lfFlyAway, _v2x8.LF_FLYAWAY) end
if _v2x8.LF_FLYAWAY_RADIUS then _v2xc(_v2q7.lfFlyAwayRadius, _v2x8.LF_FLYAWAY_RADIUS) end
for _v2xs = 1, 6 do
local _v2xt = _v2x8[_ei9m[936-12] .. _v2xs]
if _v2xt ~= nil then _v2x9(_v2q7[_ei9m[32] .. _v2xs], _v4.asLabel and _v4.asLabel(_v2xt) or _v2xt) end
end
_v2x9(_v2q7.asGender, _v2x8.AS_GENDER)
if _v2x8.AS_AUTOBUY ~= nil then _v2x9(_v2q7.asAutoBuy, _v2x8.AS_AUTOBUY) end
if _v2x8.AS_AUTO_ORDER ~= nil then _v2x9(_v2q7.asAutoOrder, _v2x8.AS_AUTO_ORDER) end
if _v2x8.FT_MINUTES then _v2xc(_v2q7.ftMinutes, _v2x8.FT_MINUTES) end
_v2x9(_v2q7.tpSolid, _v2x8.TP_SOLID)
_v2x9(_v2q7.tpChain, _v2x8.TP_CHAIN)
if _v2x8.AUTO_SAVE_PCT and _v2x8.AUTO_SAVE_PCT > 0 then
_v2xc(_v4.autoSaveSlider, _v2x8.AUTO_SAVE_PCT)
end
local _v2xu = _v2x8.AUTO_SAVE
if _v2xu == nil then _v2xu = (_v2x8.AUTO_SAVE_PCT or 0) > 0 end
_v2x9(_v4.autoSaveToggle, _v2xu)
if _v2x8.AUTO_SAVE_BLEED ~= nil then _v2x9(_v4.autoSaveBleedToggle, _v2x8.AUTO_SAVE_BLEED) end
if type(_v2x8.KEYBINDS) == _ei9m[653-15] then
for _v2xv, _v2xw in pairs(_v4.ALL_TOGGLES) do
if _v2x8.KEYBINDS[_v2xv] == nil and _v2xw and _v2xw.SetKey then
pcall(function()
if _v2xw.Key and _v2xw.Key ~= Enum.KeyCode.Unknown then _v2xw:SetKey(nil, true) end
end)
end
end
for _v2xx, _v2xy in pairs(_v2x8.KEYBINDS) do
local _v2xz = _v4.ALL_TOGGLES[_v2xx]
if _v2xz and _v2xz.SetKey and _v2xy then
pcall(function()
local _v2y0 = Enum.KeyCode[_v2xy]
if _v2y0 then _v2xz:SetKey(_v2y0, true) end
end)
end
end
end
if _v2x8.AUTO_GROW ~= nil then _v2x9(_v4.autoGrowToggle, _v2x8.AUTO_GROW) end
end
function _v4.listConfigs()
local _v2y1 = {}
pcall(function()
local _v2y2 = listfiles(_v4.CONFIG_FOLDER)
for _v2y3, _v2y4 in ipairs(_v2y2) do
local _v2y5 = _v2y4:match(_ei9m[1545])
if _v2y5 and _v2y5 ~= _ei9m[874-3] then
table.insert(_v2y1, _v2y5)
end
end
end)
table.sort(_v2y1)
return _v2y1
end
function _v4.saveConfig(_v2y6)
local ok, err = pcall(function()
local _v2y7 = _v4.getConfigData()
writefile(_v4.CONFIG_FOLDER .. "/" .. _v2y6 .. _ei9m[2380-2], _v2x1:JSONEncode(_v2y7))
end)
if ok then
print(_ei9m[1320+1538] .. _v2y6)
pcall(function() _v2c8:Notify(_ei9m[638-2] .. _v2y6) end)
else
warn(_ei9m[637] .. tostring(err))
pcall(function() _v2c8:Notify(_ei9m[1189] .. _v2y6) end)
end
return ok
end
function _v4.loadConfig(_v2y8)
local ok, data = pcall(function()
local _v2y9 = readfile(_v4.CONFIG_FOLDER .. "/" .. _v2y8 .. _ei9m[2369])
return _v2x1:JSONDecode(_v2y9)
end)
if ok and data then
_v4.applyConfigData(data)
print(_ei9m[558-17] .. _v2y8)
pcall(function() _v2c8:Notify(_ei9m[2298] .. _v2y8) end)
return true
else
warn(_ei9m[2348+425] .. tostring(data))
pcall(function() _v2c8:Notify(_ei9m[730+875] .. _v2y8) end)
end
return false
end
function _v4.deleteConfig(_v2ya)
pcall(function()
delfile(_v4.CONFIG_FOLDER .. "/" .. _v2ya .. _ei9m[510])
end)
end
function _v4.getAutoLoadConfig()
local _v2yb, _v2yc = pcall(function() return readfile(_v4.AUTO_LOAD_FILE) end)
if _v2yb and _v2yc and _v2yc ~= "" then return _v2yc end
return nil
end
function _v4.setAutoLoadConfig(_v2yd)
pcall(function() writefile(_v4.AUTO_LOAD_FILE, _v2yd or "") end)
end
local _v2ye = _v2c8.tabs and _v2c8.tabs.Settings
if _v2ye then
pcall(function()
_v2ye.page.ScrollingEnabled = true
_v2ye.page.ScrollBarThickness = 3
end)
else
_v2ye = _v2q3
end
_v4.UNLOAD_KEY = Enum.KeyCode.End
if _v2ye then
_v4.section(_v2ye, _ei9m[2934], _ei9m[74+137])
_v4.unloadKb = _v2ye:AddKeybind({
Name = _ei9m[252+917],
Default = _v4.UNLOAD_KEY,
Changed = function(_v2yf) _v4.UNLOAD_KEY = (typeof(_v2yf) == _ei9m[4+1670]) and _v2yf or Enum.KeyCode.Unknown end,
})
end
table.insert(_v2l, _v4.UIS.InputBegan:Connect(function(_v2yg, _v2yh)
if _v2yh or _v4.UNLOADED then return end
if _v2yg.KeyCode == _v4.UNLOAD_KEY and _v4.UNLOAD_KEY ~= Enum.KeyCode.Unknown then
pcall(_v4.unloadScript)
end
end))
if _v4.IS_MOBILE then
_v4.section(_v2ye, _ei9m[1162], _ei9m[1975+110])
_v4.mobTurnToggle = _v2ye:AddToggle({
Name = _ei9m[924+52],
Default = false,
Callback = function(_v2yi) _v4.MOB_SHOW_TURN = _v2yi end
})
end
_v4.CONFIG_SLOTS = {_ei9m[466], _ei9m[3043-9], _ei9m[4+1319], _ei9m[3+675], _ei9m[1292], _ei9m[423+456], _ei9m[7+1092], _ei9m[22+1998], _ei9m[1418]}
pcall(function()
_v2c8:SetConfig({
Folder = _v4.CONFIG_FOLDER,
Slots = _v4.CONFIG_SLOTS,
Save = _v4.saveConfig,
Load = _v4.loadConfig,
Ignore = function(_v2yj)
return _v2yj:match(_ei9m[2156]) or _v2yj:match(_ei9m[189+1561]) or _v2yj:match(_ei9m[45-17]) or _v2yj == _ei9m[755+335]
or _v2yj:match(_ei9m[1974])
end,
})
end)
local _v2yk = Instance.new(_ei9m[50+303])
_v2yk.Name = _ei9m[2009]
_v2yk.ResetOnSpawn = false
_v2yk.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
pcall(function() _v2yk.Parent = game:GetService(_ei9m[528+523]) end)
if not _v2yk.Parent then _v2yk.Parent = _v2:WaitForChild(_ei9m[1329+236]) end
local _v2yl = Instance.new(_ei9m[7+3029])
_v2yl.Name = _ei9m[440]
_v2yl.Size = UDim2.new(0, 160, 0, 400)
_v2yl.Position = UDim2.new(1, -170, 0, 10)
_v2yl.BackgroundTransparency = 1
_v2yl.Parent = _v2yk
local _v2ym = Instance.new(_ei9m[465+300])
_v2ym.FillDirection = Enum.FillDirection.Vertical
_v2ym.HorizontalAlignment = Enum.HorizontalAlignment.Right
_v2ym.VerticalAlignment = Enum.VerticalAlignment.Top
_v2ym.SortOrder = Enum.SortOrder.LayoutOrder
_v2ym.Padding = UDim.new(0, 2)
_v2ym.Parent = _v2yl
_v4.TweenService = game:GetService(_ei9m[7+557])
local _v2yn = {}
_v4.SLIDE_TIME = 0.25
function _v4.createIndicatorLabel(_v2yo, _v2yp)
local _v2yq = Instance.new(_ei9m[1961-16])
_v2yq.Name = _ei9m[2+2640] .. _v2yo
_v2yq.LayoutOrder = _v2yp
_v2yq.Size = UDim2.new(1, 0, 0, 18)
_v2yq.BackgroundTransparency = 1
_v2yq.TextColor3 = Color3.fromRGB(170, 90, 255)
_v2yq.TextStrokeTransparency = 0.3
_v2yq.TextStrokeColor3 = Color3.new(0, 0, 0)
_v2yq.Font = Enum.Font.GothamBold
_v2yq.TextSize = 13
_v2yq.TextXAlignment = Enum.TextXAlignment.Right
_v2yq.Text = _v2yo
_v2yq.TextTransparency = 1
_v2yq.Position = UDim2.new(1, 0, 0, 0)
_v2yq.Parent = _v2yl
_v2yn[_v2yo] = _v2yq
return _v2yq
end
function _v4.showIndicator(_v2yr)
local _v2ys = _v2yn[_v2yr]
if not _v2ys then return end
_v2ys.Visible = true
_v2ys.TextTransparency = 1
_v2ys.Position = UDim2.new(1, 0, 0, 0)
local _v2yt = _v4.TweenService:Create(_v2ys, TweenInfo.new(_v4.SLIDE_TIME, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
TextTransparency = 0,
Position = UDim2.new(0, 0, 0, 0)
})
_v2yt:Play()
end
function _v4.hideIndicator(_v2yu)
local _v2yv = _v2yn[_v2yu]
if not _v2yv then return end
local _v2yw = _v4.TweenService:Create(_v2yv, TweenInfo.new(_v4.SLIDE_TIME, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
TextTransparency = 1,
Position = UDim2.new(1, 0, 0, 0)
})
_v2yw:Play()
_v2yw.Completed:Connect(function()
if _v2yv.TextTransparency >= 0.9 then
_v2yv.Visible = false
end
end)
end
function _v4.updateIndicator(_v2yx, _v2yy)
if _v2yy then
_v4.showIndicator(_v2yx)
else
_v4.hideIndicator(_v2yx)
end
end
_v4.MODULE_LIST = {
{name = _ei9m[1669-19], order = 1, getState = function() return _v4.ESP_ENABLED end},
{name = _ei9m[862+645], order = 2, getState = function() return _v4.CHAMS_ENABLED end},
{name = _ei9m[839], order = 3, getState = function() return _v4.TRACERS_ENABLED end},
{name = _ei9m[1290-10], order = 4, getState = function() return _v4.CORPSE_ESP end},
{name = _ei9m[371], order = 5, getState = function() return _v4.FOSSIL_SMALL or _v4.FOSSIL_MEDIUM or _v4.FOSSIL_LARGE end},
{name = _ei9m[2131-17], order = 7, getState = function() return _v4.MEAT_ESP end},
{name = _ei9m[5+1050], order = 8, getState = function() return _v4.CLAY_ESP end},
{name = _ei9m[38+639], order = 24, getState = function() return _v4.VEG_ESP end},
{name = _ei9m[2147], order = 8, getState = function() return _v4.SAVE_DINO_ACTIVE end},
{name = _ei9m[3+1513], order = 9, getState = function() return _v4.HITBOX_EXPANDER end},
{name = _ei9m[525], order = 10, getState = function() return _v4.ANTI_BLACKSCREEN end},
{name = _ei9m[2331], order = 11, getState = function() return _v4.AUTO_GROW end},
{name = _ei9m[1124-19], order = 12, getState = function() return _v4.TEXT_HIGHLIGHT end},
{name = _ei9m[495-9], order = 14, getState = function() return _v4.NO_FALL_DAMAGE end},
{name = _ei9m[1560+1231], order = 15, getState = function() return _v4.FOSSIL_FARM end},
{name = _ei9m[128+765], order = 16, getState = function() return _v4.SILENT_AIM end},
{name = _ei9m[2614-6], order = 18.5, getState = function() return _v4.AFK_FARM end},
{name = _ei9m[1562+217], order = 18.6, getState = function() return _v4.LEGIT_FARM end},
{name = _ei9m[2623+407], order = 18.7, getState = function() return _v4.AUTO_SWITCH end},
{name = _ei9m[1372], order = 18.8, getState = function() return _v4.FARM_TIMER end},
{name = _ei9m[5+2041], order = 19, getState = function() return _v4.AUTO_FLY end},
{name = _ei9m[727+13], order = 20, getState = function() return _v4.TP_CORPSE end},
{name = _ei9m[5+2214], order = 21, getState = function() return _v4.ANTI_AFK end},
{name = _ei9m[370+1108], order = 22, getState = function() return _v4.MOD_CHECK end},
{name = _ei9m[2732-2], order = 25, getState = function() return _v4.NO_FOG end},
}
for _v2yz, _v2z0 in ipairs(_v4.MODULE_LIST) do
_v4.createIndicatorLabel(_v2z0.name, _v2z0.order)
end
_v4.prevStates = {}
_v4.addStep(6, function()
if _v2yk.Enabled ~= _v4.SHOW_INDICATORS then _v2yk.Enabled = _v4.SHOW_INDICATORS end
for _v2z1, _v2z2 in ipairs(_v4.MODULE_LIST) do
local _v2z3 = _v2z2.getState()
if _v4.prevStates[_v2z2.name] ~= _v2z3 then
_v4.prevStates[_v2z2.name] = _v2z3
_v4.updateIndicator(_v2z2.name, _v2z3)
end
end
end)
pcall(function()
local _v2z4 = (_v2c8.toggleKey and _v2c8.toggleKey.Name) or _ei9m[1737]
_v2c8:Notify(_ei9m[7+507] .. _v2z4 .. _ei9m[2376+64], 6)
end)
_v4.xlog(_ei9m[36+432])