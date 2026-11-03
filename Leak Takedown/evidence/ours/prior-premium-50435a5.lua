--EZ:__EZ_WM__
-- EazyCheats | Prior Extinction Hub | PREMIUM
local _pguo do local B="" for c=65,90 do B=B..string.char(c) end for c=97,122 do B=B..string.char(c) end for c=48,57 do B=B..string.char(c) end B=B..string.char(43)..string.char(47) local L={} for i=1,#B do L[B:sub(i,i)]=i-1 end local Kr={90,170,214,100,75,120,228,156} local m=228 local bx=bit32.bxor local ch=string.char local K={} for i=1,#Kr do K[i]=bx(Kr[i],m) end local C={} _pguo=function(s) local c=C[s] if c then return c end local o={} local a,b,n=0,0,0 for i=1,#s do local v=L[s:sub(i,i)] if v then a=a*64+v b=b+6 if b>=8 then b=b-8 local by=math.floor(a/2^b)%256 a=a%(2^b) o[#o+1]=ch(bx(by,K[n%8+1])) n=n+1 end end end local r=table.concat(o) C[s]=r return r end end
local _ei9m={_pguo("9itT7Nv0"),_pguo("6iFd7Nw="),_pguo("6iFd7Nw="),_pguo("7SZT8sr4LjTRLFD56/10GQ=="),_pguo("3SFH7Mu8bhfKbkHwzutuWA=="),_pguo("5WtWpYHBKw=="),_pguo("zi9c6cw="),_pguo("8SAS08zuZR3Q"),_pguo("6wdx793yZQo="),_pguo("8ghtwfnTSTw="),_pguo("+jxb7sTvIB7RPBL5wOkgD9YrXOXZ+XJYxyFHoM7uZVjfOhL3zuhlCg=="),_pguo("7T5T98H5ZDXbL0Y="),_pguo("8itV"),_pguo("/zpG5cLsdAuEbgI="),_pguo("zCtB9MbyZw=="),_pguo("+idc79z9dQrsL1XkwPBsCw=="),_pguo("0Dtf4sru"),_pguo("6Ste7M35aRbZbmH0zuhz"),_pguo("+Cdc6dz0ZRyeZg=="),_pguo("3yhZ"),_pguo("njpdoIw="),_pguo("0itT9sbyZ1jXIBI="),_pguo("9jtf4cHzaRw="),_pguo("/SJX4d0="),_pguo("9jpG8Pz5cg7XLVc="),_pguo("+i9L"),_pguo("0Dtf4sru"),_pguo("0CtK9I/4aRbR"),_pguo("6ite5d/zcgzXIFU="),_pguo("2z1C"),_pguo("/C9B5f/9cgw="),_pguo("7CtY78by"),_pguo("+idc79z9dQrtK17lzOhpF9AJR+k="),_pguo("/QhA4cL5VhnSO1c="),_pguo("6itK9A=="),_pguo("7Tlb9Mz0ICvSIUagmw=="),_pguo("6Stb58fo"),_pguo("zCdB6cH7IBHQOl2g2/RlWM0lSw=="),_pguo("/ztG74/OdRY="),_pguo("yi9Q7Mo="),_pguo("+itU4drwdA=="),_pguo("/wp/yeE="),_pguo("+CFB88bwc1jRIBLNxvJpFd8+"),_pguo("7CtB9A=="),_pguo("2z1R4d/5"),_pguo("0yFE5Q=="),_pguo("0itV6dvaYQrTGl3nyPBl"),_pguo("8itV6du8RhTHbnP3zuUgKt8qW/Xc"),_pguo("6ite5d/zcgzXIFU="),_pguo("7TpT58q8VBHTK0A="),_pguo("9idGwsDk"),_pguo("2S9b9A=="),_pguo("/TtB9MDxICzXI1e6j+tlGcomV/KP/28Wyjxd7MP5cljLIEDlzv9oGdwiV6BNHJRY3SJd48S8bxbSNx6gw/VnEMonXOeP6W4b1i9c58r4"),_pguo("0i9c5A=="),_pguo("6jdC5Q=="),_pguo("2yNC9NY="),_pguo("/ztG74LQZRnIKxLFwux0AZ4dV/LZ+XI="),_pguo("8itV6du8TB3fOFeg/P9yGc49"),_pguo("6jxT48rucw=="),_pguo("7TpT58o="),_pguo("7SZd94/YaQvKL1zjyg=="),_pguo("6C9e9co="),_pguo("/SJX4cHwaRbbPUE="),_pguo("7Ctc5Mru"),_pguo("7jxd5935cwueOl2g"),_pguo("yjxd9A=="),_pguo("8CFGoM7sZQCerLIUj+9wGckgW+7IvGQRzCtR9A=="),_pguo("0Dtf4sru"),_pguo("/ztG7+n9chU="),_pguo("7ztb48S8VA3MIA=="),_pguo("zCtT48f5ZFg="),_pguo("+yBT4sP5IDvWL1/z"),_pguo("/TxX4dv5ZDnK"),_pguo("6jdC5Q=="),_pguo("/ztG74/abAE="),_pguo("0Dtf4sru"),_pguo("8idV6Nv1bh8="),_pguo("3SFc49rvcxHRIA=="),_pguo("7TpT9Nw="),_pguo("7Ctc5Mru"),_pguo("+CJLoO7rYQGeCEDvwrxQFN83V/Lc"),_pguo("8CESxsD7OljMK1/v2flzWNghVaDO8mRY1i9I5YO8YRbabkboyrxkEc06U+7M+SAa0jtAoNj1dBCeJ0aggrx0ENtuVeHC+SAT2ytC84/9IBzbPkbogvNmVdgnV+zLvGUe2CtR9I/6bxvLPVfkj/1iF8s6ErGavHMMyypBoMDpdFSeOVrpzPQgC9EoRuXB7yAdyCtA+dv0aRbZblT13ehoHcxuU/fO5SAdyCtcoNj1dBCeOlrlj/pvH54pXe7KsiAsyzxc6cH7IAzWJ0GgwPpmWM47RvOP/WwUnjpa8sr5IBrfLVmg2/RlWMkvS6Db9GVY2S9f5Y/0YRyeOlrlwrI="),_pguo("8itT9sq8UxvML0Lz"),_pguo("yi9Q7Mo="),_pguo("niNb7troZQueIVSgyf1yFdcgVQ=="),_pguo("XNiO"),_pguo("6i9b7I/RaRw="),_pguo("yi9Q7Mo="),_pguo("6iFd7Nw="),_pguo("/ztG78n9chU="),_pguo("8i9B9I/MbBnHK1Y="),_pguo("6iFd7Nw="),_pguo("/SFA8Nz5c1jRIBLNxvJpFd8+"),_pguo("7S1A5cryRw3X"),_pguo("/ztG74/bchfJ"),_pguo("7C9V5MDwbAs="),_pguo("7S1T7Mo="),_pguo("7hZtxsDvcxHSDVPt"),_pguo("6StT9Mf5cg=="),_pguo("8CtK9JW8"),_pguo("/SZT7dy8RhHSIhLU3f1uC84vQOXB/3k="),_pguo("2Txd99v0"),_pguo("8itV6du8RhTHbnP3zuUgPswhX6D/8GEB2zxB"),_pguo("niNb7troZQueIVSgyf1yFdcgVa4="),_pguo("+StG84/lbw2eLFPjxLxpFp4vXOSP+mEK0ydc54/9ZgzbPBLhj/dpG9U="),_pguo("7C9V5MDwbAs="),_pguo("6jxd9A=="),_pguo("3ztG78PzYRw="),_pguo("0Dtf4sru"),_pguo("/ztG7+n9chU="),_pguo("6z5Z5crs"),_pguo("1CFV"),_pguo("mz0ZpA=="),_pguo("2z1C"),_pguo("+idc7+rPUA=="),_pguo("zTpA6cH7"),_pguo("8CESwsPpcg=="),_pguo("yi9Q7Mo="),_pguo("nmMS9cHwbxvVK1Y="),_pguo("7i9A9Nw="),_pguo("7SVb7tw="),_pguo("3CFW+Q=="),_pguo("7SZd94/SYRXb"),_pguo("8iFQ4tbfbxbKPF3sw/ly"),_pguo("nmMS9dz1bh+eOlrlj/RvC8orVqDC+W4N"),_pguo("7hZtzMr7aQztOlfl3Q=="),_pguo("0itT5A=="),_pguo("zCdV6Ns="),_pguo("/ypW1MD7ZxTb"),_pguo("/zpf79zsaB3MKw=="),_pguo("0Dtf4sru"),_pguo("zTpA6cH7"),_pguo("/ztG74/PcBnJIA=="),_pguo("7SZd94/RbxzLIleg4/VzDA=="),_pguo("1jtW"),_pguo("kGAc"),_pguo("yi9Q7Mo="),_pguo("/SJT+Y/YZQjRPVv0j9lTKA=="),_pguo("zSJX5d8="),_pguo("7i9A9A=="),_pguo("liBd7sq1"),_pguo("+y9GoM7yZFjaPFvuxLx3EcomXfXbvGQX1yBVoMboIAHRO0DzyvBmVg=="),_pguo("nm7QGg+8TDfpbtAAO7xlGcpuUezO5SE="),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("/SZT8s7/dB3MClP0zsM="),_pguo("7i9A9Nw="),_pguo("/SFA5ejpaQ=="),_pguo("+CFA48q8RRnK"),_pguo("yS9b9MbyZ1jYIUCgyfNvHJ4qU/TO"),_pguo("0yFc5dY="),_pguo("8i9Q5cM="),_pguo("/SFA8Nz5LzXbL0ag+/l4DJ4dW/rK"),_pguo("/SFA8Nz5IDzXPUbhwf9l"),_pguo("/ztG78n9chU="),_pguo("0Dtf4sru"),_pguo("9SBb9A=="),_pguo("0Dtf4sru"),_pguo("7TpT9Ny8QxnMKhLwwO9pDNchXKDd+XMdyg=="),_pguo("7C9V5MDwbAs="),_pguo("6wdx793yZQo="),_pguo("7iJT+crucw=="),_pguo("/C9B5f/9cgw="),_pguo("+AJr"),_pguo("1itT5A=="),_pguo("/yBG6Y/dRjM="),_pguo("7SNT7MO8RhfNPVvs3A=="),_pguo("8ytT9A=="),_pguo("8y9B8w=="),_pguo("+yBT4sP5ICrbL1Ho"),_pguo("8y9e5Q=="),_pguo("3zpG4cz3IAvOK1fk"),_pguo("4BxX8MP1YxnKK1bT2/NyGdkrF66HsitRmg=="),_pguo("6z1X8ubycA3KHVfy2fVjHQ=="),_pguo("7Tlb7cL1bh8="),_pguo("yi9Z6cH7IBzfI1Pnyg=="),_pguo("1idW5Q=="),_pguo("zTpA6cH7"),_pguo("9yBU5czoQj8="),_pguo("0CES48f9chndOlfy"),_pguo("+xRktA=="),_pguo("zSJd9A=="),_pguo("9yBB9M68VA3MIA=="),_pguo("/SFf7cDyLjrLKFTl3e8uO9EgQfXC/WIU2wxH5sn5cg=="),_pguo("/ztG74LPYQ7bblP0j9RlGdI6WqCK"),_pguo("+idc79z9dQr6L0bhgQ=="),_pguo("4GsfpYK8cxvMJ0L0j/JvDJ4oXfXB+A=="),_pguo("/xtmz/DaTCE="),_pguo("7TpT7cbyYQ=="),_pguo("3ztG74/rYRTV"),_pguo("2C9A7Y/vdBfOPlfk"),_pguo("0Dtf4sru"),_pguo("1yBU5czoaRfQ"),_pguo("+y9I+ez0ZRnKPW3l1bFnDddgXvXO"),_pguo("8ght0urPVA=="),_pguo("l24foMP5YQ7XIFWgzvp0HcxuXu/I+2kW2W5d9duy"),_pguo("+itU4drwdA=="),_pguo("1yBB9M4="),_pguo("zStG9MP1bh8="),_pguo("/SZT7sj5c1jKIRL5wOlyWNE5XKDc/3Id2yAcoOHzYhfaNxLlw+9lWM0rV/OP/W4BniFUoMboLg=="),_pguo("/ypW1MD7ZxTb"),_pguo("yi9Q7Mo="),_pguo("7StGwczoaRfQ"),_pguo("+itU4drwdA=="),_pguo("8ytT9A=="),_pguo("6jtA7v/9ZA=="),_pguo("8yFE5cL5bgw="),_pguo("7SVb7g=="),_pguo("7T5a5d35"),_pguo("8Dtf4sruVhnSO1c="),_pguo("9yBG5d36YRvbDV3u2+5vFNIrQA=="),_pguo("m3Id4pE="),_pguo("yiZXoMP9cwyePl7h1vlkWNonXO8="),_pguo("yi9Q7Mo="),_pguo("/ztG74/bchfJ"),_pguo("9yBR7Nr4ZVj8Ilflyw=="),_pguo("nmMSwdrob1jtOVv0zPQgDMs8XOXLvG8e2A=="),_pguo("7ztb48S8VA3MIA=="),_pguo("7SZd94/bZRbaK0A="),_pguo("2CdX7Mu8bx6eOFvl2A=="),_pguo("2C9B9MrvdA=="),_pguo("2S9b9A=="),_pguo("+y9I+ez0ZRnKPXvuy/VjGcohQA=="),_pguo("2Dtc49v1bxY="),_pguo("7i9R64/ZUyg="),_pguo("nm5l5cPwYh3XIFWg/OhhDM0="),_pguo("+CFB88bwTQ=="),_pguo("0Dtf4sru"),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("8yFH7tv9aRbN"),_pguo("+yBT4sP5ID3tHg=="),_pguo("/SZT7dy8Tw3KIlvuyrxUCt8gQfDO7mUW3Tc="),_pguo("+itU4drwdA=="),_pguo("/SFA8Nz5"),_pguo("7S9E5cu8YxfQKFvnlbw="),_pguo("7T5T98H5ZDXbL0Y="),_pguo("nj1G9cvvIBfYKA=="),_pguo("yi9Q7Mo="),_pguo("6itK9OP9Yh3S"),_pguo("/TtA8srydDvfI1fyzg=="),_pguo("0CFGoM7qYRHSL1DsyrxvFp46WuncvGUA2y1H9MDu"),_pguo("zCtc5Mru"),_pguo("7StGwczoaRfQ"),_pguo("7Dtc08rudhHdKw=="),_pguo("/C9G6Nw="),_pguo("7i9R64/ZUyg="),_pguo("8ydc6cL9cEKePkf03LxkF8o9Eu/BvHQQ225V4cL5JwueI1vuxvFhCJ4vXOSP/mkfniNT8IGWUBTfN1fy3LxvFp4DW+7G8WEIhG5V8sr5bljaIUbzj/pvCp4hRujK7iAI0i9L5d3vLnL9IUDw3PlzWNEgEs3G8mkV3z4IoN35ZFjaIUbzj/pvCp4tXfLf72ULkER079zvaRTNbl3uj9FpFtcjU/CVvGcK2zcS5MDoc1jYIUCgyfNzC9ciQa4="),_pguo("6itK9I/UaR/WIlvnx+g="),_pguo("8y9CoMvzdAuSblOg3OhhHthuReHd8mkW2WIS9Mf5IA3QIl3hy7xrHcduU+7LvHQQ225C6MDyZVjKO0Duj+xhHJA="),_pguo("3yBd9Mf5cljKJ1/ly7xhG8onXe6P9XNYzDtc7sbyZw=="),_pguo("/SFA5ejpaQ=="),_pguo("5QtT+tbfaB3fOkHdj9phCtNuZunC+XJY2Cdc6dz0ZRyeL1T0yu4g"),_pguo("+y9I+ez0ZRnKPRLswP1kHdpuH6Df7mULzW4="),_pguo("+idc74/uZRTbL0Hly7wtWN0hR+zLvG4Xym5U7Na8YhndJR6g1vN1WN88V6DY9GUK225L79q8cw3MKFPjyvg="),_pguo("g3MPoOr9egH9Jlfh2+8gFNEvVqDTvGUA2y1H9MDuIF3Nbk6g3/BhG9tuF/OP4CAS0SwSpdy8fFjaJ1zvj7lzWMJuQfTO+2VYmz0="),_pguo("7SZd94/RbxzLIleg4/VzDA=="),_pguo("+C9A7Y/IaRXbPA=="),_pguo("/S9f5d39TRnGFF3vwthpC8ovXOPK"),_pguo("9itT7Nv0"),_pguo("8yFH7tv9aRbN"),_pguo("7CtY78by"),_pguo("6ite5d/zcgzXIFU="),_pguo("8y9b7uL5bg35O1s="),_pguo("8TZL58ryIBbbOFfyj/hyGdcgQaDa8mQdzDlT9Mru"),_pguo("zCdB6cH7"),_pguo("zCFG4dv5"),_pguo("/ypf6cHQYRrbIg=="),_pguo("0Dtf4sru"),_pguo("/Cdd7cq8VArfOFfslbxwEd0lEuGP7GwZ3SsS78G8dBDXPRLtzuwgUMomV6DB/W0d2m5C7M7/ZQueJ0bzj/FhCJ4vXOSP/28Vzi9B84/vaBfJZxL1wfhlCp4KV/Pb9W4Zyidd7oO8dBDbIBL02u5uWNc6Eu/BsiAh0TtAoMv1bheeKF7pyu8gDNYrQOWPsSANzmIS4czubwvNblTvw/BvD9cgVaDb9GVY2Txd9cH4LFjaIUXuj/NuWNo8S6DI7m8N0CoSrY/9bhyeJ0ag3OtpDN0mV/OP9XQL2yJUoMD6ZljJJlfuj+VvDZ4vQPLG6mVWnhpH8sG8aQyeIVTmj+hvWM06XfCPtHkXy25W8sDsIAzRbkboyrxnCtE7XOSP/mUU0TkeoNj1dBCeIF2gyf1sFJ4qU+3O+2VRkER79I/7bx3NblP0j+VvDcxuVunB8ycLnjxH7o/vcB3bKgmgwOplCp45U/TK7iAX0CJLoM7oIAvJJ1/txvJnWM0+V+XLvCgM1isS587xZV/NbkD1w/kpVJ49XaDM7m8LzSdc54/oaB2ePVfhj/VzWM0iXfeB"),_pguo("3CFd7Mr9bg=="),_pguo("3CFd7Mr9bg=="),_pguo("6itK9A=="),_pguo("9itT7Nv0IDrfPBLIyvVnEMo="),_pguo("zTpA6cH7"),_pguo("l27QADu8cwjfI1/pwfsgKts/R+Xc6FMU0To="),_pguo("yjtA7g=="),_pguo("8i9Q5cM="),_pguo("0Dtf4sru"),_pguo("0idV6NvyaRbZ"),_pguo("6ite5d/zcgzXIFU="),_pguo("6C9e9co="),_pguo("1idW5Q=="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("/SFe7Mr/dBHRIGHl3eppG9s="),_pguo("/SJX4cG8YgrbL1m6j/9sHd8gXunB+XMLnmtWpYq8LVjKJlegyf1yFZ49RuHB+HNYzTpb7MO8dRbKJ16gzPBlGdBuGvTH+SAf3yNXoMz9bl/KblHsyv1uWMkmW+zKvGUZyidc54Y="),_pguo("6ite5d/zcgzXIFU="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("4GtBqw=="),_pguo("7iJT+cruRw3X"),_pguo("yi9Q7Mo="),_pguo("yyBe78z3aRbZbg=="),_pguo("7C9A5Q=="),_pguo("+C9A7Y/YaRbR"),_pguo("+CFB88bwID7fPF8="),_pguo("yS9B6A=="),_pguo("/SZT7dw="),_pguo("2z1C"),_pguo("0itT9sbyZ1jKJleg2P10HcxuRu+P8G8fniFH9A=="),_pguo("6ite5d/zcgyeOl2g7PNyCM0r"),_pguo("6ite5d/zcgzXIFU="),_pguo("/SFc89rxYRrSK3Tvw/VhH9s="),_pguo("7iJT+crucw=="),_pguo("6jxT48rucw=="),_pguo("7Rpz1Pw="),_pguo("3SFe79ru"),_pguo("7Ctc5Mru"),_pguo("7jxX89y8aQyeOl2g2vJsF98qEvTH+SAQyyw="),_pguo("yS9b9MbyZ1jYIUCgzvIgGc4rSqDc8G8Mnihd8o8="),_pguo("2idc7w=="),_pguo("+idc79z9dQrtK17lzOhpF9AJR+k="),_pguo("yi9Q7Mo="),_pguo("6jxd9A=="),_pguo("9yBU5czoaRfQ"),_pguo("/ypW08P1ZB3M"),_pguo("+AFkoOz0YRbZK0A="),_pguo("7Sdf9cP9dB2eGVPsxPVuHw=="),_pguo("+C9A7Y/IaRXbPAigw/lhDts9EuHJ6GUKng=="),_pguo("1CFb7sbyZw=="),_pguo("8yFW5cM="),_pguo("/wh5oOn9chU="),_pguo("3yJb9sq8fFibYALmj/pwC54yEufO7CBdkH9U84/gIBzXIF2giu8gBJ4jV+7avGkWnmtBrI/5bhncIlfkj7lz"),_pguo("8i9A58o="),_pguo("9z177vj9dB3M"),_pguo("1jpG8NymL1fbL0j5zPRlGco9HOPA8S8LkStIrcjpaQ=="),_pguo("7CFQ7MDkIBPXLVnzj/1uAdEgV6DG+Gwdnihd8o+uMFjTJ1z12/lzVp4CV+HZ+SAM1idBoMDyIA/WJ17lj/0gHt88X6Dd6W4LkA=="),_pguo("7iJT+cruIDnIIVvkj85hHNc7QQ=="),_pguo("/TtB9MDxICzXI1c="),_pguo("+xRtxuDK"),_pguo("+AFkoOz0YRbZK0A="),_pguo("kCRB78E="),_pguo("+CFB88bwTA=="),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("3zlT+Q=="),_pguo("7jxd+MbxaQzHHkDvwux0"),_pguo("6SZT9I/oaB2eJkfij/hyGck9Eu/BvHQXzm5d5o/oaB2eKVPtyrI="),_pguo("/C9B5f/9cgw="),_pguo("3SFd7MvzdxY="),_pguo("/SZT7dy8RhHSIhLU3f1uC84vQOXB/3k="),_pguo("6i9V8+nuYRXb"),_pguo("3C9G6A=="),_pguo("/SZT7dw="),_pguo("/ztG7+n9chU="),_pguo("zSVL"),_pguo("2z1C"),_pguo("9jpG8Pz5cg7XLVc="),_pguo("6CtV5dv9dBHRIBLF/Mw="),_pguo("7g9xy4/QRTn6C2A="),_pguo("6itK9A=="),_pguo("7Ctc5Mru"),_pguo("nmUXrp76c1ie"),_pguo("zidc7sr4"),_pguo("2CJX5Q=="),_pguo("/C9B5f/9cgw="),_pguo("zCte78imIA/fJ0bpwfsgDNFuXu/IvG8NynQS"),_pguo("3yJG"),_pguo("8ytT9A=="),_pguo("8itT9sq8VRbaK0Cgh+xsGccrQPOG"),_pguo("2Txd99v0"),_pguo("zStG9MP1bh8="),_pguo("yi9Q7Mo="),_pguo("XNmy"),_pguo("6i9V8w=="),_pguo("8itV"),_pguo("/S9A8ta8QRbHbnHv3exzHQ=="),_pguo("9itT7Nv0IDrfPBLIyvVnEMo="),_pguo("6jdC5Q=="),_pguo("0Dtf4sru"),_pguo("7hZtzsDabx8="),_pguo("7SZd94/fbwrOPVfz"),_pguo("+Txd99y8YVjSJ0H0j/NmWNonXO/cvG8W225T5tv5cljfIF30x/lyWMkmW+zKvEE+9W504d3xIBfMbn7lyPV0WPgvQO2P7nUWzWASxc7/aFjaJ1zvj/dlHc49Eunb7yAXySAS887qZVSePV2gwfN0ENcgVaDG7yAU0T1GoM3lIAvJJ0bjx/VuH5BEOMHa6G9Y7Tlb9Mz0IDzXIF26j+toHdBuRujKvGQR0CES+cDpIBnMKxLww/15EdApEujO7yAe1yBb88f5ZFjZPF33xvJnVJ4nRqDY/WkMzW5H7tv1bFjHIUegzu5lWNE7RqDA+iAb0SNQ4duwIBfLOhLvybx3GcorQKDO8mRY0SAS9Mf5IB/MIUfuy7AgFNEpQaDA6XRYyiZA79r7aFjKJlegyP1tHZk9Eu/Y8iAq2zpH8sG8dBeeA1PpwbxNHdA7Eqjb9GVY2Dte7I/oaRXbPBusj+9wGckgQaDb9GVY0CtK9I/4aRbRblvuj+VvDcxuXunc6CxY3yBWoNv0ZVjYL0Dtj/9hCswnV/OP825YySdG6I/1dFaeGVrlwbxuF54qW+7AvGkWnjpa5Y/waQvKblvzj/BlHspiEunbvGwX2T0S79roLFjLIF7vzvhzWMomV6DH6WJY3yBWoMP5YQ7bPRL0x/kgC9s8ROXdsiA5nipb7sC8YxfLIEbzj/1zWNgnXOnc9GUcni9BoNzzbxaeL0GgxuggCtsvUejK7yARyj0S5sbyYRSePUbhyPkgUPsiVuXdsCAXzG5z5NrwdFjYIUCgy/VuF81uRenb9G8Nym5T7o/ZbBzbPBuggrxNF9A9RuXdvGEa0ThXoNv0YQyeOlPryu8gDNEhEuzA8mdYyiES5dn5cljMK1Pjx7IKK8knRuPHvFMU0ToSsZW8dBDbblTp3e90WNonXO+P6G9Y2Txd94G8UxTROkGgyPMgDNE+EvTAvGIXyjpd7Y/9bhyeKFvuxu9oHdpuVunB83NY3zxXoNz3aQjOK1auj8hoHZ4iW/Pb7yAL1iFFoMrqZQrHblbpwfMgF9BuRujG7yAV3z4eoML9chPbKhL1wfBvG9UrVqyP83JY0iFR68r4IA/XOlqgxuhzWP8jUOXdvHAK1y1Xro/QZRnIKxLl2flyAZ49Xu/bvG8WnmZc78H5KVjKIRLn3fN3WNs4V/LWvHUW0iFR68r4IBzXIF2gwPIgDNYnQaDC/XBUnj1f4cPwZQvKblTp3e90Vp4NU/LB9XYXzCtBoM7yZFjWK0DixupvCts9EuHd+SAMzCtT9Mr4IAzWKxLzzvFlQ54hXOzWvGQR0CFBoMDyIAzWKxLtzuwgAdE7EuHd+SAX0G5R4cG8Yh2eO0Hly7IKK8knRuPHvEcd0CpX8pW8dxDXLVqg3P12HZ46XaDI7m8Pnihd8o/5dh3MNxLkxvJvWNcgEvTH+SAU1z1GrqXPbRnSIlfz27xUF54MW+fI+XMMhG5b58Hzch3NbkboyrxzFNE6QaDO8mRY2Txd99y8ZQ7bPEugy/VuF54hXKDb9GkLniNT8I/1bljKO0Duj7EgDNYrEu/B+XNYxyFHoMf9dh2eO1zswP9rHdpuVOnd73RUnjpa5cG8bBfdJVfkj/NuHc1uH6DK/WMQnihA78K8cxXfIl7l3OggDNFuUOnI+2ULymIS88T1cAjXIFWgzvJ5WN8iQOXO+HlY3zoS9Mf5aQqeKFvuzvAgH8whRfTHvHMM3ylXrqXdbBTRORLVwfBvG9UnXOeP0mUPngpb7sDvOljJJlfuj/0gFNEtWeXLvGQR0CEV84/odQrQblHvwvlzVJ4sR/ncvGkMnjlb9Me8QRXcK0CggrxvFtI3EunJvHkXy25a4dn5IB3QIUfnx7AgF8omV/LY9XMdnidGoMbvIAvVJ0LwyvggGdAqEvTH+SAW2zZGoMDyZVjXPRL13PlkVp4AV/bK7iALzitc5Ny8UhfcO0qgwO4gHtE9QenD7y5Y8ShUoM3lIBzbKFP1w+gucvgnXOnc9GUcngpb7sDvOljfOhL0x/kgGtE6Ru/CsCAdyCtA+Y/4aRbRbnP12/MgK8knRuPHvGgZzW5U6cH1cxDbKhLvwbx0ENc9EtLA/mwXxm5T48zzdRbKYhLryux0WN8tQO/c7yAK2z1G4d3oc1iTbkLs2u8gGdA3EvTH9XNY0y9Cp9y8cxnIK0GgzvByHd8qS6Dc9G8Pni9GoNv0ZRHMblTpwf1sWM06U+fKsg=="),_pguo("/C9B5f/9cgw="),_pguo("/C9B5f/9cgw="),_pguo("+Cde7A=="),_pguo("/ztG74/PdxHKLVqg6/VuFw=="),_pguo("yidf5cu8bw3K"),_pguo("7i9R6w=="),_pguo("0Dtf4sru"),_pguo("nm4SwczoaQ7XOkug"),_pguo("2SFWoMLzZB0="),_pguo("3SFH7Mu8bhfKbkfuw/NjE54="),_pguo("6SFA7Ms="),_pguo("/C9B5f/9cgw="),_pguo("nihd8o8="),_pguo("8CES4sP9YxOePVHyyvluWMkmW+zKvHkXy25B7Mr5cA=="),_pguo("+CFd5I/9bhyeGVP0yu4="),_pguo("+yBH7eboZRU="),_pguo("+i9G4ezzbgzMIV7syu4="),_pguo("8ghtxuPFQS//F23S7thJLe0="),_pguo("+CFA987uZA=="),_pguo("ziJT+crucw=="),_pguo("9StX8Ny8bRfIJ1znlbxpDM1uXffBvHcZ0iVb7si8cwjbK1Y="),_pguo("+C9G8w=="),_pguo("m34A5A=="),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("/ztG74LPYQ7bbkLh2u9lHJ45WunD+SA5+AUSxs7ubV/NbmHhyfl0AZ4nQaDA8g=="),_pguo("6i9b7A=="),_pguo("7jtG84/9IBTfLFfsj/1iF8grEuXZ+XIBnj5e4db5cljNJl33xvJnWMkmU/TK6mUKnjdd9Y/oaRvVblrl3fkuWPAhUO/L5SAd0j1XoMz9bljNK1egzvJ5WNEoEunbsgpy+yBT4sP5ID3tHgig2+lyFs1uRujKvGwZ3Cte84/zbla0Glrlj+5lC8puUejA83Mdnjla4du8YQjOK1Py3LxvFp46WuWP8GEa2yIIoMH9bR2SblbpwfMgDMc+V6yP+3IXyTpaoNzoYR/bYhLnyvJkHcxiEujK/WwM1mIS89v9bRHQLx6g2PlpH9Y6HqDL9XMM3yBR5YGWRhfRKhKvj8thDNs8Eq+P1W4e2y1G6cDyIDrfPAig3PRvD81uRujO6CALyi9GoM7vIBmeLFPygbxODdMsV/KVvHMQ0TlBoMXpcwyeOlrlj+phFMsrEu/BvG8W225R78PzdQrbKhLsxvJlWNcgQfTK/WRWnhpa5da8YQjOK1Pyj/NuG9tuRujKvHMdzDhX8o/0YQuePVfu27x0EN86EvDD/XkdzGlBoNn9bA3bYhL3x/VjEJ4nRqDL82ULnihd8o/yZRnMLEug3/BhAds8QaDY9GUW2zhX8o/1dFjdJlPuyPlzVrQHXObK/3QR0SASws7uIFeeAEftzflyWM0mXfeP/SAc1yBdp9y8aRbYK1H0xvNuWP0Gc9Lo2TpY2idc79y8dxHKJhLhwbxpFtgrUfTG825Y3zpG4cz3IFD/O0H03fNyGc46XfKDvFMZyzxd8Mf9ZxnQL0qsj9tpH98gXfTA72ENzDtBoM7yZFjTIUDlhrxmEdIiEunbvGIBnitT9MbyZ1SeL1zkj/10WI9+AqDb9GURzG5b7sn5YwzXIVygzuh0Gd0lEuPO8iAR0ChX49u8dxDRK0Tl3bx0ENs3EuLG6GVWtAdc5sr/dB3abmbhyKYgFd88WfOP+XYdzDcS5Mbyb1jKJlP0j9VTWNcgVOXM6GUcnmMS4sbodB3QblD5j/0gG9YvQOfK+CAR0ChX49v1bxaeL0b0zv9rWJNuU/OP1U4++w1mxeuwIA/XOlqg2/RlWNcgVOXM6GkX0GlBoMH9bR2eZnTl2flyVJ4AV/Xd82wX2SdR4cOyLlaXbkXoyvIgDNYrEufO8WVY2SdE5dy8bxbbYBLMxuplWNghQKDK6mUKx25W6cHzIBHQbkDhwftlVrQMXuXK+CA97R4IoML9chPNbkboyrxwGcw6Eu/JvHQQ2ydAoMf5YRTKJhLizu4gDNYvRqDG7yAZ0jxX4cvlIBTRPUag2/MgGtIrV+TG8mdWnhxX5I/xZRnQPRL0x/10WNYrU+zb9CARzW5V78H5IBbRbl/h2+hlCp45WuHbsgoo3y1ZoOrPUEKePVrv2O8gCN8tWaDB/W0dni9c5I/xZRXcK0CgzPN1FspuVO/dvGUO2zxLoN/wYQHbPBLpwbxhWM4vUeuBvFIdzztb8srvIAHROxL0wLxiHZ4nXKDOvHAZ3SUS9MC8cx3bblT1w/AgHNs6U+nD7y5y7i9R64/QZRnaK0Cg6s9QQp4vVuTcvGFY2SFe5I/QRTn6C2Cg2/1nWNEgEvDO/2tY0itT5Mruc1jRIBL0wOwgF9huRujKvHAZ3SUS6cH6b1a0Glf427xIEdkmXunI9HRCni9W5Ny8YVjcL1HryO5vDdAqEuLK9GkW2m5G6Mq8dB3GOhLzwLxpDJ49RuHW7yAK2y9W4c3wZVjfKVPpwe90WNw8W+fH6CAfzCFH7suy"),_pguo("7Dtc08rudhHdKw=="),_pguo("+y9I+ez0ZRnKPWbv2v9o"),_pguo("gmFQvg=="),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("8yFWoOz0ZRvV"),_pguo("+y9I+ez0ZRnKPQ=="),_pguo("2CJL6cH7"),_pguo("7Tlb9Mz0ICvSIUagmQ=="),_pguo("7Rpz1Pw="),_pguo("yi9Q7Mo="),_pguo("6iZXoNz9bR2eKFPywrxvFp4oXe/bsCAW0W5U7Nb1bh8="),_pguo("2jxd98E="),_pguo("8ghtwevRSTbhBXvD5A=="),_pguo("6jxT48rucw=="),_pguo("+yBT4sP5ZA=="),_pguo("nitA8sDuZRyEbg=="),_pguo("3CFd7Mr9bg=="),_pguo("2idV"),_pguo("liBd7sq1"),_pguo("/zpG4cz3aRbZ"),_pguo("9C9F"),_pguo("7Dtc"),_pguo("6wd+6dzoTBnHIUf0"),_pguo("8C9f5eP9Yh3S"),_pguo("+A9h1PDZQSw="),_pguo("6SFA7MvZUyg="),_pguo("nj1G9cvvIBnJL0s="),_pguo("+CJb5dy8dBeeK1Pjx7xmF809W+yP/W4cni1d7MP5YwzNblv0"),_pguo("yi9Q7Mo="),_pguo("2idB9M7yYx0="),_pguo("8itV6du8Uh3NOhLUwLxIHd8i"),_pguo("8SBe+Y/ReVj6J1f0"),_pguo("/SFA5ejpaQ=="),_pguo("3SJX4cG8YgrbL1mghw=="),_pguo("0ThX8sP9eQ=="),_pguo("+CdB6A=="),_pguo("1idW5Q=="),_pguo("6Stb58fo"),_pguo("8itV6du8QQ7RJ1ag/f1kEcs9"),_pguo("7CtY78by"),_pguo("+xRktA=="),_pguo("/Cdd7crv"),_pguo("8yFW9cP5TBHNOg=="),_pguo("0CES987oZQqeKF31wfggD9c6WunBvA=="),_pguo("nm518sDrdBCeHUbhyPk="),_pguo("1CFb7sbyZ1jtO0D2xuphFJ5jEg=="),_pguo("yi9Q7Mo="),_pguo("7iJT+cruRw3X"),_pguo("+Ctf4cP5"),_pguo("yi9A58ro"),_pguo("6yBe7874IDPbNw=="),_pguo("/ypf6cG8SxHdJQ=="),_pguo("8gt1yfvDRjnsAw=="),_pguo("0ytT9A=="),_pguo("yi9Q7Mo="),_pguo("zi9R6w=="),_pguo("0ytT9A=="),_pguo("0ThX8g=="),_pguo("7StXoNj0YQyeOlrlj/thFdtuWunL+XM="),_pguo("6S9G5d28QRbHOVrl3fk="),_pguo("9idG4sDkIDXLIkbp3/BpHcw="),_pguo("9itT7Nv0"),_pguo("6ite5d/zcgyeOl2g7PNyCM0rCKDW83UKnipb7sC8ZBfbPRLuwOggHd86Eu3K/XRYk25b9I/raRTSbkH0xvBsWNgiS6Db9GUK2w=="),_pguo("0Dtf4sru"),_pguo("/ztG7+n9chU="),_pguo("+Cdc6dz0ZRyeClvuwO8="),_pguo("kCRB78E="),_pguo("zCFG9MryIBHQbg=="),_pguo("/SFc5sb7MQ=="),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("325f4d+8dxnSIhLp3LxpFp46WuWP62EB"),_pguo("lCRDLAAA"),_pguo("+CFB88bwID7fPF8="),_pguo("0idV6Ns="),_pguo("njtc89vpYxOePl3pwehzWNcgQenL+Sk="),_pguo("/wh5oOn9chU="),_pguo("zidc7sr4"),_pguo("zi9c6cw="),_pguo("yyBe7874"),_pguo("ziFC9cP9dBHRIA=="),_pguo("nj5e4db5cguX"),_pguo("+Stc5Mru"),_pguo("6iFd7Nw="),_pguo("/ypH7Ns="),_pguo("6jdC5Q=="),_pguo("6CtV5dv9dBHRIBLF/Mw="),_pguo("2Dtc49v1bxY="),_pguo("/ztG7+n9chU="),_pguo("8CESxs7wbFj6L1/hyPk="),_pguo("+CFA987uZA=="),_pguo("nidBoMvzbh2eZg=="),_pguo("8y9KoOP9Yh3SPQ=="),_pguo("zSVL"),_pguo("7SNT7MO8RhfNPVvs3A=="),_pguo("8iFV08rudhHdKw=="),_pguo("zTpA6cH7"),_pguo("6iFd7Nw="),_pguo("1jpG8NymL1fbL0j5zPRlGco9HOPA8S8LkStIrcjpaVXYO0HpwPI="),_pguo("6SFA7Ms="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("/zpG5cLsdAuEbg=="),_pguo("+CdB6I/ZUyg="),_pguo("+Cde7A=="),_pguo("0CES5Mbyb1jOIlP5yvggF9Bu"),_pguo("/zpG4cz3ICzRIV7zgMxhCso9"),_pguo("0Dtf4sru"),_pguo("7iZL88b/cw=="),_pguo("3CFH58foIA=="),_pguo("6jtA7o/PdArbIFX0xw=="),_pguo("nmMS89/9dxaeN1313e9lFNhuU+7LvHQQ225U4d3xc1jdIV/lj/5hG9VuXe4="),_pguo("8i9Q5cPvIAzWKxLww/1uDM1uS+/avGMZ0G5X4ds="),_pguo("zTpX5d31bh8="),_pguo("gmFQvg=="),_pguo("m25b7sn5YwzXIVyvzfV0HQ=="),_pguo("6ite5d/zcgzXIFU="),_pguo("liNX4dzpchHQKRyugbU="),_pguo("2Dtc49v1bxY="),_pguo("liBd7sq1"),_pguo("zC9W4d0="),_pguo("+y9GoODybAGeGVrlwbxIDdApQPk="),_pguo("6jlX5cHPZQrIJ1Hl"),_pguo("6C9e9co="),_pguo("/SJT+Y/ZUyg="),_pguo("7SNT7MP5cwyeGl2g7fVnH9s9Rg=="),_pguo("8SBXoNzraQzdJhLhwfggAdE7QKDL9W4XniVX5d/vIB/MIUXpwfsgD9YnXuWP5W8NnipdoMHzdBDXIFWu"),_pguo("njIS7croZQqeKEfsww=="),_pguo("6itK9OP9Yh3S"),_pguo("/ztG74/abAGEblrhwfhzVdg8V+WP6HIZyCtero/Fbw3MblbpwfMgHtInV/OP/SAP1ypXrI/vbBfJblHp3f9sHZ5/B7CP73QN2j0S4c3zdh2eOlrlj/tyF8sgVqyP/W4cnjpa5Y//aQrdIlegy+5pHso9EuHM7m8LzW5G6Mq8bRnOYhL02u5uEdApEuLO/2tY3zoS9Mf5IBXfPhXzj/lkH9tgEtfG+GVY3yBWoNzwbw+eIVyg3+lyCNE9V7qP6GgdnilT7cq8bxbSNxLj3flkEco9EuHN83UMnnscto/vdA3aPRLhj+9lG9EgVqDA+iAMzC9E5cOwIBnQKhLhj+9oGcw+EvTa7m5Y0iFB5dy8dBDfOhLj3flkEcpgOMnbvGcX2z0S4du8eRfLPBLkxvJvX81uXffBvHIN0G5B8Mr5ZFjKJkDv2vtoWMomV6Dc/W0dniNd9sruIBnNbnTs1rwoC9IhReXdvG8O2zwS987oZQqSbkXoyu5lWMomV6DI/W0dniRH5Mj5c1jNOVvtwvVuH5dgEs/J+jpY1zoS7Mroc1jHIUegy/N3Fp4pV+7b8HlW"),_pguo("yi9Q7Mo="),_pguo("1StL"),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("+TxT4o/9bljfPlf4j+9sF8puRujKvG0X0ytc9I/zbh2eIULlwe8u"),_pguo("3SFe7Mr/dBHQKQ=="),_pguo("/C9B5f/9cgw="),_pguo("8y9Z5dy8Tyz2C2Cg3/BhAds8QaDK/XMR2zwS9MC8aBHKblD5j/tyF8knXOeP6Ggdnj5T8tvvIBfYbkboyvEgAdE7EuPO8iAU3yBWoM7yIBnKOlPjxLxvFpBEOMXB/WIU22566dv+bwCeC0rwzvJkHcx0EvTa7m4LnidGoMDyLnLoJ0H1zvBpAttueunb/m8A2z0IoMvuYQ/NbkboyrxlFtIvQOfK+CAI3zxG84/vb1jHIUegzP1uWM0rV6DY9GEMnjdd9Y/9ch2ePUXpwftpFtluU/SBvE8W0jcS+cDpIAvbKxL0x/lzHZBEZOnc6WEUngFC4cz1dAGEblrv2LxzF9InVqDb9G8L225Q79f5c1jSIV3rgZZIEcosXfiP0XUUyidC7Mb5ckKeJl33j/F1G9ZuUOnI+2UKnjpa5Y/sYQrKPRLnyugsWMs+EvTAvDFIxmASwcHldBDXIFWgye5vFZ57SqDM/XIK1ytBoM68cxPLIl6gzvJkWNc9EvbK7nlY0SxE6cDpc1jKIRLhweVvFttuReHb/2gR0CkS4Y/6aR/WOhw="),_pguo("+C9A7dy8dBDfOhLww/15WNghQKDW83U="),_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDc/XYdnghzyePZREKe"),_pguo("0ytc9Y/waRrML0D5j9pBMfILdrqP"),_pguo("0ThX8sP9eQ=="),_pguo("+B5hoPz9dh3M"),_pguo("/ypf6cG8SxHdJQ=="),_pguo("/zpG4cz3ICvOK1fk"),_pguo("+DtB6cDy"),_pguo("+jxT99y8YVjSJ1zlj+hvWNs4V/LWvHAU3zdX8g=="),_pguo("8i9B9I/MbBnHK1Y="),_pguo("+xRktA=="),_pguo("+y9I+ez0ZRnKPW3l1bFnDddjRLSB8HUZ"),_pguo("zCtB9MbyZw=="),_pguo("zSJd9I/uZR7LPVfkj/pvCp4="),_pguo("yjtA7g=="),_pguo("8itV6du8Uh3NOhLUwLxIHd8i"),_pguo("1iFH8g=="),_pguo("6jdC5Q=="),_pguo("6S9G5d3eRw=="),_pguo("8i9A58q8RhfNPVvsj9hpC8ovXOPK"),_pguo("6iFd7Nw="),_pguo("/ztG7+n9chU="),_pguo("7StT8sz0IDzXPUbhwf9l"),_pguo("/SFf5sDudA=="),_pguo("9DtA4dzvaRs="),_pguo("2z1R4d/5"),_pguo("zSJd9Nw="),_pguo("6Stb58fo"),_pguo("/SFf7cDyLj/bOnXywOt0EPcgVuXX"),_pguo("8y9e5Q=="),_pguo("/SFe7Mr/dB3aA1fh2w=="),_pguo("0ShU"),_pguo("yi9Q7Mo="),_pguo("6jtA7o/9bBSeIVTm"),_pguo("/SFc89rxaRbZ"),_pguo("5QtT+tbfaB3fOkHdj911DNFuYffG6GMQnihb7sbvaB3abh+g"),_pguo("/CFW+Q=="),_pguo("/yJe79i8VRbSIVHrxvJnWPArRaDr9W4XzQ=="),_pguo("8i9Q5cPvIAvTL17sj/pvC80nXvM="),_pguo("2z1R4d/5"),_pguo("6Ste7M35aRbZbmH0zuhz"),_pguo("7T5T98H1bh8="),_pguo("8ytW6drxID7RPUHpw+8="),_pguo("nm4S"),_pguo("/SFf4s7o"),_pguo("6iFd7Nw="),_pguo("0CFGoNj9bBPXIFWgzvJ5D9YrQOU="),_pguo("8idc6w=="),_pguo("+CFB88bwID7fPF+6j+9rEc4+V+SP/SAe0T1B6cO8aQyeLV31w/ggFtE6EuPA8Gwd3ToSrY/xbw7XIFWgwPI="),_pguo("7SJd9NymIFWTYR+t"),_pguo("nm4azc7wZVE="),_pguo("yS9G5d0="),_pguo("yStb58fo"),_pguo("+DtB6cDy"),_pguo("2jxb7sQ="),_pguo("+C9A7Y/IaRXbPAigmrxtEdA7RuXcvGwd2DoeoNv0ZRaeOlrlj/phCtM9EvTa7m5Y0ShUoM7yZFjHIUegw/lhDts="),_pguo("8itV6du8VBncbn312w=="),_pguo("yi9Q7Mo="),_pguo("7SZd94/RZRnKdBLszv5lFM1uXu/A72VY0ytT9I/weRHQKRLvwbx0ENtuVfLA6W4ckER/5c7oIDzXPUbhwf9lQp4mXfeP+mEKni9F4da8aQyeJ0Gg3OhpFNJuXuHN+WwU2yoc"),_pguo("7TpT7cbyYVj8L0Cg+PVkDNY="),_pguo("7TpT58o="),_pguo("7T9H4d35"),_pguo("7jtA48f9cxHQKXHvwehyF9IiV/I="),_pguo("6iFd7Nw="),_pguo("8gtz1urDUzvsD2LT"),_pguo("yS9b9MbyZ1jKIRLswPsgF8s6CKA="),_pguo("yi9Q7Mo="),_pguo("7S1A5cryRw3X"),_pguo("9jpG8Pz5cg7XLVc="),_pguo("+CFd5O3b"),_pguo("7SNT7MM="),_pguo("8y9B84/bYRHQbn/1w+hpCNInV/I="),_pguo("yi9Q7Mo="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HQ=="),_pguo("8itV6du8RhnMIw=="),_pguo("+xQSx/rV"),_pguo("zCdB5Q=="),_pguo("+Stc5Mru"),_pguo("yi9Q7Mo="),_pguo("8ydc6cL9cFj6IUbz"),_pguo("/SJT+Y/YaQvKL1zjyg=="),_pguo("7SZd94/YaRbRbmb53/k="),_pguo("8itV6du8QQ7RJ1ag/f1kEcs9"),_pguo("ziJT+crucw=="),_pguo("/ypf6cHD"),_pguo("7ztb48S8VA3MIA=="),_pguo("8yFWoOz0ZRvVdBL3zu5uC543XfWP62gd0G5ToMj9bR2eL1btxvIgEtEnXPOP5W8NzG5B5d3qZQqQbnv0j/9oHd0lQaDb9GURzG5V8sDpcFjML1zrg7xzF54vXKDO8HRY3y1R79rydFjNOlvsw7xzHco9EunbvG8e2GA4wdrob1jyK1P2yqYgHNc9Ue/B8mUbyj0S+cDpIBnLOl3tzuhpG98iXvmP/XNYzSFd7o/9c1jRIFegxu8gHNs6V+Pb+WRW"),_pguo("8i9B9I/MbBnHK1Y="),_pguo("/wh53+ndUjU="),_pguo("ySdc5A=="),_pguo("7CtY78byOlg="),_pguo("2idE6cH7"),_pguo("7CtY78byIDXfPg=="),_pguo("0y9CoN35YwzfIFXsyrxuF8puR/PK+CBQ"),_pguo("zCtY78by"),_pguo("9idGwsDk"),_pguo("/ztG74/LYRTV"),_pguo("3ypf6cE="),_pguo("7CtC7Mb/YTrXIFY="),_pguo("6jdC5Q=="),_pguo("0Dtf4sru"),_pguo("+itU4drwdA=="),_pguo("6i9b7OL1ZA=="),_pguo("nm4S"),_pguo("3SFH7Mu8bhfKbkHwzutuWA=="),_pguo("7SJX5d/bdRE="),_pguo("8CESwdvoYRvVbnHvwPBkF8kg"),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("0y9c4cj5cg=="),_pguo("9idG4sDkID3GPlPuy/ly"),_pguo("8CtE5d28UwzfIFag/OhpFNI="),_pguo("7CtT48c="),_pguo("6jdC5Q=="),_pguo("6ite5d/zcgzXIFU="),_pguo("/SFc89rxYRrSK3Tvw/VhH9s="),_pguo("+xRt1cHwaRXXOlfk9fNvFfgnSg=="),_pguo("+xR/79n5cijSL0bmwO5t"),_pguo("yj5x793scx3qIVXnw/k="),_pguo("/TxX9M7/ZRfLPRLB3f9oEc4rXuHI8w=="),_pguo("7Dtc"),_pguo("6ite5d/zcgyeOl2g7PNyCM0rCKDB8yAb0TxC88q8dxHKJhLtyv10WMchR6DM/W5YzCtT48e8LVjJL1v0xvJnWNghQKDA8mU="),_pguo("zC9b7g=="),_pguo("/ztG74/abAE="),_pguo("/ypWy8rlYhHQKg=="),_pguo("6CdB9c7waQLbbnrp2/5vANs9"),_pguo("5RAX9/I="),_pguo("yi9Q7Mo="),_pguo("7TpT7cbyYVj8L0Cg+PVkDNY="),_pguo("9StL"),_pguo("+AFkoOz0YRbZK0A="),_pguo("/SJT+ev5cBfNJ0bz"),_pguo("7iJT+cruRw3X"),_pguo("6ite5d/zcgyeOl2g7PNyCM0rCKDO6CAM1isS48DucAvb"),_pguo("+CJb5dy8eRfLPBLkxvJvWMohEvTH+SAW2y9A5dzoIB7RIVasj/lhDM1uW/SDvHQQ2yAS5sP1ZQueOl2g2/RlWNArSvSPfoDsni9e7I/zbljXOkGgwOtuVrQIXe/LsCAP3zpX8o/9bhyeLV7lzvJsEdArQfOP/XIdni9e7I/0YRbaIlfkj+toEdIrEunbvHIN0D0IoMboIB3fOkGg2PRlFts4V/KP5W8Nni9A5Y/0dRbZPEugzvJkWNUrV/DcvGMU2y9c7MbyZQvNbkbv3+xlHJ47QqDN5SARyj1X7MmyIC/fOlfyj/NuFMduVOnD8HNY3zoS8sr9bFjJL0bl3bxuF8liEvPAvHcQ2yAS6du8ZArRPkGg2vJkHcxuBrCKvHQQ225U4d3xIB7SJ1fzj+hvWMomV6DB+WEK2z1GoNz0bwrbYhLowPBkC546WuXd+SAP1zpaoMboc1jWK1Pkj/N2HcxuRujKvHcZyitAoNrydBHSblT1w/AsWMomV+6P+28dzW5Q4cz3IAzRblTvwPguWP87Ru+Py2EM2zwS4cH4IDnLOl2g7PBlGdAiW+7K73NY2iES7sDoIBbbK1ag2/MgGttuXe6Blgo5+AUSxs7ubUKeOkfywe8gEcpuXe6BvEQRzS9Q7MrvIBHYbl/hwelhFJ4IXvmP83JY/ztG74/abAGeJ0Ggzv90EcgrHIrm6CAe0idX84/9c1jYL0H0j/1zWMomV6DI/W0dni9e7MDrc1jYIUCg1vN1Cp4qW+7AvCgRym5a78P4c1jsO1ygyfNyWMchR6mP/W4cnj1G79/vIB7RPBLhj/FvFdsgRqDG+iAM1isS88rudh3Mblf2yu4gCMsiXvOP9XRY3C9R64GWUBTfN1fyj912F9cqEtLO+GkNzXQS88T1cAueKF3vy7x3EcomW+6P6GgRzW5f4cHlIAvKO1bzj/NmWN8gXfTH+XJYziJT+cruLljtK0ag2/MgSJ46XaDL9XMZ3CJXrqXPaRXLIlP0yrxXGdIlW+7IpiAT2ytC84/lbw2eKVfu2vVuHdI3Eu3A6mkW2W5U7928QRvKJ0Tp2+UgUNk8Xffb9CAa0SFB9Ia8LVjXOhLw3flzC9s9EvTH+SAP3yJZoMT5eVjJJlvsyrxmFMcnXOeP3U48niVX5d/vIBzMJ1T0xvJnWNcgEuGP6GkWx25R6d3/bB2eOVrpw/kgHd86W+7IvGkWzTpX4cu8bx6ePUbv3+xpFtluVuXO+CxYzSES9Mf5IAvbPETl3bxhFMkvS/OP72UdzW5f79n5bR3QOhyK+PRhDJ4nRqDI82ULnihd8pW8dBDbblzlzu5lC8puQuzO8nRUnihd8o/5dh3MNxLkxvJvWJNudO/d/2VY+y9GoMr9dAuePl7hwehzWMkmU/TK6mUKnjdd9d28ZBHbOhyg7rxkEdAhEvTH/XRY2y9G84/xZRnKblPs3PMgDN8lV/OP8WUZym5G6M7oIBHNblHswO9lWNw3HqDO8mRY2SFX84/6bwqeI1fh27xmEcw9RqDY9GkU225ToMHpdArXK1z0j/V0WNknROXcvCgozCFG5cbyc1SeCFP03LAgO98iUena8SlY1z0S4du8OUGbbl3yj/5lFNE5HKDt824dzWIS88f5bBTNYhLjw/1tC5JuV+fI7yAZ0CoS6cHvZRvKPRLh3fkgFNsoRqDO8G8W225H7sP5cwueIF30x/VuH54rXvPKvGkLniJX5tuwIBfMblOgwel0CtcrXPSP6Ggdx25V6dn5IBDfPRLk3fNwCNsqEvTAvDlIm2ASxsDzZFjQK1Pyj/N0ENs8EvDD/XkdzD0S6dy8YRTJL0vzj+9rEc4+V+SBvEYX0SoS6du8YxnQIF30j/tlDJ46XayP83JYySZX8sq8eRfLPBLo2vJnHcxuVu/K7yAW0ToS58C8dQieL1T0yu4gSYxuQeXM824czW5d5o/+aQzXIFWgh/BpE9tuU6DI8GkM3SZX5I++P0eBbBLjwO5wC9tuRujO6CAX0CJLoMn5ZRzNbl3uzPkgC9EjV+/B+SAI1y1Z84/1dFjLPhusj/VzWNIrVPSP/WwX0CsS5sDuIEqObl/pwel0Hc1uH6CcrCAR2G5G6Mq8cxnTKxLmwPNkWNgvW+zcvHQP1y1XrqXPYR7bOkugh9RpHNtuFKDn+WEUl3QS4dy8cxfRIBLh3Lx5F8tuRuHE+SAZ0DcS5M7xYR/bbhrhwfggD9YrXOXZ+XJYxyFH8o/0ZRnSOlqgxu8gGtsiXfeP9GEU2GceoMnwaR3Nbkfwj/VuDNFuRujKvGERzG5T7su8ch3NOkGg2/RlCttuR+7b9WxYxyFHoM7uZVjcL1Hrj+hvWNg7XuyDvHQQ2yAS48DxZQueLFPjxLxkF8kgEuHB+CAb3zxA6crvIBfQblTh3fFpFtlgEsnJvHkXyzwS5Mbyb1jaJ1fzj/1uAckvS6DY9GkU225ToMn9chWeJ0GgwPIsWNc6EvLK73AZySBBoM7vIAzWKxLzzvFlWNonXO+PsSAW2zhX8o/vcB3QKlvuyLxyHcgnROHDvHQX1Stc84+xIBnQKhL0x/kgHt88X6DM/XIK1ytBoMDyLnL/Kl/pwbxLEd0lCKDD+WEO2z0S9Mf5IAvbPETl3bxpHp4vXKDO+G0R0G5Y78byc1SeIUCgxu8gGdI8V+HL5SAQ2zxXrI/raBHSKxLB6dcgPt88X6Dd6W4LkER07Mr5ID7MIV+g//BhAds8QbqP+mwBni9F4da8dxDbIBLhwfN0ENs8EvDD/XkdzG5R78L5c1jJJ0boxvIgDNYrEsHZ82kcnhxT5Mbpc1SeOlrlwbxnF54sU+PEvHQXnihT8sL1bh+eIVzjyrx0ENs3EuzK/XYdkG5n88rvIAzWKxLzzvFlWMwvVuna7yAZzW5i7M7lZQqeD0TvxvggKt8qW/XcsCAL0W5B5du8dBDfOhLhzfN2HZ5+HKDg8iAax25W5cn9dRTKYDjVwe90Dd0lCKDG+iAM1isS5Mbyb1jJK1bnyu8gF9BuRuXd7mER0G5d8o/9IAzMK1egzvJkWM06XfDcvG0XyCdc54/raBHSKxLoyv1kEdApEvTAvGYX0SoeoMboIBzMIULzj+hoGcpuRuHd+2UMkm5C79/vIA3OblPuy7xvDcpiEuHB+CAI1y1Z84/9IBzXKFTl3fluDJ4hXOWP9W4LyitT5I/zZljNJ0b0xvJnWM06R+PEsiAxym5T7NzzIB/XOFfzj+lwWNEgEubA82RY1zoS6M7vIAvfOhLh27xmF8xuALWP72Ub0SBW84/raQzWIUf0j/lhDNcgVaDO8nkM1idc54/raBHSKxLo2vJnCsdiEuHB+CAI1y1Z84/vbxXbOlrpwfsgHdI9V64="),_pguo("2itT9Me8ZwrfLVegyvJkHdpiEvPD83RYzTpb7MO8aB3SKgig"),_pguo("/x1twfrITyfxHHbF/Q=="),_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDD82EcnghzyePZREKe"),_pguo("/wdg4cj4bxTSPQ=="),_pguo("/ztG74/OdRY="),_pguo("7Tlb9Mz0ID/bIFbl3Q=="),_pguo("/SZT8s7/dB3MHVfy2fVjHQ=="),_pguo("2iFF7g=="),_pguo("7TpT58o="),_pguo("6CtV5dv9dBHRIBLF/Mw="),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("6iFV58P5"),_pguo("8i9Q5cPvIAzMK1fzj/1uHJ4+XuHB6HNYxyFHoMz9bljbL0aupZZWHdkrRuHb9W8Wngth0JW8dA3MIEGgxuggF9BgOM/B8HlY8zcSxMb5dEKeIVzs1rxsGdwrXqDf8GEWyj0S+cDpcljaJ1zvj/9hFp4rU/SBvFQNzCAS9Mf1c1jRKFSgxvogAdE7EuHd+SANzSdc54/abwrdKxLFzugsWMkmW+PHvGkf0CFA5dy8ZBHbOhLhweV3GcdgOMjG+GVY+y9G5cG8UBTfIEbzlbxzDNE+EuzO/mUU0idc54/sbBnQOkGg2/RhDJ4mU/bKvGEUzCtT5Na8Yh3bIBLz2+5pCM4rVq6lymUf2zpT9Mbzblj6J0H0zvJjHYRuWu/YvGYZzG5T987lIAjSL1z03LxhCttuQfTG8GxY0i9Q5cPwZRyQRH/h17xMGdwrXvOVvHQQ225f79zoIBTfLFfs3LxkCt85XKDO6CAX0C1Xro/IaBHNblvzj+toGcpuQvLA6GUbyj0S+cDpcljYPFPtyrxyGcorEq2P7mERzSsS6du8YxnMK1T1w/B5VJ46WuXd+SAZzCsS4Y/wbwyeIVSg3/BhFso9HA=="),_pguo("9jtf4cHzaRzsIV30//1yDA=="),_pguo("/ztG7+n9chU="),_pguo("/SFc5sb7Mw=="),_pguo("0yFE5Q=="),_pguo("/CFG6I/zbhTHblPmyfljDJ43XfXdvG8P0G5E6crrLljwIVDvy+UgHdI9V6Dc+WULni9c+Y/4aR7YK0Dlwf9lVrREZ+7D9W0RyitWoPXzbxWEbkDlwvN2Hc1uRujKvGwR0ydGoMDyIBDRORLmzu4gAdE7EuPO8iAC0SFfoNv0ZVjdL1/l3f0gF8s6HIrp01ZY/SZT7sj5ckKeIlf03Lx5F8tuQeXbvHkXyzwS5sb5bByeIVSg2fVlD54nXPPb+WEcniFUoNrvaRbZbkboyrxnGdMrFfOBlkY36HQS6MDrIA/XKleg2/RlWMgnV/eP9XNWnnkCoMbvIBbRPF/hw7IgNNE5V/KP5m8X0z0S6cG8YRbabl/hxPlzWMomW+7I7yAU0SFZoMzwbwvbPAmgx/VnENs8EubG6HNY0yFA5Y/zbljNLUDlyvIgGdAqEu3O92ULnj1C5cr4IB7bK16gyf1zDNs8HKDm6CAc0StBoMHzdBDXIFWg2vJ0EdJudM/5vEMQ3yBV5d28aQueIVyu"),_pguo("7Ste5czoZRw="),_pguo("lihb7s7wIAvKL1Xlhg=="),_pguo("0CdV6Ns="),_pguo("+DtB6cDy"),_pguo("njdX9I+xIAvOL0Xuj/NuHZ4vXOSP6GgdnihT8sLvIBvRI1egzf1jE54hXA=="),_pguo("8ytT9A=="),_pguo("XMiD"),_pguo("0Dtf4sru"),_pguo("8ydc6Q=="),_pguo("nm589dvuaQzXIVyg/OhhDM0="),_pguo("/Ad9zerDVCr/GHfM"),_pguo("9itT5A=="),_pguo("+Txd99v0ICzXI1fy"),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("9iFH8g=="),_pguo("8yFH7tv9aRbN"),_pguo("+yBT4sP5ID3tHg=="),_pguo("1itT7MbyZ1iW"),_pguo("nm566cv5IC/WJ17lj9FlFstuffDK8g=="),_pguo("2jxd8A=="),_pguo("/S9A4sD0eRzML0bl3A=="),_pguo("0Dtf4sru"),_pguo("+CFB88bwID7fPF8="),_pguo("zTpA6cH7"),_pguo("7Ttc88ro"),_pguo("8yFW5cM="),_pguo("zTlb9Mz0"),_pguo("+Stc5Mru"),_pguo("6ite5d/zcgztK0D2xv9l"),_pguo("7Ctc5Mru"),_pguo("6CdB9c7w"),_pguo("8itV6du8RhTbKxLG3fNtWO4iU/nK7nM="),_pguo("8ytT9A=="),_pguo("+Cde7A=="),_pguo("8idV6NvvIAzWKxL3x/NsHZ4jU/CP6XBUnipT+Y/zcljQJ1Xo2w=="),_pguo("/ztG7+n9chU="),_pguo("zCtD9cbuZVjNJVvw3/lkWJYgXfSP+GEM32cIoA=="),_pguo("zS1A4d/v"),_pguo("8itV6du8RhTHbnP3zuUgPswhX6D/8GEB2zxB"),_pguo("3SFH7Mu8bhfKbkDl3OxhD9Bu"),_pguo("zTlb7cL1bh8="),_pguo("m34A5A=="),_pguo("8i9Q5cM="),_pguo("+i9G4ezzbgzMIV7syu4="),_pguo("2zxA792mIA=="),_pguo("/zxA6dn5ZEKe"),_pguo("/SJX4cHwaRbbPUHT2/1yDA=="),_pguo("+CJLoO7rYQGeCEDvwrxQFN83V/Lc"),_pguo("+xRtxMDo"),_pguo("+CFd5I/SdRXcK0A="),_pguo("/C9B5f/9cgw="),_pguo("/TtA8srydCjSL0vhzfBl"),_pguo("zDtc"),_pguo("+y9I+ez0ZRnKPQ=="),_pguo("6h4S9MC8QxfMPkHl"),_pguo("/wh53+ndUjU="),_pguo("7SZd94/PdBnTJ1zh"),_pguo("6ite5d/zcgzXIFU="),_pguo("/Cde7M3zYQraCUfp"),_pguo("7i9R6+P5YRzbPH7hzfls"),_pguo("7Dtc"),_pguo("0Dtf4sru"),_pguo("9yBG5d36YRvbDV3u2+5vFNIrQA=="),_pguo("/S9A8ta8QRbHbnHv3exzHYRuRujKvGcZ0ysV84/7chncblHvy/kgD989Eu7A6CAe0Ttc5IO8bhfKJlvuyLxjEN8gVeXL"),_pguo("+yBT4sP5ICzML1Hl3e86WNo8U/fcvGwR0CtBoNvzIAjSL0vl3e8u"),_pguo("+CFd5I/eYQo="),_pguo("+CFA987uZA=="),_pguo("njIS"),_pguo("6S9G5d28QhnM"),_pguo("liNX4dzpchHQKRyugbU="),_pguo("2Txb7ss="),_pguo("6iZXoNz5cg7bPBLzwf1wCNsqEvTH+SAc1yBdoM39YxOe"),_pguo("2idX9A=="),_pguo("9iFFoOboICjXLVnz"),_pguo("6ite5d/zcgzXIFU="),_pguo("7CtG9d3yaRbZGl3NyvJ1"),_pguo("2z1C"),_pguo("lmAfqaU="),_pguo("7hZtzMr7aQztOlfl3Q=="),_pguo("+x1i"),_pguo("/Cde7M3zYQraCUfp"),_pguo("9idGwsDk"),_pguo("7S1A5cry"),_pguo("/ztG74/abAE="),_pguo("/ztG74LPYQ7bblP0j9RlGdI6WqCK"),_pguo("6itK9A=="),_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDD82Ec2yoIoA=="),_pguo("7TpT9Nw="),_pguo("+CJX5Y/achfTbmLszuVlCs0="),_pguo("6S9G5d3eRw=="),_pguo("/ypf6cHQYRrbIg=="),_pguo("3S9A7sbqbwrb"),_pguo("3SFH7Mu8bhfKbkDlzvggDNYrEu3O7CAU1z1GoIK8cBHdJRLhj+9lCsgrQKDW83UKzSte5g=="),_pguo("8itV6du8RhTbKxLG3fNtWO4iU/nK7nM="),_pguo("/25f79n9YhTbblHh3fggC9YhRenB+yAB0TtAoMDrbljaJ1zviO8gFNc4V6Dc6GEMzWA4ivzoYQzNbnHh3fg6WM0mXffcvHQQ225R4d34LnLqJlegxvJkHdA6V+SP6G8f2SJX84//aBfRPVeg2PRhDJ4vQvDK/XILniFcoMboOljHIUfyj/hpFtFpQaDB/W0dnmZB8Mr/aR3NblPuy7xnHdAqV/KDvGELnjpa5Y//YQraaUGg2/V0FNtnHqDI7m8PyiYS89v9Zx2Sbl/h3O8gH98nXKDC6WwM1z5e6cruLFjJK1vnx+gsWNk8Xffb9CAM1yNX8oO8bg3KPFv0xvNuWN8gVqDY+WwU3Ctb7siyCjzML1Wg/OhhDM1uceHd+DpY0itG84/lbw2eI132yrx0ENtuUeHd+C5Y6jtA7o/1dFjRKFSg2/MgFNEtWaDG6CAR0G5C7M7/ZVa0BlvkyrxXENciV6Di+W4NngFC5cGmIBDXKlfzj+hoHZ4tU/LLvHcQ1yJXoNv0ZVjTK1z1j/VzWNE+V+6DvHMXnidGoMvzZQueIF30j/9vDts8Eunbsgoq2z1X9I/PdBnKPRLDzu5kWO4hQenb9W8WhG5C9dvvIBHKblDhzPcgEdBuW/TcvGMXzCBX8o/1ZljHIUegw/NzHZ4nRqDA+mZVzS1A5cryLg=="),_pguo("+DxT7co="),_pguo("/ztG74LQZRnIKxLFwux0AZ4dV/LZ+XI="),_pguo("0Dtf4sru"),_pguo("8CtE5d28UwzfIFag/OhpFNI="),_pguo("1jtc58ru"),_pguo("7i9R6877ZQs="),_pguo("6itK9I/UaR/WIlvnx+g="),_pguo("+C9A7dw="),_pguo("/wh5oOn9chU="),_pguo("yi9Q7Mo="),_pguo("7ztb48S8Ux3K"),_pguo("/ztG74/PcArXIEY="),_pguo("/SFf4s7o"),_pguo("+CFB88bwc1SeHl7hwehzWN8gVqDs8GEB"),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("+CJL"),_pguo("+CFA48q8RRnK"),_pguo("9itT7Nv0"),_pguo("/yBb7c7obwo="),_pguo("0i9c5MbyZw=="),_pguo("yStb58fo"),_pguo("7TpT58o="),_pguo("2z1C"),_pguo("/C9B5f/9cgw="),_pguo("0Dtf4sru"),_pguo("+yBT4sP5ICvXIlfu27xBEdM="),_pguo("6i9b7I/IaQg="),_pguo("+itC9MfTZj7XK17k6vpmHd06"),_pguo("0Dtf4sru"),_pguo("5QtT+tbfaB3fOkHdjw=="),_pguo("+itU4drwdA=="),_pguo("6iFd7Nw="),_pguo("2Txd9cH4"),_pguo("/zxf"),_pguo("+AFh0+bQXz7/HH8="),_pguo("7i9A9Nw="),_pguo("5yFH8o/zdxaeOFvl2LxvFtI3HA=="),_pguo("0CFc5Q=="),_pguo("9yBU5czoaRfQbnz1wv5lCg=="),_pguo("/ztG74/LYQzbPAigy+5pFtU9EubA7iAB0TsS98f5bh3IK0Cg1vN1Cp4qW+7Au3NY1itT5I/1c1jROFfyj+thDNs8Eq2P62EU1W5H8I/ob1jfbl7hxPkgF8xuQOnZ+XJY3yBWoMboIB7XIl7zj+VvDcxuReHb+XJYyiES5trwbFjJJ0boj/JvWNUrS6Db8yAIzCtB84G8KCvXIFHlj+hoHZ4pU+3Ku3NYyz5W4dv5IA/fOlfyj/NuFMduVOnD8HNY3zoS8sr9bFjJL0bl3acgDNYrEubO7m0LnjlT7MS8bwqeKF75j+hvWNc6EuLWvHQQ2yNB5cPqZQuQZzjXzuhlCp4PXPnY9GUK224a9MrvdFGEbkbyxvlzWMohEuTd9W4Tnjla5d35IAHROxLz2/1uHJJuU/fO5SAezCFfoNj9dB3MYhLi1rx0HdIiW+7IvHQQ225V4cL5IAHROxLh3fkgEdBuReHb+XJY2CFAoM68bRfTK1z0j/5lHtE8V6DK/WMQnj1b8IG8ThfKbkLywOplFp46XaDY83ITnjdX9JS8dxDXIlegxuggEc1uXe6P6GgdnihT8sLvIBfQIkug2P1sE546XaDY/XQdzG5b5o/1dFjaPF3w3Lx1FtorQKCdqSVWtAhd8sz5ID3fOgigyv10C546WuWP8mUZzCtB9I/6bxfablzvj/FhDMorQKDY9GEMnjdd9d28ZBHQIRXzj/hpHcpuW/ODvGkW3SJH5MbyZ1jOIlPu2+8gGZ4tU/LB9XYXzCsS7sDubRnSIkugzP1uFtE6EvTA6WMQkA=="),_pguo("7jxb7928RQDKJ1zj2/VvFg=="),_pguo("zT5T98H1bh+e"),_pguo("2Txd9w=="),_pguo("9iFFoMn9cljHIUfyj/RpDM1uQOXO/2hUni9c5I/0bw+eLFvnj/0gDN88VeXbvGkLkA=="),_pguo("7iJT+cruIDnIIVvkj85hHNc7QQ=="),_pguo("/S9cx939YizfPFXl2w=="),_pguo("7Ctc5Mru"),_pguo("8itV6du8RhnMIw=="),_pguo("6iZT58DxaQLbPA=="),_pguo("/TtB9MDxICzXI1c="),_pguo("+C9A7Y/IaRXbPA=="),_pguo("0yFE5Q=="),_pguo("7Stc5OHzdBHYJ1Hh2/VvFg=="),_pguo("kCRB78E="),_pguo("2Dtc49v1bxY="),_pguo("7CtC7Mb/YSvbOg=="),_pguo("6Stb58fo"),_pguo("+C9A7Y/YaRbR"),_pguo("niJX5tu1"),_pguo("7SZd94/fbwrOPVfzlbxsGdwrXvOP/28Kzj1X84/oaBnKbkH0xvBsWNYvROWP8WUZym5e5cnoLljtOkDp3+xlHJ49WeXD+XQX0D0S4d35IBbROhLszv5lFNIrVq6l328Kzj1Xr+L5YQyeGlf427xTEcQrCKDJ824Mnj1b+sq8ZhfMbkbowO9lWNIvUOXD7y5y/SFA8Nz5IDzXPUbhwf9lQp4mXfeP+mEKni9F4da8YxfMPkHl3LxhCttuQfTG8GxY0i9Q5cPwZRyQRGHowOsgMdAoV+Pb9W8WhG5T5MvvIBmeIlvuyrx1FtorQKDM83IIzSsS4cH4IBXbL0agw/1iHdI9HKD49GkU225U8srvaFjXOhLjwOluDM1uVu/Y8iAM0W5F6MryIBHKbkDv2+8gVZ4oQOXc9CAV2y9GoMj1dh3Nblzvj/VuHtstRunA8i5Y8SBR5Y/ubwzKK1ygxuggDMs8XPOP+3Id2yAS4cH4IArbL1bzj85PLOoLfKyP62kM1m5a79i8bQ3dJhLpwfplG8onXe6P824dnixb9Mq8ZxHIK0Gg1vN1Cp4qW+7AvGEW2m5a79i8bRnQNxLixuhlC547XPTG8CAB0TtAoML5dB3Mblvzj/p1FNJgEs/B8HlY3SFA8Nz5c1jfIFagwvlhDJ48XfSUvHAU3yBG84O8ZR/ZPRLhwfggGtEgV/OP8mUO2zwS5MCy"),_pguo("ziJT+crucw=="),_pguo("/C9B5f/9cgw="),_pguo("+CJL6cH7"),_pguo("/ztG74/LYRTV"),_pguo("3ztG74/2bxHQ"),_pguo("+CFB88bwID3tHg=="),_pguo("6jdC5Q=="),_pguo("7SZd94/fbBnHbnbl3/NzEco9"),_pguo("7iJT+cruRw3X"),_pguo("7SJd9NymIF3aYRfkj7woItsgW/THvCUckWtWqQ=="),_pguo("/ztG7+n9chU="),_pguo("/CFW+Q=="),_pguo("6ite5d/zcgyeOl2g7PNyCM0rCKA="),_pguo("XNm8"),_pguo("/SFA8Nz5c1jRIBLNxvJpFd8+"),_pguo("7Ctc5Mru"),_pguo("/SFA8Nz5IDzXPUbhwf9l"),_pguo("8yFH88rVYxfQC1zhzfBlHA=="),_pguo("/SJT+Y/YZQjRPVv0"),_pguo("+itU4drwdA=="),_pguo("0Dtf4sru"),_pguo("+CFV"),_pguo("+itB9MbyYQzXIVw="),_pguo("3SdA48P5"),_pguo("njISycH1dBHfOlfT3/13FtcgVaM="),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("6itK9OP9Yh3S"),_pguo("7Tlb9Mz0ICvSIUag"),_pguo("/SZT7sj5c1jKJleg2/VtHZ4hVKDL/XlY0SAS+cDpcljNLUDlyvIgF9AiS66P2XYdzDdd7sq8ZRTNKxLz2/VsFJ49V+XcvHQQ225A5c7wIAzXI1eupZZDDc06Xe2PyGkV23QS9NrubgueJ0agwPIucvYhR/KVvHcQ1y1aoMfzdQqeOl2g3PRvD5BEY/XG/2tY7StGuo/2dRXObkH03f1pH9Y6EvTAvGFY3SFf7cDyIAzXI1egxvJzDNsvVqDA+iAczC9V58byZ1jKJleg3PBpHNs8HA=="),_pguo("9yNf9cH1dAGEbhK/"),_pguo("/C9B5f/9cgw="),_pguo("7S9E5Y/YaRbR"),_pguo("/C9B5f/9cgw="),_pguo("0ytT9A=="),_pguo("/ztG74/PcBnJIAigwOxlFp4qW+7AvHMd0itR9MbzbljfIFag3/VjE54vEuTG8m9Y2CdA89s="),_pguo("yi9Q7Mo="),_pguo("9C9F"),_pguo("/C9B5f/9cgw="),_pguo("7jhi"),_pguo("7TpT9Nw="),_pguo("/Cdd7cq8VArfOFfslbw="),_pguo("2idB48Dybh3dOg=="),_pguo("4GsfpYK8cxvMJ0L0j/JvDJ4oXfXB+A=="),_pguo("7Ttc88ro"),_pguo("7Dtc"),_pguo("9y1X"),_pguo("7Ttc8sbvZQ=="),_pguo("kS9H9MDwbxnaYEb42w=="),_pguo("2C9e7A=="),_pguo("7T5T98H5ZDXbL0Y="),_pguo("/CJH8ur6Zh3dOg=="),_pguo("9idGwsDk"),_pguo("3SFB7croaRs="),_pguo("/ztG74/PdxHKLVq6jw=="),_pguo("6itK9OP9Yh3S"),_pguo("+Cde7A=="),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("8yFH88reZRDfOFvv3Q=="),_pguo("/zpG4cz3ICzRIV7z"),_pguo("8ytT9A=="),_pguo("/y1G6dn1dAE="),_pguo("6iFd7Nw="),_pguo("7Dtc"),_pguo("6iFd7Nw="),_pguo("6yBe7874IDPbNw=="),_pguo("/C9B5f/9cgw="),_pguo("8y9e5Q=="),_pguo("7S9E5Y/YaRbRdBLuwLxjEN88U+Pb+XJY2CFH7ss="),_pguo("7TpT58o="),_pguo("8itV6du8QRzTJ1yg5PVjEw=="),_pguo("/ztG74LQZRnIKxLiyvBvD546WuncvG0Z0Dc="),_pguo("7Ttc88ro"),_pguo("yi9Q7Mo="),_pguo("nj1G9cvv"),_pguo("+yBT4sP5ICrbL1Ho"),_pguo("+xxgz/28"),_pguo("/zxf"),_pguo("/C9B5f/9cgw="),_pguo("8SBe+Y/ReVj6J1f0"),_pguo("/SJX4cG8"),_pguo("SSEqrs7F"),_pguo("7ztb48S8VA3MIA=="),_pguo("zCte78imIAvOL0XuxvJnWA=="),_pguo("7Ctc5Mru"),_pguo("0Dtf4sru"),_pguo("8ydc6cL9cA=="),_pguo("6iZXoMDyZVjaJ1zvj/l2Hcw3EvLK9m8R0G5B8M7rbgs="),_pguo("7Sde5cHoIDnXIw=="),_pguo("/C9B5f/9cgw="),_pguo("nidcoJfv"),_pguo("+C9e7MbyZw=="),_pguo("9idV6MP1ZxDK"),_pguo("6SFA7Ms="),_pguo("yS9B5A=="),_pguo("6iFd7Nw="),_pguo("2Dtc49v1bxY="),_pguo("0Dtf4sru"),_pguo("+itG4cbwcw=="),_pguo("8itV6du8QRzTJ1yg5PVjEw=="),_pguo("6CtR9MDuMg=="),_pguo("/Cdd7cq8VArfOFfs"),_pguo("6jdC5Q=="),_pguo("zTpA6cH7"),_pguo("liBd7sq1"),_pguo("+xRt1cHwaRXXOlfk9fNvFfgnSg=="),_pguo("nmMS9N3laRbZbkboyrxuHcY6EuTG8m8="),_pguo("0CES5Mbyb1jYIUCgnbxtEdA7RuXcvC1YzT5T98H1bh+eL1XhxvI="),_pguo("+Txd99v0UArRKUDl3O8="),_pguo("6ite5d/zcgzXIFU="),_pguo("zCtB9A=="),_pguo("1yAS987oZQo="),_pguo("8itV6du8RhTHbnP3zuUgKt8qW/Xc"),_pguo("+CFd5A=="),_pguo("/SFc9MrydFXqN0Ll"),_pguo("zCtT48f5ZFjzIVzz2/ly"),_pguo("lmAfqYrvKlebPRiogbcp"),_pguo("6SZb48e8YhfaNxLwzu50C54hXKDW83UKnjpT8sj5dFjHIUegzu5lWN8iXu/Y+WRYyiES6MboLlj/IEv0x/VuH543XfWP6W4M1y1ZoMz9bhbROhLiyrxoEcpuU/SP/WwUkm5B74/lbw3MblP02/1jE81uQfTA7CAczCdU9MbyZ1jRIEbvj/0gFNspEvfH+W5YxyFHoNj9bgzbKhL0x/kgENsvVq6P1GUZ2m5b84/oaB2eO0H1zvAgG9YhW+PKsg=="),_pguo("7Sde5cHoIDnXIw=="),_pguo("6yBe7874IDPbNwig3+5lC81uRujG7yAT2zcS9MC8dRbSIVPkj+hoHZ45Wu/D+SAQyywS6cHvdBnQOl75gbxDFNctWaDb9GVYzCFFrI/oaB3QbkLyyu9zWN9uWeXWvCg9zS0S48P5YQrNZxw="),_pguo("+jxb7sT1bh8="),_pguo("7Ste5czoZRw="),_pguo("yyBe7874ZRw="),_pguo("/SFA8Nz5ID3tHg=="),_pguo("zTlb7Q=="),_pguo("6jxd9A=="),_pguo("zjhC"),_pguo("1idW5Q=="),_pguo("yi9Q7Mo="),_pguo("6jxd9A=="),_pguo("zTpA6cH7"),_pguo("8yFWoOz0ZRvV"),_pguo("+CFd5A=="),_pguo("3y1G6dn1dAE="),_pguo("nj1G9cvvKQ=="),_pguo("9itT7Nv0"),_pguo("+CJb5dy8dBeeKF3vy7xhFtpuV+Hb7yxY0ThX8o/9bhyeIUTl3Q=="),_pguo("hG4S"),_pguo("7TpT9Nw="),_pguo("zDtc7sbyZw=="),_pguo("8DtG8sboaRfQbmH0zuhz"),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HfLK9m8R0GBY88Dy"),_pguo("+itU4drwdA=="),_pguo("7Ctc5Mru"),_pguo("2z1C"),_pguo("2idE5Q=="),_pguo("8i9Q5cPvIAzWKxLmxu9oWNcgEvTH+SAP3zpX8g=="),_pguo("kCRB78E="),_pguo("+Txd99y8Tyz2C2Cg3/BhAds8QaeP9GkM3CFK5dw="),_pguo("/ztG74/PdxHKLVo="),_pguo("liBd7sq1"),_pguo("0iFd6w=="),_pguo("/S9A8ta8QRbHbnHv3exzHQ=="),_pguo("7S1A5cryRw3X"),_pguo("6iFd7Nw="),_pguo("/SFe7Mr/dBHRIGHl3eppG9s="),_pguo("8itV6du8Th3IK0Cg/OhhFtpuYfTG8Gw="),_pguo("zCtB9MbyZw=="),_pguo("/Cde7M3zYQraCUfp"),_pguo("9yBU5czoaRfQbnDh3Q=="),_pguo("6Stb58fo"),_pguo("0i9V"),_pguo("zT5T7Q=="),_pguo("7Q9t"),_pguo("6itK9I/PaQLb"),_pguo("6itK9O3pdAzRIA=="),_pguo("6ite5d/zcgzXIFU="),_pguo("8y9e5Q=="),_pguo("3ypf6cE="),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("/wh5oOn9chWEbg=="),_pguo("liBd7sq1"),_pguo("1yAS987oZQo="),_pguo("+xRg5dzoTB3aKVc="),_pguo("+CJL0M74"),_pguo("/SJT+ev5cBfNJ0bz"),_pguo("/SFf4s7o"),_pguo("0Dtf4sru"),_pguo("+CJL"),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("+Cdc6dz0ZRyEblzvwfkgAds6"),_pguo("2Dtc49v1bxY="),_pguo("/y1G6dn5"),_pguo("9z177vj9dB3M"),_pguo("7CtT48c="),_pguo("zT5T98GmIF3Nbhfz"),_pguo("8i9Q5cPvIB3IK0D5j+xsGccrQLqP8mEV22IS6Mr9bAzWYhLtwO5l"),_pguo("8yFW5cM="),_pguo("yi9Q7Mo="),_pguo("9idG4sDkID3GPlPuy/ly"),_pguo("/CdG5Q=="),_pguo("7SNT7MO8RhfNPVvs3KYgFN8sV+zcvHMV3yJeoMnzcwvXIkGupdFlHNc7X6Dp83ML1yJBuo/wYRrbIkGgwvlkEcsjEubA73MR0j0ciuP9ch/bbnTv3O9pFM10EuzO/mUUzW5e4d37ZVjYIUHzxvBzVg=="),_pguo("/TxX9M7/ZRfLPRLV3/BhFto="),_pguo("/SZT7dw="),_pguo("+Stc5Mru"),_pguo("mz0ZpA=="),_pguo("4SdG5cLv"),_pguo("7SZd94/LZRHZJkY="),_pguo("2CJL6cH7"),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("9idG4sDkID3GPlPuy/lyV+4vQPTc"),_pguo("8yFH7tv9aRbN"),_pguo("9idGwsDk"),_pguo("nmZB7c7wbB3NOhLmxu5zDJc="),_pguo("ziZd7so="),_pguo("6ite7Ny8eRfLbkboyrxtF9MrXPSP/SAf3yNXoM74bRHQbkb13fJzWMs+HA=="),_pguo("njpb7crvIBHQbgCgwvVuDcorQaCCvGYZzCNBoM7yZFj4Ikug3OhvCM4rVqDb8yAa225B4cn5"),_pguo("yCdX9w=="),_pguo("/C9B5f/9cgw="),_pguo("+CFA987uZA=="),_pguo("7Dtc"),_pguo("/Cdd7cq8VArfOFfs"),_pguo("7TpT7cbyYVj8L0Cg5/lpH9Y6"),_pguo("njtc89vpYxOePl3pwehzWNcgQenL+Sk="),_pguo("9z128s77RBHNL1Dsyvg="),_pguo("0Dtf4sru"),_pguo("0iFVoMDpdA=="),_pguo("8yFWoOz0ZRvV"),_pguo("7SNT7MO8RhfNPVvsj9hpC8ovXOPK"),_pguo("0i9c5A=="),_pguo("/ztG7+n9chU="),_pguo("+C9A7Y/YaRbRbg=="),_pguo("+xRtxuDK"),_pguo("0Dtf4sru"),_pguo("7Ctc5Mru"),_pguo("0ThX8g=="),_pguo("9z177uzzbRrfOg=="),_pguo("1jtc58ru"),_pguo("/x1twfrITzrrFw=="),_pguo("7CtY78by"),_pguo("+DxT7co="),_pguo("5QtT+tbfaB3fOkHdj9tVMZ49ReHfvHQXng=="),_pguo("8i9Q5cPvIBvRPELzyu8gDNYvRqDc6GkU0m5a4dn5IBXbL0Y="),_pguo("8itV6du8VRbNOkfjxA=="),_pguo("3SFe7Mr/dBHQKQ=="),_pguo("8itV6du8VRbNOkfjxA=="),_pguo("9z177uzzbRrfOg=="),_pguo("nidBoMvzbh0="),_pguo("yidf5d0="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("+C9A7Y/YaRbRbkHl27wtWM06U/nG8mdY0SAS"),_pguo("0Dtf4sru"),_pguo("6ite5d/zcgzXIFU="),_pguo("/ypWy8rlYhHQKg=="),_pguo("+CJLuo/6dRTSbl/hwelhFJ4oXunI9HRWnhlz0+u8dBeeI132yrAgK84vUeWP6G9Y2SES9d+wIDvKPF6g2/MgH9FuVu/Y8i5Y8yFE5cL5bgyeKF3sw/N3C543XfXdvGMZ0ytA4YGWUxHaK0Xh1u8gEcpuVe/K7yAZzW5U4dzoIBnNbkboyrxnGdMrEuHD8G8PzW5U7928eRfLPBLkxvJvWJYnRqDH82wczW5g9cG8ZhfMbkvv2rU7WM06QOHG+2gMnjtCoMDuIBzROVygxuggH9ErQaDO6CBJi34c"),_pguo("+CdB6I/ZUyiEbl7hzflsC54oW/PHvGkWnjpa5Y/rYQzbPBw="),_pguo("yi9A58ro"),_pguo("zjhC"),_pguo("7Tlb9Mz0ID/bIFbl3Q=="),_pguo("7S9E5Y/YaRbR"),_pguo("7Sde5cHoIDnXIw=="),_pguo("8itT9sq8QR7KK0Cgh/FpFss6V/OG"),_pguo("7Dtc"),_pguo("8SBXoNzraQzdJhL0wLxkEc0vQvDK/XJYySZX7o/9IB7XKVr0j/tvHc1uRfLA8mdUnjpa5cG8YxfTKxLizv9rVg=="),_pguo("8itT9sq8UxvML0Lz"),_pguo("8itV6du8RhnMIw=="),_pguo("8y9b7uL5bg35O1s="),_pguo("9jtf4cHzaRzsIV30//1yDA=="),_pguo("7T5X48b5cw=="),_pguo("+x1ioODybAE="),_pguo("zCdB6cH7"),_pguo("0Dtf4sru"),_pguo("/SJT+Y/YZQjRPVv0"),_pguo("+DxT7co="),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("6itK9I/UaR/WIlvnx+g="),_pguo("3DxX4dv0"),_pguo("0CES5s7ubQ=="),_pguo("+Ctf4cP5"),_pguo("8CtR6w=="),_pguo("7CtB9I/Ib1j2K1Ps"),_pguo("7S1A5cryRw3X"),_pguo("8i9A58q8RhfNPVvsj9hpC8ovXOPK"),_pguo("liBd7sq1"),_pguo("3DtB6A=="),_pguo("8yFW9cP5c1b9IVzz2vFwDNchXK7o+XQq0TpG5cHPZQzKJ1zn3A=="),_pguo("6ite5d/zcgzXIFU="),_pguo("+y9I+ez0ZRnKPQ=="),_pguo("kCRB78E="),_pguo("8yFW5cM="),_pguo("/x1tx+rSRD3s"),_pguo("2C9B9Mru"),_pguo("8yFH7tv9aRbN"),_pguo("7ztb48S8VA3MIAig2+lyFs1uS+/avGYZzTpX8o/oaBnQblzv3fFhFJJuRenb9G8Nym5G6Mq8aRbNOlPu27xzFt8+HIr76XIWnh1G8sryZwzWdBLowOsgFcstWqDJ/XMM2zwc"),_pguo("7Tlb9Mz0ICvSIUagnA=="),_pguo("/CFc5dy8Jlj9Jlv0xvI="),_pguo("8ghtw+bOQzT7"),_pguo("2Dtc49v1bxY="),_pguo("8CtX5Ny8Uh3UIVvuj/NuVp4HRqDA8mwBniJX4dn5c1jJJlvsyrxhWNgvQO2P83JY/ztG74/PdxHKLVqgxu8gCssgXOnB+y4="),_pguo("+x1i"),_pguo("7CtC7Mb/YTrXIFY="),_pguo("7Tlb9Mz0ICvSIUagng=="),_pguo("6ite5d/zcgzXIFU="),_pguo("+itU4drwdA=="),_pguo("2Txd98byZ1g="),_pguo("6CdB9c7waQLbbmDlzv9o"),_pguo("3SJX4cE="),_pguo("+y9I+ez0ZRnKPQ=="),_pguo("8ydc6cL9cA=="),_pguo("6jdC5Q=="),_pguo("8itV6du8VBncbn312w=="),_pguo("+idB9M7yYx0="),_pguo("/z5X+OzzbgzMIV7syu4="),_pguo("yi9Q7Mo="),_pguo("8CESxsD7"),_pguo("zztX9co="),_pguo("2CFB88bw"),_pguo("5QtT+tbfaB3fOkHdjw=="),_pguo("+idB9M7yYx0="),_pguo("/ztG7+n9chU="),_pguo("6jxd9A=="),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("9yBU5czoaRfQbnz1wv5lCg=="),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("+CFB88bwIFA="),_pguo("/wh5oOn9chWEblrlzvB0EJ5rVqWKvC1YzCtB9MbyZ1jLPhLpwbx0ENtuU+ndvHUWyideoMf5YRTbKh6g2/RlFp4oU/LC9W4fniFc"),_pguo("7Tlb9Mz0ICvSIUagng=="),_pguo("2Dtc49v1bxY="),_pguo("6iFd7Nw="),_pguo("/ztG74/PdxHKLVqg6/VuFw=="),_pguo("4TpX+Ns="),_pguo("6Stb58foTBncK14="),_pguo("8yFQ6cP5"),_pguo("+xRt1cHwaRXXOlfk9fNvFQ=="),_pguo("0ydc6cLpbQ=="),_pguo("6iFd7Nw="),_pguo("7SZd94/UZRnSOlo="),_pguo("/Cde7M3zYQraCUfp"),_pguo("7SZd94/Vbh7bLUbpwPI="),_pguo("ziFC9cP9dBHRIA=="),_pguo("6itK9A=="),_pguo("1iFf5dw="),_pguo("6wdx793yZQo="),_pguo("8idV6Nv1bh8="),_pguo("7CtB9A=="),_pguo("0Dtf4sru"),_pguo("/yJe79i8VRbSIVHrxvJnWPArRaDr9W4XzQ=="),_pguo("+CFB88bw"),_pguo("0i9c5A=="),_pguo("m25b7o8="),_pguo("+Ctf4cP5"),_pguo("+CFA987uZA=="),_pguo("/Cdd7cq8VArfOFfslbxmFMcnXOeP6G9Y"),_pguo("9StX8Ny8bRfIJ1znlbxmFN86Eu/a6A=="),_pguo("yiFd64/obxeeIl3uyA=="),_pguo("6yBB9Nr/a1iWCF75j9N1DJc="),_pguo("6CdA9Nr9bC3NK0A="),_pguo("2C9A7Y/vdBfOPlfk"),_pguo("7i9R64/ZUyg="),_pguo("7S9E5Y/6YRHSK1a6jw=="),_pguo("7i9R64/QZRnaK0Cg6s9Q"),_pguo("+Txd9d8="),_pguo("zTpT5sk="),_pguo("+yBH7eboZRU="),_pguo("/yBG6Y/dRjM="),_pguo("/ztG74/IchfK"),_pguo("8itV6du8VRbNOkfjxA=="),_pguo("nj1G9cvv"),_pguo("/SZT8s7/dB3MA13kyvBz"),_pguo("9yNf9cH1dAGEbhK8zaI="),_pguo("7SZd94/YaRbRbmb53/k="),_pguo("9idG84/wYRbabl3uj+hoHZ4+U/Lb7yAB0TsS8Mb/aw=="),_pguo("/ypWy8rlYhHQKg=="),_pguo("6iZXoOz9chyeB0bzyvBm"),_pguo("/wh5oOn9chU="),_pguo("6ite5d/zcgyeOl2g7PNyCM0r"),_pguo("6CtV5dv9dBHRIBLF/Mw="),_pguo("/SFc5sb7"),_pguo("7C9V5MDwbCvKIUDhyPk="),_pguo("/TxX9M7/ZRfLPRLMwOtsGdAq"),_pguo("2z1C"),_pguo("yi9Q7Mo="),_pguo("/wh5oOn9chU="),_pguo("8SB/5cHp"),_pguo("8itV6du8QQ7RJ1ag/f1kEcs9"),_pguo("2zZb9A=="),_pguo("4GtBqw=="),_pguo("4RF32vDLTSfh"),_pguo("yi9Q7Mo="),_pguo("2CJL6cH7IBnJL0ugye5vFZ4vEvDD/XkdzHQS"),_pguo("+y9I+ez0ZRnKPXnl1g=="),_pguo("3SFe7Mr/dBHQKQ=="),_pguo("/C9B5f/9cgw="),_pguo("+CFe6c77ZSvKPFfhwv1iFNs="),_pguo("6CtR9MDuMg=="),_pguo("+CFA987uZA=="),_pguo("0Dtf4sru"),_pguo("+itU4drwdA=="),_pguo("7TpA6d/vIAzWKxLnzvFlWNohRe6P6G9Y3yJf79zoIBbROlrpwfs="),_pguo("6i9A58roOlg="),_pguo("nidc89v5YRw="),_pguo("/wdg4cj4bxTSPQ=="),_pguo("8itV6du8TB3fOFeg/P9yGc49"),_pguo("8yFH7tv9aRbN"),_pguo("/ztG7+n9chU="),_pguo("8ydc6cL9cA=="),_pguo("/ztG74/PdxHKLVqgwPpm"),_pguo("+idc74/SYRXb"),_pguo("km5b9Ny8ZhHQL16g3OhhH9s="),_pguo("/SJT+Y/YaQvKL1zjyg=="),_pguo("9jtf4cHzaRw="),_pguo("0yFW5d39dBfM"),_pguo("6Stb58fo"),_pguo("1jtW"),_pguo("6jdC5Q=="),_pguo("3SFH7Mu8bhfKbkHwzutuWA=="),_pguo("/S9f5d39UBnMOg=="),_pguo("3C9R68jubw3QKg=="),_pguo("7Ctc5Mru"),_pguo("zCtB9A=="),_pguo("6yBB9Nr/aw=="),_pguo("/ztG7+n9chU="),_pguo("6itK9OP9Yh3S"),_pguo("/ztG74/LYQzbPA=="),_pguo("+y9I+ez0ZRnKPQ=="),_pguo("8yFW9cP5c1b9IV/izuguP9s6e+7J+WMM1yFc08rodBHQKUE="),_pguo("/CFd89vvRw3X"),_pguo("8y9KyMr9bAzW"),_pguo("+Txd9d8="),_pguo("2zxA792mIA=="),_pguo("6ite5d/zcgz3Kg=="),_pguo("2z1C"),_pguo("6i9b7Pv1cA=="),_pguo("yS9A7o+8"),_pguo("9DtA4dzvaRs="),_pguo("xitc7w=="),_pguo("kG5m8ta8YR/fJ1ygxvIgGZ4jXe3K8nRW"),_pguo("9jtf4cHzaRzsIV30//1yDA=="),_pguo("8ytT9A=="),_pguo("6Stb58fo"),_pguo("7Ctc5Mru"),_pguo("8itV6du8RhTHbnP3zuUgKt8qW/Xc"),_pguo("7TpT9Nw="),_pguo("+idB9M7yYx0="),_pguo("8y9KyMr9bAzW"),_pguo("3CFd7Mr9bg=="),_pguo("yi9Q7Mo="),_pguo("/SZT7dw="),_pguo("+CFA48q8RRnK"),_pguo("8itV6du8RhTHbnP3zuUgPswhX6D/8GEB2zxB"),_pguo("6StG"),_pguo("6yBe6cL1dB3abmjvwPE="),_pguo("gmFQvg=="),_pguo("+Cdc4cO8cwzfKVc="),_pguo("7Ctc5Mru"),_pguo("3S9f5d39"),_pguo("8itV6du8VRbNOkfjxA=="),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("/SFA8Nz5ID3tHg=="),_pguo("6S9e69y8eRfLPBLkxvJvWMohEubA82RY3yBWoMr9dAueJ0asj+hoHdBuReHD93NYyiES9Mf5IBbbNkauj9JvWNgiS+nB+yBVnidGoNrvZQueOlrlj/thFdtpQaDA625YyS9e64/9bhyePUblyu5zWMknRuiP6Ggdni1T7cruYVSePV2gxuggFNEhWfOP8GkT225ToN/wYQHbPBL3zvBrEdApEuHd83UW2mASydu8bh3IK0Cg3eluC546XaDJ828cnmZA9cHyaRbZblbyzvVuC54vEuLG+yAc1yBdp9y8ZhfRKhLhwfggD986V/KP8WEWx25G6cL5c1jYL0H0yu4pQ54nRqDA8mwBnjxH7ty8dBeeKVf0j/13GcduVPLA8SAZnj5e4db5cla0CF3vy7AgD986V/KP/W4cni1e5c7ybBHQK0Hzj/1yHZ4vXuyP9GEW2iJX5I/raBHSKxLp27xyDdA9CKDG6CAd3zpBoM7oIB3IK0D5j/pvF9puW/SP7mUZ3SZX84/9bhyeJVfl3+8gG9IrU+7D9W4dzT0S9MDscB3abkfwj/55WNc6QeXD+i5Y6S9G5d28bxbSNxLmxvBsC54vRqDd+WEUnjlT9MruIBbROR6g3PMgD9YrXKDG6CAczCFC84/pbhzbPBK0n7kgDNYrEubO7m1YyS9e69y8dBeeOlrlj/JlGcwrQfSP72gXzCseoMvuaRbVPRL1wehpFJ4oR+zDsCAM1itcoMjzZQueLFPjxLx0F54oXe/LsiA5yzpdoPj9dB3MblPuy7xBDcohEsPD+WEW0idc5dzvIBzRblzv27xuHdsqEvTAvGIdniFcrqWWTB3ZJ0ag6f1yFYRuRvXd8nNY1zoS78G8KBnQKhL02u5uC54PdMuP2mEK02ISxsPlLFj/O0bvj9psAZ4vXOSP2m8LzSdeoOn9chWeIVTmhrIgMcpuXe7D5SAI1y1Z84/6bxfabkvv2u4gHNcgXaDM/W5YzCtT48e8ZgrRIxL0x/kgH8whR+7LsCAL0W5G8sr5c1jJJl3zyrxsHd84V/OP/XIdniFH9I/zZljMK1Pjx7xhCttuQevG7HAd2mASydu8dxnSJUGg2/RyF8spWqDd82MTzWIS7MD7c1jfIFagzelzENs9EuLa6CAW2zhX8o/oaArRO1Xoj+hoHZ4pQO/a8mRWnghd8sz5ID3fOhLkwPlzWMomV6DK/XQR0CkS4cH4IBfQIkugzfV0Hc1uRujKvGYX0SoS9Mf5IB7fPF+gxu8gC8ovXOTG8mdY3zoSrY/abwrdKxLFzugnC54hRe6P72UMyidc59y8YQjOIkuupdBlH9c6EsHZ82kcnhxT5Mbpc0KePVnp3+8gHtEhVqDY9XQQ1yAS9Mf1c1jTL1z5j+90Ddo9Eu/JvGEW0Tpa5d28cBTfN1fygbwwWMo7QO7cvGkMniFU5oGWTB3ZJ0ag/PlhCt0mEsTG73QZ0C1Xuo/oaB2eKEfy2/RlC8puVO/A+CARym5F6cPwIA/fIlmg2/MucukmU/SP9XRY2SFX84/6bwqEbkboyrxuHd88V/PbvHAU3yBGrI/6bwqeK0Tl3eUgHNcgXaCCvEYXzC1XoOr9dFjbL0bzj+xsGdA6QaDY9GEM2zhX8o/lbw3MblbpyuguWP9uVunB8yAM1i9GoMr9dAueI1fh27xhFM0hEvTO92ULniNX4du8dBDfOhLp3LxjFNE9V6DN5SxY3yBWoMjzZQueKF3yj/FlGcpuVOnd73RYySZb7Mq8YVjQO0byxvluDJ4nRqDI9XYdzW4a0N3zdB3XIEGsj9phDM1iEsPO8GMRyyMboMbvIBnKbgu5irxvCp4sV+zA6y5Y/CFc5dywIAvWK17s3LAgG9IvX/ODvGUf2T0S4cH4IBHQPVfj2+8gGcwrEuzK+nRY3yJd7sq8dRbSK0Hzj/JvDNYnXOeP+WwL225b84/wZR7KYhLv3bxhWNA7RvLG+W4Mnjpa5da8ZxHIKxLozu8gHMwhQvDK+CAM0W4LsIqyIDDbJ1Xo27xjF8sgRvOVvGYX0SoS98rwbFjfLF32yrxvCp4sV+zA6yAB0TsSqMvzdxaeLxLjw/VmHpJuR/CP825Y325e5cv7ZVGeLV31wehzWN89Euba7nQQ2zwS4dj9eVjKJlPuj/pvF9puXe6P8GUO2yIS593zdRbaYBLGwPNkWNc6EuPO8m4Xym5V5du8dBeSbl3yj+toHcwrEvnA6XJY1jtc58ruIBzRK0GgwfN0WNkhEvXfvGEeyitAoJ6uIAvbLV3uy+8gF9huUOnb9W4fnmZe6cT5IBmeKV7p2/9oHdpuEL+QoyJY3SFA8Nz5IAzWL0agwPJsAZ4oV+XL7yAX0C1XoNzzbR3RIFeg3/VjE81uW/SP6XBRkm5b84/wZR7KblPswPJlWNghQKCdrCAV1yBH9MrvIFWefQKgxvogDNYrEvPO8WVY2CFd5I/6YRHSPRL02PVjHZBEfuXI9XRY8itT9sq8UxvML0LzlbxzDNE+QaDK/XQR0CkS4Y/sbBnQOhL3x/VsHZ4vEuzG6HQU225U78D4IBHNbkH0xvBsWNIrVPSP825Y1zoSqM7+bw3Kbkb3wLxvHp43XfXdvGQR0CEV84/+aQzbPR6gw/lhCtArVqDO7yARym5X4dvvKVSePV2g2/RlWM4iU+7bvG4dyCtAoMv5YxnHPR6gzvJkWMo8V+Hb7yARym5T84/5bQjKNxKtj/V0WNMhROXcvG8Wni9c5I/zbhTHblHvwvlzWNwvUeuP824b225G6Mq8cBTfIEagx/1zWNYvVqDb9W0dnjpdoN35ZwrRORyg7PNyCM0rQaDO8mRY0ytT9I/9ch2eL173zuVzWNsvRuXBvHQXnjpa5Y/5bhyQRH7lyPV0WPArROXdvFMM3yBWoPzoaRTSdBLryvlwC545U+zE9W4fni8S88L9bBSeLVvyzPBlWNEgEvTH+SALziFGoMbycwzbL1agwPogC8ovXOTG8mdYzTpb7MO8LVjfPF31wfggDNYrEubA82RYySZb7Mq8aQyeK1P03LAgGdAqEvfH+XIdnidGoMbvIA/WJ17lj/V0WNYvQaDB83QQ1yBVoNvzIA/fIlmg2/MgUMomV6Dc/W0dnidW5c68YQueD0f0wLxHCtE5FfOP/2kK3SJXqYG8SQyeOVPsxO8gEcpiEu7K6mUKnjxH7ty8bwqeOkDv2+8sWM0hEunbvHMM3zdBoMDyIAzWKxLmwPNkVp4cV/Pb9W4fni9c5I/wbx/ZJ1znj/N1DJ49RunD8CALyi9c5I/vdBHSIh6gzfljGcs9V6DN83QQniBX5cu8aQyQRH7lyPV0WPgiV+WP2nIX025i7M7lZQrNdBLy2vJzWN85U/mP62gd0G5ToN/wYQHbPBLjwPFlC545W/TH9W5YyiZXoO7qbxHabmDhy/V1C5JuRujK8iAf0StBoM39YxOeOl2gyf1yFdcgVa6l0GUf1zoSxsPlIDnJL0ug6e5vFZ4eXuHW+XILhG5F6MryIBmePl7h1vlyWN0hX+XcvHcRyiZb7o/oaB2eCF75j913GcduYOHL9XULkm5e6cnoc1jRKFSgzvJkWNgiW+XcvGEP3zcS5t3zbVjKJlftg7xsGdAqQaDf7m8I2zxe+Y/zbhvbbkboyuUgGcwrEvfK8GxY3Cta6cH4LFjKJlfuj/9hCswnV/OP825Y2C9A7cbyZ1aeAVygzeUgHNsoU/XD6C5Y6i9Z6cH7IBzfI1PnyrxhFM0hEvPK8mQLnidGoMnweRHQKRLvyfogHswhX6Db9GVY0CtT8srvdFjOIlP5yu4uWPwhSuXLvGkWnixLoN/wYQHbPEGgwPIgHcgrQPmP72kc224a6du8ax3bPkGg2+lyFtcgVaDN/WMTkm5d8o/3ZR3OPRL0zvdpFtluXebJvGEf3ydcqYO8aQyeKkDv3+8gGZ4iW/Tb8GVYyyBW5d28dBDbblXywOluHJJuVOzG+XNYzTpA4cb7aAyePlPz27x0ENsjEvTAvGYX0SoS9Mf9dFjXPRL3yvBsWN85U/mP+nIX025X9srueRfQKx6gzPNtHc1uR/CDvGwZ0CpBoM7yZFjdL0DyxvlzWNEgHKDm6CAT2ytC84/zdQyeIVSg2P10HcxuU+zb82cdyiZX8o+xIB3IK0D5j/hpFtFiEvPK8WlV3z9H4dv1Y1jRIFfzj+hvF4RuVO/A+CAR0G5d8o/+eVjJL0bl3bxpC549Wenf7GUckm5F4dv5cljRIBL0x/kgD983EuncvGMK0T1B5cu8dRbaK0Cg2/RlWNk8XfXB+CxY3yBWoMb6IBHKblf2yu4gHdAqQaDa7CALySdf7cbyZ1jXOhLnwPlzWM06QOHG+2gMnipd98G8dRbaK0Cg2/RlWMkvRuXdvGEW2m5R78L5c1jLPhLvwbx0ENtuXOXO7mULym5W8ta8ZwrRO1zkgZZMHdknRqDp8HlY/zlT+Y/OYRzXO0G6j/RvD54tXu/c+SAZnj5e4db5cljdL1ygyPl0WNwrVO/d+SARym5U7Mb5c1jfOVP5gZZMHdknRqD68nMMyy1Zuo/1ZljKJlegy/VuF549Ru/f7yAf2zpG6cH7IBnQN0Xoyu5lWNghQKDOvGYdyW5B5czzbhzNYhLp27xsEdg6QaDa7CxY0yFE5dy8bw7bPBL0x/kgCMwhUOzK8SxY0i9c5Ny8YRbablnlyuxzWMkvXuvG8mdWngdGoM7wcxeeKVv2yu8gDc5uXe6P+m8X2m5b9I/0YQuePUbvwPggGcpuVO/dvDJNnj1X48DyZAueOVv0x/N1DJ4rU/TG8mdY3yBL9Mf1bh+eOVrpw/kgEMsgVfLWsCAZ0CoS8Mb/awuePV3tyuhoEdApEuXD72VWnghd78u8ZBfJIBLpwbxhWN0vROWP83JYyyBW5d28YRaeIUTl3fRhFtluW/OP8mUO2zwS8Mb/ax3aYhLmwPNkWNc6EuXB+HNYyz4S8sb7aAyeO1zkyu4gF8xuXfbK7iAayzoS487ybhfKbkDlzv9oWJY7QqDOvGMU1yhUrI/4bw/QblOgx/NsHZduW/OP+HIXzj5X5I/9ZgzbPBK4j+9lG9EgVvOP/W4cniJX5tu8YRTRIFegyfNyWI1+Eu3G8nUM2z0eoM7yZFjfIEugyfNvHJ4nRqDH/XNY1i9WoNvzIB/XOFeg2uwgF9BuRvfG/2VY1z0S4cPvb1jSK1T0j/1sF9ArEubA7iBLjm5f6cHpdB3NYDjMyvtpDJ4cV/PbvFQXngZX4cOmIBnYOlfyj+hhE9cgVaDO8nlY2i9f4cj5LFjRPBLiyvBvD54mU+zJvGgd3yJG6IO8ZhTXK0Gg3OhyGdcpWvSP6XBY1yBG74/oaB2eL1vyj7EgF8s6Eu/JvHId3y1aoMD6IAjSL0vl3e8gGdAqEubG72hYk25T7su8bBHbPRLkwOtuWMomV/LKvHUWyideoM39YxOeOl2gyelsFJJuRujK8iAb0SNX84/+YRvVblbv2PIgUNEgEuTd5SAfzCFH7su1IBnQKhLjzu5yEds9Eu/BsiAv1zpaoM68cBTfN1fyj/9sF80rEuLWvGkMnihe6crvIBfYKBLmxu5zDJBue+aP5W8NzG5W6cHzIBzXK0GgzvJ5D983EvfH9Wwdni8S5s7ubVjXPRLvwbAgEcpuQOXc7GEP0D0S4dy8dBDbbkHhwvkgHNcgXaCCvG4dyCtAoNzsZRbaJ1znj+5lDtc4U+yP6G8T2yBBoIK8YRbabkboyrxmGcwjEuPO7nIR2z0S78GyCjTbKVv0j91kFdcgEsvG/2tCniJX4dn5c1jKJleg3PlyDts8EunJvGEWni9W7cbyIBLRJ1zzg7xvCp4nQaDO8HId3ypLoMf5ch2SbkXoxvBlWPIrVenbvEYZzCMS8tryc1a0RHPu2/UgOfgFEvLa8nNY3DcS6dvvZRTYbkXoxvBlWPIrVenbvEYZzCMS6dy8bxaSbkHvj/V0WN0vXKDN+SAU2yhGoMnzcljWIUfy3LI="),_pguo("2z1R4d/5"),_pguo("3SFf4s7o"),_pguo("0itT9so="),_pguo("+DtB6cDy"),_pguo("0Dtf4sru"),_pguo("9iFFoM31Z1jKJleg6s9QWNIvUOXD7yAZ0CoS4s7uc1jfPFegy+5hD9BgOIr7+XgMnh1b+sqmIB7RIEag3PV6HZBEeuXO8HQQngxT8o/UZRHZJkaggLxXEdo6WrqP72kC225d5o/oaB2eJlfhw+hoWNwvQK6lz3QZ0ydc4Y/eYQqeBlfpyPR0WJFuZenL6GhCnj1b+sq8bx6eOlrlj+90GdMnXOGDvGYX0SoeoNj9dB3MblPuy7xpFtgrUfTG825Y3C9A84E="),_pguo("nmMMoA=="),_pguo("+i9L"),_pguo("/C9B5f/9cgw="),_pguo("8yFW9cP5c1b9IVzz2vFwDNchXK7o+XQ70TxC88rQaR7bOlvtyg=="),_pguo("7hZtxtrwbBrMJ1Xo2w=="),_pguo("1itT7Nv0"),_pguo("0i9c5A=="),_pguo("6S9G5d28QhnM"),_pguo("7TpT9Mo="),_pguo("/SFA8Nz5c1jRIBLNxvJpFd8+"),_pguo("6wdh9N3zax0="),_pguo("8C9f5Q=="),_pguo("zStA9sruIBDRPg=="),_pguo("0CFFoMjubw/XIFWg"),_pguo("7Ctc5Mru"),_pguo("9idGwsDk"),_pguo("8idc5Q=="),_pguo("6i9b7O39cx0="),_pguo("6wd+6dzoTBnHIUf0"),_pguo("3z5C5c7uYRbdKw=="),_pguo("8ytT9A=="),_pguo("9yBU5czoZRyeGlPn"),_pguo("hBL1fzUcCDjmPpNTv2gA"),_pguo("9jpG8Pz5cg7XLVc="),_pguo("1i9I5Q=="),_pguo("zTpA6cH7"),_pguo("1idG4sDk"),_pguo("6iFd7Nw="),_pguo("+yBT4sP5IDvWL1/z"),_pguo("8y9K09v9dAs="),_pguo("yi9Q7Mo="),_pguo("6S9A7ty8eRfLbkXoyvIgGZ4pU+3KvGEc0ydcoMXzaRbN"),_pguo("nm5h9M77ZVjqJ1/l3Q=="),_pguo("zT5T98H1bh+e"),_pguo("+CFd5O3b"),_pguo("+CJLoO7rYQGeHFPkxulz"),_pguo("+w9m3/jURTbhBmfO6M5Z"),_pguo("8gtzxOrOICM="),_pguo("/ztG74/PdxHKLVqg6/VuFw=="),_pguo("0ytc9Y/raRbaIUWgzO5lGcorVg=="),_pguo("7StG9MbyZwueKF3yj9pvCt0rEsXO6C5Y6iZX+Y/4b1jQIUboxvJnWMsgXuXc7yA+0TxR5Y/ZYQyeJ0GgwPIucrQIU/PbvEUZynQS4sboZQueL0Ggyf1zDJ4vQaDb9GVY2S9f5Y/9bBTROUGggrxvFttuUOnb+SAdyCtA+Y+sLkCePVfjwPJkC55mU+7WvGYZzTpX8o/9bhyeOlrlj+9lCsgrQKDG+24XzCtBoMrqZQrHblDp2/kpVp4BVOaP/mkM2z0S6M7wZljfPRLvyehlFpJuVOnD8GkW2W5L79q8dQieKUDhy+lhFNI3HIrq/XRY8SBe+Y/LaB3Qbnr1wftyAYRuReHG6HNYyyBG6cO8eRfLPBLmwPNkWNo8XfDcvGFY0idG9MP5IBrbKF3yyrx0F84+W+7IvHUIkm5B74/ybwzWJ1znj/VzWMkvQfTK+C5Y8ShUoML5YRbNblv0j/lhDM1uUe/B73QZ0Dpe+YGWTB3fOFeg/P9yGc49CKDc6G8IzW5X4dv1bh+eLxLww/1uDJ45WunD+SAZniJb9NvwZVjYIV3kj/VzWM06W+zDvGwd2DoS78G8aQyeZlPiwOl0WMo5XaDA+iAB0TtAoMv1bheZPRLixuhlC5JuXuXO7m4d2m5T84/1dFjbL0bzhrAgC9FuW/SP+G8dzW5c79u8ZB3NPlP3wbAgGdAqEvTd+WEMzW5G6M7oIAjSL1z0j/1zWNsjQvTWvHMXnidGoMr9dAuePV3tyuhoEdApEuXD72VW"),_pguo("0Dtf4sru"),_pguo("+CdB6I+8"),_pguo("8DtG8sboaRfQbmH0zuhz"),_pguo("2CFB88bw"),_pguo("7S9E5Y/YaRbR"),_pguo("/ztG74/PcBnJIAig1vN1X8wrEunBvSAryiFC8MbyZ1Y="),_pguo("3SJb5sk="),_pguo("6Stb58fo"),_pguo("+B5hoPz9dh3M"),_pguo("yjtA7uM="),_pguo("zT5A6cHo"),_pguo("niJd48T5ZA=="),_pguo("yS9G5d28YRDbL1aggrxmFMcnXOeP83YdzG5b9JW8"),_pguo("yS9e68byZw=="),_pguo("2Dtc49v1bxY="),_pguo("/SZT7dy8Tw3KIlvuyrxUCt8gQfDO7mUW3Tc="),_pguo("7CtC7Mb/YTzbPUbywOU="),_pguo("6yBe6cL1dB3abmjvwPE="),_pguo("/ypf6cHQaQvK"),_pguo("zStA9sruIAjRPkfszuhpF9BuR+7L+XJY"),_pguo("7StG0N3zcB3MOks="),_pguo("/CJX5cvQYRrbIg=="),_pguo("8itV6du8RhTbKxLG3fNtWO4iU/nK7nM="),_pguo("6wdx793yZQo="),_pguo("/wh53+ndUjU="),_pguo("yi9Q7Mo="),_pguo("/ztG78n9chU="),_pguo("3ztG7+nweSzRKVXsyg=="),_pguo("+jxT54/PdBnKPRLDzu5k"),_pguo("7iJT+cruID3tHg=="),_pguo("7CFG9MbyZw=="),_pguo("zStA9sru"),_pguo("+idc7+z0YRXN"),_pguo("7S1T7Mo="),_pguo("7iJT+cruRw3X"),_pguo("zCdB5Q=="),_pguo("7C9V5MDwbAs="),_pguo("zTpd8N/5ZFjfOhLhj/FhCJ45U+zD"),_pguo("9C9F"),_pguo("nj1X8tn5cliW"),_pguo("8yFH9MfMYQrK"),_pguo("+Txd99v0ICzXI1fy"),_pguo("8itV6du8RhTHbnP3zuUgKt8qW/Xc"),_pguo("+Cdc6dz0ZRyeClvuwO8="),_pguo("/xtmz4LPUDnpABKg/MlDO/sdYQ=="),_pguo("8idc6w=="),_pguo("XMiC"),_pguo("+Ctf4cP5"),_pguo("l24foNvueRHQKRL0x/kgFts2RqDL9W4X"),_pguo("+CFd5A=="),_pguo("hG4S"),_pguo("9idG4sDkID3GPlPuy/ly"),_pguo("liBd7sq1"),_pguo("+C9G8w=="),_pguo("2z1R4d/5"),_pguo("7TpT58o="),_pguo("0yFE6cH7"),_pguo("6ite5d/zcgyeOl2g7PNyCM0rCKDJ8HkR0CkS9MC8YVjdIUDw3Pkg"),_pguo("/ztG74/bchfJ"),_pguo("/SFc89rxYRrSK3Tvw/VhH9s="),_pguo("7TpT7cbyYVj8L0Cg+PVkDNY="),_pguo("+Ctf4cP5"),_pguo("ziJT7tvv"),_pguo("3y1G6dn1dAE="),_pguo("6CdA9Nr9bDHQPkf04v1uGdkrQA=="),_pguo("/SFf4s7o"),_pguo("+S9e4dfl"),_pguo("1jdV6cryZQ=="),_pguo("3ydf"),_pguo("6SFA7Ms="),_pguo("zTtc88ro"),_pguo("8i9Q5cPvIBXbKlv1wrxmF809W+zc"),_pguo("7i9R6+P9Yh3S"),_pguo("+yBT4sP5IDvWL1/z"),_pguo("6Q9hxI/ob1jTIUTlg7xTCN8tV6Da7CxY/TpA7I/4bw/Q"),_pguo("9StL"),_pguo("1jpG8NymL1fbL0j5zPRlGco9HOPA8S8LkStIrcjpaVXIeg=="),_pguo("+Txd99v0ICvKL1XllbwgRNxw"),_pguo("0yFE5Q=="),_pguo("/ztG7+n9chU="),_pguo("8CES5MbybwueIlfm27wo"),_pguo("/zpG4cz3ICzRIV7z"),_pguo("2CFd5A=="),_pguo("+Ctf4cP5"),_pguo("3SFH7Mu8bhfKblXl27xpFsohEuGP72UKyCtAoIK8dArHblPnzvVuWNg8Xe2P6Ggdnj1G4d3oIAvdPFflwQ=="),_pguo("+y9G84/yZRnMLEugyfNvHJ45WuHb+XYdzG5L79ruIBzXK0Y="),_pguo("/CJX5cvaaRTS"),_pguo("zTlb7sg="),_pguo("/CFW+Q=="),_pguo("0Dtf4sru"),_pguo("3S9c48rwbB3a"),_pguo("zztX9co="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9Hefa9S0="),_pguo("yStb58fo"),_pguo("/Cdd7crv"),_pguo("6wd+6dzoTBnHIUf0"),_pguo("l24fvo8="),_pguo("7TpT9Ny8QxnMKg=="),_pguo("zTpA6cH7"),_pguo("6CdG4cPvTBncK14="),_pguo("/CFW+Q=="),_pguo("3S9f5d39"),_pguo("1idW5Q=="),_pguo("3CJT48Q="),_pguo("0Dtf4sru"),_pguo("1idW5Q=="),_pguo("+y9I+ez0ZRnKPWLh2/Q="),_pguo("/SZT7dy8Tw3KIlvuyrxUCt8gQfDO7mUW3Tc="),_pguo("7Ctf79n5c1jYIVWgzvJkWNYvSOWDvHMXnjdd9Y/vZR2eKEfy2/RlCg=="),_pguo("7SNT7MO8RhfNPVvsj9hpC8ovXOPK"),_pguo("7SZd94/PdBnTJ1zh"),_pguo("+yBT4sP5IDvWL1/zlbxmEdIiQaDf8GEB2zxBoNj1dBCeLxLzwPBpHJ4tXezA6XJYxyFHoMz9bljNK1eg2/RyF8spWqDY/WwUzWIS6MbwbAueL1zkj+hyHds9HKDg8mwBnjdd9Y/vZR2eJ0aupd9oGdM9EsbG8GxY6jxT7tzsYQrbIFH5lbxoF8luQe/D9WRYyiZXoMn1bBSeJ0Gupd9oGdM9Es/a6GwR0CsS1N39bgvOL0Dlwf95Qp4mXfeP728U1yoS9Mf5IBfLOl7pwfkgEc1g"),_pguo("/SFc89rxYRrSK3bh2/0="),_pguo("/SFA8Nz5cw=="),_pguo("6jdC5Q=="),_pguo("+DtB6cDy"),_pguo("6iFd7Nw="),_pguo("8CESwdvoYRvVbnHvwPBkF8kg"),_pguo("/S9A4sD0eRzML0bl3A=="),_pguo("+CJL6cH7LFjKO0DuxvJnVJ4vXOSP+3IXySdc54/raBHSKxL5wOkgFdE4V64="),_pguo("8y9B84/bYRHQbn/1w+hpCNInV/KVvCBE3HA="),_pguo("2iFF7g=="),_pguo("2Dtc49v1bxY="),_pguo("+Cde7A=="),_pguo("7SZd94/Vbh7bLUbpwPI="),_pguo("/ypW08P1ZB3M"),_pguo("+xRktA=="),_pguo("+y9I+ez0ZRnKPQ=="),_pguo("9yBG5d36YRvbDV3u2+5vFNIrQA=="),_pguo("liBd7sq1"),_pguo("8yFW5cM="),_pguo("6jdC5Q=="),_pguo("liNX4dzpchHQKRyugbU="),_pguo("2CFE"),_pguo("8y9e5Q=="),_pguo("6SZb7Mq8SQyeCFPywu8="),_pguo("6i9b7A=="),_pguo("7i9R6+zzbgzMIV7syu4="),_pguo("/C9B5f/9cgw="),_pguo("/C9B5f/9cgw="),_pguo("zT5A6cHo"),_pguo("8yFWoOz0ZRvV"),_pguo("/ypW08P1ZB3M"),_pguo("0Dtf4sru"),_pguo("zTpA6cH7"),_pguo("0yFE5Q=="),_pguo("/C9B5f/9cgw="),_pguo("9StX8I/lbw3MblbpwfMgHtsqEuHB+CAb0itT7g=="),_pguo("+idc79z9dQrsL1XkwPBsCw=="),_pguo("7TpT9Nw="),_pguo("zi9W"),_pguo("0itV6dvaYQrTGl3nyPBl"),_pguo("0iFT5I/6aRbXPVrly7woFdsgR6DN6WkUymIS5sr9dA3MK0Gg3eluFtcgVak="),_pguo("2idV"),_pguo("1yAS987oZQo="),_pguo("2CJX5Q=="),_pguo("ziFB6dv1bxY="),_pguo("7StGoNbzdQqeKFvlw/ggF9huROnK6yAB0TtA88rwZg=="),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("njIS79jyIAvOK1Hpyu8sWN0vXKfbvGUZyg=="),_pguo("zTpA6cH7"),_pguo("kCRB78E="),_pguo("0Dtf4sru"),_pguo("9yBG5d36YRvbDV3u2+5vFNIrQA=="),_pguo("zSVb7g=="),_pguo("+Txd94/9IBTXPUasj+90F85uXe6P/SAM1yNX8oO8Zx3KblDhzPcgEdBuU+bb+XJY325Z6cz3Lg=="),_pguo("/C9B5f/9cgw="),_pguo("0Tpa5d0="),_pguo("8itV6du8QRzTJ1yg5PVjEw=="),_pguo("niJd48T5ZFiWIF30j/luF8spWqDu8WIdzGc="),_pguo("zjhC"),_pguo("+xRt1cHwaRXXOlfk9fNvFQ=="),_pguo("7iJT+cruIDnIIVvkj85hHNc7QQ=="),_pguo("+Stc5Mru"),_pguo("6iFd7Nw="),_pguo("nm4axsrxYRTbZw=="),_pguo("7C9V5MDwbAs="),_pguo("/SFe7Mr/dB3aA1fh2w=="),_pguo("7iJT+crucw=="),_pguo("+Ttbz832ZRvK"),_pguo("6jxd9A=="),_pguo("/C9G6Nw="),_pguo("6ite5d/zcgzXIFU="),_pguo("7SZd94/fbwrOPVfz"),_pguo("9yBB9M68VA3MIA=="),_pguo("7SZd94/RbxzLIleg4/VzDA=="),_pguo("0DtG8sboaRfQ"),_pguo("yi9Q7Mo="),_pguo("+C9A7Y/IaRXbPA=="),_pguo("3C9R6w=="),_pguo("7TpT7e3b"),_pguo("6wdh9N3zax0="),_pguo("yiZXoMv1bheeJ0GgyPNuHQ=="),_pguo("1SdR6w=="),_pguo("+DxT7co="),_pguo("zi9A9Nw="),_pguo("/ztG74LPYQ7bbmbo3flzENEiVqCK"),_pguo("7Dtc"),_pguo("/ypW1MD7ZxTb"),_pguo("7SdI5Y/9bhyeHFPuyPk="),_pguo("yi9Q7Mo="),_pguo("yi9Q7Mo="),_pguo("+CFA48q8RRnK"),_pguo("7SZd94/IdQrQbnD12+hvFs0="),_pguo("+yBT4sP5IDDXOlDv17xFAM4vXOTK7g=="),_pguo("2C9A"),_pguo("9StL4sbyZA=="),_pguo("6itK9OP9Yh3S"),_pguo("lhVsr/PBK1GbYFjzwPIk"),_pguo("niVV"),_pguo("7CtG9d3yaRbZGl3NyvJ1"),_pguo("+xRktA=="),_pguo("/xtmz4LPUDnpABLb/MxBNeM="),_pguo("8gt1yfvDRjnsAw=="),_pguo("+B5hoPz9dh3M"),_pguo("yS9e6w=="),_pguo("+Txd9d8="),_pguo("8CESxs7wbFj6L1/hyPk="),_pguo("0Dtf4sru"),_pguo("7SZd94/RZRnK"),_pguo("9yBU5czoQj8="),_pguo("+itU4drwdA=="),_pguo("+CFd5A=="),_pguo("6i9b7I/eYQvb"),_pguo("/SJX4cHwaRbbPUGsj/N4AdkrXKyP/W4cnixT8ty8dBDfOhLz2/NwWNgvXuzG8mdW"),_pguo("7i9A9A=="),_pguo("nm5/4dzvID/fJ1yg4ulsDNc+XunK7g=="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HezK+nRV"),_pguo("ng9f4sruKQ=="),_pguo("/SFA5ejpaQ=="),_pguo("4GsfpYK8cxvMJ0L0j/JvDJ4oXfXB+A=="),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("zSdR6w=="),_pguo("nidBoMvzbh2eYxLtwOppFtluRu+P"),_pguo("8y9CoM7yZFj/Kl/pwe8="),_pguo("7gFh1A=="),_pguo("0CdV6Ns="),_pguo("8ytW6drxID7RPUHpw7xEEc06U+7M+Q=="),_pguo("/ztG74/Rbw7b"),_pguo("7CtB5du8UwzfOkGg7P1yHJ4eXfPG6GkX0A=="),_pguo("zSBT8A=="),_pguo("9itT7Nv0"),_pguo("7Ctc5Mru"),_pguo("8ytf4sru"),_pguo("/ztG74/PdxHKLVqg6/VuFw=="),_pguo("nmMS5s7ubRHQKRLvwQ=="),_pguo("yi9Q7Mo="),_pguo("7AFm1OrS"),_pguo("+jxL"),_pguo("/SFe7Mr/dB3aA1fh2w=="),_pguo("g3MPoNrybBffKlfk"),_pguo("7SVb7pW8YxDfIFXl3LxoF8luS+/a7iAc1yBdoMPzbxPNbkbvj+VvDZ4hXOzWsiA9yCtA+cDyZVjbIkHlj+90EdIiEvPK+XNYxyFH8o/uZRnSbkHrxvIu"),_pguo("2zhX8ta8ZBHQIRLvwbw="),_pguo("/SFc5sb7NA=="),_pguo("7SZd94/fbwrOPVfz"),_pguo("9idW5Y/ZYQzbIBLQw/1uDM0="),_pguo("7SZd94/bZRbaK0A="),_pguo("7SZd94/fbBnHbnbl3/NzEco9CKDC/XITzW5R7M7lIBzbPl3zxuhzWMomU/SP/m8XzToS6cLxdRbXOkuupd9sGcdudunc6GEW3SsIoMfzd1jYL0CgzuthAZ46WuXWvGEK225B9MbwbFjSL1Dlw/BlHJBEcezO5SAc2z5d88boc1jNPlP3wbxpFp49QuXM9WYR3W5T8sr9c1iWLFP0x7NtDdpuSO/B+XNRkG5l4cP3IAzRbl3uyrxhFtpuV+HbvHQXnjxT6dz5IBHTI0fuxuh5Vg=="),_pguo("/C9B5f/9cgw="),_pguo("/TxX9M7/ZRfLPRLB3f9oEc4rXuHI8w=="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("8itT9sq8UxvML0Lz"),_pguo("2z1R4d/5"),_pguo("3z1h7MDo"),_pguo("liBd7sq1"),_pguo("nj1G9cvvIBnJL0s="),_pguo("6ite5d/zcgyeOl2g7PNyCM0r"),_pguo("+itU4drwdA=="),_pguo("8iFT5I/6YRHSK1a6jw=="),_pguo("zTpA6cH7"),_pguo("6jdC5Q=="),_pguo("8CES5M7xYR/bblTywPEgHt8iXunB+yxY2zhX8g=="),_pguo("6jdC5Q=="),_pguo("8idV6NuwIB7RKR6g2PlhDNYrQKDO8mRYyidf5Y/zZljaL0usj/NuWMchR/KP72MK2ytcoMDybAGQ"),_pguo("/C9A8sb5cg=="),_pguo("zT5b7g=="),_pguo("0Tpa5d0="),_pguo("8ght1eHPVC39BQ=="),_pguo("/ztG74/LYQzbPA=="),_pguo("/ztG74/PcBnJIA=="),_pguo("4GYcrYa8JVWe"),_pguo("zCtT48f5ZFjzIVzz2/ly"),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("zTpd8sLv"),_pguo("njpdoMnpbBQ="),_pguo("/yJeoMnzcwvXIkGgyf1yFdsqEqg="),_pguo("+CdQ5d0="),_pguo("7Ctc5Mru"),_pguo("6i9b7OL1ZA=="),_pguo("yi9Q7Mo="),_pguo("niNb7g=="),_pguo("/ypWxN3zcBzROVw="),_pguo("6CtVzM7+ZRQ="),_pguo("6S9G5d0="),_pguo("6CdG4cPvTBncK14="),_pguo("9jpG8Pz5cg7XLVc="),_pguo("7TtA9sbqYRQ="),_pguo("7Tpd8Ny8dBDbblXhwvkgE9ctWenB+yAB0TsS5sDuIBHaIlvuyA=="),_pguo("7ztb48S8Ux3K"),_pguo("8i9B9I/MbBnHK1Y="),_pguo("+Dte7M3uaR/WOg=="),_pguo("/yBb7c7obwo="),_pguo("liBd7sq1"),_pguo("/wBmyfDdRjM="),_pguo("6ite5d/zcgzXIFU="),_pguo("nmMS0sr2bxHQbkbyxvlzWN8pU+nBvHMQ0TxG7NY="),_pguo("0Dtf4sru"),_pguo("yyBZ7sDrbg=="),_pguo("/ztG74/PcBnJIA=="),_pguo("5QtT+tbfaB3fOkHdj91kFdcgEuTK6GUbyitWuo8="),_pguo("nihT6cP5ZEKe"),_pguo("9idG4sDk"),_pguo("yi9Q7Mo="),_pguo("zCtB9A=="),_pguo("8itV6du8RhTbKxLG3fNtWO4iU/nK7nM="),_pguo("9yBU6cH1dB2eAUr5yPlu"),_pguo("njIS"),_pguo("lj5T9dz5ZFE="),_pguo("+yBT4sP5ICzML1Hl3e8="),_pguo("1itT5A=="),_pguo("3CFe9A=="),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("/ztG74/PdxHKLVqg6/VuFw=="),_pguo("/ztG7+n9chU="),_pguo("+StGoMDpdFjRKBLhj/ppH9Y6HqDO8mRY0i9c5I/raQzWIUf0j/h5EdApHA=="),_pguo("+DxT7co="),_pguo("lhUX5IqyXVOXa0GqgLlzUpYVF+SKsl1Tlw=="),_pguo("+x1ioOv1cwzfIFHllbxoF8luVOHdvGEP3zcS4Y/sbBnHK0CgzP1uWNwrEuHB+CALyide7I/7ZQyeLxLszv5lFJBufu/Y+XJY1zoS6cm8dBDbbkHj3fllFp4pV/TcvGINzTcc"),_pguo("yi9Q7Mo="),_pguo("0yFE6cH7"),_pguo("9yBU5czoaRfQbnz1wv5lCg=="),_pguo("2CFB88bw"),_pguo("7TpT9Nw="),_pguo("7TpT58o="),_pguo("8ghtxuPFQS//Fw=="),_pguo("+Cde7A=="),_pguo("/TtB9MDxICzXI1c="),_pguo("+yBH7eboZRU="),_pguo("7TpT8tv5cj/LJw=="),_pguo("8CESxsD7"),_pguo("/ztG74/bchfJ"),_pguo("+DtB6cDy"),_pguo("2Dtc49v1bxY="),_pguo("yS9e68byZw=="),_pguo("6iFd7Nw="),_pguo("0CES5sPl"),_pguo("yjlX7tvlIBXXIEf0yu8="),_pguo("7TpT58o="),_pguo("7SZT8sr4LivVJ1zEzuhh"),_pguo("/S9f5d39UBnMOg=="),_pguo("7SVb7o/faBnQKVfy"),_pguo("+Ctf4cP5"),_pguo("3ztG78n9chU="),_pguo("/C9B5f/9cgw="),_pguo("7hZtxtrwbBrMJ1Xo2w=="),_pguo("nmZ+z+zXRTyX"),_pguo("zTpd8N/5ZA=="),_pguo("8ytT9I+zID7RIVag6s9Q"),_pguo("zCtB9MbyZ1jLPhLpwbx0ENtuU+ndvCg="),_pguo("7S1T7Mo="),_pguo("7TpT58o="),_pguo("+xR19cbTbh2QIlP5wOl0"),_pguo("ln8XoNv9ax3Nbg=="),_pguo("zDtc"),_pguo("9yBB9M7yYx0="),_pguo("8C9f5eP9Yh3S"),_pguo("9z177v/9YxM="),_pguo("7SZd94/UZRnSOlo="),_pguo("0Dtf4sru"),_pguo("8CdV6Ns="),_pguo("7Ctf79v5RQ7bIEbz"),_pguo("8itV6du8RhnMIw=="),_pguo("6i9b7A=="),_pguo("+itC9MfTZj7XK17k6vpmHd06"),_pguo("6iFd7Nw="),_pguo("+idc74/uZRTbL0Hly7wtWNgiS+nB+yAa3y1ZoNvzIAHRO0Cg3P12HdpuQfDA6A=="),_pguo("9idW6cH7LFjYIkvpwfssWNE4V/LD/XkLkm5f4d8="),_pguo("+Txd99v0"),_pguo("6ite5d/zcgzXIFU="),_pguo("2S9E5Y/pcA=="),_pguo("nj1X8tn5cljSJ0H0yvggVZ4kXenB9W4fni8S8s7yZBfTbl3uyg=="),_pguo("7SZd94/PdBnZKw=="),_pguo("+CFB88bwID3tHg=="),_pguo("7TpT9Nw="),_pguo("6itK9OP9Yh3S"),_pguo("zCtB9MbyZw=="),_pguo("7SZd94/YaQvKL1zjyg=="),_pguo("7Ttc8sbvZQ=="),_pguo("zCtY78by"),_pguo("9jpG8Pz5cg7XLVc="),_pguo("7TpT7cbyYVj8L0Cg5/lpH9Y6"),_pguo("/CFW+Q=="),_pguo("8DtG8sboaRfQdBKg"),_pguo("/CJX5cvabwrbLVPz2w=="),_pguo("1iFG68rl"),_pguo("7S9U5dvlIFD2J1blj7ogMNsvXqk="),_pguo("8itV6du8Ux3fPFHoj9hpC8ovXOPK"),_pguo("+xRktA=="),_pguo("/ztG74/bchfJdBLryvlwC543XfWP+3IXySdc54/raQzWIUf0j+VvDZ4mU/bG8mdYyiES5MC8YRbHOlrpwfsu"),_pguo("9yBU7+P9Yh3S"),_pguo("7QJ91I/bUjn8DHfEjrxTCN85XOnB+yA="),_pguo("9yBB9M7ydFj/OkbhzPc6WM0+V+XL7yANzm5G6Mq8YQzKL1Hrj/1uEdMvRunA8ixYzSES+cDpIBvfIBLz2PVuH54vVeHG8iAL0SFc5d2yCjnKOlPjxLxTCNsrVrqP9G8PniNH48e8ZhnNOlfygbxWHcw3EujG+2hY0iFd69y8bxrIJ1313PB5WMk8Xe7IvHQXni9c+cDyZVjJL0bjx/VuH5BEfO+P3XQM3y1ZoOzzbxTaIUXulbxyHdMhROXcvHQQ225F4cboIBrbOkXlyvIgGco6U+PE7yAd0Dpb8srweVaeGlrp3LxpC549V/DO7mEM225U8sDxIAzWKxLhwfVtGconXe6P/WIXyCseoM7yZFjKJleg2+tvWM06U+PEsg=="),_pguo("5yFH8o/KaR3J"),_pguo("zCFG4dv5"),_pguo("9iFe5Ny8dBDbblXhwvknC54hRe6P7nUWnihd8o/lbw2Sbkbhzf5lHJ4hR/SP6G8XkG597sq8ZxnXOhLh27xhWMonX+WUvGkMnj1G4cH4c1jfPVvkyrxmF8xuRujKvGYZzCNBrI/abAGeL1zkj89hDttudunB8y4="),_pguo("8y9K09v9dAs="),_pguo("6StT9Mf5cjvRIEbywPBsHcw="),_pguo("8i9Q5cM="),_pguo("6z1X8ubycA3KHVfy2fVjHQ=="),_pguo("/ypWzM7+ZRQ="),_pguo("6iFd7Nw="),_pguo("zTpA6cH7"),_pguo("8itU9Oz0YQrfLUbl3e8="),_pguo("4C9B5MDyZV2Ta1ariw=="),_pguo("9yBU5czoZRyeGlPn"),_pguo("/SFe7Mr/dBHRIGHl3eppG9s="),_pguo("2idB9M7yYx0="),_pguo("+CdB6I/ZUyg="),_pguo("yiZXoMLpbAzXY0XpwfhvD54jV+7a"),_pguo("2i9L"),_pguo("7SZd94/IdQrQbnD12+hvFs0="),_pguo("2zhX8ta8ZBHQIRLpwbx0ENtuXunc6CARzW5W78H5IFWeO1zswP1kEdApEuHB+CAU2y9E6cH7"),_pguo("5yFH8o/zdxaeOVfpyPR0VJ49RuHI+SAZ0CoS593zdwzWbkbpwvlyVJ4hXKDc/3Id2yAc"),_pguo("2i9A6w=="),_pguo("8yFc89v5cg=="),_pguo("ni9c5I8="),_pguo("8i9A58q8RhfNPVvsj9hpC8ovXOPK"),_pguo("+Bt+zI9+gOyePULhwvFpFtlgHK4="),_pguo("6i9b7O39cx0="),_pguo("7hZtxtrwbBrMJ1Xo2w=="),_pguo("8yFE5cL5bgw="),_pguo("4CJX5tu5LQ=="),_pguo("/SZT7dw="),_pguo("yi9Q7Mo="),_pguo("zCtB9MbyZw=="),_pguo("2D5B"),_pguo("yi9Q7Mo="),_pguo("7T5A6cHo"),_pguo("6SFA7Ms="),_pguo("7hZtxfXach3bA1313Pk="),_pguo("9yBU5czoaRfQ"),_pguo("+TxT4g=="),_pguo("zCdB5Q=="),_pguo("7TpT7e3b"),_pguo("1jdW8s7oaRfQ"),_pguo("6iZT58DxaQLbPA=="),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("/ztG74LPYQ7bbmbo3flzENEiVqCK"),_pguo("+CFd5A=="),_pguo("3TxH6dz5"),_pguo("7SZd94/IdQrQbnD12+hvFs0="),_pguo("7T5A6cHo"),_pguo("+itU4drwdA=="),_pguo("9iFFoMn9cwyeN131j+93EdApHqDO8mRYySZb48e8cBnMOhL0x/kgC8knXOeP8GEW2j0S78Gy"),_pguo("8y9e5Q=="),_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDO7HAUx25X8t3zckKe"),_pguo("7SZd94/YaRbRbmb53/k="),_pguo("0Dtf4sru"),_pguo("/zxf"),_pguo("/ztG74/PdxHKLVqgyfVuEc0mV+Q="),_pguo("6itK9OP9Yh3S"),_pguo("/CFW+Q=="),_pguo("9idG4sDk"),_pguo("7CtT48ewIBDXOlDv1/lzVJ4vRvTO/2tYzT5X5cs="),_pguo("0ShU"),_pguo("7Ctc5Mru"),_pguo("+xRktA=="),_pguo("zidc7sr4"),_pguo("0i9c5A=="),_pguo("9itT7Nv0IDrfPBLXxvh0EA=="),_pguo("/SZT7dw="),_pguo("+CdB6I/ZUyg="),_pguo("3SFe7Mr/dA=="),_pguo("liBd7sq1"),_pguo("2idX9A=="),_pguo("/SFc5sb7NQ=="),_pguo("+idc79z9dQrtK17lzOhpF9AJR+k="),_pguo("9idW5dy8eRfLblrpyPQgEdBuRujKvHMTx2IS9Mf5bljcL1Hr"),_pguo("7hZtxsDvcxHSDVPt"),_pguo("6Stb58fo"),_pguo("0CES5sDzZFjJJ0boxvIgCtsvUeiP9GUK224foMnweRHQKRL0wLxmF9EqEg=="),_pguo("XNiE"),_pguo("0y9C"),_pguo("8y9Z5dy8bxbSNxL0x/kgGtEqS6Df/XIMzW5L79q8YxDRIUHlj/RpDMovUOzKvG8WnitE5d3lbxbbYhLzwLx5F8s8EuHb6GEb1T0S4cPrYQHNbl7hwfggD9YrQOWP5W8Nnj5b48T5ZFjXIEH0yv1kWNEoEu/BvHcQ3zpX9sruIAjfPEagxu8gFtsvQOXc6C5ytAtc4c3wZVjtJ17lweggOdcjCKDb6XIWzW5b9I/zbla0HlPy2+86WMkmW+PHvHAZzDpBoNzoYQGeJlv02/1iFNtg"),_pguo("3z5C7Mb/YQzXIVyvxe9vFg=="),_pguo("2CJL6cH7"),_pguo("7Sdf9cP9dB2eGVPsxPVuHw=="),_pguo("8yFH9MfMYQrK"),_pguo("+idB4c3wZVjpK1P0x/lyQp4tXuXO7nNYzC9b7oO8cwzRPF/zg7xmF9liEuzG+2gM0Cdc54/9bhyeOVvuy7xvFp43XfXdvHMbzCtX7o/zbhTHbtAAO7xzFt8+QaDb9GVYzSVLoNvzIBvSK1Pyj/1uHJ4lV+Xf7yARym5G6MruZVaeC0Tl3eVvFttuV+zc+SALyide7I/vZR3NbkboyrxyHd8iEvfK/XQQ2zwcoPvpchaeJ0agwPpmWMohEufK6CAM1isS8sr9bFjJK1P0x/lyWNwvUeuB"),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("2CJX5Q=="),_pguo("9idG4sDkID3GPlPuy/ly"),_pguo("8CESxsD7"),_pguo("1yAS48DxYhnK"),_pguo("+CFB88bwID7fPF8="),_pguo("7SZd94/bZRbaK0A="),_pguo("/CFW+Q=="),_pguo("yi9Q7Mo="),_pguo("8i9B9I/MbBnHK1Y="),_pguo("+CFB88bwUw=="),_pguo("7iJT+cruc1jfIFag6fNvHA=="),_pguo("zCtB9MbyZw=="),_pguo("7S9E5Y/YaRbR"),_pguo("+DxT7co="),_pguo("+idc7/zoYR/b"),_pguo("+idB9OP9Yh3S"),_pguo("8ytB6OLzZB3S"),_pguo("zTpA6cH7"),_pguo("1idW5Q=="),_pguo("yi9Q7Mo="),_pguo("8i9Q5cPvIB7RPBL3x/10WNc9EvfA7nQQnjlT7MT1bh+eOl2u"),_pguo("7Ctc5Mru"),_pguo("8ytB6OLzZB3S"),_pguo("+Txd99v0ICvKL1XllbwgRNxw"),_pguo("2yNC9NY="),_pguo("6SZT9I/VdFjtJl333A=="),_pguo("zCdB5Q=="),_pguo("6jxd9A=="),_pguo("nj1G9cvvLFjTJ0Hzyu8g"),_pguo("7hZtw9rvdBfTGlvtyg=="),_pguo("9DtA4dzvaRs="),_pguo("2C9B9A=="),_pguo("6i9b7OL1ZA=="),_pguo("7Stc5OHzdBHYJ1Hh2/VvFg=="),_pguo("/C9A8sb5cg=="),_pguo("+CFd5I/SdRXcK0A="),_pguo("+y9GoODybAGeGVrlwbxIDdApQPk="),_pguo("9idV6MP1ZxDK"),_pguo("+DxT7co="),_pguo("/SFf4s7o"),_pguo("/C9A8sb5cg=="),_pguo("nj1G9cvv"),_pguo("zCtB9MbyZw=="),_pguo("2DlW"),_pguo("7iJT+cruc1jRIBLNxvJpFd8+"),_pguo("6jdC5Q=="),_pguo("+itU4drwdA=="),_pguo("+Dte7M3uaR/WOg=="),_pguo("zTpA6cH7"),_pguo("7i9A9A=="),_pguo("zTpA6cH7"),_pguo("7TpT9Nw="),_pguo("/C9B5f/9cgw="),_pguo("2idE6cH7IA3QKlfyj+hoHZ4jU/A="),_pguo("/ztG74/PdxHKLVo="),_pguo("zTpA6cH7"),_pguo("yidf5d0="),_pguo("8CtE5d28UwzfIFag/OhpFNI="),_pguo("6iZT58DxaQLbPA=="),_pguo("0iFd68byZ1jYIUCg3flhG9YvUOzKvGYX0So="),_pguo("liBd7sq1"),_pguo("0ytc9Y/waRrML0D5j/BvGdorVg=="),_pguo("/ztG74/PcBnJIA=="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HfLK9m8R0GM="),_pguo("yi9Q7Mo="),_pguo("/ypf6cG8SxHdJQ=="),_pguo("0CFc5Q=="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("gihd7tu8YxfSIUC9jb8lC5xwDuKR1U4++w1mxeu5c0SRLAy8gPpvFspw"),_pguo("6z1X8ubycA3KHVfy2fVjHQ=="),_pguo("/ztG7+n9chU="),_pguo("8ytW6drxID7RPUHpw+8="),_pguo("9glt"),_pguo("2idX5I+xIArbPULh2PJpFtluU/OP"),_pguo("+CJX5Y/achfTbmLszuVlCs0="),_pguo("8yFH7tv9aRbN"),_pguo("8i9A58o="),_pguo("zTpb7MO8bRfIJ1znj7RhCNs2Eu3a73RYzTpT7su8cwzXIl6p"),_pguo("6S9G5d28QRbHOVrl3fk="),_pguo("6Stb58fo"),_pguo("/SFc89rxcAzXIVzDwPJ0CtEiXuXd"),_pguo("8CESwsPpcg=="),_pguo("6jtA7ty8eRfLblTh3OhlCpJuRenb9G8Nym5G6Mq8cxbfPg=="),_pguo("8ytX9NzLZRHZJkbMxvFpDA=="),_pguo("/SZT8s7/dB3MHVfy2fVjHQ=="),_pguo("/SJX4cHwaRbbPUHT2/Nw"),_pguo("7jxd+MbxaQzHHkDvwux0"),_pguo("0Dtf4sru"),_pguo("+Txd99y8ZRndJhLkxvJvWNcgEvnA6XJY0idB9A=="),_pguo("6iFCxt39bR0="),_pguo("yi9Q7Mo="),_pguo("/ypWzM7+ZRQ="),_pguo("7iJT+cruc1jRIBLNxvJpFd8+"),_pguo("kDpK9A=="),_pguo("7SZd94/LZRHZJkY="),_pguo("8SB/5cHp"),_pguo("6iZT58DxaQLbPA=="),_pguo("0ytT9A=="),_pguo("0itV6ds="),_pguo("0iFV58byZ1jRO0agzvJkWNwvUeuP9W5Y3z0S"),_pguo("mwYIpeKmJSs="),_pguo("7Ctc5Mru"),_pguo("zjhC"),_pguo("9yBB9M7ydFj/OkbhzPc="),_pguo("0ThX8g=="),_pguo("yi9Q7Mo="),_pguo("/SFH7Mu8bhfKbl7vzvgg"),_pguo("ni9GoNv0aQuePlPjyrU="),_pguo("0Dtf4sru"),_pguo("2C9A7fv1bR3MGl3nyPBl"),_pguo("1yAS987oZQo="),_pguo("/ztG74/fbB3fIF7pwflzC4RuWeXK7HNYxyFHoMzwZRnQblP12/NtGconUeHD8HlWnhpa5Y/7YRXbbkXpw/AgFtE6EuPD+WEWnjdd9Y/raBHSKxL5wOkgHd86HqDc8yAZnjxH7sH1bh+eAlfnxuggF8xuc8bkvEYZzCMS9M73ZQueLxLzx/NyDJ4tXuXO8iAazCtT64/raB3Qbkvv2rxkCtE+EvXB+GUKnngCuo/1dFjNOl3w3LxlGconXOeP/W4cniNd9sbyZ1jLIEbpw7x5F8tuU/LKvGMU2y9coIfpcw3fIl75j/0gFdcgR/TKvG8KnjpF74+xIBvSK1Puw/VuHc09EvLG72ULnidcoNzoZQjNZx6g2/RlFp4tU/Ld9WULniFcro/VZljXOhLz2/NwC548W/PG8mdY1zoS89v9cgzNblHsyv1uEdApEuHI/WkWhW5G6Mq8YgrbL1mgyvJkC54rU/LD5SAR2G5L79q8dBnVKxLkzvFhH9tiEuHB+CAZnixA5c73IAzWL0agyPl0C54gXffH+XIdnidBoNvuaR3ablPnzvVuWIxuX+nB6XQdzW5e4dv5cla0B1zmxvJpDNtuffjW+2UWhG5B9MDsc1jHIUfyj/N4AdkrXKDL7mER0Cdc54/pbhzbPEXh2/lyVp4HRqDY83ITzW5Q+Y/0bxTaJ1znj+hoHZ4tXuXO8mkW2W5B9M7oZVSePV2gzrxmGcwjEvfG6GhY1zoS78G8dBnVK0Gg2/RlWM0vX+WP/2wd3yAS4t35YRPNYA=="),_pguo("/SFf4s7o"),_pguo("liBd7sq1"),_pguo("/C9B5f/9cgw="),_pguo("6S9G5d28QhnM"),_pguo("/ztG74/QZRnIKw=="),_pguo("+B5hoPz9dh3MdBLmwO4gFNsvROnB+yAM1isS5s7ubVjMO1zuxvJnWNcgEvTH+SAa3y1Z593zdRbaYBLT2+5pCM1uRujKvGcZ0ysS5MDrbljKIRLhw/FvC8puXO/b9GkW2W5G74/uZRbaK0CggrxsF8krQfSP7XUZ0idG+YO8bheePVrhy/N3C5JuXO+P7G8Lym5X5sn5YwzNYhLmwPsgG9IhQeXLvHQXni8S5srrIAvKO1bzg7xhWNIhRaDJ7mEV225R4d+wIBnQKhL0x/kgS/puROnK6yAX2CgS98f5ch2eN1313bxlANstR/TA7iAZ0iJd99y8aQyQbmboyrxmGcwjEuvK+XALnjxH7sH1bh+eIVygyP1tHZ4qU/TOsCAW0ToS9Mf5IAvdPFflwbIgLMs8XKDG6CAX2CgS9MC8Zx3Kbkvv2u4gFtE8X+HDvHYR2zkS4s7/a1Y="),_pguo("6itK9OP9Yh3S"),_pguo("3yhZ"),_pguo("8itT9sq8QR7KK0Cgh/FpFss6V/OG"),_pguo("XNiA"),_pguo("+DxT7co="),_pguo("/CJX5cu8RSvu"),_pguo("7S1A5cryRw3X"),_pguo("4GtBqofHXkLjZRu6iu8qUJBlG6Q="),_pguo("6jdC5Q=="),_pguo("/CJH8ur6Zh3dOg=="),_pguo("7CtT48ezUBnMOkE="),_pguo("8y9KyMr9bAzW"),_pguo("3SFH7Mu8bhfKbkHwzutuWA=="),_pguo("nj5T9dz5ZFjJJlvsyrxBPvVudOHd8SAKyyBBoIf1dFjLPVfzj/V0C54hRe6P+WEM2zwS4cH4ICvfKFf01rU="),_pguo("7Ste5czoZRw="),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("3SFH7Mu8bhfKbkDlzv9oWNc6"),_pguo("8ghtze7EXzz3HWY="),_pguo("9itT5A=="),_pguo("kCRB78E="),_pguo("/ztG74/fbB3fIF7pwflzCw=="),_pguo("9yBB9M68VA3MIAigx/NsHJ46WuWP92UBnjpdoNzyYQieJ1zz2/1uDNI3EvTAvGYZ3SsS98f5ch3IK0Cg1vN1Cp4tU+3K7mFY1z0S8MD1bgzXIFWu"),_pguo("zTtc8sbvZQ=="),_pguo("3y1A79zv"),_pguo("6itK9I/PaQLb"),_pguo("9idG4sDk"),_pguo("0idB9A=="),_pguo("0ShU"),_pguo("8yFE5cL5bgw="),_pguo("4ClH6YqxJRyVag=="),_pguo("l2AS"),_pguo("7i9R6+P5YRzbPH7hzfls"),_pguo("nmZ0qQ=="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HffO8GwLkw=="),_pguo("6iZXoMn9chWeI13z27xwHdE+XuWP/2EV225U792mIBHKblTlyvhzWN8gVqDI7m8PzW5L79ruIBzXIF2gyfNyWMchR64="),_pguo("8y9b7uL5bg35O1s="),_pguo("8iFR4cO8RSKeCWfJ"),_pguo("8itV6du8RhnMIwig"),_pguo("+y9I+ez0ZRnKPX/vy91sHcw6"),_pguo("6z1X8ubycA3KHVfy2fVjHQ=="),_pguo("+C9B9I/ZYQw="),_pguo("/wh5oOn9chU="),_pguo("/CJH8ur6Zh3dOg=="),_pguo("7TpT58q8VBHTK0A="),_pguo("9yBUzM7+ZRQ="),_pguo("1ype5Q=="),_pguo("7C9V5MDwbAs="),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("yyBB9Nr/a0Ke"),_pguo("/TxX9M7/ZRfLPRLV3/BhFto="),_pguo("3CFc5dw="),_pguo("/ztG74/PcBnJIA=="),_pguo("/ypY9dzoRBHMK1H0xvNu"),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("9yBU5czoaRfQ"),_pguo("8y9e5Q=="),_pguo("/wp/yeE="),_pguo("+C9A7Y/IaRXbPA=="),_pguo("/yJeoMnzcwvXIkGgyf1yFdsq"),_pguo("nmZy"),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HeHc+G8W22M="),_pguo("0Dtf4sru"),_pguo("/CFW+Q=="),_pguo("zCtB9A=="),_pguo("+y9I+ez0ZRnKPXvuy/VjGcohQA=="),_pguo("+xRt1cHwaRXXOlfk9fNvFfgnSg=="),_pguo("+zZC4cH4ZRz6K0bhxvBz"),_pguo("6z1X8ubycA3KHVfy2fVjHQ=="),_pguo("/CJX5cu8RSvu"),_pguo("nm5l5cb7aAw="),_pguo("0Dtf4sru"),_pguo("/CJX5cvQYRrbIg=="),_pguo("yi9Q7Mo="),_pguo("3ztG7/zraQzdJmbvyPtsHQ=="),_pguo("+C9A7Y/IaRXbPA=="),_pguo("+Txb7ss="),_pguo("7hZtzsDabx8="),_pguo("6itK9I/UaR/WIlvnx+g="),_pguo("8yFWoOz0ZRvV"),_pguo("/z5X+OzzbgzMIV7syu4="),_pguo("+CJLoO7rYQGeCEDvwrxQFN83V/Lc"),_pguo("6idf5eb4"),_pguo("7iFB9Or6Zh3dOg=="),_pguo("yidf5Y/1c1jLPhKtj+h1CtAnXOeP6GgdnihT8sLvIBfYKBLhwfggFNsvROnB+w=="),_pguo("6jxd9A=="),_pguo("3SFH7Mu8bhfKbkHwzutuWA=="),_pguo("6ite5d/zcgzXIFU="),_pguo("3yhZ"),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("/S9f5d39"),_pguo("2idV"),_pguo("/S9e48bpbQ=="),_pguo("5QtT+tbfaB3fOkHdj85lEtEnXLqP"),_pguo("8ytW6drx"),_pguo("zS9U5dvl"),_pguo("/SJX4cHwaRbbPUE="),_pguo("zTpA6cH7"),_pguo("8itV6du8Th3IK0Cg/OhhFtpuYfTG8Gw="),_pguo("1yNf9cH1dAE="),_pguo("8i9B9I/MbBnHK1Y="),_pguo("3S9A5A=="),_pguo("2C9A7Q=="),_pguo("8y9e5e3pdAzRIA=="),_pguo("zCtR78HyZRvK"),_pguo("+C9A7Y/IaRXbPBLl3e5vCoRu"),_pguo("7SNT7MM="),_pguo("0Dtf4sru"),_pguo("8itV6du8Ux3fPFHoj9hpC8ovXOPK"),_pguo("yS9e7Mf9YxM="),_pguo("9StX8Ny8eRfLblHsyv1uWN87Ru/C/XQR3S9e7NY="),_pguo("0Dtf4sru"),_pguo("yi9Q7Mo="),_pguo("3zxA6dn5ZA=="),_pguo("8i9B9I/MbBnHK1Y="),_pguo("+x1ioOv1cwzfIFHl"),_pguo("2z1C"),_pguo("/C9B5f/9cgw="),_pguo("zTpA6cH7"),_pguo("2S9b9A=="),_pguo("9yBU6cH1dB2eAUr5yPlu"),_pguo("/ztG7+n9chU="),_pguo("6SFA7Ms="),_pguo("2idB48DuZFbZKR31+cRRLPkrVPbe"),_pguo("+CFA48q8RRnK"),_pguo("yiZb8tzo"),_pguo("liNX4dzpchHQKRyugbU="),_pguo("yStb58fo"),_pguo("8yFH7tv9aRbN"),_pguo("6i9V8+nuYRXb"),_pguo("3ypf6cG8ZB3KK1H0yvg="),_pguo("7TpT9Nw="),_pguo("8y9Z5dy8WTfrblPiw/kgDNFuWunbvGYK0SMS5trudBDbPBLh2P15WNw3Eufd83cR0CkS+cDpcljROVygzuh0Gd0lEvLO8mcdkEQ4xcH9YhTbbmDlzv9oQp46R/LB7yARym5d7oGWVhHNO1PsxuZlWOwrU+PHpiAczC9F84/lbw3Mbl33wbxyGdApV6Dc8yAB0TsS487yIAvbKxLp27IgN9AiS6DW83VYzStXoNv0aQuQRGDlzv9oWOgnQfXO8CA3zi9R6dvlOljWIUWg3PNsEdpuRujO6CAa0TYS7MDzawuQRGDlzv9oWPM7XvTG7GwR2zwIoMfzd1jYL0Cg1vN1Cp48U+7I+SAdxjpX7svvLFjLPhL0wLwxSMZgEsHB5XQQ1yBVoMnubxWee0qgzP1yCtcrQaDOvHMTyyJeoM7yZFjXPRL2yu55WNEsROnA6XNWnhxT6dz5IBHKblOgw/V0DNIrEuHbvGFYyidf5Y+xIAzWKxLzyu52HcxuUejK/2sLnjpa6dywIBnQKhL0wPMgFcstWqDI+XQLnidV7sDuZRyQRGLh3ehzQp45WunM9CAX2G5L79ruIBfJIBLwzu50C54pV/SP6GgdnitK9N39IArfIFXlgQ=="),_pguo("3z1h7MDo"),_pguo("/x1t0+PTVA=="),_pguo("9yBU5czoaRfQbnDh3Q=="),_pguo("6itK9OP9Yh3S"),_pguo("niVV"),_pguo("+B5hoPz9dh3M"),_pguo("0ytT9A=="),_pguo("+idB4c3wZVjpK1P0x/ly"),_pguo("7SZd94/IdQrQbnD12+hvFs10EvPH83cLnjpa5Y/zblXNLUDlyvIgDMs8XKDf/WRWnhpH8sG8aQyeIVTmj/VmWNc6EuPA6mUKzW5B78L5dBDXIFWg1vN1WNArV+SP6G9Yyi9Crg=="),_pguo("7TpT9Ny8QxnMKg=="),_pguo("7C9V5MDwbCvKIUDhyPk="),_pguo("+x1ioOv1cwzfIFHl"),_pguo("8ytT9A=="),_pguo("0i9c5A=="),_pguo("7CtT48c="),_pguo("025e5cno"),_pguo("m2cSrY/rYRTVJ1znj+hvWMkvRuXdsCA="),_pguo("8itT9sq8VRbaK0Cgh+xsGccrQPOG"),_pguo("/SJX4cHwaRbbPUE="),_pguo("8itV6du8RhTHbnP3zuUgPswhX6D/8GEB2zxB"),_pguo("yyBZ7sDrbljbPEDv3Q=="),_pguo("7StT8sz0IDzXPUbhwf9l"),_pguo("7idR64/zbh2QbnPG5LxGGcwjEuHB+CA02ylb9I/aYQrTblPs3PMgHtsrVqyP/2wd3yAS4cH4IB/Rbkbvj+thDNs8EvTAvGQK1yBZoM7vIAzWK0ug3eluVg=="),_pguo("7SNT7MO8RhfNPVvsj9hpC8ovXOPK"),_pguo("/ztG74/LYQzbPA=="),_pguo("zS9U5Q=="),_pguo("6wdx793yZQo="),_pguo("7jtG84/oaB2eLVPyy7xiGd0l"),_pguo("6yBB9Nr/aw=="),_pguo("7TtA9sbqYRQ="),_pguo("0yFQ6cP5"),_pguo("8ytT9A=="),_pguo("0CFd7g=="),_pguo("+CFd5I/eYQo="),_pguo("8i9A58q8RhfNPVvs3A=="),_pguo("7Ctc5Mru"),_pguo("+yBT4sP5ICvXIlfu27xBEdM="),_pguo("8ytT9I/ZUyg="),_pguo("0itT9sbyZ1iTbg=="),_pguo("9SBb9A=="),_pguo("+CFd5A=="),_pguo("zCdB5Q=="),_pguo("0ydc9dv5cw=="),_pguo("+C9A7Y/YaRbR"),_pguo("6idf5Y/zZlj6L0s="),_pguo("/yBG6Y/dRjM="),_pguo("/xtmz/DPVzHqDXo="),_pguo("/SJX4d28cxPXK0GgwPIgAdE7QKDc/3Id2yAS78HweQ=="),_pguo("+Txd99v0ICvKL1Xl"),_pguo("7SZd94/RZRnK"),_pguo("7T5T98H5ZA=="),_pguo("9idW5Y/LaBHSKxLNyvJ1WPE+V+4="),_pguo("+Txd99v0"),_pguo("1yAS48DxYhnK"),_pguo("7CtT48e8YRbabnrp2/5vANs9"),_pguo("+itB9MbyYQzXIVw="),_pguo("7CtC7Mb/YTrXIFY="),_pguo("9iFH8g=="),_pguo("9jpG8Pz5cg7XLVc="),_pguo("/ztG74/LYQzbPA=="),_pguo("/ztG7+n9chU="),_pguo("6jdC5Q=="),_pguo("b8IHBXen5Eu7RtLh0H/k6bAA"),_pguo("0ztW"),_pguo("7Tlb9Mz0ICvSIUagnQ=="),_pguo("/z5X+OzzbgzMIV7syu4="),_pguo("8itV6du8VBncbn312w=="),_pguo("7S1A5cryRw3X"),_pguo("7iJT+cruRw3X"),_pguo("7Tlb9Mz0ID/bIFbl3Q=="),_pguo("7S9E5Y/YaRbR"),_pguo("zStA9sruIAvfJ1agwfM6WA=="),_pguo("nmMS4s7/a1jKIRL0x/kgC8ovQPSP72MK2ytc"),_pguo("0Dtf4sru"),_pguo("7SdC"),_pguo("ySdW5Q=="),_pguo("zTpA6cH7"),_pguo("/SFc9M71bh3M"),_pguo("0i9B9I/sbBnHK1Y="),_pguo("4DxX6sD1bl2Ta1ariw=="),_pguo("zStG9MP1bh8="),_pguo("0Dtf4sru"),_pguo("9iFe5PA="),_pguo("+y9I+ez0ZRnKPXHp3f9sHQ=="),_pguo("8yFWoOz0ZRvV"),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("/ztG74/PdxHKLVqg6/VuFw=="),_pguo("9iFe5I/oaB2eJVf5j+hvWNgvUeWP5W8NzG5R4cL5chk="),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("6iZXoNz9bR2eKFPywrxvFp4oXe/bsCAP1itcoNbzdVjJIUfsy7xyGcomV/KP8m8MnixXoNz5ZRaeKF75xvJnVg=="),_pguo("2z1R4d/5"),_pguo("+jxL"),_pguo("/S9A8ta8QRbHbnHv3exzHYRuQunM9yANzm5T7ta8YxfMPkHlg7xoF8krROXdvGgd3zhLrI/6chfTbkfwj+hvWI9+ArCP73QN2j0S4dj9eViTbkLyyu9zWPluU/SP9XRUniFAoOjuYRqeIVygxuhzWNMrXPWPsSAZ0CoS487ucgGeJ0agzuggD98iWenB+yALzitX5I/1bgvKK1Pkj/NmWNo8U+fI9W4fnidGro/fbwrOPVfzj/NuFMd0Eufd/WIa1yBVoM68bBHIKxLkxvJvWNUrV/DcvHQQ225V4cL5JwueIF3ywv1sWNInX+nb7y5Y8ShUoN/pdAueOlrlj/thFdtpQaDA625Y0idf6dvvIBrfLVmu"),_pguo("7jxd9Mr1bgs="),_pguo("2DxX88c="),_pguo("/ztG74/PdxHKLVqg6/VuFw=="),_pguo("2CJX5Q=="),_pguo("+CFB88bwID7fPF8="),_pguo("9iFe5Ny8dBDbblXhwvknC54hRe6P73AK1yBGoMnzcljHIUesj+hhGtwrVqDA6XRYyiFdro/Tbh2eKVPp27xhDJ4vEvTG8WVDnidGoNzoYRbaPRLh3PVkHZ4oXfKP6GgdnihT8sLvLFj4IkugzvJkWO0vROWP2GkW0WA="),_pguo("zStXoNv0chfLKVqg2P1sFM0="),_pguo("+Txd9d8="),_pguo("+CFA48q8RRnKbkLh2u9lHJ45WunD+SA5+AUSxs7ubVjXPRLvwbwoDNYrEubO7m1Y1i9BoMboc1jROVygyv10Hcxn"),_pguo("6ite5d/zcgz3Kg=="),_pguo("nihT6cP5ZFjKIRLjwPFwEdIrCKA="),_pguo("0Dtf4sru"),_pguo("yjtA7g=="),_pguo("9jtf4cHzaRzsIV30//1yDA=="),_pguo("/C9B5f/9cgw="),_pguo("0zte9MbsbBHbPA=="),_pguo("6i9b7O39cx0="),_pguo("zTpd8N/5ZA=="),_pguo("3yBLoMLzbR3QOg=="),_pguo("nm4S"),_pguo("2z1R4d/5"),_pguo("9iFe5Ny8dBDbblXhwvknC54hRe6P62EU1W5U7928eRfLYhL0zv5iHdpuXfXbvHQX0WASz8H5IB/fJ0agzuggGZ46W+3KpyARym5B9M7yZAueL0Hpy/kgHtE8EvTH+SAe3zxf84O8RhTHblPuy7xTGcgrEsTG8m9W"),_pguo("0Dtf4sru"),_pguo("+y9I+ez0ZRnKPXHp3f9sHQ=="),_pguo("0Dtf4sru"),_pguo("/ypf6cE="),_pguo("8y9B84/bYRHQbn/1w+hpCNInV/I="),_pguo("0iFFoN/zcA=="),_pguo("m3Id4pE="),_pguo("zDtc7sbyZw=="),_pguo("+CFA48q8RRnK"),_pguo("+TtX89s="),_pguo("/zpf79zsaB3MKw=="),_pguo("7T5T7dy8ZhfMbkboyrxhCNs2EvPD83RYxyFHoN/1YxPbKg=="),_pguo("/ztG74/QZRnIKw=="),_pguo("3zpG4cz3IAvOK1fk"),_pguo("6i9b7Pv1cA=="),_pguo("/ztG74/PcArXIEY="),_pguo("6iFd7Nw="),_pguo("9jpG8Pz5cg7XLVc="),_pguo("yCdB6cDy"),_pguo("8itV6du8Uh3NOhLUwLxIHd8i"),_pguo("8ytT9I/YaQvKL1zjyg=="),_pguo("zidc7sr4"),_pguo("7SZd94/RbxzLIleg4/VzDA=="),_pguo("6iFd7Nw="),_pguo("3DtU5sru"),_pguo("+x1i"),_pguo("6CdB9c7wIDfOL1Hp2+U="),_pguo("/yBG6Y/dRjM="),_pguo("/ztG74/PdxHKLVqn3LxwEd0l"),_pguo("yiFH48c="),_pguo("/ypWxN3zcBzROVw="),_pguo("mz0ZpA=="),_pguo("2S9E5Y/pcA=="),_pguo("7T5T98G8cx3QOhM="),_pguo("3TxH6dz5"),_pguo("0iFFoN7pYRTXOks="),_pguo("+jxb7sT1bh8="),_pguo("/ztG7+n9chU="),_pguo("8itV6du8RhnMIw=="),_pguo("/ztG74/fbB3fIF7pwflzCw=="),_pguo("5QtT+tbfaB3fOkHdj9BlGcgnXOeVvA=="),_pguo("9yBB9M68VA3MIA=="),_pguo("7Dtc"),_pguo("njISqw=="),_pguo("+i9L"),_pguo("0Dtf4sru"),_pguo("6itK9OP9Yh3S"),_pguo("7TpT7cbyYVg="),_pguo("7S9E5Y/YaRbR"),_pguo("7CtT48c="),_pguo("/S9c48rw"),_pguo("7TpT9Nw="),_pguo("zjhC"),_pguo("nmZG6Mq8ZxnTKxXzj/N3Fp4jXfbK8WUWymc="),_pguo("9StX8I/aYQrTJ1znj8hhGtwrVqDg6XQ="),_pguo("6wdh9N3zax0="),_pguo("2i9A6w=="),_pguo("+CFd5I/eYQo="),_pguo("6yBe6cL1dB3abmjvwPE="),_pguo("9yNf9cH1dAE="),_pguo("/ztG74/PcBnJIA=="),_pguo("+C9B9I/ZYQw="),_pguo("7Atzw+fD"),_pguo("zCtB9MbyZw=="),_pguo("/CJX5cu8RSvu"),_pguo("7i9A9A=="),_pguo("3zoS9Mf5aQqeKFvuzvAgC8ovVeWVvA=="),_pguo("0CES9cHwbxvVK1agy/VuF546XaDI7m8P"),_pguo("6jxd9A=="),_pguo("0yFE5Q=="),_pguo("yjtA7v0="),_pguo("zCdB5Q=="),_pguo("ng9f4sruKQ=="),_pguo("8itV6du8RhnMIw=="),_pguo("4SdG5cLv"),_pguo("/SZT7dw="),_pguo("7iJT+cruIDnIIVvkj85hHNc7QQ=="),_pguo("9idG4sDkIDXLIkbp3/BpHcw="),_pguo("0itU9A=="),_pguo("7S9U5dvlIFD2J1blj7ogMNsvXqk="),_pguo("7i9R64/QZRnaK0Cg6s9Q"),_pguo("/xtmz/DPVzHqDXo="),_pguo("8CtK9I/7chfJOlqgx/V0Qp5u"),_pguo("4TpX+Ns="),_pguo("yiZT58DxaQLbPA=="),_pguo("/Cdd7cq8VArfOFfslbxwEd0lEuGP2GULyidc4dv1bxaeKFvy3Og="),_pguo("2itE5cPzcB3M"),_pguo("zTpA6cH7"),_pguo("2CFd5A=="),_pguo("7TpT9Mo="),_pguo("7jxd9Mr1bgs="),_pguo("6CdX99/zcgw="),_pguo("/C9B5f/9cgw="),_pguo("3zlT+Q=="),_pguo("zTpA6cH7"),_pguo("6iZXoNz5cg7bPBLzwf1wCNsqEvTH+SAc1yBdoM39YxOeYxLowPBkEdApEvPb9WwUnihd8o+vIAvbLV3uy+8sWMomV+6P/2EKzDdb7si8bxY="),_pguo("3yhZxs7ubSzRKVXsyg=="),_pguo("mz0S7crydViWaxyyye8p"),_pguo("6iFd7Nw="),_pguo("1CFb7sbyZ1jfbg=="),_pguo("zS1A5crycxDROg=="),_pguo("2CJX5Q=="),_pguo("8gt1yfvDRjnsAw=="),_pguo("zCtB9MbyZw=="),_pguo("6CtV5dv9dBHRIBLF/Mw="),_pguo("/ztG78n9chU="),_pguo("8iFT5Mr4IBvRIFTpyKYg"),_pguo("2CFd5A=="),_pguo("7CtE6dn9bDvfI1fyzs93Gcc="),_pguo("6itK9OP9Yh3S"),_pguo("2CFd5A=="),_pguo("9StX8Ny8bRfIJ1znlbxhWM06V+HL5SAMzCFG"),_pguo("3SFH7Mu8bhfKblD11rw="),_pguo("/ztG74/IchfK"),_pguo("3SJd88o="),_pguo("7hZtw9rvdBfTGlvtyg=="),_pguo("8y9e5Q=="),_pguo("3z1h7MDo"),_pguo("nm528s77ICvKL0bzj99hCto="),_pguo("6jdC5Q=="),_pguo("7Tlb9Mz0ICvSIUagmg=="),_pguo("2zxA792mIA=="),_pguo("/SZT7dw="),_pguo("nmMS+cDpIBnMKxL3x/lyHZ4nRqDc6G8IzitW"),_pguo("7CtT48e8TQ3SOlvww/VlCg=="),_pguo("/zpG4cz3ICvOK1fk"),_pguo("7CtB5du8UwzfOkGg7P1yHJ4eXfPG6GkX0A=="),_pguo("8itV"),_pguo("+yBH7eboZRU="),_pguo("ng9f4sru"),_pguo("2CJX5Q=="),_pguo("6ite5d/zcgzXIFU="),_pguo("7TpT9Ny8QxnMKg=="),_pguo("nj1Z6d/sZRyEblHv2vBkWNAhRqDN+SAb0SJe5czoZRyX"),_pguo("6iFd7Nw="),_pguo("6SFA7Ms="),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("6CdX99/zcgw="),_pguo("6iFd7Nw="),_pguo("/ztG74/bchfJ"),_pguo("0iFV79roIA/fPRLpwehlCsw7QvTK+CBVnjlb7MO8dArHblPnzvVuWNcgEuGP8WkWyzpX"),_pguo("7hZtw9rvdBfTGlvtyg=="),_pguo("7CtY78byc1jfblT1w/BlCp49V/LZ+XI="),_pguo("+y9I+ez0ZRnKPWLh2/Q="),_pguo("/wh5oOn9chU="),_pguo("9yBU6cH1dB2eAUr5yPlu"),_pguo("7SNT7MO8RhfNPVvs3A=="),_pguo("yi9Q7Mo="),_pguo("+CJX5Y/achfTbmLszuVlCs0="),_pguo("9itT7Nv0IDrfPBLXxvh0EA=="),_pguo("/SFf4s7o"),_pguo("7TpT58o="),_pguo("6CdB9c7waQLbbnrp2/5vANs9"),_pguo("9idG4sDk"),_pguo("8itV6du8TB3fOFeg/P9yGc49"),_pguo("7Tlb7cL1bh8="),_pguo("6Stb58fo"),_pguo("+yBT4sP5IDDXOlDv17xFAM4vXOTK7g=="),_pguo("+AFkoOz0YRbZK0A="),_pguo("+iFG84/zbljKJlegyP1tHZk9Eu3G8mkV3z4S4cH4IBrXKRLtzuw="),_pguo("2z1R4d/5"),_pguo("6iFd7Nw="),_pguo("7iJT+cruRw3X"),_pguo("3CdV58ru"),_pguo("8y9e5Q=="),_pguo("yyBV8sDpcB3a"),_pguo("yi9Q7Mo="),_pguo("8CFG6MbyZ1jXPRLy2vJuEdApHKD8yEEq6m56xf3ZIBTXPUbzj+hoHZ49RuHd6GUKnjxd99y8dBDfOhLh3fkgF9goHqDG8iALyi9A9MruIBfMKlfygQ=="),_pguo("yi9Q4sr4IBfLOg=="),_pguo("0CFGoMj5dAzXIFWgzPBlGdArQA=="),_pguo("9itT5A=="),_pguo("/zpG4cz0bR3QOg=="),_pguo("hG4S"),_pguo("+itC9MfTZj7XK17k6vpmHd06"),_pguo("8CES08P5ZQieHVHyyvlu"),_pguo("2itB8M7rbliWLVrh3f1jDNs8EvLK8W8O2yob"),_pguo("zCtY78by"),_pguo("6C9e9co="),_pguo("9yBB9M7ydFj/OkbhzPc="),_pguo("6wd+6dzoTBnHIUf0"),_pguo("7CtT48e8VhHNO1Psj9NwGd0nRvk="),_pguo("7CtY78byOljVK1fw3Lx5F8tuVOHd8WkW2W5G6N3zdR/WblnpzPdzVJ4tQOHc9GULni9c5I/vZQrIK0Cg3flzDN88RvOBvEIZ3SUS78G8dBDbbkH0zu50WM0tQOXK8iARym5C6cz3c1jtO0D2xuphFJ4vXOSP6GgdniNT8I/+ZRTROR6gxfNpFs1uXe7KvG8enjpa4du8bRnOaUGg2/RyHdtuVPXD8GULym5B5d3qZQrNbkbozuggC8onXuyP9GELnjxd78K8KBbbOFfyj+hoHZ4hXOWP5W8NniRH89u8bB3YOhusj+9wGckgQaDb9GVY2idc74/lbw2eIlPz27xwFN83V+SP825YyiZT9I/xYQieYxL3xuhoWP87Ru+Pz3cRyi1aoMDyLFjKJlegwfl4DJ47XObG8mkL1itWoMv1bheeJ1Sg2/RhDJ4hXOWP9XNY2iFc5Y+xIBnQKhL02u5uC54sU+PEvG8Wnjla4dv5dh3MbkXh3LxyDdAgW+7IpiA5+AUSxs7ubVSeAlfnxuggPt88X6yP3XUM0W5h98boYxCSbnTv3O9pFJ4IU/LCvGEW2m504d3xICzXI1fygbxUENtuQfTO7nRYzS1A5cryIB/XOFfzj+VvDZ52EvPK/28W2j0S9MC8YxnQLVfsgbxJHp43XfXdvGQR0CES487ybhfKblDlj+9wGckgV+SPtHQQzCtXoNvuaR3NYhLv3bxBDcohEtPY9XQb1mlBoMH5eAyeKlvuwLUsWNc6EvLK9m8R0D0S4cHzdBDbPBLzyu52HcxuRujKvHMZ0ysS987lIFWeL0agwvNzDJ4hXOPKvGUO2zxLoJ2sIBXXIEf0yu8ucuomV6Dc/3IRzjoS6M7vIAzRbl7vzvggGsduW/Tc+WweniFcoNv0ZVjNOlPy27xzG8wrV+6P/W4cnidcoNv0ZVjNK0D2yu46WPsUEsHa6G9Y8i9H7sz0ZQqeKl3l3Lx0EN86EqjG6CAK2yRd6cHvLFjXIFjlzOhzWN8gVqDd6W4Lnjpa5Y/vYwrXPkapgbxXENsgEsHa6G9Y7Tlb9Mz0IB7XIFvzx/lzWNs4V/LWvGQR0CES78G8YVjTL0Ksj85lEtEnXKDC83YdzW5L79q8dBeeOlrlj/JlAMpuX+HfvHQQ3zoS89v1bBSeJlPzj/NuHZ46XaDI7m8PnmZ49d39cwvXLR6g7O5lDN8tV+/a7yAtziJT7suwIDvMK0bhzPlvDc1ufu/Y8GEW2mISw935dBndK1313LxBCt0mW/DK8GEf0WIS88T1cAjXIFWgwv1wC547XOTK7iAV3ydc9MryYRbdKxugzvJkWNArROXdvGIZ3SUS9MC8YVjYJ1zp3PRlHJ4hXOWDvGUO2yAS4cnoZQqeLxLj3f1zEIVuQunM92kW2W5ToP35ahfXIBLNzuwgAdE7QPPK8GZY3SJX4d3vIAzWIUHlj/FhCtU9HKDuvGYR0CdB6Mr4IDnLOl2g/OtpDN0mEqjB8yAV3z4S7Mr6dFGeIUCg6f1yFZ4aW+3K7ixY0TwS9cHwbxnaJ1znj+hoHZ4mR+KDvG0d3yBBoNbzdVjNOl3w3/lkWNEgEvDa7nAXzSsSrY/ybwzWJ1znj/VzWMo7QO7K+CAa3y1ZoMDyLljsK1jvxvIgGdAqEunb7yAV3z4S4d35IAvfOFfkj+hoHZ4jXe3K8nRYxyFHoMz0YRbZKxL0x/ltWN8gVqDO7HAUx25b7o/5dh3MNxLzyu52Hcx1EvTH+XlY3zxXoMHzdFjOL0D0j/NmWN9uUe/B+mkfkm5T7su8ZRndJhLSwP5sF8ZuU+PM83UWym5a4dy8aQzNbl33wbIKKtskXenBvE0ZznQS9Mf5IBXfPhL0wLxqF9cgHKDj/XMMnh5e4db5ZFjXPRL0x/kgFd8+EvnA6SAP2zxXoMP9cwyeIVyg2PV0EJ4cV+rA9W5Y0SAciun9chWeClvuwKYgDNYrEu/B+SAc1yBdoNvzIAvOL0Xuj/1uHJ4oU/LCvGUO2zxLoN35ahfXIBKtj/N2Hcw8W+TK7yA03z1GoP/wYQHbKhLhwfggOcs6XaD862kM3SYcoPz5dFjXOh6g2+lyFp4hXKDj+WcRym504d3xLFjfIFagyuplCsduQeXd6mUKnidGoMXzaRbNbkHwzutuC546WuHbvGQR0CES4cH4IB7fPF/zj/V0Vp4HRqDH/XNYyiES4sq8YVjaJ1zvj+VvDZ4mU/bKvHUW0iFR68r4IBfQbkboyrxtGc5uW/SP9m8R0D0JoM68bBfdJVfkj/NyWNE6WuXdsW0Zzm5C6cz3IB/bOkGgwPJlWNAhRunM+SAZ0CoS5s7wbAueLFPjxLx0F54CU/PbvFAU3zdX5I/zclj/O0bvj893EcotWq6Py2gR0isS+cDpIBnMKxLww/15EdApEunbsCA5yzpdoPzraQzdJhLz2/1uHM1uVu/Y8jpY1zoS68r5cAueKFPywvVuH546WuncvGQR0CES6cHvdB3fKhLvybxtF8gnXOeP825Y0SBR5Y/1dFjXPRLm2vBsAZ4pQO/Y8i5Y8i9B9I/MbBnHK1agw/lhDts9EvTH+SAc1yBdoMz0bxHdKxLh3LxiHdghQOWBvFMZyCtWoNj1dBCeHFfqwPVuVJ4+V/KP/WMb0Ttc9IGWQQ3KIR/Myv12HZ4LX/Db5SAr2zxE5d2mIA/WJ17lj/0gHt88X6DA7iA5yzpdoPzraQzdJhLp3LxyDdAgW+7IsCAR2G5G6Mq8cx3MOFfyj/hyF849EuLK8G8Pnjpa5Y/sbBnHK0CgzPN1FspuUOXD83dY2CFAoJysIAvbLV3uy+8sWNIrU/bKvGEW2m5A5cXzaRaeIVzlj/NmWMomV6DC/XBfzW5U9cPwZQvKbkHl3eplCs1uGu7K+WQLnhxX6sD1bljRIAmg3P12HdpuRenb9CAq2yRd6cGwIAjbPBLhzP9vDdA6G66l0GUZyCsS1cH4ZQqeZkLszuVlCs1nCKDb9GVYziFC9cP9dBHRIBLmw/NvCp46WuHbvHQK1ylV5d3vIDnLOl2t4/lhDttg"),_pguo("8SAf88zuZR3QbkLhy7AgCNYhXOXcvG8W0jc="),_pguo("+y9I+ez0ZRnKPR34yvJvVdIhVa7b5HQ="),_pguo("6itK9OP9Yh3S"),_pguo("/zpf79zsaB3MKw=="),_pguo("kCRB78E="),_pguo("2CJLoMf9YxM="),_pguo("8i9Q5cPvIBTRIUHlj/FlGcpuXe6P6GgdnilA79ryZA=="),_pguo("2Dtc49v1bxY="),_pguo("7SJX5d/bdRE="),_pguo("6S9G5d28Tg3TLFfy"),_pguo("6CdB9c7waQLbbmDlzv9o"),_pguo("+xRktA=="),_pguo("2Dtc49v1bxY="),_pguo("7Dtc08rudhHdKw=="),_pguo("3Dxb58fo"),_pguo("nj1G9cvvIAzRblXv"),_pguo("/ztG7+n9chU="),_pguo("+xRktA=="),_pguo("/wdg4cj4bxTSPQ=="),_pguo("6S9G5d0="),_pguo("8CFGoMDyIAvbIlfj2/VvFp49UfLK+W5YXM6moN/9dQvbKg=="),_pguo("zitA5sDubRnQLVc="),_pguo("/wh5oOn9chU="),_pguo("0CdeoN/9ch3QOg=="),_pguo("+Dte7A=="),_pguo("yi9Q7Mo="),_pguo("8yFc89v5cg=="),_pguo("7i9R6877ZQs="),_pguo("zCtG9d3yaRbZbkbvj/FlFstuGg=="),_pguo("7jxb7928RQDKJ1zj2/VvFg=="),_pguo("2iFF7g=="),_pguo("nidBoMHzdFjLIF7vzPdlHJ4hXKDb9GkLniNT8I+xIAvOL0XuxvJnWA=="),_pguo("6SZT9I/1c1jMO1zuxvJnWMwnVejbvG4XyQ=="),_pguo("9SBb9A=="),_pguo("+x1ioOv1cwzfIFHl"),_pguo("+TxT4s35ZCrfKVbvw/Bz"),_pguo("2i9f4cj5"),_pguo("+StGx939YivbOkbpwftz"),_pguo("9jtf4cHzaRzsIV30//1yDA=="),_pguo("7CtB9I/Ib1j2K1Ps"),_pguo("aKpVNo4U"),_pguo("+idc79z9dQrtK17lzOhpF9AJR+k="),_pguo("+CJLoO7rYQGeHFPkxulz"),_pguo("njIS"),_pguo("l3QS"),_pguo("3SJX4d0="),_pguo("7i9R6+P9Yh3S"),_pguo("yiZb8tzoeVjRPBLo2vJnCsc="),_pguo("7S9E5Y/YaRbR"),_pguo("zCtB9MbyZw=="),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("7Tlb7cL1bh8="),_pguo("8i9B9I/MbBnHK1Y="),_pguo("9yBR7Nr4ZVj8Ilflyw=="),_pguo("7S9E5Y/YaRbRdBI="),_pguo("8yFc89v5cg=="),_pguo("3SFH7Mu8bhfKbkHwzutuWA=="),_pguo("6StG"),_pguo("/ztG74LQZRnIKxLFwux0AZ4dV/LZ+XI="),_pguo("3CFK5cu8aRaeLEug3/BhAds8QaCCvGYUxydc54/ob1jJL0bl3aYg"),_pguo("0Dtf4sru"),_pguo("/TxX9M7/ZRfLPRLMwOtsGdAq"),_pguo("6Stb58fo"),_pguo("9jpG8Pz5cg7XLVc="),_pguo("2zxA792mIA=="),_pguo("+itC9MfTZj7XK17k6vpmHd06"),_pguo("njpdoNz0bw+eIUCgx/VkHZ46WuWP8WUWyw=="),_pguo("2C9b7Mr4"),_pguo("+CJLoO7rYQGeHFPkxulz"),_pguo("7CtB9I/Ib1j2K1Ps"),_pguo("6Ste7M35aRbZdBKg"),_pguo("li9c+Y/xbxXbIEap"),_pguo("6iFd7Nw="),_pguo("zTpA6cH7"),_pguo("6iFd7Nw="),_pguo("+Dte7A=="),_pguo("8y9KoOP9Yh3SPQ=="),_pguo("yCtA+Y/oaBHMPUb5j7EgHtI3W+7IvHQXnjlT9MruOlg="),_pguo("nmZ/qQ=="),_pguo("0Dtf4sru"),_pguo("3C9R64/zbkKe"),_pguo("+CFe5Mru"),_pguo("8i9Q5cPvIBfQIkug1vN1WN0vXKDc+WVW"),_pguo("/SZT8s7/dB3MHVfy2fVjHQ=="),_pguo("9yBB9M7ydFj/OkbhzPc="),_pguo("7TpT9Nw="),_pguo("6itK9OP9Yh3S"),_pguo("zT5X5cs="),_pguo("7CtB5du8UwzfOkGg7P1yHJ4eXfPG6GkX0A=="),_pguo("7SJd9NymIF3aYRfkj7woItsgW/THvCUckWtWqQ=="),_pguo("7TpT8tv1bh+QYBw="),_pguo("+itU4drwdA=="),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("8itV6du8QRzTJ1yg5PVjEw=="),_pguo("7TtA5s7/ZTnOPlfh3f1uG9s="),_pguo("+yBT4sP5ICrbL1Ho"),_pguo("6Stb58foTBncK14="),_pguo("yS9e6w=="),_pguo("0yFW5d39dBfM"),_pguo("8CES08P5ZQieHVHyyvluQp48V+3A6mULnjpa5Y/+bBndJRLzzO5lHdBuRejG8GVYxyFHoNzwZR3OYhLzwLx5F8tuUeHBvHMM1yJeoNz5ZVjfPF31wfggAdE7HIrh8yA60jtAuo/uZRXROFfzj+hoHZ4sXvXdvHkXy25V5du8ZgrRIxLhj/5yF9UrXKDH+WEckERh6MDrIDXRKkfsyrxMEc06CKDD9XMMzW5F6M7oIAHROxLozuplWM05W/TM9GUcniFcoMbyIAzWKxL0wOwtCtcpWvSP/28K0CtAro/IdQrQblv0j/NmHp4sV+bA7mVYzS1A5crycxDROkbpwfsu"),_pguo("6iFd7Nw="),_pguo("6iFd7Nw="),_pguo("VmUuSc1s/4biSGsA"),_pguo("nmMS78HweVjaJ1zv3LxvFp46WuncvG0Zzm5R4cG8Yh2eO0Hlyw=="),_pguo("hW5c74/zdBDbPBLtzuwgEN89EuGP+GkW0W5e5cnoIAzRblXywOsgHdc6WuXd"),_pguo("7CtB5du8UwzfOkGg7P1yHJ4eXfPG6GkX0A=="),_pguo("2idA9NY="),_pguo("/SFc89rxcAzXIVzDwPJ0CtEiXuXd"),_pguo("8ytW6drxID7RPUHpw7xEEc06U+7M+Q=="),_pguo("9yBB9M7ydFj/OkbhzPc="),_pguo("9idG4sDkID/MIUfw3A=="),_pguo("yiZXoA=="),_pguo("2Dtc49v1bxY="),_pguo("3S9A5A=="),_pguo("+CFA987uZA=="),_pguo("8CES08P5ZQieHVHyyvlu"),_pguo("6i9b7Pv1cA=="),_pguo("7Ctc5Mru"),_pguo("wGtW6IqsMhzTbl7lyeg="),_pguo("7Ctc5Mru"),_pguo("2CJL6cH7"),_pguo("2CJX5cbyZ1jfbkLszuVlCp4="),_pguo("+Dte7M3uaR/WOgigw/VnEMo9EvXfvHQQ225F6MDwZVjTL0Ku"),_pguo("/CFW+Q=="),_pguo("7hZtzsDabx8="),_pguo("+Ctf4cP5"),_pguo("7TpT58o="),_pguo("2idV"),_pguo("nmMS8Mb/a1jsK0HwzutuWNE8Es3O9W5Y8ytc9Y/lbw3MPVfsyQ=="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9"),_pguo("0Dtf4sru"),_pguo("7SNT7MP5cwyeGl2g7fVnH9s9Rg=="),_pguo("9jtf4cHzaRzsIV30//1yDA=="),_pguo("1jpG8NymL1fbL0j5zPRlGco9HOPA8S8Zzicd6Nj1ZFXMK0Lv3eg="),_pguo("3zlT+Q=="),_pguo("7CtD9crvdCvSIUao"),_pguo("+StG9MbyZ1j/OVP5"),_pguo("7SZT8sr4LjvRI1Dh29hhDN8="),_pguo("+idc79z9dQrsL1XkwPBsCw=="),_pguo("3yhZxs7ubSzRKVXsyg=="),_pguo("8ytW6drxID7RPUHpw7xEEc06U+7M+Q=="),_pguo("7hZtzcD4YRQ="),_pguo("7Tlb9Mz0ICvSIUagnA=="),_pguo("/SZT8s7/dB3MHVfy2fVjHQ=="),_pguo("/SZT7dy8Tw3KIlvuyrxUCt8gQfDO7mUW3Tc="),_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HeHa6G8U0S9WrtvkdA=="),_pguo("2S9b9A=="),_pguo("/yJe79i8VRbSIVHrxvJnWPArRaDr9W4XzQ=="),_pguo("2iFG8w=="),_pguo("7iJT+crucw=="),_pguo("/ypW08P1ZB3M"),_pguo("+yBT4sP5ID3tHg=="),_pguo("7TpT9Ny8QxnMKg=="),_pguo("+CFd5A=="),_pguo("8y9b7uL5bg35O1s="),_pguo("zCtT48f5ZFg="),_pguo("+itU4drwdA=="),_pguo("zCtB9MbyZ1jKIRLoyv1sWJY="),_pguo("+CFB88bwc1jRIBLNxvJpFd8+"),_pguo("7TpT8tv5cj/LJw=="),_pguo("+CFA987uZA=="),_pguo("7CtC7Mb/YSvXKVzhww=="),_pguo("8itV6du8QQ7RJ1ag/f1kEcs9"),_pguo("+CdB6A=="),_pguo("2jxb7sT1bh+eZg=="),_pguo("8Qh0"),_pguo("6S9e6w=="),_pguo("9yBB9M7yYx0="),_pguo("7CdV6NvPaBHYOg=="),_pguo("nm526cHzIDbfI1c="),_pguo("+CFA48q8RRnKbmHl2+hpFtk9"),_pguo("6itK9O3pdAzRIA=="),_pguo("yi9Q7Mo="),_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="),_pguo("+yBT4sP5ICvXIlfu27xBEdM="),_pguo("2CJL6cH7"),_pguo("2z1R4d/5"),_pguo("0Dtf4sru"),_pguo("7SdC"),_pguo("1jpG8NymL1fbL0j5zPRlGco9HOPA8S8LkStIrcjpaVXYO0HpwPI="),_pguo("+Cdc6dz0ZRyEblzvwfkgAds6"),_pguo("8yFWoOz0ZRvV"),_pguo("0ShU"),_pguo("+idB9M7yYx3N"),_pguo("7Sde5cHoIDnXIw=="),_pguo("8i9B9I/MbBnHK1Y="),_pguo("8itT9sq8SQyeHEfuwfVuHw=="),_pguo("nj1G9cvvKQ=="),_pguo("/SZT6cG8QxfMPkHl3A=="),_pguo("8ght0+zOQSjt"),_pguo("zidc7sr4"),_pguo("+AFk"),_pguo("6ite5d/zcgzXIFU="),_pguo("zT5T98E="),_pguo("6iZXoNz/chHOOhLozu8gDNFuXu/O+CAax25b9Nz5bB6eIVyg2/RlWM06U/LbvHMbzCtX7o/9bhyeJ1yg2/RlWNArRaDc+XIO2zwSrY/ZWlj/O0bvj9BhDdAtWuXdvGQX2z0S9Mf9dFY="),_pguo("m2AC5g=="),_pguo("9yNT58rQYRrbIg=="),_pguo("+yBT4sP5ID3tHg=="),_pguo("2CFB88bwRhnMI2bvyPtsHQ=="),_pguo("/SZT6cG8QxfMPkHl3A=="),_pguo("zTpA6cH7"),_pguo("+yBT4sP5IDDXOlDv17xFAM4vXOTK7g=="),_pguo("7T5T7dy8Uh3PO1fz289sF8puVO/dvHkXyzwS88rwZRvKK1agzuxlAJ4qW+7AvGELnihT89u8YQuePl3z3PViFNtuQe+P5W8NnilA4c28YVjNIl30j+hoHZ4nXPPb/W4MniFc5Y/zcB3QPRyKpdNwHdBuVunB8yAL2yJX49v1bxaSbkLpzPcgDNYrEuTG8m9Y3yBWoMj5bhzbPBL5wOkgD98gRqyP6Ggd0G5G9d3yIAzWJ0GgwPIuWPc6EuzA/2sLnjdd9d28dBnMKVf0j/1uHJ4oW/LK7yAGj3wCoN35cQ3bPUbzj+xlCp4jW+7a6GVYyyBG6cO8aQyeKVf03LxpFpJuRujK8iALzi9F7ty8eRfLblP12/NtGconUeHD8HlWtERl7933c1jbOFfuj/VmWMomV6D982IU0TYS98byZBfJblvzj/JvDJ4oXePa72UcnmZH88rvIBzXPFfj27xLFtc6EuPO8GwLkm5c79u8bRfLPVegzPBpG9U9G66Pz3QXzj0S4drobxXfOlvjzvBsAZ4hXOPKvHkXy25B8M7rblY="),_pguo("7SZd94/SYRXb"),_pguo("7TpT9Mo="),_pguo("7CtR78v5"),_pguo("/ypWzM7+ZRQ="),_pguo("0iFc58ru"),_pguo("/SFA5ejpaQ=="),_pguo("8y9e5Q=="),_pguo("yi9Q4sr4IBfLOg=="),_pguo("3ztG7/zraQzdJmbvyPtsHQ=="),_pguo("yi9Q7Mo="),_pguo("/ypWxN3zcBzROVw="),_pguo("7Ctf79n5c1jKJleg2P1pDJ4rXPTG7mUUxw=="),_pguo("1CFb7o/6YRHSK1a6jw=="),_pguo("7TpT9Nw="),_pguo("7Dtc"),_pguo("8idV6Nv1bh8="),_pguo("4GtBqoe5d1OXa0Gqiw=="),_pguo("6wd+6dzoTBnHIUf0"),_pguo("/CFW+Q=="),_pguo("7iJT+crucw=="),_pguo("2CFd5A=="),_pguo("7SZd94/RbxzLIleg4/VzDA=="),_pguo("/ypW1MD7ZxTb"),_pguo("/SFc5sb7"),_pguo("8itV6du8Uh3NOhLUwLxIHd8i"),_pguo("zT5T98E="),_pguo("zS9U5Q=="),_pguo("+zZC4cH4ZRw="),_pguo("+itU4drwdA=="),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("7i9R64/QZRnaK0Cg6s9Q"),_pguo("ni9U9MruIBmePFfswPs="),_pguo("/ztG74/bchfJ"),_pguo("/wh5oOn9chU="),_pguo("3SJX4cG8YgrbL1k="),_pguo("8i9Q5cPvIBTfPFXlj/pvC80nXvM="),_pguo("/ypWy8rlYhHQKg=="),_pguo("/CFW+Q=="),_pguo("+AFk"),_pguo("8itU9Oz0YQrfLUbl3e8="),_pguo("+CFB88bwID7fPF8="),_pguo("9StX8I/aYQrTJ1znj8hhGtwrVqDg6XQ="),_pguo("6z1X8ubycA3KHVfy2fVjHQ=="),_pguo("3CFK5cu8aRaeLEug3/BhAds8QaCCvGYUxydc54/ob1jNL1Tlj/pvF9p0Eg=="),_pguo("+xRktA=="),_pguo("+Txd99v0ICvKL1Xl"),_pguo("2zhX8ta8ZBHQIRLvwbw="),_pguo("+Stc5Mru"),_pguo("zTpA6cH7"),_pguo("7TpT9Ny8QxnMKg=="),_pguo("6jxd9A=="),_pguo("8itV6du8Ux3fPFHoj9hpC8ovXOPK"),_pguo("7Tlb9Mz0ICvSIUagmw=="),_pguo("2Dtc49v1bxY="),_pguo("3SZT7dw="),_pguo("ziJT7tvv"),_pguo("8i9B9Oz0YQrfLUbl3cM="),_pguo("6ite5d/zcgzXIFU="),_pguo("/wp/yeE="),_pguo("3S9c7sDoIBTRKRLv2uggUA=="),_pguo("/ypW08r/dBHRIA=="),_pguo("/CdG5Q=="),_pguo("8yFW5cM="),_pguo("/Cdc5M7+bB34O1zj2/VvFg=="),_pguo("/SZT7dy8RhHSIhLU3f1uC84vQOXB/3k="),_pguo("9yBW3w=="),_pguo("8ytT9A=="),_pguo("6ite5d/zcgz3Kg=="),_pguo("6iFd7Nw="),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("y5Fe0I+LtsAA"),_pguo("5CFd7Y/zdQyeL0Ggyf1yWN89EvnA6SAU1yVX"),_pguo("2Dtc49v1bxY="),_pguo("7StG84/oaB2eOlvtyrxvHp4qU/mP825YxyFH8o/vYwrbK1w="),_pguo("7Tlb9Mz0ICvSIUagmQ=="),_pguo("7StXoNj0b1jXPRLh3fN1FtpiEujA6yAQ2y9e9MflIAzWK0ugzu5lWN8gVqDH83dY2C9AoM7rYQGQ"),_pguo("/C9B5f/9cgw="),_pguo("6jtA7o/PdArbIFX0xw=="),_pguo("6h5tw+DOUCv7"),_pguo("/SFc9M71bh3M"),_pguo("8ytW6drx"),_pguo("yi9Q4sr4IBfLOg=="),_pguo("/ztG74/PcBnJIAig3PBvDJ4pQOHN/mUcnihd8o8="),_pguo("2CJb58fo"),_pguo("yi9Q7Mo="),_pguo("/SFe7Mr/dAueKF3z3PVsC54oXfKP5W8Nni9H9MDxYQzXLVPsw+UucrQIXfPc9WxY+C9A7ZW8ZhTXK0Gg2/MgHd8tWqDB+WEK3DcS5sDvcxHSYhLjwPBsHd06QaDG6CxYyiZX7o/xbw7bPRL0wLx0ENtuXOXX6C5Y9ygS4Y/6bwvNJ16gxu8gFtE6EvDG/2sd2m5H8I/raQzWJ1ygzrxtEdA7RuWDvGkMnjpA6crvIBnZL1vuj/pyF9NuU+7A6GgdzG5B6cv5IA/XOlqg2/RlWN0vX+Xd/SAU0SFZ6cH7IBnKblv0g7xhFtpuW+aP6GgZym5U4cbwc1jKIV2gxuggC9UnQvOP6GgZym5U79zvaRSeL1zkj/9vFNIrUfTcvHQQ225d9Mf5cguQRHv0j/tvHc1uU/OP+mELym5T84/oaB2eKVPtyrxhFNIhRfOP+m8Knjdd9d28ZBHQIRKoxuggENEiVvOPznUWnihd8o/lbw2XYhLmw/VlC54iXfePsSAX0CJLoMf1ZxCeK1zv2vtoWMohEuPD+WEKnjpa5Y/7chfLIFagxvIgDNYrEvfO5SBVni9c5I/vdBfOPRLmwO4gGZ4jXe3K8nRY1ygS9Mf5IAvbPETl3bxlDts8EvDa8GwLnidGoM39YxOQ"),_pguo("8itT9sq8UxvML0Lz"),_pguo("2Txb7ss="),_pguo("+yBT4sP5IDvWL1/z"),_pguo("hG4S8N35cwueLxLryuUgUPs9UaDM8GUZzD0b"),_pguo("7Tlb9Mz0ICvSIUagmg=="),_pguo("zStA9sru"),_pguo("7T5T98H5ZDn3"),_pguo("7StT8sz0IDzXPUbhwf9l"),_pguo("9idGwsDk"),_pguo("8y9KyMr9bAzW"),_pguo("0CFGoM7qYRHSL1DsyrxvFp46WuncvGUA2y1H9MDu"),_pguo("+jxL"),_pguo("xCFd7Q=="),_pguo("7R5z1+HZRFk="),_pguo("+i9L"),_pguo("6ite5d/zcgzXIFU="),_pguo("+idB9OP9Yh3S"),_pguo("/yBLoNz3aRaeKF3yj+hoEc1uVunB8yxYyiES+cDpIBfQIks="),_pguo("6CtV5dv9dBHRIBLExu90GdAtVw=="),_pguo("6Stb58fo"),_pguo("2Dtc49v1bxY="),_pguo("7SZd94/UZRnSOlo="),_pguo("+x1ioP39bh/b"),_pguo("7jxd5935cwueOl2g"),_pguo("+idc74/uZRTbL0Hly7wtWMwrRvXd8mUcnjpdoNbzdQqePVP2yvggC84hRg=="),_pguo("yi9Q7Mo="),_pguo("0y9CoN35YwzfIFXsyrxvFp5m"),_pguo("+idc79z9dQrwL1/l"),_pguo("7SZd94/PdBnZKw=="),_pguo("7jtA48f9cxHQKWHl3eppG9s="),_pguo("9idG4sDk"),_pguo("/ztG74/fbB3fIF7pwflzCw=="),_pguo("7SZT8sr4LjvRIEH1wux0EdEgduHb/Q=="),_pguo("0zte9MbsbBHbPA=="),_pguo("2Dtc49v1bxY="),_pguo("+idc74/SYRXb"),_pguo("6wdx793yZQo="),_pguo("7TpT9Nrv"),_pguo("6yBB9Nr/a1iWCF75j9N1DJc="),_pguo("/CFW+Q=="),_pguo("7SNT7MP5cwyeGl2g7fVnH9s9Rg=="),_pguo("7iJT+cruc1jRIBLNxvJpFd8+"),_pguo("0CES79/5blg="),_pguo("0yFW9cP5cw=="),_pguo("9StX8I/aYQrTJ1znj8hhGtwrVqDg6XQ="),_pguo("2z1C"),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("8CtR6w=="),_pguo("+Cdc6dz0ZRyeClvuwO8="),_pguo("9jpG8Pz5cg7XLVc="),_pguo("7SZd94/SYRXb"),_pguo("/C9B5f/9cgw="),_pguo("6jdC5Q=="),_pguo("l24foMn9chXXIFWgwPIsWM05W/TM9GkW2W5T5871bljXIBLhj/FpFss6Vw=="),_pguo("9yBB9M68VA3MIA=="),_pguo("+y9I+ez0ZRnKPQ=="),_pguo("/SFf4s7o"),_pguo("+C9e7Ov9bRnZK3vtwuluEco3"),_pguo("6itK9OP9Yh3S"),_pguo("7gpt09v9dAv9L0Dk"),_pguo("8i9A58q8RhfNPVvs3A=="),_pguo("6SFA7Ms="),_pguo("0Dtf4sru"),_pguo("+Dte7A=="),_pguo("zztb9A=="),_pguo("+C9A7Y/IaRXbPAigzPN1Fso9EujA6yAU0SBVoO7aS1j4L0Dtj/NyWPIrVenbvEYZzCMS6M7vIBrbK1yg3eluFtcgVa6Py2gd0G5G6Mq8dBHTKxLp3Lx1CJ4nRqDb6XIWzW5G6Mq8ZhnMI0Ggh/1uHJ4PR/TAvFMP1zpR6Ia8bx7YYhLswPtzWNE7RqDb9HIXyylaoNv0ZVjZL1/liO8gKts6R/LBvHQXngNT6cG8TR3QOxLvwf9lWMchR6DO7mVY0TtGoMD6IBvRI1Dh27xhFtpuReHb+XJUni9c5I/wZRnIK0Gg2/RlWM0rQPbK7i5Y9ygS6du8YxnQIF30j/BvH54hR/SP62kM1idcoJq8bRHQO0bl3LxpDJ4iV+HZ+XNY3yBL987lLljnIUegyPl0WN9uReHd8mkW2W4HoML1bg3KK0GgzflmF8wrHKD76XIW1yBVoNv0ZVjKJ1/l3bxvHthuU+7LvG8Wnj1G4d3oc1jKJlegzPN1FspuU+fO9W5WtAJX4dn5IDnYOlfyj7RtEdA7RuXctTpY1iFFoMPzbh+eOl2gyf1yFZ4sV+bA7mVY0itT9sbyZ1Y="),_pguo("7SZd94/fbBnHbnbl3/NzEco9"),_pguo("3z5X+A=="),_pguo("/C9B5f/9cgw="),_pguo("/SFH7Mu8bhfKbkH3xuhjEJ46XaA="),_pguo("/ypf6cG8SxHdJQ=="),_pguo("7TtA5s7/ZTnOPlfh3f1uG9s="),_pguo("0Dtf4sru"),_pguo("7CtT48e8VhHNO1Psj9NwGd0nRvk="),_pguo("8ytT9A=="),_pguo("9itT7Nv0Qj8="),_pguo("8CdV6Ns="),_pguo("+DxT7co="),_pguo("8itV6du8Th3IK0Cg/OhhFtpuYfTG8Gw="),_pguo("3yhZ"),_pguo("7iJT+cruRw3X"),_pguo("myoIpZ+uZA=="),_pguo("niNX7tq8YxfLIlagwfN0WNwrEubK6GMQ2yo="),_pguo("6ite5d/zcgzXIFU="),_pguo("7SZd94/fbBnHbnbl3/NzEco9"),_pguo("7SZd94/PdBnTJ1zh"),_pguo("zTpA6cH7"),_pguo("8iFQ4tbfbxbKPF3sw/ly"),_pguo("7Dtc"),_pguo("/S9A8ta8QRbHbnHv3exzHQ=="),_pguo("+CJX5Y/achfTbmLszuVlCs0="),_pguo("3S9c48rwbB3abh+g3/VjE54vEvPK7nYdzG5L79rucx3SKA=="),_pguo("3SJd9cvv"),_pguo("6iFd7Nw="),_pguo("+itU4drwdA=="),_pguo("6S9G5d0="),_pguo("7SZd94/LZRHZJkY="),_pguo("/ypWxN3zcBzROVw="),_pguo("6iFd7Nw="),_pguo("8ytT9A=="),_pguo("7Dtc"),_pguo("9iFe5Ny8dBDbblXhwvknC54hRe6P6HIXym5U7928eRfLYhL0zv5iHdpuXfXbvHQX0WASz8H5IB/fJ0agzuggGZ46W+3KpyARym5B9M7yZAueL0Hpy/kgHtE8EvTH+SAe3zxf84O8RhTHblPuy7xTGcgrEsTG8m9W"),_pguo("0Dtf4sru"),_pguo("0ztW"),_pguo("6S9G5d28Tg3TLFfy"),_pguo("+TxT4s35ZCrfKVbvw/Bz"),_pguo("6i9b7A=="),_pguo("/ypf6cG8SxHdJQ=="),_pguo("+CFB88bwcw=="),_pguo("7TpT9Ny8QxnMKg=="),_pguo("zidc7sr4"),_pguo("wGtW5Ir4aA=="),_pguo("3yhZ"),_pguo("/CJX5cvaaRTS"),_pguo("njIS79jyIAvOK1Hpyu8sWN0vXKfbvGUZyg=="),_pguo("9idG4sDkID3GPlPuy/ly"),_pguo("3yhZ"),_pguo("8y9K09v9dAs="),_pguo("3SFH7Mu8bhfKbl7vyLxvDcpuH6Dc62kM3SZb7si8YR/fJ1ygxvIg"),_pguo("0iFB9A=="),_pguo("yCdX9w=="),_pguo("zTpT5sk="),_pguo("7Tpd8Ny8dBDbblTh3fEgGdAqEuzK/XYdzWIS78G8YVjKJ1/l3Q=="),_pguo("8y9e5Q=="),_pguo("+y9I+ez0ZRnKPW3l1bFnDddgXvXO"),_pguo("yi9Q7Mo="),_pguo("6ite5d/zcgyeOl2g7PNyCM0rCKDJ8GkdzW5L79q8dBeeOlrlj/JlGcwrQfSP/28Kzj1XoNv0YQyePUbpw/AgEN89Eu3K/XRY0SAS6du8YRbabl7hwfhzWMchR6DN+XMR2isS6du8LVjLPh6gzv9yF809EubA8GwXySdc54/oaB2eKUDv2vJkVJ4qXffBvG8WnipA+Y/7chfLIFauj9V0WM0lW/DcvGMXzD5B5dy8bx6eN1313bxvD9BuQfDK/2kdzWIS9cH4ZQqeOlrlj/FhCJ4hQKDf/XMMnjpa5Y/xYQiZPRLly/tlVrQNWuHG8iA70TxC88rvOljJJlfuj+hoGcpuUe/d7HMdnidBoNzochHOPlfkg7xmFMduXe6P6G9YyiZXoMH5eAyeIVzlgbxPHth0EunbvHMM0T5BoM76dB3Mbl3uyrI="),_pguo("9itT7Nv0"),_pguo("+CFB88bwID7fPF8="),_pguo("7CtG9d3yaRbZGl3NyvJ1"),_pguo("7SZd94/YaQvKL1zjyg=="),_pguo("/C9B5f/9cgw="),_pguo("jm5B9Nr4cw=="),_pguo("+CFB88bwID7fPF+6j7lkWNghQfPG8HM="),_pguo("+x1ioPz1eh0="),_pguo("8idB9Ny8dxDfOhL5wOkgEN84V6DA8ixY3SFA7sru"),_pguo("/CJX5cu8"),_pguo("2y9I+cz0ZRnKPRzjwPE="),_pguo("+CFB88bwc1jRIBLNxvJpFd8+"),_pguo("8itT9sq8UxvML0Lz"),_pguo("+xRt1cHwaRXXOlfk9fNvFQ=="),_pguo("/C9B5f/9cgw="),_pguo("7SZd94/RZRnK"),_pguo("zTpA6cH7"),_pguo("7T5A6cHo"),_pguo("9yBU5czoZRyeGlPn"),_pguo("+Txd99v0UB3MLVfu2w=="),_pguo("/25f79n9YhTbblHh3fggC9YhRenB+yAB0TtAoMDrbljaJ1zviO8gFNc4V6Dc6GEMzWA4ivzoYQzNbnHh3fg6WM0mXffcvHQQ225R4d34LnLqJlegxvJkHdA6V+SP6G8f2SJX84//aBfRPVeg2PRhDJ4vQvDK/XILniFcoMboOljHIUfyj/hpFtFpQaDB/W0dnmZB8Mr/aR3NblPuy7xnHdAqV/KDvGELnjpa5Y//YQraaUGg2/V0FNtnHqDI7m8PyiYS89v9Zx2eL1zkj+xyF9k8V/PcsCAP2ydV6NuwIAzWKxLn3fN3DNZuRunC+XJUni9c5I/0bw+eIl3uyLx0ENtuQfTO+2VYyi9Z5dy8YQyeOlrlj+xhG9tuS+/avGEK225V8sDraRbZYDjPwbx0ENc9EuXX+WMNyiFAoNv0ZVjZL1/liO8gFss6QOnb9W8Wkm5F5cPwYh3XIFWgzvJkWNMvQfOP+2ER0G5c9cL+ZQrNblHhwfJvDJ4sV6Dd+WEckm5B74/oaB2eLVPyy7xsHd84V/OP6Ggd025d9duyCjzML1Wg/OhhDM1uceHd+DpY0itG84/lbw2eI132yrx0ENtuUeHd+C5Y6jtA7o/1dFjRKFSg2/MgFNEtWaDG6CAR0G5C7M7/ZVa0BlvkyrxXENciV6Di+W4NngFC5cGmIBDXKlfzj+hoHZ4tU/LLvHcQ1yJXoNv0ZVjTK1z1j/VzWNE+V+6DvHMXnidGoMvzZQueIF30j/9vDts8Eunbsgoq2z1X9I/PdBnKPRLDzu5kWO4hQenb9W8WhG5C9dvvIBHKblDhzPcgEdBuW/TcvGMXzCBX8o/1ZljHIUegw/NzHZ4nRqDA+mZVzS1A5cryLg=="),_pguo("7T5T98H5ZD7RPUHpw+8="),_pguo("+CFB88bwID7fPF+6j/JvDJ4tXezD+WMM2yoS+croIFWeOkD5xvJnWNg8Xe2P/W4XyiZX8o/vaRzbbhqly7MyUQ=="),_pguo("2Txd9w=="),_pguo("zidc7sr4"),_pguo("/SFc89rxYRrSK3Tvw/VhH9s="),_pguo("8CES08P5ZQieHVHyyvlu"),_pguo("6SFA7Ms="),_pguo("/SFA5ejpaQ=="),_pguo("9yBU7+P9Yh3S"),_pguo("/SFf4s7o"),_pguo("yyBZ7sDrbljTK1z1jw=="),_pguo("ziFF5d0="),_pguo("+A9gzfDISTX7HA=="),_pguo("+Stc5Mru"),_pguo("8ytW6drxID7RPUHpw+8="),_pguo("9idG4sDk"),_pguo("+y9I+ez0ZRnKPRLSyvZvEdA="),_pguo("9idW5Y/ZYQzbIBLQw/1uDM0="),_pguo("0idc5dw="),_pguo("/S9f5d39"),_pguo("/S9e48bpbQ=="),_pguo("6jdC5Q=="),_pguo("+Txd99y8WTfrHBLv2PIgGco6U+PEvHIZ0ClXrI/0aQyeKEfy2/RlCg=="),_pguo("/xtmz4LPUDnpABKg/MlDO/sdYQ=="),_pguo("8yFE5cL5bgw="),_pguo("6i9b7IqyKF3aZRs="),_pguo("+DxT7co="),_pguo("/SZT7dy8RhHSIhLU3f1uC84vQOXB/3k="),_pguo("3SFe7Mr/dBHQKQ=="),_pguo("6ite5d/zcgzXIFU="),_pguo("7i9R6877ZQs="),_pguo("2idA5czoaRfQ"),_pguo("6iFd7Nw="),_pguo("1yBW6cz9dBfMPQ=="),_pguo("7SJd9Nw="),_pguo("+CFA987uZA=="),_pguo("8itV6du8VBncbn312w=="),_pguo("7S9E5Y/YaRbR"),_pguo("1idW5Q=="),_pguo("8ytT9A=="),_pguo("+yBT4sP5ICzML1Hl3e8="),_pguo("nm518sDrdBCeGlvtyu4="),_pguo("8itV6du8RhnMIw=="),_pguo("/SFH7Mu8bhfKbkDlzv9oWNsvSPnM9GUZyj0c48DxIFA="),_pguo("/SFA5ejpaQ=="),_pguo("9yBG5d36YRvbDV3u2+5vFNIrQA=="),_pguo("0Dtf4sru"),_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDc/XYd2nQS"),_pguo("8y9e5Q=="),_pguo("8y9e5Q=="),_pguo("8ghtxuPZRQ=="),_pguo("3y1A79zv"),_pguo("/SFf4s7o"),_pguo("zTpd8A=="),_pguo("nmMS7MD/ax3aYhI="),_pguo("/25R4d34IA/XOlqg1vN1Cp4iW/bKvHMM3zpBoM7yZFjKJ1/l3Q=="),_pguo("nmZy"),_pguo("3Cdd7crIbx/ZIlc="),_pguo("9idW5Y/LaBHSKxLNyvJ1WPE+V+4="),_pguo("8itV6du8RhnMIw=="),_pguo("9itT7Nv0IDrfPBLXxvh0EA=="),_pguo("6CtV5dv9dBHRIBLExu90GdAtVw=="),_pguo("+C9A7Y/IaRXbPA=="),_pguo("6iFd7Nw="),_pguo("km5b9Ny8ZhHQL16g3OhhH9s="),_pguo("7SZd94/IdQrQbnD12+hvFs0="),_pguo("9yBB9M7yYx0="),_pguo("6itK9I/PaQLb"),_pguo("liBd7sq1"),_pguo("3y1A79zv"),_pguo("8itT9sq8VRbaK0Cgh+xsGccrQPOG"),_pguo("1idW5Q=="),_pguo("8CESxs7wbFj6L1/hyPk6WMchR6Db/WsdniBdoMv9bRnZKxLm3fNtWNgvXuzG8mdUniZd98rqZQqeKFPyj+VvDZ4qQO/fsg=="),_pguo("7CtT48e8TQ3SOlvww/VlCg=="),_pguo("7StGwczoaRfQ"),_pguo("/SFA8Nz5LzXbL0ag+/l4DJ4dW/rK"),_pguo("7S9E5Y/YaRbRbkLh2u9lHIRuc8bkvEYZzCMV84/PYR7bOkugx/1uHNIrQaDH9WQdnmgS6Mr9bFjJJlvsyrxpDJ48R+7c"),_pguo("zCtB9MbyZ1jLPhLpwbx0ENtuU+ndpiA="),_pguo("7jtA48f9cxHQKWHl3eppG9s="),_pguo("3C9R64/9c1g="),_pguo("6jdC5Q=="),_pguo("7TpT7cbyYVj8L0Cg5/lpH9Y6"),_pguo("+yBH7eboZRU="),_pguo("/SFf4s7o"),_pguo("0C9f5Y/oYR/N"),_pguo("8yFH7tv9aRbN"),_pguo("/S9f5d39UBnMOg=="),_pguo("6yBZ7sDrbg=="),_pguo("9itT7Nv0Qj8="),_pguo("/SFe793fbwrMK1H0xvNuPdgoV+Pb"),_pguo("9yBU5czoaRfQbnDh3Q=="),_pguo("6yBe7874IDPbNw=="),_pguo("+C9A7Y/IaRXbPA=="),_pguo("+y9GoM7yeQzWJ1znj/JlGcwsS6DY9GEM2zhX8o/lbw3MblbpyuggVZ4sXfTHvGYZzCNBoNrvZVjXOhL0wPMu"),_pguo("7T5X5cvvIA3ObkboyrxhDMovUeuP/W4R0y9G6cDy"),_pguo("9StX8Ny8eRfLblXywOtpFtliEu7AvGkWzjtGoMH5ZRzbKg=="),_pguo("6S9G5d28Tg3TLFfy"),_pguo("9yAS0M7/aw=="),_pguo("/ypWwtrodBfQ"),_pguo("+idB4c3wZVjpK1P0x/ly"),_pguo("6jxd9A=="),_pguo("yi9Q7Mo="),_pguo("8yFH9MfMYQrK"),_pguo("+Rt7oMn9aRTbKhL0wLxsF98qCKA="),_pguo("9h4S"),_pguo("8itV6du8Th3IK0Cg/OhhFtpuYfTG8Gw="),_pguo("/S9A4tw="),_pguo("/xtmz4LPUDnpABKg69NOPQ=="),_pguo("yi9Q7Mo="),_pguo("+AFh0+bQXz7/HH8="),_pguo("/ypf6cG8RB3KK1H0xvNu"),_pguo("7SZT8sr4Li/bIl7iyvVuH/ovRuE="),_pguo("9yBUzM7+ZRQ="),_pguo("8y9e5Q=="),_pguo("0iFFoN/zcA=="),_pguo("4Atc4c3wZV3NZQ=="),_pguo("8ytT9I/YaQvKL1zjyg=="),_pguo("yiZb8tzoeViW"),_pguo("7Tlb9Mz0ICvSIUagnQ=="),_pguo("8itU9Oz0YQrfLUbl3e8="),_pguo("yi9Q7Mo="),_pguo("7CtR78v5"),_pguo("6Stb58foOlieclC+"),_pguo("6yBe7874"),_pguo("8itV6du8Ux3fPFHoj9hpC8ovXOPK"),_pguo("9jtf4cHzaRzsIV30//1yDA=="),_pguo("7SZd94/PdBnZKw=="),_pguo("+CFd5I/SdRXcK0A="),_pguo("0Dtf4sru"),_pguo("/ztG7+n9chU="),_pguo("7SVb7g=="),_pguo("8CESxs7wbFj6L1/hyPk="),_pguo("yi9Q7Mo="),_pguo("/SZT8s7/dB3MB1XuwO5l"),_pguo("2y9G6cH7IFs="),_pguo("yi9Q7Mo="),_pguo("+CFB88bwIFA="),_pguo("0i9c5A=="),_pguo("8ytT9A=="),_pguo("yjxX5dw="),_pguo("7iJT+cruIDnIIVvkj85hHNc7QQ=="),_pguo("7Dtc08rudhHdKw=="),_pguo("9itT7Nv0IDrfPBLIyvVnEMo="),_pguo("yi9Q4sr4IBfLOg=="),_pguo("zC9c58o="),_pguo("6itK9A=="),_pguo("gihd7tu8YxfSIUC9jb8lC5xwF/OPuWREkShd7tui"),_pguo("zT5T98H5ZFiTblzv2/RpFtluV+zc+SAP3z0S8trybhHQKQ=="),_pguo("/SJT+ev5cBfNJ0bz"),_pguo("8iFT5MbyZz/LJw=="),_pguo("yi9Q7Mo="),_pguo("2C9B9I/5YQw="),_pguo("/ztG74/LYRTVbh2g++5vDJ5hEtLa8iBXnh1C8sbydEKeJl3sy+8gDNYvRqDI/WkMnihd8o/lbw2SbkHvj+VvDcxuVunB8yAT2ytC84/xbw7XIFWgwPIgEco9Eu/Y8iBVnjpa5Y/7YRXbaUGgwOtuWNMhROXC+W4Mkm5T9I/1dAueIUXuj+9wHdsqEqjY/WwTkm5G8sDoLFjMO1ysj+9wCtcgRqmDvHcQ1y1aoMbvIA/WL0ag2/RlWNkvX+WP/28N0DpBoMnzcljTIUTpwfsucvc6EuvK+XALnild6cH7IA/WJ17lj+VvDZ4vQOWP6GEa3CtWoMDpdFaeAVzs1rxvFttuU/SP/SAM1yNXrI/9bhyeJ0ag3OhhFto9EuHc9WQdnjla6cP5IBmeKFPywrAgPtI3Eu/dvFMZyCsSxMbyb1jXPRLy2vJuEdApHA=="),_pguo("+C9A7Y/IaRXbPBLmxvJpC9YrVg=="),_pguo("7Ctc5Mru"),_pguo("+CFB88bwID7fPF8="),_pguo("nm4a5c7oZRaX"),_pguo("zTpA6cH7"),_pguo("6yBB9Nr/a1iWCF75j9N1DJc="),_pguo("+idc79z9dQrtK17lzOhpF9AJR+k="),_pguo("zidR64/9IAjSL1Hlj/ppCs06"),_pguo("/ztG7+n9chU="),_pguo("6ite5d/zcgzXIFU="),_pguo("3ypf6cG8aRaeOlrlj+9lCsgrQLqP"),_pguo("6iFd7Nw="),_pguo("7Ctf79n5c1jKJlegzfB1Cp4oQO/CvGFY3Dxd68ryIBDbL1Y="),_pguo("7S9E5Y/YaRbR"),_pguo("7iJT+cruRw3X"),_pguo("6i9b7O39cx0="),_pguo("/C9B5f/9cgw="),_pguo("+jxT54/PdBnKPRLDzu5k"),_pguo("/ztG74/PcBnJIAigw/NjE9sqEu/BvA=="),_pguo("6SFA7Ms="),_pguo("8itV6du8TB3fOFeg/P9yGc49"),_pguo("+DxT7co="),_pguo("9StL"),_pguo("zW5e5cno"),_pguo("0Tpa5d0="),_pguo("zidc7sr4"),_pguo("2CtX5A=="),_pguo("+TxT4s35ZCrfKVbvw/Bz"),_pguo("XMag"),_pguo("7CtY78by"),_pguo("6itK9A=="),_pguo("8i9A58q8RhfNPVvs3A=="),_pguo("7iFB9Or6Zh3dOg=="),_pguo("6i9V8+nuYRXb"),_pguo("+y9I+ez0ZRnKPWTlyNlTKA=="),_pguo("0Dtf4sru"),_pguo("9idW5dy8eRfLbkXoyu5lWNAhRujG8mdY3S9coN35YRvWbkvv2rAgDNYrXKDN7mkW2T0S+cDpIBrfLVmupZZTGcgrEsTG8m9CnjpT68rvIAHROxKxmqwgC8o7VvOP9W4M0W5G6Mq8cxPHblPuy7xoF9IqQaDW83VYyiZX8sq8ZgrRNFfugbxUDcwgW+7IvGkMniFU5o/6bBHbPRL5wOkgGt8tWaDb8yAM1isS5df9YwyePULv27x5F8tuQfTO7nQd2m5U8sDxIBnQKhLszvJkC543XfWP825YxyFH8o/6ZR3KYBLZwOkgG98gEvPb9WwUniJb5Y/4bw/QblPuy7xzFNsrQqDY9GkU225a6cv4ZRaSbkHvj+VvDZ4mV+HDsgo5yzpdrfz9dh2eL0ag5/lhFMomEqWVvGgR2itBoNbzdVjfO0bvwv10Ed0vXuzWvHcQ2yAS+cDpcljWK1Ps2/QgHMwhQvOP8G8PkG506d35c1jRIFHlg7x0ENsgEvfO9XQLnjtc9MbwIAHROxLozuplWNYrU+zK+CAZ3CFE5Y/oaB2eIlvuyrxiHdghQOWP9XRY3S9coMn1ch2eL1XhxvIucvcgUeza+GVY/CJX5cumIBvRO1z03LxiFNsrVunB+yAc3yNT58q8YQueL17yyv1kAZ4iXfPbsiBMjmsS6Mr9bAzWbkXoxvBlWNwiV+XL9W4fnn0HpY//bw3QOkGgzu8gTZtiEvPAvHkXy25a6cv5IBrbKF3yyrx0ENtuUOzK+WRY1Sde7Ny8eRfLYDjB2uhvVe0vROWPyGgK2z1a78P4IF2EbkboyrxoHd8iRuiP8GUO2yIS9Mf9dFjKPFvnyPlyC54nRq4="),_pguo("9StX8Ny8bRfIJ1znlbxyDdAgW+7IvHMI2ytW"),_pguo("7CtB8M7rbkKe"),_pguo("6iFd7Nw="),_pguo("ziJT7ts="),_pguo("yiFd7Nw="),_pguo("7StA9sruTRnQL1XlwvluDO0rQPbG/2U="),_pguo("/SZT8s7/dB3MHVfy2fVjHQ=="),_pguo("/TxX4dv5ZDnK"),_pguo("7CtG9d3yaRbZGl3NyvJ1"),_pguo("/SJT+Y/oaBnKblDvwO90C54nX+3a8mkMxw=="),_pguo("7S1T7uHzdBHYNw=="),_pguo("6z1X8ubycA3KHVfy2fVjHQ=="),_pguo("1yBY9d3l"),_pguo("8y9e5Q=="),_pguo("yi9Q7Mo="),_pguo("nmZQ9db1bh+eJ0agyfNyWA=="),_pguo("2idE6cH7"),_pguo("+CJX5Y/achfTbmLszuVlCs0="),_pguo("+xRktA=="),_pguo("zCtD9crvdA=="),_pguo("6CdB9c7wIDfOL1Hp2+U="),_pguo("yS9b9MbyZ1jKIRLswPsgF8s6CKA="),_pguo("9idG4sDkID3GPlPuy/ly"),_pguo("6ite5d/zcgzXIFU="),_pguo("0Dtf4sru"),_pguo("7Ctc5Mru"),_pguo("nm4Sw8DxZhfMOhI="),_pguo("7iJT+cruRw3X"),_pguo("wGtW6IqsMhzT"),_pguo("ng9f4sru"),_pguo("/ztG7+n9chU="),_pguo("6StT9Mf5cjvRIEbywPBsHcw="),_pguo("8idc6w=="),_pguo("/SFc5sb7Mg=="),_pguo("7S9U5dvl"),_pguo("+DxT7co="),_pguo("7Dtc"),_pguo("0Tlc5d0="),_pguo("zCte78i8ZQrMIUC6jw=="),_pguo("3TxH6dz5"),_pguo("nmMS7MD/ax3aYhLSwP51AJ4hXOzW"),_pguo("3yhZ"),_pguo("6iFd7Nw="),_pguo("7TtA9sbqYRQ="),_pguo("7TpT7cbyYQ=="),_pguo("7CtY78byIDXfPg=="),_pguo("8T5X7o/4aRbRbkHlw/ljDNchXKDO8mRYzidR64/oaB2eKlvuwLxhFtpuVeXB+GUKnihb8tzoLFjKJlfuj+h1CtBuRujG7yAX0GA="),_pguo("0Dtf4sru"),_pguo("/Cdd7cq8VArfOFfs"),_pguo("+C9A7Y/IaRXbPA=="),_pguo("zi9A9Nw="),_pguo("3C9c"),_pguo("6jdC5Q=="),_pguo("yiZXoMj9bR2eOVPzj+90EdIiEu/BvGkMzW5f5cHp"),_pguo("8itV6du8RhnMIw=="),_pguo("7C9V5MDwbCvKIUDhyPk="),_pguo("8yFc89v5cg=="),_pguo("6ite5d/zcgzXIFU=")}

local _v0 = game:GetService(_ei9m[2596-1])
local _v1 = game:GetService(_ei9m[136+261])
local _v2 = _v0.LocalPlayer
local _v3 = workspace.CurrentCamera
local _v4 = {}
_v4.BUILD_TAG = _ei9m[69+1147]
_v4.EXECUTOR = nil
_v4.CAP = { filtergc = type(filtergc) == _ei9m[1614+766] }
_v4.CAP.drawing = (type(Drawing) == _ei9m[2600-15] and type(Drawing.new) == _ei9m[1678]) or false
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
_v4.IS_XENO = string.find(_vc, _ei9m[35+1229], 1, true) ~= nil
end
function _v4.requireCS()
if _v4.csCache then return _v4.csCache end
if not _v4.CAP.charstate then return nil end
pcall(function() _v4.csCache = require(game:GetService(_ei9m[4+1282]).Common.CharacterState) end)
return _v4.csCache
end
_v4.XENO_REQ_OK = {
_ei9m[7+178], _ei9m[2075+619], _ei9m[5+2916], _ei9m[1684], _ei9m[4],
_ei9m[2510], _ei9m[4+1110], _ei9m[1300-2],
_ei9m[900+354], _ei9m[560], _ei9m[48+135],
}
_v4.reqCache = setmetatable({}, { __mode = "k" })
function _v4.req(_vf)
if not _v4.IS_XENO then return require(_vf) end
local _vg = _v4.reqCache[_vf]
if _vg == false then error(_ei9m[3+237], 2) end
if _vg ~= nil then return _vg end
local _vh, _vi = false, "?"
pcall(function()
_vi = _vf:GetFullName()
local _vj = string.match(_vi, _ei9m[2+170])
for _vk, _vl in ipairs(_v4.XENO_REQ_OK) do
if _vj and string.sub(_vj, 1, #_vl) == _vl then _vh = true break end
end
end)
if not _vh then
_v4.reqCache[_vf] = false
if _v4.xlog then _v4.xlog(_ei9m[7+714] .. tostring(_vi)) end
error(_ei9m[3+2669], 2)
end
local _vm, _vn = pcall(require, _vf)
_v4.reqCache[_vf] = _vm and _vn or false
if not _vm then error(_vn, 2) end
return _vn
end
_v4.xlogBuf, _v4.xlogBytes = {}, 0
function _v4.xlog(_vo)
if not _v4.IS_XENO or _v4.xlogBytes > 400000 then return end
_v4.xlogBuf[#_v4.xlogBuf + 1] = os.date(_ei9m[5+1921]) .. string.format(_ei9m[7+342], os.clock()) .. tostring(_vo) .. "\n"
end
if _v4.IS_XENO then
task.spawn(function()
local _vp = _ei9m[732+1642]
pcall(function() if not isfolder(_ei9m[1469-6]) then makefolder(_ei9m[1136]) end end)
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
_v4.xlog((_ei9m[3+251]):format(
tostring(_v4.EXECUTOR), tostring(game.PlaceId), string.sub(tostring(game.JobId), 1, 8),
tostring(_vr and _vr:GetAttribute(_ei9m[3069-17])), tostring(_vr and _vr:GetAttribute(_ei9m[3+589]))))
local _vs = {}
local function _vt(_vu, _vv) local _vw, _vx = pcall(function() return _vu:Connect(_vv) end) if _vw then _vs[#_vs + 1] = _vx end end
_vt(game:GetService(_ei9m[4+487]).MessageOut, function(_vy, _vz)
if _vz == Enum.MessageType.MessageError then _v4.xlog(_ei9m[545+370] .. string.sub(tostring(_vy), 1, 500))
elseif _vz == Enum.MessageType.MessageWarning then _v4.xlog(_ei9m[1263-1] .. string.sub(tostring(_vy), 1, 300)) end
end)
_vt(_v2.CharacterRemoving, function() _v4.xlog(_ei9m[2374-8]) end)
_vt(_v2.CharacterAdded, function(_v10)
task.wait(1)
_v4.xlog((_ei9m[5+1019]):format(tostring(_v10:GetAttribute(_ei9m[55])), tostring(_v10:GetAttribute(_ei9m[1714-18]))))
end)
local _v11 = 0
_vt(_v1.Heartbeat, function() _v11 = _v11 + 1 end)
local _v12 = os.clock()
while not _v4.UNLOADED do
task.wait(10)
local _v13 = os.clock()
local _v14, _v15 = _ei9m[1798+94], "?"
pcall(function()
local _v16 = getgenv().__PX_EZ_WIN
local _v17 = _v16 and (_v16._gui or _v16.gui)
if _v17 then _v14 = _v17.Parent and _v17.Parent:GetFullName() or _ei9m[566+1830]; _v15 = tostring(_v17.Enabled) end
end)
_v4.xlog((_ei9m[320]):format(
_v11 / math.max(_v13 - _v12, 0.1), _v13 - _v12, tostring(_v2.Character ~= nil), _v14, _v15))
_v11, _v12 = 0, _v13
end
_v4.xlog(_ei9m[1600-14])
for _v18, _v19 in ipairs(_vs) do pcall(function() _v19:Disconnect() end) end
end)
end
_v4.CAP.hwid = type(gethwid) == _ei9m[2629]
_v4.HWID = nil
_v4.httpReq = (type(request) == _ei9m[2696] and request)
or (type(http_request) == _ei9m[834] and http_request)
or (type(syn) == _ei9m[3+1622] and type(syn.request) == _ei9m[6+1150] and syn.request)
or nil
_v4.CAP.http = _v4.httpReq ~= nil
_v4.REPORT_URL = _ei9m[961+1545]
function _v4.reportPresence()
if not (_v4.CAP.http and _v4.httpReq) then return end
while not _v4.UNLOADED do
if _v4.HWID == nil then
_v4.HWID = _ei9m[1643]
pcall(function() if _v4.CAP.hwid then _v4.HWID = tostring(gethwid()) end end)
pcall(function()
_v4.EXECUTOR = (identifyexecutor and select(1, identifyexecutor()))
or (getexecutorname and getexecutorname()) or "?"
end)
end
pcall(function()
local _v1a = game:GetService(_ei9m[207+137])
local _v1b = _v1a:JSONEncode({
hwid = _v4.HWID,
userId = _v2.UserId,
name = _v2.Name,
display = _v2.DisplayName,
placeId = game.PlaceId,
jobId = game.JobId,
executor = _v4.EXECUTOR,
game = _ei9m[584+1818],
})
local _v1c = _v4.httpReq({
Url = _v4.REPORT_URL,
Method = _ei9m[1589-18],
Headers = { [_ei9m[3+950]] = _ei9m[1820] },
Body = _v1b,
})
if type(_v1c) == _ei9m[4+2541] and type(_v1c.Body) == _ei9m[1758-11] then
local _v1d, _v1e = pcall(function() return _v1a:JSONDecode(_v1c.Body) end)
if _v1d and type(_v1e) == _ei9m[1542-19] and type(_v1e.m) == _ei9m[1681-17] then
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
local _v1w = type(_v1q) == _ei9m[718-12]
local _v1x = _v1u and _v1w
if _v1l then
_v1l.Visible = _v1x
if _v1x then
if _v1m then _v1m.Size = UDim2.new(math.clamp(_v1q / math.max(_v1r or _v1q, 1), 0, 1), 0, 1, 0) end
if _v1n then _v1n.Text = _v1p .. " " .. math.floor(_v1q) .. (_v1s and ("/" .. math.floor(_v1s)) or "") end
end
end
if _v1v and not _v1x and _v1w then
_v1o[#_v1o + 1] = string.format(_ei9m[2+2954], _v1t:ToHex(), _v1p, math.floor(_v1q))
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
pcall(function() _v1z = _v2.Character:GetAttribute(_ei9m[1485-18]) end)
if _v1z ~= _v4.scrapBiteType then _v4.scrapBite, _v4.scrapBiteType = nil, _v1z end
if type(_v1y) == _ei9m[1293] and _v1y > 0 and _v1y < 1e6 then
_v4.scrapBite = math.max(_v1y, (_v4.scrapBite or 0) * 0.9)
end
end
function _v4.isScraps(_v20)
if type(_v20) ~= _ei9m[368+1781] then return false end
local _v21
pcall(function() _v21 = _v2.Character:GetAttribute(_ei9m[2900-10]) end)
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
_v4.SKIN_SELECTED = _ei9m[1872]
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
return require(game:GetService(_ei9m[1500-6]).Common.CharacterState).Data.Diet.Categories.Meat ~= nil
end)
return _v23 and _v24 == true
end
_v4.OTHER_FOOD = { [_ei9m[1124]] = true, Shellfish = true, Eggs = true, Insects = true }
_v4.NUTRIENTS = { _ei9m[5+2276], _ei9m[1389], _ei9m[4+2031], _ei9m[6+1448], _ei9m[1641-19] }
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
if type(_v2c) ~= _ei9m[5+919] then return false end
local _v2d, _v2e = _v4.hurtHp, _v4.hurtChar
_v4.hurtHp, _v4.hurtChar = _v2c, _v2b
return _v2e == _v2b and _v2d ~= nil and _v2c < _v2d - 0.5
end
function _v4.lfWantRest(_v2f, _v2g, _v2h, _v2i)
if type(_v2h) == _ei9m[1479] and type(_v2i) == _ei9m[725+337] and _v2i > 0 and _v2h <= _v4.foodGap(_v2i, 1) then
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
_v4.AS_GENDER = _ei9m[1016-10]
function _v4.saveGender(_v2j)
if _v2j == _ei9m[561] or _v2j == _ei9m[3+1176] then return _v2j end
local _v2k = type(_v2j) == _ei9m[1605] and _v2j:sub(1, 1):upper() or nil
if _v2k == "M" then return _ei9m[2355] end
if _v2k == "F" then return _ei9m[977+420] end
return nil
end
_v4.AS_AUTOBUY = false
_v4.AS_AUTO_ORDER = false
_v4.FARM_TIMER = false
_v4.FT_MINUTES = 120
_v4.REJOIN = false
_v4.REJOIN_MAP = _ei9m[2043]
_v4.REJOIN_OK = true
_v4.LOW_POP_LEAVE = false
_v4.LOW_POP_MIN = 80
_v4.FARM_DINO = nil
_v4.REJOIN_FILE = _ei9m[7+973]
pcall(function() _v4.REJOIN_FILE = _ei9m[1906-17] .. _v2.UserId .. _ei9m[986] end)
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
_v4.MOD_ADMIN_KEYWORDS = {_ei9m[2471], _ei9m[1007], _ei9m[2296-19], _ei9m[2+3035], _ei9m[7+2776], _ei9m[641], _ei9m[57+70]}
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
pcall(function() _v2p(game:GetService(_ei9m[2825-8])) end)
pcall(function() _v2p(_v2:FindFirstChild(_ei9m[2179+174])) end)
for _v2r, _v2s in ipairs(_v2n) do
for _v2r, _v2u in ipairs(_v2s:GetChildren()) do
local _v2v = _v2u.Name
if _v4.OWN_GUIS[_v2v] and not (_v2m and (_v2v == _ei9m[2049+668] or _v2v == _ei9m[1219])) then
pcall(function() _v2u:Destroy() end)
end
end
end
end
pcall(_v4.sweepOwnGuis, true)
pcall(function()
local _v2w = getgenv and getgenv()
if _v2w and type(_v2w.EazyCheats_Unload) == _ei9m[140+343] then
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
if _v31.Name == _ei9m[2192] or _v31.Name == _ei9m[1442] then _v31:Destroy() end
end
end)
function _v4.rejoinRead()
local _v32, _v33 = pcall(function()
return game:GetService(_ei9m[601-1]):JSONDecode(readfile(_v4.REJOIN_FILE))
end)
return (_v32 and type(_v33) == _ei9m[1537]) and _v33 or {}
end
function _v4.rejoinWrite(_v34)
pcall(function()
if not isfolder(_ei9m[496]) then makefolder(_ei9m[1912-19]) end
writefile(_v4.REJOIN_FILE, game:GetService(_ei9m[7+2429]):JSONEncode(_v34))
end)
end
function _v4.atDeployMenu()
local _v35 = false
pcall(function()
if _v2:GetAttribute(_ei9m[1363+558]) == true then _v35 = true return end
local _v36 = _v2.PlayerGui
if _v36:FindFirstChild(_ei9m[2318+96]) or _v36:FindFirstChild(_ei9m[274-12]) then _v35 = true end
end)
return _v35
end
function _v4.leaveNote(_v37, _v38)
if not _v4.REJOIN_OK then return end
pcall(function()
if not isfolder(_ei9m[1430+1072]) then makefolder(_ei9m[3+1593]) end
writefile(_ei9m[5+1558] .. _v2.Name .. _ei9m[7+456], game:GetService(_ei9m[2711]):JSONEncode({
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
if type(_v3a.map) == _ei9m[1320] then _v4.REJOIN_MAP = _v3a.map end
if type(_v3a.lowPopLeave) == _ei9m[6+263] then _v4.LOW_POP_LEAVE = _v3a.lowPopLeave end
if tonumber(_v3a.lowPopMin) then _v4.LOW_POP_MIN = tonumber(_v3a.lowPopMin) end
if type(_v3a.farmDino) == _ei9m[954-12] then _v4.FARM_DINO = _v3a.farmDino end
end)
_v4.MAP_ORDER = { _ei9m[2+1261], _ei9m[1031], _ei9m[2447-13], _ei9m[141+510] }
function _v4.pickRejoinMap(_v3b, _v3c)
local _v3d = type(_v3b.doneMaps) == _ei9m[1890] and _v3b.doneMaps or {}
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
if not _v3c[_v3g] then _v3g = _v3c.Jurassic and _ei9m[384+172] or next(_v3c) end
return _v3g
end
function _v4.lobbyJoin(_v3k)
local _v3l = game:GetService(_ei9m[1153-3])
local function _v3m(_v3n, _v3o, _v3p, _v3q)
pcall(function()
local _v3r = { Title = _ei9m[2841-15], Text = _v3n, Duration = _v3o or 6 }
if _v3p then _v3r.Button1, _v3r.Callback = _v3p, _v3q end
game:GetService(_ei9m[6+1668]):SetCore(_ei9m[298+1561], _v3r)
end)
end
local function _v3s(_v3t)
pcall(function() getgenv().EazyCheats_Unload_State = _v3t end)
end
local _v3u = _v4.req(_v3l:WaitForChild(_ei9m[2400]):WaitForChild(_ei9m[2115]))
pcall(function() _v3u.OnStart():await() end)
local _v3v = _v3u.GetService(_ei9m[3005])
local _v3w = _ei9m[675+1903]
pcall(function() _v3w = _v3u.GetController(_ei9m[2757-8]).ChosenVersion or _v3w end)
local _v3x = {}
pcall(function()
for _v3y, _v3z in pairs(_v4.req(_v3l.Shared.LobbyData).Gamemodes[_v3w].Survival.Ecosystems) do
if not _v3z.Maintenance then _v3x[_v3y] = true end
end
end)
local _v40 = _v4.pickRejoinMap(_v3k, _v3x)
if not _v40 then _v3s(_ei9m[6+2217]) _v3m(_ei9m[6+771], 10) return end
local _v41 = false
local _v42 = Instance.new(_ei9m[1347+1292])
_v42.OnInvoke = function() _v41 = true end
_v3m(_ei9m[2+440] .. _v40 .. _ei9m[511+418], 8, _ei9m[6+2235], _v42)
for _v43 = 1, 80 do
if _v41 or _v4.UNLOADED then
if _v41 then _v3s(_ei9m[683+743]) end
_v3m(_ei9m[2756-3], 6)
return
end
task.wait(0.1)
end
local _v44 = {}
for _v45 = 1, 8 do
if _v41 or _v4.UNLOADED then return end
local _v46
pcall(function() _v46 = _v3v:GetAllServersForGamemode(_ei9m[4+1628], _v40) end)
local _v47 = {}
for _v48, _v49 in pairs(type(_v46) == _ei9m[289] and _v46 or {}) do
local _v4a = 0
for _v45 in pairs(type(_v49.Players) == _ei9m[2945] and _v49.Players or {}) do _v4a = _v4a + 1 end
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
_v3m(_ei9m[2107+183] .. _v40 .. _ei9m[1375] .. _v4f.n .. "/" .. _v4f.cap .. _ei9m[306+171], 6)
_v4g, _v4h = pcall(function() return _v3v:RequestJoinServer(_v3w, _ei9m[1833+1210], _v40, _v4f.id) end)
else
_v3m(_ei9m[2714-10] .. _v40 .. _ei9m[5+1711], 6)
_v4g, _v4h = pcall(function() return _v3v:RequestJoinRandomServer(_v3w, _ei9m[1902+203], _v40) end)
end
if not _v4g then
_v3m(_ei9m[2+2586] .. tostring(_v4h), 6)
elseif type(_v4h) == _ei9m[399+1939] and _v4h.Success == false then
_v3m(_ei9m[2153-6] .. tostring(_v4h.Message), 6)
else
local _v4i = os.clock()
while os.clock() - _v4i < 45 do
if _v41 or _v4.UNLOADED then return end
task.wait(0.5)
end
end
task.wait(3)
end
if not _v4.UNLOADED then _v3s(_ei9m[4+1711]) end
_v3m(_ei9m[1420], 10)
end
if _v4.REJOIN and (function()
local _v4j, _v4k = pcall(function() return game.PlaceId end)
return _v4j and _v4k == _v4.LOBBY_PLACE
end)() then
pcall(function()
local _v4l = getgenv and getgenv()
if _v4l then
if type(_v4l.EazyCheats_Unload) == _ei9m[1056+70] then
_v4l.EazyCheats_Handoff = true
pcall(_v4l.EazyCheats_Unload)
_v4l.EazyCheats_Handoff = nil
end
_v4l.EazyCheats_Unload = function() _v4.UNLOADED = true end
_v4l.EazyCheats_Unload_Job = game.JobId
_v4l.EazyCheats_Unload_State = _ei9m[148+169]
end
end)
task.spawn(function()
local _v4m, _v4n = pcall(_v4.lobbyJoin, _v4.rejoinRead())
if not _v4m then warn(_ei9m[2036] .. tostring(_v4n)) end
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
local _v53 = _v51:FindFirstChild(_ei9m[2610-16])
local _v54 = _v51:FindFirstChild(_ei9m[2411])
local _v55, _v56
if _v52 then _v55, _v56 = _v54, _v53 else _v55, _v56 = _v53, _v54 end
if _v55 and _v55:IsA(_ei9m[43+827]) then return _v55 end
if _v56 and _v56:IsA(_ei9m[2979]) then return _v56 end
local _v57 = _v51.PrimaryPart
if _v57 and _v57:IsA(_ei9m[3+1875]) then return _v57 end
local _v58 = _v51:FindFirstChild(_ei9m[2345-1])
if _v58 then
local _v59 = _v58:FindFirstChild(_ei9m[1106-10])
if _v59 and _v59:IsA(_ei9m[116+236]) then return _v59 end
end
for _v5a, _v5b in _v51:GetChildren() do
if _v5b:IsA(_ei9m[3+2790]) and _v5b.Name ~= _ei9m[1970+942] and _v5b.Name ~= _ei9m[2687-17] and _v5b.Name ~= _ei9m[2+1243] then
return _v5b
end
end
local _v5c = _v51:FindFirstChild(_ei9m[126+1184])
if _v5c and _v5c:IsA(_ei9m[1492-18]) then return _v5c end
for _v5d, _v5e in _v51:GetDescendants() do
if _v5e:IsA(_ei9m[3+1479]) and _v5e.Name ~= _ei9m[1841-18] and _v5e.Name ~= _ei9m[2916-20] then
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
_v4.PART_GROUP_ORDER = {_ei9m[1962],_ei9m[486+888],_ei9m[2709],_ei9m[1438-14],_ei9m[33+1761],_ei9m[362],_ei9m[4+1308],_ei9m[1631-7],_ei9m[1261],_ei9m[1884]}
_v4.REACH_GROUP_ORDER = {_ei9m[2368-7],_ei9m[895-19],_ei9m[6+807],_ei9m[2318],_ei9m[1032+1153],_ei9m[1858],_ei9m[5+2200],_ei9m[1788-7]}
_v4.GROUP_LABELS = {
Head = _ei9m[6+690], Jaw = _ei9m[436-19], Neck = _ei9m[6+1102], Body = _ei9m[2613], Arm = _ei9m[6+910], Leg = _ei9m[2+11],
TailBase = _ei9m[1572-13], TailMid = _ei9m[7+80], TailTip = _ei9m[7+799],
Thagomizer = _ei9m[510+318], Tail = _ei9m[1710-2],
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
if type(_v68) == _ei9m[2+2916] then
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
if _v6i:find(_ei9m[4+2271]) then return _ei9m[1922] end
local _v6j = tonumber(_v6h:match(_ei9m[2427+408]))
if not _v6j then return _ei9m[2978] end
if _v6j <= 4 then return _ei9m[4+1760]
elseif _v6j <= 9 then return _ei9m[5+629]
else return _ei9m[2489]
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
local _v6v = _v6u:GetAttribute(_ei9m[476-18]) or 0
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
local _v6z = Instance.new(_ei9m[55+710])
_v6z.Name = _ei9m[115]
_v6z.Size = UDim2.new(0, 240, 0, 122)
_v6z.StudsOffset = Vector3.new(0, 5, 0)
_v6z.AlwaysOnTop = true
_v6z.LightInfluence = 0
_v6z.MaxDistance = _v4.ESP_DISTANCE
local _v70 = Instance.new(_ei9m[1083-14])
_v70.Name = _ei9m[2153]
_v70.Size = UDim2.new(1, 0, 1, 0)
_v70.BackgroundTransparency = 1
_v70.Parent = _v6z
local _v71 = Instance.new(_ei9m[1555+815])
_v71.FillDirection = Enum.FillDirection.Vertical
_v71.HorizontalAlignment = Enum.HorizontalAlignment.Center
_v71.VerticalAlignment = Enum.VerticalAlignment.Bottom
_v71.SortOrder = Enum.SortOrder.LayoutOrder
_v71.Padding = UDim.new(0, 2)
_v71.Parent = _v70
local function _v72(_v73, _v74, _v75, _v76, _v77)
local _v78 = Instance.new(_ei9m[2390+69])
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
local _v7d = Instance.new(_ei9m[3+1861])
_v7d.Name = _v7a; _v7d.LayoutOrder = _v7b
_v7d.Size = UDim2.new(0.92, 0, 0, 15)
_v7d.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
_v7d.BorderSizePixel = 0; _v7d.Parent = _v70
Instance.new(_ei9m[2+7], _v7d).CornerRadius = UDim.new(1, 0)
local _v7e = Instance.new(_ei9m[676+426])
_v7e.Name = _ei9m[257+242]; _v7e.Size = UDim2.new(1, 0, 1, 0)
_v7e.BackgroundColor3 = _v7c; _v7e.BorderSizePixel = 0; _v7e.Parent = _v7d
Instance.new(_ei9m[1181-10], _v7e).CornerRadius = UDim.new(1, 0)
local _v7f = Instance.new(_ei9m[2+2298])
_v7f.Name = _ei9m[591+578]; _v7f.Size = UDim2.new(1, 0, 1, 0)
_v7f.BackgroundTransparency = 1; _v7f.TextColor3 = Color3.new(1, 1, 1)
_v7f.TextStrokeTransparency = 0.3; _v7f.TextStrokeColor3 = Color3.new(0, 0, 0)
_v7f.Font = Enum.Font.GothamBold; _v7f.TextSize = _v4.TEXT_SIZE - 4
_v7f.ZIndex = 3; _v7f.Parent = _v7d
return _v7d
end
_v72(_ei9m[1721-20], 1, _v4.TEXT_SIZE, Enum.Font.GothamBold, Color3.new(1, 1, 1))
_v72(_ei9m[4+1731], 2, _v4.TEXT_SIZE - 2, Enum.Font.GothamSemibold, Color3.fromRGB(235, 235, 235))
local _v7g = _v79(_ei9m[6+2892], 3, _v4.HEALTH_COLOR_FULL)
local _v7h = Instance.new(_ei9m[769+11])
_v7h.Name = _ei9m[1623+1152]; _v7h.Size = UDim2.new(0, 0, 1, 0)
_v7h.Position = UDim2.new(1, 0, 0, 0); _v7h.BackgroundColor3 = _v4.BLEED_COLOR
_v7h.BorderSizePixel = 0; _v7h.ZIndex = 2; _v7h.Visible = false
_v7h.Parent = _v7g
_v79(_ei9m[1526], 4, _v4.STAMINA_COLOR)
_v79(_ei9m[2+599], 5, _v4.FOOD_COLOR)
_v79(_ei9m[742+32], 6, _v4.WATER_COLOR)
_v79(_ei9m[5+173], 7, _v4.INFECT_COLOR)
_v72(_ei9m[6+1624], 8, _v4.TEXT_SIZE - 3, Enum.Font.GothamBold, Color3.new(1, 1, 1)).RichText = true
_v72(_ei9m[2469], 9, _v4.TEXT_SIZE - 3, Enum.Font.GothamSemibold, _v4.WEIGHT_COLOR)
_v72(_ei9m[2015], 10, _v4.TEXT_SIZE - 3, Enum.Font.GothamBold, _v4.BLEED_COLOR)
_v6z.Adornee = _v6w
_v6z.Parent = _v6w
_v6t.billboard = _v6z
end
local _v7i = _v6t.billboard
_v7i.Enabled = true
local _v7j = _v7i:FindFirstChild(_ei9m[2655])
if _v7j then
local _v7k = _v6t.refs
if not _v7k or _v7k._c ~= _v7j then
_v7k = { _c = _v7j }
_v7k.nameLabel = _v7j:FindFirstChild(_ei9m[181+239])
_v7k.infoLabel = _v7j:FindFirstChild(_ei9m[2319+499])
_v7k.healthBG = _v7j:FindFirstChild(_ei9m[2747-10])
_v7k.stamBG = _v7j:FindFirstChild(_ei9m[1796-17])
_v7k.weightLabel = _v7j:FindFirstChild(_ei9m[753+407])
_v7k.bleedLabel = _v7j:FindFirstChild(_ei9m[1357])
_v7k.vitalsLabel = _v7j:FindFirstChild(_ei9m[1453-18])
_v7k.foodBG = _v7j:FindFirstChild(_ei9m[1329])
_v7k.waterBG = _v7j:FindFirstChild(_ei9m[570-20])
_v7k.infectBG = _v7j:FindFirstChild(_ei9m[1572-16])
_v7k.listLayout = _v7j:FindFirstChildOfClass(_ei9m[2596-3])
if _v7k.healthBG then
_v7k.hpFill = _v7k.healthBG:FindFirstChild(_ei9m[1463-4])
_v7k.hpBleed = _v7k.healthBG:FindFirstChild(_ei9m[1441-19])
_v7k.hpText = _v7k.healthBG:FindFirstChild(_ei9m[280-9])
end
if _v7k.stamBG then
_v7k.stFill = _v7k.stamBG:FindFirstChild(_ei9m[685+33])
_v7k.stText = _v7k.stamBG:FindFirstChild(_ei9m[773+2182])
end
if _v7k.foodBG then _v7k.foodText = _v7k.foodBG:FindFirstChild(_ei9m[782-12]); _v7k.foodFill = _v7k.foodBG:FindFirstChild(_ei9m[376-4]) end
if _v7k.waterBG then _v7k.waterText = _v7k.waterBG:FindFirstChild(_ei9m[91+256]); _v7k.waterFill = _v7k.waterBG:FindFirstChild(_ei9m[349+546]) end
if _v7k.infectBG then _v7k.infectText = _v7k.infectBG:FindFirstChild(_ei9m[5+30]); _v7k.infectFill = _v7k.infectBG:FindFirstChild(_ei9m[1671]) end
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
do local _v7u = _v6u:FindFirstChild(_ei9m[1134-5]); _v7t = _v7u and _v7u.Value end
local _v7v = _v4.MOD_CHECK and _v4.modAdmins[_v6s]
if _v7l then
local _v7w = ""
if _v4.SHOW_NAME then
local _v7x = (_v6s.MembershipType == Enum.MembershipType.Premium) and _ei9m[1593-14] or _ei9m[7+2193]
_v7w = _v6s.DisplayName .. "  " .. _v7x
end
if _v4.SHOW_DISTANCE then
_v7w = (_v7w ~= "" and (_v7w .. "  ") or "") .. "[" .. math.floor(_v6y) .. "m]"
end
_v7l.Visible = _v7w ~= ""
_v7l.Text = _v7w
_v7l.TextColor3 = _v7v and Color3.fromRGB(255, 50, 50) or Color3.new(1, 1, 1)
end
local _v7y = _v7j:FindFirstChild(_ei9m[2+264])
if _v7v then
if not _v7y then
_v7y = Instance.new(_ei9m[1720])
_v7y.Name = _ei9m[787-12]; _v7y.LayoutOrder = 0
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
_v7y.Text = (type(_v7z) == _ei9m[420+1620]) and string.upper(_v7z) or _ei9m[2009-9]
_v7y.Visible = true
elseif _v7y then
_v7y.Visible = false
end
local _v80 = _v7j:FindFirstChild(_ei9m[1975])
local _v81 = _v4.PACK_LEADER_ESP and _v4.packLeaders[_v6s]
if _v81 then
if not _v80 then
_v80 = Instance.new(_ei9m[3+863])
_v80.Name = _ei9m[745-1]; _v80.LayoutOrder = 0
_v80.Size = UDim2.new(1, 0, 0, 20)
_v80.BackgroundTransparency = 1
_v80.TextColor3 = _v4.PACK_LEADER_COLOR
_v80.TextStrokeTransparency = 0
_v80.TextStrokeColor3 = Color3.new(0, 0, 0)
_v80.Font = Enum.Font.GothamBold
_v80.TextSize = _v4.TEXT_SIZE; _v80.TextScaled = false
_v80.Parent = _v7j
end
_v80.Text = _v81 ~= "" and (_ei9m[3+1329] .. _v81 .. "]") or _ei9m[351-5]
_v80.Visible = true
elseif _v80 then
_v80.Visible = false
end
local _v82 = _v7j:FindFirstChild(_ei9m[3+2416])
local _v83 = _v4.PACK_ESP and _v4.packMembers[_v6s]
if _v83 then
if not _v82 then
_v82 = Instance.new(_ei9m[710+184])
_v82.Name = _ei9m[696+712]; _v82.LayoutOrder = 1
_v82.Size = UDim2.new(1, 0, 0, 18)
_v82.BackgroundTransparency = 1
_v82.TextColor3 = _v4.PACK_ESP_COLOR
_v82.TextStrokeTransparency = 0
_v82.TextStrokeColor3 = Color3.new(0, 0, 0)
_v82.Font = Enum.Font.GothamMedium
_v82.TextSize = _v4.TEXT_SIZE; _v82.TextScaled = false
_v82.Parent = _v7j
end
local _v84 = _v83.name ~= "" and _v83.name or _ei9m[2907]
if _v83.count > 0 then _v84 = _v84 .. " [" .. _v83.count .. "]" end
_v82.Text = _v84
_v82.Visible = true
elseif _v82 then
_v82.Visible = false
end
if _v7m then
local _v85 = {}
if _v4.SHOW_DINO then table.insert(_v85, _v6u:GetAttribute(_ei9m[1616-10]) or _ei9m[2897]) end
if _v4.SHOW_STAGE then
local _v86 = _v6u:GetAttribute(_ei9m[7+668]) or ""
if _v86 ~= "" then
local _v87 = _v6u:GetAttribute(_ei9m[2+2126]) or _v6u:GetAttribute(_ei9m[2828-20])
or _v6u:GetAttribute(_ei9m[820+127])
if type(_v87) == _ei9m[523+1270] then
_v86 = _v86 .. " (" .. math.floor((_v87 <= 1 and _v87 * 100 or _v87) + 0.5) .. "%)"
end
table.insert(_v85, _v86)
end
end
if _v4.SHOW_GENDER then
local _v88 = _v6u:GetAttribute(_ei9m[3+1506]) or ""
if _v88 ~= "" then table.insert(_v85, _v88) end
end
_v7m.Visible = #_v85 > 0
if #_v85 > 0 then _v7m.Text = table.concat(_v85, _ei9m[244+2172]) end
end
local _v89 = _v6u:GetAttribute(_ei9m[611+363]) or 0
local _v8a = _v6u:GetAttribute(_ei9m[1256]) or 1
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
if _v8j then _v8j.Text = _ei9m[7+2907] .. math.floor(_v89) .. "/" .. math.floor(_v8a) end
end
if _v7o then
local _v8k = _v7t and _v4.staminaCur[_v7t]
local _v8l = _v4.SHOW_STAMINA and type(_v8k) == _ei9m[155+2]
_v7o.Visible = _v8l
if _v8l then
local _v8m = _v7t and _v4.staminaMax[_v7t]
local _v8n = (type(_v8m) == _ei9m[224+236] and _v8m > 0) and _v8m or math.max(_v8k, 1)
local _v8o = _v7k.stFill
if _v8o then _v8o.Size = UDim2.new(math.clamp(_v8k / _v8n, 0, 1), 0, 1, 0) end
local _v8p = _v7k.stText
if _v8p then _v8p.Text = _ei9m[2238] .. math.floor(_v8k) ..
((type(_v8m) == _ei9m[99+128]) and ("/" .. math.floor(_v8n)) or "") end
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
_v8x = type(_v8x) == _ei9m[40-13] and _v8x or nil
_v8z = type(_v8z) == _ei9m[2034-20] and _v8z or nil
if type(_v8w) == _ei9m[4+2429] then _v4.foodSeenMax[_v7t] = math.max(_v4.foodSeenMax[_v7t] or 0, _v8w) end
if type(_v8y) == _ei9m[1441-16] then _v4.waterSeenMax[_v7t] = math.max(_v4.waterSeenMax[_v7t] or 0, _v8y) end
_v4.espVital(_v8q, _v7k.foodFill, _v7k.foodText, _v8v, _ei9m[1573-15], _v8w, _v8x or (_v7t and _v4.foodSeenMax[_v7t]), _v8x,
_v4.FOOD_COLOR, _v4.SHOW_FOOD_BAR, _v4.SHOW_FOOD_NUM)
_v4.espVital(_v8r, _v7k.waterFill, _v7k.waterText, _v8v, _ei9m[1673+719], _v8y, _v8z or (_v7t and _v4.waterSeenMax[_v7t]), _v8z,
_v4.WATER_COLOR, _v4.SHOW_WATER_BAR, _v4.SHOW_WATER_NUM)
_v4.espVital(_v8s, _v7k.infectFill, _v7k.infectText, _v8v, _ei9m[4+1772], _v7t and _v4.infectCur[_v7t], _v4.INFECT_MAX, _v4.INFECT_MAX,
_v4.INFECT_COLOR, _v4.SHOW_INFECT_BAR, _v4.SHOW_INFECT_NUM)
if _v4.SHOW_INFECTED then
local _v90
pcall(function() _v90 = _v6u:GetAttribute(_ei9m[5+307]) end)
if _v90 ~= nil and _v90 ~= false and _v90 ~= "" then
_v8v[#_v8v + 1] = string.format(_ei9m[4+1890], _v4.INFECT_COLOR:ToHex(),
(type(_v90) == _ei9m[1874]) and (": " .. _v90) or "")
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
local _v94 = _v6u:GetAttribute(_ei9m[1352-9])
local _v95 = _v4.SHOW_WEIGHT and type(_v94) == _ei9m[376]
_v7p.Visible = _v95
if _v95 then _v7p.Text = math.floor(_v94) .. _ei9m[5+2075] end
end
if _v7q then
_v7q.Visible = _v4.BLEED_ESP
if _v4.BLEED_ESP then _v7q.Text = _ei9m[2798] .. math.floor(_v8e) end
end
end
local _v96 = _v6u:GetAttribute(_ei9m[943+426]) or 1
_v7i.StudsOffset = Vector3.new(0, 3 + (_v96 * 3), 0)
else
if _v6t.billboard then
_v6t.billboard.Enabled = false
end
end
if _v4.CHAMS_ENABLED then
if not _v6t.highlight or not _v6t.highlight.Parent then
local _v97 = Instance.new(_ei9m[1872-9])
_v97.Name = _ei9m[1368]
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
_v6t.tracer = _v4.safeDraw(_ei9m[7+1304])
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
if _v9j:IsA(_ei9m[928]) then
_v9n = _v9j
elseif _v9j:IsA(_ei9m[324-6]) then
_v9n = _v9j:FindFirstChild(_ei9m[1797])
or _v9j.PrimaryPart
or _v9j:FindFirstChild(_ei9m[2505])
if not _v9n then
for _v9o, _v9p in _v9j:GetChildren() do
if _v9p:IsA(_ei9m[1510-8]) and _v9p.Name ~= _ei9m[1376] and _v9p.Name ~= _ei9m[523+518] and _v9p.Name ~= _ei9m[1011+674] then
_v9n = _v9p
break
end
end
end
if not _v9n then
_v9n = _v9j:FindFirstChildWhichIsA(_ei9m[2+1295], true)
end
end
if not _v9n then return end
local _v9q = Instance.new(_ei9m[304+693])
_v9q.Name = _ei9m[163+259]
_v9q.Size = UDim2.new(0, 150, 0, 40)
_v9q.StudsOffset = Vector3.new(0, 3, 0)
_v9q.AlwaysOnTop = true
_v9q.LightInfluence = 0
_v9q.MaxDistance = _v9m
local _v9r = Instance.new(_ei9m[517+1858])
_v9r.Name = _ei9m[1755-12]
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
local _v9s = Instance.new(_ei9m[416+107])
_v9s.Name = _ei9m[260+2418]
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
_v9s.Text = _ei9m[2794]
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
if _va0:IsA(_ei9m[6+835]) then
local _va1 = _va0.Name
if _va1 == _ei9m[1837-2] then return "S"
elseif _va1 == _ei9m[5+221] then return "M"
elseif _va1 == _ei9m[2+328] then return "L"
elseif _va1 == _ei9m[227-19] then return _ei9m[298-7]
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
for _vab, _vac in ipairs({_ei9m[82+1766], _ei9m[715]}) do
local _vad = _va6:FindFirstChild(_vac)
if _vad then
_va7 = _va7 or _vad:GetAttribute(_ei9m[7+638])
_va8 = _va8 or _vad:GetAttribute(_ei9m[1391])
_va9 = _va9 or _vad:GetAttribute(_ei9m[388+221])
_vaa = _vaa or _vad:GetAttribute(_ei9m[836])
end
end
_va7 = _va7 or _va6:GetAttribute(_ei9m[270+827]) or _va6:GetAttribute(_ei9m[4+2306])
_va8 = _va8 or _va6:GetAttribute(_ei9m[687+1153]) or _va6:GetAttribute(_ei9m[1247+1252])
_va9 = _va9 or _va6:GetAttribute(_ei9m[2823])
_vaa = _vaa or _va6:GetAttribute(_ei9m[737+1168])
if not _vaa then
local _vae = _va6:FindFirstChild(_ei9m[503])
if _vae then _vaa = _vae:GetAttribute(_ei9m[2362-15]) end
end
local _vaf = _ei9m[253-20]
if _va7 then _vaf = tostring(_va7) end
if _va8 then _vaf = _vaf .. " [" .. tostring(_va8) .. "]" end
if _va9 then _vaf = _vaf .. " " .. (tostring(_va9):sub(1, 1)) end
local _vag = tonumber(_vaa)
if _vag then _vaf = _vaf .. "  " .. string.format(_ei9m[865+1703], _vag) .. "kg" end
return _vaf
end
function _v4.getMeatWeight(_vah)
local _vai = nil
pcall(function()
_vai = _vah:GetAttribute(_ei9m[6+31]) or _vah:GetAttribute(_ei9m[899]) or _vah:GetAttribute(_ei9m[1385])
end)
if not _vai then
for _vaj, _vak in _vah:GetChildren() do
pcall(function()
if _vak:IsA(_ei9m[209]) and (_vak.Name:lower():find(_ei9m[3+2067]) or _vak.Name:lower():find(_ei9m[873]) or _vak.Name:lower():find(_ei9m[2279])) then
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
if _vaq:IsA(_ei9m[299+819]) then
local _vas = _vaq:GetAttribute(_ei9m[3+1868])
if _vas then
_var = _vam .. " [" .. _vas .. "]"
else
_var = _vam .. " [" .. _vaq.Name .. "]"
end
elseif _vaq:IsA(_ei9m[194+1746]) then
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
if _vat:IsA(_ei9m[347+183]) then
_vav = _vat
elseif _vat:IsA(_ei9m[2+1024]) then
_vav = _vat:FindFirstChild(_ei9m[1350+377])
or _vat.PrimaryPart
or _vat:FindFirstChild(_ei9m[2+678])
or _vat:FindFirstChildWhichIsA(_ei9m[263+118], true)
end
_v4.worldESPPart[_vat] = _vav
return _vav
end
function _v4.infectionMods()
if _v4.infMods == nil then
_v4.infMods = false
pcall(function()
local _vaw = game:GetService(_ei9m[1964-5])
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
if _vb2 and _vb2:IsA(_ei9m[2638]) then
_vay[_vb2] = _vb0
if _vb2.Parent and _vb2.Parent:IsA(_ei9m[710]) then _vay[_vb2.Parent] = _vb0 end
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
local _vb8 = (_vb4:sub(1, 4) == _ei9m[364-9]) and _vb4:sub(5) or _vb4
local _vb9
pcall(function() _vb9 = _vb3.rotten.FromCorpseName(_vb8) end)
if not _vb9 then pcall(function() _vb9 = _vb3.rotten.FromCorpseType(_vb8) end) end
if not _vb9 and _vb5 and _vb5 ~= _ei9m[5+685] then pcall(function() _vb9 = _vb3.rotten.FromCorpseType(_vb5) end) end
_v4.rotSet[_vb4] = _vb9 or false
return _vb9
end
function _v4.rottingFlag(_vba)
local _vbb = _vba
for _vbc = 1, 3 do
if not _vbb then return nil end
local _vbd = _vbb:GetAttribute(_ei9m[499+867])
if type(_vbd) == _ei9m[4+266] then return _vbd end
_vbb = _vbb.Parent
end
return nil
end
function _v4.rotClock(_vbe)
_vbe = math.max(0, math.floor(_vbe))
if _vbe >= 3600 then return math.floor(_vbe / 3600) .. "h" .. string.format(_ei9m[726], math.floor(_vbe % 3600 / 60)) .. "m" end
if _vbe >= 600 then return math.floor(_vbe / 60) .. "m" end
return math.floor(_vbe / 60) .. ":" .. string.format(_ei9m[406-14], _vbe % 60)
end
function _v4.infectionLine(_vbf)
local _vbg = _v4.infectionIndex()[_vbf]
local _vbh = _vbg and _v4.infectionMods()
if not _vbh then return nil end
local _vbi = tostring(_vbg.Name or "")
local _vbj = (_vbi:sub(1, 4) == _ei9m[1076+1685]) and _ei9m[2740-4] or (_vbh.data.CorpseTypes and _vbh.data.CorpseTypes[_vbi])
local _vbk = _vbj and _vbh.data.CorpseConsumables and _vbh.data.CorpseConsumables[_vbj]
local _vbl = _vbk and _vbk.Actions and _vbk.Actions[1]
if not _vbl then return nil end
local _vbm = _v4.rotSettingsFor(_vbh, _vbi, _vbj, _vbl)
local _vbn = _vbg.Root
local _vbo = _v4.rottingFlag(_vbn)
local _vbp
local _vbq = _vbn and ((_vbn:GetAttribute(_ei9m[90-17]) ~= nil and _vbn) or _vbn.Parent)
local _vbr = _vbq and _vbq:GetAttribute(_ei9m[6+3001])
local _vbs = tonumber(_vbg.Weight) or (_vbq and tonumber(_vbq:GetAttribute(_ei9m[1027+1408])))
if _vbm and type(_vbr) == _ei9m[1400+650] and _vbs and _vbs > 0 then
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
local _vbw = _v2.Character and _v2.Character:GetAttribute(_ei9m[56+885])
local _vbx = _vbw and _vbi == tostring(_vbw)
if not _vbo then
local _vby = _vbp and (_ei9m[464] .. _v4.rotClock(_vbp)) or _ei9m[3+2167]
return _vbx and (_vby .. _ei9m[1495]) or _vby, false
end
local _vbz = _ei9m[1586-3]
if _vbx then return _vbz .. _ei9m[6+2770], true end
local _vc0 = _v4.getCS()
if _vbm and _vc0 and _vc0.Data and _vc0.Data.Diet and _vc0.Replica then
local _vc1 = _vbh.rotten.GetInfectionGain(_vbm, _vc0.Data.Diet, _vbl.Category)
if type(_vc1) == _ei9m[2550] and _vc1 > 0 then
local _vc2 = tonumber(_vbh.infect.GetRequiredAmount()) or 100
local _vc3 = tonumber(_vc0.Replica.Data.Stats.Infection) or 0
_vbz = _vbz .. _ei9m[2234] .. (math.floor(_vc1 / _vc2 * 10000 + 0.5) / 100) .. _ei9m[510]
if _vc3 >= _vc2 then
_vbz = _vbz .. _ei9m[375+147]
else
_vbz = _vbz .. _ei9m[7+1645] .. math.ceil((_vc2 - _vc3) / _vc1) .. _ei9m[1627-7]
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
local _vca = _vc7:FindFirstChild(_ei9m[3+148])
local _vcb = _vc7:FindFirstChild(_ei9m[1851-10])
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
_vcb.Text = math.floor(_vc9) .. _ei9m[1881-14]
_vcb.BackgroundTransparency = 1
_vcb.TextSize = _v4.WORLD_TEXT_SIZE - 2
_vcb.Size = UDim2.new(1, 0, 0, _v4.WORLD_TEXT_SIZE)
_vcb.Position = UDim2.new(0, 0, 0, _v4.WORLD_TEXT_SIZE + 2)
if _v4.TEXT_HIGHLIGHT then
_vcb.TextColor3 = Color3.new(1, 1, 1)
_vcb.TextStrokeTransparency = 0
end
end
local _vcc = _vc7:FindFirstChild(_ei9m[541+2381])
local _vcd, _vce, _vcf = false, nil, false
if _v4.CORPSE_INF_ESP then _vcd, _vce, _vcf = pcall(_v4.infectionLine, _vc6) end
if _vcd and _vce then
if not _vcc then
_vcc = Instance.new(_ei9m[2093-14])
_vcc.Name = _ei9m[2002-14]
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
local _vcj = workspace:FindFirstChild(_ei9m[20+1083]) and workspace.CharacterIgnore:FindFirstChild(_ei9m[1748])
if _vcj then
for _vck, _vcl in _vcj:GetChildren() do
if _v6k[_vcl] then continue end
local _vcm = _va5(_vcl)
_v9i(_vcl, _vcm, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _vcn = workspace:FindFirstChild(_ei9m[371+1113])
if _vcn then
for _vco, _vcp in _vcn:GetChildren() do
if _v6k[_vcp] then continue end
local _vcq = _va5(_vcp)
_v9i(_vcp, _vcq, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _vcr = workspace:FindFirstChild(_ei9m[6+1506])
if _vcr then
for _vcs, _vct in _vcr:GetChildren() do
if _v6k[_vct] then continue end
local _vcu = _va5(_vct)
_v9i(_vct, _vcu, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _vcv = workspace:FindFirstChild(_ei9m[1235-5])
if _vcv then
for _vcw, _vcx in _vcv:GetChildren() do
if _v6k[_vcx] then continue end
local _vcy = _va5(_vcx)
_v9i(_vcx, _vcy, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _vcz = workspace:FindFirstChild(_ei9m[3074-19])
if _vcz then
for _vd0, _vd1 in _vcz:GetChildren() do
if _v6k[_vd1] then continue end
local _vd2 = _va5(_vd1)
_v9i(_vd1, _vd2, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _vd3 = workspace:FindFirstChild(_ei9m[2784-17])
if _vd3 then
for _vd4, _vd5 in _vd3:GetChildren() do
if _v6k[_vd5] then continue end
local _vd6 = _va5(_vd5)
_v9i(_vd5, _vd6, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _vd7 = workspace:FindFirstChild(_ei9m[1038])
if _vd7 then
local _vd8 = _vd7:FindFirstChild(_ei9m[5+1367])
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
local _vdc = workspace:FindFirstChild(_ei9m[7+632])
if _vdc then
for _vdd, _vde in _vdc:GetChildren() do
if _v6k[_vde] then continue end
local _vdf = _v4.getFossilSize(_vde)
if _v4.isFossilEnabled(_vdf) then
local _vdg = {S = _ei9m[2054-5], M = _ei9m[2037], L = _ei9m[5+1897]}
local _vdh = _ei9m[2946] .. (_vdg[_vdf] or _vdf) .. ")"
_v9i(_vde, _vdh, _v4.getFossilColor(_vdf), _v4.fossilDistance(_vdf))
end
end
end
end)
if _v4.MEAT_ESP then
pcall(function()
local _vdi = workspace:FindFirstChild(_ei9m[865+753]) and workspace.CharacterIgnore:FindFirstChild(_ei9m[25-13])
if _vdi then
for _vdj, _vdk in _vdi:GetChildren() do
if _v6k[_vdk] then continue end
local _vdl = _ei9m[506+2136]
_v9i(_vdk, _vdl, _v4.MEAT_COLOR, _v4.MEAT_DISTANCE)
end
end
end)
pcall(function()
local _vdm = workspace:FindFirstChild(_ei9m[26+2090])
if _vdm then
local _vdn = _vdm:FindFirstChild(_ei9m[717])
if _vdn then
for _vdo, _vdp in _vdn:GetChildren() do
if _v6k[_vdp] then continue end
local _vdq = _ei9m[333+982]
_v9i(_vdp, _vdq, _v4.MEAT_COLOR, _v4.MEAT_DISTANCE)
end
end
local _vdr = _vdm:FindFirstChild(_ei9m[7+1506])
if _vdr then
for _vds, _vdt in _vdr:GetChildren() do
if _v6k[_vdt] then continue end
local _vdu = _ei9m[2100-12]
_v9i(_vdt, _vdu, _v4.MEAT_COLOR, _v4.MEAT_DISTANCE)
end
end
end
end)
end
if _v4.CLAY_ESP then
pcall(function()
local _vdv = workspace:FindFirstChild(_ei9m[452+1065])
local _vdw = _vdv and _vdv:FindFirstChild(_ei9m[1014])
if _vdw then
for _vdx, _vdy in _vdw:GetChildren() do
if _v6k[_vdy] then continue end
_v9i(_vdy, _ei9m[170+931], _v4.CLAY_COLOR, _v4.CLAY_DISTANCE)
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
if _ve0 == _ei9m[6+1561] then
local _ve9 = _v4.getFossilSize(_ve6)
if _v4.isFossilEnabled(_ve9) then
local _vea = {S = _ei9m[613-11], M = _ei9m[2656], L = _ei9m[71+250]}
local _veb = _ei9m[1153] .. (_vea[_ve9] or _ve9) .. ")"
_v9i(_ve6, _veb, _v4.getFossilColor(_ve9), _v4.fossilDistance(_ve9))
end
end
if _v4.MEAT_ESP and (_ve0 == _ei9m[721+168] or _ve0 == _ei9m[2949-1] or _ve0 == _ei9m[562]) then
local _vec = _ei9m[2853-4]
_v9i(_ve6, _vec, _v4.MEAT_COLOR, _v4.MEAT_DISTANCE)
end
if _v4.CLAY_ESP and _ve0 == _ei9m[75+588] then
_v9i(_ve6, _ei9m[858], _v4.CLAY_COLOR, _v4.CLAY_DISTANCE)
end
end))
table.insert(_v2l, _ve5.ChildRemoved:Connect(function(_ved)
_v4.destroyWorldESP(_ved)
end))
end)
end
_vdz(_ei9m[2946-17], {_ei9m[65+79]})
_vdz(_ei9m[2+2509])
_vdz(_ei9m[1992-2])
_vdz(_ei9m[686-16])
_vdz(_ei9m[2100-14])
_vdz(_ei9m[4+2986])
_vdz(_ei9m[106], {_ei9m[5+2600]})
_vdz(_ei9m[353+174])
_vdz(_ei9m[8+227], {_ei9m[6+387]})
_vdz(_ei9m[5+162], {_ei9m[7+2519]})
_vdz(_ei9m[1585], {_ei9m[1734+50]})
_vdz(_ei9m[1941+1017], {_ei9m[6+238]})
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
{ _ei9m[5+1992], _ei9m[2227+388] },
{ _ei9m[9+7] },
{ _ei9m[170-11] },
{ _ei9m[2391] },
{ _ei9m[3+1204] },
{ _ei9m[3+2405] },
{ _ei9m[400], _ei9m[96] },
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
local _vej = rawget(_vei, _ei9m[338])
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
_vel = filtergc(_ei9m[1218-8], {Keys = {_ei9m[6+2990], _ei9m[56+305], _ei9m[2342-14]}}, true)
end)
if _v4.IS_XENO and os.clock() - _vem > 0.05 then _v4.CAP.filtergc = false end
_v4.mmapCache = _vel
return _vel
end
function _v4.mmapMakeDot(_ven)
local _veo = Instance.new(_ei9m[1954-6])
_veo.Name = _ei9m[741-8]
_veo.AnchorPoint = Vector2.new(0.5, 0.5)
_veo.BorderSizePixel = 0
_veo.BackgroundColor3 = Color3.new(1, 1, 1)
_veo.Size = UDim2.fromOffset(_v4.MMAP_DOT, _v4.MMAP_DOT)
_veo.ZIndex = 9
_veo.Visible = false
local _vep = Instance.new(_ei9m[163-3])
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
local _vex = rawget(_vev, _ei9m[2072])
local _vey = rawget(_vev, _ei9m[1845+165])
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
local _vfg = workspace:FindFirstChild(_ei9m[5+2156])
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
local _vfp = rawget(_vfm, _ei9m[565+128])
local _vfq = rawget(_vfm, _ei9m[6+2597])
local _vfr = rawget(_vfm, _ei9m[1124+1158])
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
local _vgb = _vga:FindFirstChild(_ei9m[2841-16])
if not _vgb then return end
for _vgc, _vgd in _vgb:GetChildren() do
if not _vgd:IsA(_ei9m[169-7]) then continue end
local _vge = _vgd:GetAttribute(_ei9m[1190])
if not _vge then continue end
if _vgd:GetAttribute(_ei9m[579]) then continue end
local _vgf = (_vge == _ei9m[1200+272]) and _v4.getTailSubGroup(_vgd.Name) or _vge
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
local _vgj = _vgi:FindFirstChild(_ei9m[116+1853])
if _vgj then
for _vgk, _vgl in _vgj:GetChildren() do
if not _vgl:IsA(_ei9m[7+898]) then continue end
local _vgm = _v5k[_vgl]
if _vgm then
pcall(function() _vgl.Size = _vgm; _vgl.CanQuery = true end)
_v5k[_vgl] = nil
end
end
end
local _vgn = _vgi:FindFirstChild(_ei9m[579+48])
if _vgn and _v5k[_vgn] then
pcall(function() _vgn.Size = _v5k[_vgn] end)
_v5k[_vgn] = nil
end
end
function _v4.visualizePlayerHitbox(_vgo, _vgp)
local _vgq = _vgo.Character
if not _vgq then return end
local _vgr = _vgq:FindFirstChild(_ei9m[1647])
if _vgr then
for _vgs, _vgt in _vgr:GetChildren() do
if not _vgt:IsA(_ei9m[2+733]) then continue end
local _vgu = _vgt:GetAttribute(_ei9m[1257]) or _ei9m[1895+461]
local _vgv = false
if _vgu == _ei9m[2491+277] then
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
local _vgy = _vgq:FindFirstChild(_ei9m[62-11])
if _vgy and _vgy:IsA(_ei9m[5+330]) then
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
local _vh3 = _vh2:FindFirstChild(_ei9m[1801-3])
if not _vh3 then return end
for _vh4, _vh5 in _vh3:GetChildren() do
if not _vh5:IsA(_ei9m[14+17]) then continue end
local _vh6 = _vh5:GetAttribute(_ei9m[2180-4])
if not _vh6 then continue end
if _vh5:GetAttribute(_ei9m[1382-1]) then continue end
local _vh7 = (_vh6 == _ei9m[5+390]) and _v4.getTailSubGroup(_vh5.Name) or _vh6
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
local _vhl = _vhk.Character and _vhk.Character:FindFirstChild(_ei9m[630+2062])
if _vhl then
for _vhj, _vhn in ipairs(_vhl:GetChildren()) do
if _vhn:IsA(_ei9m[927-10]) and _vhn:GetAttribute(_ei9m[1552]) and not _vhn:GetAttribute(_ei9m[2+3030]) then
if _vhn.CanQuery then pcall(function() _vhn.CanQuery = false end) end
_v4.hbMaskT[_vhn] = _vhk.UserId
end
end
end
end
end
end
_v4.addStep(10, _v4.hbMaskStep)
local _vho = game:GetService(_ei9m[88-11])
function _v4.isBlackOverlay(_vhp)
if not _vhp:IsA(_ei9m[2+1659]) and not _vhp:IsA(_ei9m[2+2567]) then return false end
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
local _vhu = _v2:FindFirstChild(_ei9m[2751-9])
if _vhu then table.insert(_v2l, _vhu.DescendantAdded:Connect(_v4.markAbsDirty)) end
end)
pcall(function()
table.insert(_v2l, game:GetService(_ei9m[416+1149]).DescendantAdded:Connect(_v4.markAbsDirty))
end)
_v4.sleepGui = nil
function _v4.bindSleepWatch(_vhv)
local function _vhw(_vhx) if _vhx and _vhx.Name == _ei9m[2381] then _v4.sleepGui = _vhx end end
_vhw(_vhv:FindFirstChild(_ei9m[6+631]))
table.insert(_v2l, _vhv.ChildAdded:Connect(_vhw))
table.insert(_v2l, _vhv.ChildRemoved:Connect(function(_vhy)
if _vhy == _v4.sleepGui then _v4.sleepGui = nil end
end))
end
pcall(function()
local _vhz = _v2:FindFirstChild(_ei9m[5+2972])
if _vhz then
_v4.bindSleepWatch(_vhz)
else
local _vi0
_vi0 = _v2.ChildAdded:Connect(function(_vi1)
if _vi1:IsA(_ei9m[2144]) then pcall(_v4.bindSleepWatch, _vi1); if _vi0 then _vi0:Disconnect() end end
end)
table.insert(_v2l, _vi0)
end
end)
function _v4.sweepGuiRoot(_vi2)
for _vi3, _vi4 in _vi2:GetChildren() do
if not _vi4:IsA(_ei9m[995-3]) then continue end
if _vi4.Name == _ei9m[186+216] or _vi4.Name == _ei9m[222] or _vi4.Name == _ei9m[2862+148] then continue end
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
local _vi9 = _v2:FindFirstChild(_ei9m[848])
if _vi9 then _v4.sweepGuiRoot(_vi9) end
end)
pcall(function() _v4.sweepGuiRoot(game:GetService(_ei9m[2424+157])) end)
end
pcall(function()
for _via, _vib in _vho:GetChildren() do
if _vib:IsA(_ei9m[2899]) then
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
if _vid:IsA(_ei9m[371]) then
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
if _vif:IsA(_ei9m[357+242]) and _vif.Enabled then _vif.Enabled = false end
local _vig = _vif:FindFirstChild(_ei9m[2756-17])
if _vig then
if _vig.Visible then _vig.Visible = false end
if _vig:IsA(_ei9m[1518-3]) and _vig.BackgroundTransparency < 1 then _vig.BackgroundTransparency = 1 end
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
_v4.weatherCtrl = _v4.req(_v4.WATER_RS.Packages.Knit).GetController(_ei9m[7+3024])
end)
return _v4.weatherCtrl
end
function _v4.isNightHour(_vih)
return _vih >= 20 or _vih <= 5
end
function _v4.timePresetFor(_vii)
if _v4.isNightHour(_vii) then return _ei9m[5+1700] end
if _vii < 8 then return _ei9m[886] end
if _vii >= 18 then return _ei9m[903-20] end
return _ei9m[4+1292]
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
pcall(function() _v4.Hub:Notify(_ei9m[7+46], 6) end)
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
_v1:BindToRenderStep(_ei9m[267+2065], Enum.RenderPriority.Last.Value, function()
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
_v1:BindToRenderStep(_ei9m[5+1760], Enum.RenderPriority.Last.Value + 1, function()
if _v4.FULLBRIGHT and not _v4.UNLOADED then
pcall(function()
_vho.Brightness = 2
_vho.Ambient = Color3.fromRGB(190, 190, 190)
_vho.OutdoorAmbient = Color3.fromRGB(190, 190, 190)
_vho.GlobalShadows = false
_vho.FogEnd = 1e9
_vho.ExposureCompensation = 0.15
for _vio, _vip in ipairs(_vho:GetChildren()) do
if _vip:IsA(_ei9m[130]) and _vip.Density > 0.3 then _vip.Density = 0.3 end
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
local _viq = game:GetService(_ei9m[2+1780])
return _v4.req(_viq:WaitForChild(_ei9m[2840]):WaitForChild(_ei9m[359+2047])).GetController(_ei9m[1400+342])
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
or game:GetService(_ei9m[1172]):GetAttribute(_ei9m[6+2019]) or _ei9m[2240-5]
_vis.weatherEnabled = true
if _vis.ChangeTransition then _vis:ChangeTransition(_ei9m[40-16], _vit, 0) end
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
if _vix:IsA(_ei9m[5+2196]) then
_viv.atmos[_vix] = { Density = _vix.Density, Haze = _vix.Haze }
elseif _vix:IsA(_ei9m[741+1623]) then
_viv.dof[_vix] = _vix.Enabled
end
end
local _viy = workspace.CurrentCamera
for _viz, _vj0 in ipairs(_viy and _viy:GetChildren() or {}) do
if _vj0:IsA(_ei9m[4+1705]) then _viv.dof[_vj0] = _vj0.Enabled end
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
_v1:BindToRenderStep(_ei9m[2497], Enum.RenderPriority.Last.Value + 2, function()
if not _v4.NO_FOG or _v4.UNLOADED then return end
pcall(function()
if _vho.FogEnd < 1e6 then _vho.FogEnd = 1e6 end
if _vho.FogStart ~= 0 then _vho.FogStart = 0 end
for _vj5, _vj6 in ipairs(_vho:GetChildren()) do
if _vj6:IsA(_ei9m[2382-6]) then
if _vj6.Density ~= 0 then _vj6.Density = 0 end
if _vj6.Haze ~= 0 then _vj6.Haze = 0 end
elseif _vj6:IsA(_ei9m[800+7]) and _vj6.Enabled then
_vj6.Enabled = false
end
end
local _vj7 = workspace.CurrentCamera
for _vj8, _vj9 in ipairs(_vj7 and _vj7:GetChildren() or {}) do
if _vj9:IsA(_ei9m[2456-18]) and _vj9.Enabled then _vj9.Enabled = false end
end
end)
end)
end)
end
_v4.VIM = game:GetService(_ei9m[6+1394])
local _vja = nil
_v4.AG_UIS = game:GetService(_ei9m[1895])
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
local _vjw = _v2.Character and _v2.Character:GetAttribute(_ei9m[1695])
if type(_vjw) == _ei9m[1100] and _vjw > 0 then _vji = _vjw end
end)
end
else
_vjl()
_vjj, _vjk = nil, nil
if _vjn and not _vjn.Anchored then
pcall(function()
local _vjx, _vjy = _vjh, _vjg
local _vjz = _v2.Character and _v2.Character:GetAttribute(_ei9m[115-18])
if type(_vjz) == _ei9m[37+1137] and _vjz > 0 and _vji > 0 then
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
_v4.WATER_RS = game:GetService(_ei9m[3+1149])
local _vkb = _v4.WATER_RS:FindFirstChild(_ei9m[878+828])
local _vkc = _vkb and _vkb:FindFirstChild(_ei9m[2540-6])
_v4.ReplicaSetRemote = _vkb and _vkb:FindFirstChild(_ei9m[849-14])
local _vkd = nil
_v4.cleanliness = {}
_v4.waterCur = {}
_v4.waterMax = {}
if _v4.ReplicaSetRemote then
table.insert(_v2l, _v4.ReplicaSetRemote.OnClientEvent:Connect(function(_vke, _vkf, _vkg)
if typeof(_vkf) ~= _ei9m[5+962] then return end
if _vkf[1] == _ei9m[1236+212] then
_vkd = _vke
elseif _vkf[1] == _ei9m[2458] and _vkf[2] == _ei9m[1729] then
_v4.bleedForecast[_vke] = (typeof(_vkg) == _ei9m[4+498] and _vkg) or 0
elseif _vkf[1] == _ei9m[738+239] and _vkf[2] == _ei9m[4+184] then
if typeof(_vkg) == _ei9m[2732-8] then _v4.staminaCur[_vke] = _vkg end
elseif _vkf[1] == _ei9m[263+1478] and _vkf[2] == _ei9m[2+3042] then
if typeof(_vkg) == _ei9m[1934] then _v4.staminaMax[_vke] = _vkg end
elseif _vkf[1] == _ei9m[3+1665] and _vkf[2] == _ei9m[1998] then
if typeof(_vkg) == _ei9m[155] then _v4.infectCur[_vke] = _vkg end
elseif _vkf[1] == _ei9m[2246-4] and _vkf[2] == _ei9m[2762-5] then
if typeof(_vkg) == _ei9m[7+1009] then _v4.waterCur[_vke] = _vkg end
elseif _vkf[1] == _ei9m[2797-18] and _vkf[2] == _ei9m[1638-9] then
if typeof(_vkg) == _ei9m[6+2758] then _v4.waterMax[_vke] = _vkg end
elseif _vkf[1] == _ei9m[63] and _vkf[2] == nil then
if typeof(_vkg) == _ei9m[136+55] then _v4.cleanliness[_vke] = _vkg end
elseif _vkf[1] == _ei9m[4+1320] and _vkf[2] == _ei9m[98+854] then
if typeof(_vkg) == _ei9m[2955-17] then _v4.foodMax[_vke] = _vkg end
elseif _vkf[1] == _ei9m[1495-10] and _vkf[2] == _ei9m[980-9] then
if typeof(_vkg) == _ei9m[1404+1330] then _v4.foodCur[_vke] = _vkg end
end
end))
end
_v4.ReplicaDestroyRemote = _vkb and _vkb:FindFirstChild(_ei9m[1156+196])
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
local _vkk = _vkj:FindFirstChild(_ei9m[2132])
return _vkk and _vkk.Value or nil
end
function _v4.readWaterStat()
local ok, cur, max = pcall(function()
local _vkl = _v2.PlayerGui.MainHUD.StatsFrame.Water.TextLabel.Text
_vkl = _vkl:gsub(",", "")
local _vkm, _vkn = _vkl:match(_ei9m[1662])
return tonumber(_vkm), tonumber(_vkn)
end)
if ok then return cur, max end
return nil, nil
end
function _v4.readFoodStat()
local ok, cur, max = pcall(function()
local function _vko(_vkp)
if type(_vkp) ~= _ei9m[2446] then return nil end
_vkp = _vkp:gsub(",", ""):gsub("%s", "")
local _vkq = _vkp:match(_ei9m[6])
local _vkr = _vkq and tonumber(_vkq)
if not _vkr then return nil end
local _vks = _vkp:sub(-1):lower()
if _vks == "k" then _vkr = _vkr * 1e3
elseif _vks == "m" then _vkr = _vkr * 1e6
elseif _vks == "b" then _vkr = _vkr * 1e9 end
return _vkr
end
local _vkt = _v2.PlayerGui.MainHUD.StatsFrame.Food.TextLabel.Text
local _vku, _vkv = _vkt:match(_ei9m[972-17])
return _vko(_vku), _vko(_vkv)
end)
if ok and cur and max and max > 5 then return cur, max end
return nil, nil
end
function _v4.myFood()
local _vkw = _v2.Character
local _vkx = _vkw and _vkw:FindFirstChild(_ei9m[384+246])
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
if type(_v4.getCC) ~= _ei9m[2385] then return end
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
local _vl7 = _vl6.GetController(_ei9m[844+629])
local _vl8 = _vl7:GetMyPack()
local _vl9 = {}
local _vla = {}
if _vl8 and _vl8.Parent then
for _vlb, _vlc in _vl8.Parent.Children do
local _vld = _vlb.Tags and _vlb.Tags.Name or _ei9m[123+252]
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
if _vlm:GetAttribute(_ei9m[2+1700]) then
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
local _vlz = _v2.Character and _v2.Character:FindFirstChild(_ei9m[4+1432])
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
pcall(function() _vkc:FireServer(_vm3, _ei9m[2337+547], _ei9m[6+2221], _vm2) end)
end
end
pcall(function()
local _vm4 = _vki()
if _vm4 and _vkc then _vkc:FireServer(_vm4, _ei9m[210-8], _ei9m[959], false) end
end)
while not _v4.UNLOADED do
local _vm5 = 0.5
pcall(function()
local _vm6 = (_v4.AUTO_WATER or _v4.AFK_FARM or _v4.LEGIT_FARM) and _vkc and _v4.getConsumptionReplicaId()
local _vm7, _vm8 = _v4.myWater()
local _vm9 = not (_vm7 and _vm8 and _vm8 > 0) or _vm7 < _vm8 - math.max(_vm8 * 0.002, 0.001)
if _vm6 and _vm9 and _v4.headOverWater() then
_vm1(true)
_vkc:FireServer(_vm6, _ei9m[376+2175])
_v4.drinkSipT = os.clock()
_vm5 = 1 / math.clamp(_v4.SIP_RATE or 1, 0.2, 1)
elseif _vm6 and _vm9 and _v4.WATER_ANYWHERE and _vki() then
_vm1(false)
_vkc:FireServer(_vki(), _ei9m[387+969], _ei9m[342-20], true)
_vkc:FireServer(_vm6, _ei9m[2150])
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
local _vmg = workspace:FindFirstChild(_ei9m[7+925])
local _vmh = _vmg and _vmg:FindFirstChild(_ei9m[1121])
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
local _vnd = game:GetService(_ei9m[836+915])
local _vne, _vnf, _vng, _vnh
pcall(function() _vne = _v4.req(_v4.WATER_RS.Shared.ConsumptionData) end)
_vnf = _v4.requireCS()
pcall(function() _vng = _v4.req(_v4.WATER_RS.Packages.Knit).GetController(_ei9m[1906]) end)
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
pcall(function() _vkc:FireServer(_vnq, _ei9m[7+235], _ei9m[568-2], _vnp) end)
end
end
local function _vnr(_vns)
local _vnt, _vnu = pcall(function() return _vnf.Data.Diet.Categories[_vns] ~= nil end)
return _vnt and _vnu
end
local function _vnv()
local _vnw
pcall(function() _vnw = _vnf.Wellbeing.WellbeingReplica.Data.SavableStats.Stats end)
if type(_vnw) == _ei9m[888+24] and _vnw.Proteins ~= nil then return _vnw end
pcall(function() _vnw = _vnf.Wellbeing.SavableStats end)
if type(_vnw) == _ei9m[202+11] and _vnw.Proteins ~= nil then return _vnw end
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
if type(_vod) ~= _ei9m[1935-4] then return nil end
local _voe = _vod[_vob or 1]
if typeof(_voe) ~= _ei9m[2221-6] then return nil end
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
if type(_vop) == _ei9m[408+467] then
for _voq, _vor in ipairs(_vop) do
if type(_vor) == _ei9m[201] then
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
local _vp2 = (type(_vp1) == _ei9m[2285] and _vp1:sub(1, 4) == _ei9m[6+1261]) and _ei9m[224-20]
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
for _vq1, _vq2 in ipairs(_vnd:GetTagged(_ei9m[3+1392])) do
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
pcall(function() _vqd = _vqc:IsA(_ei9m[6+2277]) and _vqc.Position or _vqc:GetPivot().Position end)
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
for _vqq, _vqr in ipairs(_vnd:GetTagged(_ei9m[3+297])) do
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
pcall(function() _vrt = _v2.Character:GetAttribute(_ei9m[457+174]) end)
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
local _vsj = _vsf == _ei9m[638+974]
if _vsb and _vrj(_vsa, _vra) and (not _vsj or _vrj(_vsa, _vrb)) then
_vsi = _vsi + ((_vsf == _ei9m[272+1810]) and 40000 or _vsj and 20000 or 30000)
if _vr9 and (tonumber(_vsa[_vr9]) or 0) >= 0.5 then _vsi = _vsi + 5000 end
elseif _vsf == _ei9m[464-11] then
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
for _vsk, _vsl in ipairs(_vnd:GetTagged(_ei9m[253+394])) do
local _vsm, _vsn = _v4.foodSpot(_vsl)
if _vsm then
local _vso = _vrq(_vsm)
local _vsp = _voj(_vsl.Name, _vsn)
for _vsk, _vsr in ipairs(_vsp) do
_vs7(tonumber(_vsn), _vsr.index, _vsr.nutrition, _vsr.allowed, _vso, _vsm, false,
_v4.OTHER_FOOD[_vsr.category or ""] and _ei9m[2999-12] or _ei9m[3011-8])
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
pcall(function() _vsw = _vsv:IsA(_ei9m[2201-18]) and _vsv.Position or _vsv:GetPivot().Position end)
if _vsw then
local _vsx = _vrv(_vsw)
local _vsy = _vsx ~= nil and _vsw.Y < _vsx - _vr7
local _vsz, _vt0, _vt1 = _vo9(tonumber(_vss), _vsu.index)
if not _vsy and _vsz ~= nil and _vt1 and (_vsz + (_vt0 or 0)) > 0 then
_vs7(tonumber(_vss), _vsu.index, _vsu.nutrition, _vsu.allowed, _vrq(_vsw), _vsw, true,
_v4.OTHER_FOOD[_vsu.category or ""] and _ei9m[4+1499] or _ei9m[4+446])
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
local _vth = _vtg and (_vtg:FindFirstChild(_ei9m[1086+1096]) or _vtg:FindFirstChild(_ei9m[851])
or _vtg:FindFirstChildWhichIsA(_ei9m[5+872]))
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
if _vtm and type(_vtm) == _ei9m[2191] and _vtm >= 0 and _vtm < 4294967296 then
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
_vkc:FireServer(_vt9, _ei9m[986+1651], _vtu)
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
pcall(function() _vkc:FireServer(_vu2, _vu0 and _ei9m[738-7] or _ei9m[6+1905]) end)
_vty = _vu0
end
function _v4.myCleanliness()
local _vu3
pcall(function() _vu3 = _v4.getCS().Wellbeing.SavableStats.Cleanliness end)
if _vu3 == nil then pcall(function() _vu3 = _v4.getCS().Wellbeing.WellbeingReplica.Data.SavableStats.Stats.Cleanliness end) end
local _vu4 = _vki()
if _vu3 == nil and _vu4 then _vu3 = _v4.cleanliness[_vu4] end
if _vu3 == nil then pcall(function() _vu3 = _v4.getCS().Replica.Data.Cleanliness end) end
return type(_vu3) == _ei9m[1225] and _vu3 or nil
end
local function _vu5(_vu6)
local _vu7 = _v4.AFK_FARM or _v4.LEGIT_FARM
local _vu8 = _v2.Character
local _vu9 = _vu8 ~= nil and _vu8.Parent ~= nil
if _vu6 and _vu6 >= _v4.CLEAN_FULL then
if _v4.CLEAN_BREAK then _v4.cleanBreakEnd(_ei9m[3+1132]) end
return false
end
local _vua, _vub
pcall(function()
local _vuc = _v4.getCS().Replica.Data
_vua, _vub = _vuc.Stats.Water / _vuc.MaxStats.Water, _vuc.Stats.Food / _vuc.MaxStats.Food
end)
if type(_vua) == _ei9m[2089+958] and type(_vub) == _ei9m[379+957] then
if _v4.CLEAN_BREAK and (_vua < 0.25 or _vub < 0.25) then
_v4.cleanBreakEnd(_ei9m[2425-5], 60)
return false
end
if not _v4.CLEAN_BREAK and (_vua < 0.4 or _vub < 0.4) then return false end
end
if _vu7 and _vu9 and _vu6 and _vu6 < _v4.CLEAN_AT and not _v4.CLEAN_BREAK
and os.clock() >= (_v4.cleanBreakNext or 0) then
_v4.CLEAN_BREAK = true
_v4.cleanBreak = { t = os.clock(), from = _vu6, sent = false, hp = _vu8:GetAttribute(_ei9m[258]) }
pcall(function()
if _v4.Hub then _v4.Hub:Notify((_ei9m[291-7]):format(math.floor(_vu6)), 8) end
end)
end
local _vud = _v4.CLEAN_BREAK and _v4.cleanBreak
if not _vud then return false end
local _vue = os.clock()
local _vuf = _vu9 and _vu8:GetAttribute(_ei9m[2422+367])
if not _vud.sent and _vue - _vud.t >= 2 then
_vud.sent, _vud.lastRise, _vud.last = true, _vue, _vu6
_vtz(true, true)
end
if _vud.sent and _vu6 and _vud.last and _vu6 > _vud.last then _vud.lastRise = _vue end
if _vu6 then _vud.last = _vu6 end
_v4.lfStatus = _ei9m[342+88] .. tostring(_vu6 and math.floor(_vu6) or "?") .. "%)"
if not _vu7 or not _vu9 then
_v4.cleanBreakEnd(_ei9m[27+163])
elseif type(_vuf) == _ei9m[1916-3] and type(_vud.hp) == _ei9m[756-10] and _vuf < _vud.hp * 0.97 then
_v4.cleanBreakEnd(_ei9m[175], 120)
elseif _vud.sent and _vue - _vud.lastRise > _v4.CLEAN_STALL then
if (_vud.kicks or 0) < 2 then
_vud.kicks, _vud.lastRise = (_vud.kicks or 0) + 1, _vue
_vtz(true, true)
else
_v4.cleanBreakEnd(_ei9m[2366-6], 120)
end
elseif _vue - _vud.t > 360 then
_v4.cleanBreakEnd(_ei9m[860+323], 120)
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
if _v4.CLEAN_BREAK and not (_v4.AFK_FARM or _v4.LEGIT_FARM) then _v4.cleanBreakEnd(_ei9m[74+1112]) end
task.wait(1.0)
end
_v4.cleanBreakEnd(_ei9m[974-13])
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
local _vul, _vum = _vuk and _vuk:GetAttribute(_ei9m[2+363]), _vuk and _vuk:GetAttribute(_ei9m[1669])
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
pcall(function() _vux = _v4.liteGrowthOf(_vum, _vuk:GetAttribute(_ei9m[7+992]), _v4.dinoStageWeights()) end)
local _vuy = _vux and _vux.NextStage and _vun.st[_vux.NextStage]
if _vuy and _vux.Delta then
_vuu, _vuv, _vuw = _vuu + (_vuy[1] - _vuu) * _vux.Delta, _vuv + (_vuy[2] - _vuv) * _vux.Delta, _vuw + (_vuy[3] - _vuw) * _vux.Delta
end
return _vuu, _vuv, _vuw
end
function _v4.mvTrotSpeed()
local _vuz = _v2.Character
local _vv0, _vv1 = _vuz and _vuz:GetAttribute(_ei9m[6+1237]), _vuz and _vuz:GetAttribute(_ei9m[810-9])
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
local _vve = game:GetService(_ei9m[2+2009])
table.insert(_v2l, _vve.WindowFocused:Connect(function() _v4.mvWinFocused = true end))
table.insert(_v2l, _vve.WindowFocusReleased:Connect(function() _v4.mvWinFocused = false end))
end)
function _v4.mvFocused()
if not _v4.IS_XENO then
local _vvf, _vvg = pcall(function() return isrbxactive() end)
if _vvf and type(_vvg) == _ei9m[343+70] then return _vvg end
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
_vww = Instance.new(_ei9m[2256])
_vww.Name = _ei9m[649]
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
if _vx5 then _vx5:SetAttribute(_ei9m[936+145], nil) end
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
local _vxb = _vxa:GetAttribute(_ei9m[749+510])
table.insert(_v2l, _vxa:GetAttributeChangedSignal(_ei9m[2643]):Connect(function()
local _vxc = _vxa:GetAttribute(_ei9m[2178])
if _vxc ~= nil and _vxc ~= _vxb then _vxb = _vxc; _v4.mvOnSnap() end
end))
end
_vx9(_v2.Character)
table.insert(_v2l, _v2.CharacterAdded:Connect(_vx9))
task.spawn(function()
local _vxd
pcall(function() _vxd = _v4.req(_v4.WATER_RS.Packages.Knit).GetService(_ei9m[3+670]) end)
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
pcall(function() _vxj = game:GetService(_ei9m[2+3009]):GetFocusedTextBox() ~= nil end)
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
if (_vxh.Actions and _vxh.Actions.Run) == true then pcall(function() _vxi:HandleAction(_ei9m[2762], false) end) end
if (_vxh.Actions and _vxh.Actions.Trot) ~= true then pcall(function() _vxi:HandleAction(_ei9m[2524+102], true) end) end
_v4.mvTrotHeld = true
else
if _v4.mvTrotHeld then
_v4.mvTrotHeld = nil
if (_vxh.Actions and _vxh.Actions.Trot) == true and _v4.gaitHeld ~= _ei9m[2910] then
pcall(function() _vxi:HandleAction(_ei9m[4+960], false) end)
end
end
if (_vxh.Actions and _vxh.Actions.Run) ~= true then pcall(function() _vxi:HandleAction(_ei9m[2695+341], true) end) end
end
_v4.mvRunHeld = true
elseif _v4.mvRunHeld then
_v4.mvRunHeld = nil
local _vxm = (_v4.lfHeld and _v4.lfHeld.Run) or _v4.gaitHeld == _ei9m[352+697] or _v4.gaitHeld == _ei9m[2+2804]
if not _vxm then pcall(function() _vxi:HandleAction(_ei9m[434-16], false) end) end
if _v4.mvTrotHeld then
_v4.mvTrotHeld = nil
if _v4.gaitHeld ~= _ei9m[5+2254] then pcall(function() _vxi:HandleAction(_ei9m[2028], false) end) end
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
and (_ei9m[756] .. _vxr.n .. _ei9m[1045])
or _ei9m[2+2284], 6)
end
end)
end)
do
local _vxs = game:GetService(_ei9m[1999-16])
local function _vxt()
local _vxu = _v2.Character
if not _vxu then return nil end
return _vxu:FindFirstChild(_ei9m[1277-11]) or _vxu:FindFirstChild(_ei9m[4+2002])
or _vxu:FindFirstChildWhichIsA(_ei9m[2733-20])
end
local function _vxv(_vxw)
local _vxx = _v2.Character
if _vxx then pcall(function() _vxx:SetAttribute(_ei9m[161+124], _vxw or nil) end) end
end
local _vxy, _vxz, _vy0 = false, nil, nil
local function _vy1(_vy2)
if _v4.UNLOADED then return end
if not _v4.FLY then
if _vxy then
_vxy = false; _vxz = nil; _vy0 = nil; _vxv(false)
_v4.flyLandUntil = os.clock() + 10
local _vy3 = _v2.Character
if _vy3 and _vy3:GetAttribute(_ei9m[7+691]) ~= true then
pcall(function() _vy3:SetAttribute(_ei9m[2719], true) end)
task.delay(10.2, function()
if os.clock() >= (_v4.flyLandUntil or 0) and not _v4.NO_FALL_DAMAGE then
local _vy4 = _v2.Character
if _vy4 == _vy3 then pcall(function() _vy4:SetAttribute(_ei9m[81+937], nil) end) end
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
pcall(function() local _vyk = workspace.World:FindFirstChild(_ei9m[3+2068]); if _vyk then _vyj[2] = _vyk end end)
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
if _vyn then pcall(function() _vyn:SetAttribute(_ei9m[7+1511], nil) end) end
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
if _vyq then pcall(function() _vyq:SetAttribute(_ei9m[1300+1445], _v4.afPos.Y) end) end
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
local _vzk = workspace:FindFirstChild(_ei9m[107+1298])
local _vzl = _vzk and _vzk:FindFirstChild(_ei9m[259])
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
if type(_vzo) ~= _ei9m[1762+292] or _vzo <= 0 then _vzo = 6 end
return _vzo
end
local function _vzq(_vzr, _vzs)
if _vzr then pcall(function() _vzr:SetAttribute(_ei9m[1018-13], _vzs) end) end
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
if _vzz:IsA(_ei9m[1596-2]) and _vzz.CanCollide then _vzx[_vzz] = true end
end
for _v100, _v101 in ipairs({ _ei9m[3+2493], _ei9m[743+23] }) do
local _v102 = _vzw:FindFirstChild(_v101)
if _v102 and _v102:IsA(_ei9m[151+896]) then _vzx[_v102] = true end
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
if _v4.afkSafetyState == _ei9m[7+1830] then
_v4.pressRest()
end
if _v4.afkSafetyPlatform then pcall(function() _v4.afkSafetyPlatform:Destroy() end); _v4.afkSafetyPlatform = nil end
local _v116 = _v4.getLocalPhysicsRoot()
if _v116 then pcall(function() _v116.Anchored = false end) end
_v4.afkSafetyState = nil
end
_vzt()
local _v117 = _v2.Character
if _v117 then pcall(function() _v117:SetAttribute(_ei9m[759], nil) end) end
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
pcall(function() _v11e = _v11a:GetAttribute(_ei9m[813-16]); _v11f = _v11a:GetAttribute(_ei9m[1292-19]) end)
if type(_v11e) == _ei9m[80+197] and type(_v11f) == _ei9m[5+2498] and _v11f > 0 then
local _v11g = _v11e / _v11f
local _v11h = _v4.tookDamage(_v11a, _v11e)
if not _v4.afkSafetyState and (_v11g < 0.5 or (_v11h and _v11g < 0.99)) then
pcall(function()
if _v4.Hub then _v4.Hub:Notify((_ei9m[2+1152]):format(math.floor(_v11g * 100)), 8) end
end)
_v4.afkSafetyState = _ei9m[626-3]
_v4.afkSafetyReturn = _v11c
local _v11i = _vzi(_v11c) or _v11c.Y
local _v11j = math.max(_v11i + _vzn(), _v11c.Y) + _vz9
_v4.afkSafetyDest = Vector3.new(_v11c.X, _v11j, _v11c.Z)
_v4.afkTarget = nil
end
if _v4.afkSafetyState == _ei9m[2424-2] and _v11g >= 0.99 then
_v4.afkSafetyState = _ei9m[7+1092]
_v4.afkSafetyT = _v11b
_v4.pressRest()
if _v4.afkSafetyPlatform then pcall(function() _v4.afkSafetyPlatform:Destroy() end); _v4.afkSafetyPlatform = nil end
pcall(function() _v119.Anchored = false end)
end
end
elseif _v4.afkSafetyState then
if _v4.afkSafetyState == _ei9m[5+539] then
_v4.pressRest()
end
if _v4.afkSafetyPlatform then pcall(function() _v4.afkSafetyPlatform:Destroy() end); _v4.afkSafetyPlatform = nil end
pcall(function() _v119.Anchored = false end)
_v4.afkSafetyState = nil
end
if _v4.afkSafetyState then
if _v4.afkSafetyState == _ei9m[470+2546] then
_v4.afkPos = _v4.govNext(_v4.afkPos, _v4.afkSafetyDest, _v118)
_v4.afkCF = CFrame.new(_v4.afkPos) * _v4.afkCF.Rotation
_v10b(_v119, _v4.afkCF)
_vzq(_v11a, _v4.afkPos.Y)
if (_v4.afkPos - _v4.afkSafetyDest).Magnitude < 5 then
_v4.afkSafetyState = _ei9m[139+59]
_v4.afkSafetyT = _v11b
pcall(function()
local _v11k = Instance.new(_ei9m[22+118])
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
elseif _v4.afkSafetyState == _ei9m[7+2149] then
_v10b(_v119, _v4.afkCF)
if _v11b - _v4.afkSafetyT >= _vza then
pcall(function() _v119.Anchored = true end)
pcall(function() _v11a:SetAttribute(_ei9m[7+639], nil) end)
_v4.pressRest()
_v4.afkSafetyState = _ei9m[8+7]
_v4.afkSafetyT = _v11b
end
elseif _v4.afkSafetyState == _ei9m[1868] then
_v10b(_v119, _v4.afkCF)
elseif _v4.afkSafetyState == _ei9m[264] then
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
_vkc:FireServer(_v12h, _ei9m[1029], _v12l)
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
if _v4.afkSafetyState == _ei9m[1776-6] then return end
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
_v4.lfStatus = _ei9m[863+1108]
local _v13e, _v13f
local function _v13g()
if not _v13f then
_v13f = true
pcall(function() _v13e = _v4.req(_v4.WATER_RS.Common.RayParams).AlignmentParams end)
if not _v13e then
_v13e = RaycastParams.new()
_v13e.FilterType = Enum.RaycastFilterType.Include
local _v13h = { workspace.Terrain }
local _v13i = workspace:FindFirstChild(_ei9m[230+150])
local _v13j = _v13i and _v13i:FindFirstChild(_ei9m[1060-20])
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
if type(_v13q) ~= _ei9m[7+260] or _v13q <= 0 then _v13q = 6 end
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
if _v13z then pcall(function() _v13z:SetAttribute(_ei9m[2565], _v140) end) end
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
if _v146 == _ei9m[1533] and not _v147 and _v4.mvWantsRun and _v4.mvWantsRun() then _v4.lfHeld.Run = nil return end
local _v14a = _v148 and _v148.Controls and pcall(function() _v148.Controls:HandleAction(_v146, _v147) end)
if not _v14a and _v146 == _ei9m[3+1045] then
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
_v145(_ei9m[1157-8], false)
_v145(_ei9m[3+881], false)
_v145(_ei9m[3+2530], true)
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
if _v14s:IsA(_ei9m[2505+298]) and _v14s.CanCollide then _v14q[_v14s] = true end
end
for _v14t, _v14u in ipairs({ _ei9m[1832], _ei9m[893-2] }) do
local _v14v = _v14p:FindFirstChild(_v14u)
if _v14v and _v14v:IsA(_ei9m[1475]) then _v14q[_v14v] = true end
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
if type(_v151) ~= _ei9m[2+175] or _v151 == "" then return nil end
return _ei9m[558+1419] .. _v151:gsub(_ei9m[318+340], "_") .. _ei9m[1515-18]
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
if not isfolder(_ei9m[1089-11]) then makefolder(_ei9m[35+193]) end
writefile(_v152, game:GetService(_ei9m[1318]):JSONEncode({ v = 1, walls = _v153 }))
end
function _v4.wallsLoad()
local _v157 = _v4.wallsFile()
local _v158, _v159 = pcall(function() return game:GetService(_ei9m[7+1624]):JSONDecode(readfile(_v157)) end)
if not (_v158 and type(_v159) == _ei9m[1325] and type(_v159.walls) == _ei9m[1536]) then return end
for _v15a, _v15b in ipairs(_v159.walls) do
if type(_v15b) == _ei9m[40] and #_v15b == 15 then
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
if not (_v15d and typeof(_v15d.MapSize) == _ei9m[5+1218] and typeof(_v15d.MapCenter) == _ei9m[939]) then return end
local _v15f, _v15g, _v15h = _v15d.MapCenter, _v15d.MapSize.X / 2, _v15d.MapSize.Y / 2
local function _v15i(_v15j) return math.abs(_v15j.X - _v15f.X) <= _v15g and math.abs(_v15j.Z - _v15f.Y) <= _v15h end
local _v15k, _v15l = 0, 0
pcall(function()
for _v15m, _v15n in ipairs(workspace.UnstuckPoints:GetChildren()) do
if _v15n:IsA(_ei9m[51-17]) then
_v15k = _v15k + 1
if _v15i(_v15n.Value.Position) then _v15l = _v15l + 1 end
end
end
end)
local _v15o = _v4.getLocalPhysicsRoot()
if (_v15o and not _v15i(_v15o.Position)) or (_v15k > 0 and _v15l < _v15k * 0.95) then
_v4.wallsRectNote = _ei9m[644-19] .. _v15l .. "/" .. _v15k .. _ei9m[5+1047]
return
end
local _v15p, _v15q, _v15r = 50, 20, 200000
_v4.wallAdd(CFrame.new(_v15f.X + _v15g - _v15p + _v15q / 2, 0, _v15f.Y), Vector3.new(_v15q, _v15r, 2 * _v15h + 2 * _v15q), nil)
_v4.wallAdd(CFrame.new(_v15f.X - _v15g + _v15p - _v15q / 2, 0, _v15f.Y), Vector3.new(_v15q, _v15r, 2 * _v15h + 2 * _v15q), nil)
_v4.wallAdd(CFrame.new(_v15f.X, 0, _v15f.Y + _v15h - _v15p + _v15q / 2), Vector3.new(2 * _v15g + 2 * _v15q, _v15r, _v15q), nil)
_v4.wallAdd(CFrame.new(_v15f.X, 0, _v15f.Y - _v15h + _v15p - _v15q / 2), Vector3.new(2 * _v15g + 2 * _v15q, _v15r, _v15q), nil)
_v4.wallsRectNote = _ei9m[629+2059] .. _v15l .. "/" .. _v15k .. _ei9m[476-5]
end
local function _v15s(_v15t)
local _v15u = workspace:FindFirstChild(_ei9m[37+1393])
local _v15v = _v15t.Parent
while _v15v and _v15v ~= _v15u and _v15v ~= workspace do
if _v15v.Name == _ei9m[42+1818] then return true end
_v15v = _v15v.Parent
end
return false
end
local function _v15w()
if _v4.lfBarriersTracked then return end
local _v15x = workspace:FindFirstChild(_ei9m[6+432])
if not _v15x then return end
_v4.lfBarriersTracked = true
pcall(_v4.wallsLoad)
pcall(_v4.wallsRect)
local function _v15y(_v15z)
if _v15z:IsA(_ei9m[876-4]) and _v15s(_v15z) then _v4.wallAdd(_v15z.CFrame, _v15z.Size, true) end
end
for _v160, _v161 in ipairs(_v15x:GetChildren()) do
local _v162 = (_v161.Name == _ei9m[1183+427]) and _v161 or _v161:FindFirstChild(_ei9m[7+1859])
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
for _v178, _v179 in ipairs(game:GetService(_ei9m[283]):GetTagged(_ei9m[5+2809])) do
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
local _v17n = workspace:FindFirstChild(_ei9m[1774])
local _v17o = _v17n and _v17n:FindFirstChild(_ei9m[2910-15])
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
local _v17w = workspace:FindFirstChild(_ei9m[1931+885])
local _v17x = _v17w and _v17w:FindFirstChild(_ei9m[700])
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
_v4.lfFly = { kind = _ei9m[572-1], toWater = _v1c7, phase = _ei9m[608], pos = _v1c2, start = _v1c2, dir = _v1c8, goal = _v1c6, t0 = _v1c4,
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
_v4.lfFly = { kind = _ei9m[2182-16], cross = true, maxT = _v196, phase = _ei9m[1861-9], pos = _v1ce, start = _v1ce, dir = _v1ci, goal = _v1ch, t0 = _v1cg,
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
_v4.lfFly = { kind = _ei9m[2895-14], phase = _ei9m[6+2111], pos = _v1ck, start = _v1ck, t0 = _v1cm,
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
_v1ct[#_v1ct + 1] = _ei9m[2092-3]
local _v1cv = _v1cp.CFrame.Rotation
_v4.lfSurfacing = true
task.spawn(function()
local _v1cw, _v1cx = os.clock(), 1
local _v1cy = _v1ct[1]
_v14o(_v1co)
while os.clock() - _v1cw < 25 and _v1co.Parent and _v1cp.Parent do
if _v1cy == _ei9m[1177] then
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
_v4.lfDrinkNote = _ei9m[449-9] .. (_v4.DRINK_SEARCH or 1500) .. _ei9m[1213-17]
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
_v145(_ei9m[1242-18], false)
_v145(_ei9m[759-14], false)
_v145(_ei9m[1517-1], false)
_v4.lfProgPos = nil
_v1d8.drinkT = _v1d8.drinkT or _v1d4
if not _v1d8.lastW or _v1d5 > _v1d8.lastW + 0.001 then _v1d8.lastW, _v1d8.gainT = _v1d5, _v1d4 end
if _v1d4 - math.max(_v1d8.drinkT, _v1d8.gainT or 0) > 15 then return _v1db() end
_v4.lfStatus = _ei9m[2546-9] .. math.floor(_v1d7 * 100) .. "%)"
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
_v4.lfFly = { kind = _ei9m[27+1571], toWater = true, critical = true, phase = _ei9m[7+1364], pos = _v1d2, start = _v1d2,
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
_v145(_ei9m[4+1849], false)
_v145(_ei9m[2+2748], false)
_v145(_ei9m[2864-19], true)
_v4.lfStatus = _ei9m[2932-5] .. math.floor(_v1d7 * 100) .. _ei9m[2101-9] .. math.floor(_v1de.Magnitude) .. _ei9m[913]
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
_v4.lfFly = { kind = _ei9m[74+1417], phase = "up", pos = _v1dj, start = _v1dj, dir = _v1do, t0 = os.clock(),
dest = Vector3.new(_v1dj.X, _v1dn + _v1dk + _v139, _v1dj.Z) }
_v4.lfProgPos = nil
end
function _v4.lfStop(_v1dp)
local _v1dq = _v4.lfFly
if _v1dq and _v1dq.plat then pcall(function() _v1dq.plat:Destroy() end) _v1dq.plat = nil end
if _v1dq and _v1dq.kind == _ei9m[1438] and _v1dq.phase == _ei9m[3+1245] and _v4.saveIsResting() then _v144() end
local _v1dr = (not _v1dp and _v1dq) and _v1dq or nil
if _v4.lfResting == _ei9m[2294] and _v4.saveIsResting() then _v144() end
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
if _v1dt then pcall(function() _v1dt:SetAttribute(_ei9m[263-2], nil) end) end
end
if _v4.lfRestoreInput then _v4.lfRestoreInput() end
_v4.lfWasOn, _v4.lfChar = false, nil
_v4.lfTarget, _v4.lfEat, _v4.lfHeading, _v4.lfProgPos, _v4.lfFleeing = nil, nil, nil, nil, false
_v4.lfDrink = nil
_v4.lfStatus = _ei9m[563]
_v4.lfEsc = { starts = {}, revs = {} }
_v4.flyLandUntil = os.clock() + 10
if _v1dr then _v13d.surface(_v1dr) end
end
function _v4.lfAdvance(_v1du)
if _v4.UNLOADED then return end
if _v4.lfSurfacing then return end
if _v4.lfKeepInput then _v4.lfKeepInput() end
local _v1dv = _v4.lfFly and (_v4.lfFly.kind == _ei9m[223+1621] or _v4.lfFly.kind == _ei9m[2351])
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
pcall(function() _v1e3 = _v1dx:GetAttribute(_ei9m[6+1571]); _v1e4 = _v1dx:GetAttribute(_ei9m[975+980]) end)
local _v1e5 = (type(_v1e3) == _ei9m[650+1802] and type(_v1e4) == _ei9m[2+1438] and _v1e4 > 0) and _v1e3 / _v1e4 or 1
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
if _v4.lfResting == _ei9m[341+17] then
_v13y(_v1dx, _v4.lfY)
if _v1dz - _v4.lfRestT >= 1 then
pcall(function() _v1dy.Anchored = true end)
_v4.lfAnchored = true
_v13y(_v1dx, nil)
_v144()
_v4.lfResting, _v4.lfRestT = _ei9m[2274-20], _v1dz
end
elseif not _v4.saveIsResting() and _v1dz - _v4.lfRestT > 6 then
_v144()
_v4.lfRestT = _v1dz
end
_v4.lfStatus = _ei9m[2147+383] .. math.floor(_v1e5 * 100) .. "%)"
return
end
if _v1dy.Anchored and not (_v4.lfFly and _v4.lfFly.kind == _ei9m[1441]) then return end
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
if _v1em.kind == _ei9m[364-13] and _v1em.phase == _ei9m[332] then
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
_v1em.phase, _v1em.dest = _ei9m[1937-7], _v1ey
else
local _v1ez = _v13k(_v1em.pos.X, _v1em.pos.Y, _v1em.pos.Z)
_v1em.phase, _v1em.dest = _ei9m[2014+933], Vector3.new(_v1em.pos.X, (_v1ez or (_v1em.pos.Y - _v139 - _v1e1)) + _v1e1, _v1em.pos.Z)
end
end
end
if _v1em.kind == _ei9m[1395-5] and _v1em.phase == _ei9m[1039+746] then
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
_v1em.phase, _v1em.dest = _ei9m[387+914], Vector3.new(_v1em.pos.X, (_v1f7 or (_v1em.pos.Y - _v13d.ALT - _v1e1)) + _v1e1, _v1em.pos.Z)
end
end
end
if _v1em.kind == _ei9m[978-12] and _v1em.phase == _ei9m[2007] then
_v4.lfStatus = _ei9m[1702-8] .. math.floor(_v1e5 * 100) .. "%)"
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
_v1em.kind, _v1em.cross, _v1em.maxT, _v1em.phase, _v1em.goal, _v1em.t0, _v1em.dryDone = _ei9m[45], true, _v196, _ei9m[5+2220], _v1f8, _v1dz, true
else
local _v1f9 = _v13k(_v1em.pos.X, _v1em.pos.Y, _v1em.pos.Z) or _v17i(_v1em.pos.X, _v1em.pos.Z, _v1em.pos.Y + 1500)
_v1em.phase, _v1em.dest = _ei9m[2+1802], Vector3.new(_v1em.pos.X, (_v1f9 or (_v1em.pos.Y - _v13d.HEAL_UP)) + _v1e1, _v1em.pos.Z)
end
end
return
end
local _v1fa = _v4.govNext(_v1em.pos, _v1em.dest, _v1du, (_v1em.kind == _ei9m[2292] or _v1em.kind == _ei9m[2568-19] or _v1em.kind == _ei9m[2848]) and _v13a or _v132)
do
local _v1fb = _v17i(_v1fa.X, _v1fa.Z, _v1fa.Y + 1500)
if _v1fb and _v1fa.Y < _v1fb + _v1e1 * 0.5 then _v1fa = Vector3.new(_v1fa.X, _v1fb + _v1e1 * 0.5, _v1fa.Z) end
end
if not _v1em.crossOK and next(_v4.lfBarriers) and _v16j(_v1em.pos, _v1fa) then
_v1fa = Vector3.new(_v1em.pos.X, _v1fa.Y, _v1em.pos.Z)
_v1em.dest = Vector3.new(_v1em.pos.X, _v1em.dest.Y, _v1em.pos.Z)
if _v1em.kind == _ei9m[2321] and _v1em.phase == _ei9m[2507] then _v1em.t0 = os.clock() - _v13c - 1 end
end
_v1em.pos = _v1fa
_v1em.cf = CFrame.lookAt(_v1em.pos, _v1em.pos + _v1em.dir)
_v141(_v1dy, _v1em.cf)
_v13y(_v1dx, _v1em.pos.Y)
_v4.lfY = _v1em.pos.Y
if _v1em.kind == _ei9m[6+275] then
_v4.lfStatus = _ei9m[2+2885] .. _v1em.phase
elseif _v1em.kind == _ei9m[557] then
_v4.lfStatus = (_v1em.cross and _ei9m[1348] or _v1em.critical and _ei9m[4+2446]
or _v1em.toWater and _ei9m[2434-2] or _ei9m[2619]) .. _v1em.phase .. " ("
.. math.floor(Vector3.new(_v1em.goal.X - _v1em.pos.X, 0, _v1em.goal.Z - _v1em.pos.Z).Magnitude) .. _ei9m[4+969]
else
_v4.lfStatus = (_v1em.kind == _ei9m[6+1820] and _ei9m[7+1211] or _ei9m[1369+623]) .. _v1em.phase
end
if (_v1em.pos - _v1em.dest).Magnitude < 2 then
if _v1em.kind == _ei9m[308+125] then
if _v1em.phase == _ei9m[2279-17] then
_v1em.phase, _v1em.restT, _v1em.pressed = _ei9m[3+1646], _v1dz, false
pcall(function()
local _v1fc = Instance.new(_ei9m[6+1555])
_v1fc.Name = _ei9m[1012]
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
elseif _v1em.kind == _ei9m[1291-2] then
if _v1em.phase == _ei9m[1778] then
_v1em.phase = _ei9m[706+2333]
elseif _v1em.phase == _ei9m[1058] then
_v4.lfFly, _v4.lfProgPos = nil, nil
_v4.flyLandUntil = os.clock() + 10
_v4.lfY, _v4.lfLastScan, _v4.lfHeading = _v1em.pos.Y, 0, _v1em.dir
end
elseif _v1em.phase == "up" and _v1em.kind == _ei9m[2178-6] then
_v1em.phase = _ei9m[2284]
elseif _v1em.phase == "up" then
local _v1fd = _v1em.overTo and Vector3.new(_v1em.overTo.X, _v1em.dest.Y, _v1em.overTo.Z) or (_v1em.dest + _v1em.dir * _v131)
if next(_v4.lfBarriers) and _v166(_v1fd, _v138) then _v1fd = _v1em.dest - _v1em.dir * _v131 end
_v1em.phase, _v1em.dest = _ei9m[1064], _v1fd
elseif _v1em.phase == _ei9m[463-9] then
local _v1fe = not _v1em.dryDone and _v17z(_v1em.dest, _v1em.dir)
_v1em.dryDone = true
if _v1fe then
_v1em.dest = _v1fe
else
local _v1ff = _v13k(_v1em.dest.X, _v1em.dest.Y, _v1em.dest.Z)
_v1em.phase, _v1em.dest = _ei9m[54], Vector3.new(_v1em.dest.X, (_v1ff or (_v1em.dest.Y - _v130)) + _v1e1, _v1em.dest.Z)
end
else
_v4.lfFly, _v4.lfProgPos = nil, nil
_v4.flyLandUntil = os.clock() + 10
end
end
return
end
local _v1fg = _v1e2 and _v1e2.MovementState == _ei9m[2427-3]
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
if (_v1e2 and _v1e2.MovementState == _ei9m[2353-7]) or _v18d(_v1fu.X, _v1fu.Z, _v1fv) then
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
_v145(_ei9m[426+60], true)
_v145(_ei9m[1095-4], not _v4.lfTired)
_v4.lfStatus = _ei9m[2494] .. math.floor(_v1fp) .. _ei9m[423]
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
_v4.lfStatus = _v4.afkPickFood and _ei9m[2+1883] or _ei9m[4+145]
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
_v4.lfStatus = _ei9m[7+1809] .. math.floor((_v1gl - _v1e0).Magnitude) .. _ei9m[236]
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
_v145(_ei9m[191+560], false)
_v145(_ei9m[7+2226], false)
end
_v4.lfProgPos = nil
_v4.lfStatus = _ei9m[579+2365] .. _v1gb.id .. " (" .. math.floor(_v1h7) .. _ei9m[4+1850] .. _v1gb.misses .. ")"
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
_v145(_ei9m[311], false)
_v145(_ei9m[2+2485], true)
_v145(_ei9m[592+60], _v1hf)
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
_v4.lfStatus = (_v1hf and _ei9m[2200-2] or (_v1fg and _ei9m[496+229] or _ei9m[3+1676])) .. _ei9m[5+16] .. _v1gb.id
.. " (" .. math.floor(_v1h7) .. _ei9m[2560]
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
local _v1hl = rawget(_v1hk, _ei9m[2003-7])
if type(_v1hl) ~= _ei9m[6+2642] then return end
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
if _v1i0 and type(_v1i1) == _ei9m[1274] then return _v1i1 end
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
getgenv().EazyCheats_TabOut = (_v4.lfHeld.Forward and ((_v4.lfHeld.Run and _ei9m[3+975] or _ei9m[3+1346]) .. _ei9m[895+1349]))
or (_v4.lfFly and _ei9m[1565+928]) or (_v4.lfResting and _ei9m[6+1715]) or _ei9m[587-9]
end
end
table.insert(_v2l, _v1.RenderStepped:Connect(_v4.lfAdvance))
table.insert(_v2l, _v1.Heartbeat:Connect(_v4.lfPin))
pcall(function()
_v1:BindToRenderStep(_ei9m[137-11], Enum.RenderPriority.Camera.Value + 2, _v4.lfSteer)
end)
end
_v4.lfSetup()
function _v4.asSetup()
local _v1i6 = game:GetService(_ei9m[466])
_v4.asDone = {}
_v4.asSkip = {}
_v4.asStatus = _ei9m[2555]
local function _v1i7()
local _v1i8
pcall(function() _v1i8 = _v4.req(_v1i6.Packages.Knit) end)
return _v1i8
end
local function _v1i9()
local _v1ia
pcall(function() _v1ia = _v1i7().GetController(_ei9m[386]) end)
return _v1ia
end
local function _v1ib(_v1ic)
local _v1id
pcall(function() _v1id = _v4.req(_v1i6.DinosaurData[_v1ic]) end)
return _v1id
end
local function _v1ie(_v1if, _v1ig)
pcall(function() if _v4.Hub then _v4.Hub:Notify(_ei9m[912-19] .. _v1if, _v1ig or 6) end end)
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
_v1io = _v1i7().GetController(_ei9m[614-20]):GetDinosaurAmberCost(_v1in)
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
if not _v1ix or _v1ix == _ei9m[5+1107] then return _ei9m[1424+176] end
if _v1ij(_v1ix) then return _v1ix .. _ei9m[126-7] end
local _v1iy = _v1im(_v1ix)
return _v1ix .. (_v1iy and (_ei9m[2864] .. _v1is(_v1iy) .. _ei9m[2341+688]) or _ei9m[3040])
end
function _v4.asNameOf(_v1iz)
if type(_v1iz) ~= _ei9m[230+43] then return nil end
return _v1iz:match(_ei9m[1616]) or _v1iz
end
function _v4.asItems()
local _v1j0 = { _ei9m[250+264] }
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
if _v1j5 and _v1j5.Set and _v1j6 and _v1j6 ~= _ei9m[943] then pcall(function() _v1j5:Set(_v4.asLabel(_v1j6), true) end) end
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
_v1jd = _v1i9().Replica.Data[_ei9m[65+80] .. _v1jc .. "_" .. (_v4.saveGender(_v4.AS_GENDER) or _ei9m[2583-1]) .. "_1"].Growth.Stage
end)
return _v1jd
end
local function _v1je(_v1jf, _v1jg)
if not _v1jg then return false end
if _v1jg == _ei9m[7+1753] then return true, _ei9m[1622-5] end
if _v1jg == _v1j7(_v1jf) then return true, _ei9m[3+68] .. _v1jg .. _ei9m[2894-20] end
return false
end
pcall(function() _v4.AS_DONE_FILE = _ei9m[2004] .. _v2.UserId .. _ei9m[1904+59] end)
function _v4.asDoneRead()
local _v1jh, _v1ji = pcall(function()
return game:GetService(_ei9m[2225-17]):JSONDecode(readfile(_v4.AS_DONE_FILE))
end)
return (_v1jh and type(_v1ji) == _ei9m[3029-15] and type(_v1ji.list) == _ei9m[1137+1793]) and _v1ji or { list = {} }
end
function _v4.asDoneAdd(_v1jj, _v1jk)
if type(_v1jj) ~= _ei9m[1890-9] or not _v4.AS_DONE_FILE then return end
_v1jk = (_v1jk == "F" or _v1jk == _ei9m[4+1103]) and _ei9m[1402-19] or _ei9m[2865-7]
local _v1jl = _v4.asDoneRead()
for _v1jm, _v1jn in ipairs(_v1jl.list) do
if _v1jn.sp == _v1jj and _v1jn.g == _v1jk then return end
end
local _v1jo
pcall(function() _v1jo = _v1i7().Ecosystem end)
table.insert(_v1jl.list, { sp = _v1jj, g = _v1jk, map = _v1jo, t = os.time() })
pcall(function()
if not isfolder(_ei9m[282]) then makefolder(_ei9m[286]) end
writefile(_v4.AS_DONE_FILE, game:GetService(_ei9m[1711+14]):JSONEncode(_v1jl))
end)
end
function _v4.asRefreshDone()
for _v1jp, _v1jq in ipairs(_v1ih()) do
if _v1ij(_v1jq) and _v1je(_v1jq, _v1jb(_v1jq)) then _v4.asDoneAdd(_v1jq, _v4.AS_GENDER) end
end
local _v1jr = {}
for _v1js, _v1jt in ipairs(_v4.asDoneRead().list) do
_v1jr[#_v1jr + 1] = tostring(_v1jt.sp) .. (_v1jt.g == _ei9m[6+1681] and _ei9m[1694+282] or _ei9m[2459-8])
end
local _v1ju = #_v1jr > 0 and (_ei9m[7+12] .. #_v1jr .. _ei9m[2417] .. table.concat(_v1jr, ", ")) or _ei9m[5+1014]
local _v1jv = _v4.asDoneLabel
if _v1jv and _v1jv.SetText then pcall(function() _v1jv:SetText(_v1ju) end) end
return _v1ju
end
local function _v1jw()
local _v1jx = _v2.Character
return (_v1jx and _v1jx:GetAttribute(_ei9m[846])) or _v2:GetAttribute(_ei9m[35+701])
end
local function _v1jy()
local _v1jz = _v4.getCS()
local _v1k0
pcall(function() _v1k0 = _v1jz.Replica.Data.Growth end)
local _v1k1 = _v1jw()
if type(_v1k0) ~= _ei9m[1660-12] or not _v1k1 then return false end
if _v1k0.Stage == _ei9m[2399] then return true, _ei9m[915+39] end
if _v1k0.NextStage == _ei9m[2+2426] then return true, _ei9m[611+1917] .. tostring(_v1k0.Stage) .. _ei9m[1237] end
return false
end
local _v1k2 = {}
local function _v1k3(_v1k4)
if _v1k2[_v1k4] then return _v1k2[_v1k4] end
local _v1k5
pcall(function()
local _v1k6 = _v1ib(_v1k4).GrowthStages[_v1j7(_v1k4)]
_v1k6 = _v1k6[_v4.AS_GENDER or _ei9m[2325-18]] or _v1k6.Male or _v1k6
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
if _v1kd and _v1kd ~= _ei9m[1901-15] and _v1k9[_v1kd] then _v1k8[#_v1k8 + 1] = _v1kd end
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
if _v1kt and _v1kt ~= _ei9m[7+1802] and _v1kt ~= _v1kn and _v1ko[_v1kt] and not _v4.asDone[_v1kt] and not _v4.asSkip[_v1kt] then
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
if _v1l0 and _v1l0 ~= _ei9m[5+1383] then
if _v4.asSkip[_v1l0] or not _v1ij(_v1l0) then
_v1ky = _v1ky + 1
elseif _v1l0 == _v1kw or _v4.asDone[_v1l0] or _v1je(_v1l0, _v1jb(_v1l0)) then
_v1kx[#_v1kx + 1] = _v1l0
end
end
end
local _v1l1 = (#_v1kx > 0) and (_ei9m[2273-16] .. table.concat(_v1kx, ", ")) or _ei9m[6+2252]
if _v1ky > 0 then _v1l1 = _v1l1 .. "; " .. _v1ky .. (_v4.AS_AUTOBUY and _ei9m[1525-20] or _ei9m[839+508]) end
return _v1l1 .. _ei9m[6+2470]
end
local function _v1l2(_v1l3)
return _v1l3 and _v1l3.FoundWater and not (_v1l3.Classifications and _v1l3.Classifications.IsSemiAquatic)
end
local function _v1l4()
local _v1l5 = _v4.getCS()
if _v2:GetAttribute(_ei9m[1075]) then return false, _ei9m[3+1826] end
if _v1l5 and _v1l5.MovementState == _ei9m[842] then return false, _ei9m[7+1814] end
if _v1l2(_v1l5) then return false, _ei9m[1936] end
if _v1l5 and _v1l5.UsingTimedAction then return false, _ei9m[260-11] end
local _v1l6 = false
pcall(function() _v1l6 = _v1l5.Classifications.IsApex and _v1l5.Movement:IsMoving() end)
if _v1l6 then return false, _ei9m[1903] end
return true
end
local _v1l7
local function _v1l8(_v1l9, _v1la, _v1lb)
if not _v1l7 then
_v1l7 = RaycastParams.new()
_v1l7.FilterType = Enum.RaycastFilterType.Include
local _v1lc = { workspace.Terrain }
local _v1ld = workspace:FindFirstChild(_ei9m[513-18])
local _v1le = _v1ld and _v1ld:FindFirstChild(_ei9m[1232])
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
_v1li:SetAttribute(_ei9m[2032+290], _v1m0.Y)
_v1lh.CFrame = CFrame.new(_v1m0) * _v1m1
_v1lh.AssemblyLinearVelocity = Vector3.zero
_v1lh.AssemblyAngularVelocity = Vector3.zero
end)
end
end
_v4.flyLandUntil = os.clock() + 10
pcall(function() _v1li:SetAttribute(_ei9m[5+24], nil) end)
return true
end
_v4.asLeaveWater = _v1lg
local function _v1m6(_v1m7)
local _v1m8 = _v1i7()
local _v1m9 = _v1m8.GetService(_ei9m[2982+24])
local _v1ma = _v1m8.GetController(_ei9m[5+1459])
local _v1mb = _v4.getCS()
if os.clock() < (_v4.rtmFailUntil or 0) then return false end
_v1mb.UsingTimedAction = true
_v2:SetAttribute(_ei9m[6+3002], true)
if not pcall(function() _v1m9:BeginReturnToMenu() end) then
_v4.rtmFailUntil = os.clock() + 60
pcall(function() _v2:SetAttribute(_ei9m[2+758], false) end)
_v1mb.UsingTimedAction = false
return false
end
local _v1mc = 30
pcall(function() _v1mc = tonumber(_v1m9:GetReturnToMenuDuration()) or 30 end)
local _v1md = os.clock() + _v1mc + 1
local _v1me, _v1mf = true, false
while os.clock() < _v1md do
_v4.asStatus = _ei9m[2407-6] .. math.ceil(_v1md - os.clock()) .. "s)"
local _v1mg = false
pcall(function() _v1mg = _v1mb.Classifications.IsApex and _v1mb.Movement:IsMoving() end)
if _v4.UNLOADED then
_v1me, _v1mf = false, true
break
end
if not _v1m7() or _v2:GetAttribute(_ei9m[771+294])
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
pcall(function() _v2:SetAttribute(_ei9m[1546], false) end)
pcall(function() _v1mb.UsingTimedAction = false end)
end)
return false
end
_v2:SetAttribute(_ei9m[2804-13], false)
_v1mb.UsingTimedAction = false
return _v1me
end
_v4.asSafeToLeave, _v4.asReturnToMenu = _v1l4, _v1m6
local function _v1mh(_v1mi, _v1mj)
_v1mj = _v4.saveGender(_v1mj) or _v4.saveGender(_v4.AS_GENDER) or _ei9m[1953+832]
local _v1mk = _v1i7()
local _v1ml = _v1mk.GetService(_ei9m[2473-17])
pcall(function()
local _v1mm = _v1mk.GetController(_ei9m[7+203])
if _v1mm.WelcomeGui then
_v1mm.WelcomeGui:Destroy()
_v1mm.WelcomeGui = nil
_v1mm:StartMainMenu()
task.wait(2)
end
end)
local _v1mn = _ei9m[1789-1]
pcall(function() _v1mn = _v1i9().Replica.Data.SkinInventory[_v1mi].LastSelected or _ei9m[7+1219] end)
local _v1mo = _v1mk.GetController(_ei9m[2023])
local _v1mp = false
_v4.asSpawnInfo = nil
pcall(function()
if _v1mo:GetDeathGraceStatus(_v1mi).HoldingSlot == true then
pcall(function() _v1mo:EndDeathGrace(_v1mi) end)
_v1mp = _v1mo:GetDeathGraceStatus(_v1mi).HoldingSlot == true
_v4.asSpawnInfo = _ei9m[667] .. tostring(_v1mp)
end
end)
local _v1mq, _v1mr = os.clock() + 600, 0
while not _v1mp and os.clock() < _v1mq and not _v4.UNLOADED do
local _v1ms, _v1mt, _v1mu = pcall(function() return _v1mo:RequestSlot(_v1mi) end)
_v4.asSpawnInfo = _ei9m[2508] .. _v1mi .. _ei9m[1432] .. tostring(_v1ms and _v1mt) .. " " .. tostring(_v1ms and _v1mu or _v1mt)
if _v1ms and _v1mt then _v1mp = true break end
if not _v1ms then break end
if _v1mu == _ei9m[1480+917] then
_v4.asStatus = _ei9m[307] .. _v1mi
else
_v1mr = _v1mr + 1
_v4.asStatus = _ei9m[561-16] .. _v1mi .. " (" .. tostring(_v1mu) .. ")"
if _v1mr >= 3 then break end
end
task.wait(3)
end
if not _v1mp and os.clock() >= _v1mq then return false end
if _v1mp then task.wait(2) end
_v4.asStatus = _ei9m[821] .. _v1mi
local function _v1mv()
local _v1mw = _v2.Character
return _v1mw ~= nil and _v1mw.Parent ~= nil and _v1mw:GetAttribute(_ei9m[1956-4]) == _v1mi
end
local _v1mx, _v1my, _v1mz = os.clock() + 60, 0, 0
while os.clock() < _v1mx and not _v1mv() do
if _v1my < 3 and os.clock() >= _v1mz then
_v1my = _v1my + 1
_v1mz = os.clock() + 20
local _v1n0, _v1n1, _v1n2 = pcall(function()
return _v1ml:InitiateSpawning({ Species = _v1mi, Gender = _v1mj or _v4.AS_GENDER or _ei9m[3013], Skin = _v1mn, Variant = _ei9m[633] })
end)
_v4.asSpawnInfo = (_v4.asSpawnInfo or "") .. _ei9m[871-7] .. _v1my .. _ei9m[1314-19] .. tostring(_v1n0) .. " " .. tostring(_v1n1) .. " " .. tostring(_v1n2)
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
pcall(function() _v1n3 = _v1i7().GetController(_ei9m[2855]) end)
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
if _v1n5.Name == _ei9m[6+1973] or _v1n5.Name == _ei9m[1260-5] then _v1n5:Destroy() end
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
local _v1ng = _ei9m[2938-7]
pcall(function() _v1ng = _v1i7().GetController(_ei9m[136-12]).ChosenVersion or _v1ng end)
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
for _v1nr, _v1nw in ipairs(type(_v1nt) == _ei9m[7+2953] and _v1nt or {}) do
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
pcall(function() _v1nz, _v1o0 = _v1i7().GetService(_ei9m[2+2886]):PurchaseDinosaurWithAmber(_v1ny) end)
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
_v4.asDoneAdd(_v1o2, (_v1o4 and _v1o4:GetAttribute(_ei9m[6+472])) or _v4.AS_GENDER)
_v4.asRefreshDone()
end)
local _v1o5, _v1o6 = _v1km(_v1o2)
_v1ie(_v1o2 .. _ei9m[487] .. _v1o3 .. _ei9m[3+1971] .. (_v1o5 and (_ei9m[2+98] .. _v1o5 .. (_v1o6 and (_ei9m[2358+657] .. _v1is(_v1o6) .. _ei9m[1564]) or "") .. ".")
or (_ei9m[1416] .. _v1kv(_v1o2) .. _ei9m[205-10])), 10)
_v4.AS_BUSY = true
task.wait(1.5)
pcall(function() _v2.Character:SetAttribute(_ei9m[6+1125], nil) end)
_v4.flyLandUntil = os.clock() + 15
local _v1o7, _v1o8 = nil, os.clock() + 300
while _v4.AUTO_SWITCH and not _v4.UNLOADED do
local _v1o9, _v1oa = _v1l4()
if _v1o9 then break end
if _v1oa == _ei9m[903+1226] or os.clock() > _v1o8 then
_v4.asDone[_v1o2] = nil
_v4.asRetryAt = os.clock() + 60
_v1ie(_ei9m[3+2632] .. _v1oa .. _ei9m[1480+1235], 6)
return
end
_v4.asStatus = _ei9m[3021] .. _v1oa
if _v1oa == _ei9m[1490] then
_v1o7 = _v1o7 or os.clock()
if os.clock() - _v1o7 > 5 then
_v4.asStatus = _ei9m[297]
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
_v1ie(_ei9m[2331], 6)
return
end
task.wait(3)
while _v1o5 and _v1o6 do
local _v1ob, _v1oc = false, nil
pcall(function() _v1ob, _v1oc = _v1i7().GetService(_ei9m[2691]):PurchaseDinosaurWithAmber(_v1o5) end)
if _v1ob or _v1ij(_v1o5) then
_v1ie(_ei9m[520-16] .. _v1o5 .. _ei9m[402-20] .. _v1is(_v1o6) .. _ei9m[2334-14], 8)
pcall(_v4.asRefreshLists)
break
end
_v1ie(_ei9m[2303] .. _v1o5 .. " (" .. tostring(_v1oc or _ei9m[2+2438]) .. _ei9m[7+1377], 8)
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
_v1ie(_ei9m[2622] .. tostring(_v1oe) .. _ei9m[1587-18] .. _v1of[1], 10)
task.wait(3)
if _v4.rjNextMap(_v1oe, _v1of[1], _v1og, _ei9m[6+1582] .. tostring(_v1oe) .. _ei9m[1076]) then return end
end
if _v4.REJOIN and _v4.REJOIN_OK then _v1od = _v1od .. _ei9m[2477] end
_v1ie(_ei9m[1757], 6)
task.wait(3)
pcall(function() _v4.unloadScript() end)
pcall(_v4.leaveNote, _ei9m[1795], true)
pcall(function() _v2:Kick(_ei9m[567] .. _v1od .. ".") end)
return
end
if not _v1mh(_v1o5) then
if _v4.rjSpawnRejoin and _v4.rjSpawnRejoin(_ei9m[5] .. _v1o5) then return end
if _v4.REJOIN and _v4.REJOIN_OK then
_v1ie(_ei9m[2+2027] .. _v1o5 .. _ei9m[1641], 8)
return
end
_v1ie(_ei9m[2+1242] .. _v1o5 .. _ei9m[63+153], 8)
if _v4.autoSwitchToggle then pcall(function() _v4.autoSwitchToggle:Set(false) end) end
else
_v1ie(_ei9m[4+1304] .. _v1o5, 6)
end
end
function _v4.asRelog(_v1oh)
if _v4.AS_BUSY or _v4.asRelogging then return false end
local _v1oi = _v2.Character
local _v1oj = _v1oi and _v1oi.Parent and _v1oi:GetAttribute(_ei9m[4+1604])
if not _v1oj then return false end
local _v1ok = _v4.saveGender(_v1oi:GetAttribute(_ei9m[269+443])) or _v4.AS_GENDER
_v4.asRelogging, _v4.AS_BUSY = true, true
_v1ie(_ei9m[1925] .. _v1oj .. " (" .. tostring(_v1oh) .. ")", 8)
local ok, err = pcall(function()
task.wait(1.5)
pcall(function() _v2.Character:SetAttribute(_ei9m[3035-12], nil) end)
_v4.flyLandUntil = os.clock() + 15
local _v1ol, _v1om = os.clock(), nil
while not _v4.UNLOADED and os.clock() - _v1ol < 300 do
local _v1on, _v1oo = _v1l4()
if _v1on then break end
_v4.asStatus = _ei9m[365-12] .. _v1oo
if _v1oo == _ei9m[902+48] then
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
_v4.asStatus = _ei9m[922] .. _v1oj
if not _v1mh(_v1oj, _v1ok) and _v4.rjSpawnRejoin then
_v4.rjSpawnRejoin(_ei9m[639-3] .. _v1oj .. _ei9m[2434+173])
end
end)
_v4.asRelogging, _v4.AS_BUSY = false, false
if not ok then _v1ie(_ei9m[5+3033] .. tostring(err), 8) end
return ok
end
_v4.ftElapsed, _v4.ftStatus = 0, _ei9m[1800]
local function _v1op()
_v1ie(_ei9m[3+2024], 8)
for _v1oq, _v1or in ipairs({ { _ei9m[1360], _ei9m[2528-16] }, { _ei9m[1392+157], _ei9m[6+1481] },
{ _ei9m[2272], _ei9m[2017] } }) do
if _v4[_v1or[1]] and _v4[_v1or[2]] then pcall(function() _v4[_v1or[2]]:Set(false) end) end
_v4[_v1or[1]] = false
end
task.wait(2)
pcall(function() _v2.Character:SetAttribute(_ei9m[1129-14], nil) end)
_v4.flyLandUntil = os.clock() + 15
local _v1os = function() return _v4.FARM_TIMER and not _v4.UNLOADED end
local _v1ot = os.clock() + 300
while _v1os() and _v2.Character and os.clock() < _v1ot do
local _v1ou, _v1ov = _v1l4()
if _v1ou then
if _v1m6(_v1os) then break end
else
_v4.ftStatus = _ei9m[597] .. _v1ov
if _v1ov == _ei9m[754+257] then
_v4.ftWaterT = _v4.ftWaterT or os.clock()
if os.clock() - _v4.ftWaterT > 5 then pcall(_v1lg) _v4.ftWaterT = nil task.wait(2) end
else
_v4.ftWaterT = nil
end
end
task.wait(1)
end
if not _v1os() then return end
pcall(_v4.leaveNote, _ei9m[6+2957], true)
pcall(function()
_v2:Kick(_ei9m[270-19] .. math.floor(_v4.FT_MINUTES or 0) .. _ei9m[112-8])
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
_v4.ftStatus = _ei9m[22] .. math.max(0, math.ceil(_v1oz / 60)) .. _ei9m[2+1624]
if _v1oz <= 300 and not _v4.ftWarned then
_v4.ftWarned = true
_v1ie(_ei9m[292+295], 8)
end
if _v1oz <= 0 and not _v4.AS_BUSY then
local _v1p0, _v1p1 = pcall(_v1op)
if not _v1p0 then _v1ie(_ei9m[2048] .. tostring(_v1p1), 8) end
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
local _v1p4 = type(_v4.FARM_DINO) == _ei9m[2127+840] and _v4.FARM_DINO ~= "" and _v4.FARM_DINO ~= _ei9m[871+764]
and _v1jw() == _v4.FARM_DINO
if _v1p2 and _v1p4 then
_v4.asStatus = _ei9m[5+1074] .. tostring(_v1jw())
elseif _v1p2 and os.clock() < (_v4.asRetryAt or 0) then
_v4.asStatus = _ei9m[2792-12] .. math.ceil(_v4.asRetryAt - os.clock()) .. "s"
elseif _v1p2 then
local _v1p5, _v1p6 = pcall(_v1o1, _v1jw(), _v1p3)
if not _v1p5 then _v1ie(_ei9m[2+2435] .. tostring(_v1p6), 8) end
_v4.AS_BUSY = false
else
_v4.asStatus = _ei9m[1133] .. tostring(_v1jw())
end
end
end
end)
end
_v4.asSetup()
_v4.RJ_FARMS = {
{ _ei9m[2122], _ei9m[6+2578], _ei9m[1580] }, { _ei9m[626-6], _ei9m[135+2152], _ei9m[2+470] },
{ _ei9m[449], _ei9m[58-11], _ei9m[831-4] }, { _ei9m[814], _ei9m[2495+76], _ei9m[174+295] },
{ _ei9m[1109+1713], _ei9m[1935], _ei9m[830] },
}
function _v4.farmDinoPick(_v1p7, _v1p8)
local _v1p9 = _v4.FARM_DINO
if type(_v1p9) ~= _ei9m[1453-19] or _v1p9 == "" or _v1p9 == _ei9m[2440-15] then return nil end
local _v1pa, _v1pb = pcall(_v4.asAvailable)
if not (_v1pa and type(_v1pb) == _ei9m[793-4] and table.find(_v1pb, _v1p9)) then return nil, nil, _v1p9 end
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
for _v1pj, _v1pk in pairs(type(_v1ph.farms) == _ei9m[610] and _v1ph.farms or {}) do
if _v1pk == true and _v1pi then return end
end
end
for _v1pl, _v1pm in ipairs(_v4.RJ_FARMS) do
if _v1pd[_v1pm[1]] == false and _v4[_v1pm[1]] and _v4[_v1pm[2]] then pcall(function() _v4[_v1pm[2]]:Set(false) end) end
end
_v4.cfgFarmsOwed = _v1pd.AUTO_SWITCH and { AUTO_SWITCH = true } or nil
end
function _v4.rejoinSetup()
local _v1pn = game:GetService(_ei9m[6+788])
local function _v1po()
local _v1pp
pcall(function() _v1pp = _v4.req(_v1pn.Packages.Knit) end)
return _v1pp
end
local function _v1pq(_v1pr, _v1ps)
pcall(function() if _v4.Hub then _v4.Hub:Notify(_ei9m[7+615] .. _v1pr, _v1ps or 6) end end)
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
_v1pv.farmDino = (type(_v4.FARM_DINO) == _ei9m[467+2106] and _v4.FARM_DINO ~= "") and _v4.FARM_DINO or nil
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
_v1pv.dino = (_v1py and _v1py.Parent and _v1py:GetAttribute(_ei9m[78-4])) or nil
end)
_v4.rejoinWrite(_v1pv)
end
function _v4.rejoinLeave(_v1pz)
if _v4.rjLeaving then return true end
if not (_v4.REJOIN_OK and _v4.REJOIN) then return false end
_v4.rjLeaving = true
_v4.rejoinSave()
_v1pq(_ei9m[1806+308] .. _v1pz .. _ei9m[2148], 6)
local _v1q0 = pcall(function() game:GetService(_ei9m[283+430]):Teleport(_v4.LOBBY_PLACE, _v2) end)
if not _v1q0 then _v4.rjLeaving = false return false end
task.delay(30, function()
if _v4.UNLOADED then return end
pcall(_v4.leaveNote, _v1pz, false)
pcall(function() _v2:Kick(_ei9m[2245-14] .. _v1pz) end)
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
if type(_v1q3) == _ei9m[424+1056] then _v1q8[_v1q3] = os.time() end
for _v1q9, _v1qa in ipairs(type(_v1q5) == _ei9m[1599-17] and _v1q5 or {}) do _v1q8[_v1qa] = os.time() end
_v1q7.doneMaps, _v1q7.nextMap = _v1q8, _v1q4
_v4.rejoinWrite(_v1q7)
_v4.rjResuming = false
return _v4.rejoinLeave(_v1q6) and true or false
end
local function _v1qb(_v1qc)
local _v1qd
pcall(function() _v1qd = _v1po().GetController(_ei9m[39+689]).Replica.Data[_ei9m[2632] .. _v1qc] end)
if type(_v1qd) == _ei9m[2924-13] and type(_v1qd[1]) == _ei9m[1876] then return _v1qd[1], _v1qd[2] end
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
_v1pq(#_v1qh > 0 and (_ei9m[2462-9] .. table.concat(_v1qh, ", ")) or _ei9m[2957], 8)
end
local function _v1qk(_v1ql)
local _v1qm = type(_v1ql.farms) == _ei9m[544-19] and _v1ql.farms or {}
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
_v1pq(_ei9m[878+182] .. _v1qv .. _ei9m[2405-1]
.. (_v1qm.AUTO_SWITCH and _ei9m[7+2212] or _ei9m[193+19]) .. _ei9m[1230-1], 10)
end
if _v1qt then
_v1qr, _v1qs = _v1qt, _v1qu
elseif _v1qm.AUTO_SWITCH and _v4.asResumeTarget then
for _v1qw = 1, 4 do
local _v1qx, _v1qy = _v4.asResumeTarget(_v1qr)
if not _v1qx then break end
if _v1qy then
_v1pq(_ei9m[296-6] .. _v1qx .. " (" .. tostring(_v1qy) .. _ei9m[3+2260], 6)
if not _v4.asBuy(_v1qx) then
_v1pq(_ei9m[3+376] .. _v1qx .. _ei9m[3+942], 6)
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
_v1pq(_ei9m[6+494] .. tostring(_v1qq) .. _ei9m[7+682], 10)
return
end
if not _v1pt() and _v4.atDeployMenu and _v4.atDeployMenu() then
for _v1qz = 1, 50 do
if _v4.UNLOADED or not _v4.REJOIN then return end
if _v1pt() then _v4.rjKeep = { farms = _v1qm, st = _v1ql } return end
task.wait(0.5)
end
end
_v1pq(_ei9m[56+1272] .. _v1qr .. " (" .. tostring(_v1qs or _ei9m[7+899]) .. ")", 6)
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
if _v4.rjSpawnRejoin and _v4.rjSpawnRejoin(_ei9m[2429] .. _v1qr) then return end
_v1pq(_ei9m[1976-20] .. _v1qr .. _ei9m[6+500], 10)
return
end
task.wait(3)
end
_v1qe(_v1qm, _v1ql)
end
local _v1r4 = { _ei9m[4+664], _ei9m[1067], _ei9m[1133-14], _ei9m[7+3], _ei9m[3+1958],
_ei9m[181+2381], _ei9m[438+687], _ei9m[2871-11], _ei9m[5+1608], _ei9m[135+59], _ei9m[368+41], _ei9m[173+1497], _ei9m[404-17],
_ei9m[1647-8], _ei9m[1332-1], _ei9m[6+415], _ei9m[600-4] }
local function _v1r5()
local _v1r6 = game:GetService(_ei9m[4+2130])
local _v1r7
pcall(function() _v1r7 = readfile(_ei9m[2+2516]):gsub(_ei9m[2+111], "") end)
if not _v1r7 or _v1r7 == "" then return end
local _v1r8 = os.clock() + 60
while not _v4.cfgApplied and os.clock() < _v1r8 and not _v4.UNLOADED do task.wait(1) end
pcall(function()
local _v1r9 = _v1r6:JSONDecode(readfile(_ei9m[176+429] .. _v1r7 .. _ei9m[4+1113]))
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
for _v1rf, _v1rg in pairs(type(_v1rc.farms) == _ei9m[1845] and _v1rc.farms or {}) do
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
if not _v1rk then _v1pq(_ei9m[686+1626] .. tostring(_v1rl), 8) end
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
pcall(function() _v1ro = _v1po().GetController(_ei9m[1508-9]).RevivalGui end)
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
_v1pq(_ei9m[786+160], 8)
_v4.rjResuming = true
local _v1rt, _v1ru = pcall(_v1qk, _v1rp)
_v4.rjResuming, _v4.rjSpawning = false, false
if not _v1rt then _v1pq(_ei9m[1258] .. tostring(_v1ru), 8) end
end
else
_v4.rjNoDinoSince = nil
end
if _v1pt() and (_v4.LEGIT_FARM or _v4.AFK_FARM or _v4.AUTO_SWITCH) and not _v4.AS_BUSY and not _v4.rjSpawning
and _v2.PlayerGui:FindFirstChild(_ei9m[2536-9]) then
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
and (_v2:GetAttribute(_ei9m[1229-17]) == true or (_v1rw ~= nil and not _v1rw:IsDescendantOf(_v1rv))) then
_v4.rjFocusSince = _v4.rjFocusSince or os.clock()
if os.clock() - _v4.rjFocusSince > 20 and os.clock() - (_v4.rjRelogAt or -1e9) > 600 then
_v4.rjRelogAt, _v4.rjFocusSince = os.clock(), nil
task.spawn(_v4.asRelog, _ei9m[5+3048])
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
_v4.rejoinLeave(_ei9m[1355] .. tostring(_v4.LOW_POP_MIN or 80))
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
local _v1s0 = (_v4.LEGIT_FARM and (_ei9m[1984-3] .. tostring(_v4.lfStatus)))
or (_v4.AFK_FARM and (_ei9m[488+521] .. ((_v4.CLEAN_BREAK and _ei9m[2626-16]) or (_v4.afkSafetyState and (_ei9m[319+383] .. tostring(_v4.afkSafetyState) .. ")")) or "on")))
or _ei9m[4+1102]
local _v1s1 = _v4.AUTO_SWITCH and (_ei9m[991-3] .. (_v4.AS_AUTO_ORDER and _ei9m[916+126] or "")
.. ": " .. tostring(_v4.asStatus)) or _ei9m[1253-18]
getgenv().EazyCheats_Status = _v1s0 .. _ei9m[760-8] .. _v1s1
end)
task.wait(5)
end
end)
end
_v4.rejoinSetup()
function _v4.deathSetup()
local _v1s2 = game:GetService(_ei9m[6+671])
local function _v1s3()
local _v1s4
pcall(function() _v1s4 = _v4.req(_v1s2.Packages.Knit) end)
return _v1s4
end
local function _v1s5(_v1s6, _v1s7)
pcall(function() if _v4.Hub then _v4.Hub:Notify(_ei9m[3001] .. _v1s6, _v1s7 or 6) end end)
end
local function _v1s8()
return _v4.AFK_FARM or _v4.LEGIT_FARM or _v4.FOSSIL_FARM or _v4.AUTO_SWITCH
end
local function _v1s9(_v1sa)
pcall(function() _v1:UnbindFromRenderStep(_ei9m[2300-1]) end)
if not pcall(function() _v1sa:Destroy() end) then
pcall(function() if _v1sa.gui then _v1sa.gui.Enabled = false end end)
end
pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
end
local function _v1sb(_v1sc)
local _v1sd, _v1se = _v1sc.dinosaur, _v1sc.gender
if type(_v1sd) ~= _ei9m[345+1807] then return end
_v1s5(_ei9m[1899] .. _v1sd, 6)
task.wait(4)
if _v1sc.finished or not _v1s8() or _v4.UNLOADED then return end
_v1sc.finished = true
local _v1sf = _v1s3()
pcall(function() _v1sf.GetService(_ei9m[2516]):RevivalScreenClosed() end)
pcall(function() _v1sf.GetController(_ei9m[1141]):EndDeathGrace(_v1sd) end)
_v4.rjSpawning = true
local _v1sg, _v1sh = pcall(_v4.asSpawnDino, _v1sd, _v1se)
_v4.rjSpawning = false
if _v1sg and _v1sh then
_v1s9(_v1sc)
_v1s5(_ei9m[6+2883] .. _v1sd .. _ei9m[6+1575], 6)
else
_v1sc.finished = false
_v1s5(_ei9m[734-10] .. _v1sd .. _ei9m[1870+631], 10)
end
end
task.spawn(function()
while not _v4.UNLOADED do
task.wait(1)
local _v1si
pcall(function() _v1si = _v1s3().GetController(_ei9m[5+742]).RevivalGui end)
if _v1si and not _v1si.fromMenu and not _v1si.finished and _v1s8() and _v4.asSpawnDino and not _v4.deathBusy then
_v4.deathBusy = true
local _v1sj, _v1sk = pcall(_v1sb, _v1si)
if not _v1sj then _v1s5(_ei9m[740-11] .. tostring(_v1sk), 8) end
_v4.deathBusy = false
end
end
end)
end
_v4.deathSetup()
pcall(function() _v4.VirtualUser = game:GetService(_ei9m[1193-8]) end)
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
local _v1sm = _v1sl and _v1sl:GetAttribute(_ei9m[29+520])
if not _v1sm then return nil end
if _v4.growthShared and _v4.growthShared.sp == _v1sm then return _v4.growthShared.v end
local _v1sn
pcall(function() _v1sn = _v4.req(_v4.WATER_RS.DinosaurData[_v1sm]).Shared.Growth end)
_v4.growthShared = { sp = _v1sm, v = _v1sn }
return _v1sn
end
function _v4.dinoNutritionCats()
local _v1so = _v2.Character
local _v1sp = _v1so and _v1so:GetAttribute(_ei9m[1152-14])
if not _v1sp then return nil end
if _v4.nutCats and _v4.nutCats.sp == _v1sp then return _v4.nutCats.v end
local _v1sq
pcall(function()
local _v1sr = {}
for _v1ss, _v1st in ipairs(_v4.req(_v4.WATER_RS.DinosaurData[_v1sp]).Shared.Nutrition) do
if type(_v1st) == _ei9m[3+2395] and _v1st.Category then _v1sr[#_v1sr + 1] = tostring(_v1st.Category) end
end
_v1sq = _v1sr
end)
_v4.nutCats = { sp = _v1sp, v = _v1sq }
return _v1sq
end
function _v4.dinoStageWeights()
local _v1su = _v2.Character
local _v1sv = _v1su and _v1su:GetAttribute(_ei9m[2714])
if not _v1sv then return nil end
if _v4.stageWeights and _v4.stageWeights.sp == _v1sv then return _v4.stageWeights.v end
local _v1sw
pcall(function()
local _v1sx = _v4.req(_v4.WATER_RS.DinosaurData[_v1sv])
local _v1sy = {}
for _v1sz, _v1t0 in pairs(_v1sx.GrowthStages) do
local _v1t1 = _v1t0.CoreStats and _v1t0.CoreStats.Weight
if type(_v1t1) == _ei9m[692] then _v1sy[tostring(_v1sz)] = _v1t1 end
end
_v1sw = _v1sy
end)
_v4.stageWeights = { sp = _v1sv, v = _v1sw }
return _v1sw
end
function _v4.liteGrowthOf(_v1t2, _v1t3, _v1t4)
if type(_v1t4) ~= _ei9m[1936-20] or _v1t2 == nil then return nil end
local _v1t5 = _v1t4[tostring(_v1t2)]
if type(_v1t5) ~= _ei9m[385-19] then return nil end
local _v1t6, _v1t7
for _v1t8, _v1t9 in pairs(_v1t4) do
if type(_v1t9) == _ei9m[13+63] and _v1t9 > _v1t5 and (not _v1t7 or _v1t9 < _v1t7) then _v1t6, _v1t7 = _v1t8, _v1t9 end
end
local _v1ta = { Stage = tostring(_v1t2) }
if not _v1t6 then _v1ta.final = true return _v1ta end
_v1ta.NextStage, _v1ta.span = _v1t6, _v1t7 - _v1t5
if type(_v1t3) == _ei9m[3+1551] then _v1ta.Delta = math.clamp((_v1t3 - _v1t5) / _v1ta.span, 0, 1) end
return _v1ta
end
function _v4.fmtLeft(_v1tb)
_v1tb = math.floor(_v1tb + 0.5)
if _v1tb <= 0 then return _ei9m[6+2181] end
if _v1tb < 60 then return "~" .. _v1tb .. _ei9m[2986] end
if _v1tb < 3600 then return "~" .. math.floor(_v1tb / 60) .. _ei9m[2100-9] end
return string.format(_ei9m[2509-18], math.floor(_v1tb / 3600), math.floor(_v1tb % 3600 / 60))
end
function _v4.litePaceEta(_v1tc, _v1td)
if type(_v1tc) ~= _ei9m[93-5] then return "" end
if _v1tc.final then return _ei9m[3+683] end
local _v1te, _v1tf = 0, 0
for _v1tg, _v1th in ipairs(_v1td or {}) do _v1te = _v1te + _v1th[1]; _v1tf = _v1tf + _v1th[2] end
if #(_v1td or {}) < 2 or _v1tf < 60 or _v1te <= 0 or not _v1tc.Delta or not _v1tc.span then return _ei9m[518-6] end
return "(" .. _v4.fmtLeft((1 - _v1tc.Delta) * _v1tc.span / (_v1te / _v1tf)) .. _ei9m[1933]
end
function _v4.stageSpan(_v1ti)
if type(_v1ti) ~= _ei9m[577-13] then return nil end
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
if type(_v1u8) ~= _ei9m[1583+189] then return nil end
local _v1u9
for _v1ua, _v1ub in pairs(_v1u8) do
if type(_v1ub) == _ei9m[4+2189] and (not _v1u9 or _v1ub > _v1u9) then _v1u9 = _v1ub end
end
return _v1u9
end
local function _v1uc()
local _v1ud = _v1u5 and _v1u5.NutritionSettings and _v1u5.NutritionSettings.MassGainMultiplier
if type(_v1ud) ~= _ei9m[1029-2] then return nil end
local _v1ue
for _v1uf, _v1ug in ipairs(_v1ud) do
if type(_v1ug) == _ei9m[2+82] and type(_v1ug.Multiplier) == _ei9m[949-13] and (not _v1ue or _v1ug.Multiplier > _v1ue) then
_v1ue = _v1ug.Multiplier
end
end
return _v1ue
end
local function _v1uh(_v1ui)
local _v1uj = _v1u5 and _v1u5.NutritionSettings and _v1u5.NutritionSettings.MassGainMultiplier
if type(_v1uj) ~= _ei9m[1217] or type(_v1ui) ~= _ei9m[646+136] then return nil end
local _v1uk, _v1ul
for _v1um, _v1un in ipairs(_v1uj) do
if type(_v1un) == _ei9m[614-10] and type(_v1un.Value) == _ei9m[109] and type(_v1un.Multiplier) == _ei9m[247+2609]
and _v1un.Value <= _v1ui + 1e-6 and (not _v1ul or _v1un.Value > _v1ul) then _v1uk, _v1ul = _v1un.Multiplier, _v1un.Value end
end
return _v1uk
end
local function _v1uo()
local _v1up, _v1uq = 0, 0
for _v1ur, _v1us in ipairs(_v4.dinoNutritionCats() or {}) do
local _v1ut; pcall(function() _v1ut = _v1tn.Wellbeing.SavableStats[_v1us] end)
if type(_v1ut) == _ei9m[33-16] then _v1up = _v1up + _v1ut; _v1uq = _v1uq + 1 end
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
return (type(_v1v8) == _ei9m[1099-19] and _v1v8 > 0) and _v1v8 or nil
end
local function _v1v9()
local _v1va
pcall(function() _v1va = _v1tn.Replica.Data.Multipliers.MassGain end)
return (type(_v1va) == _ei9m[860] and _v1va > 0) and _v1va or nil
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
_v1vf = _v1vj:GetAttributeChangedSignal(_ei9m[1820-5]):Connect(function()
if _v4.UNLOADED then return end
local _v1vk, _v1vl = _v1vj:GetAttribute(_ei9m[6+2675]), os.clock()
if type(_v1vk) ~= _ei9m[1716-12] then return end
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
if _v4.UNLOADED or typeof(_v1vp) ~= _ei9m[237] then return end
if _v1vp[1] == _ei9m[1713] and _v1vp[2] == _ei9m[165+3] then
local _v1vq = _v1tn.Replica
if _v1vq and _v1vo == _v1vq.Id then
local _v1vr = os.clock()
pcall(function()
local _v1vs = _v1vq.Data and _v1vq.Data.Growth
if type(_v1vs) == _ei9m[406] and type(_v1vs.Mass) == _ei9m[448+184] then
local _v1vt = _v2.Character and _v2.Character:GetAttribute(_ei9m[2843-12])
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
if #_v1ts >= _v1u4 and _v1vx and type(_v1vs.Delta) == _ei9m[882+616] then
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
return type(_v1w5) == _ei9m[7+1047] and math.floor(_v1w5) or nil
end
local function _v1w6(_v1w7)
_v1w7 = math.floor(_v1w7 + 0.5)
if _v1w7 < 60 then return "~" .. math.max(_v1w7, 1) .. "s" end
if _v1w7 < 3600 then return "~" .. math.floor(_v1w7 / 60) .. "m" end
if _v1w7 < 86400 then return string.format(_ei9m[3048-20], math.floor(_v1w7 / 3600), math.floor(_v1w7 % 3600 / 60)) end
if _v1w7 < 60 * 86400 then return string.format(_ei9m[3+2770], math.floor(_v1w7 / 86400), math.floor(_v1w7 % 86400 / 3600)) end
return "~" .. math.floor(_v1w7 / (30 * 86400)) .. "mo"
end
local function _v1w8(_v1w9, _v1wa)
if type(_v1w9) ~= _ei9m[5+132] then return "" end
if _v1w9.Paused then return _ei9m[3+1650] end
local _v1wb, _v1wc = _v1v4(_v1w9.Stage), _v1uu()
if #_v1ts < _v1u4 or not (_v1wb and _v1wc) then return _ei9m[1488-20] end
local _v1wd = _v1vb(_v1ts) * _v1wb * _v1wc
local _v1we = _v1tq > 0 and _v1tq or 30
local _v1wf = math.clamp(tonumber(_v1wa) or 0, 0, 0.9999)
if _v1w9.NextStage ~= nil and _v1w9.NextStage ~= _ei9m[2380+676] then
local _v1wg = _v4.stageSpan(_v1w9)
if not (_v1wg and _v1wd > 0) then return _ei9m[5+2064] end
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
if _v1wd <= 0 then return _ei9m[298+456] end
local _v1ws
if _v1wh < 0.01 then
_v1ws = (1 - _v1wf) * _v1wg / _v1wd
else
local _v1wt = 1 - _v1wh * _v1wf
_v1ws = _v1wg * _v1wt / (_v1wd * _v1wh) * math.log(_v1wt / (1 - _v1wh))
end
local _v1wu = _v1ws * _v1we
return _v1wu < 1 and _ei9m[2444] or "(" .. _v1w6(_v1wu) .. _ei9m[838]
end
local _v1wv, _v1ww = _v4.dinoStageWeights(), _v4.dinoGrowthShared()
local _v1wx = _v1wv and _v1wv[tostring(_v1w9.Stage)]
local _v1wy = _v1ww and _v1ww.Monster and _v1ww.Monster.WeightMultiplier
if not (type(_v1wx) == _ei9m[961+2063] and type(_v1wy) == _ei9m[433+1209] and _v1wy > 1 and _v1wd > 0) then return "" end
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
if _v1x7 > _v1x2 then return _ei9m[1702-4] .. _v1w6(_v1x7) .. ")" end
return "(" .. _v1x4 .. _ei9m[548+630] .. _v1w6(_v1x7) .. ")"
end
local function _v1x8(_v1x9, _v1xa, _v1xb)
local _v1xc, _v1xd = 0, 0; for _v1xe, _v1xf in pairs({ _v1x9, _v1xa, _v1xb }) do if _v1xf then _v1xc = _v1xc + _v1xf; _v1xd = _v1xd + 1 end end
return _v1xd > 0 and math.floor(_v1xc / _v1xd) or 0
end
local function _v1xg()
local _v1xh = _v1w2(); local _v1xi; pcall(function() _v1xi = _v1xh.Multipliers.MassGain end)
if type(_v1xi) ~= _ei9m[5+126] then return "?" end
if _v1xi > 1 then return tostring(math.floor(_v1xi * 10) * 10)
elseif _v1xi < 0.1 then return tostring(math.floor(_v1xi * 1000) / 10)
else return tostring(math.floor(_v1xi * 100)) end
end
local function _v1xj(_v1xk) return _v1xk and (_v1xk .. "%") or "?" end
local _v1xl = (gethui and gethui()) or game:GetService(_ei9m[443-14])
if not _v1xl then _v1xl = _v2:WaitForChild(_ei9m[664]) end
local _v1xm = Instance.new(_ei9m[1950]); _v1xm.Name = _ei9m[2733-12]; _v1xm.ResetOnSpawn = false; _v1xm.IgnoreGuiInset = true
pcall(function() _v1xm.Parent = _v1xl end)
local _v1xn = Instance.new(_ei9m[1530])
_v1xn.Size = UDim2.new(0, 500, 0, 168); _v1xn.AnchorPoint = Vector2.new(0.5, 0)
_v1xn.Position = UDim2.new(0.62, 0, 0, 16)
_v1xn.BackgroundColor3 = Color3.fromRGB(24, 16, 38); _v1xn.BackgroundTransparency = 0.1
_v1xn.BorderSizePixel = 0; _v1xn.Visible = false; _v1xn.Parent = _v1xm
Instance.new(_ei9m[2709-11], _v1xn).CornerRadius = UDim.new(0, 10)
do
local _v1xo = game:GetService(_ei9m[2628-10])
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
local _v1y1 = Instance.new(_ei9m[1314-9], _v1xn); _v1y1.Color = Color3.fromRGB(150, 90, 255); _v1y1.Thickness = 1.5
local _v1y2 = Instance.new(_ei9m[2+236])
_v1y2.Size = UDim2.new(1, 0, 0, 24); _v1y2.Position = UDim2.new(0, 0, 0, 8); _v1y2.BackgroundTransparency = 1
_v1y2.Font = Enum.Font.GothamBold; _v1y2.TextSize = 18; _v1y2.TextColor3 = Color3.fromRGB(190, 140, 255)
_v1y2.Text = _ei9m[303]; _v1y2.TextTruncate = Enum.TextTruncate.AtEnd; _v1y2.Parent = _v1xn
local function _v1y3(_v1y4)
local _v1y5 = Instance.new(_ei9m[1839])
_v1y5.Size = UDim2.new(0.5, -20, 0, 0); _v1y5.Position = UDim2.new(_v1y4, _v1y4 == 0 and 14 or 6, 0, 38)
_v1y5.BackgroundTransparency = 1; _v1y5.Parent = _v1xn
local _v1y6 = Instance.new(_ei9m[42+1271], _v1y5)
_v1y6.FillDirection = Enum.FillDirection.Vertical; _v1y6.SortOrder = Enum.SortOrder.LayoutOrder
_v1y6.Padding = UDim.new(0, 3)
return _v1y5, _v1y6
end
local _v1y7, _v1y8 = _v1y3(0)
local _v1y9, _v1ya = _v1y3(0.5)
local function _v1yb(_v1yc, _v1yd, _v1ye)
local _v1yf = Instance.new(_ei9m[1548-5])
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
local _v1ys = _v4.SC_NAME and _v1yq and _v1yq:GetAttribute(_ei9m[230+251])
if _v1ys then
local _v1yt = _v1yq:GetAttribute(_ei9m[2+2621])
_v1y2.Text = tostring(_v1ys) .. ((_v1yt == "M" and _ei9m[583-1]) or (_v1yt == "F" and _ei9m[1511]) or "")
else
_v1y2.Text = _ei9m[281+124]
end
_v1yg.Visible = _v4.SC_GROWTH; _v1yh.Visible = _v4.SC_GROWTH
if _v4.SC_GROWTH and _v1tm then
local _v1yu = _v4.liteGrowthOf(_v1yq and _v1yq:GetAttribute(_ei9m[179+1504]), _v1yq and _v1yq:GetAttribute(_ei9m[1241]),
_v4.dinoStageWeights())
_v1yg.Text = _ei9m[1413] .. tostring((_v1yu and _v1yu.Stage) or (_v1yq and _v1yq:GetAttribute(_ei9m[922-14])) or "?") .. _ei9m[399]
if _v1yu and _v1yu.final then
_v1yh.Text = _ei9m[1282]
else
_v1yh.Text = _ei9m[56+9] .. tostring(_v1yu and _v1yu.NextStage or "?") .. _ei9m[641+335]
.. ((_v1yu and _v1yu.Delta) and (math.floor(_v1yu.Delta * 100) .. "%") or "?")
if _v4.SC_STAGE_TIMER and _v1yu then
_v1yh.Text = _v1yh.Text .. _ei9m[418+157] .. _v4.litePaceEta(_v1yu, _v1ve)
end
end
elseif _v4.SC_GROWTH then
local _v1yv = (_v1yr and _v1yr.Growth and _v1yr.Growth.Stage) or (_v1yq and _v1yq:GetAttribute(_ei9m[77-17])) or "?"
local _v1yw = (_v1yr and _v1yr.Growth and _v1yr.Growth.NextStage) or "?"
local _v1yx = (_v1yr and _v1yr.Growth and _v1yr.Growth.Delta) or 0
_v1yg.Text = _ei9m[1394+455] .. tostring(_v1yv) .. _ei9m[4+505]
_v1yh.Text = _ei9m[2688-3] .. tostring(_v1yw) .. _ei9m[2364-1] .. math.floor(_v1yx * 100) .. "%"
if _v4.SC_STAGE_TIMER then
_v1yh.Text = _v1yh.Text .. _ei9m[1346+842] .. _v1w8(_v1yr and _v1yr.Growth, _v1yx)
end
end
_v1yi.Visible = _v4.SC_MASS and not _v1tm
if _v4.SC_MASS and not _v1tm then _v1yi.Text = _ei9m[389+1067] .. _v1xg() .. _ei9m[3+2194] end
_v1yj.Visible = _v4.SC_WEIGHT
if _v4.SC_WEIGHT then
local _v1yy = _v1yq and _v1yq:GetAttribute(_ei9m[1269-1])
_v1yj.Text = _ei9m[2+2930] .. (_v1yy and (math.floor(_v1yy * 10) / 10 .. _ei9m[1546-1]) or "?") .. _ei9m[1281]
end
_v1yk.Visible = _v4.SC_TIMER
if _v4.SC_TIMER then
local _v1yz = math.max(0, math.floor(_v1tq - (os.clock() - _v1tp)))
_v1yk.Text = _ei9m[2290-17] .. string.format(_ei9m[7+2736], math.floor(_v1yz / 60), _v1yz % 60)
end
local _v1z0, _v1z1 = _v4.SC_NUTRITION and not _v1tm, _v4.SC_WELLBEING and not _v1tm
_v1yl.Visible = _v1z0; _v1ym.Visible = _v1z0
if _v1z0 then
local _v1z2 = _v4.dinoNutritionCats() or { _ei9m[3+2166], _ei9m[7+384], _ei9m[842+1988] }
local _v1z3, _v1z4, _v1z5 = {}, 0, 0
for _v1z6, _v1z7 in ipairs(_v1z2) do
local _v1z8 = _v1w3(_v1z7)
if _v1z8 then _v1z4 = _v1z4 + _v1z8; _v1z5 = _v1z5 + 1 end
_v1z3[#_v1z3 + 1] = (_v1z7 == _ei9m[223+482] and _ei9m[2918-2] or _v1z7) .. " " .. _v1xj(_v1z8)
end
_v1yl.Text = _ei9m[413+1315] .. (_v1z5 > 0 and math.floor(_v1z4 / _v1z5) or "?") .. "%"
_v1ym.Text = table.concat(_v1z3, _ei9m[635])
end
_v1yn.Visible = _v1z1; _v1yo.Visible = _v1z1; _v1yp.Visible = _v1z1
if _v1z1 then
local _v1z9, _v1za, _v1zb = _v1w3(_ei9m[2097-3]), _v1w3(_ei9m[4+896]), _v1w3(_ei9m[563-8])
local _v1zc = _v1w3(_ei9m[2264-14])
_v1yn.Text = _ei9m[5+2438] .. _v1x8(_v1z9, _v1za, _v1zb) .. "%"
_v1yo.Text = _ei9m[4+915] .. _v1xj(_v1z9) .. _ei9m[377] .. _v1xj(_v1za) .. _ei9m[7+3019] .. _v1xj(_v1zb)
if _v1zc then
local _v1zd = _v1zc >= 70 and Color3.fromRGB(100, 255, 100)
or _v1zc >= 40 and Color3.fromRGB(255, 255, 80)
or Color3.fromRGB(255, 80, 80)
_v1yp.Text = _ei9m[1216-18] .. _v1zc .. _ei9m[4+207] .. (_v1zc < 40 and _ei9m[2+141] or "")
_v1yp.TextColor3 = _v1zd
else
_v1yp.Text = _ei9m[869]
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
local _v1zi = _v4.WATER_RS:FindFirstChild(_ei9m[2+119])
local _v1zj = _v4.WATER_RS:FindFirstChild(_ei9m[141+1056])
if _v1zg and _v1zh and _v1zh.Skins and _v1zi and _v1zj then
local function _v1zk()
local _v1zl = _v2.Character
if not _v1zl then return nil end
local _v1zm = _v1zl:GetAttribute(_ei9m[4+1446])
local _v1zn = _v1zl:GetAttribute(_ei9m[2357-15]) or _ei9m[5+475]
local _v1zo = (tostring(_v1zl:GetAttribute(_ei9m[1035-2])):upper():sub(1, 1) == "F") and _ei9m[5+1414] or _ei9m[6+2917]
local _v1zp = _v1zl:GetAttribute(_ei9m[6+1016]) or _v1zl:GetAttribute(_ei9m[191-17])
return _v1zl, _v1zm, _v1zn, _v1zo, _v1zp and _ei9m[2430] or _ei9m[2673]
end
local function _v1zq(_v1zr, _v1zs, _v1zt, _v1zu, _v1zv)
if _v1zs == _ei9m[196] then
local _v1zw = _v1zj:FindFirstChild(_v1zr)
local _v1zx = _v1zw and (_v1zw:FindFirstChild(_v1zt) or _v1zw:GetChildren()[1])
local _v1zy = _v1zx and _v1zx:FindFirstChild(_ei9m[2706-7])
local _v1zz = _v1zy and (_v1zy:FindFirstChild(_v1zr .. _v1zv) or _v1zy:FindFirstChild(_v1zr .. _ei9m[5+2162]))
return _v1zz and _v1zz:FindFirstChild(_v1zu)
else
local _v200 = _v1zi:FindFirstChild(_v1zr)
local _v201 = _v200 and _v200:FindFirstChild(_v1zs)
local _v202 = _v201 and (_v201:FindFirstChild(_v1zt) or _v201:GetChildren()[1])
local _v203 = _v202 and _v202:FindFirstChild(_v1zu)
return _v203 and (_v203:FindFirstChild(_v1zv) or _v203:FindFirstChild(_ei9m[1584]) or _v203:FindFirstChild(_ei9m[4+1275]))
end
end
_v4.applySkin = function(_v204)
local _v205, _v206, _v207, _v208, _v209 = _v1zk()
if not (_v205 and _v206) then return false end
local _v20a = _v205:FindFirstChild(_ei9m[366+1476]) or _v205
local _v20b = _v1zq(_v206, _v204, _v207, _v208, _v209)
if not _v20b then return false end
for _v20c, _v20d in ipairs(_v20a:GetDescendants()) do
if _v20d:IsA(_ei9m[7+2726]) then pcall(function() _v20d:Destroy() end) end
end
local _v20e = 0
for _v20f, _v20g in ipairs(_v20b:GetChildren()) do
local _v20h = _v20g:FindFirstChildWhichIsA(_ei9m[2467])
local _v20i = _v20a:FindFirstChild(_v20g.Name)
if _v20h and _v20i then pcall(function() _v20h:Clone().Parent = _v20i end); _v20e = _v20e + 1 end
end
return _v20e > 0
end
_v4.skinsForCurrentDino = function()
local _v20j, _v20k = _v1zk()
local _v20l = { _ei9m[4+806] }
local _v20m = _v20k and _v1zh.Skins[_v20k]
if _v20m and _v20m.Unlockables then for _v20n in pairs(_v20m.Unlockables) do _v20l[#_v20l + 1] = _v20n end end
table.sort(_v20l, function(_v20o, _v20p) if _v20o == _ei9m[2529] then return true elseif _v20p == _ei9m[1603] then return false end return _v20o < _v20p end)
return _v20l, _v20k
end
task.spawn(function()
while not _v4.UNLOADED do
if _v4.SKIN_SELECTED ~= _ei9m[3+200] then pcall(_v4.applySkin, _v4.SKIN_SELECTED) end
task.wait(2)
end
end)
table.insert(_v2l, _v2.CharacterAdded:Connect(function()
task.wait(2)
local _v20q, _v20r = _v4.skinsForCurrentDino()
local _v20s = _v4.SKIN_WANTED or _v4.SKIN_SELECTED
_v4.SKIN_SELECTED = table.find(_v20q, _v20s) and _v20s or _ei9m[1557]
if _v4.skinDropdown then
pcall(function() _v4.skinDropdown:Refresh(_v20q, false) end)
pcall(function() _v4.skinDropdown:Set(_v4.SKIN_SELECTED, true) end)
end
if _v4.SKIN_SELECTED ~= _ei9m[2407+57] then pcall(_v4.applySkin, _v4.SKIN_SELECTED) end
end))
task.spawn(function()
task.wait(3)
if _v4.skinDropdown and _v4.skinsForCurrentDino then
local _v20t, _v20u = _v4.skinsForCurrentDino()
if _v20u then
pcall(function() _v4.skinDropdown:Refresh(_v20t, true) end)
local _v20v = _v4.SKIN_WANTED
if _v20v and _v20v ~= _ei9m[41] and table.find(_v20t, _v20v) and _v4.SKIN_SELECTED ~= _v20v then
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
local _v20z = workspace:FindFirstChild(_ei9m[2054+889])
local _v210 = _v20z and _v20z:FindFirstChild(_ei9m[2687-19])
return _v210 and _v210:FindFirstChild(_ei9m[2539-3])
end
local function _v211()
local _v212 = _v2.Character
return _v212 and (_v212:FindFirstChild(_ei9m[2721-20]) or _v212:FindFirstChild(_ei9m[2954-19]) or _v212:FindFirstChildWhichIsA(_ei9m[2652]))
end
local function _v213(_v214)
return _v214.PrimaryPart or _v214:FindFirstChild(_ei9m[586-18]) or _v214:FindFirstChildWhichIsA(_ei9m[1131+558])
end
local function _v215(_v216)
local _v217 = _v4.fishESP[_v216]
if _v217 and _v217.hl.Parent then return _v217 end
local _v218 = Instance.new(_ei9m[574+357])
_v218.FillColor = _v20w; _v218.FillTransparency = 0.55; _v218.OutlineColor = _v20w
_v218.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop; _v218.Parent = _v216
local _v219 = _v213(_v216)
local _v21a = Instance.new(_ei9m[5+738])
_v21a.Size = UDim2.new(0, 110, 0, 18); _v21a.StudsOffset = Vector3.new(0, 2, 0); _v21a.AlwaysOnTop = true
local _v21b = Instance.new(_ei9m[4+1247])
_v21b.Size = UDim2.new(1, 0, 1, 0); _v21b.BackgroundTransparency = 1; _v21b.Font = Enum.Font.GothamBold
_v21b.TextSize = 12; _v21b.TextColor3 = _v20w; _v21b.TextStrokeTransparency = 0.4; _v21b.Text = _ei9m[437-5]; _v21b.Parent = _v21a
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
if _v21j:IsA(_ei9m[1466]) then
_v21h[_v21j] = true
local _v21k = _v213(_v21j)
local _v21l = (_v21k and _v21g) and (_v21k.Position - _v21g.Position).Magnitude or 1e9
if _v4.FISH_ESP and _v21l <= _v20x then
local _v21m = _v215(_v21j)
if _v21m.lbl then _v21m.lbl.Text = _ei9m[5+1332] .. math.floor(_v21l) .. "m" end
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
_v4.VEG_CS = game:GetService(_ei9m[994])
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
if type(_v21z) == _ei9m[6+2351] then
for _v220, _v221 in ipairs(_v21z) do
if type(_v221) == _ei9m[7+2009] and _v221.Category
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
local _v222 = _v2:FindFirstChild(_ei9m[6+3021])
if not _v222 then return nil end
local _v223 = Instance.new(_ei9m[1523+931])
_v223.Name = _ei9m[2316+681]
_v223.Parent = _v222
_v4.vegFolder = _v223
return _v223
end
function _v4.vegLabel(_v224, _v225)
local _v226 = _v4.vegPool[_v224]
if _v226 and _v226.bb.Parent then return _v226 end
local _v227 = Instance.new(_ei9m[4+1162])
_v227.Name = _ei9m[3+1625]
_v227.Size = UDim2.new(0, 160, 0, 20)
_v227.StudsOffset = Vector3.new(0, 2.5, 0)
_v227.AlwaysOnTop = true
_v227.LightInfluence = 0
_v227.Enabled = false
local _v228 = Instance.new(_ei9m[2729-9])
_v228.Name = _ei9m[132+595]
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
for _v22i, _v22j in ipairs(_v4.VEG_CS:GetTagged(_ei9m[827+395])) do
local _v22k = _v4.vegInstCache[_v22j]
if not (_v22k and _v22k.part.Parent) then
local _v22l, _v22m = _v4.vegResolve(_v22j)
local _v22n = _v22m and (_v22j:IsA(_ei9m[2083+647]) and _v22j or _v22j:FindFirstChildWhichIsA(_ei9m[2+1219], true))
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
else _v22u = (_v22o:GetAttribute(_ei9m[2145-19]) == false) end
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
if _v233.eaten then _v234 = _ei9m[1897+1069]
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
_v4.UIS = game:GetService(_ei9m[1744])
_v4.IS_MOBILE = _v4.UIS.TouchEnabled and not _v4.UIS.KeyboardEnabled
pcall(function()
if type(getgenv) == _ei9m[2682] and getgenv().EZ_FORCE_MOBILE then _v4.IS_MOBILE = true end
end)
_v4.mob = { fwd = false, back = false, left = false, right = false, up = false, down = false,
turnL = false, turnR = false, insta = false, trimUp = false, trimDown = false }
if _v4.IS_MOBILE then
local _v235 = Color3.fromRGB(28, 22, 42)
local _v236 = Color3.fromRGB(120, 70, 220)
local _v237 = Instance.new(_ei9m[2143])
_v237.Name = _ei9m[129+269]; _v237.ResetOnSpawn = false; _v237.IgnoreGuiInset = true
_v237.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
pcall(function() _v237.Parent = (gethui and gethui()) or game:GetService(_ei9m[149+101]) end)
if not _v237.Parent then _v237.Parent = _v2:WaitForChild(_ei9m[444]) end
_v4.mobGui = _v237
local function _v238(_v239, _v23a, _v23b, _v23c, _v23d)
local _v23e = Instance.new(_ei9m[4+1000])
_v23e.Name = _ei9m[1662+496] .. _v23b
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
Instance.new(_ei9m[141+1961], _v23e).CornerRadius = UDim.new(0, 10)
local _v23f = Instance.new(_ei9m[620+1626], _v23e)
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
local _v23p = Instance.new(_ei9m[2842-6])
_v23p.Name = _v23l; _v23p.Size = UDim2.new(0, _v23m, 0, _v23n); _v23p.Position = _v23o
_v23p.BackgroundTransparency = 1; _v23p.Visible = false; _v23p.Parent = _v237
return _v23p
end
_v4.mobFlyPad = _v23k(_ei9m[1033-20], 200, 200, UDim2.new(0, 24, 1, -224))
_v238(_v4.mobFlyPad, _ei9m[1950-3], _ei9m[28+1841], UDim2.new(0, 62, 0, 0))
_v238(_v4.mobFlyPad, _ei9m[6+354], _ei9m[2269], UDim2.new(0, 0, 0, 62))
_v238(_v4.mobFlyPad, _ei9m[1240+577], _ei9m[2+126], UDim2.new(0, 124, 0, 62))
_v238(_v4.mobFlyPad, _ei9m[85+1], _ei9m[1525], UDim2.new(0, 62, 0, 124))
_v238(_v4.mobFlyPad, "+", "up", UDim2.new(0, 196, 0, 20), UDim2.new(0, 52, 0, 52))
_v238(_v4.mobFlyPad, _ei9m[2998-7], _ei9m[5+669], UDim2.new(0, 196, 0, 104), UDim2.new(0, 52, 0, 52))
_v4.mobTurnPad = _v23k(_ei9m[209-4], 200, 70, UDim2.new(1, -224, 1, -100))
_v238(_v4.mobTurnPad, _ei9m[1382], _ei9m[6+1339], UDim2.new(0, 0, 0, 0))
_v238(_v4.mobTurnPad, _ei9m[101+590], _ei9m[2271-10], UDim2.new(0, 68, 0, 0))
_v238(_v4.mobTurnPad, _ei9m[855-2], _ei9m[197], UDim2.new(0, 136, 0, 0))
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
MAIN = { _ei9m[1254-4], _ei9m[2589], _ei9m[2718], _ei9m[986-4], _ei9m[613-18] },
RENAME = { [_ei9m[245-15]] = _ei9m[364+1150],
[_ei9m[1870]] = _ei9m[2522], [_ei9m[5+1299]] = _ei9m[2+1447], [_ei9m[4+2796]] = _ei9m[6+2764],
[_ei9m[1057]] = _ei9m[798+342], [_ei9m[1577-4]] = _ei9m[1275-3], [_ei9m[1762]] = _ei9m[1147],
[_ei9m[435]] = _ei9m[2195+755],
[_ei9m[849+2085]] = _ei9m[3+2666], [_ei9m[1231]] = _ei9m[1101-8],
[_ei9m[785-7]] = _ei9m[2+2337], [_ei9m[1287-2]] = _ei9m[2700],
[_ei9m[2849-3]] = _ei9m[1191+1426],
[_ei9m[547]] = _ei9m[2070+342], [_ei9m[3+1501]] = _ei9m[2+2730],
[_ei9m[5+2735]] = _ei9m[5+1878],
[_ei9m[1282-4]] = _ei9m[902+1122], [_ei9m[1275-5]] = _ei9m[1278+1163] },
SUB_MAIN = {
[_ei9m[1776+397]] = _ei9m[1233], [_ei9m[90]] = _ei9m[79+0], [_ei9m[133]] = _ei9m[2+1894],
[_ei9m[1062+1715]] = _ei9m[710+691], [_ei9m[6+1017]] = _ei9m[2+2339], [_ei9m[2+896]] = _ei9m[2+1863],
[_ei9m[2216]] = _ei9m[1595-17], [_ei9m[1664+1059]] = _ei9m[4+76], [_ei9m[479]] = _ei9m[1927],
[_ei9m[4+2417]] = _ei9m[1300+1025], [_ei9m[2729+105]] = _ei9m[2473], [_ei9m[5+965]] = _ei9m[2890-17], [_ei9m[2599]] = _ei9m[89],
},
WHERE = {
[_ei9m[5+783]] = _ei9m[722-2], [_ei9m[6+1701]] = _ei9m[779+369], [_ei9m[2162]] = _ei9m[144+317], [_ei9m[6+250]] = _ei9m[53+57], [_ei9m[1068]] = _ei9m[81-12], [_ei9m[3+162]] = _ei9m[951-17], [_ei9m[550-14]] = _ei9m[2077-13], [_ei9m[1676]] = _ei9m[3+2752],
[_ei9m[1521]] = _ei9m[1452], [_ei9m[2525]] = _ei9m[2458-13], [_ei9m[3+2314]] = _ei9m[1690-10],
[_ei9m[913+367]] = _ei9m[3+2999], [_ei9m[4+324]] = _ei9m[16-14],
[_ei9m[1234]] = _ei9m[13-10],
},
NEST = {
[_ei9m[2067]] = { _ei9m[2252], _ei9m[516], _ei9m[5+2796] },
[_ei9m[7+1245]] = { _ei9m[7+449] },
[_ei9m[520+1815]] = { _ei9m[325], _ei9m[2+1820], _ei9m[815+1455], _ei9m[4+1887], _ei9m[114+659], _ei9m[1249] },
[_ei9m[1094]] = { _ei9m[2915], _ei9m[1224-11], _ei9m[295+1756], _ei9m[2+2981],
_ei9m[1651-1], _ei9m[7+96], _ei9m[48], _ei9m[421+651],
_ei9m[6+582],
_ei9m[2617-17], _ei9m[2469-3] },
[_ei9m[111+1222]] = { _ei9m[1156-1], _ei9m[2948-20], _ei9m[2515], _ei9m[33+3], _ei9m[6+2660],
_ei9m[416-12], _ei9m[676-4], _ei9m[16+2686], _ei9m[572-3], _ei9m[1383-4] },
[_ei9m[7+1994]] = { _ei9m[311+779] },
[_ei9m[112+324]] = { _ei9m[1113+1932], _ei9m[2137-18], _ei9m[590+191], _ei9m[1922+958] },
[_ei9m[1287+1287]] = { _ei9m[2+2341], _ei9m[2+3018], _ei9m[457], _ei9m[1039] },
[_ei9m[674+240]] = { _ei9m[1139-5], _ei9m[881+1490], _ei9m[2315], _ei9m[5+1949] },
[_ei9m[2369]] = { _ei9m[2316] },
[_ei9m[820-15]] = { _ei9m[510-9] },
[_ei9m[2976]] = { _ei9m[5+764], _ei9m[215], _ei9m[1532] },
[_ei9m[1204]] = { _ei9m[2572] },
[_ei9m[940]] = { _ei9m[3+859] },
[_ei9m[4+213]] = { _ei9m[515-10] },
[_ei9m[2574-4]] = { _ei9m[2595-19], _ei9m[1199], _ei9m[2950-14], _ei9m[218], _ei9m[2690-7], _ei9m[4+1442],
_ei9m[2113-4], _ei9m[735-1], _ei9m[197+556], _ei9m[2766], _ei9m[826+2074], _ei9m[1675-9], _ei9m[1751-1],
_ei9m[2766-8], _ei9m[2+2253], _ei9m[4+220], _ei9m[413+2193], _ei9m[1722], _ei9m[795-9],
_ei9m[4+1964], _ei9m[5+267], _ei9m[7+2333], _ei9m[1705+21], _ei9m[307+353],
_ei9m[2099-12], _ei9m[1330-7] },
[_ei9m[45+27]] = { _ei9m[2849-12], _ei9m[231] },
[_ei9m[266+102]] = { _ei9m[776+2109], _ei9m[5+851], _ei9m[1460] },
[_ei9m[433+1692]] = { _ei9m[2926] },
[_ei9m[607+55]] = { _ei9m[2619-5] },
[_ei9m[2640-15]] = { _ei9m[2697], _ei9m[2142-18], _ei9m[603], _ei9m[434], _ei9m[716-19], _ei9m[13+37], _ei9m[1346-8],
_ei9m[6+566], _ei9m[36+1328], _ei9m[2876-8] },
[_ei9m[4+825]] = { _ei9m[477+222], _ei9m[790] },
[_ei9m[491-1]] = { _ei9m[7+2092] },
[_ei9m[591-17]] = { _ei9m[2513] },
[_ei9m[2+2992]] = { _ei9m[566-15] },
[_ei9m[3+342]] = { _ei9m[427+491], _ei9m[5+1586], _ei9m[808+2063], _ei9m[11+2438] },
[_ei9m[865-18]] = { _ei9m[626-14] },
[_ei9m[362+39]] = { _ei9m[2203] },
[_ei9m[935-10]] = { _ei9m[2+2701], _ei9m[100-7], _ei9m[2531] },
},
ORDER = {
AutoFarm = { _ei9m[307-14], _ei9m[329-10], _ei9m[511+2358], _ei9m[932+226], _ei9m[2+2900], _ei9m[179+81], _ei9m[692+923] },
Stats = { _ei9m[813-17], _ei9m[2751], _ei9m[2111-11], _ei9m[81+2149], _ei9m[3+2333] },
},
HEADERS = {},
LOCKED = {},
}
function _v4.displayName(_v23s)
local _v23t = (tostring(_v23s or ""):gsub(_ei9m[165+122], ""):gsub(_ei9m[1039-5], ""))
local _v23u = _v4.MENU_LAYOUT.RENAME and _v4.MENU_LAYOUT.RENAME[_v23t]
return _v23u or (_v23t:gsub(_ei9m[2925], ""))
end
function _v4.ezBridge(_v23v)
local _v23w = game:GetService(_ei9m[178-5])
local _v23x = game:GetService(_ei9m[255-12])
local _v23y = _v4.MENU_LAYOUT
local _v23z = { Caps = { sectionInfo = true } }
local function _v240(_v241)
return (tostring(_v241 or ""):gsub(_ei9m[1215], ""):gsub(_ei9m[2+2220], ""))
end
local function _v242(_v243)
local _v244, _v245 = {}, nil
for _v246 in (tostring(_v243) .. "\n"):gmatch(_ei9m[239+523]) do
local _v247, _v248 = _v246:match(_ei9m[1958-7])
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
if typeof(_v24e) == _ei9m[6+1186] and _v24e ~= Enum.KeyCode.Unknown then
_v24a:SetKeybind(_v24e.Name)
else
_v24a.Keybind = nil
pcall(function()
_v24a._kbBtn.Text = _ei9m[116+20]
_v24a:_markBound(false)
end)
end
end
return setmetatable(_v24b, { __index = function(_v24g, _v24h)
if _v24h == _ei9m[673-12] then return _v24a.Keybind or Enum.KeyCode.Unknown end
if _v24h == _ei9m[243+275] or _v24h == _ei9m[594+1983] then return _v24a.Enabled end
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
if _v24s == _ei9m[7+1404] then return Enum.KeyCode.Unknown end
if _v24s == _ei9m[282-2] or _v24s == _ei9m[2280] then return _v24n.Value end
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
if _v252 == _ei9m[65-3] then return _v24x.Value end
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
if _v25e == _ei9m[2+1956] then return _v257.Selected end
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
_v25k:Set(type(_v25m) == _ei9m[1454+1333] and _v25m or {}, not _v25n)
end
function _v25l:Refresh(_v25o, _v25p)
self._items = _v25o
if not _v25p then _v25k:Set({}, false) end
_v25k:Refresh(_v25o or {})
end
return setmetatable(_v25l, { __index = function(_v25q, _v25r)
if _v25r == _ei9m[211+749] then
local _v25s = {}
for _v25t in pairs(_v25k.Selected or {}) do _v25s[_v25t] = true end
return _v25s
end
return nil
end })
end
local function _v25u(_v25v, _v25w)
local _v25x = _v240(_v25w.Name or _ei9m[275+1267])
local _v25y = _v25w.Changed or _v25w.Callback or function() end
local _v25z = { Key = typeof(_v25w.Default) == _ei9m[2903-11] and _v25w.Default or Enum.KeyCode.Unknown }
local _v260
local function _v261(_v262)
if _v260 then
_v260.Text = _v262 or (_v25x .. _ei9m[1389-3] .. (_v25z.Key == Enum.KeyCode.Unknown and _ei9m[3+814] or _v25z.Key.Name))
end
end
local _v263 = false
local row = _v25v:AddButton({
Name = _v25x,
Callback = function()
if _v263 then return end
_v263 = true
_v261(_v25x .. _ei9m[2665])
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
if _v267:IsA(_ei9m[2256-19]) and _v267.Text == _v25x then
_v260 = _v267
break
end
end
_v261()
function _v25z:Set(_v268, _v269)
if typeof(_v268) == _ei9m[6+379] then _v25z.Key = _v268 end
_v261()
if not _v269 then pcall(_v25y, _v25z.Key) end
end
return _v25z
end
local function _v26a()
return setmetatable({}, { __index = function(_v26b, _v26c)
if _v26c == _ei9m[2997-12] then return Enum.KeyCode.Unknown end
if _v26c == _ei9m[2375-7] or _v26c == _ei9m[2+1301] then return false end
if _v26c == _ei9m[685] then return {} end
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
function _v26g:AddSection(_v26w)
_v26i = type(_v26w) == _ei9m[10+108] and _v26w.Name or _v26w
_v26h = (type(_v26w) == _ei9m[1361] and _v26w.Info) and _v242(_v26w.Info) or {}
return nil
end
function _v26g:AddToggle(_v26x)
_v26x = _v26x or {}
if _v26j(_v26x.Name) then return _v26a() end
local _v26y, _v26z, _v270 = _v26m(_v26x.Name, true)
if _v26z then
local _v271 = _v240(_v26x.Name)
if not _v26e.hasKids[_v271] then return _v24i(_v26y, _v26x, _v26x.Tooltip or _v26h[_v271]) end
local _v272 = _v26y:AddToggle({
Name = _v4.displayName(_v271),
Default = false,
Tooltip = _v26x.Tooltip or _v26h[_v271],
Callback = _v26x.Callback or function() end,
})
if _v26x.Default then _v272:Set(true) end
_v26e.masters[_v271] = _v272
return _v249(_v272)
end
local _v273 = _v240(_v26x.Name)
local _v274 = _v26y:AddToggle({
Name = _v4.displayName(_v273),
Default = false,
Keybind = type(_v26x.Keybind) == _ei9m[5+703] and _v26x.Keybind or nil,
Tooltip = _v26x.Tooltip or _v26h[_v273],
Callback = _v26x.Callback or function() end,
})
if _v26x.Default then _v274:Set(true) end
_v26e.masters[_v273] = _v274
local _v275 = _v26e.rank[_v270] and _v26e.rank[_v270][_v273]
if _v275 then _v274._container.LayoutOrder = _v275 - 100000 end
return _v249(_v274)
end
function _v26g:AddSlider(_v276)
_v276 = _v276 or {}
if _v26j(_v276.Name) then return _v26a() end
return _v24t(_v26m(_v276.Name, true), _v276)
end
function _v26g:AddDropdown(_v277)
_v277 = _v277 or {}
if _v26j(_v277.Name) then return _v26a() end
local _v278 = _v26m(_v277.Name, true)
if _v277.Multi then return _v25f(_v278, _v277) end
return _v253(_v278, _v277)
end
function _v26g:AddButton(_v279)
_v279 = _v279 or {}
if _v26j(_v279.Name) then return _v26a() end
return (_v26m(_v279.Name, false)):AddButton({ Name = _v240(_v279.Name), Callback = _v279.Callback })
end
function _v26g:AddLabel(_v27a)
_v27a = _v27a or {}
if _v26j(_v27a.Name) then return _v26a() end
local _v27b
pcall(function()
local _v27c, _v27d = _v26m(_v27a.Name, true)
if _v27d and _v27c.AddNote then
_v27b = _v27c:AddNote(_v27a.Text or "")
elseif not _v27d and _v27c.AddLabel then
_v27b = _v27c:AddLabel(_v27a.Text or "")
end
end)
return { SetText = function(_v27e, _v27f)
_v27e._text = _v27f
pcall(function()
if typeof(_v27b) == _ei9m[6+2870] then _v27b.Text = tostring(_v27f)
elseif _v27b and _v27b.SetText then _v27b:SetText(tostring(_v27f)) end
end)
end }
end
function _v26g:AddKeybind(_v27g)
_v27g = _v27g or {}
if _v26j(_v27g.Name) then return _v26a() end
return _v25u((_v26m(_v27g.Name, false)), _v27g)
end
_v26g._raw = {}
for _v27h, _v27i in ipairs({ _ei9m[7+2629], _ei9m[6+2592], _ei9m[1497-19], _ei9m[2+2584], _ei9m[1528+1380], _ei9m[1930-13], _ei9m[3+1198] }) do
local _v27j = _v26g[_v27i]
_v26g._raw[_v27i] = _v27j
_v26g[_v27i] = function(_v27k, _v27l, ...)
local _v27m = _v27j(_v27k, _v27l, ...)
local _v27n = _v26e.rec
if _v27n and not _v27n.replaying then
_v27n.log[#_v27n.log + 1] = { proxy = _v26g, method = _v27i, cfg = _v27l, obj = _v27m }
end
return _v27m
end
end
return _v26g
end
function _v23z.new(_v27o)
_v27o = _v27o or {}
local _v27p = (type(getgenv) == _ei9m[833+517]) and getgenv() or _G
if _v27p.__PX_EZ_WIN then
pcall(function()
_v27p.__PX_EZ_WIN.OnUnload = nil
_v27p.__PX_EZ_WIN:Destroy()
end)
end
local _v27q = { tabs = {}, toggleKey = Enum.KeyCode.RightShift }
local _v27r = false
local _v27s = _ei9m[7+1768]
local _v27t = false
local _v27u, _v27v = _v23w.MouseBehavior, _v23w.MouseIconEnabled
local _v27w = {}
pcall(function()
_v27w[1] = _v23w:GetPropertyChangedSignal(_ei9m[3+894]):Connect(function()
local _v27x = _v23w.MouseBehavior
if not _v27t or _v27x ~= Enum.MouseBehavior.Default then _v27u = _v27x end
end)
_v27w[2] = _v23w:GetPropertyChangedSignal(_ei9m[857]):Connect(function()
local _v27y = _v23w.MouseIconEnabled
if not _v27t or not _v27y then _v27v = _v27y end
end)
end)
local function _v27z()
_v23w.MouseBehavior = _v27u
_v23w.MouseIconEnabled = _v27v
end
local function _v280()
pcall(function() _v23x:UnbindFromRenderStep(_v27s) end)
for _v281, _v282 in ipairs(_v27w) do pcall(function() _v282:Disconnect() end) end
if _v27t then
_v27t = false
pcall(_v27z)
end
end
local _v283 = {}
for _v284, _v285 in pairs(_v23y.NEST) do
for _v286, _v287 in ipairs(_v285) do _v283[_v287] = _v284 end
end
local _v288 = {}
for _v289, _v28a in pairs(_v23y.ORDER or {}) do
_v288[_v289] = {}
for _v28b, _v28c in ipairs(_v28a) do _v288[_v289][_v28c] = _v28b end
end
local _v28d = {}
for _v28e in pairs(_v23y.NEST) do _v28d[_v28e] = true end
local _v28f = {}
local function _v28g(_v28h)
if _v28f[_v28h] then return end
_v28f[_v28h] = true
for _v28i, _v28j in ipairs(_v23y.NEST[_v28h] or {}) do _v28g(_v28j) end
end
for _v28k, _v28l in ipairs(_v23y.LOCKED or {}) do _v28g(_v28l) end
local _v28m = { EZ = _v23v, kind = _v4.guiKindOf(_v23v), win = nil, ctx = nil, modal = nil, cfgOpts = nil }
local _v28n = { log = {}, replaying = false }
local _v28q = setmetatable({}, { __index = function(_v28o, _v28p) return _v28m.ctx and _v28m.ctx[_v28p] end })
local _v28r = false
local _v28s = _v23w.TouchEnabled and not _v23w.KeyboardEnabled
local function _v28t(_v28u)
local _v28w = function(_v28v) return _v27q:SwapGui(_v28v) end
if _v28u == _ei9m[766+1624] then
return { current = _ei9m[3024-6], options = { _ei9m[911], _ei9m[51+834], _ei9m[1417-15], _ei9m[194-14] }, pick = _v28w }
end
return { options = { { Name = _ei9m[2629-9], Accent = Color3.fromRGB(140, 95, 255), Ink = Color3.fromRGB(12, 10, 18),
Blurb = _ei9m[1765-11] } }, pick = _v28w }
end
local function _v28x(_v28y, _v28z)
local _v290 = _v28y:CreateWindow({
Title = _v27o.Title or _ei9m[6+732],
Website = _ei9m[847+1952],
Discord = _ei9m[7+2059],
GuiSwap = _v28t(_v28z),
OnUnload = function()
if _v27r or _v28r then return end
_v27r = true
if _v27q.onUnload then pcall(_v27q.onUnload) end
_v280()
end,
})
local _v291 = { win = _v290, tabs = {}, masters = {}, parentOf = _v283, lastHeader = {}, rank = _v288,
hasKids = _v28d, locked = _v28f, rec = _v28n }
for _v292, _v293 in ipairs(_v23y.MAIN) do _v291.tabs[_v293] = _v290:AddTab(_v293) end
local _v294
if not _v28s then
_v294 = Instance.new(_ei9m[1094+1450])
_v294.Name = _ei9m[2514]
_v294.Modal = true
_v294.Text = ""
_v294.AutoButtonColor = false
_v294.BackgroundTransparency = 1
_v294.Size = UDim2.new(0, 1, 0, 1)
_v294.Visible = false
_v294.Parent = _v290._gui
end
return _v290, _v291, _v294
end
_v28m.win, _v28m.ctx, _v28m.modal = _v28x(_v23v, _v28m.kind)
_v27p.__PX_EZ_WIN = _v28m.win
if not _v28s then
pcall(function()
_v23x:BindToRenderStep(_v27s, Enum.RenderPriority.Camera.Value + 1, function()
local _v295, _v296 = _v28m.win, _v28m.modal
if _v295 and _v295._gui and _v295._visible then
if _v296 and not _v296.Visible then _v296.Visible = true end
if not _v27t then
_v27t = true
else
if _v23w.MouseBehavior ~= Enum.MouseBehavior.Default then _v27u = _v23w.MouseBehavior end
if not _v23w.MouseIconEnabled then _v27v = false end
end
_v23w.MouseBehavior = Enum.MouseBehavior.Default
_v23w.MouseIconEnabled = true
elseif _v27t and not _v28r then
_v27t = false
if _v296 then _v296.Visible = false end
_v27z()
end
end)
end)
end
function _v27q:IsVisible()
return _v28m.win ~= nil and _v28m.win._gui ~= nil and _v28m.win._visible == true
end
function _v27q:Notify(_v297, _v298)
if _v28m.win and _v28m.win._gui then return _v28m.win:Notify(_v297, _v298 or 3) end
return nil
end
function _v27q:SetConfig(_v299)
_v28m.cfgOpts = _v299
return _v28m.win:SetConfig(_v299)
end
function _v27q:Destroy()
_v27r = true
_v280()
pcall(function() _v28m.win:Destroy() end)
if _v27p.__PX_EZ_WIN == _v28m.win then _v27p.__PX_EZ_WIN = nil end
end
function _v27q:GetGui()
return _v28m.kind
end
function _v27q:GetLook()
local _v29a
pcall(function() _v29a = _v28m.win:GetTheme() end)
return _v29a
end
local function _v29b(_v29c)
local _v29d = _v29c.obj
if type(_v29d) ~= _ei9m[2616+71] then return nil end
local _v29e = {}
pcall(function()
local _v29f = _v29c.method
if _v29f == _ei9m[18+111] then _v29e.value = _v29d.Value; _v29e.key = _v29d.Key
elseif _v29f == _ei9m[2528-5] then _v29e.value = _v29d.Value
elseif _v29f == _ei9m[2+2757] then _v29e.value = _v29d.Selected; _v29e.items = rawget(_v29d, _ei9m[1035])
elseif _v29f == _ei9m[7+649] then _v29e.key = _v29d.Key
elseif _v29f == _ei9m[833+912] then _v29e.text = rawget(_v29d, _ei9m[1693+581]) end
end)
return _v29e
end
local function _v29g(_v29h, _v29i)
if type(_v29h.cfg) ~= _ei9m[598] then return _v29h.cfg end
local _v29j = {}
for _v29k, _v29l in pairs(_v29h.cfg) do _v29j[_v29k] = _v29l end
if _v29i then
local _v29m = _v29h.method
if (_v29m == _ei9m[7+1527] or _v29m == _ei9m[1461]) and _v29i.value ~= nil then _v29j.Default = _v29i.value
elseif _v29m == _ei9m[2236-15] then
if _v29i.value ~= nil then _v29j.Default = _v29i.value end
if _v29i.items then _v29j.Items, _v29j.Options = _v29i.items, nil end
elseif _v29m == _ei9m[4+1078] and _v29i.key then _v29j.Default = _v29i.key end
end
return _v29j
end
local function _v29n(_v29o, _v29p)
if type(_v29o) ~= _ei9m[2+2940] or type(_v29p) ~= _ei9m[425] or _v29o == _v29p then return end
for _v29q in pairs(_v29o) do
if _v29q ~= _ei9m[1204+1061] and _v29q ~= _ei9m[1159] then _v29o[_v29q] = nil end
end
for _v29r, _v29s in pairs(_v29p) do _v29o[_v29r] = _v29s end
setmetatable(_v29o, getmetatable(_v29p))
end
local function _v29t(_v29u, _v29v)
local _v29w = _v29u.obj
if type(_v29w) ~= _ei9m[2+587] or not _v29v then return end
pcall(function()
local _v29x = _v29u.method
if _v29x == _ei9m[133+67] then
if _v29v.value ~= nil and _v29w.Set then _v29w:Set(_v29v.value, true) end
if typeof(_v29v.key) == _ei9m[206+2113] and _v29v.key ~= Enum.KeyCode.Unknown and _v29w.SetKey then _v29w:SetKey(_v29v.key, true) end
elseif _v29x == _ei9m[313] or _v29x == _ei9m[1627] then
if _v29v.value ~= nil and _v29w.Set then _v29w:Set(_v29v.value, true) end
elseif _v29x == _ei9m[2624-12] then
if _v29v.key and _v29w.Set then _v29w:Set(_v29v.key, true) end
elseif _v29x == _ei9m[2579] then
if _v29v.text ~= nil and _v29w.SetText then _v29w:SetText(_v29v.text) end
end
end)
end
function _v27q:SwapGui(_v29y)
_v29y = tostring(_v29y or "")
local _v29z = (_v29y == _ei9m[2059+325]) and _ei9m[7+1455] or _ei9m[260+325]
if _v28r or _v27r then return false end
if _v29z == _v28m.kind then
if _v29z == _ei9m[539] then
pcall(function()
if _v28m.win._pickTheme then _v28m.win:_pickTheme(_v29y) else _v28m.win:SetTheme(_v29y) end
end)
end
return true
end
local _v2a0 = os.clock()
local _v2a1, _v2a2 = _v4.guiLibrary(_v29z)
if not _v2a1 then
_v27q:Notify(_ei9m[1007+925] .. _v29y .. ": " .. tostring(_v2a2), 4)
return false
end
_v28r = true
local _v2a3 = {}
for _v2a4, _v2a5 in ipairs(_v28n.log) do _v2a3[_v2a4] = _v29b(_v2a5) end
local _v2a6 = { win = _v28m.win, ctx = _v28m.ctx, modal = _v28m.modal, EZ = _v28m.EZ, kind = _v28m.kind }
local _v2a7, _v2a8 = {}, nil
local okBuild, buildErr = pcall(function()
local _v2a9, _v2aa, _v2ab = _v28x(_v2a1, _v29z)
_v2a9._autoLoaded = true
_v28m.win, _v28m.ctx, _v28m.modal, _v28m.EZ, _v28m.kind = _v2a9, _v2aa, _v2ab, _v2a1, _v29z
_v28n.replaying = true
local _v2ac = _v4.SUPPRESS_TOGGLE_NOTIFY
_v4.SUPPRESS_TOGGLE_NOTIFY = true
for _v2ad, _v2ae in ipairs(_v28n.log) do
local _v2af, _v2ag = pcall(_v2ae.proxy._raw[_v2ae.method], _v2ae.proxy, _v29g(_v2ae, _v2a3[_v2ad]))
if not _v2af then _v2a8 = _v2a8 or (_v2ae.method .. " " .. tostring(type(_v2ae.cfg) == _ei9m[5+2050] and _v2ae.cfg.Name or _v2ae.cfg) .. ": " .. tostring(_v2ag)) end
_v2a7[_v2ad] = _v2ag
end
_v4.SUPPRESS_TOGGLE_NOTIFY = _v2ac
_v28n.replaying = false
if _v2a8 then error(_v2a8, 0) end
end)
_v28n.replaying = false
if not okBuild then
local _v2ah, _v2ai = _v28m.win, _v28m.modal
_v28m.win, _v28m.ctx, _v28m.modal, _v28m.EZ, _v28m.kind = _v2a6.win, _v2a6.ctx, _v2a6.modal, _v2a6.EZ, _v2a6.kind
if _v2ah and _v2ah ~= _v2a6.win then pcall(function() _v2ah.OnUnload = nil _v2ah:Destroy() end) end
if _v2ai and _v2ai ~= _v2a6.modal then pcall(function() _v2ai:Destroy() end) end
_v28r = false
warn(_ei9m[161+909] .. _v29y .. _ei9m[1114+532] .. tostring(buildErr))
_v27q:Notify(_ei9m[2731] .. _v29y, 4)
return false
end
for _v2aj, _v2ak in ipairs(_v28n.log) do
_v29n(_v2ak.obj, _v2a7[_v2aj])
_v29t(_v2ak, _v2a3[_v2aj])
end
if _v28m.cfgOpts then
local _v2al = {}
for _v2am, _v2an in pairs(_v28m.cfgOpts) do _v2al[_v2am] = _v2an end
_v2al.AutoLoad = false
pcall(function() _v28m.win:SetConfig(_v2al) end)
end
_v27p.__PX_EZ_WIN = _v28m.win
pcall(function() _v2a6.win.OnUnload = nil _v2a6.win:Destroy() end)
if _v2a6.modal then pcall(function() _v2a6.modal:Destroy() end) end
if _v29z == _ei9m[345+947] then
pcall(function()
if _v28m.win._pickTheme then _v28m.win:_pickTheme(_v29y) else _v28m.win:SetTheme(_v29y) end
end)
end
_v28r = false
_v4.saveGuiChoice(_v29z)
_v27q:Notify(string.format(_ei9m[2288], _v29y, os.clock() - _v2a0), 3)
return true
end
function _v27q:AddTab(_v2ao)
local _v2ap = {}
function _v2ap:AddSubTab(_v2aq)
return _v26d(_v28q, type(_v2aq) == _ei9m[450-7] and _v2aq.Name or tostring(_v2aq))
end
return _v2ap
end
_v27q.tabs.Settings = _v26d(_v28q, _ei9m[1206])
return _v27q
end
return _v23z
end
_v4.FUSION_LAYOUT = (function()
return {
kind = _ei9m[2+1695], version = 1, hub = _ei9m[487+333],
match = 3,
pages = {
{ name = _ei9m[6+3024], icon = _ei9m[1305+740], blurb = _ei9m[5+527],
sections = {
{ title = _ei9m[719+68], note = _ei9m[2+2096] },
{ title = _ei9m[2575-16], note = _ei9m[1514-13] },
{ title = _ei9m[591-18], note = _ei9m[7+521] },
} },
{ name = _ei9m[79+693], icon = _ei9m[1671-15], blurb = _ei9m[1490-7],
sections = {
{ title = _ei9m[263+121], note = _ei9m[132+10] },
{ title = _ei9m[111], note = _ei9m[516+1044] },
} },
{ name = _ei9m[792], icon = _ei9m[4+1286], blurb = _ei9m[382+1417],
sections = {
{ title = _ei9m[361+1769], note = _ei9m[835-12] },
{ title = _ei9m[299+117], note = _ei9m[1793-4] },
} },
{ name = _ei9m[2+1799], icon = _ei9m[242-1], blurb = _ei9m[474-19],
sections = {
{ title = _ei9m[806+1030], note = _ei9m[2465-10] },
{ title = _ei9m[1738], note = _ei9m[199] },
{ title = _ei9m[937+1128], note = _ei9m[1609] },
{ title = _ei9m[798-5], note = _ei9m[4+1842] },
} },
{ name = _ei9m[2644], icon = _ei9m[3015-11], blurb = _ei9m[1721-9],
sections = {
{ title = _ei9m[3034], note = _ei9m[2+1658] },
{ title = _ei9m[206], note = _ei9m[1131+324] },
{ title = _ei9m[20-12], note = _ei9m[350-16] },
{ title = _ei9m[2541+288], note = _ei9m[202+614] },
{ title = _ei9m[1570], note = _ei9m[248] },
} },
},
features = {
[_ei9m[707]] = { page = _ei9m[553], section = 1,
hint = _ei9m[427-3],
keys = { _ei9m[2502-2], _ei9m[2+1992], _ei9m[5+1803], _ei9m[163-13] },
},
[_ei9m[208+1003]] = { page = _ei9m[51+290], section = 1,
hint = _ei9m[975],
keys = { _ei9m[1692-4], _ei9m[768-13], _ei9m[92+692], _ei9m[1291+138], _ei9m[7+2805], _ei9m[2741] },
},
[_ei9m[3+2849]] = { page = _ei9m[2136], section = 1,
hint = _ei9m[252+155],
keys = { _ei9m[1551], _ei9m[3+809], _ei9m[2614-12], _ei9m[1944-20], _ei9m[2663], _ei9m[359+1322] },
groups = {
{ title = _ei9m[2567-11],
rows = { _ei9m[2286-19], _ei9m[5+549] },
},
{ title = _ei9m[1490-19],
rows = { _ei9m[2+81], _ei9m[783], _ei9m[71+2946], _ei9m[3+2965], _ei9m[2442],
_ei9m[1292+1414] },
},
{ title = _ei9m[6+2503],
rows = { _ei9m[230+307], _ei9m[2+730], _ei9m[196+1134] },
},
},
},
[_ei9m[1661-3]] = { page = _ei9m[70+414], section = 2,
hint = _ei9m[1914],
keys = { _ei9m[561-3], _ei9m[38-10], _ei9m[1160-16], _ei9m[841-19], _ei9m[7+704] },
groups = {
{ title = _ei9m[2855-11],
rows = { _ei9m[5+1125], _ei9m[6+2134], _ei9m[6+1117], _ei9m[5+2623], _ei9m[7+2304], _ei9m[4+2646] },
},
{ title = _ei9m[772-14],
rows = { _ei9m[1020+67], _ei9m[5+515], _ei9m[4+1171], _ei9m[3+2707] },
},
},
},
[_ei9m[2018]] = { page = _ei9m[2228], section = 2,
hint = _ei9m[2219+565],
keys = { _ei9m[2863], _ei9m[2118], _ei9m[1293-2], _ei9m[3+1052], _ei9m[3+1879] },
},
Rejoin = { page = _ei9m[859-9], section = 2,
hint = _ei9m[108-3],
about = _ei9m[4+2563],
keys = { _ei9m[1583+464], _ei9m[794+50], _ei9m[7+2660], _ei9m[881] },
},
[_ei9m[5+2116]] = { page = _ei9m[2769-9], section = 1,
hint = _ei9m[4+1629],
about = _ei9m[329-5],
keys = { _ei9m[349+1640], _ei9m[1253+276], _ei9m[2031], _ei9m[1699-17] },
},
[_ei9m[1560-10]] = { page = _ei9m[3+1412], section = 2,
hint = _ei9m[7+1220],
keys = { _ei9m[1011-11], _ei9m[6+2388], _ei9m[1786-15], _ei9m[1249-3], _ei9m[5+2221] },
},
[_ei9m[1995]] = { page = _ei9m[681], section = 3,
hint = _ei9m[4+2198],
about = _ei9m[1317+1729],
keys = { _ei9m[2332+397], _ei9m[26+155], _ei9m[2601], _ei9m[1427], _ei9m[2655+364] },
},
[_ei9m[2199]] = { page = _ei9m[886-7], section = 1,
hint = _ei9m[701+720],
keys = { _ei9m[3+1063], _ei9m[101+2888], _ei9m[4+1394], _ei9m[795-19], _ei9m[3+1807], _ei9m[2961], _ei9m[722] },
},
[_ei9m[3+1611]] = { page = _ei9m[92+1785], section = 1,
hint = _ei9m[5+6],
keys = { _ei9m[2068], _ei9m[6+580], _ei9m[1780] },
},
[_ei9m[2693]] = { page = _ei9m[1509+565], section = 2,
hint = _ei9m[2060-7],
keys = { _ei9m[2485-6], _ei9m[411+2354], _ei9m[7+287], _ei9m[6+1397] },
},
[_ei9m[1661-10]] = { page = _ei9m[1726-7], section = 2,
hint = _ei9m[246+17],
keys = { _ei9m[5+1100], _ei9m[6+978], _ei9m[7+956], _ei9m[5+403] },
},
[_ei9m[198+94]] = { page = _ei9m[2245+726],
hint = _ei9m[6+920],
keys = { _ei9m[927+1440], _ei9m[637+1929], _ei9m[22+286], _ei9m[2166-12], _ei9m[1377-10] },
},
[_ei9m[65-8]] = { page = _ei9m[668+391],
hint = _ei9m[561+1772],
about = _ei9m[1067+60],
keys = { _ei9m[492+134], _ei9m[68-12], _ei9m[339+137], _ei9m[162+227], _ei9m[3+1304], _ei9m[2933-9] },
},
[_ei9m[2093]] = { page = _ei9m[2389],
hint = _ei9m[6+904],
keys = { _ei9m[965+759], _ei9m[851-11], _ei9m[1169-1], _ei9m[1176-13], _ei9m[182+1668], _ei9m[2209-13] },
},
[_ei9m[2+1026]] = { page = _ei9m[576], section = 1,
hint = _ei9m[3+984],
keys = { _ei9m[1321], _ei9m[72+374], _ei9m[1712+642], _ei9m[2695], _ei9m[749+782], _ei9m[4+1082] },
},
Reach = { page = _ei9m[2871-9], section = 1,
hint = _ei9m[2832],
keys = { _ei9m[4+2950], _ei9m[428-2], _ei9m[2596-16], _ei9m[355+1829], _ei9m[5+2238] },
},
[_ei9m[1929]] = { page = _ei9m[1032-17], section = 2,
hint = _ei9m[2904],
keys = { _ei9m[171], _ei9m[1423], _ei9m[104+1016], _ei9m[439+1067] },
},
[_ei9m[375+1078]] = { page = _ei9m[2819], section = 2,
hint = _ei9m[2587],
keys = { _ei9m[338-2], _ei9m[2+999], _ei9m[2019+185], _ei9m[1928] },
},
[_ei9m[7+1082]] = { page = _ei9m[2+2891], section = 2,
hint = _ei9m[1200],
keys = { _ei9m[1404], _ei9m[1562+93], _ei9m[3065-15], _ei9m[1085], _ei9m[972-7] },
},
Players = { page = _ei9m[318-13], section = 1,
hint = _ei9m[1036-11],
keys = { _ei9m[2+759], _ei9m[2064-12], _ei9m[2648-18], _ei9m[2894], _ei9m[133+1167], _ei9m[2176-1], _ei9m[7+445] },
groups = {
{ title = _ei9m[276],
rows = { _ei9m[3+120], _ei9m[1790+2], _ei9m[2547+143], _ei9m[1592], _ei9m[6+1159], _ei9m[7+2740], _ei9m[2248], _ei9m[4+2933], _ei9m[1288+653], _ei9m[2397-15], _ei9m[2091-13], _ei9m[506+645], _ei9m[1318-2], _ei9m[1036], _ei9m[2012], _ei9m[1200-13], _ei9m[1189], _ei9m[68-7], _ei9m[6+2015] },
},
{ title = _ei9m[1535],
rows = { _ei9m[2895-18], _ei9m[364], _ei9m[2870], _ei9m[1051], _ei9m[1284+112], _ei9m[488+1570] },
},
{ title = _ei9m[2323-10], flatten = _ei9m[982+1284],
rows = { _ei9m[1106+662], _ei9m[3+98], _ei9m[698+745] },
dim = { [_ei9m[195+142]] = _ei9m[2+338], [_ei9m[1362-11]] = _ei9m[800+476] },
},
},
},
[_ei9m[1753]] = { page = _ei9m[3+1306], section = 1,
hint = _ei9m[991-6],
keys = { _ei9m[296], _ei9m[2298], _ei9m[3+580] },
},
[_ei9m[7+1512]] = { page = _ei9m[1266+3], section = 1,
hint = _ei9m[1081-10],
keys = { _ei9m[30], _ei9m[122], _ei9m[1923], _ei9m[501+917], _ei9m[2+190] },
},
[_ei9m[1555]] = { page = _ei9m[1063], section = 1,
hint = _ei9m[1809+570],
keys = { _ei9m[813-11], _ei9m[161+2435] },
},
[_ei9m[750+1615]] = { page = _ei9m[553+302], section = 2,
hint = _ei9m[24+359],
keys = { _ei9m[146-7], _ei9m[5+1434], _ei9m[811+948], _ei9m[949] },
},
[_ei9m[1907]] = { page = _ei9m[51+872], section = 2,
hint = _ei9m[2975],
keys = { _ei9m[164], _ei9m[3020-8], _ei9m[2226-17], _ei9m[59+19] },
},
Skin = { page = _ei9m[2984-20], section = 2,
hint = _ei9m[2683-4],
keys = { _ei9m[252+1248], _ei9m[6+984], _ei9m[901-9], _ei9m[1314], _ei9m[229+75] },
},
Tracers = { page = _ei9m[57+769], section = 2,
hint = _ei9m[208+332],
keys = { _ei9m[134-20], _ei9m[2832-4], _ei9m[257+358], _ei9m[2+2839] },
},
Fullbright = { page = _ei9m[2493-3], section = 3,
hint = _ei9m[5+714],
keys = { _ei9m[3+2384], _ei9m[2+685], _ei9m[2266-19], _ei9m[198+272] },
},
[_ei9m[6+1822]] = { page = _ei9m[173+175], section = 3,
hint = _ei9m[592+852],
keys = { _ei9m[1319], _ei9m[4+2414], _ei9m[1752], _ei9m[2782] },
},
[_ei9m[2909]] = { page = _ei9m[2128-17], section = 3,
hint = _ei9m[2123],
keys = { _ei9m[579+75], _ei9m[1619], _ei9m[270+8], _ei9m[634-13], _ei9m[489], _ei9m[2764-10] },
},
[_ei9m[1692-20]] = { page = _ei9m[1350+497], section = 3,
hint = _ei9m[2649],
keys = { _ei9m[1755], _ei9m[613+959], _ei9m[634+772], _ei9m[1977-11], _ei9m[5+543], _ei9m[2108] },
},
[_ei9m[2337]] = { page = _ei9m[860+387], section = 4,
hint = _ei9m[514+56],
keys = { _ei9m[2708-1], _ei9m[148+266], _ei9m[1149-4] },
},
[_ei9m[1917-20]] = { page = _ei9m[732-18], section = 4,
hint = _ei9m[384+1023],
keys = { _ei9m[57+2002], _ei9m[262+1227], _ei9m[483+856] },
},
[_ei9m[2738-16]] = { page = _ei9m[3027-2], section = 4,
hint = _ei9m[2615-4],
keys = { _ei9m[5+1255], _ei9m[2034], _ei9m[1667] },
},
[_ei9m[883+322]] = { page = _ei9m[1297-14], section = 4,
hint = _ei9m[3+504],
keys = { _ei9m[6+337], _ei9m[2310-9], _ei9m[2638-7], _ei9m[1393+1556], _ei9m[757], _ei9m[1117-4] },
},
[_ei9m[2746]] = { page = _ei9m[67-3], section = 4,
hint = _ei9m[3020-11],
keys = { _ei9m[1217-8], _ei9m[5+2037], _ei9m[2139], _ei9m[342-3], _ei9m[1572-4] },
},
[_ei9m[1839-1]] = { page = _ei9m[2842], section = 1,
hint = _ei9m[1813],
keys = { _ei9m[2108-7], _ei9m[7+169], _ei9m[2192-3], _ei9m[4+3], _ei9m[109+269], _ei9m[342] },
},
[_ei9m[2941]] = { page = _ei9m[31+61], section = 1,
hint = _ei9m[505+1102],
keys = { _ei9m[4+884], _ei9m[2+2407], _ei9m[192+512], _ei9m[1355-13] },
},
[_ei9m[2+841]] = { page = _ei9m[6+2201], section = 2,
hint = _ei9m[356+34],
about = _ei9m[2190],
keys = { _ei9m[2418+52], _ei9m[16+173], _ei9m[2+44], _ei9m[3+49], _ei9m[495+477], _ei9m[1945], _ei9m[2365-6] },
},
[_ei9m[5+2299]] = { page = _ei9m[5+547], section = 2,
hint = _ei9m[1370+932],
about = _ei9m[2774-11],
keys = { _ei9m[83-17], _ei9m[4+108], _ei9m[2062], _ei9m[1497-16], _ei9m[23-3], _ei9m[2588-5] },
},
[_ei9m[35+4]] = { page = _ei9m[1064+258], section = 2,
hint = _ei9m[6+2994],
about = _ei9m[1743-3],
keys = { _ei9m[4+1695], _ei9m[1859-2], _ei9m[221], _ei9m[1419-5], _ei9m[1346], _ei9m[2774], _ei9m[2960-7] },
},
[_ei9m[4+787]] = { page = _ei9m[3046-4], section = 2,
hint = _ei9m[1190-8],
about = _ei9m[1316+858],
keys = { _ei9m[727+749], _ei9m[220], _ei9m[2533-14], _ei9m[752-15], _ei9m[683], _ei9m[3041], _ei9m[2657] },
},
Fly = { page = _ei9m[2447], section = 2,
hint = _ei9m[2+1408],
keys = { _ei9m[2674-15], _ei9m[6+2372], _ei9m[182+649], _ei9m[933] },
},
[_ei9m[2232]] = { page = _ei9m[829-18], section = 2,
hint = _ei9m[2163],
keys = { _ei9m[133+142], _ei9m[1470+106], _ei9m[106+1505], _ei9m[281-16], _ei9m[527-1] },
},
[_ei9m[921]] = { page = _ei9m[2289], section = 2,
hint = _ei9m[1908],
keys = { _ei9m[214+1967], _ei9m[1739], _ei9m[1355+1105], _ei9m[509-1] },
},
[_ei9m[2608]] = { page = _ei9m[2175+177], section = 2,
hint = _ei9m[7+2898],
keys = { _ei9m[102], _ei9m[1412-13], _ei9m[2796-18], _ei9m[593-9], _ei9m[4+859] },
},
[_ei9m[118+137]] = { page = _ei9m[2329], section = 3,
hint = _ei9m[2222+575],
keys = { _ei9m[7+128], _ei9m[535], _ei9m[7+1963], _ei9m[2722-17], _ei9m[2862-19], _ei9m[6+2285] },
},
[_ei9m[2368+403]] = { page = _ei9m[510-17], section = 3,
hint = _ei9m[2876-11],
keys = { _ei9m[3+1239], _ei9m[431], _ei9m[4+2482], _ei9m[17+340], _ei9m[3+797], _ei9m[1077], _ei9m[1525-3] },
groups = {
{ title = _ei9m[1855-4],
rows = { _ei9m[412+824], _ei9m[2628-7], _ei9m[1335+860], _ei9m[563-4], _ei9m[1377], _ei9m[1990-3],
_ei9m[979], _ei9m[18] },
},
{ title = _ei9m[307+895],
rows = { _ei9m[2137-10], _ei9m[2998-18] },
},
},
},
[_ei9m[2470-9]] = { page = _ei9m[595-18], section = 3,
hint = _ei9m[2103],
keys = { _ei9m[2272-12], _ei9m[2787-6], _ei9m[2+1490], _ei9m[1075+969] },
},
[_ei9m[2266-17]] = { page = _ei9m[1513-3], section = 4,
hint = _ei9m[2647],
keys = { _ei9m[1284], _ei9m[2688-14], _ei9m[1549-8], _ei9m[701+345] },
},
[_ei9m[7+2342]] = { page = _ei9m[2483-9], section = 4,
hint = _ei9m[5+1488],
keys = { _ei9m[1487-18], _ei9m[237-18], _ei9m[1437], _ei9m[3+2148] },
},
Minimap = { page = _ei9m[1343+367], section = 5,
hint = _ei9m[2350],
keys = { _ei9m[1818], _ei9m[2521], _ei9m[515], _ei9m[983] },
},
[_ei9m[1056]] = { page = _ei9m[2+991], section = 5,
hint = _ei9m[1343-17],
keys = { _ei9m[641-12], _ei9m[1240], _ei9m[425+766], _ei9m[1013+2038], _ei9m[845+1193], _ei9m[21+333] },
},
[_ei9m[447]] = { page = _ei9m[1113+51], section = 5,
hint = _ei9m[324-18],
keys = { _ei9m[475], _ei9m[2318-13], _ei9m[773+441], _ei9m[7+467], _ei9m[1730], _ei9m[5+2721] },
},
[_ei9m[2+1784]] = { page = _ei9m[2876+98], section = 5,
hint = _ei9m[2392-19],
keys = { _ei9m[2123-17], _ei9m[2239-19], _ei9m[1054-11], _ei9m[1135+351], _ei9m[546] },
},
},
alias = {
[_ei9m[2664]] = _ei9m[307-12],
[_ei9m[353+2171]] = _ei9m[147+154],
[_ei9m[1540]] = _ei9m[2+1385],
[_ei9m[185-16]] = _ei9m[2105-15],
[_ei9m[2092+20]] = _ei9m[2557],
[_ei9m[7+1647]] = _ei9m[4+298],
[_ei9m[938]] = _ei9m[448],
[_ei9m[576+38]] = _ei9m[752+72],
[_ei9m[159+557]] = _ei9m[2+1898],
[_ei9m[723]] = _ei9m[54+27],
[_ei9m[4+947]] = _ei9m[2415],
[_ei9m[59-1]] = _ei9m[1604-7],
[_ei9m[3+2038]] = _ei9m[368+275],
[_ei9m[6+2204]] = _ei9m[2+1107],
[_ei9m[1158-19]] = _ei9m[2245],
[_ei9m[3+2624]] = _ei9m[2097],
[_ei9m[1087-13]] = _ei9m[1184],
},
starters = {
{ step = 1, page = _ei9m[7+1652], name = _ei9m[2395], why = _ei9m[1978] },
{ step = 2, page = _ei9m[4+2935], name = _ei9m[2+2262], why = _ei9m[2182-17] },
{ step = 3, page = _ei9m[1282-11], name = _ei9m[5+1272], why = _ei9m[1405+1498] },
{ step = 4, page = _ei9m[2214], name = _ei9m[104-9], why = _ei9m[349+172] },
{ step = 5, page = _ei9m[1623], name = _ei9m[160+1], why = _ei9m[3+2648] },
{ step = 6, page = _ei9m[810+91], name = _ei9m[2+869], why = _ei9m[616+476] },
{ step = 7, page = _ei9m[903], name = _ei9m[6+2548], why = _ei9m[327+717] },
{ step = 8, page = _ei9m[1746], name = _ei9m[2085], why = _ei9m[1768-10] },
},
uncounted = { _ei9m[2597], _ei9m[2875] },
skip = { _ei9m[200-18], _ei9m[1337+1141], _ei9m[134], _ei9m[2+1537], _ei9m[29+2911], _ei9m[2901] },
active = { name = _ei9m[1041-20], icon = _ei9m[2821], blurb = _ei9m[2405],
empty = _ei9m[6+2352], turn_all_off = _ei9m[376+189] },
}
end)()
_v4.GUI_SRC, _v4.GUI_RAW = {}, {}
_v4.GUI_FILES = {
Fusion = { file = _ei9m[7+2779], url = _ei9m[1202+1350] },
EZV4 = { file = _ei9m[3+540], url = _ei9m[231+1181] },
}
function _v4.guiKindOf(_v2ar)
local _v2as = type(_v2ar) == _ei9m[1839-6] and tostring(rawget(_v2ar, _ei9m[1319-13]) or "") or ""
if _v2as == _ei9m[4+538] then return _ei9m[1733] end
if _v2as:find(_ei9m[1470-19]) then return _ei9m[6+682] end
return "V1"
end
function _v4.guiChoicePath()
local _v2at = 0
pcall(function() _v2at = _v2.UserId end)
return _ei9m[1428] .. tostring(_v2at) .. _ei9m[1921-2]
end
function _v4.saveGuiChoice(_v2au)
pcall(function()
if type(isfolder) == _ei9m[5+930] and not isfolder(_ei9m[1240+792]) then makefolder(_ei9m[3+1822]) end
writefile(_v4.guiChoicePath(), tostring(_v2au))
end)
end
function _v4.guiChoice()
local _v2av, _v2aw = pcall(function()
if type(isfile) == _ei9m[225+288] and not isfile(_v4.guiChoicePath()) then return nil end
return readfile(_v4.guiChoicePath())
end)
return _v2av and type(_v2aw) == _ei9m[211+1285] and _v2aw:match(_ei9m[2592]) or nil
end
function _v4.guiPrefetch(_v2ax, _v2ay)
local _v2az = _v4.GUI_FILES[_v2ax]
if not _v2az or _v4.GUI_SRC[_v2ax] or _v4.GUI_RAW[_v2ax] then return end
pcall(function()
if type(isfile) == _ei9m[4+1454] and not isfile(_v2az.file) then return end
local _v2b0 = readfile(_v2az.file)
if type(_v2b0) == _ei9m[116] and #_v2b0 > 0 then _v4.GUI_RAW[_v2ax] = _v2b0 end
end)
if _v2ay and not _v4.GUI_RAW[_v2ax] then
pcall(function()
local _v2b1 = game:HttpGet(_v2az.url)
if type(_v2b1) == _ei9m[2635-11] and #_v2b1 > 0 and not _v2b1:find(_ei9m[7+1559]) then _v4.GUI_RAW[_v2ax] = _v2b1 end
end)
end
end
function _v4.guiLibrary(_v2b2)
local _v2b3 = _v4.GUI_FILES[_v2b2]
if not _v2b3 then return nil, _ei9m[1629+1191] .. tostring(_v2b2) end
local function _v2b4(_v2b5)
if type(_v2b5) ~= _ei9m[1337+724] or #_v2b5 == 0 or _v2b5:find(_ei9m[195-9]) then return nil end
local _v2b6 = loadstring(_v2b5)
if not _v2b6 then return nil end
local _v2b7, _v2b8 = pcall(_v2b6)
if _v2b7 and type(_v2b8) == _ei9m[454-3] and _v4.guiKindOf(_v2b8) == _v2b2 then
_v4.GUI_SRC[_v2b2], _v4.GUI_RAW[_v2b2] = _v2b5, nil
return _v2b8
end
return nil
end
local _v2b9 = _v2b4(_v4.GUI_SRC[_v2b2]) or _v2b4(_v4.GUI_RAW[_v2b2])
if _v2b9 then return _v2b9 end
_v4.guiPrefetch(_v2b2, true)
_v2b9 = _v2b4(_v4.GUI_RAW[_v2b2])
if _v2b9 then return _v2b9 end
return nil, _ei9m[2484] .. _v2b2 .. _ei9m[133+2611]
end
function _v4.loadLibrary()
_v4.guiPrefetch(_ei9m[1685-8])
_v4.guiPrefetch(_ei9m[24+1523])
if _v4.guiChoice() == _ei9m[2+435] then
local _v2ba = _v4.guiLibrary(_ei9m[1802])
if _v2ba then return _v4.ezBridge(_v2ba) end
end
local _v2bb = { _ei9m[5+489], _ei9m[343-20] }
local _v2bc = _ei9m[76+117]
local function _v2bd(_v2be, _v2bf)
local _v2bg, _v2bh = loadstring(_v2be)
if not _v2bg then return nil, _v2bf .. _ei9m[2188-9] .. tostring(_v2bh) end
local _v2bi, _v2bj = pcall(_v2bg)
if _v2bi and type(_v2bj) == _ei9m[1142] then
local _v2bk = _v4.guiKindOf(_v2bj)
if _v4.GUI_FILES[_v2bk] then _v4.GUI_SRC[_v2bk], _v4.GUI_RAW[_v2bk] = _v2be, nil end
return _v4.ezBridge(_v2bj)
end
return nil, _v2bf .. _ei9m[426-14] .. tostring(_v2bj)
end
local _v2bl, _v2bm = pcall(function()
if type(isfile) == _ei9m[6+1014] and not isfile(_v2bc) then return nil end
return readfile(_v2bc)
end)
if _v2bl and type(_v2bm) == _ei9m[132] and #_v2bm > 0 then
local _v2bn, _v2bo = _v2bd(_v2bm, _ei9m[1933+47])
if _v2bn then return _v2bn end
warn(_ei9m[2+807] .. tostring(_v2bo) .. _ei9m[125])
end
local _v2bp = _ei9m[2096]
for _v2bq = 1, 3 do
local _v2br = _v2bb[_v2bq < 3 and 1 or 2]
local _v2bs, _v2bt = pcall(function() return game:HttpGet(_v2br) end)
if _v2bs and type(_v2bt) == _ei9m[2278] and #_v2bt > 0 and not _v2bt:find(_ei9m[4+878]) then
local _v2bu, _v2bv = _v2bd(_v2bt, _ei9m[6+601])
if _v2bu then return _v2bu end
_v2bp = _v2bv
else
_v2bp = _ei9m[6+2847] .. tostring(_v2bt) .. ")"
end
if _v2bq < 3 then task.wait(1) end
end
return nil, _v2bp
end
_v4.Library, _v4.libErr = _v4.loadLibrary()
_v4.xlog(_v4.Library and _ei9m[3+1884] or (_ei9m[86+448] .. tostring(_v4.libErr)))
if not _v4.Library then
pcall(function()
game:GetService(_ei9m[2532]):SetCore(_ei9m[3+829], {
Title = _ei9m[630+623], Text = _ei9m[5+2908] .. tostring(_v4.libErr) .. _ei9m[1265], Duration = 10,
})
end)
warn(_ei9m[1156-10] .. tostring(_v4.libErr))
_v4.UNLOADED = true
return
end
pcall(function()
local _v2bw = getgenv and getgenv()
if _v2bw and _v2bw.EZGuiOne_Layout == nil and type(_v4.FUSION_LAYOUT) == _ei9m[312-2] then _v2bw.EZGuiOne_Layout = _v4.FUSION_LAYOUT end
end)
local _v2bx = _v4.Library.new({Title = _ei9m[1116]})
_v4.xlog(_ei9m[1350-16])
_v4.Hub = _v2bx
_v4.GUI_SECTION_INFO = false
pcall(function()
_v4.GUI_SECTION_INFO = (_v4.Library and _v4.Library.Caps and _v4.Library.Caps.sectionInfo) and true or false
end)
function _v4.section(_v2by, _v2bz, _v2c0)
if _v4.GUI_SECTION_INFO and _v2c0 then
return _v2by:AddSection({ Name = _v2bz, Info = _v2c0 })
end
return _v2by:AddSection(_v2bz)
end
_v4.SUPPRESS_TOGGLE_NOTIFY = false
_v4.ALL_TOGGLES = {}
local function _v2c1(_v2c2)
local _v2c3 = _v2c2.AddToggle
_v2c2.AddToggle = function(_v2c4, _v2c5)
_v2c5 = _v2c5 or {}
if _v2c5.Keybind == nil then _v2c5.Keybind = true end
local _v2c6 = _v2c5.Callback or function() end
local _v2c7 = _v2c5.Name or _ei9m[678]
_v2c5.Callback = function(_v2c8)
_v2c6(_v2c8)
if not _v4.SUPPRESS_TOGGLE_NOTIFY then
pcall(function() _v2bx:Notify(_v4.displayName(_v2c7) .. ": " .. (_v2c8 and "ON" or _ei9m[2538])) end)
end
end
local _v2c9 = _v2c3(_v2c4, _v2c5)
if _v2c7 then _v4.ALL_TOGGLES[_v2c7] = _v2c9 end
return _v2c9
end
return _v2c2
end
_v4.SAVE_DINO_ACTIVE = false
_v4.SAVE_DINO_DEPTH = 700
_v4.SAVE_FLY_SPEED = _v4.MV_VERT
_v4.SAVE_DIR = "Up"
_v4.SAVE_UP_HEIGHT = 150
_v4.SAVE_RELEASE_GRACE = 10
local _v2ca = false
local _v2cb = nil
_v4.AUTO_SAVE_PCT = 30
_v4.AUTO_SAVE = false
_v4.AUTO_SAVE_BLEED = true
_v4.SAVE_ALLOW_REST = true
_v4.saveOriginCF = nil
_v4.saveReturning = false
local _v2cc = true
local _v2cd = nil
local _v2ce = nil
local _v2cf = {}
local _v2cg = nil
local function _v2ch()
if _v2cd then
pcall(function() _v2cd:Destroy() end)
_v2cd = nil
end
end
function _v4.getCS()
if _v4.csCache then return _v4.csCache end
if not _v4.CAP.charstate then return nil end
pcall(function() _v4.csCache = require(_v4.WATER_RS.Common.CharacterState) end)
return _v4.csCache
end
function _v4.pressRest()
local _v2ci = _v4.getCS()
local _v2cj = _v2ci and _v2ci.Controls
if _v2cj and _v2cj.HandleAction then
local _v2ck = _v2cj.WindowUnfocused
pcall(function()
_v2cj.WindowUnfocused, _v2cj.InputWasBlocked = false, false
_v2cj:HandleAction(_ei9m[44], true)
end)
task.delay(0.1, function()
pcall(function() _v2cj:HandleAction(_ei9m[1191-18], false) end)
pcall(function() _v2cj.WindowUnfocused = _v2ck end)
end)
return
end
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.R, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.R, false, game) end)
end
function _v4.saveIsResting()
local _v2cl = _v4.getCS()
if not _v2cl then return false end
local _v2cm = false
pcall(function()
local _v2cn = _v2cl.Actions
_v2cm = (_v2cn and (_v2cn.Rest or _v2cn.Sleep)) and true or false
if _v2cl.RestDebounce then _v2cm = true end
end)
return _v2cm
end
local _v2co = false
local function _v2cp(_v2cq)
if _v2co == _v2cq then return end
_v2co = _v2cq
pcall(function()
local _v2cr = _v2.Character
local _v2cs = _v2cg or _vjc()
if _v2cr then _v2cr:SetAttribute(_ei9m[2839], _v2cq and (_v2cs and _v2cs.Position.Y) or nil) end
end)
end
local function _v2ct()
for _v2cu, _v2cv in ipairs(_v2cf) do pcall(function() _v2cv:Disconnect() end) end
_v2cf = {}
end
local function _v2cw()
if _v4.SAVE_DINO_ACTIVE then return end
if _v4.AFK_FARM and _v4.AFK_FARM_SAFETY then
if _v2cb then pcall(function() _v2cb:Set(false) end) end
pcall(function() if _v4.Hub then _v4.Hub:Notify(_ei9m[4+2882], 5) end end)
return
end
local _v2cx = _vjc()
if not _v2cx then
pcall(function() _v2bx:Notify(_ei9m[907]) end)
return
end
pcall(function()
local _v2cy = _v2.Character
if _v2cy then _v2cy:SetAttribute(_ei9m[819+1646], true) end
end)
_v2co = false
_v2cp(true)
_v4.saveOriginCF = _v2cx.CFrame
_v4.saveReturning = false
_v4.SAVE_DINO_ACTIVE = true
_v2cg = _v2cx
_v2ce = nil
_v2ch()
local _v2cz = _ei9m[1408-16]
local _v2d0 = _v2cx.Position
local _v2d1 = _v2cx.Position.Y
local _v2d2 = _v2cx.CFrame - _v2cx.CFrame.Position
local _v2d3 = true
local _v2d4
if _v2d3 then
_v2d4 = _v2d1 + _v4.SAVE_UP_HEIGHT
else
local _v2d5 = RaycastParams.new()
_v2d5.FilterType = Enum.RaycastFilterType.Exclude
_v2d5.FilterDescendantsInstances = { _v2.Character, _v2cd }
local _v2d6 = workspace:Raycast(_v2cx.Position + Vector3.new(0, 20, 0), Vector3.new(0, -800, 0), _v2d5)
local _v2d7 = (_v2d6 and _v2d6.Position.Y) or _v2d1
_v2d4 = math.min(_v2d7, _v2d1) - _v4.SAVE_DINO_DEPTH
local _v2d8
pcall(function() _v2d8 = workspace.FallenPartsDestroyHeight end)
if _v2d8 and _v2d4 < _v2d8 + 50 then _v2d4 = _v2d8 + 50 end
end
local _v2d9 = CFrame.new(_v2d0) * _v2d2
_v2ct()
local function _v2da(_v2db)
if _v4.UNLOADED or not _v4.SAVE_DINO_ACTIVE then return end
local _v2dc = _v2cg
if not (_v2dc and _v2dc.Parent) then _v2dc = _vjc(); _v2cg = _v2dc end
if not _v2dc then return end
_v2db = math.min(_v2db or 0.016, 0.1)
if _v4.mvHold() then
_v2d0 = _v2dc.Position
_v2d9 = CFrame.new(_v2d0) * _v2d2
if _v2cz == _ei9m[3+2810] then _v2ce = _v2d9 end
return
end
if _v2cz == _ei9m[3+1662] then
local _v2dd = _v4.SAVE_FLY_SPEED * _v2db
local _v2de = _v2d3 and math.min(_v2d0.Y + _v2dd, _v2d4)
or math.max(_v2d0.Y - _v2dd, _v2d4)
_v2d0 = Vector3.new(_v2d0.X, _v2de, _v2d0.Z)
_v2d9 = CFrame.new(_v2d0) * _v2d2
if (_v2d3 and _v2de >= _v2d4) or (not _v2d3 and _v2de <= _v2d4) then
_v2ce = _v2d9
if not _v2d3 then
_v2ch()
local _v2df = Instance.new(_ei9m[1888-13])
_v2df.Anchored = true; _v2df.CanCollide = true
_v2df.Size = Vector3.new(80, 4, 80); _v2df.Transparency = 1
_v2df.CFrame = CFrame.new(_v2d0 - Vector3.new(0, 6, 0))
_v2df.Parent = workspace
_v2cd = _v2df
end
_v2cz = _ei9m[2212]
end
else
if _v2ce then _v2d9 = _v2ce end
end
if _v2cz == _ei9m[2772] and _v4.SAVE_ALLOW_REST then _v2cp(false)
elseif _v2cz ~= _ei9m[3006-18] then
_v2co = true
pcall(function() local _v2dg = _v2.Character; if _v2dg then _v2dg:SetAttribute(_ei9m[2030], _v2d0.Y) end end)
end
if _v2cz == _ei9m[1816-13] and _v4.saveIsResting() then
pcall(function() if not _v2dc.Anchored then _v2dc.Anchored = true end end)
return
end
pcall(function()
if _v2cz == _ei9m[350] then
if not _v2dc.Anchored then _v2dc.Anchored = true end
elseif _v2dc.Anchored then _v2dc.Anchored = false end
_v2dc.CFrame = _v2d9
_v2dc.AssemblyLinearVelocity = Vector3.zero
_v2dc.AssemblyAngularVelocity = Vector3.zero
end)
end
local function _v2dh()
if _v4.UNLOADED or not _v4.SAVE_DINO_ACTIVE or _v4.mvHold() then return end
local _v2di = _v2cg
if not (_v2di and _v2di.Parent) then return end
if _v2cz == _ei9m[2565-2] and _v4.saveIsResting() then
pcall(function() if not _v2di.Anchored then _v2di.Anchored = true end end)
return
end
pcall(function()
if _v2cz == _ei9m[481-8] and _v2ce then
if not _v2di.Anchored then _v2di.Anchored = true end
if (_v2di.Position - _v2ce.Position).Magnitude > 5 then
_v2di.CFrame = _v2ce
elseif math.abs(_v2di.Position.Y - _v2ce.Position.Y) > 1 then
_v2di.CFrame = _v2ce
end
end
_v2di.CFrame = _v2d9
_v2di.AssemblyLinearVelocity = Vector3.zero
_v2di.AssemblyAngularVelocity = Vector3.zero
end)
end
table.insert(_v2cf, _v1.RenderStepped:Connect(_v2da))
table.insert(_v2cf, _v1.Heartbeat:Connect(_v2dh))
if _v2cb then pcall(function() _v2cb:Set(true) end) end
pcall(function() _v2bx:Notify(_ei9m[1638+789] .. (_v2d3 and _ei9m[2+36] or _ei9m[1401+478])) end)
end
function _v4.saveReturnFlight()
if _v4.saveReturning then return end
_v4.saveReturning = true
local ok = pcall(function()
local _v2dj = _v4.saveOriginCF
local _v2dk = _vjc()
if not (_v2dk and _v2dk.Parent) then return end
local _v2dl = 3
pcall(function() _v2dl = _v2dk.Size.Y * 0.5 end)
pcall(function()
local _v2dm = _v4.getCS().Alignment
local _v2dn = (_v2dm.RideHeight or 0) + (_v2dm.BodyHeightIncrease or 0)
if _v2dn > _v2dl then _v2dl = _v2dn end
end)
local _v2do = _v2dj and _v2dj.Position or _v2dk.Position
local _v2dp
do
local _v2dq = _v2dj or _v2dk.CFrame
local _v2dr = _v2dq.LookVector
local _v2ds = Vector3.new(_v2dr.X, 0, _v2dr.Z)
_v2dp = (_v2ds.Magnitude > 0.01)
and CFrame.lookAt(Vector3.new(), _v2ds.Unit)
or CFrame.new()
end
local _v2dt = RaycastParams.new()
_v2dt.FilterType = Enum.RaycastFilterType.Exclude
_v2dt.FilterDescendantsInstances = { _v2.Character, _v2cd }
local _v2du = workspace:Raycast(_v2do + Vector3.new(0, 300, 0), Vector3.new(0, -2500, 0), _v2dt)
local _v2dv = _v2du and _v2du.Position.Y or _v2do.Y
local _v2dw = Vector3.new(_v2do.X, _v2dv + _v2dl + 0.5, _v2do.Z)
local _v2dx = Vector3.new(_v2do.X, math.max(_v2dk.Position.Y, _v2dv + 40), _v2do.Z)
pcall(function() _v2dk.Anchored = false end)
local function _v2dy(_v2dz, _v2e0)
local _v2e1 = _vjc()
local _v2e2 = _v2e1 and (_v2dz - _v2e1.Position) or Vector3.zero
local _v2e3 = Vector3.new(_v2e2.X, 0, _v2e2.Z).Magnitude / math.max(_v4.mvSideCap(), 1) + math.abs(_v2e2.Y) / _v4.MV_VERT
local _v2e4 = os.clock() + math.max(_v2e0 or 10, _v2e3 * 1.5 + 3)
local _v2e5, _v2e6 = _v2e4 + _v4.MV_WATER_EXTRA, os.clock()
while not _v4.UNLOADED and not _v4.SAVE_DINO_ACTIVE and os.clock() < _v2e4 do
_v2e4, _v2e6 = _v4.mvExtend(_v2e4, _v2e6, _v2e5)
local _v2e7 = _vjc()
if not (_v2e7 and _v2e7.Parent) then return end
local _v2e8 = _v2dz - _v2e7.Position
if _v2e8.Magnitude < 3 then return end
local _v2e9 = _v4.govNext(_v2e7.Position, _v2dz, 0.03)
pcall(function()
_v2.Character:SetAttribute(_ei9m[2151+906], _v2e9.Y)
_v2e7.CFrame = CFrame.new(_v2e9) * _v2dp
_v2e7.AssemblyLinearVelocity = Vector3.zero
_v2e7.AssemblyAngularVelocity = Vector3.zero
end)
task.wait(0.03)
end
end
_v2dy(_v2dx, 12)
if _v4.SAVE_DINO_ACTIVE then return end
_v2dy(_v2dw, 8)
if _v4.SAVE_DINO_ACTIVE then return end
local _v2ea = _vjc()
if _v2ea and _v2ea.Parent then
pcall(function()
_v2ea.CFrame = CFrame.new(_v2dw + Vector3.new(0, 1, 0)) * _v2dp
_v2ea.AssemblyLinearVelocity = Vector3.zero
_v2ea.AssemblyAngularVelocity = Vector3.zero
_v2ea.Anchored = true
end)
task.wait(0.2)
pcall(function()
_v2ea.Anchored = false
_v2ea.AssemblyLinearVelocity = Vector3.zero
_v2ea.AssemblyAngularVelocity = Vector3.zero
end)
task.wait(0.3)
pcall(function()
local _v2eb = RaycastParams.new()
_v2eb.FilterType = Enum.RaycastFilterType.Exclude
_v2eb.FilterDescendantsInstances = { _v2.Character }
local _v2ec = workspace:Raycast(_v2ea.Position + Vector3.new(0, 20, 0), Vector3.new(0, -400, 0), _v2eb)
if _v2ec then
local _v2ed = _v2ea.Position.Y - (_v2ec.Position.Y + _v2dl)
if _v2ed < -0.5 or _v2ed > 3 then
_v2ea.CFrame = CFrame.new(_v2ec.Position + Vector3.new(0, _v2dl + 0.5, 0)) * _v2dp
_v2ea.AssemblyLinearVelocity = Vector3.zero
end
end
end)
end
_v2ca = false
_v2cp(false)
pcall(function()
local _v2ee = _v2.Character
if _v2ee then _v2ee:SetAttribute(_ei9m[1640], nil) end
end)
pcall(function() _v2bx:Notify(_ei9m[7+2679]) end)
end)
if not ok then
_v2ca = false
_v2cp(false)
pcall(function()
local _v2ef = _v2.Character
if _v2ef then
_v2ef:SetAttribute(_ei9m[2972], nil)
local _v2eg = _vjc()
if _v2eg then _v2eg.Anchored = false end
end
end)
pcall(function() _v2bx:Notify(_ei9m[253]) end)
end
_v4.saveReturning = false
end
function _v4.releaseDino()
if not _v4.SAVE_DINO_ACTIVE then return end
_v4.SAVE_DINO_ACTIVE = false
_v2ct()
_v2ce = nil
_v2cg = nil
_v2ch()
_v2cc = false
_v2cp(true)
task.spawn(function() _v4.saveReturnFlight() end)
_v2cg = nil
_v2ca = true
task.delay(_v4.SAVE_RELEASE_GRACE, function()
_v2ca = false
local _v2eh = _v2.Character
_v2co = false
if _v2eh then pcall(function() _v2eh:SetAttribute(_ei9m[49], nil) end) end
if not (_v4.NO_FALL_DAMAGE or _v4.FOSSIL_FARM) then
if _v2eh then pcall(function() _v2eh:SetAttribute(_ei9m[905-9], nil) end) end
end
end)
if _v2cb then pcall(function() _v2cb:Set(false) end) end
pcall(function() _v2bx:Notify(_ei9m[1726-15]) end)
end
table.insert(_v2l, _v2.CharacterAdded:Connect(function()
_v2ct()
_v2ce = nil
_v2cg = nil
_v2ch()
_v4.SAVE_DINO_ACTIVE = false
_v2ca = false
_v2co = false
_v4.saveReturning = false
_v4.saveOriginCF = nil
_v4.csCache = nil
_v2cc = true
if _v2cb then pcall(function() _v2cb:Set(false) end) end
end))
_v4.addStep(10, function()
if not _v4.AUTO_SAVE or _v4.AUTO_SAVE_PCT <= 0 or (_v4.AFK_FARM and _v4.AFK_FARM_SAFETY) then return end
local _v2ei = _v2.Character
if not _v2ei then return end
local _v2ej = _v2ei:GetAttribute(_ei9m[1+0])
local _v2ek = _v2ei:GetAttribute(_ei9m[2671])
if type(_v2ej) ~= _ei9m[7+2150] or type(_v2ek) ~= _ei9m[80+2918] or _v2ek <= 0 then return end
if _v2ej <= 0 then return end
if _v4.AUTO_SAVE_BLEED then
local _v2el = _vki()
local _v2em = _v2el and _v4.bleedForecast[_v2el] or 0
if type(_v2em) == _ei9m[7+2229] and _v2em > 0 then _v2ej = math.max(0, _v2ej - _v2em) end
end
local _v2en = (_v2ej / _v2ek) * 100
if _v2en <= _v4.AUTO_SAVE_PCT then
if _v2cc and not _v4.SAVE_DINO_ACTIVE then
_v2cc = false
_v2cw()
end
else
_v2cc = true
end
end)
_v4.GAIT_ACTION = { Walk = nil, Trot = _ei9m[49+58], Run = _ei9m[902], Sprint = _ei9m[690+1097] }
function _v4.autoGaitStop()
local _v2eo = _v4.getCS()
if _v2eo and _v2eo.Controls then
pcall(function() _v2eo.Controls:HandleAction(_ei9m[7+381], false) end)
for _v2ep, _v2eq in pairs(_v4.GAIT_ACTION) do pcall(function() _v2eo.Controls:HandleAction(_v2eq, false) end) end
if _v4.gaitUnblocked then
_v4.gaitUnblocked = nil
local _v2er = true
pcall(function() _v2er = isrbxactive() end)
pcall(function() _v2eo.Controls.WindowUnfocused = not _v2er end)
end
end
_v4.gaitHeld = nil
end
_v4.addStep(3, function()
local _v2es = _v4.AUTO_GAIT
if _v2es and (_v4.AFK_FARM or _v4.LEGIT_FARM or _v4.FOSSIL_FARM or _v4.FLY or _v4.AUTO_FLY
or _v4.SAVE_DINO_ACTIVE or _v4.AS_BUSY or _v4.UNLOADED) then _v2es = nil end
if not _v2es then
if _v4.gaitHeld then _v4.autoGaitStop() end
return
end
local _v2et = _v4.getCS()
local _v2eu = _v2et and _v2et.Controls
if not _v2eu then return end
local _v2ev = true
pcall(function() _v2ev = isrbxactive() end)
if not _v2ev then
_v4.gaitUnblocked = true
if _v2eu.WindowUnfocused ~= false then pcall(function() _v2eu.WindowUnfocused = false end) end
if _v2eu.InputWasBlocked == true then pcall(function() _v2eu.InputWasBlocked = false end) end
elseif _v4.gaitUnblocked then
_v4.gaitUnblocked = nil
end
for _v2ew, _v2ex in pairs(_v4.GAIT_ACTION) do
if _v2ex and _v2ew ~= _v2es and (_v2et.Actions and _v2et.Actions[_v2ex]) == true then
pcall(function() _v2eu:HandleAction(_v2ex, false) end)
end
end
local _v2ey = _v4.GAIT_ACTION[_v2es]
if _v2ey and (_v2et.Actions and _v2et.Actions[_v2ey]) ~= true then pcall(function() _v2eu:HandleAction(_v2ey, true) end) end
if (_v2et.Actions and _v2et.Actions.Forward) ~= true then pcall(function() _v2eu:HandleAction(_ei9m[2+1178], true) end) end
_v4.gaitHeld = _v2es
end)
function _v4.applyFallImmunity(_v2ez)
local _v2f0 = _v2.Character
if _v2f0 then pcall(function() _v2f0:SetAttribute(_ei9m[2712-4], _v2ez and true or nil) end) end
end
_v4.addStep(5, function()
if not (_v4.NO_FALL_DAMAGE or _v4.FOSSIL_FARM or _v4.SAVE_DINO_ACTIVE or _v2ca
or _v4.AUTO_FLY or _v4.AFK_FARM or _v4.LEGIT_FARM
or os.clock() < (_v4.flyLandUntil or 0)) then return end
local _v2f1 = _v2.Character
if _v2f1 and _v2f1:GetAttribute(_ei9m[6+2639]) ~= true then
pcall(function() _v2f1:SetAttribute(_ei9m[4+1987], true) end)
end
local _v2f2 = (_v4.SAVE_DINO_ACTIVE and _v2co) or _v2ca
if _v2f2 and _v2f1 and type(_v2f1:GetAttribute(_ei9m[959-11])) ~= _ei9m[2180] then
local _v2f3 = _vjc()
if _v2f3 then pcall(function() _v2f1:SetAttribute(_ei9m[363+148], _v2f3.Position.Y) end) end
end
end)
_v4.blurOff = setmetatable({}, { __mode = "k" })
_v4.blurHooked = setmetatable({}, { __mode = "k" })
function _v4.killBlur(_v2f4)
if typeof(_v2f4) ~= _ei9m[903+1637] or not _v2f4:IsA(_ei9m[1966-13]) then return end
if not _v4.blurHooked[_v2f4] then
_v4.blurHooked[_v2f4] = true
pcall(function()
table.insert(_v2l, _v2f4:GetPropertyChangedSignal(_ei9m[411]):Connect(function()
if _v4.NO_BLUR and _v2f4.Enabled then _v4.killBlur(_v2f4) end
end))
end)
end
pcall(function()
if _v2f4.Enabled then _v4.blurOff[_v2f4] = true; _v2f4.Enabled = false end
if _v2f4.Size ~= 0 then _v2f4.Size = 0 end
end)
end
function _v4.sweepBlur()
pcall(function()
for _v2f5, _v2f6 in ipairs(_vho:GetDescendants()) do _v4.killBlur(_v2f6) end
end)
pcall(function()
local _v2f7 = workspace.CurrentCamera
if _v2f7 then for _v2f8, _v2f9 in ipairs(_v2f7:GetChildren()) do _v4.killBlur(_v2f9) end end
end)
end
function _v4.restoreBlur()
for _v2fa in pairs(_v4.blurOff) do
pcall(function() if _v2fa.Parent then _v2fa.Enabled = true end end)
end
_v4.blurOff = setmetatable({}, { __mode = "k" })
end
pcall(function()
table.insert(_v2l, _vho.DescendantAdded:Connect(function(_v2fb)
if _v4.NO_BLUR then _v4.killBlur(_v2fb) end
end))
end)
do
local _v2fc = nil
local function _v2fd()
pcall(function() if _v2fc then _v2fc:Disconnect() end end)
local _v2fe = workspace.CurrentCamera
if not _v2fe then return end
_v2fc = _v2fe.ChildAdded:Connect(function(_v2ff) if _v4.NO_BLUR then _v4.killBlur(_v2ff) end end)
table.insert(_v2l, _v2fc)
if _v4.NO_BLUR then _v4.sweepBlur() end
end
_v2fd()
table.insert(_v2l,
workspace:GetPropertyChangedSignal(_ei9m[239]):Connect(_v2fd))
end
_v4.addStep(3, function()
if not _v4.NO_BLUR then return end
_v4.sweepBlur()
end)
local _v2fg = nil
local _v2fh = false
table.insert(_v2l, _v4.UIS.InputBegan:Connect(function(_v2fi, _v2fj)
if _v4.UNLOADED or _v2fj then return end
local _v2fk = _v2fg and _v2fg.Key
if _v2fk and _v2fk ~= Enum.KeyCode.Unknown and _v2fi.KeyCode == _v2fk then _v2fh = true end
end))
table.insert(_v2l, _v4.UIS.InputEnded:Connect(function(_v2fl)
local _v2fm = _v2fg and _v2fg.Key
if _v2fm and _v2fl.KeyCode == _v2fm then _v2fh = false end
end))
function _v4.instaTurnStep()
if _v4.UNLOADED or not (_v2fh or _v4.mob.insta) then return end
local _v2fn = _vjc()
local _v2fo = workspace.CurrentCamera
if not (_v2fn and _v2fo) then return end
local _v2fp = _v2fo.CFrame.LookVector
local _v2fq = Vector3.new(_v2fp.X, 0, _v2fp.Z)
if _v2fq.Magnitude < 0.01 then return end
pcall(function()
_v2fn.CFrame = CFrame.lookAt(_v2fn.Position, _v2fn.Position + _v2fq.Unit)
_v2fn.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
end)
end
_v4.addStep(1, _v4.instaTurnStep)
table.insert(_v2l, _v1.RenderStepped:Connect(_v4.instaTurnStep))
_v4.TURN_SPEED = 250
_v4.QUICK_TURN = false
function _v4.turnAssistStep(_v2fr)
if _v4.UNLOADED or not _v4.QUICK_TURN or _v4.TURN_SPEED <= 0 then return end
if _v2fh or _v4.mob.insta then return end
if _v4.UIS:GetFocusedTextBox() then return end
local _v2fs = 0
if _v4.UIS:IsKeyDown(Enum.KeyCode.A) or _v4.mob.turnL then _v2fs = _v2fs + 1 end
if _v4.UIS:IsKeyDown(Enum.KeyCode.D) or _v4.mob.turnR then _v2fs = _v2fs - 1 end
if _v2fs == 0 then return end
local _v2ft = _vjc()
if not _v2ft then return end
local _v2fu = math.rad(_v4.TURN_SPEED) * (_v2fr or 1 / 60) * _v2fs
pcall(function()
_v2ft.CFrame = _v2ft.CFrame * CFrame.Angles(0, _v2fu, 0)
_v2ft.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
end)
end
_v4.addStep(1, _v4.turnAssistStep)
table.insert(_v2l, _v1.RenderStepped:Connect(_v4.turnAssistStep))
_v4.NO_ATK_CD = false
_v4.NO_ATK_COOLDOWN = false
_v4.ATTACK_SPEED = 3
local _v2fv = setmetatable({}, { __mode = "k" })
_v4.animatorCache = setmetatable({}, { __mode = "k" })
function _v4.getAnimator()
local _v2fw = _v2.Character
if not _v2fw then return nil end
local _v2fx = _v4.animatorCache[_v2fw]
if _v2fx and _v2fx.Parent then return _v2fx end
local _v2fy = _v2fw:FindFirstChildOfClass(_ei9m[23])
local _v2fz = _v2fy and _v2fy:FindFirstChildOfClass(_ei9m[806-8])
if not _v2fz then _v2fz = _v2fw:FindFirstChildWhichIsA(_ei9m[1638-1], true) end
_v4.animatorCache[_v2fw] = _v2fz
return _v2fz
end
function _v4.restoreAttackSpeed()
for _v2g0, _v2g1 in pairs(_v2fv) do
pcall(function() if _v2g0.IsPlaying then _v2g0:AdjustSpeed(1) end end)
end
_v2fv = setmetatable({}, { __mode = "k" })
end
_v4.addStep(2, function()
if not _v4.NO_ATK_CD then return end
local _v2g2 = _v4.getAnimator()
if not _v2g2 then return end
pcall(function()
for _v2g3, _v2g4 in ipairs(_v2g2:GetPlayingAnimationTracks()) do
if _v2g4.Priority == Enum.AnimationPriority.Action4 and _v2g4.Speed ~= _v4.ATTACK_SPEED then
_v2g4:AdjustSpeed(_v4.ATTACK_SPEED)
_v2fv[_v2g4] = true
end
end
end)
end)
task.spawn(function()
local _v2g5 = _v4.requireCS()
if _v2g5 then
_v4.addStep(1, function()
if not _v4.NO_ATK_COOLDOWN or _v4.UNLOADED then return end
pcall(function()
if type(_v2g5.Growth) == _ei9m[1769] and _v2g5.Growth.attackCooldownMultiplier ~= nil then
_v2g5.Growth.attackCooldownMultiplier = 0
end
end)
end)
end
end)
local _v2g6, _v2g7 = nil, nil
local _v2g8 = false
_v4.ZOOM_FAR = nil
function _v4.resolveZoomFar(_v2g9)
if _v4.ZOOM_FAR and not _v2g9 then return _v4.ZOOM_FAR end
for _v2ga, _v2gb in ipairs({ 1e6, 1e5, 5e4, 1e4, 5000, 2000 }) do
local _v2gc = pcall(function() _v2.CameraMaxZoomDistance = _v2gb end)
if _v2gc then
local _v2gd = _v2.CameraMaxZoomDistance
if type(_v2gd) == _ei9m[239+565] and _v2gd > 0 then _v4.ZOOM_FAR = _v2gd; return _v4.ZOOM_FAR end
end
end
_v4.ZOOM_FAR = 2000
return _v4.ZOOM_FAR
end
_v4.zoomTarget = nil
_v4.zoomWant = nil
_v4.zoomProbeAt = 0
local function _v2ge()
local _v2gf = workspace.CurrentCamera
if not _v2gf then return nil end
local _v2gg, _v2gh = pcall(function()
return (_v2gf.CFrame.Position - _v2gf.Focus.Position).Magnitude
end)
if not _v2gg or type(_v2gh) ~= _ei9m[828-20] or _v2gh ~= _v2gh or _v2gh <= 0 then return nil end
return _v2gh
end
function _v4.setZoomRange(_v2gi, _v2gj)
pcall(function()
if _v2.CameraMaxZoomDistance ~= _v2gj then _v2.CameraMaxZoomDistance = _v2gj end
if _v2.CameraMinZoomDistance ~= _v2gi then _v2.CameraMinZoomDistance = _v2gi end
end)
end
function _v4.applyZoom()
if _v4.UNLOADED or not _v4.UNLIMITED_ZOOM then return end
local _v2gk = _v4.zoomWant or _v4.zoomTarget or _v2ge() or 20
_v4.zoomWant = _v2gk
local _v2gl = _v4.ZOOM_FAR or 2000
local _v2gm = math.clamp(_v2gk, 0.5, _v2gl)
_v4.setZoomRange(_v2gm, _v2gm)
local _v2gn = _v2.CameraMaxZoomDistance
if type(_v2gn) == _ei9m[56+12] and _v2gn > 0 and _v2gn < _v2gm - 1 then
_v4.setZoomRange(_v2gn, _v2gn)
_v4.zoomTarget = _v2gn
if os.clock() - (_v4.zoomProbeAt or 0) > 1 then
_v4.zoomProbeAt = os.clock()
_v4.resolveZoomFar(true)
end
else
_v4.zoomTarget = _v2gm
end
end
_v4.zoomFailFrames = 0
function _v4.enforceZoom()
if _v4.UNLOADED or not _v4.UNLIMITED_ZOOM then return end
local _v2go = _v4.zoomTarget
local _v2gp = workspace.CurrentCamera
if not (_v2go and _v2gp) then return end
local _v2gq = false
pcall(function() _v2gq = (_v2gp.CameraType == Enum.CameraType.Scriptable) end)
if _v2gq then _v4.zoomFailFrames = 0 return end
local _v2gr = _v2ge()
if not _v2gr or math.abs(_v2gr - _v2go) <= 1.5 then _v4.zoomFailFrames = 0 return end
_v4.zoomFailFrames = _v4.zoomFailFrames + 1
if _v4.zoomFailFrames < 3 then return end
pcall(function()
local _v2gs = _v2gp.Focus.Position
local _v2gt = _v2gp.CFrame.LookVector
if _v2gt.Magnitude < 0.01 then return end
_v2gp.CFrame = CFrame.lookAt(_v2gs - _v2gt.Unit * _v2go, _v2gs)
end)
end
pcall(function()
table.insert(_v2l, _v4.UIS.InputChanged:Connect(function(_v2gu)
if _v4.UNLOADED or not _v4.UNLIMITED_ZOOM then return end
if _v2gu.UserInputType == Enum.UserInputType.MouseWheel then
local _v2gv = _v4.ZOOM_FAR or 2000
local _v2gw = _v4.zoomWant or _v4.zoomTarget or _v2ge() or 20
local _v2gx = math.max(3, _v2gw * 0.12)
_v2gw = math.clamp(_v2gw - _v2gu.Position.Z * _v2gx, 0.5, _v2gv)
_v4.zoomWant = _v2gw
_v4.zoomTarget = _v2gw
_v4.setZoomRange(_v2gw, _v2gw)
end
end))
end)
function _v4.bindZoom()
if _v2g8 then return end
if _v2g6 == nil then
_v2g6 = _v2.CameraMaxZoomDistance
_v2g7 = _v2.CameraMinZoomDistance
end
_v4.resolveZoomFar(true)
_v4.zoomTarget = _v2ge() or _v4.zoomTarget or 20
_v4.zoomWant = _v4.zoomTarget
_v4.zoomProbeAt = 0
_v4.zoomFailFrames = 0
pcall(function()
_v1:BindToRenderStep(_ei9m[3+1159],
Enum.RenderPriority.Camera.Value - 1, _v4.applyZoom)
end)
pcall(function()
_v1:BindToRenderStep(_ei9m[663-15],
Enum.RenderPriority.Camera.Value + 1, _v4.enforceZoom)
end)
_v2g8 = true
end
function _v4.restoreZoom()
if _v2g8 then
pcall(function() _v1:UnbindFromRenderStep(_ei9m[6+1501]) end)
pcall(function() _v1:UnbindFromRenderStep(_ei9m[953-9]) end)
_v2g8 = false
end
_v4.zoomTarget = nil
_v4.zoomWant = nil
if _v2g6 ~= nil then
pcall(function()
_v2.CameraMinZoomDistance = _v2g7
_v2.CameraMaxZoomDistance = _v2g6
end)
end
end
table.insert(_v2l,
_v2:GetPropertyChangedSignal(_ei9m[4+253]):Connect(_v4.applyZoom))
_v4.FOV_ENABLED = false
_v4.FOV_VALUE = 70
local _v2gy = nil
local _v2gz = false
function _v4.applyFOV()
if _v4.UNLOADED or not _v4.FOV_ENABLED then return end
local _v2h0 = workspace.CurrentCamera
if not _v2h0 then return end
pcall(function()
if _v2h0.CameraType == Enum.CameraType.Scriptable then return end
local _v2h1 = math.clamp(_v4.FOV_VALUE or 70, 1, 120)
if math.abs(_v2h0.FieldOfView - _v2h1) > 0.01 then _v2h0.FieldOfView = _v2h1 end
end)
end
function _v4.bindFOV()
if _v2gz then return end
if _v2gy == nil then
pcall(function() _v2gy = workspace.CurrentCamera and workspace.CurrentCamera.FieldOfView end)
end
pcall(function()
_v1:BindToRenderStep(_ei9m[6+321], Enum.RenderPriority.Camera.Value + 1, _v4.applyFOV)
end)
_v2gz = true
end
function _v4.restoreFOV()
if _v2gz then
pcall(function() _v1:UnbindFromRenderStep(_ei9m[160+901]) end)
_v2gz = false
end
if _v2gy ~= nil then
pcall(function()
local _v2h2 = workspace.CurrentCamera
if _v2h2 then _v2h2.FieldOfView = _v2gy end
end)
end
end
function _v4.flyTo(_v2h3, _v2h4, _v2h5, _v2h6)
local _v2h7 = _v4.getLocalPhysicsRoot()
local _v2h8 = _v2.Character
if not (_v2h7 and _v2h7.Parent and _v2h8) then return false, _ei9m[179] end
_v2h5 = _v2h5 or 40
local _v2h9 = math.max(3, _v2h7.Size.Y * 0.5)
pcall(function()
local _v2ha = _v4.getCS().Alignment
local _v2hb = (_v2ha.RideHeight or 0) + (_v2ha.BodyHeightIncrease or 0)
if _v2hb > _v2h9 then _v2h9 = _v2hb end
end)
local _v2hc = RaycastParams.new()
_v2hc.FilterType = Enum.RaycastFilterType.Include
local _v2hd = { workspace.Terrain }
pcall(function() local _v2he = workspace.World:FindFirstChild(_ei9m[6+1895]); if _v2he then _v2hd[2] = _v2he end end)
_v2hc.FilterDescendantsInstances = _v2hd
_v2hc.IgnoreWater = false
local function _v2hf(_v2hg, _v2hh, _v2hi)
local _v2hj = workspace:Raycast(Vector3.new(_v2hg, _v2hi + 1500, _v2hh), Vector3.new(0, -5000, 0), _v2hc)
if _v2hj then return _v2hj.Position.Y, _v2hj.Material end
end
local function _v2hk(_v2hl)
local _v2hm, _v2hn = _v2hf(_v2hl.X, _v2hl.Z, _v2hl.Y)
if _v2hm and _v2hn ~= Enum.Material.Water then return Vector3.new(_v2hl.X, _v2hm, _v2hl.Z) end
for _v2ho = 20, 800, 20 do
for _v2hp = 0, 15 do
local _v2hq = _v2hp * math.pi / 8
local _v2hr, _v2hs = _v2hl.X + math.cos(_v2hq) * _v2ho, _v2hl.Z + math.sin(_v2hq) * _v2ho
local _v2ht, _v2hu = _v2hf(_v2hr, _v2hs, _v2hl.Y)
if _v2ht and _v2hu ~= Enum.Material.Water and not (_v4.wallCross and _v4.wallCross(_v2hl, Vector3.new(_v2hr, _v2hl.Y, _v2hs))) then
return Vector3.new(_v2hr, _v2ht, _v2hs)
end
end
end
end
local function _v2hv(_v2hw) _v4.flyStatus = _v2hw; if _v2h6 then pcall(_v2h6, _v2hw) end end
if _v4.trackWalls then pcall(_v4.trackWalls) end
if _v4.wallCross and _v4.wallCross(_v2h7.Position, Vector3.new(_v2h3.X, _v2h7.Position.Y, _v2h3.Z)) then
return false, _ei9m[6+461]
end
pcall(function() _v2h8:SetAttribute(_ei9m[3+328], true) end)
local _v2hx, _v2hy = false, _ei9m[355+19]
local okRun, err = pcall(function()
local _v2hz = game:GetService(_ei9m[2+2384])
local _v2i0 = _v2h7.Position
local _v2i1 = Vector3.new(_v2h3.X, _v2h3.Y, _v2h3.Z)
local _v2i2 = Vector3.new(_v2i1.X - _v2i0.X, 0, _v2i1.Z - _v2i0.Z)
local _v2i3 = _v2i2.Magnitude > 0.1 and _v2i2.Unit or Vector3.new(0, 0, -1)
local _v2i4 = os.clock() + _v2i2.Magnitude / math.max(_v4.mvSideCap(), 1) * 1.6 + 60
local _v2i5, _v2i6 = _v2i4 + _v4.MV_WATER_EXTRA, os.clock()
local _v2i7, _v2i8, _v2i9, _v2ia = _ei9m[673+1294], false, nil, 0
while not _v4.UNLOADED do
local _v2ib = _v2hz.Heartbeat:Wait()
if _v2h4 and not _v2h4() then _v2hy = _ei9m[6+2180] return end
if not (_v2h7.Parent and _v2.Character == _v2h8) then _v2hy = _ei9m[125+1403] return end
_v2i4, _v2i6 = _v4.mvExtend(_v2i4, _v2i6, _v2i5)
if os.clock() > _v2i4 then return end
if _v4.mvHold() then _v2i0 = _v2h7.Position end
local _v2ic = Vector3.new(_v2i1.X - _v2i0.X, 0, _v2i1.Z - _v2i0.Z).Magnitude
if _v2ic > 0.5 then _v2i3 = Vector3.new(_v2i1.X - _v2i0.X, 0, _v2i1.Z - _v2i0.Z).Unit end
if not _v2i8 and _v2ic < 400 then
local _v2id = _v2hk(_v2i1)
if _v2id then _v2i1, _v2i8 = _v2id, true end
_v2ic = Vector3.new(_v2i1.X - _v2i0.X, 0, _v2i1.Z - _v2i0.Z).Magnitude
end
if _v2i7 == _ei9m[2861] and os.clock() - _v2ia > 0.5 then
_v2ia = os.clock()
if _v4.wallCross and _v4.wallCross(_v2i0, _v2i0 + _v2i3 * math.min(_v2ic, 80)) then
local _v2ie = _v2hk(_v2i0)
_v2i1, _v2i8, _v2hy = _v2ie or Vector3.new(_v2i0.X, _v2i0.Y, _v2i0.Z), true, _ei9m[4+1369]
_v2ic = Vector3.new(_v2i1.X - _v2i0.X, 0, _v2i1.Z - _v2i0.Z).Magnitude
end
end
local _v2if
if _v2i7 == _ei9m[3+2876] then
local _v2ig = _v2i0 + _v2i3 * math.min(60, _v2ic)
local _v2ih = _v2hf(_v2i0.X, _v2i0.Z, _v2i0.Y) or (_v2i0.Y - _v2h9 - _v2h5)
local _v2ii = _v2hf(_v2ig.X, _v2ig.Z, _v2i0.Y) or _v2ih
local _v2ij = math.max(_v2ih, _v2ii) + _v2h9 + _v2h5
if _v2ic < 1 and _v2i8 then
_v2i7 = _ei9m[34+2369]
elseif _v2i0.Y < _v2ij - 2 then
_v2if = Vector3.new(_v2i0.X + _v2i3.X * math.min(_v2ic, 2), _v2ij, _v2i0.Z + _v2i3.Z * math.min(_v2ic, 2))
else
local _v2ik = math.min(_v2ic, 50)
_v2if = Vector3.new(_v2i0.X + _v2i3.X * _v2ik, _v2ij, _v2i0.Z + _v2i3.Z * _v2ik)
end
_v2hv(math.floor(_v2ic) .. _ei9m[6+2382])
end
if _v2i7 == _ei9m[985+472] then
if not _v2i9 then
local _v2il = _v2hf(_v2i1.X, _v2i1.Z, _v2i0.Y)
_v2i9 = (_v2il or (_v2i0.Y - _v2h9 - _v2h5)) + _v2h9 + 0.5
end
if math.abs(_v2i0.Y - _v2i9) < 0.5 then _v2hx = true return end
_v2if = Vector3.new(_v2i1.X, _v2i9, _v2i1.Z)
_v2hv(_ei9m[799])
end
local _v2im = _v4.govNext(_v2i0, _v2if, _v2ib)
local _v2in = _v2hf(_v2im.X, _v2im.Z, _v2im.Y)
if _v2in and _v2im.Y < _v2in + _v2h9 * 0.5 then _v2im = Vector3.new(_v2im.X, _v2in + _v2h9 * 0.5, _v2im.Z) end
_v2i0 = _v2im
pcall(function()
_v2h8:SetAttribute(_ei9m[291-12], _v2i0.Y)
_v2h7.CFrame = CFrame.lookAt(_v2i0, _v2i0 + _v2i3)
_v2h7.AssemblyLinearVelocity = Vector3.zero
_v2h7.AssemblyAngularVelocity = Vector3.zero
end)
end
end)
if not okRun then _v2hy = tostring(err) end
pcall(function() _v2h8:SetAttribute(_ei9m[307-8], nil) end)
pcall(function() _v2h7.AssemblyLinearVelocity = Vector3.zero end)
_v4.flyLandUntil = os.clock() + 10
_v4.flyStatus = nil
return _v2hx, _v2hx and _ei9m[869+1187] or _v2hy
end
_v4.BIOME_TARGET = nil
_v4.BIOME_TRAVEL = false
_v4.biomeTravelling = false
_v4.biomeToggle = nil
_v4.BIOME_POINTS = {}
function _v4.biomeNames()
local _v2io = {}
pcall(function()
for _v2ip, _v2iq in ipairs(game:GetService(_ei9m[1008]).Locations:GetChildren()) do _v2io[#_v2io + 1] = _v2iq.Name end
end)
table.sort(_v2io)
return _v2io
end
function _v4.biomePoint(_v2ir)
if _v4.BIOME_POINTS[_v2ir] then return _v4.BIOME_POINTS[_v2ir] end
local _v2is
pcall(function()
local _v2it = game:GetService(_ei9m[2562-16]).Locations:FindFirstChild(_v2ir)
if _v2it then _v2is = _v2it:GetPivot().Position end
end)
return _v2is
end
function _v4.travelToBiome(_v2iu)
if _v4.biomeTravelling then return end
_v4.biomeTravelling = true
local _v2iv = _v2iu and _v4.biomePoint(_v2iu)
local _v2iw, _v2ix = false, _ei9m[3+2967]
if _v2iv then
pcall(function() _v2bx:Notify(_ei9m[1189-8] .. tostring(_v2iu), 4) end)
local _v2iy, _v2iz, _v2j0 = pcall(_v4.flyTo, _v2iv, function() return _v4.BIOME_TRAVEL and not (_v4.otherMoverOn and _v4.otherMoverOn()) end, 40)
_v2iw, _v2ix = _v2iy and _v2iz, _v2iy and _v2j0 or tostring(_v2iz)
end
pcall(function()
_v2bx:Notify(_v2iw and (_ei9m[349+381] .. tostring(_v2iu)) or (_ei9m[529+351] .. tostring(_v2ix) .. _ei9m[2316-2]), 6)
end)
_v4.biomeTravelling = false
_v4.BIOME_TRAVEL = false
if _v4.biomeToggle then pcall(function() _v4.biomeToggle:Set(false) end) end
end
_v4.fossilFarmToggle = nil
local function _v2j1(_v2j2)
for _v2j3, _v2j4 in ipairs(_v2j2:GetDescendants()) do
if _v2j4:IsA(_ei9m[1918-6]) and _v2j4.Name == _ei9m[1181-5] then return _v2j4 end
end
return nil
end
function _v4.fossilPosOf(_v2j5)
local ok, p = pcall(function()
local _v2j6 = _v2j1(_v2j5)
_v2j6 = _v2j6 and _v2j6.Parent
if _v2j6 and _v2j6:IsA(_ei9m[2379-17]) then return _v2j6.WorldPosition end
if _v2j6 and _v2j6:IsA(_ei9m[807+1253]) then return _v2j6.Position end
return _v2j5:GetPivot().Position
end)
if ok then return p end
return nil
end
function _v4.ffPlanRoute(_v2j7)
local _v2j8 = workspace:FindFirstChild(_ei9m[866-1])
if not _v2j8 then return {} end
local _v2j9, _v2ja = os.clock(), {}
for _v2jb, _v2jc in ipairs(_v2j8:GetChildren()) do
local _v2jd = _v2j1(_v2jc)
local _v2je = _v4.ffSkip and _v4.ffSkip[_v2jc]
if _v2jd and _v2jd.Enabled ~= false and not (_v2je and _v2je > _v2j9) then
local _v2jf = _v4.fossilPosOf(_v2jc)
if _v2jf and _v2jf.Magnitude > 1 then _v2ja[#_v2ja + 1] = { f = _v2jc, p = _v2jf } end
end
if #_v2ja >= 150 then break end
end
local _v2jg = #_v2ja
if _v2jg == 0 then return {} end
local _v2jh, _v2ji, _v2jj = {}, {}, _v2j7
for _v2jk = 1, _v2jg do
local _v2jl, _v2jm
for _v2jn, _v2jo in ipairs(_v2ja) do
if not _v2ji[_v2jn] then
local _v2jp = (_v2jo.p - _v2jj).Magnitude
if not _v2jm or _v2jp < _v2jm then _v2jl, _v2jm = _v2jn, _v2jp end
end
end
_v2ji[_v2jl] = true
_v2jh[#_v2jh + 1] = _v2ja[_v2jl]
_v2jj = _v2ja[_v2jl].p
end
local function _v2jq(_v2jr) return _v2jr == 0 and _v2j7 or _v2jh[_v2jr].p end
for _v2js = 1, 8 do
local _v2jt = false
for _v2ju = 1, _v2jg - 1 do
for _v2jv = _v2ju + 1, _v2jg do
local _v2jw, _v2jx, _v2jy = _v2jq(_v2ju - 1), _v2jq(_v2ju), _v2jq(_v2jv)
local _v2jz = (_v2jx - _v2jw).Magnitude
local _v2k0 = (_v2jy - _v2jw).Magnitude
if _v2jv < _v2jg then
local _v2k1 = _v2jq(_v2jv + 1)
_v2jz = _v2jz + (_v2k1 - _v2jy).Magnitude
_v2k0 = _v2k0 + (_v2k1 - _v2jx).Magnitude
end
if _v2k0 < _v2jz - 0.01 then
local _v2k2, _v2k3 = _v2ju, _v2jv
while _v2k2 < _v2k3 do _v2jh[_v2k2], _v2jh[_v2k3] = _v2jh[_v2k3], _v2jh[_v2k2]; _v2k2, _v2k3 = _v2k2 + 1, _v2k3 - 1 end
_v2jt = true
end
end
end
if not _v2jt then break end
end
local _v2k4 = {}
for _v2k5, _v2k6 in ipairs(_v2jh) do _v2k4[_v2k5] = _v2k6.f end
return _v2k4
end
function _v4.nearestFossil(_v2k7)
local _v2k8 = workspace:FindFirstChild(_ei9m[2810])
if not _v2k8 then return nil end
local _v2k9, _v2ka
for _v2kb, _v2kc in ipairs(_v2k8:GetChildren()) do
local _v2kd = _v2j1(_v2kc)
local _v2ke = _v4.ffSkip and _v4.ffSkip[_v2kc]
if _v2kd and _v2kd.Enabled ~= false and not (_v2ke and _v2ke > os.clock()) then
local _v2kf = _v4.fossilPosOf(_v2kc)
if _v2kf and _v2kf.Magnitude > 1 then
local _v2kg = (_v2kf - _v2k7).Magnitude
if not _v2ka or _v2kg < _v2ka then _v2k9, _v2ka = _v2kc, _v2kg end
end
end
end
return _v2k9
end
function _v4.isolatePrompt(_v2kh, _v2ki)
local _v2kj = {}
local _v2kk = workspace:FindFirstChild(_ei9m[2327])
if not _v2kk then return _v2kj end
for _v2kl, _v2km in ipairs(_v2kk:GetChildren()) do
local _v2kn = _v2j1(_v2km)
if _v2kn and _v2kn ~= _v2kh and _v2kn.Enabled then
local _v2ko, _v2kp = pcall(function() return _v2kn.Parent.Position end)
if (not _v2ko) or (_v2kp - _v2ki).Magnitude < 80 then
pcall(function() _v2kn.Enabled = false end)
table.insert(_v2kj, _v2kn)
end
end
end
return _v2kj
end
function _v4.restorePrompts(_v2kq)
for _v2kr, _v2ks in ipairs(_v2kq) do pcall(function() if _v2ks and _v2ks.Parent then _v2ks.Enabled = true end end) end
end
function _v4.autoSpawnCleanup()
for _v2kt, _v2ku in ipairs(_v4.AUTO_SPAWN_DRAWS) do pcall(function() _v2ku:Remove() end) end
table.clear(_v4.AUTO_SPAWN_DRAWS)
_v4.AUTO_SPAWN = false
_v4.AUTO_SPAWN_TARGET = nil
_v4.AUTO_SPAWN_GENDER = nil
_v4.AUTO_SPAWN_ATTEMPTS = 0
end
function _v4.autoSpawnCleanupGUI()
local _v2kv = _v2.PlayerGui
pcall(function()
local _v2kw = _v2kv:FindFirstChild(_ei9m[33])
if _v2kw then _v2kw:Destroy() end
end)
pcall(function()
local _v2kx = _v2kv:FindFirstChild(_ei9m[1106-11])
if _v2kx then _v2kx:Destroy() end
end)
pcall(function()
local _v2ky = _v2kv:FindFirstChild(_ei9m[623+2336])
if _v2ky then _v2ky:Destroy() end
end)
end
function _v4.autoSpawnGetDinoName()
local _v2kz = _v2.PlayerGui:FindFirstChild(_ei9m[6+303])
if not _v2kz then return nil end
local _v2l0 = _v2kz:FindFirstChild(_ei9m[476+1439])
if not _v2l0 then return nil end
local _v2l1 = _v2l0:FindFirstChild(_ei9m[940-3])
if not _v2l1 then return nil end
local _v2l2 = _v2l1:FindFirstChild(_ei9m[2689])
if _v2l2 and _v2l2.Text ~= "" then return _v2l2.Text end
return nil
end
function _v4.autoSpawnGetGender()
local _v2l3 = _v2.PlayerGui:FindFirstChild(_ei9m[1812])
if not _v2l3 then return _ei9m[1999] end
local ok, result = pcall(function()
local _v2l4 = _v2l3.LeftFrame.Customizer.Frame.Gender.Frame
local _v2l5 = _v2l4:FindFirstChild(_ei9m[2+2044])
if _v2l5 then
local _v2l6 = _v2l5:FindFirstChild(_ei9m[4+1523])
if _v2l6 and _v2l6.Color.G > 0.8 then return _ei9m[1798-8] end
end
return _ei9m[464-19]
end)
return ok and result or _ei9m[923+1936]
end
function _v4.autoSpawnIsAlive()
local _v2l7 = _v2.Character
if not _v2l7 then return false end
local _v2l8 = _v2l7:FindFirstChildOfClass(_ei9m[1239])
return _v2l8 and _v2l8.Health > 0
end
function _v4.startAutoSpawn()
_v4.autoSpawnCleanup()
_v4.AUTO_SPAWN = true
_v4.AUTO_SPAWN_ATTEMPTS = 0
_v4.AUTO_SPAWN_TARGET = _v4.autoSpawnGetDinoName()
_v4.AUTO_SPAWN_GENDER = _v4.autoSpawnGetGender()
if not _v4.AUTO_SPAWN_TARGET then
pcall(function() _v2bx:Notify(_ei9m[874], 5) end)
_v4.AUTO_SPAWN = false
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
pcall(function() _v2bx:Notify(_ei9m[2985-4] .. _v4.AUTO_SPAWN_TARGET .. " (" .. _v4.AUTO_SPAWN_GENDER .. _ei9m[5+269], 5) end)
local _v2l9 = _v4.AUTO_SPAWN_DRAWS
local function _v2la(_v2lb)
local _v2lc = _v4.safeDraw(_ei9m[3+2990])
_v2lc.Visible = true
_v2lc.Color = _v2lb.Color or Color3.fromRGB(255, 255, 255)
_v2lc.Size = _v2lb.Size or 16
_v2lc.Position = _v2lb.Position or Vector2.new(0, 0)
_v2lc.Text = _v2lb.Text or ""
_v2lc.Font = 2
_v2lc.Outline = true
_v2lc.OutlineColor = Color3.fromRGB(0, 0, 0)
table.insert(_v2l9, _v2lc)
return _v2lc
end
local function _v2ld(_v2le)
local _v2lf = _v4.safeDraw(_ei9m[3+590])
_v2lf.Visible = true
_v2lf.Color = _v2le.Color or Color3.fromRGB(10, 10, 10)
_v2lf.Size = _v2le.Size or Vector2.new(100, 100)
_v2lf.Position = _v2le.Position or Vector2.new(0, 0)
_v2lf.Filled = _v2le.Filled ~= false
_v2lf.Transparency = _v2le.Transparency or 0.3
if _v2le.Thickness then _v2lf.Thickness = _v2le.Thickness end
table.insert(_v2l9, _v2lf)
return _v2lf
end
local _v2lg, _v2lh = 12, 12
_v2ld({ Position = Vector2.new(_v2lg, _v2lh), Size = Vector2.new(300, 110) })
local _v2li = _v2ld({ Position = Vector2.new(_v2lg, _v2lh), Size = Vector2.new(300, 110), Filled = false, Transparency = 1, Color = Color3.fromRGB(0, 200, 80), Thickness = 2 })
local _v2lj = _v2la({ Text = _ei9m[1533+15], Position = Vector2.new(_v2lg + 6, _v2lh + 4), Size = 18, Color = Color3.fromRGB(0, 220, 80) })
local _v2lk = _v2la({ Text = _ei9m[64+1164] .. _v4.AUTO_SPAWN_TARGET .. _ei9m[1706-15], Position = Vector2.new(_v2lg + 6, _v2lh + 26), Color = Color3.fromRGB(0, 255, 200) })
local _v2ll = _v2la({ Text = _ei9m[586-5], Position = Vector2.new(_v2lg + 6, _v2lh + 44) })
local _v2lm = _v2la({ Text = _ei9m[14], Position = Vector2.new(_v2lg + 6, _v2lh + 62) })
local _v2ln = _v2la({ Text = _ei9m[2472-9], Position = Vector2.new(_v2lg + 6, _v2lh + 80), Color = Color3.fromRGB(255, 200, 0) })
local _v2lo = game:GetService(_ei9m[2184-20])
local _v2lp = _v4.req(_v2lo:WaitForChild(_ei9m[785]):WaitForChild(_ei9m[2+154]))
local _v2lq = _v2lp.GetController(_ei9m[2152-11])
local _v2lr = _v2lp.GetService(_ei9m[1254+656])
task.spawn(function()
while _v4.AUTO_SPAWN and not _v4.UNLOADED do
pcall(function()
local _v2ls = _v2lq:GetInfo(_v4.AUTO_SPAWN_TARGET)
if _v2ls then
_v2ll.Text = string.format(_ei9m[2462],
_v2ls.UsedTotal or 0, _v2ls.Slots or 0,
_v2ls.UsedZenith or 0, _v2ls.ZenithSlots or 0)
end
end)
task.wait(3)
end
end)
task.spawn(function()
while _v4.AUTO_SPAWN and not _v4.UNLOADED do
if _v4.autoSpawnIsAlive() then
_v4.autoSpawnCleanupGUI()
_v2ln.Text = _ei9m[120+2555]
_v2ln.Color = Color3.fromRGB(0, 255, 0)
_v2lj.Text = _ei9m[2850-17]
_v2lj.Color = Color3.fromRGB(0, 255, 0)
_v2li.Color = Color3.fromRGB(0, 255, 0)
pcall(function() _v2bx:Notify(_ei9m[917+424], 4) end)
task.wait(5)
_v4.autoSpawnCleanup()
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
if not _v2.PlayerGui:FindFirstChild(_ei9m[1200+1769]) then
_v2ln.Text = _ei9m[3+2390]
_v2ln.Color = Color3.fromRGB(255, 200, 0)
task.wait(1)
continue
end
_v4.AUTO_SPAWN_ATTEMPTS += 1
_v2lm.Text = _ei9m[2+495] .. _v4.AUTO_SPAWN_ATTEMPTS
local _v2lt, _v2lu, _v2lv
local _v2lw = pcall(function()
_v2lt, _v2lu, _v2lv = _v2lq:RequestSlot(_v4.AUTO_SPAWN_TARGET)
end)
if not _v2lw then
_v2ln.Text = _ei9m[67]
pcall(function()
_v2lr:InitiateSpawning({
Species = _v4.AUTO_SPAWN_TARGET,
Gender = _v4.AUTO_SPAWN_GENDER,
Skin = _ei9m[129+852],
Variant = _ei9m[859],
})
end)
_v4.autoSpawnCleanupGUI()
_v2ln.Text = _ei9m[2244-20]
_v2ln.Color = Color3.fromRGB(0, 255, 100)
_v2lj.Text = _ei9m[5+2912]
_v2lj.Color = Color3.fromRGB(0, 255, 0)
_v2li.Color = Color3.fromRGB(0, 255, 0)
task.wait(5)
_v4.autoSpawnCleanup()
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
if _v2lt then
_v2ln.Text = _ei9m[1737-1] .. _v4.AUTO_SPAWN_TARGET
_v2ln.Color = Color3.fromRGB(0, 255, 0)
_v2lj.Color = Color3.fromRGB(0, 255, 0)
_v2li.Color = Color3.fromRGB(0, 255, 0)
pcall(function()
_v2lr:InitiateSpawning({
Species = _v4.AUTO_SPAWN_TARGET,
Gender = _v4.AUTO_SPAWN_GENDER,
Skin = _ei9m[1952+804],
Variant = _ei9m[2604],
})
end)
_v4.autoSpawnCleanupGUI()
_v2lj.Text = _ei9m[7+1373]
pcall(function() _v2bx:Notify(_ei9m[2658] .. _v4.AUTO_SPAWN_TARGET .. "!", 4) end)
task.wait(5)
_v4.autoSpawnCleanup()
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
if _v2lu == _ei9m[2465-17] and _v2lv then
_v2ll.Text = string.format(_ei9m[861-12],
_v2lv.UsedTotal or 0, _v2lv.Slots or 0,
_v2lv.UsedZenith or 0, _v2lv.ZenithSlots or 0)
end
_v2ln.Text = _ei9m[2+1761]
_v2ln.Color = Color3.fromRGB(255, 80, 80)
_v2li.Color = Color3.fromRGB(200, 60, 60)
task.wait(0.5)
end
end)
end
function _v4.unanchorFarmRoot()
local _v2lx = _vjc()
if _v2lx then pcall(function() _v2lx.Anchored = false end) end
end
local _v2ly = nil
local _v2lz = {}
local function _v2m0()
if _v2ly then
pcall(function() _v4.VIM:SendKeyEvent(false, _v2ly, false, game) end)
_v2ly = nil
end
if #_v2lz > 0 then
_v4.restorePrompts(_v2lz)
_v2lz = {}
end
_v4.unanchorFarmRoot()
if _v4.fossilFarmCleanup then _v4.fossilFarmCleanup() end
if not (_v4.NO_FALL_DAMAGE or _v4.FOSSIL_FARM) then _v4.applyFallImmunity(false) end
end
function _v4.groundUnder(_v2m1)
local _v2m2 = RaycastParams.new()
_v2m2.FilterType = Enum.RaycastFilterType.Exclude
_v2m2.FilterDescendantsInstances = { _v2.Character }
local _v2m3 = workspace:Raycast(_v2m1 + Vector3.new(0, 25, 0), Vector3.new(0, -300, 0), _v2m2)
return _v2m3 and _v2m3.Position or nil
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
function _v4.fossilFarmAdvance(_v2m4)
if _v4.UNLOADED then return end
if not _v4.FOSSIL_FARM then
if _v4.ffState then
_v4.fossilFarmCleanup()
local _v2m5 = _v2.Character
if _v2m5 and not _v4.AFK_FARM and not _v4.LEGIT_FARM then pcall(function() _v2m5:SetAttribute(_ei9m[742], nil) end) end
end
return
end
if _v4.SAVE_DINO_ACTIVE then return end
local _v2m6 = _v4.getLocalPhysicsRoot()
if not _v2m6 then return end
if _v2m6.Anchored and _v4.ffState ~= _ei9m[1233-13] then
pcall(function() _v2m6.Anchored = false end)
end
_v2m4 = math.min(_v2m4 or 0.016, 0.1)
local _v2m7 = _v2.Character
local _v2m8 = _v2m6.Position
if not _v4.ffPos then _v4.ffPos = _v2m8 end
if not _v4.ffTarget or not _v4.ffTarget.Parent then
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v2lz > 0 then
_v4.restorePrompts(_v2lz)
_v2lz = {}
end
local _v2m9 = _v4.ffPlanRoute(_v2m8)[1]
if _v2m9 then
_v4.ffTarget = _v2m9
_v4.ffState = _ei9m[403]
_v4.ffEmptyChecks = 0
_v4.ffTries, _v4.ffFace = 0, nil
local _v2ma = _v4.fossilPosOf(_v2m9)
if _v2ma then
local _v2mb = 3
pcall(function() _v2mb = _v2m6.Size.Y * 0.5 end)
local _v2mc = _v4.groundUnder(_v2ma)
_v4.ffPos = _v2m8
_v4.ffSetLeg(_v2m8, Vector3.new(_v2ma.X, (_v2mc and _v2mc.Y or _v2ma.Y) + _v2mb + 0.5, _v2ma.Z))
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
local _v2md = 0
for _v2me, _v2mf in pairs(_v4.ffSkip) do if _v2mf > os.clock() then _v2md = _v2md + 1 end end
pcall(function()
_v2bx:Notify(_v2md > 0 and (_ei9m[627+994] .. _v2md .. _ei9m[2182+142])
or _ei9m[2022-20], 8)
end)
end
return
end
end
if (_v4.ffState == _ei9m[1080-7] or _v4.ffFace) and _v4.ffTarget and _v4.ffTarget.Parent then
local _v2mg = os.clock()
if _v2mg - _v4.ffSince > (_v4.ffTries == 0 and 60 or 20) then
if _v4.ffTries < 2 then
_v4.ffTries = _v4.ffTries + 1
_v4.ffReposition(_v2m6)
pcall(function() _v2bx:Notify((_ei9m[770+2041]):format(_v4.ffTries), 4) end)
else
_v4.ffSkip[_v4.ffTarget] = _v2mg + 600
_v4.ffDropTarget(_v2m6)
pcall(function() _v2bx:Notify(_ei9m[585-5], 5) end)
return
end
end
end
if _v4.ffState == _ei9m[2549-1] and _v4.ffDest then
local _v2mh = (_v4.ffLeg and _v4.ffLeg[_v4.ffLegI]) or _v4.ffDest
_v4.ffPos = _v4.govNext(_v4.ffPos, _v2mh, _v2m4)
if _v2m7 then pcall(function() _v2m7:SetAttribute(_ei9m[946+768], _v4.ffPos.Y) end) end
if (_v4.ffPos - _v2mh).Magnitude < 0.5 and _v4.ffLeg and _v4.ffLegI < #_v4.ffLeg then
_v4.ffLegI = _v4.ffLegI + 1
end
local _v2mi = Vector3.new(_v4.ffDest.X - _v4.ffPos.X, 0, _v4.ffDest.Z - _v4.ffPos.Z)
if _v2mi.Magnitude < 0.1 then
local _v2mj = _v4.ffCF or _v2m6.CFrame
_v4.ffCF = CFrame.new(_v4.ffPos) * (_v2mj - _v2mj.Position)
else
_v4.ffCF = CFrame.lookAt(_v4.ffPos, _v4.ffPos + _v2mi)
end
pcall(function()
_v2m6.CFrame = _v4.ffCF
_v2m6.AssemblyLinearVelocity = Vector3.zero
_v2m6.AssemblyAngularVelocity = Vector3.zero
end)
if (_v4.ffPos - _v4.ffDest).Magnitude < 1.5 then
_v4.ffState = _ei9m[399+130]
_v4.ffCollectStart = os.clock()
_v4.ffSince = _v4.ffCollectStart
if _v4.ffFace then
local _v2mk = Vector3.new(_v4.ffFace.X, _v4.ffPos.Y, _v4.ffFace.Z)
if (_v2mk - _v4.ffPos).Magnitude > 0.1 then
_v4.ffCF = CFrame.lookAt(_v4.ffPos, _v2mk)
pcall(function() _v2m6.CFrame = _v4.ffCF end)
end
end
pcall(function() _v2m6.Anchored = true end)
local _v2ml = _v2j1(_v4.ffTarget)
if _v2ml then
_v2lz = {}
local _v2mm = workspace:FindFirstChild(_ei9m[680+977])
if _v2mm then
for _v2mn, _v2mo in ipairs(_v2mm:GetChildren()) do
local _v2mp = _v2j1(_v2mo)
if _v2mp and _v2mp ~= _v2ml and _v2mp.Enabled then
pcall(function() _v2mp.Enabled = false end)
table.insert(_v2lz, _v2mp)
end
end
end
local _v2mq = _v2ml.KeyboardKeyCode
if _v2mq == nil or _v2mq == Enum.KeyCode.Unknown then _v2mq = Enum.KeyCode.E end
_v4.ffHeldKey = _v2mq
_v4.ffHoldDuration = (tonumber(_v2ml.HoldDuration) or 2.5) + 1
pcall(function() _v4.VIM:SendKeyEvent(true, _v2mq, false, game) end)
else
pcall(function() _v2m6.Anchored = false end)
_v4.ffTarget = nil
_v4.ffState = nil
end
end
elseif _v4.ffState == _ei9m[7+2831] then
if not _v4.ffTarget.Parent then
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v2lz > 0 then
_v4.restorePrompts(_v2lz)
_v2lz = {}
end
pcall(function() _v2m6.Anchored = false end)
_v4.ffTarget = nil
_v4.ffState = nil
return
end
local _v2mr = os.clock() - _v4.ffCollectStart
if _v2mr > (_v4.ffHoldDuration or 4) then
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
local _v2ms = _v4.getLocalPhysicsRoot()
if _v2ms and not _v2ms.Anchored then
pcall(function()
_v2ms.CFrame = _v4.ffCF
_v2ms.AssemblyLinearVelocity = Vector3.zero
_v2ms.AssemblyAngularVelocity = Vector3.zero
end)
end
end
_v4.FF_CRUISE = 30
function _v4.ffRayParams()
local _v2mt = RaycastParams.new()
_v2mt.FilterType = Enum.RaycastFilterType.Include
local _v2mu = workspace:FindFirstChild(_ei9m[3002-20])
local _v2mv = _v2mu and _v2mu:FindFirstChild(_ei9m[229])
_v2mt.FilterDescendantsInstances = _v2mv and { workspace.Terrain, _v2mv } or { workspace.Terrain }
_v2mt.IgnoreWater = false
return _v2mt
end
function _v4.ffGroundY(_v2mw, _v2mx, _v2my, _v2mz)
local _v2n0 = workspace:Raycast(Vector3.new(_v2mw, _v2my + 400, _v2mx), Vector3.new(0, -1200, 0), _v2mz)
return _v2n0 and _v2n0.Position.Y or nil
end
function _v4.ffSetLeg(_v2n1, _v2n2)
_v4.ffDest = _v2n2
local _v2n3 = Vector3.new(_v2n2.X - _v2n1.X, 0, _v2n2.Z - _v2n1.Z).Magnitude
local _v2n4 = _v4.ffRayParams()
local _v2n5 = false
if _v2n3 < 40 then
local _v2n6, _v2n7 = pcall(function() return workspace:Raycast(_v2n1, _v2n2 - _v2n1, _v2n4) end)
_v2n5 = _v2n6 and _v2n7 == nil
end
if _v2n5 then
_v4.ffLeg, _v4.ffLegI = { _v2n2 }, 1
return
end
local _v2n8 = math.max(_v2n1.Y, _v2n2.Y)
local _v2n9 = math.max(1, math.floor(_v2n3 / 20))
for _v2na = 0, _v2n9 do
local _v2nb = _v2n1:Lerp(_v2n2, _v2na / _v2n9)
local _v2nc, _v2nd = pcall(_v4.ffGroundY, _v2nb.X, _v2nb.Z, _v2n8, _v2n4)
if _v2nc and _v2nd and _v2nd > _v2n8 then _v2n8 = _v2nd end
end
local _v2ne = math.max(_v2n8 + _v4.FF_CRUISE, _v2n1.Y)
_v4.ffLeg = { Vector3.new(_v2n1.X, _v2ne, _v2n1.Z), Vector3.new(_v2n2.X, _v2ne, _v2n2.Z), _v2n2 }
_v4.ffLegI = 1
end
function _v4.ffDropTarget(_v2nf)
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v2lz > 0 then
_v4.restorePrompts(_v2lz)
_v2lz = {}
end
if _v2nf then pcall(function() _v2nf.Anchored = false end) end
_v4.ffTarget, _v4.ffState, _v4.ffFace = nil, nil, nil
end
function _v4.ffReposition(_v2ng)
local _v2nh = _v4.ffTarget
local _v2ni = _v2nh and _v4.fossilPosOf(_v2nh)
if not _v2ni then _v4.ffDropTarget(_v2ng) return end
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v2lz > 0 then
_v4.restorePrompts(_v2lz)
_v2lz = {}
end
pcall(function() _v2ng.Anchored = false end)
local _v2nj = 6
pcall(function() _v2nj = math.clamp((_v2j1(_v2nh).MaxActivationDistance or 10) * 0.6, 3, 8) end)
local _v2nk = _v4.ffPos or _v2ng.Position
if _v4.ffTries == 1 then _v4.ffBaseAng = math.atan2(_v2nk.Z - _v2ni.Z, _v2nk.X - _v2ni.X) end
local _v2nl = (_v4.ffBaseAng or 0) + _v4.ffTries * (2 * math.pi / 3)
local _v2nm = _v2ni + Vector3.new(math.cos(_v2nl) * _v2nj, 0, math.sin(_v2nl) * _v2nj)
local _v2nn = _v4.groundUnder(_v2nm)
local _v2no = 3
pcall(function() _v2no = _v2ng.Size.Y * 0.5 end)
_v4.ffSetLeg(_v4.ffPos or _v2ng.Position, Vector3.new(_v2nm.X, (_v2nn and _v2nn.Y or _v2ni.Y) + _v2no + 0.5, _v2nm.Z))
_v4.ffFace = _v2ni
_v4.ffState = _ei9m[297+740]
_v4.ffSince = os.clock()
end
function _v4.ffCamStep(_v2np)
if _v4.UNLOADED or not _v4.FOSSIL_FARM or not _v4.ffFace then return end
local _v2nq = workspace.CurrentCamera
if not _v2nq or _v2nq.CameraType ~= Enum.CameraType.Custom then return end
local _v2nr = _v2nq.CFrame
local _v2ns = _v2nq.Focus.Position
local _v2nt, _v2nu = _v2nr.LookVector, _v4.ffFace - _v2ns
if Vector3.new(_v2nt.X, 0, _v2nt.Z).Magnitude < 1e-3 or Vector3.new(_v2nu.X, 0, _v2nu.Z).Magnitude < 1 then return end
local _v2nv = math.atan2(-_v2nt.X, -_v2nt.Z)
local _v2nw = math.atan2(-_v2nu.X, -_v2nu.Z)
local _v2nx = 6 * math.min(_v2np or 0.016, 0.1)
local _v2ny = math.clamp(math.atan2(math.sin(_v2nw - _v2nv), math.cos(_v2nw - _v2nv)), -_v2nx, _v2nx)
if math.abs(_v2ny) < 1e-4 then return end
local _v2nz = CFrame.Angles(0, _v2ny, 0)
_v2nq.CFrame = CFrame.new(_v2ns + _v2nz * (_v2nr.Position - _v2ns)) * (_v2nz * _v2nr.Rotation)
end
function _v4.fossilFarmCleanup()
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v2lz > 0 then
_v4.restorePrompts(_v2lz)
_v2lz = {}
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
local _v2o0 = _v2.Character
if _v2o0 and not (_v4.FOSSIL_FARM or _v4.AFK_FARM or _v4.LEGIT_FARM or _v4.FLY or _v4.SAVE_DINO_ACTIVE) then
pcall(function() _v2o0:SetAttribute(_ei9m[574+2059], nil) end)
end
end
function _v4.startFossilFarm()
local _v2o1 = workspace:FindFirstChild(_ei9m[2433-10])
local _v2o2 = _v2o1 and #_v2o1:GetChildren() or 0
pcall(function() _v2bx:Notify((_ei9m[2795]):format(_v2o2), 5) end)
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
_v1:BindToRenderStep(_ei9m[98], Enum.RenderPriority.Camera.Value + 2, _v4.ffCamStep)
end)
end
function _v4.getCC()
if _v4.ccCache then return _v4.ccCache end
pcall(function()
_v4.ccCache = _v4.req(_v4.WATER_RS.Packages.Knit).GetController(_ei9m[7+2473])
end)
return _v4.ccCache
end
_v4.CARRY_CORPSE = false
_v4.CARRY_RANGE = 1000
_v4.carryOrig = nil
function _v4.carryApply(_v2o3)
local function _v2o4(_v2o5)
pcall(function()
for _v2o6, _v2o7 in pairs(_v2o5.ProximityPrompts or {}) do
if typeof(_v2o7) == _ei9m[1719-19] and _v2o7:IsA(_ei9m[333]) then _v2o7.MaxActivationDistance = _v2o5.Range end
end
end)
end
if _v2o3 then
if _v4.carryOrig then return true end
local _v2o8
pcall(function() _v2o8 = _v4.req(_v2.PlayerScripts.Client.Classes.Character.Grab) end)
if type(_v2o8) ~= _ei9m[2663-3] then return false end
local _v2o9 = {}
for _v2oa, _v2ob in ipairs({ _ei9m[2+2408], _ei9m[825], _ei9m[1909], _ei9m[5+1048], _ei9m[1777] }) do
if type(_v2o8[_v2ob]) ~= _ei9m[24+199] then return false end
_v2o9[_v2ob] = _v2o8[_v2ob]
end
_v4.carryOrig = { G = _v2o8, o = _v2o9 }
_v2o8.GetGrabSettings = function(self, ...)
local _v2oc = _v2o9.GetGrabSettings(self, ...)
if type(_v2oc) ~= _ei9m[374-15] then return _v2oc end
local _v2od = table.clone(_v2oc)
_v2od.GrabLimit, _v2od.DragLimit = math.huge, math.huge
_v2od.DragReverseLock, _v2od.DragDrain = false, 0
return _v2od
end
_v2o8.CanGrabTarget = function(self, _v2oe, _v2of, ...)
if _v2of then return _v2o9.CanGrabTarget(self, _v2oe, _v2of, ...) end
return true
end
_v2o8.MeetsWeightLimit = function(self, _v2og, _v2oh, ...)
if _v2oh then return _v2o9.MeetsWeightLimit(self, _v2og, _v2oh, ...) end
return true
end
_v2o8.IsDragDisabled = function() return false end
_v2o8.Grab = function(self, _v2oi, _v2oj, ...)
if _v2oj == _ei9m[2123-16] then return _v2o9.Grab(self, _v2oi, _v2oj, ...) end
local _v2ok = self.BaseAttachment
self.BaseAttachment = nil
local _v2ol = table.pack(pcall(_v2o9.Grab, self, _v2oi, _v2oj, ...))
self.BaseAttachment = _v2ok
if not _v2ol[1] then error(_v2ol[2], 0) end
return table.unpack(_v2ol, 2, _v2ol.n)
end
local _v2om = _v4.getCC()
if type(_v2om) == _ei9m[2+657] and type(_v2om.GetConsumeRange) == _ei9m[2485] then
local _v2on = _v2om.GetConsumeRange
_v4.carryOrig.CC, _v4.carryOrig.oRange = _v2om, _v2on
_v2om.GetConsumeRange = function(self, ...)
return math.max(tonumber(_v2on(self, ...)) or 0, _v4.CARRY_RANGE)
end
pcall(function() _v2om.Range = _v2om:GetConsumeRange() end)
_v2o4(_v2om)
end
return true
end
local _v2oo = _v4.carryOrig
if _v2oo then
for _v2op, _v2oq in pairs(_v2oo.o) do _v2oo.G[_v2op] = _v2oq end
if _v2oo.CC then
_v2oo.CC.GetConsumeRange = _v2oo.oRange
pcall(function() _v2oo.CC.Range = _v2oo.CC:GetConsumeRange() end)
_v2o4(_v2oo.CC)
end
_v4.carryOrig = nil
end
return true
end
function _v4.khRange()
local _v2or
pcall(function() _v2or = _v4.getCC():GetConsumeRange() end)
if type(_v2or) ~= _ei9m[2005] or _v2or <= 0 then _v2or = 22 end
return _v2or
end
function _v4.nearestCorpse(_v2os)
local _v2ot = _v4.getCC()
if not (_v2ot and _v2ot.CorpseData and _v2os) then return nil end
local _v2ou
pcall(function() _v2ou = _v2.Character:GetAttribute(_ei9m[5+2132]) end)
if _v4.trackWalls then pcall(_v4.trackWalls) end
local _v2ov = RaycastParams.new()
_v2ov.FilterType = Enum.RaycastFilterType.Include
_v2ov.FilterDescendantsInstances = { workspace.Terrain }
local _v2ow, _v2ox, _v2oy
for _v2oz, _v2p0 in pairs(_v2ot.CorpseData) do
local _v2p1 = _v2p0 and _v2p0.Root
if _v2p1 and _v2p1.Parent and (tonumber(_v2p0.Weight) or 0) > 0 and tostring(_v2p0.Name) ~= tostring(_v2ou) then
local _v2p2
pcall(function()
_v2p2 = _v2p1:IsA(_ei9m[3+367]) and _v2p1.Position or _v2p1:GetPivot().Position
end)
if _v2p2 then
local _v2p3 = (_v2p2 - _v2os).Magnitude
if not _v2oy or _v2p3 < _v2oy then
local _v2p4 = workspace:Raycast(Vector3.new(_v2p2.X, _v2p2.Y + 3000, _v2p2.Z), Vector3.new(0, -6000, 0), _v2ov)
local _v2p5 = _v2p4 ~= nil and _v2p4.Position.Y > _v2p2.Y + 25
if not _v2p5 and not (_v4.wallCross and _v4.wallCross(_v2os, _v2p2)) then _v2ow, _v2ox, _v2oy = _v2oz, _v2p1, _v2p3 end
end
end
end
end
return _v2ow, _v2ox, _v2oy
end
function _v4.warpToCorpse(_v2p6, _v2p7)
local _v2p8
pcall(function()
_v2p8 = _v2p7:IsA(_ei9m[573+230]) and _v2p7.Position or _v2p7:GetPivot().Position
end)
if not _v2p8 then return false end
local _v2p9 = _v2p8 + Vector3.new(_v4.TP_OFFSET or 8, 0, 0)
local _v2pa = _v4.flyTo(_v2p9, function() return _v4.TP_CORPSE and not (_v4.otherMoverOn and _v4.otherMoverOn()) end, 40)
return _v2pa and _v2p6.Parent ~= nil
and Vector3.new(_v2p6.Position.X - _v2p8.X, 0, _v2p6.Position.Z - _v2p8.Z).Magnitude < 40
end
_v4.addStep(30, function()
if _v4.UNLOADED or not _v4.TP_CORPSE or _v4.tpBusy then return end
if _v4.tpDone and not _v4.TP_CHAIN then return end
if _v4.FLY or _v4.AUTO_FLY or _v4.AFK_FARM or _v4.LEGIT_FARM or _v4.FOSSIL_FARM or _v4.SAVE_DINO_ACTIVE or _v4.BIOME_TRAVEL then return end
local _v2pb = _vjc()
if not (_v2pb and _v2pb.Parent) then return end
local _v2pc = _v4.getCC()
if not _v2pc then return end
if _v4.tpTargetId then
local _v2pd = _v2pc.CorpseData and _v2pc.CorpseData[_v4.tpTargetId]
if _v2pd and (tonumber(_v2pd.Weight) or 0) > 0 then return end
_v4.tpTargetId = nil
if not _v4.TP_CHAIN then _v4.tpDone = true return end
end
local _v2pe, _v2pf, _v2pg = _v4.nearestCorpse(_v2pb.Position)
if not _v2pe then
if not _v4.tpNoneSaid then
_v4.tpNoneSaid = true
pcall(function() _v2bx:Notify(_ei9m[3+650], 5) end)
end
return
end
_v4.tpNoneSaid = nil
_v4.tpBusy = true
task.spawn(function()
_v4.applyFallImmunity(true)
pcall(function() _v2bx:Notify(_ei9m[466+927] .. math.floor(_v2pg or 0) .. _ei9m[2+1599], 4) end)
local _v2ph = _v4.warpToCorpse(_v2pb, _v2pf)
_v4.tpTargetId = _v2ph and _v2pe or nil
if _v2ph and not _v4.TP_CHAIN then _v4.tpDone = true end
pcall(function()
_v2bx:Notify(_v2ph and _ei9m[668-3]
or (_ei9m[871-19] .. (_v4.TP_CORPSE and _ei9m[701+1259] or _ei9m[1695-3])), 5)
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
local _v2pi = game:GetService(_ei9m[2+2589])
local _v2pj = game:GetService(_ei9m[2971-20])
local _v2pk
function _v4.applyFpsSaver(_v2pl)
if _v2pl then
if not _v2pk then
_v2pk = { shadows = _v2pi.GlobalShadows, fogEnd = _v2pi.FogEnd, fogStart = _v2pi.FogStart,
quality = nil, effects = {} }
pcall(function() _v2pk.quality = settings().Rendering.QualityLevel end)
for _v2pm, _v2pn in ipairs(_v2pi:GetChildren()) do
if _v2pn:IsA(_ei9m[2032-6]) or _v2pn:IsA(_ei9m[2001-15]) then _v2pk.effects[_v2pn] = _v2pn.Enabled end
end
end
pcall(function() if setfpscap and not _v4.IS_XENO then setfpscap(10) end end)
pcall(function() settings().Rendering.QualityLevel = Enum.QualityLevel.Level01 end)
pcall(function() _v2pi.GlobalShadows = false end)
pcall(function() _v2pi.FogStart = 0; _v2pi.FogEnd = 12 end)
for _v2po, _v2pp in ipairs(_v2pi:GetChildren()) do
if _v2pp:IsA(_ei9m[2998-3]) or _v2pp:IsA(_ei9m[905-15]) then pcall(function() _v2pp.Enabled = false end) end
end
pcall(function() _v2pj:Set3dRenderingEnabled(false) end)
else
pcall(function() _v2pj:Set3dRenderingEnabled(true) end)
pcall(function() if setfpscap and not _v4.IS_XENO then setfpscap(0) end end)
if _v2pk then
pcall(function() if _v2pk.quality then settings().Rendering.QualityLevel = _v2pk.quality end end)
pcall(function() _v2pi.GlobalShadows = _v2pk.shadows end)
pcall(function() _v2pi.FogStart = _v2pk.fogStart; _v2pi.FogEnd = _v2pk.fogEnd end)
for _v2pq, _v2pr in pairs(_v2pk.effects) do pcall(function() if _v2pq and _v2pq.Parent then _v2pq.Enabled = _v2pr end end) end
_v2pk = nil
end
end
end
end
local _v2ps = _v2bx:AddTab({Name = _ei9m[109+45]})
local _v2pt = _v2bx:AddTab({Name = _ei9m[1938]})
local _v2pu = _v2bx:AddTab({Name = _ei9m[1972]})
local _v2pv = _v2bx:AddTab({Name = _ei9m[4+2488]})
local _v2pw = {}
local _v2px
_v2px = _v2c1(_v2ps:AddSubTab({Name = _ei9m[2976-11]}))
_v4.section(_v2px, _ei9m[6+2610], _ei9m[2+2659])
_v4.fossilFarmToggle = _v2px:AddToggle({
Name = _ei9m[1836-6],
Skull = true,
Default = false,
Callback = function(_v2py)
_v4.FOSSIL_FARM = _v2py
if _v2py then
if _v4.LEGIT_FARM and _v4.legitFarmToggle then pcall(function() _v4.legitFarmToggle:Set(false) end) end
if _v4.AFK_FARM and _v4.afkFarmToggle then pcall(function() _v4.afkFarmToggle:Set(false) end) end
if _v4.FLY and _v4.flyToggle then pcall(function() _v4.flyToggle:Set(false) end) end
if _v4.AUTO_FLY and _v4.autoFlyToggle then pcall(function() _v4.autoFlyToggle:Set(false) end) end
_v4.LEGIT_FARM, _v4.AFK_FARM, _v4.FLY, _v4.AUTO_FLY = false, false, false, false
_v4.startFossilFarm()
else
_v2m0()
end
end
})
_v2px = _v2c1(_v2ps:AddSubTab({Name = _ei9m[7+1355]}))
_v4.section(_v2px, _ei9m[881+1415], _ei9m[830-11])
_v4.autoWaterToggle = _v2px:AddToggle({
Name = _ei9m[2135],
Default = false,
Callback = function(_v2pz) _v4.AUTO_WATER = _v2pz end
})
_v2pw.waterAnywhere = _v2px:AddToggle({
Name = _ei9m[1904],
Default = false,
Callback = function(_v2q0) _v4.WATER_ANYWHERE = _v2q0; _v4.anywhereSips = 0 end
})
_v4.forceEatToggle = _v2px:AddToggle({
Name = _ei9m[7+141],
Default = false,
Callback = function(_v2q1)
_v4.FORCE_EAT = _v2q1
if _v2q1 and _v4.AFK_FARM then
pcall(function() if _v4.Hub then _v4.Hub:Notify(_ei9m[497+1680], 5) end end)
end
end
})
_v4.section(_v2px, _ei9m[2139+404], _ei9m[1355-20])
_v2pw.fastEat = _v2px:AddToggle({
Name = _ei9m[1987-3],
Default = true,
Callback = function(_v2q2) _v4.FAST_EAT = _v2q2 end
})
_v2pw.eatWhenHungry = _v2px:AddToggle({
Name = _ei9m[3+1859],
Default = false,
Callback = function(_v2q3) _v4.EAT_WHEN_HUNGRY = _v2q3 end
})
_v2pw.leaveScraps = _v2px:AddToggle({
Name = _ei9m[4+2658],
Default = false,
Callback = function(_v2q4) _v4.LEAVE_SCRAPS = _v2q4 end
})
if not _v4.IS_XENO then
_v4.section(_v2px, _ei9m[838+153], _ei9m[2168])
_v2pw.carryCorpse = _v2px:AddToggle({
Name = _ei9m[372-9],
Default = false,
Callback = function(_v2q5)
_v4.CARRY_CORPSE = _v2q5
if not _v4.carryApply(_v2q5) and _v2q5 then
_v4.CARRY_CORPSE = false
pcall(function() if _v4.Hub then _v4.Hub:Notify(_ei9m[758-10], 5) end end)
end
end
})
end
_v4.section(_v2px, _ei9m[2609], _ei9m[666])
_v4.afkFarmToggle = _v2px:AddToggle({
Name = _ei9m[693+510],
Skull = true,
Default = false,
Callback = function(_v2q6)
_v4.AFK_FARM = _v2q6
if _v2q6 then
if _v4.FLY and _v4.flyToggle then pcall(function() _v4.flyToggle:Set(false) end) end
if _v4.AUTO_FLY and _v4.autoFlyToggle then pcall(function() _v4.autoFlyToggle:Set(false) end) end
if _v4.LEGIT_FARM and _v4.legitFarmToggle then pcall(function() _v4.legitFarmToggle:Set(false) end) end
if _v4.FOSSIL_FARM and _v4.fossilFarmToggle then pcall(function() _v4.fossilFarmToggle:Set(false) end) end
local _v2q7 = {}
if _v4.FORCE_EAT then _v2q7[#_v2q7 + 1] = _ei9m[1538] end
if _v4.AFK_FARM_SAFETY and (_v4.AUTO_SAVE or _v4.SAVE_DINO_ACTIVE) then _v2q7[#_v2q7 + 1] = _ei9m[2239] end
if _v4.AFK_FARM_SAFETY and _v4.SAVE_DINO_ACTIVE and _v4.releaseDino then pcall(_v4.releaseDino) end
if _v4.AFK_FARM_ADMIN_KICK and _v4.adminKickSweep then _v4.adminKickSweep() end
if #_v2q7 > 0 then
local _v2q8 = table.concat(_v2q7, _ei9m[1767-6]) .. _ei9m[125+1832]
pcall(function() if _v4.Hub then _v4.Hub:Notify(_v2q8, 6) end end)
end
else
_v4.afkStopWalk()
end
end
})
_v2pw.afkFarmAvoid = _v2px:AddSlider({
Name = _ei9m[1508],
Min = 0, Max = 1000, Default = 200,
Callback = function(_v2q9) _v4.AFK_FARM_AVOID = _v2q9 end
})
_v2pw.afkFarmWalk = _v2px:AddToggle({
Name = _ei9m[320-5],
Default = true,
Callback = function(_v2qa) _v4.AFK_FARM_WALK = _v2qa end
})
_v2pw.afkFarmSafety = _v2px:AddToggle({
Name = _ei9m[1731],
Default = true,
Callback = function(_v2qb)
_v4.AFK_FARM_SAFETY = _v2qb
if _v2qb and _v4.AFK_FARM and _v4.SAVE_DINO_ACTIVE and _v4.releaseDino then pcall(_v4.releaseDino) end
end
})
_v2pw.afkFarmAdminKick = _v2px:AddToggle({
Name = _ei9m[1680+1089],
Default = true,
Callback = function(_v2qc)
_v4.AFK_FARM_ADMIN_KICK = _v2qc
if _v2qc and _v4.AFK_FARM and _v4.adminKickSweep then _v4.adminKickSweep() end
end
})
_v2pw.afkFarmFlee = _v2px:AddToggle({
Name = _ei9m[1971+781],
Default = true,
Callback = function(_v2qd) _v4.AFK_FARM_FLEE = _v2qd end
})
_v2pw.afkFarmUnstuck = _v2px:AddToggle({
Name = _ei9m[2120-16],
Default = false,
Callback = function(_v2qe) _v4.AFK_FARM_UNSTUCK = _v2qe end
})
_v4.section(_v2px, _ei9m[831+2223], _ei9m[501+787])
_v4.legitFarmToggle = _v2px:AddToggle({
Name = _ei9m[2229],
Skull = true,
Default = false,
Callback = function(_v2qf)
_v4.LEGIT_FARM = _v2qf
if _v2qf then
if _v4.AFK_FARM and _v4.afkFarmToggle then pcall(function() _v4.afkFarmToggle:Set(false) end) end
if _v4.FLY and _v4.flyToggle then pcall(function() _v4.flyToggle:Set(false) end) end
if _v4.AUTO_FLY and _v4.autoFlyToggle then pcall(function() _v4.autoFlyToggle:Set(false) end) end
if _v4.FOSSIL_FARM and _v4.fossilFarmToggle then pcall(function() _v4.fossilFarmToggle:Set(false) end) end
if _v4.LF_ADMIN_KICK and _v4.adminKickSweep then _v4.adminKickSweep() end
end
end
})
_v2pw.lfAvoid = _v2px:AddSlider({
Name = _ei9m[2554-19],
Min = 0, Max = 1000, Default = 200,
Callback = function(_v2qg) _v4.LF_AVOID = _v2qg end
})
_v2pw.lfMaxDist = _v2px:AddSlider({
Name = _ei9m[1738-6],
Min = 200, Max = 3000, Default = 1000,
Callback = function(_v2qh) _v4.LF_MAX_DIST = _v2qh end
})
_v2pw.lfScraps = _v2px:AddToggle({
Name = _ei9m[2345],
Default = false,
Callback = function(_v2qi) _v4.LF_SCRAPS = _v2qi end
})
_v2pw.lfCircle = _v2px:AddToggle({
Name = _ei9m[7+988],
Default = false,
Callback = function(_v2qj) _v4.LF_CIRCLE = _v2qj end
})
_v2pw.lfFlee = _v2px:AddToggle({
Name = _ei9m[7+1351],
Default = false,
Callback = function(_v2qk) _v4.LF_FLEE = _v2qk end
})
_v2pw.lfTabOut = _v2px:AddToggle({
Name = _ei9m[2142],
Default = true,
Callback = function(_v2ql) _v4.LF_TABOUT = _v2ql end
})
_v2pw.lfUnstuck = _v2px:AddToggle({
Name = _ei9m[1195],
Default = true,
Callback = function(_v2qm) _v4.LF_UNSTUCK = _v2qm end
})
_v2pw.lfRest = _v2px:AddToggle({
Name = _ei9m[105+322],
Default = true,
Callback = function(_v2qn) _v4.LF_REST = _v2qn end
})
_v2pw.lfAdminKick = _v2px:AddToggle({
Name = _ei9m[912-3],
Default = true,
Callback = function(_v2qo)
_v4.LF_ADMIN_KICK = _v2qo
if _v2qo and _v4.LEGIT_FARM and _v4.adminKickSweep then _v4.adminKickSweep() end
end
})
_v2pw.lfFlyAway = _v2px:AddToggle({
Name = _ei9m[2096-1],
Default = true,
Callback = function(_v2qp) _v4.LF_FLYAWAY = _v2qp end
})
_v2pw.lfFlyAwayRadius = _v2px:AddSlider({
Name = _ei9m[1398-20],
Min = 50, Max = 500, Default = 150,
Callback = function(_v2qq) _v4.LF_FLYAWAY_RADIUS = _v2qq end
})
_v4.section(_v2px, _ei9m[4+369], _ei9m[5+364])
_v4.autoSwitchToggle = _v2px:AddToggle({
Name = _ei9m[6+2165],
Skull = true,
Default = false,
Callback = function(_v2qr)
_v4.AUTO_SWITCH = _v2qr
if _v2qr and _v4.asRefreshLists then pcall(_v4.asRefreshLists) end
if not _v2qr then _v4.AS_BUSY = false end
end
})
;(function()
local _v2qs = _v4.asItems and _v4.asItems() or { _ei9m[1939] }
_v4.AS_SLOTS = _v4.AS_SLOTS or {}
for _v2qt = 1, 6 do
_v4.AS_SLOTS[_v2qt] = _ei9m[2+987]
_v2pw[_ei9m[764+1312] .. _v2qt] = _v2px:AddDropdown({
Name = _ei9m[879-12] .. _v2qt,
Items = _v2qs,
Default = _ei9m[211+204],
Callback = function(_v2qu) _v4.AS_SLOTS[_v2qt] = _v4.asNameOf and _v4.asNameOf(_v2qu) or _v2qu end
})
if _v4.asDropdowns then _v4.asDropdowns[_v2qt] = _v2pw[_ei9m[2+1597] .. _v2qt] end
end
end)()
_v2pw.asGender = _v2px:AddDropdown({
Name = _ei9m[2154-9],
Items = { _ei9m[170], _ei9m[54+2444] },
Default = _ei9m[673+797],
Callback = function(_v2qv) _v4.AS_GENDER = _v2qv end
})
_v2pw.asAutoOrder = _v2px:AddToggle({
Name = _ei9m[2518-14],
Default = false,
Callback = function(_v2qw) _v4.AS_AUTO_ORDER = _v2qw end
})
_v2pw.asAutoBuy = _v2px:AddToggle({
Name = _ei9m[6+2514],
Default = false,
Callback = function(_v2qx) _v4.AS_AUTOBUY = _v2qx end
})
pcall(function()
if _v2px.AddLabel then _v4.asDoneLabel = _v2px:AddLabel({ Name = _ei9m[136+326], Text = _ei9m[6+2547] }) end
if _v4.asRefreshDone then _v4.asRefreshDone() end
end)
_v4.section(_v2px, _ei9m[1524], _ei9m[5+2722])
_v4.farmTimerToggle = _v2px:AddToggle({
Name = _ei9m[3050-1],
Default = false,
Callback = function(_v2qy)
_v4.FARM_TIMER = _v2qy
_v4.ftElapsed, _v4.ftWarned = 0, false
if _v2qy then
pcall(function() _v4.Hub:Notify(_ei9m[316] .. math.floor(_v4.FT_MINUTES or 0) .. _ei9m[4+81], 5) end)
end
end
})
_v2pw.ftMinutes = _v2px:AddSlider({
Name = _ei9m[1946],
Min = 5, Max = 720, Default = 120,
Callback = function(_v2qz) _v4.FT_MINUTES = _v2qz end
})
_v4.section(_v2px, _ei9m[2+30], _ei9m[1473+899])
_v4.rejoinToggle = _v2px:AddToggle({
Name = _ei9m[2992],
Default = _v4.REJOIN,
Callback = function(_v2r0)
_v4.REJOIN = _v2r0
if _v4.rejoinSave then _v4.rejoinSave() end
end
})
;(function()
local _v2r1 = { _ei9m[2057], _ei9m[6+1850], _ei9m[2012-19], _ei9m[1221-13], _ei9m[1595] }
if not table.find(_v2r1, _v4.REJOIN_MAP) then _v4.REJOIN_MAP = _ei9m[442+99] end
_v2pw.rejoinMap = _v2px:AddDropdown({
Name = _ei9m[624],
Items = _v2r1,
Default = _v4.REJOIN_MAP,
Callback = function(_v2r2)
_v4.REJOIN_MAP = _v2r2
if _v4.rejoinSave then _v4.rejoinSave() end
end
})
end)()
;(function()
local _v2r3 = { _ei9m[100-9] }
for _v2r4, _v2r5 in ipairs(_v4.asItems and _v4.asItems() or {}) do
if (_v4.asNameOf and _v4.asNameOf(_v2r5)) ~= _ei9m[5+1460] then _v2r3[#_v2r3 + 1] = _v2r5 end
end
local _v2r6 = _ei9m[1834]
if type(_v4.FARM_DINO) == _ei9m[399+93] and _v4.FARM_DINO ~= "" and _v4.FARM_DINO ~= _ei9m[2271+287] then
_v2r6 = (_v4.asLabel and _v4.asLabel(_v4.FARM_DINO)) or _v4.FARM_DINO
end
_v2pw.rejoinDino = _v2px:AddDropdown({
Name = _ei9m[846-9],
Items = _v2r3,
Default = _v2r6,
Callback = function(_v2r7)
local _v2r8 = (_v4.asNameOf and _v4.asNameOf(_v2r7)) or _v2r7
if _v2r8 == _ei9m[619] or _v2r8 == _ei9m[1193+1685] or _v2r8 == nil then
_v4.FARM_DINO = nil
else
_v4.FARM_DINO = _v2r8
end
if _v4.rejoinSave then _v4.rejoinSave() end
end
})
end)()
_v2pw.lowPopLeave = _v2px:AddToggle({
Name = _ei9m[1156+1275],
Default = _v4.LOW_POP_LEAVE,
Callback = function(_v2r9)
_v4.LOW_POP_LEAVE = _v2r9
if _v4.rejoinSave then _v4.rejoinSave() end
end
})
_v2pw.lowPopMin = _v2px:AddSlider({
Name = _ei9m[366-10],
Min = 10, Max = 150, Default = _v4.LOW_POP_MIN,
Callback = function(_v2ra)
_v4.LOW_POP_MIN = _v2ra
if _v4.rejoinSave then _v4.rejoinSave() end
end
})
_v4.antiAfkToggle = _v2px:AddToggle({
Name = _ei9m[6+1187],
Default = false,
Callback = function(_v2rb) _v4.ANTI_AFK = _v2rb end
})
_v4.section(_v2px, _ei9m[1331+750], _ei9m[1958-15])
_v2pw.fpsSaver = _v2px:AddToggle({
Name = _ei9m[180+1164],
Default = false,
Callback = function(_v2rc) _v4.FPS_SAVER = _v2rc; if _v4.applyFpsSaver then _v4.applyFpsSaver(_v2rc) end end
})
_v4.section(_v2px, _ei9m[2039], _ei9m[3+1934])
_v4.autoCleanToggle = _v2px:AddToggle({
Name = _ei9m[1971-7],
Default = false,
Callback = function(_v2rd) _v4.AUTO_CLEAN = _v2rd end
})
_v2pw.infOxygen = _v2px:AddToggle({
Name = _ei9m[2063],
Default = false,
Callback = function(_v2re) _v4.INF_OXYGEN = _v2re end
})
_v2px = _v2c1(_v2ps:AddSubTab({Name = _ei9m[1644]}))
_v4.section(_v2px, _ei9m[2+1886], _ei9m[4+2571])
_v4.autoSpawnToggle = _v2px:AddToggle({
Name = _ei9m[2252-1],
Default = false,
Callback = function(_v2rf)
if _v2rf then
_v4.startAutoSpawn()
else
_v4.autoSpawnCleanup()
end
end
})
function _v4.markScaled(_v2rg, _v2rh, _v2ri)
local _v2rj = (tonumber(_v2ri) or 1) >= 5
for _v2rk, _v2rl in ipairs({ _v2rg, _v2rh }) do
if _v2rl and _v2rl.SetSkull then pcall(function() _v2rl:SetSkull(_v2rj) end) end
end
end
_v2px = _v2c1(_v2pt:AddSubTab({Name = _ei9m[2897+125]}))
_v4.section(_v2px, _ei9m[1433+394], _ei9m[213+318])
_v4.hitboxToggle = _v2px:AddToggle({
Name = _ei9m[2362-14],
Default = false,
Callback = function(_v2rm)
_v4.HITBOX_EXPANDER = _v2rm
if not _v2rm then _v4.resetAllHitboxes() end
end
})
_v2pw.hitboxVis = _v2px:AddToggle({
Name = _ei9m[657],
Default = false,
Callback = function(_v2rn)
_v4.HITBOX_VISUALIZE = _v2rn
if not _v2rn then
for _v2ro, _v2rp in _v0:GetPlayers() do
if _v2rp ~= _v2 then
_v4.visualizePlayerHitbox(_v2rp, false)
_v4.hbShown[_v2rp] = nil
end
end
end
end
})
_v2pw.hitboxVisOpacity = _v2px:AddSlider({
Name = _ei9m[2217],
Min = 0, Max = 100, Default = 50,
Callback = function(_v2rq) _v4.HITBOX_VIS_TRANSPARENCY = 1 - (_v2rq / 100) end
})
_v2pw.hitboxMult = _v2px:AddSlider({
Name = _ei9m[6+2262],
Min = 1, Max = 10, Default = 1,
Callback = function(_v2rr) _v4.HITBOX_MULTIPLIER = _v2rr; _v4.markScaled(_v4.hitboxToggle, _v2pw.hitboxMult, _v2rr) end
})
_v4.section(_v2px, _ei9m[2483], _ei9m[631+325])
_v2pw.hitboxGroups = _v4.groupDropdown(_v2px, _ei9m[6+114], _v4.HITBOX_GROUPS, _v4.PART_GROUP_ORDER)
_v2px = _v2c1(_v2pt:AddSubTab({Name = _ei9m[644]}))
_v4.section(_v2px, _ei9m[2+2238], _ei9m[2090-15])
_v2pw.reach = _v2px:AddToggle({
Name = _ei9m[3+2465],
Default = false,
Callback = function(_v2rs)
_v4.REACH_ENABLED = _v2rs
if not _v2rs and not _v4.REACH_VISUALIZE then _v4.resetLocalReach() end
end
})
_v2pw.reachVis = _v2px:AddToggle({
Name = _ei9m[4+2379],
Default = false,
Callback = function(_v2rt)
_v4.REACH_VISUALIZE = _v2rt
if not _v2rt and not _v4.REACH_ENABLED then _v4.resetLocalReach() end
end
})
_v2pw.reachVisOpacity = _v2px:AddSlider({
Name = _ei9m[2735],
Min = 0, Max = 100, Default = 50,
Callback = function(_v2ru) _v4.REACH_VIS_TRANSPARENCY = 1 - (_v2ru / 100) end
})
_v2pw.reachMult = _v2px:AddSlider({
Name = _ei9m[4+2879],
Min = 1, Max = 10, Default = 1,
Callback = function(_v2rv) _v4.REACH_MULTIPLIER = _v2rv; _v4.markScaled(_v2pw.reach, _v2pw.reachMult, _v2rv) end
})
_v2pw.reachGroups = _v4.groupDropdown(_v2px, _ei9m[2+144], _v4.REACH_GROUPS, _v4.REACH_GROUP_ORDER,
_v4.resetLocalReach)
_v2px = _v2c1(_v2pt:AddSubTab({Name = _ei9m[1429-12]}))
_v4.section(_v2px, _ei9m[479+1978], _ei9m[1237+500])
_v2pw.noAtkCd = _v2px:AddToggle({
Name = _ei9m[2482],
Skull = true,
Default = false,
Callback = function(_v2rw)
_v4.NO_ATK_CD = _v2rw
if not _v2rw then _v4.restoreAttackSpeed() end
end
})
_v2pw.attackSpeed = _v2px:AddSlider({
Name = _ei9m[538],
Min = 1, Max = 10, Default = 3,
Callback = function(_v2rx) _v4.ATTACK_SPEED = _v2rx end
})
if _v4.CAP.charstate then
_v2pw.noAtkCooldown = _v2px:AddToggle({
Name = _ei9m[6+632],
Skull = true,
Default = false,
Callback = function(_v2ry) _v4.NO_ATK_COOLDOWN = _v2ry end
})
end
_v4.section(_v2px, _ei9m[4+923], _ei9m[7+1812])
_v2pw.silentAim = _v2px:AddToggle({
Name = _ei9m[7+2540],
Default = false,
Callback = function(_v2rz)
_v4.SILENT_AIM = _v2rz
if not _v2rz then _v4.resetAllHitboxes() end
end
})
_v2pw.silentGroups = _v4.groupDropdown(_v2px, _ei9m[4+811], _v4.SILENT_GROUPS, _v4.PART_GROUP_ORDER)
_v2px = _v2c1(_v2pu:AddSubTab({Name = _ei9m[1092-4]}))
_v4.section(_v2px, _ei9m[1340], _ei9m[2925+74])
_v2cb = _v2px:AddToggle({
Name = _ei9m[1242+1605],
Skull = true,
Default = false,
Callback = function(_v2s0)
if _v2s0 and not _v4.SAVE_DINO_ACTIVE then _v2cw()
elseif not _v2s0 and _v4.SAVE_DINO_ACTIVE then _v4.releaseDino() end
end
})
_v4.autoSaveToggle = _v2px:AddToggle({
Name = _ei9m[184],
Default = false,
Keybind = true,
Callback = function(_v2s1)
_v4.AUTO_SAVE = _v2s1
if _v2s1 and _v4.AFK_FARM and _v4.AFK_FARM_SAFETY then
pcall(function() if _v4.Hub then _v4.Hub:Notify(_ei9m[404-10], 5) end end)
end
end
})
_v4.autoSaveBleedToggle = _v2px:AddToggle({
Name = _ei9m[4+2422],
Default = true,
Callback = function(_v2s2) _v4.AUTO_SAVE_BLEED = _v2s2 end
})
_v4.autoSaveSlider = _v2px:AddSlider({
Name = _ei9m[7+1776],
Min = 1, Max = 95, Default = 30,
Callback = function(_v2s3) _v4.AUTO_SAVE_PCT = _v2s3 end
})
_v4.section(_v2px, _ei9m[83+847], _ei9m[2902-20])
_v4.noFallToggle = _v2px:AddToggle({
Name = _ei9m[1553],
Default = false,
Callback = function(_v2s4) _v4.NO_FALL_DAMAGE = _v2s4; _v4.applyFallImmunity(_v2s4) end
})
_v2px = _v2c1(_v2pu:AddSubTab({Name = _ei9m[5+1761]}))
_v4.section(_v2px, _ei9m[337+458], _ei9m[6+1077])
_v4.flyToggle = _v2px:AddToggle({
Name = _ei9m[1017],
Skull = true,
Default = false,
Callback = function(_v2s5) _v4.FLY = _v2s5 end
})
function _v4.moversOff(_v2s6)
for _v2s7, _v2s8 in pairs({ flyToggle = _ei9m[6+157], autoFlyToggle = _ei9m[176+11], tpCorpseToggle = _ei9m[2+2652],
biomeToggle = _ei9m[695], fossilFarmToggle = _ei9m[2926-7], afkFarmToggle = _ei9m[740],
legitFarmToggle = _ei9m[2299-6] }) do
local _v2s9 = _v4[_v2s7]
if _v2s7 ~= _v2s6 and _v4[_v2s8] and _v2s9 and _v2s9.Set then pcall(function() _v2s9:Set(false) end) end
end
end
function _v4.otherMoverOn()
return _v4.FLY or _v4.AUTO_FLY or _v4.AFK_FARM or _v4.LEGIT_FARM or _v4.FOSSIL_FARM or _v4.SAVE_DINO_ACTIVE or false
end
_v4.section(_v2px, _ei9m[3+765], _ei9m[489+35])
_v4.autoFlyToggle = _v2px:AddToggle({
Name = _ei9m[571+84],
Skull = true,
Default = false,
Callback = function(_v2sa)
_v4.AUTO_FLY = _v2sa
if _v2sa then _v4.moversOff(_ei9m[5+1358]) end
end
})
_v4.section(_v2px, _ei9m[766+836], _ei9m[7+2781])
_v4.tpCorpseToggle = _v2px:AddToggle({
Name = _ei9m[306-8],
Skull = true,
Default = false,
Callback = function(_v2sb)
_v4.TP_CORPSE = _v2sb
_v4.tpDone, _v4.tpTargetId, _v4.tpNoneSaid = false, nil, nil
if _v2sb then
_v4.moversOff(_ei9m[498+152])
local _v2sc = true
pcall(function() _v2sc = _v4.dinoEatsMeat() end)
if not _v2sc then pcall(function() _v2bx:Notify(_ei9m[475-16], 5) end) end
end
end
})
_v2pw.tpChain = _v2px:AddToggle({
Name = _ei9m[7+2554],
Default = false,
Callback = function(_v2sd) _v4.TP_CHAIN = _v2sd end
})
_v4.biomeDestItems = (_v4.biomeNames and _v4.biomeNames()) or {}
if #_v4.biomeDestItems == 0 then _v4.biomeDestItems = { _ei9m[3+138] } end
_v4.BIOME_TARGET = (_v4.biomeDestItems[1] ~= _ei9m[1010]) and _v4.biomeDestItems[1] or nil
_v4.section(_v2px, _ei9m[4+3044], _ei9m[205+63])
_v4.biomeToggle = _v2px:AddToggle({
Name = _ei9m[1050],
Skull = true,
Default = false,
Callback = function(_v2se)
if not _v2se then _v4.BIOME_TRAVEL = false return end
if not _v4.BIOME_TARGET then
pcall(function() _v2bx:Notify(_ei9m[2206+70], 4) end)
task.defer(function() pcall(function() _v4.biomeToggle:Set(false) end) end)
return
end
if _v4.BIOME_TRAVEL then return end
_v4.moversOff(_ei9m[4+2863])
_v4.BIOME_TRAVEL = true
task.spawn(_v4.travelToBiome, _v4.BIOME_TARGET)
end
})
_v2pw.biomeDest = _v2px:AddDropdown({
Name = _ei9m[6+2125],
Items = _v4.biomeDestItems,
Default = _v4.biomeDestItems[1],
Callback = function(_v2sf) _v4.BIOME_TARGET = (_v2sf ~= _ei9m[1445+193]) and _v2sf or nil end
})
_v4.section(_v2px, _ei9m[1580-6], _ei9m[2962])
do
local _v2sg = false
local function _v2sh(_v2si, _v2sj)
if _v2sg then return end
_v2sg = true
_v4.AUTO_GAIT = _v2sj and _v2si or nil
for _v2sk, _v2sl in pairs({ Walk = _v2pw.autoWalk, Trot = _v2pw.autoTrot, Run = _v2pw.autoRun, Sprint = _v2pw.autoSprint }) do
if _v2sk ~= _v2si and _v2sl and _v2sl.Set then pcall(function() _v2sl:Set(false) end) end
end
if not _v2sj and _v4.autoGaitStop then _v4.autoGaitStop() end
_v2sg = false
end
_v2pw.autoWalk = _v2px:AddToggle({ Name = _ei9m[628], Default = false, Callback = function(_v2sm) _v2sh(_ei9m[7+2532], _v2sm) end })
_v2pw.autoTrot = _v2px:AddToggle({ Name = _ei9m[4+1190], Default = false, Callback = function(_v2sn) _v2sh(_ei9m[968], _v2sn) end })
_v2pw.autoRun = _v2px:AddToggle({ Name = _ei9m[691-20], Default = false, Callback = function(_v2so) _v2sh(_ei9m[2593-3], _v2so) end })
_v2pw.autoSprint = _v2px:AddToggle({ Name = _ei9m[2206], Default = false, Callback = function(_v2sp) _v2sh(_ei9m[1222+551], _v2sp) end })
end
_v4.section(_v2px, _ei9m[675+2041], _ei9m[1982-17])
_v2fg = _v2px:AddKeybind({
Name = _ei9m[1520],
Default = Enum.KeyCode.Unknown,
Callback = function() end
})
_v4.section(_v2px, _ei9m[629-12], _ei9m[1122])
_v2pw.quickTurn = _v2px:AddToggle({
Name = _ei9m[56+14],
Default = false,
Keybind = true,
Callback = function(_v2sq) _v4.QUICK_TURN = _v2sq end
})
_v2pw.turnSpeed = _v2px:AddSlider({
Name = _ei9m[718+1935],
Min = 0, Max = 500, Default = 250,
Callback = function(_v2sr) _v4.TURN_SPEED = _v2sr end
})
_v4.section(_v2px, _ei9m[5+1389], _ei9m[2+1732])
_v4.autoGrowToggle = _v2px:AddToggle({
Name = _ei9m[216-2],
Default = false,
Callback = function(_v2ss)
if _v2ss and not _v4.AUTO_GROW then
_v4.AUTO_GROW = true
_vja = nil
_v4.startAutoGrow()
elseif not _v2ss and _v4.AUTO_GROW then
_v4.stopAutoGrow()
end
_v4.AUTO_GROW = _v2ss
end
})
_v2px = _v2c1(_v2pv:AddSubTab({Name = _ei9m[1128]}))
_v4.section(_v2px, _ei9m[3+1362], _ei9m[7+389])
_v4.espToggle = _v2px:AddToggle({
Name = _ei9m[624+77],
Default = false,
Callback = function(_v2st)
_v4.ESP_ENABLED = _v2st
if not _v2st then
for _v2su, _v2sv in pairs(_v4.espCache) do
if _v2sv.billboard then _v2sv.billboard.Enabled = false end
end
end
end
})
_v2pw.showName = _v2px:AddToggle({ Name = _ei9m[2712], Default = true, Callback = function(_v2sw) _v4.SHOW_NAME = _v2sw end })
_v2pw.showDino = _v2px:AddToggle({ Name = _ei9m[5+608], Default = true, Callback = function(_v2sx) _v4.SHOW_DINO = _v2sx end })
_v2pw.showStage = _v2px:AddToggle({ Name = _ei9m[1641+76], Default = true, Callback = function(_v2sy) _v4.SHOW_STAGE = _v2sy end })
_v2pw.showGender = _v2px:AddToggle({ Name = _ei9m[1842-11], Default = true, Callback = function(_v2sz) _v4.SHOW_GENDER = _v2sz end })
_v2pw.showHealth = _v2px:AddToggle({ Name = _ei9m[1714-11], Default = true, Callback = function(_v2t0) _v4.SHOW_HEALTH = _v2t0 end })
_v2pw.showStamina = _v2px:AddToggle({ Name = _ei9m[745-4], Default = true, Callback = function(_v2t1) _v4.SHOW_STAMINA = _v2t1 end })
_v2pw.foodBar = _v2px:AddToggle({ Name = _ei9m[4+746], Default = false, Callback = function(_v2t2) _v4.SHOW_FOOD_BAR = _v2t2 end })
_v2pw.foodNum = _v2px:AddToggle({ Name = _ei9m[1864-3], Default = false, Callback = function(_v2t3) _v4.SHOW_FOOD_NUM = _v2t3 end })
_v2pw.waterBar = _v2px:AddToggle({ Name = _ei9m[1184+118], Default = false, Callback = function(_v2t4) _v4.SHOW_WATER_BAR = _v2t4 end })
_v2pw.waterNum = _v2px:AddToggle({ Name = _ei9m[4+2902], Default = false, Callback = function(_v2t5) _v4.SHOW_WATER_NUM = _v2t5 end })
_v2pw.infectBar = _v2px:AddToggle({ Name = _ei9m[1002-4], Default = false, Callback = function(_v2t6) _v4.SHOW_INFECT_BAR = _v2t6 end })
_v2pw.infectNum = _v2px:AddToggle({ Name = _ei9m[818], Default = false, Callback = function(_v2t7) _v4.SHOW_INFECT_NUM = _v2t7 end })
_v2pw.infectTag = _v2px:AddToggle({ Name = _ei9m[2807], Default = false, Callback = function(_v2t8) _v4.SHOW_INFECTED = _v2t8 end })
_v2pw.showWeight = _v2px:AddToggle({ Name = _ei9m[185+1735], Default = true, Callback = function(_v2t9) _v4.SHOW_WEIGHT = _v2t9 end })
_v2pw.bleed = _v2px:AddToggle({ Name = _ei9m[235+1714], Default = false, Callback = function(_v2ta) _v4.BLEED_ESP = _v2ta end })
_v2pw.packESP = _v2px:AddToggle({ Name = _ei9m[249-4], Default = false, Callback = function(_v2tb) _v4.PACK_ESP = _v2tb end })
_v2pw.packLeader = _v2px:AddToggle({ Name = _ei9m[968+1303], Default = false, Callback = function(_v2tc) _v4.PACK_LEADER_ESP = _v2tc end })
_v2pw.showDist = _v2px:AddToggle({ Name = _ei9m[2809-17], Default = true, Callback = function(_v2td) _v4.SHOW_DISTANCE = _v2td end })
_v2pw.textHL = _v2px:AddToggle({ Name = _ei9m[36+211], Default = false, Callback = function(_v2te) _v4.TEXT_HIGHLIGHT = _v2te end })
_v4.section(_v2px, _ei9m[2709+87], _ei9m[1294])
_v2pw.textSize = _v2px:AddSlider({ Name = _ei9m[1003], Min = 8, Max = 28, Default = 14, Callback = function(_v2tf) _v4.TEXT_SIZE = _v2tf end })
_v2pw.hbHeight = _v2px:AddSlider({ Name = _ei9m[1142+1810], Min = 2, Max = 20, Default = 6, Callback = function(_v2tg) _v4.HEALTH_BAR_HEIGHT = _v2tg end })
_v2pw.hbWidth = _v2px:AddSlider({ Name = _ei9m[1805], Min = 20, Max = 100, Default = 80, Callback = function(_v2th) _v4.HEALTH_BAR_WIDTH = _v2th / 100 end })
_v2pw.sbHeight = _v2px:AddSlider({ Name = _ei9m[2891], Min = 2, Max = 20, Default = 6, Callback = function(_v2ti) _v4.STAM_BAR_HEIGHT = _v2ti end })
_v2pw.sbWidth = _v2px:AddSlider({ Name = _ei9m[36+555], Min = 20, Max = 100, Default = 80, Callback = function(_v2tj) _v4.STAM_BAR_WIDTH = _v2tj / 100 end })
_v4.section(_v2px, _ei9m[2689-5], _ei9m[1663])
_v2pw.espDist = _v2px:AddSlider({ Name = _ei9m[2411-4], Min = 100, Max = 10000, Default = 5000, Callback = function(_v2tk) _v4.ESP_DISTANCE = _v2tk end })
_v4.section(_v2px, _ei9m[1046-14], _ei9m[1462-15])
_v2pw.chams = _v2px:AddToggle({
Name = _ei9m[1409],
Default = false,
Callback = function(_v2tl)
_v4.CHAMS_ENABLED = _v2tl
if not _v2tl then
for _v2tm, _v2tn in pairs(_v4.espCache) do
if _v2tn.highlight then _v2tn.highlight.Enabled = false end
end
end
end
})
_v2pw.chamsFill = _v2px:AddSlider({ Name = _ei9m[2650-10], Min = 0, Max = 100, Default = 70, Callback = function(_v2to) _v4.CHAMS_FILL_TRANSPARENCY = _v2to / 100 end })
_v2pw.chamsOutline = _v2px:AddSlider({ Name = _ei9m[2517], Min = 0, Max = 100, Default = 0, Callback = function(_v2tp) _v4.CHAMS_OUTLINE_TRANSPARENCY = _v2tp / 100 end })
_v4.section(_v2px, _ei9m[6+1801], _ei9m[1088-4])
_v2pw.fishESP = _v2px:AddToggle({
Name = _ei9m[469+29],
Default = false,
Callback = function(_v2tq) _v4.FISH_ESP = _v2tq end,
})
_v4.section(_v2px, _ei9m[962], _ei9m[46+793])
_v2pw.corpse = _v2px:AddToggle({
Name = _ei9m[331+1259],
Default = false,
Callback = function(_v2tr) _v4.CORPSE_ESP = _v2tr; _vcg() end
})
_v2pw.worldTextSize = _v2px:AddSlider({
Name = _ei9m[152],
Min = 8, Max = 32, Default = 12,
Callback = function(_v2ts) _v4.WORLD_TEXT_SIZE = _v2ts end
})
_v2pw.corpseDist = _v2px:AddSlider({
Name = _ei9m[2+151],
Min = 100, Max = 10000, Default = 5000,
Callback = function(_v2tt) _v4.CORPSE_DISTANCE = _v2tt; if _v4.CORPSE_ESP then _vcg() end end
})
_v2pw.corpseInf = _v2px:AddToggle({
Name = _ei9m[1167],
Default = true,
Callback = function(_v2tu) _v4.CORPSE_INF_ESP = _v2tu end
})
_v4.section(_v2px, _ei9m[1705-12], _ei9m[590])
_v2pw.meat = _v2px:AddToggle({
Name = _ei9m[2821-17],
Default = false,
Callback = function(_v2tv) _v4.MEAT_ESP = _v2tv; _vcg() end
})
_v2pw.meatDist = _v2px:AddSlider({
Name = _ei9m[720+1491],
Min = 100, Max = 10000, Default = 5000,
Callback = function(_v2tw) _v4.MEAT_DISTANCE = _v2tw; if _v4.MEAT_ESP then _vcg() end end
})
_v2px = _v2c1(_v2pv:AddSubTab({Name = _ei9m[493+664]}))
_v4.section(_v2px, _ei9m[5+762], _ei9m[2472])
_v2pw.antiBS = _v2px:AddToggle({
Name = _ei9m[4+2811],
Default = false,
Callback = function(_v2tx) _v4.ANTI_BLACKSCREEN = _v2tx end
})
_v2pw.noBlur = _v2px:AddToggle({
Name = _ei9m[19+98],
Default = false,
Callback = function(_v2ty)
_v4.NO_BLUR = _v2ty
if _v2ty then _v4.sweepBlur() else _v4.restoreBlur() end
end
})
_v2pw.showModules = _v2px:AddToggle({
Name = _ei9m[2213],
Default = false,
Callback = function(_v2tz) _v4.SHOW_INDICATORS = _v2tz end
})
do
_v4.section(_v2px, _ei9m[4+2319], _v4.CAP.charstate and _ei9m[667+112] or _ei9m[2809])
_v2pw.statsCard = _v2px:AddToggle({ Name = _ei9m[1444-11], Default = false, Callback = function(_v2u0) _v4.STATS_CARD = _v2u0 end })
_v2pw.scName = _v2px:AddToggle({ Name = _ei9m[1716+826], Default = true, Callback = function(_v2u1) _v4.SC_NAME = _v2u1 end })
_v2pw.scGrowth = _v2px:AddToggle({ Name = _ei9m[441], Default = true, Callback = function(_v2u2) _v4.SC_GROWTH = _v2u2 end })
if _v4.CAP.charstate then
_v2pw.scMass = _v2px:AddToggle({ Name = _ei9m[1580-18], Default = true, Callback = function(_v2u3) _v4.SC_MASS = _v2u3 end })
end
_v2pw.scWeight = _v2px:AddToggle({ Name = _ei9m[945+1068], Default = true, Callback = function(_v2u4) _v4.SC_WEIGHT = _v2u4 end })
_v2pw.scTimer = _v2px:AddToggle({ Name = _ei9m[2851], Default = true, Callback = function(_v2u5) _v4.SC_TIMER = _v2u5 end })
_v2pw.scStageTimer = _v2px:AddToggle({ Name = _ei9m[1230+97], Default = true, Callback = function(_v2u6) _v4.SC_STAGE_TIMER = _v2u6 end })
if _v4.CAP.charstate then
_v2pw.scNutrition = _v2px:AddToggle({ Name = _ei9m[710-16], Default = true, Callback = function(_v2u7) _v4.SC_NUTRITION = _v2u7 end })
_v2pw.scWellbeing = _v2px:AddToggle({ Name = _ei9m[4+221], Default = true, Callback = function(_v2u8) _v4.SC_WELLBEING = _v2u8 end })
end
_v2pw.scHideMenu = _v2px:AddToggle({ Name = _ei9m[703], Default = true, Callback = function(_v2u9) _v4.SC_HIDE_WITH_MENU = _v2u9 end })
_v2pw.scDrag = _v2px:AddToggle({
Name = _ei9m[2313-4],
Default = false,
Callback = function(_v2ua) _v4.SC_DRAG = _v2ua end
})
_v2px:AddButton({
Name = _ei9m[1577-2],
Callback = function()
if _v4.setStatsCardPos then _v4.setStatsCardPos(0.62, 0, 0, 16) end
pcall(function() _v2bx:Notify(_ei9m[2+156]) end)
end
})
end
_v4.section(_v2px, _ei9m[1687-1], _ei9m[1587])
do
local _v2ub = (_v4.skinsForCurrentDino and (_v4.skinsForCurrentDino())) or { _ei9m[781+351] }
_v4.skinDropdown = _v2px:AddDropdown({
Name = _ei9m[207],
Items = _v2ub,
Default = _ei9m[247-15],
Callback = function(_v2uc)
if type(_v2uc) ~= _ei9m[2748] then return end
_v4.SKIN_SELECTED, _v4.SKIN_WANTED = _v2uc, _v2uc
if _v4.applySkin then pcall(_v4.applySkin, _v2uc) end
end,
})
end
_v4.section(_v2px, _ei9m[59], _ei9m[5+744])
_v2pw.tracers = _v2px:AddToggle({
Name = _ei9m[2850],
Default = false,
Callback = function(_v2ud)
_v4.TRACERS_ENABLED = _v2ud
if not _v2ud then
for _v2ue, _v2uf in pairs(_v4.espCache) do
if _v2uf.tracer then
pcall(function() _v2uf.tracer.Visible = false end)
end
end
end
end
})
_v4.section(_v2px, _ei9m[692+1341], _ei9m[703-19])
_v2pw.unlimitedZoom = _v2px:AddToggle({
Name = _ei9m[1371-18],
Default = false,
Callback = function(_v2ug)
_v4.UNLIMITED_ZOOM = _v2ug
if _v2ug then _v4.bindZoom() else _v4.restoreZoom() end
end
})
_v2pw.fovToggle = _v2px:AddToggle({
Name = _ei9m[299+15],
Default = false,
Callback = function(_v2uh)
_v4.FOV_ENABLED = _v2uh
if _v2uh then _v4.bindFOV() else _v4.restoreFOV() end
end
})
_v2pw.fovSlider = _v2px:AddSlider({
Name = _ei9m[1210+1354],
Min = 1, Max = 120, Default = 70,
Callback = function(_v2ui) _v4.FOV_VALUE = _v2ui end
})
_v2px = _v2c1(_v2pv:AddSubTab({Name = _ei9m[1754+572]}))
_v4.section(_v2px, _ei9m[1451+185], _ei9m[1956+539])
_v2pw.fullbright = _v2px:AddToggle({
Name = _ei9m[1873],
Default = false,
Callback = function(_v2uj)
_v4.FULLBRIGHT = _v2uj
if _v2uj then _v4.enableFullbright() else _v4.restoreFullbright() end
end
})
_v4.section(_v2px, _ei9m[878-17], _ei9m[49+33])
_v2pw.noFog = _v2px:AddToggle({
Name = _ei9m[1143],
Default = false,
Callback = function(_v2uk)
_v4.NO_FOG = _v2uk
if _v2uk then _v4.enableNoFog() else _v4.restoreNoFog() end
end
})
_v4.section(_v2px, _ei9m[99], _ei9m[1838-14])
_v2pw.noWeather = _v2px:AddToggle({
Name = _ei9m[2083],
Default = false,
Callback = function(_v2ul)
_v4.NO_WEATHER = _v2ul
_v4.applyNoWeather(_v2ul)
end
})
_v4.section(_v2px, _ei9m[2+2118], _ei9m[7+861])
_v2pw.customTime = _v2px:AddToggle({
Name = _ei9m[123+203],
Default = false,
Callback = function(_v2um) _v4.setCustomTime(_v2um) end
})
_v2pw.timeHour = _v2px:AddSlider({
Name = _ei9m[4+2129],
Min = 0, Max = 24, Default = 12,
Callback = function(_v2un) _v4.customTimeHour = _v2un; _v4.refreshCustomTime() end
})
_v2px:AddDropdown({
Name = _ei9m[1647-13],
Items = { _ei9m[2+1721], _ei9m[3+23], _ei9m[709], _ei9m[222+2516] },
Default = _ei9m[2605+71],
Callback = function(_v2uo)
local _v2up = ({ Sunrise = 6, Day = 13, Sunset = 18, Night = 0 })[_v2uo] or 12
_v4.customTimeHour = _v2up
pcall(function() if _v2pw.timeHour and _v2pw.timeHour.Set then _v2pw.timeHour:Set(_v2up) end end)
pcall(function() if _v2pw.customTime and _v2pw.customTime.Set then _v2pw.customTime:Set(true) end end)
_v4.setCustomTime(true)
_v4.refreshCustomTime()
end
})
_v4.section(_v2px, _ei9m[4+1714], _ei9m[1031-1])
_v2pw.fossilS = _v2px:AddToggle({ Name = _ei9m[178-12], Default = false, Callback = function(_v2uq) _v4.FOSSIL_SMALL = _v2uq; _vcg() end })
_v2pw.fossilDistS = _v2px:AddSlider({ Name = _ei9m[3+1442], Min = 100, Max = 10000, Default = 1500, Callback = function(_v2ur) _v4.FOSSIL_DIST_SMALL = _v2ur; _vcg() end })
_v2pw.fossilM = _v2px:AddToggle({ Name = _ei9m[1884+940], Default = false, Callback = function(_v2us) _v4.FOSSIL_MEDIUM = _v2us; _vcg() end })
_v2pw.fossilDistM = _v2px:AddSlider({ Name = _ei9m[2488-7], Min = 100, Max = 10000, Default = 3000, Callback = function(_v2ut) _v4.FOSSIL_DIST_MEDIUM = _v2ut; _vcg() end })
_v2pw.fossilL = _v2px:AddToggle({ Name = _ei9m[3+2107], Default = false, Callback = function(_v2uu) _v4.FOSSIL_LARGE = _v2uu; _vcg() end })
_v2pw.fossilDistL = _v2px:AddSlider({ Name = _ei9m[935+176], Min = 100, Max = 10000, Default = 5000, Callback = function(_v2uv) _v4.FOSSIL_DIST_LARGE = _v2uv; _vcg() end })
_v4.section(_v2px, _ei9m[2+480], _ei9m[679])
_v2pw.vegESP = _v2px:AddToggle({
Name = _ei9m[1403+892],
Default = false,
Callback = function(_v2uw)
_v4.VEG_ESP = _v2uw
if not _v2uw then _v4.vegHideAll() end
end
})
_v2pw.vegDietOnly = _v2px:AddToggle({
Name = _ei9m[7+421],
Default = false,
Callback = function(_v2ux) _v4.VEG_DIET_ONLY = _v2ux end
})
_v2pw.vegHideEaten = _v2px:AddToggle({
Name = _ei9m[6+2821],
Default = false,
Callback = function(_v2uy) _v4.VEG_HIDE_EATEN = _v2uy end
})
_v2pw.vegDist = _v2px:AddSlider({
Name = _ei9m[3+2677],
Min = 100, Max = 5000, Default = 1500,
Callback = function(_v2uz) _v4.VEG_DISTANCE = _v2uz end
})
_v2pw.vegMax = _v2px:AddSlider({
Name = _ei9m[3+485],
Min = 10, Max = 120, Default = 40,
Callback = function(_v2v0)
if _v2v0 < _v4.VEG_MAX then
for _v2v1 = _v2v0 + 1, _v4.VEG_MAX do
local _v2v2 = _v4.vegPool[_v2v1]
if _v2v2 then pcall(function() _v2v2.bb.Enabled = false; _v2v2.bb.Adornee = nil end) end
end
end
_v4.VEG_MAX = _v2v0
end
})
_v4.section(_v2px, _ei9m[149-11], _ei9m[2+1591])
_v2pw.clay = _v2px:AddToggle({ Name = _ei9m[2374+354], Default = false, Callback = function(_v2v3) _v4.CLAY_ESP = _v2v3; _vcg() end })
_v2pw.clayDist = _v2px:AddSlider({ Name = _ei9m[6+1232], Min = 100, Max = 10000, Default = 5000, Callback = function(_v2v4) _v4.CLAY_DISTANCE = _v2v4; if _v4.CLAY_ESP then _vcg() end end })
_v4.section(_v2px, _ei9m[613-2], _ei9m[5+241])
_v2pw.mmap = _v2px:AddToggle({
Name = _ei9m[1137],
Default = false,
Callback = function(_v2v5) _v4.MMAP_ON = _v2v5 end
})
_v2pw.mmapPlayers = _v2px:AddToggle({
Name = _ei9m[1918],
Default = true,
Callback = function(_v2v6) _v4.MMAP_PLAYERS = _v2v6; if not _v2v6 then _v4.mmapCollect() end end
})
_v2pw.mmapCorpses = _v2px:AddToggle({
Name = _ei9m[864-10],
Default = true,
Callback = function(_v2v7) _v4.MMAP_CORPSES = _v2v7; if not _v2v7 then _v4.mmapCollect() end end
})
_v2pw.mmapFossils = _v2px:AddToggle({
Name = _ei9m[43],
Default = true,
Callback = function(_v2v8) _v4.MMAP_FOSSILS = _v2v8; if not _v2v8 then _v4.mmapCollect() end end
})
_v2px = _v2c1(_v2pv:AddSubTab({Name = _ei9m[2172-12]}))
_v4.section(_v2px, _ei9m[1273+1647], _ei9m[635-17])
_v2pw.modCheck = _v2px:AddToggle({
Name = _ei9m[2022],
Default = false,
Callback = function(_v2v9) _v4.MOD_CHECK = _v2v9; _v4.modCheckRefresh() end
})
_v2pw.modKick = _v2px:AddToggle({
Name = _ei9m[1942],
Default = false,
Callback = function(_v2va) _v4.MOD_KICK = _v2va end
})
do
_v4.modAdmins = setmetatable({}, { __mode = "k" })
_v4.modGroupId = nil
_v4.modAlertGui = nil
_v4.modAlertFrame = nil
_v4.modAlertLabels = {}
local function _v2vb()
if _v4.modGroupId then return _v4.modGroupId end
local _v2vc, _v2vd = pcall(function() return game.CreatorType end)
if _v2vc and _v2vd == Enum.CreatorType.Group then
_v4.modGroupId = game.CreatorId
else
_v4.modGroupId = game.CreatorId
end
return _v4.modGroupId
end
local function _v2ve(_v2vf)
local _v2vg = _v2vb()
if not _v2vg or _v2vg == 0 then return false end
local _v2vh, _v2vi = pcall(function() return _v2vf:GetRoleInGroup(_v2vg) end)
if not _v2vh or type(_v2vi) ~= _ei9m[2824-19] then return false end
local _v2vj = string.lower(_v2vi)
for _v2vk, _v2vl in ipairs(_v4.MOD_ADMIN_KEYWORDS) do
if string.find(_v2vj, _v2vl, 1, true) then
return true, _v2vi
end
end
return false
end
local function _v2vm()
if _v4.modAlertGui and _v4.modAlertGui.Parent then return end
local _v2vn = Instance.new(_ei9m[776+334])
_v2vn.Name = _ei9m[1989-7]; _v2vn.ResetOnSpawn = false; _v2vn.DisplayOrder = 99999
_v2vn.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
pcall(function() _v2vn.Parent = game:GetService(_ei9m[2474+380]) end)
if not _v2vn.Parent then _v2vn.Parent = _v2:WaitForChild(_ei9m[79+209]) end
_v4.modAlertGui = _v2vn
local _v2vo = Instance.new(_ei9m[2497+487])
_v2vo.Name = _ei9m[1354]; _v2vo.Size = UDim2.new(0, 260, 0, 300)
_v2vo.Position = UDim2.new(0, 10, 0, 50)
_v2vo.BackgroundTransparency = 1; _v2vo.Parent = _v2vn
local _v2vp = Instance.new(_ei9m[7+1424])
_v2vp.FillDirection = Enum.FillDirection.Vertical
_v2vp.HorizontalAlignment = Enum.HorizontalAlignment.Left
_v2vp.SortOrder = Enum.SortOrder.LayoutOrder
_v2vp.Padding = UDim.new(0, 4); _v2vp.Parent = _v2vo
_v4.modAlertFrame = _v2vo
end
local function _v2vq()
if not _v4.modAlertFrame then return end
for _v2vr, _v2vs in pairs(_v4.modAlertLabels) do
pcall(function() _v2vs:Destroy() end)
end
_v4.modAlertLabels = {}
if not _v4.MOD_CHECK then
if _v4.modAlertGui then _v4.modAlertGui.Enabled = false end
return
end
local _v2vt = 0
for _v2vu, _v2vv in pairs(_v4.modAdmins) do
if _v2vu and _v2vu.Parent then
_v2vt = _v2vt + 1
local _v2vw = (type(_v2vv) == _ei9m[706+1137]) and string.upper(_v2vv) or _ei9m[2634]
local _v2vx = Instance.new(_ei9m[1796])
_v2vx.Name = _ei9m[616] .. _v2vu.Name
_v2vx.LayoutOrder = _v2vt
_v2vx.Size = UDim2.new(1, 0, 0, 22)
_v2vx.BackgroundColor3 = Color3.fromRGB(80, 0, 0)
_v2vx.BackgroundTransparency = 0.3
_v2vx.TextColor3 = Color3.fromRGB(255, 50, 50)
_v2vx.TextStrokeTransparency = 0
_v2vx.TextStrokeColor3 = Color3.new(0, 0, 0)
_v2vx.Font = Enum.Font.GothamBold
_v2vx.TextSize = 15
_v2vx.TextXAlignment = Enum.TextXAlignment.Left
_v2vx.Text = _v2vw .. ": " .. _v2vu.DisplayName .. _ei9m[7+1996] .. _v2vu.Name .. ")"
Instance.new(_ei9m[219+1140], _v2vx).CornerRadius = UDim.new(0, 4)
_v2vx.Parent = _v4.modAlertFrame
_v4.modAlertLabels[_v2vu] = _v2vx
end
end
if _v4.modAlertGui then _v4.modAlertGui.Enabled = _v2vt > 0 end
end
local function _v2vy(_v2vz)
if _v2vz == _v2 then return end
if _v4.UNLOADED then return end
task.spawn(function()
local _v2w0, _v2w1 = _v2ve(_v2vz)
if _v2w0 then
_v4.modAdmins[_v2vz] = _v2w1 or _ei9m[2+2192]
if _v4.MOD_KICK or (_v4.AFK_FARM and _v4.AFK_FARM_ADMIN_KICK) or (_v4.LEGIT_FARM and _v4.LF_ADMIN_KICK) then
if not (_v4.rejoinLeave and _v4.rejoinLeave(_ei9m[1884+1089] .. _v2vz.DisplayName)) then
pcall(_v4.leaveNote, _ei9m[3+2070], false)
pcall(function() _v2:Kick(_ei9m[1653-8] .. _v2vz.DisplayName) end)
end
return
end
if _v4.MOD_CHECK then
_v2vm()
_v2vq()
pcall(function()
_v2bx:Notify(string.upper(_v2w1 or _ei9m[42]) .. ": " .. _v2vz.DisplayName .. _ei9m[2876-10] .. _v2vz.Name .. ")", 8)
end)
end
end
end)
end
function _v4.adminKickSweep()
for _v2w2, _v2w3 in ipairs(_v0:GetPlayers()) do _v2vy(_v2w3) end
end
function _v4.modCheckRefresh()
if _v4.MOD_CHECK then
_v2vm()
for _v2w4, _v2w5 in ipairs(_v0:GetPlayers()) do
if not _v4.modAdmins[_v2w5] then
_v2vy(_v2w5)
end
end
_v2vq()
else
_v2vq()
end
end
table.insert(_v2l, _v0.PlayerAdded:Connect(function(_v2w6)
if _v4.MOD_CHECK or _v4.MOD_KICK or (_v4.AFK_FARM and _v4.AFK_FARM_ADMIN_KICK)
or (_v4.LEGIT_FARM and _v4.LF_ADMIN_KICK) then
_v2vy(_v2w6)
end
end))
table.insert(_v2l, _v0.PlayerRemoving:Connect(function(_v2w7)
if _v4.modAdmins[_v2w7] then
_v4.modAdmins[_v2w7] = nil
_v2vq()
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
pcall(function() _v1:UnbindFromRenderStep(_ei9m[1700-10]) end)
pcall(function() if _v4.restoreFullbright then _v4.restoreFullbright() end end)
_v4.AFK_FARM = false
_v4.afkStopWalk()
if _v4.afkColliders then
for _v2w8 in pairs(_v4.afkColliders) do
if _v2w8.Parent then pcall(function() _v2w8.CanCollide = true end) end
end
_v4.afkColliders, _v4.afkCollidersChar = nil, nil
end
if _v4.afkWasOn then
_v4.afkWasOn = false
pcall(function() _v2.Character:SetAttribute(_ei9m[1418+1259], nil) end)
end
if _v4.afkSafetyState then
if _v4.afkSafetyState == _ei9m[996] then
_v4.pressRest()
end
if _v4.afkSafetyPlatform then pcall(function() _v4.afkSafetyPlatform:Destroy() end); _v4.afkSafetyPlatform = nil end
pcall(function()
local _v2w9 = _v4.getLocalPhysicsRoot()
if _v2w9 then _v2w9.Anchored = false end
end)
_v4.afkSafetyState = nil
end
_v4.AUTO_SWITCH, _v4.AS_BUSY, _v4.FARM_TIMER = false, false, false
_v4.LEGIT_FARM = false
pcall(function() _v1:UnbindFromRenderStep(_ei9m[5+758]) end)
pcall(function()
local _v2wa = _v4.lfWalkState
if _v2wa then _v2wa.mod.AdjustDirection = _v2wa.orig; _v4.lfWalkState = nil end
end)
pcall(function() if _v4.lfWasOn and _v4.lfStop then _v4.lfStop(false) end end)
pcall(function()
local _v2wb = getgenv and getgenv().EazyCheats_Handoff
if _v4.REJOIN_OK and _v4.REJOIN and not _v2wb then
local _v2wc = _v4.rejoinRead()
_v2wc.farms, _v2wc.pending = {}, nil
_v4.rejoinWrite(_v2wc)
end
end)
_v4.NO_FOG = false
pcall(function() _v1:UnbindFromRenderStep(_ei9m[1336+684]) end)
pcall(function() if _v4.restoreNoFog then _v4.restoreNoFog() end end)
task.spawn(function() pcall(_v4.setCustomTime, false) end)
_v4.customTime = false
pcall(function() _v1:UnbindFromRenderStep(_ei9m[2306]) end)
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
for _v2wd in pairs(_v4.hbMaskT or {}) do
if _v2wd and _v2wd.Parent then _v2wd.CanQuery = true end
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
_v2ct()
_v2ch()
for _v2we, _v2wf in pairs(_v4.espCache) do
_v4.destroyESP(_v2we)
end
for _v2wg, _v2wh in pairs(_v6k) do
pcall(function() _v2wh:Destroy() end)
end
_v6k = {}
for _v2wi, _v2wj in ipairs(_v2l) do
pcall(function() _v2wj:Disconnect() end)
end
_v2l = {}
pcall(function() if _v4.mobGui then _v4.mobGui:Destroy() end end)
pcall(function() _v4.mmapDestroyPool() end)
pcall(function() _v2bx:Destroy() end)
pcall(function() indicatorGui:Destroy() end)
pcall(_v4.sweepOwnGuis)
pcall(function()
for _v2wk, _v2wl in workspace:GetChildren() do
if _v2wl.Name == _ei9m[2159] or _v2wl.Name == _ei9m[2+2332] then
_v2wl:Destroy()
end
end
end)
pcall(function()
for _v2wm, _v2wn in ipairs({ _ei9m[1861-6], _ei9m[1315-16], _ei9m[5+362],
_ei9m[2812-10], _ei9m[85+1924], _ei9m[1388+426] }) do
pcall(function() _v1:UnbindFromRenderStep(_v2wn) end)
end
end)
pcall(function()
local _v2wo = getgenv and getgenv()
if _v2wo then _v2wo.EazyCheats_Unload = nil end
end)
end
pcall(function()
local _v2wp = getgenv and getgenv()
if _v2wp then
_v2wp.EazyCheats_Unload = _v4.unloadScript
_v2wp.EazyCheats_Unload_Job = game.JobId
_v2wp.EazyCheats_Unload_State = nil
end
end)
_v2bx.onUnload = _v4.unloadScript
_v4.CONFIG_FOLDER = _ei9m[4+636]
_v4.AUTO_LOAD_FILE = _v4.CONFIG_FOLDER .. _ei9m[886+1]
pcall(function() if not isfolder(_v4.CONFIG_FOLDER) then makefolder(_v4.CONFIG_FOLDER) end end)
local _v2wq = game:GetService(_ei9m[45-20])
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
INSTA_TURN_KEY = (_v2fg and _v2fg.Key and _v2fg.Key ~= Enum.KeyCode.Unknown) and _v2fg.Key.Name or nil,
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
local _v2wr = {}
for _v2ws, _v2wt in pairs(_v4.ALL_TOGGLES) do
if _v2wt and _v2wt.Key and _v2wt.Key ~= Enum.KeyCode.Unknown then
_v2wr[_v2ws] = _v2wt.Key.Name
end
end
return _v2wr
end)(),
}
end
function _v4.applyConfigData(_v2wu)
_v4.SUPPRESS_TOGGLE_NOTIFY = true
local _v2wv, _v2ww = pcall(_v4.applyConfigBody, _v2wu)
if not _v2wv then warn(_ei9m[1807-16] .. tostring(_v2ww)) end
_v4.SUPPRESS_TOGGLE_NOTIFY = false
_v4.cfgApplied = true
return _v2wv
end
function _v4.applyConfigBody(_v2wx)
_v4.SUPPRESS_TOGGLE_NOTIFY = true
local function _v2wy(_v2wz, _v2x0)
pcall(function() if _v2wz and _v2x0 ~= nil then _v2wz:Set(_v2x0) end end)
end
local function _v2x1(_v2x2, _v2x3)
pcall(function() if _v2x2 and _v2x3 ~= nil then _v2x2:Set(_v2x3) end end)
end
local function _v2x4(_v2x5, _v2x6, _v2x7, _v2x8, _v2x9)
pcall(function()
for _v2xa, _v2xb in ipairs(_v2x6) do
local _v2xc = _v2x7[_v2x8 .. _v2xb]
if _v2xc ~= nil then _v2x5[_v2xb] = _v2xc and true or false end
end
if _v2x9 and _v2x9.Refill then _v2x9.Refill() end
end)
end
_v2wy(_v4.espToggle, _v2wx.ESP_ENABLED)
_v2wy(_v2pw.chams, _v2wx.CHAMS_ENABLED)
_v2wy(_v2pw.tracers, _v2wx.TRACERS_ENABLED)
_v2wy(_v2pw.showName, _v2wx.SHOW_NAME)
_v2wy(_v2pw.showDino, _v2wx.SHOW_DINO)
_v2wy(_v2pw.showStage, _v2wx.SHOW_STAGE)
_v2wy(_v2pw.showGender, _v2wx.SHOW_GENDER)
_v2wy(_v2pw.showHealth, _v2wx.SHOW_HEALTH)
_v2wy(_v2pw.showStamina, _v2wx.SHOW_STAMINA)
if _v2wx.SHOW_FOOD_BAR ~= nil then _v2wy(_v2pw.foodBar, _v2wx.SHOW_FOOD_BAR) end
if _v2wx.SHOW_FOOD_NUM ~= nil then _v2wy(_v2pw.foodNum, _v2wx.SHOW_FOOD_NUM) end
if _v2wx.SHOW_WATER_BAR ~= nil then _v2wy(_v2pw.waterBar, _v2wx.SHOW_WATER_BAR) end
if _v2wx.SHOW_WATER_NUM ~= nil then _v2wy(_v2pw.waterNum, _v2wx.SHOW_WATER_NUM) end
if _v2wx.SHOW_INFECT_BAR ~= nil then _v2wy(_v2pw.infectBar, _v2wx.SHOW_INFECT_BAR) end
if _v2wx.SHOW_INFECT_NUM ~= nil then _v2wy(_v2pw.infectNum, _v2wx.SHOW_INFECT_NUM) end
if _v2wx.SHOW_INFECTED ~= nil then _v2wy(_v2pw.infectTag, _v2wx.SHOW_INFECTED) end
_v2wy(_v2pw.showWeight, _v2wx.SHOW_WEIGHT)
_v2wy(_v2pw.bleed, _v2wx.BLEED_ESP)
if _v2wx.PACK_ESP ~= nil then _v2wy(_v2pw.packESP, _v2wx.PACK_ESP) end
if _v2wx.PACK_LEADER_ESP ~= nil then _v2wy(_v2pw.packLeader, _v2wx.PACK_LEADER_ESP) end
_v2wy(_v2pw.showDist, _v2wx.SHOW_DISTANCE)
_v2wy(_v2pw.textHL, _v2wx.TEXT_HIGHLIGHT)
_v2x1(_v2pw.textSize, _v2wx.TEXT_SIZE)
_v2x1(_v2pw.hbHeight, _v2wx.HEALTH_BAR_HEIGHT)
if _v2wx.HEALTH_BAR_WIDTH then
_v2x1(_v2pw.hbWidth, math.floor(_v2wx.HEALTH_BAR_WIDTH * 100 + 0.5))
end
if _v2wx.STAM_BAR_HEIGHT then _v2x1(_v2pw.sbHeight, _v2wx.STAM_BAR_HEIGHT) end
if _v2wx.STAM_BAR_WIDTH then _v2x1(_v2pw.sbWidth, math.floor(_v2wx.STAM_BAR_WIDTH * 100 + 0.5)) end
_v2x1(_v2pw.espDist, _v2wx.ESP_DISTANCE)
if _v2wx.CHAMS_FILL_TRANSPARENCY then
_v2x1(_v2pw.chamsFill, math.floor(_v2wx.CHAMS_FILL_TRANSPARENCY * 100 + 0.5))
end
if _v2wx.CHAMS_OUTLINE_TRANSPARENCY then
_v2x1(_v2pw.chamsOutline, math.floor(_v2wx.CHAMS_OUTLINE_TRANSPARENCY * 100 + 0.5))
end
_v2wy(_v2pw.corpse, _v2wx.CORPSE_ESP)
if _v2wx.CORPSE_INF_ESP ~= nil then _v2wy(_v2pw.corpseInf, _v2wx.CORPSE_INF_ESP) end
_v2x1(_v2pw.worldTextSize, _v2wx.WORLD_TEXT_SIZE)
_v2x1(_v2pw.corpseDist, _v2wx.CORPSE_DISTANCE)
if _v2wx.STATS_CARD ~= nil then _v2wy(_v2pw.statsCard, _v2wx.STATS_CARD) end
if _v2wx.SC_GROWTH ~= nil then _v2wy(_v2pw.scGrowth, _v2wx.SC_GROWTH) end
if _v2wx.SC_MASS ~= nil then _v2wy(_v2pw.scMass, _v2wx.SC_MASS) end
if _v2wx.SC_WEIGHT ~= nil then _v2wy(_v2pw.scWeight, _v2wx.SC_WEIGHT) end
if _v2wx.SC_TIMER ~= nil then _v2wy(_v2pw.scTimer, _v2wx.SC_TIMER) end
if _v2wx.SC_STAGE_TIMER ~= nil then _v2wy(_v2pw.scStageTimer, _v2wx.SC_STAGE_TIMER) end
if _v2wx.SC_NUTRITION ~= nil then _v2wy(_v2pw.scNutrition, _v2wx.SC_NUTRITION) end
if _v2wx.SC_WELLBEING ~= nil then _v2wy(_v2pw.scWellbeing, _v2wx.SC_WELLBEING) end
if _v2wx.SC_DRAG ~= nil then _v2wy(_v2pw.scDrag, _v2wx.SC_DRAG) end
if _v2wx.SC_NAME ~= nil then _v2wy(_v2pw.scName, _v2wx.SC_NAME) end
if _v2wx.SC_HIDE_WITH_MENU ~= nil then _v2wy(_v2pw.scHideMenu, _v2wx.SC_HIDE_WITH_MENU) end
if _v4.setStatsCardPos and _v2wx.SC_POS_XS and _v2wx.SC_POS_XO and _v2wx.SC_POS_YS and _v2wx.SC_POS_YO then
_v4.setStatsCardPos(_v2wx.SC_POS_XS, _v2wx.SC_POS_XO, _v2wx.SC_POS_YS, _v2wx.SC_POS_YO)
end
if _v2wx.FISH_ESP ~= nil then _v2wy(_v2pw.fishESP, _v2wx.FISH_ESP) end
_v2wy(_v2pw.fossilS, _v2wx.FOSSIL_SMALL)
_v2wy(_v2pw.fossilM, _v2wx.FOSSIL_MEDIUM)
_v2wy(_v2pw.fossilL, _v2wx.FOSSIL_LARGE)
_v2x1(_v2pw.fossilDistS, _v2wx.FOSSIL_DIST_SMALL or _v2wx.FOSSIL_DISTANCE)
_v2x1(_v2pw.fossilDistM, _v2wx.FOSSIL_DIST_MEDIUM or _v2wx.FOSSIL_DISTANCE)
_v2x1(_v2pw.fossilDistL, _v2wx.FOSSIL_DIST_LARGE or _v2wx.FOSSIL_DISTANCE)
if _v2wx.VEG_DIET_ONLY ~= nil then _v2wy(_v2pw.vegDietOnly, _v2wx.VEG_DIET_ONLY) end
if _v2wx.VEG_HIDE_EATEN ~= nil then _v2wy(_v2pw.vegHideEaten, _v2wx.VEG_HIDE_EATEN) end
if _v2wx.VEG_DISTANCE then _v2x1(_v2pw.vegDist, _v2wx.VEG_DISTANCE) end
if _v2wx.VEG_MAX then _v2x1(_v2pw.vegMax, _v2wx.VEG_MAX) end
if _v2wx.VEG_ESP ~= nil then _v2wy(_v2pw.vegESP, _v2wx.VEG_ESP) end
_v2wy(_v2pw.meat, _v2wx.MEAT_ESP)
_v2x1(_v2pw.meatDist, _v2wx.MEAT_DISTANCE)
if _v2wx.CLAY_ESP ~= nil then _v2wy(_v2pw.clay, _v2wx.CLAY_ESP) end
if _v2wx.CLAY_DISTANCE then _v2x1(_v2pw.clayDist, _v2wx.CLAY_DISTANCE) end
if _v2wx.MMAP_PLAYERS ~= nil then _v2wy(_v2pw.mmapPlayers, _v2wx.MMAP_PLAYERS) end
if _v2wx.MMAP_CORPSES ~= nil then _v2wy(_v2pw.mmapCorpses, _v2wx.MMAP_CORPSES) end
if _v2wx.MMAP_FOSSILS ~= nil then _v2wy(_v2pw.mmapFossils, _v2wx.MMAP_FOSSILS) end
if _v2wx.MMAP_ON ~= nil then
_v2wy(_v2pw.mmap, _v2wx.MMAP_ON)
elseif _v2wx.MMAP_PLAYERS or _v2wx.MMAP_CORPSES or _v2wx.MMAP_FOSSILS then
_v2wy(_v2pw.mmap, true)
end
_v2wy(_v2pw.antiBS, _v2wx.ANTI_BLACKSCREEN)
if _v2wx.NO_FOG ~= nil then _v2wy(_v2pw.noFog, _v2wx.NO_FOG) end
if _v2wx.NO_BLUR ~= nil then _v2wy(_v2pw.noBlur, _v2wx.NO_BLUR) end
if _v2wx.NO_WEATHER ~= nil then _v2wy(_v2pw.noWeather, _v2wx.NO_WEATHER) end
if _v2wx.FULLBRIGHT ~= nil then _v2wy(_v2pw.fullbright, _v2wx.FULLBRIGHT) end
if _v2wx.CUSTOM_TIME_HOUR then _v2x1(_v2pw.timeHour, _v2wx.CUSTOM_TIME_HOUR) end
if _v2wx.CUSTOM_TIME ~= nil then _v2wy(_v2pw.customTime, _v2wx.CUSTOM_TIME) end
if _v2wx.MOB_SHOW_TURN ~= nil and _v4.mobTurnToggle then _v2wy(_v4.mobTurnToggle, _v2wx.MOB_SHOW_TURN) end
_v2wy(_v2pw.showModules, _v2wx.SHOW_INDICATORS)
if _v2wx.MOD_CHECK ~= nil then _v2wy(_v2pw.modCheck, _v2wx.MOD_CHECK) end
if _v2wx.MOD_KICK ~= nil then _v2wy(_v2pw.modKick, _v2wx.MOD_KICK) end
_v2wy(_v2pw.unlimitedZoom, _v2wx.UNLIMITED_ZOOM)
if _v2wx.FOV_VALUE then _v2x1(_v2pw.fovSlider, _v2wx.FOV_VALUE) end
_v2wy(_v2pw.fovToggle, _v2wx.FOV_ENABLED)
_v2x1(_v2pw.attackSpeed, _v2wx.ATTACK_SPEED)
_v2wy(_v2pw.noAtkCd, _v2wx.NO_ATK_CD)
_v2wy(_v2pw.noAtkCooldown, _v2wx.NO_ATK_COOLDOWN)
_v2x4(_v4.SILENT_GROUPS, _v4.PART_GROUP_ORDER, _v2wx, _ei9m[1015-13], _v2pw.silentGroups)
_v2x1(_v2pw.turnSpeed, _v2wx.TURN_SPEED)
_v2wy(_v2pw.quickTurn, _v2wx.QUICK_TURN)
_v2wy(_v2pw.silentAim, _v2wx.SILENT_AIM)
if _v2wx.INSTA_TURN_KEY and _v2fg then
pcall(function()
local _v2xd = Enum.KeyCode[_v2wx.INSTA_TURN_KEY]
if _v2xd then _v2fg:Set(_v2xd, true) end
end)
end
_v2wy(_v4.hitboxToggle, _v2wx.HITBOX_EXPANDER)
_v2wy(_v2pw.hitboxVis, _v2wx.HITBOX_VISUALIZE)
_v2x1(_v2pw.hitboxMult, _v2wx.HITBOX_MULTIPLIER)
if _v2wx.HITBOX_VIS_TRANSPARENCY ~= nil then
_v2x1(_v2pw.hitboxVisOpacity, math.floor((1 - _v2wx.HITBOX_VIS_TRANSPARENCY) * 100 + 0.5))
end
_v2x4(_v4.HITBOX_GROUPS, _v4.PART_GROUP_ORDER, _v2wx, _ei9m[1898], _v2pw.hitboxGroups)
_v2x1(_v2pw.reachMult, _v2wx.REACH_MULTIPLIER)
if _v2wx.REACH_Tail ~= nil and _v2wx.REACH_TailBase == nil then
_v2wx.REACH_TailBase = _v2wx.REACH_Tail
_v2wx.REACH_TailMid = _v2wx.REACH_Tail
_v2wx.REACH_TailTip = _v2wx.REACH_Tail
_v2wx.REACH_Thagomizer = _v2wx.REACH_Tail
end
_v2x4(_v4.REACH_GROUPS, _v4.REACH_GROUP_ORDER, _v2wx, _ei9m[1196+1057], _v2pw.reachGroups)
if _v2wx.REACH_VIS_TRANSPARENCY ~= nil then
_v2x1(_v2pw.reachVisOpacity, math.floor((1 - _v2wx.REACH_VIS_TRANSPARENCY) * 100 + 0.5))
end
if _v2wx.REACH_VISUALIZE ~= nil then _v2wy(_v2pw.reachVis, _v2wx.REACH_VISUALIZE) end
_v2wy(_v2pw.reach, _v2wx.REACH_ENABLED)
_v2wy(_v4.autoWaterToggle, _v2wx.AUTO_WATER)
if _v2wx.FORCE_EAT ~= nil then _v2wy(_v4.forceEatToggle, _v2wx.FORCE_EAT) end
if _v2wx.FAST_EAT ~= nil then _v2wy(_v2pw.fastEat, _v2wx.FAST_EAT) end
if _v2wx.AUTO_CLEAN ~= nil then _v2wy(_v4.autoCleanToggle, _v2wx.AUTO_CLEAN) end
if _v2wx.INF_OXYGEN ~= nil then _v2wy(_v2pw.infOxygen, _v2wx.INF_OXYGEN) end
if _v2wx.EAT_WHEN_HUNGRY ~= nil then _v2wy(_v2pw.eatWhenHungry, _v2wx.EAT_WHEN_HUNGRY) end
if _v2wx.LEAVE_SCRAPS ~= nil then _v2wy(_v2pw.leaveScraps, _v2wx.LEAVE_SCRAPS) end
if _v2wx.CARRY_CORPSE ~= nil then _v2wy(_v2pw.carryCorpse, _v2wx.CARRY_CORPSE) end
_v2wy(_v4.noFallToggle, _v2wx.NO_FALL_DAMAGE)
if _v2wx.FPS_SAVER ~= nil then _v2wy(_v2pw.fpsSaver, _v2wx.FPS_SAVER) end
if type(_v2wx.SKIN_SELECTED) == _ei9m[188+781] then
_v4.SKIN_WANTED = _v2wx.SKIN_SELECTED
local _v2xe = _v4.skinsForCurrentDino and _v4.skinsForCurrentDino() or {}
if _v4.skinDropdown and table.find(_v2xe, _v2wx.SKIN_SELECTED) then _v2wy(_v4.skinDropdown, _v2wx.SKIN_SELECTED) end
end
if _v2wx.AUTO_FLY_SPEED then _v2x1(_v4.autoFlySpeedSlider, _v2wx.AUTO_FLY_SPEED) end
if _v2wx.AUTO_FLY_RADIUS then _v2x1(_v4.autoFlyRadiusSlider, _v2wx.AUTO_FLY_RADIUS) end
if _v2wx.AUTO_FLY_DRIFT then _v2x1(_v4.autoFlyDriftSlider, _v2wx.AUTO_FLY_DRIFT) end
if _v2wx.AUTO_FLY_ALT then _v2x1(_v4.autoFlyAltSlider, _v2wx.AUTO_FLY_ALT) end
if _v2wx.ANTI_AFK ~= nil then _v2wy(_v4.antiAfkToggle, _v2wx.ANTI_AFK) end
if _v4.cfgFarms then _v4.cfgFarms(_v2wx) end
if _v2wx.AFK_FARM_AVOID then _v2x1(_v2pw.afkFarmAvoid, _v2wx.AFK_FARM_AVOID) end
if _v2wx.AFK_FARM_WALK ~= nil then _v2wy(_v2pw.afkFarmWalk, _v2wx.AFK_FARM_WALK) end
if _v2wx.AFK_FARM_SAFETY ~= nil then _v2wy(_v2pw.afkFarmSafety, _v2wx.AFK_FARM_SAFETY) end
if _v2wx.AFK_FARM_ADMIN_KICK ~= nil then _v2wy(_v2pw.afkFarmAdminKick, _v2wx.AFK_FARM_ADMIN_KICK) end
if _v2wx.AFK_FARM_FLEE ~= nil then _v2wy(_v2pw.afkFarmFlee, _v2wx.AFK_FARM_FLEE) end
if _v2wx.AFK_FARM_UNSTUCK ~= nil then _v2wy(_v2pw.afkFarmUnstuck, _v2wx.AFK_FARM_UNSTUCK) end
if _v2wx.LF_AVOID then _v2x1(_v2pw.lfAvoid, _v2wx.LF_AVOID) end
if _v2wx.LF_MAX_DIST then _v2x1(_v2pw.lfMaxDist, _v2wx.LF_MAX_DIST) end
if _v2wx.LF_SCRAPS ~= nil then _v2wy(_v2pw.lfScraps, _v2wx.LF_SCRAPS) end
if _v2wx.LF_CIRCLE ~= nil then _v2wy(_v2pw.lfCircle, _v2wx.LF_CIRCLE) end
if _v2wx.LF_FLEE ~= nil then _v2wy(_v2pw.lfFlee, _v2wx.LF_FLEE) end
if _v2wx.LF_TABOUT ~= nil then _v2wy(_v2pw.lfTabOut, _v2wx.LF_TABOUT) end
if _v2wx.AUTO_GAIT ~= nil then
for _v2xf, _v2xg in pairs({ Walk = _v2pw.autoWalk, Trot = _v2pw.autoTrot, Run = _v2pw.autoRun, Sprint = _v2pw.autoSprint }) do
_v2wy(_v2xg, _v2wx.AUTO_GAIT == _v2xf)
end
end
if _v2wx.LF_UNSTUCK ~= nil then _v2wy(_v2pw.lfUnstuck, _v2wx.LF_UNSTUCK) end
if _v2wx.LF_REST ~= nil then _v2wy(_v2pw.lfRest, _v2wx.LF_REST) end
if _v2wx.LF_ADMIN_KICK ~= nil then _v2wy(_v2pw.lfAdminKick, _v2wx.LF_ADMIN_KICK) end
if _v2wx.LF_FLYAWAY ~= nil then _v2wy(_v2pw.lfFlyAway, _v2wx.LF_FLYAWAY) end
if _v2wx.LF_FLYAWAY_RADIUS then _v2x1(_v2pw.lfFlyAwayRadius, _v2wx.LF_FLYAWAY_RADIUS) end
for _v2xh = 1, 6 do
local _v2xi = _v2wx[_ei9m[2077] .. _v2xh]
if _v2xi ~= nil then _v2wy(_v2pw[_ei9m[2320-12] .. _v2xh], _v4.asLabel and _v4.asLabel(_v2xi) or _v2xi) end
end
_v2wy(_v2pw.asGender, _v2wx.AS_GENDER)
if _v2wx.AS_AUTOBUY ~= nil then _v2wy(_v2pw.asAutoBuy, _v2wx.AS_AUTOBUY) end
if _v2wx.AS_AUTO_ORDER ~= nil then _v2wy(_v2pw.asAutoOrder, _v2wx.AS_AUTO_ORDER) end
if _v2wx.FT_MINUTES then _v2x1(_v2pw.ftMinutes, _v2wx.FT_MINUTES) end
_v2wy(_v2pw.tpSolid, _v2wx.TP_SOLID)
_v2wy(_v2pw.tpChain, _v2wx.TP_CHAIN)
if _v2wx.AUTO_SAVE_PCT and _v2wx.AUTO_SAVE_PCT > 0 then
_v2x1(_v4.autoSaveSlider, _v2wx.AUTO_SAVE_PCT)
end
local _v2xj = _v2wx.AUTO_SAVE
if _v2xj == nil then _v2xj = (_v2wx.AUTO_SAVE_PCT or 0) > 0 end
_v2wy(_v4.autoSaveToggle, _v2xj)
if _v2wx.AUTO_SAVE_BLEED ~= nil then _v2wy(_v4.autoSaveBleedToggle, _v2wx.AUTO_SAVE_BLEED) end
if type(_v2wx.KEYBINDS) == _ei9m[1275] then
for _v2xk, _v2xl in pairs(_v4.ALL_TOGGLES) do
if _v2wx.KEYBINDS[_v2xk] == nil and _v2xl and _v2xl.SetKey then
pcall(function()
if _v2xl.Key and _v2xl.Key ~= Enum.KeyCode.Unknown then _v2xl:SetKey(nil, true) end
end)
end
end
for _v2xm, _v2xn in pairs(_v2wx.KEYBINDS) do
local _v2xo = _v4.ALL_TOGGLES[_v2xm]
if _v2xo and _v2xo.SetKey and _v2xn then
pcall(function()
local _v2xp = Enum.KeyCode[_v2xn]
if _v2xp then _v2xo:SetKey(_v2xp, true) end
end)
end
end
end
if _v2wx.AUTO_GROW ~= nil then _v2wy(_v4.autoGrowToggle, _v2wx.AUTO_GROW) end
end
function _v4.listConfigs()
local _v2xq = {}
pcall(function()
local _v2xr = listfiles(_v4.CONFIG_FOLDER)
for _v2xs, _v2xt in ipairs(_v2xr) do
local _v2xu = _v2xt:match(_ei9m[1559-15])
if _v2xu and _v2xu ~= _ei9m[108] then
table.insert(_v2xq, _v2xu)
end
end
end)
table.sort(_v2xq)
return _v2xq
end
function _v4.saveConfig(_v2xv)
local ok, err = pcall(function()
local _v2xw = _v4.getConfigData()
writefile(_v4.CONFIG_FOLDER .. "/" .. _v2xv .. _ei9m[2380-3], _v2wq:JSONEncode(_v2xw))
end)
if ok then
print(_ei9m[2859-2] .. _v2xv)
pcall(function() _v2bx:Notify(_ei9m[109+125] .. _v2xv) end)
else
warn(_ei9m[535-2] .. tostring(err))
pcall(function() _v2bx:Notify(_ei9m[1188] .. _v2xv) end)
end
return ok
end
function _v4.loadConfig(_v2xx)
local ok, data = pcall(function()
local _v2xy = readfile(_v4.CONFIG_FOLDER .. "/" .. _v2xx .. _ei9m[833])
return _v2wq:JSONDecode(_v2xy)
end)
if ok and data then
_v4.applyConfigData(data)
print(_ei9m[771] .. _v2xx)
pcall(function() _v2bx:Notify(_ei9m[2314-17] .. _v2xx) end)
return true
else
warn(_ei9m[669] .. tostring(data))
pcall(function() _v2bx:Notify(_ei9m[1358+246] .. _v2xx) end)
end
return false
end
function _v4.deleteConfig(_v2xz)
pcall(function()
delfile(_v4.CONFIG_FOLDER .. "/" .. _v2xz .. _ei9m[150+179])
end)
end
function _v4.getAutoLoadConfig()
local _v2y0, _v2y1 = pcall(function() return readfile(_v4.AUTO_LOAD_FILE) end)
if _v2y0 and _v2y1 and _v2y1 ~= "" then return _v2y1 end
return nil
end
function _v4.setAutoLoadConfig(_v2y2)
pcall(function() writefile(_v4.AUTO_LOAD_FILE, _v2y2 or "") end)
end
local _v2y3 = _v2bx.tabs and _v2bx.tabs.Settings
if _v2y3 then
pcall(function()
_v2y3.page.ScrollingEnabled = true
_v2y3.page.ScrollBarThickness = 3
end)
else
_v2y3 = _v2ps
end
_v4.UNLOAD_KEY = Enum.KeyCode.End
if _v2y3 then
_v4.section(_v2y3, _ei9m[2933], _ei9m[958])
_v4.unloadKb = _v2y3:AddKeybind({
Name = _ei9m[315+589],
Default = _v4.UNLOAD_KEY,
Changed = function(_v2y4) _v4.UNLOAD_KEY = (typeof(_v2y4) == _ei9m[361+1312]) and _v2y4 or Enum.KeyCode.Unknown end,
})
end
table.insert(_v2l, _v4.UIS.InputBegan:Connect(function(_v2y5, _v2y6)
if _v2y6 or _v4.UNLOADED then return end
if _v2y5.KeyCode == _v4.UNLOAD_KEY and _v4.UNLOAD_KEY ~= Enum.KeyCode.Unknown then
pcall(_v4.unloadScript)
end
end))
if _v4.IS_MOBILE then
_v4.section(_v2y3, _ei9m[4+1157], _ei9m[2084])
_v4.mobTurnToggle = _v2y3:AddToggle({
Name = _ei9m[1663+93],
Default = false,
Callback = function(_v2y7) _v4.MOB_SHOW_TURN = _v2y7 end
})
end
_v4.CONFIG_SLOTS = {_ei9m[440+25], _ei9m[3033], _ei9m[691-9], _ei9m[4+1585], _ei9m[3+1808], _ei9m[878], _ei9m[529+569], _ei9m[7+2012], _ei9m[30+2695]}
pcall(function()
_v2bx:SetConfig({
Folder = _v4.CONFIG_FOLDER,
Slots = _v4.CONFIG_SLOTS,
Save = _v4.saveConfig,
Load = _v4.loadConfig,
Ignore = function(_v2y8)
return _v2y8:match(_ei9m[2155]) or _v2y8:match(_ei9m[1749]) or _v2y8:match(_ei9m[191+1576]) or _v2y8 == _ei9m[1187-17]
or _v2y8:match(_ei9m[1367+606])
end,
})
end)
local _v2y9 = Instance.new(_ei9m[94])
_v2y9.Name = _ei9m[284+1724]
_v2y9.ResetOnSpawn = false
_v2y9.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
pcall(function() _v2y9.Parent = game:GetService(_ei9m[147]) end)
if not _v2y9.Parent then _v2y9.Parent = _v2:WaitForChild(_ei9m[688+682]) end
local _v2ya = Instance.new(_ei9m[2578+457])
_v2ya.Name = _ei9m[7+432]
_v2ya.Size = UDim2.new(0, 160, 0, 400)
_v2ya.Position = UDim2.new(1, -170, 0, 10)
_v2ya.BackgroundTransparency = 1
_v2ya.Parent = _v2y9
local _v2yb = Instance.new(_ei9m[419])
_v2yb.FillDirection = Enum.FillDirection.Vertical
_v2yb.HorizontalAlignment = Enum.HorizontalAlignment.Right
_v2yb.VerticalAlignment = Enum.VerticalAlignment.Top
_v2yb.SortOrder = Enum.SortOrder.LayoutOrder
_v2yb.Padding = UDim.new(0, 2)
_v2yb.Parent = _v2ya
_v4.TweenService = game:GetService(_ei9m[314+203])
local _v2yc = {}
_v4.SLIDE_TIME = 0.25
function _v4.createIndicatorLabel(_v2yd, _v2ye)
local _v2yf = Instance.new(_ei9m[7+1937])
_v2yf.Name = _ei9m[2657-16] .. _v2yd
_v2yf.LayoutOrder = _v2ye
_v2yf.Size = UDim2.new(1, 0, 0, 18)
_v2yf.BackgroundTransparency = 1
_v2yf.TextColor3 = Color3.fromRGB(170, 90, 255)
_v2yf.TextStrokeTransparency = 0.3
_v2yf.TextStrokeColor3 = Color3.new(0, 0, 0)
_v2yf.Font = Enum.Font.GothamBold
_v2yf.TextSize = 13
_v2yf.TextXAlignment = Enum.TextXAlignment.Right
_v2yf.Text = _v2yd
_v2yf.TextTransparency = 1
_v2yf.Position = UDim2.new(1, 0, 0, 0)
_v2yf.Parent = _v2ya
_v2yc[_v2yd] = _v2yf
return _v2yf
end
function _v4.showIndicator(_v2yg)
local _v2yh = _v2yc[_v2yg]
if not _v2yh then return end
_v2yh.Visible = true
_v2yh.TextTransparency = 1
_v2yh.Position = UDim2.new(1, 0, 0, 0)
local _v2yi = _v4.TweenService:Create(_v2yh, TweenInfo.new(_v4.SLIDE_TIME, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
TextTransparency = 0,
Position = UDim2.new(0, 0, 0, 0)
})
_v2yi:Play()
end
function _v4.hideIndicator(_v2yj)
local _v2yk = _v2yc[_v2yj]
if not _v2yk then return end
local _v2yl = _v4.TweenService:Create(_v2yk, TweenInfo.new(_v4.SLIDE_TIME, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
TextTransparency = 1,
Position = UDim2.new(1, 0, 0, 0)
})
_v2yl:Play()
_v2yl.Completed:Connect(function()
if _v2yk.TextTransparency >= 0.9 then
_v2yk.Visible = false
end
end)
end
function _v4.updateIndicator(_v2ym, _v2yn)
if _v2yn then
_v4.showIndicator(_v2ym)
else
_v4.hideIndicator(_v2ym)
end
end
_v4.MODULE_LIST = {
{name = _ei9m[2+762], order = 1, getState = function() return _v4.ESP_ENABLED end},
{name = _ei9m[1825-19], order = 2, getState = function() return _v4.CHAMS_ENABLED end},
{name = _ei9m[235+175], order = 3, getState = function() return _v4.TRACERS_ENABLED end},
{name = _ei9m[1287], order = 4, getState = function() return _v4.CORPSE_ESP end},
{name = _ei9m[855-10], order = 5, getState = function() return _v4.FOSSIL_SMALL or _v4.FOSSIL_MEDIUM or _v4.FOSSIL_LARGE end},
{name = _ei9m[2113], order = 7, getState = function() return _v4.MEAT_ESP end},
{name = _ei9m[536-17], order = 8, getState = function() return _v4.CLAY_ESP end},
{name = _ei9m[5+671], order = 24, getState = function() return _v4.VEG_ESP end},
{name = _ei9m[119+2027], order = 8, getState = function() return _v4.SAVE_DINO_ACTIVE end},
{name = _ei9m[642], order = 9, getState = function() return _v4.HITBOX_EXPANDER end},
{name = _ei9m[3+2485], order = 10, getState = function() return _v4.ANTI_BLACKSCREEN end},
{name = _ei9m[2330], order = 11, getState = function() return _v4.AUTO_GROW end},
{name = _ei9m[1104], order = 12, getState = function() return _v4.TEXT_HIGHLIGHT end},
{name = _ei9m[504-19], order = 14, getState = function() return _v4.NO_FALL_DAMAGE end},
{name = _ei9m[2799-9], order = 15, getState = function() return _v4.FOSSIL_FARM end},
{name = _ei9m[535+422], order = 16, getState = function() return _v4.SILENT_AIM end},
{name = _ei9m[284+1701], order = 18.5, getState = function() return _v4.AFK_FARM end},
{name = _ei9m[612-6], order = 18.6, getState = function() return _v4.LEGIT_FARM end},
{name = _ei9m[1651+229], order = 18.7, getState = function() return _v4.AUTO_SWITCH end},
{name = _ei9m[2486+386], order = 18.8, getState = function() return _v4.FARM_TIMER end},
{name = _ei9m[75], order = 19, getState = function() return _v4.AUTO_FLY end},
{name = _ei9m[5+734], order = 20, getState = function() return _v4.TP_CORPSE end},
{name = _ei9m[2178+40], order = 21, getState = function() return _v4.ANTI_AFK end},
{name = _ei9m[5+1472], order = 22, getState = function() return _v4.MOD_CHECK end},
{name = _ei9m[419+1256], order = 25, getState = function() return _v4.NO_FOG end},
}
for _v2yo, _v2yp in ipairs(_v4.MODULE_LIST) do
_v4.createIndicatorLabel(_v2yp.name, _v2yp.order)
end
_v4.prevStates = {}
_v4.addStep(6, function()
if _v2y9.Enabled ~= _v4.SHOW_INDICATORS then _v2y9.Enabled = _v4.SHOW_INDICATORS end
for _v2yq, _v2yr in ipairs(_v4.MODULE_LIST) do
local _v2ys = _v2yr.getState()
if _v4.prevStates[_v2yr.name] ~= _v2ys then
_v4.prevStates[_v2yr.name] = _v2ys
_v4.updateIndicator(_v2yr.name, _v2ys)
end
end
end)
pcall(function()
local _v2yt = (_v2bx.toggleKey and _v2bx.toggleKey.Name) or _ei9m[2543-2]
_v2bx:Notify(_ei9m[252] .. _v2yt .. _ei9m[7+2432], 6)
end)
_v4.xlog(_ei9m[1449+39])