--EZ:__EZ_WM__
-- EazyCheats | Prior Extinction Hub | FREE
local _pguo do local B="" for c=65,90 do B=B..string.char(c) end for c=97,122 do B=B..string.char(c) end for c=48,57 do B=B..string.char(c) end B=B..string.char(43)..string.char(47) local L={} for i=1,#B do L[B:sub(i,i)]=i-1 end local Kr={90,170,214,100,75,120,228,156} local m=228 local bx=bit32.bxor local ch=string.char local K={} for i=1,#Kr do K[i]=bx(Kr[i],m) end local C={} _pguo=function(s) local c=C[s] if c then return c end local o={} local a,b,n=0,0,0 for i=1,#s do local v=L[s:sub(i,i)] if v then a=a*64+v b=b+6 if b>=8 then b=b-8 local by=math.floor(a/2^b)%256 a=a%(2^b) o[#o+1]=ch(bx(by,K[n%8+1])) n=n+1 end end end local r=table.concat(o) C[s]=r return r end end
local _ei9m={_pguo("8y9B8w=="),_pguo("6ite5d/zcgzXIFU="),_pguo("+Txd99v0"),_pguo("/C9B5f/9cgw="),_pguo("9yBU5czoaRfQ"),_pguo("2D5B"),_pguo("8idV6Nv1bh8="),_pguo("6i9b7O39cx0="),_pguo("6i9b7O39cx0="),_pguo("/SFf7cDyLj/bOnXywOt0EPcgVuXX"),_pguo("2Dtc49v1bxY="),_pguo("0Dtf4sru"),_pguo("/SZT7dy8RhHSIhLU3f1uC84vQOXB/3k="),_pguo("8CFG6MbyZ1jXPRLy2vJuEdApHKD8yEEq6m56xf3ZIBTXPUbzj+hoHZ49RuHd6GUKnjxd99y8dBDfOhLh3fkgF9goHqDG8iALyi9A9MruIBfMKlfygQ=="),_pguo("+itC9MfTZj7XK17k6vpmHd06"),_pguo("7ztb48S8Ux3K"),_pguo("+Txd9d8="),_pguo("7S9E5Y/6YRHSK1a6jw=="),_pguo("/ypWy8rlYhHQKg=="),_pguo("+CFA48q8RRnK"),_pguo("+DxT7co="),_pguo("7iJT+cruc1jRIBLNxvJpFd8+"),_pguo("2jxd98E="),_pguo("8yFWoOz0ZRvV"),_pguo("7S9E5Y/YaRbR"),_pguo("6yBe6cL1dB3abmjvwPE="),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("8i9Q5cM="),_pguo("8CES08P5ZQieHVHyyvluQp48V+3A6mULnjpa5Y/+bBndJRLzzO5lHdBuRejG8GVYxyFHoNzwZR3OYhLzwLx5F8tuUeHBvHMM1yJeoNz5ZVjfPF31wfggAdE7HIrh8yA60jtAuo/uZRXROFfzj+hoHZ4sXvXdvHkXy25V5du8ZgrRIxLhj/5yF9UrXKDH+WEckERh6MDrIDXRKkfsyrxMEc06CKDD9XMMzW5F6M7oIAHROxLozuplWM05W/TM9GUcniFcoMbyIAzWKxL0wOwtCtcpWvSP/28K0CtAro/IdQrQblv0j/NmHp4sV+bA7mVYzS1A5crycxDROkbpwfsu"),_pguo("9idV6MP1ZxDK"),_pguo("/ztG74/PdxHKLVqg6/VuFw=="),_pguo("7SJd9NymIF3aYRfkj7woItsgW/THvCUckWtWqQ=="),_pguo("+CFA48q8RRnK"),_pguo("7TpA6d/vIAzWKxLnzvFlWNohRe6P6G9Y3yJf79zoIBbROlrpwfs="),_pguo("2Txd9w=="),_pguo("3ypf6cE="),_pguo("/C9B5f/9cgw="),_pguo("6iZXoNz9bR2eKFPywrxvFp4oXe/bsCAP1itcoNbzdVjJIUfsy7xyGcomV/KP8m8MnixXoNz5ZRaeKF75xvJnVg=="),_pguo("/SZT7dw="),_pguo("9yBB9M68VA3MIA=="),_pguo("3SFH7Mu8bhfKbkfuw/NjE54="),_pguo("2Txd98byZ1g="),_pguo("/yBG6Y/dRjM="),_pguo("7i9R6w=="),_pguo("8yFE5cL5bgw="),_pguo("0y9C"),_pguo("/C9A8sb5cg=="),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("7TpT9Nw="),_pguo("8itV6du8RhnMIw=="),_pguo("7CtY78byIDXfPg=="),_pguo("7TpT7e3b"),_pguo("3ypf6cG8ZB3KK1H0yvg="),_pguo("0Dtf4sru"),_pguo("+CFd5A=="),_pguo("6z1X8ubycA3KHVfy2fVjHQ=="),_pguo("9idG4sDkIDXLIkbp3/BpHcw="),_pguo("0ShU"),_pguo("8yFE5cL5bgw="),_pguo("6SFA7Ms="),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("njtc89vpYxOePl3pwehzWNcgQenL+Sk="),_pguo("7CtT48c="),_pguo("8yFH7tv9aRbN"),_pguo("8CtE5d28UwzfIFag/OhpFNI="),_pguo("2zxA792mIA=="),_pguo("7T5T7dy8ZhfMbkboyrxhCNs2EvPD83RYxyFHoN/1YxPbKg=="),_pguo("8iFT5MbyZz/LJw=="),_pguo("3z1h7MDo"),_pguo("+Txd99v0UArRKUDl3O8="),_pguo("9jpG8Pz5cg7XLVc="),_pguo("0ydc6cLpbQ=="),_pguo("zjhC"),_pguo("+CFB88bwc1jRIBLNxvJpFd8+"),_pguo("/ztG74/abAE="),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("2CJL6cH7"),_pguo("+CJL6cH7"),_pguo("9yBU6cH1dB2eAUr5yPlu"),_pguo("3zlT+Q=="),_pguo("+CJLoPzsZR3a"),_pguo("6S9G5d28Tg3TLFfy"),_pguo("/yBb7c7obwo="),_pguo("yi9A58ro"),_pguo("6jdC5Q=="),_pguo("8i9Q5cPvIB3IK0D5j+xsGccrQLqP8mEV22IS6Mr9bAzWYhLtwO5l"),_pguo("nj1G9cvvIBnJL0s="),_pguo("nmZB7c7wbB3NOhLmxu5zDJc="),_pguo("7jhi"),_pguo("niJX5tu1"),_pguo("yi9Q7Mo="),_pguo("8CESxs7wbFj6L1/hyPk="),_pguo("zS1A5crycxDROg=="),_pguo("7TpT58q8VBHTK0A="),_pguo("yyBZ7sDrbg=="),_pguo("6iFd7Nw="),_pguo("6wd+6dzoTBnHIUf0"),_pguo("8ytT9I+zID7RIVag6s9Q"),_pguo("ziFC9cP9dBHRIA=="),_pguo("0iFd6w=="),_pguo("nm5l5cPwYh3XIFWg/OhhDM0="),_pguo("+C9A7Y/IaRXbPA=="),_pguo("7Ctc5Mru"),_pguo("3CFH58foIA=="),_pguo("/ztG74LPYQ7bbmbo3flzENEiVqCK"),_pguo("+CFe6c77ZSvKPFfhwv1iFNs="),_pguo("6jdC5Q=="),_pguo("zSVb7g=="),_pguo("/TxX9M7/ZRfLPRLV3/BhFto="),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("+TxT4g=="),_pguo("8T5X7o/4aRbRbkHlw/ljDNchXKDO8mRYzidR64/oaB2eKlvuwLxhFtpuVeXB+GUKnihb8tzoLFjKJlfuj+h1CtBuRujG7yAX0GA="),_pguo("+yBT4sP5IDvWL1/zlbxmEdIiQaDf8GEB2zxBoNj1dBCeLxLzwPBpHJ4tXezA6XJYxyFHoMz9bljNK1eg2/RyF8spWqDY/WwUzWIS6MbwbAueL1zkj+hyHds9HKDg8mwBnjdd9Y/vZR2eJ0aupd9oGdM9EsbG8GxY6jxT7tzsYQrbIFH5lbxoF8luQe/D9WRYyiZXoMn1bBSeJ0Gupd9oGdM9Es/a6GwR0CsS1N39bgvOL0Dlwf95Qp4mXfeP728U1yoS9Mf5IBfLOl7pwfkgEc1g"),_pguo("/xtmz/DPVzHqDXo="),_pguo("njpdoIw="),_pguo("nmMSwdrob1jtOVv0zPQgDMs8XOXLvG8e2A=="),_pguo("8yFW5cM="),_pguo("+y9I+ez0ZRnKPQ=="),_pguo("/z5X+OzzbgzMIV7syu4="),_pguo("+CFA48q8RRnK"),_pguo("9yBU5czoZRyeGlPn"),_pguo("0Dtf4sru"),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("7SVb7g=="),_pguo("nm4axsrxYRTbZw=="),_pguo("/C9B5f/9cgw="),_pguo("+idB4c3wZVjpK1P0x/ly"),_pguo("yi9Q7Mo="),_pguo("/TxX9M7/ZRfLPRLB3f9oEc4rXuHI8w=="),_pguo("6StT9Mf5cjvRIEbywPBsHcw="),_pguo("7C9V5MDwbAs="),_pguo("1jdV6cryZQ=="),_pguo("3TxH6dz5"),_pguo("/SJT+Y/YZQjRPVv0"),_pguo("7jxd9Mr1bgs="),_pguo("7TpT9Nw="),_pguo("7hZtzsDabx8="),_pguo("5RAX9/I="),_pguo("9yBU6cH1dB2eAUr5yPlu"),_pguo("0Dtf4sru"),_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDc/XYdnghzyePZREKe"),_pguo("6Stb58fo"),_pguo("7iJT+cruID3tHg=="),_pguo("nj1G9cvvKQ=="),_pguo("+xRt1cHwaRXXOlfk9fNvFfgnSg=="),_pguo("/C9G6Nw="),_pguo("/25f79n9YhTbblHh3fggC9YhRenB+yAB0TtAoMDrbljaJ1zviO8gFNc4V6Dc6GEMzWA4ivzoYQzNbnHh3fg6WM0mXffcvHQQ225R4d34LnLqJlegxvJkHdA6V+SP6G8f2SJX84//aBfRPVeg2PRhDJ4vQvDK/XILniFcoMboOljHIUfyj/hpFtFpQaDB/W0dnmZB8Mr/aR3NblPuy7xnHdAqV/KDvGELnjpa5Y//YQraaUGg2/V0FNtnHqDI7m8PyiYS89v9Zx2eL1zkj+xyF9k8V/PcsCAP2ydV6NuwIAzWKxLn3fN3DNZuRunC+XJUni9c5I/0bw+eIl3uyLx0ENtuQfTO+2VYyi9Z5dy8YQyeOlrlj+xhG9tuS+/avGEK225V8sDraRbZYDjPwbx0ENc9EuXX+WMNyiFAoNv0ZVjZL1/liO8gFss6QOnb9W8Wkm5F5cPwYh3XIFWgzvJkWNMvQfOP+2ER0G5c9cL+ZQrNblHhwfJvDJ4sV6Dd+WEckm5B74/oaB2eLVPyy7xsHd84V/OP6Ggd025d9duyCjzML1Wg/OhhDM1uceHd+DpY0itG84/lbw2eI132yrx0ENtuUeHd+C5Y6jtA7o/1dFjRKFSg2/MgFNEtWaDG6CAR0G5C7M7/ZVa0BlvkyrxXENciV6Di+W4NngFC5cGmIBDXKlfzj+hoHZ4tU/LLvHcQ1yJXoNv0ZVjTK1z1j/VzWNE+V+6DvHMXnidGoMvzZQueIF30j/9vDts8Eunbsgoq2z1X9I/PdBnKPRLDzu5kWO4hQenb9W8WhG5C9dvvIBHKblDhzPcgEdBuW/TcvGMXzCBX8o/1ZljHIUegw/NzHZ4nRqDA+mZVzS1A5cryLg=="),_pguo("8ytT9A=="),_pguo("mz0ZpA=="),_pguo("7SNT7MO8RhfNPVvs3A=="),_pguo("8itT9sq8VRbaK0Cgh+xsGccrQPOG"),_pguo("0CES987oZQqeKF31wfggD9c6WunBvA=="),_pguo("9yBR7Nr4ZVj8Ilflyw=="),_pguo("7SZd94/Vbh7bLUbpwPI="),_pguo("/SFA8Nz5"),_pguo("zTtc8sbvZQ=="),_pguo("+jxb7sT1bh8="),_pguo("ziFF5d0="),_pguo("+Ctf4cP5"),_pguo("zDtc7sbyZw=="),_pguo("+xRktA=="),_pguo("0Dtf4sru"),_pguo("2CJX5Q=="),_pguo("6itK9A=="),_pguo("/ztG74/PdxHKLVqg6/VuFw=="),_pguo("+itU4drwdA=="),_pguo("/S9f5d39TRnGFF3vwthpC8ovXOPK"),_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDD82Ec2yoIoA=="),_pguo("7CtY78by"),_pguo("7CtY78byc1jfblT1w/BlCp49V/LZ+XI="),_pguo("+CFB88bwID7fPF8="),_pguo("zC9W4d0="),_pguo("2C9A"),_pguo("+C9A7Y/IaRXbPA=="),_pguo("3zpG4cz3IAvOK1fk"),_pguo("9iFH8g=="),_pguo("7Tlb9Mz0ID/bIFbl3Q=="),_pguo("8i9Q5cM="),_pguo("/ypW08P1ZB3M"),_pguo("7SZd94/fbBnHbnbl3/NzEco9"),_pguo("+C9A7Y/IaRXbPA=="),_pguo("5QtT+tbfaB3fOkHdj9tVMZ49ReHfvHQXng=="),_pguo("8CES4sP9YxOePVHyyvluWMkmW+zKvHkXy25B7Mr5cA=="),_pguo("3S9f5d39"),_pguo("6iFd7Nw="),_pguo("8itV6du8RhnMIw=="),_pguo("2idB48DuZFbZKR31+cRRLPkrVPbe"),_pguo("/C9B5f/9cgw="),_pguo("0ThX8g=="),_pguo("1jpG8NymL1fbL0j5zPRlGco9HOPA8S8LkStIrcjpaQ=="),_pguo("+CFB88bwc1jRIBLNxvJpFd8+"),_pguo("liBd7sq1"),_pguo("yyBV8sDpcB3a"),_pguo("2idX9A=="),_pguo("/S9A8ta8QRbHbnHv3exzHYRuQunM9yANzm5T7ta8YxfMPkHlg7xoF8krROXdvGgd3zhLrI/6chfTbkfwj+hvWI9+ArCP73QN2j0S4dj9eViTbkLyyu9zWPluU/SP9XRUniFAoOjuYRqeIVygxuhzWNMrXPWPsSAZ0CoS487ucgGeJ0agzuggD98iWenB+yALzitX5I/1bgvKK1Pkj/NmWNo8U+fI9W4fnidGro/fbwrOPVfzj/NuFMd0Eufd/WIa1yBVoM68bBHIKxLkxvJvWNUrV/DcvHQQ225V4cL5JwueIF3ywv1sWNInX+nb7y5Y8ShUoN/pdAueOlrlj/thFdtpQaDA625Y0idf6dvvIBrfLVmu"),_pguo("+Stc5Mru"),_pguo("9itT7Nv0IDrfPBLIyvVnEMo="),_pguo("nm4S"),_pguo("+Txd99v0ICvKL1Xl"),_pguo("+B5hoPz9dh3M"),_pguo("+yBT4sP5ID3tHg=="),_pguo("/C9B5f/9cgw="),_pguo("/SFA8Nz5LzXbL0ag+/l4DJ4dW/rK"),_pguo("2CJL6cH7"),_pguo("6i9b7I/RaRw="),_pguo("6Stb58fo"),_pguo("2zxA792mIA=="),_pguo("7SZT8sr4LivVJ1zEzuhh"),_pguo("zTpA6cH7"),_pguo("yS9G5d28YRDbL1aggrxmFMcnXOeP83YdzG5b9JW8"),_pguo("8itV6du8Th3IK0Cg/OhhFtpuYfTG8Gw="),_pguo("/ztG74/PdxHKLVqg6/VuFw=="),_pguo("+DtB6cDy"),_pguo("8ytT9A=="),_pguo("/wh5oOn9chU="),_pguo("zT5A6cHo"),_pguo("zCtB9A=="),_pguo("zT5T98H1bh+e"),_pguo("8yFWoOz0ZRvV"),_pguo("l24foNvueRHQKRL0x/kgFts2RqDL9W4X"),_pguo("8y9e5Q=="),_pguo("0Dtf4sru"),_pguo("nj5T9dz5ZFjJJlvsyrxBPvVudOHd8SAKyyBBoIf1dFjLPVfzj/V0C54hRe6P+WEM2zwS4cH4ICvfKFf01rU="),_pguo("nihT6cP5ZEKe"),_pguo("/C9B5f/9cgw="),_pguo("7SZd94/LZRHZJkY="),_pguo("6i9b7A=="),_pguo("yjxd9A=="),_pguo("/ztG74LPYQ7bbkLh2u9lHJ45WunD+SA5+AUSxs7ubV/NbmHhyfl0AZ4nQaDA8g=="),_pguo("1idW5Q=="),_pguo("7Sde5cHoIDnXIw=="),_pguo("zidc7sr4"),_pguo("6z1X8ubycA3KHVfy2fVjHQ=="),_pguo("9itT7Nv0"),_pguo("/ypWy8rlYhHQKg=="),_pguo("/wh5oOn9chU="),_pguo("8i9A58o="),_pguo("yS9e6w=="),_pguo("/ztG7+n9chU="),_pguo("/ypf6cHD"),_pguo("8itV6du8VBncbn312w=="),_pguo("+idc74/uZRTbL0Hly7wtWMwrRvXd8mUcnjpdoNbzdQqePVP2yvggC84hRg=="),_pguo("/SZT8s7/dB3MHVfy2fVjHQ=="),_pguo("8yFH7tv9aRbN"),_pguo("7CtY78by"),_pguo("/ztG7+n9chU="),_pguo("yi9Q7Mo="),_pguo("7TpT9Mo="),_pguo("+xRktA=="),_pguo("3y1G6dn1dAE="),_pguo("/TxX9M7/ZRfLPRLMwOtsGdAq"),_pguo("+Ctf4cP5"),_pguo("zi9W"),_pguo("8yFWoOz0ZRvVdBL3zu5uC543XfWP62gd0G5ToMj9bR2eL1btxvIgEtEnXPOP5W8NzG5B5d3qZQqQbnv0j/9oHd0lQaDb9GURzG5V8sDpcFjML1zrg7xzF54vXKDO8HRY3y1R79rydFjNOlvsw7xzHco9EunbvG8e2GA4wdrob1jyK1P2yqYgHNc9Ue/B8mUbyj0S+cDpIBnLOl3tzuhpG98iXvmP/XNYzSFd7o/9c1jRIFegxu8gHNs6V+Pb+WRW"),_pguo("8yFQ6cP5"),_pguo("7S9U5dvl"),_pguo("6CdX99/zcgw="),_pguo("+idc7/zoYR/b"),_pguo("9StX8Ny8eRfLblHsyv1uWN87Ru/C/XQR3S9e7NY="),_pguo("+i9L"),_pguo("kCRB78E="),_pguo("+x1i"),_pguo("/ztG74/bchfJ"),_pguo("1yBU5czoaRfQ"),_pguo("2CFB88bw"),_pguo("8itV6du8RhTHbnP3zuUgPswhX6D/8GEB2zxB"),_pguo("+zZC4cH4ZRz6K0bhxvBz"),_pguo("3z5C5c7uYRbdKw=="),_pguo("7i9R64/ZUyg="),_pguo("6jdC5Q=="),_pguo("kCRB78E="),_pguo("+yBT4sP5IDvWL1/z"),_pguo("8ytT9A=="),_pguo("0CFGoM7qYRHSL1DsyrxvFp46WuncvGUA2y1H9MDu"),_pguo("nidcoJfv"),_pguo("/ztG74LPYQ7bblP0j9RlGdI6WqCK"),_pguo("9yBU5czoaRfQbnz1wv5lCg=="),_pguo("zStG9MP1bh8="),_pguo("8itV6du8Ux3fPFHoj9hpC8ovXOPK"),_pguo("/C9B5fj9bBPtPlflyw=="),_pguo("7CtB5du8UwzfOkGg7P1yHJ4eXfPG6GkX0A=="),_pguo("/zpG4cz3ICzRIV7z"),_pguo("+Cde7A=="),_pguo("6S9G5d28QhnM"),_pguo("8itV6du8QRzTJ1yg5PVjEw=="),_pguo("7CtC7Mb/YSvbOg=="),_pguo("+TxT4s35ZCrfKVbvw/Bz"),_pguo("/zpG5cLsdAuEbgI="),_pguo("/Cdd7crv"),_pguo("9yBB9M68VA3MIA=="),_pguo("0idV6NvyaRbZ"),_pguo("/zpf79zsaB3MKw=="),_pguo("6iFd7Nw="),_pguo("8yFW5cM="),_pguo("/SFA8Nz5IDzXPUbhwf9l"),_pguo("/y1G6dn5"),_pguo("+CFd5A=="),_pguo("7S1A5cryRw3X"),_pguo("7TpT9Ny8QxnMKg=="),_pguo("7i9R6+P9Yh3S"),_pguo("zTlb7cL1bh8="),_pguo("+itU4drwdA=="),_pguo("+C9A7Y/YaRbRbkHl27wtWM06U/nG8mdY0SAS"),_pguo("9yBU7+P9Yh3S"),_pguo("7CtT48c="),_pguo("/Cdd7cq8VB3SK0Lv3eg6WNAhEuPH/XIZ3TpX8o/6bw3QKg=="),_pguo("9idG4sDk"),_pguo("9yBG5d36YRvbDV3u2+5vFNIrQA=="),_pguo("7CtT48c="),_pguo("8ytW6drxID7RPUHpw+8="),_pguo("njpdoMnpbBQ="),_pguo("8ytT9A=="),_pguo("+Cdc6dz0ZRyeClvuwO8="),_pguo("+idc79z9dQr6L0bhgQ=="),_pguo("/SFe7Mr/dBHRIGHl3eppG9s="),_pguo("2Dtc49v1bxY="),_pguo("3CdV58ru"),_pguo("7Ctc5Mru"),_pguo("8ytW6drxID7RPUHpw+8="),_pguo("6ite5d/zcgzXIFU="),_pguo("8y9e5Q=="),_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDO7HAUx25X8t3zckKe"),_pguo("7hZtzcD4YRQ="),_pguo("/Cde7M3zYQraCUfp"),_pguo("yi9Q7Mo="),_pguo("/CFW+Q=="),_pguo("0Dtf4sru"),_pguo("yjxX5dw="),_pguo("7hZtzMr7aQztOlfl3Q=="),_pguo("+idc79z9dQrsL1XkwPBsCw=="),_pguo("/wh5oOn9chU="),_pguo("3yBLoMLzbR3QOg=="),_pguo("/C9B5f/9cgw="),_pguo("6iFd7Nw="),_pguo("1yAS987oZQo="),_pguo("7R5z1+HZRFk="),_pguo("7Sde5cHoIDnXIw=="),_pguo("/SFf7cDyLjrLKFTl3e8uO9EgQfXC/WIU2wxH5sn5cg=="),_pguo("/S9A8ta8QRbHbnHv3exzHYRuRujKvGcZ0ysV84/7chncblHvy/kgD989Eu7A6CAe0Ttc5IO8bhfKJlvuyLxjEN8gVeXL"),_pguo("6yBe7874IDPbNwig3+5lC81uRujG7yAT2zcS9MC8dRbSIVPkj+hoHZ45Wu/D+SAQyywS6cHvdBnQOl75gbxDFNctWaDb9GVYzCFFrI/oaB3QbkLyyu9zWN9uWeXWvCg9zS0S48P5YQrNZxw="),_pguo("9idGwsDk"),_pguo("8itT9sq8UxvML0Lz"),_pguo("8yFE5cL5bgw="),_pguo("liBd7sq1"),_pguo("+CFB88bwID7fPF8="),_pguo("3ypf6cE="),_pguo("9itT7Nv0IDrfPBLIyvVnEMo="),_pguo("6Stb58fo"),_pguo("/C9A8sb5cg=="),_pguo("7StT8sz0IDzXPUbhwf9l"),_pguo("2idX5I+xIArbPULh2PJpFtluU/OP"),_pguo("/z5X+OzzbgzMIV7syu4="),_pguo("/C9B5f/9cgw="),_pguo("+S9e4dfl"),_pguo("7Dtc08rudhHdKw=="),_pguo("/SJT+ev5cBfNJ0bz"),_pguo("7hZtw9rvdBfTGlvtyg=="),_pguo("7Tlb9Mz0ID/bIFbl3Q=="),_pguo("7S1A5cryRw3X"),_pguo("8itV6du8QQ7RJ1ag/f1kEcs9"),_pguo("njpdoA=="),_pguo("zTpA6cH7"),_pguo("8itV6du8RhnMIw=="),_pguo("9StL"),_pguo("yi9Q7Mo="),_pguo("6Stb58fo"),_pguo("6jdC5Q=="),_pguo("/Cdd7crv"),_pguo("nmMS9cHwbxvVK1Y="),_pguo("7TpT9Ny8QxnMKg=="),_pguo("8y9B84/bYRHQbn/1w+hpCNInV/I="),_pguo("6Stb58fo"),_pguo("/SFc5sb7NQ=="),_pguo("7jxd+MbxaQzHHkDvwux0"),_pguo("/CFW+Q=="),_pguo("8C9f5eP9Yh3S"),_pguo("7SZd94/UZRnSOlo="),_pguo("7iFB9Or6Zh3dOg=="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("7TpT9Nw="),_pguo("6CtV5dv9dBHRIBLF/Mw="),_pguo("7iJT+cruIDnIIVvkj85hHNc7QQ=="),_pguo("7Ctc5Mru"),_pguo("7T5T98H1bh8="),_pguo("8CtR6w=="),_pguo("8iFT5Mr4IBvRIFTpyKYg"),_pguo("9itT7Nv0"),_pguo("+jxL"),_pguo("nm4SwczoaQ7XOkug"),_pguo("2z1C"),_pguo("8yFH7tv9aRbN"),_pguo("3S9c48rwbB3a"),_pguo("0itV6dvaYQrTGl3nyPBl"),_pguo("/C9A8sb5cg=="),_pguo("3yhZ"),_pguo("+CFd5I/eYQo="),_pguo("8itV6du8Ux3fPFHoj9hpC8ovXOPK"),_pguo("0Dtf4sru"),_pguo("yi9Q7Mo="),_pguo("0i9c5A=="),_pguo("7S9E5Y/YaRbR"),_pguo("yi9Q7Mo="),_pguo("7SZT8sr4LjTRLFD56/10GQ=="),_pguo("/xtmz/DPVzHqDXo="),_pguo("yS9e68byZw=="),_pguo("/Cdd7crv"),_pguo("yiFd7Nw="),_pguo("3S9f5d39"),_pguo("3SFf4s7o"),_pguo("8i9B9Oz0YQrfLUbl3cM="),_pguo("2Dtc49v1bxY="),_pguo("6i9V8w=="),_pguo("7Dtc"),_pguo("9itT7Nv0"),_pguo("/zxf"),_pguo("2zhX8ta8ZBHQIRLvwbw="),_pguo("njtc89vpYxOePl3pwehzWNcgQenL+Sk="),_pguo("6itK9OP9Yh3S"),_pguo("/TxX4dv5ZDnK"),_pguo("6i9b7Pv1cA=="),_pguo("ziJT7tvv"),_pguo("/S9f5d39"),_pguo("7jxb7928RQDKJ1zj2/VvFg=="),_pguo("/ztG74/QZRnIKw=="),_pguo("7TpT9Nw="),_pguo("7TpT58o="),_pguo("1CFb7sbyZ1jfbg=="),_pguo("8y9Z5dy8Tyz2C2Cg3/BhAds8QaDK/XMR2zwS9MC8aBHKblD5j/tyF8knXOeP6Ggdnj5T8tvvIBfYbkboyvEgAdE7EuPO8iAU3yBWoM7yIBnKOlPjxLxvFpBEOMXB/WIU22566dv+bwCeC0rwzvJkHcx0EvTa7m4LnidGoMDyLnLoJ0H1zvBpAttueunb/m8A2z0IoMvuYQ/NbkboyrxlFtIvQOfK+CAI3zxG84/vb1jHIUegzP1uWM0rV6DY9GEMnjdd9Y/9ch2ePUXpwftpFtluU/SBvE8W0jcS+cDpIAvbKxL0x/lzHZBEZOnc6WEUngFC4cz1dAGEblrv2LxzF9InVqDb9G8L225Q79f5c1jSIV3rgZZIEcosXfiP0XUUyidC7Mb5ckKeJl33j/F1G9ZuUOnI+2UKnjpa5Y/sYQrKPRLnyugsWMs+EvTAvDUAnmYDsNe8dxHKJhLQ3fltEcsjG66P3W4ByiZb7si8ZgrRIxK117xjGcw8W+XcvGFYzSVH7MO8YRbablvzj+plCsduXeLZ9W8NzW5G74/9bgHRIFeg2P10G9YnXOeP/SAe1yla9IE="),_pguo("niVV"),_pguo("0Dtf4sru"),_pguo("mz0ZpA=="),_pguo("zTpA6cH7"),_pguo("6ite5d/zcgzXIFU="),_pguo("+CdB6A=="),_pguo("/ztG78n9chU="),_pguo("0Dtf4sru"),_pguo("0i9c5A=="),_pguo("lmAfqaU="),_pguo("/SJT+Y/YaQvKL1zjyg=="),_pguo("2y9G6cH7IFs="),_pguo("km5b9Ny8ZhHQL16g3OhhH9s="),_pguo("/ztG74/PdxHKLVq6jw=="),_pguo("7TpT58o="),_pguo("6SFA7Ms="),_pguo("6ite5d/zcgzXIFU="),_pguo("XMiC"),_pguo("6i9b7Pv1cA=="),_pguo("0ThX8g=="),_pguo("zTpb7MO8bRfIJ1znj7RhCNs2Eu3a73RYzTpT7su8cwzXIl6p"),_pguo("zCtG9d3yaRbZbkbvj/FlFstuGg=="),_pguo("2idE6cH7"),_pguo("yi9Q7Mo="),_pguo("+CJLoPzsZR3a"),_pguo("9idGwsDk"),_pguo("2CJX5cbyZ1jfbkLszuVlCp4="),_pguo("/ztG74/PdxHKLVqgwPpm"),_pguo("nmMS9dz1bh+eOlrlj/RvC8orVqDC+W4N"),_pguo("2z1C"),_pguo("5QtT+tbfaB3fOkHdjw=="),_pguo("7Ctf79n5c1jKJleg2P1pDJ4rXPTG7mUUxw=="),_pguo("8yFH9MfMYQrK"),_pguo("mz0ZpA=="),_pguo("/yJeoMnzcwvXIkGgyf1yFdsqEqg="),_pguo("zTpA6cH7"),_pguo("7hZtzsDabx8="),_pguo("+CFd5A=="),_pguo("/SZT7dy8Tw3KIlvuyrxUCt8gQfDO7mUW3Tc="),_pguo("2CFd5A=="),_pguo("/SFA5ejpaQ=="),_pguo("7SZd94/LZRHZJkY="),_pguo("+CFd5A=="),_pguo("+C9A7dy8dBDfOhLww/15WNghQKDW83U="),_pguo("2z1R4d/5"),_pguo("8itV6du8VRbNOkfjxA=="),_pguo("nm5/4dzvID/fJ1yg4ulsDNc+XunK7g=="),_pguo("/zxf"),_pguo("7Dtc09/5ZRw="),_pguo("zCtT48f5ZFg="),_pguo("7CtG9d3yaRbZGl3NyvJ1"),_pguo("6Stb58foOlieclC+"),_pguo("3CFW+Q=="),_pguo("+Ctf4cP5"),_pguo("8itV6du8RhTbKxLG3fNtWO4iU/nK7nM="),_pguo("+x1i"),_pguo("0Dtf4sru"),_pguo("7Ctc5Mru"),_pguo("7ztb48S8VA3MIA=="),_pguo("3C9R64/9c1g="),_pguo("7SZd94/PdBnZKw=="),_pguo("y5Fe0I+LtsAA"),_pguo("/ztG7+n9chU="),_pguo("/ztG78n9chU="),_pguo("/ztG74/PdxHKLVqn3LxwEd0l"),_pguo("8C9f5eP9Yh3S"),_pguo("7CtG9d3yaRbZGl3NyvJ1"),_pguo("6z1X8ubycA3KHVfy2fVjHQ=="),_pguo("7CtB5du8UwzfOkGg7P1yHJ4eXfPG6GkX0A=="),_pguo("6wdh9N3zax0="),_pguo("8i9B9I/MbBnHK1Y="),_pguo("/C9B5f/9cgw="),_pguo("7jxd5935cwueOl2g"),_pguo("zCtB9A=="),_pguo("+CJLoO7rYQGeHFPkxulz"),_pguo("7CFQ7MDkIBPXLVnzj/1uAdEgV6DG+Gwdnihd8o+uMFjTJ1z12/lzVp4CV+HZ+SAM1idBoMDyIA/WJ17lj/0gHt88X6Dd6W4LkA=="),_pguo("6i9b7O39cx0="),_pguo("/ztG7+n9chU="),_pguo("/CJH8ur6Zh3dOg=="),_pguo("9itT7Nv0Qj8="),_pguo("8DtG8sboaRfQbmH0zuhz"),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("8itV6du8TB3fOFeg/P9yGc49"),_pguo("7TpT58o="),_pguo("zStA9sruIAjRPkfszuhpF9BuR+7L+XJY"),_pguo("+CdB6I/ZUyg="),_pguo("7T5a5d35"),_pguo("zT5T98GmIF3Nbhfz"),_pguo("7CtB5du8UwzfOkGg7P1yHJ4eXfPG6GkX0A=="),_pguo("yS9b9MbyZ1jKIRLswPsgF8s6CKA="),_pguo("1SdR6w=="),_pguo("6CtR9MDuMg=="),_pguo("6wd+6dzoTBnHIUf0"),_pguo("yi9Q7Mo="),_pguo("+i9L"),_pguo("6jtA7o/PdArbIFX0xw=="),_pguo("/SFA8Nz5IDzXPUbhwf9l"),_pguo("liNX4dzpchHQKRyugbU="),_pguo("yyBZ7sDrbljTK1z1jw=="),_pguo("8ytT9A=="),_pguo("8CESwdvoYRvVbnHvwPBkF8kg"),_pguo("yi9Q7Mo="),_pguo("8yFc89v5cg=="),_pguo("8idV6Nv1bh8="),_pguo("7TpT8tv5cj/LJw=="),_pguo("7StA9sruIAjLPVrly7xiGd0lEmIvCCAV0ThXoNzsZR3ablH127w="),_pguo("/SZT7dy8RhHSIhLU3f1uC84vQOXB/3k="),_pguo("liNX4dzpchHQKRyugbU="),_pguo("/wh53+ndUjU="),_pguo("yi9Q7Mo="),_pguo("+Txb7ss="),_pguo("+CFA48q8RRnK"),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("6CtV5dv9dBHRIBLExu90GdAtVw=="),_pguo("+C9A7Y/IaRXbPA=="),_pguo("+itU4drwdA=="),_pguo("+yBT4sP5ICzML1Hl3e86WNo8U/fcvGwR0CtBoNvzIAjSL0vl3e8u"),_pguo("8i9B9I/MbBnHK1Y="),_pguo("/C9A8sb5cg=="),_pguo("9itT7Nv0"),_pguo("zT5T98E="),_pguo("7SZd94/IdQrQbnD12+hvFs0="),_pguo("/x1twfrITzrrFw=="),_pguo("6jdC5Q=="),_pguo("yi9Q7Mo="),_pguo("/SFc89rxYRrSK3Tvw/VhH9s="),_pguo("/zpf79zsaB3MKw=="),_pguo("6iFd7Nw="),_pguo("+C9e7MbyZw=="),_pguo("zidc7sr4"),_pguo("0Dtf4sru"),_pguo("9yBUzM7+ZRQ="),_pguo("9idG4sDkID3GPlPuy/ly"),_pguo("8CES08P5ZQieHVHyyvlu"),_pguo("+C9A7Y/YaRbRbg=="),_pguo("6ite5d/zcgzXIFU="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HeHc+G8W22M="),_pguo("yjtA7g=="),_pguo("9jtf4cHzaRzsIV30//1yDA=="),_pguo("6iFd7Nw="),_pguo("8ytT9A=="),_pguo("m34A5A=="),_pguo("5QtT+tbfaB3fOkHdj9phCtNuZunC+XJY2Cdc6dz0ZRyeL1T0yu4g"),_pguo("niVV"),_pguo("7SZd94/IdQrQbnD12+hvFs0="),_pguo("7Dtc"),_pguo("/C9B5f/9cgw="),_pguo("8CES5M7xYR/bblTywPEgHt8iXunB+yxY2zhX8g=="),_pguo("9yBU5czoZRyeGlPn"),_pguo("0Dtf4sru"),_pguo("6CtR9MDuMg=="),_pguo("+y9I+ez0ZRnKPQ=="),_pguo("0yFQ6cP5"),_pguo("3CFd7Mr9bg=="),_pguo("nmZQ9db1bh+eJ0agyfNyWA=="),_pguo("0yFE5Q=="),_pguo("+idc74/uZRTbL0Hly7wtWN0hR+zLvG4Xym5U7Na8YhndJR6g1vN1WN88V6DY9GUK225L79q8cw3MKFPjyvg="),_pguo("+Dte7M3uaR/WOg=="),_pguo("/ztG7+n9chU="),_pguo("6iFd7Nw="),_pguo("+x1i"),_pguo("7CdV6NvPaBHYOg=="),_pguo("7S1A5cryRw3X"),_pguo("/CFW+Q=="),_pguo("+B5hoPz9dh3M"),_pguo("/SJX4cHwaRbbPUHT2/Nw"),_pguo("8ydc6Q=="),_pguo("7SZd94/fbwrOPVfz"),_pguo("+CFA48q8RRnK"),_pguo("8yFWoOz0ZRvV"),_pguo("+i9G4ezzbgzMIV7syu4="),_pguo("9jpG8Pz5cg7XLVc="),_pguo("/SFH7Mu8bhfKbl7vzvgg"),_pguo("3SFe7Mr/dBHQKQ=="),_pguo("/CFW+Q=="),_pguo("+CFB88bwTA=="),_pguo("6yBB9Nr/aw=="),_pguo("/zpG4cz3aRbZ"),_pguo("+y9I+ez0ZRnKPX/vy91sHcw6"),_pguo("9yBG5d36YRvbDV3u2+5vFNIrQA=="),_pguo("kCRB78E="),_pguo("7TpT9Ny8QxnMKg=="),_pguo("7i9R64/QZRnaK0Cg6s9Q"),_pguo("2Txb7ss="),_pguo("7SZd94/fbBnHbnbl3/NzEco9CKDC/XITzW5R7M7lIBzbPl3zxuhzWMomU/SP/m8XzToS6cLxdRbXOkuupd9sGcdudunc6GEW3SsIoMfzd1jYL0CgzuthAZ46WuXWvGEK225B9MbwbFjSL1Dlw/BlHJBEcezO5SAc2z5d88boc1jNPlP3wbxpFp49QuXM9WYR3W5T8sr9c1iWLFP0x7NtDdpuSO/B+XNRkG5l4cP3IAzRbl3uyrxhFtpuV+HbvHQXnjxT6dz5IBHTI0fuxuh5Vg=="),_pguo("8i9Q5cPvIBTfPFXlj/pvC80nXvM="),_pguo("6S9G5d28QhnM"),_pguo("6CdX99/zcgw="),_pguo("8i9Q5cPvIBTRIUHlj/FlGcpuXe6P6GgdnilA79ryZA=="),_pguo("7TpT7cbyYVj8L0Cg+PVkDNY="),_pguo("7TpT9Nw="),_pguo("8CdV6Ns="),_pguo("8gt1yfvDRjnsAw=="),_pguo("/SFe7Mr/dAueKF3z3PVsC54oXfKP5W8Nni9H9MDxYQzXLVPsw+UucrQIXfPc9WxY+C9A7ZW8ZhTXK0Gg2/MgHd8tWqDB+WEK3DcS5sDvcxHSYhLjwPBsHd06QaDG6CxYyiZX7o/xbw7bPRL0wLx0ENtuXOXX6C5Y9ygS4Y/6bwvNJ16gxu8gFtE6EvDG/2sd2m5H8I/raQzWJ1ygzrxtEdA7RuWDvGkMnjpA6crvIBnZL1vuj/pyF9NuU+7A6GgdzG5B6cv5IA/XOlqg2/RlWN0vX+Xd/SAU0SFZ6cH7IBnKblv0g7xhFtpuW+aP6GgZym5U4cbwc1jKIV2gxuggC9UnQvOP6GgZym5U79zvaRSeL1zkj/9vFNIrUfTcvHQQ225d9Mf5cguQRHTv3O9pFJ4IU/LCvFMI2ytWuo/0bw+eKFPz27xpDJ4oXunK7yAa2zpF5cryIB7RPUHpw+8u"),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("9idG4sDkID3GPlPuy/ly"),_pguo("/ypW1MD7ZxTb"),_pguo("7S1T7uHzdBHYNw=="),_pguo("8itV6du8Uh3NOhLUwLxIHd8i"),_pguo("8i9A58o="),_pguo("+y9I+ez0ZRnKPRLSyvZvEdA="),_pguo("nmUXrp76c1ie"),_pguo("ziJT7ts="),_pguo("9yBU5czoQj8="),_pguo("8y9e5Q=="),_pguo("yjtA7v0="),_pguo("9z177vj9dB3M"),_pguo("6yBB9Nr/aw=="),_pguo("7SZd94/fbwrOPVfz"),_pguo("7Sdf9cP9dB2eGVPsxPVuHw=="),_pguo("7jxd5935cwueOl2g"),_pguo("1yNf9cH1dAE="),_pguo("7iJT+cruRw3X"),_pguo("/ztG74LPYQ7bblP0j9RlGdI6WqCK"),_pguo("+CFA48q8RRnKbkLh2u9lHJ45WunD+SA5+AUSxs7ubVjXPRLvwbwoDNYrEubO7m1Y1i9BoMboc1jROVygyv10Hcxn"),_pguo("6S9G5d3eRw=="),_pguo("nmMS5s7ubRHQKRLvwQ=="),_pguo("0yFE6cH7"),_pguo("+DxT7co="),_pguo("+jxT99y8YVjSJ1zlj+hvWNs4V/LWvHAU3zdX8g=="),_pguo("8y9KyMr9bAzW"),_pguo("+TxT4o/9bljfPlf4j+9sF8puRujKvG0X0ytc9I/zbh2eIULlwe8u"),_pguo("7TpT9Nw="),_pguo("zStA9sruIAvfJ1agwfM6WA=="),_pguo("3z1h7MDo"),_pguo("+CFB88bwID3tHg=="),_pguo("6jtA7v/9ZA=="),_pguo("zTpA6cH7"),_pguo("6itK9OP9Yh3S"),_pguo("+yBT4sP5ID3tHg=="),_pguo("6StT9Mf5cjvRIEbywPBsHcw="),_pguo("/C9G6Nw="),_pguo("3ztG78PzYRw="),_pguo("7SZd94/UZRnSOlo="),_pguo("+itU4drwdA=="),_pguo("zTpA6cH7"),_pguo("nj1G9cvvIBfYKA=="),_pguo("+Dte7A=="),_pguo("8i9Q5cPvIAvTL17sj/pvC80nXvM="),_pguo("6Stb58fo"),_pguo("zTpA6cH7"),_pguo("8CFGoMDyIAvbIlfj2/VvFp49UfLK+W5YXM6moN/9dQvbKg=="),_pguo("2Dtc49v1bxY="),_pguo("+DtB6cDy"),_pguo("/ztG7+n9chU="),_pguo("7SZd94/PdBnZKw=="),_pguo("6jxd9A=="),_pguo("3Dxb58fo"),_pguo("7Sdf9cP9dB2eGVPsxPVuHw=="),_pguo("8itV6du8RhTbKxLG3fNtWO4iU/nK7nM="),_pguo("4BxX8MP1YxnKK1bT2/NyGdkrF66HsitRmg=="),_pguo("7SNT7MM="),_pguo("zCtc5Mru"),_pguo("+xRt1cHwaRXXOlfk9fNvFfgnSg=="),_pguo("8y9KyMr9bAzW"),_pguo("yjlX7tvlIBXXIEf0yu8="),_pguo("+DxT7co="),_pguo("8i9B9I/MbBnHK1Y="),_pguo("+DxT7co="),_pguo("zTpA6cH7"),_pguo("2z1C"),_pguo("/ypWxN3zcBzROVw="),_pguo("+TxT4s35ZCrfKVbvw/Bz"),_pguo("6CtV5dv9dBHRIBLExu90GdAtVw=="),_pguo("6idf5Y/zZlj6L0s="),_pguo("+idB4c3wZVjpK1P0x/lyQp4tXuXO7nNYzC9b7oO8cwzRPF/zg7xmF9liEuzG+2gM0Cdc54/9bhyeOVvuy7xvFp43XfXdvHMbzCtX7o/zbhTHbtAAO7xzFt8+QaDb9GVYzSVLoNvzIBvSK1Pyj/1uHJ4lV+Xf7yARym5G6MruZVaeC0Tl3eVvFttuV+zc+SALyide7I/vZR3NbkboyrxyHd8iEvfK/XQQ2zwcoPvpchaeJ0agwPpmWMohEufK6CAM1isS8sr9bFjJK1P0x/lyWNwvUeuB"),_pguo("6i9b7A=="),_pguo("7i9R6+P9Yh3S"),_pguo("9z177uzzbRrfOg=="),_pguo("8iFT5I/6YRHSK1a6jw=="),_pguo("yS9e7Mf9YxM="),_pguo("8yFH7tv9aRbN"),_pguo("+itU4drwdA=="),_pguo("+Cde7A=="),_pguo("0Dtf4sru"),_pguo("nm528s77ICvKL0bzj99hCto="),_pguo("liNX4dzpchHQKRyugbU="),_pguo("9StX8Ny8bRfIJ1znlbxyDdAgW+7IvHMI2ytW"),_pguo("+Rt7oMn9aRTbKhL0wLxsF98qCKA="),_pguo("0Dtf4sru"),_pguo("3SFH7Mu8bhfKbkHwzutuWA=="),_pguo("7T5T98H5ZDXbL0Y="),_pguo("+jxb7sTvIB7RPBL5wOkgD9YrXOXZ+XJYxyFHoM7uZVjfOhL3zuhlCg=="),_pguo("8ghtw+bOQzT7"),_pguo("0Dtf4sru"),_pguo("3SJX4cG8YgrbL1mghw=="),_pguo("6itK9OP9Yh3S"),_pguo("6jxd9A=="),_pguo("/SZT7dw="),_pguo("zDtc"),_pguo("+xR19cbTbh2QIlP5wOl0"),_pguo("8itV6du8VRbNOkfjxA=="),_pguo("/ztG7+n9chU="),_pguo("1jpG8NymL1fbL0j5zPRlGco9HOPA8S8LkStIrcjpaVXYO0HpwPI="),_pguo("/SFA5ejpaQ=="),_pguo("0iFd68byZ1jYIUCg3flhG9YvUOzKvGYX0So="),_pguo("+C9A7Y/IaRXbPA=="),_pguo("6iFd7Nw="),_pguo("/ypW08P1ZB3M"),_pguo("yjtA7uM="),_pguo("m2cSrY/rYRTVJ1znj+hvWMkvRuXdsCA="),_pguo("+y9I+ez0ZRnKPQ=="),_pguo("8ytW6drxID7RPUHpw7xEEc06U+7M+Q=="),_pguo("+DxT7co="),_pguo("+CFB88bwID7fPF8="),_pguo("0y9CoN35YwzfIFXsyrxvFp5m"),_pguo("6ite5d/zcgzXIFU="),_pguo("ziJT+crucw=="),_pguo("+C9A7Y/PcB3bKg=="),_pguo("0Dtf4sru"),_pguo("2CJL6cH7"),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("nidBoMvzbh2eZg=="),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("7Ctc5Mru"),_pguo("7S9E5Y/YaRbRdBLuwLxjEN88U+Pb+XJY2CFH7ss="),_pguo("/x1twfrITyfxHHbF/Q=="),_pguo("1itT7Nv0"),_pguo("2CJX5Q=="),_pguo("+DxT7co="),_pguo("6jdC5Q=="),_pguo("/25R4d34IA/XOlqg1vN1Cp4iW/bKvHMM3zpBoM7yZFjKJ1/l3Q=="),_pguo("6Stb58fo"),_pguo("+idc79z9dQrsL1XkwPBsCw=="),_pguo("gmFQvg=="),_pguo("6iZXoMDyZVjaJ1zvj/l2Hcw3EvLK9m8R0G5B8M7rbgs="),_pguo("+xRktA=="),_pguo("2zZb9A=="),_pguo("zT5T7Q=="),_pguo("7S1T7Mo="),_pguo("2CJb58fo"),_pguo("/ztG7+n9chU="),_pguo("8i9Q5cPvIBXbKlv1wrxmF809W+zc"),_pguo("8ght0+zOQSjt"),_pguo("7hZtzsDabx8="),_pguo("6i9b7OL1ZA=="),_pguo("7SNT7MO8RhfNPVvsj9hpC8ovXOPK"),_pguo("3yhZxs7ubSzRKVXsyg=="),_pguo("7i9A9Nw="),_pguo("7SZd94/RZRnK"),_pguo("2CtX5A=="),_pguo("8y9B84/bYRHQbn/1w+hpCNInV/KVvCBE3HA="),_pguo("/CFW+Q=="),_pguo("8i9Q5cPvIB7RPBL3x/10WNc9EvfA7nQQnjlT7MT1bh+eOl2u"),_pguo("0Dtf4sru"),_pguo("8i9Q5cPvIBfQIkug1vN1WN0vXKDc+WVW"),_pguo("3zlT+Q=="),_pguo("7CtT48e8TQ3SOlvww/VlCg=="),_pguo("7TpT58o="),_pguo("8yFWoOz0ZRvV"),_pguo("0yFE5Q=="),_pguo("8itV6du8QQ7RJ1ag/f1kEcs9"),_pguo("ng9f4sru"),_pguo("+Txd99v0ICvKL1XllbwgRNxw"),_pguo("/SFA5ejpaQ=="),_pguo("8y9KoOP9Yh3SPQ=="),_pguo("+itU4drwdA=="),_pguo("1jdW8s7oaRfQ"),_pguo("yiZb8tzo"),_pguo("/S9A4sD0eRzML0bl3A=="),_pguo("+xRktA=="),_pguo("/ypWzM7+ZRQ="),_pguo("+DtB6cDy"),_pguo("8CESxsD7"),_pguo("+w9m3/jURTbhBmfO6M5Z"),_pguo("/ztG74/LYQzbPA=="),_pguo("mz0S7crydViWaxyyye8p"),_pguo("7TpT9Ny8QxnMKg=="),_pguo("zCdB6cH7IBHQOl2g2/RlWM0lSw=="),_pguo("+y9I+ez0ZRnKPWLh2/Q="),_pguo("/C9B5f/9cgw="),_pguo("nm518sDrdBCeHUbhyPk="),_pguo("l3QS"),_pguo("8CESwdvoYRvVbnHvwPBkF8kg"),_pguo("0CtK9I/4aRbR"),_pguo("3zpG4cz3IAvOK1fk"),_pguo("8iFQ4tbfbxbKPF3sw/ly"),_pguo("3ydf"),_pguo("/ypf6cE="),_pguo("7Ctc5Mru"),_pguo("6iFd7Nw="),_pguo("0CdeoN/9ch3QOg=="),_pguo("0yFW5d39dBfM"),_pguo("2Txd99v0"),_pguo("4GtBqw=="),_pguo("7SJd9Nw="),_pguo("7hZtxtrwbBrMJ1Xo2w=="),_pguo("9idW5Y/ZYQzbIBLQw/1uDM0="),_pguo("2DxX88c="),_pguo("8gt1yfvDRjnsAw=="),_pguo("0i9c5A=="),_pguo("yi9Q7Mo="),_pguo("3z5X+A=="),_pguo("9yBW3w=="),_pguo("yi9Q7Mo="),_pguo("8TZL58ryIBbbOFfyj/hyGdcgQaDa8mQdzDlT9Mru"),_pguo("0iFFoN/zcA=="),_pguo("8i9A58q8RhfNPVvs3A=="),_pguo("2y9I+cz0ZRnKPRzjwPE="),_pguo("2S9E5Y/pcA=="),_pguo("XMiD"),_pguo("6yBe7874IDPbNw=="),_pguo("/ztG74/fbB3fIF7pwflzCw=="),_pguo("zCdB5Q=="),_pguo("7CtC7Mb/YTrXIFY="),_pguo("yi9Q4sr4IBfLOg=="),_pguo("/S9A8ta8QRbHbnHv3exzHQ=="),_pguo("7StGwczoaRfQ"),_pguo("yi9Q7Mo="),_pguo("7CtY78byOljVK1fw3Lx5F8tuVOHd8WkW2W5G6N3zdR/WblnpzPdzVJ4tQOHc9GULni9c5I/vZQrIK0Cg3flzDN88RvOBvEIZ3SUS78G8dBDbbkH0zu50WM0tQOXK8iARym5C6cz3c1jtO0D2xuphFJ4vXOSP6GgdniNT8I/+ZRTROR6gxfNpFs1uXe7KvG8enjpa4du8bRnOaUGg2/RyHdtuVPXD8GULym5B5d3qZQrNbkbozuggC8onXuyP9GELnjxd78K8KBbbOFfyj+hoHZ4hXOWP5W8NniRH89u8bB3YOhusj+9wGckgQaDb9GVY2idc74/lbw2eIlPz27xwFN83V+SP825YyiZT9I/xYQieYxL3xuhoWP87Ru+Pz3cRyi1aoMDyLFjKJlegwfl4DJ47XObG8mkL1itWoMv1bheeJ1Sg2/RhDJ4hXOWP9XNY2iFc5Y+xIBnQKhL02u5uC54sU+PEvG8Wnjla4dv5dh3MbkXh3LxyDdAgW+7IpiA5+AUSxs7ubVSeAlfnxuggPt88X6yP3XUM0W5h98boYxCSbnTv3O9pFJ4IU/LCvGEW2m504d3xICzXI1fygbxUENtuQfTO7nRYzS1A5cryIB/XOFfzj+VvDZ52EvPK/28W2j0S9MC8YxnQLVfsgbxJHp43XfXdvGQR0CES487ybhfKblDlj+9wGckgV+SPtHQQzCtXoNvuaR3NYhLv3bxBDcohEtPY9XQb1mlBoMH5eAyeKlvuwLUsWNc6EvLK9m8R0D0S4cHzdBDbPBLzyu52HcxuRujKvHMZ0ysS987lIFWeL0agwvNzDJ4hXOPKvGUO2zxLoJ2sIBXXIEf0yu8ucuomV6Dc/3IRzjoS6M7vIAzRbl7vzvggGsduW/Tc+WweniFcoNv0ZVjNOlPy27xzG8wrV+6P/W4cnidcoNv0ZVjNK0D2yu46WPsUEsHa6G9Y8i9H7sz0ZQqeKl3l3Lx0EN86EqjG6CAK2yRd6cHvLFjXIFjlzOhzWN8gVqDd6W4Lnjpa5Y/vYwrXPkapgbxXENsgEsHa6G9Y7Tlb9Mz0IB7XIFvzx/lzWNs4V/LWvGQR0CES78G8YVjTL0Ksj85lEtEnXKDC83YdzW5L79q8dBeeOlrlj/JlAMpuX+HfvHQQ3zoS89v1bBSeJlPzj/NuHZ46XaDI7m8PnmZ49d39cwvXLR6g7O5lDN8tV+/a7yAtziJT7suwIDvMK0bhzPlvDc1ufu/Y8GEW2mISw935dBndK1313LxBCt0mW/DK8GEf0WIS88T1cAjXIFWgwv1wC547XOTK7iAV3ydc9MryYRbdKxugzvJkWNArROXdvGIZ3SUS9MC8YVjYJ1zp3PRlHJ4hXOWDvGUO2yAS4cnoZQqeLxLj3f1zEIVuQunM92kW2W5ToP35ahfXIBLNzuwgAdE7QPPK8GZY3SJX4d3vIAzWIUHlj/FhCtU9HKDuvGYR0CdB6Mr4IDnLOl2g/OtpDN0mEqjB8yAV3z4S7Mr6dFGeIUCg6f1yFZ4aW+3K7ixY0TwS9cHwbxnaJ1znj+hoHZ4mR+KDvG0d3yBBoNbzdVjNOl3w3/lkWNEgEvDa7nAXzSsSrY/ybwzWJ1znj/VzWMo7QO7K+CAa3y1ZoMDyLljsK1jvxvIgGdAqEunb7yAV3z4S4d35IAvfOFfkj+hoHZ4jXe3K8nRYxyFHoMz0YRbZKxL0x/ltWN8gVqDO7HAUx25b7o/5dh3MNxLzyu52Hcx1EvTH+XlY3zxXoMHzdFjOL0D0j/NmWN9uUe/B+mkfkm5T7su8ZRndJhLSwP5sF8ZuU+PM83UWym5a4dy8aQzNbl33wbIKKtskXenBvE0ZznQS9Mf5IBXfPhL0wLxqF9cgHKDj/XMMnh5e4db5ZFjXPRL0x/kgFd8+EvnA6SAP2zxXoMP9cwyeIVyg2PV0EJ4cV+rA9W5Y0SAciun9chWeClvuwKYgDNYrEu/B+SAc1yBdoNvzIAvOL0Xuj/1uHJ4oU/LCvGUO2zxLoN35ahfXIBKtj/N2Hcw8W+TK7yA03z1GoP/wYQHbKhLhwfggOcs6XaD862kM3SYcoPz5dFjXOh6g2+lyFp4hXKDj+WcRym504d3xLFjfIFagyuplCsduQeXd6mUKnidGoMXzaRbNbkHwzutuC546WuHbvGQR0CES4cH4IB7fPF/zj/V0Vp4HRqDH/XNYyiES4sq8YVjaJ1zvj+VvDZ4mU/bKvHUW0iFR68r4IBfQbkboyrxtGc5uW/SP9m8R0D0JoM68bBfdJVfkj/NyWNE6WuXdsW0Zzm5C6cz3IB/bOkGgwPJlWNAhRunM+SAZ0CoS5s7wbAueLFPjxLx0F54CU/PbvFAU3zdX5I/zclj/O0bvj893EcotWq6Py2gR0isS+cDpIBnMKxLww/15EdApEunbsCA5yzpdoPzraQzdJhLz2/1uHM1uVu/Y8jpY1zoS68r5cAueKFPywvVuH546WuncvGQR0CES6cHvdB3fKhLvybxtF8gnXOeP825Y0SBR5Y/1dFjXPRLm2vBsAZ4pQO/Y8i5Y8i9B9I/MbBnHK1agw/lhDts9EvTH+SAc1yBdoMz0bxHdKxLh3LxiHdghQOWBvFMZyCtWoNj1dBCeHFfqwPVuVJ4+V/KP/WMb0Ttc9IGWQQ3KIR/Myv12HZ4LX/Db5SAr2zxE5d2mIA/WJ17lj/0gHt88X6DA7iA5yzpdoPzraQzdJhLp3LxyDdAgW+7IsCAR2G5G6Mq8cx3MOFfyj/hyF849EuLK8G8Pnjpa5Y/sbBnHK0CgzPN1FspuUOXD83dY2CFAoJysIAvbLV3uy+8sWNIrU/bKvGEW2m5A5cXzaRaeIVzlj/NmWMomV6DC/XBfzW5U9cPwZQvKbkHl3eplCs1uGu7K+WQLnhxX6sD1bljRIAmg3P12HdpuRenb9CAq2yRd6cGwIAjbPBLhzP9vDdA6G66l0GUZyCsS1cH4ZQqeZkLszuVlCs1nCKDb9GVYziFC9cP9dBHRIBLmw/NvCp46WuHbvHQK1ylV5d3vIDnLOl2t4/lhDttg"),_pguo("7gFh1A=="),_pguo("wGtW6IqsMhzTbl7lyeg="),_pguo("7Ctc5Mru"),_pguo("+y9I+ez0ZRnKPQ=="),_pguo("/SFc5sb7"),_pguo("6SZT9I/1c1jMO1zuxvJnWMwnVejbvG4XyQ=="),_pguo("/CJX5cvaaRTS"),_pguo("+CdB6I/ZUyg="),_pguo("/SFc5sb7"),_pguo("8itV6du8Uh3NOhLUwLxIHd8i"),_pguo("8ytT9A=="),_pguo("yi9Q7Mo="),_pguo("2Dtc49v1bxY="),_pguo("+CFd5I/eYQo="),_pguo("+CFd5O3b"),_pguo("8i9Q5cM="),_pguo("yi9Q7Mo="),_pguo("4ClH6YqxJRyVag=="),_pguo("8ytB6OLzZB3S"),_pguo("6itK9I/PaQLb"),_pguo("9iFH8g=="),_pguo("lhVsr/PBK1GbYFjzwPIk"),_pguo("0CES9cHwbxvVK1agy/VuF546XaDI7m8P"),_pguo("/TxX9M7/ZRfLPRLB3f9oEc4rXuHI8w=="),_pguo("/SZT7dw="),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("+jxL"),_pguo("/CFW+Q=="),_pguo("zjhC"),_pguo("6itK9O3pdAzRIA=="),_pguo("6CdB9c7waQLbbnrp2/5vANs9"),_pguo("8ghtze7EXzz3HWY="),_pguo("yi9Q4sr4IBfLOg=="),_pguo("/x1tx+rSRD3s"),_pguo("8iFV08rudhHdKw=="),_pguo("7SVb7g=="),_pguo("+zZC4cH4ZRw="),_pguo("1jtc58ru"),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("+Cde7A=="),_pguo("7TpT9Nw="),_pguo("2CFd5A=="),_pguo("/SZT8s7/dB3MHVfy2fVjHQ=="),_pguo("7SZd94/fbwrOPVfz"),_pguo("/CFG6I/zbhTHblPmyfljDJ43XfXdvG8P0G5E6crrLljwIVDvy+UgHdI9V6Dc+WULni9c+Y/4aR7YK0Dlwf9lVrREZ+7D9W0RyitWoPXzbxWEbkDlwvN2Hc1uRujKvGwR0ydGoMDyIBDRORLmzu4gAdE7EuPO8iAC0SFfoNv0ZVjdL1/l3f0gF8s6HIrp01ZY/SZT7sj5ckKeIlf03Lx5F8tuQeXbvHkXyzwS5sb5bByeIVSg2fVlD54nXPPb+WEcniFUoNrvaRbZbkboyrxnGdMrFfOBlkY36HQS6MDrIA/XKleg2/RlWMgnV/eP9XNWnnkCoMbvIBbRPF/hw7IgNNE5V/KP5m8X0z0S6cG8YRbabl/hxPlzWMomW+7I7yAU0SFZoMzwbwvbPAmgx/VnENs8EubG6HNY0yFA5Y/zbljNLUDlyvIgGdAqEu3O92ULnj1C5cr4IB7bK16gyf1zDNs8HKDm6CAc0StBoMHzdBDXIFWg2vJ0EdJudM/5vEMQ3yBV5d28aQueIVyu"),_pguo("7SVb7pW8YxDfIFXl3LxoF8luS+/a7iAc1yBdoMPzbxPNbkbvj+VvDZ4hXOzWsiA9yCtA+cDyZVjbIkHlj+90EdIiEvPK+XNYxyFH8o/uZRnSbkHrxvIu"),_pguo("/SJX4cHwaRbbPUE="),_pguo("8y9B84/bYRHQbn/1w+hpCNInV/I="),_pguo("7CtR78v5"),_pguo("9yBB9M7ydFj/OkbhzPc="),_pguo("+yBT4sP5ICvXIlfu27xBEdM="),_pguo("7S9E5Y/YaRbRbkLh2u9lHIRuc8bkvEYZzCMV84/PYR7bOkugx/1uHNIrQaDH9WQdnmgS6Mr9bFjJJlvsyrxpDJ48R+7c"),_pguo("+AFkoOz0YRbZK0A="),_pguo("2idE6cH7"),_pguo("zTpT5sk="),_pguo("/SFe7Mr/dBHRIGHl3eppG9s="),_pguo("7TpT7cbyYVj8L0Cg+PVkDNY="),_pguo("1i9I5Q=="),_pguo("6jdC5Q=="),_pguo("3C9R6w=="),_pguo("9jtf4cHzaRzsIV30//1yDA=="),_pguo("liBd7sq1"),_pguo("+idc79z9dQrtK17lzOhpF9AJR+k="),_pguo("8itV6du8RhnMIw=="),_pguo("2Txb7ss="),_pguo("yi9Q7Mo="),_pguo("+y9I+ez0ZRnKPRLswP1kHdpuH6Df7mULzW4="),_pguo("3yJG"),_pguo("yyBZ7sDrbljbPEDv3Q=="),_pguo("+Ctf4cP5"),_pguo("7Ctf79n5c1jYIVWgzvJkWNYvSOWDvHMXnjdd9Y/vZR2eKEfy2/RlCg=="),_pguo("zCFG4dv5"),_pguo("/SFc5sb7NA=="),_pguo("0CdV6Ns="),_pguo("9jpG8Pz5cg7XLVc="),_pguo("/CJX5cu8RSvu"),_pguo("+yBT4sP5ICvXIlfu27xBEdM="),_pguo("/ztG74/PdxHKLVqg6/VuFw=="),_pguo("3DtB6A=="),_pguo("6itK9I/UaR/WIlvnx+g="),_pguo("7SNT7MO8RhfNPVvs3KYgFN8sV+zcvHMV3yJeoMnzcwvXIkGupdFlHNc7X6Dp83ML1yJBuo/wYRrbIkGgwvlkEcsjEubA73MR0j0ciuP9ch/bbnTv3O9pFM10EuzO/mUUzW5e4d37ZVjYIUHzxvBzVg=="),_pguo("3C9R64/zbkKe"),_pguo("/SZT7dy8Tw3KIlvuyrxUCt8gQfDO7mUW3Tc="),_pguo("0Dtf4sru"),_pguo("7QJ91I/bUjn8DHfEjrxTCN85XOnB+yA="),_pguo("6iFd7Nw="),_pguo("7CtB8M7rbkKe"),_pguo("zCte78imIAvOL0XuxvJnWA=="),_pguo("2itT9Me8ZwrfLVegyvJkHdpiEvPD83RYzTpb7MO8aB3SKgig"),_pguo("+CdB6A=="),_pguo("/yBG6Y/dRjM="),_pguo("0ShU"),_pguo("/yJe79i8VRbSIVHrxvJnWPArRaDr9W4XzQ=="),_pguo("zztb9A=="),_pguo("/wh5oOn9chU="),_pguo("+StG9MbyZ1j/OVP5"),_pguo("+i9L"),_pguo("7Tlb9Mz0ICvSIUagmw=="),_pguo("6ite5d/zcgzXIFU="),_pguo("7TpT9Nw="),_pguo("zCdB5Q=="),_pguo("9yBU5czoaRfQbnz1wv5lCg=="),_pguo("/ztG74/PcArXIEY="),_pguo("9DtA4dzvaRs="),_pguo("0idB9A=="),_pguo("+CFA48q8RRnK"),_pguo("zT5T98H5ZFiTblzv2/RpFtluV+zc+SAP3z0S8trybhHQKQ=="),_pguo("2zxA792mIA=="),_pguo("zjhC"),_pguo("7Tlb9Mz0ICvSIUagng=="),_pguo("6iZXoNz/chHOOhLozu8gDNFuXu/O+CAax25b9Nz5bB6eIVyg2/RlWM06U/LbvHMbzCtX7o/9bhyeJ1yg2/RlWNArRaDc+XIO2zwSrY/ZWlj/O0bvj9BhDdAtWuXdvGQX2z0S9Mf9dFY="),_pguo("/ypW1MD7ZxTb"),_pguo("2Txd9w=="),_pguo("+C9A7dw="),_pguo("8yFW5cM="),_pguo("+yBT4sP5IDDXOlDv17xFAM4vXOTK7g=="),_pguo("2Dtc49v1bxY="),_pguo("/SZT7dy8Tw3KIlvuyrxUCt8gQfDO7mUW3Tc="),_pguo("zC9b7g=="),_pguo("8CESxs7wbFj6L1/hyPk="),_pguo("6CdA9Nr9bC3NK0A="),_pguo("6StG"),_pguo("+CFB88bwID7fPF+g/OxlHdo="),_pguo("6jdC5Q=="),_pguo("6ite5d/zcgzXIFU="),_pguo("0Dtf4sru"),_pguo("2C9B9Mru"),_pguo("/ypWy8rlYhHQKg=="),_pguo("/zpG5cLsdAuEbg=="),_pguo("+xRtxMDo"),_pguo("6jtA7o/9bBSeIVTm"),_pguo("7SVb7tw="),_pguo("8SB/5cHp"),_pguo("/yBG6Y/dRjM="),_pguo("8CtX5Ny8Uh3UIVvuj/NuVp4HRqDA8mwBniJX4dn5c1jJJlvsyrxhWNgvQO2P83JY/ztG74/PdxHKLVqgxu8gCssgXOnB+y4="),_pguo("zidc7sr4"),_pguo("yi9Q7Mo="),_pguo("/S9A4sD0eRzML0bl3A=="),_pguo("8y9e5Q=="),_pguo("lCRDLAAA"),_pguo("+Bt+zI9+gOyePULhwvFpFtlgHK4="),_pguo("zCdB6cH7"),_pguo("+y9G84/yZRnMLEugyfNvHJ45WuHb+XYdzG5L79ruIBzXK0Y="),_pguo("yS9A7o+8"),_pguo("7Ste5czoZRw="),_pguo("7iZL88b/cw=="),_pguo("yidf5d0="),_pguo("niJd48T5ZFiWIF30j/luF8spWqDu8WIdzGc="),_pguo("zStG9MP1bh8="),_pguo("yi9Q7Mo="),_pguo("9jpG8Pz5cg7XLVc="),_pguo("/ypWzM7+ZRQ="),_pguo("6z5Z5crs"),_pguo("6yBe6cL1dB3abmjvwPE="),_pguo("7Tlb9Mz0ICvSIUagmg=="),_pguo("zS9U5dvl"),_pguo("zCtB9MbyZw=="),_pguo("8itV6du8RhTHbnP3zuUgKt8qW/Xc"),_pguo("6ite5d/zcgzXIFU="),_pguo("8ytB6OLzZB3S"),_pguo("0Dtf4sru"),_pguo("zCdV6Ns="),_pguo("2CFB88bw"),_pguo("7i9A9A=="),_pguo("/ztG74/OdRY="),_pguo("6iZT58DxaQLbPA=="),_pguo("+Dte7M3uaR/WOg=="),_pguo("6SFA7Ms="),_pguo("+Dte7M3uaR/WOgigw/VnEMo9EvXfvHQQ225F6MDwZVjTL0Ku"),_pguo("8y9e5Q=="),_pguo("nmMMoA=="),_pguo("7SZd94/SYRXb"),_pguo("/ztG74/bchfJ"),_pguo("1iFH8g=="),_pguo("zTpA6cH7"),_pguo("/wp/yeE="),_pguo("XMag"),_pguo("+xRg5dzoTB3aKVc="),_pguo("7Tlb7cL1bh8="),_pguo("0itT9sbyZ1iTbg=="),_pguo("7iJT+cruRw3X"),_pguo("/Cdd7cq8VB3SK0Lv3eg6WMomV6Db7mkInihT6cP5ZFiTbkvv2rxhCttuRejK7mVYxyFHoNzobwjOK1Y="),_pguo("2yNC9NY="),_pguo("8y9e5Q=="),_pguo("6iZXoOz9chyeB0bzyvBm"),_pguo("+CFA987uZA=="),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("/SZT7dy8RhHSIhLU3f1uC84vQOXB/3k="),_pguo("6i9b7IqyKF3aZRs="),_pguo("+idc74/SYRXb"),_pguo("+CFB88bwID7fPF+g/OxlHdo="),_pguo("7i9R64/QZRnaK0Cg6s9Q"),_pguo("2CJL6cH7"),_pguo("lmAfqYrvKlebPRiogbcp"),_pguo("7i9A9A=="),_pguo("liNX4dzpchHQKRyugbU="),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("zztX9co="),_pguo("/x1t0+PTVA=="),_pguo("0Dtf4sru"),_pguo("7iJT+crucw=="),_pguo("2jxd8A=="),_pguo("liBd7sq1"),_pguo("8itV6du8Ux3fPFHoj9hpC8ovXOPK"),_pguo("ySdW5Q=="),_pguo("025e5cno"),_pguo("6i9b7OL1ZA=="),_pguo("6Stb58fo"),_pguo("8CES08P5ZQieHVHyyvlu"),_pguo("zSJd9I/uZR7LPVfkj/pvCp4="),_pguo("7jtG84/oaB2eLVPyy7xiGd0l"),_pguo("0i9c5A=="),_pguo("8ytW6drxID7RPUHpw7xEEc06U+7M+Q=="),_pguo("7SZd94/LZRHZJkY="),_pguo("+CFB88bwTQ=="),_pguo("1CFV"),_pguo("+CFB88bwID7fPF+6j+9rEc4+V+SP/SAe0T1B6cO8aQyeLV31w/ggFtE6EuPA8Gwd3ToSrY/xbw7XIFWgwPI="),_pguo("6itK9OP9Yh3S"),_pguo("0Dtf4sru"),_pguo("2z1R4d/5"),_pguo("yi9Q7Mo="),_pguo("7CtB5du8UwzfOkGg7P1yHJ4eXfPG6GkX0A=="),_pguo("njIS79jyIAvOK1Hpyu8sWN0vXKfbvGUZyg=="),_pguo("/C9B5f/9cgw="),_pguo("0Dtf4sru"),_pguo("zTpA6cH7"),_pguo("yi9A58ro"),_pguo("8y9KoOP9Yh3SPQ=="),_pguo("7SdC"),_pguo("nm5l5cb7aAw="),_pguo("0CFGoMj5dAzXIFWgzPBlGdArQA=="),_pguo("+AFk"),_pguo("2z1R4d/5"),_pguo("8yFW9cP5c1b9IVzz2vFwDNchXK7o+XQq0TpG5cHPZQzKJ1zn3A=="),_pguo("ni9U9MruIBmePFfswPs="),_pguo("yi9Q7Mo="),_pguo("+CFd5A=="),_pguo("+Stc5Mru"),_pguo("+y9I+ez0ZRnKPWTlyNlTKA=="),_pguo("8yFc89v5cg=="),_pguo("XNiO"),_pguo("2C9A7Y/vdBfOPlfk"),_pguo("6jxT48rucw=="),_pguo("+itU4drwdA=="),_pguo("njdX9I+xIAvOL0Xuj/NuHZ4vXOSP6GgdnihT8sLvIBvRI1egzf1jE54hXA=="),_pguo("/ypWxN3zcBzROVw="),_pguo("8itV6du8QRzTJ1yg5PVjEw=="),_pguo("6iFd7Nw="),_pguo("zCtB9MbyZw=="),_pguo("+idB9M7yYx0="),_pguo("7StXoNj0YQyeOlrlj/thFdtuWunL+XM="),_pguo("8itV6du8RhnMIwig"),_pguo("niNb7troZQueIVSgyf1yFdcgVa4="),_pguo("yS9e6w=="),_pguo("9jtf4cHzaRzsIV30//1yDA=="),_pguo("7TpT58o="),_pguo("+y9I+ez0ZRnKPWLh2/Q="),_pguo("/SZT7dw="),_pguo("+Txd99v0ICzXI1fy"),_pguo("8iFQ4tbfbxbKPF3sw/ly"),_pguo("7SZd94/fbwrOPVfzlbxsGdwrXvOP/28Kzj1X84/oaBnKbkH0xvBsWNYvROWP8WUZym5e5cnoLljtOkDp3+xlHJ49WeXD+XQX0D0S4d35IBbROhLszv5lFNIrVq6l328Kzj1Xr+L5YQyeGlf427xTEcQrCKDJ824Mnj1b+sq8ZhfMbkbowO9lWNIvUOXD7y5y/SFA8Nz5IDzXPUbhwf9lQp4mXfeP+mEKni9F4da8YxfMPkHl3LxhCttuQfTG8GxY0i9Q5cPwZRyQRGHowOsgMdAoV+Pb9W8WhG5T5MvvIBmeIlvuyrx1FtorQKDM83IIzSsS4cH4IBXbL0agw/1iHdI9HKD49GkU225U8srvaFjXOhLjwOluDM1uVu/Y8iAM0W5F6MryIBHKbkDv2+8gVZ4oQOXc9CAV2y9GoMj1dh3Nblzvj/VuHtstRunA8i5Y8SBR5Y/ubwzKK1ygxuggDMs8XPOP+3Id2yAS4cH4IArbL1bzj85PLOoLfKyP62kM1m5a79i8bQ3dJhLpwfplG8onXe6P824dnixb9Mq8ZxHIK0Gg1vN1Cp4qW+7AvGEW2m5a79i8bRnQNxLixuhlC547XPTG8CAB0TtAoML5dB3Mblvzj/p1FNJgEs/B8HlY3SFA8Nz5c1jfIFagwvlhDJ48XfSUvHAU3yBG84O8ZR/ZPRLhwfggGtEgV/OP8mUO2zwS5MCy"),_pguo("zT5A6cHo"),_pguo("/yJeoMnzcwvXIkGgyf1yFdsq"),_pguo("+yBH7eboZRU="),_pguo("7SVb7o/faBnQKVfy"),_pguo("7TpT58o="),_pguo("9idGwsDk"),_pguo("3SFH7Mu8bhfKbkDlzvggDNYrEu3O7CAU1z1GoIK8cBHdJRLhj+9lCsgrQKDW83UKzSte5g=="),_pguo("2i9A6w=="),_pguo("/TxX9M7/ZRfLPRLMwOtsGdAq"),_pguo("7SZd94/IdQrQbnD12+hvFs0="),_pguo("2z1C"),_pguo("7TpT9Ny8QxnMKg=="),_pguo("9yNf9cH1dAE="),_pguo("/SFf4s7o"),_pguo("8CESwsPpcg=="),_pguo("/ypf6cHQYRrbIg=="),_pguo("7StGwczoaRfQ"),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("9yBU5czoQj8="),_pguo("/ztG74/bchfJdBLryvlwC543XfWP+3IXySdc54/raQzWIUf0j+VvDZ4mU/bG8mdYyiES5MC8YRbHOlrpwfsu"),_pguo("8itT9sq8QR7KK0Cgh/FpFss6V/OG"),_pguo("8i9B9I/MbBnHK1Y="),_pguo("/z5X+OzzbgzMIV7syu4="),_pguo("2z1R4d/5"),_pguo("+Txd99y8ZRndJhLkxvJvWNcgEvnA6XJY0idB9A=="),_pguo("6CtV5dv9dBHRIBLF/Mw="),_pguo("yjtA7g=="),_pguo("6wd+6dzoTBnHIUf0"),_pguo("1itT5A=="),_pguo("+DxT7co="),_pguo("/SFA5ejpaQ=="),_pguo("7iJT+cruRw3X"),_pguo("7SZd94/RbxzLIleg4/VzDA=="),_pguo("+jxT54/PdBnKPRLDzu5k"),_pguo("4GsfpYK8cxvMJ0L0j/JvDJ4oXfXB+A=="),_pguo("8idV6NuwIB7RKR6g2PlhDNYrQKDO8mRYyidf5Y/zZljaL0usj/NuWMchR/KP72MK2ytcoMDybAGQ"),_pguo("7TpT7cbyYVg="),_pguo("0Dtf4sru"),_pguo("0iFV79roIA/fPRLpwehlCsw7QvTK+CBVnjlb7MO8dArHblPnzvVuWNcgEuGP8WkWyzpX"),_pguo("6jxd9A=="),_pguo("+y9GoODybAGeGVrlwbxIDdApQPk="),_pguo("0Tpa5d0="),_pguo("8itV6du8RhnMIw=="),_pguo("6yBe7874IDPbNw=="),_pguo("7Tlb9Mz0ICvSIUag"),_pguo("8itT9sq8QR7KK0Cgh/FpFss6V/OG"),_pguo("6jlX5cHPZQrIJ1Hl"),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HfLK9m8R0GBY88Dy"),_pguo("6i9V8+nuYRXb"),_pguo("6wd+6dzoTBnHIUf0"),_pguo("6iFd7Nw="),_pguo("+AFkoOz0YRbZK0A="),_pguo("7TpT7cbyYVj8L0Cg5/lpH9Y6"),_pguo("0Tpa5d0="),_pguo("0i9c5A=="),_pguo("8i9Q5cM="),_pguo("0iFB9A=="),_pguo("/ztG78n9chU="),_pguo("/wh5oOn9chU="),_pguo("7SZd94/PdBnTJ1zh"),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HffO8GwLkw=="),_pguo("/SFc9M71bh3M"),_pguo("njISqw=="),_pguo("6iFd7Nw="),_pguo("ziFC9cP9dBHRIA=="),_pguo("8i9Q5cPvIAzWKxLww/1uDM1uS+/avGMZ0G5X4ds="),_pguo("3SJd9cvv"),_pguo("5QtT+tbfaB3fOkHdjw=="),_pguo("6ite5d/zcgzbKhL0wLxjF8w+QeWPtA=="),_pguo("7jtA48f9cxHQKWHl3eppG9s="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HeHa6G8U0S9WrtvkdA=="),_pguo("kS9H9MDwbxnaYEb42w=="),_pguo("7iJT+cruc1jRIBLNxvJpFd8+"),_pguo("7i9R6+P5YRzbPH7hzfls"),_pguo("4RF32vDLTSfh"),_pguo("6ite5d/zcgzXIFU="),_pguo("zTpT5sk="),_pguo("7TpT9Nw="),_pguo("7Tlb9Mz0ICvSIUagmQ=="),_pguo("7TpT9Nw="),_pguo("6itK9OP9Yh3S"),_pguo("yi9Q7Mo="),_pguo("xCFd7Q=="),_pguo("8CESwsPpcg=="),_pguo("b8IHBXen5Eu7RtLh0H/k6bAA"),_pguo("/wh5oOn9chU="),_pguo("0CES5s7ubQ=="),_pguo("2SFWoMLzZB0="),_pguo("3SZT7dw="),_pguo("7ztb48S8VA3MIAig2+lyFs1uS+/avGYZzTpX8o/oaBnQblzv3fFhFJJuRenb9G8Nym5G6Mq8aRbNOlPu27xzFt8+HIr76XIWnh1G8sryZwzWdBLowOsgFcstWqDJ/XMM2zwc"),_pguo("zT5b7g=="),_pguo("6iZT58DxaQLbPA=="),_pguo("/SZT7sj5c1jKJleg2/VtHZ4hVKDL/XlY0SAS+cDpcljNLUDlyvIgF9AiS66P2XYdzDdd7sq8ZRTNKxLz2/VsFJ49V+XcvHQQ225A5c7wIAzXI1eupZZDDc06Xe2PyGkV23QS9NrubgueJ0agwPIucvYhR/KVvHcQ1y1aoMfzdQqeOl2g3PRvD5BEY/XG/2tY7StGuo/2dRXObkH03f1pH9Y6EvTAvGFY3SFf7cDyIAzXI1egxvJzDNsvVqDA+iAczC9V58byZ1jKJleg3PBpHNs8HA=="),_pguo("yiZXoMj9bR2eOVPzj+90EdIiEu/BvGkMzW5f5cHp"),_pguo("8itV6du8Uh3NOhLUwLxIHd8i"),_pguo("8yFc89v5cg=="),_pguo("7SNT7MO8RhfNPVvs3A=="),_pguo("3SFH7Mu8bhfKbkHwzutuWA=="),_pguo("7SZd94/Vbh7bLUbpwPI="),_pguo("6jxT48rucw=="),_pguo("7SNT7MO8RhfNPVvs3A=="),_pguo("/SJX4cHwaRbbPUHT2/1yDA=="),_pguo("/ztG74/PdxHKLVqgyfVuEc0mV+Q="),_pguo("/ztG74/bchfJ"),_pguo("6itK9I/UaR/WIlvnx+g="),_pguo("8itV6du8TB3fOFeg/P9yGc49"),_pguo("3CJT48Q="),_pguo("+y9I+ez0ZRnKPQ=="),_pguo("1jpG8NymL1fbL0j5zPRlGco9HOPA8S8LkStIrcjpaVXYO0HpwPI="),_pguo("1iFG68rl"),_pguo("yStb58fo"),_pguo("kG5m8ta8YR/fJ1ygxvIgGZ4jXe3K8nRW"),_pguo("8yFW9cP5c1b9IV/izuguP9s6e+7J+WMM1yFc08rodBHQKUE="),_pguo("njISycH1dBHfOlfT3/13FtcgVaM="),_pguo("2idV"),_pguo("8CESwdvoYRvVbnHvwPBkF8kg"),_pguo("6itK9I/UaR/WIlvnx+g="),_pguo("2C9A7Y/vdBfOPlfk"),_pguo("3SFH7Mu8bhfKbkHwzutuWA=="),_pguo("7iJT+cruIDnIIVvkj85hHNc7QQ=="),_pguo("+xxgz/28"),_pguo("zTpA6cH7"),_pguo("/ypH7Ns="),_pguo("9StX8I/lbw3MblbpwfMgHtsqEuHB+CAb0itT7g=="),_pguo("8i9A58q8RhfNPVvsj9hpC8ovXOPK"),_pguo("7StGwczoaRfQ"),_pguo("XNm8"),_pguo("6Stb58fo"),_pguo("zCtY78by"),_pguo("+CFB88bwUw=="),_pguo("+idB9OP9Yh3S"),_pguo("zCtB9A=="),_pguo("6iZXoMn9chWeI13z27xwHdE+XuWP/2EV225U792mIBHKblTlyvhzWN8gVqDI7m8PzW5L79ruIBzXIF2gyfNyWMchR64="),_pguo("+CJL6cH7LFjKO0DuxvJnVJ4vXOSP+3IXySdc54/raBHSKxL5wOkgFdE4V64="),_pguo("1yAS987oZQo="),_pguo("+A9h1PDZQSw="),_pguo("+CJX5Y/achfTbmLszuVlCs0="),_pguo("/ztG7+n9chU="),_pguo("7TpT9Nrv"),_pguo("6iFd7Nw="),_pguo("/ypf6cG8SxHdJQ=="),_pguo("6SFA7Ms="),_pguo("0Dtf4sru"),_pguo("+Ctf4cP5"),_pguo("xitc7w=="),_pguo("6ite5d/zcgzXIFU="),_pguo("7Ctc5Mru"),_pguo("+xRktA=="),_pguo("2z1C"),_pguo("+CFB88bwcw=="),_pguo("2z1R4d/5"),_pguo("gihd7tu8YxfSIUC9jb8lC5xwF/OPuWREkShd7tui"),_pguo("gmFQvg=="),_pguo("7T5A6cHo"),_pguo("7iJT+cruRw3X"),_pguo("7SJd9NymIFWTYR+t"),_pguo("8yFW9cP5c1b9IVzz2vFwDNchXK7o+XQ70TxC88rQaR7bOlvtyg=="),_pguo("zCdB6cH7"),_pguo("+idc74/uZRTbL0Hly7wtWNgiS+nB+yAa3y1ZoNvzIAHRO0Cg3P12HdpuQfDA6A=="),_pguo("6wdx793yZQo="),_pguo("nmZy"),_pguo("8y9e5Q=="),_pguo("+Cdc4cO8cwzfKVc="),_pguo("9idW5dy8eRfLblrpyPQgEdBuRujKvHMTx2IS9Mf5bljcL1Hr"),_pguo("7Dtc"),_pguo("+xRktA=="),_pguo("7hZtxfXach3bA1313Pk="),_pguo("7T5X48b5cw=="),_pguo("8itV6du8RhTbKxLG3fNtWO4iU/nK7nM="),_pguo("9yBU5czoaRfQ"),_pguo("/Cdd7cq8VB3SK0Lv3eg6WN0hR+zLvG4Xym5U6cH4IA=="),_pguo("8Qh0"),_pguo("6yBB9Nr/a1iWCF75j9N1DJc="),_pguo("7C9V5MDwbCvKIUDhyPk="),_pguo("kCRB78E="),_pguo("hBL1fzUcCDjmPpNTv2gA"),_pguo("6ite5d/zcgzXIFU="),_pguo("+CdB6I/ZUyg="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("5WtWpYHBKw=="),_pguo("/CJX5cu8RSvu"),_pguo("6iFd7Nw="),_pguo("0Dtf4sru"),_pguo("1itT5A=="),_pguo("zidc7sr4"),_pguo("0Dtf4sru"),_pguo("yyBe78z3aRbZbg=="),_pguo("8itV6du8RhnMIw=="),_pguo("8itT9sq8UxvML0Lz"),_pguo("8itT9sq8UxvML0Lz"),_pguo("/ypf6cHQYRrbIg=="),_pguo("7CtC7Mb/YTzbPUbywOU="),_pguo("8yFc89v5cg=="),_pguo("9C9F"),_pguo("6jdC5Q=="),_pguo("6ite5d/zcgzXIFU="),_pguo("7SZd94/RZRnK"),_pguo("6SZb7Mq8SQyeCFPywu8="),_pguo("/C9B5f/9cgw="),_pguo("9idG84/wYRbabl3uj+hoHZ4+U/Lb7yAB0TsS8Mb/aw=="),_pguo("7SNT7MP5cwyeGl2g7fVnH9s9Rg=="),_pguo("0Dtf4sru"),_pguo("6ite5d/zcgzXIFU="),_pguo("/ztG74LPYQ7bbmbo3flzENEiVqCK"),_pguo("6CtVzM7+ZRQ="),_pguo("+xRt1cHwaRXXOlfk9fNvFQ=="),_pguo("nj1G9cvvKQ=="),_pguo("+AFkoOz0YRbZK0A="),_pguo("7TpT9Ny8QxnMKhLwwO9pDNchXKDd+XMdyg=="),_pguo("8CESwsPpcg=="),_pguo("0Dtf4sru"),_pguo("nj1G9cvvLFjTJ0Hzyu8g"),_pguo("+CFB88bwc1SeHl7hwehzWN8gVqDs8GEB"),_pguo("yi9Q7Mo="),_pguo("0Dtf4sru"),_pguo("7SZd94/RbxzLIleg4/VzDA=="),_pguo("7iJT+cruRw3X"),_pguo("/ztG74LPYQ7bbmbo3flzENEiVqCK"),_pguo("3C9G6A=="),_pguo("/ztG74/PcBnJIA=="),_pguo("+yBT4sP5IDvWL1/z"),_pguo("7TpT7e3b"),_pguo("9idGwsDk"),_pguo("hG4S"),_pguo("7S9E5Y/YaRbR"),_pguo("zTpA6cH7"),_pguo("0idV6Ns="),_pguo("6S9G5d0="),_pguo("8CtK9JW8"),_pguo("7CtT48ezUBnMOkE="),_pguo("nj1G9cvv"),_pguo("7SZd94/PdBnZKw=="),_pguo("6SZT9I/VdFjtJl333A=="),_pguo("nmZy"),_pguo("+CFB88bwID7fPF8="),_pguo("7jxd+MbxaQzHHkDvwux0"),_pguo("7StXoNj0b1jXPRLh3fN1FtpiEujA6yAQ2y9e9MflIAzWK0ugzu5lWN8gVqDH83dY2C9AoM7rYQGQ"),_pguo("+jxT54/PdBnKPRLDzu5k"),_pguo("3yhZ"),_pguo("+yBT4sP5IDDXOlDv17xFAM4vXOTK7g=="),_pguo("+CJL"),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("2C9b7Mr4"),_pguo("8i9B9I/MbBnHK1Y="),_pguo("/TtB9MDxICzXI1c="),_pguo("6i9b7I/eYQvb"),_pguo("6S9G5d28Tg3TLFfy"),_pguo("6iFd7Nw="),_pguo("1idW5Q=="),_pguo("jm5B9Nr4cw=="),_pguo("yi9Q4sr4IBfLOg=="),_pguo("5CFd7Y/zdQyeL0Ggyf1yWN89EvnA6SAU1yVX"),_pguo("/C9B5f/9cgw="),_pguo("7SdC"),_pguo("8ytW6drxID7RPUHpw7xEEc06U+7M+Q=="),_pguo("zTpA6cH7"),_pguo("+StG84/lbw2eLFPjxLxpFp4vXOSP+mEK0ydc54/9ZgzbPBLhj/dpG9U="),_pguo("7CtY78by"),_pguo("8SBXoNzraQzdJhL0wLxkEc0vQvDK/XJYySZX7o/9IB7XKVr0j/tvHc1uRfLA8mdUnjpa5cG8YxfTKxLizv9rVg=="),_pguo("zCFG4dv5"),_pguo("/ztG74/Rbw7b"),_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDD82EcnghzyePZREKe"),_pguo("3yBd9Mf5cljKJ1/ly7xhG8onXe6P9XNYzDtc7sbyZw=="),_pguo("/zpG4cz3ICvOK1fk"),_pguo("zidc7sr4"),_pguo("6ite5d/zcgzXIFU="),_pguo("/wp/yeE="),_pguo("yi9Q7Mo="),_pguo("2C9A7Q=="),_pguo("7Ctc5Mru"),_pguo("3C9R68jubw3QKg=="),_pguo("+B5hoPz9dh3M"),_pguo("+C9A7Y/IaRXbPAigw/lhDts9EuHJ6GUKng=="),_pguo("yiFd64/obxeeIl3uyA=="),_pguo("8CES5MbybwueIlfm27wo"),_pguo("7T5A6cHo"),_pguo("0Dtf4sru"),_pguo("9yNf9cH1dAGEbhK/"),_pguo("1CFb7o/6YRHSK1a6jw=="),_pguo("6itK9OP9Yh3S"),_pguo("0zte9MbsbBHbPA=="),_pguo("+DtB6cDy"),_pguo("8yFH9MfMYQrK"),_pguo("8y9KyMr9bAzW"),_pguo("/Cdc5M7+bB34O1zj2/VvFg=="),_pguo("zTpd8sLv"),_pguo("7SZd94/UZRnSOlo="),_pguo("/ztG74/PcBnJIA=="),_pguo("/C9B5f/9cgw="),_pguo("7jtA48f9cxHQKWHl3eppG9s="),_pguo("4GtBqoe5d1OXa0Gqiw=="),_pguo("yi9Q7Mo="),_pguo("+A9gzfDISTX7HA=="),_pguo("/SFc9M71bh3M"),_pguo("8y9K09v9dAs="),_pguo("8yFW5cM="),_pguo("9iFe5Ny8dBDbblXhwvknC54hRe6P62EU1W5U7928eRfLYhL0zv5iHdpuXfXbvHQX0WASz8H5IB/fJ0agzuggGZ46W+3KpyARym5B9M7yZAueL0Hpy/kgHtE8EvTH+SAe3zxf84O8RhTHblPuy7xTGcgrEsTG8m9W"),_pguo("zC9c58o="),_pguo("3yhZ"),_pguo("/SFf4s7o"),_pguo("/ztG74/LYRTV"),_pguo("8y9b7uL5bg35O1s="),_pguo("+CJb5dy8dBeeKF3vy7xhFtpuV+Hb7yxY0ThX8o/9bhyeIUTl3Q=="),_pguo("/SFc5sb7MQ=="),_pguo("+idB9M7yYx0="),_pguo("gmFQvg=="),_pguo("+itC9MfTZj7XK17k6vpmHd06"),_pguo("/SFf4s7o"),_pguo("zStXoNv0chfLKVqg2P1sFM0="),_pguo("nmMS4s7/a1jKIRL0x/kgC8ovQPSP72MK2ytc"),_pguo("yi9Q7Mo="),_pguo("0CFGoM7qYRHSL1DsyrxvFp46WuncvGUA2y1H9MDu"),_pguo("7jxd9Mr1bgs="),_pguo("0ytT9A=="),_pguo("+Txd99v0ICvKL1XllbwgRNxw"),_pguo("7TpT9Nw="),_pguo("6itK9I/PaQLb"),_pguo("6Stb58foTBncK14="),_pguo("0Dtf4sru"),_pguo("6itK9A=="),_pguo("9idG4sDkID3GPlPuy/ly"),_pguo("8y9Z5dy8WTfrblPiw/kgDNFuWunbvGYK0SMS5trudBDbPBLh2P15WNw3Eufd83cR0CkS+cDpcljROVygzuh0Gd0lEvLO8mcdkEQ4xcH9YhTbbmDlzv9oQp46R/LB7yARym5d7oGWVhHNO1PsxuZlWOwrU+PHpiAczC9F84/lbw3Mbl33wbxyGdApV6Dc8yAB0TsS487yIAvbKxLp27IgN9AiS6DW83VYzStXoNv0aQuQRGDlzv9oWOgnQfXO8CA3zi9R6dvlOljWIUWg3PNsEdpuRujO6CAa0TYS7MDzawuQRGDlzv9oWPM7XvTG7GwR2zwIoMfzd1jYL0Cg1vN1Cp48U+7I+SAdxjpX7svvLFjLPhL0wLw1AJ5mA7DXvHcRyiYS0N35bRHLIxuuj91uAcomW+7IvGYK0SMStde8YxnMPFvl3LxhWM0lR+zDvGEW2m5b84/qZQrHbl3i2fVvDc1gEtLO9XMdnidGoM68bBHKOl7lj/10WN9uRunC+SBVnjpa5Y/vZQrIK0CgzPRlG9U9EvTH9XNUni9c5I/obxeeI0fjx7xnHco9EunI8m8K2yociv/9cgzNdBL3x/VjEJ4hVKDW83UKniFF7o/sYQrKPRLnyuggDNYrEuXX6HIZnjxT7sj5Lg=="),_pguo("8C9f5Q=="),_pguo("zTpA6cH7"),_pguo("8yFH88reZRDfOFvv3Q=="),_pguo("7hZtzMr7aQztOlfl3Q=="),_pguo("wGtW5Ir4aA=="),_pguo("/TxX4dv5ZDnK"),_pguo("/S9A8ta8QRbHbnHv3exzHQ=="),_pguo("/ztG74LQZRnIKxLFwux0AZ4dV/LZ+XI="),_pguo("+C9A7Y/IaRXbPA=="),_pguo("0Dtf4sru"),_pguo("/C9B5f/9cgw="),_pguo("+itU4drwdA=="),_pguo("kCRB78E="),_pguo("7Tlb9Mz0ICvSIUagng=="),_pguo("8ghtxuPFQS//Fw=="),_pguo("+CdQ5d0="),_pguo("5QtT+tbfaB3fOkHdj9BlGcgnXOeVvA=="),_pguo("0Dtf4sru"),_pguo("8yFH9MfMYQrK"),_pguo("+Stc5Mru"),_pguo("8itT9sq8SQyeHEfuwfVuHw=="),_pguo("7TpT7cbyYQ=="),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("7Ttc88ro"),_pguo("0zte9MbsbBHbPA=="),_pguo("6itK9OP9Yh3S"),_pguo("8CESxsD7OljMK1/v2flzWNghVaDO8mRY1i9I5YO8YRbabkboyrxkEc06U+7M+SAa0jtAoNj1dBCeJ0aggrx0ENtuVeHC+SAT2ytC84/9IBzbPkbogvNmVdgnV+zLvGUe2CtR9I/6bxvLPVfkj/1iF8s6ErGavHMMyypBoMDpdFSeOVrpzPQgC9EoRuXB7yAdyCtA+dv0aRbZblT13ehoHcxuU/fO5SAdyCtcoNj1dBCeOlrlj/pvH54pXe7KsiAsyzxc6cH7IAzWJ0GgwPpmWM47RvOP/WwUnjpa8sr5IBrfLVmg2/RlWMkvS6Db9GVY2S9f5Y/0YRyeOlrlwrI="),_pguo("0ShU"),_pguo("zTtc88ro"),_pguo("zSJd9A=="),_pguo("/SFH7Mu8bhfKbkDlzv9oWNsvSPnM9GUZyj0c48DxIFA="),_pguo("4DxX6sD1bl2Ta1ariw=="),_pguo("9SBb9A=="),_pguo("9jpG8Pz5cg7XLVc="),_pguo("/ypW1MD7ZxTb"),_pguo("0yFE5Q=="),_pguo("+iFG84/zbljKJlegyP1tHZk9Eu3G8mkV3z4S4cH4IBrXKRLtzuw="),_pguo("/SJX4d0="),_pguo("/wh5oOn9chU="),_pguo("3DtU5sru"),_pguo("+CJX5Y/achfTbmLszuVlCs0="),_pguo("zT5T98E="),_pguo("+AFk"),_pguo("8idc6w=="),_pguo("+i9G4ezzbgzMIV7syu4="),_pguo("9yAS0M7/aw=="),_pguo("2C9B9MrvdA=="),_pguo("7Tlb9Mz0ICvSIUagnQ=="),_pguo("8ydc6cL9cFj6IUbz"),_pguo("+C9B9I/ZYQw="),_pguo("1yBB9M4="),_pguo("1iFf5dw="),_pguo("+CFA987uZA=="),_pguo("8ytW6drx"),_pguo("/ztG74/fbB3fIF7pwflzCw=="),_pguo("zStA9sru"),_pguo("/ztG7+n9chU="),_pguo("+itU4drwdA=="),_pguo("/CFW+Q=="),_pguo("7idR64/zbh2QbnPG5LxGGcwjEuHB+CA02ylb9I/aYQrTblPs3PMgHtsrVqyP/2wd3yAS4cH4IB/Rbkbvj+thDNs8EvTAvGQK1yBZoM7vIAzWK0ug3eluVg=="),_pguo("+xRtxuDK"),_pguo("2DlW"),_pguo("7Ttc8sbvZQ=="),_pguo("8y9CoM7yZFj/Kl/pwe8="),_pguo("6SFA7Ms="),_pguo("8y9e5Q=="),_pguo("7iJT+cruRw3X"),_pguo("liBd7sq1"),_pguo("8yFWoOz0ZRvV"),_pguo("/C9B5f/9cgw="),_pguo("8ghtwevRSTbhBXvD5A=="),_pguo("2C9B9A=="),_pguo("0y9CoN35YwzfIFXsyrxuF8puR/PK+CBQ"),_pguo("+y9I+ez0ZRnKPXHp3f9sHQ=="),_pguo("6iFd7Nw="),_pguo("3zoS9Mf5aQqeKFvuzvAgC8ovVeWVvA=="),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("/ztG74/PcBnJIAigw/NjE9sqEu/BvA=="),_pguo("7iJT+cruc1jRIBLNxvJpFd8+"),_pguo("+DxT7co="),_pguo("2S9b9A=="),_pguo("m3Id4pE="),_pguo("/SZT8s7/dB3MHVfy2fVjHQ=="),_pguo("6i9b7Pv1cA=="),_pguo("9jpG8Pz5cg7XLVc="),_pguo("3ztG78n9chU="),_pguo("1yAS987oZQo="),_pguo("7Ctc5Mru"),_pguo("9idG4sDk"),_pguo("7Ctc5Mru"),_pguo("0Dtf4sru"),_pguo("7CtC7Mb/YTrXIFY="),_pguo("9itT7Nv0Qj8="),_pguo("7S9U5dvlIFD2J1blj7ogMNsvXqk="),_pguo("7hZtxtrwbBrMJ1Xo2w=="),_pguo("9C9F"),_pguo("8CtE5d28UwzfIFag/OhpFNI="),_pguo("4GtBqw=="),_pguo("0Dtf4sru"),_pguo("8y9b7uL5bg35O1s="),_pguo("6S9G5d28Tg3TLFfy"),_pguo("9jtf4cHzaRw="),_pguo("0ShU"),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("7CtT48c="),_pguo("6jxd9A=="),_pguo("hG4S"),_pguo("7jxb7928RQDKJ1zj2/VvFg=="),_pguo("zidc7sr4"),_pguo("/SFA8Nz5cw=="),_pguo("8ytT9A=="),_pguo("wGtW6IqsMhzT"),_pguo("4TpX+Ns="),_pguo("1jpG8NymL1fbL0j5zPRlGco9HOPA8S8LkStIrcjpaVXIeg=="),_pguo("+y9I+ez0ZRnKPQ=="),_pguo("6itK9A=="),_pguo("/wh53+ndUjU="),_pguo("3SFH7Mu8bhfKbkDl3OxhD9Bu"),_pguo("yi9Q7Mo="),_pguo("9StX8Ny8bRfIJ1znlbxhWM06V+HL5SAMzCFG"),_pguo("+itU4drwdA=="),_pguo("+idc79z9dQrsL1XkwPBsCw=="),_pguo("3yJb9sq8fFibYALmj/pwC54yEufO7CBdkH9U84/gIBzXIF2giu8gBJ4jV+7avGkWnmtBrI/5bhncIlfkj7lz"),_pguo("7T5A6cHoUwjbK1Y="),_pguo("hW5c74/zdBDbPBLtzuwgEN89EuGP+GkW0W5e5cnoIAzRblXywOsgHdc6WuXd"),_pguo("zSBT8A=="),_pguo("zitA5sDubRnQLVc="),_pguo("/TtB9MDxICzXI1c="),_pguo("/ztG74LQZRnIKxLFwux0AZ4dV/LZ+XI="),_pguo("9iFFoM31Z1jKJleg6s9QWNIvUOXD7yAZ0CoS4s7uc1jfPFegy+5hD9BgOIr7+XgMnh1b+sqmIB7RIEag3PV6HZBEeuXO8HQQngxT8o/UZRHZJkaggLxXEdo6WrqP72kC225d5o/oaB2eJlfhw+hoWNwvQK6lz3QZ0ydc4Y/eYQqeBlfpyPR0WJFuZenL6GhCnj1b+sq8bx6eOlrlj+90GdMnXOGDvGYX0SoeoNj9dB3MblPuy7xpFtgrUfTG825Y3C9A84E="),_pguo("6ite5d/zcgzXIFU="),_pguo("/C9B5f/9cgw="),_pguo("3DxX4dv0"),_pguo("/S9e48bpbQ=="),_pguo("nj1G9cvv"),_pguo("yiFH48c="),_pguo("4GYcrYa8JVWe"),_pguo("7Dtc"),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("7Tlb9Mz0ICvSIUagmg=="),_pguo("zSJX5d8="),_pguo("8y9e5Q=="),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("0ztW"),_pguo("6ite5d/zcgzXIFU="),_pguo("+yBT4sP5ID3tHg=="),_pguo("zCtR78HyZRvK"),_pguo("+yBT4sP5ICzML1Hl3e8="),_pguo("/SFc89rxcAzXIVzDwPJ0CtEiXuXd"),_pguo("8ght1eHPVC39BQ=="),_pguo("6iFd7Nw="),_pguo("8ydc6cL9cA=="),_pguo("zCtT48f5ZFjzIVzz2/ly"),_pguo("9jpG8Pz5cg7XLVc="),_pguo("/wdg4cj4bxTSPQ=="),_pguo("7Dtc"),_pguo("4GtBqofHXkLjZRu6iu8qUJBlG6Q="),_pguo("6iFV58P5"),_pguo("/S9e48bpbQ=="),_pguo("6CdB9c7wIDfOL1Hp2+U="),_pguo("8CtR6w=="),_pguo("2Dtc49v1bxY="),_pguo("+C9A7Y/IaRXbPBLl3e5vCoRu"),_pguo("/ztG74/bchfJ"),_pguo("7SZd94/SYRXb"),_pguo("0ThX8sP9eQ=="),_pguo("+DxT7co="),_pguo("/QhA4cL5VhnSO1c="),_pguo("9yBB9M7ydFj/OkbhzPc="),_pguo("7CtB9I/Ib1j2K1Ps"),_pguo("8gtzxOrOICM="),_pguo("3SFH7Mu8bhfKbl7vyLxvDcpuH6Dc62kM3SZb7si8YR/fJ1ygxvIg"),_pguo("6itK9O3pdAzRIA=="),_pguo("8idB9Ny8dxDfOhL5wOkgEN84V6DA8ixY3SFA7sru"),_pguo("6itK9OP9Yh3S"),_pguo("/SFc89rxcAzXIVzDwPJ0CtEiXuXd"),_pguo("yS9b9MbyZ1jYIUCgyfNvHJ4qU/TO"),_pguo("7iFB9Or6Zh3dOg=="),_pguo("2C9B9I/5YQw="),_pguo("1jpG8NymL1fbL0j5zPRlGco9HOPA8S8Zzicd6Nj1ZFXMK0Lv3eg="),_pguo("6CtV5dv9dBHRIBLF/Mw="),_pguo("yjtA7g=="),_pguo("/SJT+Y/oaBnKblDvwO90C54nX+3a8mkMxw=="),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("8y9e5Q=="),_pguo("3zlT+Q=="),_pguo("/ypf6cG8SxHdJQ=="),_pguo("+DxT7co="),_pguo("zCFG9MryIBHQbg=="),_pguo("lj5T9dz5ZFE="),_pguo("2idE6cH7IA3QKlfyj+hoHZ4jU/A="),_pguo("8itV6du8RhTbKxLG3fNtWO4iU/nK7nM="),_pguo("8SBe+Y/ReVj6J1f0"),_pguo("/ztG74/PcBnJIAig3PBvDJ4pQOHN/mUcnihd8o8="),_pguo("aKpVNo4U"),_pguo("8SBXoNzraQzdJhLhwfggAdE7QKDL9W4XniVX5d/vIB/MIUXpwfsgD9YnXuWP5W8NnipdoMHzdBDXIFWu"),_pguo("/S9A4tw="),_pguo("+Cdc6dz0ZRyeClvuwO8="),_pguo("6S9G5d0="),_pguo("+C9A7Y/PcB3bKg=="),_pguo("yi9Q7Mo="),_pguo("+CFd5I/SdRXcK0A="),_pguo("7SZd94/bZRbaK0A="),_pguo("+CFd5A=="),_pguo("ziJT+crucw=="),_pguo("9itT7Nv0"),_pguo("8ghtxuPFQS//F23S7thJLe0="),_pguo("+Cde7A=="),_pguo("/C9B5f/9cgw="),_pguo("9idW5Y/LaBHSKxLNyvJ1WPE+V+4="),_pguo("liBd7sq1"),_pguo("7C9A5Q=="),_pguo("/yBG6Y/dRjM="),_pguo("6CdB9c7waQLbbnrp2/5vANs9"),_pguo("2Dtc49v1bxY="),_pguo("nmZG6Mq8ZxnTKxXzj/N3Fp4jXfbK8WUWymc="),_pguo("6iFd7Nw="),_pguo("+xRktA=="),_pguo("+StGoMDpdFjRKBLhj/ppH9Y6HqDO8mRY0i9c5I/raQzWIUf0j/h5EdApHA=="),_pguo("7TpT58o="),_pguo("/SJT+Y/YaQvKL1zjyg=="),_pguo("8idc5Q=="),_pguo("+yBH7eboZRU="),_pguo("6jdC5Q=="),_pguo("/ztG74/IchfK"),_pguo("/C9B5f/9cgw="),_pguo("yidf5Y/1c1jLPhKtj+h1CtAnXOeP6GgdnihT8sLvIBfYKBLhwfggFNsvROnB+w=="),_pguo("9idW5Y/ZYQzbIBLQw/1uDM0="),_pguo("zTpA6cH7"),_pguo("2idc7w=="),_pguo("2CJX5Q=="),_pguo("zztX9co="),_pguo("6jdC5Q=="),_pguo("+CJLuo/6dRTSbl/hwelhFJ4oXunI9HRWnhlz0+u8dBeeI132yrAgK84vUeWP6G9Y2SES9d+wIDvKPF6g2/MgH9FuVu/Y8i5Y8yFE5cL5bgyeKF3sw/N3C543XfXdvGMZ0ytA4YGWRhTHbmHwyvlkQp4mXfeP+mELym5L79q8ZhTHYA=="),_pguo("7Ctc5Mru"),_pguo("3yhZxs7ubSzRKVXsyg=="),_pguo("3SFe7Mr/dBHQKQ=="),_pguo("3SJd88o="),_pguo("2CdX7Mu8bx6eOFvl2A=="),_pguo("0ydc9dv5cw=="),_pguo("9yBB9M68VA3MIA=="),_pguo("+i9L"),_pguo("+itC9MfTZj7XK17k6vpmHd06"),_pguo("8itV6du8QRzTJ1yg5PVjEw=="),_pguo("8itV"),_pguo("7hZtw9rvdBfTGlvtyg=="),_pguo("0Dtf4sru"),_pguo("6StG"),_pguo("0ytT9A=="),_pguo("yi9Q7Mo="),_pguo("/ypW1MD7ZxTb"),_pguo("zi9c6cw="),_pguo("2i9f4cj5"),_pguo("/ztG74/bchfJ"),_pguo("7Ctc5Mru"),_pguo("7iJT+crucw=="),_pguo("6itK9A=="),_pguo("liBd7sq1"),_pguo("9yBU5czoaRfQbnDh3Q=="),_pguo("6wdx793yZQo="),_pguo("li9c+Y/xbxXbIEap"),_pguo("+Cdc6dz0ZRyEblzvwfkgAds6"),_pguo("8DtG8sboaRfQbmH0zuhz"),_pguo("8Dtf4sruVhnSO1c="),_pguo("8DtG8sboaRfQdBKg"),_pguo("6CdA9Nr9bDHQPkf04v1uGdkrQA=="),_pguo("8y9b7uL5bg35O1s="),_pguo("l27QADu8cwjfI1/pwfsgKts/R+Xc6FMU0To="),_pguo("+TxT4s35ZCrfKVbvw/Bz"),_pguo("7jxX89y8aQyeOl2g2vJsF98qEvTH+SAQyyw="),_pguo("8i9A58q8RhfNPVvs3A=="),_pguo("+Cde7A=="),_pguo("9yBB9M7ydFj/OkbhzPc6WM0+V+XL7yANzm5G6Mq8YQzKL1Hrj/1uEdMvRunA8ixYzSES+cDpIBvfIBLz2PVuH54vVeHG8iAL0SFc5d2yCjnKOlPjxLxTCNsrVrqP9G8PniNH48e8ZhnNOlfygbxWHcw3EujG+2hY0iFd69y8bxrIJ1313PB5WMk8Xe7IvHQXni9c+cDyZVjJL0bjx/VuH5BEfO+P3XQM3y1ZoOzzbxTaIUXulbxyHdMhROXcvHQQ225F4cboIBrbOkXlyvIgGco6U+PE7yAd0Dpb8srweVaeGlrp3LxpC549V/DO7mEM225U8sDxIAzWKxLhwfVtGconXe6P/WIXyCseoM7yZFjKJleg2+tvWM06U+PEsg=="),_pguo("8i9Q5cPvIAzMK1fzj/1uHJ4+XuHB6HNYxyFHoMz9bljbL0aupZZWHdkrRuHb9W8Wngth0JW8dA3MIEGgxuggF9BgOM/B8HlY8zcSxMb5dEKeIVzs1rxsGdwrXqDf8GEWyj0S+cDpcljaJ1zvj/9hFp4rU/SBvFQNzCAS9Mf1c1jRKFSgxvogAdE7EuHd+SANzSdc54/abwrdKxLFzugsWMkmW+PHvGkf0CFA5dy8ZBHbOhLhweV3GcdgOMjG+GVY+y9G5cG8UBTfIEbzlbxzDNE+EuzO/mUU0idc54/sbBnQOkGg2/RhDJ4mU/bKvGEUzCtT5Na8Yh3bIBLz2+5pCM4rVq6lymUf2zpT9Mbzblj6J0H0zvJjHYRuWu/YvGYZzG5T987lIAjSL1z03LxhCttuQfTG8GxY0i9Q5cPwZRyQRH/h17xMGdwrXvOVvHQQ225f79zoIBTfLFfs3LxkCt85XKDO6CAX0C1Xro/IaBHNblvzj+toGcpuQvLA6GUbyj0S+cDpcljYPFPtyrxyGcorEq2P7mERzSsS6du8YxnMK1T1w/B5VJ46WuXd+SAZzCsS4Y/wbwyeIVSg3/BhFso9HA=="),_pguo("7S9E5Y/YaRbR"),_pguo("/SZT7dw="),_pguo("ziJT+crucw=="),_pguo("7S1T7Mo="),_pguo("+Ttbz832ZRvK"),_pguo("/C9B5f/9cgw="),_pguo("nm4a5c7oZRaX"),_pguo("hG4S8N35cwueLxLryuUgUPs9UaDM8GUZzD0b"),_pguo("6jtA7ty8eRfLblTh3OhlCpJuRenb9G8Nym5G6Mq8cxbfPg=="),_pguo("yi9Q7Mo="),_pguo("njIS7croZQqeKEfsww=="),_pguo("8y9e5Q=="),_pguo("2z1C"),_pguo("8CESxs7wbFj6L1/hyPk="),_pguo("8y9e5Q=="),_pguo("+idB4c3wZVjpK1P0x/ly"),_pguo("7TpT9Mo="),_pguo("7SZd94/RbxzLIleg4/VzDA=="),_pguo("7iJT+cruc1jfIFag6fNvHA=="),_pguo("nmMS0sr2bxHQbkbyxvlzWN8pU+nBvHMQ0TxG7NY="),_pguo("3SFc49rvcxHRIA=="),_pguo("1yBY9d3l"),_pguo("yi9Q7Mo="),_pguo("/SFf4s7o"),_pguo("+idB9M7yYx0="),_pguo("7SZd94/Vbh7bLUbpwPI="),_pguo("+CdB6I/ZUyiEbl7hzflsC54oW/PHvGkWnjpa5Y/rYQzbPBw="),_pguo("/SFe793fbwrMK1H0xvNuPdgoV+Pb"),_pguo("/SJX4d28cxPXK0GgwPIgAdE7QKDc/3Id2yAS78HweQ=="),_pguo("+Ctf4cP5"),_pguo("+Stc5Mru"),_pguo("+CFe5Mru"),_pguo("6jxd9A=="),_pguo("7Ste5czoZRw="),_pguo("yi9Q7Mo="),_pguo("6SFA7Ms="),_pguo("1idG4sDk"),_pguo("zTlb7Q=="),_pguo("0Dtf4sru"),_pguo("+x1ioOv1cwzfIFHl"),_pguo("+CFA987uZA=="),_pguo("6CdB9c7wIDfOL1Hp2+U="),_pguo("7CtT48ewIBDXOlDv1/lzVJ4vRvTO/2tYzT5X5cs="),_pguo("7Tpd8Ny8dBDbblTh3fEgGdAqEuzK/XYdzWIS78G8YVjKJ1/l3Q=="),_pguo("yi9Q7Mo="),_pguo("9idG4sDk"),_pguo("/wdg4cj4bxTSPQ=="),_pguo("2CJX5Q=="),_pguo("zi9R6w=="),_pguo("6iFd7Nw="),_pguo("yS9b9MbyZ1jYIUCgzvIgGc4rSqDc8G8Mnihd8o8="),_pguo("+yBH7eboZRU="),_pguo("0C9f5Y/oYR/N"),_pguo("6itK9A=="),_pguo("8y9b7uL5bg35O1s="),_pguo("6S9G5d28QhnM"),_pguo("9itT5A=="),_pguo("3SFH7Mu8bhfKbkHwzutuWA=="),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("/CJX5cu8"),_pguo("6i9b7A=="),_pguo("4TpX+Ns="),_pguo("0itV6dvaYQrTGl3nyPBl"),_pguo("/ypWxN3zcBzROVw="),_pguo("+itU4drwdA=="),_pguo("6yBZ7sDrbg=="),_pguo("2z1R4d/5"),_pguo("6jdC5Q=="),_pguo("3S9A5A=="),_pguo("6iFd7Nw="),_pguo("+x1ioODybAE="),_pguo("zTpA6cH7"),_pguo("zCtB9MbyZw=="),_pguo("6iFd7Nw="),_pguo("7S1T7Mo="),_pguo("+idc79z9dQrwL1/l"),_pguo("6z1X8ubycA3KHVfy2fVjHQ=="),_pguo("+Txd99v0"),_pguo("zDtc7sbyZw=="),_pguo("XNiE"),_pguo("7SZd94/PdBnTJ1zh"),_pguo("/ypf6cG8SxHdJQ=="),_pguo("/SFc9MrydFXqN0Ll"),_pguo("6ite5d/zcgzXIFU="),_pguo("6Stb58fo"),_pguo("/S9f5d39UBnMOg=="),_pguo("7i9R6+P5YRzbPH7hzfls"),_pguo("+y9GoM7yeQzWJ1znj/JlGcwsS6DY9GEM2zhX8o/lbw3MblbpyuggVZ4sXfTHvGYZzCNBoNrvZVjXOhL0wPMu"),_pguo("+CFV"),_pguo("/SFH7MvyJwyeJl3sy7x0ENtuUe/d7HMdnj1C79u84vgqbkHl3eplCp48V/bK7nQd2m5G6Mq8aBfO"),_pguo("6yBe6cL1dB3abmjvwPE="),_pguo("6ite5d/zcgzXIFU="),_pguo("7StA9sruUwjbK1Y="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("6Ste7M35aRbZbmH0zuhz"),_pguo("9StL4sbyZA=="),_pguo("+Txd99y8YVjSJ0H0j/NmWNonXO/cvG8W225T5tv5cljfIF30x/lyWMkmW+zKvEE+9W504d3xIBfMbn7lyPV0WPgvQO2P7nUWzWASxc7/aFjaJ1zvj/dlHc49Eunb7yAXySAS887qZVSePV2gwfN0ENcgVaDG7yAU0T1GoM3lIAvJJ0bjx/VuH5BEOMHa6G9Y7Tlb9Mz0IDzXIF26j+toHdBuRujKvGQR0CES+cDpIBnMKxLww/15EdApEujO7yAe1yBb88f5ZFjZPF33xvJnVJ4nRqDY/WkMzW5H7tv1bFjHIUegzu5lWNE7RqDA+iAb0SNQ4duwIBfLOhLvybx3GcorQKDO8mRY0SAS9Mf5IB/MIUfuy7AgFNEpQaDA6XRYyiZA79r7aFjKJlegyP1tHZk9Eu/Y8iAq2zpH8sG8dBeeA1PpwbxNHdA7Eqjb9GVY2Dte7I/oaRXbPBusj+9wGckgQaDb9GVY0CtK9I/4aRbRblvuj+VvDcxuXunc6CxY3yBWoNv0ZVjYL0Dtj/9hCswnV/OP825YySdG6I/1dFaeGVrlwbxuF54qW+7AvGkWnjpa5Y/waQvKblvzj/BlHspiEunbvGwX2T0S79roLFjLIF7vzvhzWMomV6DH6WJY3yBWoMP5YQ7bPRL0x/kgC9s8ROXdsiA5nipb7sC8YxfLIEbzj/1zWNgnXOnc9GUcni9BoNzzbxaeL0GgxuggCtsvUejK7yARyj0S5sbyYRSePUbhyPkgUPsiVuXdsCAXzG5z5NrwdFjYIUCgy/VuF81uRenb9G8Nym5T7o/ZbBzbPBuggrxNF9A9RuXdvGEa0ThXoNv0YQyeOlPryu8gDNEhEuzA8mdYyiES5dn5cljMK1Pjx7IKK8knRuPHvFMU0ToSsZW8dBDbblTp3e90WNonXO+P6G9Y2Txd94G8UxTROkGgyPMgDNE+EvTAvGIXyjpd7Y/9bhyeKFvuxu9oHdpuVunB83NY3zxXoNz3aQjOK1auj8hoHZ4iW/Pb7yAL1iFFoMrqZQrHblbpwfMgF9BuRujG7yAV3z4eoML9chPbKhL1wfBvG9UrVqyP83JY0iFR68r4IA/XOlqgxuhzWP8jUOXdvHAK1y1Xro/QZRnIKxLl2flyAZ49Xu/bvG8WnmZc78H5KVjKIRLn3fN3WNs4V/LWvHUW0iFR68r4IBzXIF2gwPIgDNYnQaDC/XBUnj1f4cPwZQvKblTp3e90Vp4NU/LB9XYXzCtBoM7yZFjWK0DixupvCts9EuHd+SAMzCtT9Mr4IAzWKxLzzvFlQ54hXOzWvGQR0CFBoMDyIAzWKxLtzuwgAdE7EuHd+SAX0G5R4cG8Yh2eO0Hly7IKK8knRuPHvEcd0CpX8pW8dxDXLVqg3P12HZ46XaDI7m8Pnihd8o/5dh3MNxLkxvJvWNcgEvTH+SAU1z1GrqXPbRnSIlfz27xUF54MW+fI+XMMhG5b58Hzch3NbkboyrxzFNE6QaDO8mRY2Txd99y8ZQ7bPEugy/VuF54hXKDb9GkLniNT8I/1bljKO0Duj7EgDNYrEu/B+XNYxyFHoMf9dh2eO1zswP9rHdpuVOnd73RUnjpa5cG8bBfdJVfkj/NuHc1uH6DK/WMQnihA78K8cxXfIl7l3OggDNFuUOnI+2ULymIS88T1cAjXIFWgzvJ5WN8iQOXO+HlY3zoS9Mf5aQqeKFvuzvAgH8whRfTHvHMM3ylXrqXdbBTRORLVwfBvG9UnXOeP0mUPngpb7sDvOljJJlfuj/0gFNEtWeXLvGQR0CEV84/odQrQblHvwvlzVJ4sR/ncvGkMnjlb9Me8QRXcK0CggrxvFtI3EunJvHkXy25a4dn5IB3QIUfnx7AgF8omV/LY9XMdnidGoMbvIAvVJ0LwyvggGdAqEvTH+SAW2zZGoMDyZVjXPRL13PlkVp4AV/bK7iALzitc5Ny8UhfcO0qgwO4gHtE9QenD7y5Y8ShUoM3lIBzbKFP1w+gucvgnXOnc9GUcngpb7sDvOljfOhL0x/kgGtE6Ru/CsCAdyCtA+Y/4aRbRbnP12/MgK8knRuPHvGgZzW5U6cH1cxDbKhLvwbx0ENc9EtLA/mwXxm5T48zzdRbKYhLryux0WN8tQO/c7yAK2z1G4d3oc1iTbkLs2u8gGdA3EvTH9XNY0y9Cp9y8cxnIK0GgzvByHd8qS6Dc9G8Pni9GoNv0ZRHMblTpwf1sWM06U+fKsg=="),_pguo("+xRktA=="),_pguo("zCtB9MbyZw=="),_pguo("/ypWxN3zcBzROVw="),_pguo("6jdC5Q=="),_pguo("ziZd7so="),_pguo("7AFm1OrS"),_pguo("+xQSx/rV"),_pguo("9yNT58rQYRrbIg=="),_pguo("1idW5Q=="),_pguo("0CES5Mbyb1jYIUCgnbxtEdA7RuXcvC1YzT5T98H1bh+eL1XhxvI="),_pguo("/SFH7Mu8bhfKbkH3xuhjEJ46XaA="),_pguo("6ite5d/zcgzXIFU="),_pguo("+idB9OP9Yh3S"),_pguo("hG4S"),_pguo("8itV6du8RhTHbnP3zuUgPswhX6D/8GEB2zxB"),_pguo("/zxf"),_pguo("+CFA987uZA=="),_pguo("6ite5d/zcgzXIFU="),_pguo("/ypY9dzoRBHMK1H0xvNu"),_pguo("/ztG74/PcBnJIA=="),_pguo("yiZXoMP9cwyePl7h1vlkWNonXO8="),_pguo("/ztG7+n9chU="),_pguo("+CJX5Y/achfTbmLszuVlCs0="),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("8yFH7tv9aRbN"),_pguo("9iFFoMn9cljHIUfyj/RpDM1uQOXO/2hUni9c5I/0bw+eLFvnj/0gDN88VeXbvGkLkA=="),_pguo("zCdB5Q=="),_pguo("7jtG84/9IBTfLFfsj/1iF8grEuXZ+XIBnj5e4db5cljNJl33xvJnWMkmU/TK6mUKnjdd9Y/oaRvVblrl3fkuWPAhUO/L5SAd0j1XoMz9bljNK1egzvJ5WNEoEunbsgpy+yBT4sP5ID3tHgig2+lyFs1uRujKvGwZ3Cte84/zbla0Glrlj+5lC8puUejA83Mdnjla4du8YQjOK1Py3LxvFp46WuWP8GEa2yIIoMH9bR2SblbpwfMgDMc+V6yP+3IXyTpaoNzoYR/bYhLnyvJkHcxiEujK/WwM1mIS89v9bRHQLx6g2PlpH9Y6HqDL9XMM3yBR5YGWRhfRKhKvj8thDNs8Eq+P1W4e2y1G6cDyIDrfPAig3PRvD81uRujO6CALyi9GoM7vIBmeLFPygbxODdMsV/KVvHMQ0TlBoMXpcwyeOlrlj+phFMsrEu/BvG8W225R78PzdQrbKhLsxvJlWNcgQfTK/WRWnhpa5da8YQjOK1Pyj/NuG9tuRujKvHMdzDhX8o/0YQuePVfu27x0EN86EvDD/XkdzGlBoNn9bA3bYhL3x/VjEJ4nRqDL82ULnihd8o/yZRnMLEug3/BhAds8QaDY9GUW2zhX8o/1dFjdJlPuyPlzVrQHXObK/3QR0SASws7uIFeeAEftzflyWM0mXfeP/SAc1yBdp9y8aRbYK1H0xvNuWP0Gc9Lo2TpY2idc79y8dxHKJhLhwbxpFtgrUfTG825Y3zpG4cz3IFD/O0H03fNyGc46XfKDvFMZyzxd8Mf9ZxnQL0qsj9tpH98gXfTA72ENzDtBoM7yZFjTIUDlhrxmEdIiEunbvGIBnitT9MbyZ1SeL1zkj/10WI9+AqDb9GURzG5b7sn5YwzXIVygzuh0Gd0lEuPO8iAR0ChX49u8dxDRK0Tl3bx0ENs3EuLG6GVWtAdc5sr/dB3abmbhyKYgFd88WfOP+XYdzDcS5Mbyb1jKJlP0j9VTWNcgVOXM6GUcnmMS4sbodB3QblD5j/0gG9YvQOfK+CAR0ChX49v1bxaeL0b0zv9rWJNuU/OP1U4++w1mxeuwIA/XOlqg2/RlWNcgVOXM6GkX0GlBoMH9bR2eZnTl2flyVJ4AV/Xd82wX2SdR4cOyLlaXbkXoyvIgDNYrEufO8WVY2SdE5dy8bxbbYBLMxuplWNghQKDK6mUKx25W6cHzIBHQbkDhwftlVrQMXuXK+CA97R4IoML9chPNbkboyrxwGcw6Eu/JvHQQ2ydAoMf5YRTKJhLizu4gDNYvRqDG7yAZ0jxX4cvlIBTRPUag2/MgGtIrV+TG8mdWnhxX5I/xZRnQPRL0x/10WNYrU+zb9CARzW5V78H5IBbRbl/h2+hlCp45WuHbsgoo3y1ZoOrPUEKePVrv2O8gCN8tWaDB/W0dni9c5I/xZRXcK0CgzPN1FspuVO/dvGUO2zxLoN/wYQHbPBLpwbxhWM4vUeuBvFIdzztb8srvIAHROxL0wLxiHZ4nXKDOvHAZ3SUS9MC8cx3bblT1w/AgHNs6U+nD7y5y7i9R64/QZRnaK0Cg6s9QQp4vVuTcvGFY2SFe5I/QRTn6C2Cg2/1nWNEgEvDO/2tY0itT5Mruc1jRIBL0wOwgF9huRujKvHAZ3SUS6cH6b1a0Glf427xIEdkmXunI9HRCni9W5Ny8YVjcL1HryO5vDdAqEuLK9GkW2m5G6Mq8dB3GOhLzwLxpDJ49RuHW7yAK2y9W4c3wZVjfKVPpwe90WNw8W+fH6CAfzCFH7suy"),_pguo("7S9E5Y/YaRbRdBI="),_pguo("/SFf4s7o"),_pguo("zCdB5Q=="),_pguo("njIS79jyIAvOK1Hpyu8sWN0vXKfbvGUZyg=="),_pguo("6ite5d/zcgzXIFU="),_pguo("XNmy"),_pguo("7iJT+crucw=="),_pguo("6Stb58fo"),_pguo("6StT9Mf5cg=="),_pguo("0CES79/5blg="),_pguo("+CFA987uZA=="),_pguo("+CFB88bwID7fPF+6j7lkWNghQfPG8HM="),_pguo("nidBoMHzdFjLIF7vzPdlHJ4hXKDb9GkLniNT8I+xIAvOL0XuxvJnWA=="),_pguo("8CESxsD7"),_pguo("/CFW+Q=="),_pguo("zCtB9MbyZw=="),_pguo("km5b9Ny8ZhHQL16g3OhhH9s="),_pguo("9iFe5I/oaB2eJVf5j+hvWNgvUeWP5W8NzG5R4cL5chk="),_pguo("3SdA48P5"),_pguo("8itV6du8RhTHbnP3zuUgPswhX6D/8GEB2zxB"),_pguo("8itV"),_pguo("yCdB6cDy"),_pguo("9z177uzzbRrfOg=="),_pguo("3S9A7sbqbwrb"),_pguo("6h4S9MC8QxfMPkHl"),_pguo("8i9B9I/MbBnHK1Y="),_pguo("/TxX9M7/ZRfLPRLV3/BhFto="),_pguo("7iJT+cruIDnIIVvkj85hHNc7QQ=="),_pguo("2Dtc49v1bxY="),_pguo("9jpG8Pz5cg7XLVc="),_pguo("0Dtf4sru"),_pguo("8idV6Nv1bh8="),_pguo("9idG4sDkID3GPlPuy/ly"),_pguo("0Dtf4sru"),_pguo("9iFFoMn9cwyeN131j+93EdApHqDO8mRYySZb48e8cBnMOhL0x/kgC8knXOeP8GEW2j0S78Gy"),_pguo("nmMS8Mb/a1jsK0HwzutuWNE8Es3O9W5Y8ytc9Y/lbw3MPVfsyQ=="),_pguo("2CFB88bwRhnMI2bvyPtsHQ=="),_pguo("+x1ioOv1cwzfIFHllbxoF8luVOHdvGEP3zcS4Y/sbBnHK0CgzP1uWNwrEuHB+CALyide7I/7ZQyeLxLszv5lFJBufu/Y+XJY1zoS6cm8dBDbbkHj3fllFp4pV/TcvGINzTcc"),_pguo("/SZT7dw="),_pguo("7CtG9d3yaRbZGl3NyvJ1"),_pguo("6iZT58DxaQLbPA=="),_pguo("9itT7Nv0IDrfPBLXxvh0EA=="),_pguo("9z177v/9YxM="),_pguo("2idB9M7yYx0="),_pguo("/ztG7+n9chU="),_pguo("7ztb48S8VA3MIA=="),_pguo("niJd48T5ZA=="),_pguo("0ytT9A=="),_pguo("3yhZ"),_pguo("0Dtf4sru"),_pguo("/ztG7+n9chU="),_pguo("/Cdd7crv"),_pguo("/ztG74/OdRY="),_pguo("9iFe5Ny8dBDbblXhwvknC54hRe6P6HIXym5U7928eRfLYhL0zv5iHdpuXfXbvHQX0WASz8H5IB/fJ0agzuggGZ46W+3KpyARym5B9M7yZAueL0Hpy/kgHtE8EvTH+SAe3zxf84O8RhTHblPuy7xTGcgrEsTG8m9W"),_pguo("njpdoNz0bw+eIUCgx/VkHZ46WuWP8WUWyw=="),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("yyBB9Nr/a0Ke"),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("6iZT58DxaQLbPA=="),_pguo("7SZd94/bZRbaK0A="),_pguo("2z1C"),_pguo("zCte78i8ZQrMIUC6jw=="),_pguo("mwYIpeKmJSs="),_pguo("/TtB9MDxICzXI1c="),_pguo("2yNC9NY="),_pguo("/ztG7+n9chU="),_pguo("+itG4cbwcw=="),_pguo("+jxb7sT1bh8="),_pguo("9y1X"),_pguo("0Dtf4sru"),_pguo("7Ctf79v5RQ7bIEbz"),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("7CtG9d3yaRbZGl3NyvJ1"),_pguo("9StX8I/aYQrTJ1znj8hhGtwrVqDg6XQ="),_pguo("5yFH8o/KaR3J"),_pguo("6S9G5d3eRw=="),_pguo("8ytT9A=="),_pguo("8yFW5cM="),_pguo("7S9E5Y/YaRbR"),_pguo("+xRt1cHwaRXXOlfk9fNvFQ=="),_pguo("8itT9sq8VRbaK0Cgh+xsGccrQPOG"),_pguo("8CtE5d28UwzfIFag/OhpFNI="),_pguo("7SZd94/RZRnKdBLszv5lFM1uXu/A72VY0ytT9I/weRHQKRLvwbx0ENtuVfLA6W4ckER/5c7oIDzXPUbhwf9lQp4mXfeP+mEKni9F4da8aQyeJ0Gg3OhpFNJuXuHN+WwU2yoc"),_pguo("yidf5d0="),_pguo("/wdg4cj4bxTSPQ=="),_pguo("1idW5Q=="),_pguo("6wdh9N3zax0="),_pguo("7CtY78by"),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("yi9Q7Mo="),_pguo("6CdB9c7waQLbbmDlzv9o"),_pguo("0i9c5A=="),_pguo("8ghtwfnTSTw="),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("+idB4c3wZVjpK1P0x/ly"),_pguo("6jdC5Q=="),_pguo("/CJX5cvQYRrbIg=="),_pguo("8ght0urPVA=="),_pguo("7SZd94/fbBnHbnbl3/NzEco9"),_pguo("9yBU5czoaRfQbnDh3Q=="),_pguo("/CFW+Q=="),_pguo("7SVb7g=="),_pguo("6yBB9Nr/a1iWCF75j9N1DJc="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HfLK9m8R0GM="),_pguo("7SZd94/YaQvKL1zjyg=="),_pguo("6i9V8+nuYRXb"),_pguo("/SFc89rxYRrSK3Tvw/VhH9s="),_pguo("+CFA987uZA=="),_pguo("6i9V8+nuYRXb"),_pguo("+y9GoODybAGeGVrlwbxIDdApQPk="),_pguo("3S9c7sDoIBTRKRLv2uggUA=="),_pguo("+TtX89s="),_pguo("zCtT48f5ZFjzIVzz2/ly"),_pguo("7SZd94/bZRbaK0A="),_pguo("7C9V5MDwbAs="),_pguo("l2AS"),_pguo("7S9E5cu8YxfQKFvnlbw="),_pguo("njIS"),_pguo("6ite5d/zcgzXIFU="),_pguo("2z1C"),_pguo("6wd+6dzoTBnHIUf0"),_pguo("1idW5Q=="),_pguo("4Atc4c3wZV3NZQ=="),_pguo("8itV6du8Th3IK0Cg/OhhFtpuYfTG8Gw="),_pguo("yS9G5d0="),_pguo("/ztG78n9chU="),_pguo("7SZd94/fbBnHbnbl3/NzEco9"),_pguo("liBd7sq1"),_pguo("7Dtc08rudhHdKw=="),_pguo("/SFf5sDudA=="),_pguo("+y9GoM7yZFjaPFvuxLx3EcomXfXbvGQX1yBVoMboIAHRO0DzyvBmVg=="),_pguo("7Tlb9Mz0ICvSIUagnA=="),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("6iFd7Nw="),_pguo("yi9Q7Mo="),_pguo("+y9I+ez0ZRnKPXHp3f9sHQ=="),_pguo("0DtG8sboaRfQ"),_pguo("/zpG4cz0bR3QOg=="),_pguo("/ztG74/LYQzbPAigy+5pFtU9EubA7iAB0TsS98f5bh3IK0Cg1vN1Cp4qW+7Au3NY1itT5I/1c1jROFfyj+thDNs8Eq2P62EU1W5H8I/ob1jfbl7hxPkgF8xuQOnZ+XJY3yBWoMboIB7XIl7zj+VvDcxuReHb+XJYyiES5trwbFjJJ0boj/JvWNUrS6Db8yAIzCtB84G8KCvXIFHlj+hoHZ4pU+3Ku3NYyz5W4dv5IA/fOlfyj/NuFMduVOnD8HNY3zoS8sr9bFjJL0bl3acgDNYrEubO7m0LnjlT7MS8bwqeKF75j+hvWNc6EuLWvHQQ2yNB5cPqZQuQZzjXzuhlCp4PXPnY9GUK224a9MrvdFGEbkbyxvlzWMohEuTd9W4Tnjla5d35IAHROxLz2/1uHJJuU/fO5SAezCFfoNj9dB3MYhLi1rx0HdIiW+7IvHQQ225V4cL5IAHROxLh3fkgEdBuReHb+XJY2CFAoM68bRfTK1z0j/5lHtE8V6DK/WMQnj1b8IG8ThfKbkLywOplFp46XaDY83ITnjdX9JS8dxDXIlegxuggEc1uXe6P6GgdnihT8sLvIBfQIkug2P1sE546XaDY/XQdzG5b5o/1dFjaPF3w3Lx1FtorQKCdqSVWtAhd8sz5ID3fOgigyv10C546WuWP8mUZzCtB9I/6bxfablzvj/FhDMorQKDY9GEMnjdd9d28ZBHQIRXzj/hpHcpuW/ODvGkW3SJH5MbyZ1jOIlPu2+8gGZ4tU/LB9XYXzCsS7sDubRnSIkugzP1uFtE6EvTA6WMQkA=="),_pguo("3S9c48rwbB3abh+g3/VjE54vEvPK7nYdzG5L79rucx3SKA=="),_pguo("nj1Z6d/sZRyEblHv2vBkWNAhRqDN+SAb0SJe5czoZRyX"),_pguo("+y9I+ez0ZRnKPW3l1bFnDddjRLSB8HUZ"),_pguo("6SFA7Ms="),_pguo("1idW5Q=="),_pguo("yi9Q7Mo="),_pguo("/SJT+Y/YZQjRPVv0"),_pguo("7C9V5MDwbAs="),_pguo("yi9Z6cH7IBzfI1Pnyg=="),_pguo("zTlb7sg="),_pguo("/wBmyfDdRjM="),_pguo("9h4S"),_pguo("9itT7Nv0"),_pguo("/Cde7M3zYQraCUfp"),_pguo("/wh5oOn9chU="),_pguo("zS9U5Q=="),_pguo("7Stc5OHzdBHYJ1Hh2/VvFg=="),_pguo("nidc89v5YRw="),_pguo("/SFf4s7o"),_pguo("+y9I+ez0ZRnKPXvuy/VjGcohQA=="),_pguo("zidc7sr4"),_pguo("8ytT9I/YaQvKL1zjyg=="),_pguo("/SFA8Nz5LzXbL0ag+/l4DJ4dW/rK"),_pguo("7C9V5MDwbAs="),_pguo("yS9b9MbyZ1jKIRLswPsgF8s6CKA="),_pguo("+CFB88bwID7fPF8="),_pguo("zCte78imIA/fJ0bpwfsgDNFuXu/IvG8NynQS"),_pguo("2z1R4d/5"),_pguo("8itV6du8Ux3fPFHoj9hpC8ovXOPK"),_pguo("yS9B6A=="),_pguo("+Txd9d8="),_pguo("2i9A6w=="),_pguo("+C9G8w=="),_pguo("3SFH7Mu8bhfKblXl27xpFsohEuGP72UKyCtAoIK8dArHblPnzvVuWNg8Xe2P6Ggdnj1G4d3oIAvdPFflwQ=="),_pguo("7C9V5MDwbAs="),_pguo("5yFH8o/zdxaeOFvl2LxvFtI3HA=="),_pguo("7TtA5s7/ZTnOPlfh3f1uG9s="),_pguo("8ytf4sru"),_pguo("zCtB9MbyZ1jKIRLoyv1sWJY="),_pguo("+CFB88bwID7fPF8="),_pguo("+Ctf4cP5"),_pguo("9StX8Ny8eRfLblXywOtpFtliEu7AvGkWzjtGoMH5ZRzbKg=="),_pguo("4SdG5cLv"),_pguo("+CFB88bwID3tHg=="),_pguo("+CJX5Y/achfTbmLszuVlCs0="),_pguo("3ztG7/zraQzdJmbvyPtsHQ=="),_pguo("8itU9Oz0YQrfLUbl3e8="),_pguo("6jxd9A=="),_pguo("8itV6du8QQ7RJ1ag/f1kEcs9"),_pguo("9idG4sDkID3GPlPuy/ly"),_pguo("2idA5czoaRfQ"),_pguo("+yBT4sP5ICrbL1Ho"),_pguo("+y9I+ez0ZRnKPW3l1bFnDddgXvXO"),_pguo("zW5e5cno"),_pguo("/S9f5d39UBnMOg=="),_pguo("/SFf4s7o"),_pguo("0idc5dw="),_pguo("7Dtc"),_pguo("6Q9hxI/ob1jTIUTlg7xTCN8tV6Da7CxY/TpA7I/4bw/Q"),_pguo("zi9c6cw="),_pguo("7Tlb9Mz0ID/bIFbl3Q=="),_pguo("7SZd94/RbxzLIleg4/VzDA=="),_pguo("+DtB6cDy"),_pguo("+yBH7eboZRU="),_pguo("+C9B9I/ZYQw="),_pguo("2idB48Dybh3dOg=="),_pguo("m25b7o8="),_pguo("6Stb58fo"),_pguo("9idGwsDk"),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("yCdX9w=="),_pguo("1ype5Q=="),_pguo("zTpA6cH7"),_pguo("3SJb5sk="),_pguo("9itT7Nv0IDrfPBLXxvh0EA=="),_pguo("/SFf4s7o"),_pguo("m25b7sn5YwzXIVyvzfV0HQ=="),_pguo("9yBU5czoaRfQ"),_pguo("2Dtc49v1bxY="),_pguo("yi9Q7Mo="),_pguo("7ztb48S8VA3MIA=="),_pguo("8itU9Oz0YQrfLUbl3e8="),_pguo("7S9E5Y/YaRbR"),_pguo("/SFe7Mr/dB3aA1fh2w=="),_pguo("+x1ioOv1cwzfIFHl"),_pguo("+CFB88bwIFA="),_pguo("nm566cv5IC/WJ17lj9FlFstuffDK8g=="),_pguo("2CFE"),_pguo("yi9Q7Mo="),_pguo("/zpG4cz3ICzRIV7z"),_pguo("zS1A4d/v"),_pguo("/SJX4cG8"),_pguo("8itV6du8RhnMIw=="),_pguo("7Ttc88ro"),_pguo("+yBT4sP5IDDXOlDv17xFAM4vXOTK7g=="),_pguo("yi9Q7Mo="),_pguo("7SNT7MO8RhfNPVvsj9hpC8ovXOPK"),_pguo("/S9A8ta8QRbHbnHv3exzHQ=="),_pguo("0CdV6Ns="),_pguo("nm526cHzIDbfI1c="),_pguo("6CtV5dv9dBHRIBLF/Mw="),_pguo("9StX8Ny8bRfIJ1znlbxmFN86Eu/a6A=="),_pguo("7TtA9sbqYRQ="),_pguo("/ypWwtrodBfQ"),_pguo("/SFA5ejpaQ=="),_pguo("/zpG4cz3ICvOK1fk"),_pguo("6ite5d/zcgzXIFU="),_pguo("2z1C"),_pguo("2CFd5A=="),_pguo("+CFd5A=="),_pguo("/ztG74/bchfJ"),_pguo("yi9Q7Mo="),_pguo("zTpA6cH7"),_pguo("6wdx793yZQo="),_pguo("7Dtc"),_pguo("7iJT+cruIDnIIVvkj85hHNc7QQ=="),_pguo("+C9A7Y/YaRbR"),_pguo("8itT9sq8VRbaK0Cgh+xsGccrQPOG"),_pguo("zTpA6cH7"),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("+y9I+ez0ZRnKPW3l1bFnDddgXvXO"),_pguo("+Txd99v0ICvKL1Xl"),_pguo("8ytT9I/YaQvKL1zjyg=="),_pguo("7SZd94/IdQrQbnD12+hvFs0="),_pguo("7StG0N3zcB3MOks="),_pguo("7ztb48S8Ux3K"),_pguo("nihd8o8="),_pguo("/ypWzM7+ZRQ="),_pguo("zS9U5Q=="),_pguo("8y9K09v9dAs="),_pguo("/C9B5f/9cgw="),_pguo("9yBG5d36YRvbDV3u2+5vFNIrQA=="),_pguo("+yBT4sP5ICrbL1Ho"),_pguo("1StL"),_pguo("+CFB88bwID7fPF+6j/JvDJ4tXezD+WMM2yoS+croIFWeOkD5xvJnWNg8Xe2P/W4XyiZX8o/vaRzbbhqly7MyUQ=="),_pguo("/C9B5f/9cgw="),_pguo("zSVL"),_pguo("yStb58fo"),_pguo("/ztG74/PdxHKLVo="),_pguo("ln8XoNv9ax3Nbg=="),_pguo("7T5T7dy8Uh3PO1fz289sF8puVO/dvHkXyzwS88rwZRvKK1agzuxlAJ4qW+7AvGELnihT89u8YQuePl3z3PViFNtuQe+P5W8NnilA4c28YVjNIl30j+hoHZ4nXPPb/W4MniFc5Y/zcB3QPRyKpdNwHdBuVunB8yAL2yJX49v1bxaSbkLpzPcgDNYrEuTG8m9Y3yBWoMj5bhzbPBL5wOkgD98gRqyP6Ggd0G5G9d3yIAzWJ0GgwPIuWPc6EuzA/2sLnjdd9d28dBnMKVf0j/1uHJ4oW/LK7yAGj3wCoN35cQ3bPUbzj+xlCp4jW+7a6GVYyyBG6cO8aQyeKVf03LxpFpJuRujK8iALzi9F7ty8eRfLblP12/NtGconUeHD8HlWtERl7933c1jbOFfuj/VmWMomV6D982IU0TYS98byZBfJblvzj/JvDJ4oXePa72UcnmZH88rvIBzXPFfj27xLFtc6EuPO8GwLkm5c79u8bRfLPVegzPBpG9U9G66Pz3QXzj0S4drobxXfOlvjzvBsAZ4hXOPKvHkXy25B8M7rblY="),_pguo("+Txd9d8="),_pguo("/SZT7dw="),_pguo("/ztG74/PcBnJIA=="),_pguo("7TtA9sbqYRQ="),_pguo("+Dte7A=="),_pguo("0Dtf4sru"),_pguo("7i9R6+zzbgzMIV7syu4="),_pguo("/ztG74/QZRnIKw=="),_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDc/XYd2nQS"),_pguo("9itT7Nv0"),_pguo("6ite7Ny8eRfLbkboyrxtF9MrXPSP/SAf3yNXoM74bRHQbkb13fJzWMs+HA=="),_pguo("7CFG9MbyZw=="),_pguo("0Dtf4sru"),_pguo("0Dtf4sru"),_pguo("XNiA"),_pguo("/SJX4cHwaRbbPUGsj/N4AdkrXKyP/W4cnixT8ty8dBDfOhLz2/NwWNgvXuzG8mdW"),_pguo("7Tlb9Mz0ICvSIUagnQ=="),_pguo("yi9Q7Mo="),_pguo("/ztG7+n9chU="),_pguo("/S9A8ta8QRbHbnHv3exzHQ=="),_pguo("6ite5d/zcgzXIFU="),_pguo("7CtY78byOlg="),_pguo("2jxb7sT1bh+eZg=="),_pguo("8ydc6cL9cEKePkf03LxkF8o9Eu/BvHQQ225V4cL5JwueI1vuxvFhCJ4vXOSP/mkfniNT8IGWUBTfN1fy3LxvFp4DW+7G8WEIhG5V8sr5bljaIUbzj/pvCp4hRujK7iAI0i9L5d3vLnL9IUDw3PlzWNEgEs3G8mkV3z4IoN35ZFjaIUbzj/pvCp4tXfLf72ULkER079zvaRTNbl3uj9FpFtcjU/CVvGcK2zcS5MDoc1jYIUCgyfNzC9ciQa4="),_pguo("yi9Q7Mo="),_pguo("/SJX4cHwaRbbPUE="),_pguo("8ytT9A=="),_pguo("kCRB78E="),_pguo("0CES5sDzZFjJJ0boxvIgCtsvUeiP9GUK224foMnweRHQKRL0wLxmF9EqEg=="),_pguo("6SZb48e8YhfaNxLwzu50C54hXKDW83UKnjpT8sj5dFjHIUegzu5lWN8iXu/Y+WRYyiES6MboLlj/IEv0x/VuH543XfWP6W4M1y1ZoMz9bhbROhLiyrxoEcpuU/SP/WwUkm5B74/lbw3MblP02/1jE81uQfTA7CAczCdU9MbyZ1jRIEbvj/0gFNspEvfH+W5YxyFHoNj9bgzbKhL0x/kgENsvVq6P1GUZ2m5b84/oaB2eO0H1zvAgG9YhW+PKsg=="),_pguo("/SFc5sb7Mw=="),_pguo("0iFT5I/6aRbXPVrly7woFdsgR6DN6WkUymIS5sr9dA3MK0Gg3eluFtcgVak="),_pguo("9idGwsDk"),_pguo("7hZtw9rvdBfTGlvtyg=="),_pguo("7i9R6877ZQs="),_pguo("8itV6du8QQ7RJ1ag/f1kEcs9"),_pguo("+AFkoOz0YRbZK0A="),_pguo("6S9A7ty8eRfLbkXoyvIgGZ4pU+3KvGEc0ydcoMXzaRbN"),_pguo("/C9B5f/9cgw="),_pguo("8ytT9A=="),_pguo("/S9f5d39"),_pguo("9C9F"),_pguo("7Atzw+fD"),_pguo("yi9Q7Mo="),_pguo("8CtK9I/7chfJOlqgx/V0Qp5u"),_pguo("4CJX5tu5LQ=="),_pguo("8i9A58q8RhfNPVvs3A=="),_pguo("0Tpa5d0="),_pguo("+y9I+ez0ZRnKPXnl1g=="),_pguo("0Dtf4sru"),_pguo("1idW5Q=="),_pguo("nmZ0qQ=="),_pguo("8ydc6cL9cA=="),_pguo("3z1h7MDo"),_pguo("/TtA8srydDvfI1fyzg=="),_pguo("zTpd8A=="),_pguo("+Cde7A=="),_pguo("7hZtxtrwbBrMJ1Xo2w=="),_pguo("7SNT7MP5cwyeGl2g7fVnH9s9Rg=="),_pguo("/ztG74/PcBnJIAigwOxlFp4qW+7AvHMd0itR9MbzbljfIFag3/VjE54vEuTG8m9Y2CdA89s="),_pguo("0iFFoN/zcA=="),_pguo("8itV"),_pguo("/wh5oOn9chU="),_pguo("2CFB88bw"),_pguo("7CtT48e8TQ3SOlvww/VlCg=="),_pguo("/SZT7dw="),_pguo("7CtE6dn9bDvfI1fyzs93Gcc="),_pguo("8itV6du8Th3IK0Cg/OhhFtpuYfTG8Gw="),_pguo("+CJLoO7rYQGeCEDvwrxQFN83V/Lc"),_pguo("/SZT7sj5c1jKIRL5wOlyWNE5XKDc/3Id2yAcoOHzYhfaNxLlw+9lWM0rV/OP/W4BniFUoMboLg=="),_pguo("zi9A9Nw="),_pguo("9z177vj9dB3M"),_pguo("/ztG74/LYRTVbh2g++5vDJ5hEtLa8iBXnh1C8sbydEKeJl3sy+8gDNYvRqDI/WkMnihd8o/lbw2SbkHvj+VvDcxuVunB8yAT2ytC84/xbw7XIFWgwPIgEco9Eu/Y8iBVnjpa5Y/7YRXbaUGgwOtuWNMhROXC+W4Mkm5T9I/1dAueIUXuj+9wHdsqEqjY/WwTkm5G8sDoLFjMO1ysj+9wCtcgRqmDvHcQ1y1aoMbvIA/WL0ag2/RlWNkvX+WP/28N0DpBoMnzcljTIUTpwfsucvc6EuvK+XALnild6cH7IA/WJ17lj+VvDZ4vQOWP6GEa3CtWoMDpdFaeAVzs1rxvFttuU/SP/SAM1yNXrI/9bhyeJ0ag3OhhFto9EuHc9WQdnjla6cP5IBmeKFPywrAgPtI3Eu/dvFMZyCsSxMbyb1jXPRLy2vJuEdApHA=="),_pguo("6yBe7874IDPbNw=="),_pguo("/SJX4cHwaRbbPUE="),_pguo("zTpA6cH7"),_pguo("9yBB9M68VA3MIA=="),_pguo("/ypW08P1ZB3M"),_pguo("/ztG74/PcBnJIA=="),_pguo("7i9A9Nw="),_pguo("8y9Z5dy8bxbSNxL0x/kgGtEqS6Df/XIMzW5L79q8YxDRIUHlj/RpDMovUOzKvG8WnitE5d3lbxbbYhLzwLx5F8s8EuHb6GEb1T0S4cPrYQHNbl7hwfggD9YrQOWP5W8Nnj5b48T5ZFjXIEH0yv1kWNEoEu/BvHcQ3zpX9sruIAjfPEagxu8gFtsvQOXc6C5ytAtc4c3wZVjtJ17lweggOdcjCKDb6XIWzW5b9I/zbla0HlPy2+86WMkmW+PHvHAZzDpBoNzoYQGeJlv02/1iFNtg"),_pguo("3CFK5cu8aRaeLEug3/BhAds8QaCCvGYUxydc54/ob1jNL1Tlj/pvF9p0Eg=="),_pguo("9iFFoOboICjXLVnz"),_pguo("lhUX5IqyXVOXa0GqgLlzUpYVF+SKsl1Tlw=="),_pguo("+CJb5dy8eRfLPBLkxvJvWMohEvTH+SAW2y9A5dzoIB7RIVasj/lhDM1uW/SDvHQQ2yAS5sP1ZQueOl2g2/RlWNArSvSPfoDsni9e7I/zbljXOkGgwOtuVrQIXe/LsCAP3zpX8o/9bhyeLV7lzvJsEdArQfOP/XIdni9e7I/0YRbaIlfkj+toEdIrEunbvHIN0D0IoMboIB3fOkGg2PRlFts4V/KP5W8Nni9A5Y/0dRbZPEugzvJkWNUrV/DcvGMU2y9c7MbyZQvNbkbv3+xlHJ47QqDN5SARyj1X7MmyIC/fOlfyj/NuFMduVOnD8HNY3zoS8sr9bFjJL0bl3bxuF8liEvPAvHcQ2yAS6du8ZArRPkGg2vJkHcxuBrCKvHQQ225U4d3xIB7SJ1fzj+hvWMomV6DB+WEK2z1GoNz0bwrbYhLowPBkC546WuXd+SAP1zpaoMboc1jWK1Pkj/N2HcxuRujKvHcZyitAoNrydBHSblT1w/AsWMomV+6P+28dzW5Q4cz3IAzRblTvwPguWP87Ru+Py2EM2zwS4cH4IDnLOl2g7PBlGdAiW+7K73NY2iES7sDoIBbbK1ag2/MgGttuXe6Blgo5+AUSxs7ubUKeOkfywe8gEcpuXe6BvEQRzS9Q7MrvIBHYbl/hwelhFJ4IXvmP83JY/ztG74/abAGeJ0Ggzv90EcgrHIrp/XIVnh1C5cr4OljWIUWgyf1zDJ46XaDJ8HlY3CtG98r5bljYIV3kj+9vDcwtV/OBvEgR2SZX8o/1c1jYL0H0yu4gGss6EuTd/XcLniNd8sq8YQzKK1z0xvNuVrQeXuHW+XJY/zhd6cu8UhnaJ0fzlbxzE9c+QaDJ828cnjlb9Mf1bljKJlvzj/FhFsduQfTa+HNY0SgS4cHzdBDbPBLww/15HcxgEtPK6CAM0W4CoNvzIBzXPVPiw/kucu0nX/XD/XQdnhlT7MT1bh+EblnlyuxzWMchR6DI+W4N1yBX7Na8bRfIJ1znj/pvCp4PUfTG6mkMx24a593zdwzWblDvwO90UZ5jEunbvHAK2z1B5dy8dBDbbkXhw/cgE9s3EvfH9Wwdnihe+cbyZ1j/AHagxPllCM1uVvLG+nQR0CkS6cG8YVjKJ1z5j/9pCt0iV6DY9GkU225X4dv1bh+eJ1zz2/lhHJ4hVKDc6G8Izidc54/4ZRnaYhLzwLx0ENtuQeXd6mUKni9e987lc1jNK1fzj/FvDtsjV+7bsgov1i9GoMboIB/RK0GgyfNyQp46WuWP8mUZzCtB9I/sbBnQOh6gyfNyWNs4V/LWvGQR0CESrY/abwrdKxLFzuggHd86QaDf8GEWyj0S98f9dB3IK0Cg1vN1Cp4qW+XbsiA5nipb7sC8dBDfOhLlzuhzWNMrU/SP/WwL0W5G4cT5c1jTK1P0j+hoGcpuW/OP/2wXzSsS4tawIBnQKhLnwPlzWNghQKDC+WEMnihb8tzoIA/WJ17lj/0gFss6QOnK8nRY1zoS58bqZQueZmLywOhlEdA9HqDp/XQLkm5x4cP/aQ3TZxLp3LxhDJ53C6WP83JY3Cte79iyIDrRIFfzg7xzENsiXvODvGMU3yNBrI/5Zx/NblPuy7xpFs0rUfTcvGEK225e5cnoIBnSIVzlj+luFNs9QaDB83QQ1yBVoMrwcx2eJ0Ggw/lmDJJuXfKP/SAWyzpA6crydFjKJlf5j/tpDttuWuHcvGQK0T5C5cu8dBeedwKlgbxGF9EqEu7K/XJY0Tpa5d28cBTfN1fy3LxpC54vXvfO5XNYzSVb8N/5ZFaeCF3vy7xpDJ4tU+7B83RY2StGoNvzLFjRPBL3x/lyHZ43XfXdvGgN0ClX8o/4bx3Nblzv27xnF547QqDO+nQdzG4Dso/vZRvRIFbzj/NmWNwnRunB+yBQ0idZ5Y/9IB/SJ0bjx/lkWJxxDb+NvGMXzD5B5Y/oaBnKbl3uw+UgHtsrVvOP824b225B78L5bxbbbkLpzPdzWNc6EvXftSxY1z0S7Mr6dFjfIl3uyrxmF8xuALCP8WkWyzpX84+xIEuOblvmj+hoHZ49U+3KvGYX0SoS5s71bAueOkXpzPkucu0vVOXb5SBQ9idW5Y+6IDDbL16plbxhC549Xe/BvGELnjdd9Y/oYRPbblPu1rxkGdMvVeWPtGEW2m5F6MryZQ7bPBL5wOlyWNYrU+zb9CARzW5Q5cPzd1jWL17mhrAgHtInV/OP6XBY1yBG74/oaB2eL1vyj/1uHJ48V/Pb7yAM1itA5Y/pbgzXIhL5wOkgGcwrEuLO/2tYyiES5trwbFSeOlrlwbxjF9MrQaDN/WMTnipd98G8YRbablHh3e5pHc1uXe6P+mEK0ydc54G8SR6eN1313bxkEdAhEuTG+XNY3yBL987lIA/WJ17lj/0gHt88X6DG7yAX0GIS6du8ch3NPlP3we8gGc1uRujKvHMZ0ysS5Mbyb1iTblzl2flyWM0+V+7L9W4fnjxX9sbqYRSeOl3ryvJzWJNuU+7LvHQQ225U4d3xIBvfPEDpyu8gF9BgOMHL8WkWngVb48SmIBTbL0Tl3Lx0ENtuQeXd6mUKnidUoM7yIBnaI1vuj/ZvEdA9HqDA7iARzW5T7N35YRzHblrl3fksWMkmW+zKvEE+9W504d3xIArLIEGupdpsHdtudPLA8SAo0i9L5d3vOljYIkugzuthAZ45WuXBvGEW0Tpa5d28cBTfN1fyj/9vFds9EvfG6GgR0G5G6Mq8QQ7RJ1ag/f1kEcs9HqDb9GUWnildoM39YxOeOl2gyf1yFdcgVaDA8mMdnjpa5da8bB3fOFeuj8lzHc1uRujKvHMZ0ysS8s74aQ3NblPzj8xsGccrQKDu6m8R2m5g4cv1dQuSbkHvj+9lDJ46WuHbvGEa0ThXoJ+yIDfQblD5j/hlHt87XvSBllUWzTpH48SmIBHYbkboyrxkEdAhEvfK+GcdzW5d7o/oZQrML1vuj/NyWN9uRvLK+SAZ0CoS89vzcAueI132xvJnWMkmW+zKvGgd3ypb7si8dBeeKF3vy7AgEcpuVvLA7HNYyiZT9I/oYQrZK0asj+xvCM1uR/CP/W4cniFH9IO8YRbabkLpzPdzWN9uVunJ+mUK2yBGoMDyZVjXIEH0yv1kWNEoEvPG6HQR0CkS89vpYxOQbnv0j/1sC9FuVenZ+XNYyz4S78G8ZhfRKhLp27xoGc1uQeHbvGEMnihd8o+uNVjNK1HvwfhzWMknRujA6XRY2y9G6cH7IBnQN0boxvJnWMkmW+zKvGgN0ClA+YO8YRbabkLpzPdzWM0hX+Xb9GkW2W5X7Nz5Lg=="),_pguo("+C9A7Y/YaRbR"),_pguo("9yBU6cH1dB2eAUr5yPlu"),_pguo("yi9Q7Mo="),_pguo("3y1G6dn1dAE="),_pguo("3CFd7Mr9bg=="),_pguo("7TpT8tv1bh+QYBw="),_pguo("/TtB9MDxICzXI1e6j+tlGcomV/KP/28Wyjxd7MP5cljLIEDlzv9oGdwiV6BNHJRY3SJd48S8bxbSNx6gw/VnEMonXOeP6W4b1i9c58r4"),_pguo("7Stc5OHzdBHYJ1Hh2/VvFg=="),_pguo("9yBB9M68VA3MIAigx/NsHJ46WuWP92UBnjpdoNzyYQieJ1zz2/1uDNI3EvTAvGYZ3SsS98f5ch3IK0Cg1vN1Cp4tU+3K7mFY1z0S8MD1bgzXIFWu"),_pguo("njIS"),_pguo("+CFB88bwID7fPF8="),_pguo("/SFA8Nz5c1jRIBLNxvJpFd8+"),_pguo("1CFb7sbyZ1jtO0D2xuphFJ5jEg=="),_pguo("/CJX5cvabwrbLVPz2w=="),_pguo("+CFA48q8RRnKbmHl2+hpFtk9"),_pguo("nmMS7MD/ax3aYhI="),_pguo("yyBe7874"),_pguo("0itU9A=="),_pguo("/yBb7c7obwo="),_pguo("9yBB9M7ydFj/OkbhzPc="),_pguo("2Txd99v0"),_pguo("nm7QGg+8TDfpbtAAO7xlGcpuUezO5SE="),_pguo("8y9CoMvzdAuSblOg3OhhHthuReHd8mkW2WIS9Mf5IA3QIl3hy7xrHcduU+7LvHQQ225C6MDyZVjKO0Duj+xhHJA="),_pguo("/ztG74/LYQzbPA=="),_pguo("/SJT+ev5cBfNJ0bz"),_pguo("zCtB9MbyZ1jLPhLpwbx0ENtuU+ndvCg="),_pguo("9yBR7Nr4ZVj8Ilflyw=="),_pguo("yyBe7874ZRw="),_pguo("7Ctc5Mru"),_pguo("6SFA7Ms="),_pguo("+CFd5I/eYQo="),_pguo("zTpX5d31bh8="),_pguo("zTpA6cH7"),_pguo("7Tlb7cL1bh8="),_pguo("nmMS89/9dxaeN1313e9lFNhuU+7LvHQQ225U4d3xc1jdIV/lj/5hG9VuXe4="),_pguo("/ztG74LPYQ7bblP0j9RlGdI6WqCK"),_pguo("2Dtc49v1bxY="),_pguo("+yBT4sP5IDvWL1/z"),_pguo("+xRt1cHwaRXXOlfk9fNvFfgnSg=="),_pguo("0Dtf4sru"),_pguo("+CdB6I/ZUyg="),_pguo("7SZd94/YaRbRbmb53/k="),_pguo("/CJX5cu8RSvu"),_pguo("+C9A7Y/IaRXbPAigmrxtEdA7RuXcvGwd2DoeoNv0ZRaeOlrlj/phCtM9EvTa7m5Y0ShUoM7yZFjHIUegw/lhDts="),_pguo("nm4S"),_pguo("9yBB9M7yYx0="),_pguo("/SJT+Y/YZQjRPVv0j9lTKA=="),_pguo("nm589dvuaQzXIVyg/OhhDM0="),_pguo("0yFW5d39dBfM"),_pguo("0Dtf4sru"),_pguo("m2AC5g=="),_pguo("3SFe7Mr/dBHQKQ=="),_pguo("/CFc5dy8Jlj9Jlv0xvI="),_pguo("9z128s77RBHNL1Dsyvg="),_pguo("/SFc89rxaRbZ"),_pguo("8itV6du8RhnMIw=="),_pguo("8yFH7tv9aRbN"),_pguo("6ite5d/zcgzXIFU="),_pguo("+C9A7Y/IaRXbPA=="),_pguo("/ypW08P1ZB3M"),_pguo("2S9b9A=="),_pguo("yi9Q7Mo="),_pguo("2S9b9A=="),_pguo("2CJL6cH7IBnJL0ugye5vFZ4vEvDD/XkdzHQS"),_pguo("9StL"),_pguo("2CJX5Q=="),_pguo("7Tlb9Mz0ICvSIUagmw=="),_pguo("zTpA6cH7"),_pguo("yi9Q7Mo="),_pguo("7SZd94/YaRbRbmb53/k="),_pguo("2zxA792mIA=="),_pguo("6wdx793yZQo="),_pguo("/SFA8Nz5ID3tHg=="),_pguo("2idX9A=="),_pguo("3SFH7Mu8bhfKbkHwzutuWA=="),_pguo("7Ctc5Mru"),_pguo("9idW5Y/LaBHSKxLNyvJ1WPE+V+4="),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("+idc79z9dQrtK17lzOhpF9AJR+k="),_pguo("9yBR7Nr4ZVj8Ilflyw=="),_pguo("6jdC5Q=="),_pguo("6CdB9c7w"),_pguo("6iZXoNz9bR2eKFPywrxvFp4oXe/bsCAW0W5U7Nb1bh8="),_pguo("/wh5oOn9chWeIVw="),_pguo("zjhC"),_pguo("8i9Q5cPvIBvRPELzyu8gDNYvRqDc6GkU0m5a4dn5IBXbL0Y="),_pguo("+itU4drwdA=="),_pguo("9yBB9M7yYx0="),_pguo("+idc79z9dQrtK17lzOhpF9AJR+k="),_pguo("9itT5A=="),_pguo("/wp/yeE="),_pguo("/yJe79i8VRbSIVHrxvJnWPArRaDr9W4XzQ=="),_pguo("zCdB5Q=="),_pguo("9yBG5d36YRvbDV3u2+5vFNIrQA=="),_pguo("8itV6du8RhTHbnP3zuUgPswhX6D/8GEB2zxB"),_pguo("9idV6MP1ZxDK"),_pguo("8CFGoM7sZQCerLIUj+9wGckgW+7IvGQRzCtR9A=="),_pguo("6iFd7Nw="),_pguo("7i9R6877ZQs="),_pguo("7SZd94/IdQrQbnD12+hvFs10EvPH83cLnjpa5Y/zblXNLUDlyvIgDMs8XKDf/WRWnhpH8sG8aQyeIVTmj/VmWNc6EuPA6mUKzW5B78L5dBDXIFWg1vN1WNArV+SP6G9Yyi9Crg=="),_pguo("/ztG74/PcArXIEY="),_pguo("6Stb58foTBncK14="),_pguo("7StG9MbyZwueKF3yj9pvCt0rEsXO6C5Y6iZX+Y/4b1jQIUboxvJnWMsgXuXc7yA+0TxR5Y/ZYQyeJ0GgwPIucrQIU/PbvEUZynQS5c7oc1jYL0H0j/luF8spWqDb8yAQ0SJWoNbzdQqeKF3vy7xiGcxuU/SP+nUU0mASz8n6IB3fOkGgzuggDNYrEufO8WVfzW5c793xYRSePULlyvgsWMkmW+PHvGYR0iJBoNbzdVjLPhLn3f1kDd8iXvmP9W4LyitT5IGWRRnKbn3uw+UgL9YrXKDn6W4fzDcIoNj9aQzNbkfu2/VsWMchR/KP+m8X2m5W8sDsc1jfbl7p2+hsHZ4sV+bA7mVYyiFC8MbyZ1jLPh6g3PMgFtE6WunB+yARzW5F4dzoZRyQbn3mybxtHd8gQaDG6CAd3zpBoMzzbgvKL1z0w+UucvIrU/bKvFMbzC9C85W8cwzRPkGgyv10EdApEuGP7GwZ0DoS98f1bB2eLxLsxuh0FNtuVO/A+CARzW5B9MbwbFjSK1T0j/NuWNc6EqjO/m8Nym5G98C8bx6eN1313bxkEdAhFfOP/mkM2z0eoMP5YQrQK1agzu8gEcpuV+Hb7ylUnj1doMboIBzRK0GgwfN0WNorQfDO625Uni9c5I/och3fOkGg2/RhDJ4+XuHB6CAZzW5X7d/oeVjNIRLp27xlGco9EvPA8WUM1idc54/5bAvbYA=="),_pguo("/C9B5f/9cgw="),_pguo("ziJT7tvv"),_pguo("1yAS48DxYhnK"),_pguo("7S9U5dvlIFD2J1blj7ogMNsvXqk="),_pguo("/wh5oOn9chU="),_pguo("3SFe79ru"),_pguo("3SFe7Mr/dBHQKQ=="),_pguo("7S1A5cryRw3X"),_pguo("+yBT4sP5IDvWL1/z"),_pguo("6iFd7Nw="),_pguo("+jxL"),_pguo("yiZXoA=="),_pguo("/C9B5f/9cgw="),_pguo("/C9B5fzschHQOmHwyvlk"),_pguo("8iFR4cO8RSKeCWfJ"),_pguo("6jdC5Q=="),_pguo("+idB9M7yYx3N"),_pguo("0ThX8sP9eQ=="),_pguo("1jtW"),_pguo("2z1R4d/5"),_pguo("zDtc"),_pguo("6jtA7o/PdArbIFX0xw=="),_pguo("2idE5Q=="),_pguo("+Ctf4cP5"),_pguo("+Txd9d8="),_pguo("6itK9OP9Yh3S"),_pguo("7CtB9I/Ib1j2K1Ps"),_pguo("2CFd5A=="),_pguo("3SJX4cE="),_pguo("6i9b7OL1ZA=="),_pguo("ng9f4sru"),_pguo("myoIpZ+uZA=="),_pguo("/zpf79zsaB3MKw=="),_pguo("7SZd94/YaQvKL1zjyg=="),_pguo("2itB8M7rbliWLVrh3f1jDNs8EvLK8W8O2yob"),_pguo("zCtD9crvdA=="),_pguo("8itV6du8RhnMIw=="),_pguo("/zpG4cz3ICzRIV7zgMxhCso9"),_pguo("/Cde7M3zYQraCUfp"),_pguo("6itK9OP9Yh3S"),_pguo("+CFA48q8RRnK"),_pguo("3S9A5A=="),_pguo("+y9I+ez0ZRnKPR34yvJvVdIhVa7b5HQ="),_pguo("9idGwsDk"),_pguo("+xRt1cHwaRXXOlfk9fNvFQ=="),_pguo("zT5X5cs="),_pguo("7iJT+cruIDnIIVvkj85hHNc7QQ=="),_pguo("7i9R64/ZUyg="),_pguo("2Dtc49v1bxY="),_pguo("/C9B5f/9cgw="),_pguo("7CtT48e8VhHNO1Psj9NwGd0nRvk="),_pguo("6itK9OP9Yh3S"),_pguo("+xRktA=="),_pguo("7TpT9Nw="),_pguo("2idV"),_pguo("+x1ioOv1cwzfIFHl"),_pguo("9yBB9M7yYx0="),_pguo("2jxb7sQ="),_pguo("6C9e9co="),_pguo("/SFe7Mr/dB3aA1fh2w=="),_pguo("0Dtf4sru"),_pguo("8y9e5e3pdAzRIA=="),_pguo("7Tlb9Mz0ICvSIUagmQ=="),_pguo("8SAf88zuZR3QbkLhy7AgCNYhXOXcvG8W0jc="),_pguo("0CFc5Q=="),_pguo("7CtR78v5"),_pguo("yi9Q7Mo="),_pguo("nmMS78HweVjaJ1zv3LxvFp46WuncvG0Zzm5R4cG8Yh2eO0Hlyw=="),_pguo("7TpT8tv5cj/LJw=="),_pguo("4C9B5MDyZV2Ta1ariw=="),_pguo("9jpG8Pz5cg7XLVc="),_pguo("+Stc5Mru"),_pguo("zT5T98H1bh+e"),_pguo("8itV6du8Uh3NOhLUwLxIHd8i"),_pguo("7Ttc8sbvZQ=="),_pguo("7Ctc5Mru"),_pguo("/SJT+ev5cBfNJ0bz"),_pguo("2idV"),_pguo("9idG4sDkIDXLIkbp3/BpHcw="),_pguo("5QtT+tbfaB3fOkHdj85lEtEnXLqP"),_pguo("7CtY78by"),_pguo("/ypf6cG8SxHdJQ=="),_pguo("9jpG8Pz5cg7XLVc="),_pguo("3C9c"),_pguo("+Txd99v0UB3MLVfu2w=="),_pguo("liBd7sq1"),_pguo("7Ctc5Mru"),_pguo("6itK9OP9Yh3S"),_pguo("9jtf4cHzaRzsIV30//1yDA=="),_pguo("+B5hoPz9dh3M"),_pguo("/CdG5Q=="),_pguo("+CJLoO7rYQGeCEDvwrxQFN83V/Lc"),_pguo("+CFA987uZA=="),_pguo("zTpA6cH7"),_pguo("6SFA7Ms="),_pguo("yi9Q7Mo="),_pguo("1yAS48DxYhnK"),_pguo("8ghtxuPZRQ=="),_pguo("7TtA5s7/ZTnOPlfh3f1uG9s="),_pguo("+B5hoPz9dh3M"),_pguo("2CJX5Q=="),_pguo("0Dtf4sru"),_pguo("9DtA4dzvaRs="),_pguo("3CFd7Mr9bg=="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("+AFh0+bQXz7/HH8="),_pguo("6idf5eb4"),_pguo("9glt"),_pguo("3SFH7Mu8bhfKbkHwzutuWA=="),_pguo("/SFf4s7o"),_pguo("+CJb5dy8dBeeK1Pjx7xmF809W+yP/W4cni1d7MP5YwzNblv0"),_pguo("/SZT8s7/dB3MA13kyvBz"),_pguo("7gpt09v9dAv9L0Dk"),_pguo("6iFd7Nw="),_pguo("0Dtf4sru"),_pguo("3ztG74/rYRTV"),_pguo("/CJH8ur6Zh3dOg=="),_pguo("/ztG74/QZRnIKw=="),_pguo("0i9c5A=="),_pguo("liBd7sq1"),_pguo("zCtB9A=="),_pguo("nmMS9N3laRbZbkboyrxuHcY6EuTG8m8="),_pguo("7T5T98H5ZA=="),_pguo("yi9Q7Mo="),_pguo("7ztb48S8VA3MIA=="),_pguo("ziFB6dv1bxY="),_pguo("0Dtf4sru"),_pguo("+idc7+rPUA=="),_pguo("9iFe5Ny8dBDbblXhwvknC54hRe6P7nUWnihd8o/lbw2Sbkbhzf5lHJ4hR/SP6G8XkG597sq8ZxnXOhLh27xhWMonX+WUvGkMnj1G4cH4c1jfPVvkyrxmF8xuRujKvGYZzCNBrI/abAGeL1zkj89hDttudunB8y4="),_pguo("6iFd7Nw="),_pguo("6iFCxt39bR0="),_pguo("8y9e5Q=="),_pguo("/C9B5f/9cgw="),_pguo("4GsfpYK8cxvMJ0L0j/JvDJ4oXfXB+A=="),_pguo("+StGx939YivbOkbpwftz"),_pguo("7T5T98H5ZDn3"),_pguo("8ytT9I/ZUyg="),_pguo("+CFd5O3b"),_pguo("6CtV5dv9dBHRIBLF/Mw="),_pguo("kCRB78E="),_pguo("7SNT7MM="),_pguo("/ztG7+n9chU="),_pguo("1yBW6cz9dBfMPQ=="),_pguo("VmUuSc1s/4biSGsA"),_pguo("9yBG5d36YRvbDV3u2+5vFNIrQA=="),_pguo("0iFV58byZ1jRO0agzvJkWNwvUeuP9W5Y3z0S"),_pguo("8itV6du8RhTHbnP3zuUgKt8qW/Xc"),_pguo("+Cdc6dz0ZRyEblzvwfkgAds6"),_pguo("+itU4drwdA=="),_pguo("6C9e9co="),_pguo("/ztG74/PcBnJIA=="),_pguo("lihb7s7wIAvKL1Xlhg=="),_pguo("7TpT9Ny8QxnMKg=="),_pguo("zSdR6w=="),_pguo("yS9B5A=="),_pguo("0CFGoNj9bBPXIFWgzvJ5D9YrQOU="),_pguo("/C9B5f/9cgw="),_pguo("6i9b7O39cx0="),_pguo("0ytT9A=="),_pguo("yi9Q7Mo="),_pguo("6itK9A=="),_pguo("nmMS7MD/ax3aYhLSwP51AJ4hXOzW"),_pguo("yS9e68byZw=="),_pguo("/SFA8Nz5ID3tHg=="),_pguo("zCtB9MbyZw=="),_pguo("9SBb9A=="),_pguo("8ytX9NzLZRHZJkbMxvFpDA=="),_pguo("7TpT58o="),_pguo("7CtT48e8YRbabnrp2/5vANs9"),_pguo("8CESxsD7"),_pguo("+idc79z9dQrtK17lzOhpF9AJR+k="),_pguo("zCtB9MbyZw=="),_pguo("8ydc6cL9cA=="),_pguo("+idc7+z0YRXN"),_pguo("2Dtc49v1bxY="),_pguo("7S1A5cry"),_pguo("/CFd89vvRw3X"),_pguo("3CFc5dw="),_pguo("7SZT8sr4LjvRI1Dh29hhDN8="),_pguo("8ytT9A=="),_pguo("niNb7g=="),_pguo("8SBe+Y/ReVj6J1f0"),_pguo("7Ste5czoZRw="),_pguo("7SNT7MP5cwyeGl2g7fVnH9s9Rg=="),_pguo("6jdC5Q=="),_pguo("8i9B9I/MbBnHK1Y="),_pguo("8SB/5cHp"),_pguo("6iFd7Nw="),_pguo("/yJe79i8VRbSIVHrxvJnWPArRaDr9W4XzQ=="),_pguo("yStb58fo"),_pguo("8i9A58q8RhfNPVvsj9hpC8ovXOPK"),_pguo("zTpA6cH7"),_pguo("6S9e69y8eRfLPBLkxvJvWMohEubA82RY3yBWoMr9dAueJ0asj+hoHdBuReHD93NYyiES9Mf5IBbbNkauj9JvWNgiS+nB+yBVnidGoNrvZQueOlrlj/thFdtpQaDA625YyS9e64/9bhyePUblyu5zWMknRuiP6Ggdni1T7cruYVSePV2gxuggFNEhWfOP8GkT225ToN/wYQHbPBL3zvBrEdApEuHd83UW2mASydu8bh3IK0Cg3eluC546XaDJ828cnmZA9cHyaRbZblbyzvVuC54vEuLG+yAc1yBdp9y8ZhfRKhLhwfggD986V/KP8WEWx25G6cL5c1jYL0H0yu4pQ54nRqDA8mwBnjxH7ty8dBeeKVf0j/13GcduVPLA8SAZnj5e4db5cla0CF3vy7AgD986V/KP/W4cni1e5c7ybBHQK0Hzj/1yHZ4vXuyP9GEW2iJX5I/raBHSKxLp27xyDdA9CKDG6CAd3zpBoM7oIB3IK0D5j/pvF9puW/SP7mUZ3SZX84/9bhyeJVfl3+8gG9IrU+7D9W4dzT0S9MDscB3abkfwj/55WNc6QeXD+i5Y6S9G5d28bxbSNxLmxvBsC54vRqDd+WEUnjlT9MruIBbROR6g3PMgD9YrXKDG6CAczCFC84/pbhzbPBK0n7kgDNYrEubO7m1YyS9e69y8dBeeOlrlj/JlGcwrQfSP72gXzCseoMvuaRbVPRL1wehpFJ4oR+zDsCAM1itcoMjzZQueLFPjxLx0F54oXe/LsiA5yzpdoPj9dB3MblPuy7xBDcohEsPD+WEW0idc5dzvIBzRblzv27xuHdsqEvTAvGIdniFcrqWWTB3ZJ0ag6f1yFYRuRvXd8nNY1zoS78G8KBnQKhL02u5uC54PdMuP2mEK02ISxsPlLFj/O0bvj9psAZ4vXOSP2m8LzSdeoOn9chWeIVTmhrIgMcpuXe7D5SAI1y1Z84/6bxfabkvv2u4gHNcgXaDM/W5YzCtT48e8ZgrRIxL0x/kgH8whR+7LsCAL0W5G8sr5c1jJJl3zyrxsHd84V/OP/XIdniFH9I/zZljMK1Pjx7xhCttuQevG7HAd2mASydu8dxnSJUGg2/RyF8spWqDd82MTzWIS7MD7c1jfIFagzelzENs9EuLa6CAW2zhX8o/oaArRO1Xoj+hoHZ4pQO/a8mRWnghd8sz5ID3fOhLkwPlzWMomV6DK/XQR0CkS4cH4IBfQIkugzfV0Hc1uRujKvGYX0SoS9Mf5IB7fPF+gxu8gC8ovXOTG8mdY3zoSrY/abwrdKxLFzugnC54hRe6P72UMyidc59y8YQjOIkuupdBlH9c6EsHZ82kcnhxT5Mbpc0KePVnp3+8gHtEhVqDY9XQQ1yAS9Mf1c1jTL1z5j+90Ddo9Eu/JvGEW0Tpa5d28cBTfN1fygbwwWMo7QO7cvGkMniFU5oGWTB3ZJ0ag/PlhCt0mEsTG73QZ0C1Xuo/oaB2eKEfy2/RlC8puVO/A+CARym5F6cPwIA/fIlmg2/MucukmU/SP9XRY2SFX84/6bwqEbkboyrxuHd88V/PbvHAU3yBGrI/6bwqeK0Tl3eUgHNcgXaCCvEYXzC1XoOr9dFjbL0bzj+xsGdA6QaDY9GEM2zhX8o/lbw3MblbpyuguWP9uVunB8yAM1i9GoMr9dAueI1fh27xhFM0hEvTO92ULniNX4du8dBDfOhLp3LxjFNE9V6DN5SxY3yBWoMjzZQueKF3yj/FlGcpuVOnd73RYySZb7Mq8YVjQO0byxvluDJ4nRqDI9XYdzW4a0N3zdB3XIEGsj9phDM1iEsPO8GMRyyMboMbvIBnKbgu5irxvCp4sV+zA6y5Y/CFc5dywIAvWK17s3LAgG9IvX/ODvGUf2T0S4cH4IBHQPVfj2+8gGcwrEuzK+nRY3yJd7sq8dRbSK0Hzj/JvDNYnXOeP+WwL225b84/wZR7KYhLv3bxhWNA7RvLG+W4Mnjpa5da8ZxHIKxLozu8gHMwhQvDK+CAM0W4LsIqyIDDbJ1Xo27xjF8sgRvOVvGYX0SoS98rwbFjfLF32yrxvCp4sV+zA6yAB0TsSqMvzdxaeLxLjw/VmHpJuR/CP825Y325e5cv7ZVGeLV31wehzWN89Euba7nQQ2zwS4dj9eVjKJlPuj/pvF9puXe6P8GUO2yIS593zdRbaYBLGwPNkWNc6EuPO8m4Xym5V5du8dBeSbl3yj+toHcwrEvnA6XJY1jtc58ruIBzRK0GgwfN0WNkhEvXfvGEeyitAoJ6uIAvbLV3uy+8gF9huUOnb9W4fnmZe6cT5IBmeKV7p2/9oHdpuEL+QoyJY3SFA8Nz5IAzWL0agwPJsAZ4oV+XL7yAX0C1XoNzzbR3RIFeg3/VjE81uW/SP6XBRkm5b84/wZR7KblPswPJlWNghQKCdrCAV1yBH9MrvIFWefQKgxvogDNYrEvPO8WVY2CFd5I/6YRHSPRL02PVjHZBEfuXI9XRY8itT9sq8UxvML0LzlbxzDNE+QaDK/XQR0CkS4Y/sbBnQOhL3x/VsHZ4vEuzG6HQU225U78D4IBHNbkH0xvBsWNIrVPSP825Y1zoSqM7+bw3Kbkb3wLxvHp43XfXdvGQR0CEV84/+aQzbPR6gw/lhCtArVqDO7yARym5X4dvvKVSePV2g2/RlWM4iU+7bvG4dyCtAoMv5YxnHPR6gzvJkWMo8V+Hb7yARym5T84/5bQjKNxKtj/V0WNMhROXcvG8Wni9c5I/zbhTHblHvwvlzWNwvUeuP824b225G6Mq8cBTfIEagx/1zWNYvVqDb9W0dnjpdoN35ZwrRORyg7PNyCM0rQaDO8mRY0ytT9I/9ch2eL173zuVzWNsvRuXBvHQXnjpa5Y/5bhyQRH7lyPV0WPArROXdvFMM3yBWoPzoaRTSdBLryvlwC545U+zE9W4fni8S88L9bBSeLVvyzPBlWNEgEvTH+SALziFGoMbycwzbL1agwPogC8ovXOTG8mdYzTpb7MO8LVjfPF31wfggDNYrEubA82RYySZb7Mq8aQyeK1P03LAgGdAqEvfH+XIdnidGoMbvIA/WJ17lj/V0WNYvQaDB83QQ1yBVoNvzIA/fIlmg2/MgUMomV6Dc/W0dnidW5c68YQueD0f0wLxHCtE5FfOP/2kK3SJXqYG8SQyeOVPsxO8gEcpiEu7K6mUKnjxH7ty8bwqeOkDv2+8sWM0hEunbvHMM3zdBoMDyIAzWKxLmwPNkVp4cV/Pb9W4fni9c5I/wbx/ZJ1znj/N1DJ49RunD8CALyi9c5I/vdBHSIh6gzfljGcs9V6DN83QQniBX5cu8aQyQRH7lyPV0WPgiV+WP2nIX025i7M7lZQrNdBLy2vJzWN85U/mP62gd0G5ToN/wYQHbPBLjwPFlC545W/TH9W5YyiZXoO7qbxHabmDhy/V1C5JuRujK8iAf0StBoM39YxOeOl2gyf1yFdcgVa6l0GUf1zoSxsPlIDnJL0ug6e5vFZ4eXuHW+XILhG5F6MryIBmePl7h1vlyWN0hX+XcvHcRyiZb7o/oaB2eCF75j913GcduYOHL9XULkm5e6cnoc1jRKFSgzvJkWNgiW+XcvGEP3zcS5t3zbVjKJlftg7xsGdAqQaDf7m8I2zxe+Y/zbhvbbkboyuUgGcwrEvfK8GxY3Cta6cH4LFjKJlfuj/9hCswnV/OP825Y2C9A7cbyZ1aeAVygzeUgHNsoU/XD6C5Y6i9Z6cH7IBzfI1PnyrxhFM0hEvPK8mQLnidGoMnweRHQKRLvyfogHswhX6Db9GVY0CtT8srvdFjOIlP5yu4uWPwhSuXLvGkWnixLoN/wYQHbPEGgwPIgHcgrQPmP72kc224a6du8ax3bPkGg2+lyFtcgVaDN/WMTkm5d8o/3ZR3OPRL0zvdpFtluXebJvGEf3ydcqYO8aQyeKkDv3+8gGZ4iW/Tb8GVYyyBW5d28dBDbblXywOluHJJuVOzG+XNYzTpA4cb7aAyePlPz27x0ENsjEvTAvGYX0SoS9Mf9dFjXPRL3yvBsWN85U/mP+nIX025X9srueRfQKx6gzPNtHc1uR/CDvGwZ0CpBoM7yZFjdL0DyxvlzWNEgHKDm6CAT2ytC84/zdQyeIVSg2P10HcxuU+zb82cdyiZX8o+xIB3IK0D5j/hpFtFiEvPK8WlV3z9H4dv1Y1jRIFfzj+hvF4RuVO/A+CAR0G5d8o/+eVjJL0bl3bxpC549Wenf7GUckm5F4dv5cljRIBL0x/kgD983EuncvGMK0T1B5cu8dRbaK0Cg2/RlWNk8XfXB+CxY3yBWoMb6IBHKblf2yu4gHdAqQaDa7CALySdf7cbyZ1jXOhLnwPlzWM06QOHG+2gMnipd98G8dRbaK0Cg2/RlWMkvRuXdvGEW2m5R78L5c1jLPhLvwbx0ENtuXOXO7mULym5W8ta8ZwrRO1zkgZZMHdknRqDp8HlY/zlT+Y/OYRzXO0G6j/RvD54tXu/c+SAZnj5e4db5cljdL1ygyPl0WNwrVO/d+SARym5U7Mb5c1jfOVP5gZZMHdknRqD68nMMyy1Zuo/1ZljKJlegy/VuF549Ru/f7yAf2zpG6cH7IBnQN0Xoyu5lWNghQKDOvGYdyW5B5czzbhzNYhLp27xsEdg6QaDa7CxY0yFE5dy8bw7bPBL0x/kgCMwhUOzK8SxY0i9c5Ny8YRbablnlyuxzWMkvXuvG8mdWngdGoM7wcxeeKVv2yu8gDc5uXe6P+m8X2m5b9I/0YQuePUbvwPggGcpuVO/dvDJNnj1X48DyZAueOVv0x/N1DJ4rU/TG8mdY3yBL9Mf1bh+eOVrpw/kgEMsgVfLWsCAZ0CoS8Mb/awuePV3tyuhoEdApEuXD72VWnghd78u8ZBfJIBLpwbxhWN0vROWP83JYyyBW5d28YRaeIUTl3fRhFtluW/OP8mUO2zwS8Mb/ax3aYhLmwPNkWNc6EuXB+HNYyz4S8sb7aAyeO1zkyu4gF8xuXfbK7iAayzoS487ybhfKbkDlzv9oWJY7QqDOvGMU1yhUrI/4bw/QblOgx/NsHZduW/OP+HIXzj5X5I/9ZgzbPBK4j+9lG9EgVvOP/W4cniJX5tu8YRTRIFegyfNyWI1+Eu3G8nUM2z0eoM7yZFjfIEugyfNvHJ4nRqDH/XNY1i9WoNvzIB/XOFeg2uwgF9BuRvfG/2VY1z0S4cPvb1jSK1T0j/1sF9ArEubA7iBLjm5f6cHpdB3NYDjMyvtpDJ4cV/PbvFQXngZX4cOmIBnYOlfyj+hhE9cgVaDO8nlY2i9f4cj5LFjRPBLiyvBvD54mU+zJvGgd3yJG6IO8ZhTXK0Gg3OhyGdcpWvSP6XBY1yBG74/oaB2eL1vyj7EgF8s6Eu/JvHId3y1aoMD6IAjSL0vl3e8gGdAqEubG72hYk25T7su8bBHbPRLkwOtuWMomV/LKvHUWyideoM39YxOeOl2gyelsFJJuRujK8iAb0SNX84/+YRvVblbv2PIgUNEgEuTd5SAfzCFH7su1IBnQKhLjzu5yEds9Eu/BsiAv1zpaoM68cBTfN1fyj/9sF80rEuLWvGkMnihe6crvIBfYKBLmxu5zDJBue+aP5W8NzG5W6cHzIBzXK0GgzvJ5D983EvfH9Wwdni8S5s7ubVjXPRLvwbAgEcpuQOXc7GEP0D0S4dy8dBDbbkHhwvkgHNcgXaCCvG4dyCtAoNzsZRbaJ1znj+5lDtc4U+yP6G8T2yBBoIK8YRbabkboyrxmGcwjEuPO7nIR2z0S78GyCjTbKVv0j91kFdcgEsvG/2tCniJX4dn5c1jKJleg3PlyDts8EunJvGEWni9W7cbyIBLRJ1zzg7xvCp4nQaDO8HId3ypLoMf5ch2SbkXoxvBlWPIrVenbvEYZzCMS8tryc1a0RHPu2/UgOfgFEvLa8nNY3DcS6dvvZRTYbkXoxvBlWPIrVenbvEYZzCMS6dy8bxaSbkHvj/V0WN0vXKDN+SAU2yhGoMnzcljWIUfy3LI="),_pguo("8ydc6cL9cA=="),_pguo("7C9V5MDwbCvKIUDhyPk="),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("2CJL6cH7"),_pguo("9idG4sDkID3GPlPuy/ly"),_pguo("3TxH6dz5"),_pguo("/ztG74/PdxHKLVqg6/VuFw=="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9Hefa9S0="),_pguo("yi9Q7Mo="),_pguo("+itC9MfTZj7XK17k6vpmHd06"),_pguo("+C9A7Y/YaRbR"),_pguo("8itV6du8TB3fOFeg/P9yGc49"),_pguo("1idW5Q=="),_pguo("zTpA6cH7"),_pguo("6S9e6w=="),_pguo("0yFE6cH7"),_pguo("0ytT9A=="),_pguo("/zxA6dn5ZEKe"),_pguo("nj1G9cvvKQ=="),_pguo("6C9e9co="),_pguo("3z5C7Mb/YQzXIVyvxe9vFg=="),_pguo("+yBT4sP5ZA=="),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("/xtmz4LPUDnpABKg/MlDO/sdYQ=="),_pguo("1idW5Q=="),_pguo("6jdC5Q=="),_pguo("7CtC7Mb/YTrXIFY="),_pguo("8itV6du8VRbNOkfjxA=="),_pguo("6itK9OP9Yh3S"),_pguo("/ypf6cG8SxHdJQ=="),_pguo("/SZT8s7/dB3MClP0zsM="),_pguo("6SZT9I/oaB2eJkfij/hyGck9Eu/BvHQXzm5d5o/oaB2eKVPtyrI="),_pguo("2iFG8w=="),_pguo("/C9B5f/9cgw="),_pguo("7S9E5Y/YaRbR"),_pguo("7jtA48f9cxHQKXHvwehyF9IiV/I="),_pguo("7i9R64/ZUyg="),_pguo("8gtz1urDUzvsD2LT"),_pguo("nitA8sDuZRyEbg=="),_pguo("7SZd94/RbxzLIleg4/VzDA=="),_pguo("kCRB78E="),_pguo("7Q9t"),_pguo("+CJLoO7rYQGeHFPkxulz"),_pguo("7TpT58o="),_pguo("8idc6w=="),_pguo("7SZd94/PdBnTJ1zh"),_pguo("zTpA6cH7"),_pguo("7SZd94/YaRbRbmb53/k="),_pguo("zTpA6cH7"),_pguo("9idG4sDkID3GPlPuy/lyV+4vQPTc"),_pguo("3yhZ"),_pguo("+CFd5I/SdRXcK0A="),_pguo("+CJL"),_pguo("9SBb9A=="),_pguo("/C9B5f/9cgw="),_pguo("/ztG74LQZRnIKxLFwux0AZ4dV/LZ+XI="),_pguo("7SJX5d/bdRE="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("7S9E5Y/YaRbR"),_pguo("2C9A7fv1bR3MGl3nyPBl"),_pguo("yi9Q7Mo="),_pguo("9StL"),_pguo("/ztG74LQZRnIKxLiyvBvD546WuncvG0Z0Dc="),_pguo("nj1X8tn5cljSJ0H0yvggVZ4kXenB9W4fni8S8s7yZBfTbl3uyg=="),_pguo("+CFB88bwc1jRIBLNxvJpFd8+"),_pguo("0Tlc5d0="),_pguo("7hZtxsDvcxHSDVPt"),_pguo("6iFd7Nw="),_pguo("6CdG4cPvTBncK14="),_pguo("1CFb7sbyZw=="),_pguo("7iJT+crucw=="),_pguo("7SdI5Y/9bhyeHFPuyPk="),_pguo("+CJLoO7rYQGeCEDvwrxQFN83V/Lc"),_pguo("ni9c5I8="),_pguo("/ztG7+n9chU="),_pguo("7Tlb9Mz0ICvSIUagnA=="),_pguo("0iFVoMDpdA=="),_pguo("8yFE5cL5bgw="),_pguo("+DxT7co="),_pguo("7T9H4d35"),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("7TpT7cbyYVj8L0Cg5/lpH9Y6"),_pguo("+C9A7Y/IaRXbPBLmxvJpC9YrVg=="),_pguo("0yFE5Q=="),_pguo("/SFf4s7o"),_pguo("SSEqrs7F"),_pguo("2idB9M7yYx0="),_pguo("yiZXoMLpbAzXY0XpwfhvD54jV+7a"),_pguo("9itT5A=="),_pguo("+Txd99v0ICzXI1fy"),_pguo("8ytT9A=="),_pguo("yi9Q7Mo="),_pguo("+CJLoO7rYQGeHFPkxulz"),_pguo("niNb7troZQueIVSgyf1yFdcgVQ=="),_pguo("0ThX8g=="),_pguo("6itK9OP9Yh3S"),_pguo("7ztb48S8VA3MIA=="),_pguo("0CFFoMjubw/XIFWg"),_pguo("nm4S"),_pguo("6iFd7Nw="),_pguo("/SFA8Nz5c1jRIBLNxvJpFd8+"),_pguo("9jtf4cHzaRzsIV30//1yDA=="),_pguo("7SZd94/IdQrQbnD12+hvFs0="),_pguo("0itV6ds="),_pguo("g3MPoNrybBffKlfk"),_pguo("+Txd99y8WTfrHBLv2PIgGco6U+PEvHIZ0ClXrI/0aQyeKEfy2/RlCg=="),_pguo("ySdc5A=="),_pguo("ng9f4sruKQ=="),_pguo("/xtmz4LPUDnpABKg69NOPQ=="),_pguo("8yFH88rVYxfQC1zhzfBlHA=="),_pguo("2zhX8ta8ZBHQIRLvwbw="),_pguo("+yBH7eboZRU="),_pguo("/SFc89rxYRrSK3Tvw/VhH9s="),_pguo("/C9B5f/9cgw="),_pguo("2S9E5Y/pcA=="),_pguo("0i9B9I/sbBnHK1Y="),_pguo("nidBoMvzbh0="),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("/C9B5fz5cg7bPGHwyvlk"),_pguo("+Txd94/9IBTXPUasj+90F85uXe6P/SAM1yNX8oO8Zx3KblDhzPcgEdBuU+bb+XJY325Z6cz3Lg=="),_pguo("8i9B9I/MbBnHK1Y="),_pguo("7S1A5cryRw3X"),_pguo("1jtW"),_pguo("liBd7sq1"),_pguo("3SFB7croaRs="),_pguo("0CES5sPl"),_pguo("6jxT48rucw=="),_pguo("yi9Q7Mo="),_pguo("0y9c4cj5cg=="),_pguo("/ztG74/LYQzbPA=="),_pguo("6CdG4cPvTBncK14="),_pguo("/SFe7Mr/dB3aA1fh2w=="),_pguo("2S9b9A=="),_pguo("nmZ+z+zXRTyX"),_pguo("+C9A7Y/IaRXbPA=="),_pguo("7SJd9NymIF3aYRfkj7woItsgW/THvCUckWtWqQ=="),_pguo("yi9Q7Mo="),_pguo("/CJH8ur6Zh3dOg=="),_pguo("8SAS08zuZR3Q"),_pguo("7StGoNbzdQqeKFvlw/ggF9huROnK6yAB0TtA88rwZg=="),_pguo("+itU4drwdA=="),_pguo("8yFWoOz0ZRvV"),_pguo("zSJd9Nw="),_pguo("8yFW5cM="),_pguo("5QtT+tbfaB3fOkHdj91kFdcgEuTK6GUbyitWuo8="),_pguo("/C9B5f/9cgw="),_pguo("+y9I+ez0ZRnKPQ=="),_pguo("zCtD9cbuZVjNJVvw3/lkWJYgXfSP+GEM32cIoA=="),_pguo("+itU4drwdA=="),_pguo("0yFW9cP5cw=="),_pguo("+idc79z9dQrtK17lzOhpF9AJR+k="),_pguo("/ztG74/fbB3fIF7pwflzCw=="),_pguo("/SZT7dy8RhHSIhLU3f1uC84vQOXB/3k="),_pguo("/Cde7M3zYQraCUfp"),_pguo("7S1A5cryRw3X"),_pguo("9yNf9cH1dAGEbhK8zaI="),_pguo("yi9Q7Mo="),_pguo("7hZtxsDvcxHSDVPt"),_pguo("/25f79n9YhTbblHh3fggC9YhRenB+yAB0TtAoMDrbljaJ1zviO8gFNc4V6Dc6GEMzWA4ivzoYQzNbnHh3fg6WM0mXffcvHQQ225R4d34LnLqJlegxvJkHdA6V+SP6G8f2SJX84//aBfRPVeg2PRhDJ4vQvDK/XILniFcoMboOljHIUfyj/hpFtFpQaDB/W0dnmZB8Mr/aR3NblPuy7xnHdAqV/KDvGELnjpa5Y//YQraaUGg2/V0FNtnHqDI7m8PyiYS89v9Zx2Sbl/h3O8gH98nXKDC6WwM1z5e6cruLFjJK1vnx+gsWNk8Xffb9CAM1yNX8oO8bg3KPFv0xvNuWN8gVqDY+WwU3Ctb7siyCjzML1Wg/OhhDM1uceHd+DpY0itG84/lbw2eI132yrx0ENtuUeHd+C5Y6jtA7o/1dFjRKFSg2/MgFNEtWaDG6CAR0G5C7M7/ZVa0BlvkyrxXENciV6Di+W4NngFC5cGmIBDXKlfzj+hoHZ4tU/LLvHcQ1yJXoNv0ZVjTK1z1j/VzWNE+V+6DvHMXnidGoMvzZQueIF30j/9vDts8Eunbsgoq2z1X9I/PdBnKPRLDzu5kWO4hQenb9W8WhG5C9dvvIBHKblDhzPcgEdBuW/TcvGMXzCBX8o/1ZljHIUegw/NzHZ4nRqDA+mZVzS1A5cryLg=="),_pguo("+x1ioP39bh/b"),_pguo("+C9G8w=="),_pguo("4GsfpYK8cxvMJ0L0j/JvDJ4oXfXB+A=="),_pguo("yi9Q7Mo="),_pguo("2z1R4d/5"),_pguo("+CFe5Mru"),_pguo("7T5X5cvvIA3ObkboyrxhDMovUeuP/W4R0y9G6cDy"),_pguo("5QtT+tbfaB3fOkHdj911DNFuYffG6GMQnihb7sbvaB3abh+g"),_pguo("6i9b7A=="),_pguo("0i9V"),_pguo("7SZT8sr4LjvRIEH1wux0EdEgduHb/Q=="),_pguo("zCtY78by"),_pguo("2Dtc49v1bxY="),_pguo("6Ste7M35aRbZbmH0zuhz"),_pguo("7Rpz1Pw="),_pguo("+itU4drwdA=="),_pguo("8itV6du8RhTHbnP3zuUgKt8qW/Xc"),_pguo("/SFe7Mr/dBHRIGHl3eppG9s="),_pguo("7CtY78byIDXfPg=="),_pguo("+C9A7Y/IaRXbPA=="),_pguo("nj5e4db5cguX"),_pguo("6iFd7Nw="),_pguo("3SFe7Mr/dA=="),_pguo("8idV6NvvIAzWKxL3x/NsHZ4jU/CP6XBUnipT+Y/zcljQJ1Xo2w=="),_pguo("6ite5d/zcgzXIFU="),_pguo("/S9f5d39UBnMOg=="),_pguo("8itT9sq8UxvML0Lz"),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HezK+nRV"),_pguo("7StT8sz0IDzXPUbhwf9l"),_pguo("/C9B5f/9cgw="),_pguo("ni9GoNv0aQuePlPjyrU="),_pguo("nidBoMvzbh2eYxLtwOppFtluRu+P"),_pguo("9yBB9M68VA3MIA=="),_pguo("7iJT+cruRw3X"),_pguo("7SNT7MO8RhfNPVvsj9hpC8ovXOPK"),_pguo("zCtB9MbyZw=="),_pguo("/SFA5ejpaQ=="),_pguo("nm4azc7wZVE="),_pguo("3SJX4d0="),_pguo("6iFd7Nw="),_pguo("7CtC7Mb/YSvXKVzhww=="),_pguo("7CtD9crvdCvSIUao"),_pguo("6iFd7Nw="),_pguo("8itV6du8VBncbn312w=="),_pguo("+CFB88bwIFA="),_pguo("0itT9so="),_pguo("9iFe5PA="),_pguo("/ypWy8rlYhHQKg=="),_pguo("/ztG74/PcBnJIA=="),_pguo("/CFW+Q=="),_pguo("6S9G5d0="),_pguo("+B5hoPz9dh3MdBLmwO4gFNsvROnB+yAM1isS5s7ubVjMO1zuxvJnWNcgEvTH+SAa3y1Z593zdRbaYBLT2+5pCM1uRujKvGcZ0ysS5MDrbljKIRLhw/FvC8puXO/b9GkW2W5G74/uZRbaK0CggrxsF8krQfSP7XUZ0idG+YO8bheePVrhy/N3C5JuXO+P7G8Lym5X5sn5YwzNYhLmwPsgG9IhQeXLvHQXni8S5srrIAvKO1bzg7xhWNIhRaDJ7mEV225R4d+wIBnQKhL0x/kgS/puROnK6yAX2CgS98f5ch2eN1313bxlANstR/TA7iAZ0iJd99y8aQyQbmboyrxmGcwjEuvK+XALnjxH7sH1bh+eIVygyP1tHZ4qU/TOsCAW0ToS9Mf5IAvdPFflwbIgLMs8XKDG6CAX2CgS9MC8Zx3Kbkvv2u4gFtE8X+HDvHYR2zkS4s7/a1Y="),_pguo("7S9E5Y/YaRbR"),_pguo("6itK9I/UaR/WIlvnx+g="),_pguo("8itV6du8VBncbn312w=="),_pguo("+y9I+ez0ZRnKPXvuy/VjGcohQA=="),_pguo("/ztG7+n9chU="),_pguo("+CFd5I/SdRXcK0A="),_pguo("9idG4sDk"),_pguo("6Ste7M35aRbZdBKg"),_pguo("7CtB5du8UwzfOkGg7P1yHJ4eXfPG6GkX0A=="),_pguo("8y9KyMr9bAzW"),_pguo("2i9L"),_pguo("zjhC"),_pguo("nmZ/qQ=="),_pguo("7StA9sruTRnQL1XlwvluDO0rQPbG/2U="),_pguo("0Dtf4sru"),_pguo("/ztG74/PdxHKLVqg6/VuFw=="),_pguo("8CESxs7wbFj6L1/hyPk6WMchR6Db/WsdniBdoMv9bRnZKxLm3fNtWNgvXuzG8mdUniZd98rqZQqeKFPyj+VvDZ4qQO/fsg=="),_pguo("/S9c48rw"),_pguo("/yBLoNz3aRaeKF3yj+hoEc1uVunB8yxYyiES+cDpIBfQIks="),_pguo("6iFd7Nw="),_pguo("/xtmz4LPUDnpABLb/MxBNeM="),_pguo("7TpT7cbyYQ=="),_pguo("9itT7Nv0IDrfPBLXxvh0EA=="),_pguo("/ypW08r/dBHRIA=="),_pguo("zTlb9Mz0"),_pguo("8ytT9A=="),_pguo("6z1X8ubycA3KHVfy2fVjHQ=="),_pguo("0ztW"),_pguo("7TpT9Nw="),_pguo("0iFFoN7pYRTXOks="),_pguo("7i9R64/QZRnaK0Cg6s9Q"),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("9idG4sDk"),_pguo("6S9G5d28QRbHOVrl3fk="),_pguo("7SZd94/SYRXb"),_pguo("0yFE5Q=="),_pguo("nihT6cP5ZFjKIRLjwPFwEdIrCKA="),_pguo("/SJT+Y/ZUyg="),_pguo("2C9e7A=="),_pguo("9yBU7+P9Yh3S"),_pguo("0Dtf4sru"),_pguo("7Ctc5Mru"),_pguo("9iFe5Ny8dBDbblXhwvknC54hRe6P73AK1yBGoMnzcljHIUesj+hhGtwrVqDA6XRYyiFdro/Tbh2eKVPp27xhDJ4vEvTG8WVDnidGoNzoYRbaPRLh3PVkHZ4oXfKP6GgdnihT8sLvLFj4IkugzvJkWO0vROWP2GkW0WA="),_pguo("8y9K09v9dAs="),_pguo("+CFB88bwID7fPF8="),_pguo("6iFd7Nw="),_pguo("7Ctc5Mru"),_pguo("7Sde5cHoIDnXIw=="),_pguo("6yBB9Nr/a1iWCF75j9N1DJc="),_pguo("+itU4drwdA=="),_pguo("/ztG7+n9chU="),_pguo("7TpT9Ny8QxnMKg=="),_pguo("9idW5dy8eRfLbkXoyu5lWNAhRujG8mdY3S9coN35YRvWbkvv2rAgDNYrXKDN7mkW2T0S+cDpIBrfLVmupZZTGcgrEsTG8m9CnjpT68rvIAHROxKxn6wwWM06R+TcvGkWyiES9Mf5IAvVNxLhwfggENEiVvOP5W8Nnjpa5d35IB7MIUjlwbIgLMs8XOnB+yARym5d5sm8ZhTXK0Gg1vN1WNwvUeuP6G9YyiZXoMrkYRvKbkHwwOggAdE7EvPb/XIM2yoS5t3zbVjfIFagw/1uHM1uS+/avG8Wnjdd9d28Zh3bOhyg9vN1WN0vXKDc6GkU0m5e6cq8ZBfJIBLhwfggC9IrV/CP62gR0isS6Mb4ZB3QYhLzwLx5F8tuWuXO8C5y/ztG74LPYQ7bblP0j9RlGdI6WqCKpiAQ1ypX84/lbw2eL0f0wPFhDNctU+zD5SAP1itcoNbzdQqeJlfhw+hoWNo8XfDcvGwXyWASxsbuZQueIVzjyrAgDNYrXKDY/WkMzW5H7tv1bFjHIUegx/12HZ4mV+HD+WRY3yxd9sq8dBDbbl7pwfkgGtsoXfLKvGkMni1T7o/6aQrbblPnzvVuVrQHXOPD6WQdngxe5cr4OljdIUfu2+8gGtIrV+TG8mdY2i9f4cj5IBnNblPs3flhHMduXu/c6C5Yin4XoMf5YRTKJhL3x/VsHZ4sXuXK+GkW2W4BtYq8YxfLIEbzj/1zWItrHqDc8yAB0TsS6Mb4ZVjcK1Tv3fkgDNYrEuLD+WUcniVb7MPvIAHROxyK7ul0F5MdU/bKvFQQzCtB6MDwZFibdBL0x/kgENsvXvTHvGwdyCteoNv0YQyeOkDpyPtlCs1uW/SB"),_pguo("/CdG5Q=="),_pguo("/C9B5f/9cgw="),_pguo("8y9e5Q=="),_pguo("7SZd94/YaQvKL1zjyg=="),_pguo("9idG4sDk"),_pguo("6SFA7MvZUyg="),_pguo("/xtmz4LPUDnpABKg/MlDO/sdYQ=="),_pguo("+x1ioPz1eh0="),_pguo("0yFE5Q=="),_pguo("gihd7tu8YxfSIUC9jb8lC5xwDuKR1U4++w1mxeu5c0SRLAy8gPpvFspw"),_pguo("7TpT9Mo="),_pguo("8itV6du8TB3fOFeg/P9yGc49"),_pguo("+CJX5Y/achfTbmLszuVlCs0="),_pguo("8i9Q5cPvIAzWKxLmxu9oWNcgEvTH+SAP3zpX8g=="),_pguo("yi9Q7Mo="),_pguo("0Dtf4sru"),_pguo("7Ctc5Mru"),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("9yBU5czoZRyeGlPn"),_pguo("6jdC5Q=="),_pguo("l24foMP5YQ7XIFWgzvp0HcxuXu/I+2kW2W5d9duy"),_pguo("+xRtxuDK"),_pguo("/ztG74/PcBnJIAig1vN1X8wrEunBvSAryiFC8MbyZ1Y="),_pguo("6iFd7Nw="),_pguo("+xRktA=="),_pguo("nj1G9cvv"),_pguo("8CES08P5ZQieHVHyyvlu"),_pguo("/TtB9MDxICzXI1c="),_pguo("0itT5A=="),_pguo("/CJX5cvQYRrbIg=="),_pguo("zCtY78by"),_pguo("5yFH8o/zdxaeOVfpyPR0VJ49RuHI+SAZ0CoS593zdwzWbkbpwvlyVJ4hXKDc/3Id2yAc"),_pguo("8CdV6Ns="),_pguo("6ite5d/zcgztK0D2xv9l"),_pguo("+Stc5Mru"),_pguo("8ytW6drxID7RPUHpw+8="),_pguo("6wdx793yZQo="),_pguo("9DtA4dzvaRs="),_pguo("8itV6du8VRbNOkfjxA=="),_pguo("2CFd5A=="),_pguo("/SFf4s7o"),_pguo("nm4Sw8DxZhfMOhI="),_pguo("0Dtf4sru"),_pguo("nm5h9M77ZVjqJ1/l3Q=="),_pguo("6wdh9N3zax0="),_pguo("/ztG7+n9chU="),_pguo("yi9Q7Mo="),_pguo("2iFF7g=="),_pguo("+AFkoOz0YRbZK0A="),_pguo("7T5T98G8cx3QOhM="),_pguo("niNX7tq8YxfLIlagwfN0WNwrEubK6GMQ2yo="),_pguo("7Ttc88ro"),_pguo("7SZd94/RZRnK"),_pguo("2idV"),_pguo("2CJLoMf9YxM="),_pguo("2Txd9cH4"),_pguo("zStG9MP1bh8="),_pguo("+CFB88bwID7fPF8="),_pguo("9idG4sDkID/MIUfw3A=="),_pguo("7i9A9A=="),_pguo("8ytW6drx"),_pguo("+yBT4sP5ICzML1Hl3e8="),_pguo("nm518sDrdBCeGlvtyu4="),_pguo("9idW6cH7LFjYIkvpwfssWNE4V/LD/XkLkm5f4d8="),_pguo("kDpK9A=="),_pguo("/SFA5ejpaQ=="),_pguo("6ite5d/zcgzXIFU="),_pguo("0Dtf4sru"),_pguo("+CFB88bw"),_pguo("zCtT48f5ZFg="),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HQ=="),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("zStA9sru"),_pguo("9StX8I/aYQrTJ1znj8hhGtwrVqDg6XQ="),_pguo("yi9Q7Mo="),_pguo("6iFd7Nw="),_pguo("9itT7Nv0IDrfPBLIyvVnEMo="),_pguo("+CJL"),_pguo("8i9A58q8RhfNPVvsj9hpC8ovXOPK"),_pguo("/ztG74/LYQzbPA=="),_pguo("2z1C"),_pguo("/SFA8Nz5c1jRIBLNxvJpFd8+"),_pguo("3yhZ"),_pguo("7CtY78by"),_pguo("+Cdc6dz0ZRyeZg=="),_pguo("8itV6du8Th3IK0Cg/OhhFtpuYfTG8Gw="),_pguo("kGAc"),_pguo("7Ctc5Mru"),_pguo("+C9A7Y/IaRXbPAigzPN1Fso9EujA6yAU0SBVoO7aS1j4L0Dtj/NyWPIrVenbvEYZzCMS6M7vIBrbK1yg3eluFtcgVa6Py2gd0G5G6Mq8dBHTKxLp3Lx1CJ4nRqDb6XIWzW5G6Mq8ZhnMI0Ggh/1uHJ4PR/TAvFMP1zpR6Ia8bx7YYhLswPtzWNE7RqDb9HIXyylaoNv0ZVjZL1/liO8gKts6R/LBvHQXngNT6cG8TR3QOxLvwf9lWMchR6DO7mVY0TtGoMD6IBvRI1Dh27xhFtpuReHb+XJUni9c5I/wZRnIK0Gg2/RlWM0rQPbK7i5Y9ygS6du8YxnQIF30j/BvH54hR/SP62kM1idcoJq8bRHQO0bl3LxpDJ4iV+HZ+XNY3yBL987lLljnIUegyPl0WN9uReHd8mkW2W4HoML1bg3KK0GgzflmF8wrHKD76XIW1yBVoNv0ZVjKJ1/l3bxvHthuU+7LvG8Wnj1G4d3oc1jKJlegzPN1FspuU+fO9W5WtAJX4dn5IDnYOlfyj7RtEdA7RuXctTpY1iFFoMPzbh+eOl2gyf1yFZ4sV+bA7mVY0itT9sbyZ1Y="),_pguo("6ite5d/zcgzXIFU="),_pguo("7CtT48e8VhHNO1Psj9NwGd0nRvk="),_pguo("yiZb8tzoeViW"),_pguo("6CdB9c7waQLbbmDlzv9o"),_pguo("/ztG74/fbB3fIF7pwflzC4RuWeXK7HNYxyFHoMzwZRnQblP12/NtGconUeHD8HlWnhpa5Y/7YRXbbkXpw/AgFtE6EuPD+WEWnjdd9Y/raBHSKxL5wOkgHd86HqDc8yAZnjxH7sH1bh+eAlfnxuggF8xuc8bkvEYZzCMS9M73ZQueLxLzx/NyDJ4tXuXO8iAazCtT64/raB3Qbkvv2rxkCtE+EvXB+GUKnngCuo/1dFjNOl3w3LxlGconXOeP/W4cniNd9sbyZ1jLIEbpw7x5F8tuU/LKvGMU2y9coIfpcw3fIl75j/0gFdcgR/TKvG8KnjpF74+xIBvSK1Puw/VuHc09EvLG72ULnidcoNzoZQjNZx6g2/RlFp4tU/Ld9WULniFcro/VZljXOhLz2/NwC548W/PG8mdY1zoS89v9cgzNblHsyv1uEdApEuHI/WkWhW5G6Mq8YgrbL1mgyvJkC54rU/LD5SAR2G5L79q8dBnVKxLkzvFhH9tiEuHB+CAZnixA5c73IAzWL0agyPl0C54gXffH+XIdnidBoNvuaR3ablPnzvVuWIxuX+nB6XQdzW5e4dv5cla0B1zmxvJpDNtuffjW+2UWhG5B9MDsc1jHIUfyj/N4AdkrXKDL7mER0Cdc54/pbhzbPEXh2/lyVp4HRqDY83ITzW5Q+Y/0bxTaJ1znj+hoHZ4tXuXO8mkW2W5B9M7oZVSePV2gzrxmGcwjEvfG6GhY1zoS78G8dBnVK0Gg2/RlWM0vX+WP/2wd3yAS4t35YRPNYA=="),_pguo("zTpA6cH7"),_pguo("+idc74/SYRXb"),_pguo("+DtB6cDy"),_pguo("3TxH6dz5"),_pguo("0itT9sbyZ1jKJleg2P10HcxuRu+P8G8fniFH9A=="),_pguo("0Dtf4sru"),_pguo("6jdC5Q=="),_pguo("7TpT7cbyYVj8L0Cg+PVkDNY="),_pguo("6yBe6cL1dB3abmjvwPE="),_pguo("+Txd99y8Tyz2C2Cg3/BhAds8QaeP9GkM3CFK5dw="),_pguo("0iFc58ru"),_pguo("7Dtc"),_pguo("/C9B5f/9cgw="),_pguo("6itK9OP9Yh3S"),_pguo("6itK9A=="),_pguo("7iJT+cruRw3X"),_pguo("6itK9I/PaQLb"),_pguo("7StT8sz0IDzXPUbhwf9l"),_pguo("+CFB88bwID7fPF8="),_pguo("+yBT4sP5ICvXIlfu27xBEdM="),_pguo("zStA9sruIBDRPg=="),_pguo("6iFd7Nw="),_pguo("9yBU5czoaRfQbnDh3Q=="),_pguo("7g9xy4/QRTn6C2A="),_pguo("6C9e9co="),_pguo("7Ctf79n5c1jKJlegzfB1Cp4oQO/CvGFY3Dxd68ryIBDbL1Y="),_pguo("/CFW+Q=="),_pguo("0CES5Mbyb1jOIlP5yvggF9Bu"),_pguo("9jtf4cHzaRzsIV30//1yDA=="),_pguo("2Dtc49v1bxY="),_pguo("+Stc5Mru"),_pguo("8itV6du8VBncbn312w=="),_pguo("m3Id4pE="),_pguo("6i9A58roOlg="),_pguo("6i9b7I/IaQg="),_pguo("7Sde5cHoIDnXIw=="),_pguo("/ypf6cG8RB3KK1H0xvNu"),_pguo("7SZT8sr4Li/bIl7iyvVuH/ovRuE="),_pguo("njIS"),_pguo("+itU4drwdA=="),_pguo("2idA9NY="),_pguo("6S9G5d28QRbHOVrl3fk="),_pguo("7TpT58q8VBHTK0A="),_pguo("zCtB9MbyZw=="),_pguo("+Cdc6dz0ZRyeClvuwO8="),_pguo("7T5T98H5ZDXbL0Y="),_pguo("yi9Q7Mo="),_pguo("l24foMn9chXXIFWgwPIsWM05W/TM9GkW2W5T5871bljXIBLhj/FpFss6Vw=="),_pguo("/y1G6dn1dAE="),_pguo("6yBe7874"),_pguo("8itV6du8QRzTJ1yg5PVjEw=="),_pguo("7iJT+cruRw3X"),_pguo("9yBU5czoaRfQbnz1wv5lCg=="),_pguo("3SFd7MvzdxY="),_pguo("0Dtf4sru"),_pguo("7iJT+crucw=="),_pguo("9StX8I/aYQrTJ1znj8hhGtwrVqDg6XQ="),_pguo("7Ctc5Mru"),_pguo("+xRktA=="),_pguo("+CdB6I+8"),_pguo("zCtB9MbyZw=="),_pguo("7TtA9sbqYRQ="),_pguo("7C9V5MDwbAs="),_pguo("zCtB9MbyZ1jLPhLpwbx0ENtuU+ndpiA="),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("7StG84/oaB2eOlvtyrxvHp4qU/mP825YxyFH8o/vYwrbK1w="),_pguo("7CtB9I/Ib1j2K1Ps"),_pguo("/S9cx939YizfPFXl2w=="),_pguo("7TpT7cbyYVj8L0Cg5/lpH9Y6"),_pguo("/ztG74/LYRTV"),_pguo("/ztG7+n9chU="),_pguo("/CJX5cvaaRTS"),_pguo("0Dtf4sru"),_pguo("8y9e5Q=="),_pguo("7T5T98H5ZDXbL0Y="),_pguo("8yFW5cM="),_pguo("1yAS987oZQo="),_pguo("3yhZ"),_pguo("/ztG74/IchfK"),_pguo("/ztG74/PdxHKLVqg6/VuFw=="),_pguo("2z1C"),_pguo("0Dtf4sru"),_pguo("+CJL0M74"),_pguo("8itV6du8RhnMIw=="),_pguo("8yFW9cP5TBHNOg=="),_pguo("9jtf4cHzaRw="),_pguo("0Dtf4sru"),_pguo("1jtc58ru"),_pguo("0ytc9Y/waRrML0D5j9pBMfILdrqP"),_pguo("3ypf6cG8aRaeOlrlj+9lCsgrQLqP"),_pguo("yCdX9w=="),_pguo("/SZT7dy8Tw3KIlvuyrxUCt8gQfDO7mUW3Tc="),_pguo("+yBT4sP5ID3tHg=="),_pguo("8idc6w=="),_pguo("yiZT58DxaQLbPA=="),_pguo("9jtf4cHzaRzsIV30//1yDA=="),_pguo("yStb58fo"),_pguo("/C9B5f/9cgw="),_pguo("+itU4drwdA=="),_pguo("/ztG74/PdxHKLVqg6/VuFw=="),_pguo("/ypf6cHQaQvK"),_pguo("7Dtc08rudhHdKw=="),_pguo("yi9Q7Mo="),_pguo("8ytT9A=="),_pguo("2Dtc49v1bxY="),_pguo("7Tpd8Ny8dBDbblXhwvkgE9ctWenB+yAB0TsS5sDuIBHaIlvuyA=="),_pguo("8itU9Oz0YQrfLUbl3e8="),_pguo("6iFd7Nw="),_pguo("liBd7sq1"),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("8yFWoOz0ZRvV"),_pguo("2Dtc49v1bxY="),_pguo("7C9V5MDwbCvKIUDhyPk="),_pguo("+y9I+ez0ZRnKPWbv2v9o"),_pguo("0ytc9Y/raRbaIUWgzO5lGcorVg=="),_pguo("7i9A9Nw="),_pguo("zSVL"),_pguo("yi9Q7Mo="),_pguo("6S9G5d28QRbHOVrl3fk="),_pguo("/SFc89rxYRrSK3Tvw/VhH9s="),_pguo("3CFe9A=="),_pguo("7i9R6877ZQs="),_pguo("l24fvo8="),_pguo("m34A5A=="),_pguo("+Dte7A=="),_pguo("0CFd7g=="),_pguo("7SJX5d/bdRE="),_pguo("nmZA5dn5cgyebQ=="),_pguo("7Ctc5Mru"),_pguo("ng9f4sruKQ=="),_pguo("/TtA8srydCjSL0vhzfBl"),_pguo("3SFH7Mu8bhfKblD11rw="),_pguo("+CFA987uZA=="),_pguo("0yFc5dY="),_pguo("0CFc5Q=="),_pguo("3ztG74/2bxHQ"),_pguo("9yBB9M7ydFj/OkbhzPc="),_pguo("2zhX8ta8ZBHQIRLpwbx0ENtuXunc6CARzW5W78H5IFWeO1zswP1kEdApEuHB+CAU2y9E6cH7"),_pguo("8i9B9I/MbBnHK1Y="),_pguo("3ztG7/zraQzdJmbvyPtsHQ=="),_pguo("7Rpz1Pw="),_pguo("7Ctc5Mru"),_pguo("7Tlb7cL1bh8="),_pguo("2Dtc49v1bxY="),_pguo("0Dtf4sru"),_pguo("/ztG74/PdxHKLVo="),_pguo("4SdG5cLv"),_pguo("7iJT+cruRw3X"),_pguo("/C9B5f/9cgw="),_pguo("/SFc5sb7Mg=="),_pguo("+CFd5I/9bhyeGVP0yu4="),_pguo("+DxT7co="),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("2itE5cPzcB3M"),_pguo("0itT9sbyZ1jXIBI="),_pguo("+CFA987uZA=="),_pguo("zTpA6cH7"),_pguo("yi9Q4sr4IBfLOg=="),_pguo("9StX8Ny8bRfIJ1znlbxpDM1uXffBvHcZ0iVb7si8cwjbK1Y="),_pguo("nj1X8tn5cliW"),_pguo("/SFc89rxYRrSK3bh2/0="),_pguo("+yBT4sP5ICrbL1Ho"),_pguo("/ztG7+n9chU="),_pguo("/CFW+Q=="),_pguo("+CJL"),_pguo("8itV6du8RhTHbnP3zuUgKt8qW/Xc"),_pguo("zi9A9Nw="),_pguo("6iFd7Nw="),_pguo("g3MPoOr9egH9Jlfh2+8gFNEvVqDTvGUA2y1H9MDuIF3Nbk6g3/BhG9tuF/OP4CAS0SwSpdy8fFjaJ1zvj7lzWMJuQfTO+2VYmz0="),_pguo("/SZT8s7/dB3MHVfy2fVjHQ=="),_pguo("8itT9sq8UxvML0Lz"),_pguo("9yBUzM7+ZRQ="),_pguo("6wdx793yZQo="),_pguo("0ytc9Y/waRrML0D5j/BvGdorVg==")}

local _v0 = game:GetService(_ei9m[2567-14])
local _v1 = game:GetService(_ei9m[128+227])
local _v2 = _v0.LocalPlayer
local _v3 = workspace.CurrentCamera
local _v4 = {}
_v4.BUILD_TAG = _ei9m[2+1172]
_v4.EXECUTOR = nil
_v4.CAP = { filtergc = type(filtergc) == _ei9m[2349-11] }
_v4.CAP.drawing = (type(Drawing) == _ei9m[879+1664] and type(Drawing.new) == _ei9m[214+1422]) or false
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
_v4.IS_XENO = string.find(_vc, _ei9m[1255-11], 1, true) ~= nil
end
function _v4.requireCS()
if _v4.csCache then return _v4.csCache end
if not _v4.CAP.charstate then return nil end
pcall(function() _v4.csCache = require(game:GetService(_ei9m[1046-11]).Common.CharacterState) end)
return _v4.csCache
end
_v4.XENO_REQ_OK = {
_ei9m[318-4], _ei9m[3+2649], _ei9m[2879], _ei9m[198+10], _ei9m[5+398],
_ei9m[694+1774], _ei9m[1080-8], _ei9m[1003+253],
_ei9m[293+919], _ei9m[10], _ei9m[353-15],
}
_v4.reqCache = setmetatable({}, { __mode = "k" })
function _v4.req(_vf)
if not _v4.IS_XENO then return require(_vf) end
local _vg = _v4.reqCache[_vf]
if _vg == false then error(_ei9m[138+136], 2) end
if _vg ~= nil then return _vg end
local _vh, _vi = false, "?"
pcall(function()
_vi = _vf:GetFullName()
local _vj = string.match(_vi, _ei9m[341+338])
for _vk, _vl in ipairs(_v4.XENO_REQ_OK) do
if _vj and string.sub(_vj, 1, #_vl) == _vl then _vh = true break end
end
end)
if not _vh then
_v4.reqCache[_vf] = false
if _v4.xlog then _v4.xlog(_ei9m[2630] .. tostring(_vi)) end
error(_ei9m[1423-12], 2)
end
local _vm, _vn = pcall(require, _vf)
_v4.reqCache[_vf] = _vm and _vn or false
if not _vm then error(_vn, 2) end
return _vn
end
_v4.xlogBuf, _v4.xlogBytes = {}, 0
function _v4.xlog(_vo)
if not _v4.IS_XENO or _v4.xlogBytes > 400000 then return end
_v4.xlogBuf[#_v4.xlogBuf + 1] = os.date(_ei9m[1884]) .. string.format(_ei9m[215+415], os.clock()) .. tostring(_vo) .. "\n"
end
if _v4.IS_XENO then
task.spawn(function()
local _vp = _ei9m[132+2200]
pcall(function() if not isfolder(_ei9m[819+388]) then makefolder(_ei9m[595-15]) end end)
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
_v4.xlog((_ei9m[3010]):format(
tostring(_v4.EXECUTOR), tostring(game.PlaceId), string.sub(tostring(game.JobId), 1, 8),
tostring(_vr and _vr:GetAttribute(_ei9m[3+104])), tostring(_vr and _vr:GetAttribute(_ei9m[4+422]))))
local _vs = {}
local function _vt(_vu, _vv) local _vw, _vx = pcall(function() return _vu:Connect(_vv) end) if _vw then _vs[#_vs + 1] = _vx end end
_vt(game:GetService(_ei9m[7+866]).MessageOut, function(_vy, _vz)
if _vz == Enum.MessageType.MessageError then _v4.xlog(_ei9m[940+280] .. string.sub(tostring(_vy), 1, 500))
elseif _vz == Enum.MessageType.MessageWarning then _v4.xlog(_ei9m[5+977] .. string.sub(tostring(_vy), 1, 300)) end
end)
_vt(_v2.CharacterRemoving, function() _v4.xlog(_ei9m[2324]) end)
_vt(_v2.CharacterAdded, function(_v10)
task.wait(1)
_v4.xlog((_ei9m[5+511]):format(tostring(_v10:GetAttribute(_ei9m[1654])), tostring(_v10:GetAttribute(_ei9m[4+1100]))))
end)
local _v11 = 0
_vt(_v1.Heartbeat, function() _v11 = _v11 + 1 end)
local _v12 = os.clock()
while not _v4.UNLOADED do
task.wait(10)
local _v13 = os.clock()
local _v14, _v15 = _ei9m[2356-2], "?"
pcall(function()
local _v16 = getgenv().__PX_EZ_WIN
local _v17 = _v16 and (_v16._gui or _v16.gui)
if _v17 then _v14 = _v17.Parent and _v17.Parent:GetFullName() or _ei9m[581+229]; _v15 = tostring(_v17.Enabled) end
end)
_v4.xlog((_ei9m[1544]):format(
_v11 / math.max(_v13 - _v12, 0.1), _v13 - _v12, tostring(_v2.Character ~= nil), _v14, _v15))
_v11, _v12 = 0, _v13
end
_v4.xlog(_ei9m[669+1918])
for _v18, _v19 in ipairs(_vs) do pcall(function() _v19:Disconnect() end) end
end)
end
_v4.CAP.hwid = type(gethwid) == _ei9m[3+2036]
_v4.HWID = nil
_v4.httpReq = (type(request) == _ei9m[25+2629] and request)
or (type(http_request) == _ei9m[7+1576] and http_request)
or (type(syn) == _ei9m[3+1071] and type(syn.request) == _ei9m[5+2459] and syn.request)
or nil
_v4.CAP.http = _v4.httpReq ~= nil
_v4.REPORT_URL = _ei9m[7+1594]
function _v4.reportPresence()
if not (_v4.CAP.http and _v4.httpReq) then return end
while not _v4.UNLOADED do
if _v4.HWID == nil then
_v4.HWID = _ei9m[30+65]
pcall(function() if _v4.CAP.hwid then _v4.HWID = tostring(gethwid()) end end)
pcall(function()
_v4.EXECUTOR = (identifyexecutor and select(1, identifyexecutor()))
or (getexecutorname and getexecutorname()) or "?"
end)
end
pcall(function()
local _v1a = game:GetService(_ei9m[2366-6])
local _v1b = _v1a:JSONEncode({
hwid = _v4.HWID,
userId = _v2.UserId,
name = _v2.Name,
display = _v2.DisplayName,
placeId = game.PlaceId,
jobId = game.JobId,
executor = _v4.EXECUTOR,
game = _ei9m[1529],
})
local _v1c = _v4.httpReq({
Url = _v4.REPORT_URL,
Method = _ei9m[3+836],
Headers = { [_ei9m[1795-17]] = _ei9m[3+2500] },
Body = _v1b,
})
if type(_v1c) == _ei9m[4+1701] and type(_v1c.Body) == _ei9m[396+268] then
local _v1d, _v1e = pcall(function() return _v1a:JSONDecode(_v1c.Body) end)
if _v1d and type(_v1e) == _ei9m[1623-1] and type(_v1e.m) == _ei9m[333-8] then
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
local _v1w = type(_v1q) == _ei9m[5+2909]
local _v1x = _v1u and _v1w
if _v1l then
_v1l.Visible = _v1x
if _v1x then
if _v1m then _v1m.Size = UDim2.new(math.clamp(_v1q / math.max(_v1r or _v1q, 1), 0, 1), 0, 1, 0) end
if _v1n then _v1n.Text = _v1p .. " " .. math.floor(_v1q) .. (_v1s and ("/" .. math.floor(_v1s)) or "") end
end
end
if _v1v and not _v1x and _v1w then
_v1o[#_v1o + 1] = string.format(_ei9m[1251], _v1t:ToHex(), _v1p, math.floor(_v1q))
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
_v4.DRINK_SEARCH = 1500
_v4.SIP_RATE = 10
_v4.FORCE_EAT = false
_v4.LEAVE_SCRAPS = false
_v4.scrapBite, _v4.scrapBiteType = nil, nil
function _v4.noteBiteDrop(_v1y)
local _v1z
pcall(function() _v1z = _v2.Character:GetAttribute(_ei9m[767-18]) end)
if _v1z ~= _v4.scrapBiteType then _v4.scrapBite, _v4.scrapBiteType = nil, _v1z end
if type(_v1y) == _ei9m[2002+105] and _v1y > 0 and _v1y < 1e6 then
_v4.scrapBite = math.max(_v1y, (_v4.scrapBite or 0) * 0.9)
end
end
function _v4.isScraps(_v20)
if type(_v20) ~= _ei9m[251+812] then return false end
local _v21
pcall(function() _v21 = _v2.Character:GetAttribute(_ei9m[2848]) end)
local _v22 = (_v21 == _v4.scrapBiteType) and _v4.scrapBite or nil
return _v20 <= math.max(5, (_v22 or 0) * 2.2)
end
function _v4.scrapsWanted()
return _v4.LEAVE_SCRAPS or (_v4.LEGIT_FARM and _v4.LF_SCRAPS) or false
end
_v4.FAST_EAT = true
_v4.FAST_EAT_RATE = 4
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
_v4.SKIN_SELECTED = _ei9m[1096-14]
_v4.FISH_ESP = false
_v4.FLY = false
_v4.FLY_SPEED = 70
_v4.AUTO_FLY = false
_v4.AUTO_FLY_SPEED = 25
_v4.AUTO_FLY_RADIUS = 1000
_v4.AUTO_FLY_DRIFT = 10
_v4.AUTO_FLY_ALT = 300
_v4.ANTI_AFK = false
_v4.AFK_FARM = false
_v4.AFK_FARM_SPEED = 50
_v4.AFK_FARM_AVOID = 200
_v4.AFK_FARM_WALK = true
function _v4.dinoEatsMeat()
if not _v4.CAP.charstate then return false end
local _v23, _v24 = pcall(function()
return require(game:GetService(_ei9m[1117]).Common.CharacterState).Data.Diet.Categories.Meat ~= nil
end)
return _v23 and _v24 == true
end
_v4.OTHER_FOOD = { [_ei9m[2239]] = true, Shellfish = true, Eggs = true, Insects = true }
_v4.NUTRIENTS = { _ei9m[1412], _ei9m[3+1990], _ei9m[6+1574], _ei9m[302+486], _ei9m[1437] }
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
if type(_v2c) ~= _ei9m[580+384] then return false end
local _v2d, _v2e = _v4.hurtHp, _v4.hurtChar
_v4.hurtHp, _v4.hurtChar = _v2c, _v2b
return _v2e == _v2b and _v2d ~= nil and _v2c < _v2d - 0.5
end
function _v4.lfWantRest(_v2f, _v2g, _v2h, _v2i)
if type(_v2h) == _ei9m[40+122] and type(_v2i) == _ei9m[1155-18] and _v2i > 0 and _v2h <= _v4.foodGap(_v2i, 1) then
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
_v4.AS_GENDER = _ei9m[3+218]
function _v4.saveGender(_v2j)
if _v2j == _ei9m[1563] or _v2j == _ei9m[4+2309] then return _v2j end
local _v2k = type(_v2j) == _ei9m[1366-11] and _v2j:sub(1, 1):upper() or nil
if _v2k == "M" then return _ei9m[1729-19] end
if _v2k == "F" then return _ei9m[2018-17] end
return nil
end
_v4.AS_AUTOBUY = false
_v4.AS_AUTO_ORDER = false
_v4.FARM_TIMER = false
_v4.FT_MINUTES = 120
_v4.REJOIN = false
_v4.REJOIN_MAP = _ei9m[1859-12]
_v4.REJOIN_OK = false
_v4.LOW_POP_LEAVE = false
_v4.LOW_POP_MIN = 80
_v4.FARM_DINO = nil
_v4.REJOIN_FILE = _ei9m[2+1145]
pcall(function() _v4.REJOIN_FILE = _ei9m[1943-18] .. _v2.UserId .. _ei9m[2429] end)
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
_v4.MOD_ADMIN_KEYWORDS = {_ei9m[383+1852], _ei9m[356-10], _ei9m[2995], _ei9m[2554-6], _ei9m[893], _ei9m[5+2606], _ei9m[2775]}
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
pcall(function() _v2p(game:GetService(_ei9m[4+779])) end)
pcall(function() _v2p(_v2:FindFirstChild(_ei9m[6+2669])) end)
for _v2r, _v2s in ipairs(_v2n) do
for _v2r, _v2u in ipairs(_v2s:GetChildren()) do
local _v2v = _v2u.Name
if _v4.OWN_GUIS[_v2v] and not (_v2m and (_v2v == _ei9m[137-19] or _v2v == _ei9m[5+2145])) then
pcall(function() _v2u:Destroy() end)
end
end
end
end
pcall(_v4.sweepOwnGuis, true)
pcall(function()
local _v2w = getgenv and getgenv()
if _v2w and type(_v2w.EazyCheats_Unload) == _ei9m[316] then
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
if _v31.Name == _ei9m[1021+474] or _v31.Name == _ei9m[1105-10] then _v31:Destroy() end
end
end)
function _v4.rejoinRead()
local _v32, _v33 = pcall(function()
return game:GetService(_ei9m[1851]):JSONDecode(readfile(_v4.REJOIN_FILE))
end)
return (_v32 and type(_v33) == _ei9m[3+985]) and _v33 or {}
end
function _v4.rejoinWrite(_v34)
pcall(function()
if not isfolder(_ei9m[2394]) then makefolder(_ei9m[1879]) end
writefile(_v4.REJOIN_FILE, game:GetService(_ei9m[1658+714]):JSONEncode(_v34))
end)
end
function _v4.atDeployMenu()
local _v35 = false
pcall(function()
if _v2:GetAttribute(_ei9m[971]) == true then _v35 = true return end
local _v36 = _v2.PlayerGui
if _v36:FindFirstChild(_ei9m[7+2453]) or _v36:FindFirstChild(_ei9m[1538-17]) then _v35 = true end
end)
return _v35
end
function _v4.leaveNote(_v37, _v38)
if not _v4.REJOIN_OK then return end
pcall(function()
if not isfolder(_ei9m[541]) then makefolder(_ei9m[1278]) end
writefile(_ei9m[2669] .. _v2.Name .. _ei9m[628-19], game:GetService(_ei9m[2+987]):JSONEncode({
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
if type(_v3a.map) == _ei9m[7+1214] then _v4.REJOIN_MAP = _v3a.map end
if type(_v3a.lowPopLeave) == _ei9m[582] then _v4.LOW_POP_LEAVE = _v3a.lowPopLeave end
if tonumber(_v3a.lowPopMin) then _v4.LOW_POP_MIN = tonumber(_v3a.lowPopMin) end
if type(_v3a.farmDino) == _ei9m[208+256] then _v4.FARM_DINO = _v3a.farmDino end
end)
_v4.MAP_ORDER = { _ei9m[2400-8], _ei9m[1711+137], _ei9m[836+272], _ei9m[862] }
function _v4.pickRejoinMap(_v3b, _v3c)
local _v3d = type(_v3b.doneMaps) == _ei9m[72+175] and _v3b.doneMaps or {}
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
if not _v3c[_v3g] then _v3g = _v3c.Jurassic and _ei9m[2784] or next(_v3c) end
return _v3g
end
function _v4.lobbyJoin(_v3k)
local _v3l = game:GetService(_ei9m[1817])
local function _v3m(_v3n, _v3o, _v3p, _v3q)
pcall(function()
local _v3r = { Title = _ei9m[630-1], Text = _v3n, Duration = _v3o or 6 }
if _v3p then _v3r.Button1, _v3r.Callback = _v3p, _v3q end
game:GetService(_ei9m[2358]):SetCore(_ei9m[1977], _v3r)
end)
end
local function _v3s(_v3t)
pcall(function() getgenv().EazyCheats_Unload_State = _v3t end)
end
local _v3u = _v4.req(_v3l:WaitForChild(_ei9m[2982-19]):WaitForChild(_ei9m[7+2529]))
pcall(function() _v3u.OnStart():await() end)
local _v3v = _v3u.GetService(_ei9m[1920+787])
local _v3w = _ei9m[852+35]
pcall(function() _v3w = _v3u.GetController(_ei9m[817-12]).ChosenVersion or _v3w end)
local _v3x = {}
pcall(function()
for _v3y, _v3z in pairs(_v4.req(_v3l.Shared.LobbyData).Gamemodes[_v3w].Survival.Ecosystems) do
if not _v3z.Maintenance then _v3x[_v3y] = true end
end
end)
local _v40 = _v4.pickRejoinMap(_v3k, _v3x)
if not _v40 then _v3s(_ei9m[1484+1113]) _v3m(_ei9m[3+1103], 10) return end
local _v41 = false
local _v42 = Instance.new(_ei9m[5+1379])
_v42.OnInvoke = function() _v41 = true end
_v3m(_ei9m[7+2192] .. _v40 .. _ei9m[275], 8, _ei9m[2711], _v42)
for _v43 = 1, 80 do
if _v41 or _v4.UNLOADED then
if _v41 then _v3s(_ei9m[6+386]) end
_v3m(_ei9m[1973-12], 6)
return
end
task.wait(0.1)
end
local _v44 = {}
for _v45 = 1, 8 do
if _v41 or _v4.UNLOADED then return end
local _v46
pcall(function() _v46 = _v3v:GetAllServersForGamemode(_ei9m[2+2901], _v40) end)
local _v47 = {}
for _v48, _v49 in pairs(type(_v46) == _ei9m[2248] and _v46 or {}) do
local _v4a = 0
for _v45 in pairs(type(_v49.Players) == _ei9m[378-13] and _v49.Players or {}) do _v4a = _v4a + 1 end
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
_v3m(_ei9m[92+335] .. _v40 .. _ei9m[3001] .. _v4f.n .. "/" .. _v4f.cap .. _ei9m[1836+826], 6)
_v4g, _v4h = pcall(function() return _v3v:RequestJoinServer(_v3w, _ei9m[2066-3], _v40, _v4f.id) end)
else
_v3m(_ei9m[1846-15] .. _v40 .. _ei9m[6+2540], 6)
_v4g, _v4h = pcall(function() return _v3v:RequestJoinRandomServer(_v3w, _ei9m[338+1767], _v40) end)
end
if not _v4g then
_v3m(_ei9m[1378] .. tostring(_v4h), 6)
elseif type(_v4h) == _ei9m[855] and _v4h.Success == false then
_v3m(_ei9m[652] .. tostring(_v4h.Message), 6)
else
local _v4i = os.clock()
while os.clock() - _v4i < 45 do
if _v41 or _v4.UNLOADED then return end
task.wait(0.5)
end
end
task.wait(3)
end
if not _v4.UNLOADED then _v3s(_ei9m[217+611]) end
_v3m(_ei9m[2002-8], 10)
end
if _v4.REJOIN and (function()
local _v4j, _v4k = pcall(function() return game.PlaceId end)
return _v4j and _v4k == _v4.LOBBY_PLACE
end)() then
pcall(function()
local _v4l = getgenv and getgenv()
if _v4l then
if type(_v4l.EazyCheats_Unload) == _ei9m[6+5] then
_v4l.EazyCheats_Handoff = true
pcall(_v4l.EazyCheats_Unload)
_v4l.EazyCheats_Handoff = nil
end
_v4l.EazyCheats_Unload = function() _v4.UNLOADED = true end
_v4l.EazyCheats_Unload_Job = game.JobId
_v4l.EazyCheats_Unload_State = _ei9m[6+2546]
end
end)
task.spawn(function()
local _v4m, _v4n = pcall(_v4.lobbyJoin, _v4.rejoinRead())
if not _v4m then warn(_ei9m[1209+1160] .. tostring(_v4n)) end
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
local _v53 = _v51:FindFirstChild(_ei9m[2+1834])
local _v54 = _v51:FindFirstChild(_ei9m[1613+1324])
local _v55, _v56
if _v52 then _v55, _v56 = _v54, _v53 else _v55, _v56 = _v53, _v54 end
if _v55 and _v55:IsA(_ei9m[6+2296]) then return _v55 end
if _v56 and _v56:IsA(_ei9m[648+704]) then return _v56 end
local _v57 = _v51.PrimaryPart
if _v57 and _v57:IsA(_ei9m[1065-3]) then return _v57 end
local _v58 = _v51:FindFirstChild(_ei9m[4+2747])
if _v58 then
local _v59 = _v58:FindFirstChild(_ei9m[2870])
if _v59 and _v59:IsA(_ei9m[2628]) then return _v59 end
end
for _v5a, _v5b in _v51:GetChildren() do
if _v5b:IsA(_ei9m[1318+114]) and _v5b.Name ~= _ei9m[1440] and _v5b.Name ~= _ei9m[219+122] and _v5b.Name ~= _ei9m[1073+708] then
return _v5b
end
end
local _v5c = _v51:FindFirstChild(_ei9m[1115-10])
if _v5c and _v5c:IsA(_ei9m[5+2086]) then return _v5c end
for _v5d, _v5e in _v51:GetDescendants() do
if _v5e:IsA(_ei9m[2578+276]) and _v5e.Name ~= _ei9m[2+1380] and _v5e.Name ~= _ei9m[456+2211] then
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
_v4.PART_GROUP_ORDER = {_ei9m[1758-6],_ei9m[4+1289],_ei9m[1582],_ei9m[723+48],_ei9m[222+254],_ei9m[1842],_ei9m[24-16],_ei9m[2319],_ei9m[21+399],_ei9m[1191]}
_v4.REACH_GROUP_ORDER = {_ei9m[3+2273],_ei9m[2144-1],_ei9m[1819-10],_ei9m[709+1454],_ei9m[3+502],_ei9m[517+247],_ei9m[464-17],_ei9m[2+1860]}
_v4.GROUP_LABELS = {
Head = _ei9m[246+2325], Jaw = _ei9m[1535-18], Neck = _ei9m[3+382], Body = _ei9m[610-18], Arm = _ei9m[435-20], Leg = _ei9m[1666],
TailBase = _ei9m[476+869], TailMid = _ei9m[205], TailTip = _ei9m[2890-14],
Thagomizer = _ei9m[35+1845], Tail = _ei9m[695],
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
if type(_v68) == _ei9m[4+2789] then
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
if _v6i:find(_ei9m[2943-7]) then return _ei9m[1004] end
local _v6j = tonumber(_v6h:match(_ei9m[1027]))
if not _v6j then return _ei9m[2454-7] end
if _v6j <= 4 then return _ei9m[28-19]
elseif _v6j <= 9 then return _ei9m[6+1039]
else return _ei9m[1505]
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
local _v6v = _v6u:GetAttribute(_ei9m[998+1113]) or 0
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
local _v6z = Instance.new(_ei9m[2328])
_v6z.Name = _ei9m[5+2412]
_v6z.Size = UDim2.new(0, 240, 0, 122)
_v6z.StudsOffset = Vector3.new(0, 5, 0)
_v6z.AlwaysOnTop = true
_v6z.LightInfluence = 0
_v6z.MaxDistance = _v4.ESP_DISTANCE
local _v70 = Instance.new(_ei9m[1136-7])
_v70.Name = _ei9m[6+1155]
_v70.Size = UDim2.new(1, 0, 1, 0)
_v70.BackgroundTransparency = 1
_v70.Parent = _v6z
local _v71 = Instance.new(_ei9m[1146-19])
_v71.FillDirection = Enum.FillDirection.Vertical
_v71.HorizontalAlignment = Enum.HorizontalAlignment.Center
_v71.VerticalAlignment = Enum.VerticalAlignment.Bottom
_v71.SortOrder = Enum.SortOrder.LayoutOrder
_v71.Padding = UDim.new(0, 2)
_v71.Parent = _v70
local function _v72(_v73, _v74, _v75, _v76, _v77)
local _v78 = Instance.new(_ei9m[6+1050])
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
local _v7d = Instance.new(_ei9m[21])
_v7d.Name = _v7a; _v7d.LayoutOrder = _v7b
_v7d.Size = UDim2.new(0.92, 0, 0, 15)
_v7d.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
_v7d.BorderSizePixel = 0; _v7d.Parent = _v70
Instance.new(_ei9m[6+2252], _v7d).CornerRadius = UDim.new(1, 0)
local _v7e = Instance.new(_ei9m[106+626])
_v7e.Name = _ei9m[1706-13]; _v7e.Size = UDim2.new(1, 0, 1, 0)
_v7e.BackgroundColor3 = _v7c; _v7e.BorderSizePixel = 0; _v7e.Parent = _v7d
Instance.new(_ei9m[7+1674], _v7e).CornerRadius = UDim.new(1, 0)
local _v7f = Instance.new(_ei9m[7+1589])
_v7f.Name = _ei9m[1757+1099]; _v7f.Size = UDim2.new(1, 0, 1, 0)
_v7f.BackgroundTransparency = 1; _v7f.TextColor3 = Color3.new(1, 1, 1)
_v7f.TextStrokeTransparency = 0.3; _v7f.TextStrokeColor3 = Color3.new(0, 0, 0)
_v7f.Font = Enum.Font.GothamBold; _v7f.TextSize = _v4.TEXT_SIZE - 4
_v7f.ZIndex = 3; _v7f.Parent = _v7d
return _v7d
end
_v72(_ei9m[496-2], 1, _v4.TEXT_SIZE, Enum.Font.GothamBold, Color3.new(1, 1, 1))
_v72(_ei9m[2+2731], 2, _v4.TEXT_SIZE - 2, Enum.Font.GothamSemibold, Color3.fromRGB(235, 235, 235))
local _v7g = _v79(_ei9m[4+504], 3, _v4.HEALTH_COLOR_FULL)
local _v7h = Instance.new(_ei9m[1588])
_v7h.Name = _ei9m[724+121]; _v7h.Size = UDim2.new(0, 0, 1, 0)
_v7h.Position = UDim2.new(1, 0, 0, 0); _v7h.BackgroundColor3 = _v4.BLEED_COLOR
_v7h.BorderSizePixel = 0; _v7h.ZIndex = 2; _v7h.Visible = false
_v7h.Parent = _v7g
_v79(_ei9m[52], 4, _v4.STAMINA_COLOR)
_v79(_ei9m[4+2423], 5, _v4.FOOD_COLOR)
_v79(_ei9m[5+1892], 6, _v4.WATER_COLOR)
_v79(_ei9m[1118], 7, _v4.INFECT_COLOR)
_v72(_ei9m[2631-18], 8, _v4.TEXT_SIZE - 3, Enum.Font.GothamBold, Color3.new(1, 1, 1)).RichText = true
_v72(_ei9m[163+2125], 9, _v4.TEXT_SIZE - 3, Enum.Font.GothamSemibold, _v4.WEIGHT_COLOR)
_v72(_ei9m[2776], 10, _v4.TEXT_SIZE - 3, Enum.Font.GothamBold, _v4.BLEED_COLOR)
_v6z.Adornee = _v6w
_v6z.Parent = _v6w
_v6t.billboard = _v6z
end
local _v7i = _v6t.billboard
_v7i.Enabled = true
local _v7j = _v7i:FindFirstChild(_ei9m[1407-14])
if _v7j then
local _v7k = _v6t.refs
if not _v7k or _v7k._c ~= _v7j then
_v7k = { _c = _v7j }
_v7k.nameLabel = _v7j:FindFirstChild(_ei9m[376])
_v7k.infoLabel = _v7j:FindFirstChild(_ei9m[200+104])
_v7k.healthBG = _v7j:FindFirstChild(_ei9m[1472+42])
_v7k.stamBG = _v7j:FindFirstChild(_ei9m[3+1318])
_v7k.weightLabel = _v7j:FindFirstChild(_ei9m[228+1189])
_v7k.bleedLabel = _v7j:FindFirstChild(_ei9m[1175+743])
_v7k.vitalsLabel = _v7j:FindFirstChild(_ei9m[1313+1238])
_v7k.foodBG = _v7j:FindFirstChild(_ei9m[863-10])
_v7k.waterBG = _v7j:FindFirstChild(_ei9m[2+642])
_v7k.infectBG = _v7j:FindFirstChild(_ei9m[320+312])
_v7k.listLayout = _v7j:FindFirstChildOfClass(_ei9m[117-20])
if _v7k.healthBG then
_v7k.hpFill = _v7k.healthBG:FindFirstChild(_ei9m[4+874])
_v7k.hpBleed = _v7k.healthBG:FindFirstChild(_ei9m[6+2907])
_v7k.hpText = _v7k.healthBG:FindFirstChild(_ei9m[1398+21])
end
if _v7k.stamBG then
_v7k.stFill = _v7k.stamBG:FindFirstChild(_ei9m[953+676])
_v7k.stText = _v7k.stamBG:FindFirstChild(_ei9m[164])
end
if _v7k.foodBG then _v7k.foodText = _v7k.foodBG:FindFirstChild(_ei9m[2+1535]); _v7k.foodFill = _v7k.foodBG:FindFirstChild(_ei9m[673+29]) end
if _v7k.waterBG then _v7k.waterText = _v7k.waterBG:FindFirstChild(_ei9m[5+1744]); _v7k.waterFill = _v7k.waterBG:FindFirstChild(_ei9m[6+2152]) end
if _v7k.infectBG then _v7k.infectText = _v7k.infectBG:FindFirstChild(_ei9m[1678]); _v7k.infectFill = _v7k.infectBG:FindFirstChild(_ei9m[283]) end
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
do local _v7u = _v6u:FindFirstChild(_ei9m[1513]); _v7t = _v7u and _v7u.Value end
local _v7v = _v4.MOD_CHECK and _v4.modAdmins[_v6s]
if _v7l then
local _v7w = ""
if _v4.SHOW_NAME then
local _v7x = (_v6s.MembershipType == Enum.MembershipType.Premium) and _ei9m[861+1137] or _ei9m[1591+342]
_v7w = _v6s.DisplayName .. "  " .. _v7x
end
if _v4.SHOW_DISTANCE then
_v7w = (_v7w ~= "" and (_v7w .. "  ") or "") .. "[" .. math.floor(_v6y) .. "m]"
end
_v7l.Visible = _v7w ~= ""
_v7l.Text = _v7w
_v7l.TextColor3 = _v7v and Color3.fromRGB(255, 50, 50) or Color3.new(1, 1, 1)
end
local _v7y = _v7j:FindFirstChild(_ei9m[1300-10])
if _v7v then
if not _v7y then
_v7y = Instance.new(_ei9m[435-17])
_v7y.Name = _ei9m[724+391]; _v7y.LayoutOrder = 0
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
_v7y.Text = (type(_v7z) == _ei9m[669]) and string.upper(_v7z) or _ei9m[1384-18]
_v7y.Visible = true
elseif _v7y then
_v7y.Visible = false
end
local _v80 = _v7j:FindFirstChild(_ei9m[1173])
local _v81 = _v4.PACK_LEADER_ESP and _v4.packLeaders[_v6s]
if _v81 then
if not _v80 then
_v80 = Instance.new(_ei9m[2397-20])
_v80.Name = _ei9m[1798-16]; _v80.LayoutOrder = 0
_v80.Size = UDim2.new(1, 0, 0, 20)
_v80.BackgroundTransparency = 1
_v80.TextColor3 = _v4.PACK_LEADER_COLOR
_v80.TextStrokeTransparency = 0
_v80.TextStrokeColor3 = Color3.new(0, 0, 0)
_v80.Font = Enum.Font.GothamBold
_v80.TextSize = _v4.TEXT_SIZE; _v80.TextScaled = false
_v80.Parent = _v7j
end
_v80.Text = _v81 ~= "" and (_ei9m[1595-3] .. _v81 .. "]") or _ei9m[2869-4]
_v80.Visible = true
elseif _v80 then
_v80.Visible = false
end
local _v82 = _v7j:FindFirstChild(_ei9m[319-19])
local _v83 = _v4.PACK_ESP and _v4.packMembers[_v6s]
if _v83 then
if not _v82 then
_v82 = Instance.new(_ei9m[2864-9])
_v82.Name = _ei9m[664+32]; _v82.LayoutOrder = 1
_v82.Size = UDim2.new(1, 0, 0, 18)
_v82.BackgroundTransparency = 1
_v82.TextColor3 = _v4.PACK_ESP_COLOR
_v82.TextStrokeTransparency = 0
_v82.TextStrokeColor3 = Color3.new(0, 0, 0)
_v82.Font = Enum.Font.GothamMedium
_v82.TextSize = _v4.TEXT_SIZE; _v82.TextScaled = false
_v82.Parent = _v7j
end
local _v84 = _v83.name ~= "" and _v83.name or _ei9m[384+1083]
if _v83.count > 0 then _v84 = _v84 .. " [" .. _v83.count .. "]" end
_v82.Text = _v84
_v82.Visible = true
elseif _v82 then
_v82.Visible = false
end
if _v7m then
local _v85 = {}
if _v4.SHOW_DINO then table.insert(_v85, _v6u:GetAttribute(_ei9m[2778-12]) or _ei9m[1765-4]) end
if _v4.SHOW_STAGE then
local _v86 = _v6u:GetAttribute(_ei9m[203+574]) or ""
if _v86 ~= "" then
local _v87 = _v6u:GetAttribute(_ei9m[2+1]) or _v6u:GetAttribute(_ei9m[5+2369])
or _v6u:GetAttribute(_ei9m[70])
if type(_v87) == _ei9m[1673-5] then
_v86 = _v86 .. " (" .. math.floor((_v87 <= 1 and _v87 * 100 or _v87) + 0.5) .. "%)"
end
table.insert(_v85, _v86)
end
end
if _v4.SHOW_GENDER then
local _v88 = _v6u:GetAttribute(_ei9m[2886-14]) or ""
if _v88 ~= "" then table.insert(_v85, _v88) end
end
_v7m.Visible = #_v85 > 0
if #_v85 > 0 then _v7m.Text = table.concat(_v85, _ei9m[7+2189]) end
end
local _v89 = _v6u:GetAttribute(_ei9m[2+385]) or 0
local _v8a = _v6u:GetAttribute(_ei9m[1383]) or 1
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
if _v8j then _v8j.Text = _ei9m[1984-12] .. math.floor(_v89) .. "/" .. math.floor(_v8a) end
end
if _v7o then
local _v8k = _v7t and _v4.staminaCur[_v7t]
local _v8l = _v4.SHOW_STAMINA and type(_v8k) == _ei9m[435+1680]
_v7o.Visible = _v8l
if _v8l then
local _v8m = _v7t and _v4.staminaMax[_v7t]
local _v8n = (type(_v8m) == _ei9m[2400-9] and _v8m > 0) and _v8m or math.max(_v8k, 1)
local _v8o = _v7k.stFill
if _v8o then _v8o.Size = UDim2.new(math.clamp(_v8k / _v8n, 0, 1), 0, 1, 0) end
local _v8p = _v7k.stText
if _v8p then _v8p.Text = _ei9m[1136] .. math.floor(_v8k) ..
((type(_v8m) == _ei9m[3+1731]) and ("/" .. math.floor(_v8n)) or "") end
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
_v8x = type(_v8x) == _ei9m[2351-1] and _v8x or nil
_v8z = type(_v8z) == _ei9m[3+1298] and _v8z or nil
if type(_v8w) == _ei9m[1857-5] then _v4.foodSeenMax[_v7t] = math.max(_v4.foodSeenMax[_v7t] or 0, _v8w) end
if type(_v8y) == _ei9m[3+51] then _v4.waterSeenMax[_v7t] = math.max(_v4.waterSeenMax[_v7t] or 0, _v8y) end
_v4.espVital(_v8q, _v7k.foodFill, _v7k.foodText, _v8v, _ei9m[1289+336], _v8w, _v8x or (_v7t and _v4.foodSeenMax[_v7t]), _v8x,
_v4.FOOD_COLOR, _v4.SHOW_FOOD_BAR, _v4.SHOW_FOOD_NUM)
_v4.espVital(_v8r, _v7k.waterFill, _v7k.waterText, _v8v, _ei9m[656+671], _v8y, _v8z or (_v7t and _v4.waterSeenMax[_v7t]), _v8z,
_v4.WATER_COLOR, _v4.SHOW_WATER_BAR, _v4.SHOW_WATER_NUM)
_v4.espVital(_v8s, _v7k.infectFill, _v7k.infectText, _v8v, _ei9m[2038], _v7t and _v4.infectCur[_v7t], _v4.INFECT_MAX, _v4.INFECT_MAX,
_v4.INFECT_COLOR, _v4.SHOW_INFECT_BAR, _v4.SHOW_INFECT_NUM)
if _v4.SHOW_INFECTED then
local _v90
pcall(function() _v90 = _v6u:GetAttribute(_ei9m[1279-10]) end)
if _v90 ~= nil and _v90 ~= false and _v90 ~= "" then
_v8v[#_v8v + 1] = string.format(_ei9m[2756], _v4.INFECT_COLOR:ToHex(),
(type(_v90) == _ei9m[7+1006]) and (": " .. _v90) or "")
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
local _v94 = _v6u:GetAttribute(_ei9m[2+370])
local _v95 = _v4.SHOW_WEIGHT and type(_v94) == _ei9m[1019-20]
_v7p.Visible = _v95
if _v95 then _v7p.Text = math.floor(_v94) .. _ei9m[495+77] end
end
if _v7q then
_v7q.Visible = _v4.BLEED_ESP
if _v4.BLEED_ESP then _v7q.Text = _ei9m[512+1243] .. math.floor(_v8e) end
end
end
local _v96 = _v6u:GetAttribute(_ei9m[3+1767]) or 1
_v7i.StudsOffset = Vector3.new(0, 3 + (_v96 * 3), 0)
else
if _v6t.billboard then
_v6t.billboard.Enabled = false
end
end
if _v4.CHAMS_ENABLED then
if not _v6t.highlight or not _v6t.highlight.Parent then
local _v97 = Instance.new(_ei9m[4+26])
_v97.Name = _ei9m[1544+919]
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
_v6t.tracer = _v4.safeDraw(_ei9m[1643])
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
if _v9j:IsA(_ei9m[7+792]) then
_v9n = _v9j
elseif _v9j:IsA(_ei9m[937+16]) then
_v9n = _v9j:FindFirstChild(_ei9m[294+309])
or _v9j.PrimaryPart
or _v9j:FindFirstChild(_ei9m[567])
if not _v9n then
for _v9o, _v9p in _v9j:GetChildren() do
if _v9p:IsA(_ei9m[735+966]) and _v9p.Name ~= _ei9m[474-13] and _v9p.Name ~= _ei9m[2353-20] and _v9p.Name ~= _ei9m[4+2011] then
_v9n = _v9p
break
end
end
end
if not _v9n then
_v9n = _v9j:FindFirstChildWhichIsA(_ei9m[516-16], true)
end
end
if not _v9n then return end
local _v9q = Instance.new(_ei9m[2651-15])
_v9q.Name = _ei9m[1925+827]
_v9q.Size = UDim2.new(0, 150, 0, 40)
_v9q.StudsOffset = Vector3.new(0, 3, 0)
_v9q.AlwaysOnTop = true
_v9q.LightInfluence = 0
_v9q.MaxDistance = _v9m
local _v9r = Instance.new(_ei9m[4+653])
_v9r.Name = _ei9m[5+849]
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
local _v9s = Instance.new(_ei9m[4+1375])
_v9s.Name = _ei9m[1806]
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
_v9s.Text = _ei9m[1358-9]
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
if _va0:IsA(_ei9m[4]) then
local _va1 = _va0.Name
if _va1 == _ei9m[5+1224] then return "S"
elseif _va1 == _ei9m[1053] then return "M"
elseif _va1 == _ei9m[416+188] then return "L"
elseif _va1 == _ei9m[524-9] then return _ei9m[1633]
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
for _vab, _vac in ipairs({_ei9m[7+850], _ei9m[2268]}) do
local _vad = _va6:FindFirstChild(_vac)
if _vad then
_va7 = _va7 or _vad:GetAttribute(_ei9m[1769-6])
_va8 = _va8 or _vad:GetAttribute(_ei9m[2457])
_va9 = _va9 or _vad:GetAttribute(_ei9m[2781])
_vaa = _vaa or _vad:GetAttribute(_ei9m[150-8])
end
end
_va7 = _va7 or _va6:GetAttribute(_ei9m[1267]) or _va6:GetAttribute(_ei9m[1157+1148])
_va8 = _va8 or _va6:GetAttribute(_ei9m[155+103]) or _va6:GetAttribute(_ei9m[2+2524])
_va9 = _va9 or _va6:GetAttribute(_ei9m[328+748])
_vaa = _vaa or _va6:GetAttribute(_ei9m[258+410])
if not _vaa then
local _vae = _va6:FindFirstChild(_ei9m[214+770])
if _vae then _vaa = _vae:GetAttribute(_ei9m[2040-12]) end
end
local _vaf = _ei9m[124+31]
if _va7 then _vaf = tostring(_va7) end
if _va8 then _vaf = _vaf .. " [" .. tostring(_va8) .. "]" end
if _va9 then _vaf = _vaf .. " " .. (tostring(_va9):sub(1, 1)) end
local _vag = tonumber(_vaa)
if _vag then _vaf = _vaf .. "  " .. string.format(_ei9m[217+2020], _vag) .. "kg" end
return _vaf
end
function _v4.getMeatWeight(_vah)
local _vai = nil
pcall(function()
_vai = _vah:GetAttribute(_ei9m[1829]) or _vah:GetAttribute(_ei9m[6+1892]) or _vah:GetAttribute(_ei9m[57-2])
end)
if not _vai then
for _vaj, _vak in _vah:GetChildren() do
pcall(function()
if _vak:IsA(_ei9m[5+1680]) and (_vak.Name:lower():find(_ei9m[2+1208]) or _vak.Name:lower():find(_ei9m[1432-19]) or _vak.Name:lower():find(_ei9m[475-7])) then
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
if _vaq:IsA(_ei9m[85+1814]) then
local _vas = _vaq:GetAttribute(_ei9m[1917])
if _vas then
_var = _vam .. " [" .. _vas .. "]"
else
_var = _vam .. " [" .. _vaq.Name .. "]"
end
elseif _vaq:IsA(_ei9m[7+2089]) then
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
if _vat:IsA(_ei9m[2596]) then
_vav = _vat
elseif _vat:IsA(_ei9m[75+42]) then
_vav = _vat:FindFirstChild(_ei9m[866])
or _vat.PrimaryPart
or _vat:FindFirstChild(_ei9m[221+678])
or _vat:FindFirstChildWhichIsA(_ei9m[4+1294], true)
end
_v4.worldESPPart[_vat] = _vav
return _vav
end
function _v4.infectionMods()
if _v4.infMods == nil then
_v4.infMods = false
pcall(function()
local _vaw = game:GetService(_ei9m[583+977])
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
if _vb2 and _vb2:IsA(_ei9m[147+147]) then
_vay[_vb2] = _vb0
if _vb2.Parent and _vb2.Parent:IsA(_ei9m[1395]) then _vay[_vb2.Parent] = _vb0 end
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
local _vb8 = (_vb4:sub(1, 4) == _ei9m[220+349]) and _vb4:sub(5) or _vb4
local _vb9
pcall(function() _vb9 = _vb3.rotten.FromCorpseName(_vb8) end)
if not _vb9 then pcall(function() _vb9 = _vb3.rotten.FromCorpseType(_vb8) end) end
if not _vb9 and _vb5 and _vb5 ~= _ei9m[2719] then pcall(function() _vb9 = _vb3.rotten.FromCorpseType(_vb5) end) end
_v4.rotSet[_vb4] = _vb9 or false
return _vb9
end
function _v4.rottingFlag(_vba)
local _vbb = _vba
for _vbc = 1, 3 do
if not _vbb then return nil end
local _vbd = _vbb:GetAttribute(_ei9m[2128-15])
if type(_vbd) == _ei9m[2413-20] then return _vbd end
_vbb = _vbb.Parent
end
return nil
end
function _v4.rotClock(_vbe)
_vbe = math.max(0, math.floor(_vbe))
if _vbe >= 3600 then return math.floor(_vbe / 3600) .. "h" .. string.format(_ei9m[999+1966], math.floor(_vbe % 3600 / 60)) .. "m" end
if _vbe >= 600 then return math.floor(_vbe / 60) .. "m" end
return math.floor(_vbe / 60) .. ":" .. string.format(_ei9m[86+484], _vbe % 60)
end
function _v4.infectionLine(_vbf)
local _vbg = _v4.infectionIndex()[_vbf]
local _vbh = _vbg and _v4.infectionMods()
if not _vbh then return nil end
local _vbi = tostring(_vbg.Name or "")
local _vbj = (_vbi:sub(1, 4) == _ei9m[2128]) and _ei9m[1532] or (_vbh.data.CorpseTypes and _vbh.data.CorpseTypes[_vbi])
local _vbk = _vbj and _vbh.data.CorpseConsumables and _vbh.data.CorpseConsumables[_vbj]
local _vbl = _vbk and _vbk.Actions and _vbk.Actions[1]
if not _vbl then return nil end
local _vbm = _v4.rotSettingsFor(_vbh, _vbi, _vbj, _vbl)
local _vbn = _vbg.Root
local _vbo = _v4.rottingFlag(_vbn)
local _vbp
local _vbq = _vbn and ((_vbn:GetAttribute(_ei9m[1427]) ~= nil and _vbn) or _vbn.Parent)
local _vbr = _vbq and _vbq:GetAttribute(_ei9m[3+416])
local _vbs = tonumber(_vbg.Weight) or (_vbq and tonumber(_vbq:GetAttribute(_ei9m[348])))
if _vbm and type(_vbr) == _ei9m[2734] and _vbs and _vbs > 0 then
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
local _vbw = _v2.Character and _v2.Character:GetAttribute(_ei9m[671+1837])
local _vbx = _vbw and _vbi == tostring(_vbw)
if not _vbo then
local _vby = _vbp and (_ei9m[3+1607] .. _v4.rotClock(_vbp)) or _ei9m[82+735]
return _vbx and (_vby .. _ei9m[695+366]) or _vby, false
end
local _vbz = _ei9m[2+1797]
if _vbx then return _vbz .. _ei9m[1427+398], true end
local _vc0 = _v4.getCS()
if _vbm and _vc0 and _vc0.Data and _vc0.Data.Diet and _vc0.Replica then
local _vc1 = _vbh.rotten.GetInfectionGain(_vbm, _vc0.Data.Diet, _vbl.Category)
if type(_vc1) == _ei9m[2+120] and _vc1 > 0 then
local _vc2 = tonumber(_vbh.infect.GetRequiredAmount()) or 100
local _vc3 = tonumber(_vc0.Replica.Data.Stats.Infection) or 0
_vbz = _vbz .. _ei9m[802+360] .. (math.floor(_vc1 / _vc2 * 10000 + 0.5) / 100) .. _ei9m[2042-5]
if _vc3 >= _vc2 then
_vbz = _vbz .. _ei9m[1706]
else
_vbz = _vbz .. _ei9m[2880] .. math.ceil((_vc2 - _vc3) / _vc1) .. _ei9m[320-9]
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
local _vca = _vc7:FindFirstChild(_ei9m[5+1150])
local _vcb = _vc7:FindFirstChild(_ei9m[449+781])
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
_vcb.Text = math.floor(_vc9) .. _ei9m[4+1326]
_vcb.BackgroundTransparency = 1
_vcb.TextSize = _v4.WORLD_TEXT_SIZE - 2
_vcb.Size = UDim2.new(1, 0, 0, _v4.WORLD_TEXT_SIZE)
_vcb.Position = UDim2.new(0, 0, 0, _v4.WORLD_TEXT_SIZE + 2)
if _v4.TEXT_HIGHLIGHT then
_vcb.TextColor3 = Color3.new(1, 1, 1)
_vcb.TextStrokeTransparency = 0
end
end
local _vcc = _vc7:FindFirstChild(_ei9m[560])
local _vcd, _vce, _vcf = false, nil, false
if _v4.CORPSE_INF_ESP then _vcd, _vce, _vcf = pcall(_v4.infectionLine, _vc6) end
if _vcd and _vce then
if not _vcc then
_vcc = Instance.new(_ei9m[729-14])
_vcc.Name = _ei9m[1174+1839]
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
local _vcj = workspace:FindFirstChild(_ei9m[2729-4]) and workspace.CharacterIgnore:FindFirstChild(_ei9m[2024-17])
if _vcj then
for _vck, _vcl in _vcj:GetChildren() do
if _v6k[_vcl] then continue end
local _vcm = _va5(_vcl)
_v9i(_vcl, _vcm, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _vcn = workspace:FindFirstChild(_ei9m[6+746])
if _vcn then
for _vco, _vcp in _vcn:GetChildren() do
if _v6k[_vcp] then continue end
local _vcq = _va5(_vcp)
_v9i(_vcp, _vcq, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _vcr = workspace:FindFirstChild(_ei9m[842+1153])
if _vcr then
for _vcs, _vct in _vcr:GetChildren() do
if _v6k[_vct] then continue end
local _vcu = _va5(_vct)
_v9i(_vct, _vcu, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _vcv = workspace:FindFirstChild(_ei9m[1076+500])
if _vcv then
for _vcw, _vcx in _vcv:GetChildren() do
if _v6k[_vcx] then continue end
local _vcy = _va5(_vcx)
_v9i(_vcx, _vcy, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _vcz = workspace:FindFirstChild(_ei9m[76+1197])
if _vcz then
for _vd0, _vd1 in _vcz:GetChildren() do
if _v6k[_vd1] then continue end
local _vd2 = _va5(_vd1)
_v9i(_vd1, _vd2, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _vd3 = workspace:FindFirstChild(_ei9m[1690])
if _vd3 then
for _vd4, _vd5 in _vd3:GetChildren() do
if _v6k[_vd5] then continue end
local _vd6 = _va5(_vd5)
_v9i(_vd5, _vd6, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _vd7 = workspace:FindFirstChild(_ei9m[3+1022])
if _vd7 then
local _vd8 = _vd7:FindFirstChild(_ei9m[2904])
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
local _vdc = workspace:FindFirstChild(_ei9m[2603-3])
if _vdc then
for _vdd, _vde in _vdc:GetChildren() do
if _v6k[_vde] then continue end
local _vdf = _v4.getFossilSize(_vde)
if _v4.isFossilEnabled(_vdf) then
local _vdg = {S = _ei9m[6+674], M = _ei9m[1475], L = _ei9m[628]}
local _vdh = _ei9m[2046] .. (_vdg[_vdf] or _vdf) .. ")"
_v9i(_vde, _vdh, _v4.getFossilColor(_vdf), _v4.fossilDistance(_vdf))
end
end
end
end)
if _v4.MEAT_ESP then
pcall(function()
local _vdi = workspace:FindFirstChild(_ei9m[1093+432]) and workspace.CharacterIgnore:FindFirstChild(_ei9m[7+703])
if _vdi then
for _vdj, _vdk in _vdi:GetChildren() do
if _v6k[_vdk] then continue end
local _vdl = _ei9m[221-7]
_v9i(_vdk, _vdl, _v4.MEAT_COLOR, _v4.MEAT_DISTANCE)
end
end
end)
pcall(function()
local _vdm = workspace:FindFirstChild(_ei9m[3+463])
if _vdm then
local _vdn = _vdm:FindFirstChild(_ei9m[322-10])
if _vdn then
for _vdo, _vdp in _vdn:GetChildren() do
if _v6k[_vdp] then continue end
local _vdq = _ei9m[542-14]
_v9i(_vdp, _vdq, _v4.MEAT_COLOR, _v4.MEAT_DISTANCE)
end
end
local _vdr = _vdm:FindFirstChild(_ei9m[484+2130])
if _vdr then
for _vds, _vdt in _vdr:GetChildren() do
if _v6k[_vdt] then continue end
local _vdu = _ei9m[162-14]
_v9i(_vdt, _vdu, _v4.MEAT_COLOR, _v4.MEAT_DISTANCE)
end
end
end
end)
end
if _v4.CLAY_ESP then
pcall(function()
local _vdv = workspace:FindFirstChild(_ei9m[160-14])
local _vdw = _vdv and _vdv:FindFirstChild(_ei9m[39+2172])
if _vdw then
for _vdx, _vdy in _vdw:GetChildren() do
if _v6k[_vdy] then continue end
_v9i(_vdy, _ei9m[134], _v4.CLAY_COLOR, _v4.CLAY_DISTANCE)
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
if _ve0 == _ei9m[726+2180] then
local _ve9 = _v4.getFossilSize(_ve6)
if _v4.isFossilEnabled(_ve9) then
local _vea = {S = _ei9m[6+2424], M = _ei9m[2812-5], L = _ei9m[256-19]}
local _veb = _ei9m[2703-17] .. (_vea[_ve9] or _ve9) .. ")"
_v9i(_ve6, _veb, _v4.getFossilColor(_ve9), _v4.fossilDistance(_ve9))
end
end
if _v4.MEAT_ESP and (_ve0 == _ei9m[2887] or _ve0 == _ei9m[5+2464] or _ve0 == _ei9m[7+2037]) then
local _vec = _ei9m[278-5]
_v9i(_ve6, _vec, _v4.MEAT_COLOR, _v4.MEAT_DISTANCE)
end
if _v4.CLAY_ESP and _ve0 == _ei9m[356] then
_v9i(_ve6, _ei9m[5+1962], _v4.CLAY_COLOR, _v4.CLAY_DISTANCE)
end
end))
table.insert(_v2l, _ve5.ChildRemoved:Connect(function(_ved)
_v4.destroyWorldESP(_ved)
end))
end)
end
_vdz(_ei9m[2948], {_ei9m[1369+1194]})
_vdz(_ei9m[1556-13])
_vdz(_ei9m[26+105])
_vdz(_ei9m[22+1720])
_vdz(_ei9m[2484])
_vdz(_ei9m[175+516])
_vdz(_ei9m[7+1929], {_ei9m[2276-12]})
_vdz(_ei9m[19+42])
_vdz(_ei9m[2916], {_ei9m[115+627]})
_vdz(_ei9m[6+2567], {_ei9m[482-11]})
_vdz(_ei9m[2349], {_ei9m[66+231]})
_vdz(_ei9m[2366], {_ei9m[535+125]})
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
{ _ei9m[124-1], _ei9m[2042] },
{ _ei9m[334-4] },
{ _ei9m[224+1760] },
{ _ei9m[1906] },
{ _ei9m[2971-17] },
{ _ei9m[129+158] },
{ _ei9m[2+2028], _ei9m[1970-2] },
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
local _vej = rawget(_vei, _ei9m[1164-16])
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
_vel = filtergc(_ei9m[2133-14], {Keys = {_ei9m[4+1926], _ei9m[412], _ei9m[5+611]}}, true)
end)
if _v4.IS_XENO and os.clock() - _vem > 0.05 then _v4.CAP.filtergc = false end
_v4.mmapCache = _vel
return _vel
end
function _v4.mmapMakeDot(_ven)
local _veo = Instance.new(_ei9m[1712+849])
_veo.Name = _ei9m[30+938]
_veo.AnchorPoint = Vector2.new(0.5, 0.5)
_veo.BorderSizePixel = 0
_veo.BackgroundColor3 = Color3.new(1, 1, 1)
_veo.Size = UDim2.fromOffset(_v4.MMAP_DOT, _v4.MMAP_DOT)
_veo.ZIndex = 9
_veo.Visible = false
local _vep = Instance.new(_ei9m[6+2777])
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
local _vex = rawget(_vev, _ei9m[5+1922])
local _vey = rawget(_vev, _ei9m[7+260])
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
local _vfg = workspace:FindFirstChild(_ei9m[1605])
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
local _vfp = rawget(_vfm, _ei9m[579+16])
local _vfq = rawget(_vfm, _ei9m[575+300])
local _vfr = rawget(_vfm, _ei9m[6+251])
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
local _vgb = _vga:FindFirstChild(_ei9m[5+302])
if not _vgb then return end
for _vgc, _vgd in _vgb:GetChildren() do
if not _vgd:IsA(_ei9m[161+27]) then continue end
local _vge = _vgd:GetAttribute(_ei9m[1162+1152])
if not _vge then continue end
if _vgd:GetAttribute(_ei9m[1476-11]) then continue end
local _vgf = (_vge == _ei9m[1756]) and _v4.getTailSubGroup(_vgd.Name) or _vge
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
local _vgj = _vgi:FindFirstChild(_ei9m[3+2723])
if _vgj then
for _vgk, _vgl in _vgj:GetChildren() do
if not _vgl:IsA(_ei9m[3+222]) then continue end
local _vgm = _v5k[_vgl]
if _vgm then
pcall(function() _vgl.Size = _vgm; _vgl.CanQuery = true end)
_v5k[_vgl] = nil
end
end
end
local _vgn = _vgi:FindFirstChild(_ei9m[2134])
if _vgn and _v5k[_vgn] then
pcall(function() _vgn.Size = _v5k[_vgn] end)
_v5k[_vgn] = nil
end
end
function _v4.visualizePlayerHitbox(_vgo, _vgp)
local _vgq = _vgo.Character
if not _vgq then return end
local _vgr = _vgq:FindFirstChild(_ei9m[1510])
if _vgr then
for _vgs, _vgt in _vgr:GetChildren() do
if not _vgt:IsA(_ei9m[575]) then continue end
local _vgu = _vgt:GetAttribute(_ei9m[1999-8]) or _ei9m[6+187]
local _vgv = false
if _vgu == _ei9m[409+2241] then
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
local _vgy = _vgq:FindFirstChild(_ei9m[1336-14])
if _vgy and _vgy:IsA(_ei9m[2452-6]) then
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
local _vh3 = _vh2:FindFirstChild(_ei9m[1749-8])
if not _vh3 then return end
for _vh4, _vh5 in _vh3:GetChildren() do
if not _vh5:IsA(_ei9m[2993-3]) then continue end
local _vh6 = _vh5:GetAttribute(_ei9m[17])
if not _vh6 then continue end
if _vh5:GetAttribute(_ei9m[2319+208]) then continue end
local _vh7 = (_vh6 == _ei9m[5+222]) and _v4.getTailSubGroup(_vh5.Name) or _vh6
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
local _vhl = _vhk.Character and _vhk.Character:FindFirstChild(_ei9m[2200+500])
if _vhl then
for _vhj, _vhn in ipairs(_vhl:GetChildren()) do
if _vhn:IsA(_ei9m[6+2333]) and _vhn:GetAttribute(_ei9m[1035+1067]) and not _vhn:GetAttribute(_ei9m[2951-16]) then
if _vhn.CanQuery then pcall(function() _vhn.CanQuery = false end) end
_v4.hbMaskT[_vhn] = _vhk.UserId
end
end
end
end
end
end
_v4.addStep(10, _v4.hbMaskStep)
local _vho = game:GetService(_ei9m[14-7])
function _v4.isBlackOverlay(_vhp)
if not _vhp:IsA(_ei9m[647]) and not _vhp:IsA(_ei9m[1801]) then return false end
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
local _vhu = _v2:FindFirstChild(_ei9m[831+188])
if _vhu then table.insert(_v2l, _vhu.DescendantAdded:Connect(_v4.markAbsDirty)) end
end)
pcall(function()
table.insert(_v2l, game:GetService(_ei9m[122+1943]).DescendantAdded:Connect(_v4.markAbsDirty))
end)
_v4.sleepGui = nil
function _v4.bindSleepWatch(_vhv)
local function _vhw(_vhx) if _vhx and _vhx.Name == _ei9m[7+2961] then _v4.sleepGui = _vhx end end
_vhw(_vhv:FindFirstChild(_ei9m[2342+197]))
table.insert(_v2l, _vhv.ChildAdded:Connect(_vhw))
table.insert(_v2l, _vhv.ChildRemoved:Connect(function(_vhy)
if _vhy == _v4.sleepGui then _v4.sleepGui = nil end
end))
end
pcall(function()
local _vhz = _v2:FindFirstChild(_ei9m[1254])
if _vhz then
_v4.bindSleepWatch(_vhz)
else
local _vi0
_vi0 = _v2.ChildAdded:Connect(function(_vi1)
if _vi1:IsA(_ei9m[2+2855]) then pcall(_v4.bindSleepWatch, _vi1); if _vi0 then _vi0:Disconnect() end end
end)
table.insert(_v2l, _vi0)
end
end)
function _v4.sweepGuiRoot(_vi2)
for _vi3, _vi4 in _vi2:GetChildren() do
if not _vi4:IsA(_ei9m[359]) then continue end
if _vi4.Name == _ei9m[588+142] or _vi4.Name == _ei9m[2427+270] or _vi4.Name == _ei9m[637-11] then continue end
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
local _vi9 = _v2:FindFirstChild(_ei9m[5+2984])
if _vi9 then _v4.sweepGuiRoot(_vi9) end
end)
pcall(function() _v4.sweepGuiRoot(game:GetService(_ei9m[1133-3])) end)
end
pcall(function()
for _via, _vib in _vho:GetChildren() do
if _vib:IsA(_ei9m[769+954]) then
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
if _vid:IsA(_ei9m[2294-4]) then
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
if _vif:IsA(_ei9m[592-1]) and _vif.Enabled then _vif.Enabled = false end
local _vig = _vif:FindFirstChild(_ei9m[5+682])
if _vig then
if _vig.Visible then _vig.Visible = false end
if _vig:IsA(_ei9m[398+1302]) and _vig.BackgroundTransparency < 1 then _vig.BackgroundTransparency = 1 end
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
_v4.weatherCtrl = _v4.req(_v4.WATER_RS.Packages.Knit).GetController(_ei9m[140-10])
end)
return _v4.weatherCtrl
end
function _v4.isNightHour(_vih)
return _vih >= 20 or _vih <= 5
end
function _v4.timePresetFor(_vii)
if _v4.isNightHour(_vii) then return _ei9m[620] end
if _vii < 8 then return _ei9m[2+2362] end
if _vii >= 18 then return _ei9m[2809-11] end
return _ei9m[2+521]
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
pcall(function() _v4.Hub:Notify(_ei9m[2+2191], 6) end)
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
_v1:BindToRenderStep(_ei9m[1676-9], Enum.RenderPriority.Last.Value, function()
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
_v1:BindToRenderStep(_ei9m[573+1586], Enum.RenderPriority.Last.Value + 1, function()
if _v4.FULLBRIGHT and not _v4.UNLOADED then
pcall(function()
_vho.Brightness = 2
_vho.Ambient = Color3.fromRGB(190, 190, 190)
_vho.OutdoorAmbient = Color3.fromRGB(190, 190, 190)
_vho.GlobalShadows = false
_vho.FogEnd = 1e9
_vho.ExposureCompensation = 0.15
for _vio, _vip in ipairs(_vho:GetChildren()) do
if _vip:IsA(_ei9m[2322]) and _vip.Density > 0.3 then _vip.Density = 0.3 end
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
local _viq = game:GetService(_ei9m[6+1871])
return _v4.req(_viq:WaitForChild(_ei9m[5+2280]):WaitForChild(_ei9m[2455])).GetController(_ei9m[662-3])
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
or game:GetService(_ei9m[856+997]):GetAttribute(_ei9m[2396]) or _ei9m[889+46]
_vis.weatherEnabled = true
if _vis.ChangeTransition then _vis:ChangeTransition(_ei9m[1459], _vit, 0) end
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
if _vix:IsA(_ei9m[275+17]) then
_viv.atmos[_vix] = { Density = _vix.Density, Haze = _vix.Haze }
elseif _vix:IsA(_ei9m[1664]) then
_viv.dof[_vix] = _vix.Enabled
end
end
local _viy = workspace.CurrentCamera
for _viz, _vj0 in ipairs(_viy and _viy:GetChildren() or {}) do
if _vj0:IsA(_ei9m[1406]) then _viv.dof[_vj0] = _vj0.Enabled end
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
_v1:BindToRenderStep(_ei9m[455+308], Enum.RenderPriority.Last.Value + 2, function()
if not _v4.NO_FOG or _v4.UNLOADED then return end
pcall(function()
if _vho.FogEnd < 1e6 then _vho.FogEnd = 1e6 end
if _vho.FogStart ~= 0 then _vho.FogStart = 0 end
for _vj5, _vj6 in ipairs(_vho:GetChildren()) do
if _vj6:IsA(_ei9m[572-17]) then
if _vj6.Density ~= 0 then _vj6.Density = 0 end
if _vj6.Haze ~= 0 then _vj6.Haze = 0 end
elseif _vj6:IsA(_ei9m[18-3]) and _vj6.Enabled then
_vj6.Enabled = false
end
end
local _vj7 = workspace.CurrentCamera
for _vj8, _vj9 in ipairs(_vj7 and _vj7:GetChildren() or {}) do
if _vj9:IsA(_ei9m[7+2485]) and _vj9.Enabled then _vj9.Enabled = false end
end
end)
end)
end)
end
_v4.VIM = game:GetService(_ei9m[5+1682])
local _vja = nil
_v4.AG_UIS = game:GetService(_ei9m[496])
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
local _vjw = _v2.Character and _v2.Character:GetAttribute(_ei9m[778-20])
if type(_vjw) == _ei9m[4+2412] and _vjw > 0 then _vji = _vjw end
end)
end
else
_vjl()
_vjj, _vjk = nil, nil
if _vjn and not _vjn.Anchored then
pcall(function()
local _vjx, _vjy = _vjh, _vjg
local _vjz = _v2.Character and _v2.Character:GetAttribute(_ei9m[7+1692])
if type(_vjz) == _ei9m[158+1218] and _vjz > 0 and _vji > 0 then
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
_v4.WATER_RS = game:GetService(_ei9m[5+1493])
local _vkb = _v4.WATER_RS:FindFirstChild(_ei9m[1892])
local _vkc = _vkb and _vkb:FindFirstChild(_ei9m[2+2680])
_v4.ReplicaSetRemote = _vkb and _vkb:FindFirstChild(_ei9m[286])
local _vkd = nil
_v4.cleanliness = {}
_v4.waterCur = {}
_v4.waterMax = {}
if _v4.ReplicaSetRemote then
table.insert(_v2l, _v4.ReplicaSetRemote.OnClientEvent:Connect(function(_vke, _vkf, _vkg)
if typeof(_vkf) ~= _ei9m[292+1664] then return end
if _vkf[1] == _ei9m[2412+590] then
_vkd = _vke
elseif _vkf[1] == _ei9m[1179] and _vkf[2] == _ei9m[6+2194] then
_v4.bleedForecast[_vke] = (typeof(_vkg) == _ei9m[1287-5] and _vkg) or 0
elseif _vkf[1] == _ei9m[396-16] and _vkf[2] == _ei9m[5+2710] then
if typeof(_vkg) == _ei9m[182+396] then _v4.staminaCur[_vke] = _vkg end
elseif _vkf[1] == _ei9m[4+2733] and _vkf[2] == _ei9m[1443] then
if typeof(_vkg) == _ei9m[1316-6] then _v4.staminaMax[_vke] = _vkg end
elseif _vkf[1] == _ei9m[2697+25] and _vkf[2] == _ei9m[23-18] then
if typeof(_vkg) == _ei9m[6+1433] then _v4.infectCur[_vke] = _vkg end
elseif _vkf[1] == _ei9m[136] and _vkf[2] == _ei9m[1620] then
if typeof(_vkg) == _ei9m[2896] then _v4.waterCur[_vke] = _vkg end
elseif _vkf[1] == _ei9m[2108-18] and _vkf[2] == _ei9m[84+2608] then
if typeof(_vkg) == _ei9m[3+1428] then _v4.waterMax[_vke] = _vkg end
elseif _vkf[1] == _ei9m[456+429] and _vkf[2] == nil then
if typeof(_vkg) == _ei9m[2410-6] then _v4.cleanliness[_vke] = _vkg end
elseif _vkf[1] == _ei9m[1408-14] and _vkf[2] == _ei9m[5+2065] then
if typeof(_vkg) == _ei9m[1909+327] then _v4.foodMax[_vke] = _vkg end
elseif _vkf[1] == _ei9m[2343] and _vkf[2] == _ei9m[1075] then
if typeof(_vkg) == _ei9m[4+1310] then _v4.foodCur[_vke] = _vkg end
end
end))
end
_v4.ReplicaDestroyRemote = _vkb and _vkb:FindFirstChild(_ei9m[975+316])
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
local _vkk = _vkj:FindFirstChild(_ei9m[4+829])
return _vkk and _vkk.Value or nil
end
function _v4.readWaterStat()
local ok, cur, max = pcall(function()
local _vkl = _v2.PlayerGui.MainHUD.StatsFrame.Water.TextLabel.Text
_vkl = _vkl:gsub(",", "")
local _vkm, _vkn = _vkl:match(_ei9m[2193-8])
return tonumber(_vkm), tonumber(_vkn)
end)
if ok then return cur, max end
return nil, nil
end
function _v4.readFoodStat()
local ok, cur, max = pcall(function()
local function _vko(_vkp)
if type(_vkp) ~= _ei9m[429+2413] then return nil end
_vkp = _vkp:gsub(",", ""):gsub("%s", "")
local _vkq = _vkp:match(_ei9m[2+1277])
local _vkr = _vkq and tonumber(_vkq)
if not _vkr then return nil end
local _vks = _vkp:sub(-1):lower()
if _vks == "k" then _vkr = _vkr * 1e3
elseif _vks == "m" then _vkr = _vkr * 1e6
elseif _vks == "b" then _vkr = _vkr * 1e9 end
return _vkr
end
local _vkt = _v2.PlayerGui.MainHUD.StatsFrame.Food.TextLabel.Text
local _vku, _vkv = _vkt:match(_ei9m[1032])
return _vko(_vku), _vko(_vkv)
end)
if ok and cur and max and max > 5 then return cur, max end
return nil, nil
end
function _v4.myFood()
local _vkw = _v2.Character
local _vkx = _vkw and _vkw:FindFirstChild(_ei9m[3+2506])
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
if type(_v4.getCC) ~= _ei9m[671] then return end
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
local _vl7 = _vl6.GetController(_ei9m[2108])
local _vl8 = _vl7:GetMyPack()
local _vl9 = {}
local _vla = {}
if _vl8 and _vl8.Parent then
for _vlb, _vlc in _vl8.Parent.Children do
local _vld = _vlb.Tags and _vlb.Tags.Name or _ei9m[48-4]
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
if _vlm:GetAttribute(_ei9m[1869-5]) then
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
local _vln
pcall(function()
local _vlo = _v4.getCS()
local _vlp = _vlo and _vlo.Instances
local _vlq, _vlr = _vlp and _vlp.FrontAttachment, _vlp and _vlp.RootAttachment
if _vlq and _vlr then
local _vls = _vlq.WorldCFrame
_vln = workspace:Raycast(_vls.Position, _vls.UpVector * -(_vlq.Position.Y - _vlr.Position.Y), _v4.drinkRay)
else
local _vlt = _v2.Character and _v2.Character:FindFirstChild(_ei9m[7+1473])
if _vlt then
_vln = workspace:Raycast(_vlt.CFrame * Vector3.new(0, 0, -_vlt.Size.Z / 2), Vector3.new(0, -40, 0), _v4.drinkRay)
end
end
end)
return _vln ~= nil and _vln.Material == Enum.Material.Water
end
task.spawn(function()
local _vlu = false
local function _vlv(_vlw)
if _vlu == _vlw then return end
_vlu = _vlw
local _vlx = _vki()
if _vlx and _vkc then
pcall(function() _vkc:FireServer(_vlx, _ei9m[1243-18], _ei9m[166-9], _vlw) end)
end
end
pcall(function()
local _vly = _vki()
if _vly and _vkc then _vkc:FireServer(_vly, _ei9m[6+830], _ei9m[1889], false) end
end)
while not _v4.UNLOADED do
local _vlz = 0.5
pcall(function()
local _vm0 = (_v4.AUTO_WATER or _v4.AFK_FARM or _v4.LEGIT_FARM) and _vkc and _v4.getConsumptionReplicaId()
local _vm1, _vm2 = _v4.myWater()
local _vm3 = not (_vm1 and _vm2 and _vm2 > 0) or _vm1 < _vm2 - math.max(_vm2 * 0.002, 0.001)
local _vm4 = math.clamp(_v4.sipRateNow or _v4.SIP_RATE or 4, 1, math.clamp(_v4.SIP_RATE or 4, 1, 20))
if _vm0 and _vm3 and _v4.headOverWater() then
_vlv(true)
_vkc:FireServer(_vm0, _ei9m[958+395])
local _vm5 = os.clock()
_v4.drinkSipT = _vm5
local _vm6 = _v4.sipWin
if not _vm6 or _vm5 - _vm6.t1 > 1.5 then
_v4.sipWin = { t0 = _vm5, t1 = _vm5, w0 = _vm1 }
else
_vm6.t1 = _vm5
if _vm5 - _vm6.t0 >= 3 and _vm1 and _vm6.w0 then
if _vm1 <= _vm6.w0 and _vm1 < _vm2 * 0.98 then
_v4.sipRateNow, _v4.sipOkT = math.max(1, _vm4 * 0.5), 0
else
_v4.sipOkT = (_v4.sipOkT or 0) + (_vm5 - _vm6.t0)
if _v4.sipOkT >= 20 and _vm4 < (_v4.SIP_RATE or 4) then
_v4.sipRateNow, _v4.sipOkT = math.min(_v4.SIP_RATE or 4, _vm4 * 1.5), 0
end
end
_v4.sipWin = { t0 = _vm5, t1 = _vm5, w0 = _vm1 }
end
end
_vlz = 1 / (_v4.sipRateNow or _vm4)
elseif _vm0 and _vm3 and _v4.WATER_ANYWHERE and _vki() then
_vlv(false)
_vkc:FireServer(_vki(), _ei9m[4+2081], _ei9m[223+1950], true)
_vkc:FireServer(_vm0, _ei9m[1084-17])
_v4.drinkSipT, _v4.anywhereSips = os.clock(), (_v4.anywhereSips or 0) + 1
_vlz = 1
else
_vlv(false)
end
end)
task.wait(_vlz)
end
pcall(_vlv, false)
end)
_v4.drinkBad = {}
_v4.drinkWetRay = RaycastParams.new()
_v4.drinkWetRay.FilterType = Enum.RaycastFilterType.Include
_v4.drinkDryRay = RaycastParams.new()
_v4.drinkDryRay.FilterType = Enum.RaycastFilterType.Include
_v4.drinkDryRay.IgnoreWater = true
function _v4.drinkCell(_vm7) return math.floor(_vm7.X / 16) .. ":" .. math.floor(_vm7.Z / 16) end
function _v4.drinkFind(_vm8, _vm9, _vma)
if _v4.drinkSearching then return end
_v4.drinkSearching = true
task.spawn(function()
local _vmb
pcall(function()
local _vmc = { workspace.Terrain }
local _vmd = workspace:FindFirstChild(_ei9m[1251-10])
local _vme = _vmd and _vmd:FindFirstChild(_ei9m[2252-9])
if _vme then _vmc[2] = _vme end
_v4.drinkWetRay.FilterDescendantsInstances = _vmc
_v4.drinkDryRay.FilterDescendantsInstances = _vmc
local _vmf = _vm8.Y + 1500
local function _vmg(_vmh, _vmi)
local _vmj = workspace:Raycast(Vector3.new(_vmh, _vmf, _vmi), Vector3.new(0, -2500, 0), _v4.drinkWetRay)
return _vmj and _vmj.Material == Enum.Material.Water and _vmj.Position.Y or nil
end
local _vmk = {}
for _vml, _vmm in ipairs(_v0:GetPlayers()) do
if _vmm ~= _v2 and _vmm.Character then
local _vmn = _v4.getRootOf(_vmm.Character, false)
if _vmn then _vmk[#_vmk + 1] = _vmn.Position end
end
end
local _vmo, _vmp = 0, 20
while _vmp <= _vm9 and not _vmb and not _v4.UNLOADED do
local _vmq = math.clamp(math.floor(2 * math.pi * _vmp / 25), 12, 96)
for _vmr = 0, _vmq - 1 do
local _vms = _vmr * 2 * math.pi / _vmq
local _vmt, _vmu = _vm8.X + math.cos(_vms) * _vmp, _vm8.Z + math.sin(_vms) * _vmp
_vmo = _vmo + 1
if _vmo % 40 == 0 then task.wait() end
local _vmv = _vmg(_vmt, _vmu)
if _vmv then
local _vmw = Vector3.new(_vm8.X - _vmt, 0, _vm8.Z - _vmu).Unit
local _vmx, _vmy, _vmz, _vn0, _vn1 = _vmt, _vmu, nil, nil, nil
for _vn2 = 1, 20 do
local _vn3, _vn4 = _vmt + _vmw.X * 4 * _vn2, _vmu + _vmw.Z * 4 * _vn2
_vmo = _vmo + 1
if not _vmg(_vn3, _vn4) then
local _vn5 = workspace:Raycast(Vector3.new(_vn3, _vmf, _vn4), Vector3.new(0, -2500, 0), _v4.drinkDryRay)
if _vn5 then _vmz, _vn0, _vn1 = _vn3, _vn4, _vn5.Position.Y end
break
end
_vmx, _vmy = _vn3, _vn4
end
if _vmz then
local _vn6 = Vector3.new(_vmz, _vn1, _vn0)
local _vn7 = not _v4.drinkBad[_v4.drinkCell(_vn6)]
for _vn8, _vn9 in ipairs(_vmk) do
if _vn7 and (_vn9 - _vn6).Magnitude <= (_vma or 0) then _vn7 = false end
end
if _vn7 and _v4.wallCross and _v4.wallCross(_vm8, _vn6) then _vn7 = false end
if _vn7 then
_vmb = { stand = _vn6, water = Vector3.new(_vmx, _vmv, _vmy) }
break
end
end
end
end
_vmp = _vmp + ((_vmp < 200) and 20 or 40)
end
end)
_v4.drinkSpot = { from = _vm8, t = os.clock(), stand = _vmb and _vmb.stand, water = _vmb and _vmb.water }
_v4.drinkSearching = nil
end)
end
task.spawn(function()
local _vna = game:GetService(_ei9m[459+435])
local _vnb, _vnc, _vnd, _vne
pcall(function() _vnb = _v4.req(_v4.WATER_RS.Shared.ConsumptionData) end)
_vnc = _v4.requireCS()
pcall(function() _vnd = _v4.req(_v4.WATER_RS.Packages.Knit).GetController(_ei9m[1343+227]) end)
pcall(function() _vne = _v4.req(_v4.WATER_RS.Common.Buffers.ConsumableBuffer) end)
local _vnf = _vne and _vne.FOOD or 9
local _vng = _vne and _vne.WATER or 13
local _vnh = _vne and _vne.SPAWN or 17
local function _vni()
local _vnj
pcall(function() _vnj = _vnd and _vnd.Replica and _vnd.Replica.Id end)
return _vnj or _vkd
end
local _vnk = false
local function _vnl(_vnm)
if _vnm == _vnk then return end
_vnk = _vnm
local _vnn = _vki()
if _vnn and _vkc then
pcall(function() _vkc:FireServer(_vnn, _ei9m[1116], _ei9m[2241], _vnm) end)
end
end
local function _vno(_vnp)
local _vnq, _vnr = pcall(function() return _vnc.Data.Diet.Categories[_vnp] ~= nil end)
return _vnq and _vnr
end
local function _vns()
local _vnt
pcall(function() _vnt = _vnc.Wellbeing.WellbeingReplica.Data.SavableStats.Stats end)
if type(_vnt) == _ei9m[128] and _vnt.Proteins ~= nil then return _vnt end
pcall(function() _vnt = _vnc.Wellbeing.SavableStats end)
if type(_vnt) == _ei9m[7+2033] and _vnt.Proteins ~= nil then return _vnt end
return nil
end
local function _vnu()
local _vnv = _vns()
if not _vnv then return nil end
local _vnw = {}
pcall(function()
for _vnx, _vny in ipairs(_vnc.Data.Shared.Nutrition) do
if _vny.Category then _vnw[#_vnw + 1] = _vny.Category end
end
end)
if #_vnw == 0 then
for _vnz, _vo0 in ipairs(_v4.NUTRIENTS) do
if tonumber(_vnv[_vo0]) then _vnw[#_vnw + 1] = _vo0 end
end
end
local _vo1, _vo2
for _vo3, _vo4 in ipairs(_vnw) do
local _vo5 = tonumber(_vnv[_vo4])
if _vo5 and (not _vo2 or _vo5 < _vo2) then _vo1, _vo2 = _vo4, _vo5 end
end
return _vo1
end
local function _vo6(_vo7, _vo8)
if not _vnd or not _vnd.Replica or not _vnd.Replica.Data then return nil end
local _vo9 = _vnd.Replica.Data.ConsumableData
local _voa = _vo9 and (_vo9[tostring(_vo7)] or _vo9[_vo7])
if type(_voa) ~= _ei9m[921-17] then return nil end
local _vob = _voa[_vo8 or 1]
if typeof(_vob) ~= _ei9m[891+570] then return nil end
local _voc, _vod, _voe, _vof = pcall(function()
return buffer.readu32(_vob, _vnf) / 100,
buffer.readu32(_vob, _vng) / 100,
buffer.readu8(_vob, _vnh) == 1
end)
if _voc then return _vod, _voe, _vof end
return nil
end
local function _vog(_voh, _voi)
local _voj = {}
local _vok = _vnb and _vnb.FoliageConsumables and _vnb.FoliageConsumables[_voh]
local _vol = _vok and _vok.Actions
if type(_vol) == _ei9m[91] then
for _vom, _von in ipairs(_vol) do
if type(_von) == _ei9m[1291+964] then
local _voo, _vop, _voq = _vo6(_voi, _vom)
if _voo ~= nil then
if not _voq or (_voo + (_vop or 0)) <= 0 then continue end
if _v4.scrapsWanted() and _v4.isScraps(_voo) then continue end
end
_voj[#_voj + 1] = { index = _vom, nutrition = _von.Nutrition or {},
allowed = _von.Category ~= nil and _vno(_von.Category),
category = _von.Category, food = _voo or 0 }
end
end
end
if #_voj == 0 then
local _vor, _vos, _vot = _vo6(_voi, 1)
if _vor and _vot and (_vor + (_vos or 0)) > 0 and not (_v4.scrapsWanted() and _v4.isScraps(_vor)) then
_voj[1] = { index = 1, nutrition = {}, allowed = false, food = _vor }
elseif _vor == nil then
_voj[1] = { index = 1, nutrition = {}, allowed = false, food = 0 }
end
end
return _voj
end
local function _vou(_vov)
local _vow = (type(_vov) == _ei9m[347+717] and _vov:sub(1, 4) == _ei9m[2+2139]) and _ei9m[4+2941]
or (_vnb and _vnb.CorpseTypes and _vnb.CorpseTypes[_vov])
local _vox = _vow and _vnb and _vnb.CorpseConsumables and _vnb.CorpseConsumables[_vow]
local _voy = _vox and _vox.Actions and _vox.Actions[1]
if _voy then
return { index = 1, nutrition = _voy.Nutrition or {},
allowed = _voy.Category ~= nil and _vno(_voy.Category), category = _voy.Category }
end
return { index = 1, nutrition = {}, allowed = false }
end
local function _voz(_vp0, _vp1)
local _vp2 = 22
pcall(function() if _v4.khRange then _vp2 = _v4.khRange() end end)
local _vp3 = math.max(_vp2 * 3, 60)
local _vp4, _vp5, _vp6, _vp7
local _vp8, _vp9, _vpa
local _vpb, _vpc, _vpd
local _vpe, _vpf, _vpg
local function _vph(_vpi, _vpj, _vpk, _vpl, _vpm)
if not _vpi then return end
if _vpm <= _vp2 then
local _vpn = 2
if _vp1 and _vpk[_vp1] then _vpn = 0 elseif _vpl then _vpn = 1 end
if (not _vp4) or _vpn < _vp4 or (_vpn == _vp4 and _vpm < (_vp7 or math.huge)) then
_vp4, _vp5, _vp6, _vp7 = _vpn, _vpi, _vpj, _vpm
end
end
if not _vpg or _vpm < _vpg then _vpe, _vpf, _vpg = _vpi, _vpj, _vpm end
if _vpm <= _vp3 then
if _vpl and (not _vpd or _vpm < _vpd) then _vpb, _vpc, _vpd = _vpi, _vpj, _vpm end
if _vp1 and _vpk[_vp1] and (not _vpa or _vpm < _vpa) then _vp8, _vp9, _vpa = _vpi, _vpj, _vpm end
end
end
local _vpo = {}
for _vpp, _vpq in ipairs(_vna:GetTagged(_ei9m[2400+561])) do
local _vpr, _vps = _v4.foodSpot(_vpq)
if _vpr then
local _vpt = (_vpr - _vp0).Magnitude
if _vpt <= _vp3 then
local _vpu = _vog(_vpq.Name, _vps)
for _vpp, _vpw in ipairs(_vpu) do _vph(tonumber(_vps), _vpw.index, _vpw.nutrition, _vpw.allowed, _vpt) end
else
_vpo[#_vpo + 1] = { tagged = _vpq, id = _vps, d = _vpt }
end
end
end
if _vnd and _vnd.CorpseData then
for _vpx, _vpy in pairs(_vnd.CorpseData) do
local _vpz = _vpy and _vou(_vpy.Name)
local _vq0 = _vpz and _vpy.Root
if _vq0 then
local _vq1
pcall(function() _vq1 = _vq0:IsA(_ei9m[6+2134]) and _vq0.Position or _vq0:GetPivot().Position end)
local _vq2 = _vo6(tonumber(_vpx), _vpz.index)
if _vq1 and not (_vq2 ~= nil and _v4.LEAVE_SCRAPS and _v4.isScraps(_vq2)) then
_vph(tonumber(_vpx), _vpz.index, _vpz.nutrition, _vpz.allowed, (_vq1 - _vp0).Magnitude)
end
end
end
end
if #_vpo > 0 and not (_vpg and _vpg <= _vp3) then
table.sort(_vpo, function(_vq3, _vq4) return _vq3.d < _vq4.d end)
for _vq5, _vq6 in ipairs(_vpo) do
if _vpg and _vq6.d >= _vpg then break end
local _vq7 = _vog(_vq6.tagged.Name, _vq6.id)
if #_vq7 > 0 then
for _vq5, _vq9 in ipairs(_vq7) do _vph(tonumber(_vq6.id), _vq9.index, _vq9.nutrition, _vq9.allowed, _vq6.d) end
break
end
end
end
if _vp5 then return _vp5, _vp6 end
if _vp8 then return _vp8, _vp9 end
if _vpb then return _vpb, _vpc end
return _vpe, _vpf
end
local function _vqa(_vqb)
local _vqc, _vqd
for _vqe, _vqf in ipairs(_vna:GetTagged(_ei9m[1936-8])) do
local _vqg, _vqh = _v4.foodSpot(_vqf)
if _vqg then
local _vqi = (_vqg - _vqb).Magnitude
if not _vqd or _vqi < _vqd then _vqc, _vqd = tonumber(_vqh), _vqi end
end
end
return _vqc, 1
end
_v4.foodSpotCache = setmetatable({}, { __mode = "k" })
function _v4.foodSpot(_vqj)
local _vqk = _v4.foodSpotCache[_vqj]
if _vqk then return _vqk.pos, _vqk.id end
local _vql = _vqj:GetAttribute("ID")
if not _vql then return nil, nil end
local _vqm
pcall(function() _vqm = _vqj:GetPivot().Position end)
if not _vqm then return nil, _vql end
_v4.foodSpotCache[_vqj] = { pos = _vqm, id = _vql }
return _vqm, _vql
end
local _vqn, _vqo, _vqp = nil, nil, 0
local _vqq = 0.5
_v4.afkConsumeId = _vni
_v4.afkBufCheck = _vo6
function _v4.afkPickFood(_vqr, _vqs, _vqt)
local _vqu = 22
pcall(function() if _v4.khRange then _vqu = _v4.khRange() end end)
local _vqv = (_vqt and _vqt.avoid) or _v4.AFK_FARM_AVOID or 200
local _vqw = _vnu()
local _vqx, _vqy = {}, {}
pcall(function()
local _vqz = _vns()
if not _vqz then return end
local _vr0 = {}
pcall(function()
for _vr1, _vr2 in ipairs(_vnc.Data.Shared.Nutrition) do _vr0[#_vr0 + 1] = _vr2.Category end
end)
if #_vr0 == 0 then _vr0 = _v4.NUTRIENTS end
for _vr3, _vr4 in ipairs(_vr0) do
local _vr5 = _vr4 and tonumber(_vqz[_vr4])
if _vr5 and _vr5 <= 99 then _vqx[_vr4] = true end
if _vr5 and _vr5 <= 90 then _vqy[_vr4] = true end
end
end)
local function _vr6(_vr7, _vr8)
for _vr9 in pairs(_vr8) do
if (tonumber(_vr7[_vr9]) or 0) >= 0.5 then return true end
end
return false
end
local _vra = math.max(150, _vqu * 6)
local _vrb, _vrc = _vqt and _vqt.yWeight, (_vqt and _vqt.feetY) or _vqr.Y
local function _vrd(_vre)
if not _vrb then return (_vre - _vqr).Magnitude end
local _vrf = Vector3.new(_vre.X - _vqr.X, 0, _vre.Z - _vqr.Z).Magnitude
return _vrf + math.max(0, math.abs(_vre.Y - _vrc) - 6) * _vrb
end
local _vrg
pcall(function() _vrg = _v2.Character:GetAttribute(_ei9m[1294]) end)
local _vrh = RaycastParams.new()
_vrh.FilterType = Enum.RaycastFilterType.Include
_vrh.FilterDescendantsInstances = { workspace.Terrain }
local function _vri(_vrj)
local _vrk = workspace:Raycast(Vector3.new(_vrj.X, 5000, _vrj.Z), Vector3.new(0, -12000, 0), _vrh)
return _vrk and _vrk.Position.Y
end
local _vrl = {}
if _vqv > 0 then
for _vrm, _vrn in ipairs(game.Players:GetPlayers()) do
if _vrn ~= _v2 and _vrn.Character then
local _vro = _v4.getRootOf(_vrn.Character, false)
if _vro then _vrl[#_vrl + 1] = _vro.Position end
end
end
end
local _vrp, _vrq, _vrr, _vrs, _vrt
local function _vru(_vrv, _vrw, _vrx, _vry, _vrz, _vs0, _vs1, _vs2)
if not _vrv or not _vs0 then return end
if _vqs and _vqs[_vrv] then return end
if _vqt and _vqt.maxDist and _vrz > _vqt.maxDist then return end
for _vs3, _vs4 in ipairs(_vrl) do
if (_vs4 - _vs0).Magnitude <= _vqv then return end
end
local _vs5 = -_vrz
local _vs6 = _vs2 == _ei9m[317+1832]
if _vry and _vr6(_vrx, _vqx) and (not _vs6 or _vr6(_vrx, _vqy)) then
_vs5 = _vs5 + ((_vs2 == _ei9m[533+1336]) and 40000 or _vs6 and 20000 or 30000)
if _vqw and (tonumber(_vrx[_vqw]) or 0) >= 0.5 then _vs5 = _vs5 + 5000 end
elseif _vs2 == _ei9m[1690-20] then
_vs5 = _vs5 + ((_vrz <= _vra) and 10000 or -50000)
elseif _vs6 then
_vs5 = _vs5 - 100000
end
if not _vrs or _vs5 > _vrs then
if _v4.wallCross and _v4.wallCross(_vqr, _vs0) then return end
if _vqt and _vqt.reach and not _vqt.reach(_vs0, _vs1) then return end
_vrp, _vrq, _vrr, _vrs, _vrt = _vrv, _vrw, _vs0, _vs5, _vs1
end
end
for _vs7, _vs8 in ipairs(_vna:GetTagged(_ei9m[2595])) do
local _vs9, _vsa = _v4.foodSpot(_vs8)
if _vs9 then
local _vsb = _vrd(_vs9)
local _vsc = _vog(_vs8.Name, _vsa)
for _vs7, _vse in ipairs(_vsc) do
_vru(tonumber(_vsa), _vse.index, _vse.nutrition, _vse.allowed, _vsb, _vs9, false,
_v4.OTHER_FOOD[_vse.category or ""] and _ei9m[7+1146] or _ei9m[631])
end
end
end
if (_vqt and _vqt.meat or (not _vqt and _v4.dinoEatsMeat())) and _vnd and _vnd.CorpseData then
for _vsf, _vsg in pairs(_vnd.CorpseData) do
if _vsg and tostring(_vsg.Name) ~= tostring(_vrg) then
local _vsh = _vou(_vsg.Name)
local _vsi = _vsh and _vsg.Root
if _vsi then
local _vsj
pcall(function() _vsj = _vsi:IsA(_ei9m[61+65]) and _vsi.Position or _vsi:GetPivot().Position end)
if _vsj then
local _vsk = _vri(_vsj)
local _vsl = _vsk ~= nil and _vsj.Y < _vsk - _vqu
local _vsm, _vsn, _vso = _vo6(tonumber(_vsf), _vsh.index)
if not _vsl and _vsm ~= nil and _vso and (_vsm + (_vsn or 0)) > 0 then
_vru(tonumber(_vsf), _vsh.index, _vsh.nutrition, _vsh.allowed, _vrd(_vsj), _vsj, true,
_v4.OTHER_FOOD[_vsh.category or ""] and _ei9m[1141] or _ei9m[7+2492])
end
end
end
end
end
end
return _vrp, _vrq, _vrr, _vrt
end
local _vsp = true
local _vsq = 0
local _vsr = nil
local _vss = nil
local _vst = 5
while not _v4.UNLOADED do
pcall(function()
local _vsu = _vni()
local _vsv = true
if _v4.EAT_WHEN_HUNGRY then
local _vsw, _vsx = _v4.myFood()
if _vsw and _vsx and _vsx > 0 then
if _vsp then
if _vsw >= _vsx - _v4.foodGap(_vsx, 0.05) then _vsp = false end
elseif _vsw <= _vsx - _v4.foodGap(_vsx, 1) then
_vsp = true
end
_vsv = _vsp
end
end
local _vsy = _v4.LEGIT_FARM and _v4.lfEat
if (_v4.FORCE_EAT or _vsy) and not _v4.AFK_FARM and not (_v4.LEGIT_FARM and not _vsy) and not _v4.CLEAN_BREAK
and _vkc and _vsu and _vsv then
local _vsz = os.clock()
local _vt0 = _vsq >= _vst
if _vsy and (_vqn ~= _vsy.id or _vqo ~= _vsy.idx) then
_vqn, _vqo = _vsy.id, _vsy.idx
_vsq = 0; _vsr = nil; _vss = _vsy.id
end
if not _vsy and (_vsz - _vqp >= _vqq or not _vqn or _vt0) then
if _vt0 then
_vsq = 0; _vsr = nil; _vss = nil
end
_vqp = _vsz
local _vt1 = _v2.Character
local _vt2 = _vt1 and (_vt1:FindFirstChild(_ei9m[2380-2]) or _vt1:FindFirstChild(_ei9m[2923+82])
or _vt1:FindFirstChildWhichIsA(_ei9m[35+2]))
if _vt2 then
local _vt3, _vt4
if _vnb and _vnc then
_vt3, _vt4 = _voz(_vt2.Position, _vnu())
else
_vt3, _vt4 = _vqa(_vt2.Position)
end
if _vt3 then
_vqn, _vqo = _vt3, _vt4
if _vt3 ~= _vss then
_vsq = 0; _vsr = nil; _vss = _vt3
end
else
_vqn, _vqo = nil, nil
end
end
end
for _vt5 = 1, 1 do
local _vt6, _vt7 = _vqn, _vqo
if _vt6 and type(_vt6) == _ei9m[1875-4] and _vt6 >= 0 and _vt6 < 4294967296 then
local _vt8, _vt9, _vta = _vo6(_vt6, _vt7)
local _vtb = _vt8 and (_vt8 + (_vt9 or 0)) or nil
local _vtc = false
pcall(function()
_vtc = _vnd ~= nil and _vnd.CorpseData ~= nil
and (_vnd.CorpseData[_vt6] or _vnd.CorpseData[tostring(_vt6)]) ~= nil
end)
local _vtd = (_vsy and not _vtc and not _vsy.meat and (_v4.LF_SCRAPS or _v4.LEAVE_SCRAPS))
or (not _vsy and _v4.LEAVE_SCRAPS)
if _vt8 ~= nil and ((not _vta or _vtb <= 0) or (_vtd and _v4.isScraps(_vt8))) then
_vqn = nil
else
local _vte = buffer.create(5)
buffer.writeu32(_vte, 0, math.floor(_vt6))
buffer.writeu8(_vte, 4, _vt7 or 1)
_vkc:FireServer(_vsu, _ei9m[2753-6], _vte)
if _vsy then _v4.lfBiteN = (_v4.lfBiteN or 0) + 1 end
if _vt8 then
if _vsr and _vss == _vt6 and _vt8 < _vsr then
_v4.noteBiteDrop(_vsr - _vt8)
end
if _vsr and _vt8 >= _vsr and _vss == _vt6 then
_vsq = _vsq + 1
else
_vsq = 0
end
_vsr = _vt8
_vss = _vt6
end
end
end
end
end
if _vnk then _vnl(false) end
end)
task.wait(_v4.FAST_EAT and (1 / math.clamp(_v4.FAST_EAT_RATE or 4, 0.5, 20)) or 0.8)
end
end)
_v4.CLEAN_AT = 60
_v4.CLEAN_STALL = 75
_v4.CLEAN_FULL = 100
_v4.CLEAN_BREAK = false
function _v4.cleanBreakEnd(_vtf, _vtg)
if not _v4.CLEAN_BREAK then return end
_v4.CLEAN_BREAK, _v4.cleanBreak = false, nil
_v4.cleanBreakNext = os.clock() + (_vtg or 0)
_v4.cleanBreakWhy = _vtf
end
task.spawn(function()
local _vth = false
local function _vti(_vtj, _vtk)
if _vtj == false and _v4.INF_OXYGEN then return end
if _vtj == _vth and not _vtk then return end
local _vtl = _vki()
if not (_vtl and _vkc) then return end
pcall(function() _vkc:FireServer(_vtl, _vtj and _ei9m[560+641] or _ei9m[594]) end)
_vth = _vtj
end
function _v4.myCleanliness()
local _vtm
pcall(function() _vtm = _v4.getCS().Wellbeing.SavableStats.Cleanliness end)
if _vtm == nil then pcall(function() _vtm = _v4.getCS().Wellbeing.WellbeingReplica.Data.SavableStats.Stats.Cleanliness end) end
local _vtn = _vki()
if _vtm == nil and _vtn then _vtm = _v4.cleanliness[_vtn] end
if _vtm == nil then pcall(function() _vtm = _v4.getCS().Replica.Data.Cleanliness end) end
return type(_vtm) == _ei9m[708] and _vtm or nil
end
local function _vto(_vtp)
local _vtq = _v4.AFK_FARM or _v4.LEGIT_FARM
local _vtr = _v2.Character
local _vts = _vtr ~= nil and _vtr.Parent ~= nil
if _vtp and _vtp >= _v4.CLEAN_FULL then
if _v4.CLEAN_BREAK then _v4.cleanBreakEnd(_ei9m[6+2312]) end
return false
end
if _vtq and _vts and _vtp and _vtp < _v4.CLEAN_AT and not _v4.CLEAN_BREAK
and os.clock() >= (_v4.cleanBreakNext or 0) then
_v4.CLEAN_BREAK = true
_v4.cleanBreak = { t = os.clock(), from = _vtp, sent = false, hp = _vtr:GetAttribute(_ei9m[1647-20]) }
end
local _vtt = _v4.CLEAN_BREAK and _v4.cleanBreak
if not _vtt then return false end
local _vtu = os.clock()
local _vtv = _vts and _vtr:GetAttribute(_ei9m[3+411])
if not _vtt.sent and _vtu - _vtt.t >= 2 then
_vtt.sent, _vtt.lastRise, _vtt.last = true, _vtu, _vtp
_vti(true, true)
end
if _vtt.sent and _vtp and _vtt.last and _vtp > _vtt.last then _vtt.lastRise = _vtu end
if _vtp then _vtt.last = _vtp end
_v4.lfStatus = _ei9m[6+708] .. tostring(_vtp and math.floor(_vtp) or "?") .. "%)"
if not _vtq or not _vts then
_v4.cleanBreakEnd(_ei9m[3+1214])
elseif type(_vtv) == _ei9m[668+254] and type(_vtt.hp) == _ei9m[173+263] and _vtv < _vtt.hp * 0.97 then
_v4.cleanBreakEnd(_ei9m[258+1711], 120)
elseif _vtt.sent and _vtu - _vtt.lastRise > _v4.CLEAN_STALL then
if (_vtt.kicks or 0) < 2 then
_vtt.kicks, _vtt.lastRise = (_vtt.kicks or 0) + 1, _vtu
_vti(true, true)
else
_v4.cleanBreakEnd(_ei9m[1080-11], 120)
end
elseif _vtu - _vtt.t > 360 then
_v4.cleanBreakEnd(_ei9m[535+838], 120)
end
return true
end
local _vtw, _vtx, _vty = 0, 0, nil
while not _v4.UNLOADED do
if _v4.INF_OXYGEN and _vkc then
_vtw = _vtw + 1
_vti(true, (_vtw % 5) == 0)
_vto(_v4.myCleanliness())
elseif (_v4.AUTO_CLEAN or _v4.AFK_FARM or _v4.LEGIT_FARM) and _vkc then
local _vtz = _v4.myCleanliness()
if _vtz and _vtz >= _v4.CLEAN_FULL then
_vti(false)
_v4.cleanRiseT = os.clock()
_vto(_vtz)
else
_vtx = _vtx + 1
if (_vtz and _vty and _vtz > _vty) or not _v4.cleanRiseT then _v4.cleanRiseT = os.clock() end
if not _vto(_vtz) then
_vti(true, _vtz ~= nil and os.clock() - _v4.cleanRiseT > 40 and _vtx % 60 == 0)
end
end
_vty = _vtz
elseif _vth then
_vti(false)
end
if _v4.CLEAN_BREAK and not (_v4.AFK_FARM or _v4.LEGIT_FARM) then _v4.cleanBreakEnd(_ei9m[1092-12]) end
task.wait(1.0)
end
_v4.cleanBreakEnd(_ei9m[2222-8])
if _vth then
_v4.INF_OXYGEN = false
_vti(false)
end
end)
_v4.GOVERNOR = true
_v4.GOV_MULT = 4
_v4.GOV_SPEED = 150
_v4.GOV_BASE = 150
_v4.GOV_RECOVER = 20
_v4.GOV_STEP_MAX = 25
_v4.GOV_MIN = 20
_v4.govCommanded = nil
_v4.govCommandT = 0
_v4.govReverts = 0
_v4.govLastRevert = 0
_v4.govCleanSince = 0
function _v4.govLegit()
local _vu0 = os.clock()
if _v4.govLegitVal and (_vu0 - (_v4.govLegitT or 0)) < 1 then return _v4.govLegitVal end
local _vu1
pcall(function()
local _vu2 = _v4.getCS()
local _vu3 = _vu2 and _vu2.Replica and _vu2.Replica.Data
if not _vu3 then return end
for _vu4, _vu5 in ipairs({ _ei9m[1563-18], _ei9m[4+1784], _ei9m[4+473],
_ei9m[1146+1157], _ei9m[2601], _ei9m[5+275] }) do
local _vu6 = tonumber(_vu3[_vu5])
if _vu6 and _vu6 > 1 then _vu1 = math.max(_vu1 or 0, _vu6) end
end
end)
_v4.govLegitVal = _vu1 or 25
_v4.govLegitT = _vu0
return _v4.govLegitVal
end
function _v4.govCeiling()
return math.min(_v4.GOV_SPEED, _v4.govLegit() * (_v4.GOV_MULT or 1.5))
end
function _v4.govNext(_vu7, _vu8, _vu9, _vua)
local _vub = _vu8 - _vu7
local _vuc = _vub.Magnitude
if _vuc < 0.001 then return _vu8, false end
if not _v4.GOVERNOR then
_v4.govCommanded, _v4.govCommandT = _vu8, os.clock()
return _vu8, false
end
local _vud = _v4.govCeiling()
local _vue = math.min(_vud, _vua or _vud) * math.min(_vu9 or 0.016, 0.1)
if _vue > _v4.GOV_STEP_MAX then _vue = _v4.GOV_STEP_MAX end
local _vuf, _vug
if _vuc <= _vue then _vuf, _vug = _vu8, false
else _vuf, _vug = _vu7 + _vub.Unit * _vue, true end
_v4.govCommanded, _v4.govCommandT = _vuf, os.clock()
return _vuf, _vug
end
function _v4.govGlide(_vuh, _vui, _vuj, _vuk, _vul, _vum)
local _vun = os.clock() + (_vuk or 20)
local _vuo = _vul or 6
while not _v4.UNLOADED and os.clock() < _vun do
if not (_vuh and _vuh.Parent) then return false end
local _vup = _vuh.Position
if (_vui - _vup).Magnitude <= _vuo then return true end
local _vuq = _v4.govNext(_vup, _vui, 0.03, _vuj)
pcall(function()
_vuh.CFrame = _vum and (CFrame.new(_vuq) * _vum) or CFrame.new(_vuq)
_vuh.AssemblyLinearVelocity = Vector3.zero
_vuh.AssemblyAngularVelocity = Vector3.zero
end)
task.wait(0.03)
end
return (_vuh and _vuh.Parent and (_vui - _vuh.Position).Magnitude <= _vuo) or false
end
_v4.addStep(1, function()
if _v4.UNLOADED or not _v4.GOVERNOR or not _v4.govCommanded then return end
local _vur = os.clock()
if _v4.GOV_SPEED < _v4.GOV_BASE and _vur - _v4.govLastRevert > _v4.GOV_RECOVER then
_v4.GOV_SPEED = _v4.GOV_BASE
end
if _vur - _v4.govCommandT > 0.2 then return end
local _vus = _v4.getLocalPhysicsRoot()
if not (_vus and _vus.Parent) then return end
if (_vus.Position - _v4.govCommanded).Magnitude > 50 then
if _vur - _v4.govLastRevert < 2 then return end
_v4.govLastRevert = _vur
_v4.govReverts = _v4.govReverts + 1
_v4.govCleanSince = _vur
do
local _vut = _v4.GOV_SPEED
_v4.GOV_SPEED = math.max(_v4.GOV_MIN, math.floor(_v4.GOV_SPEED * 0.6))
if _vut ~= _v4.GOV_SPEED then
pcall(function()
if _v4.Hub then
_v4.Hub:Notify(_ei9m[534] .. _vut .. _ei9m[135+226]
.. _v4.GOV_SPEED .. _ei9m[2976-7] .. _v4.govReverts .. ")", 6)
end
end)
end
end
end
end)
do
local _vuu = game:GetService(_ei9m[6+2714])
local function _vuv()
local _vuw = _v2.Character
if not _vuw then return nil end
return _vuw:FindFirstChild(_ei9m[2584]) or _vuw:FindFirstChild(_ei9m[3+2865])
or _vuw:FindFirstChildWhichIsA(_ei9m[1884+864])
end
local function _vux(_vuy)
local _vuz = _v2.Character
if _vuz then pcall(function() _vuz:SetAttribute(_ei9m[91+229], _vuy and true or nil) end) end
end
local _vv0, _vv1, _vv2 = false, nil, nil
local function _vv3(_vv4)
if _v4.UNLOADED then return end
if not _v4.FLY then
if _vv0 then
_vv0 = false; _vv1 = nil; _vv2 = nil; _vux(false)
_v4.flyLandUntil = os.clock() + 10
local _vv5 = _v2.Character
if _vv5 and _vv5:GetAttribute(_ei9m[2999-5]) ~= true then
pcall(function() _vv5:SetAttribute(_ei9m[2764], true) end)
task.delay(10.2, function()
if os.clock() >= (_v4.flyLandUntil or 0) and not _v4.NO_FALL_DAMAGE then
local _vv6 = _v2.Character
if _vv6 == _vv5 then pcall(function() _vv6:SetAttribute(_ei9m[1451-7], nil) end) end
end
end)
end
end
return
end
local _vv7 = _vuv()
local _vv8 = workspace.CurrentCamera
if not _vv7 or not _vv8 or _vv7.Anchored then return end
if not _vv0 then _vv0 = true; _vv1 = _vv7.Position end
_vux(true)
local _vv9 = Vector3.zero
local _vva, _vvb = _vv8.CFrame.LookVector, _vv8.CFrame.RightVector
if _vuu:IsKeyDown(Enum.KeyCode.W) or _v4.mob.fwd then _vv9 = _vv9 + _vva end
if _vuu:IsKeyDown(Enum.KeyCode.S) or _v4.mob.back then _vv9 = _vv9 - _vva end
if _vuu:IsKeyDown(Enum.KeyCode.D) or _v4.mob.right then _vv9 = _vv9 + _vvb end
if _vuu:IsKeyDown(Enum.KeyCode.A) or _v4.mob.left then _vv9 = _vv9 - _vvb end
if _vuu:IsKeyDown(Enum.KeyCode.Space) or _v4.mob.up then _vv9 = _vv9 + Vector3.yAxis end
if _vuu:IsKeyDown(Enum.KeyCode.LeftControl) or _vuu:IsKeyDown(Enum.KeyCode.LeftShift)
or _v4.mob.down then
_vv9 = _vv9 - Vector3.yAxis
end
_vv9 = (_vv9.Magnitude > 0.05) and _vv9.Unit or Vector3.zero
local _vvc = _vv1 or _vv7.Position
_vv1 = _v4.govNext(_vvc,
_vvc + _vv9 * (_v4.FLY_SPEED * math.min(_vv4 or 0.016, 0.1)), _vv4, _v4.FLY_SPEED)
local _vvd = Vector3.new(_vv9.X, 0, _vv9.Z)
if _vvd.Magnitude > 0.05 then
_vv2 = CFrame.lookAt(_vv1, _vv1 + _vvd.Unit)
else
_vv2 = CFrame.new(_vv1) * (_vv7.CFrame - _vv7.CFrame.Position)
end
pcall(function()
_vv7.CFrame = _vv2
_vv7.AssemblyLinearVelocity = Vector3.zero
_vv7.AssemblyAngularVelocity = Vector3.zero
end)
end
local function _vve()
if _v4.UNLOADED or not _v4.FLY or not _vv2 then return end
local _vvf = _vuv()
if _vvf and not _vvf.Anchored then
pcall(function()
_vvf.CFrame = _vv2
_vvf.AssemblyLinearVelocity = Vector3.zero
_vvf.AssemblyAngularVelocity = Vector3.zero
end)
end
end
table.insert(_v2l, _v1.RenderStepped:Connect(_vv3))
table.insert(_v2l, _v1.Heartbeat:Connect(_vve))
end
function _v4.afGroundY(_vvg)
local _vvh = RaycastParams.new()
_vvh.FilterType = Enum.RaycastFilterType.Exclude
_vvh.FilterDescendantsInstances = { _v2.Character }
local _vvi = workspace:Raycast(_vvg + Vector3.new(0, 600, 0), Vector3.new(0, -4000, 0), _vvh)
return _vvi and _vvi.Position.Y or nil
end
function _v4.afAdvance(_vvj)
if _v4.UNLOADED then return end
if not _v4.AUTO_FLY or _v4.FLY then
if _v4.afWasOn then
_v4.afWasOn = false
_v4.afCF, _v4.afPos = nil, nil
local _vvk = _v2.Character
if _vvk then pcall(function() _vvk:SetAttribute(_ei9m[837+126], nil) end) end
_v4.flyLandUntil = os.clock() + 10
end
return
end
local _vvl = _v4.getLocalPhysicsRoot()
if not _vvl or _vvl.Anchored then return end
_vvj = math.min(_vvj or 0.016, 0.1)
local _vvm = _v2.Character
if _v4.afWasOn and _v4.afChar ~= _vvm then _v4.afWasOn = false end
local _vvn = math.max(_v4.AUTO_FLY_RADIUS or 1000, 100)
if not _v4.afWasOn then
_v4.afWasOn = true
_v4.afChar = _vvm
_v4.afPos = _vvl.Position
_v4.afGroundCache = _v4.afGroundY(_vvl.Position)
local _vvo = math.random() * math.pi * 2
_v4.afDriftDir = Vector3.new(math.cos(_vvo), 0, math.sin(_vvo))
_v4.afAngle = _vvo
_v4.afCentre = _vvl.Position - Vector3.new(math.cos(_vvo) * _vvn, 0, math.sin(_vvo) * _vvn)
end
if _vvm and _vvm:GetAttribute(_ei9m[1781+463]) ~= true then
pcall(function() _vvm:SetAttribute(_ei9m[189+1176], true) end)
end
_v4.afAngle = (_v4.afAngle + (_v4.AUTO_FLY_SPEED / _vvn) * _vvj) % (math.pi * 2)
_v4.afProbeT = (_v4.afProbeT or 0) + _vvj
local _vvp = _v4.afProbeT >= 0.2
if _vvp then _v4.afProbeT = 0 end
local _vvq = _v4.afCentre + _v4.afDriftDir * ((_v4.AUTO_FLY_DRIFT or 10) * _vvj)
if (not _vvp) or _v4.afGroundY(_vvq + _v4.afDriftDir * _vvn) then
_v4.afCentre = _vvq
else
local _vvr = (math.random() - 0.5) * 1.2
local _vvs = -_v4.afDriftDir
_v4.afDriftDir = Vector3.new(
_vvs.X * math.cos(_vvr) - _vvs.Z * math.sin(_vvr), 0,
_vvs.X * math.sin(_vvr) + _vvs.Z * math.cos(_vvr))
end
local _vvt = _v4.afCentre + Vector3.new(math.cos(_v4.afAngle) * _vvn, 0, math.sin(_v4.afAngle) * _vvn)
if _vvp then _v4.afGroundCache = _v4.afGroundY(_vvt) end
local _vvu = _v4.afGroundCache
local _vvv = _vvu and (_vvu + (_v4.AUTO_FLY_ALT or 300)) or _v4.afPos.Y
local _vvw = math.clamp(_vvv - _v4.afPos.Y, -60 * _vvj, 60 * _vvj)
_v4.afPos = _v4.govNext(_v4.afPos, Vector3.new(_vvt.X, _v4.afPos.Y + _vvw, _vvt.Z), _vvj,
(_v4.AUTO_FLY_SPEED or 25) + 60)
local _vvx = Vector3.new(-math.sin(_v4.afAngle), 0, math.cos(_v4.afAngle))
_v4.afCF = CFrame.lookAt(_v4.afPos, _v4.afPos + _vvx)
pcall(function()
_vvl.CFrame = _v4.afCF
_vvl.AssemblyLinearVelocity = Vector3.zero
_vvl.AssemblyAngularVelocity = Vector3.zero
end)
end
function _v4.afPin()
if _v4.UNLOADED or not _v4.AUTO_FLY or _v4.FLY or not _v4.afCF then return end
local _vvy = _v4.getLocalPhysicsRoot()
if _vvy and not _vvy.Anchored then
pcall(function()
_vvy.CFrame = _v4.afCF
_vvy.AssemblyLinearVelocity = Vector3.zero
_vvy.AssemblyAngularVelocity = Vector3.zero
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
local _vvz = 150
local _vw0 = 0.3
local _vw1 = 1.5
local _vw2 = 5
local _vw3 = 2
local _vw4 = 0.5
local _vw5 = 30
local _vw6 = 22
local _vw7 = RaycastParams.new()
_vw7.FilterType = Enum.RaycastFilterType.Include
_vw7.FilterDescendantsInstances = { workspace.Terrain }
local function _vw8(_vw9)
local _vwa = workspace:FindFirstChild(_ei9m[1967-3])
local _vwb = _vwa and _vwa:FindFirstChild(_ei9m[254-10])
if _vwb ~= _v4.afkMountains then
_v4.afkMountains = _vwb
_vw7.FilterDescendantsInstances = _vwb and { workspace.Terrain, _vwb } or { workspace.Terrain }
end
local _vwc = workspace:Raycast(Vector3.new(_vw9.X, _vw9.Y + 2500, _vw9.Z), Vector3.new(0, -5000, 0), _vw7)
return _vwc and _vwc.Position.Y
end
local function _vwd()
local _vwe
pcall(function()
local _vwf = _v4.getCS().Alignment
_vwe = (_vwf.RideHeight or 0) + (_vwf.BodyHeightIncrease or 0)
end)
if type(_vwe) ~= _ei9m[2226] or _vwe <= 0 then _vwe = 6 end
return _vwe
end
local function _vwg(_vwh, _vwi)
if _vwh then pcall(function() _vwh:SetAttribute(_ei9m[451-6], _vwi) end) end
end
local function _vwj()
if _v4.afkColliders then
for _vwk in pairs(_v4.afkColliders) do
if _vwk.Parent then pcall(function() _vwk.CanCollide = true end) end
end
end
_v4.afkColliders, _v4.afkCollidersChar = nil, nil
end
local function _vwl(_vwm)
if not _vwm then return end
if _v4.afkCollidersChar ~= _vwm then
_vwj()
local _vwn = {}
for _vwo, _vwp in ipairs(_vwm:GetDescendants()) do
if _vwp:IsA(_ei9m[1942+729]) and _vwp.CanCollide then _vwn[_vwp] = true end
end
for _vwq, _vwr in ipairs({ _ei9m[21+305], _ei9m[2042-13] }) do
local _vws = _vwm:FindFirstChild(_vwr)
if _vws and _vws:IsA(_ei9m[2+1628]) then _vwn[_vws] = true end
end
_v4.afkColliders, _v4.afkCollidersChar = _vwn, _vwm
end
for _vwt in pairs(_v4.afkColliders) do
if _vwt.CanCollide then _vwt.CanCollide = false end
end
end
local function _vwu(_vwv, _vww)
local _vwx = Vector3.new(_vwv.X, 0, _vwv.Z)
if _vwx.Magnitude < 0.1 then return _vww or Vector3.new(0, 0, 1) end
return _vwx.Unit
end
function _v4.afkLift(_vwy)
local _vwz = _vw8(_vwy)
local _vx0 = _vwz and (_vwz + _vwd())
if _vx0 and _vwy.Y < _vx0 then return Vector3.new(_vwy.X, _vx0, _vwy.Z) end
return _vwy
end
local function _vx1(_vx2, _vx3)
local _vx4 = _vx3.Position
local _vx5 = _v4.afkLift(_vx4)
if _vx5 ~= _vx4 then
_vx3 = CFrame.new(_vx5) * _vx3.Rotation
_v4.afkPos, _v4.afkCF = _vx5, _vx3
end
pcall(function()
_vx2.CFrame = _vx3
_vx2.AssemblyLinearVelocity = Vector3.zero
_vx2.AssemblyAngularVelocity = Vector3.zero
end)
end
_v4.afkGiveUps = _v4.afkGiveUps or {}
function _v4.afkGuard(_vx6, _vx7)
if _v4.wallCross and _v4.wallCross(_vx6, _vx7) then return Vector3.new(_vx6.X, _vx7.Y, _vx6.Z), true end
return _vx7, false
end
local function _vx8(_vx9, _vxa)
local _vxb = _v4.afkTarget
if _vx9 and _vxb and _vxb.id then
local _vxc = (_v4.afkGiveUps[_vxb.id] or 0) + 1
_v4.afkGiveUps[_vxb.id] = _vxc
_vxa = _vxa or _vw5
if _vxc >= 2 then _vxa = math.max(_vxa, 1800) end
_v4.afkExclude[_vxb.id] = os.clock() + _vxa
end
_v4.afkTarget = nil
_v4.afkLastScan = 0
_v4.afkStuckPos = nil
end
function _v4.afkDrinkStep(_vxd, _vxe, _vxf, _vxg, _vxh, _vxi)
local _vxj, _vxk = _v4.myWater()
local _vxl = (_vxj and _vxk and _vxk > 0) and _vxj / _vxk or 1
local _vxm = _v4.afkDrink
if not _vxm then
if _vxl > (_v4.DRINK_AT or 0.4) or _vxh < (_v4.afkDrinkRetry or 0) then return false end
if _v4.WATER_ANYWHERE and _vxl >= 0.25 then return false end
local _vxn = _v4.drinkSpot
if not _vxn or _vxh - _vxn.t > 20 or (_vxn.from - _vxe).Magnitude > 200 then
_v4.drinkFind(_vxe, _v4.DRINK_SEARCH or 1500, _v4.AFK_FARM_AVOID or 200)
return false
end
_v4.drinkSpot = nil
if not _vxn.stand then _v4.afkDrinkRetry = _vxh + 45 return false end
_vxm = { stand = _vxn.stand, water = _vxn.water, deadline = _vxh + (_vxn.stand - _vxe).Magnitude / _vxi * 2 + 40 }
_v4.afkDrink = _vxm
_v4.afkTarget = nil
end
if _vxl >= 0.99 then _v4.afkDrink = nil return false end
local _vxo = _v4.headOverWater()
if _vxh > _vxm.deadline and not _vxo then
_v4.drinkBad[_v4.drinkCell(_vxm.stand)] = true
_v4.afkDrink, _v4.afkDrinkRetry = nil, _vxh + 5
return false
end
local _vxp = _vwd()
if _vxo then
_vxm.drinkT = _vxm.drinkT or _vxh
if not _vxm.lastW or _vxj > _vxm.lastW + 0.001 then _vxm.lastW, _vxm.gainT = _vxj, _vxh end
if _vxh - math.max(_vxm.drinkT, _vxm.gainT or 0) > 15 then
_v4.drinkBad[_v4.drinkCell(_vxm.stand)] = true
_v4.afkDrink, _v4.afkDrinkRetry = nil, _vxh + 5
return false
end
else
_vxm.drinkT = nil
local _vxq = _vxm.reached and _vxm.water or _vxm.stand
local _vxr = Vector3.new(_vxq.X - _v4.afkPos.X, 0, _vxq.Z - _v4.afkPos.Z)
if not _vxm.reached and _vxr.Magnitude < 4 then _vxm.reached = true end
if _vxm.reached and _vxr.Magnitude < 2 then
_v4.drinkBad[_v4.drinkCell(_vxm.stand)] = true
_v4.afkDrink, _v4.afkDrinkRetry = nil, _vxh + 5
return false
end
local _vxs = math.max(_vw8(_v4.afkPos) or -math.huge, _vxm.reached and _vxm.water.Y or -math.huge)
local _vxt = (_vxs > -math.huge and _vxs or (_vxm.stand.Y)) + _vxp
local _vxu
_v4.afkPos, _vxu = _v4.afkGuard(_v4.afkPos, _v4.govNext(_v4.afkPos, Vector3.new(_vxq.X, _vxt, _vxq.Z), _vxg,
_vxm.reached and math.min(_vxi, 8) or _vxi))
if _vxu then
_v4.afkDrink, _v4.afkDrinkRetry = nil, _vxh + 30
return false
end
_v4.afkCF = CFrame.lookAt(_v4.afkPos, _v4.afkPos + _vwu(_vxm.water - _v4.afkPos, _v4.afkCF and _v4.afkCF.LookVector))
end
_vx1(_vxd, _v4.afkCF)
_vwg(_vxf, _v4.afkPos.Y)
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
local function _vxv()
_v4.afkWasOn = false
_v4.afkCF, _v4.afkPos, _v4.afkTarget, _v4.afkDrink = nil, nil, nil, nil
_v4.afkStopWalk()
if _v4.afkSafetyState then
if _v4.afkSafetyState == _ei9m[2677] then
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.R, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.R, false, game) end)
end
if _v4.afkSafetyPlatform then pcall(function() _v4.afkSafetyPlatform:Destroy() end); _v4.afkSafetyPlatform = nil end
local _vxw = _v4.getLocalPhysicsRoot()
if _vxw then pcall(function() _vxw.Anchored = false end) end
_v4.afkSafetyState = nil
end
_vwj()
local _vxx = _v2.Character
if _vxx then pcall(function() _vxx:SetAttribute(_ei9m[7+1545], nil) end) end
_v4.flyLandUntil = os.clock() + 10
end
function _v4.afkFarmAdvance(_vxy)
if _v4.UNLOADED then return end
if not _v4.AFK_FARM or _v4.FLY or _v4.AUTO_FLY or _v4.SAVE_DINO_ACTIVE or _v4.AS_BUSY or _v4.CLEAN_BREAK then
if _v4.afkWasOn then _vxv() end
return
end
local _vxz = _v4.getLocalPhysicsRoot()
if not _vxz then return end
if _vxz.Anchored and not _v4.afkSafetyState then return end
_vxy = math.min(_vxy or 0.016, 0.1)
local _vy0 = _v2.Character
if _v4.afkWasOn and _v4.afkChar ~= _vy0 then _v4.afkWasOn = false end
if not _v4.afkWasOn then
_v4.afkWasOn = true
_v4.afkChar = _vy0
_v4.afkPos = _vxz.Position
_v4.afkCF = CFrame.lookAt(_vxz.Position, _vxz.Position + _vwu(_vxz.CFrame.LookVector))
_v4.afkTarget = nil
_v4.afkLastScan = 0
if _v4.trackWalls then pcall(_v4.trackWalls) end
end
if (_vxz.Position - _v4.afkPos).Magnitude > 50 then
_v4.afkPos = _vxz.Position
end
_vwl(_vy0)
if _v4.afkSafetyState or (_v4.afkDrink and _v4.afkDrink.drinkT) then
_v4.afkStopWalk()
elseif _v4.AFK_FARM_WALK then _v4.afkStartWalk() else _v4.afkStopWalk() end
local _vy1 = os.clock()
local _vy2 = _vxz.Position
local _vy3 = math.max(_v4.AFK_FARM_SPEED or 50, 5)
if _v4.AFK_FARM_SAFETY then
local _vy4, _vy5
pcall(function() _vy4 = _vy0:GetAttribute(_ei9m[6+542]); _vy5 = _vy0:GetAttribute(_ei9m[2712-9]) end)
if type(_vy4) == _ei9m[2+483] and type(_vy5) == _ei9m[878+179] and _vy5 > 0 then
local _vy6 = _vy4 / _vy5
local _vy7 = _v4.tookDamage(_vy0, _vy4)
if not _v4.afkSafetyState and (_vy6 < 0.5 or (_vy7 and _vy6 < 0.99)) then
_v4.afkSafetyState = _ei9m[451]
_v4.afkSafetyReturn = _vy2
local _vy8 = _vw8(_vy2) or _vy2.Y
local _vy9 = math.max(_vy8 + _vwd(), _vy2.Y) + _vvz
_v4.afkSafetyDest = Vector3.new(_vy2.X, _vy9, _vy2.Z)
_v4.afkTarget = nil
end
if _v4.afkSafetyState == _ei9m[1795] and _vy6 >= 0.99 then
_v4.afkSafetyState = _ei9m[849+131]
_v4.afkSafetyT = _vy1
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.R, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.R, false, game) end)
if _v4.afkSafetyPlatform then pcall(function() _v4.afkSafetyPlatform:Destroy() end); _v4.afkSafetyPlatform = nil end
pcall(function() _vxz.Anchored = false end)
end
end
elseif _v4.afkSafetyState then
if _v4.afkSafetyState == _ei9m[1459+995] then
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.R, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.R, false, game) end)
end
if _v4.afkSafetyPlatform then pcall(function() _v4.afkSafetyPlatform:Destroy() end); _v4.afkSafetyPlatform = nil end
pcall(function() _vxz.Anchored = false end)
_v4.afkSafetyState = nil
end
if _v4.afkSafetyState then
if _v4.afkSafetyState == _ei9m[892] then
_v4.afkPos = _v4.govNext(_v4.afkPos, _v4.afkSafetyDest, _vxy, _vy3)
_v4.afkCF = CFrame.new(_v4.afkPos) * _v4.afkCF.Rotation
_vx1(_vxz, _v4.afkCF)
_vwg(_vy0, _v4.afkPos.Y)
if (_v4.afkPos - _v4.afkSafetyDest).Magnitude < 5 then
_v4.afkSafetyState = _ei9m[278]
_v4.afkSafetyT = _vy1
pcall(function()
local _vya = Instance.new(_ei9m[3+999])
_vya.Size = Vector3.new(80, 4, 80)
_vya.Position = _v4.afkPos - Vector3.new(0, 6, 0)
_vya.Anchored = true
_vya.Transparency = 1
_vya.CanCollide = true
_vya.CanQuery = false
_vya.Parent = workspace
_v4.afkSafetyPlatform = _vya
end)
end
elseif _v4.afkSafetyState == _ei9m[2+985] then
_vx1(_vxz, _v4.afkCF)
if _vy1 - _v4.afkSafetyT >= _vw0 then
pcall(function() _vxz.Anchored = true end)
pcall(function() _vy0:SetAttribute(_ei9m[1245], nil) end)
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.R, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.R, false, game) end)
_v4.afkSafetyState = _ei9m[1766+71]
_v4.afkSafetyT = _vy1
end
elseif _v4.afkSafetyState == _ei9m[2461] then
_vx1(_vxz, _v4.afkCF)
elseif _v4.afkSafetyState == _ei9m[4+1253] then
local _vyb = _v4.afkSafetyReturn
or Vector3.new(_v4.afkPos.X, (_vw8(_v4.afkPos) or (_v4.afkPos.Y - _vvz)) + _vwd(), _v4.afkPos.Z)
_v4.afkPos = _v4.govNext(_v4.afkPos, _vyb, _vxy, _vy3)
_v4.afkCF = CFrame.new(_v4.afkPos) * _v4.afkCF.Rotation
_vx1(_vxz, _v4.afkCF)
_vwg(_vy0, _v4.afkPos.Y)
if (_v4.afkPos - _vyb).Magnitude < 10 then
_v4.afkSafetyState = nil
_v4.afkSafetyReturn = nil
_v4.afkTarget = nil
_v4.afkLastScan = 0
end
end
return
end
if _v4.AFK_FARM_FLEE then
local _vyc = _v4.AFK_FARM_AVOID or 200
local _vyd, _vye
if _vyc > 0 then
for _vyf, _vyg in ipairs(game.Players:GetPlayers()) do
if _vyg ~= _v2 and _vyg.Character then
local _vyh = _v4.getRootOf(_vyg.Character, false)
if _vyh then
local _vyi = (_vyh.Position - _vy2).Magnitude
if not _vye or _vyi < _vye then _vyd, _vye = _vyh.Position, _vyi end
end
end
end
end
if _vyd and (_vye <= _vyc or (_v4.afkFleeing and _vye <= _vyc * 1.5)) then
_v4.afkFleeing = true
_v4.afkTarget = nil
local _vyj = _vwu(_vy2 - _vyd, _vwu(_v4.afkCF and _v4.afkCF.LookVector))
if _v4.wallCross and _v4.wallCross(_vy2, _vy2 + _vyj * 120) then
local _vyk, _vyl = Vector3.new(-_vyj.Z, 0, _vyj.X), Vector3.new(_vyj.Z, 0, -_vyj.X)
_vyj = (not _v4.wallCross(_vy2, _vy2 + _vyk * 120) and _vyk)
or (not _v4.wallCross(_vy2, _vy2 + _vyl * 120) and _vyl) or -_vyj
end
local _vym = math.max(_v4.afkPos.Y, math.max(_vw8(_vy2) or _vy2.Y,
_vw8(_vy2 + _vyj * 40) or -math.huge) + _vwd())
local _vyn = Vector3.new(_vy2.X + _vyj.X * 300, _vym, _vy2.Z + _vyj.Z * 300)
_v4.afkPos = _v4.afkGuard(_v4.afkPos, _v4.govNext(_v4.afkPos, _vyn, _vxy, _vy3))
_v4.afkCF = CFrame.lookAt(_v4.afkPos, _v4.afkPos + _vyj)
_vx1(_vxz, _v4.afkCF)
_vwg(_vy0, _v4.afkPos.Y)
return
end
_v4.afkFleeing = false
end
if _v4.afkDrinkStep(_vxz, _vy2, _vy0, _vxy, _vy1, _vy3) then return end
if not _v4.afkTarget and _v4.afkPickFood and _vy1 - _v4.afkLastScan >= _vw1 then
_v4.afkLastScan = _vy1
for _vyo, _vyp in pairs(_v4.afkExclude) do
if _vyp <= _vy1 then _v4.afkExclude[_vyo] = nil end
end
local id, idx, pos, isMeat = _v4.afkPickFood(_vy2, _v4.afkExclude, {
avoid = _v4.AFK_FARM_AVOID or 200, meat = _v4.dinoEatsMeat(),
reach = function(_vyq) local _vyr = _vw8(_vyq) return not _vyr or _vyr - _vyq.Y <= 25 end,
})
if id and pos then
_v4.afkTarget = { id = id, idx = idx, pos = pos, isMeat = isMeat, groundY = _vw8(pos), misses = 0,
deadline = _vy1 + (pos - _vy2).Magnitude / _vy3 * 2 + 10 }
end
end
local _vys = _v4.afkTarget
if not _vys then
_v4.afkStuckPos = nil
_vwg(_vy0, _v4.afkPos.Y)
return
end
local _vyt = _vw6
pcall(function() if _v4.khRange then _vyt = _v4.khRange() end end)
local _vyu = _vwd()
local _vyv = _vys.creep and _vys.pos.Y or (_vys.pos.Y - _vyt * _vw4)
local _vyw = math.max(_vyv, (_vys.groundY or -math.huge) + _vyu)
local _vyx = Vector3.new(_vys.pos.X, _vyw, _vys.pos.Z)
if not _vys.holding and not _vys.creep and (_vys.pos - _v4.afkPos).Magnitude <= _vyt * _vw4 then
_vys.holding = true
end
if not _vys.holding then
local _vyy = _v4.afkPos + _vwu(_vyx - _v4.afkPos, _vwu(_v4.afkCF.LookVector)) * 40
local _vyz = math.max(_vw8(_v4.afkPos) or -math.huge, _vw8(_vyy) or -math.huge) + _vyu
local _vz0
_v4.afkPos, _vz0 = _v4.afkGuard(_v4.afkPos, _v4.govNext(_v4.afkPos, Vector3.new(_vyx.X, math.max(_vyx.Y, _vyz), _vyx.Z), _vxy, _vy3))
if _vz0 then _vx8(true) return end
if _v4.AFK_FARM_UNSTUCK and (_vys.pos - _vy2).Magnitude > _vyt then
if not _v4.afkStuckPos or (_vy2 - _v4.afkStuckPos).Magnitude > 4 then
_v4.afkStuckPos, _v4.afkStuckT = _vy2, _vy1
elseif _vy1 - (_v4.afkStuckT or _vy1) > 2.5 then
_v4.afkStuckPos, _v4.afkStuckT = nil, nil
local _vz1 = math.random() * math.pi * 2
_v4.afkPos = _v4.afkGuard(_vy2, _vy2 + Vector3.new(math.cos(_vz1) * 30, 45, math.sin(_vz1) * 30))
_v4.afkCF = CFrame.lookAt(_v4.afkPos, _v4.afkPos + Vector3.new(math.cos(_vz1), 0, math.sin(_vz1)))
_vx1(_vxz, _v4.afkCF)
_vwg(_vy0, _v4.afkPos.Y)
_vx8(true)
return
end
end
else
_v4.afkStuckPos = nil
if (_vyx - _v4.afkPos).Magnitude > _vyt * _vw4 + 4 then
_v4.afkPos = _v4.govNext(_v4.afkPos, _vyx, _vxy, _vy3)
elseif _v4.AFK_FARM_WALK then
_vys.orbit = (_vys.orbit or 0) + _vxy * 2.5
local _vz2 = math.min(3, _vyt * 0.2)
_v4.afkPos = Vector3.new(_vyx.X + math.cos(_vys.orbit) * _vz2, _vyx.Y, _vyx.Z + math.sin(_vys.orbit) * _vz2)
else
_v4.afkPos = _vyx
end
end
local _vz3 = (_vyx - _v4.afkPos).Magnitude < 3
if _vys.creep and _vz3 and not _vys.holding then
_vys.holding = true
_vys.misses = 0
end
local _vz4 = _vwu(_v4.afkCF and _v4.afkCF.LookVector or Vector3.new(0, 0, 1))
_v4.afkCF = CFrame.lookAt(_v4.afkPos, _v4.afkPos + _vwu(_vys.pos - _v4.afkPos, _vz4))
_vx1(_vxz, _v4.afkCF)
_vwg(_vy0, _v4.afkPos.Y)
if not _vys.holding and not _vz3 and _vy1 > _vys.deadline then
_vx8(true)
return
end
if (_vys.pos - _vy2).Magnitude <= _vyt and _vy1 - _v4.afkLastBite >= 1 / math.clamp(_v4.FAST_EAT_RATE or 4, 0.5, 20) then
_v4.afkLastBite = _vy1
local _vz5, _vz6 = _v4.myFood()
if _vz5 and _vz6 and _vz6 > 0 then
if _v4.afkHungry then
if _vz5 >= _vz6 - _v4.foodGap(_vz6, 0.05) then _v4.afkHungry = false end
elseif _vz5 <= _vz6 - _v4.foodGap(_vz6, 1) then
_v4.afkHungry = true
end
end
local _vz7 = _v4.afkHungry and _v4.afkConsumeId and _v4.afkConsumeId()
if _vz7 and _vkc then
local _vz8, _vz9, _vza = _v4.afkBufCheck(_vys.id, _vys.idx)
if _vys.isMeat and _vz8 == nil then _vx8(true) return end
if _vz8 ~= nil and (not _vza or _vz8 + (_vz9 or 0) <= 0) then
_vx8(false)
return
end
if _vz8 ~= nil and _v4.LEAVE_SCRAPS and not _vys.isMeat and _v4.isScraps(_vz8) then
_v4.afkExclude[_vys.id] = os.clock() + 300
_vx8(false)
return
end
if _vys.bitten then
if _vz8 and _vys.lastFood and _vz8 < _vys.lastFood then
_v4.noteBiteDrop(_vys.lastFood - _vz8)
_vys.misses = 0
_vys.lastEat = _vy1
else
_vys.misses = _vys.misses + 1
end
end
_vys.lastFood = _vz8
_vys.bitten = true
local _vzb = buffer.create(5)
buffer.writeu32(_vzb, 0, math.floor(_vys.id))
buffer.writeu8(_vzb, 4, _vys.idx or 1)
_vkc:FireServer(_vz7, _ei9m[2113+267], _vzb)
end
end
if not _vys.creep and _vys.misses >= _vw3 then
_vys.creep, _vys.holding = true, false
_vys.deadline = _vy1 + (_vys.pos - _v4.afkPos).Magnitude / _vy3 * 2 + 10
elseif _vys.creep and _vys.holding and _vys.misses >= _vw2 then
_vx8(true)
return
end
if (_vys.pos - _vy2).Magnitude <= _vyt and _v4.afkHungry then
if _v4.foodNoGain(_vys, _vy1) then _vx8(true, _v4.NO_GAIN_SKIP) return end
else
_vys.gainT = nil
end
if _v4.AFK_FARM_UNSTUCK and _vys.holding then
local _vzc, _vzd = _v4.myFood()
if _vzc and _vzd and _vzd > 0 and _vzc < _vzd - _v4.foodGap(_vzd, 1) then
_vys.hungrySince = _vys.hungrySince or _vy1
if _vy1 - math.max(_vys.lastEat or 0, _vys.hungrySince) > (_v4.UNSTUCK_EAT_SECS or 25) then
_vx8(true)
end
else
_vys.hungrySince = nil
end
end
end
function _v4.afkFarmPin()
if _v4.UNLOADED or not _v4.AFK_FARM or _v4.FLY or _v4.AUTO_FLY or _v4.AS_BUSY or _v4.CLEAN_BREAK or not _v4.afkCF then return end
if _v4.afkSafetyState == _ei9m[334+661] then return end
local _vze = _v4.getLocalPhysicsRoot()
if _vze and not _vze.Anchored then _vx1(_vze, _v4.afkCF) end
local _vzf = _v2.Character
_vwg(_vzf, _v4.afkCF.Position.Y)
_vwl(_vzf)
end
table.insert(_v2l, _v1.RenderStepped:Connect(_v4.afkFarmAdvance))
table.insert(_v2l, _v1.Heartbeat:Connect(_v4.afkFarmPin))
end
function _v4.lfSetup()
local _vzg = 0.7
local _vzh = 0.85
local _vzi = 1.5
local _vzj = 45
local _vzk = 1800
local _vzl = 8
local _vzm, _vzn = 3, 5
local _vzo, _vzp = 4, 3
local _vzq, _vzr, _vzs = 60, 60, 40
local _vzt, _vzu = 30, 45
local _vzv, _vzw = 0.2, 0.6
local _vzx = math.rad(150)
local _vzy = 30
local _vzz, _v100 = 80, 60
local _v101, _v102 = 150, 90
local _v103 = { ALT = 60, MIN_SAFE = 400, MAX_DIST = 2000, MAX_TIME = 120 }
_v4.lfEsc = { starts = {}, revs = {} }
_v4.lfExclude = {}
_v4.lfGiveUps = {}
_v4.lfHeld = {}
_v4.lfBarriers = {}
_v4.lfBiteN = 0
_v4.lfStatus = _ei9m[2+56]
local _v104, _v105
local function _v106()
if not _v105 then
_v105 = true
pcall(function() _v104 = _v4.req(_v4.WATER_RS.Common.RayParams).AlignmentParams end)
if not _v104 then
_v104 = RaycastParams.new()
_v104.FilterType = Enum.RaycastFilterType.Include
local _v107 = { workspace.Terrain }
local _v108 = workspace:FindFirstChild(_ei9m[1022-16])
local _v109 = _v108 and _v108:FindFirstChild(_ei9m[5+695])
if _v109 then _v107[2] = _v109 end
_v104.FilterDescendantsInstances = _v107
_v104.IgnoreWater = true
end
end
return _v104
end
local function _v10a(_v10b, _v10c, _v10d)
local _v10e = workspace:Raycast(Vector3.new(_v10b, _v10c, _v10d), Vector3.new(0, -500, 0), _v106())
return _v10e and _v10e.Position.Y
end
local function _v10f()
local _v10g
pcall(function()
local _v10h = _v4.getCS().Alignment
_v10g = (_v10h.RideHeight or 0) + (_v10h.BodyHeightIncrease or 0)
end)
if type(_v10g) ~= _ei9m[2114] or _v10g <= 0 then _v10g = 6 end
return _v10g
end
local function _v10i()
local _v10j
pcall(function() _v10j = _v4.getCS().Instances.Mesh end)
return _v10j
end
local function _v10k(_v10l, _v10m)
local _v10n = Vector3.new(_v10l.X, 0, _v10l.Z)
if _v10n.Magnitude < 0.1 then return _v10m end
return _v10n.Unit
end
local function _v10o(_v10p, _v10q)
if _v10p then pcall(function() _v10p:SetAttribute(_ei9m[1826], _v10q) end) end
end
local function _v10r(_v10s, _v10t)
pcall(function()
_v10s.CFrame = _v10t
_v10s.AssemblyLinearVelocity = Vector3.zero
_v10s.AssemblyAngularVelocity = Vector3.zero
end)
end
local function _v10u()
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.R, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.R, false, game) end)
end
local function _v10v(_v10w, _v10x)
local _v10y = _v4.getCS()
local _v10z = (_v10y and _v10y.Actions and _v10y.Actions[_v10w]) == true
if _v10z == _v10x then return end
local _v110 = _v10y and _v10y.Controls and pcall(function() _v10y.Controls:HandleAction(_v10w, _v10x) end)
if not _v110 and _v10w == _ei9m[2974] then
pcall(function() _v4.VIM:SendKeyEvent(_v10x, Enum.KeyCode.W, false, game) end)
_v4.lfVimW = _v10x or nil
end
_v4.lfHeld[_v10w] = _v10x or nil
end
local function _v111()
for _v112 in pairs(_v4.lfHeld) do
pcall(function() _v4.getCS().Controls:HandleAction(_v112, false) end)
end
_v4.lfHeld = {}
if _v4.lfVimW then
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.W, false, game) end)
_v4.lfVimW = nil
end
end
local _v113 = 6
local function _v114(_v115, _v116)
if not _v4.lfCircleDir then _v4.lfCircleDir = (math.random() < 0.5) and 1 or -1 end
local _v117 = Vector3.new(_v116.X - _v115.X, 0, _v116.Z - _v115.Z)
local _v118 = _v117.Magnitude
local _v119 = (_v118 > 0.5) and (_v117 / _v118) or Vector3.new(1, 0, 0)
local _v11a = Vector3.new(-_v119.Z * _v4.lfCircleDir, 0, _v119.X * _v4.lfCircleDir)
local _v11b = math.clamp((_v118 - _v113) / _v113, -1, 1)
_v4.lfHeading = _v10k(_v11a - _v119 * _v11b, _v4.lfHeading or _v11a)
_v10v(_ei9m[2+1726], false)
_v10v(_ei9m[429-16], false)
_v10v(_ei9m[1940-11], true)
end
local function _v11c()
if _v4.lfColliders then
for _v11d in pairs(_v4.lfColliders) do
if _v11d.Parent then pcall(function() _v11d.CanCollide = true end) end
end
end
_v4.lfColliders, _v4.lfCollidersChar = nil, nil
end
local function _v11e(_v11f)
if _v4.lfCollidersChar ~= _v11f then
_v11c()
local _v11g = {}
for _v11h, _v11i in ipairs(_v11f:GetDescendants()) do
if _v11i:IsA(_ei9m[4+1487]) and _v11i.CanCollide then _v11g[_v11i] = true end
end
for _v11j, _v11k in ipairs({ _ei9m[395-20], _ei9m[257+197] }) do
local _v11l = _v11f:FindFirstChild(_v11k)
if _v11l and _v11l:IsA(_ei9m[7+346]) then _v11g[_v11l] = true end
end
_v4.lfColliders, _v4.lfCollidersChar = _v11g, _v11f
end
for _v11m in pairs(_v4.lfColliders) do
if _v11m.Parent and _v11m.CanCollide then _v11m.CanCollide = false end
end
end
_v4.lfWallKeys = _v4.lfWallKeys or {}
function _v4.wallAdd(_v11n, _v11o, _v11p)
local _v11q = math.floor(_v11n.X + 0.5) .. ":" .. math.floor(_v11n.Y + 0.5) .. ":" .. math.floor(_v11n.Z + 0.5)
.. ":" .. math.floor(_v11o.X + 0.5) .. ":" .. math.floor(_v11o.Z + 0.5)
if _v4.lfWallKeys[_v11q] then return end
_v4.lfWallKeys[_v11q] = true
_v4.lfBarriers[{ CFrame = _v11n, Size = _v11o, Parent = true, Radius = (_v11o * 0.5).Magnitude, Saved = _v11p }] = true
if _v11p and not _v4.wallsSavePending then
_v4.wallsSavePending = true
task.delay(10, function() _v4.wallsSavePending = nil pcall(_v4.wallsSave) end)
end
end
function _v4.wallsFile()
local _v11r
pcall(function() _v11r = _v4.req(_v4.WATER_RS.Packages.Knit).Ecosystem end)
if type(_v11r) ~= _ei9m[656] or _v11r == "" then return nil end
return _ei9m[92+1068] .. _v11r:gsub(_ei9m[3+135], "_") .. _ei9m[7+2516]
end
function _v4.wallsSave()
local _v11s = _v4.wallsFile()
if not _v11s or _v4.UNLOADED then return end
local _v11t = {}
for _v11u in pairs(_v4.lfBarriers) do
if _v11u.Saved then
local _v11v = { _v11u.CFrame:GetComponents() }
_v11v[13], _v11v[14], _v11v[15] = _v11u.Size.X, _v11u.Size.Y, _v11u.Size.Z
for _v11w = 1, 15 do _v11v[_v11w] = math.floor(_v11v[_v11w] * 1000 + 0.5) / 1000 end
_v11t[#_v11t + 1] = _v11v
end
end
if not isfolder(_ei9m[848+941]) then makefolder(_ei9m[137+1653]) end
writefile(_v11s, game:GetService(_ei9m[71]):JSONEncode({ v = 1, walls = _v11t }))
end
function _v4.wallsLoad()
local _v11x = _v4.wallsFile()
local _v11y, _v11z = pcall(function() return game:GetService(_ei9m[1248+207]):JSONDecode(readfile(_v11x)) end)
if not (_v11y and type(_v11z) == _ei9m[2504-13] and type(_v11z.walls) == _ei9m[454-2]) then return end
for _v120, _v121 in ipairs(_v11z.walls) do
if type(_v121) == _ei9m[3+2758] and #_v121 == 15 then
pcall(function()
_v4.wallAdd(CFrame.new(table.unpack(_v121, 1, 12)), Vector3.new(_v121[13], _v121[14], _v121[15]), false)
end)
end
end
for _v122 in pairs(_v4.lfBarriers) do if _v122.Saved == false then _v122.Saved = true end end
end
function _v4.wallsRect()
local _v123
pcall(function()
local _v124 = _v4.req(_v4.WATER_RS.Packages.Knit).Ecosystem
_v123 = _v4.req(_v4.WATER_RS.Shared.MapData).MapEcosystemData[_v124]
end)
if not (_v123 and typeof(_v123.MapSize) == _ei9m[504+16] and typeof(_v123.MapCenter) == _ei9m[84+495]) then return end
local _v125, _v126, _v127 = _v123.MapCenter, _v123.MapSize.X / 2, _v123.MapSize.Y / 2
local function _v128(_v129) return math.abs(_v129.X - _v125.X) <= _v126 and math.abs(_v129.Z - _v125.Y) <= _v127 end
local _v12a, _v12b = 0, 0
pcall(function()
for _v12c, _v12d in ipairs(workspace.UnstuckPoints:GetChildren()) do
if _v12d:IsA(_ei9m[7+1582]) then
_v12a = _v12a + 1
if _v128(_v12d.Value.Position) then _v12b = _v12b + 1 end
end
end
end)
local _v12e = _v4.getLocalPhysicsRoot()
if (_v12e and not _v128(_v12e.Position)) or (_v12a > 0 and _v12b < _v12a * 0.95) then
_v4.wallsRectNote = _ei9m[1494] .. _v12b .. "/" .. _v12a .. _ei9m[433-16]
return
end
local _v12f, _v12g, _v12h = 50, 20, 200000
_v4.wallAdd(CFrame.new(_v125.X + _v126 - _v12f + _v12g / 2, 0, _v125.Y), Vector3.new(_v12g, _v12h, 2 * _v127 + 2 * _v12g), nil)
_v4.wallAdd(CFrame.new(_v125.X - _v126 + _v12f - _v12g / 2, 0, _v125.Y), Vector3.new(_v12g, _v12h, 2 * _v127 + 2 * _v12g), nil)
_v4.wallAdd(CFrame.new(_v125.X, 0, _v125.Y + _v127 - _v12f + _v12g / 2), Vector3.new(2 * _v126 + 2 * _v12g, _v12h, _v12g), nil)
_v4.wallAdd(CFrame.new(_v125.X, 0, _v125.Y - _v127 + _v12f - _v12g / 2), Vector3.new(2 * _v126 + 2 * _v12g, _v12h, _v12g), nil)
_v4.wallsRectNote = _ei9m[753-19] .. _v12b .. "/" .. _v12a .. _ei9m[18+44]
end
local function _v12i(_v12j)
local _v12k = workspace:FindFirstChild(_ei9m[5+363])
local _v12l = _v12j.Parent
while _v12l and _v12l ~= _v12k and _v12l ~= workspace do
if _v12l.Name == _ei9m[2+392] then return true end
_v12l = _v12l.Parent
end
return false
end
local function _v12m()
if _v4.lfBarriersTracked then return end
local _v12n = workspace:FindFirstChild(_ei9m[409-3])
if not _v12n then return end
_v4.lfBarriersTracked = true
pcall(_v4.wallsLoad)
pcall(_v4.wallsRect)
local function _v12o(_v12p)
if _v12p:IsA(_ei9m[1390-2]) and _v12i(_v12p) then _v4.wallAdd(_v12p.CFrame, _v12p.Size, true) end
end
for _v12q, _v12r in ipairs(_v12n:GetChildren()) do
local _v12s = (_v12r.Name == _ei9m[7+540]) and _v12r or _v12r:FindFirstChild(_ei9m[5+344])
if _v12s then
for _v12q, _v12u in ipairs(_v12s:GetDescendants()) do _v12o(_v12u) end
end
end
table.insert(_v2l, _v12n.DescendantAdded:Connect(function(_v12v)
if not _v4.UNLOADED then _v12o(_v12v) end
end))
end
local function _v12w(_v12x, _v12y)
for _v12z in pairs(_v4.lfBarriers) do
if _v12z.Radius and (_v12z.CFrame.Position - _v12x).Magnitude > _v12z.Radius + _v12y then
elseif _v12z.Parent then
local _v130 = _v12z.CFrame:PointToObjectSpace(_v12x)
local _v131 = _v12z.Size * 0.5
local _v132 = Vector3.new(math.max(math.abs(_v130.X) - _v131.X, 0), math.max(math.abs(_v130.Y) - _v131.Y, 0),
math.max(math.abs(_v130.Z) - _v131.Z, 0))
if _v132.Magnitude < _v12y then return true end
else
_v4.lfBarriers[_v12z] = nil
end
end
return false
end
local function _v133(_v134, _v135)
if next(_v4.lfBarriers) == nil then return true end
local _v136 = _v135 - _v134
local _v137 = math.clamp(math.ceil(_v136.Magnitude / 25), 1, 80)
for _v138 = 0, _v137 do
if _v12w(_v134 + _v136 * (_v138 / _v137), _vzy) then return false end
end
return true
end
local function _v139(_v13a, _v13b)
local _v13c = _v13b - _v13a
local _v13d = _v13c:Dot(_v13c)
for _v13e in pairs(_v4.lfBarriers) do
local _v13f = true
if _v13e.Radius then
local _v13g = _v13e.CFrame.Position
local _v13h = (_v13d > 1e-6) and math.clamp((_v13g - _v13a):Dot(_v13c) / _v13d, 0, 1) or 0
_v13f = (_v13a + _v13c * _v13h - _v13g).Magnitude <= _v13e.Radius + 4
end
if _v13f and _v13e.Parent then
local _v13i, _v13j = _v13e.CFrame:PointToObjectSpace(_v13a), _v13e.CFrame:PointToObjectSpace(_v13b)
local _v13k = _v13e.Size * 0.5 + Vector3.new(2, 2, 2)
local _v13l, _v13m, _v13n = 0, 1, true
for _v13o, _v13p in ipairs({ "X", "Y", "Z" }) do
local _v13q, _v13r, _v13s = _v13i[_v13p], _v13j[_v13p] - _v13i[_v13p], _v13k[_v13p]
if math.abs(_v13r) < 1e-6 then
if math.abs(_v13q) > _v13s then _v13n = false break end
else
local _v13t, _v13u = (-_v13s - _v13q) / _v13r, (_v13s - _v13q) / _v13r
if _v13t > _v13u then _v13t, _v13u = _v13u, _v13t end
_v13l, _v13m = math.max(_v13l, _v13t), math.min(_v13m, _v13u)
if _v13l > _v13m then _v13n = false break end
end
end
if _v13n then return true end
end
end
return false
end
_v4.trackWalls, _v4.wallCross, _v4.wallNear = _v12m, _v139, _v12w
local function _v13v(_v13w)
local _v13x = {}
for _v13y, _v13z in ipairs(game:GetService(_ei9m[49+266]):GetTagged(_ei9m[388+166])) do
local _v140, _v141 = pcall(_v4.foodSpot, _v13z)
if _v140 and _v141 then _v13x[#_v13x + 1] = { d = (_v141 - _v13w).Magnitude, p = _v141 } end
end
table.sort(_v13x, function(_v142, _v143) return _v142.d < _v143.d end)
local _v144, _v145 = math.min(#_v13x, 15), 0
for _v146 = 1, _v144 do
if _v139(_v13w, _v13x[_v146].p) then _v145 = _v145 + 1 end
end
return _v144 > 0 and _v145 > _v144 / 2
end
local _v147
local function _v148(_v149, _v14a, _v14b)
if not _v147 then
_v147 = RaycastParams.new()
_v147.FilterType = Enum.RaycastFilterType.Include
local _v14c = { workspace.Terrain }
local _v14d = workspace:FindFirstChild(_ei9m[68+376])
local _v14e = _v14d and _v14d:FindFirstChild(_ei9m[7+1811])
if _v14e then _v14c[2] = _v14e end
_v147.FilterDescendantsInstances = _v14c
_v147.IgnoreWater = true
end
local _v14f = workspace:Raycast(Vector3.new(_v149, _v14b, _v14a), Vector3.new(0, -2500, 0), _v147)
return _v14f and _v14f.Position.Y
end
local _v14g
local function _v14h(_v14i, _v14j, _v14k)
if not _v14g then
_v14g = RaycastParams.new()
_v14g.FilterType = Enum.RaycastFilterType.Include
local _v14l = { workspace.Terrain }
local _v14m = workspace:FindFirstChild(_ei9m[7+53])
local _v14n = _v14m and _v14m:FindFirstChild(_ei9m[31+33])
if _v14n then _v14l[2] = _v14n end
_v14g.FilterDescendantsInstances = _v14l
_v14g.IgnoreWater = false
end
local _v14o = workspace:Raycast(Vector3.new(_v14i, _v14k, _v14j), Vector3.new(0, -2500, 0), _v14g)
if _v14o and _v14o.Material == Enum.Material.Water then return _v14o.Position.Y end
return nil
end
local function _v14p(_v14q, _v14r)
local _v14s = _v14q.Y + 1500
if not _v14h(_v14q.X, _v14q.Z, _v14s) then return nil end
_v14r = _v14r or Vector3.new(1, 0, 0)
local _v14t = math.atan2(_v14r.Z, _v14r.X)
local _v14u = { 0, 1, -1, 2, -2, 3, -3, 4, -4, 5, -5, 6, -6, 7, -7, 8 }
for _v14v = 20, 400, 20 do
for _v14w, _v14x in ipairs(_v14u) do
local _v14y = _v14t + _v14x * math.pi / 8
local _v14z, _v150 = _v14q.X + math.cos(_v14y) * _v14v, _v14q.Z + math.sin(_v14y) * _v14v
if not _v14h(_v14z, _v150, _v14s) and _v148(_v14z, _v150, _v14s)
and not _v139(_v14q, Vector3.new(_v14z, _v14q.Y, _v150)) then
return Vector3.new(_v14z, _v14q.Y, _v150)
end
end
end
return nil
end
local _v151 = 3
local _v152 = { { 15, 8 }, { 30, 8 }, { 45, 12 } }
local function _v153(_v154, _v155, _v156)
local _v157 = _v14h(_v154, _v155, _v156)
if not _v157 then return false end
local _v158 = _v148(_v154, _v155, _v156)
return not _v158 or _v157 - _v158 >= _v151
end
local _v159, _v15a = {}, 0
local function _v15b(_v15c)
local _v15d = math.floor(_v15c.X / 8) .. ":" .. math.floor(_v15c.Z / 8)
local _v15e = _v159[_v15d]
if _v15e == true or (_v15e and os.clock() < _v15e) then return _v15e == true end
if _v15e == nil then
_v15a = _v15a + 1
if _v15a > 20000 then
local _v15f, _v15g = os.clock(), 0
for _v15h, _v15i in pairs(_v159) do
if _v15i ~= true and _v15f >= _v15i then _v159[_v15h] = nil else _v15g = _v15g + 1 end
end
if _v15g > 20000 then table.clear(_v159) _v15g = 0 end
_v15a = _v15g + 1
end
end
local _v15j = _v15c.Y + 1500
local _v15k = _v14h(_v15c.X, _v15c.Z, _v15j) ~= nil
for _v15l, _v15m in ipairs(_v152) do
if _v15k then break end
local _v15n, _v15o = _v15m[1], _v15m[2]
for _v15p = 0, _v15o - 1 do
local _v15q = _v15p * 2 * math.pi / _v15o
if _v14h(_v15c.X + math.cos(_v15q) * _v15n, _v15c.Z + math.sin(_v15q) * _v15n, _v15j) ~= nil then _v15k = true break end
end
end
_v159[_v15d] = _v15k or (os.clock() + 30)
return _v15k
end
local function _v15r(_v15s)
return not _v15b(_v15s)
end
local _v15t, _v15u, _v15v, _v15w = 60, 30, 300, 20
local function _v15x(_v15y, _v15z)
local _v160 = Vector3.new(_v15z.X - _v15y.X, 0, _v15z.Z - _v15y.Z)
local _v161 = _v160.Magnitude
if _v161 < 10 then return nil end
local _v162 = _v160 / _v161
local _v163 = math.max(_v15y.Y, _v15z.Y) + 1500
local _v164, _v165
for _v166 = 10, _v161, 15 do
if not _v164 and _v166 > _v15t then return nil end
if _v153(_v15y.X + _v162.X * _v166, _v15y.Z + _v162.Z * _v166, _v163) then
_v164 = _v164 or _v166
_v165 = _v166
elseif _v165 and _v166 - _v165 > 45 then
break
end
end
if not _v165 then return nil end
local _v167 = math.min(_v165 + _v15u, _v161)
while _v167 < _v161 and _v14h(_v15y.X + _v162.X * _v167, _v15y.Z + _v162.Z * _v167, _v163) do _v167 = _v167 + 15 end
_v167 = math.min(_v167, _v161)
local _v168, _v169 = _v15y.X + _v162.X * _v167, _v15y.Z + _v162.Z * _v167
if _v167 - _v164 > _v15v or _v14h(_v168, _v169, _v163) or not _v148(_v168, _v169, _v163) then return nil, true end
return Vector3.new(_v168, _v15z.Y, _v169)
end
local function _v16a(_v16b, _v16c, _v16d)
_v16c = _v16c or _v10a(_v16b.X, _v16b.Y + 5, _v16b.Z) or _v16b.Y
local _v16e = _v148(_v16b.X, _v16b.Z, _v16b.Y + 1200)
return _v16e ~= nil and _v16e - _v16c > math.max(_v16d * 2, 25)
end
local function _v16f(_v16g, _v16h, _v16i, _v16j)
local _v16k = _v10a(_v16g.X, _v16g.Y + 60, _v16g.Z) or _v10a(_v16g.X, _v16g.Y + 300, _v16g.Z)
if _v16k == nil or math.abs(_v16g.Y - (_v16k + _v16i + _v16j)) > _v16h * _vzh then return false end
return not _v16a(_v16g, _v16k, _v16i)
end
local function _v16l()
local _v16m
pcall(function()
local _v16n = _v4.getCS().Replica.Data
_v16m = _v16n.Stats.Stamina / math.max(_v16n.MaxStats.Stamina, 1)
end)
if not _v16m then return end
if _v4.lfTired then
if _v16m >= _vzw then _v4.lfTired = false end
elseif _v16m <= _vzv then
_v4.lfTired = true
end
end
local function _v16o(_v16p)
local _v16q = 5
pcall(function() _v16q = _v4.getCS().Data.Movement.Speeds.Land.Normal or _v16q end)
return _v16p / math.max(_v16q, 1) * 1.6 + 20
end
local function _v16r(_v16s)
local _v16t = _v4.lfTarget
if _v16s and _v16t and _v16t.id then
if _v16s >= _vzj then
local _v16u = (_v4.lfGiveUps[_v16t.id] or 0) + 1
_v4.lfGiveUps[_v16t.id] = _v16u
if _v16u >= 2 then _v16s = math.max(_v16s, _vzk) end
end
_v4.lfExclude[_v16t.id] = os.clock() + _v16s
end
_v4.lfTarget, _v4.lfEat = nil, nil
_v4.lfLastScan = 0
_v4.lfProgPos = nil
end
local function _v16v(_v16w, _v16x, _v16y)
_v111()
_v4.lfEat = nil
local _v16z = _v10a(_v16x.X, _v16x.Y + 5, _v16x.Z) or (_v16x.Y - _v16y)
local _v170 = _v4.lfHeading or _v10k(_v16w.CFrame.LookVector, Vector3.new(0, 0, -1))
_v4.lfFly = { phase = "up", pos = _v16x, dest = Vector3.new(_v16x.X, _v16z + _v16y + _vzq, _v16x.Z), dir = _v170 }
_v4.lfProgPos = nil
end
local function _v171(_v172)
local _v173, _v174
for _v175, _v176 in ipairs(_v0:GetPlayers()) do
if _v176 ~= _v2 and _v176.Character then
local _v177 = _v4.getRootOf(_v176.Character, false)
if _v177 then
local _v178 = (_v177.Position - _v172).Magnitude
if not _v174 or _v178 < _v174 then _v173, _v174 = _v177.Position, _v178 end
end
end
end
return _v173, _v174
end
function _v103.noteStart(_v179)
local _v17a, _v17b = _v4.lfEsc, {}
for _v17c, _v17d in ipairs(_v17a.starts) do if _v179 - _v17d < 60 then _v17b[#_v17b + 1] = _v17d end end
_v17b[#_v17b + 1] = _v179
_v17a.starts = _v17b
end
function _v103.noteDir(_v17e, _v17f, _v17g)
local _v17h = _v4.lfEsc
_v17h.fleeSince = _v17h.fleeSince or _v17g
if not _v17h.baseDir or _v17g - _v17h.baseT >= 2 then
if _v17h.baseDir and _v17e:Dot(_v17h.baseDir) < -0.3 then
local _v17i = {}
for _v17j, _v17k in ipairs(_v17h.revs) do if _v17g - _v17k < 25 then _v17i[#_v17i + 1] = _v17k end end
_v17i[#_v17i + 1] = _v17g
_v17h.revs = _v17i
end
_v17h.baseDir, _v17h.baseT = _v17e, _v17g
end
if not _v17h.trailT or _v17g - _v17h.trailT >= 1 then
_v17h.trail = _v17h.trail or {}
table.insert(_v17h.trail, { t = _v17g, pos = _v17f })
while #_v17h.trail > 0 and _v17g - _v17h.trail[1].t > 20 do table.remove(_v17h.trail, 1) end
_v17h.trailT = _v17g
end
end
function _v103.boxed(_v17l, _v17m)
local _v17n = _v4.lfEsc
if _v17l < (_v17n.lockUntil or 0) then return false end
local _v17o, _v17p = 0, 0
for _v17q, _v17r in ipairs(_v17n.revs) do if _v17l - _v17r < 25 then _v17o = _v17o + 1 end end
for _v17s, _v17t in ipairs(_v17n.starts) do if _v17l - _v17t < 60 then _v17p = _v17p + 1 end end
if _v17o >= 3 or _v17p >= 3 then return true end
if _v17n.fleeSince and _v17l - _v17n.fleeSince >= 15 and _v17n.trail then
for _v17u, _v17v in ipairs(_v17n.trail) do
if _v17l - _v17v.t >= 15 then
return Vector3.new(_v17m.X - _v17v.pos.X, 0, _v17m.Z - _v17v.pos.Z).Magnitude < 60
end
end
end
return false
end
function _v103.pick(_v17w, _v17x)
local _v17y = {}
for _v17z, _v180 in ipairs(_v0:GetPlayers()) do
if _v180 ~= _v2 and _v180.Character then
local _v181 = _v4.getRootOf(_v180.Character, false)
if _v181 then _v17y[#_v17y + 1] = _v181.Position end
end
end
local _v182 = math.max(_v103.MIN_SAFE, (_v4.LF_FLYAWAY_RADIUS or 150) * 2 + 50, (_v4.LF_AVOID or 200) * 1.5)
if _v4.afkPickFood then
local _v183 = _v4.khRange()
local _v184 = _v10i()
local _v185 = _v184 and (_v184.Position.Y - _v17w.Y) or 8
local _v188, _v189, _v18a, _v18b = pcall(_v4.afkPickFood, _v17w, _v4.lfExclude, {
avoid = _v182, meat = _v4.dinoEatsMeat(), maxDist = _v103.MAX_DIST,
feetY = _v17w.Y - _v17x, yWeight = 5,
reach = function(_v186, _v187)
if not _v15r(_v186) then return false end
if not _v133(_v17w, _v186) then return false end
if _v187 then return not _v16a(_v186, nil, _v17x) end
return _v16f(_v186, _v183, _v17x, _v185)
end,
})
if _v188 and _v189 and _v18b then return _v18b end
end
local _v18c, _v18d
for _v18e = 0, 15 do
local _v18f = _v18e * math.pi / 8
local _v18g = Vector3.new(math.cos(_v18f), 0, math.sin(_v18f))
for _v18h, _v18i in ipairs({ _v182 + 150, _v182 + 400 }) do
local _v18j = _v17w + _v18g * _v18i
if _v133(_v17w, _v18j) and not _v14h(_v18j.X, _v18j.Z, _v18j.Y + 1500) then
local _v18k = math.huge
for _v18h, _v18m in ipairs(_v17y) do
_v18k = math.min(_v18k, Vector3.new(_v18m.X - _v18j.X, 0, _v18m.Z - _v18j.Z).Magnitude)
end
if not _v18d or _v18k > _v18d then _v18c, _v18d = _v18j, _v18k end
end
end
end
return _v18c
end
function _v103.start(_v18n, _v18o, _v18p, _v18q)
local _v18r = _v4.lfEsc
local _v18s = _v103.pick(_v18o, _v18p)
_v18r.revs, _v18r.starts, _v18r.trail, _v18r.trailT, _v18r.baseDir, _v18r.fleeSince = {}, {}, nil, nil, nil, nil
if not _v18s then _v18r.lockUntil = _v18q + 20 return false end
_v18r.lockUntil = _v18q + 45
_v111()
_v16r(nil)
_v4.lfFleeing = false
local _v18t = _v10k(_v18s - _v18o, _v4.lfHeading or Vector3.new(0, 0, -1))
_v4.lfFly = { kind = _ei9m[2646], phase = _ei9m[1824], pos = _v18o, start = _v18o, dir = _v18t, goal = _v18s, t0 = _v18q,
cf = CFrame.lookAt(_v18o, _v18o + _v18t),
dest = Vector3.new(_v18o.X, math.max(_v18o.Y, _v103.floorAt(_v18o) + _v18p + _v103.ALT), _v18o.Z) }
_v4.lfHeading = _v18t
_v4.lfProgPos = nil
return true
end
function _v103.floorAt(_v18u)
local _v18v = _v18u.Y + 1500
local _v18w = math.max(_v148(_v18u.X, _v18u.Z, _v18v) or -math.huge, _v14h(_v18u.X, _v18u.Z, _v18v) or -math.huge)
if _v18w == -math.huge then return _v18u.Y - _v10f() end
return _v18w
end
local function _v18x(_v18y, _v18z, _v190, _v191, _v192)
if next(_v4.lfBarriers) and _v139(_v18z, _v192) then return false end
_v111()
_v4.lfEat = nil
local _v193 = _v10k(_v192 - _v18z, _v4.lfHeading or Vector3.new(0, 0, -1))
_v4.lfFly = { kind = _ei9m[1071], cross = true, maxT = _v15w, phase = _ei9m[838-6], pos = _v18z, start = _v18z, dir = _v193, goal = _v192, t0 = _v191,
cf = CFrame.lookAt(_v18z, _v18z + _v193),
dest = Vector3.new(_v18z.X, math.max(_v18z.Y, _v103.floorAt(_v18z) + _v190 + _v103.ALT), _v18z.Z) }
if _v4.lfTarget then _v4.lfTarget.deadline = (_v4.lfTarget.deadline or _v191) + _v103.MAX_TIME end
_v4.lfHeading = _v193
_v4.lfProgPos = nil
return true
end
_v103.HEAL_UP = 150
function _v103.hide(_v194, _v195, _v196, _v197)
_v111()
_v16r(nil)
_v4.lfEat, _v4.lfHeading = nil, nil
_v4.lfFly = { kind = _ei9m[835+1072], phase = _ei9m[567+372], pos = _v195, start = _v195, t0 = _v197,
dir = _v10k(_v194.CFrame.LookVector, Vector3.new(0, 0, -1)),
dest = Vector3.new(_v195.X, math.max(_v195.Y, _v103.floorAt(_v195) + _v196 + _v103.HEAL_UP), _v195.Z) }
_v4.lfProgPos = nil
end
function _v103.surface(_v198)
local _v199, _v19a = _v2.Character, _v4.getLocalPhysicsRoot()
if not (_v199 and _v199.Parent and _v19a) then return end
local _v19b = _v19a.Position
local _v19c = _v148(_v19b.X, _v19b.Z, _v19b.Y + 1500)
if not _v19c then return end
local _v19d = _v10f()
if _v19b.Y > _v19c - 2 and _v19b.Y < _v19c + _v19d + 6 then return end
local _v19e = {}
if _v19b.Y <= _v19c - 2 then _v19e[#_v19e + 1] = Vector3.new(_v19b.X, _v19c + _v19d + 10, _v19b.Z) end
local _v19f = _v14p(_v19b, _v198.dir)
if _v19f then _v19e[#_v19e + 1] = Vector3.new(_v19f.X, math.max(_v19b.Y, _v19c + _v19d + 10), _v19f.Z) end
_v19e[#_v19e + 1] = _ei9m[420-20]
local _v19g = _v19a.CFrame.Rotation
_v4.lfSurfacing = true
task.spawn(function()
local _v19h, _v19i = os.clock(), 1
local _v19j = _v19e[1]
_v11e(_v199)
while os.clock() - _v19h < 25 and _v199.Parent and _v19a.Parent do
if _v19j == _ei9m[7+1147] then
local _v19k = _v10a(_v19b.X, _v19b.Y, _v19b.Z) or _v148(_v19b.X, _v19b.Z, _v19b.Y + 1500) or (_v19b.Y - _v19d)
_v19j = Vector3.new(_v19b.X, _v19k + _v19d, _v19b.Z)
end
local _v19l = task.wait(0.03)
_v19b = _v4.govNext(_v19b, _v19j, math.min(_v19l or 0.03, 0.1), _v100)
_v10r(_v19a, CFrame.new(_v19b) * _v19g)
_v10o(_v199, _v19b.Y)
if (_v19b - _v19j).Magnitude < 2 then
_v19i = _v19i + 1
if not _v19e[_v19i] then break end
_v19j = _v19e[_v19i]
end
end
_v10o(_v199, nil)
_v11c()
_v4.flyLandUntil = os.clock() + 10
_v4.lfSurfacing = nil
end)
end
function _v103.drink(_v19m, _v19n, _v19o, _v19p)
local _v19q, _v19r = _v4.myWater()
local _v19s = (_v19q and _v19r and _v19r > 0) and _v19q / _v19r or 1
local _v19t = _v4.lfDrink
if not _v19t then
if _v19s > (_v4.DRINK_AT or 0.4) or _v19p < (_v4.lfDrinkRetry or 0) then return false end
if _v4.WATER_ANYWHERE and _v19s >= 0.25 then return false end
local _v19u = _v4.drinkSpot
if not _v19u or _v19p - _v19u.t > 20 or (_v19u.from - _v19n).Magnitude > 200 then
_v4.drinkFind(_v19n, _v4.DRINK_SEARCH or 1500, _v4.LF_AVOID or 200)
return false
end
_v4.drinkSpot = nil
if not _v19u.stand then
_v4.lfDrinkRetry = _v19p + 45
_v4.lfDrinkNote = _ei9m[152] .. (_v4.DRINK_SEARCH or 1500) .. _ei9m[2772]
return false
end
local _v19v = Vector3.new(_v19u.stand.X - _v19n.X, 0, _v19u.stand.Z - _v19n.Z).Magnitude
_v19t = { stand = _v19u.stand, water = _v19u.water, swims = 0, deadline = _v19p + _v16o(_v19v) + 60 }
_v4.lfDrink, _v4.lfDrinkNote = _v19t, nil
_v16r(nil)
_v4.lfEat = nil
end
local function _v19w()
_v4.drinkBad[_v4.drinkCell(_v19t.stand)] = true
_v4.lfDrink, _v4.lfDrinkRetry = nil, _v19p + 5
_v111()
return false
end
if _v19s >= 0.99 then _v4.lfDrink = nil _v111() return false end
if _v19p > _v19t.deadline or _v19t.swims >= 2 then return _v19w() end
if _v4.headOverWater() then
_v10v(_ei9m[3+1807], false)
_v10v(_ei9m[2861-8], false)
_v10v(_ei9m[3+672], false)
_v4.lfProgPos = nil
_v19t.drinkT = _v19t.drinkT or _v19p
if not _v19t.lastW or _v19q > _v19t.lastW + 0.001 then _v19t.lastW, _v19t.gainT = _v19q, _v19p end
if _v19p - math.max(_v19t.drinkT, _v19t.gainT or 0) > 15 then return _v19w() end
_v4.lfStatus = _ei9m[3+2121] .. math.floor(_v19s * 100) .. "%)"
return true
end
_v19t.drinkT = nil
local _v19x = _v19t.reached and _v19t.water or _v19t.stand
local _v19y = Vector3.new(_v19x.X - _v19n.X, 0, _v19x.Z - _v19n.Z)
if not _v19t.reached and _v19y.Magnitude < 5 then _v19t.reached = true end
if _v19t.reached and _v19y.Magnitude < 3 then return _v19w() end
_v4.lfHeading = _v10k(_v19y, _v4.lfHeading)
if not _v19t.reached and _v19p - (_v19t.wetT or 0) >= 1 then
_v19t.wetT = _v19p
local _v19z, _v1a0 = _v15x(_v19n, _v19t.stand)
if _v1a0 then return _v19w() end
if _v19z and _v18x(_v19m, _v19n, _v19o, _v19p, _v19z) then return true end
end
if not _v19t.progPos or Vector3.new(_v19n.X - _v19t.progPos.X, 0, _v19n.Z - _v19t.progPos.Z).Magnitude > _vzp then
_v19t.progPos, _v19t.progT = _v19n, _v19p
elseif _v19p - _v19t.progT > 6 then
_v19t.progPos, _v19t.flyOuts = nil, (_v19t.flyOuts or 0) + 1
if _v19t.flyOuts > 2 then return _v19w() end
_v16v(_v19m, _v19n, _v19o)
_v4.lfFly.overTo = _v19t.stand
return true
end
_v10v(_ei9m[640+76], false)
_v10v(_ei9m[2075], false)
_v10v(_ei9m[1476-2], true)
_v4.lfStatus = _ei9m[2839] .. math.floor(_v19s * 100) .. _ei9m[2+727] .. math.floor(_v19y.Magnitude) .. _ei9m[439+1117]
return true
end
local function _v1a1(_v1a2, _v1a3, _v1a4, _v1a5)
local _v1a6 = os.clock()
_v103.noteStart(_v1a6)
if _v103.boxed(_v1a6, _v1a3) and _v103.start(_v1a2, _v1a3, _v1a4, _v1a6) then return end
_v111()
_v16r(nil)
local _v1a7 = _v10a(_v1a3.X, _v1a3.Y + 5, _v1a3.Z) or (_v1a3.Y - _v1a4)
local _v1a8 = _v10k(_v1a3 - _v1a5, _v4.lfHeading or _v10k(_v1a2.CFrame.LookVector, Vector3.new(0, 0, -1)))
_v4.lfFly = { kind = _ei9m[361+386], phase = "up", pos = _v1a3, start = _v1a3, dir = _v1a8, t0 = os.clock(),
dest = Vector3.new(_v1a3.X, _v1a7 + _v1a4 + _vzz, _v1a3.Z) }
_v4.lfProgPos = nil
end
function _v4.lfStop(_v1a9)
local _v1aa = _v4.lfFly
if _v1aa and _v1aa.plat then pcall(function() _v1aa.plat:Destroy() end) _v1aa.plat = nil end
if _v1aa and _v1aa.kind == _ei9m[248-18] and _v1aa.phase == _ei9m[228-11] and _v4.saveIsResting() then _v10u() end
local _v1ab = (not _v1a9 and _v1aa) and _v1aa or nil
if _v4.lfResting == _ei9m[265+1503] and _v4.saveIsResting() then _v10u() end
if _v4.lfAnchored then
local _v1ac = _v4.getLocalPhysicsRoot()
if _v1ac then pcall(function() _v1ac.Anchored = false end) end
_v4.lfAnchored = nil
end
_v4.lfResting, _v4.lfFly, _v4.lfHealUp = nil, nil, nil
_v111()
_v11c()
if not _v1a9 then
local _v1ad = _v2.Character
if _v1ad then pcall(function() _v1ad:SetAttribute(_ei9m[1811], nil) end) end
end
if _v4.lfRestoreInput then _v4.lfRestoreInput() end
_v4.lfWasOn, _v4.lfChar = false, nil
_v4.lfTarget, _v4.lfEat, _v4.lfHeading, _v4.lfProgPos, _v4.lfFleeing = nil, nil, nil, nil, false
_v4.lfDrink = nil
_v4.lfStatus = _ei9m[7+1442]
_v4.lfEsc = { starts = {}, revs = {} }
_v4.flyLandUntil = os.clock() + 10
if _v1ab then _v103.surface(_v1ab) end
end
function _v4.lfAdvance(_v1ae)
if _v4.UNLOADED then return end
if _v4.lfSurfacing then return end
if _v4.lfKeepInput then _v4.lfKeepInput() end
local _v1af = _v4.lfFly and (_v4.lfFly.kind == _ei9m[2495] or _v4.lfFly.kind == _ei9m[1123])
local _v1ag = _v4.AFK_FARM or _v4.FLY or _v4.AUTO_FLY or _v4.FOSSIL_FARM or _v4.SAVE_DINO_ACTIVE or _v4.AS_BUSY
or (_v4.CLEAN_BREAK and not _v1af)
if not _v4.LEGIT_FARM or _v1ag then
if _v4.lfWasOn then _v4.lfStop(_v1ag) end
return
end
local _v1ah = _v2.Character
local _v1ai = _v4.getLocalPhysicsRoot()
if not (_v1ah and _v1ai) then return end
if not _v1ah.Parent then
if _v4.lfWasOn then _v4.lfStop(false) end
return
end
_v1ae = math.min(_v1ae or 0.016, 0.1)
if _v4.lfWasOn and _v4.lfChar ~= _v1ah then _v4.lfStop(false) end
if not _v4.lfWasOn then
_v4.lfWasOn, _v4.lfChar = true, _v1ah
_v4.lfY = _v1ai.Position.Y
_v4.lfTarget, _v4.lfEat, _v4.lfLastScan = nil, nil, 0
_v12m()
end
local _v1aj = os.clock()
local _v1ak = _v1ai.Position
local _v1al = _v10f()
local _v1am = _v4.getCS()
local _v1an, _v1ao
pcall(function() _v1an = _v1ah:GetAttribute(_ei9m[234]); _v1ao = _v1ah:GetAttribute(_ei9m[5+678]) end)
local _v1ap = (type(_v1an) == _ei9m[2708] and type(_v1ao) == _ei9m[2779-17] and _v1ao > 0) and _v1an / _v1ao or 1
local function _v1aq()
if _v4.saveIsResting() then _v10u() end
if _v4.lfAnchored then pcall(function() _v1ai.Anchored = false end); _v4.lfAnchored = nil end
_v4.lfResting = nil
_v4.lfY = _v1ak.Y
end
if _v4.lfResting then
local _v1ar, _v1as = _v171(_v1ak)
if _v1ar and _v1as <= math.max(_v4.LF_FLYAWAY_RADIUS or 150, 150) then
_v1aq()
if not _v4.lfFly then _v1a1(_v1ai, _v1ak, _v1al, _v1ar) end
end
end
if _v4.tookDamage(_v1ah, _v1an) then
_v4.lfHealUp = true
if _v4.lfResting then
local _v1at, _v1au = _v171(_v1ak)
if _v1at and _v1au <= 400 then _v1aq() end
end
if not _v4.lfFly and not _v4.lfResting then
local _v1av, _v1aw = _v171(_v1ak)
if _v1av and _v1aw <= 400 then _v1a1(_v1ai, _v1ak, _v1al, _v1av) end
end
end
local _v1ax, _v1ay
if _v1ap < 0.99 then pcall(function() _v1ax, _v1ay = _v4.myFood() end) end
local _v1az, _v1b0 = _v4.lfWantRest(_v1ap, _v4.lfHealUp, _v1ax, _v1ay)
if _v1b0 then _v4.lfHealUp = nil end
if _v4.LF_REST and not _v4.lfResting and not _v4.lfFly and _v1az then
local _v1b1, _v1b2 = _v171(_v1ak)
if _v1b1 and _v1b2 <= math.max(_v4.LF_FLYAWAY_RADIUS or 150, 150) then
_v1a1(_v1ai, _v1ak, _v1al, _v1b1)
else
_v103.hide(_v1ai, _v1ak, _v1al, _v1aj)
return
end
elseif _v4.lfResting and (_v1ap >= 0.99 or not _v4.LF_REST or _v1b0) then
if _v4.saveIsResting() then _v10u() end
if _v4.lfAnchored then pcall(function() _v1ai.Anchored = false end); _v4.lfAnchored = nil end
_v4.lfResting = nil
_v4.lfHealUp = nil
_v4.lfY = _v1ak.Y
end
if _v1ap >= 0.99 then _v4.lfHealUp = nil end
if _v4.lfResting then
if _v4.lfResting == _ei9m[2822-19] then
_v10o(_v1ah, _v4.lfY)
if _v1aj - _v4.lfRestT >= 1 then
pcall(function() _v1ai.Anchored = true end)
_v4.lfAnchored = true
_v10o(_v1ah, nil)
_v10u()
_v4.lfResting, _v4.lfRestT = _ei9m[5+2880], _v1aj
end
elseif not _v4.saveIsResting() and _v1aj - _v4.lfRestT > 6 then
_v10u()
_v4.lfRestT = _v1aj
end
_v4.lfStatus = _ei9m[468+1531] .. math.floor(_v1ap * 100) .. "%)"
return
end
if _v1ai.Anchored and not (_v4.lfFly and _v4.lfFly.kind == _ei9m[1807-5]) then return end
_v11e(_v1ah)
if _v4.lfSteerPatch then _v4.lfSteerPatch() end
if not _v4.lfFly then
local _v1b3 = getgenv and getgenv()
if _v1b3 and _v1b3.EazyCheats_LfEscapeTest then
_v1b3.EazyCheats_LfEscapeTest = nil
if _v103.start(_v1ai, _v1ak, _v1al, _v1aj) then return end
end
end
if _v4.LF_FLYAWAY and not _v4.lfFly then
local _v1b4, _v1b5 = _v171(_v1ak)
if _v1b4 and _v1b5 <= (_v4.LF_FLYAWAY_RADIUS or 150) then _v1a1(_v1ai, _v1ak, _v1al, _v1b4) end
end
if _v4.lfFly then
local _v1b6 = _v4.lfFly
if _v1b6.kind == _ei9m[58+2194] and _v1b6.phase == _ei9m[2+78] then
local _v1b7, _v1b8 = _v171(_v1b6.pos)
if _v1b7 then _v1b6.dir = _v10k(_v1b6.pos - _v1b7, _v1b6.dir) end
if next(_v4.lfBarriers) and _v139(_v1b6.pos, _v1b6.pos + _v1b6.dir * 60) then
local _v1b9, _v1ba = Vector3.new(-_v1b6.dir.Z, 0, _v1b6.dir.X), Vector3.new(_v1b6.dir.Z, 0, -_v1b6.dir.X)
_v1b6.dir = (not _v139(_v1b6.pos, _v1b6.pos + _v1b9 * 60) and _v1b9)
or (not _v139(_v1b6.pos, _v1b6.pos + _v1ba * 60) and _v1ba) or -_v1b6.dir
end
_v103.noteDir(_v1b6.dir, _v1b6.pos, _v1aj)
if _v103.boxed(_v1aj, _v1b6.pos) and _v103.start(_v1ai, _v1b6.pos, _v1al, _v1aj) then return end
local _v1bb = _v1b6.pos + _v1b6.dir * 40
local _v1bc = _v10a(_v1b6.pos.X, _v1b6.pos.Y + 150, _v1b6.pos.Z)
local _v1bd = _v10a(_v1bb.X, _v1b6.pos.Y + 150, _v1bb.Z)
local _v1be = math.max(_v1bc or -math.huge, _v1bd or -math.huge)
local _v1bf = (_v1be > -math.huge) and (_v1be + _v1al + _vzz) or _v1b6.pos.Y
_v1b6.dest = Vector3.new(_v1b6.pos.X + _v1b6.dir.X * 50, _v1bf, _v1b6.pos.Z + _v1b6.dir.Z * 50)
local _v1bg = not _v1b7 or _v1b8 > (_v4.LF_FLYAWAY_RADIUS or 150) * 2
local _v1bh = Vector3.new(_v1b6.pos.X - _v1b6.start.X, 0, _v1b6.pos.Z - _v1b6.start.Z).Magnitude
if (_v1bg and _v1bh >= _v101) or os.clock() - _v1b6.t0 > _v102 then
local _v1bi = _v14p(_v1b6.pos, _v1b6.dir)
if _v1bi then
_v1b6.phase, _v1b6.dest = _ei9m[6+442], _v1bi
else
local _v1bj = _v10a(_v1b6.pos.X, _v1b6.pos.Y, _v1b6.pos.Z)
_v1b6.phase, _v1b6.dest = _ei9m[1917-4], Vector3.new(_v1b6.pos.X, (_v1bj or (_v1b6.pos.Y - _vzz - _v1al)) + _v1al, _v1b6.pos.Z)
end
end
end
if _v1b6.kind == _ei9m[1696+613] and _v1b6.phase == _ei9m[7+126] then
local _v1bk = Vector3.new(_v1b6.goal.X - _v1b6.pos.X, 0, _v1b6.goal.Z - _v1b6.pos.Z)
local _v1bl = _v1bk.Magnitude
_v1b6.dir = _v10k(_v1bk, _v1b6.dir)
local _v1bm = _v1b6.pos + _v1b6.dir * math.min(40, _v1bl)
local _v1bn = next(_v4.lfBarriers) and _v12w(_v1bm, _vzy)
local _v1bo = math.max(_v103.floorAt(_v1b6.pos), _v103.floorAt(_v1bm)) + _v1al + _v103.ALT
local _v1bp = math.min(50, _v1bl)
_v1b6.dest = Vector3.new(_v1b6.pos.X + _v1b6.dir.X * _v1bp, _v1bo, _v1b6.pos.Z + _v1b6.dir.Z * _v1bp)
if _v1bl <= 12 or _v1bn or _v1aj - _v1b6.t0 > (_v1b6.maxT or _v103.MAX_TIME) then
local _v1bq = not _v1b6.dryDone and not _v1bn and _v14p(_v1b6.pos, _v1b6.dir)
_v1b6.dryDone = true
if _v1bq then
_v1b6.goal, _v1b6.t0 = _v1bq, _v1aj
else
local _v1br = _v10a(_v1b6.pos.X, _v1b6.pos.Y, _v1b6.pos.Z) or _v148(_v1b6.pos.X, _v1b6.pos.Z, _v1b6.pos.Y + 1500)
_v1b6.phase, _v1b6.dest = _ei9m[819], Vector3.new(_v1b6.pos.X, (_v1br or (_v1b6.pos.Y - _v103.ALT - _v1al)) + _v1al, _v1b6.pos.Z)
end
end
end
if _v1b6.kind == _ei9m[5+1343] and _v1b6.phase == _ei9m[2410] then
_v4.lfStatus = _ei9m[2227-15] .. math.floor(_v1ap * 100) .. "%)"
if not _v1b6.pressed and _v1aj - _v1b6.restT >= 1 then
_v10u()
_v1b6.pressed, _v1b6.restT = true, _v1aj
elseif _v1b6.pressed and not _v4.saveIsResting() and _v1aj - _v1b6.restT > 6 then
_v10u()
_v1b6.restT = _v1aj
end
if _v1ap >= 0.99 or _v1b0 or not _v4.LF_REST then
if _v4.saveIsResting() then _v10u() end
if _v4.lfAnchored then pcall(function() _v1ai.Anchored = false end); _v4.lfAnchored = nil end
if _v1b6.plat then pcall(function() _v1b6.plat:Destroy() end) _v1b6.plat = nil end
_v4.lfHealUp = nil
local _v1bs = _v14p(_v1b6.pos, _v1b6.dir)
if _v1bs then
_v1b6.kind, _v1b6.cross, _v1b6.maxT, _v1b6.phase, _v1b6.goal, _v1b6.t0, _v1b6.dryDone = _ei9m[857+393], true, _v15w, _ei9m[2488], _v1bs, _v1aj, true
else
local _v1bt = _v10a(_v1b6.pos.X, _v1b6.pos.Y, _v1b6.pos.Z) or _v148(_v1b6.pos.X, _v1b6.pos.Z, _v1b6.pos.Y + 1500)
_v1b6.phase, _v1b6.dest = _ei9m[1051-1], Vector3.new(_v1b6.pos.X, (_v1bt or (_v1b6.pos.Y - _v103.HEAL_UP)) + _v1al, _v1b6.pos.Z)
end
end
return
end
local _v1bu = _v4.govNext(_v1b6.pos, _v1b6.dest, _v1ae, (_v1b6.kind == _ei9m[1743] or _v1b6.kind == _ei9m[2004-16] or _v1b6.kind == _ei9m[2161-9]) and _v100 or _vzs)
do
local _v1bv = _v148(_v1bu.X, _v1bu.Z, _v1bu.Y + 1500)
if _v1bv and _v1bu.Y < _v1bv + _v1al * 0.5 then _v1bu = Vector3.new(_v1bu.X, _v1bv + _v1al * 0.5, _v1bu.Z) end
end
if not _v1b6.crossOK and next(_v4.lfBarriers) and _v139(_v1b6.pos, _v1bu) then
_v1bu = Vector3.new(_v1b6.pos.X, _v1bu.Y, _v1b6.pos.Z)
_v1b6.dest = Vector3.new(_v1b6.pos.X, _v1b6.dest.Y, _v1b6.pos.Z)
if _v1b6.kind == _ei9m[1666-14] and _v1b6.phase == _ei9m[6+769] then _v1b6.t0 = os.clock() - _v102 - 1 end
end
_v1b6.pos = _v1bu
_v1b6.cf = CFrame.lookAt(_v1b6.pos, _v1b6.pos + _v1b6.dir)
_v10r(_v1ai, _v1b6.cf)
_v10o(_v1ah, _v1b6.pos.Y)
_v4.lfY = _v1b6.pos.Y
if _v1b6.kind == _ei9m[1968-3] then
_v4.lfStatus = _ei9m[2905] .. _v1b6.phase
elseif _v1b6.kind == _ei9m[1771-9] then
_v4.lfStatus = (_v1b6.cross and _ei9m[227-17] or _ei9m[2201-18]) .. _v1b6.phase .. " ("
.. math.floor(Vector3.new(_v1b6.goal.X - _v1b6.pos.X, 0, _v1b6.goal.Z - _v1b6.pos.Z).Magnitude) .. _ei9m[1320-14]
else
_v4.lfStatus = (_v1b6.kind == _ei9m[164-1] and _ei9m[2259-9] or _ei9m[32+1846]) .. _v1b6.phase
end
if (_v1b6.pos - _v1b6.dest).Magnitude < 2 then
if _v1b6.kind == _ei9m[7+2500] then
if _v1b6.phase == _ei9m[4+2275] then
_v1b6.phase, _v1b6.restT, _v1b6.pressed = _ei9m[2+500], _v1aj, false
pcall(function()
local _v1bw = Instance.new(_ei9m[2825-19])
_v1bw.Name = _ei9m[1021-5]
_v1bw.Size = Vector3.new(40, 4, 40)
_v1bw.Position = _v1b6.pos - Vector3.new(0, _v1al + 2, 0)
_v1bw.Anchored, _v1bw.CanCollide, _v1bw.CanQuery, _v1bw.CanTouch, _v1bw.Transparency = true, true, false, false, 1
_v1bw.Parent = workspace
_v1b6.plat = _v1bw
end)
pcall(function() _v1ai.Anchored = true end)
_v4.lfAnchored = true
_v10o(_v1ah, nil)
else
_v4.lfFly, _v4.lfProgPos = nil, nil
_v4.flyLandUntil = os.clock() + 10
_v4.lfY, _v4.lfLastScan = _v1b6.pos.Y, 0
end
elseif _v1b6.kind == _ei9m[482-9] then
if _v1b6.phase == _ei9m[1820] then
_v1b6.phase = _ei9m[140+2705]
elseif _v1b6.phase == _ei9m[2408] then
_v4.lfFly, _v4.lfProgPos = nil, nil
_v4.flyLandUntil = os.clock() + 10
_v4.lfY, _v4.lfLastScan, _v4.lfHeading = _v1b6.pos.Y, 0, _v1b6.dir
end
elseif _v1b6.phase == "up" and _v1b6.kind == _ei9m[3+2387] then
_v1b6.phase = _ei9m[1607]
elseif _v1b6.phase == "up" then
local _v1bx = _v1b6.overTo and Vector3.new(_v1b6.overTo.X, _v1b6.dest.Y, _v1b6.overTo.Z) or (_v1b6.dest + _v1b6.dir * _vzr)
if next(_v4.lfBarriers) and _v12w(_v1bx, _vzy) then _v1bx = _v1b6.dest - _v1b6.dir * _vzr end
_v1b6.phase, _v1b6.dest = _ei9m[2579-2], _v1bx
elseif _v1b6.phase == _ei9m[189] then
local _v1by = not _v1b6.dryDone and _v14p(_v1b6.dest, _v1b6.dir)
_v1b6.dryDone = true
if _v1by then
_v1b6.dest = _v1by
else
local _v1bz = _v10a(_v1b6.dest.X, _v1b6.dest.Y, _v1b6.dest.Z)
_v1b6.phase, _v1b6.dest = _ei9m[53+384], Vector3.new(_v1b6.dest.X, (_v1bz or (_v1b6.dest.Y - _vzq)) + _v1al, _v1b6.dest.Z)
end
else
_v4.lfFly, _v4.lfProgPos = nil, nil
_v4.flyLandUntil = os.clock() + 10
end
end
return
end
local _v1c0 = _v1am and _v1am.MovementState == _ei9m[2220]
if not _v1am then
local _v1c1 = _v14h(_v1ak.X, _v1ak.Z, _v1ak.Y + 1500)
_v1c0 = _v1c1 ~= nil and _v1c1 > _v1ak.Y - _v1al and _v153(_v1ak.X, _v1ak.Z, _v1ak.Y + 1500)
end
if _v1c0 then
_v10o(_v1ah, nil)
_v4.lfY = _v1ak.Y
else
if math.abs(_v1ak.Y - _v4.lfY) > 25 then _v4.lfY = _v1ak.Y end
local _v1c2 = _v4.lfY - _v1al
local _v1c3 = _v10a(_v1ak.X, _v1c2 + math.max(_v1al * 0.75, 4), _v1ak.Z)
or _v10a(_v1ak.X, _v1c2 + 90, _v1ak.Z)
if _v1c3 then
if _v1c3 >= _v4.lfY then
_v4.lfY = _v1c3 + _v1al
else
_v4.lfY = _v4.lfY + math.clamp(_v1c3 + _v1al - _v4.lfY, -_vzu * _v1ae, _vzt * _v1ae)
end
end
_v10o(_v1ah, _v4.lfY)
end
if _v1c0 then
_v4.lfSwimSince = _v4.lfSwimSince or _v1aj
if _v1aj - _v4.lfSwimSince > 1 then
_v4.lfSwimSince = nil
if _v4.lfDrink then _v4.lfDrink.swims = _v4.lfDrink.swims + 1 end
local _v1c4 = _v4.lfHeading or _v10k(_v1ai.CFrame.LookVector, Vector3.new(0, 0, -1))
local _v1c5 = _v14p(_v1ak, _v1c4)
if _v1c5 then
if _v18x(_v1ai, _v1ak, _v1al, _v1aj, _v1c5) then return end
_v16v(_v1ai, _v1ak, _v1al)
local _v1c6 = _v14h(_v1ak.X, _v1ak.Z, _v1ak.Y + 1500)
if _v1c6 and _v4.lfFly.dest.Y < _v1c6 + 20 then
_v4.lfFly.dest = Vector3.new(_v4.lfFly.dest.X, _v1c6 + 20, _v4.lfFly.dest.Z)
end
_v4.lfFly.overTo, _v4.lfFly.dir = _v1c5, _v10k(_v1c5 - _v1ak, _v1c4)
return
end
end
else
_v4.lfSwimSince = nil
end
_v16l()
if _v4.LF_FLEE then
local _v1c7 = _v4.LF_AVOID or 200
local _v1c8, _v1c9
if _v1c7 > 0 then
for _v1ca, _v1cb in ipairs(_v0:GetPlayers()) do
if _v1cb ~= _v2 and _v1cb.Character then
local _v1cc = _v4.getRootOf(_v1cb.Character, false)
if _v1cc then
local _v1cd = (_v1cc.Position - _v1ak).Magnitude
if not _v1c9 or _v1cd < _v1c9 then _v1c8, _v1c9 = _v1cc.Position, _v1cd end
end
end
end
end
if _v1c8 and (_v1c9 <= _v1c7 or (_v4.lfFleeing and _v1c9 <= _v1c7 * 1.5)) then
if not _v4.lfFleeing then _v16r(nil) end
_v4.lfFleeing = true
_v4.lfHeading = _v10k(_v1ak - _v1c8, _v4.lfHeading or Vector3.new(0, 0, -1))
if next(_v4.lfBarriers) and _v12w(_v1ak + _v4.lfHeading * _vzy, _vzy * 0.5) then
_v4.lfHeading = Vector3.new(-_v4.lfHeading.Z, 0, _v4.lfHeading.X)
end
do
local _v1ce = _v1ak + _v4.lfHeading * 40
local _v1cf = _v1ak.Y + 1500
if (_v1am and _v1am.MovementState == _ei9m[6+1011]) or _v153(_v1ce.X, _v1ce.Z, _v1cf) then
if _v1aj >= (_v4.lfEsc.lockUntil or 0) and _v103.start(_v1ai, _v1ak, _v1al, _v1aj) then return end
local _v1cg = Vector3.new(-_v4.lfHeading.Z, 0, _v4.lfHeading.X)
local _v1ch, _v1ci = _v1ak + _v1cg * 40, _v1ak - _v1cg * 40
if not _v153(_v1ch.X, _v1ch.Z, _v1cf) then _v4.lfHeading = _v1cg
elseif not _v153(_v1ci.X, _v1ci.Z, _v1cf) then _v4.lfHeading = -_v1cg end
end
end
_v103.noteDir(_v4.lfHeading, _v1ak, _v1aj)
if _v103.boxed(_v1aj, _v1ak) and _v103.start(_v1ai, _v1ak, _v1al, _v1aj) then return end
_v4.lfEat = nil
_v10v(_ei9m[866+870], true)
_v10v(_ei9m[335+929], not _v4.lfTired)
_v4.lfStatus = _ei9m[2+453] .. math.floor(_v1c9) .. _ei9m[83+4]
return
end
_v4.lfFleeing = false
end
_v4.lfEsc.fleeSince, _v4.lfEsc.trail, _v4.lfEsc.baseDir = nil, nil, nil
if _v103.drink(_v1ai, _v1ak, _v1al, _v1aj) then return end
if not _v4.lfTarget and _v1aj - (_v4.lfLastScan or 0) >= _vzi then
_v4.lfLastScan = _v1aj
for _v1cj, _v1ck in pairs(_v4.lfExclude) do
if _v1ck <= _v1aj then _v4.lfExclude[_v1cj] = nil end
end
if _v4.afkPickFood then
local _v1cl = _v4.khRange()
local _v1cm = _v10i()
local _v1cn = _v1cm and (_v1cm.Position.Y - _v1ak.Y) or 8
local _v1cq, _v1cr, _v1cs, _v1ct = _v4.afkPickFood(_v1ak, _v4.lfExclude, {
avoid = _v4.LF_AVOID or 200,
meat = _v4.dinoEatsMeat(),
maxDist = _v4.LF_MAX_DIST or 1000,
feetY = _v1ak.Y - _v1al, yWeight = 5,
reach = function(_v1co, _v1cp)
if not _v15r(_v1co) then return false end
if not _v133(_v1ak, _v1co) then return false end
if _v1cp then return not _v16a(_v1co, nil, _v1al) end
return _v16f(_v1co, _v1cl, _v1al, _v1cn)
end,
})
if _v1cq and _v1cs then
local _v1cu = Vector3.new(_v1cs.X - _v1ak.X, 0, _v1cs.Z - _v1ak.Z).Magnitude
_v4.lfTarget = { id = _v1cq, idx = _v1cr, pos = _v1cs, isMeat = _v1ct, misses = 0, flyOuts = 0,
biteSeen = _v4.lfBiteN, eat = { id = _v1cq, idx = _v1cr, meat = _v1ct }, deadline = _v1aj + _v16o(_v1cu) }
end
end
end
local _v1cv = _v4.lfTarget
if not _v1cv then
if _v4.LF_CIRCLE then
_v4.lfIdleC = _v4.lfIdleC or _v1ak
_v114(_v4.lfIdleC, _v1ak)
_v4.lfEat, _v4.lfProgPos = nil, nil
else
_v111()
_v4.lfEat, _v4.lfHeading, _v4.lfProgPos = nil, nil, nil
end
_v4.lfStatus = _v4.afkPickFood and _ei9m[744-20] or _ei9m[1356+242]
_v4.lfNoFoodSince = _v4.lfNoFoodSince or _v1aj
if _v4.afkPickFood and _v1aj - _v4.lfNoFoodSince > 30 and _v1aj - (_v4.lfRelocateAt or 0) > 60 then
_v4.lfRelocateAt = _v1aj
local _v1cw = _v4.khRange()
local _v1cx = _v10i()
local _v1cy = _v1cx and (_v1cx.Position.Y - _v1ak.Y) or 8
local _v1d1 = {
avoid = _v4.LF_AVOID or 200, meat = _v4.dinoEatsMeat(), maxDist = math.max(_v4.LF_MAX_DIST or 1000, 2000),
reach = function(_v1cz, _v1d0)
if not _v15r(_v1cz) then return false end
if not _v133(_v1ak, _v1cz) then return false end
if _v1d0 then return not _v16a(_v1cz, nil, _v1al) end
return _v16f(_v1cz, _v1cw, _v1al, _v1cy)
end,
}
local _v1d2, _v1d3, _v1d4, _v1d5 = pcall(_v4.afkPickFood, _v1ak, _v4.lfExclude, _v1d1)
local _v1d6 = false
if _v1d2 and not _v1d3 and next(_v4.lfBarriers) and _v13v(_v1ak) then
_v1d1.reach = function(_v1d7, _v1d8)
if not _v15r(_v1d7) then return false end
if _v12w(_v1d7, _vzy) then return false end
if _v1d8 then return not _v16a(_v1d7, nil, _v1al) end
return _v16f(_v1d7, _v1cw, _v1al, _v1cy)
end
_v1d2, _v1d3, _v1d4, _v1d5 = pcall(_v4.afkPickFood, _v1ak, _v4.lfExclude, _v1d1)
_v1d6 = true
end
if _v1d2 and _v1d3 and _v1d5 then
_v16v(_v1ai, _v1ak, _v1al)
_v4.lfFly.crossOK = _v1d6
_v4.lfFly.dest = Vector3.new(_v1ak.X, math.max(_v1d5.Y, _v1ak.Y) + _v1al + _vzq, _v1ak.Z)
_v4.lfFly.overTo = _v1d5
_v4.lfFly.dir = _v10k(_v1d5 - _v1ak, _v4.lfFly.dir)
_v4.lfStatus = _ei9m[2130] .. math.floor((_v1d5 - _v1ak).Magnitude) .. _ei9m[678-13]
end
end
return
end
_v4.lfNoFoodSince = nil
_v4.lfIdleC = nil
if not _v1cv.isMeat and _v4.afkPickFood and _v4.dinoEatsMeat() and _v1aj - (_v1cv.meatLookT or 0) >= 8 then
_v1cv.meatLookT = _v1aj
local _v1d9 = _v4.khRange()
local _v1da = _v10i()
local _v1db = _v1da and (_v1da.Position.Y - _v1ak.Y) or 8
local _v1de, _v1df, _v1dg, _v1dh, _v1di = pcall(_v4.afkPickFood, _v1ak, _v4.lfExclude, {
avoid = _v4.LF_AVOID or 200, meat = true, maxDist = _v4.LF_MAX_DIST or 1000,
feetY = _v1ak.Y - _v1al, yWeight = 5,
reach = function(_v1dc, _v1dd)
if not _v15r(_v1dc) then return false end
if not _v133(_v1ak, _v1dc) then return false end
if _v1dd then return not _v16a(_v1dc, nil, _v1al) end
return _v16f(_v1dc, _v1d9, _v1al, _v1db)
end,
})
if _v1de and _v1df and _v1dh and _v1di and _v1df ~= _v1cv.id then
local _v1dj = Vector3.new(_v1dh.X - _v1ak.X, 0, _v1dh.Z - _v1ak.Z).Magnitude
_v4.lfTarget = { id = _v1df, idx = _v1dg, pos = _v1dh, isMeat = true, misses = 0, flyOuts = 0,
biteSeen = _v4.lfBiteN, eat = { id = _v1df, idx = _v1dg, meat = true }, deadline = _v1aj + _v16o(_v1dj) }
_v4.lfEat, _v4.lfProgPos = nil, nil
_v1cv = _v4.lfTarget
end
end
local _v1dk, _v1dl, _v1dm = _v4.afkBufCheck(_v1cv.id, _v1cv.idx)
if _v1cv.isMeat and _v1dk == nil then _v16r(_vzj) return end
if _v1dk ~= nil and (not _v1dm or _v1dk + (_v1dl or 0) <= 0) then
_v16r(5)
return
end
if _v1dk ~= nil and not _v1cv.isMeat and (_v4.LF_SCRAPS or _v4.LEAVE_SCRAPS) and _v4.isScraps(_v1dk) then
_v4.lfExclude[_v1cv.id] = os.clock() + 300
_v16r(nil)
return
end
local _v1dn = _v10i()
local _v1do = _v1dn and _v1dn.Position or _v1ak
local _v1dp = _v4.khRange()
local _v1dq = _v1cv.pos - _v1do
local _v1dr = Vector3.new(_v1dq.X, 0, _v1dq.Z).Magnitude
local _v1ds = math.sqrt(math.max((_v1dp * 0.9) ^ 2 - _v1dq.Y * _v1dq.Y, 0))
local _v1dt = _v1cv.creep and 3 or math.max(_v1ds * _vzg, 3)
if _v1dr <= math.max(_v1dp * 1.5, 20) and math.abs(_v1dq.Y) > _v1dp * 0.95 then
_v1cv.vertSince = _v1cv.vertSince or _v1aj
if _v1aj - _v1cv.vertSince > _vzl then
_v16r(_vzk)
return
end
else
_v1cv.vertSince = nil
end
if _v1cv.holding then
if _v1dr > _v1dt + 6 then _v1cv.holding = false end
elseif _v1dr <= _v1dt then
_v1cv.holding = true
end
_v4.lfHeading = _v10k(_v1cv.pos - _v1ak, _v4.lfHeading)
if not _v1cv.holding and _v1aj - (_v1cv.wetT or 0) >= 1 then
_v1cv.wetT = _v1aj
local _v1du, _v1dv = _v15x(_v1ak, _v1cv.pos)
if _v1dv then _v16r(_vzk) return end
if _v1du and _v18x(_v1ai, _v1ak, _v1al, _v1aj, _v1du) then return end
end
_v4.lfEat = (_v1dq.Magnitude <= _v1dp * 0.95) and _v1cv.eat or nil
local _v1dw, _v1dx = _v4.myFood()
local _v1dy = _v1dw and _v1dx and _v1dx > 0 and _v1dw >= _v1dx - _v4.foodGap(_v1dx, 1)
if _v4.lfBiteN ~= _v1cv.biteSeen then
_v1cv.biteSeen = _v4.lfBiteN
if _v1dk and _v1cv.lastFood and _v1dk < _v1cv.lastFood then
_v4.noteBiteDrop(_v1cv.lastFood - _v1dk)
_v1cv.misses = 0
_v1cv.lastEat = _v1aj
elseif _v1cv.lastFood ~= nil and not _v1dy then
_v1cv.misses = _v1cv.misses + 1
end
_v1cv.lastFood = _v1dk
end
if _v1cv.holding and not _v1cv.creep and _v1cv.misses >= _vzm then
_v1cv.creep, _v1cv.holding, _v1cv.misses = true, false, 0
_v1cv.deadline = _v1aj + _v16o(_v1dr)
elseif _v1cv.creep and _v1cv.holding and _v1cv.misses >= _vzn then
_v16r(_vzj)
return
end
if _v1cv.holding and _v4.lfEat then
if _v4.foodNoGain(_v1cv, _v1aj) then _v16r(_v4.NO_GAIN_SKIP) return end
else
_v1cv.gainT = nil
end
if _v4.LF_UNSTUCK and _v1cv.holding and not _v1dy then
_v1cv.hungrySince = _v1cv.hungrySince or _v1aj
if _v1aj - math.max(_v1cv.lastEat or 0, _v1cv.hungrySince) > (_v4.UNSTUCK_EAT_SECS or 25) then
_v16r(_vzj)
return
end
elseif _v1dy then
_v1cv.hungrySince = nil
end
if _v1cv.holding then
if _v4.LF_CIRCLE then
_v114(_v1cv.pos, _v1ak)
else
_v10v(_ei9m[2997], false)
_v10v(_ei9m[581-7], false)
end
_v4.lfProgPos = nil
_v4.lfStatus = _ei9m[301+139] .. _v1cv.id .. " (" .. math.floor(_v1dr) .. _ei9m[1316-5] .. _v1cv.misses .. ")"
return
end
if next(_v4.lfBarriers) and _v4.lfHeading
and _v12w(_v1ak + _v4.lfHeading * _vzy, _vzy * 0.5) then
_v111()
_v16r(_vzj)
return
end
if _v1cv.deadline and _v1aj > _v1cv.deadline then _v16r(_vzj) return end
local _v1dz = false
_v10v(_ei9m[663+476], false)
_v10v(_ei9m[707+1675], true)
_v10v(_ei9m[2030-12], _v1dz)
local _v1e0 = _v1am and _v1am.Movement and _v1am.Movement.MoveActionsBlocked
if _v4.LF_UNSTUCK and not _v1e0 then
if not _v4.lfProgPos
or Vector3.new(_v1ak.X - _v4.lfProgPos.X, 0, _v1ak.Z - _v4.lfProgPos.Z).Magnitude > _vzp then
_v4.lfProgPos, _v4.lfProgT = _v1ak, _v1aj
elseif _v1aj - _v4.lfProgT > _vzo then
_v1cv.flyOuts = _v1cv.flyOuts + 1
_v16v(_v1ai, _v1ak, _v1al)
if _v1cv.flyOuts >= 2 then _v16r(_vzj) end
return
end
end
_v4.lfStatus = (_v1dz and _ei9m[1774] or (_v1c0 and _ei9m[309-8] or _ei9m[2452])) .. _ei9m[5+110] .. _v1cv.id
.. " (" .. math.floor(_v1dr) .. _ei9m[2+142]
end
function _v4.lfPin()
local _v1e1 = _v4.lfFly
if _v4.UNLOADED or not _v4.LEGIT_FARM or not _v1e1 or not _v1e1.cf then return end
local _v1e2 = _v4.getLocalPhysicsRoot()
if _v1e2 and not _v1e2.Anchored then _v10r(_v1e2, _v1e1.cf) end
end
local function _v1e3()
if _v4.lfWalkState then return true end
pcall(function()
local _v1e4 = _v4.req(_v2.PlayerScripts.Client.Classes.Character.Movement.States.Walking)
local _v1e5 = rawget(_v1e4, _ei9m[1812])
if type(_v1e5) ~= _ei9m[870-19] then return end
_v1e4.AdjustDirection = function(self, _v1e6, ...)
local _v1e7 = _v4.lfHeading
if _v1e7 and _v4.LEGIT_FARM and _v4.lfWasOn and not _v4.lfFly and not _v4.lfResting
and _v4.lfHeld and _v4.lfHeld.Forward then
return _v1e7
end
return _v1e5(self, _v1e6, ...)
end
_v4.lfWalkState = { mod = _v1e4, orig = _v1e5 }
end)
return _v4.lfWalkState ~= nil
end
_v4.lfSteerPatch = _v1e3
function _v4.lfSteer(_v1e8)
if _v4.UNLOADED or not _v4.LEGIT_FARM or not _v4.lfWasOn or _v4.lfFly or _v4.lfResting then return end
if _v4.lfWalkState then return end
local _v1e9 = _v4.lfHeading
local _v1ea = workspace.CurrentCamera
if not _v1e9 or not _v1ea or _v1ea.CameraType ~= Enum.CameraType.Custom then return end
local _v1eb = _v1ea.CFrame
local _v1ec = _v1eb.LookVector
if Vector3.new(_v1ec.X, 0, _v1ec.Z).Magnitude < 1e-3 then return end
local _v1ed = math.atan2(-_v1ec.X, -_v1ec.Z)
local _v1ee = math.atan2(-_v1e9.X, -_v1e9.Z)
local _v1ef = math.clamp(math.atan2(math.sin(_v1ee - _v1ed), math.cos(_v1ee - _v1ed)),
-_vzx * (_v1e8 or 0.016), _vzx * (_v1e8 or 0.016))
if math.abs(_v1ef) < 1e-4 then return end
local _v1eg = CFrame.Angles(0, _v1ef, 0)
local _v1eh = _v1ea.Focus.Position
_v1ea.CFrame = CFrame.new(_v1eh + _v1eg * (_v1eb.Position - _v1eh)) * (_v1eg * _v1eb.Rotation)
end
local _v1ei = false
local function _v1ej()
if _v4.IS_XENO then return _vjb end
local _v1ek, _v1el = pcall(function() return isrbxactive() end)
if _v1ek and type(_v1el) == _ei9m[2191] then return _v1el end
return _vjb
end
local function _v1em()
if not _v1ei then return end
_v1ei = false
local _v1en = _v4.getCS()
if _v1en and _v1en.Controls then pcall(function() _v1en.Controls.WindowUnfocused = not _v1ej() end) end
if getgenv then getgenv().EazyCheats_TabOut = nil end
end
_v4.lfRestoreInput = _v1em
function _v4.lfKeepInput()
if not (_v4.LEGIT_FARM and _v4.LF_TABOUT) or _v4.UNLOADED then _v1em() return end
if _v1ej() then _v1em() return end
local _v1eo = _v4.getCS()
local _v1ep = _v1eo and _v1eo.Controls
if not _v1ep then return end
_v1ei = true
if _v1ep.WindowUnfocused ~= false then pcall(function() _v1ep.WindowUnfocused = false end) end
if _v1ep.InputWasBlocked == true then pcall(function() _v1ep.InputWasBlocked = false end) end
if getgenv then
getgenv().EazyCheats_TabOut = (_v4.lfHeld.Forward and ((_v4.lfHeld.Run and _ei9m[160] or _ei9m[405]) .. _ei9m[6+1631]))
or (_v4.lfFly and _ei9m[2+1029]) or (_v4.lfResting and _ei9m[2902]) or _ei9m[2445]
end
end
table.insert(_v2l, _v1.RenderStepped:Connect(_v4.lfAdvance))
table.insert(_v2l, _v1.Heartbeat:Connect(_v4.lfPin))
pcall(function()
_v1:BindToRenderStep(_ei9m[4+325], Enum.RenderPriority.Camera.Value + 2, _v4.lfSteer)
end)
end
_v4.lfSetup()
function _v4.asSetup()
local _v1eq = game:GetService(_ei9m[1956-2])
_v4.asDone = {}
_v4.asSkip = {}
_v4.asStatus = _ei9m[1524]
local function _v1er()
local _v1es
pcall(function() _v1es = _v4.req(_v1eq.Packages.Knit) end)
return _v1es
end
local function _v1et()
local _v1eu
pcall(function() _v1eu = _v1er().GetController(_ei9m[4+595]) end)
return _v1eu
end
local function _v1ev(_v1ew)
local _v1ex
pcall(function() _v1ex = _v4.req(_v1eq.DinosaurData[_v1ew]) end)
return _v1ex
end
local function _v1ey(_v1ez, _v1f0)
pcall(function() if _v4.Hub then _v4.Hub:Notify(_ei9m[6+436] .. _v1ez, _v1f0 or 6) end end)
end
local function _v1f1()
local _v1f2 = _v1er()
return (_v1f2 and _v1f2.Roster) or {}
end
local function _v1f3(_v1f4)
local _v1f5
pcall(function() _v1f5 = _v1et().Dinosaurs[_v1f4] end)
return _v1f5 and true or false
end
local function _v1f6(_v1f7)
local _v1f8
pcall(function()
local _v1f9 = tonumber(_v1et().DinosaursData[_v1f7].Pricing.Amber)
if _v1f9 and _v1f9 > 0 then
_v1f8 = _v1er().GetController(_ei9m[7+2511]):GetDinosaurAmberCost(_v1f7)
end
end)
return tonumber(_v1f8)
end
local function _v1fa()
local _v1fb
pcall(function() _v1fb = _v1et().Currencies.Amber end)
return tonumber(_v1fb) or 0
end
local function _v1fc(_v1fd)
if _v1fd >= 1e6 then return (math.floor(_v1fd / 1e4 + 0.5) / 100) .. "M" end
if _v1fd >= 1e3 then return math.floor(_v1fd / 1e3 + 0.5) .. "K" end
return tostring(math.floor(_v1fd))
end
function _v4.asAvailable()
local _v1fe = {}
for _v1ff, _v1fg in ipairs(_v1f1()) do
if _v1f3(_v1fg) then _v1fe[#_v1fe + 1] = _v1fg end
end
return _v1fe
end
function _v4.asLabel(_v1fh)
if not _v1fh or _v1fh == _ei9m[1154+525] then return _ei9m[1850+756] end
if _v1f3(_v1fh) then return _v1fh .. _ei9m[386-17] end
local _v1fi = _v1f6(_v1fh)
return _v1fh .. (_v1fi and (_ei9m[3+2199] .. _v1fc(_v1fi) .. _ei9m[6+2314]) or _ei9m[2451])
end
function _v4.asNameOf(_v1fj)
if type(_v1fj) ~= _ei9m[434-2] then return nil end
return _v1fj:match(_ei9m[1558]) or _v1fj
end
function _v4.asItems()
local _v1fk = { _ei9m[80+264] }
for _v1fl, _v1fm in ipairs(_v1f1()) do _v1fk[#_v1fk + 1] = _v4.asLabel(_v1fm) end
return _v1fk
end
_v4.asDropdowns = {}
function _v4.asRefreshLists()
local _v1fn = _v4.asItems()
for _v1fo = 1, 6 do
local _v1fp = _v4.asDropdowns[_v1fo]
if _v1fp and _v1fp.Refresh then pcall(function() _v1fp:Refresh(_v1fn, true) end) end
local _v1fq = _v4.AS_SLOTS and _v4.AS_SLOTS[_v1fo]
if _v1fp and _v1fp.Set and _v1fq and _v1fq ~= _ei9m[1041] then pcall(function() _v1fp:Set(_v4.asLabel(_v1fq), true) end) end
end
end
local function _v1fr(_v1fs)
local _v1ft, _v1fu = _v1ev(_v1fs), nil
pcall(function() _v1fu = _v4.req(_v1eq.Common.GetGrowthIndex):GetHighestGrowthStage(_v1ft.GrowthStages) end)
return _v1fu
end
local function _v1fv(_v1fw)
local _v1fx
pcall(function()
_v1fx = _v1et().Replica.Data[_ei9m[2519-6] .. _v1fw .. "_" .. (_v4.saveGender(_v4.AS_GENDER) or _ei9m[1008]) .. "_1"].Growth.Stage
end)
return _v1fx
end
local function _v1fy(_v1fz, _v1g0)
if not _v1g0 then return false end
if _v1g0 == _ei9m[1078] then return true, _ei9m[1583-9] end
if _v1g0 == _v1fr(_v1fz) then return true, _ei9m[478] .. _v1g0 .. _ei9m[1841-3] end
return false
end
pcall(function() _v4.AS_DONE_FILE = _ei9m[572-7] .. _v2.UserId .. _ei9m[1115+159] end)
function _v4.asDoneRead()
local _v1g1, _v1g2 = pcall(function()
return game:GetService(_ei9m[1579-4]):JSONDecode(readfile(_v4.AS_DONE_FILE))
end)
return (_v1g1 and type(_v1g2) == _ei9m[2822] and type(_v1g2.list) == _ei9m[1718]) and _v1g2 or { list = {} }
end
function _v4.asDoneAdd(_v1g3, _v1g4)
if type(_v1g3) ~= _ei9m[2+2996] or not _v4.AS_DONE_FILE then return end
_v1g4 = (_v1g4 == "F" or _v1g4 == _ei9m[4+904]) and _ei9m[7+1236] or _ei9m[977]
local _v1g5 = _v4.asDoneRead()
for _v1g6, _v1g7 in ipairs(_v1g5.list) do
if _v1g7.sp == _v1g3 and _v1g7.g == _v1g4 then return end
end
local _v1g8
pcall(function() _v1g8 = _v1er().Ecosystem end)
table.insert(_v1g5.list, { sp = _v1g3, g = _v1g4, map = _v1g8, t = os.time() })
pcall(function()
if not isfolder(_ei9m[342+999]) then makefolder(_ei9m[7+2533]) end
writefile(_v4.AS_DONE_FILE, game:GetService(_ei9m[118+482]):JSONEncode(_v1g5))
end)
end
function _v4.asRefreshDone()
for _v1g9, _v1ga in ipairs(_v1f1()) do
if _v1f3(_v1ga) and _v1fy(_v1ga, _v1fv(_v1ga)) then _v4.asDoneAdd(_v1ga, _v4.AS_GENDER) end
end
local _v1gb = {}
for _v1gc, _v1gd in ipairs(_v4.asDoneRead().list) do
_v1gb[#_v1gb + 1] = tostring(_v1gd.sp) .. (_v1gd.g == _ei9m[4+478] and _ei9m[2153] or _ei9m[2+2704])
end
local _v1ge = #_v1gb > 0 and (_ei9m[2569+263] .. #_v1gb .. _ei9m[803-2] .. table.concat(_v1gb, ", ")) or _ei9m[1152+531]
local _v1gf = _v4.asDoneLabel
if _v1gf and _v1gf.SetText then pcall(function() _v1gf:SetText(_v1ge) end) end
return _v1ge
end
local function _v1gg()
local _v1gh = _v2.Character
return (_v1gh and _v1gh:GetAttribute(_ei9m[3+1642])) or _v2:GetAttribute(_ei9m[593+2379])
end
local function _v1gi()
local _v1gj = _v4.getCS()
local _v1gk
pcall(function() _v1gk = _v1gj.Replica.Data.Growth end)
local _v1gl = _v1gg()
if type(_v1gk) ~= _ei9m[2888] or not _v1gl then return false end
if _v1gk.Stage == _ei9m[1299-7] then return true, _ei9m[6+1928] end
if _v1gk.NextStage == _ei9m[1195] then return true, _ei9m[3+2813] .. tostring(_v1gk.Stage) .. _ei9m[3+438] end
return false
end
local _v1gm = {}
local function _v1gn(_v1go)
if _v1gm[_v1go] then return _v1gm[_v1go] end
local _v1gp
pcall(function()
local _v1gq = _v1ev(_v1go).GrowthStages[_v1fr(_v1go)]
_v1gq = _v1gq[_v4.AS_GENDER or _ei9m[640+966]] or _v1gq.Male or _v1gq
_v1gp = tonumber(_v1gq.CoreStats.Weight)
end)
_v1gm[_v1go] = _v1gp or math.huge
return _v1gm[_v1go]
end
local function _v1gr()
local _v1gs = {}
if not _v4.AS_AUTO_ORDER then
local _v1gt = {}
for _v1gu, _v1gv in ipairs(_v1f1()) do _v1gt[_v1gv] = true end
for _v1gw = 1, 6 do
local _v1gx = _v4.AS_SLOTS[_v1gw]
if _v1gx and _v1gx ~= _ei9m[1512+897] and _v1gt[_v1gx] then _v1gs[#_v1gs + 1] = _v1gx end
end
if #_v1gs > 0 then return _v1gs end
end
for _v1gy, _v1gz in ipairs(_v1f1()) do _v1gs[#_v1gs + 1] = _v1gz end
table.sort(_v1gs, function(_v1h0, _v1h1)
local _v1h2, _v1h3 = _v1f3(_v1h0), _v1f3(_v1h1)
if _v1h2 ~= _v1h3 then return _v1h2 end
local _v1h4, _v1h5 = _v1gn(_v1h0), _v1gn(_v1h1)
if _v1h4 ~= _v1h5 then return _v1h4 < _v1h5 end
return _v1h0 < _v1h1
end)
return _v1gs
end
local function _v1h6(_v1h7)
local _v1h8 = {}
for _v1h9, _v1ha in ipairs(_v1f1()) do _v1h8[_v1ha] = true end
local _v1hb = _v1fa()
for _v1hc, _v1hd in ipairs(_v1gr()) do
if _v1hd and _v1hd ~= _ei9m[6+1483] and _v1hd ~= _v1h7 and _v1h8[_v1hd] and not _v4.asDone[_v1hd] and not _v4.asSkip[_v1hd] then
if _v1f3(_v1hd) then
if not _v1fy(_v1hd, _v1fv(_v1hd)) then return _v1hd end
elseif _v4.AS_AUTOBUY then
local _v1he = _v1f6(_v1hd)
if _v1he and _v1he <= _v1hb then return _v1hd, _v1he end
end
end
end
return nil
end
local function _v1hf(_v1hg)
local _v1hh, _v1hi = {}, 0
for _v1hj, _v1hk in ipairs(_v1gr()) do
if _v1hk and _v1hk ~= _ei9m[2384-9] then
if _v4.asSkip[_v1hk] or not _v1f3(_v1hk) then
_v1hi = _v1hi + 1
elseif _v1hk == _v1hg or _v4.asDone[_v1hk] or _v1fy(_v1hk, _v1fv(_v1hk)) then
_v1hh[#_v1hh + 1] = _v1hk
end
end
end
local _v1hl = (#_v1hh > 0) and (_ei9m[1508-11] .. table.concat(_v1hh, ", ")) or _ei9m[861]
if _v1hi > 0 then _v1hl = _v1hl .. "; " .. _v1hi .. (_v4.AS_AUTOBUY and _ei9m[986] or _ei9m[1868]) end
return _v1hl .. _ei9m[2376-19]
end
local function _v1hm(_v1hn)
return _v1hn and _v1hn.FoundWater and not (_v1hn.Classifications and _v1hn.Classifications.IsSemiAquatic)
end
local function _v1ho()
local _v1hp = _v4.getCS()
if _v2:GetAttribute(_ei9m[1864-20]) then return false, _ei9m[5+2381] end
if _v1hp and _v1hp.MovementState == _ei9m[70+8] then return false, _ei9m[2493-7] end
if _v1hm(_v1hp) then return false, _ei9m[1508] end
if _v1hp and _v1hp.UsingTimedAction then return false, _ei9m[1053+309] end
local _v1hq = false
pcall(function() _v1hq = _v1hp.Classifications.IsApex and _v1hp.Movement:IsMoving() end)
if _v1hq then return false, _ei9m[449] end
return true
end
local _v1hr
local function _v1hs(_v1ht, _v1hu, _v1hv)
if not _v1hr then
_v1hr = RaycastParams.new()
_v1hr.FilterType = Enum.RaycastFilterType.Include
local _v1hw = { workspace.Terrain }
local _v1hx = workspace:FindFirstChild(_ei9m[1860+356])
local _v1hy = _v1hx and _v1hx:FindFirstChild(_ei9m[391])
if _v1hy then _v1hw[2] = _v1hy end
_v1hr.FilterDescendantsInstances = _v1hw
_v1hr.IgnoreWater = false
end
local _v1hz = workspace:Raycast(Vector3.new(_v1ht, _v1hv, _v1hu), Vector3.new(0, -3000, 0), _v1hr)
if not _v1hz then return nil end
return _v1hz.Position.Y, _v1hz.Material == Enum.Material.Water
end
local function _v1i0()
local _v1i1, _v1i2 = _v4.getLocalPhysicsRoot(), _v2.Character
if not (_v1i1 and _v1i2) then return false end
local _v1i3 = _v1i1.Position
local _v1i4 = _v1i3.Y + 1500
local _v1i5, _v1i6
for _v1i7 = 20, 400, 20 do
for _v1i8 = 0, 15 do
local _v1i9 = _v1i8 * math.pi / 8
local _v1ia, _v1ib = _v1i3.X + math.cos(_v1i9) * _v1i7, _v1i3.Z + math.sin(_v1i9) * _v1i7
local _v1ic, _v1id = _v1hs(_v1ia, _v1ib, _v1i4)
if _v1ic and not _v1id then _v1i5, _v1i6 = Vector3.new(_v1ia, _v1ic, _v1ib), _v1ic break end
end
if _v1i5 then break end
end
if not _v1i5 then return false end
local _v1ie = 6
pcall(function()
local _v1if = _v4.getCS().Alignment
local _v1ig = (_v1if.RideHeight or 0) + (_v1if.BodyHeightIncrease or 0)
if _v1ig > 0 then _v1ie = _v1ig end
end)
local _v1ih = _v1hs(_v1i3.X, _v1i3.Z, _v1i4) or _v1i3.Y
local _v1ii = math.max(_v1ih, _v1i6, _v1i3.Y) + 30
local _v1ij = { Vector3.new(_v1i3.X, _v1ii, _v1i3.Z), Vector3.new(_v1i5.X, _v1ii, _v1i5.Z), Vector3.new(_v1i5.X, _v1i6 + _v1ie, _v1i5.Z) }
local _v1ik, _v1il = _v1i3, _v1i1.CFrame - _v1i1.CFrame.Position
pcall(function() _v1i2:SetAttribute(_ei9m[867+920], true) end)
for _v1im, _v1in in ipairs(_v1ij) do
local _v1io = os.clock()
while (_v1ik - _v1in).Magnitude > 1 and os.clock() - _v1io < 30 and not _v4.UNLOADED do
local _v1ip = task.wait()
_v1ik = _v4.govNext(_v1ik, _v1in, _v1ip, 40)
pcall(function()
_v1i1.CFrame = CFrame.new(_v1ik) * _v1il
_v1i1.AssemblyLinearVelocity = Vector3.zero
_v1i1.AssemblyAngularVelocity = Vector3.zero
end)
end
end
_v4.flyLandUntil = os.clock() + 10
pcall(function() _v1i2:SetAttribute(_ei9m[1779], nil) end)
return true
end
_v4.asLeaveWater = _v1i0
local function _v1iq(_v1ir)
local _v1is = _v1er()
local _v1it = _v1is.GetService(_ei9m[109+134])
local _v1iu = _v1is.GetController(_ei9m[2435-1])
local _v1iv = _v4.getCS()
if os.clock() < (_v4.rtmFailUntil or 0) then return false end
_v1iv.UsingTimedAction = true
_v2:SetAttribute(_ei9m[7+1887], true)
if not pcall(function() _v1it:BeginReturnToMenu() end) then
_v4.rtmFailUntil = os.clock() + 60
pcall(function() _v2:SetAttribute(_ei9m[1866-5], false) end)
_v1iv.UsingTimedAction = false
return false
end
local _v1iw = 30
pcall(function() _v1iw = tonumber(_v1it:GetReturnToMenuDuration()) or 30 end)
local _v1ix = os.clock() + _v1iw + 1
local _v1iy, _v1iz = true, false
while os.clock() < _v1ix do
_v4.asStatus = _ei9m[3+447] .. math.ceil(_v1ix - os.clock()) .. "s)"
local _v1j0 = false
pcall(function() _v1j0 = _v1iv.Classifications.IsApex and _v1iv.Movement:IsMoving() end)
if _v4.UNLOADED then
_v1iy, _v1iz = false, true
break
end
if not _v1ir() or _v2:GetAttribute(_ei9m[717-20])
or (_v1iv.Actions and _v1iv.Actions.Run) or _v1hm(_v1iv) or _v1j0 then
_v1iy = false
break
end
task.wait(0.2)
end
if _v1iy then
_v1it:Despawn()
_v1iu:StartMainMenu()
end
if _v1iz then
task.delay(math.max(0, _v1ix - os.clock()), function()
pcall(function() _v1it:Despawn() end)
pcall(function() _v1iu:StartMainMenu() end)
pcall(function() _v2:SetAttribute(_ei9m[479], false) end)
pcall(function() _v1iv.UsingTimedAction = false end)
end)
return false
end
_v2:SetAttribute(_ei9m[481+14], false)
_v1iv.UsingTimedAction = false
return _v1iy
end
_v4.asSafeToLeave, _v4.asReturnToMenu = _v1ho, _v1iq
local function _v1j1(_v1j2, _v1j3)
_v1j3 = _v4.saveGender(_v1j3) or _v4.saveGender(_v4.AS_GENDER) or _ei9m[1724-17]
local _v1j4 = _v1er()
local _v1j5 = _v1j4.GetService(_ei9m[1519-15])
pcall(function()
local _v1j6 = _v1j4.GetController(_ei9m[885+1395])
if _v1j6.WelcomeGui then
_v1j6.WelcomeGui:Destroy()
_v1j6.WelcomeGui = nil
_v1j6:StartMainMenu()
task.wait(2)
end
end)
local _v1j7 = _ei9m[175-9]
pcall(function() _v1j7 = _v1et().Replica.Data.SkinInventory[_v1j2].LastSelected or _ei9m[4+540] end)
local _v1j8 = _v1j4.GetController(_ei9m[371-19])
local _v1j9 = false
_v4.asSpawnInfo = nil
pcall(function()
if _v1j8:GetDeathGraceStatus(_v1j2).HoldingSlot == true then
pcall(function() _v1j8:EndDeathGrace(_v1j2) end)
_v1j9 = _v1j8:GetDeathGraceStatus(_v1j2).HoldingSlot == true
_v4.asSpawnInfo = _ei9m[934-7] .. tostring(_v1j9)
end
end)
local _v1ja, _v1jb = os.clock() + 600, 0
while not _v1j9 and os.clock() < _v1ja and not _v4.UNLOADED do
local _v1jc, _v1jd, _v1je = pcall(function() return _v1j8:RequestSlot(_v1j2) end)
_v4.asSpawnInfo = _ei9m[2683] .. _v1j2 .. _ei9m[2964] .. tostring(_v1jc and _v1jd) .. " " .. tostring(_v1jc and _v1je or _v1jd)
if _v1jc and _v1jd then _v1j9 = true break end
if not _v1jc then break end
if _v1je == _ei9m[2942+24] then
_v4.asStatus = _ei9m[6+1740] .. _v1j2
else
_v1jb = _v1jb + 1
_v4.asStatus = _ei9m[899+149] .. _v1j2 .. " (" .. tostring(_v1je) .. ")"
if _v1jb >= 3 then break end
end
task.wait(3)
end
if not _v1j9 and os.clock() >= _v1ja then return false end
if _v1j9 then task.wait(2) end
_v4.asStatus = _ei9m[226-8] .. _v1j2
local function _v1jf()
local _v1jg = _v2.Character
return _v1jg ~= nil and _v1jg.Parent ~= nil and _v1jg:GetAttribute(_ei9m[7+360]) == _v1j2
end
local _v1jh, _v1ji, _v1jj = os.clock() + 60, 0, 0
while os.clock() < _v1jh and not _v1jf() do
if _v1ji < 3 and os.clock() >= _v1jj then
_v1ji = _v1ji + 1
_v1jj = os.clock() + 20
local _v1jk, _v1jl, _v1jm = pcall(function()
return _v1j5:InitiateSpawning({ Species = _v1j2, Gender = _v1j3 or _v4.AS_GENDER or _ei9m[2749], Skin = _v1j7, Variant = _ei9m[5+2738] })
end)
_v4.asSpawnInfo = (_v4.asSpawnInfo or "") .. _ei9m[1213] .. _v1ji .. _ei9m[48+961] .. tostring(_v1jk) .. " " .. tostring(_v1jl) .. " " .. tostring(_v1jm)
end
task.wait(0.5)
end
pcall(_v4.autoSpawnCleanupGUI)
if _v1jf() then _v4.closeMainMenu() end
return _v1jf() and true or false
end
_v4.asSpawnDino = _v1j1
function _v4.closeMainMenu()
local _v1jn
pcall(function() _v1jn = _v1er().GetController(_ei9m[320-12]) end)
if _v1jn then
pcall(function()
if _v1jn.currentMainMenuWindow and _v1jn.currentMainMenuWindow.Class then _v1jn.currentMainMenuWindow.Class:Destroy() end
_v1jn.currentMainMenuWindow = nil
end)
pcall(function() if _v1jn.MainMenuGui then _v1jn.MainMenuGui:Destroy() end _v1jn.MainMenuGui = nil end)
pcall(function() if _v1jn.BoostsGui then _v1jn.BoostsGui:Destroy() end _v1jn.BoostsGui = nil end)
end
pcall(function()
for _v1jo, _v1jp in ipairs(_v2.PlayerGui:GetChildren()) do
if _v1jp.Name == _ei9m[1750] or _v1jp.Name == _ei9m[2366+100] then _v1jp:Destroy() end
end
end)
end
function _v4.asResumeTarget(_v1jq)
if _v4.AS_AUTO_ORDER then
local _v1jr, _v1js = _v1h6(nil)
if _v1jr then return _v1jr, _v1js end
end
if _v1jq and _v1f3(_v1jq) and not _v1fy(_v1jq, _v1fv(_v1jq)) then return _v1jq end
local _v1jt, _v1ju = _v1h6(_v1jq)
if _v1jt and not _v1ju then return _v1jt end
return _v1jq
end
function _v4.asMapsWithWork(_v1jv)
local _v1jw, _v1jx = {}, {}
local _v1jy, _v1jz = nil, {}
pcall(function() _v1jy = _v4.req(_v1eq.Modules.GamemodeUtils.GetRoster) end)
pcall(function()
local _v1k0 = _ei9m[2+2353]
pcall(function() _v1k0 = _v1er().GetController(_ei9m[266+832]).ChosenVersion or _v1k0 end)
for _v1k1, _v1k2 in pairs(_v4.req(_v1eq.Shared.LobbyData).Gamemodes[_v1k0].Survival.Ecosystems) do
if not _v1k2.Maintenance then _v1jz[_v1k1] = true end
end
end)
if not _v1jy then return _v1jw, _v1jx end
local _v1k3 = {}
for _v1k4, _v1k5 in ipairs(_v4.MAP_ORDER) do if _v1jz[_v1k5] then _v1k3[#_v1k3 + 1] = _v1k5; _v1jz[_v1k5] = nil end end
local _v1k6 = {}
for _v1k7 in pairs(_v1jz) do _v1k6[#_v1k6 + 1] = _v1k7 end
table.sort(_v1k6)
for _v1k8, _v1k9 in ipairs(_v1k6) do _v1k3[#_v1k3 + 1] = _v1k9 end
local _v1ka = _v1fa()
for _v1kb, _v1kc in ipairs(_v1k3) do
if _v1kc ~= _v1jv then
local _v1kd, _v1ke = nil, false
pcall(function() _v1kd = _v1jy(_v1kc) end)
for _v1kb, _v1kg in ipairs(type(_v1kd) == _ei9m[1966] and _v1kd or {}) do
if not _v4.asDone[_v1kg] and not _v4.asSkip[_v1kg] then
if _v1f3(_v1kg) then
if not _v1fy(_v1kg, _v1fv(_v1kg)) then _v1ke = true end
elseif _v4.AS_AUTOBUY then
local _v1kh = _v1f6(_v1kg)
if _v1kh and _v1kh <= _v1ka then _v1ke = true end
end
end
if _v1ke then break end
end
if _v1ke then _v1jw[#_v1jw + 1] = _v1kc else _v1jx[#_v1jx + 1] = _v1kc end
end
end
return _v1jw, _v1jx
end
function _v4.asBuy(_v1ki)
local _v1kj, _v1kk = false, nil
pcall(function() _v1kj, _v1kk = _v1er().GetService(_ei9m[1407-18]):PurchaseDinosaurWithAmber(_v1ki) end)
if _v1kj or _v1f3(_v1ki) then
pcall(_v4.asRefreshLists)
return true
end
_v4.asSkip[_v1ki] = true
return false, _v1kk
end
local function _v1kl(_v1km, _v1kn)
_v4.asDone[_v1km] = true
pcall(function()
local _v1ko = _v2.Character
_v4.asDoneAdd(_v1km, (_v1ko and _v1ko:GetAttribute(_ei9m[1741-15])) or _v4.AS_GENDER)
_v4.asRefreshDone()
end)
local _v1kp, _v1kq = _v1h6(_v1km)
_v1ey(_v1km .. _ei9m[7+734] .. _v1kn .. _ei9m[5+1932] .. (_v1kp and (_ei9m[1344-16] .. _v1kp .. (_v1kq and (_ei9m[6+577] .. _v1fc(_v1kq) .. _ei9m[2991-20]) or "") .. ".")
or (_ei9m[856+518] .. _v1hf(_v1km) .. _ei9m[6+2761])), 10)
_v4.AS_BUSY = true
task.wait(1.5)
pcall(function() _v2.Character:SetAttribute(_ei9m[2813], nil) end)
_v4.flyLandUntil = os.clock() + 15
local _v1kr, _v1ks = nil, os.clock() + 300
while _v4.AUTO_SWITCH and not _v4.UNLOADED do
local _v1kt, _v1ku = _v1ho()
if _v1kt then break end
if _v1ku == _ei9m[3+2289] or os.clock() > _v1ks then
_v4.asDone[_v1km] = nil
_v4.asRetryAt = os.clock() + 60
_v1ey(_ei9m[1932] .. _v1ku .. _ei9m[7+2882], 6)
return
end
_v4.asStatus = _ei9m[518] .. _v1ku
if _v1ku == _ei9m[2929-11] then
_v1kr = _v1kr or os.clock()
if os.clock() - _v1kr > 5 then
_v4.asStatus = _ei9m[2846]
pcall(_v1i0)
_v1kr = nil
task.wait(2)
end
else
_v1kr = nil
end
task.wait(1)
end
if not (_v4.AUTO_SWITCH and not _v4.UNLOADED) then return end
if not _v1iq(function() return _v4.AUTO_SWITCH end) then
_v4.asDone[_v1km] = nil
_v4.asRetryAt = os.clock() + 60
_v1ey(_ei9m[1156-18], 6)
return
end
task.wait(3)
while _v1kp and _v1kq do
local _v1kv, _v1kw = false, nil
pcall(function() _v1kv, _v1kw = _v1er().GetService(_ei9m[1169]):PurchaseDinosaurWithAmber(_v1kp) end)
if _v1kv or _v1f3(_v1kp) then
_v1ey(_ei9m[92+12] .. _v1kp .. _ei9m[5+2082] .. _v1fc(_v1kq) .. _ei9m[775+6], 8)
pcall(_v4.asRefreshLists)
break
end
_v1ey(_ei9m[5+2968] .. _v1kp .. " (" .. tostring(_v1kw or _ei9m[6+1336]) .. _ei9m[2+218], 8)
_v4.asSkip[_v1kp] = true
task.wait(3)
_v1kp, _v1kq = _v1h6(_v1km)
end
if not _v1kp then
local _v1kx = _v1hf(_v1km)
local _v1ky
pcall(function() _v1ky = _v1er().Ecosystem end)
local _v1kz, _v1l0 = {}, {}
if _v4.REJOIN and _v4.REJOIN_OK and _v4.asMapsWithWork then _v1kz, _v1l0 = _v4.asMapsWithWork(_v1ky) end
if _v1kz[1] and _v4.rjNextMap then
_v1ey(_ei9m[2599-6] .. tostring(_v1ky) .. _ei9m[1934+739] .. _v1kz[1], 10)
task.wait(3)
if _v4.rjNextMap(_v1ky, _v1kz[1], _v1l0, _ei9m[416] .. tostring(_v1ky) .. _ei9m[2612-13]) then return end
end
if _v4.REJOIN and _v4.REJOIN_OK then _v1kx = _v1kx .. _ei9m[1084+462] end
_v1ey(_ei9m[2996-17], 6)
task.wait(3)
pcall(function() _v4.unloadScript() end)
pcall(_v4.leaveNote, _ei9m[7+1195], true)
pcall(function() _v2:Kick(_ei9m[2650-1] .. _v1kx .. ".") end)
return
end
if not _v1j1(_v1kp) then
if _v4.rjSpawnRejoin and _v4.rjSpawnRejoin(_ei9m[7+2254] .. _v1kp) then return end
if _v4.REJOIN and _v4.REJOIN_OK then
_v1ey(_ei9m[2398] .. _v1kp .. _ei9m[1715], 8)
return
end
_v1ey(_ei9m[1753] .. _v1kp .. _ei9m[116], 8)
if _v4.autoSwitchToggle then pcall(function() _v4.autoSwitchToggle:Set(false) end) end
else
_v1ey(_ei9m[1593+987] .. _v1kp, 6)
end
end
function _v4.asRelog(_v1l1)
if _v4.AS_BUSY or _v4.asRelogging then return false end
local _v1l2 = _v2.Character
local _v1l3 = _v1l2 and _v1l2.Parent and _v1l2:GetAttribute(_ei9m[85])
if not _v1l3 then return false end
local _v1l4 = _v4.saveGender(_v1l2:GetAttribute(_ei9m[2377-16])) or _v4.AS_GENDER
_v4.asRelogging, _v4.AS_BUSY = true, true
_v1ey(_ei9m[2435] .. _v1l3 .. " (" .. tostring(_v1l1) .. ")", 8)
local ok, err = pcall(function()
task.wait(1.5)
pcall(function() _v2.Character:SetAttribute(_ei9m[1570-4], nil) end)
_v4.flyLandUntil = os.clock() + 15
local _v1l5, _v1l6 = os.clock(), nil
while not _v4.UNLOADED and os.clock() - _v1l5 < 300 do
local _v1l7, _v1l8 = _v1ho()
if _v1l7 then break end
_v4.asStatus = _ei9m[1987] .. _v1l8
if _v1l8 == _ei9m[1234] then
_v1l6 = _v1l6 or os.clock()
if os.clock() - _v1l6 > 5 then pcall(_v1i0) _v1l6 = nil task.wait(2) end
else
_v1l6 = nil
end
task.wait(1)
end
if _v4.UNLOADED or not _v1ho() then return end
if not _v1iq(function() return not _v4.UNLOADED end) then return end
task.wait(3)
_v4.asStatus = _ei9m[933-7] .. _v1l3
if not _v1j1(_v1l3, _v1l4) and _v4.rjSpawnRejoin then
_v4.rjSpawnRejoin(_ei9m[1216-19] .. _v1l3 .. _ei9m[1073])
end
end)
_v4.asRelogging, _v4.AS_BUSY = false, false
if not ok then _v1ey(_ei9m[6+1877] .. tostring(err), 8) end
return ok
end
_v4.ftElapsed, _v4.ftStatus = 0, _ei9m[935-5]
local function _v1l9()
_v1ey(_ei9m[1655-7], 8)
for _v1la, _v1lb in ipairs({ { _ei9m[549-12], _ei9m[7+1650] }, { _ei9m[2+816], _ei9m[6+1752] },
{ _ei9m[114], _ei9m[3+2978] } }) do
if _v4[_v1lb[1]] and _v4[_v1lb[2]] then pcall(function() _v4[_v1lb[2]]:Set(false) end) end
_v4[_v1lb[1]] = false
end
task.wait(2)
pcall(function() _v2.Character:SetAttribute(_ei9m[2+995], nil) end)
_v4.flyLandUntil = os.clock() + 15
local _v1lc = function() return _v4.FARM_TIMER and not _v4.UNLOADED end
local _v1ld = os.clock() + 300
while _v1lc() and _v2.Character and os.clock() < _v1ld do
local _v1le, _v1lf = _v1ho()
if _v1le then
if _v1iq(_v1lc) then break end
else
_v4.ftStatus = _ei9m[1553+432] .. _v1lf
if _v1lf == _ei9m[335] then
_v4.ftWaterT = _v4.ftWaterT or os.clock()
if os.clock() - _v4.ftWaterT > 5 then pcall(_v1i0) _v4.ftWaterT = nil task.wait(2) end
else
_v4.ftWaterT = nil
end
end
task.wait(1)
end
if not _v1lc() then return end
pcall(_v4.leaveNote, _ei9m[2565], true)
pcall(function()
_v2:Kick(_ei9m[581-10] .. math.floor(_v4.FT_MINUTES or 0) .. _ei9m[6+1085])
end)
end
task.spawn(function()
local _v1lg = os.clock()
while not _v4.UNLOADED do
task.wait(1)
local _v1lh = os.clock()
local _v1li = math.min(_v1lh - _v1lg, 5)
_v1lg = _v1lh
if _v4.FARM_TIMER and (_v4.AFK_FARM or _v4.LEGIT_FARM) then
_v4.ftElapsed = _v4.ftElapsed + _v1li
local _v1lj = (_v4.FT_MINUTES or 120) * 60 - _v4.ftElapsed
_v4.ftStatus = _ei9m[1270+1726] .. math.max(0, math.ceil(_v1lj / 60)) .. _ei9m[3+2467]
if _v1lj <= 300 and not _v4.ftWarned then
_v4.ftWarned = true
_v1ey(_ei9m[1215+1015], 8)
end
if _v1lj <= 0 and not _v4.AS_BUSY then
local _v1lk, _v1ll = pcall(_v1l9)
if not _v1lk then _v1ey(_ei9m[1584] .. tostring(_v1ll), 8) end
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
local _v1lm, _v1ln = _v1gi()
local _v1lo = type(_v4.FARM_DINO) == _ei9m[209] and _v4.FARM_DINO ~= "" and _v4.FARM_DINO ~= _ei9m[1121]
and _v1gg() == _v4.FARM_DINO
if _v1lm and _v1lo then
_v4.asStatus = _ei9m[303] .. tostring(_v1gg())
elseif _v1lm and os.clock() < (_v4.asRetryAt or 0) then
_v4.asStatus = _ei9m[1593] .. math.ceil(_v4.asRetryAt - os.clock()) .. "s"
elseif _v1lm then
local _v1lp, _v1lq = pcall(_v1kl, _v1gg(), _v1ln)
if not _v1lp then _v1ey(_ei9m[223-16] .. tostring(_v1lq), 8) end
_v4.AS_BUSY = false
else
_v4.asStatus = _ei9m[62-20] .. tostring(_v1gg())
end
end
end
end)
end
_v4.asSetup()
_v4.RJ_FARMS = {
{ _ei9m[418-14], _ei9m[2006], _ei9m[2+2919] }, { _ei9m[7+1531], _ei9m[766], _ei9m[1176-18] },
{ _ei9m[6+615], _ei9m[393], _ei9m[2925] }, { _ei9m[2395], _ei9m[1858], _ei9m[2738] },
{ _ei9m[1392], _ei9m[2+2540], _ei9m[2245] },
}
function _v4.farmDinoPick(_v1lr, _v1ls)
local _v1lt = _v4.FARM_DINO
if type(_v1lt) ~= _ei9m[2+1421] or _v1lt == "" or _v1lt == _ei9m[200+486] then return nil end
local _v1lu, _v1lv = pcall(_v4.asAvailable)
if not (_v1lu and type(_v1lv) == _ei9m[4+819] and table.find(_v1lv, _v1lt)) then return nil, nil, _v1lt end
return _v1lt, (_v1lr == _v1lt and _v1ls) or _v4.AS_GENDER or _v1ls
end
function _v4.cfgFarms(_v1lw)
local _v1lx, _v1ly = {}, false
for _v1lz, _v1m0 in ipairs(_v4.RJ_FARMS) do
if _v1lw[_v1m0[1]] ~= nil then _v1lx[_v1m0[1]] = _v1lw[_v1m0[1]] == true; _v1ly = true end
end
if not _v1ly then return end
if not _v4.cfgApplied and _v4.REJOIN and _v4.REJOIN_OK and _v4.rejoinRead then
local _v1m1 = _v4.rejoinRead()
local _v1m2 = tonumber(_v1m1.t) ~= nil and os.time() - tonumber(_v1m1.t) < 1800
for _v1m3, _v1m4 in pairs(type(_v1m1.farms) == _ei9m[4+518] and _v1m1.farms or {}) do
if _v1m4 == true and _v1m2 then return end
end
end
for _v1m5, _v1m6 in ipairs(_v4.RJ_FARMS) do
if _v1lx[_v1m6[1]] == false and _v4[_v1m6[1]] and _v4[_v1m6[2]] then pcall(function() _v4[_v1m6[2]]:Set(false) end) end
end
_v4.cfgFarmsOwed = _v1lx
end
function _v4.rejoinSetup()
local _v1m7 = game:GetService(_ei9m[714+1179])
local function _v1m8()
local _v1m9
pcall(function() _v1m9 = _v4.req(_v1m7.Packages.Knit) end)
return _v1m9
end
local function _v1ma(_v1mb, _v1mc)
pcall(function() if _v4.Hub then _v4.Hub:Notify(_ei9m[2123] .. _v1mb, _v1mc or 6) end end)
end
local function _v1md()
local _v1me = _v2.Character
return _v1me ~= nil and _v1me.Parent ~= nil
end
function _v4.rejoinSave()
if _v4.UNLOADED then return end
if not _v4.REJOIN_OK or _v4.rjResuming then return end
local _v1mf = _v4.rejoinRead()
if _v1mf.map ~= nil and _v1mf.map ~= _v4.REJOIN_MAP then _v1mf.doneMaps, _v1mf.nextMap = nil, nil end
_v1mf.on, _v1mf.map = _v4.REJOIN and true or false, _v4.REJOIN_MAP
_v1mf.lowPopLeave, _v1mf.lowPopMin = _v4.LOW_POP_LEAVE and true or false, _v4.LOW_POP_MIN
_v1mf.farmDino = (type(_v4.FARM_DINO) == _ei9m[2541-12] and _v4.FARM_DINO ~= "") and _v4.FARM_DINO or nil
pcall(function() _v1mf.lastMap = _v1m8().Ecosystem end)
if _v1mf.nextMap ~= nil and _v1mf.nextMap == _v1mf.lastMap then _v1mf.nextMap = nil end
_v1mf.lastJob = game.JobId
_v1mf.farms = {}
for _v1mg, _v1mh in ipairs(_v4.RJ_FARMS) do _v1mf.farms[_v1mh[1]] = _v4[_v1mh[1]] and true or false end
if _v4.rjKeep then _v1mf.farms = _v4.rjKeep.farms end
if _v4.rjFinished then _v1mf.farms = {} end
_v1mf.ftElapsed = _v4.ftElapsed
_v1mf.t = os.time()
pcall(function() _v1mf.status = getgenv().EazyCheats_Status end)
pcall(function()
local _v1mi = _v2.Character
_v1mf.dino = (_v1mi and _v1mi.Parent and _v1mi:GetAttribute(_ei9m[2279-12])) or nil
end)
_v4.rejoinWrite(_v1mf)
end
function _v4.rejoinLeave(_v1mj)
if _v4.rjLeaving then return true end
if not (_v4.REJOIN_OK and _v4.REJOIN) then return false end
_v4.rjLeaving = true
_v4.rejoinSave()
_v1ma(_ei9m[966+52] .. _v1mj .. _ei9m[1409], 6)
local _v1mk = pcall(function() game:GetService(_ei9m[2783-3]):Teleport(_v4.LOBBY_PLACE, _v2) end)
if not _v1mk then _v4.rjLeaving = false return false end
task.delay(30, function()
if _v4.UNLOADED then return end
pcall(_v4.leaveNote, _v1mj, false)
pcall(function() _v2:Kick(_ei9m[1343+95] .. _v1mj) end)
end)
return true
end
function _v4.rjSpawnRejoin(_v1ml)
if not (_v4.REJOIN_OK and _v4.REJOIN) then return false end
local _v1mm = _v4.rejoinRead()
if tonumber(_v1mm.spawnRejoinT) and os.time() - tonumber(_v1mm.spawnRejoinT) < 1200 then return false end
_v1mm.spawnRejoinT = os.time()
_v4.rejoinWrite(_v1mm)
_v4.rjResuming = false
return _v4.rejoinLeave(_v1ml) and true or false
end
function _v4.rjNextMap(_v1mn, _v1mo, _v1mp, _v1mq)
if not (_v4.REJOIN_OK and _v4.REJOIN) then return false end
local _v1mr = _v4.rejoinRead()
local _v1ms = {}
if type(_v1mn) == _ei9m[5+2378] then _v1ms[_v1mn] = os.time() end
for _v1mt, _v1mu in ipairs(type(_v1mp) == _ei9m[1540] and _v1mp or {}) do _v1ms[_v1mu] = os.time() end
_v1mr.doneMaps, _v1mr.nextMap = _v1ms, _v1mo
_v4.rejoinWrite(_v1mr)
_v4.rjResuming = false
return _v4.rejoinLeave(_v1mq) and true or false
end
local function _v1mv(_v1mw)
local _v1mx
pcall(function() _v1mx = _v1m8().GetController(_ei9m[3+1463]).Replica.Data[_ei9m[410] .. _v1mw] end)
if type(_v1mx) == _ei9m[2088-16] and type(_v1mx[1]) == _ei9m[2274+257] then return _v1mx[1], _v1mx[2] end
return nil
end
local function _v1my(_v1mz, _v1n0)
local _v1n1 = {}
for _v1n2, _v1n3 in ipairs(_v4.RJ_FARMS) do
if _v1mz[_v1n3[1]] and _v4[_v1n3[2]] and not _v4[_v1n3[1]] and not _v4.UNLOADED then
pcall(function() _v4[_v1n3[2]]:Set(true) end)
_v1n1[#_v1n1 + 1] = _v1n3[3]
end
end
if _v1mz.FARM_TIMER and tonumber(_v1n0.ftElapsed) then _v4.ftElapsed = tonumber(_v1n0.ftElapsed) end
_v1ma(#_v1n1 > 0 and (_ei9m[6+914] .. table.concat(_v1n1, ", ")) or _ei9m[945], 8)
end
local function _v1n4(_v1n5)
local _v1n6 = type(_v1n5.farms) == _ei9m[2189] and _v1n5.farms or {}
local _v1n7 = (getgenv and getgenv()) or {}
local _v1n8 = tonumber(_v1n7.EazyCheats_RjSpawnAt)
if not _v1md() and _v1n8 and os.clock() - _v1n8 < 75 then
local _v1n9 = _v1n8 + 75
while not _v1md() and os.clock() < _v1n9 and not _v4.UNLOADED do task.wait(0.5) end
end
if not _v1md() then
local _v1na
pcall(function() _v1na = _v1m8().Ecosystem end)
local _v1nb, _v1nc = _v1mv(tostring(_v1na))
local _v1nd, _v1ne, _v1nf = _v4.farmDinoPick(_v1nb, _v1nc)
if _v1nf and _v4.rjFarmDinoSaid ~= _v1nf then
_v4.rjFarmDinoSaid = _v1nf
_v1ma(_ei9m[577-14] .. _v1nf .. _ei9m[1834]
.. (_v1n6.AUTO_SWITCH and _ei9m[368+125] or _ei9m[6+1808]) .. _ei9m[1997-19], 10)
end
if _v1nd then
_v1nb, _v1nc = _v1nd, _v1ne
elseif _v1n6.AUTO_SWITCH and _v4.asResumeTarget then
for _v1ng = 1, 4 do
local _v1nh, _v1ni = _v4.asResumeTarget(_v1nb)
if not _v1nh then break end
if _v1ni then
_v1ma(_ei9m[1294-8] .. _v1nh .. " (" .. tostring(_v1ni) .. _ei9m[2590], 6)
if not _v4.asBuy(_v1nh) then
_v1ma(_ei9m[2+39] .. _v1nh .. _ei9m[1198+1213], 6)
task.wait(3)
continue
end
task.wait(2)
end
if _v1nh ~= _v1nb then _v1nb, _v1nc = _v1nh, _v4.AS_GENDER end
break
end
end
if not _v1nb then
_v4.rjKeep = { farms = _v1n6, st = _v1n5 }
_v1ma(_ei9m[2869] .. tostring(_v1na) .. _ei9m[777+306], 10)
return
end
if not _v1md() and _v4.atDeployMenu and _v4.atDeployMenu() then
for _v1nj = 1, 50 do
if _v4.UNLOADED or not _v4.REJOIN then return end
if _v1md() then _v4.rjKeep = { farms = _v1n6, st = _v1n5 } return end
task.wait(0.5)
end
end
_v1ma(_ei9m[1259+1103] .. _v1nb .. " (" .. tostring(_v1nc or _ei9m[5+2910]) .. ")", 6)
_v4.rjSpawning = true
local _v1nk = false
for _v1nl = 1, 3 do
if _v4.UNLOADED or not _v4.REJOIN then break end
if _v1md() then _v1nk = true break end
_v1n7.EazyCheats_RjSpawnAt = os.clock()
local _v1nm, _v1nn = pcall(_v4.asSpawnDino, _v1nb, _v1nc)
if (_v1nm and _v1nn) or _v1md() then _v1nk = true break end
task.wait(10)
end
_v4.rjSpawning = false
if _v4.UNLOADED then return end
if not _v1nk then
_v4.rjKeep = { farms = _v1n6, st = _v1n5 }
if _v4.rjSpawnRejoin and _v4.rjSpawnRejoin(_ei9m[1230-12] .. _v1nb) then return end
_v1ma(_ei9m[2+707] .. _v1nb .. _ei9m[2221], 10)
return
end
task.wait(3)
end
_v1my(_v1n6, _v1n5)
end
local _v1no = { _ei9m[745], _ei9m[6+545], _ei9m[872], _ei9m[1920-6], _ei9m[52+818],
_ei9m[2+760], _ei9m[712], _ei9m[2398-11], _ei9m[1575-4], _ei9m[1919], _ei9m[1448+44], _ei9m[532+904], _ei9m[640+988],
_ei9m[1971], _ei9m[793], _ei9m[1254-19], _ei9m[2535-15] }
local function _v1np()
local _v1nq = game:GetService(_ei9m[1510-4])
local _v1nr
pcall(function() _v1nr = readfile(_ei9m[1170]):gsub(_ei9m[6+143], "") end)
if not _v1nr or _v1nr == "" then return end
local _v1ns = os.clock() + 60
while not _v4.cfgApplied and os.clock() < _v1ns and not _v4.UNLOADED do task.wait(1) end
pcall(function()
local _v1nt = _v1nq:JSONDecode(readfile(_ei9m[7+2811] .. _v1nr .. _ei9m[48+213]))
for _v1nu, _v1nv in ipairs(_v1no) do
if _v1nt[_v1nv] ~= nil then _v4[_v1nv] = _v1nt[_v1nv] end
end
end)
end
task.spawn(function()
task.wait(8)
local _v1nw = _v4.rejoinRead()
local _v1nx = tonumber(_v1nw.pending) and os.time() - _v1nw.pending < 900
local _v1ny = false
for _v1nz, _v1o0 in pairs(type(_v1nw.farms) == _ei9m[1915-4] and _v1nw.farms or {}) do
if _v1o0 == true then _v1ny = true end
end
local _v1o1 = tonumber(_v1nw.t) ~= nil and os.time() - tonumber(_v1nw.t) < 1800
local _v1o2 = _v1ny and _v1o1 and _v1nw.lastJob ~= nil
local _v1o3 = _v1ny and _v1o1 and _v4.rjReloaded and _v1nw.lastJob == game.JobId
if _v4.REJOIN_OK and _v4.REJOIN and not _v4.UNLOADED and (_v1nx or _v1o2 or _v1o3) then
_v1np()
_v4.rjResuming = true
local _v1o4, _v1o5 = pcall(_v1n4, _v1nw)
_v4.rjResuming, _v4.rjSpawning = false, false
if not _v4.UNLOADED then
local _v1o6 = _v4.rejoinRead()
_v1o6.pending = nil
_v4.rejoinWrite(_v1o6)
end
if not _v1o4 then _v1ma(_ei9m[808+138] .. tostring(_v1o5), 8) end
end
while not _v4.UNLOADED do
if _v4.rjKeep and (not _v4.REJOIN or not _v4.REJOIN_OK) then _v4.rjKeep = nil end
if _v4.rjKeep and _v1md() then
local _v1o7 = _v4.rjKeep
task.wait(3)
_v4.rjKeep = nil
if _v1md() then pcall(_v1my, _v1o7.farms, _v1o7.st) end
end
if _v4.REJOIN_OK and _v4.REJOIN and not _v1md() and not _v4.AS_BUSY and not _v4.rjSpawning
and not _v4.deathBusy and not _v4.rjResuming
and (_v4.rjKeep or _v4.cfgFarmsOwed or _v4.LEGIT_FARM or _v4.AFK_FARM or _v4.AUTO_SWITCH) then
local _v1o8
pcall(function() _v1o8 = _v1m8().GetController(_ei9m[2092]).RevivalGui end)
if _v1o8 then
_v4.rjNoDinoSince = nil
else
_v4.rjNoDinoSince = _v4.rjNoDinoSince or os.clock()
end
if _v4.rjNoDinoSince and os.clock() - _v4.rjNoDinoSince > 120 and os.clock() - (_v4.rjRetryAt or 0) > 180 then
_v4.rjRetryAt, _v4.rjNoDinoSince = os.clock(), nil
local _v1o9 = _v4.rejoinRead()
local _v1oa = _v4.rjKeep and _v4.rjKeep.farms
if not _v1oa then
_v1oa = {}
for _v1ob, _v1oc in ipairs(_v4.RJ_FARMS) do _v1oa[_v1oc[1]] = _v4[_v1oc[1]] and true or false end
end
_v1o9.farms = _v1oa
_v1ma(_ei9m[714+1089], 8)
_v4.rjResuming = true
local _v1od, _v1oe = pcall(_v1n4, _v1o9)
_v4.rjResuming, _v4.rjSpawning = false, false
if not _v1od then _v1ma(_ei9m[80-14] .. tostring(_v1oe), 8) end
end
else
_v4.rjNoDinoSince = nil
end
if _v1md() and (_v4.LEGIT_FARM or _v4.AFK_FARM or _v4.AUTO_SWITCH) and not _v4.AS_BUSY and not _v4.rjSpawning
and _v2.PlayerGui:FindFirstChild(_ei9m[402+999]) then
_v4.rjMenuSince = _v4.rjMenuSince or os.clock()
if os.clock() - _v4.rjMenuSince > 10 then
_v4.rjMenuSince = nil
_v4.closeMainMenu()
end
else
_v4.rjMenuSince = nil
end
do
local _v1of, _v1og = _v2.Character, _v2.ReplicationFocus
if _v1md() and (_v4.LEGIT_FARM or _v4.AFK_FARM or _v4.AUTO_SWITCH) and not _v4.AS_BUSY
and not _v4.rjSpawning and not _v4.rjResuming and _v4.asRelog and _v1of
and (_v2:GetAttribute(_ei9m[2493-17]) == true or (_v1og ~= nil and not _v1og:IsDescendantOf(_v1of))) then
_v4.rjFocusSince = _v4.rjFocusSince or os.clock()
if os.clock() - _v4.rjFocusSince > 20 and os.clock() - (_v4.rjRelogAt or -1e9) > 600 then
_v4.rjRelogAt, _v4.rjFocusSince = os.clock(), nil
task.spawn(_v4.asRelog, _ei9m[63+1130])
end
else
_v4.rjFocusSince = nil
end
end
if _v4.LOW_POP_LEAVE and _v4.REJOIN and not _v4.rjLeaving and _v1md()
and (_v4.LEGIT_FARM or _v4.AFK_FARM or _v4.AUTO_SWITCH) then
if #_v0:GetPlayers() < (tonumber(_v4.LOW_POP_MIN) or 80) then
_v4.lowPopSince = _v4.lowPopSince or os.clock()
if os.clock() - _v4.lowPopSince > 30 then
_v4.lowPopSince = nil
_v4.rejoinLeave(_ei9m[513] .. tostring(_v4.LOW_POP_MIN or 80))
end
else
_v4.lowPopSince = nil
end
else
_v4.lowPopSince = nil
end
if _v4.cfgFarmsOwed and _v1md() and not _v4.rjResuming and not _v4.rjSpawning and not _v4.AS_BUSY then
local _v1oh = _v4.cfgFarmsOwed
_v4.cfgFarmsOwed = nil
task.wait(3)
for _v1oi, _v1oj in ipairs(_v4.RJ_FARMS) do
if _v1oh[_v1oj[1]] and _v1md() and _v4[_v1oj[2]] and not _v4[_v1oj[1]] and not _v4.UNLOADED then
pcall(function() _v4[_v1oj[2]]:Set(true) end)
end
end
end
if _v4.REJOIN then _v4.rejoinSave() end
pcall(function()
local _v1ok = (_v4.LEGIT_FARM and (_ei9m[1103-13] .. tostring(_v4.lfStatus)))
or (_v4.AFK_FARM and _ei9m[2270]) or _ei9m[1195-9]
local _v1ol = _v4.AUTO_SWITCH and (_ei9m[2099] .. (_v4.AS_AUTO_ORDER and _ei9m[107-19] or "")
.. ": " .. tostring(_v4.asStatus)) or _ei9m[378+78]
getgenv().EazyCheats_Status = _v1ok .. _ei9m[1940-1] .. _v1ol
end)
task.wait(5)
end
end)
end
_v4.rejoinSetup()
function _v4.deathSetup()
local _v1om = game:GetService(_ei9m[7+2478])
local function _v1on()
local _v1oo
pcall(function() _v1oo = _v4.req(_v1om.Packages.Knit) end)
return _v1oo
end
local function _v1op(_v1oq, _v1or)
pcall(function() if _v4.Hub then _v4.Hub:Notify(_ei9m[841+84] .. _v1oq, _v1or or 6) end end)
end
local function _v1os()
return _v4.AFK_FARM or _v4.LEGIT_FARM or _v4.FOSSIL_FARM or _v4.AUTO_SWITCH
end
local function _v1ot(_v1ou)
pcall(function() _v1:UnbindFromRenderStep(_ei9m[2169-1]) end)
if not pcall(function() _v1ou:Destroy() end) then
pcall(function() if _v1ou.gui then _v1ou.gui.Enabled = false end end)
end
pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
end
local function _v1ov(_v1ow)
local _v1ox, _v1oy = _v1ow.dinosaur, _v1ow.gender
if type(_v1ox) ~= _ei9m[2260-6] then return end
_v1op(_ei9m[3+348] .. _v1ox, 6)
task.wait(4)
if _v1ow.finished or not _v1os() or _v4.UNLOADED then return end
_v1ow.finished = true
local _v1oz = _v1on()
pcall(function() _v1oz.GetService(_ei9m[3+3008]):RevivalScreenClosed() end)
pcall(function() _v1oz.GetController(_ei9m[3+116]):EndDeathGrace(_v1ox) end)
_v4.rjSpawning = true
local _v1p0, _v1p1 = pcall(_v4.asSpawnDino, _v1ox, _v1oy)
_v4.rjSpawning = false
if _v1p0 and _v1p1 then
_v1ot(_v1ow)
_v1op(_ei9m[6+482] .. _v1ox .. _ei9m[7+638], 6)
else
_v1ow.finished = false
_v1op(_ei9m[65+1474] .. _v1ox .. _ei9m[7+1850], 10)
end
end
task.spawn(function()
while not _v4.UNLOADED do
task.wait(1)
local _v1p2
pcall(function() _v1p2 = _v1on().GetController(_ei9m[608]).RevivalGui end)
if _v1p2 and not _v1p2.fromMenu and not _v1p2.finished and _v1os() and _v4.asSpawnDino and not _v4.deathBusy then
_v4.deathBusy = true
local _v1p3, _v1p4 = pcall(_v1ov, _v1p2)
if not _v1p3 then _v1op(_ei9m[2277-20] .. tostring(_v1p4), 8) end
_v4.deathBusy = false
end
end
end)
end
_v4.deathSetup()
pcall(function() _v4.VirtualUser = game:GetService(_ei9m[6+953]) end)
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
local _v1p5 = _v2.Character
local _v1p6 = _v1p5 and _v1p5:GetAttribute(_ei9m[4+548])
if not _v1p6 then return nil end
if _v4.growthShared and _v4.growthShared.sp == _v1p6 then return _v4.growthShared.v end
local _v1p7
pcall(function() _v1p7 = _v4.req(_v4.WATER_RS.DinosaurData[_v1p6]).Shared.Growth end)
_v4.growthShared = { sp = _v1p6, v = _v1p7 }
return _v1p7
end
function _v4.dinoNutritionCats()
local _v1p8 = _v2.Character
local _v1p9 = _v1p8 and _v1p8:GetAttribute(_ei9m[897])
if not _v1p9 then return nil end
if _v4.nutCats and _v4.nutCats.sp == _v1p9 then return _v4.nutCats.v end
local _v1pa
pcall(function()
local _v1pb = {}
for _v1pc, _v1pd in ipairs(_v4.req(_v4.WATER_RS.DinosaurData[_v1p9]).Shared.Nutrition) do
if type(_v1pd) == _ei9m[2973-14] and _v1pd.Category then _v1pb[#_v1pb + 1] = tostring(_v1pd.Category) end
end
_v1pa = _v1pb
end)
_v4.nutCats = { sp = _v1p9, v = _v1pa }
return _v1pa
end
function _v4.dinoStageWeights()
local _v1pe = _v2.Character
local _v1pf = _v1pe and _v1pe:GetAttribute(_ei9m[7+2467])
if not _v1pf then return nil end
if _v4.stageWeights and _v4.stageWeights.sp == _v1pf then return _v4.stageWeights.v end
local _v1pg
pcall(function()
local _v1ph = _v4.req(_v4.WATER_RS.DinosaurData[_v1pf])
local _v1pi = {}
for _v1pj, _v1pk in pairs(_v1ph.GrowthStages) do
local _v1pl = _v1pk.CoreStats and _v1pk.CoreStats.Weight
if type(_v1pl) == _ei9m[3+735] then _v1pi[tostring(_v1pj)] = _v1pl end
end
_v1pg = _v1pi
end)
_v4.stageWeights = { sp = _v1pf, v = _v1pg }
return _v1pg
end
function _v4.liteGrowthOf(_v1pm, _v1pn, _v1po)
if type(_v1po) ~= _ei9m[58+762] or _v1pm == nil then return nil end
local _v1pp = _v1po[tostring(_v1pm)]
if type(_v1pp) ~= _ei9m[501+784] then return nil end
local _v1pq, _v1pr
for _v1ps, _v1pt in pairs(_v1po) do
if type(_v1pt) == _ei9m[2858-11] and _v1pt > _v1pp and (not _v1pr or _v1pt < _v1pr) then _v1pq, _v1pr = _v1ps, _v1pt end
end
local _v1pu = { Stage = tostring(_v1pm) }
if not _v1pq then _v1pu.final = true return _v1pu end
_v1pu.NextStage, _v1pu.span = _v1pq, _v1pr - _v1pp
if type(_v1pn) == _ei9m[5+1507] then _v1pu.Delta = math.clamp((_v1pn - _v1pp) / _v1pu.span, 0, 1) end
return _v1pu
end
function _v4.fmtLeft(_v1pv)
_v1pv = math.floor(_v1pv + 0.5)
if _v1pv <= 0 then return _ei9m[230+102] end
if _v1pv < 60 then return "~" .. _v1pv .. _ei9m[1811+203] end
if _v1pv < 3600 then return "~" .. math.floor(_v1pv / 60) .. _ei9m[109+935] end
return string.format(_ei9m[857-17], math.floor(_v1pv / 3600), math.floor(_v1pv % 3600 / 60))
end
function _v4.litePaceEta(_v1pw, _v1px)
if type(_v1pw) ~= _ei9m[2364-8] then return "" end
if _v1pw.final then return _ei9m[2442-1] end
local _v1py, _v1pz = 0, 0
for _v1q0, _v1q1 in ipairs(_v1px or {}) do _v1py = _v1py + _v1q1[1]; _v1pz = _v1pz + _v1q1[2] end
if #(_v1px or {}) < 2 or _v1pz < 60 or _v1py <= 0 or not _v1pw.Delta or not _v1pw.span then return _ei9m[6+520] end
return "(" .. _v4.fmtLeft((1 - _v1pw.Delta) * _v1pw.span / (_v1py / _v1pz)) .. _ei9m[2676-4]
end
function _v4.stageSpan(_v1q2)
if type(_v1q2) ~= _ei9m[4+2141] then return nil end
local _v1q3 = _v4.dinoStageWeights()
local _v1q4, _v1q5 = _v1q3 and _v1q2.Stage and _v1q3[tostring(_v1q2.Stage)], _v1q3 and _v1q2.NextStage and _v1q3[tostring(_v1q2.NextStage)]
if not (_v1q4 and _v1q5) or _v1q5 <= _v1q4 then return nil end
return _v1q5 - _v1q4
end
task.spawn(function()
local _v1q6 = not _v4.CAP.charstate
local _v1q7 = (not _v1q6) and _v4.requireCS() or nil
local _v1q8 = _v1q7 ~= nil
if (_v1q8 and _v1q7 and _v4.ReplicaSetRemote) or _v1q6 then
local _v1q9, _v1qa, _v1qb = os.clock(), 30, {}
local _v1qc, _v1qd, _v1qe = {}, nil, nil
local _v1qf, _v1qg = {}, 0
local _v1qh, _v1qi = {}, nil
local _v1qj = 0.75
local _v1qk = 0
local _v1ql = 8
local _v1qm, _v1qn = nil, os.clock()
local _v1qo = 3
local _v1qp
pcall(function() _v1qp = _v4.req(_v4.WATER_RS.Shared.WellbeingData) end)
local function _v1qq()
local _v1qr = _v4.dinoGrowthShared and _v4.dinoGrowthShared()
local _v1qs = _v1qr and _v1qr.StateMultipliers
if type(_v1qs) ~= _ei9m[2+2047] then return nil end
local _v1qt
for _v1qu, _v1qv in pairs(_v1qs) do
if type(_v1qv) == _ei9m[5+393] and (not _v1qt or _v1qv > _v1qt) then _v1qt = _v1qv end
end
return _v1qt
end
local function _v1qw()
local _v1qx = _v1qp and _v1qp.NutritionSettings and _v1qp.NutritionSettings.MassGainMultiplier
if type(_v1qx) ~= _ei9m[243+594] then return nil end
local _v1qy
for _v1qz, _v1r0 in ipairs(_v1qx) do
if type(_v1r0) == _ei9m[4+1726] and type(_v1r0.Multiplier) == _ei9m[1891] and (not _v1qy or _v1r0.Multiplier > _v1qy) then
_v1qy = _v1r0.Multiplier
end
end
return _v1qy
end
local function _v1r1(_v1r2)
local _v1r3 = _v1qp and _v1qp.NutritionSettings and _v1qp.NutritionSettings.MassGainMultiplier
if type(_v1r3) ~= _ei9m[727+1722] or type(_v1r2) ~= _ei9m[336-9] then return nil end
local _v1r4, _v1r5
for _v1r6, _v1r7 in ipairs(_v1r3) do
if type(_v1r7) == _ei9m[2444+500] and type(_v1r7.Value) == _ei9m[773] and type(_v1r7.Multiplier) == _ei9m[722-9]
and _v1r7.Value <= _v1r2 + 1e-6 and (not _v1r5 or _v1r7.Value > _v1r5) then _v1r4, _v1r5 = _v1r7.Multiplier, _v1r7.Value end
end
return _v1r4
end
local function _v1r8()
local _v1r9, _v1ra = 0, 0
for _v1rb, _v1rc in ipairs(_v4.dinoNutritionCats() or {}) do
local _v1rd; pcall(function() _v1rd = _v1q7.Wellbeing.SavableStats[_v1rc] end)
if type(_v1rd) == _ei9m[2168-17] then _v1r9 = _v1r9 + _v1rd; _v1ra = _v1ra + 1 end
end
return _v1ra > 0 and _v1r9 / _v1ra or nil
end
local function _v1re()
local _v1rf, _v1rg = nil, false
for _v1rh, _v1ri in ipairs(_v1qf) do
if not _v1rf or _v1ri[2] > _v1rf then _v1rf = _v1ri[2] end
_v1rg = _v1rg or _v1ri[3]
end
local _v1rj, _v1rk, _v1rl = _v1r1(_v1r8()), _v1qw(), _v1qq()
if not (_v1rf and _v1rj and _v1rj > 0 and _v1rk and _v1rl) then return nil end
if not _v1rg then
local _v1rm = _v4.dinoGrowthShared and _v4.dinoGrowthShared()
local _v1rn = _v1rm and _v1rm.StateMultipliers and _v1rm.StateMultipliers.Rest or 1
_v1rf = _v1rf * _v1rl / _v1rn
end
return _v1rf * _v1rk / _v1rj
end
local function _v1ro(_v1rp)
local _v1rq = _v4.dinoGrowthShared and _v4.dinoGrowthShared()
local _v1rr = _v1rq and _v1rq.MassGainStages and _v1rp and _v1rq.MassGainStages[tostring(_v1rp)]
local _v1rs = _v1rr and _v1rr.MassGain
return (type(_v1rs) == _ei9m[5+7] and _v1rs > 0) and _v1rs or nil
end
local function _v1rt()
local _v1ru
pcall(function() _v1ru = _v1q7.Replica.Data.Multipliers.MassGain end)
return (type(_v1ru) == _ei9m[1038] and _v1ru > 0) and _v1ru or nil
end
local function _v1rv(_v1rw)
if #_v1rw == 0 then return _v1qa end
local _v1rx = table.clone(_v1rw); table.sort(_v1rx); return _v1rx[math.ceil(#_v1rx / 2)]
end
local _v1ry = {}
if _v1q6 then
local _v1rz, _v1s0, _v1s1 = nil, nil, nil
local function _v1s2(_v1s3)
if _v1rz then pcall(function() _v1rz:Disconnect() end) end
_v1rz, _v1s0, _v1s1 = nil, nil, nil
if not _v1s3 then return end
_v1rz = _v1s3:GetAttributeChangedSignal(_ei9m[369-3]):Connect(function()
if _v4.UNLOADED then return end
local _v1s4, _v1s5 = _v1s3:GetAttribute(_ei9m[363+388]), os.clock()
if type(_v1s4) ~= _ei9m[156-16] then return end
if _v1s0 and _v1s1 and _v1s4 > _v1s0 then
local _v1s6 = _v1s5 - _v1s1
if _v1s6 > 5 and _v1s6 < 300 then
_v1qb[#_v1qb + 1] = _v1s6
if #_v1qb > 6 then table.remove(_v1qb, 1) end
local _v1s7 = table.clone(_v1qb); table.sort(_v1s7)
_v1qa = _v1s7[math.ceil(#_v1s7 / 2)]
_v1ry[#_v1ry + 1] = { _v1s4 - _v1s0, _v1s6 }
if #_v1ry > 10 then table.remove(_v1ry, 1) end
end
_v1q9 = _v1s5
end
_v1s0, _v1s1 = _v1s4, _v1s5
end)
table.insert(_v2l, _v1rz)
end
_v1s2(_v2.Character)
table.insert(_v2l, _v2.CharacterAdded:Connect(_v1s2))
end
if not _v1q6 then
table.insert(_v2l, _v4.ReplicaSetRemote.OnClientEvent:Connect(function(_v1s8, _v1s9)
if _v4.UNLOADED or typeof(_v1s9) ~= _ei9m[621+746] then return end
if _v1s9[1] == _ei9m[4+1769] and _v1s9[2] == _ei9m[4-3] then
local _v1sa = _v1q7.Replica
if _v1sa and _v1s8 == _v1sa.Id then
local _v1sb = os.clock()
pcall(function()
local _v1sc = _v1sa.Data and _v1sa.Data.Growth
if type(_v1sc) == _ei9m[1468+203] and type(_v1sc.Mass) == _ei9m[577-18] then
local _v1sd = _v2.Character and _v2.Character:GetAttribute(_ei9m[278-8])
if _v1sd ~= _v1qd then _v1qc, _v1qd, _v1qe, _v1qk = {}, _v1sd, nil, 0 end
if _v1sc.Stage ~= _v1qi then _v1qh, _v1qi, _v1qc, _v1qk = {}, _v1sc.Stage, {}, 0 end
_v1qk = _v1qk + 1
local _v1se = _v1qe and (_v1sc.Mass - _v1qe) or nil
local _v1sf, _v1sg = _v1ro(_v1sc.Stage), _v1rt()
if _v1qk > _v1ql and _v1se and _v1se > 0 and _v1sf and _v1sg and os.clock() - _v1qn >= 3 then
_v1qc[#_v1qc + 1] = _v1se / (_v1sf * _v1sg)
if #_v1qc > 5 then table.remove(_v1qc, 1) end
end
_v1qe = _v1sc.Mass
local _v1sh = _v1re()
if #_v1qc >= _v1qo and _v1sh and type(_v1sc.Delta) == _ei9m[6+2808] then
_v1qh[#_v1qh + 1] = { _v1sc.Delta, _v1rv(_v1qc) * _v1sh }
if #_v1qh > 240 then table.remove(_v1qh, 1) end
end
end
end)
local _v1si = _v1sb - _v1q9
if _v1si > 5 and _v1si < 300 then
_v1qb[#_v1qb + 1] = _v1si
if #_v1qb > 6 then table.remove(_v1qb, 1) end
_v1qa = _v1rv(_v1qb)
end
_v1q9 = _v1sb
end
end
end))
end
table.insert(_v2l, _v2.CharacterAdded:Connect(function()
_v1qc, _v1qd, _v1qe, _v1qf, _v1qh, _v1qi, _v1qk = {}, nil, nil, {}, {}, nil, 0
end))
_v4.addStep(8, function()
local _v1sj = os.clock()
local _v1sk = _v1rt()
if _v1sk and (not _v1qm or math.abs(_v1sk - _v1qm) > 0.03 * _v1qm) then _v1qn = _v1sj end
_v1qm = _v1sk
if not _v1sk or _v1sj - _v1qg < 1 then return end
_v1qg = _v1sj
local _v1sl = false
pcall(function() _v1sl = _v4.getCS().Movement.isMoving == true end)
_v1qf[#_v1qf + 1] = { _v1sj, _v1sk, _v1sl }
while _v1qf[1] and _v1sj - _v1qf[1][1] > 120 do table.remove(_v1qf, 1) end
end)
local function _v1sm() return _v1q7 and _v1q7.Replica and _v1q7.Replica.Data end
local function _v1sn(_v1so)
local _v1sp; pcall(function() _v1sp = _v1q7.Wellbeing.SavableStats[_v1so] end)
return type(_v1sp) == _ei9m[703] and math.floor(_v1sp) or nil
end
local function _v1sq(_v1sr)
_v1sr = math.floor(_v1sr + 0.5)
if _v1sr < 60 then return "~" .. math.max(_v1sr, 1) .. "s" end
if _v1sr < 3600 then return "~" .. math.floor(_v1sr / 60) .. "m" end
if _v1sr < 86400 then return string.format(_ei9m[1534-1], math.floor(_v1sr / 3600), math.floor(_v1sr % 3600 / 60)) end
if _v1sr < 60 * 86400 then return string.format(_ei9m[229+1197], math.floor(_v1sr / 86400), math.floor(_v1sr % 86400 / 3600)) end
return "~" .. math.floor(_v1sr / (30 * 86400)) .. "mo"
end
local function _v1ss(_v1st, _v1su)
if type(_v1st) ~= _ei9m[2639] then return "" end
if _v1st.Paused then return _ei9m[1611] end
local _v1sv, _v1sw = _v1ro(_v1st.Stage), _v1re()
if #_v1qc < _v1qo or not (_v1sv and _v1sw) then return _ei9m[1034] end
local _v1sx = _v1rv(_v1qc) * _v1sv * _v1sw
local _v1sy = _v1qa > 0 and _v1qa or 30
local _v1sz = math.clamp(tonumber(_v1su) or 0, 0, 0.9999)
if _v1st.NextStage ~= nil and _v1st.NextStage ~= _ei9m[6+525] then
local _v1t0 = _v4.stageSpan(_v1st)
if not (_v1t0 and _v1sx > 0) then return _ei9m[6+699] end
local _v1t1, _v1t2 = _v1qj, #_v1qh
if _v1t2 >= 10 and _v1qh[_v1t2][1] - _v1qh[1][1] >= 0.05 then
local _v1t3, _v1t4, _v1t5, _v1t6 = 0, 0, 0, 0
for _v1t7, _v1t8 in ipairs(_v1qh) do _v1t3, _v1t4, _v1t5, _v1t6 = _v1t3 + _v1t8[1], _v1t4 + _v1t8[2], _v1t5 + _v1t8[1] * _v1t8[1], _v1t6 + _v1t8[1] * _v1t8[2] end
local _v1t9 = _v1t2 * _v1t5 - _v1t3 * _v1t3
if _v1t9 > 0 then
local _v1ta = (_v1t2 * _v1t6 - _v1t3 * _v1t4) / _v1t9
local _v1tb = (_v1t4 - _v1ta * _v1t3) / _v1t2
if _v1tb > 0 then
_v1t1 = math.clamp(-_v1ta / _v1tb, 0, 0.95)
_v1sx = (_v1tb + _v1ta * _v1sz) * _v1sv
end
end
end
if _v1sx <= 0 then return _ei9m[546-10] end
local _v1tc
if _v1t1 < 0.01 then
_v1tc = (1 - _v1sz) * _v1t0 / _v1sx
else
local _v1td = 1 - _v1t1 * _v1sz
_v1tc = _v1t0 * _v1td / (_v1sx * _v1t1) * math.log(_v1td / (1 - _v1t1))
end
local _v1te = _v1tc * _v1sy
return _v1te < 1 and _ei9m[1258+424] or "(" .. _v1sq(_v1te) .. _ei9m[1+89]
end
local _v1tf, _v1tg = _v4.dinoStageWeights(), _v4.dinoGrowthShared()
local _v1th = _v1tf and _v1tf[tostring(_v1st.Stage)]
local _v1ti = _v1tg and _v1tg.Monster and _v1tg.Monster.WeightMultiplier
if not (type(_v1th) == _ei9m[2800-11] and type(_v1ti) == _ei9m[1863-8] and _v1ti > 1 and _v1sx > 0) then return "" end
local _v1tj = _v1sx / (_v1th * (_v1ti - 1)) / (1 - _v1sz) ^ 2.5
local function _v1tk(_v1tl) return ((1 - _v1tl) ^ -1.5 - (1 - _v1sz) ^ -1.5) / (1.5 * _v1tj) * _v1sy end
local _v1tm, _v1tn = 30 * 86400, _v1sz * 100
local _v1to
for _v1tp, _v1tq in ipairs({ 20, 40, 60, 80, 95 }) do
if _v1tq > _v1tn + 1e-6 then _v1to = _v1tq break end
end
if not (_v1to and _v1tk(_v1to / 100) <= _v1tm) then _v1to = math.floor(_v1tn / 5 + 1e-6) * 5 + 5 end
if _v1to > 99 or _v1tk(_v1to / 100) > _v1tm then _v1to = math.floor(_v1tn + 1e-6) + 1 end
if _v1to > 99 then return "" end
local _v1tr = _v1tk(_v1to / 100)
if _v1tr > _v1tm then return _ei9m[109+1991] .. _v1sq(_v1tr) .. ")" end
return "(" .. _v1to .. _ei9m[2041-14] .. _v1sq(_v1tr) .. ")"
end
local function _v1ts(_v1tt, _v1tu, _v1tv)
local _v1tw, _v1tx = 0, 0; for _v1ty, _v1tz in pairs({ _v1tt, _v1tu, _v1tv }) do if _v1tz then _v1tw = _v1tw + _v1tz; _v1tx = _v1tx + 1 end end
return _v1tx > 0 and math.floor(_v1tw / _v1tx) or 0
end
local function _v1u0()
local _v1u1 = _v1sm(); local _v1u2; pcall(function() _v1u2 = _v1u1.Multipliers.MassGain end)
if type(_v1u2) ~= _ei9m[3+2983] then return "?" end
if _v1u2 > 1 then return tostring(math.floor(_v1u2 * 10) * 10)
elseif _v1u2 < 0.1 then return tostring(math.floor(_v1u2 * 1000) / 10)
else return tostring(math.floor(_v1u2 * 100)) end
end
local function _v1u3(_v1u4) return _v1u4 and (_v1u4 .. "%") or "?" end
local _v1u5 = (gethui and gethui()) or game:GetService(_ei9m[723])
if not _v1u5 then _v1u5 = _v2:WaitForChild(_ei9m[1488]) end
local _v1u6 = Instance.new(_ei9m[2624-20]); _v1u6.Name = _ei9m[2421-19]; _v1u6.ResetOnSpawn = false; _v1u6.IgnoreGuiInset = true
pcall(function() _v1u6.Parent = _v1u5 end)
local _v1u7 = Instance.new(_ei9m[119+629])
_v1u7.Size = UDim2.new(0, 500, 0, 168); _v1u7.AnchorPoint = Vector2.new(0.5, 0)
_v1u7.Position = UDim2.new(0.62, 0, 0, 16)
_v1u7.BackgroundColor3 = Color3.fromRGB(24, 16, 38); _v1u7.BackgroundTransparency = 0.1
_v1u7.BorderSizePixel = 0; _v1u7.Visible = false; _v1u7.Parent = _v1u6
Instance.new(_ei9m[3+3011], _v1u7).CornerRadius = UDim.new(0, 10)
do
local _v1u8 = game:GetService(_ei9m[6+227])
local _v1u9, _v1ua, _v1ub = false, nil, nil
local function _v1uc()
_v1u7.Position = UDim2.new(_v4.SC_POS_XS, _v4.SC_POS_XO, _v4.SC_POS_YS, _v4.SC_POS_YO)
end
_v1uc()
_v4.setStatsCardPos = function(_v1ud, _v1ue, _v1uf, _v1ug)
_v4.SC_POS_XS, _v4.SC_POS_XO, _v4.SC_POS_YS, _v4.SC_POS_YO = _v1ud, _v1ue, _v1uf, _v1ug
pcall(_v1uc)
end
table.insert(_v2l, _v1u7.InputBegan:Connect(function(_v1uh)
if _v4.UNLOADED or not _v4.SC_DRAG then return end
if _v1uh.UserInputType == Enum.UserInputType.MouseButton1
or _v1uh.UserInputType == Enum.UserInputType.Touch then
_v1u9, _v1ua, _v1ub = true, _v1uh.Position, _v1u7.Position
end
end))
table.insert(_v2l, _v1u7.InputEnded:Connect(function(_v1ui)
if _v1ui.UserInputType == Enum.UserInputType.MouseButton1
or _v1ui.UserInputType == Enum.UserInputType.Touch then
if _v1u9 then
_v1u9 = false
_v4.SC_POS_XS, _v4.SC_POS_XO = _v1u7.Position.X.Scale, _v1u7.Position.X.Offset
_v4.SC_POS_YS, _v4.SC_POS_YO = _v1u7.Position.Y.Scale, _v1u7.Position.Y.Offset
end
end
end))
table.insert(_v2l, _v1u8.InputChanged:Connect(function(_v1uj)
if _v4.UNLOADED or not _v1u9 or not _v4.SC_DRAG then return end
if _v1uj.UserInputType == Enum.UserInputType.MouseMovement
or _v1uj.UserInputType == Enum.UserInputType.Touch then
local _v1uk = _v1uj.Position - _v1ua
_v1u7.Position = UDim2.new(_v1ub.X.Scale, _v1ub.X.Offset + _v1uk.X,
_v1ub.Y.Scale, _v1ub.Y.Offset + _v1uk.Y)
end
end))
end
local _v1ul = Instance.new(_ei9m[1908], _v1u7); _v1ul.Color = Color3.fromRGB(150, 90, 255); _v1ul.Thickness = 1.5
local _v1um = Instance.new(_ei9m[1456-9])
_v1um.Size = UDim2.new(1, 0, 0, 24); _v1um.Position = UDim2.new(0, 0, 0, 8); _v1um.BackgroundTransparency = 1
_v1um.Font = Enum.Font.GothamBold; _v1um.TextSize = 18; _v1um.TextColor3 = Color3.fromRGB(190, 140, 255)
_v1um.Text = _ei9m[3000-18]; _v1um.TextTruncate = Enum.TextTruncate.AtEnd; _v1um.Parent = _v1u7
local function _v1un(_v1uo)
local _v1up = Instance.new(_ei9m[1506-5])
_v1up.Size = UDim2.new(0.5, -20, 0, 0); _v1up.Position = UDim2.new(_v1uo, _v1uo == 0 and 14 or 6, 0, 38)
_v1up.BackgroundTransparency = 1; _v1up.Parent = _v1u7
local _v1uq = Instance.new(_ei9m[3+1939], _v1up)
_v1uq.FillDirection = Enum.FillDirection.Vertical; _v1uq.SortOrder = Enum.SortOrder.LayoutOrder
_v1uq.Padding = UDim.new(0, 3)
return _v1up, _v1uq
end
local _v1ur, _v1us = _v1un(0)
local _v1ut, _v1uu = _v1un(0.5)
local function _v1uv(_v1uw, _v1ux, _v1uy)
local _v1uz = Instance.new(_ei9m[2347-6])
_v1uz.Size = UDim2.new(1, 0, 0, _v1ux + 5); _v1uz.BackgroundTransparency = 1; _v1uz.Font = Enum.Font.GothamSemibold
_v1uz.TextSize = _v1ux; _v1uz.TextXAlignment = Enum.TextXAlignment.Left
_v1uz.TextColor3 = _v1uy or Color3.fromRGB(220, 210, 240); _v1uz.RichText = true; _v1uz.Parent = _v1uw; return _v1uz
end
local _v1v0 = _v1uv(_v1ur, 14)
local _v1v1 = _v1uv(_v1ur, 13, Color3.fromRGB(170, 160, 190))
local _v1v2 = _v1uv(_v1ur, 14)
local _v1v3 = _v1uv(_v1ur, 14)
local _v1v4 = _v1uv(_v1ur, 15, Color3.fromRGB(120, 230, 140))
local _v1v5 = _v1uv(_v1ut, 14, Color3.fromRGB(190, 140, 255)); _v1v5.Font = Enum.Font.GothamBold
local _v1v6 = _v1uv(_v1ut, 13)
local _v1v7 = _v1uv(_v1ut, 14, Color3.fromRGB(190, 140, 255)); _v1v7.Font = Enum.Font.GothamBold
local _v1v8 = _v1uv(_v1ut, 13)
local _v1v9 = _v1uv(_v1ut, 13)
task.spawn(function()
while not _v4.UNLOADED do
if _v4.STATS_CARD and not (_v4.SC_HIDE_WITH_MENU and _v4.Hub and _v4.Hub.IsVisible and _v4.Hub:IsVisible()) then
_v1u7.Visible = true
if _v1u7.Active ~= _v4.SC_DRAG then _v1u7.Active = _v4.SC_DRAG end
pcall(function()
local _v1va = _v2.Character
local _v1vb = _v1sm()
local _v1vc = _v4.SC_NAME and _v1va and _v1va:GetAttribute(_ei9m[1797])
if _v1vc then
local _v1vd = _v1va:GetAttribute(_ei9m[209-13])
_v1um.Text = tostring(_v1vc) .. ((_v1vd == "M" and _ei9m[2394+285]) or (_v1vd == "F" and _ei9m[4+121]) or "")
else
_v1um.Text = _ei9m[2658-2]
end
_v1v0.Visible = _v4.SC_GROWTH; _v1v1.Visible = _v4.SC_GROWTH
if _v4.SC_GROWTH and _v1q6 then
local _v1ve = _v4.liteGrowthOf(_v1va and _v1va:GetAttribute(_ei9m[2+1639]), _v1va and _v1va:GetAttribute(_ei9m[1059-13]),
_v4.dinoStageWeights())
_v1v0.Text = _ei9m[782] .. tostring((_v1ve and _v1ve.Stage) or (_v1va and _v1va:GetAttribute(_ei9m[423+89])) or "?") .. _ei9m[1262-10]
if _v1ve and _v1ve.final then
_v1v1.Text = _ei9m[1262]
else
_v1v1.Text = _ei9m[56+583] .. tostring(_v1ve and _v1ve.NextStage or "?") .. _ei9m[1339-16]
.. ((_v1ve and _v1ve.Delta) and (math.floor(_v1ve.Delta * 100) .. "%") or "?")
if _v4.SC_STAGE_TIMER and _v1ve then
_v1v1.Text = _v1v1.Text .. _ei9m[2600-19] .. _v4.litePaceEta(_v1ve, _v1ry)
end
end
elseif _v4.SC_GROWTH then
local _v1vf = (_v1vb and _v1vb.Growth and _v1vb.Growth.Stage) or (_v1va and _v1va:GetAttribute(_ei9m[1094])) or "?"
local _v1vg = (_v1vb and _v1vb.Growth and _v1vb.Growth.NextStage) or "?"
local _v1vh = (_v1vb and _v1vb.Growth and _v1vb.Growth.Delta) or 0
_v1v0.Text = _ei9m[1419-5] .. tostring(_v1vf) .. _ei9m[6+747]
_v1v1.Text = _ei9m[513-12] .. tostring(_v1vg) .. _ei9m[1807] .. math.floor(_v1vh * 100) .. "%"
if _v4.SC_STAGE_TIMER then
_v1v1.Text = _v1v1.Text .. _ei9m[198] .. _v1ss(_v1vb and _v1vb.Growth, _v1vh)
end
end
_v1v2.Visible = _v4.SC_MASS and not _v1q6
if _v4.SC_MASS and not _v1q6 then _v1v2.Text = _ei9m[753+17] .. _v1u0() .. _ei9m[1503] end
_v1v3.Visible = _v4.SC_WEIGHT
if _v4.SC_WEIGHT then
local _v1vi = _v1va and _v1va:GetAttribute(_ei9m[869+358])
_v1v3.Text = _ei9m[492-12] .. (_v1vi and (math.floor(_v1vi * 10) / 10 .. _ei9m[253+176]) or "?") .. _ei9m[7+1398]
end
_v1v4.Visible = _v4.SC_TIMER
if _v4.SC_TIMER then
local _v1vj = math.max(0, math.floor(_v1qa - (os.clock() - _v1q9)))
_v1v4.Text = _ei9m[2166-20] .. string.format(_ei9m[3+2318], math.floor(_v1vj / 60), _v1vj % 60)
end
local _v1vk, _v1vl = _v4.SC_NUTRITION and not _v1q6, _v4.SC_WELLBEING and not _v1q6
_v1v5.Visible = _v1vk; _v1v6.Visible = _v1vk
if _v1vk then
local _v1vm = _v4.dinoNutritionCats() or { _ei9m[5+130], _ei9m[3+2640], _ei9m[1575-20] }
local _v1vn, _v1vo, _v1vp = {}, 0, 0
for _v1vq, _v1vr in ipairs(_v1vm) do
local _v1vs = _v1sn(_v1vr)
if _v1vs then _v1vo = _v1vo + _v1vs; _v1vp = _v1vp + 1 end
_v1vn[#_v1vn + 1] = (_v1vr == _ei9m[761+215] and _ei9m[5+1613] or _v1vr) .. " " .. _v1u3(_v1vs)
end
_v1v5.Text = _ei9m[665+1021] .. (_v1vp > 0 and math.floor(_v1vo / _v1vp) or "?") .. "%"
_v1v6.Text = table.concat(_v1vn, _ei9m[2231])
end
_v1v7.Visible = _v1vl; _v1v8.Visible = _v1vl; _v1v9.Visible = _v1vl
if _v1vl then
local _v1vt, _v1vu, _v1vv = _v1sn(_ei9m[2127]), _v1sn(_ei9m[918+1972]), _v1sn(_ei9m[515+1436])
local _v1vw = _v1sn(_ei9m[1116-4])
_v1v7.Text = _ei9m[1257+1444] .. _v1ts(_v1vt, _v1vu, _v1vv) .. "%"
_v1v8.Text = _ei9m[5+2047] .. _v1u3(_v1vt) .. _ei9m[403-14] .. _v1u3(_v1vu) .. _ei9m[2788] .. _v1u3(_v1vv)
if _v1vw then
local _v1vx = _v1vw >= 70 and Color3.fromRGB(100, 255, 100)
or _v1vw >= 40 and Color3.fromRGB(255, 255, 80)
or Color3.fromRGB(255, 80, 80)
_v1v9.Text = _ei9m[2638] .. _v1vw .. _ei9m[2886-12] .. (_v1vw < 40 and _ei9m[2208] or "")
_v1v9.TextColor3 = _v1vx
else
_v1v9.Text = _ei9m[1388-11]
_v1v9.TextColor3 = Color3.fromRGB(170, 160, 190)
end
end
local _v1vy, _v1vz = _v1us.AbsoluteContentSize.Y, _v1uu.AbsoluteContentSize.Y
_v1ur.Size = UDim2.new(0.5, -20, 0, _v1vy)
_v1ut.Size = UDim2.new(0.5, -20, 0, _v1vz)
_v1u7.Size = UDim2.new(0, (_v1vk or _v1vl) and 500 or 270, 0, 40 + math.max(_v1vy, _v1vz) + 8)
end)
else
_v1u7.Visible = false
end
task.wait(0.3)
end
pcall(function() _v1u6:Destroy() end)
end)
end
end)
do
local _v1w0, _v1w1 = pcall(function() return _v4.req(_v4.WATER_RS.Shared.SkinData) end)
local _v1w2 = _v4.WATER_RS:FindFirstChild(_ei9m[980-10])
local _v1w3 = _v4.WATER_RS:FindFirstChild(_ei9m[2410-9])
if _v1w0 and _v1w1 and _v1w1.Skins and _v1w2 and _v1w3 then
local function _v1w4()
local _v1w5 = _v2.Character
if not _v1w5 then return nil end
local _v1w6 = _v1w5:GetAttribute(_ei9m[2+960])
local _v1w7 = _v1w5:GetAttribute(_ei9m[443]) or _ei9m[1222]
local _v1w8 = (tostring(_v1w5:GetAttribute(_ei9m[46+1395])):upper():sub(1, 1) == "F") and _ei9m[164-5] or _ei9m[487+535]
local _v1w9 = _v1w5:GetAttribute(_ei9m[2+633]) or _v1w5:GetAttribute(_ei9m[2985-1])
return _v1w5, _v1w6, _v1w7, _v1w8, _v1w9 and _ei9m[1669] or _ei9m[1593+707]
end
local function _v1wa(_v1wb, _v1wc, _v1wd, _v1we, _v1wf)
if _v1wc == _ei9m[164+1378] then
local _v1wg = _v1w3:FindFirstChild(_v1wb)
local _v1wh = _v1wg and (_v1wg:FindFirstChild(_v1wd) or _v1wg:GetChildren()[1])
local _v1wi = _v1wh and _v1wh:FindFirstChild(_ei9m[1238])
local _v1wj = _v1wi and (_v1wi:FindFirstChild(_v1wb .. _v1wf) or _v1wi:FindFirstChild(_v1wb .. _ei9m[865]))
return _v1wj and _v1wj:FindFirstChild(_v1we)
else
local _v1wk = _v1w2:FindFirstChild(_v1wb)
local _v1wl = _v1wk and _v1wk:FindFirstChild(_v1wc)
local _v1wm = _v1wl and (_v1wl:FindFirstChild(_v1wd) or _v1wl:GetChildren()[1])
local _v1wn = _v1wm and _v1wm:FindFirstChild(_v1we)
return _v1wn and (_v1wn:FindFirstChild(_v1wf) or _v1wn:FindFirstChild(_ei9m[402-14]) or _v1wn:FindFirstChild(_ei9m[960]))
end
end
_v4.applySkin = function(_v1wo)
local _v1wp, _v1wq, _v1wr, _v1ws, _v1wt = _v1w4()
if not (_v1wp and _v1wq) then return false end
local _v1wu = _v1wp:FindFirstChild(_ei9m[998]) or _v1wp
local _v1wv = _v1wa(_v1wq, _v1wo, _v1wr, _v1ws, _v1wt)
if not _v1wv then return false end
for _v1ww, _v1wx in ipairs(_v1wu:GetDescendants()) do
if _v1wx:IsA(_ei9m[1699+298]) then pcall(function() _v1wx:Destroy() end) end
end
local _v1wy = 0
for _v1wz, _v1x0 in ipairs(_v1wv:GetChildren()) do
local _v1x1 = _v1x0:FindFirstChildWhichIsA(_ei9m[1568+820])
local _v1x2 = _v1wu:FindFirstChild(_v1x0.Name)
if _v1x1 and _v1x2 then pcall(function() _v1x1:Clone().Parent = _v1x2 end); _v1wy = _v1wy + 1 end
end
return _v1wy > 0
end
_v4.skinsForCurrentDino = function()
local _v1x3, _v1x4 = _v1w4()
local _v1x5 = { _ei9m[2094+787] }
local _v1x6 = _v1x4 and _v1w1.Skins[_v1x4]
if _v1x6 and _v1x6.Unlockables then for _v1x7 in pairs(_v1x6.Unlockables) do _v1x5[#_v1x5 + 1] = _v1x7 end end
table.sort(_v1x5, function(_v1x8, _v1x9) if _v1x8 == _ei9m[802-17] then return true elseif _v1x9 == _ei9m[1983+648] then return false end return _v1x8 < _v1x9 end)
return _v1x5, _v1x4
end
task.spawn(function()
while not _v4.UNLOADED do
if _v4.SKIN_SELECTED ~= _ei9m[4+298] then pcall(_v4.applySkin, _v4.SKIN_SELECTED) end
task.wait(2)
end
end)
table.insert(_v2l, _v2.CharacterAdded:Connect(function()
task.wait(2)
local _v1xa, _v1xb = _v4.skinsForCurrentDino()
local _v1xc = _v4.SKIN_WANTED or _v4.SKIN_SELECTED
_v4.SKIN_SELECTED = table.find(_v1xa, _v1xc) and _v1xc or _ei9m[2660-3]
if _v4.skinDropdown then
pcall(function() _v4.skinDropdown:Refresh(_v1xa, false) end)
pcall(function() _v4.skinDropdown:Set(_v4.SKIN_SELECTED, true) end)
end
if _v4.SKIN_SELECTED ~= _ei9m[702-1] then pcall(_v4.applySkin, _v4.SKIN_SELECTED) end
end))
task.spawn(function()
task.wait(3)
if _v4.skinDropdown and _v4.skinsForCurrentDino then
local _v1xd, _v1xe = _v4.skinsForCurrentDino()
if _v1xe then
pcall(function() _v4.skinDropdown:Refresh(_v1xd, true) end)
local _v1xf = _v4.SKIN_WANTED
if _v1xf and _v1xf ~= _ei9m[408+255] and table.find(_v1xd, _v1xf) and _v4.SKIN_SELECTED ~= _v1xf then
_v4.SKIN_SELECTED = _v1xf
pcall(function() _v4.skinDropdown:Set(_v1xf, true) end)
if _v4.applySkin then pcall(_v4.applySkin, _v1xf) end
end
end
end
end)
end
end
do
_v4.fishESP = setmetatable({}, { __mode = "k" })
local _v1xg = Color3.fromRGB(80, 200, 255)
local _v1xh = 1500
local function _v1xi()
local _v1xj = workspace:FindFirstChild(_ei9m[669+1836])
local _v1xk = _v1xj and _v1xj:FindFirstChild(_ei9m[3+2422])
return _v1xk and _v1xk:FindFirstChild(_ei9m[929-1])
end
local function _v1xl()
local _v1xm = _v2.Character
return _v1xm and (_v1xm:FindFirstChild(_ei9m[2+2689]) or _v1xm:FindFirstChild(_ei9m[1094-1]) or _v1xm:FindFirstChildWhichIsA(_ei9m[1647]))
end
local function _v1xn(_v1xo)
return _v1xo.PrimaryPart or _v1xo:FindFirstChild(_ei9m[1939-17]) or _v1xo:FindFirstChildWhichIsA(_ei9m[7+2415])
end
local function _v1xp(_v1xq)
local _v1xr = _v4.fishESP[_v1xq]
if _v1xr and _v1xr.hl.Parent then return _v1xr end
local _v1xs = Instance.new(_ei9m[3+2279])
_v1xs.FillColor = _v1xg; _v1xs.FillTransparency = 0.55; _v1xs.OutlineColor = _v1xg
_v1xs.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop; _v1xs.Parent = _v1xq
local _v1xt = _v1xn(_v1xq)
local _v1xu = Instance.new(_ei9m[7+317])
_v1xu.Size = UDim2.new(0, 110, 0, 18); _v1xu.StudsOffset = Vector3.new(0, 2, 0); _v1xu.AlwaysOnTop = true
local _v1xv = Instance.new(_ei9m[747+1764])
_v1xv.Size = UDim2.new(1, 0, 1, 0); _v1xv.BackgroundTransparency = 1; _v1xv.Font = Enum.Font.GothamBold
_v1xv.TextSize = 12; _v1xv.TextColor3 = _v1xg; _v1xv.TextStrokeTransparency = 0.4; _v1xv.Text = _ei9m[137+297]; _v1xv.Parent = _v1xu
if _v1xt then _v1xu.Adornee = _v1xt; _v1xu.Parent = _v1xt end
_v1xr = { hl = _v1xs, bb = _v1xu, lbl = _v1xv }; _v4.fishESP[_v1xq] = _v1xr; return _v1xr
end
local function _v1xw(_v1xx)
local _v1xy = _v4.fishESP[_v1xx]
if _v1xy then pcall(function() _v1xy.hl:Destroy(); _v1xy.bb:Destroy() end); _v4.fishESP[_v1xx] = nil end
end
task.spawn(function()
while not _v4.UNLOADED do
local _v1xz = _v1xi()
local _v1y0 = _v1xl()
if _v1xz then
local _v1y1 = {}
for _v1y2, _v1y3 in ipairs(_v1xz:GetChildren()) do
if _v1y3:IsA(_ei9m[2628-2]) then
_v1y1[_v1y3] = true
local _v1y4 = _v1xn(_v1y3)
local _v1y5 = (_v1y4 and _v1y0) and (_v1y4.Position - _v1y0.Position).Magnitude or 1e9
if _v4.FISH_ESP and _v1y5 <= _v1xh then
local _v1y6 = _v1xp(_v1y3)
if _v1y6.lbl then _v1y6.lbl.Text = _ei9m[692+2209] .. math.floor(_v1y5) .. "m" end
else
_v1xw(_v1y3)
end
end
end
for _v1y7 in pairs(_v4.fishESP) do if not _v1y1[_v1y7] then _v1xw(_v1y7) end end
end
task.wait(0.15)
end
for _v1y8 in pairs(_v4.fishESP) do _v1xw(_v1y8) end
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
_v4.VEG_CS = game:GetService(_ei9m[2659])
function _v4.vegData()
if not _v4.vegCData then pcall(function() _v4.vegCData = _v4.req(_v4.WATER_RS.Shared.ConsumptionData) end) end
if not _v4.vegCState then _v4.vegCState = _v4.getCS() end
return _v4.vegCData, _v4.vegCState
end
function _v4.vegResolve(_v1y9)
local _v1ya = _v1y9
for _v1yb = 1, 3 do
if not _v1ya or _v1ya == workspace then break end
local _v1yc = _v1ya:GetAttribute("ID")
if _v1yc then return _v1ya, _v1yc end
_v1ya = _v1ya.Parent
end
return nil, nil
end
function _v4.vegAllowed(_v1yd)
local _v1ye = _v4.vegAllowCache[_v1yd]
if _v1ye ~= nil then return _v1ye end
local _v1yf, _v1yg = _v4.vegData()
local _v1yh = false
pcall(function()
local _v1yi = _v1yf.FoliageConsumables[_v1yd]
local _v1yj = _v1yi and _v1yi.Actions
if type(_v1yj) == _ei9m[2613-3] then
for _v1yk, _v1yl in ipairs(_v1yj) do
if type(_v1yl) == _ei9m[4+1177] and _v1yl.Category
and _v1yg.Data.Diet.Categories[_v1yl.Category] ~= nil then
_v1yh = true
break
end
end
end
end)
_v4.vegAllowCache[_v1yd] = _v1yh
return _v1yh
end
function _v4.vegContainer()
if _v4.vegFolder and _v4.vegFolder.Parent then return _v4.vegFolder end
local _v1ym = _v2:FindFirstChild(_ei9m[2901-8])
if not _v1ym then return nil end
local _v1yn = Instance.new(_ei9m[1741-14])
_v1yn.Name = _ei9m[5+1072]
_v1yn.Parent = _v1ym
_v4.vegFolder = _v1yn
return _v1yn
end
function _v4.vegLabel(_v1yo, _v1yp)
local _v1yq = _v4.vegPool[_v1yo]
if _v1yq and _v1yq.bb.Parent then return _v1yq end
local _v1yr = Instance.new(_ei9m[4+1970])
_v1yr.Name = _ei9m[1304]
_v1yr.Size = UDim2.new(0, 160, 0, 20)
_v1yr.StudsOffset = Vector3.new(0, 2.5, 0)
_v1yr.AlwaysOnTop = true
_v1yr.LightInfluence = 0
_v1yr.Enabled = false
local _v1ys = Instance.new(_ei9m[7+2308])
_v1ys.Name = _ei9m[196-18]
_v1ys.Size = UDim2.new(1, 0, 1, 0)
_v1ys.BackgroundTransparency = 1
_v1ys.Font = Enum.Font.GothamBold
_v1ys.TextSize = 12
_v1ys.TextStrokeTransparency = 0
_v1ys.TextStrokeColor3 = Color3.new(0, 0, 0)
_v1ys.Parent = _v1yr
_v1yr.Parent = _v1yp
_v1yq = { bb = _v1yr, lbl = _v1ys }
_v4.vegPool[_v1yo] = _v1yq
return _v1yq
end
function _v4.vegHideAll()
for _v1yt, _v1yu in pairs(_v4.vegPool) do
pcall(function() _v1yu.bb.Enabled = false; _v1yu.bb.Adornee = nil end)
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
local _v1yv = _v4.getLocalRoot()
local _v1yw = _v4.vegContainer()
if not (_v1yv and _v1yw) then return end
local _v1yx = _v1yv.Position
local _v1yy = _v4.VEG_DISTANCE
_v4.vegInstCache = _v4.vegInstCache or {}
_v4.vegSweeps = (_v4.vegSweeps or 0) + 1
if _v4.vegSweeps % 60 == 0 then
for _v1yz in pairs(_v4.vegInstCache) do
if not _v1yz.Parent then _v4.vegInstCache[_v1yz] = nil end
end
end
local _v1z0, _v1z1 = {}, {}
pcall(function()
for _v1z2, _v1z3 in ipairs(_v4.VEG_CS:GetTagged(_ei9m[4+102])) do
local _v1z4 = _v4.vegInstCache[_v1z3]
if not (_v1z4 and _v1z4.part.Parent) then
local _v1z5, _v1z6 = _v4.vegResolve(_v1z3)
local _v1z7 = _v1z6 and (_v1z3:IsA(_ei9m[2+200]) and _v1z3 or _v1z3:FindFirstChildWhichIsA(_ei9m[1553], true))
_v1z4 = _v1z7 and { model = _v1z5, id = _v1z6, part = _v1z7 } or nil
_v4.vegInstCache[_v1z3] = _v1z4
end
local _v1z8, _v1z9 = _v1z4 and _v1z4.model, _v1z4 and _v1z4.id
if _v1z9 and not _v1z1[_v1z9] and _v1z8:IsDescendantOf(workspace) then
local _v1za = _v1z4.part
if _v1za then
_v1z1[_v1z9] = true
local _v1zb = (_v1za.Position - _v1yx).Magnitude
if _v1zb <= _v1yy then
local _v1zc = _v4.vegAllowed(_v1z8.Name)
local _v1zd = _v4.khFoodOf(_v1z9)
local _v1ze
if _v1zd then _v1ze = (_v1zd <= 0)
else _v1ze = (_v1z8:GetAttribute(_ei9m[2+2410]) == false) end
if (_v1zc or not _v4.VEG_DIET_ONLY) and not (_v1ze and _v4.VEG_HIDE_EATEN) then
_v1z0[#_v1z0 + 1] = { part = _v1za, name = _v1z8.Name, d = _v1zb,
ok = _v1zc, eaten = _v1ze, food = _v1zd }
end
end
end
end
end
end)
local function _v1zf(_v1zg)
return _v1zg.eaten and 1 or 0
end
table.sort(_v1z0, function(_v1zh, _v1zi)
local _v1zj, _v1zk = _v1zf(_v1zh), _v1zf(_v1zi)
if _v1zj ~= _v1zk then return _v1zj < _v1zk end
return _v1zh.d < _v1zi.d
end)
for _v1zl = 1, _v4.VEG_MAX do
local _v1zm = _v4.vegLabel(_v1zl, _v1yw)
local _v1zn = _v1z0[_v1zl]
if _v1zn then
_v1zm.bb.Adornee = _v1zn.part
_v1zm.bb.Enabled = true
local _v1zo = ""
if _v1zn.eaten then _v1zo = _ei9m[200+1502]
elseif _v1zn.food then _v1zo = "  " .. math.floor(_v1zn.food) .. "f" end
_v1zm.lbl.Text = _v1zn.name .. _v1zo .. "  " .. math.floor(_v1zn.d) .. "m"
_v1zm.lbl.TextColor3 = _v1zn.eaten and _v4.VEG_COLOR_EATEN
or (_v1zn.ok and _v4.VEG_COLOR_OK or _v4.VEG_COLOR_NO)
else
_v1zm.bb.Enabled = false
_v1zm.bb.Adornee = nil
end
end
end)
end
_v4.UIS = game:GetService(_ei9m[4+1768])
_v4.IS_MOBILE = _v4.UIS.TouchEnabled and not _v4.UIS.KeyboardEnabled
pcall(function()
if type(getgenv) == _ei9m[3000-15] and getgenv().EZ_FORCE_MOBILE then _v4.IS_MOBILE = true end
end)
_v4.mob = { fwd = false, back = false, left = false, right = false, up = false, down = false,
turnL = false, turnR = false, insta = false, trimUp = false, trimDown = false }
if _v4.IS_MOBILE then
local _v1zp = Color3.fromRGB(28, 22, 42)
local _v1zq = Color3.fromRGB(120, 70, 220)
local _v1zr = Instance.new(_ei9m[5+293])
_v1zr.Name = _ei9m[2957-2]; _v1zr.ResetOnSpawn = false; _v1zr.IgnoreGuiInset = true
_v1zr.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
pcall(function() _v1zr.Parent = (gethui and gethui()) or game:GetService(_ei9m[5+2673]) end)
if not _v1zr.Parent then _v1zr.Parent = _v2:WaitForChild(_ei9m[6+1310]) end
_v4.mobGui = _v1zr
local function _v1zs(_v1zt, _v1zu, _v1zv, _v1zw, _v1zx)
local _v1zy = Instance.new(_ei9m[6+862])
_v1zy.Name = _ei9m[2705-17] .. _v1zv
_v1zy.Size = _v1zx or UDim2.new(0, 58, 0, 58)
_v1zy.Position = _v1zw
_v1zy.BackgroundColor3 = _v1zp
_v1zy.BackgroundTransparency = 0.25
_v1zy.BorderSizePixel = 0
_v1zy.Text = _v1zu
_v1zy.TextColor3 = Color3.fromRGB(235, 225, 255)
_v1zy.Font = Enum.Font.GothamBold
_v1zy.TextSize = 18
_v1zy.AutoButtonColor = false
_v1zy.Parent = _v1zt
Instance.new(_ei9m[1259], _v1zy).CornerRadius = UDim.new(0, 10)
local _v1zz = Instance.new(_ei9m[498], _v1zy)
_v1zz.Color = Color3.fromRGB(150, 90, 255); _v1zz.Thickness = 1.5; _v1zz.Transparency = 0.4
local function _v200(_v201)
_v4.mob[_v1zv] = _v201
_v1zy.BackgroundColor3 = _v201 and _v1zq or _v1zp
end
_v1zy.InputBegan:Connect(function(_v202)
if _v202.UserInputType == Enum.UserInputType.Touch
or _v202.UserInputType == Enum.UserInputType.MouseButton1 then _v200(true) end
end)
_v1zy.InputEnded:Connect(function(_v203)
if _v203.UserInputType == Enum.UserInputType.Touch
or _v203.UserInputType == Enum.UserInputType.MouseButton1 then _v200(false) end
end)
table.insert(_v2l, _v1zy.MouseLeave:Connect(function() _v200(false) end))
return _v1zy
end
local function _v204(_v205, _v206, _v207, _v208)
local _v209 = Instance.new(_ei9m[1609])
_v209.Name = _v205; _v209.Size = UDim2.new(0, _v206, 0, _v207); _v209.Position = _v208
_v209.BackgroundTransparency = 1; _v209.Visible = false; _v209.Parent = _v1zr
return _v209
end
_v4.mobFlyPad = _v204(_ei9m[2931-7], 200, 200, UDim2.new(0, 24, 1, -224))
_v1zs(_v4.mobFlyPad, _ei9m[5+2111], _ei9m[1483], UDim2.new(0, 62, 0, 0))
_v1zs(_v4.mobFlyPad, _ei9m[4+1823], _ei9m[437+1767], UDim2.new(0, 0, 0, 62))
_v1zs(_v4.mobFlyPad, _ei9m[7+1768], _ei9m[1000], UDim2.new(0, 124, 0, 62))
_v1zs(_v4.mobFlyPad, _ei9m[4+1075], _ei9m[898], UDim2.new(0, 62, 0, 124))
_v1zs(_v4.mobFlyPad, "+", "up", UDim2.new(0, 196, 0, 20), UDim2.new(0, 52, 0, 52))
_v1zs(_v4.mobFlyPad, _ei9m[1015], _ei9m[3+2791], UDim2.new(0, 196, 0, 104), UDim2.new(0, 52, 0, 52))
_v4.mobTurnPad = _v204(_ei9m[655], 200, 70, UDim2.new(1, -224, 1, -100))
_v1zs(_v4.mobTurnPad, _ei9m[436+10], _ei9m[728], UDim2.new(0, 0, 0, 0))
_v1zs(_v4.mobTurnPad, _ei9m[579+250], _ei9m[653-19], UDim2.new(0, 68, 0, 0))
_v1zs(_v4.mobTurnPad, _ei9m[1229-3], _ei9m[1492-20], UDim2.new(0, 136, 0, 0))
_v4.MOB_SHOW_TURN = false
_v4.addStep(10, function()
if _v4.UNLOADED then return end
local _v20a = _v4.FLY and true or false
if _v4.mobFlyPad.Visible ~= _v20a then _v4.mobFlyPad.Visible = _v20a end
local _v20b = _v4.MOB_SHOW_TURN and (_v4.QUICK_TURN or _v4.FLY) and true or false
if _v4.mobTurnPad.Visible ~= _v20b then _v4.mobTurnPad.Visible = _v20b end
end)
end
_v4.MENU_LAYOUT = {
MAIN = { _ei9m[670-19], _ei9m[1407], _ei9m[2781-18], _ei9m[1975+974] },
RENAME = { [_ei9m[406+252]] = _ei9m[5+1672],
[_ei9m[4+18]] = _ei9m[1833-5], [_ei9m[2198]] = _ei9m[5+1526], [_ei9m[2547]] = _ei9m[6+1243],
[_ei9m[7+2669]] = _ei9m[6+1398], [_ei9m[653+398]] = _ei9m[1330+390], [_ei9m[4+2476]] = _ei9m[3+1085],
[_ei9m[789-9]] = _ei9m[221+998],
[_ei9m[705+337]] = _ei9m[2038+632], [_ei9m[2+2756]] = _ei9m[1307-19],
[_ei9m[1032+581]] = _ei9m[1462], [_ei9m[720]] = _ei9m[1272],
[_ei9m[78+163]] = _ei9m[1129+766],
[_ei9m[1194]] = _ei9m[4+2904], [_ei9m[2227+665]] = _ei9m[119+1658],
[_ei9m[599+1570]] = _ei9m[71-6],
[_ei9m[1861-20]] = _ei9m[2173-3], [_ei9m[40+2618]] = _ei9m[6+2569] },
SUB_MAIN = {
[_ei9m[2804]] = _ei9m[1273+593], [_ei9m[2+433]] = _ei9m[1389+26], [_ei9m[2690]] = _ei9m[2705-7],
[_ei9m[5+1849]] = _ei9m[2403-4], [_ei9m[1526]] = _ei9m[6+1107], [_ei9m[41+241]] = _ei9m[1833-10],
[_ei9m[591-2]] = _ei9m[103], [_ei9m[1490-4]] = _ei9m[318], [_ei9m[2299]] = _ei9m[2739-4],
[_ei9m[2061-18]] = _ei9m[1780-15], [_ei9m[83+260]] = _ei9m[2284], [_ei9m[219]] = _ei9m[5+1145], [_ei9m[2+845]] = _ei9m[4+2677],
},
WHERE = {
[_ei9m[6+230]] = _ei9m[506], [_ei9m[901+386]] = _ei9m[2435-4], [_ei9m[168-3]] = _ei9m[2792], [_ei9m[174]] = _ei9m[2557], [_ei9m[2106+725]] = _ei9m[614+1506], [_ei9m[3+1631]] = _ei9m[293], [_ei9m[601-8]] = _ei9m[498-7], [_ei9m[2+261]] = _ei9m[187-2],
[_ei9m[2022]] = _ei9m[1641-3], [_ei9m[169+201]] = _ei9m[924], [_ei9m[242+39]] = _ei9m[3+1766],
[_ei9m[2+24]] = _ei9m[5+1234], [_ei9m[5+2133]] = _ei9m[2717-4],
[_ei9m[1107+1376]] = _ei9m[2408-5],
},
NEST = {
[_ei9m[384+349]] = { _ei9m[841+188] },
[_ei9m[540]] = { _ei9m[2025], _ei9m[1135+5], _ei9m[342] },
[_ei9m[2+2208]] = { _ei9m[1132+1828] },
[_ei9m[168+163]] = { _ei9m[6+1615], _ei9m[2+1847], _ei9m[2+675], _ei9m[2+2291], _ei9m[1608], _ei9m[2776-17], _ei9m[370+235] },
[_ei9m[4+1138]] = { _ei9m[211], _ei9m[2009], _ei9m[4+393], _ei9m[286+225],
_ei9m[653+25], _ei9m[1808], _ei9m[5+991], _ei9m[2802-17],
_ei9m[2873],
_ei9m[627], _ei9m[5+280] },
[_ei9m[2943-2]] = { _ei9m[6+1429], _ei9m[1436+682], _ei9m[2558], _ei9m[292+644], _ei9m[6+987],
_ei9m[567+611], _ei9m[2021], _ei9m[2485-12], _ei9m[3+2475], _ei9m[2903-17] },
[_ei9m[1444-14]] = { _ei9m[1133-13] },
[_ei9m[169]] = { _ei9m[3+2657], _ei9m[2077], _ei9m[1550], _ei9m[1902] },
[_ei9m[1352-13]] = { _ei9m[3+1632], _ei9m[1591-10], _ei9m[1689+679], _ei9m[3+2529] },
[_ei9m[4+2999]] = { _ei9m[1926-14], _ei9m[2838], _ei9m[786-10], _ei9m[1329] },
[_ei9m[2978]] = { _ei9m[1363] },
[_ei9m[5+884]] = { _ei9m[7+2320] },
[_ei9m[7+394]] = { _ei9m[495+1727], _ei9m[2266], _ei9m[2+1301] },
[_ei9m[482+858]] = { _ei9m[4+77] },
[_ei9m[274+1593]] = { _ei9m[524] },
[_ei9m[2934]] = { _ei9m[1010], _ei9m[2541-11], _ei9m[191+1140], _ei9m[2+1622], _ei9m[378-1], _ei9m[7+2521],
_ei9m[396], _ei9m[995+1539], _ei9m[6+278], _ei9m[1363-17], _ei9m[1683-3], _ei9m[241+2653], _ei9m[578-1],
_ei9m[1072-20], _ei9m[1280], _ei9m[2245+274], _ei9m[6+2718], _ei9m[1938-12], _ei9m[1220-4],
_ei9m[17+2841], _ei9m[200-3], _ei9m[2720-4], _ei9m[7+2557], _ei9m[256+639],
_ei9m[523+1522], _ei9m[840+1458] },
[_ei9m[1338-18]] = { _ei9m[10+3], _ei9m[615+306] },
[_ei9m[298+298]] = { _ei9m[2+201], _ei9m[2+293], _ei9m[1198] },
[_ei9m[1296]] = { _ei9m[1534+549] },
[_ei9m[2800-5]] = { _ei9m[398+672] },
[_ei9m[1111]] = { _ei9m[5+2838], _ei9m[2082], _ei9m[886], _ei9m[221-15], _ei9m[2581-9], _ei9m[2884], _ei9m[5+504],
_ei9m[2655], _ei9m[1133], _ei9m[1631] },
[_ei9m[1549]] = { _ei9m[859], _ei9m[3+13] },
[_ei9m[4+146]] = { _ei9m[2067-10] },
[_ei9m[323-4]] = { _ei9m[750-19] },
[_ei9m[826]] = { _ei9m[2840-14] },
[_ei9m[1602]] = { _ei9m[2478-7], _ei9m[4+812], _ei9m[696-4], _ei9m[785-1] },
[_ei9m[48+132]] = { _ei9m[439] },
[_ei9m[841+2111]] = { _ei9m[2416-9] },
[_ei9m[1574-1]] = { _ei9m[1180-8], _ei9m[2+2827], _ei9m[4+70] },
},
ORDER = {
AutoFarm = { _ei9m[55+290], _ei9m[215], _ei9m[59-9], _ei9m[4+2485], _ei9m[5+2656], _ei9m[7+238], _ei9m[1303+16] },
Stats = { _ei9m[1083+1247], _ei9m[2070-12], _ei9m[2834-7], _ei9m[1616+1018], _ei9m[2200-12] },
},
HEADERS = {},
LOCKED = {
_ei9m[2860], _ei9m[1653+641], _ei9m[98+265], _ei9m[5+2704], _ei9m[543], _ei9m[389+1520], _ei9m[2180], _ei9m[184+16],
_ei9m[602-5], _ei9m[850-15], _ei9m[2883],
_ei9m[547-18],
_ei9m[1344], _ei9m[1114], _ei9m[1935-19], _ei9m[466+1457], _ei9m[854-8], _ei9m[6+1715],
_ei9m[66+2469], _ei9m[298-8], _ei9m[4+2037], _ei9m[756+353], _ei9m[276], _ei9m[154-1], _ei9m[7+98], _ei9m[2126-17], _ei9m[2745], _ei9m[2+495], _ei9m[2477-15], _ei9m[3+2847], _ei9m[536+615],
},
}
function _v4.freeLock()
_v4.FOSSIL_FARM, _v4.AFK_FARM, _v4.FORCE_EAT = false, false, false
_v4.CARRY_CORPSE, _v4.WATER_ANYWHERE = false, false
_v4.LEGIT_FARM, _v4.AUTO_SWITCH, _v4.FARM_TIMER, _v4.CORPSE_INF_ESP = false, false, false, false
_v4.REJOIN = false
_v4.FPS_SAVER = false
_v4.NO_ATK_COOLDOWN, _v4.FISH_ESP, _v4.NO_BLUR = false, false, false
_v4.NO_WEATHER = false
_v4.SKIN_SELECTED = _ei9m[5+2618]
_v4.FLY, _v4.QUICK_TURN, _v4.MOB_SHOW_TURN = false, false, false
_v4.AUTO_SAVE, _v4.AUTO_SAVE_BLEED, _v4.MOD_KICK = false, false, false
_v4.STATS_CARD, _v4.MMAP_ON = false, false
_v4.UNLIMITED_ZOOM, _v4.FOV_ENABLED = false, false
if (tonumber(_v4.HITBOX_MULTIPLIER) or 1) > 5 then _v4.HITBOX_MULTIPLIER = 5 end
if (tonumber(_v4.REACH_MULTIPLIER) or 1) > 5 then _v4.REACH_MULTIPLIER = 5 end
end
_v4.freeLock()
function _v4.displayName(_v20c)
local _v20d = (tostring(_v20c or ""):gsub(_ei9m[229+584], ""):gsub(_ei9m[2+429], ""))
local _v20e = _v4.MENU_LAYOUT.RENAME and _v4.MENU_LAYOUT.RENAME[_v20d]
return _v20e or (_v20d:gsub(_ei9m[1962-18], ""))
end
function _v4.ezBridge(_v20f)
local _v20g = game:GetService(_ei9m[70-14])
local _v20h = game:GetService(_ei9m[2656+287])
local _v20i = _v4.MENU_LAYOUT
local _v20j = { Caps = { sectionInfo = true } }
local function _v20k(_v20l)
return (tostring(_v20l or ""):gsub(_ei9m[1519], ""):gsub(_ei9m[472-10], ""))
end
local function _v20m(_v20n)
local _v20o, _v20p = {}, nil
for _v20q in (tostring(_v20n) .. "\n"):gmatch(_ei9m[2+436]) do
local _v20r, _v20s = _v20q:match(_ei9m[1585-7])
if _v20r and #_v20r <= 40 then
_v20p = _v20k(_v20r)
_v20o[_v20p] = _v20s
elseif _v20p and _v20q:match("%S") then
_v20o[_v20p] = _v20o[_v20p] .. " " .. _v20q
else
_v20p = nil
end
end
return _v20o
end
local function _v20t(_v20u)
local _v20v = {}
function _v20v:Set(_v20w, _v20x)
_v20w = _v20w and true or false
if _v20x then pcall(function() _v20u:Set(_v20w) end) return end
_v20u.Enabled = _v20w
pcall(_v20u.Callback, _v20w)
pcall(function() _v20u:_applyVisual() end)
end
function _v20v:SetKey(_v20y, _v20z)
if typeof(_v20y) == _ei9m[2594] and _v20y ~= Enum.KeyCode.Unknown then
_v20u:SetKeybind(_v20y.Name)
else
_v20u.Keybind = nil
pcall(function()
_v20u._kbBtn.Text = _ei9m[2848-14]
_v20u:_markBound(false)
end)
end
end
return setmetatable(_v20v, { __index = function(_v210, _v211)
if _v211 == _ei9m[2554-10] then return _v20u.Keybind or Enum.KeyCode.Unknown end
if _v211 == _ei9m[435+2004] or _v211 == _ei9m[1377+335] then return _v20u.Enabled end
return nil
end })
end
local function _v212(_v213, _v214, _v215)
local _v216 = _v214.Callback or function() end
local _v217 = _v213:AddSubToggle({ Name = _v4.displayName(_v214.Name), Default = _v214.Default and true or false, Tooltip = _v215, Callback = _v216 })
local _v218 = {}
function _v218:Set(_v219, _v21a)
if not _v21a then pcall(_v216, _v219 and true or false) end
pcall(function() _v217:Set(_v219, false) end)
end
function _v218:SetKey() end
return setmetatable(_v218, { __index = function(_v21b, _v21c)
if _v21c == _ei9m[2+362] then return Enum.KeyCode.Unknown end
if _v21c == _ei9m[1966+900] or _v21c == _ei9m[107+141] then return _v217.Value end
return nil
end })
end
local function _v21d(_v21e, _v21f)
local _v21g = _v21f.Callback or function() end
local _v21h = _v21e:AddSlider({
Name = _v4.displayName(_v21f.Name), Min = _v21f.Min, Max = _v21f.Max, Default = _v21f.Default,
Step = _v21f.Increment or 1, Callback = _v21g,
})
local _v21i = {}
function _v21i:Set(_v21j, _v21k)
pcall(function() _v21h:Set(_v21j) end)
if not _v21k then pcall(_v21g, _v21h.Value ~= nil and _v21h.Value or _v21j) end
end
return setmetatable(_v21i, { __index = function(_v21l, _v21m)
if _v21m == _ei9m[2365-17] then return _v21h.Value end
return nil
end })
end
local function _v21n(_v21o, _v21p)
local _v21q = _v21p.Callback or function() end
local _v21r = _v21o:AddDropdown({
Name = _v20k(_v21p.Name), Options = _v21p.Items or _v21p.Options or {}, Default = _v21p.Default, Callback = _v21q,
})
local _v21s = {}
function _v21s:Set(_v21t, _v21u)
pcall(function() _v21r:Set(_v21t) end)
if not _v21u then pcall(_v21q, _v21t) end
end
function _v21s:Refresh(_v21v, _v21w)
self._items = _v21v
_v21r:Refresh(_v21v or {})
end
return setmetatable(_v21s, { __index = function(_v21x, _v21y)
if _v21y == _ei9m[983] then return _v21r.Selected end
return nil
end })
end
local function _v21z(_v220, _v221)
local _v222 = _v221.Callback or function() end
local _v224 = _v220:AddDropdown({
Name = _v20k(_v221.Name), Options = _v221.Items or _v221.Options or {}, Multi = true, Default = _v221.Default,
Callback = function(_v223) pcall(_v222, _v223) end,
})
local _v225 = {}
function _v225:Set(_v226, _v227)
_v224:Set(type(_v226) == _ei9m[861-11] and _v226 or {}, not _v227)
end
function _v225:Refresh(_v228, _v229)
self._items = _v228
if not _v229 then _v224:Set({}, false) end
_v224:Refresh(_v228 or {})
end
return setmetatable(_v225, { __index = function(_v22a, _v22b)
if _v22b == _ei9m[63+1666] then
local _v22c = {}
for _v22d in pairs(_v224.Selected or {}) do _v22c[_v22d] = true end
return _v22c
end
return nil
end })
end
local function _v22e(_v22f, _v22g)
local _v22h = _v20k(_v22g.Name or _ei9m[3+1789])
local _v22i = _v22g.Changed or _v22g.Callback or function() end
local _v22j = { Key = typeof(_v22g.Default) == _ei9m[1162+862] and _v22g.Default or Enum.KeyCode.Unknown }
local _v22k
local function _v22l(_v22m)
if _v22k then
_v22k.Text = _v22m or (_v22h .. _ei9m[1533-5] .. (_v22j.Key == Enum.KeyCode.Unknown and _ei9m[2976] or _v22j.Key.Name))
end
end
local _v22n = false
local row = _v22f:AddButton({
Name = _v22h,
Callback = function()
if _v22n then return end
_v22n = true
_v22l(_v22h .. _ei9m[1708-5])
local _v22o
_v22o = _v20g.InputBegan:Connect(function(_v22p)
if _v22p.UserInputType ~= Enum.UserInputType.Keyboard then return end
_v22o:Disconnect()
_v22n = false
_v22j.Key = (_v22p.KeyCode == Enum.KeyCode.Escape) and Enum.KeyCode.Unknown or _v22p.KeyCode
_v22l()
pcall(_v22i, _v22j.Key)
end)
end,
})
for _v22q, _v22r in ipairs(row:GetChildren()) do
if _v22r:IsA(_ei9m[2590-12]) and _v22r.Text == _v22h then
_v22k = _v22r
break
end
end
_v22l()
function _v22j:Set(_v22s, _v22t)
if typeof(_v22s) == _ei9m[1102] then _v22j.Key = _v22s end
_v22l()
if not _v22t then pcall(_v22i, _v22j.Key) end
end
return _v22j
end
local function _v22u()
return setmetatable({}, { __index = function(_v22v, _v22w)
if _v22w == _ei9m[2+2249] then return Enum.KeyCode.Unknown end
if _v22w == _ei9m[783+1719] or _v22w == _ei9m[2764-7] then return false end
if _v22w == _ei9m[6+2466] then return {} end
return function() end
end })
end
local function _v22x(_v22y, _v22z)
local _v230, _v231, _v232 = {}, {}, nil
local function _v233(_v234)
local _v235 = _v20k(_v234)
return _v22y.locked[_v235] or _v22y.locked[_v22z .. "/" .. _v235]
end
local function _v236(_v237, _v238)
local _v239 = _v20k(_v237)
if _v238 then
local _v23a = _v22y.parentOf[_v22z .. "/" .. _v239] or _v22y.parentOf[_v239]
local _v23b = _v23a and _v22y.masters[_v23a]
if _v23b then return _v23b, true end
end
local _v23c = _v20i.WHERE[_v239] or _v20i.SUB_MAIN[_v22z] or _v20i.MAIN[#_v20i.MAIN]
if not _v22y.tabs[_v23c] then _v22y.tabs[_v23c] = _v22y.win:AddTab(_v23c) end
local _v23d = _v22y.tabs[_v23c]
local _v23e = _v20i.HEADERS[_v23c]
local _v23f = _v23e and _v232 and _v23e[_v232]
if _v23f and _v22y.lastHeader[_v23c] ~= _v23f then
_v23d:AddSection(_v23f)
_v22y.lastHeader[_v23c] = _v23f
end
return _v23d, false, _v23c
end
function _v230:AddSection(_v23g)
_v232 = type(_v23g) == _ei9m[459+79] and _v23g.Name or _v23g
_v231 = (type(_v23g) == _ei9m[2657-12] and _v23g.Info) and _v20m(_v23g.Info) or {}
return nil
end
function _v230:AddToggle(_v23h)
_v23h = _v23h or {}
if _v233(_v23h.Name) then return _v22u() end
local _v23i, _v23j, _v23k = _v236(_v23h.Name, true)
if _v23j then
local _v23l = _v20k(_v23h.Name)
if not _v22y.hasKids[_v23l] then return _v212(_v23i, _v23h, _v23h.Tooltip or _v231[_v23l]) end
local _v23m = _v23i:AddToggle({
Name = _v4.displayName(_v23l),
Default = false,
Tooltip = _v23h.Tooltip or _v231[_v23l],
Callback = _v23h.Callback or function() end,
})
if _v23h.Default then _v23m:Set(true) end
_v22y.masters[_v23l] = _v23m
return _v20t(_v23m)
end
local _v23n = _v20k(_v23h.Name)
local _v23o = _v23i:AddToggle({
Name = _v4.displayName(_v23n),
Default = false,
Keybind = type(_v23h.Keybind) == _ei9m[1161+1320] and _v23h.Keybind or nil,
Tooltip = _v23h.Tooltip or _v231[_v23n],
Callback = _v23h.Callback or function() end,
})
if _v23h.Default then _v23o:Set(true) end
_v22y.masters[_v23n] = _v23o
local _v23p = _v22y.rank[_v23k] and _v22y.rank[_v23k][_v23n]
if _v23p then _v23o._container.LayoutOrder = _v23p - 100000 end
return _v20t(_v23o)
end
function _v230:AddSlider(_v23q)
_v23q = _v23q or {}
if _v233(_v23q.Name) then return _v22u() end
return _v21d(_v236(_v23q.Name, true), _v23q)
end
function _v230:AddDropdown(_v23r)
_v23r = _v23r or {}
if _v233(_v23r.Name) then return _v22u() end
local _v23s = _v236(_v23r.Name, true)
if _v23r.Multi then return _v21z(_v23s, _v23r) end
return _v21n(_v23s, _v23r)
end
function _v230:AddButton(_v23t)
_v23t = _v23t or {}
if _v233(_v23t.Name) then return _v22u() end
return (_v236(_v23t.Name, false)):AddButton({ Name = _v20k(_v23t.Name), Callback = _v23t.Callback })
end
function _v230:AddLabel(_v23u)
_v23u = _v23u or {}
if _v233(_v23u.Name) then return _v22u() end
local _v23v
pcall(function()
local _v23w, _v23x = _v236(_v23u.Name, true)
if _v23x and _v23w.AddNote then
_v23v = _v23w:AddNote(_v23u.Text or "")
elseif not _v23x and _v23w.AddLabel then
_v23v = _v23w:AddLabel(_v23u.Text or "")
end
end)
return { SetText = function(_v23y, _v23z)
_v23y._text = _v23z
pcall(function()
if typeof(_v23v) == _ei9m[515+1717] then _v23v.Text = tostring(_v23z)
elseif _v23v and _v23v.SetText then _v23v:SetText(tostring(_v23z)) end
end)
end }
end
function _v230:AddKeybind(_v240)
_v240 = _v240 or {}
if _v233(_v240.Name) then return _v22u() end
return _v22e((_v236(_v240.Name, false)), _v240)
end
_v230._raw = {}
for _v241, _v242 in ipairs({ _ei9m[7+2710], _ei9m[952-2], _ei9m[2179], _ei9m[693-3], _ei9m[2+2062], _ei9m[517+473], _ei9m[212+754] }) do
local _v243 = _v230[_v242]
_v230._raw[_v242] = _v243
_v230[_v242] = function(_v244, _v245, ...)
local _v246 = _v243(_v244, _v245, ...)
local _v247 = _v22y.rec
if _v247 and not _v247.replaying then
_v247.log[#_v247.log + 1] = { proxy = _v230, method = _v242, cfg = _v245, obj = _v246 }
end
return _v246
end
end
return _v230
end
function _v20j.new(_v248)
_v248 = _v248 or {}
local _v249 = (type(getgenv) == _ei9m[396+1827]) and getgenv() or _G
if _v249.__PX_EZ_WIN then
pcall(function()
_v249.__PX_EZ_WIN.OnUnload = nil
_v249.__PX_EZ_WIN:Destroy()
end)
end
local _v24a = { tabs = {}, toggleKey = Enum.KeyCode.RightShift }
local _v24b = false
local _v24c = _ei9m[1277-11]
local _v24d = false
local _v24e, _v24f = _v20g.MouseBehavior, _v20g.MouseIconEnabled
local _v24g = {}
pcall(function()
_v24g[1] = _v20g:GetPropertyChangedSignal(_ei9m[1427-3]):Connect(function()
local _v24h = _v20g.MouseBehavior
if not _v24d or _v24h ~= Enum.MouseBehavior.Default then _v24e = _v24h end
end)
_v24g[2] = _v20g:GetPropertyChangedSignal(_ei9m[3+2589]):Connect(function()
local _v24i = _v20g.MouseIconEnabled
if not _v24d or not _v24i then _v24f = _v24i end
end)
end)
local function _v24j()
_v20g.MouseBehavior = _v24e
_v20g.MouseIconEnabled = _v24f
end
local function _v24k()
pcall(function() _v20h:UnbindFromRenderStep(_v24c) end)
for _v24l, _v24m in ipairs(_v24g) do pcall(function() _v24m:Disconnect() end) end
if _v24d then
_v24d = false
pcall(_v24j)
end
end
local _v24n = {}
for _v24o, _v24p in pairs(_v20i.NEST) do
for _v24q, _v24r in ipairs(_v24p) do _v24n[_v24r] = _v24o end
end
local _v24s = {}
for _v24t, _v24u in pairs(_v20i.ORDER or {}) do
_v24s[_v24t] = {}
for _v24v, _v24w in ipairs(_v24u) do _v24s[_v24t][_v24w] = _v24v end
end
local _v24x = {}
for _v24y in pairs(_v20i.NEST) do _v24x[_v24y] = true end
local _v24z = {}
local function _v250(_v251)
if _v24z[_v251] then return end
_v24z[_v251] = true
for _v252, _v253 in ipairs(_v20i.NEST[_v251] or {}) do _v250(_v253) end
end
for _v254, _v255 in ipairs(_v20i.LOCKED or {}) do _v250(_v255) end
local _v256 = { EZ = _v20f, kind = _v4.guiKindOf(_v20f), win = nil, ctx = nil, modal = nil, cfgOpts = nil }
local _v257 = { log = {}, replaying = false }
local _v25a = setmetatable({}, { __index = function(_v258, _v259) return _v256.ctx and _v256.ctx[_v259] end })
local _v25b = false
local _v25c = _v20g.TouchEnabled and not _v20g.KeyboardEnabled
local function _v25d(_v25e)
local _v25g = function(_v25f) return _v24a:SwapGui(_v25f) end
if _v25e == _ei9m[755] then
return { current = _ei9m[2919-19], options = { _ei9m[6+2048], _ei9m[1902-12], _ei9m[361-7], _ei9m[2+1263] }, pick = _v25g }
end
return { options = { { Name = _ei9m[2342], Accent = Color3.fromRGB(140, 95, 255), Ink = Color3.fromRGB(12, 10, 18),
Blurb = _ei9m[203+2367] } }, pick = _v25g }
end
local function _v25h(_v25i, _v25j)
local _v25k = _v25i:CreateWindow({
Title = _v248.Title or _ei9m[842],
Website = _ei9m[5+822],
Discord = _ei9m[6+181],
GuiSwap = _v25d(_v25j),
OnUnload = function()
if _v24b or _v25b then return end
_v24b = true
if _v24a.onUnload then pcall(_v24a.onUnload) end
_v24k()
end,
})
local _v25l = { win = _v25k, tabs = {}, masters = {}, parentOf = _v24n, lastHeader = {}, rank = _v24s,
hasKids = _v24x, locked = _v24z, rec = _v257 }
for _v25m, _v25n in ipairs(_v20i.MAIN) do _v25l.tabs[_v25n] = _v25k:AddTab(_v25n) end
local _v25o
if not _v25c then
_v25o = Instance.new(_ei9m[7+1587])
_v25o.Name = _ei9m[6+317]
_v25o.Modal = true
_v25o.Text = ""
_v25o.AutoButtonColor = false
_v25o.BackgroundTransparency = 1
_v25o.Size = UDim2.new(0, 1, 0, 1)
_v25o.Visible = false
_v25o.Parent = _v25k._gui
end
return _v25k, _v25l, _v25o
end
_v256.win, _v256.ctx, _v256.modal = _v25h(_v20f, _v256.kind)
_v249.__PX_EZ_WIN = _v256.win
if not _v25c then
pcall(function()
_v20h:BindToRenderStep(_v24c, Enum.RenderPriority.Camera.Value + 1, function()
local _v25p, _v25q = _v256.win, _v256.modal
if _v25p and _v25p._gui and _v25p._visible then
if _v25q and not _v25q.Visible then _v25q.Visible = true end
if not _v24d then
_v24d = true
else
if _v20g.MouseBehavior ~= Enum.MouseBehavior.Default then _v24e = _v20g.MouseBehavior end
if not _v20g.MouseIconEnabled then _v24f = false end
end
_v20g.MouseBehavior = Enum.MouseBehavior.Default
_v20g.MouseIconEnabled = true
elseif _v24d and not _v25b then
_v24d = false
if _v25q then _v25q.Visible = false end
_v24j()
end
end)
end)
end
function _v24a:IsVisible()
return _v256.win ~= nil and _v256.win._gui ~= nil and _v256.win._visible == true
end
function _v24a:Notify(_v25r, _v25s)
if _v256.win and _v256.win._gui then return _v256.win:Notify(_v25r, _v25s or 3) end
return nil
end
function _v24a:SetConfig(_v25t)
_v256.cfgOpts = _v25t
return _v256.win:SetConfig(_v25t)
end
function _v24a:Destroy()
_v24b = true
_v24k()
pcall(function() _v256.win:Destroy() end)
if _v249.__PX_EZ_WIN == _v256.win then _v249.__PX_EZ_WIN = nil end
end
function _v24a:GetGui()
return _v256.kind
end
function _v24a:GetLook()
local _v25u
pcall(function() _v25u = _v256.win:GetTheme() end)
return _v25u
end
local function _v25v(_v25w)
local _v25x = _v25w.obj
if type(_v25x) ~= _ei9m[549-19] then return nil end
local _v25y = {}
pcall(function()
local _v25z = _v25w.method
if _v25z == _ei9m[2+1670] then _v25y.value = _v25x.Value; _v25y.key = _v25x.Key
elseif _v25z == _ei9m[1181+1065] then _v25y.value = _v25x.Value
elseif _v25z == _ei9m[1809-13] then _v25y.value = _v25x.Selected; _v25y.items = rawget(_v25x, _ei9m[3+2000])
elseif _v25z == _ei9m[1659+1030] then _v25y.key = _v25x.Key
elseif _v25z == _ei9m[7+783] then _v25y.text = rawget(_v25x, _ei9m[3+1531]) end
end)
return _v25y
end
local function _v260(_v261, _v262)
if type(_v261.cfg) ~= _ei9m[2056] then return _v261.cfg end
local _v263 = {}
for _v264, _v265 in pairs(_v261.cfg) do _v263[_v264] = _v265 end
if _v262 then
local _v266 = _v261.method
if (_v266 == _ei9m[467+989] or _v266 == _ei9m[185-6]) and _v262.value ~= nil then _v263.Default = _v262.value
elseif _v266 == _ei9m[1084] then
if _v262.value ~= nil then _v263.Default = _v262.value end
if _v262.items then _v263.Items, _v263.Options = _v262.items, nil end
elseif _v266 == _ei9m[14+221] and _v262.key then _v263.Default = _v262.key end
end
return _v263
end
local function _v267(_v268, _v269)
if type(_v268) ~= _ei9m[990-15] or type(_v269) ~= _ei9m[1327-14] or _v268 == _v269 then return end
for _v26a in pairs(_v268) do
if _v26a ~= _ei9m[2997-9] and _v26a ~= _ei9m[1768-11] then _v268[_v26a] = nil end
end
for _v26b, _v26c in pairs(_v269) do _v268[_v26b] = _v26c end
setmetatable(_v268, getmetatable(_v269))
end
local function _v26d(_v26e, _v26f)
local _v26g = _v26e.obj
if type(_v26g) ~= _ei9m[6+396] or not _v26f then return end
pcall(function()
local _v26h = _v26e.method
if _v26h == _ei9m[190+435] then
if _v26f.value ~= nil and _v26g.Set then _v26g:Set(_v26f.value, true) end
if typeof(_v26f.key) == _ei9m[7+1740] and _v26f.key ~= Enum.KeyCode.Unknown and _v26g.SetKey then _v26g:SetKey(_v26f.key, true) end
elseif _v26h == _ei9m[313+414] or _v26h == _ei9m[1759] then
if _v26f.value ~= nil and _v26g.Set then _v26g:Set(_v26f.value, true) end
elseif _v26h == _ei9m[19+0] then
if _v26f.key and _v26g.Set then _v26g:Set(_v26f.key, true) end
elseif _v26h == _ei9m[278+1810] then
if _v26f.text ~= nil and _v26g.SetText then _v26g:SetText(_v26f.text) end
end
end)
end
function _v24a:SwapGui(_v26i)
_v26i = tostring(_v26i or "")
local _v26j = (_v26i == _ei9m[1799-5]) and _ei9m[2+247] or _ei9m[1381]
if _v25b or _v24b then return false end
if _v26j == _v256.kind then
if _v26j == _ei9m[7+665] then
pcall(function()
if _v256.win._pickTheme then _v256.win:_pickTheme(_v26i) else _v256.win:SetTheme(_v26i) end
end)
end
return true
end
local _v26k = os.clock()
local _v26l, _v26m = _v4.guiLibrary(_v26j)
if not _v26l then
_v24a:Notify(_ei9m[287+314] .. _v26i .. ": " .. tostring(_v26m), 4)
return false
end
_v25b = true
local _v26n = {}
for _v26o, _v26p in ipairs(_v257.log) do _v26n[_v26o] = _v25v(_v26p) end
local _v26q = { win = _v256.win, ctx = _v256.ctx, modal = _v256.modal, EZ = _v256.EZ, kind = _v256.kind }
local _v26r, _v26s = {}, nil
local okBuild, buildErr = pcall(function()
local _v26t, _v26u, _v26v = _v25h(_v26l, _v26j)
_v26t._autoLoaded = true
_v256.win, _v256.ctx, _v256.modal, _v256.EZ, _v256.kind = _v26t, _v26u, _v26v, _v26l, _v26j
_v257.replaying = true
local _v26w = _v4.SUPPRESS_TOGGLE_NOTIFY
_v4.SUPPRESS_TOGGLE_NOTIFY = true
for _v26x, _v26y in ipairs(_v257.log) do
local _v26z, _v270 = pcall(_v26y.proxy._raw[_v26y.method], _v26y.proxy, _v260(_v26y, _v26n[_v26x]))
if not _v26z then _v26s = _v26s or (_v26y.method .. " " .. tostring(type(_v26y.cfg) == _ei9m[412+141] and _v26y.cfg.Name or _v26y.cfg) .. ": " .. tostring(_v270)) end
_v26r[_v26x] = _v270
end
_v4.SUPPRESS_TOGGLE_NOTIFY = _v26w
_v257.replaying = false
if _v26s then error(_v26s, 0) end
end)
_v257.replaying = false
if not okBuild then
local _v271, _v272 = _v256.win, _v256.modal
_v256.win, _v256.ctx, _v256.modal, _v256.EZ, _v256.kind = _v26q.win, _v26q.ctx, _v26q.modal, _v26q.EZ, _v26q.kind
if _v271 and _v271 ~= _v26q.win then pcall(function() _v271.OnUnload = nil _v271:Destroy() end) end
if _v272 and _v272 ~= _v26q.modal then pcall(function() _v272:Destroy() end) end
_v25b = false
warn(_ei9m[182] .. _v26i .. _ei9m[7+217] .. tostring(buildErr))
_v24a:Notify(_ei9m[1804] .. _v26i, 4)
return false
end
for _v273, _v274 in ipairs(_v257.log) do
_v267(_v274.obj, _v26r[_v273])
_v26d(_v274, _v26n[_v273])
end
if _v256.cfgOpts then
local _v275 = {}
for _v276, _v277 in pairs(_v256.cfgOpts) do _v275[_v276] = _v277 end
_v275.AutoLoad = false
pcall(function() _v256.win:SetConfig(_v275) end)
end
_v249.__PX_EZ_WIN = _v256.win
pcall(function() _v26q.win.OnUnload = nil _v26q.win:Destroy() end)
if _v26q.modal then pcall(function() _v26q.modal:Destroy() end) end
if _v26j == _ei9m[2038-15] then
pcall(function()
if _v256.win._pickTheme then _v256.win:_pickTheme(_v26i) else _v256.win:SetTheme(_v26i) end
end)
end
_v25b = false
_v4.saveGuiChoice(_v26j)
_v24a:Notify(string.format(_ei9m[4+791], _v26i, os.clock() - _v26k), 3)
return true
end
function _v24a:AddTab(_v278)
local _v279 = {}
function _v279:AddSubTab(_v27a)
return _v22x(_v25a, type(_v27a) == _ei9m[2+2411] and _v27a.Name or tostring(_v27a))
end
return _v279
end
_v24a.tabs.Settings = _v22x(_v25a, _ei9m[843])
return _v24a
end
return _v20j
end
_v4.FUSION_LAYOUT = (function()
return {
kind = _ei9m[382+337], version = 1, hub = _ei9m[423],
match = 3,
pages = {
{ name = _ei9m[2+671], icon = _ei9m[907+461], blurb = _ei9m[42+430],
sections = {
{ title = _ei9m[952], note = _ei9m[1481] },
{ title = _ei9m[1454-12], note = _ei9m[2602] },
{ title = _ei9m[332+52], note = _ei9m[7+643] },
} },
{ name = _ei9m[416+522], icon = _ei9m[2962], blurb = _ei9m[637+586],
sections = {
{ title = _ei9m[5+2987], note = _ei9m[293+1659] },
{ title = _ei9m[671+320], note = _ei9m[2117] },
} },
{ name = _ei9m[743+2044], icon = _ei9m[409], blurb = _ei9m[1745-7],
sections = {
{ title = _ei9m[2458], note = _ei9m[2+1817] },
{ title = _ei9m[360+246], note = _ei9m[6+1850] },
} },
{ name = _ei9m[963+546], icon = _ei9m[5+676], blurb = _ei9m[994+95],
sections = {
{ title = _ei9m[2+1712], note = _ei9m[790-16] },
{ title = _ei9m[1909-13], note = _ei9m[2189-18] },
{ title = _ei9m[29+2355], note = _ei9m[116+1019] },
{ title = _ei9m[1327-15], note = _ei9m[779-7] },
} },
{ name = _ei9m[1895+875], icon = _ei9m[376+31], blurb = _ei9m[2810],
sections = {
{ title = _ei9m[85+171], note = _ei9m[1640] },
{ title = _ei9m[4+2556], note = _ei9m[262+971] },
{ title = _ei9m[444+2177], note = _ei9m[2526-12] },
{ title = _ei9m[303+119], note = _ei9m[2000-4] },
{ title = _ei9m[2+1483], note = _ei9m[2210-1] },
} },
},
features = {
[_ei9m[190-19]] = { page = _ei9m[822+1050], section = 1,
hint = _ei9m[2410-10],
keys = { _ei9m[1214], _ei9m[2467], _ei9m[1208+1456], _ei9m[2975] },
},
[_ei9m[1465-5]] = { page = _ei9m[4+1811], section = 1,
hint = _ei9m[1402],
keys = { _ei9m[1518-11], _ei9m[621-9], _ei9m[876], _ei9m[2+2096], _ei9m[951], _ei9m[307+88] },
},
[_ei9m[2065-12]] = { page = _ei9m[776-16], section = 1,
hint = _ei9m[2038+231],
keys = { _ei9m[59+179], _ei9m[2802], _ei9m[1976], _ei9m[2586], _ei9m[903], _ei9m[2611-3] },
groups = {
{ title = _ei9m[2308-2],
rows = { _ei9m[2+2074], _ei9m[5+345] },
},
{ title = _ei9m[1310-13],
rows = { _ei9m[458+2210], _ei9m[280+1623], _ei9m[2005], _ei9m[2746-4], _ei9m[1604-13],
_ei9m[330+2491] },
},
{ title = _ei9m[844+90],
rows = { _ei9m[7+2364], _ei9m[2381], _ei9m[3+2522] },
},
},
},
[_ei9m[916]] = { page = _ei9m[912+566], section = 2,
hint = _ei9m[1124],
keys = { _ei9m[3+2622], _ei9m[815-12], _ei9m[1056-20], _ei9m[35], _ei9m[580+2138] },
groups = {
{ title = _ei9m[825-11],
rows = { _ei9m[967-19], _ei9m[5+1464], _ei9m[1972-19], _ei9m[42+2211], _ei9m[1561], _ei9m[56+2296] },
},
{ title = _ei9m[3+2181],
rows = { _ei9m[177], _ei9m[1031+1129], _ei9m[6+925], _ei9m[134+179] },
},
},
},
[_ei9m[2+100]] = { page = _ei9m[183+1054], section = 2,
hint = _ei9m[1742-3],
keys = { _ei9m[311+1846], _ei9m[1661], _ei9m[2690-3], _ei9m[2569-10], _ei9m[1001-16] },
},
Rejoin = { page = _ei9m[3023-19], section = 2,
hint = _ei9m[7+1349],
about = _ei9m[960-11],
keys = { _ei9m[5+1563], _ei9m[6+2971], _ei9m[6+1471], _ei9m[5+2021] },
},
[_ei9m[7+36]] = { page = _ei9m[4+584], section = 1,
hint = _ei9m[2961-14],
about = _ei9m[473+31],
keys = { _ei9m[5+2027], _ei9m[4+515], _ei9m[3+2916], _ei9m[684] },
},
[_ei9m[2389]] = { page = _ei9m[468+119], section = 2,
hint = _ei9m[34],
keys = { _ei9m[2651], _ei9m[1550-2], _ei9m[3+3], _ei9m[3+1367], _ei9m[2732-9] },
},
[_ei9m[1390-3]] = { page = _ei9m[4+235], section = 3,
hint = _ei9m[52+15],
about = _ei9m[106+6],
keys = { _ei9m[7+814], _ei9m[1451], _ei9m[5+1458], _ei9m[1662-9], _ei9m[4+2321] },
},
[_ei9m[949-5]] = { page = _ei9m[75+350], section = 1,
hint = _ei9m[804+177],
keys = { _ei9m[2929], _ei9m[786-17], _ei9m[2301-10], _ei9m[3+1842], _ei9m[7+187], _ei9m[1611-11], _ei9m[6+2045] },
},
[_ei9m[809-15]] = { page = _ei9m[622-3], section = 1,
hint = _ei9m[5+706],
keys = { _ei9m[787], _ei9m[2347], _ei9m[4+782] },
},
[_ei9m[360+471]] = { page = _ei9m[42+7], section = 2,
hint = _ei9m[37+222],
keys = { _ei9m[2882], _ei9m[1565], _ei9m[1750+240], _ei9m[132] },
},
[_ei9m[86-7]] = { page = _ei9m[434+445], section = 2,
hint = _ei9m[3+821],
keys = { _ei9m[53+1501], _ei9m[4+2308], _ei9m[1752-19], _ei9m[3+20] },
},
[_ei9m[2187]] = { page = _ei9m[1887],
hint = _ei9m[3+751],
keys = { _ei9m[130+2523], _ei9m[237+312], _ei9m[1651], _ei9m[6+2592], _ei9m[2820] },
},
[_ei9m[2538]] = { page = _ei9m[2118+794],
hint = _ei9m[177-7],
about = _ei9m[979-6],
keys = { _ei9m[183+1045], _ei9m[7+1879], _ei9m[6+1158], _ei9m[1636-10], _ei9m[2869-7], _ei9m[2022+140] },
},
[_ei9m[5+2073]] = { page = _ei9m[6+715],
hint = _ei9m[7+2538],
keys = { _ei9m[5+2772], _ei9m[1147+551], _ei9m[75+24], _ei9m[6+66], _ei9m[400+621], _ei9m[205+620] },
},
[_ei9m[138+1872]] = { page = _ei9m[1731-12], section = 1,
hint = _ei9m[2861-10],
keys = { _ei9m[1740-8], _ei9m[53+31], _ei9m[77+240], _ei9m[1369+77], _ei9m[2361+647], _ei9m[959-12] },
},
Reach = { page = _ei9m[994+405], section = 1,
hint = _ei9m[1075+1513],
keys = { _ei9m[3+1394], _ei9m[1874-9], _ei9m[2852], _ei9m[1380], _ei9m[6+67] },
},
[_ei9m[1235+971]] = { page = _ei9m[2047-11], section = 2,
hint = _ei9m[2649-1],
keys = { _ei9m[817-13], _ei9m[194+1776], _ei9m[978-13], _ei9m[2+2703] },
},
[_ei9m[1215]] = { page = _ei9m[3+1976], section = 2,
hint = _ei9m[460],
keys = { _ei9m[461+2434], _ei9m[551+206], _ei9m[175], _ei9m[425+442] },
},
[_ei9m[4+333]] = { page = _ei9m[2025-9], section = 2,
hint = _ei9m[1299],
keys = { _ei9m[4+802], _ei9m[1130-2], _ei9m[2188-16], _ei9m[174+891], _ei9m[5+2266] },
},
Players = { page = _ei9m[2835], section = 1,
hint = _ei9m[103-17],
keys = { _ei9m[2828], _ei9m[699], _ei9m[1188], _ei9m[162+1586], _ei9m[218+528], _ei9m[364+1044], _ei9m[1744] },
groups = {
{ title = _ei9m[28],
rows = { _ei9m[1588-2], _ei9m[2+2254], _ei9m[448+41], _ei9m[1881], _ei9m[7+655], _ei9m[2+1157], _ei9m[852], _ei9m[1623], _ei9m[581+34], _ei9m[97-15], _ei9m[1921], _ei9m[284-7], _ei9m[134-13], _ei9m[481-11], _ei9m[2+912], _ei9m[2349-12], _ei9m[1048-18], _ei9m[2323], _ei9m[94+824] },
},
{ title = _ei9m[2555-1],
rows = { _ei9m[7+1409], _ei9m[347], _ei9m[3+2032], _ei9m[1151+1], _ei9m[586+32], _ei9m[1735] },
},
{ title = _ei9m[6+33], flatten = _ei9m[7+2160],
rows = { _ei9m[1096], _ei9m[4+1022], _ei9m[635+321] },
dim = { [_ei9m[550-15]] = _ei9m[1710-13], [_ei9m[1288+1645]] = _ei9m[719-2] },
},
},
},
[_ei9m[514]] = { page = _ei9m[2970], section = 1,
hint = _ei9m[2773-13],
keys = { _ei9m[2922], _ei9m[887-7], _ei9m[6+1940] },
},
[_ei9m[882]] = { page = _ei9m[2383-18], section = 1,
hint = _ei9m[2272],
keys = { _ei9m[1110], _ei9m[481], _ei9m[2251+197], _ei9m[660+2126], _ei9m[274-10] },
},
[_ei9m[1213+1586]] = { page = _ei9m[780+466], section = 1,
hint = _ei9m[3+614],
keys = { _ei9m[1000+1068], _ei9m[1195+874] },
},
[_ei9m[2+560]] = { page = _ei9m[2387-11], section = 2,
hint = _ei9m[115+68],
keys = { _ei9m[1562], _ei9m[3+1203], _ei9m[1113-6], _ei9m[1231] },
},
[_ei9m[1309]] = { page = _ei9m[3+2737], section = 2,
hint = _ei9m[7+2860],
keys = { _ei9m[1280+3], _ei9m[1727-10], _ei9m[1843], _ei9m[1716] },
},
Skin = { page = _ei9m[841], section = 2,
hint = _ei9m[958+1754],
keys = { _ei9m[2+106], _ei9m[100], _ei9m[2607], _ei9m[204+64], _ei9m[2306-11] },
},
Tracers = { page = _ei9m[103+1553], section = 2,
hint = _ei9m[206+442],
keys = { _ei9m[252+138], _ei9m[127+1890], _ei9m[743-7], _ei9m[5+2006] },
},
Fullbright = { page = _ei9m[697+814], section = 3,
hint = _ei9m[2665],
keys = { _ei9m[676], _ei9m[50+862], _ei9m[1992], _ei9m[1326] },
},
[_ei9m[800-8]] = { page = _ei9m[825-17], section = 3,
hint = _ei9m[678+231],
keys = { _ei9m[916-20], _ei9m[2684-4], _ei9m[431+2138], _ei9m[6+2025] },
},
[_ei9m[136-9]] = { page = _ei9m[2983], section = 3,
hint = _ei9m[1295+429],
keys = { _ei9m[66+891], _ei9m[533+852], _ei9m[311-20], _ei9m[2593-4], _ei9m[875+1222], _ei9m[2+1164] },
},
[_ei9m[1888-3]] = { page = _ei9m[5+738], section = 3,
hint = _ei9m[3+2904],
keys = { _ei9m[2+2702], _ei9m[2078-19], _ei9m[610+840], _ei9m[6+150], _ei9m[501+511], _ei9m[1217+1750] },
},
[_ei9m[1196]] = { page = _ei9m[4+482], section = 4,
hint = _ei9m[667],
keys = { _ei9m[1708], _ei9m[2800], _ei9m[1018-17] },
},
[_ei9m[310]] = { page = _ei9m[1212+157], section = 4,
hint = _ei9m[761],
keys = { _ei9m[1212+36], _ei9m[2380-13], _ei9m[2165] },
},
[_ei9m[2158-10]] = { page = _ei9m[2919-20], section = 4,
hint = _ei9m[449+165],
keys = { _ei9m[458], _ei9m[2344], _ei9m[104+161] },
},
[_ei9m[1095+1333]] = { page = _ei9m[394-11], section = 4,
hint = _ei9m[5+1160],
keys = { _ei9m[689], _ei9m[2317], _ei9m[291+130], _ei9m[296+32], _ei9m[2261-1], _ei9m[326+591] },
},
[_ei9m[1924-4]] = { page = _ei9m[1696-20], section = 4,
hint = _ei9m[1622-18],
keys = { _ei9m[513+1369], _ei9m[18+622], _ei9m[479+2242], _ei9m[475+843], _ei9m[2459-16] },
},
[_ei9m[2543-2]] = { page = _ei9m[100-4], section = 1,
hint = _ei9m[5+1258],
keys = { _ei9m[2089], _ei9m[1943], _ei9m[775+283], _ei9m[1687-14], _ei9m[3+1184], _ei9m[6+2952] },
},
[_ei9m[1718-9]] = { page = _ei9m[1579-7], section = 1,
hint = _ei9m[272+304],
keys = { _ei9m[2732], _ei9m[1678-4], _ei9m[1040], _ei9m[2037-3] },
},
[_ei9m[2922-11]] = { page = _ei9m[2485-8], section = 2,
hint = _ei9m[5+2995],
about = _ei9m[1396],
keys = { _ei9m[1095-3], _ei9m[2409-4], _ei9m[780-1], _ei9m[2615], _ei9m[2190], _ei9m[2837-7], _ei9m[7+2992] },
},
[_ei9m[1649-3]] = { page = _ei9m[4+330], section = 2,
hint = _ei9m[441+1100],
about = _ei9m[1875],
keys = { _ei9m[228], _ei9m[350+704], _ei9m[707+1540], _ei9m[4+1453], _ei9m[2+1336], _ei9m[368+982] },
},
[_ei9m[1016-13]] = { page = _ei9m[2+1743], section = 2,
hint = _ei9m[6+700],
about = _ei9m[2206+212],
keys = { _ei9m[2310], _ei9m[1462+31], _ei9m[124+1378], _ei9m[2+2564], _ei9m[3+213], _ei9m[952+918], _ei9m[834] },
},
[_ei9m[2293-6]] = { page = _ei9m[5+2858], section = 2,
hint = _ei9m[5+2057],
about = _ei9m[1629+1107],
keys = { _ei9m[1111-11], _ei9m[1485-17], _ei9m[4+2245], _ei9m[718], _ei9m[2771-16], _ei9m[2536-3], _ei9m[876-5] },
},
Fly = { page = _ei9m[2341+322], section = 2,
hint = _ei9m[1625+394],
keys = { _ei9m[6+753], _ei9m[2804-3], _ei9m[4+2725], _ei9m[2446-2] },
},
[_ei9m[1662]] = { page = _ei9m[2828-5], section = 2,
hint = _ei9m[1839],
keys = { _ei9m[566], _ei9m[1554-7], _ei9m[4+1186], _ei9m[1363-4], _ei9m[2102-8] },
},
[_ei9m[1561+1018]] = { page = _ei9m[398+411], section = 2,
hint = _ei9m[1704],
keys = { _ei9m[1617-14], _ei9m[925-15], _ei9m[2335], _ei9m[2218] },
},
[_ei9m[1585]] = { page = _ei9m[2419], section = 2,
hint = _ei9m[2+2000],
keys = { _ei9m[2222-15], _ei9m[6+244], _ei9m[306+1092], _ei9m[2938], _ei9m[1840] },
},
[_ei9m[1150-18]] = { page = _ei9m[2739], section = 3,
hint = _ei9m[768+827],
keys = { _ei9m[2429+176], _ei9m[152+2155], _ei9m[959-16], _ei9m[2633-1], _ei9m[2432], _ei9m[93] },
},
[_ei9m[299]] = { page = _ei9m[114+1049], section = 3,
hint = _ei9m[750],
keys = { _ei9m[1271+1037], _ei9m[1588-1], _ei9m[1764], _ei9m[751+61], _ei9m[7+2472], _ei9m[1905], _ei9m[1971-13] },
groups = {
{ title = _ei9m[1350-18],
rows = { _ei9m[1037-9], _ei9m[4+195], _ei9m[172+199], _ei9m[1780], _ei9m[872+225], _ei9m[7+87],
_ei9m[1684], _ei9m[7+1784] },
},
{ title = _ei9m[1040-17],
rows = { _ei9m[2282-19], _ei9m[6+1331] },
},
},
},
[_ei9m[442+75]] = { page = _ei9m[3026-17], section = 3,
hint = _ei9m[1060-11],
keys = { _ei9m[3+581], _ei9m[1156], _ei9m[4+2411], _ei9m[108+2223] },
},
[_ei9m[3+1783]] = { page = _ei9m[2684], section = 4,
hint = _ei9m[1354-3],
keys = { _ei9m[412-4], _ei9m[394+788], _ei9m[180-7], _ei9m[1783+1149] },
},
[_ei9m[1311-4]] = { page = _ei9m[1281], section = 4,
hint = _ei9m[2625-3],
keys = { _ei9m[2048], _ei9m[1660], _ei9m[47+137], _ei9m[1053-10] },
},
Minimap = { page = _ei9m[1365-18], section = 5,
hint = _ei9m[1467-9],
keys = { _ei9m[64-18], _ei9m[2515], _ei9m[184-12], _ei9m[1947-6] },
},
[_ei9m[2+22]] = { page = _ei9m[382+344], section = 5,
hint = _ei9m[2156-17],
keys = { _ei9m[39-3], _ei9m[811], _ei9m[1176], _ei9m[2387-14], _ei9m[1002-8], _ei9m[607+299] },
},
[_ei9m[7+1136]] = { page = _ei9m[565-9], section = 5,
hint = _ei9m[5+1686],
keys = { _ei9m[2221-18], _ei9m[1677-18], _ei9m[756], _ei9m[3+2017], _ei9m[950+259], _ei9m[932] },
},
[_ei9m[2585]] = { page = _ei9m[1955], section = 5,
hint = _ei9m[2353],
keys = { _ei9m[581], _ei9m[1557], _ei9m[2+1796], _ei9m[270-17], _ei9m[1138-12] },
},
},
alias = {
[_ei9m[2224]] = _ei9m[664+1196],
[_ei9m[67+134]] = _ei9m[1201+1696],
[_ei9m[56+898]] = _ei9m[561],
[_ei9m[2000+93]] = _ei9m[81-18],
[_ei9m[2861]] = _ei9m[244-13],
[_ei9m[999+570]] = _ei9m[7+2602],
[_ei9m[1665]] = _ei9m[5+2507],
[_ei9m[2+2135]] = _ei9m[370+12],
[_ei9m[502-19]] = _ei9m[1253-17],
[_ei9m[2300-19]] = _ei9m[2566-11],
[_ei9m[1860+576]] = _ei9m[503],
[_ei9m[1205]] = _ei9m[1301-12],
[_ei9m[397+2436]] = _ei9m[739+779],
[_ei9m[2363]] = _ei9m[2+2314],
[_ei9m[2712-16]] = _ei9m[2913-15],
[_ei9m[277+2]] = _ei9m[2859],
[_ei9m[7+2503]] = _ei9m[4+1920],
},
starters = {
{ step = 1, page = _ei9m[2744], name = _ei9m[2164], why = _ei9m[1156+76] },
{ step = 2, page = _ei9m[225+21], name = _ei9m[42+144], why = _ei9m[2+36] },
{ step = 3, page = _ei9m[1177], name = _ei9m[14+6], why = _ei9m[4+1779] },
{ step = 4, page = _ei9m[1496], name = _ei9m[2072-1], why = _ei9m[1624-7] },
{ step = 5, page = _ei9m[3+2259], name = _ei9m[594+445], why = _ei9m[6+1330] },
{ step = 6, page = _ei9m[2+2548], name = _ei9m[1919-19], why = _ei9m[1358] },
{ step = 7, page = _ei9m[3+2579], name = _ei9m[778], why = _ei9m[2125-13] },
{ step = 8, page = _ei9m[1086], name = _ei9m[7+2435], why = _ei9m[2778] },
},
uncounted = { _ei9m[2522], _ei9m[4+546] },
skip = { _ei9m[2+2176], _ei9m[2719-17], _ei9m[1724-11], _ei9m[5+568], _ei9m[423+451], _ei9m[830] },
active = { name = _ei9m[305-9], icon = _ei9m[106+52], blurb = _ei9m[844],
empty = _ei9m[14+0], turn_all_off = _ei9m[3+966] },
}
end)()
_v4.GUI_SRC, _v4.GUI_RAW = {}, {}
_v4.GUI_FILES = {
Fusion = { file = _ei9m[1808+205], url = _ei9m[2+1206] },
EZV4 = { file = _ei9m[1106+857], url = _ei9m[1535] },
}
function _v4.guiKindOf(_v27b)
local _v27c = type(_v27b) == _ei9m[6+1734] and tostring(rawget(_v27b, _ei9m[445+977]) or "") or ""
if _v27c == _ei9m[1639] then return _ei9m[789] end
if _v27c:find(_ei9m[223-10]) then return _ei9m[791] end
return "V1"
end
function _v4.guiChoicePath()
local _v27d = 0
pcall(function() _v27d = _v2.UserId end)
return _ei9m[2490] .. tostring(_v27d) .. _ei9m[2829-18]
end
function _v4.saveGuiChoice(_v27e)
pcall(function()
if type(isfolder) == _ei9m[998+852] and not isfolder(_ei9m[1910]) then makefolder(_ei9m[2+377]) end
writefile(_v4.guiChoicePath(), tostring(_v27e))
end)
end
function _v4.guiChoice()
local _v27f, _v27g = pcall(function()
if type(isfile) == _ei9m[4+407] and not isfile(_v4.guiChoicePath()) then return nil end
return readfile(_v4.guiChoicePath())
end)
return _v27f and type(_v27g) == _ei9m[2073] and _v27g:match(_ei9m[1410-20]) or nil
end
function _v4.guiPrefetch(_v27h, _v27i)
local _v27j = _v4.GUI_FILES[_v27h]
if not _v27j or _v4.GUI_SRC[_v27h] or _v4.GUI_RAW[_v27h] then return end
pcall(function()
if type(isfile) == _ei9m[2871] and not isfile(_v27j.file) then return end
local _v27k = readfile(_v27j.file)
if type(_v27k) == _ei9m[2496] and #_v27k > 0 then _v4.GUI_RAW[_v27h] = _v27k end
end)
if _v27i and not _v4.GUI_RAW[_v27h] then
pcall(function()
local _v27l = game:HttpGet(_v27j.url)
if type(_v27l) == _ei9m[6+2171] and #_v27l > 0 and not _v27l:find(_ei9m[754+380]) then _v4.GUI_RAW[_v27h] = _v27l end
end)
end
end
function _v4.guiLibrary(_v27m)
local _v27n = _v4.GUI_FILES[_v27m]
if not _v27n then return nil, _ei9m[7+520] .. tostring(_v27m) end
local function _v27o(_v27p)
if type(_v27p) ~= _ei9m[777+873] or #_v27p == 0 or _v27p:find(_ei9m[3+2420]) then return nil end
local _v27q = loadstring(_v27p)
if not _v27q then return nil end
local _v27r, _v27s = pcall(_v27q)
if _v27r and type(_v27s) == _ei9m[174+885] and _v4.guiKindOf(_v27s) == _v27m then
_v4.GUI_SRC[_v27m], _v4.GUI_RAW[_v27m] = _v27p, nil
return _v27s
end
return nil
end
local _v27t = _v27o(_v4.GUI_SRC[_v27m]) or _v27o(_v4.GUI_RAW[_v27m])
if _v27t then return _v27t end
_v4.guiPrefetch(_v27m, true)
_v27t = _v27o(_v4.GUI_RAW[_v27m])
if _v27t then return _v27t end
return nil, _ei9m[2307-6] .. _v27m .. _ei9m[2810-13]
end
function _v4.loadLibrary()
_v4.guiPrefetch(_ei9m[4+2840])
_v4.guiPrefetch(_ei9m[1247])
if _v4.guiChoice() == _ei9m[180-19] then
local _v27u = _v4.guiLibrary(_ei9m[6+2765])
if _v27u then return _v4.ezBridge(_v27u) end
end
local _v27v = { _ei9m[722], _ei9m[192-2] }
local _v27w = _ei9m[5+2076]
local function _v27x(_v27y, _v27z)
local _v280, _v281 = loadstring(_v27y)
if not _v280 then return nil, _v27z .. _ei9m[1666+1064] .. tostring(_v281) end
local _v282, _v283 = pcall(_v280)
if _v282 and type(_v283) == _ei9m[3+2382] then
local _v284 = _v4.guiKindOf(_v283)
if _v4.GUI_FILES[_v284] then _v4.GUI_SRC[_v284], _v4.GUI_RAW[_v284] = _v27y, nil end
return _v4.ezBridge(_v283)
end
return nil, _v27z .. _ei9m[1102+1419] .. tostring(_v283)
end
local _v285, _v286 = pcall(function()
if type(isfile) == _ei9m[416+2530] and not isfile(_v27w) then return nil end
return readfile(_v27w)
end)
if _v285 and type(_v286) == _ei9m[2079] and #_v286 > 0 then
local _v287, _v288 = _v27x(_v286, _ei9m[4+2300])
if _v287 then return _v287 end
warn(_ei9m[459] .. tostring(_v288) .. _ei9m[468-11])
end
local _v289 = _ei9m[7+900]
for _v28a = 1, 3 do
local _v28b = _v27v[_v28a < 3 and 1 or 2]
local _v28c, _v28d = pcall(function() return game:HttpGet(_v28b) end)
if _v28c and type(_v28d) == _ei9m[1021+746] and #_v28d > 0 and not _v28d:find(_ei9m[1715+929]) then
local _v28e, _v28f = _v27x(_v28d, _ei9m[1809-9])
if _v28e then return _v28e end
_v289 = _v28f
else
_v289 = _ei9m[1455-3] .. tostring(_v28d) .. ")"
end
if _v28a < 3 then task.wait(1) end
end
return nil, _v289
end
_v4.Library, _v4.libErr = _v4.loadLibrary()
_v4.xlog(_v4.Library and _ei9m[3015] or (_ei9m[142+2788] .. tostring(_v4.libErr)))
if not _v4.Library then
pcall(function()
game:GetService(_ei9m[541-8]):SetCore(_ei9m[33+2161], {
Title = _ei9m[2+2627], Text = _ei9m[707] .. tostring(_v4.libErr) .. _ei9m[5+1206], Duration = 10,
})
end)
warn(_ei9m[1187-20] .. tostring(_v4.libErr))
_v4.UNLOADED = true
return
end
pcall(function()
local _v28g = getgenv and getgenv()
if _v28g and _v28g.EZGuiOne_Layout == nil and type(_v4.FUSION_LAYOUT) == _ei9m[831+1295] then _v28g.EZGuiOne_Layout = _v4.FUSION_LAYOUT end
end)
local _v28h = _v4.Library.new({Title = _ei9m[1545-9]})
_v4.xlog(_ei9m[2956])
_v4.Hub = _v28h
_v4.GUI_SECTION_INFO = false
pcall(function()
_v4.GUI_SECTION_INFO = (_v4.Library and _v4.Library.Caps and _v4.Library.Caps.sectionInfo) and true or false
end)
function _v4.section(_v28i, _v28j, _v28k)
if _v4.GUI_SECTION_INFO and _v28k then
return _v28i:AddSection({ Name = _v28j, Info = _v28k })
end
return _v28i:AddSection(_v28j)
end
_v4.SUPPRESS_TOGGLE_NOTIFY = false
_v4.ALL_TOGGLES = {}
local function _v28l(_v28m)
local _v28n = _v28m.AddToggle
_v28m.AddToggle = function(_v28o, _v28p)
_v28p = _v28p or {}
if _v28p.Keybind == nil then _v28p.Keybind = true end
local _v28q = _v28p.Callback or function() end
local _v28r = _v28p.Name or _ei9m[1593-14]
_v28p.Callback = function(_v28s)
_v28q(_v28s)
if not _v4.SUPPRESS_TOGGLE_NOTIFY then
pcall(function() _v28h:Notify(_v4.displayName(_v28r) .. ": " .. (_v28s and "ON" or _ei9m[6+1265])) end)
end
end
local _v28t = _v28n(_v28o, _v28p)
if _v28r then _v4.ALL_TOGGLES[_v28r] = _v28t end
return _v28t
end
return _v28m
end
_v4.SAVE_DINO_ACTIVE = false
_v4.SAVE_DINO_DEPTH = 700
_v4.SAVE_FLY_SPEED = 250
_v4.SAVE_DIR = "Up"
_v4.SAVE_UP_HEIGHT = 1000
_v4.SAVE_RELEASE_GRACE = 10
local _v28u = false
local _v28v = nil
_v4.AUTO_SAVE_PCT = 30
_v4.AUTO_SAVE = false
_v4.AUTO_SAVE_BLEED = true
_v4.SAVE_ALLOW_REST = true
_v4.saveOriginCF = nil
_v4.saveReturning = false
local _v28w = true
local _v28x = nil
local _v28y = nil
local _v28z = {}
local _v290 = nil
local function _v291()
if _v28x then
pcall(function() _v28x:Destroy() end)
_v28x = nil
end
end
function _v4.getCS()
if _v4.csCache then return _v4.csCache end
if not _v4.CAP.charstate then return nil end
pcall(function() _v4.csCache = require(_v4.WATER_RS.Common.CharacterState) end)
return _v4.csCache
end
function _v4.saveIsResting()
local _v292 = _v4.getCS()
if not _v292 then return false end
local _v293 = false
pcall(function()
local _v294 = _v292.Actions
_v293 = (_v294 and (_v294.Rest or _v294.Sleep)) and true or false
if _v292.RestDebounce then _v293 = true end
end)
return _v293
end
local _v295 = false
local function _v296(_v297)
if _v295 == _v297 then return end
_v295 = _v297
pcall(function()
local _v298 = _v2.Character
if _v298 then _v298:SetAttribute(_ei9m[2666], _v297 and true or nil) end
end)
end
local function _v299()
for _v29a, _v29b in ipairs(_v28z) do pcall(function() _v29b:Disconnect() end) end
_v28z = {}
end
local function _v29c()
if _v4.SAVE_DINO_ACTIVE then return end
if _v4.AFK_FARM and _v4.AFK_FARM_SAFETY then
if _v28v then pcall(function() _v28v:Set(false) end) end
pcall(function() if _v4.Hub then _v4.Hub:Notify(_ei9m[869+21], 5) end end)
return
end
local _v29d = _vjc()
if not _v29d then
pcall(function() _v28h:Notify(_ei9m[2+742]) end)
return
end
pcall(function()
local _v29e = _v2.Character
if _v29e then _v29e:SetAttribute(_ei9m[510], true) end
end)
_v295 = false
_v296(true)
_v4.saveOriginCF = _v29d.CFrame
_v4.saveReturning = false
_v4.SAVE_DINO_ACTIVE = true
_v290 = _v29d
_v28y = nil
_v291()
local _v29f = _ei9m[2498]
local _v29g = _v29d.Position
local _v29h = _v29d.Position.Y
local _v29i = _v29d.CFrame - _v29d.CFrame.Position
local _v29j = true
local _v29k
if _v29j then
_v29k = _v29h + _v4.SAVE_UP_HEIGHT
else
local _v29l = RaycastParams.new()
_v29l.FilterType = Enum.RaycastFilterType.Exclude
_v29l.FilterDescendantsInstances = { _v2.Character, _v28x }
local _v29m = workspace:Raycast(_v29d.Position + Vector3.new(0, 20, 0), Vector3.new(0, -800, 0), _v29l)
local _v29n = (_v29m and _v29m.Position.Y) or _v29h
_v29k = math.min(_v29n, _v29h) - _v4.SAVE_DINO_DEPTH
local _v29o
pcall(function() _v29o = workspace.FallenPartsDestroyHeight end)
if _v29o and _v29k < _v29o + 50 then _v29k = _v29o + 50 end
end
local _v29p = CFrame.new(_v29g) * _v29i
_v299()
local function _v29q(_v29r)
if _v4.UNLOADED or not _v4.SAVE_DINO_ACTIVE then return end
local _v29s = _v290
if not (_v29s and _v29s.Parent) then _v29s = _vjc(); _v290 = _v29s end
if not _v29s then return end
_v29r = math.min(_v29r or 0.016, 0.1)
if _v29f == _ei9m[646] then
local _v29t = _v4.SAVE_FLY_SPEED * _v29r
local _v29u = _v29j and math.min(_v29g.Y + _v29t, _v29k)
or math.max(_v29g.Y - _v29t, _v29k)
_v29g = Vector3.new(_v29g.X, _v29u, _v29g.Z)
_v29p = CFrame.new(_v29g) * _v29i
if (_v29j and _v29u >= _v29k) or (not _v29j and _v29u <= _v29k) then
_v28y = _v29p
if not _v29j then
_v291()
local _v29v = Instance.new(_ei9m[4+1029])
_v29v.Anchored = true; _v29v.CanCollide = true
_v29v.Size = Vector3.new(80, 4, 80); _v29v.Transparency = 1
_v29v.CFrame = CFrame.new(_v29g - Vector3.new(0, 6, 0))
_v29v.Parent = workspace
_v28x = _v29v
end
_v29f = _ei9m[6+552]
end
else
if _v28y then _v29p = _v28y end
end
if _v29f == _ei9m[6+226] and _v4.SAVE_ALLOW_REST then _v296(false)
elseif _v29f ~= _ei9m[3+1281] then _v296(true) end
if _v29f == _ei9m[219+1145] and _v4.saveIsResting() then
pcall(function() if not _v29s.Anchored then _v29s.Anchored = true end end)
return
end
pcall(function()
if _v29f == _ei9m[1981] then
if not _v29s.Anchored then _v29s.Anchored = true end
elseif _v29s.Anchored then _v29s.Anchored = false end
_v29s.CFrame = _v29p
_v29s.AssemblyLinearVelocity = Vector3.zero
_v29s.AssemblyAngularVelocity = Vector3.zero
end)
end
local function _v29w()
if _v4.UNLOADED or not _v4.SAVE_DINO_ACTIVE then return end
local _v29x = _v290
if not (_v29x and _v29x.Parent) then return end
if _v29f == _ei9m[3+1527] and _v4.saveIsResting() then
pcall(function() if not _v29x.Anchored then _v29x.Anchored = true end end)
return
end
pcall(function()
if _v29f == _ei9m[490+484] and _v28y then
if not _v29x.Anchored then _v29x.Anchored = true end
if (_v29x.Position - _v28y.Position).Magnitude > 5 then
_v296(true)
_v29x.CFrame = _v28y
elseif math.abs(_v29x.Position.Y - _v28y.Position.Y) > 1 then
_v29x.CFrame = _v28y
end
end
_v29x.CFrame = _v29p
_v29x.AssemblyLinearVelocity = Vector3.zero
_v29x.AssemblyAngularVelocity = Vector3.zero
end)
end
table.insert(_v28z, _v1.RenderStepped:Connect(_v29q))
table.insert(_v28z, _v1.Heartbeat:Connect(_v29w))
if _v28v then pcall(function() _v28v:Set(true) end) end
pcall(function() _v28h:Notify(_ei9m[5+1817] .. (_v29j and _ei9m[797] or _ei9m[1622-10])) end)
end
function _v4.saveReturnFlight()
if _v4.saveReturning then return end
_v4.saveReturning = true
local ok = pcall(function()
local _v29y = _v4.saveOriginCF
local _v29z = _vjc()
if not (_v29z and _v29z.Parent) then return end
local _v2a0 = 3
pcall(function() _v2a0 = _v29z.Size.Y * 0.5 end)
local _v2a1 = _v29y and _v29y.Position or _v29z.Position
local _v2a2
do
local _v2a3 = _v29y or _v29z.CFrame
local _v2a4 = _v2a3.LookVector
local _v2a5 = Vector3.new(_v2a4.X, 0, _v2a4.Z)
_v2a2 = (_v2a5.Magnitude > 0.01)
and CFrame.lookAt(Vector3.new(), _v2a5.Unit)
or CFrame.new()
end
local _v2a6 = RaycastParams.new()
_v2a6.FilterType = Enum.RaycastFilterType.Exclude
_v2a6.FilterDescendantsInstances = { _v2.Character, _v28x }
local _v2a7 = workspace:Raycast(_v2a1 + Vector3.new(0, 300, 0), Vector3.new(0, -2500, 0), _v2a6)
local _v2a8 = _v2a7 and _v2a7.Position.Y or _v2a1.Y
local _v2a9 = Vector3.new(_v2a1.X, _v2a8 + _v2a0 + 0.5, _v2a1.Z)
local _v2aa = Vector3.new(_v2a1.X, math.max(_v29z.Position.Y, _v2a8 + 40), _v2a1.Z)
pcall(function() _v29z.Anchored = false end)
local _v2ab = _v4.SAVE_FLY_SPEED or 250
local function _v2ac(_v2ad, _v2ae)
local _v2af = os.clock() + (_v2ae or 10)
* math.max(1, _v2ab / math.max(_v4.govCeiling(), 1))
while not _v4.UNLOADED and not _v4.SAVE_DINO_ACTIVE and os.clock() < _v2af do
local _v2ag = _vjc()
if not (_v2ag and _v2ag.Parent) then return end
local _v2ah = _v2ad - _v2ag.Position
if _v2ah.Magnitude < 3 then return end
local _v2ai = _v4.govNext(_v2ag.Position, _v2ad, 0.03, _v2ab)
pcall(function()
_v2ag.CFrame = CFrame.new(_v2ai) * _v2a2
_v2ag.AssemblyLinearVelocity = Vector3.zero
_v2ag.AssemblyAngularVelocity = Vector3.zero
end)
task.wait(0.03)
end
end
_v2ac(_v2aa, 12)
if _v4.SAVE_DINO_ACTIVE then return end
_v2ac(_v2a9, 8)
if _v4.SAVE_DINO_ACTIVE then return end
local _v2aj = _vjc()
if _v2aj and _v2aj.Parent then
pcall(function()
_v2aj.CFrame = CFrame.new(_v2a9 + Vector3.new(0, 1, 0)) * _v2a2
_v2aj.AssemblyLinearVelocity = Vector3.zero
_v2aj.AssemblyAngularVelocity = Vector3.zero
_v2aj.Anchored = true
end)
task.wait(0.2)
pcall(function()
_v2aj.Anchored = false
_v2aj.AssemblyLinearVelocity = Vector3.zero
_v2aj.AssemblyAngularVelocity = Vector3.zero
end)
task.wait(0.3)
pcall(function()
local _v2ak = RaycastParams.new()
_v2ak.FilterType = Enum.RaycastFilterType.Exclude
_v2ak.FilterDescendantsInstances = { _v2.Character }
local _v2al = workspace:Raycast(_v2aj.Position + Vector3.new(0, 20, 0), Vector3.new(0, -400, 0), _v2ak)
if _v2al then
local _v2am = _v2aj.Position.Y - (_v2al.Position.Y + _v2a0)
if _v2am < -0.5 or _v2am > 3 then
_v2aj.CFrame = CFrame.new(_v2al.Position + Vector3.new(0, _v2a0 + 0.5, 0)) * _v2a2
_v2aj.AssemblyLinearVelocity = Vector3.zero
end
end
end)
end
_v28u = false
_v296(false)
pcall(function()
local _v2an = _v2.Character
if _v2an then _v2an:SetAttribute(_ei9m[1297-2], nil) end
end)
pcall(function() _v28h:Notify(_ei9m[242]) end)
end)
if not ok then
_v28u = false
_v296(false)
pcall(function()
local _v2ao = _v2.Character
if _v2ao then
_v2ao:SetAttribute(_ei9m[1956-16], nil)
local _v2ap = _vjc()
if _v2ap then _v2ap.Anchored = false end
end
end)
pcall(function() _v28h:Notify(_ei9m[585]) end)
end
_v4.saveReturning = false
end
function _v4.releaseDino()
if not _v4.SAVE_DINO_ACTIVE then return end
_v4.SAVE_DINO_ACTIVE = false
_v299()
_v28y = nil
_v290 = nil
_v291()
_v28w = false
_v296(true)
task.spawn(function() _v4.saveReturnFlight() end)
_v290 = nil
_v28u = true
task.delay(_v4.SAVE_RELEASE_GRACE, function()
_v28u = false
local _v2aq = _v2.Character
_v295 = false
if _v2aq then pcall(function() _v2aq:SetAttribute(_ei9m[564], nil) end) end
if not (_v4.NO_FALL_DAMAGE or _v4.FOSSIL_FARM) then
if _v2aq then pcall(function() _v2aq:SetAttribute(_ei9m[1754], nil) end) end
end
end)
if _v28v then pcall(function() _v28v:Set(false) end) end
pcall(function() _v28h:Notify(_ei9m[1276-18]) end)
end
table.insert(_v2l, _v2.CharacterAdded:Connect(function()
_v299()
_v28y = nil
_v290 = nil
_v291()
_v4.SAVE_DINO_ACTIVE = false
_v28u = false
_v295 = false
_v4.saveReturning = false
_v4.saveOriginCF = nil
_v4.csCache = nil
_v28w = true
if _v28v then pcall(function() _v28v:Set(false) end) end
end))
_v4.addStep(10, function()
if not _v4.AUTO_SAVE or _v4.AUTO_SAVE_PCT <= 0 or (_v4.AFK_FARM and _v4.AFK_FARM_SAFETY) then return end
local _v2ar = _v2.Character
if not _v2ar then return end
local _v2as = _v2ar:GetAttribute(_ei9m[1973])
local _v2at = _v2ar:GetAttribute(_ei9m[4+645])
if type(_v2as) ~= _ei9m[1418] or type(_v2at) ~= _ei9m[505+1015] or _v2at <= 0 then return end
if _v2as <= 0 then return end
if _v4.AUTO_SAVE_BLEED then
local _v2au = _vki()
local _v2av = _v2au and _v4.bleedForecast[_v2au] or 0
if type(_v2av) == _ei9m[1258-16] and _v2av > 0 then _v2as = math.max(0, _v2as - _v2av) end
end
local _v2aw = (_v2as / _v2at) * 100
if _v2aw <= _v4.AUTO_SAVE_PCT then
if _v28w and not _v4.SAVE_DINO_ACTIVE then
_v28w = false
_v29c()
end
else
_v28w = true
end
end)
_v4.GAIT_ACTION = { Walk = nil, Trot = _ei9m[3+2005], Run = _ei9m[3+1574], Sprint = _ei9m[1388-13] }
function _v4.autoGaitStop()
local _v2ax = _v4.getCS()
if _v2ax and _v2ax.Controls then
pcall(function() _v2ax.Controls:HandleAction(_ei9m[1024], false) end)
for _v2ay, _v2az in pairs(_v4.GAIT_ACTION) do pcall(function() _v2ax.Controls:HandleAction(_v2az, false) end) end
if _v4.gaitUnblocked then
_v4.gaitUnblocked = nil
local _v2b0 = true
pcall(function() _v2b0 = isrbxactive() end)
pcall(function() _v2ax.Controls.WindowUnfocused = not _v2b0 end)
end
end
_v4.gaitHeld = nil
end
_v4.addStep(3, function()
local _v2b1 = _v4.AUTO_GAIT
if _v2b1 and (_v4.AFK_FARM or _v4.LEGIT_FARM or _v4.FOSSIL_FARM or _v4.FLY or _v4.AUTO_FLY
or _v4.SAVE_DINO_ACTIVE or _v4.AS_BUSY or _v4.UNLOADED) then _v2b1 = nil end
if not _v2b1 then
if _v4.gaitHeld then _v4.autoGaitStop() end
return
end
local _v2b2 = _v4.getCS()
local _v2b3 = _v2b2 and _v2b2.Controls
if not _v2b3 then return end
local _v2b4 = true
pcall(function() _v2b4 = isrbxactive() end)
if not _v2b4 then
_v4.gaitUnblocked = true
if _v2b3.WindowUnfocused ~= false then pcall(function() _v2b3.WindowUnfocused = false end) end
if _v2b3.InputWasBlocked == true then pcall(function() _v2b3.InputWasBlocked = false end) end
elseif _v4.gaitUnblocked then
_v4.gaitUnblocked = nil
end
for _v2b5, _v2b6 in pairs(_v4.GAIT_ACTION) do
if _v2b6 and _v2b5 ~= _v2b1 and (_v2b2.Actions and _v2b2.Actions[_v2b6]) == true then
pcall(function() _v2b3:HandleAction(_v2b6, false) end)
end
end
local _v2b7 = _v4.GAIT_ACTION[_v2b1]
if _v2b7 and (_v2b2.Actions and _v2b2.Actions[_v2b7]) ~= true then pcall(function() _v2b3:HandleAction(_v2b7, true) end) end
if (_v2b2.Actions and _v2b2.Actions.Forward) ~= true then pcall(function() _v2b3:HandleAction(_ei9m[1832], true) end) end
_v4.gaitHeld = _v2b1
end)
function _v4.applyFallImmunity(_v2b8)
local _v2b9 = _v2.Character
if _v2b9 then pcall(function() _v2b9:SetAttribute(_ei9m[882-18], _v2b8 and true or nil) end) end
end
_v4.addStep(5, function()
if not (_v4.NO_FALL_DAMAGE or _v4.FOSSIL_FARM or _v4.SAVE_DINO_ACTIVE or _v28u
or _v4.AUTO_FLY or _v4.AFK_FARM or _v4.LEGIT_FARM
or os.clock() < (_v4.flyLandUntil or 0)) then return end
local _v2ba = _v2.Character
if _v2ba and _v2ba:GetAttribute(_ei9m[2819]) ~= true then
pcall(function() _v2ba:SetAttribute(_ei9m[753-13], true) end)
end
local _v2bb = (_v4.SAVE_DINO_ACTIVE and _v295) or _v28u
if _v2bb and _v2ba and _v2ba:GetAttribute(_ei9m[2837]) ~= true then
pcall(function() _v2ba:SetAttribute(_ei9m[1177-2], true) end)
end
end)
_v4.blurOff = setmetatable({}, { __mode = "k" })
_v4.blurHooked = setmetatable({}, { __mode = "k" })
function _v4.killBlur(_v2bc)
if typeof(_v2bc) ~= _ei9m[2282-8] or not _v2bc:IsA(_ei9m[1624+782]) then return end
if not _v4.blurHooked[_v2bc] then
_v4.blurHooked[_v2bc] = true
pcall(function()
table.insert(_v2l, _v2bc:GetPropertyChangedSignal(_ei9m[2+2502]):Connect(function()
if _v4.NO_BLUR and _v2bc.Enabled then _v4.killBlur(_v2bc) end
end))
end)
end
pcall(function()
if _v2bc.Enabled then _v4.blurOff[_v2bc] = true; _v2bc.Enabled = false end
if _v2bc.Size ~= 0 then _v2bc.Size = 0 end
end)
end
function _v4.sweepBlur()
pcall(function()
for _v2bd, _v2be in ipairs(_vho:GetDescendants()) do _v4.killBlur(_v2be) end
end)
pcall(function()
local _v2bf = workspace.CurrentCamera
if _v2bf then for _v2bg, _v2bh in ipairs(_v2bf:GetChildren()) do _v4.killBlur(_v2bh) end end
end)
end
function _v4.restoreBlur()
for _v2bi in pairs(_v4.blurOff) do
pcall(function() if _v2bi.Parent then _v2bi.Enabled = true end end)
end
_v4.blurOff = setmetatable({}, { __mode = "k" })
end
pcall(function()
table.insert(_v2l, _vho.DescendantAdded:Connect(function(_v2bj)
if _v4.NO_BLUR then _v4.killBlur(_v2bj) end
end))
end)
do
local _v2bk = nil
local function _v2bl()
pcall(function() if _v2bk then _v2bk:Disconnect() end end)
local _v2bm = workspace.CurrentCamera
if not _v2bm then return end
_v2bk = _v2bm.ChildAdded:Connect(function(_v2bn) if _v4.NO_BLUR then _v4.killBlur(_v2bn) end end)
table.insert(_v2l, _v2bk)
if _v4.NO_BLUR then _v4.sweepBlur() end
end
_v2bl()
table.insert(_v2l,
workspace:GetPropertyChangedSignal(_ei9m[1607+549]):Connect(_v2bl))
end
_v4.addStep(3, function()
if not _v4.NO_BLUR then return end
_v4.sweepBlur()
end)
local _v2bo = nil
local _v2bp = false
table.insert(_v2l, _v4.UIS.InputBegan:Connect(function(_v2bq, _v2br)
if _v4.UNLOADED or _v2br then return end
local _v2bs = _v2bo and _v2bo.Key
if _v2bs and _v2bs ~= Enum.KeyCode.Unknown and _v2bq.KeyCode == _v2bs then _v2bp = true end
end))
table.insert(_v2l, _v4.UIS.InputEnded:Connect(function(_v2bt)
local _v2bu = _v2bo and _v2bo.Key
if _v2bu and _v2bt.KeyCode == _v2bu then _v2bp = false end
end))
function _v4.instaTurnStep()
if _v4.UNLOADED or not (_v2bp or _v4.mob.insta) then return end
local _v2bv = _vjc()
local _v2bw = workspace.CurrentCamera
if not (_v2bv and _v2bw) then return end
local _v2bx = _v2bw.CFrame.LookVector
local _v2by = Vector3.new(_v2bx.X, 0, _v2bx.Z)
if _v2by.Magnitude < 0.01 then return end
pcall(function()
_v2bv.CFrame = CFrame.lookAt(_v2bv.Position, _v2bv.Position + _v2by.Unit)
_v2bv.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
end)
end
_v4.addStep(1, _v4.instaTurnStep)
table.insert(_v2l, _v1.RenderStepped:Connect(_v4.instaTurnStep))
_v4.TURN_SPEED = 250
_v4.QUICK_TURN = false
function _v4.turnAssistStep(_v2bz)
if _v4.UNLOADED or not _v4.QUICK_TURN or _v4.TURN_SPEED <= 0 then return end
if _v2bp or _v4.mob.insta then return end
if _v4.UIS:GetFocusedTextBox() then return end
local _v2c0 = 0
if _v4.UIS:IsKeyDown(Enum.KeyCode.A) or _v4.mob.turnL then _v2c0 = _v2c0 + 1 end
if _v4.UIS:IsKeyDown(Enum.KeyCode.D) or _v4.mob.turnR then _v2c0 = _v2c0 - 1 end
if _v2c0 == 0 then return end
local _v2c1 = _vjc()
if not _v2c1 then return end
local _v2c2 = math.rad(_v4.TURN_SPEED) * (_v2bz or 1 / 60) * _v2c0
pcall(function()
_v2c1.CFrame = _v2c1.CFrame * CFrame.Angles(0, _v2c2, 0)
_v2c1.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
end)
end
_v4.addStep(1, _v4.turnAssistStep)
table.insert(_v2l, _v1.RenderStepped:Connect(_v4.turnAssistStep))
_v4.NO_ATK_CD = false
_v4.NO_ATK_COOLDOWN = false
_v4.ATTACK_SPEED = 3
local _v2c3 = setmetatable({}, { __mode = "k" })
_v4.animatorCache = setmetatable({}, { __mode = "k" })
function _v4.getAnimator()
local _v2c4 = _v2.Character
if not _v2c4 then return nil end
local _v2c5 = _v4.animatorCache[_v2c4]
if _v2c5 and _v2c5.Parent then return _v2c5 end
local _v2c6 = _v2c4:FindFirstChildOfClass(_ei9m[1072+451])
local _v2c7 = _v2c6 and _v2c6:FindFirstChildOfClass(_ei9m[83])
if not _v2c7 then _v2c7 = _v2c4:FindFirstChildWhichIsA(_ei9m[7+2198], true) end
_v4.animatorCache[_v2c4] = _v2c7
return _v2c7
end
function _v4.restoreAttackSpeed()
for _v2c8, _v2c9 in pairs(_v2c3) do
pcall(function() if _v2c8.IsPlaying then _v2c8:AdjustSpeed(1) end end)
end
_v2c3 = setmetatable({}, { __mode = "k" })
end
_v4.addStep(2, function()
if not _v4.NO_ATK_CD then return end
local _v2ca = _v4.getAnimator()
if not _v2ca then return end
pcall(function()
for _v2cb, _v2cc in ipairs(_v2ca:GetPlayingAnimationTracks()) do
if _v2cc.Priority == Enum.AnimationPriority.Action4 and _v2cc.Speed ~= _v4.ATTACK_SPEED then
_v2cc:AdjustSpeed(_v4.ATTACK_SPEED)
_v2c3[_v2cc] = true
end
end
end)
end)
task.spawn(function()
local _v2cd = _v4.requireCS()
if _v2cd then
_v4.addStep(1, function()
if not _v4.NO_ATK_COOLDOWN or _v4.UNLOADED then return end
pcall(function()
if type(_v2cd.Growth) == _ei9m[1391] and _v2cd.Growth.attackCooldownMultiplier ~= nil then
_v2cd.Growth.attackCooldownMultiplier = 0
end
end)
end)
end
end)
local _v2ce, _v2cf = nil, nil
local _v2cg = false
_v4.ZOOM_FAR = nil
function _v4.resolveZoomFar(_v2ch)
if _v4.ZOOM_FAR and not _v2ch then return _v4.ZOOM_FAR end
for _v2ci, _v2cj in ipairs({ 1e6, 1e5, 5e4, 1e4, 5000, 2000 }) do
local _v2ck = pcall(function() _v2.CameraMaxZoomDistance = _v2cj end)
if _v2ck then
local _v2cl = _v2.CameraMaxZoomDistance
if type(_v2cl) == _ei9m[222] and _v2cl > 0 then _v4.ZOOM_FAR = _v2cl; return _v4.ZOOM_FAR end
end
end
_v4.ZOOM_FAR = 2000
return _v4.ZOOM_FAR
end
_v4.zoomTarget = nil
_v4.zoomWant = nil
_v4.zoomProbeAt = 0
local function _v2cm()
local _v2cn = workspace.CurrentCamera
if not _v2cn then return nil end
local _v2co, _v2cp = pcall(function()
return (_v2cn.CFrame.Position - _v2cn.Focus.Position).Magnitude
end)
if not _v2co or type(_v2cp) ~= _ei9m[2928] or _v2cp ~= _v2cp or _v2cp <= 0 then return nil end
return _v2cp
end
function _v4.setZoomRange(_v2cq, _v2cr)
pcall(function()
if _v2.CameraMaxZoomDistance ~= _v2cr then _v2.CameraMaxZoomDistance = _v2cr end
if _v2.CameraMinZoomDistance ~= _v2cq then _v2.CameraMinZoomDistance = _v2cq end
end)
end
function _v4.applyZoom()
if _v4.UNLOADED or not _v4.UNLIMITED_ZOOM then return end
local _v2cs = _v4.zoomWant or _v4.zoomTarget or _v2cm() or 20
_v4.zoomWant = _v2cs
local _v2ct = _v4.ZOOM_FAR or 2000
local _v2cu = math.clamp(_v2cs, 0.5, _v2ct)
_v4.setZoomRange(_v2cu, _v2cu)
local _v2cv = _v2.CameraMaxZoomDistance
if type(_v2cv) == _ei9m[439-9] and _v2cv > 0 and _v2cv < _v2cu - 1 then
_v4.setZoomRange(_v2cv, _v2cv)
_v4.zoomTarget = _v2cv
if os.clock() - (_v4.zoomProbeAt or 0) > 1 then
_v4.zoomProbeAt = os.clock()
_v4.resolveZoomFar(true)
end
else
_v4.zoomTarget = _v2cu
end
end
_v4.zoomFailFrames = 0
function _v4.enforceZoom()
if _v4.UNLOADED or not _v4.UNLIMITED_ZOOM then return end
local _v2cw = _v4.zoomTarget
local _v2cx = workspace.CurrentCamera
if not (_v2cw and _v2cx) then return end
local _v2cy = false
pcall(function() _v2cy = (_v2cx.CameraType == Enum.CameraType.Scriptable) end)
if _v2cy then _v4.zoomFailFrames = 0 return end
local _v2cz = _v2cm()
if not _v2cz or math.abs(_v2cz - _v2cw) <= 1.5 then _v4.zoomFailFrames = 0 return end
_v4.zoomFailFrames = _v4.zoomFailFrames + 1
if _v4.zoomFailFrames < 3 then return end
pcall(function()
local _v2d0 = _v2cx.Focus.Position
local _v2d1 = _v2cx.CFrame.LookVector
if _v2d1.Magnitude < 0.01 then return end
_v2cx.CFrame = CFrame.lookAt(_v2d0 - _v2d1.Unit * _v2cw, _v2d0)
end)
end
pcall(function()
table.insert(_v2l, _v4.UIS.InputChanged:Connect(function(_v2d2)
if _v4.UNLOADED or not _v4.UNLIMITED_ZOOM then return end
if _v2d2.UserInputType == Enum.UserInputType.MouseWheel then
local _v2d3 = _v4.ZOOM_FAR or 2000
local _v2d4 = _v4.zoomWant or _v4.zoomTarget or _v2cm() or 20
local _v2d5 = math.max(3, _v2d4 * 0.12)
_v2d4 = math.clamp(_v2d4 - _v2d2.Position.Z * _v2d5, 0.5, _v2d3)
_v4.zoomWant = _v2d4
_v4.zoomTarget = _v2d4
_v4.setZoomRange(_v2d4, _v2d4)
end
end))
end)
function _v4.bindZoom()
if _v2cg then return end
if _v2ce == nil then
_v2ce = _v2.CameraMaxZoomDistance
_v2cf = _v2.CameraMinZoomDistance
end
_v4.resolveZoomFar(true)
_v4.zoomTarget = _v2cm() or _v4.zoomTarget or 20
_v4.zoomWant = _v4.zoomTarget
_v4.zoomProbeAt = 0
_v4.zoomFailFrames = 0
pcall(function()
_v1:BindToRenderStep(_ei9m[1916-15],
Enum.RenderPriority.Camera.Value - 1, _v4.applyZoom)
end)
pcall(function()
_v1:BindToRenderStep(_ei9m[384+298],
Enum.RenderPriority.Camera.Value + 1, _v4.enforceZoom)
end)
_v2cg = true
end
function _v4.restoreZoom()
if _v2cg then
pcall(function() _v1:UnbindFromRenderStep(_ei9m[2334]) end)
pcall(function() _v1:UnbindFromRenderStep(_ei9m[7+2218]) end)
_v2cg = false
end
_v4.zoomTarget = nil
_v4.zoomWant = nil
if _v2ce ~= nil then
pcall(function()
_v2.CameraMinZoomDistance = _v2cf
_v2.CameraMaxZoomDistance = _v2ce
end)
end
end
table.insert(_v2l,
_v2:GetPropertyChangedSignal(_ei9m[5+162]):Connect(_v4.applyZoom))
_v4.FOV_ENABLED = false
_v4.FOV_VALUE = 70
local _v2d6 = nil
local _v2d7 = false
function _v4.applyFOV()
if _v4.UNLOADED or not _v4.FOV_ENABLED then return end
local _v2d8 = workspace.CurrentCamera
if not _v2d8 then return end
pcall(function()
if _v2d8.CameraType == Enum.CameraType.Scriptable then return end
local _v2d9 = math.clamp(_v4.FOV_VALUE or 70, 1, 120)
if math.abs(_v2d8.FieldOfView - _v2d9) > 0.01 then _v2d8.FieldOfView = _v2d9 end
end)
end
function _v4.bindFOV()
if _v2d7 then return end
if _v2d6 == nil then
pcall(function() _v2d6 = workspace.CurrentCamera and workspace.CurrentCamera.FieldOfView end)
end
pcall(function()
_v1:BindToRenderStep(_ei9m[7+1475], Enum.RenderPriority.Camera.Value + 1, _v4.applyFOV)
end)
_v2d7 = true
end
function _v4.restoreFOV()
if _v2d7 then
pcall(function() _v1:UnbindFromRenderStep(_ei9m[1247+1521]) end)
_v2d7 = false
end
if _v2d6 ~= nil then
pcall(function()
local _v2da = workspace.CurrentCamera
if _v2da then _v2da.FieldOfView = _v2d6 end
end)
end
end
_v4.BIOME_TARGET = nil
_v4.BIOME_SPEED = 5000
_v4.BIOME_TRAVEL = false
_v4.biomeTravelling = false
_v4.biomeToggle = nil
_v4.biomePointCache = {}
_v4.BIOME_POINTS = {}
function _v4.biomeNames()
local _v2db = {}
pcall(function()
local _v2dc = workspace:FindFirstChild(_ei9m[1873])
if not _v2dc then return end
for _v2dd, _v2de in ipairs(_v2dc:GetChildren()) do
if _v2de.Name ~= _ei9m[19+28] then _v2db[#_v2db + 1] = _v2de.Name end
end
end)
table.sort(_v2db)
return _v2db
end
function _v4.biomePoint(_v2df)
if _v4.BIOME_POINTS[_v2df] then return _v4.BIOME_POINTS[_v2df] end
if _v4.biomePointCache[_v2df] then return _v4.biomePointCache[_v2df] end
local _v2dg
pcall(function()
local _v2dh = workspace:FindFirstChild(_ei9m[7+282])
local _v2di = _v2dh and _v2dh:FindFirstChild(_v2df)
if not _v2di then return end
local _v2dj, _v2dk, _v2dl = {}, Vector3.new(), 0
local _v2dm, _v2dn = 400, 6
local function _v2do(_v2dp, _v2dq)
if _v2dq > _v2dn or _v2dl >= _v2dm then return end
for _v2dr, _v2ds in ipairs(_v2dp:GetChildren()) do
if _v2dl >= _v2dm then return end
if _v2ds:IsA(_ei9m[2+2514]) then
_v2dj[#_v2dj + 1] = _v2ds.Position; _v2dk = _v2dk + _v2ds.Position; _v2dl = _v2dl + 1
elseif _v2ds:IsA(_ei9m[2921-4]) then
pcall(function()
local _v2dt = _v2ds:GetPivot().Position
_v2dj[#_v2dj + 1] = _v2dt; _v2dk = _v2dk + _v2dt; _v2dl = _v2dl + 1
end)
_v2do(_v2ds, _v2dq + 1)
elseif _v2ds:IsA(_ei9m[6+2641]) then
_v2do(_v2ds, _v2dq + 1)
end
end
end
_v2do(_v2di, 1)
if _v2dl == 0 then return end
local _v2du = _v2dk / _v2dl
local _v2dv = RaycastParams.new()
_v2dv.FilterType = Enum.RaycastFilterType.Exclude
_v2dv.FilterDescendantsInstances = { _v2.Character, workspace:FindFirstChild(_ei9m[4+72]) }
local _v2dw = { _v2du }
local _v2dx = math.max(1, math.floor(#_v2dj / 12))
for _v2dy = 1, #_v2dj, _v2dx do
_v2dw[#_v2dw + 1] = _v2dj[_v2dy]
if #_v2dw >= 14 then break end
end
for _v2dz, _v2e0 in ipairs(_v2dw) do
local _v2e1
pcall(function()
_v2e1 = workspace:Raycast(Vector3.new(_v2e0.X, _v2e0.Y + 2000, _v2e0.Z),
Vector3.new(0, -6000, 0), _v2dv)
end)
if _v2e1 and _v2e1.Material ~= Enum.Material.Water then
_v2dg = Vector3.new(_v2e0.X, _v2e1.Position.Y, _v2e0.Z)
break
end
end
if not _v2dg then _v2dg = _v2du end
end)
if _v2dg then _v4.biomePointCache[_v2df] = _v2dg end
return _v2dg
end
function _v4.travelToBiome(_v2e2)
if _v4.biomeTravelling then return end
_v4.biomeTravelling = true
local finished = pcall(function()
local _v2e3 = _v4.biomePoint(_v2e2)
if not _v2e3 then
pcall(function() _v28h:Notify(_ei9m[1281-11] .. tostring(_v2e2)) end)
return
end
local _v2e4 = _vjc()
if not (_v2e4 and _v2e4.Parent) then
pcall(function() _v28h:Notify(_ei9m[306]) end)
return
end
local _v2e5 = 3
pcall(function() _v2e5 = _v2e4.Size.Y * 0.5 end)
local _v2e6 = _v2e4.CFrame.LookVector
local _v2e7 = Vector3.new(_v2e6.X, 0, _v2e6.Z)
local _v2e8 = (_v2e7.Magnitude > 0.01) and CFrame.lookAt(Vector3.new(), _v2e7.Unit) or CFrame.new()
local _v2e9 = _v2.Character
pcall(function()
if _v2e9 then _v2e9:SetAttribute(_ei9m[1359+556], true); _v2e9:SetAttribute(_ei9m[755+1367], true) end
_v2e4.Anchored = false
end)
local _v2ea = _v4.BIOME_SPEED or 5000
local _v2eb = math.max(_v2e4.Position.Y, _v2e3.Y) + 250
local function _v2ec(_v2ed, _v2ee)
local _v2ef = math.max(math.min(_v2ea, _v4.GOVERNOR and _v4.govCeiling() or _v2ea), 1)
return (_v2ee - _v2ed).Magnitude / _v2ef * 1.6 + 8
end
local function _v2eg(_v2eh, _v2ei)
local _v2ej = _vjc()
if not (_v2ej and _v2ej.Parent) then return end
local _v2ek = os.clock() + (_v2ei or _v2ec(_v2ej.Position, _v2eh))
while not _v4.UNLOADED and _v4.BIOME_TRAVEL and os.clock() < _v2ek do
local _v2el = _vjc()
if not (_v2el and _v2el.Parent) then return end
if _v2e9 then pcall(function() _v2e9:SetAttribute(_ei9m[748-13], true) end) end
if (_v2eh - _v2el.Position).Magnitude < 8 then return end
local _v2em = _v4.govNext(_v2el.Position, _v2eh, 0.03, _v2ea)
pcall(function()
_v2el.CFrame = CFrame.new(_v2em) * _v2e8
_v2el.AssemblyLinearVelocity = Vector3.zero
_v2el.AssemblyAngularVelocity = Vector3.zero
end)
task.wait(0.03)
end
end
_v2eg(Vector3.new(_v2e4.Position.X, _v2eb, _v2e4.Position.Z))
if not _v4.BIOME_TRAVEL then return end
_v2eg(Vector3.new(_v2e3.X, _v2eb, _v2e3.Z))
if not _v4.BIOME_TRAVEL then return end
_v2eg(Vector3.new(_v2e3.X, _v2e3.Y + _v2e5 + 1, _v2e3.Z))
if not _v4.BIOME_TRAVEL then return end
local _v2en = _vjc()
if _v2en and _v2en.Parent then
pcall(function()
_v2en.CFrame = CFrame.new(_v2e3 + Vector3.new(0, _v2e5 + 1, 0)) * _v2e8
_v2en.AssemblyLinearVelocity = Vector3.zero
_v2en.AssemblyAngularVelocity = Vector3.zero
_v2en.Anchored = true
end)
task.wait(0.2)
pcall(function()
_v2en.Anchored = false
_v2en.AssemblyLinearVelocity = Vector3.zero
_v2en.AssemblyAngularVelocity = Vector3.zero
end)
task.wait(0.3)
pcall(function()
local _v2eo = RaycastParams.new()
_v2eo.FilterType = Enum.RaycastFilterType.Exclude
_v2eo.FilterDescendantsInstances = { _v2.Character }
local _v2ep = workspace:Raycast(_v2en.Position + Vector3.new(0, 20, 0), Vector3.new(0, -400, 0), _v2eo)
if _v2ep then
local _v2eq = _v2en.Position.Y - (_v2ep.Position.Y + _v2e5)
if _v2eq < -0.5 or _v2eq > 3 then
_v2en.CFrame = CFrame.new(_v2ep.Position + Vector3.new(0, _v2e5 + 0.5, 0)) * _v2e8
_v2en.AssemblyLinearVelocity = Vector3.zero
end
end
end)
end
pcall(function() _v28h:Notify(_ei9m[2500] .. tostring(_v2e2)) end)
end)
pcall(function()
local _v2er = _v2.Character
if _v2er then _v2er:SetAttribute(_ei9m[1276], nil) end
local _v2es = _vjc()
if _v2es then _v2es.Anchored = false end
end)
task.delay(6, function()
if not (_v4.NO_FALL_DAMAGE or _v4.FOSSIL_FARM or _v4.SAVE_DINO_ACTIVE) then
local _v2et = _v2.Character
if _v2et then pcall(function() _v2et:SetAttribute(_ei9m[2817], nil) end) end
end
end)
if not finished then
pcall(function() _v28h:Notify(_ei9m[1028-8]) end)
end
_v4.biomeTravelling = false
_v4.BIOME_TRAVEL = false
if _v4.biomeToggle then pcall(function() _v4.biomeToggle:Set(false) end) end
end
_v4.fossilFarmToggle = nil
_v4.FOSSIL_FARM_SPEED = 50
local function _v2eu(_v2ev)
for _v2ew, _v2ex in ipairs(_v2ev:GetDescendants()) do
if _v2ex:IsA(_ei9m[1336-1]) and _v2ex.Name == _ei9m[2815] then return _v2ex end
end
return nil
end
function _v4.fossilPosOf(_v2ey)
local ok, p = pcall(function()
local _v2ez = _v2eu(_v2ey)
_v2ez = _v2ez and _v2ez.Parent
if _v2ez and _v2ez:IsA(_ei9m[583+1376]) then return _v2ez.WorldPosition end
if _v2ez and _v2ez:IsA(_ei9m[2959-20]) then return _v2ez.Position end
return _v2ey:GetPivot().Position
end)
if ok then return p end
return nil
end
function _v4.ffPlanRoute(_v2f0)
local _v2f1 = workspace:FindFirstChild(_ei9m[2398+553])
if not _v2f1 then return {} end
local _v2f2, _v2f3 = os.clock(), {}
for _v2f4, _v2f5 in ipairs(_v2f1:GetChildren()) do
local _v2f6 = _v2eu(_v2f5)
local _v2f7 = _v4.ffSkip and _v4.ffSkip[_v2f5]
if _v2f6 and _v2f6.Enabled ~= false and not (_v2f7 and _v2f7 > _v2f2) then
local _v2f8 = _v4.fossilPosOf(_v2f5)
if _v2f8 and _v2f8.Magnitude > 1 then _v2f3[#_v2f3 + 1] = { f = _v2f5, p = _v2f8 } end
end
if #_v2f3 >= 150 then break end
end
local _v2f9 = #_v2f3
if _v2f9 == 0 then return {} end
local _v2fa, _v2fb, _v2fc = {}, {}, _v2f0
for _v2fd = 1, _v2f9 do
local _v2fe, _v2ff
for _v2fg, _v2fh in ipairs(_v2f3) do
if not _v2fb[_v2fg] then
local _v2fi = (_v2fh.p - _v2fc).Magnitude
if not _v2ff or _v2fi < _v2ff then _v2fe, _v2ff = _v2fg, _v2fi end
end
end
_v2fb[_v2fe] = true
_v2fa[#_v2fa + 1] = _v2f3[_v2fe]
_v2fc = _v2f3[_v2fe].p
end
local function _v2fj(_v2fk) return _v2fk == 0 and _v2f0 or _v2fa[_v2fk].p end
for _v2fl = 1, 8 do
local _v2fm = false
for _v2fn = 1, _v2f9 - 1 do
for _v2fo = _v2fn + 1, _v2f9 do
local _v2fp, _v2fq, _v2fr = _v2fj(_v2fn - 1), _v2fj(_v2fn), _v2fj(_v2fo)
local _v2fs = (_v2fq - _v2fp).Magnitude
local _v2ft = (_v2fr - _v2fp).Magnitude
if _v2fo < _v2f9 then
local _v2fu = _v2fj(_v2fo + 1)
_v2fs = _v2fs + (_v2fu - _v2fr).Magnitude
_v2ft = _v2ft + (_v2fu - _v2fq).Magnitude
end
if _v2ft < _v2fs - 0.01 then
local _v2fv, _v2fw = _v2fn, _v2fo
while _v2fv < _v2fw do _v2fa[_v2fv], _v2fa[_v2fw] = _v2fa[_v2fw], _v2fa[_v2fv]; _v2fv, _v2fw = _v2fv + 1, _v2fw - 1 end
_v2fm = true
end
end
end
if not _v2fm then break end
end
local _v2fx = {}
for _v2fy, _v2fz in ipairs(_v2fa) do _v2fx[_v2fy] = _v2fz.f end
return _v2fx
end
function _v4.nearestFossil(_v2g0)
local _v2g1 = workspace:FindFirstChild(_ei9m[3+874])
if not _v2g1 then return nil end
local _v2g2, _v2g3
for _v2g4, _v2g5 in ipairs(_v2g1:GetChildren()) do
local _v2g6 = _v2eu(_v2g5)
local _v2g7 = _v4.ffSkip and _v4.ffSkip[_v2g5]
if _v2g6 and _v2g6.Enabled ~= false and not (_v2g7 and _v2g7 > os.clock()) then
local _v2g8 = _v4.fossilPosOf(_v2g5)
if _v2g8 and _v2g8.Magnitude > 1 then
local _v2g9 = (_v2g8 - _v2g0).Magnitude
if not _v2g3 or _v2g9 < _v2g3 then _v2g2, _v2g3 = _v2g5, _v2g9 end
end
end
end
return _v2g2
end
function _v4.isolatePrompt(_v2ga, _v2gb)
local _v2gc = {}
local _v2gd = workspace:FindFirstChild(_ei9m[1579-15])
if not _v2gd then return _v2gc end
for _v2ge, _v2gf in ipairs(_v2gd:GetChildren()) do
local _v2gg = _v2eu(_v2gf)
if _v2gg and _v2gg ~= _v2ga and _v2gg.Enabled then
local _v2gh, _v2gi = pcall(function() return _v2gg.Parent.Position end)
if (not _v2gh) or (_v2gi - _v2gb).Magnitude < 80 then
pcall(function() _v2gg.Enabled = false end)
table.insert(_v2gc, _v2gg)
end
end
end
return _v2gc
end
function _v4.restorePrompts(_v2gj)
for _v2gk, _v2gl in ipairs(_v2gj) do pcall(function() if _v2gl and _v2gl.Parent then _v2gl.Enabled = true end end) end
end
function _v4.autoSpawnCleanup()
for _v2gm, _v2gn in ipairs(_v4.AUTO_SPAWN_DRAWS) do pcall(function() _v2gn:Remove() end) end
table.clear(_v4.AUTO_SPAWN_DRAWS)
_v4.AUTO_SPAWN = false
_v4.AUTO_SPAWN_TARGET = nil
_v4.AUTO_SPAWN_GENDER = nil
_v4.AUTO_SPAWN_ATTEMPTS = 0
end
function _v4.autoSpawnCleanupGUI()
local _v2go = _v2.PlayerGui
pcall(function()
local _v2gp = _v2go:FindFirstChild(_ei9m[6+2269])
if _v2gp then _v2gp:Destroy() end
end)
pcall(function()
local _v2gq = _v2go:FindFirstChild(_ei9m[1697-9])
if _v2gq then _v2gq:Destroy() end
end)
pcall(function()
local _v2gr = _v2go:FindFirstChild(_ei9m[4+64])
if _v2gr then _v2gr:Destroy() end
end)
end
function _v4.autoSpawnGetDinoName()
local _v2gs = _v2.PlayerGui:FindFirstChild(_ei9m[6+2259])
if not _v2gs then return nil end
local _v2gt = _v2gs:FindFirstChild(_ei9m[363+2057])
if not _v2gt then return nil end
local _v2gu = _v2gt:FindFirstChild(_ei9m[1888])
if not _v2gu then return nil end
local _v2gv = _v2gu:FindFirstChild(_ei9m[6+1765])
if _v2gv and _v2gv.Text ~= "" then return _v2gv.Text end
return nil
end
function _v4.autoSpawnGetGender()
local _v2gw = _v2.PlayerGui:FindFirstChild(_ei9m[6+2627])
if not _v2gw then return _ei9m[3+1258] end
local ok, result = pcall(function()
local _v2gx = _v2gw.LeftFrame.Customizer.Frame.Gender.Frame
local _v2gy = _v2gx:FindFirstChild(_ei9m[2231+120])
if _v2gy then
local _v2gz = _v2gy:FindFirstChild(_ei9m[2+2789])
if _v2gz and _v2gz.Color.G > 0.8 then return _ei9m[110+211] end
end
return _ei9m[6+1719]
end)
return ok and result or _ei9m[52+581]
end
function _v4.autoSpawnIsAlive()
local _v2h0 = _v2.Character
if not _v2h0 then return false end
local _v2h1 = _v2h0:FindFirstChildOfClass(_ei9m[2927])
return _v2h1 and _v2h1.Health > 0
end
function _v4.startAutoSpawn()
_v4.autoSpawnCleanup()
_v4.AUTO_SPAWN = true
_v4.AUTO_SPAWN_ATTEMPTS = 0
_v4.AUTO_SPAWN_TARGET = _v4.autoSpawnGetDinoName()
_v4.AUTO_SPAWN_GENDER = _v4.autoSpawnGetGender()
if not _v4.AUTO_SPAWN_TARGET then
pcall(function() _v28h:Notify(_ei9m[4+2157], 5) end)
_v4.AUTO_SPAWN = false
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
pcall(function() _v28h:Notify(_ei9m[3+1496] .. _v4.AUTO_SPAWN_TARGET .. " (" .. _v4.AUTO_SPAWN_GENDER .. _ei9m[24+1665], 5) end)
local _v2h2 = _v4.AUTO_SPAWN_DRAWS
local function _v2h3(_v2h4)
local _v2h5 = _v4.safeDraw(_ei9m[6+2444])
_v2h5.Visible = true
_v2h5.Color = _v2h4.Color or Color3.fromRGB(255, 255, 255)
_v2h5.Size = _v2h4.Size or 16
_v2h5.Position = _v2h4.Position or Vector2.new(0, 0)
_v2h5.Text = _v2h4.Text or ""
_v2h5.Font = 2
_v2h5.Outline = true
_v2h5.OutlineColor = Color3.fromRGB(0, 0, 0)
table.insert(_v2h2, _v2h5)
return _v2h5
end
local function _v2h6(_v2h7)
local _v2h8 = _v4.safeDraw(_ei9m[1731+831])
_v2h8.Visible = true
_v2h8.Color = _v2h7.Color or Color3.fromRGB(10, 10, 10)
_v2h8.Size = _v2h7.Size or Vector2.new(100, 100)
_v2h8.Position = _v2h7.Position or Vector2.new(0, 0)
_v2h8.Filled = _v2h7.Filled ~= false
_v2h8.Transparency = _v2h7.Transparency or 0.3
if _v2h7.Thickness then _v2h8.Thickness = _v2h7.Thickness end
table.insert(_v2h2, _v2h8)
return _v2h8
end
local _v2h9, _v2ha = 12, 12
_v2h6({ Position = Vector2.new(_v2h9, _v2ha), Size = Vector2.new(300, 110) })
local _v2hb = _v2h6({ Position = Vector2.new(_v2h9, _v2ha), Size = Vector2.new(300, 110), Filled = false, Transparency = 1, Color = Color3.fromRGB(0, 200, 80), Thickness = 2 })
local _v2hc = _v2h3({ Text = _ei9m[2714], Position = Vector2.new(_v2h9 + 6, _v2ha + 4), Size = 18, Color = Color3.fromRGB(0, 220, 80) })
local _v2hd = _v2h3({ Text = _ei9m[2887-12] .. _v4.AUTO_SPAWN_TARGET .. _ei9m[2624-8], Position = Vector2.new(_v2h9 + 6, _v2ha + 26), Color = Color3.fromRGB(0, 255, 200) })
local _v2he = _v2h3({ Text = _ei9m[531+724], Position = Vector2.new(_v2h9 + 6, _v2ha + 44) })
local _v2hf = _v2h3({ Text = _ei9m[288], Position = Vector2.new(_v2h9 + 6, _v2ha + 62) })
local _v2hg = _v2h3({ Text = _ei9m[2208-16], Position = Vector2.new(_v2h9 + 6, _v2ha + 80), Color = Color3.fromRGB(255, 200, 0) })
local _v2hh = game:GetService(_ei9m[3+45])
local _v2hi = _v4.req(_v2hh:WaitForChild(_ei9m[2144-8]):WaitForChild(_ei9m[694+760]))
local _v2hj = _v2hi.GetController(_ei9m[674+448])
local _v2hk = _v2hi.GetService(_ei9m[883-2])
task.spawn(function()
while _v4.AUTO_SPAWN and not _v4.UNLOADED do
pcall(function()
local _v2hl = _v2hj:GetInfo(_v4.AUTO_SPAWN_TARGET)
if _v2hl then
_v2he.Text = string.format(_ei9m[38-6],
_v2hl.UsedTotal or 0, _v2hl.Slots or 0,
_v2hl.UsedZenith or 0, _v2hl.ZenithSlots or 0)
end
end)
task.wait(3)
end
end)
task.spawn(function()
while _v4.AUTO_SPAWN and not _v4.UNLOADED do
if _v4.autoSpawnIsAlive() then
_v4.autoSpawnCleanupGUI()
_v2hg.Text = _ei9m[341-5]
_v2hg.Color = Color3.fromRGB(0, 255, 0)
_v2hc.Text = _ei9m[2523-17]
_v2hc.Color = Color3.fromRGB(0, 255, 0)
_v2hb.Color = Color3.fromRGB(0, 255, 0)
pcall(function() _v28h:Notify(_ei9m[1085+1684], 4) end)
task.wait(5)
_v4.autoSpawnCleanup()
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
if not _v2.PlayerGui:FindFirstChild(_ei9m[902-1]) then
_v2hg.Text = _ei9m[670]
_v2hg.Color = Color3.fromRGB(255, 200, 0)
task.wait(1)
continue
end
_v4.AUTO_SPAWN_ATTEMPTS += 1
_v2hf.Text = _ei9m[967] .. _v4.AUTO_SPAWN_ATTEMPTS
local _v2hm, _v2hn, _v2ho
local _v2hp = pcall(function()
_v2hm, _v2hn, _v2ho = _v2hj:RequestSlot(_v4.AUTO_SPAWN_TARGET)
end)
if not _v2hp then
_v2hg.Text = _ei9m[2283]
pcall(function()
_v2hk:InitiateSpawning({
Species = _v4.AUTO_SPAWN_TARGET,
Gender = _v4.AUTO_SPAWN_GENDER,
Skin = _ei9m[2284-11],
Variant = _ei9m[302+1131],
})
end)
_v4.autoSpawnCleanupGUI()
_v2hg.Text = _ei9m[6+2790]
_v2hg.Color = Color3.fromRGB(0, 255, 100)
_v2hc.Text = _ei9m[643+1948]
_v2hc.Color = Color3.fromRGB(0, 255, 0)
_v2hb.Color = Color3.fromRGB(0, 255, 0)
task.wait(5)
_v4.autoSpawnCleanup()
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
if _v2hm then
_v2hg.Text = _ei9m[926-3] .. _v4.AUTO_SPAWN_TARGET
_v2hg.Color = Color3.fromRGB(0, 255, 0)
_v2hc.Color = Color3.fromRGB(0, 255, 0)
_v2hb.Color = Color3.fromRGB(0, 255, 0)
pcall(function()
_v2hk:InitiateSpawning({
Species = _v4.AUTO_SPAWN_TARGET,
Gender = _v4.AUTO_SPAWN_GENDER,
Skin = _ei9m[2940],
Variant = _ei9m[2438],
})
end)
_v4.autoSpawnCleanupGUI()
_v2hc.Text = _ei9m[2753]
pcall(function() _v28h:Notify(_ei9m[2+1613] .. _v4.AUTO_SPAWN_TARGET .. "!", 4) end)
task.wait(5)
_v4.autoSpawnCleanup()
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
if _v2hn == _ei9m[4+2102] and _v2ho then
_v2he.Text = string.format(_ei9m[2626-8],
_v2ho.UsedTotal or 0, _v2ho.Slots or 0,
_v2ho.UsedZenith or 0, _v2ho.ZenithSlots or 0)
end
_v2hg.Text = _ei9m[998-19]
_v2hg.Color = Color3.fromRGB(255, 80, 80)
_v2hb.Color = Color3.fromRGB(200, 60, 60)
task.wait(0.5)
end
end)
end
function _v4.unanchorFarmRoot()
local _v2hq = _vjc()
if _v2hq then pcall(function() _v2hq.Anchored = false end) end
end
local _v2hr = nil
local _v2hs = {}
local function _v2ht()
if _v2hr then
pcall(function() _v4.VIM:SendKeyEvent(false, _v2hr, false, game) end)
_v2hr = nil
end
if #_v2hs > 0 then
_v4.restorePrompts(_v2hs)
_v2hs = {}
end
_v4.unanchorFarmRoot()
if _v4.fossilFarmCleanup then _v4.fossilFarmCleanup() end
if not (_v4.NO_FALL_DAMAGE or _v4.FOSSIL_FARM) then _v4.applyFallImmunity(false) end
end
function _v4.groundUnder(_v2hu)
local _v2hv = RaycastParams.new()
_v2hv.FilterType = Enum.RaycastFilterType.Exclude
_v2hv.FilterDescendantsInstances = { _v2.Character }
local _v2hw = workspace:Raycast(_v2hu + Vector3.new(0, 25, 0), Vector3.new(0, -300, 0), _v2hv)
return _v2hw and _v2hw.Position or nil
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
function _v4.fossilFarmAdvance(_v2hx)
if _v4.UNLOADED then return end
if not _v4.FOSSIL_FARM then
if _v4.ffState then
_v4.fossilFarmCleanup()
local _v2hy = _v2.Character
if _v2hy and not _v4.AFK_FARM and not _v4.LEGIT_FARM then pcall(function() _v2hy:SetAttribute(_ei9m[667+1400], nil) end) end
end
return
end
if _v4.SAVE_DINO_ACTIVE then return end
local _v2hz = _v4.getLocalPhysicsRoot()
if not _v2hz then return end
if _v2hz.Anchored and _v4.ffState ~= _ei9m[2238] then
pcall(function() _v2hz.Anchored = false end)
end
_v2hx = math.min(_v2hx or 0.016, 0.1)
local _v2i0 = _v2.Character
if _v2i0 and _v2i0:GetAttribute(_ei9m[2]) ~= true then
pcall(function() _v2i0:SetAttribute(_ei9m[1306-4], true) end)
end
local _v2i1 = math.max(_v4.FOSSIL_FARM_SPEED or 50, 5)
local _v2i2 = _v2hz.Position
if not _v4.ffPos then _v4.ffPos = _v2i2 end
if not _v4.ffTarget or not _v4.ffTarget.Parent then
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v2hs > 0 then
_v4.restorePrompts(_v2hs)
_v2hs = {}
end
local _v2i3 = _v4.ffPlanRoute(_v2i2)[1]
if _v2i3 then
_v4.ffTarget = _v2i3
_v4.ffState = _ei9m[5+199]
_v4.ffEmptyChecks = 0
_v4.ffTries, _v4.ffFace = 0, nil
local _v2i4 = _v4.fossilPosOf(_v2i3)
if _v2i4 then
local _v2i5 = 3
pcall(function() _v2i5 = _v2hz.Size.Y * 0.5 end)
local _v2i6 = _v4.groundUnder(_v2i4)
_v4.ffPos = _v2i2
_v4.ffSetLeg(_v2i2, Vector3.new(_v2i4.X, (_v2i6 and _v2i6.Y or _v2i4.Y) + _v2i5 + 0.5, _v2i4.Z))
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
local _v2i7 = 0
for _v2i8, _v2i9 in pairs(_v4.ffSkip) do if _v2i9 > os.clock() then _v2i7 = _v2i7 + 1 end end
pcall(function()
_v28h:Notify(_v2i7 > 0 and (_ei9m[3+460] .. _v2i7 .. _ei9m[3+1959])
or _ei9m[1091+10], 8)
end)
end
return
end
end
if (_v4.ffState == _ei9m[86+1572] or _v4.ffFace) and _v4.ffTarget and _v4.ffTarget.Parent then
local _v2ia = os.clock()
if _v2ia - _v4.ffSince > (_v4.ffTries == 0 and 60 or 20) then
if _v4.ffTries < 2 then
_v4.ffTries = _v4.ffTries + 1
_v4.ffReposition(_v2hz)
pcall(function() _v28h:Notify((_ei9m[2110-15]):format(_v4.ffTries), 4) end)
else
_v4.ffSkip[_v4.ffTarget] = _v2ia + 600
_v4.ffDropTarget(_v2hz)
pcall(function() _v28h:Notify(_ei9m[1060-5], 5) end)
return
end
end
end
if _v4.ffState == _ei9m[739] and _v4.ffDest then
local _v2ib = (_v4.ffLeg and _v4.ffLeg[_v4.ffLegI]) or _v4.ffDest
_v4.ffPos = _v4.govNext(_v4.ffPos, _v2ib, _v2hx, _v2i1)
if (_v4.ffPos - _v2ib).Magnitude < 0.5 and _v4.ffLeg and _v4.ffLegI < #_v4.ffLeg then
_v4.ffLegI = _v4.ffLegI + 1
end
local _v2ic = Vector3.new(_v4.ffDest.X - _v4.ffPos.X, 0, _v4.ffDest.Z - _v4.ffPos.Z)
if _v2ic.Magnitude < 0.1 then
local _v2id = _v4.ffCF or _v2hz.CFrame
_v4.ffCF = CFrame.new(_v4.ffPos) * (_v2id - _v2id.Position)
else
_v4.ffCF = CFrame.lookAt(_v4.ffPos, _v4.ffPos + _v2ic)
end
pcall(function()
_v2hz.CFrame = _v4.ffCF
_v2hz.AssemblyLinearVelocity = Vector3.zero
_v2hz.AssemblyAngularVelocity = Vector3.zero
end)
if (_v4.ffPos - _v4.ffDest).Magnitude < 1.5 then
_v4.ffState = _ei9m[2305-9]
_v4.ffCollectStart = os.clock()
_v4.ffSince = _v4.ffCollectStart
if _v4.ffFace then
local _v2ie = Vector3.new(_v4.ffFace.X, _v4.ffPos.Y, _v4.ffFace.Z)
if (_v2ie - _v4.ffPos).Magnitude > 0.1 then
_v4.ffCF = CFrame.lookAt(_v4.ffPos, _v2ie)
pcall(function() _v2hz.CFrame = _v4.ffCF end)
end
end
pcall(function() _v2hz.Anchored = true end)
local _v2if = _v2eu(_v4.ffTarget)
if _v2if then
_v2hs = {}
local _v2ig = workspace:FindFirstChild(_ei9m[130-20])
if _v2ig then
for _v2ih, _v2ii in ipairs(_v2ig:GetChildren()) do
local _v2ij = _v2eu(_v2ii)
if _v2ij and _v2ij ~= _v2if and _v2ij.Enabled then
pcall(function() _v2ij.Enabled = false end)
table.insert(_v2hs, _v2ij)
end
end
end
local _v2ik = _v2if.KeyboardKeyCode
if _v2ik == nil or _v2ik == Enum.KeyCode.Unknown then _v2ik = Enum.KeyCode.E end
_v4.ffHeldKey = _v2ik
_v4.ffHoldDuration = (tonumber(_v2if.HoldDuration) or 2.5) + 1
pcall(function() _v4.VIM:SendKeyEvent(true, _v2ik, false, game) end)
else
pcall(function() _v2hz.Anchored = false end)
_v4.ffTarget = nil
_v4.ffState = nil
end
end
elseif _v4.ffState == _ei9m[602] then
if not _v4.ffTarget.Parent then
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v2hs > 0 then
_v4.restorePrompts(_v2hs)
_v2hs = {}
end
pcall(function() _v2hz.Anchored = false end)
_v4.ffTarget = nil
_v4.ffState = nil
return
end
local _v2il = os.clock() - _v4.ffCollectStart
if _v2il > (_v4.ffHoldDuration or 4) then
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(true, _v4.ffHeldKey, false, game) end)
end
_v4.ffCollectStart = os.clock()
end
end
end
function _v4.fossilFarmPin()
if _v4.UNLOADED or not _v4.FOSSIL_FARM or not _v4.ffCF then return end
local _v2im = _v4.getLocalPhysicsRoot()
if _v2im and not _v2im.Anchored then
pcall(function()
_v2im.CFrame = _v4.ffCF
_v2im.AssemblyLinearVelocity = Vector3.zero
_v2im.AssemblyAngularVelocity = Vector3.zero
end)
end
end
_v4.FF_CRUISE = 30
function _v4.ffRayParams()
local _v2in = RaycastParams.new()
_v2in.FilterType = Enum.RaycastFilterType.Exclude
local _v2io = { _v2.Character }
local _v2ip = workspace:FindFirstChild(_ei9m[2+621])
if _v2ip then _v2io[#_v2io + 1] = _v2ip end
_v2in.FilterDescendantsInstances = _v2io
return _v2in
end
function _v4.ffGroundY(_v2iq, _v2ir, _v2is, _v2it)
local _v2iu = workspace:Raycast(Vector3.new(_v2iq, _v2is + 400, _v2ir), Vector3.new(0, -1200, 0), _v2it)
return _v2iu and _v2iu.Position.Y or nil
end
function _v4.ffSetLeg(_v2iv, _v2iw)
_v4.ffDest = _v2iw
local _v2ix = Vector3.new(_v2iw.X - _v2iv.X, 0, _v2iw.Z - _v2iv.Z).Magnitude
local _v2iy = _v4.ffRayParams()
local _v2iz = false
if _v2ix < 40 then
local _v2j0, _v2j1 = pcall(function() return workspace:Raycast(_v2iv, _v2iw - _v2iv, _v2iy) end)
_v2iz = _v2j0 and _v2j1 == nil
end
if _v2iz then
_v4.ffLeg, _v4.ffLegI = { _v2iw }, 1
return
end
local _v2j2 = math.max(_v2iv.Y, _v2iw.Y)
local _v2j3 = math.max(1, math.floor(_v2ix / 20))
for _v2j4 = 0, _v2j3 do
local _v2j5 = _v2iv:Lerp(_v2iw, _v2j4 / _v2j3)
local _v2j6, _v2j7 = pcall(_v4.ffGroundY, _v2j5.X, _v2j5.Z, _v2j2, _v2iy)
if _v2j6 and _v2j7 and _v2j7 > _v2j2 then _v2j2 = _v2j7 end
end
local _v2j8 = math.max(_v2j2 + _v4.FF_CRUISE, _v2iv.Y)
_v4.ffLeg = { Vector3.new(_v2iv.X, _v2j8, _v2iv.Z), Vector3.new(_v2iw.X, _v2j8, _v2iw.Z), _v2iw }
_v4.ffLegI = 1
end
function _v4.ffDropTarget(_v2j9)
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v2hs > 0 then
_v4.restorePrompts(_v2hs)
_v2hs = {}
end
if _v2j9 then pcall(function() _v2j9.Anchored = false end) end
_v4.ffTarget, _v4.ffState, _v4.ffFace = nil, nil, nil
end
function _v4.ffReposition(_v2ja)
local _v2jb = _v4.ffTarget
local _v2jc = _v2jb and _v4.fossilPosOf(_v2jb)
if not _v2jc then _v4.ffDropTarget(_v2ja) return end
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v2hs > 0 then
_v4.restorePrompts(_v2hs)
_v2hs = {}
end
pcall(function() _v2ja.Anchored = false end)
local _v2jd = 6
pcall(function() _v2jd = math.clamp((_v2eu(_v2jb).MaxActivationDistance or 10) * 0.6, 3, 8) end)
local _v2je = _v4.ffPos or _v2ja.Position
if _v4.ffTries == 1 then _v4.ffBaseAng = math.atan2(_v2je.Z - _v2jc.Z, _v2je.X - _v2jc.X) end
local _v2jf = (_v4.ffBaseAng or 0) + _v4.ffTries * (2 * math.pi / 3)
local _v2jg = _v2jc + Vector3.new(math.cos(_v2jf) * _v2jd, 0, math.sin(_v2jf) * _v2jd)
local _v2jh = _v4.groundUnder(_v2jg)
local _v2ji = 3
pcall(function() _v2ji = _v2ja.Size.Y * 0.5 end)
_v4.ffSetLeg(_v4.ffPos or _v2ja.Position, Vector3.new(_v2jg.X, (_v2jh and _v2jh.Y or _v2jc.Y) + _v2ji + 0.5, _v2jg.Z))
_v4.ffFace = _v2jc
_v4.ffState = _ei9m[88-11]
_v4.ffSince = os.clock()
end
function _v4.ffCamStep(_v2jj)
if _v4.UNLOADED or not _v4.FOSSIL_FARM or not _v4.ffFace then return end
local _v2jk = workspace.CurrentCamera
if not _v2jk or _v2jk.CameraType ~= Enum.CameraType.Custom then return end
local _v2jl = _v2jk.CFrame
local _v2jm = _v2jk.Focus.Position
local _v2jn, _v2jo = _v2jl.LookVector, _v4.ffFace - _v2jm
if Vector3.new(_v2jn.X, 0, _v2jn.Z).Magnitude < 1e-3 or Vector3.new(_v2jo.X, 0, _v2jo.Z).Magnitude < 1 then return end
local _v2jp = math.atan2(-_v2jn.X, -_v2jn.Z)
local _v2jq = math.atan2(-_v2jo.X, -_v2jo.Z)
local _v2jr = 6 * math.min(_v2jj or 0.016, 0.1)
local _v2js = math.clamp(math.atan2(math.sin(_v2jq - _v2jp), math.cos(_v2jq - _v2jp)), -_v2jr, _v2jr)
if math.abs(_v2js) < 1e-4 then return end
local _v2jt = CFrame.Angles(0, _v2js, 0)
_v2jk.CFrame = CFrame.new(_v2jm + _v2jt * (_v2jl.Position - _v2jm)) * (_v2jt * _v2jl.Rotation)
end
function _v4.fossilFarmCleanup()
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v2hs > 0 then
_v4.restorePrompts(_v2hs)
_v2hs = {}
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
end
function _v4.startFossilFarm()
local _v2ju = workspace:FindFirstChild(_ei9m[18+9])
local _v2jv = _v2ju and #_v2ju:GetChildren() or 0
pcall(function() _v28h:Notify((_ei9m[1833]):format(_v2jv), 5) end)
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
_v1:BindToRenderStep(_ei9m[115+2434], Enum.RenderPriority.Camera.Value + 2, _v4.ffCamStep)
end)
end
function _v4.getCC()
if _v4.ccCache then return _v4.ccCache end
pcall(function()
_v4.ccCache = _v4.req(_v4.WATER_RS.Packages.Knit).GetController(_ei9m[1614-17])
end)
return _v4.ccCache
end
_v4.CARRY_CORPSE = false
_v4.CARRY_RANGE = 1000
_v4.carryOrig = nil
function _v4.carryApply(_v2jw)
local function _v2jx(_v2jy)
pcall(function()
for _v2jz, _v2k0 in pairs(_v2jy.ProximityPrompts or {}) do
if typeof(_v2k0) == _ei9m[1604+742] and _v2k0:IsA(_ei9m[152+222]) then _v2k0.MaxActivationDistance = _v2jy.Range end
end
end)
end
if _v2jw then
if _v4.carryOrig then return true end
local _v2k1
pcall(function() _v2k1 = _v4.req(_v2.PlayerScripts.Client.Classes.Character.Grab) end)
if type(_v2k1) ~= _ei9m[3+1407] then return false end
local _v2k2 = {}
for _v2k3, _v2k4 in ipairs({ _ei9m[2+2422], _ei9m[2909], _ei9m[323+2133], _ei9m[2240], _ei9m[131-20] }) do
if type(_v2k1[_v2k4]) ~= _ei9m[5+2948] then return false end
_v2k2[_v2k4] = _v2k1[_v2k4]
end
_v4.carryOrig = { G = _v2k1, o = _v2k2 }
_v2k1.GetGrabSettings = function(self, ...)
local _v2k5 = _v2k2.GetGrabSettings(self, ...)
if type(_v2k5) ~= _ei9m[2575-1] then return _v2k5 end
local _v2k6 = table.clone(_v2k5)
_v2k6.GrabLimit, _v2k6.DragLimit = math.huge, math.huge
_v2k6.DragReverseLock, _v2k6.DragDrain = false, 0
return _v2k6
end
_v2k1.CanGrabTarget = function(self, _v2k7, _v2k8, ...)
if _v2k8 then return _v2k2.CanGrabTarget(self, _v2k7, _v2k8, ...) end
return true
end
_v2k1.MeetsWeightLimit = function(self, _v2k9, _v2ka, ...)
if _v2ka then return _v2k2.MeetsWeightLimit(self, _v2k9, _v2ka, ...) end
return true
end
_v2k1.IsDragDisabled = function() return false end
_v2k1.Grab = function(self, _v2kb, _v2kc, ...)
if _v2kc == _ei9m[602+247] then return _v2k2.Grab(self, _v2kb, _v2kc, ...) end
local _v2kd = self.BaseAttachment
self.BaseAttachment = nil
local _v2ke = table.pack(pcall(_v2k2.Grab, self, _v2kb, _v2kc, ...))
self.BaseAttachment = _v2kd
if not _v2ke[1] then error(_v2ke[2], 0) end
return table.unpack(_v2ke, 2, _v2ke.n)
end
local _v2kf = _v4.getCC()
if type(_v2kf) == _ei9m[2619] and type(_v2kf.GetConsumeRange) == _ei9m[7+948] then
local _v2kg = _v2kf.GetConsumeRange
_v4.carryOrig.CC, _v4.carryOrig.oRange = _v2kf, _v2kg
_v2kf.GetConsumeRange = function(self, ...)
return math.max(tonumber(_v2kg(self, ...)) or 0, _v4.CARRY_RANGE)
end
pcall(function() _v2kf.Range = _v2kf:GetConsumeRange() end)
_v2jx(_v2kf)
end
return true
end
local _v2kh = _v4.carryOrig
if _v2kh then
for _v2ki, _v2kj in pairs(_v2kh.o) do _v2kh.G[_v2ki] = _v2kj end
if _v2kh.CC then
_v2kh.CC.GetConsumeRange = _v2kh.oRange
pcall(function() _v2kh.CC.Range = _v2kh.CC:GetConsumeRange() end)
_v2jx(_v2kh.CC)
end
_v4.carryOrig = nil
end
return true
end
function _v4.khRange()
local _v2kk
pcall(function() _v2kk = _v4.getCC():GetConsumeRange() end)
if type(_v2kk) ~= _ei9m[2923] or _v2kk <= 0 then _v2kk = 22 end
return _v2kk
end
function _v4.nearestCorpse(_v2kl)
local _v2km = _v4.getCC()
if not (_v2km and _v2km.CorpseData and _v2kl) then return nil end
local _v2kn, _v2ko, _v2kp
for _v2kq, _v2kr in pairs(_v2km.CorpseData) do
local _v2ks = _v2kr and _v2kr.Root
if _v2ks and _v2ks.Parent and (tonumber(_v2kr.Weight) or 0) > 0 then
local _v2kt
pcall(function()
_v2kt = _v2ks:IsA(_ei9m[350-17]) and _v2ks.Position or _v2ks:GetPivot().Position
end)
if _v2kt then
local _v2ku = (_v2kt - _v2kl).Magnitude
if not _v2kp or _v2ku < _v2kp then _v2kn, _v2ko, _v2kp = _v2kq, _v2ks, _v2ku end
end
end
end
return _v2kn, _v2ko, _v2kp
end
function _v4.warpToCorpse(_v2kv, _v2kw)
local _v2kx
pcall(function()
_v2kx = _v2kw:IsA(_ei9m[2549-12]) and _v2kw.Position or _v2kw:GetPivot().Position
end)
if not _v2kx then return false end
local _v2ky = 3
pcall(function() _v2ky = _v2kv.Size.Y * 0.5 end)
local _v2kz = Vector3.new(_v4.TP_OFFSET or 8, 0, 0)
local _v2l0 = _v4.groundUnder(_v2kx + _v2kz) or _v4.groundUnder(_v2kx)
local _v2l1 = _v2l0 and (_v2l0 + Vector3.new(0, _v2ky + 0.5, 0)) or (_v2kx + Vector3.new(0, 4, 0))
local function _v2l2(_v2l3)
local _v2l4 = _v2.Character
if _v2l4 then pcall(function() _v2l4:SetAttribute(_ei9m[2+431], nil) end) end
return _v2l3
end
local _v2l5 = _v2.Character
local _v2l6 = math.max(_v2kv.Position.Y, _v2l1.Y) + 60
for _v2l7 = 1, 3 do
if _v4.UNLOADED or not _v4.TP_CORPSE then return _v2l2(false) end
if _v2l5 then pcall(function() _v2l5:SetAttribute(_ei9m[937], true) end) end
local _v2l8 = _v2kv.Position
_v4.govGlide(_v2kv, Vector3.new(_v2l8.X, _v2l6, _v2l8.Z), nil, 12, 6)
if _v4.UNLOADED or not _v4.TP_CORPSE then return _v2l2(false) end
local _v2l9 = Vector3.new(_v2l1.X, _v2l6, _v2l1.Z)
_v4.govGlide(_v2kv, _v2l9, nil,
(_v2l9 - _v2kv.Position).Magnitude / math.max(_v4.govCeiling(), 1) * 1.6 + 8, 6)
if _v4.UNLOADED or not _v4.TP_CORPSE then return _v2l2(false) end
_v4.govGlide(_v2kv, _v2l1, nil, 15, 4)
task.wait(0.35)
if (_v2kv.Position - _v2l1).Magnitude < 25 then
if _v4.TP_SOLID then
pcall(function() _v2kv.Anchored = true end)
task.wait(0.25)
pcall(function()
_v2kv.Anchored = false
_v2kv.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
end)
end
return _v2l2(true)
end
task.wait(0.5)
end
return _v2l2(false)
end
_v4.addStep(30, function()
if _v4.UNLOADED or not _v4.TP_CORPSE or _v4.tpBusy then return end
if _v4.tpDone and not _v4.TP_CHAIN then return end
local _v2la = _vjc()
if not (_v2la and _v2la.Parent) then return end
local _v2lb = _v4.getCC()
if not _v2lb then return end
if _v4.tpTargetId then
local _v2lc = _v2lb.CorpseData and _v2lb.CorpseData[_v4.tpTargetId]
if _v2lc and (tonumber(_v2lc.Weight) or 0) > 0 then return end
_v4.tpTargetId = nil
if not _v4.TP_CHAIN then _v4.tpDone = true return end
end
local _v2ld, _v2le, _v2lf = _v4.nearestCorpse(_v2la.Position)
if not _v2ld then return end
_v4.tpBusy = true
task.spawn(function()
_v4.applyFallImmunity(true)
local _v2lg = _v4.warpToCorpse(_v2la, _v2le)
_v4.tpTargetId = _v2lg and _v2ld or nil
if _v2lg and not _v4.TP_CHAIN then _v4.tpDone = true end
pcall(function()
_v28h:Notify(_v2lg
and (_ei9m[1181-13] .. math.floor(_v2lf or 0) .. _ei9m[2501])
or _ei9m[690+1095], 5)
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
local _v2lh = game:GetService(_ei9m[500+32])
local _v2li = game:GetService(_ei9m[1970-20])
local _v2lj
function _v4.applyFpsSaver(_v2lk)
if _v2lk then
if not _v2lj then
_v2lj = { shadows = _v2lh.GlobalShadows, fogEnd = _v2lh.FogEnd, fogStart = _v2lh.FogStart,
quality = nil, effects = {} }
pcall(function() _v2lj.quality = settings().Rendering.QualityLevel end)
for _v2ll, _v2lm in ipairs(_v2lh:GetChildren()) do
if _v2lm:IsA(_ei9m[385-7]) or _v2lm:IsA(_ei9m[718+1902]) then _v2lj.effects[_v2lm] = _v2lm.Enabled end
end
end
pcall(function() if setfpscap and not _v4.IS_XENO then setfpscap(10) end end)
pcall(function() settings().Rendering.QualityLevel = Enum.QualityLevel.Level01 end)
pcall(function() _v2lh.GlobalShadows = false end)
pcall(function() _v2lh.FogStart = 0; _v2lh.FogEnd = 12 end)
for _v2ln, _v2lo in ipairs(_v2lh:GetChildren()) do
if _v2lo:IsA(_ei9m[1604-5]) or _v2lo:IsA(_ei9m[508-1]) then pcall(function() _v2lo.Enabled = false end) end
end
pcall(function() _v2li:Set3dRenderingEnabled(false) end)
else
pcall(function() _v2li:Set3dRenderingEnabled(true) end)
pcall(function() if setfpscap and not _v4.IS_XENO then setfpscap(0) end end)
if _v2lj then
pcall(function() if _v2lj.quality then settings().Rendering.QualityLevel = _v2lj.quality end end)
pcall(function() _v2lh.GlobalShadows = _v2lj.shadows end)
pcall(function() _v2lh.FogStart = _v2lj.fogStart; _v2lh.FogEnd = _v2lj.fogEnd end)
for _v2lp, _v2lq in pairs(_v2lj.effects) do pcall(function() if _v2lp and _v2lp.Parent then _v2lp.Enabled = _v2lq end end) end
_v2lj = nil
end
end
end
end
local _v2lr = _v28h:AddTab({Name = _ei9m[639+518]})
local _v2ls = _v28h:AddTab({Name = _ei9m[1934+633]})
local _v2lt = _v28h:AddTab({Name = _ei9m[25+34]})
local _v2lu = _v28h:AddTab({Name = _ei9m[7+2208]})
local _v2lv = {}
local _v2lw
_v2lw = _v28l(_v2lr:AddSubTab({Name = _ei9m[1354-20]}))
_v4.section(_v2lw, _ei9m[2197], _ei9m[179+443])
_v4.fossilFarmToggle = _v2lw:AddToggle({
Name = _ei9m[436+1564],
Skull = true,
Default = false,
Callback = function(_v2lx)
_v4.FOSSIL_FARM = _v2lx
if _v2lx then _v4.startFossilFarm() else _v2ht() end
end
})
_v4.fossilFarmSpeedSlider = _v2lw:AddSlider({
Name = _ei9m[971-10],
Skull = true,
Min = 10, Max = 50, Default = 50,
Callback = function(_v2ly) _v4.FOSSIL_FARM_SPEED = _v2ly end
})
_v2lw = _v28l(_v2lr:AddSubTab({Name = _ei9m[1947]}))
_v4.section(_v2lw, _ei9m[492], _ei9m[7+1953])
_v4.autoWaterToggle = _v2lw:AddToggle({
Name = _ei9m[2631-19],
Default = false,
Callback = function(_v2lz) _v4.AUTO_WATER = _v2lz end
})
_v2lv.waterAnywhere = _v2lw:AddToggle({
Name = _ei9m[2727],
Default = false,
Callback = function(_v2m0) _v4.WATER_ANYWHERE = _v2m0; _v4.anywhereSips = 0 end
})
_v4.forceEatToggle = _v2lw:AddToggle({
Name = _ei9m[36-3],
Default = false,
Callback = function(_v2m1)
_v4.FORCE_EAT = _v2m1
if _v2m1 and _v4.AFK_FARM then
pcall(function() if _v4.Hub then _v4.Hub:Notify(_ei9m[2+641], 5) end end)
end
end
})
_v4.section(_v2lw, _ei9m[2201], _ei9m[2289])
_v2lv.fastEat = _v2lw:AddToggle({
Name = _ei9m[5+1466],
Default = true,
Callback = function(_v2m2) _v4.FAST_EAT = _v2m2 end
})
_v2lv.eatWhenHungry = _v2lw:AddToggle({
Name = _ei9m[1931],
Default = false,
Callback = function(_v2m3) _v4.EAT_WHEN_HUNGRY = _v2m3 end
})
_v2lv.leaveScraps = _v2lw:AddToggle({
Name = _ei9m[324+2688],
Default = false,
Callback = function(_v2m4) _v4.LEAVE_SCRAPS = _v2m4 end
})
if not _v4.IS_XENO then
_v4.section(_v2lw, _ei9m[1443-15], _ei9m[211-16])
_v2lv.carryCorpse = _v2lw:AddToggle({
Name = _ei9m[2+2119],
Default = false,
Callback = function(_v2m5)
_v4.CARRY_CORPSE = _v2m5
if not _v4.carryApply(_v2m5) and _v2m5 then
_v4.CARRY_CORPSE = false
pcall(function() if _v4.Hub then _v4.Hub:Notify(_ei9m[339], 5) end end)
end
end
})
end
_v4.section(_v2lw, _ei9m[1185], _ei9m[5+2181])
_v4.afkFarmToggle = _v2lw:AddToggle({
Name = _ei9m[3+930],
Skull = true,
Default = false,
Callback = function(_v2m6)
_v4.AFK_FARM = _v2m6
if _v2m6 then
if _v4.FLY and _v4.flyToggle then pcall(function() _v4.flyToggle:Set(false) end) end
if _v4.AUTO_FLY and _v4.autoFlyToggle then pcall(function() _v4.autoFlyToggle:Set(false) end) end
if _v4.LEGIT_FARM and _v4.legitFarmToggle then pcall(function() _v4.legitFarmToggle:Set(false) end) end
local _v2m7 = {}
if _v4.FORCE_EAT then _v2m7[#_v2m7 + 1] = _ei9m[86+34] end
if _v4.AFK_FARM_SAFETY and (_v4.AUTO_SAVE or _v4.SAVE_DINO_ACTIVE) then _v2m7[#_v2m7 + 1] = _ei9m[3+22] end
if _v4.AFK_FARM_SAFETY and _v4.SAVE_DINO_ACTIVE and _v4.releaseDino then pcall(_v4.releaseDino) end
if _v4.AFK_FARM_ADMIN_KICK and _v4.adminKickSweep then _v4.adminKickSweep() end
if #_v2m7 > 0 then
local _v2m8 = table.concat(_v2m7, _ei9m[855+1701]) .. _ei9m[2+221]
pcall(function() if _v4.Hub then _v4.Hub:Notify(_v2m8, 6) end end)
end
else
_v4.afkStopWalk()
end
end
})
_v2lv.afkFarmSpeed = _v2lw:AddSlider({
Name = _ei9m[740-3],
Min = 10, Max = 50, Default = 50,
Callback = function(_v2m9) _v4.AFK_FARM_SPEED = _v2m9 end
})
_v2lv.afkFarmAvoid = _v2lw:AddSlider({
Name = _ei9m[2355-19],
Min = 0, Max = 1000, Default = 200,
Callback = function(_v2ma) _v4.AFK_FARM_AVOID = _v2ma end
})
_v2lv.afkFarmWalk = _v2lw:AddToggle({
Name = _ei9m[229+409],
Default = true,
Callback = function(_v2mb) _v4.AFK_FARM_WALK = _v2mb end
})
_v2lv.afkFarmSafety = _v2lw:AddToggle({
Name = _ei9m[1518-3],
Default = true,
Callback = function(_v2mc)
_v4.AFK_FARM_SAFETY = _v2mc
if _v2mc and _v4.AFK_FARM and _v4.SAVE_DINO_ACTIVE and _v4.releaseDino then pcall(_v4.releaseDino) end
end
})
_v2lv.afkFarmAdminKick = _v2lw:AddToggle({
Name = _ei9m[2+1238],
Default = true,
Callback = function(_v2md)
_v4.AFK_FARM_ADMIN_KICK = _v2md
if _v2md and _v4.AFK_FARM and _v4.adminKickSweep then _v4.adminKickSweep() end
end
})
_v2lv.afkFarmFlee = _v2lw:AddToggle({
Name = _ei9m[1836-20],
Default = true,
Callback = function(_v2me) _v4.AFK_FARM_FLEE = _v2me end
})
_v2lv.afkFarmUnstuck = _v2lw:AddToggle({
Name = _ei9m[642-6],
Default = false,
Callback = function(_v2mf) _v4.AFK_FARM_UNSTUCK = _v2mf end
})
_v4.section(_v2lw, _ei9m[917-15], _ei9m[2485-3])
_v4.legitFarmToggle = _v2lw:AddToggle({
Name = _ei9m[2341-15],
Skull = true,
Default = false,
Callback = function(_v2mg)
_v4.LEGIT_FARM = _v2mg
if _v2mg then
if _v4.AFK_FARM and _v4.afkFarmToggle then pcall(function() _v4.afkFarmToggle:Set(false) end) end
if _v4.FLY and _v4.flyToggle then pcall(function() _v4.flyToggle:Set(false) end) end
if _v4.AUTO_FLY and _v4.autoFlyToggle then pcall(function() _v4.autoFlyToggle:Set(false) end) end
if _v4.FOSSIL_FARM and _v4.fossilFarmToggle then pcall(function() _v4.fossilFarmToggle:Set(false) end) end
if _v4.LF_ADMIN_KICK and _v4.adminKickSweep then _v4.adminKickSweep() end
end
end
})
_v2lv.lfAvoid = _v2lw:AddSlider({
Name = _ei9m[255+105],
Min = 0, Max = 1000, Default = 200,
Callback = function(_v2mh) _v4.LF_AVOID = _v2mh end
})
_v2lv.lfMaxDist = _v2lw:AddSlider({
Name = _ei9m[1989],
Min = 200, Max = 3000, Default = 1000,
Callback = function(_v2mi) _v4.LF_MAX_DIST = _v2mi end
})
_v2lv.lfScraps = _v2lw:AddToggle({
Name = _ei9m[2494],
Default = false,
Callback = function(_v2mj) _v4.LF_SCRAPS = _v2mj end
})
_v2lv.lfCircle = _v2lw:AddToggle({
Name = _ei9m[4+1941],
Default = false,
Callback = function(_v2mk) _v4.LF_CIRCLE = _v2mk end
})
_v2lv.lfFlee = _v2lw:AddToggle({
Name = _ei9m[1279-11],
Default = false,
Callback = function(_v2ml) _v4.LF_FLEE = _v2ml end
})
_v2lv.lfTabOut = _v2lw:AddToggle({
Name = _ei9m[6+2679],
Default = true,
Callback = function(_v2mm) _v4.LF_TABOUT = _v2mm end
})
_v2lv.lfUnstuck = _v2lw:AddToggle({
Name = _ei9m[2+472],
Default = true,
Callback = function(_v2mn) _v4.LF_UNSTUCK = _v2mn end
})
_v2lv.lfRest = _v2lw:AddToggle({
Name = _ei9m[854-6],
Default = true,
Callback = function(_v2mo) _v4.LF_REST = _v2mo end
})
_v2lv.lfAdminKick = _v2lw:AddToggle({
Name = _ei9m[7+1078],
Default = true,
Callback = function(_v2mp)
_v4.LF_ADMIN_KICK = _v2mp
if _v2mp and _v4.LEGIT_FARM and _v4.adminKickSweep then _v4.adminKickSweep() end
end
})
_v2lv.lfFlyAway = _v2lw:AddToggle({
Name = _ei9m[103+163],
Default = true,
Callback = function(_v2mq) _v4.LF_FLYAWAY = _v2mq end
})
_v2lv.lfFlyAwayRadius = _v2lw:AddSlider({
Name = _ei9m[3018-11],
Min = 50, Max = 500, Default = 150,
Callback = function(_v2mr) _v4.LF_FLYAWAY_RADIUS = _v2mr end
})
_v4.section(_v2lw, _ei9m[212], _ei9m[1793])
_v4.autoSwitchToggle = _v2lw:AddToggle({
Name = _ei9m[2+29],
Skull = true,
Default = false,
Callback = function(_v2ms)
_v4.AUTO_SWITCH = _v2ms
if _v2ms and _v4.asRefreshLists then pcall(_v4.asRefreshLists) end
if not _v2ms then _v4.AS_BUSY = false end
end
})
;(function()
local _v2mt = _v4.asItems and _v4.asItems() or { _ei9m[445+1504] }
_v4.AS_SLOTS = _v4.AS_SLOTS or {}
for _v2mu = 1, 6 do
_v4.AS_SLOTS[_v2mu] = _ei9m[2481+469]
_v2lv[_ei9m[89-20] .. _v2mu] = _v2lw:AddDropdown({
Name = _ei9m[1147-3] .. _v2mu,
Items = _v2mt,
Default = _ei9m[3+1629],
Callback = function(_v2mv) _v4.AS_SLOTS[_v2mu] = _v4.asNameOf and _v4.asNameOf(_v2mv) or _v2mv end
})
if _v4.asDropdowns then _v4.asDropdowns[_v2mu] = _v2lv[_ei9m[4+2151] .. _v2mu] end
end
end)()
_v2lv.asGender = _v2lw:AddDropdown({
Name = _ei9m[303+55],
Items = { _ei9m[2421], _ei9m[261-9] },
Default = _ei9m[1497-10],
Callback = function(_v2mw) _v4.AS_GENDER = _v2mw end
})
_v2lv.asAutoOrder = _v2lw:AddToggle({
Name = _ei9m[1300],
Default = false,
Callback = function(_v2mx) _v4.AS_AUTO_ORDER = _v2mx end
})
_v2lv.asAutoBuy = _v2lw:AddToggle({
Name = _ei9m[2278],
Default = false,
Callback = function(_v2my) _v4.AS_AUTOBUY = _v2my end
})
pcall(function()
if _v2lw.AddLabel then _v4.asDoneLabel = _v2lw:AddLabel({ Name = _ei9m[932+687], Text = _ei9m[2437] }) end
if _v4.asRefreshDone then _v4.asRefreshDone() end
end)
_v4.section(_v2lw, _ei9m[181], _ei9m[2842-6])
_v4.farmTimerToggle = _v2lw:AddToggle({
Name = _ei9m[47+678],
Default = false,
Callback = function(_v2mz)
_v4.FARM_TIMER = _v2mz
_v4.ftElapsed, _v4.ftWarned = 0, false
if _v2mz then
pcall(function() _v4.Hub:Notify(_ei9m[1372] .. math.floor(_v4.FT_MINUTES or 0) .. _ei9m[2581-5], 5) end)
end
end
})
_v2lv.ftMinutes = _v2lw:AddSlider({
Name = _ei9m[1145],
Min = 5, Max = 720, Default = 120,
Callback = function(_v2n0) _v4.FT_MINUTES = _v2n0 end
})
_v4.section(_v2lw, _ei9m[1438+932], _ei9m[601+237])
_v4.rejoinToggle = _v2lw:AddToggle({
Name = _ei9m[1373-16],
Default = _v4.REJOIN,
Callback = function(_v2n1)
_v4.REJOIN = _v2n1
if _v4.rejoinSave then _v4.rejoinSave() end
end
})
;(function()
local _v2n2 = { _ei9m[674+1801], _ei9m[367+575], _ei9m[109], _ei9m[270-19], _ei9m[135-6] }
if not table.find(_v2n2, _v4.REJOIN_MAP) then _v4.REJOIN_MAP = _ei9m[2603] end
_v2lv.rejoinMap = _v2lw:AddDropdown({
Name = _ei9m[7+44],
Items = _v2n2,
Default = _v4.REJOIN_MAP,
Callback = function(_v2n3)
_v4.REJOIN_MAP = _v2n3
if _v4.rejoinSave then _v4.rejoinSave() end
end
})
end)()
;(function()
local _v2n4 = { _ei9m[7+492] }
for _v2n5, _v2n6 in ipairs(_v4.asItems and _v4.asItems() or {}) do
if (_v4.asNameOf and _v4.asNameOf(_v2n6)) ~= _ei9m[900] then _v2n4[#_v2n4 + 1] = _v2n6 end
end
local _v2n7 = _ei9m[2980]
if type(_v4.FARM_DINO) == _ei9m[500+1533] and _v4.FARM_DINO ~= "" and _v4.FARM_DINO ~= _ei9m[549-3] then
_v2n7 = (_v4.asLabel and _v4.asLabel(_v4.FARM_DINO)) or _v4.FARM_DINO
end
_v2lv.rejoinDino = _v2lw:AddDropdown({
Name = _ei9m[2494-1],
Items = _v2n4,
Default = _v2n7,
Callback = function(_v2n8)
local _v2n9 = (_v4.asNameOf and _v4.asNameOf(_v2n8)) or _v2n8
if _v2n9 == _ei9m[1363-20] or _v2n9 == _ei9m[4+188] or _v2n9 == nil then
_v4.FARM_DINO = nil
else
_v4.FARM_DINO = _v2n9
end
if _v4.rejoinSave then _v4.rejoinSave() end
end
})
end)()
_v2lv.lowPopLeave = _v2lw:AddToggle({
Name = _ei9m[5+1424],
Default = _v4.LOW_POP_LEAVE,
Callback = function(_v2na)
_v4.LOW_POP_LEAVE = _v2na
if _v4.rejoinSave then _v4.rejoinSave() end
end
})
_v2lv.lowPopMin = _v2lw:AddSlider({
Name = _ei9m[6+145],
Min = 10, Max = 150, Default = _v4.LOW_POP_MIN,
Callback = function(_v2nb)
_v4.LOW_POP_MIN = _v2nb
if _v4.rejoinSave then _v4.rejoinSave() end
end
})
_v4.antiAfkToggle = _v2lw:AddToggle({
Name = _ei9m[972],
Default = false,
Callback = function(_v2nc) _v4.ANTI_AFK = _v2nc end
})
_v4.section(_v2lw, _ei9m[2+1369], _ei9m[991+1702])
_v2lv.fpsSaver = _v2lw:AddToggle({
Name = _ei9m[2391-12],
Default = false,
Callback = function(_v2nd) _v4.FPS_SAVER = _v2nd; if _v4.applyFpsSaver then _v4.applyFpsSaver(_v2nd) end end
})
_v4.section(_v2lw, _ei9m[1106+1070], _ei9m[2+2839])
_v4.autoCleanToggle = _v2lw:AddToggle({
Name = _ei9m[1485-9],
Default = false,
Callback = function(_v2ne) _v4.AUTO_CLEAN = _v2ne end
})
_v2lv.infOxygen = _v2lw:AddToggle({
Name = _ei9m[139],
Default = false,
Callback = function(_v2nf) _v4.INF_OXYGEN = _v2nf end
})
_v2lw = _v28l(_v2lr:AddSubTab({Name = _ei9m[53+2387]}))
_v4.section(_v2lw, _ei9m[830+983], _ei9m[2115-14])
_v4.autoSpawnToggle = _v2lw:AddToggle({
Name = _ei9m[6+2098],
Default = false,
Callback = function(_v2ng)
if _v2ng then
_v4.startAutoSpawn()
else
_v4.autoSpawnCleanup()
end
end
})
function _v4.markScaled(_v2nh, _v2ni, _v2nj)
local _v2nk = (tonumber(_v2nj) or 1) >= 5
for _v2nl, _v2nm in ipairs({ _v2nh, _v2ni }) do
if _v2nm and _v2nm.SetSkull then pcall(function() _v2nm:SetSkull(_v2nk) end) end
end
end
_v2lw = _v28l(_v2ls:AddSubTab({Name = _ei9m[417+1003]}))
_v4.section(_v2lw, _ei9m[6+2481], _ei9m[428])
_v4.hitboxToggle = _v2lw:AddToggle({
Name = _ei9m[5+2050],
Default = false,
Callback = function(_v2nn)
_v4.HITBOX_EXPANDER = _v2nn
if not _v2nn then _v4.resetAllHitboxes() end
end
})
_v2lv.hitboxVis = _v2lw:AddToggle({
Name = _ei9m[870-1],
Default = false,
Callback = function(_v2no)
_v4.HITBOX_VISUALIZE = _v2no
if not _v2no then
for _v2np, _v2nq in _v0:GetPlayers() do
if _v2nq ~= _v2 then
_v4.visualizePlayerHitbox(_v2nq, false)
_v4.hbShown[_v2nq] = nil
end
end
end
end
})
_v2lv.hitboxVisOpacity = _v2lw:AddSlider({
Name = _ei9m[1737],
Min = 0, Max = 100, Default = 50,
Callback = function(_v2nr) _v4.HITBOX_VIS_TRANSPARENCY = 1 - (_v2nr / 100) end
})
_v2lv.hitboxMult = _v2lw:AddSlider({
Name = _ei9m[4+53],
Min = 1, Max = 5, Default = 1,
Callback = function(_v2ns) _v4.HITBOX_MULTIPLIER = _v2ns; _v4.markScaled(_v4.hitboxToggle, _v2lv.hitboxMult, _v2ns) end
})
_v4.section(_v2lw, _ei9m[2805], _ei9m[2+2129])
_v2lv.hitboxGroups = _v4.groupDropdown(_v2lw, _ei9m[1836+1121], _v4.HITBOX_GROUPS, _v4.PART_GROUP_ORDER)
_v2lw = _v28l(_v2ls:AddSubTab({Name = _ei9m[305]}))
_v4.section(_v2lw, _ei9m[309], _ei9m[6+1415])
_v2lv.reach = _v2lw:AddToggle({
Name = _ei9m[2031-19],
Default = false,
Callback = function(_v2nt)
_v4.REACH_ENABLED = _v2nt
if not _v2nt and not _v4.REACH_VISUALIZE then _v4.resetLocalReach() end
end
})
_v2lv.reachVis = _v2lw:AddToggle({
Name = _ei9m[2853-13],
Default = false,
Callback = function(_v2nu)
_v4.REACH_VISUALIZE = _v2nu
if not _v2nu and not _v4.REACH_ENABLED then _v4.resetLocalReach() end
end
})
_v2lv.reachVisOpacity = _v2lw:AddSlider({
Name = _ei9m[2340],
Min = 0, Max = 100, Default = 50,
Callback = function(_v2nv) _v4.REACH_VIS_TRANSPARENCY = 1 - (_v2nv / 100) end
})
_v2lv.reachMult = _v2lw:AddSlider({
Name = _ei9m[1770+396],
Min = 1, Max = 5, Default = 1,
Callback = function(_v2nw) _v4.REACH_MULTIPLIER = _v2nw; _v4.markScaled(_v2lv.reach, _v2lv.reachMult, _v2nw) end
})
_v2lv.reachGroups = _v4.groupDropdown(_v2lw, _ei9m[2181], _v4.REACH_GROUPS, _v4.REACH_GROUP_ORDER,
_v4.resetLocalReach)
_v2lw = _v28l(_v2ls:AddSubTab({Name = _ei9m[2059-9]}))
_v4.section(_v2lw, _ei9m[5+883], _ei9m[1694])
_v2lv.noAtkCd = _v2lw:AddToggle({
Name = _ei9m[1289+301],
Skull = true,
Default = false,
Callback = function(_v2nx)
_v4.NO_ATK_CD = _v2nx
if not _v2nx then _v4.restoreAttackSpeed() end
end
})
_v2lv.attackSpeed = _v2lw:AddSlider({
Name = _ei9m[1834+232],
Min = 1, Max = 10, Default = 3,
Callback = function(_v2ny) _v4.ATTACK_SPEED = _v2ny end
})
if _v4.CAP.charstate then
_v2lv.noAtkCooldown = _v2lw:AddToggle({
Name = _ei9m[811-9],
Skull = true,
Default = false,
Callback = function(_v2nz) _v4.NO_ATK_COOLDOWN = _v2nz end
})
end
_v4.section(_v2lw, _ei9m[2877], _ei9m[905+1277])
_v2lv.silentAim = _v2lw:AddToggle({
Name = _ei9m[435+480],
Default = false,
Callback = function(_v2o0)
_v4.SILENT_AIM = _v2o0
if not _v2o0 then _v4.resetAllHitboxes() end
end
})
_v2lv.silentGroups = _v4.groupDropdown(_v2lw, _ei9m[777-10], _v4.SILENT_GROUPS, _v4.PART_GROUP_ORDER)
_v2lw = _v28l(_v2lt:AddSubTab({Name = _ei9m[6+1690]}))
_v4.section(_v2lw, _ei9m[1722+972], _ei9m[2761-15])
_v28v = _v2lw:AddToggle({
Name = _ei9m[177+1147],
Skull = true,
Default = false,
Callback = function(_v2o1)
if _v2o1 and not _v4.SAVE_DINO_ACTIVE then _v29c()
elseif not _v2o1 and _v4.SAVE_DINO_ACTIVE then _v4.releaseDino() end
end
})
_v4.autoSaveToggle = _v2lw:AddToggle({
Name = _ei9m[642],
Default = false,
Keybind = true,
Callback = function(_v2o2)
_v4.AUTO_SAVE = _v2o2
if _v2o2 and _v4.AFK_FARM and _v4.AFK_FARM_SAFETY then
pcall(function() if _v4.Hub then _v4.Hub:Notify(_ei9m[3+226], 5) end end)
end
end
})
_v4.autoSaveBleedToggle = _v2lw:AddToggle({
Name = _ei9m[2220-7],
Default = true,
Callback = function(_v2o3) _v4.AUTO_SAVE_BLEED = _v2o3 end
})
_v4.autoSaveSlider = _v2lw:AddSlider({
Name = _ei9m[1317],
Min = 1, Max = 95, Default = 30,
Callback = function(_v2o4) _v4.AUTO_SAVE_PCT = _v2o4 end
})
_v4.section(_v2lw, _ei9m[557], _ei9m[2+2708])
_v4.noFallToggle = _v2lw:AddToggle({
Name = _ei9m[4+88],
Default = false,
Callback = function(_v2o5) _v4.NO_FALL_DAMAGE = _v2o5; _v4.applyFallImmunity(_v2o5) end
})
_v2lw = _v28l(_v2lt:AddSubTab({Name = _ei9m[46-1]}))
_v4.section(_v2lw, _ei9m[2882+124], _ei9m[1299+356])
_v4.flyToggle = _v2lw:AddToggle({
Name = _ei9m[1130+1695],
Skull = true,
Default = false,
Callback = function(_v2o6) _v4.FLY = _v2o6 end
})
_v4.flySpeedSlider = _v2lw:AddSlider({
Name = _ei9m[467-14],
Skull = true,
Min = 10, Max = 100, Default = 70,
Callback = function(_v2o7) _v4.FLY_SPEED = _v2o7 end
})
_v4.section(_v2lw, _ei9m[1360], _ei9m[2174])
do
local _v2o8 = false
local function _v2o9(_v2oa, _v2ob)
if _v2o8 then return end
_v2o8 = true
_v4.AUTO_GAIT = _v2ob and _v2oa or nil
for _v2oc, _v2od in pairs({ Walk = _v2lv.autoWalk, Trot = _v2lv.autoTrot, Run = _v2lv.autoRun, Sprint = _v2lv.autoSprint }) do
if _v2oc ~= _v2oa and _v2od and _v2od.Set then pcall(function() _v2od:Set(false) end) end
end
if not _v2ob and _v4.autoGaitStop then _v4.autoGaitStop() end
_v2o8 = false
end
_v2lv.autoWalk = _v2lw:AddToggle({ Name = _ei9m[6+1394], Default = false, Callback = function(_v2oe) _v2o9(_ei9m[2497], _v2oe) end })
_v2lv.autoTrot = _v2lw:AddToggle({ Name = _ei9m[1925+995], Default = false, Callback = function(_v2of) _v2o9(_ei9m[6+1521], _v2of) end })
_v2lv.autoRun = _v2lw:AddToggle({ Name = _ei9m[1874], Default = false, Callback = function(_v2og) _v2o9(_ei9m[2+1557], _v2og) end })
_v2lv.autoSprint = _v2lw:AddToggle({ Name = _ei9m[956-15], Default = false, Callback = function(_v2oh) _v2o9(_ei9m[3+1250], _v2oh) end })
end
_v4.section(_v2lw, _ei9m[4+2670], _ei9m[2195])
_v2bo = _v2lw:AddKeybind({
Name = _ei9m[4+36],
Default = Enum.KeyCode.Unknown,
Callback = function() end
})
_v4.section(_v2lw, _ei9m[2+485], _ei9m[1201-12])
_v2lv.quickTurn = _v2lw:AddToggle({
Name = _ei9m[471+1943],
Default = false,
Keybind = true,
Callback = function(_v2oi) _v4.QUICK_TURN = _v2oi end
})
_v2lv.turnSpeed = _v2lw:AddSlider({
Name = _ei9m[1645+666],
Min = 0, Max = 500, Default = 250,
Callback = function(_v2oj) _v4.TURN_SPEED = _v2oj end
})
_v4.section(_v2lw, _ei9m[1203], _ei9m[1119])
_v4.autoGrowToggle = _v2lw:AddToggle({
Name = _ei9m[6+1005],
Default = false,
Callback = function(_v2ok)
if _v2ok and not _v4.AUTO_GROW then
_v4.AUTO_GROW = true
_vja = nil
_v4.startAutoGrow()
elseif not _v2ok and _v4.AUTO_GROW then
_v4.stopAutoGrow()
end
_v4.AUTO_GROW = _v2ok
end
})
_v2lw = _v28l(_v2lu:AddSubTab({Name = _ei9m[4+480]}))
_v4.section(_v2lw, _ei9m[7+136], _ei9m[7+1814])
_v4.espToggle = _v2lw:AddToggle({
Name = _ei9m[4+1563],
Default = false,
Callback = function(_v2ol)
_v4.ESP_ENABLED = _v2ol
if not _v2ol then
for _v2om, _v2on in pairs(_v4.espCache) do
if _v2on.billboard then _v2on.billboard.Enabled = false end
end
end
end
})
_v2lv.showName = _v2lw:AddToggle({ Name = _ei9m[2732-4], Default = true, Callback = function(_v2oo) _v4.SHOW_NAME = _v2oo end })
_v2lv.showDino = _v2lw:AddToggle({ Name = _ei9m[2228], Default = true, Callback = function(_v2op) _v4.SHOW_DINO = _v2op end })
_v2lv.showStage = _v2lw:AddToggle({ Name = _ei9m[658+16], Default = true, Callback = function(_v2oq) _v4.SHOW_STAGE = _v2oq end })
_v2lv.showGender = _v2lw:AddToggle({ Name = _ei9m[844+1091], Default = true, Callback = function(_v2or) _v4.SHOW_GENDER = _v2or end })
_v2lv.showHealth = _v2lw:AddToggle({ Name = _ei9m[1386], Default = true, Callback = function(_v2os) _v4.SHOW_HEALTH = _v2os end })
_v2lv.showStamina = _v2lw:AddToggle({ Name = _ei9m[1786-10], Default = true, Callback = function(_v2ot) _v4.SHOW_STAMINA = _v2ot end })
_v2lv.foodBar = _v2lw:AddToggle({ Name = _ei9m[4+2213], Default = false, Callback = function(_v2ou) _v4.SHOW_FOOD_BAR = _v2ou end })
_v2lv.foodNum = _v2lw:AddToggle({ Name = _ei9m[7+2692], Default = false, Callback = function(_v2ov) _v4.SHOW_FOOD_NUM = _v2ov end })
_v2lv.waterBar = _v2lw:AddToggle({ Name = _ei9m[157+1594], Default = false, Callback = function(_v2ow) _v4.SHOW_WATER_BAR = _v2ow end })
_v2lv.waterNum = _v2lw:AddToggle({ Name = _ei9m[1542-20], Default = false, Callback = function(_v2ox) _v4.SHOW_WATER_NUM = _v2ox end })
_v2lv.infectBar = _v2lw:AddToggle({ Name = _ei9m[2864], Default = false, Callback = function(_v2oy) _v4.SHOW_INFECT_BAR = _v2oy end })
_v2lv.infectNum = _v2lw:AddToggle({ Name = _ei9m[5+935], Default = false, Callback = function(_v2oz) _v4.SHOW_INFECT_NUM = _v2oz end })
_v2lv.infectTag = _v2lw:AddToggle({ Name = _ei9m[1170+1595], Default = false, Callback = function(_v2p0) _v4.SHOW_INFECTED = _v2p0 end })
_v2lv.showWeight = _v2lw:AddToggle({ Name = _ei9m[6+220], Default = true, Callback = function(_v2p1) _v4.SHOW_WEIGHT = _v2p1 end })
_v2lv.bleed = _v2lw:AddToggle({ Name = _ei9m[2229], Default = false, Callback = function(_v2p2) _v4.BLEED_ESP = _v2p2 end })
_v2lv.packESP = _v2lw:AddToggle({ Name = _ei9m[6+263], Default = false, Callback = function(_v2p3) _v4.PACK_ESP = _v2p3 end })
_v2lv.packLeader = _v2lw:AddToggle({ Name = _ei9m[574+37], Default = false, Callback = function(_v2p4) _v4.PACK_LEADER_ESP = _v2p4 end })
_v2lv.showDist = _v2lw:AddToggle({ Name = _ei9m[2+2748], Default = true, Callback = function(_v2p5) _v4.SHOW_DISTANCE = _v2p5 end })
_v2lv.textHL = _v2lw:AddToggle({ Name = _ei9m[2695], Default = false, Callback = function(_v2p6) _v4.TEXT_HIGHLIGHT = _v2p6 end })
_v4.section(_v2lw, _ei9m[2761-7], _ei9m[1551])
_v2lv.textSize = _v2lw:AddSlider({ Name = _ei9m[864-6], Min = 8, Max = 28, Default = 14, Callback = function(_v2p7) _v4.TEXT_SIZE = _v2p7 end })
_v2lv.hbHeight = _v2lw:AddSlider({ Name = _ei9m[3+2821], Min = 2, Max = 20, Default = 6, Callback = function(_v2p8) _v4.HEALTH_BAR_HEIGHT = _v2p8 end })
_v2lv.hbWidth = _v2lw:AddSlider({ Name = _ei9m[1738+125], Min = 20, Max = 100, Default = 80, Callback = function(_v2p9) _v4.HEALTH_BAR_WIDTH = _v2p9 / 100 end })
_v2lv.sbHeight = _v2lw:AddSlider({ Name = _ei9m[2534+376], Min = 2, Max = 20, Default = 6, Callback = function(_v2pa) _v4.STAM_BAR_HEIGHT = _v2pa end })
_v2lv.sbWidth = _v2lw:AddSlider({ Name = _ei9m[5+2844], Min = 20, Max = 100, Default = 80, Callback = function(_v2pb) _v4.STAM_BAR_WIDTH = _v2pb / 100 end })
_v4.section(_v2lw, _ei9m[1263+1379], _ei9m[7+1852])
_v2lv.espDist = _v2lw:AddSlider({ Name = _ei9m[2353-8], Min = 100, Max = 10000, Default = 5000, Callback = function(_v2pc) _v4.ESP_DISTANCE = _v2pc end })
_v4.section(_v2lw, _ei9m[662+201], _ei9m[129-16])
_v2lv.chams = _v2lw:AddToggle({
Name = _ei9m[7+265],
Default = false,
Callback = function(_v2pd)
_v4.CHAMS_ENABLED = _v2pd
if not _v2pd then
for _v2pe, _v2pf in pairs(_v4.espCache) do
if _v2pf.highlight then _v2pf.highlight.Enabled = false end
end
end
end
})
_v2lv.chamsFill = _v2lw:AddSlider({ Name = _ei9m[3+2632], Min = 0, Max = 100, Default = 70, Callback = function(_v2pg) _v4.CHAMS_FILL_TRANSPARENCY = _v2pg / 100 end })
_v2lv.chamsOutline = _v2lw:AddSlider({ Name = _ei9m[467], Min = 0, Max = 100, Default = 0, Callback = function(_v2ph) _v4.CHAMS_OUTLINE_TRANSPARENCY = _v2ph / 100 end })
_v4.section(_v2lw, _ei9m[4+1273], _ei9m[1311+411])
_v2lv.fishESP = _v2lw:AddToggle({
Name = _ei9m[2227],
Default = false,
Callback = function(_v2pi) _v4.FISH_ESP = _v2pi end,
})
_v4.section(_v2lw, _ei9m[2378+75], _ei9m[4+1095])
_v2lv.corpse = _v2lw:AddToggle({
Name = _ei9m[6+631],
Default = false,
Callback = function(_v2pj) _v4.CORPSE_ESP = _v2pj; _vcg() end
})
_v2lv.worldTextSize = _v2lw:AddSlider({
Name = _ei9m[1749+234],
Min = 8, Max = 32, Default = 12,
Callback = function(_v2pk) _v4.WORLD_TEXT_SIZE = _v2pk end
})
_v2lv.corpseDist = _v2lw:AddSlider({
Name = _ei9m[531-6],
Min = 100, Max = 10000, Default = 5000,
Callback = function(_v2pl) _v4.CORPSE_DISTANCE = _v2pl; if _v4.CORPSE_ESP then _vcg() end end
})
_v2lv.corpseInf = _v2lw:AddToggle({
Name = _ei9m[154],
Default = true,
Callback = function(_v2pm) _v4.CORPSE_INF_ESP = _v2pm end
})
_v4.section(_v2lw, _ei9m[98], _ei9m[7+1897])
_v2lv.meat = _v2lw:AddToggle({
Name = _ei9m[4+764],
Default = false,
Callback = function(_v2pn) _v4.MEAT_ESP = _v2pn; _vcg() end
})
_v2lv.meatDist = _v2lw:AddSlider({
Name = _ei9m[1982],
Min = 100, Max = 10000, Default = 5000,
Callback = function(_v2po) _v4.MEAT_DISTANCE = _v2po; if _v4.MEAT_ESP then _vcg() end end
})
_v2lw = _v28l(_v2lu:AddSubTab({Name = _ei9m[588-20]}))
_v4.section(_v2lw, _ei9m[2468-3], _ei9m[29])
_v2lv.antiBS = _v2lw:AddToggle({
Name = _ei9m[1911+862],
Default = false,
Callback = function(_v2pp) _v4.ANTI_BLACKSCREEN = _v2pp end
})
_v2lv.noBlur = _v2lw:AddToggle({
Name = _ei9m[294+889],
Default = false,
Callback = function(_v2pq)
_v4.NO_BLUR = _v2pq
if _v2pq then _v4.sweepBlur() else _v4.restoreBlur() end
end
})
_v2lv.showModules = _v2lw:AddToggle({
Name = _ei9m[1332-17],
Default = false,
Callback = function(_v2pr) _v4.SHOW_INDICATORS = _v2pr end
})
do
_v4.section(_v2lw, _ei9m[610], _v4.CAP.charstate and _ei9m[2653-12] or _ei9m[147])
_v2lv.statsCard = _v2lw:AddToggle({ Name = _ei9m[629+167], Default = false, Callback = function(_v2ps) _v4.STATS_CARD = _v2ps end })
_v2lv.scName = _v2lw:AddToggle({ Name = _ei9m[557+1503], Default = true, Callback = function(_v2pt) _v4.SC_NAME = _v2pt end })
_v2lv.scGrowth = _v2lw:AddToggle({ Name = _ei9m[5+795], Default = true, Callback = function(_v2pu) _v4.SC_GROWTH = _v2pu end })
if _v4.CAP.charstate then
_v2lv.scMass = _v2lw:AddToggle({ Name = _ei9m[2+473], Default = true, Callback = function(_v2pv) _v4.SC_MASS = _v2pv end })
end
_v2lv.scWeight = _v2lw:AddToggle({ Name = _ei9m[1070-2], Default = true, Callback = function(_v2pw) _v4.SC_WEIGHT = _v2pw end })
_v2lv.scTimer = _v2lw:AddToggle({ Name = _ei9m[2809], Default = true, Callback = function(_v2px) _v4.SC_TIMER = _v2px end })
_v2lv.scStageTimer = _v2lw:AddToggle({ Name = _ei9m[3+2787], Default = true, Callback = function(_v2py) _v4.SC_STAGE_TIMER = _v2py end })
if _v4.CAP.charstate then
_v2lv.scNutrition = _v2lw:AddToggle({ Name = _ei9m[7+2227], Default = true, Callback = function(_v2pz) _v4.SC_NUTRITION = _v2pz end })
_v2lv.scWellbeing = _v2lw:AddToggle({ Name = _ei9m[90+11], Default = true, Callback = function(_v2q0) _v4.SC_WELLBEING = _v2q0 end })
end
_v2lv.scHideMenu = _v2lw:AddToggle({ Name = _ei9m[2047], Default = true, Callback = function(_v2q1) _v4.SC_HIDE_WITH_MENU = _v2q1 end })
_v2lv.scDrag = _v2lw:AddToggle({
Name = _ei9m[5+699],
Default = false,
Callback = function(_v2q2) _v4.SC_DRAG = _v2q2 end
})
_v2lw:AddButton({
Name = _ei9m[1013+47],
Callback = function()
if _v4.setStatsCardPos then _v4.setStatsCardPos(0.62, 0, 0, 16) end
pcall(function() _v28h:Notify(_ei9m[1319-11]) end)
end
})
end
_v4.section(_v2lw, _ei9m[1114-11], _ei9m[888-4])
do
local _v2q3 = (_v4.skinsForCurrentDino and (_v4.skinsForCurrentDino())) or { _ei9m[4+1756] }
_v4.skinDropdown = _v2lw:AddDropdown({
Name = _ei9m[127-3],
Items = _v2q3,
Default = _ei9m[1345+134],
Callback = function(_v2q4)
if type(_v2q4) ~= _ei9m[4+358] then return end
_v4.SKIN_SELECTED, _v4.SKIN_WANTED = _v2q4, _v2q4
if _v4.applySkin then pcall(_v4.applySkin, _v2q4) end
end,
})
end
_v4.section(_v2lw, _ei9m[1085-4], _ei9m[545])
_v2lv.tracers = _v2lw:AddToggle({
Name = _ei9m[2808],
Default = false,
Callback = function(_v2q5)
_v4.TRACERS_ENABLED = _v2q5
if not _v2q5 then
for _v2q6, _v2q7 in pairs(_v4.espCache) do
if _v2q7.tracer then
pcall(function() _v2q7.tracer.Visible = false end)
end
end
end
end
})
_v4.section(_v2lw, _ei9m[206+1936], _ei9m[107+776])
_v2lv.unlimitedZoom = _v2lw:AddToggle({
Name = _ei9m[996-4],
Default = false,
Callback = function(_v2q8)
_v4.UNLIMITED_ZOOM = _v2q8
if _v2q8 then _v4.bindZoom() else _v4.restoreZoom() end
end
})
_v2lv.fovToggle = _v2lw:AddToggle({
Name = _ei9m[380+511],
Default = false,
Callback = function(_v2q9)
_v4.FOV_ENABLED = _v2q9
if _v2q9 then _v4.bindFOV() else _v4.restoreFOV() end
end
})
_v2lv.fovSlider = _v2lw:AddSlider({
Name = _ei9m[1481-17],
Min = 1, Max = 120, Default = 70,
Callback = function(_v2qa) _v4.FOV_VALUE = _v2qa end
})
_v2lw = _v28l(_v2lu:AddSubTab({Name = _ei9m[247+1484]}))
_v4.section(_v2lw, _ei9m[568+18], _ei9m[1007])
_v2lv.fullbright = _v2lw:AddToggle({
Name = _ei9m[1005],
Default = false,
Callback = function(_v2qb)
_v4.FULLBRIGHT = _v2qb
if _v2qb then _v4.enableFullbright() else _v4.restoreFullbright() end
end
})
_v4.section(_v2lw, _ei9m[690+1094], _ei9m[1448])
_v2lv.noFog = _v2lw:AddToggle({
Name = _ei9m[2459],
Default = false,
Callback = function(_v2qc)
_v4.NO_FOG = _v2qc
if _v2qc then _v4.enableNoFog() else _v4.restoreNoFog() end
end
})
_v4.section(_v2lw, _ei9m[111+1719], _ei9m[699-5])
_v2lv.noWeather = _v2lw:AddToggle({
Name = _ei9m[1711],
Default = false,
Callback = function(_v2qd)
_v4.NO_WEATHER = _v2qd
_v4.applyNoWeather(_v2qd)
end
})
_v4.section(_v2lw, _ei9m[697-4], _ei9m[1206-14])
_v2lv.customTime = _v2lw:AddToggle({
Name = _ei9m[2789-15],
Default = false,
Callback = function(_v2qe) _v4.setCustomTime(_v2qe) end
})
_v2lv.timeHour = _v2lw:AddSlider({
Name = _ei9m[176],
Min = 0, Max = 24, Default = 12,
Callback = function(_v2qf) _v4.customTimeHour = _v2qf; _v4.refreshCustomTime() end
})
_v2lw:AddDropdown({
Name = _ei9m[2096-10],
Items = { _ei9m[1484], _ei9m[6+1657], _ei9m[1449-4], _ei9m[2615+164] },
Default = _ei9m[260],
Callback = function(_v2qg)
local _v2qh = ({ Sunrise = 6, Day = 13, Sunset = 18, Night = 0 })[_v2qg] or 12
_v4.customTimeHour = _v2qh
pcall(function() if _v2lv.timeHour and _v2lv.timeHour.Set then _v2lv.timeHour:Set(_v2qh) end end)
pcall(function() if _v2lv.customTime and _v2lv.customTime.Set then _v2lv.customTime:Set(true) end end)
_v4.setCustomTime(true)
_v4.refreshCustomTime()
end
})
_v4.section(_v2lw, _ei9m[108+1896], _ei9m[191+728])
_v2lv.fossilS = _v2lw:AddToggle({ Name = _ei9m[1200], Default = false, Callback = function(_v2qi) _v4.FOSSIL_SMALL = _v2qi; _vcg() end })
_v2lv.fossilDistS = _v2lw:AddSlider({ Name = _ei9m[2+763], Min = 100, Max = 10000, Default = 1500, Callback = function(_v2qj) _v4.FOSSIL_DIST_SMALL = _v2qj; _vcg() end })
_v2lv.fossilM = _v2lw:AddToggle({ Name = _ei9m[2782], Default = false, Callback = function(_v2qk) _v4.FOSSIL_MEDIUM = _v2qk; _vcg() end })
_v2lv.fossilDistM = _v2lw:AddSlider({ Name = _ei9m[1366-12], Min = 100, Max = 10000, Default = 3000, Callback = function(_v2ql) _v4.FOSSIL_DIST_MEDIUM = _v2ql; _vcg() end })
_v2lv.fossilL = _v2lw:AddToggle({ Name = _ei9m[1692], Default = false, Callback = function(_v2qm) _v4.FOSSIL_LARGE = _v2qm; _vcg() end })
_v2lv.fossilDistL = _v2lw:AddSlider({ Name = _ei9m[1241-17], Min = 100, Max = 10000, Default = 5000, Callback = function(_v2qn) _v4.FOSSIL_DIST_LARGE = _v2qn; _vcg() end })
_v4.section(_v2lw, _ei9m[671+1390], _ei9m[722+973])
_v2lv.vegESP = _v2lw:AddToggle({
Name = _ei9m[5+1120],
Default = false,
Callback = function(_v2qo)
_v4.VEG_ESP = _v2qo
if not _v2qo then _v4.vegHideAll() end
end
})
_v2lv.vegDietOnly = _v2lw:AddToggle({
Name = _ei9m[1614],
Default = false,
Callback = function(_v2qp) _v4.VEG_DIET_ONLY = _v2qp end
})
_v2lv.vegHideEaten = _v2lw:AddToggle({
Name = _ei9m[4+1645],
Default = false,
Callback = function(_v2qq) _v4.VEG_HIDE_EATEN = _v2qq end
})
_v2lv.vegDist = _v2lw:AddSlider({
Name = _ei9m[87+455],
Min = 100, Max = 5000, Default = 1500,
Callback = function(_v2qr) _v4.VEG_DISTANCE = _v2qr end
})
_v2lv.vegMax = _v2lw:AddSlider({
Name = _ei9m[1066],
Min = 10, Max = 120, Default = 40,
Callback = function(_v2qs)
if _v2qs < _v4.VEG_MAX then
for _v2qt = _v2qs + 1, _v4.VEG_MAX do
local _v2qu = _v4.vegPool[_v2qt]
if _v2qu then pcall(function() _v2qu.bb.Enabled = false; _v2qu.bb.Adornee = nil end) end
end
end
_v4.VEG_MAX = _v2qs
end
})
_v4.section(_v2lw, _ei9m[4+2229], _ei9m[525+88])
_v2lv.clay = _v2lw:AddToggle({ Name = _ei9m[1948], Default = false, Callback = function(_v2qv) _v4.CLAY_ESP = _v2qv; _vcg() end })
_v2lv.clayDist = _v2lw:AddSlider({ Name = _ei9m[1653-11], Min = 100, Max = 10000, Default = 5000, Callback = function(_v2qw) _v4.CLAY_DISTANCE = _v2qw; if _v4.CLAY_ESP then _vcg() end end })
_v4.section(_v2lw, _ei9m[993+477], _ei9m[2125])
_v2lv.mmap = _v2lw:AddToggle({
Name = _ei9m[2172-18],
Default = false,
Callback = function(_v2qx) _v4.MMAP_ON = _v2qx end
})
_v2lv.mmapPlayers = _v2lw:AddToggle({
Name = _ei9m[704+796],
Default = true,
Callback = function(_v2qy) _v4.MMAP_PLAYERS = _v2qy; if not _v2qy then _v4.mmapCollect() end end
})
_v2lv.mmapCorpses = _v2lw:AddToggle({
Name = _ei9m[2583],
Default = true,
Callback = function(_v2qz) _v4.MMAP_CORPSES = _v2qz; if not _v2qz then _v4.mmapCollect() end end
})
_v2lv.mmapFossils = _v2lw:AddToggle({
Name = _ei9m[177+14],
Default = true,
Callback = function(_v2r0) _v4.MMAP_FOSSILS = _v2r0; if not _v2r0 then _v4.mmapCollect() end end
})
_v2lw = _v28l(_v2lu:AddSubTab({Name = _ei9m[2640-16]}))
_v4.section(_v2lw, _ei9m[4+2874], _ei9m[254])
_v2lv.modCheck = _v2lw:AddToggle({
Name = _ei9m[602-4],
Default = false,
Callback = function(_v2r1) _v4.MOD_CHECK = _v2r1; _v4.modCheckRefresh() end
})
_v2lv.modKick = _v2lw:AddToggle({
Name = _ei9m[426-2],
Default = false,
Callback = function(_v2r2) _v4.MOD_KICK = _v2r2 end
})
do
_v4.modAdmins = setmetatable({}, { __mode = "k" })
_v4.modGroupId = nil
_v4.modAlertGui = nil
_v4.modAlertFrame = nil
_v4.modAlertLabels = {}
local function _v2r3()
if _v4.modGroupId then return _v4.modGroupId end
local _v2r4, _v2r5 = pcall(function() return game.CreatorType end)
if _v2r4 and _v2r5 == Enum.CreatorType.Group then
_v4.modGroupId = game.CreatorId
else
_v4.modGroupId = game.CreatorId
end
return _v4.modGroupId
end
local function _v2r6(_v2r7)
local _v2r8 = _v2r3()
if not _v2r8 or _v2r8 == 0 then return false end
local _v2r9, _v2ra = pcall(function() return _v2r7:GetRoleInGroup(_v2r8) end)
if not _v2r9 or type(_v2ra) ~= _ei9m[2+2217] then return false end
local _v2rb = string.lower(_v2ra)
for _v2rc, _v2rd in ipairs(_v4.MOD_ADMIN_KEYWORDS) do
if string.find(_v2rb, _v2rd, 1, true) then
return true, _v2ra
end
end
return false
end
local function _v2re()
if _v4.modAlertGui and _v4.modAlertGui.Parent then return end
local _v2rf = Instance.new(_ei9m[2298-1])
_v2rf.Name = _ei9m[607]; _v2rf.ResetOnSpawn = false; _v2rf.DisplayOrder = 99999
_v2rf.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
pcall(function() _v2rf.Parent = game:GetService(_ei9m[1940+872]) end)
if not _v2rf.Parent then _v2rf.Parent = _v2:WaitForChild(_ei9m[641]) end
_v4.modAlertGui = _v2rf
local _v2rg = Instance.new(_ei9m[700-15])
_v2rg.Name = _ei9m[2942]; _v2rg.Size = UDim2.new(0, 260, 0, 300)
_v2rg.Position = UDim2.new(0, 10, 0, 50)
_v2rg.BackgroundTransparency = 1; _v2rg.Parent = _v2rf
local _v2rh = Instance.new(_ei9m[521])
_v2rh.FillDirection = Enum.FillDirection.Vertical
_v2rh.HorizontalAlignment = Enum.HorizontalAlignment.Left
_v2rh.SortOrder = Enum.SortOrder.LayoutOrder
_v2rh.Padding = UDim.new(0, 4); _v2rh.Parent = _v2rg
_v4.modAlertFrame = _v2rg
end
local function _v2ri()
if not _v4.modAlertFrame then return end
for _v2rj, _v2rk in pairs(_v4.modAlertLabels) do
pcall(function() _v2rk:Destroy() end)
end
_v4.modAlertLabels = {}
if not _v4.MOD_CHECK then
if _v4.modAlertGui then _v4.modAlertGui.Enabled = false end
return
end
local _v2rl = 0
for _v2rm, _v2rn in pairs(_v4.modAdmins) do
if _v2rm and _v2rm.Parent then
_v2rl = _v2rl + 1
local _v2ro = (type(_v2rn) == _ei9m[5+1320]) and string.upper(_v2rn) or _ei9m[2277]
local _v2rp = Instance.new(_ei9m[402+778])
_v2rp.Name = _ei9m[259-19] .. _v2rm.Name
_v2rp.LayoutOrder = _v2rl
_v2rp.Size = UDim2.new(1, 0, 0, 22)
_v2rp.BackgroundColor3 = Color3.fromRGB(80, 0, 0)
_v2rp.BackgroundTransparency = 0.3
_v2rp.TextColor3 = Color3.fromRGB(255, 50, 50)
_v2rp.TextStrokeTransparency = 0
_v2rp.TextStrokeColor3 = Color3.new(0, 0, 0)
_v2rp.Font = Enum.Font.GothamBold
_v2rp.TextSize = 15
_v2rp.TextXAlignment = Enum.TextXAlignment.Left
_v2rp.Text = _v2ro .. ": " .. _v2rm.DisplayName .. _ei9m[1351-18] .. _v2rm.Name .. ")"
Instance.new(_ei9m[1974+100], _v2rp).CornerRadius = UDim.new(0, 4)
_v2rp.Parent = _v4.modAlertFrame
_v4.modAlertLabels[_v2rm] = _v2rp
end
end
if _v4.modAlertGui then _v4.modAlertGui.Enabled = _v2rl > 0 end
end
local function _v2rq(_v2rr)
if _v2rr == _v2 then return end
if _v4.UNLOADED then return end
task.spawn(function()
local _v2rs, _v2rt = _v2r6(_v2rr)
if _v2rs then
_v4.modAdmins[_v2rr] = _v2rt or _ei9m[381+426]
if _v4.MOD_KICK or (_v4.AFK_FARM and _v4.AFK_FARM_ADMIN_KICK) or (_v4.LEGIT_FARM and _v4.LF_ADMIN_KICK) then
if not (_v4.rejoinLeave and _v4.rejoinLeave(_ei9m[2210+721] .. _v2rr.DisplayName)) then
pcall(_v4.leaveNote, _ei9m[47+6], false)
pcall(function() _v2:Kick(_ei9m[2059+568] .. _v2rr.DisplayName) end)
end
return
end
if _v4.MOD_CHECK then
_v2re()
_v2ri()
pcall(function()
_v28h:Notify(string.upper(_v2rt or _ei9m[1014]) .. ": " .. _v2rr.DisplayName .. _ei9m[1277-17] .. _v2rr.Name .. ")", 8)
end)
end
end
end)
end
function _v4.adminKickSweep()
for _v2ru, _v2rv in ipairs(_v0:GetPlayers()) do _v2rq(_v2rv) end
end
function _v4.modCheckRefresh()
if _v4.MOD_CHECK then
_v2re()
for _v2rw, _v2rx in ipairs(_v0:GetPlayers()) do
if not _v4.modAdmins[_v2rx] then
_v2rq(_v2rx)
end
end
_v2ri()
else
_v2ri()
end
end
table.insert(_v2l, _v0.PlayerAdded:Connect(function(_v2ry)
if _v4.MOD_CHECK or _v4.MOD_KICK or (_v4.AFK_FARM and _v4.AFK_FARM_ADMIN_KICK)
or (_v4.LEGIT_FARM and _v4.LF_ADMIN_KICK) then
_v2rq(_v2ry)
end
end))
table.insert(_v2l, _v0.PlayerRemoving:Connect(function(_v2rz)
if _v4.modAdmins[_v2rz] then
_v4.modAdmins[_v2rz] = nil
_v2ri()
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
pcall(_v4.sweepOwnGuis)
_v4.MOD_CHECK = false
_v4.MOD_KICK = false
_v4.cleanupModCheck()
_v4.FULLBRIGHT = false
pcall(function() _v1:UnbindFromRenderStep(_ei9m[898+618]) end)
pcall(function() if _v4.restoreFullbright then _v4.restoreFullbright() end end)
_v4.AFK_FARM = false
_v4.afkStopWalk()
if _v4.afkColliders then
for _v2s0 in pairs(_v4.afkColliders) do
if _v2s0.Parent then pcall(function() _v2s0.CanCollide = true end) end
end
_v4.afkColliders, _v4.afkCollidersChar = nil, nil
end
if _v4.afkWasOn then
_v4.afkWasOn = false
pcall(function() _v2.Character:SetAttribute(_ei9m[1805], nil) end)
end
if _v4.afkSafetyState then
if _v4.afkSafetyState == _ei9m[1087] then
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.R, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.R, false, game) end)
end
if _v4.afkSafetyPlatform then pcall(function() _v4.afkSafetyPlatform:Destroy() end); _v4.afkSafetyPlatform = nil end
pcall(function()
local _v2s1 = _v4.getLocalPhysicsRoot()
if _v2s1 then _v2s1.Anchored = false end
end)
_v4.afkSafetyState = nil
end
_v4.AUTO_SWITCH, _v4.AS_BUSY, _v4.FARM_TIMER = false, false, false
_v4.LEGIT_FARM = false
pcall(function() _v1:UnbindFromRenderStep(_ei9m[1439-14]) end)
pcall(function()
local _v2s2 = _v4.lfWalkState
if _v2s2 then _v2s2.mod.AdjustDirection = _v2s2.orig; _v4.lfWalkState = nil end
end)
pcall(function() if _v4.lfWasOn and _v4.lfStop then _v4.lfStop(false) end end)
pcall(function()
local _v2s3 = getgenv and getgenv().EazyCheats_Handoff
if _v4.REJOIN_OK and _v4.REJOIN and not _v2s3 then
local _v2s4 = _v4.rejoinRead()
_v2s4.farms, _v2s4.pending = {}, nil
_v4.rejoinWrite(_v2s4)
end
end)
_v4.NO_FOG = false
pcall(function() _v1:UnbindFromRenderStep(_ei9m[137]) end)
pcall(function() if _v4.restoreNoFog then _v4.restoreNoFog() end end)
task.spawn(function() pcall(_v4.setCustomTime, false) end)
_v4.customTime = false
pcall(function() _v1:UnbindFromRenderStep(_ei9m[2+2133]) end)
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
for _v2s5 in pairs(_v4.hbMaskT or {}) do
if _v2s5 and _v2s5.Parent then _v2s5.CanQuery = true end
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
_v299()
_v291()
for _v2s6, _v2s7 in pairs(_v4.espCache) do
_v4.destroyESP(_v2s6)
end
for _v2s8, _v2s9 in pairs(_v6k) do
pcall(function() _v2s9:Destroy() end)
end
_v6k = {}
for _v2sa, _v2sb in ipairs(_v2l) do
pcall(function() _v2sb:Disconnect() end)
end
_v2l = {}
pcall(function() if _v4.mobGui then _v4.mobGui:Destroy() end end)
pcall(function() _v4.mmapDestroyPool() end)
pcall(function() _v28h:Destroy() end)
pcall(function() indicatorGui:Destroy() end)
pcall(_v4.sweepOwnGuis)
pcall(function()
for _v2sc, _v2sd in workspace:GetChildren() do
if _v2sd.Name == _ei9m[7+1950] or _v2sd.Name == _ei9m[300+498] then
_v2sd:Destroy()
end
end
end)
pcall(function()
for _v2se, _v2sf in ipairs({ _ei9m[4+353], _ei9m[828-13], _ei9m[2+463],
_ei9m[3+1302], _ei9m[145], _ei9m[214+2426] }) do
pcall(function() _v1:UnbindFromRenderStep(_v2sf) end)
end
end)
pcall(function()
local _v2sg = getgenv and getgenv()
if _v2sg then _v2sg.EazyCheats_Unload = nil end
end)
end
pcall(function()
local _v2sh = getgenv and getgenv()
if _v2sh then
_v2sh.EazyCheats_Unload = _v4.unloadScript
_v2sh.EazyCheats_Unload_Job = game.JobId
_v2sh.EazyCheats_Unload_State = nil
end
end)
_v28h.onUnload = _v4.unloadScript
_v4.CONFIG_FOLDER = _ei9m[2025+55]
_v4.AUTO_LOAD_FILE = _v4.CONFIG_FOLDER .. _ei9m[4+1167]
pcall(function() if not isfolder(_v4.CONFIG_FOLDER) then makefolder(_v4.CONFIG_FOLDER) end end)
local _v2si = game:GetService(_ei9m[914-1])
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
FLY_SPEED = _v4.FLY_SPEED,
SKIN_SELECTED = _v4.SKIN_WANTED or _v4.SKIN_SELECTED,
AUTO_FLY_SPEED = _v4.AUTO_FLY_SPEED,
AUTO_FLY_RADIUS = _v4.AUTO_FLY_RADIUS,
AUTO_FLY_DRIFT = _v4.AUTO_FLY_DRIFT,
AUTO_FLY_ALT = _v4.AUTO_FLY_ALT,
ANTI_AFK = _v4.ANTI_AFK,
AUTO_SWITCH = _v4.AUTO_SWITCH, AFK_FARM = _v4.AFK_FARM, LEGIT_FARM = _v4.LEGIT_FARM,
FOSSIL_FARM = _v4.FOSSIL_FARM, FARM_TIMER = _v4.FARM_TIMER,
AFK_FARM_SPEED = _v4.AFK_FARM_SPEED,
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
FOSSIL_FARM_SPEED = _v4.FOSSIL_FARM_SPEED,
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
INSTA_TURN_KEY = (_v2bo and _v2bo.Key and _v2bo.Key ~= Enum.KeyCode.Unknown) and _v2bo.Key.Name or nil,
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
local _v2sj = {}
for _v2sk, _v2sl in pairs(_v4.ALL_TOGGLES) do
if _v2sl and _v2sl.Key and _v2sl.Key ~= Enum.KeyCode.Unknown then
_v2sj[_v2sk] = _v2sl.Key.Name
end
end
return _v2sj
end)(),
}
end
function _v4.applyConfigData(_v2sm)
_v4.SUPPRESS_TOGGLE_NOTIFY = true
local _v2sn, _v2so = pcall(_v4.applyConfigBody, _v2sm)
if not _v2sn then warn(_ei9m[334-12] .. tostring(_v2so)) end
_v4.freeLock()
_v4.SUPPRESS_TOGGLE_NOTIFY = false
_v4.cfgApplied = true
return _v2sn
end
function _v4.applyConfigBody(_v2sp)
_v4.SUPPRESS_TOGGLE_NOTIFY = true
local function _v2sq(_v2sr, _v2ss)
pcall(function() if _v2sr and _v2ss ~= nil then _v2sr:Set(_v2ss) end end)
end
local function _v2st(_v2su, _v2sv)
pcall(function() if _v2su and _v2sv ~= nil then _v2su:Set(_v2sv) end end)
end
local function _v2sw(_v2sx, _v2sy, _v2sz, _v2t0, _v2t1)
pcall(function()
for _v2t2, _v2t3 in ipairs(_v2sy) do
local _v2t4 = _v2sz[_v2t0 .. _v2t3]
if _v2t4 ~= nil then _v2sx[_v2t3] = _v2t4 and true or false end
end
if _v2t1 and _v2t1.Refill then _v2t1.Refill() end
end)
end
_v2sq(_v4.espToggle, _v2sp.ESP_ENABLED)
_v2sq(_v2lv.chams, _v2sp.CHAMS_ENABLED)
_v2sq(_v2lv.tracers, _v2sp.TRACERS_ENABLED)
_v2sq(_v2lv.showName, _v2sp.SHOW_NAME)
_v2sq(_v2lv.showDino, _v2sp.SHOW_DINO)
_v2sq(_v2lv.showStage, _v2sp.SHOW_STAGE)
_v2sq(_v2lv.showGender, _v2sp.SHOW_GENDER)
_v2sq(_v2lv.showHealth, _v2sp.SHOW_HEALTH)
_v2sq(_v2lv.showStamina, _v2sp.SHOW_STAMINA)
if _v2sp.SHOW_FOOD_BAR ~= nil then _v2sq(_v2lv.foodBar, _v2sp.SHOW_FOOD_BAR) end
if _v2sp.SHOW_FOOD_NUM ~= nil then _v2sq(_v2lv.foodNum, _v2sp.SHOW_FOOD_NUM) end
if _v2sp.SHOW_WATER_BAR ~= nil then _v2sq(_v2lv.waterBar, _v2sp.SHOW_WATER_BAR) end
if _v2sp.SHOW_WATER_NUM ~= nil then _v2sq(_v2lv.waterNum, _v2sp.SHOW_WATER_NUM) end
if _v2sp.SHOW_INFECT_BAR ~= nil then _v2sq(_v2lv.infectBar, _v2sp.SHOW_INFECT_BAR) end
if _v2sp.SHOW_INFECT_NUM ~= nil then _v2sq(_v2lv.infectNum, _v2sp.SHOW_INFECT_NUM) end
if _v2sp.SHOW_INFECTED ~= nil then _v2sq(_v2lv.infectTag, _v2sp.SHOW_INFECTED) end
_v2sq(_v2lv.showWeight, _v2sp.SHOW_WEIGHT)
_v2sq(_v2lv.bleed, _v2sp.BLEED_ESP)
if _v2sp.PACK_ESP ~= nil then _v2sq(_v2lv.packESP, _v2sp.PACK_ESP) end
if _v2sp.PACK_LEADER_ESP ~= nil then _v2sq(_v2lv.packLeader, _v2sp.PACK_LEADER_ESP) end
_v2sq(_v2lv.showDist, _v2sp.SHOW_DISTANCE)
_v2sq(_v2lv.textHL, _v2sp.TEXT_HIGHLIGHT)
_v2st(_v2lv.textSize, _v2sp.TEXT_SIZE)
_v2st(_v2lv.hbHeight, _v2sp.HEALTH_BAR_HEIGHT)
if _v2sp.HEALTH_BAR_WIDTH then
_v2st(_v2lv.hbWidth, math.floor(_v2sp.HEALTH_BAR_WIDTH * 100 + 0.5))
end
if _v2sp.STAM_BAR_HEIGHT then _v2st(_v2lv.sbHeight, _v2sp.STAM_BAR_HEIGHT) end
if _v2sp.STAM_BAR_WIDTH then _v2st(_v2lv.sbWidth, math.floor(_v2sp.STAM_BAR_WIDTH * 100 + 0.5)) end
_v2st(_v2lv.espDist, _v2sp.ESP_DISTANCE)
if _v2sp.CHAMS_FILL_TRANSPARENCY then
_v2st(_v2lv.chamsFill, math.floor(_v2sp.CHAMS_FILL_TRANSPARENCY * 100 + 0.5))
end
if _v2sp.CHAMS_OUTLINE_TRANSPARENCY then
_v2st(_v2lv.chamsOutline, math.floor(_v2sp.CHAMS_OUTLINE_TRANSPARENCY * 100 + 0.5))
end
_v2sq(_v2lv.corpse, _v2sp.CORPSE_ESP)
if _v2sp.CORPSE_INF_ESP ~= nil then _v2sq(_v2lv.corpseInf, _v2sp.CORPSE_INF_ESP) end
_v2st(_v2lv.worldTextSize, _v2sp.WORLD_TEXT_SIZE)
_v2st(_v2lv.corpseDist, _v2sp.CORPSE_DISTANCE)
if _v2sp.STATS_CARD ~= nil then _v2sq(_v2lv.statsCard, _v2sp.STATS_CARD) end
if _v2sp.SC_GROWTH ~= nil then _v2sq(_v2lv.scGrowth, _v2sp.SC_GROWTH) end
if _v2sp.SC_MASS ~= nil then _v2sq(_v2lv.scMass, _v2sp.SC_MASS) end
if _v2sp.SC_WEIGHT ~= nil then _v2sq(_v2lv.scWeight, _v2sp.SC_WEIGHT) end
if _v2sp.SC_TIMER ~= nil then _v2sq(_v2lv.scTimer, _v2sp.SC_TIMER) end
if _v2sp.SC_STAGE_TIMER ~= nil then _v2sq(_v2lv.scStageTimer, _v2sp.SC_STAGE_TIMER) end
if _v2sp.SC_NUTRITION ~= nil then _v2sq(_v2lv.scNutrition, _v2sp.SC_NUTRITION) end
if _v2sp.SC_WELLBEING ~= nil then _v2sq(_v2lv.scWellbeing, _v2sp.SC_WELLBEING) end
if _v2sp.SC_DRAG ~= nil then _v2sq(_v2lv.scDrag, _v2sp.SC_DRAG) end
if _v2sp.SC_NAME ~= nil then _v2sq(_v2lv.scName, _v2sp.SC_NAME) end
if _v2sp.SC_HIDE_WITH_MENU ~= nil then _v2sq(_v2lv.scHideMenu, _v2sp.SC_HIDE_WITH_MENU) end
if _v4.setStatsCardPos and _v2sp.SC_POS_XS and _v2sp.SC_POS_XO and _v2sp.SC_POS_YS and _v2sp.SC_POS_YO then
_v4.setStatsCardPos(_v2sp.SC_POS_XS, _v2sp.SC_POS_XO, _v2sp.SC_POS_YS, _v2sp.SC_POS_YO)
end
if _v2sp.FISH_ESP ~= nil then _v2sq(_v2lv.fishESP, _v2sp.FISH_ESP) end
_v2sq(_v2lv.fossilS, _v2sp.FOSSIL_SMALL)
_v2sq(_v2lv.fossilM, _v2sp.FOSSIL_MEDIUM)
_v2sq(_v2lv.fossilL, _v2sp.FOSSIL_LARGE)
_v2st(_v2lv.fossilDistS, _v2sp.FOSSIL_DIST_SMALL or _v2sp.FOSSIL_DISTANCE)
_v2st(_v2lv.fossilDistM, _v2sp.FOSSIL_DIST_MEDIUM or _v2sp.FOSSIL_DISTANCE)
_v2st(_v2lv.fossilDistL, _v2sp.FOSSIL_DIST_LARGE or _v2sp.FOSSIL_DISTANCE)
if _v2sp.VEG_DIET_ONLY ~= nil then _v2sq(_v2lv.vegDietOnly, _v2sp.VEG_DIET_ONLY) end
if _v2sp.VEG_HIDE_EATEN ~= nil then _v2sq(_v2lv.vegHideEaten, _v2sp.VEG_HIDE_EATEN) end
if _v2sp.VEG_DISTANCE then _v2st(_v2lv.vegDist, _v2sp.VEG_DISTANCE) end
if _v2sp.VEG_MAX then _v2st(_v2lv.vegMax, _v2sp.VEG_MAX) end
if _v2sp.VEG_ESP ~= nil then _v2sq(_v2lv.vegESP, _v2sp.VEG_ESP) end
_v2sq(_v2lv.meat, _v2sp.MEAT_ESP)
_v2st(_v2lv.meatDist, _v2sp.MEAT_DISTANCE)
if _v2sp.CLAY_ESP ~= nil then _v2sq(_v2lv.clay, _v2sp.CLAY_ESP) end
if _v2sp.CLAY_DISTANCE then _v2st(_v2lv.clayDist, _v2sp.CLAY_DISTANCE) end
if _v2sp.MMAP_PLAYERS ~= nil then _v2sq(_v2lv.mmapPlayers, _v2sp.MMAP_PLAYERS) end
if _v2sp.MMAP_CORPSES ~= nil then _v2sq(_v2lv.mmapCorpses, _v2sp.MMAP_CORPSES) end
if _v2sp.MMAP_FOSSILS ~= nil then _v2sq(_v2lv.mmapFossils, _v2sp.MMAP_FOSSILS) end
if _v2sp.MMAP_ON ~= nil then
_v2sq(_v2lv.mmap, _v2sp.MMAP_ON)
elseif _v2sp.MMAP_PLAYERS or _v2sp.MMAP_CORPSES or _v2sp.MMAP_FOSSILS then
_v2sq(_v2lv.mmap, true)
end
_v2sq(_v2lv.antiBS, _v2sp.ANTI_BLACKSCREEN)
if _v2sp.NO_FOG ~= nil then _v2sq(_v2lv.noFog, _v2sp.NO_FOG) end
if _v2sp.NO_BLUR ~= nil then _v2sq(_v2lv.noBlur, _v2sp.NO_BLUR) end
if _v2sp.NO_WEATHER ~= nil then _v2sq(_v2lv.noWeather, _v2sp.NO_WEATHER) end
if _v2sp.FULLBRIGHT ~= nil then _v2sq(_v2lv.fullbright, _v2sp.FULLBRIGHT) end
if _v2sp.CUSTOM_TIME_HOUR then _v2st(_v2lv.timeHour, _v2sp.CUSTOM_TIME_HOUR) end
if _v2sp.CUSTOM_TIME ~= nil then _v2sq(_v2lv.customTime, _v2sp.CUSTOM_TIME) end
if _v2sp.MOB_SHOW_TURN ~= nil and _v4.mobTurnToggle then _v2sq(_v4.mobTurnToggle, _v2sp.MOB_SHOW_TURN) end
_v2sq(_v2lv.showModules, _v2sp.SHOW_INDICATORS)
if _v2sp.MOD_CHECK ~= nil then _v2sq(_v2lv.modCheck, _v2sp.MOD_CHECK) end
if _v2sp.MOD_KICK ~= nil then _v2sq(_v2lv.modKick, _v2sp.MOD_KICK) end
_v2sq(_v2lv.unlimitedZoom, _v2sp.UNLIMITED_ZOOM)
if _v2sp.FOV_VALUE then _v2st(_v2lv.fovSlider, _v2sp.FOV_VALUE) end
_v2sq(_v2lv.fovToggle, _v2sp.FOV_ENABLED)
_v2st(_v2lv.attackSpeed, _v2sp.ATTACK_SPEED)
_v2sq(_v2lv.noAtkCd, _v2sp.NO_ATK_CD)
_v2sq(_v2lv.noAtkCooldown, _v2sp.NO_ATK_COOLDOWN)
_v2sw(_v4.SILENT_GROUPS, _v4.PART_GROUP_ORDER, _v2sp, _ei9m[3+2521], _v2lv.silentGroups)
_v2st(_v2lv.turnSpeed, _v2sp.TURN_SPEED)
_v2sq(_v2lv.quickTurn, _v2sp.QUICK_TURN)
_v2sq(_v2lv.silentAim, _v2sp.SILENT_AIM)
if _v2sp.INSTA_TURN_KEY and _v2bo then
pcall(function()
local _v2t5 = Enum.KeyCode[_v2sp.INSTA_TURN_KEY]
if _v2t5 then _v2bo:Set(_v2t5, true) end
end)
end
_v2sq(_v4.hitboxToggle, _v2sp.HITBOX_EXPANDER)
_v2sq(_v2lv.hitboxVis, _v2sp.HITBOX_VISUALIZE)
_v2st(_v2lv.hitboxMult, _v2sp.HITBOX_MULTIPLIER)
if _v2sp.HITBOX_VIS_TRANSPARENCY ~= nil then
_v2st(_v2lv.hitboxVisOpacity, math.floor((1 - _v2sp.HITBOX_VIS_TRANSPARENCY) * 100 + 0.5))
end
_v2sw(_v4.HITBOX_GROUPS, _v4.PART_GROUP_ORDER, _v2sp, _ei9m[1599+798], _v2lv.hitboxGroups)
_v2st(_v2lv.reachMult, _v2sp.REACH_MULTIPLIER)
if _v2sp.REACH_Tail ~= nil and _v2sp.REACH_TailBase == nil then
_v2sp.REACH_TailBase = _v2sp.REACH_Tail
_v2sp.REACH_TailMid = _v2sp.REACH_Tail
_v2sp.REACH_TailTip = _v2sp.REACH_Tail
_v2sp.REACH_Thagomizer = _v2sp.REACH_Tail
end
_v2sw(_v4.REACH_GROUPS, _v4.REACH_GROUP_ORDER, _v2sp, _ei9m[2151-7], _v2lv.reachGroups)
if _v2sp.REACH_VIS_TRANSPARENCY ~= nil then
_v2st(_v2lv.reachVisOpacity, math.floor((1 - _v2sp.REACH_VIS_TRANSPARENCY) * 100 + 0.5))
end
if _v2sp.REACH_VISUALIZE ~= nil then _v2sq(_v2lv.reachVis, _v2sp.REACH_VISUALIZE) end
_v2sq(_v2lv.reach, _v2sp.REACH_ENABLED)
_v2sq(_v4.autoWaterToggle, _v2sp.AUTO_WATER)
if _v2sp.FORCE_EAT ~= nil then _v2sq(_v4.forceEatToggle, _v2sp.FORCE_EAT) end
if _v2sp.FAST_EAT ~= nil then _v2sq(_v2lv.fastEat, _v2sp.FAST_EAT) end
if _v2sp.AUTO_CLEAN ~= nil then _v2sq(_v4.autoCleanToggle, _v2sp.AUTO_CLEAN) end
if _v2sp.INF_OXYGEN ~= nil then _v2sq(_v2lv.infOxygen, _v2sp.INF_OXYGEN) end
if _v2sp.EAT_WHEN_HUNGRY ~= nil then _v2sq(_v2lv.eatWhenHungry, _v2sp.EAT_WHEN_HUNGRY) end
if _v2sp.LEAVE_SCRAPS ~= nil then _v2sq(_v2lv.leaveScraps, _v2sp.LEAVE_SCRAPS) end
if _v2sp.CARRY_CORPSE ~= nil then _v2sq(_v2lv.carryCorpse, _v2sp.CARRY_CORPSE) end
_v2sq(_v4.noFallToggle, _v2sp.NO_FALL_DAMAGE)
if _v2sp.FPS_SAVER ~= nil then _v2sq(_v2lv.fpsSaver, _v2sp.FPS_SAVER) end
if _v2sp.FLY_SPEED then _v2st(_v4.flySpeedSlider, _v2sp.FLY_SPEED) end
if type(_v2sp.SKIN_SELECTED) == _ei9m[3+685] then
_v4.SKIN_WANTED = _v2sp.SKIN_SELECTED
local _v2t6 = _v4.skinsForCurrentDino and _v4.skinsForCurrentDino() or {}
if _v4.skinDropdown and table.find(_v2t6, _v2sp.SKIN_SELECTED) then _v2sq(_v4.skinDropdown, _v2sp.SKIN_SELECTED) end
end
if _v2sp.AUTO_FLY_SPEED then _v2st(_v4.autoFlySpeedSlider, _v2sp.AUTO_FLY_SPEED) end
if _v2sp.AUTO_FLY_RADIUS then _v2st(_v4.autoFlyRadiusSlider, _v2sp.AUTO_FLY_RADIUS) end
if _v2sp.AUTO_FLY_DRIFT then _v2st(_v4.autoFlyDriftSlider, _v2sp.AUTO_FLY_DRIFT) end
if _v2sp.AUTO_FLY_ALT then _v2st(_v4.autoFlyAltSlider, _v2sp.AUTO_FLY_ALT) end
if _v2sp.ANTI_AFK ~= nil then _v2sq(_v4.antiAfkToggle, _v2sp.ANTI_AFK) end
if _v4.cfgFarms then _v4.cfgFarms(_v2sp) end
if _v2sp.AFK_FARM_SPEED then _v2st(_v2lv.afkFarmSpeed, _v2sp.AFK_FARM_SPEED) end
if _v2sp.FOSSIL_FARM_SPEED then _v2st(_v4.fossilFarmSpeedSlider, _v2sp.FOSSIL_FARM_SPEED) end
if _v2sp.AFK_FARM_AVOID then _v2st(_v2lv.afkFarmAvoid, _v2sp.AFK_FARM_AVOID) end
if _v2sp.AFK_FARM_WALK ~= nil then _v2sq(_v2lv.afkFarmWalk, _v2sp.AFK_FARM_WALK) end
if _v2sp.AFK_FARM_SAFETY ~= nil then _v2sq(_v2lv.afkFarmSafety, _v2sp.AFK_FARM_SAFETY) end
if _v2sp.AFK_FARM_ADMIN_KICK ~= nil then _v2sq(_v2lv.afkFarmAdminKick, _v2sp.AFK_FARM_ADMIN_KICK) end
if _v2sp.AFK_FARM_FLEE ~= nil then _v2sq(_v2lv.afkFarmFlee, _v2sp.AFK_FARM_FLEE) end
if _v2sp.AFK_FARM_UNSTUCK ~= nil then _v2sq(_v2lv.afkFarmUnstuck, _v2sp.AFK_FARM_UNSTUCK) end
if _v2sp.LF_AVOID then _v2st(_v2lv.lfAvoid, _v2sp.LF_AVOID) end
if _v2sp.LF_MAX_DIST then _v2st(_v2lv.lfMaxDist, _v2sp.LF_MAX_DIST) end
if _v2sp.LF_SCRAPS ~= nil then _v2sq(_v2lv.lfScraps, _v2sp.LF_SCRAPS) end
if _v2sp.LF_CIRCLE ~= nil then _v2sq(_v2lv.lfCircle, _v2sp.LF_CIRCLE) end
if _v2sp.LF_FLEE ~= nil then _v2sq(_v2lv.lfFlee, _v2sp.LF_FLEE) end
if _v2sp.LF_TABOUT ~= nil then _v2sq(_v2lv.lfTabOut, _v2sp.LF_TABOUT) end
if _v2sp.AUTO_GAIT ~= nil then
for _v2t7, _v2t8 in pairs({ Walk = _v2lv.autoWalk, Trot = _v2lv.autoTrot, Run = _v2lv.autoRun, Sprint = _v2lv.autoSprint }) do
_v2sq(_v2t8, _v2sp.AUTO_GAIT == _v2t7)
end
end
if _v2sp.LF_UNSTUCK ~= nil then _v2sq(_v2lv.lfUnstuck, _v2sp.LF_UNSTUCK) end
if _v2sp.LF_REST ~= nil then _v2sq(_v2lv.lfRest, _v2sp.LF_REST) end
if _v2sp.LF_ADMIN_KICK ~= nil then _v2sq(_v2lv.lfAdminKick, _v2sp.LF_ADMIN_KICK) end
if _v2sp.LF_FLYAWAY ~= nil then _v2sq(_v2lv.lfFlyAway, _v2sp.LF_FLYAWAY) end
if _v2sp.LF_FLYAWAY_RADIUS then _v2st(_v2lv.lfFlyAwayRadius, _v2sp.LF_FLYAWAY_RADIUS) end
for _v2t9 = 1, 6 do
local _v2ta = _v2sp[_ei9m[872+165] .. _v2t9]
if _v2ta ~= nil then _v2sq(_v2lv[_ei9m[2+651] .. _v2t9], _v4.asLabel and _v4.asLabel(_v2ta) or _v2ta) end
end
_v2sq(_v2lv.asGender, _v2sp.AS_GENDER)
if _v2sp.AS_AUTOBUY ~= nil then _v2sq(_v2lv.asAutoBuy, _v2sp.AS_AUTOBUY) end
if _v2sp.AS_AUTO_ORDER ~= nil then _v2sq(_v2lv.asAutoOrder, _v2sp.AS_AUTO_ORDER) end
if _v2sp.FT_MINUTES then _v2st(_v2lv.ftMinutes, _v2sp.FT_MINUTES) end
_v2sq(_v2lv.tpSolid, _v2sp.TP_SOLID)
_v2sq(_v2lv.tpChain, _v2sp.TP_CHAIN)
if _v2sp.AUTO_SAVE_PCT and _v2sp.AUTO_SAVE_PCT > 0 then
_v2st(_v4.autoSaveSlider, _v2sp.AUTO_SAVE_PCT)
end
local _v2tb = _v2sp.AUTO_SAVE
if _v2tb == nil then _v2tb = (_v2sp.AUTO_SAVE_PCT or 0) > 0 end
_v2sq(_v4.autoSaveToggle, _v2tb)
if _v2sp.AUTO_SAVE_BLEED ~= nil then _v2sq(_v4.autoSaveBleedToggle, _v2sp.AUTO_SAVE_BLEED) end
if type(_v2sp.KEYBINDS) == _ei9m[399] then
for _v2tc, _v2td in pairs(_v4.ALL_TOGGLES) do
if _v2sp.KEYBINDS[_v2tc] == nil and _v2td and _v2td.SetKey then
pcall(function()
if _v2td.Key and _v2td.Key ~= Enum.KeyCode.Unknown then _v2td:SetKey(nil, true) end
end)
end
end
for _v2te, _v2tf in pairs(_v2sp.KEYBINDS) do
local _v2tg = _v4.ALL_TOGGLES[_v2te]
if _v2tg and _v2tg.SetKey and _v2tf then
pcall(function()
local _v2th = Enum.KeyCode[_v2tf]
if _v2th then _v2tg:SetKey(_v2th, true) end
end)
end
end
end
if _v2sp.AUTO_GROW ~= nil then _v2sq(_v4.autoGrowToggle, _v2sp.AUTO_GROW) end
end
function _v4.listConfigs()
local _v2ti = {}
pcall(function()
local _v2tj = listfiles(_v4.CONFIG_FOLDER)
for _v2tk, _v2tl in ipairs(_v2tj) do
local _v2tm = _v2tl:match(_ei9m[526+334])
if _v2tm and _v2tm ~= _ei9m[7+654] then
table.insert(_v2ti, _v2tm)
end
end
end)
table.sort(_v2ti)
return _v2ti
end
function _v4.saveConfig(_v2tn)
local ok, err = pcall(function()
local _v2to = _v4.getConfigData()
writefile(_v4.CONFIG_FOLDER .. "/" .. _v2tn .. _ei9m[6+1428], _v2si:JSONEncode(_v2to))
end)
if ok then
print(_ei9m[3+2107] .. _v2tn)
pcall(function() _v28h:Notify(_ei9m[3+1935] .. _v2tn) end)
else
warn(_ei9m[152-11] .. tostring(err))
pcall(function() _v28h:Notify(_ei9m[2+16] .. _v2tn) end)
end
return ok
end
function _v4.loadConfig(_v2tp)
local ok, data = pcall(function()
local _v2tq = readfile(_v4.CONFIG_FOLDER .. "/" .. _v2tp .. _ei9m[1853+276])
return _v2si:JSONDecode(_v2tq)
end)
if ok and data then
_v4.applyConfigData(data)
print(_ei9m[6+162] .. _v2tp)
pcall(function() _v28h:Notify(_ei9m[388-2] .. _v2tp) end)
return true
else
warn(_ei9m[5+1356] .. tostring(data))
pcall(function() _v28h:Notify(_ei9m[698] .. _v2tp) end)
end
return false
end
function _v4.deleteConfig(_v2tr)
pcall(function()
delfile(_v4.CONFIG_FOLDER .. "/" .. _v2tr .. _ei9m[271])
end)
end
function _v4.getAutoLoadConfig()
local _v2ts, _v2tt = pcall(function() return readfile(_v4.AUTO_LOAD_FILE) end)
if _v2ts and _v2tt and _v2tt ~= "" then return _v2tt end
return nil
end
function _v4.setAutoLoadConfig(_v2tu)
pcall(function() writefile(_v4.AUTO_LOAD_FILE, _v2tu or "") end)
end
local _v2tv = _v28h.tabs and _v28h.tabs.Settings
if _v2tv then
pcall(function()
_v2tv.page.ScrollingEnabled = true
_v2tv.page.ScrollBarThickness = 3
end)
else
_v2tv = _v2lr
end
_v4.UNLOAD_KEY = Enum.KeyCode.End
if _v2tv then
_v4.section(_v2tv, _ei9m[2901-10], _ei9m[340])
_v4.unloadKb = _v2tv:AddKeybind({
Name = _ei9m[2187-12],
Default = _v4.UNLOAD_KEY,
Changed = function(_v2tw) _v4.UNLOAD_KEY = (typeof(_v2tw) == _ei9m[717+927]) and _v2tw or Enum.KeyCode.Unknown end,
})
end
table.insert(_v2l, _v4.UIS.InputBegan:Connect(function(_v2tx, _v2ty)
if _v2ty or _v4.UNLOADED then return end
if _v2tx.KeyCode == _v4.UNLOAD_KEY and _v4.UNLOAD_KEY ~= Enum.KeyCode.Unknown then
pcall(_v4.unloadScript)
end
end))
if _v4.IS_MOBILE then
_v4.section(_v2tv, _ei9m[272-17], _ei9m[2286])
_v4.mobTurnToggle = _v2tv:AddToggle({
Name = _ei9m[2084],
Default = false,
Callback = function(_v2tz) _v4.MOB_SHOW_TURN = _v2tz end
})
end
_v4.CONFIG_SLOTS = {_ei9m[1422-19], _ei9m[2090+901], _ei9m[2139-7], _ei9m[790+121], _ei9m[102+271], _ei9m[75+14], _ei9m[1766], _ei9m[7+532], _ei9m[256+410]}
pcall(function()
_v28h:SetConfig({
Folder = _v4.CONFIG_FOLDER,
Slots = _v4.CONFIG_SLOTS,
Save = _v4.saveConfig,
Load = _v4.loadConfig,
Ignore = function(_v2u0)
return _v2u0:match(_ei9m[1453]) or _v2u0:match(_ei9m[2359]) or _v2u0:match(_ei9m[2147]) or _v2u0 == _ei9m[7+1466]
or _v2u0:match(_ei9m[138+718])
end,
})
end)
local _v2u1 = Instance.new(_ei9m[2+2635])
_v2u1.Name = _ei9m[1255+725]
_v2u1.ResetOnSpawn = false
_v2u1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
pcall(function() _v2u1.Parent = game:GetService(_ei9m[3+466]) end)
if not _v2u1.Parent then _v2u1.Parent = _v2:WaitForChild(_ei9m[1139-8]) end
local _v2u2 = Instance.new(_ei9m[2993])
_v2u2.Name = _ei9m[2936-10]
_v2u2.Size = UDim2.new(0, 160, 0, 400)
_v2u2.Position = UDim2.new(1, -170, 0, 10)
_v2u2.BackgroundTransparency = 1
_v2u2.Parent = _v2u1
local _v2u3 = Instance.new(_ei9m[1159-10])
_v2u3.FillDirection = Enum.FillDirection.Vertical
_v2u3.HorizontalAlignment = Enum.HorizontalAlignment.Right
_v2u3.VerticalAlignment = Enum.VerticalAlignment.Top
_v2u3.SortOrder = Enum.SortOrder.LayoutOrder
_v2u3.Padding = UDim.new(0, 2)
_v2u3.Parent = _v2u2
_v4.TweenService = game:GetService(_ei9m[607+539])
local _v2u4 = {}
_v4.SLIDE_TIME = 0.25
function _v4.createIndicatorLabel(_v2u5, _v2u6)
local _v2u7 = Instance.new(_ei9m[2329])
_v2u7.Name = _ei9m[5+817] .. _v2u5
_v2u7.LayoutOrder = _v2u6
_v2u7.Size = UDim2.new(1, 0, 0, 18)
_v2u7.BackgroundTransparency = 1
_v2u7.TextColor3 = Color3.fromRGB(170, 90, 255)
_v2u7.TextStrokeTransparency = 0.3
_v2u7.TextStrokeColor3 = Color3.new(0, 0, 0)
_v2u7.Font = Enum.Font.GothamBold
_v2u7.TextSize = 13
_v2u7.TextXAlignment = Enum.TextXAlignment.Right
_v2u7.Text = _v2u5
_v2u7.TextTransparency = 1
_v2u7.Position = UDim2.new(1, 0, 0, 0)
_v2u7.Parent = _v2u2
_v2u4[_v2u5] = _v2u7
return _v2u7
end
function _v4.showIndicator(_v2u8)
local _v2u9 = _v2u4[_v2u8]
if not _v2u9 then return end
_v2u9.Visible = true
_v2u9.TextTransparency = 1
_v2u9.Position = UDim2.new(1, 0, 0, 0)
local _v2ua = _v4.TweenService:Create(_v2u9, TweenInfo.new(_v4.SLIDE_TIME, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
TextTransparency = 0,
Position = UDim2.new(0, 0, 0, 0)
})
_v2ua:Play()
end
function _v4.hideIndicator(_v2ub)
local _v2uc = _v2u4[_v2ub]
if not _v2uc then return end
local _v2ud = _v4.TweenService:Create(_v2uc, TweenInfo.new(_v4.SLIDE_TIME, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
TextTransparency = 1,
Position = UDim2.new(1, 0, 0, 0)
})
_v2ud:Play()
_v2ud.Completed:Connect(function()
if _v2uc.TextTransparency >= 0.9 then
_v2uc.Visible = false
end
end)
end
function _v4.updateIndicator(_v2ue, _v2uf)
if _v2uf then
_v4.showIndicator(_v2ue)
else
_v4.hideIndicator(_v2ue)
end
end
_v4.MODULE_LIST = {
{name = _ei9m[174+88], order = 1, getState = function() return _v4.ESP_ENABLED end},
{name = _ei9m[2103], order = 2, getState = function() return _v4.CHAMS_ENABLED end},
{name = _ei9m[1199], order = 3, getState = function() return _v4.TRACERS_ENABLED end},
{name = _ei9m[2+2257], order = 4, getState = function() return _v4.CORPSE_ESP end},
{name = _ei9m[660-6], order = 5, getState = function() return _v4.FOSSIL_SMALL or _v4.FOSSIL_MEDIUM or _v4.FOSSIL_LARGE end},
{name = _ei9m[2442-16], order = 7, getState = function() return _v4.MEAT_ESP end},
{name = _ei9m[5+2726], order = 8, getState = function() return _v4.CLAY_ESP end},
{name = _ei9m[391-10], order = 24, getState = function() return _v4.VEG_ESP end},
{name = _ei9m[107+2410], order = 8, getState = function() return _v4.SAVE_DINO_ACTIVE end},
{name = _ei9m[478+146], order = 9, getState = function() return _v4.HITBOX_EXPANDER end},
{name = _ei9m[4+1043], order = 10, getState = function() return _v4.ANTI_BLACKSCREEN end},
{name = _ei9m[1672+3], order = 11, getState = function() return _v4.AUTO_GROW end},
{name = _ei9m[1224-20], order = 12, getState = function() return _v4.TEXT_HIGHLIGHT end},
{name = _ei9m[974-16], order = 14, getState = function() return _v4.NO_FALL_DAMAGE end},
{name = _ei9m[1999-13], order = 15, getState = function() return _v4.FOSSIL_FARM end},
{name = _ei9m[2741], order = 16, getState = function() return _v4.SILENT_AIM end},
{name = _ei9m[1049+926], order = 18.5, getState = function() return _v4.AFK_FARM end},
{name = _ei9m[434+1808], order = 18.6, getState = function() return _v4.LEGIT_FARM end},
{name = _ei9m[2987], order = 18.7, getState = function() return _v4.AUTO_SWITCH end},
{name = _ei9m[2629-12], order = 18.8, getState = function() return _v4.FARM_TIMER end},
{name = _ei9m[75], order = 19, getState = function() return _v4.AUTO_FLY end},
{name = _ei9m[1861-15], order = 20, getState = function() return _v4.TP_CORPSE end},
{name = _ei9m[929], order = 21, getState = function() return _v4.ANTI_AFK end},
{name = _ei9m[1493-3], order = 22, getState = function() return _v4.MOD_CHECK end},
{name = _ei9m[1837-2], order = 25, getState = function() return _v4.NO_FOG end},
}
for _v2ug, _v2uh in ipairs(_v4.MODULE_LIST) do
_v4.createIndicatorLabel(_v2uh.name, _v2uh.order)
end
_v4.prevStates = {}
_v4.addStep(6, function()
if _v2u1.Enabled ~= _v4.SHOW_INDICATORS then _v2u1.Enabled = _v4.SHOW_INDICATORS end
for _v2ui, _v2uj in ipairs(_v4.MODULE_LIST) do
local _v2uk = _v2uj.getState()
if _v4.prevStates[_v2uj.name] ~= _v2uk then
_v4.prevStates[_v2uj.name] = _v2uk
_v4.updateIndicator(_v2uj.name, _v2uk)
end
end
end)
pcall(function()
local _v2ul = (_v28h.toggleKey and _v28h.toggleKey.Name) or _ei9m[273+317]
_v28h:Notify(_ei9m[907-2] .. _v2ul .. _ei9m[1876], 6)
end)
_v4.xlog(_ei9m[2133])