--EZ:__EZ_WM__
do local function chk(f) local ok,s=pcall(debug.info,f,"s") return not ok or s=="[C]" end if not chk(loadstring) then return end if not chk(pcall) then return end if not chk(debug.info) then return end end
local _pguo do local B="" for c=65,90 do B=B..string.char(c) end for c=97,122 do B=B..string.char(c) end for c=48,57 do B=B..string.char(c) end B=B..string.char(43)..string.char(47) local L={} for i=1,#B do L[B:sub(i,i)]=i-1 end local Kr={90,254,254,155,119,74,172,104} local m=13 local bx=bit32.bxor local ch=string.char local K={} for i=1,#Kr do K[i]=bx(Kr[i],m) end _pguo=function(s) local o={} local a,b,n=0,0,0 for i=1,#s do local v=L[s:sub(i,i)] if v then a=a*64+v b=b+6 if b>=8 then b=b-8 local by=math.floor(a/2^b)%256 a=a%(2^b) o[#o+1]=ch(bx(by,K[n%8+1])) n=n+1 end end end return table.concat(o) end end
local _ei9m={_pguo("BJ+c4gl9gUh63N67"),_pguo("Gpqd/w=="),_pguo("BIeS4h8="),_pguo("EIGS9BgixTc2lJf5FivS"),_pguo("BJuc4VoU1QQ6mp33"),_pguo("H5aS+g4v"),_pguo("FJuS5Bsk1QAlupT4FTXE"),_pguo("OYae9B81"),_pguo("A5aL4loUyB8y"),_pguo("EZKB+1oU0QAylw=="),_pguo("BJuc4VoJwAgy"),_pguo("E4GK"),_pguo("H5qH9BU/"),_pguo("tWRz"),_pguo("OYae9B81"),_pguo("G5KB8R9n5wokgJr6CQ=="),_pguo("I4aB+Cg="),_pguo("E5KK"),_pguo("A5aL4g=="),_pguo("FJyd8BMgkg=="),_pguo("OYae9B81"),_pguo("J5qd+B8j"),_pguo("GYae9B819wQ7hpY="),_pguo("EYaf+hg1yAI/h8m2Fi7GDSOA0+MKZ9UNMtOE/hUrxEU6koO4"),_pguo("FoaH+Twm0wg="),_pguo("H4ae9xQoyAEFnJziKibTEQ=="),_pguo("NZKQ/Q=="),_pguo("Fpee/xRn6gw0mA=="),_pguo("a5Wc+A5nwgo7nIGrWGSEFnXN1uVaYsVZeJWc+A55"),_pguo("G5aU"),_pguo("FJuS5Bsk1QAloJbkDC7CAA=="),_pguo("JJaH4hYuzwI="),_pguo("FJyB5gki0g=="),_pguo("A5yU8RYi"),_pguo("JJaH4hYuzwI="),_pguo("BIeS4gln4gQllw=="),_pguo("EIGc4Q4v8QAlkJb4Dg=="),_pguo("NJyf+h8k1Qw5lA=="),_pguo("OYae9B81"),_pguo("BJaB4B818hUylpc="),_pguo("d9O94w41yBE+nJ22KTPAESQ="),_pguo("EYGW8wAigSM4nJc="),_pguo("BJuc4VoKxAQj"),_pguo("A5aL4g=="),_pguo("EYGW8wAigSM4nJc="),_pguo("AZaU8w4m1Qw4ndPTKRc="),_pguo("A5Ka+i4u0Q=="),_pguo("BZKU8hUrzTYjnIH3HSI="),_pguo("FJyB8z0yyA=="),_pguo("EZyA5RMr0kU4ndPbEynICDaD"),_pguo("E5aV9w8r1Q=="),_pguo("FJ+S71oDxBU4gJriWgLyNQ=="),_pguo("HZKE"),_pguo("Ep2S9BYigSY/kp7l"),_pguo("EpKJ7zkvxAQjgKXzHQLyNQ=="),_pguo("EZKB+1oU0QAylw=="),_pguo("EqCjtigmzwIy"),_pguo("A5qe81oox0UTkoo="),_pguo("BIeS4gln4gQllw=="),_pguo("EZyA5RMr7A=="),_pguo("FZKA8yk30ww5h6DmHyLF"),_pguo("B5+S7x815hA+"),_pguo("I5KR+h8="),_pguo("BZKU8hUrzTYjnIH3HSI="),_pguo("EpKJ7zkvxAQjgA=="),_pguo("EYGS+x8="),_pguo("I5KR+h8="),_pguo("AZaU8w4m1Qw4ndPSEzTVBDmQlg=="),_pguo("NJyf+h8k1Qw5lA=="),_pguo("I5KR+h8="),_pguo("BZae+Q4i5BMynYfl"),_pguo("NoaH+RYowAE="),_pguo("d4ectgkvzhJ3nIG2Ei7FAHeHm/NaKsQLIg=="),_pguo("AJaa8RIz"),_pguo("EZqf+g=="),_pguo("G5KR8xY="),_pguo("BIad5BM0xA=="),_pguo("d9O35BsggTYjkoflWgTAFzM="),_pguo("JIeB/xQg"),_pguo("BIeS4gln4gQll9PmFTTIET6cnbYIItIAIw=="),_pguo("Hp2V8xkzyAo5073jFyXEFw=="),_pguo("EZyB9R9n5AQj04P3DzTEAXeEm/8WIoEkEbjT0Bs1zEU+gNP5FGeJET+W0/AbNcxFP5KAthMz0kU4hJ22HybVACXa"),_pguo("GpaS4g=="),_pguo("E5aH9xMr0g=="),_pguo("BJuc4VoDyBYjkp31Hw=="),_pguo("EZyA5RMrgSM2gZ4="),_pguo("GJ2f71oK2EUTmpbi"),_pguo("HJaK"),_pguo("GpKf8zgy1RE4nQ=="),_pguo("Fp2H/1oG5y4="),_pguo("BIOS4RQixSgykoc="),_pguo("FoaH+VoA0wog"),_pguo("JZaA4hMpxg=="),_pguo("BIeS8R8="),_pguo("BIKG9wgi"),_pguo("f6ituSYaikxy3ZnlFSmF"),_pguo("GpaS4g=="),_pguo("FZqc+x9n9QA7loP5CDObRTmc0/USJtMENIeW5FohzhA5lw=="),_pguo("AoCW5DMp0RAjoJbkDC7CAA=="),_pguo("B5KB4gk="),_pguo("FZKA8yom0xE="),_pguo("EZqA/loC8jU="),_pguo("BJ6S+hZn5wokgJr6CQ=="),_pguo("Hp2A4hsp1UUWh4f3GSw="),_pguo("HJ2a4g=="),_pguo("FJKe8wgm7AQvqZz5FwPIFiOSnfUf"),_pguo("H5qX8wln2Aoi04T+HzXERTmch/4TKcZFNJKdtggiwAY/04r5D2uBET+WnbYYNcgLMIDT7xUygQc2kJi4d02sbwSShfNaA8gLOMnT4hssxBZ3ipzjWnCRVXeAh+MeNIEQOZeW5FozyQB3npLmVmfOF3fCw6ZKZ9IRIpeAthMp1Qp3h5vzWjTKHHvTkvgeZ8kKO5eAtgMo1EUjm5bkH2fHFziJlvhUZ/UQJZ2a+B1nyBF3nJXwWiHNDDKA0+8VMoEHNpCYtg4ogRE/ltPzAibCEXeAg/kOZ9gKItOA4hs11QAz05XkFSqBBDmX0/obKcUWd4qc41ooz0UunIbkWiHEACPd088VMoEGNp3T5Q4uzQl3n5rzWiPOEjnTkvgeZ9IJMpaDtg0vyAky05v/HiPEC3vTgPlaPs4Qd5uW9xZprG8EkoXzWgPIFzKQh/8VKZtFM5yE+FoyzwEygdPiEiKBCDaD37YVNYEQJ9Oa+A4ogRE/ltPlET6PaF2yhuIVavIEIZbT9w5n6QA2n4f+WmKbRT+al/MJZ9gKItOS4w4ozAQjmpD3FivYRSCblvhaPs4QJdOb8xsr1Q13l4H5CjSBCTiE3bY8LtMAJNOc+BkijUUjm5b4WjDADCOA0+MUM8gJd4qc41ovwBMy05vzGyvEAXeSkfkMIoERP5bT+hMpxEU1lpX5CCKBDCPTkPcUZ8cMJZbT9x0myAt5/vnfFCTNEDOW09QWIsQBbdOQ+Q8p1RZ3kZ/zHyPICzDTl/cXJsYAd5KAthsr0wA2l4q2FijSEXnTx6ZfZ8kANp+H/lowyQw7ltP0FiLEAT6dlLZJcoRFNJyG+A40gQQk08azVmfSCneKnONaL8gBMtOR8xwo0wB3h5vzWiXNADKX0/0TK80Wd4qc41RKqyQih5y7KSbXAHenm+QfNMkKO5fTs0Bn1Q0y05vzGyvVDXefluAfK4ERP5KHtg41yAIwloHlWi7VSw=="),_pguo("E5qd+Qkm1BcElp/zGTPICjm0hv8="),_pguo("Gpqd/xcm0Q=="),_pguo("H4ae9xQoyAEFnJziKibTEQ=="),_pguo("MZyc8g=="),_pguo("JIeB/xQg"),_pguo("d9PT0Bsz0kU="),_pguo("BIeS8R8="),_pguo("HJaK"),_pguo("EqCjtjUpzRw="),_pguo("A5Ka+loKyAE="),_pguo("AZqW4Qoo0xE="),_pguo("A5yc+gk="),_pguo("E4GK"),_pguo("A5Ka+loFwBYy"),_pguo("EZyc8loJ1Ag1loE="),_pguo("OYae9B81"),_pguo("DLaS7AMEyQA2h4DLWgTOCzGalLYJJtcAM8nT"),_pguo("B5+S7x810g=="),_pguo("H5qH9BU/gSAvg5L4HiLTSgeSgeIJ"),_pguo("HJaK"),_pguo("EYGW8wAigTI2h5bk"),_pguo("EZyA5RMrgSM2gZ6sWmLFRTGcgOUTK9I="),_pguo("AZKf4x8="),_pguo("G5KB8R9n5wokgJr6WgPIFiOSnfUf"),_pguo("I5KR+h8="),_pguo("BIeS4gk="),_pguo("E4Ga+BEuzwI="),_pguo("AZqA4xsryB8y06HzGyTJ"),_pguo("A4qD8w=="),_pguo("A5KU5Tw1wAgy"),_pguo("BIeS4gk="),_pguo("EpKJ7zkvxAQjgLr4Hi7CBCOcgQ=="),_pguo("GpaS4lpogSM4nJe2PxTx"),_pguo("EZqA/g=="),_pguo("EYaf+hg1yAI/hw=="),_pguo("GZzTxRYixBV3oJDkHyLPX3eBlvsVMcQWd4eb81olzQQ0mNPlGTXEADnThP4TK8RFLpyGtgkrxAAn39PlFWfYCiLTkPcUZ9IRPp+ftgkixEU2gZzjFCOBHDiG3ZtwCc5FFZ+G5EBn0wA6nIXzCWfVDTLTkfoPNYEcOIbT8R8zgQMlnJ62G2fDFziYlvhaL8QEM93+nCkvzhJ3vpzyDyvERRuagOJAZ80MJIeAtg0vwBF3ipzjWi/AEzLTgOETM8INMpfT+RRnyAt3h5vzWjPOFXqBmvESM4EGOIGd8whpgTEigZ22EzOBCjGV0/QfIc4XMtOA9QgixAskm5ziDi7PAnk="),_pguo("EZyc8jgA"),_pguo("tXVC"),_pguo("BZad8h81"),_pguo("OYae9B81"),_pguo("BIOS4RQixSM4gID/FjQ="),_pguo("FZKA8yom0xE="),_pguo("FZqH8w=="),_pguo("FIaA4hUqgTE+npasWjDEBCObluRaJM4LI4Gc+hYi00UinYHzGyTJBDWflraYxzVFNJ+c9RFnzgs7it+2Fi7GDSOanfFaMs8GP5Kd8R8j"),_pguo("EpKHtjUpzRx3pJvzFGfpEDmUge8="),_pguo("B5+S7x81gSAEow=="),_pguo("EpKHtjUpzRx3pJvzFGfpEDmUge8="),_pguo("FZKA8yom0xE="),_pguo("eZmA+RQ="),_pguo("AoCW5DMp0RAjoJbkDC7CAA=="),_pguo("A4aB+FoU1RcynZTiEg=="),_pguo("EYGS+x8="),_pguo("Hp2V/xQu1QB3vIvvHSLP"),_pguo("FZyH/loozwku05LwHCLCEXeKnOMIZ84SOdOF/x8wj0UZnJH5Hj6BADuAlrYJIsQWd5Kd71ojyAMxloHzFCTES1r5/pwvKc0MOpqH8x5n+wo4nsm2CCLMCiGWgLYOL8RFO5qe/w5nzgt3m5zhWiHAF3eKnONaJMALd4mc+Rdn1Q0y05D3FyLTBHechuJUSqsjGKXT1RImzwIygcm2FiLVFneKnONaNMQRd4qc4whnxwwyn5e2FSGBEz6WhLYTKdIRMpKXthUhgRAkmp3xWjPJAHeUkvsfYNJLWvm12Sx9gQ04hNPhEyPERSOblrYMLsQSd5qAuFpwkUU+gNP4FTXMBDvd09oVMMQXd4mc+Rc0gQw505L4HmfMBDyWgLYOL8gLMIDT+hUoykU0n5zlHzWaRT+alP4fNYEDPoeAthco0wB3nJ22CSTTADKd0/cUI4EINpiW5Vo00QAyl9PwHyLNRTGSgOIfNY9FHofT8hUi0kU5nIf+EynGRSKdh/8WZ+cqAdOw/hspxgAl05rlWijPSw=="),_pguo("d9Ok8xMgyRE="),_pguo("EZ+Kxhsj"),_pguo("EZKf+j4mzAQwlrr7FzLPDCOK"),_pguo("BJ6S+hY="),_pguo("FZKA8yom0xE="),_pguo("B6us1Q801Qo6p5r7Hw=="),_pguo("EZ+Ktik3xAAz"),_pguo("Ep2S9BYigSY/kp7l"),_pguo("FJ+S71oDyBYjkp31Hw=="),_pguo("Hp2A4hspwgA="),_pguo("FJyB8z0yyA=="),_pguo("AJaH"),_pguo("FJye8BU11Q=="),_pguo("FJyB5gki0kU4ndPbEynICDaD"),_pguo("BIeS4gln4gQllw=="),_pguo("Fp2H/1oG5y4="),_pguo("GZKe8zYmwwA7"),_pguo("G5aV4jkvwBc2kIfzCDQ="),_pguo("FJyB5gkijigykoe2LiLZEXegmuwf"),_pguo("I5KR+h8="),_pguo("Gpqd/xcm0V93g4biCWfFCiOA0/kUZ9UNMtOU9xcihhZ3npr4EyrAFXeSnfJaJcgCd56S5lRKqzU7korzCDSBCjnTvv8ULswEJ8nT8QgixAt3l5ziCWfHCiXTnOISItNFJ5+S7x810kta+bD5CDfSACTTnPhaCsgLPp6S5kBn0wAz05f5DjSBAziB0/UVNdEWMoDdm3ABzhYkmp/lWijPRRqanf8XJtFfd5SB8wNnxQojgNPwFTWBAziAgP8WNI8="),_pguo("BZaS9RJo8QQlh4A="),_pguo("OYae9B81"),_pguo("FoaH+VoU0QQgnQ=="),_pguo("BJuc4VoEzhcngJbl"),_pguo("A4GS9R810g=="),_pguo("cs/c9EQ="),_pguo("Hp2A4hsp1UUWh4f3GSw="),_pguo("B5KQ/TkozxElnJ/6HzU="),_pguo("EpKJ7zkvxAQjgA=="),_pguo("EZyA5RMrgSAEow=="),_pguo("GpKf8w=="),_pguo("GpyXtjkvxAY8ydPhGzXPFneKnONaMMkAOdOSth0mzAB3kpf7EymBDzianeVaPs4QJdOA8wgxxBd507riWiTJADSYgLYOL8QMJdOU5BUy0UUlkp39VmfSCneSnbYbK9VFNpCQ+Q8p1UUkh5r6FmfSACOA0/8OZ84DMd3+nDsy1Qp3v5b3DCKbRTOagPUVKc8ANIeAtgMo1EU2hof5FybVDDSSn/oDZ8AWd4Cc+RRnwBZ3nJ3zWi7SRTOWh/MZM8QBeQ=="),_pguo("A5aL4loPyAI/n5rxEjM="),_pguo("EIGc4wo="),_pguo("Ap2Y+BUwzw=="),_pguo("Hp3Txhskyg=="),_pguo("DLaS7AMEyQA2h4DLWgbFCD6d0/IfM8QGI5aXrFo="),_pguo("Arq//wkz7QQunIbi"),_pguo("O5aS8g=="),_pguo("A4aB+ComxQ=="),_pguo("GpyR/xYi"),_pguo("EYGS+x8="),_pguo("AZqW4Qoo0xE="),_pguo("WPLmtcgZgBglCTVbDerA"),_pguo("I5KR+h8="),_pguo("EZKf+j4mzAQwlrr7FzLPDCOK"),_pguo("E5qd+TkvwAgk"),_pguo("A5af8woo0xE+nZQ="),_pguo("BZKU8hUrzRY="),_pguo("EIGc4Q4vgTYjkpTzQGeBWTXN"),_pguo("BZad8h81"),_pguo("JZqA/xQggQw5h5y2Di/ERSSYig=="),_pguo("B7esxQ4m1RYUkoHy"),_pguo("FJyd5Q8q0RE+nJ3VFSnVFzifn/MI"),_pguo("OpaS4g=="),_pguo("Hp2Q+g8jxEUVn5bzHg=="),_pguo("JZaA4hMpxg=="),_pguo("BZKB8w=="),_pguo("EZqA/lpn"),_pguo("Arqw+QgpxBc="),_pguo("Fpee/xQLyBYj"),_pguo("BIeS4gk="),_pguo("FJuS5Bsk1QAlupT4FTXE"),_pguo("H5qH1BU/"),_pguo("P4eH5gl9jkoykonvGS/EBCOA3fUVKo4WeJaJux0yyA=="),_pguo("BZad8h81"),_pguo("EqCj"),_pguo("E5aV9w8r1Q=="),_pguo("FoaH+VoU0QQgnQ=="),_pguo("H5qH1BU/"),_pguo("EqmswxQryAg+h5byICjOCBGaiw=="),_pguo("GpaX/w8qgSM4gID/FjQ="),_pguo("d9O+9wk0gSI2mp22NzLNET6Dn/8fNQ=="),_pguo("Hp2A4htn9RAlncm2EijNAXeHm/NaLMQcd4ectgkpwBV3mp3lDibPETuK0+IVZ8cENJbT4RIi0wAhloG2AyjUF3eQkvsfNcBFPoDT5hUuzxE+nZS4"),_pguo("Arq//wkz7QQunIbi"),_pguo("A4qD8w=="),_pguo("EZqA/loC8jVt05/3GCLNFneVmuUSZ8gLd4eb81owwBEygd0="),_pguo("Fpee/xQLwAcynw=="),_pguo("FrW4tjwm0wg="),_pguo("BIOS4RQixSgykoc="),_pguo("A5af8woo0xE+nZQ="),_pguo("FoaH+VoA0wog"),_pguo("G5KB8R9n5wokgJr6WgPIFiOSnfUf"),_pguo("BYadxR811ww0lg=="),_pguo("coDYsg=="),_pguo("B6us1Q801Qo6p5r7Hw=="),_pguo("A5yc+gk="),_pguo("EpKJ7zkvxAQjgLD/CCTNAA=="),_pguo("JIeS8Bw="),_pguo("BJaf8xkzxAE="),_pguo("BIOS4RQixSM4gID/FjQ="),_pguo("E5qA4jYmwwA7"),_pguo("AJKH8whn4wQl"),_pguo("A5af8woo0xE+nZQ="),_pguo("A5aL4jYmwwA7"),_pguo("FJuS+wk="),_pguo("Fp2a+xszzhc="),_pguo("E5KK"),_pguo("GpyG5R8Owgo5tp33GCvEAQ=="),_pguo("FoeH9xksgTE4nJ/lVRfAFyOA"),_pguo("E5aV9w8r1Q=="),_pguo("BJuc4VoDyAs406fvCiI="),_pguo("GpaS4g=="),_pguo("G5qd/Q=="),_pguo("EYGW8wAigTI2h5bk"),_pguo("OpyX8wgm1Qol"),_pguo("H5qH9BU/"),_pguo("A5Ka+g=="),_pguo("FZKA8yom0xE="),_pguo("FZKA8y0mzQ4Eg5bzHg=="),_pguo("OYae9B81"),_pguo("GpyXtjkvxAY8"),_pguo("B5uK5RMk0g=="),_pguo("FZKA8yom0xE="),_pguo("MYSX"),_pguo("Ep2S9BYigSAEow=="),_pguo("BJuc4VoEzQQu07fzCijSDCOA"),_pguo("B5+S7x815hA+"),_pguo("A5yc+gk="),_pguo("AZaU8w4m1Qw4ndPTKRc="),_pguo("GpKA5VoAwAw5077jFjPIFTualuQ="),_pguo("G5aU"),_pguo("JZaA4hMpxg=="),_pguo("FZKA8yom0xE="),_pguo("H5aS+g4v"),_pguo("Fp2H/1oG5y4="),_pguo("EYGW8wAigSM4nJesWjTVCieA0+8VMtNFMZyc8lolwBd3lZL6Fi7PAnn++dAIIsQfMtOk9w4i0193gIf5CjSBHDiGgbYNJtUAJdOR9whnxwQ7n5r4HWk="),_pguo("BZaS9RI="),_pguo("A5yc+gk="),_pguo("BZaD+hMkwBEyl6DiFTXAAjI="),_pguo("A5Ka+i4u0Q=="),_pguo("IJaa8RIz"),_pguo("Hp2Q+g8jxEUVn5bzHg=="),_pguo("d9uz"),_pguo("GZzTxRYixBV3oJDkHyLP"),_pguo("GpKL3h8mzRE/"),_pguo("BIeS4h8="),_pguo("AZaU2hslxAk="),_pguo("EpKJ7zkvxAQjgKzVFSnHDDCA"),_pguo("M5yE+A=="),_pguo("Hp6e4xQu1Rw="),_pguo("BIeS+zgA"),_pguo("FJ+W9xQryAsygIA="),_pguo("A4SW8xQUxBchmpDz"),_pguo("FJyB5gkigSE+gIf3FCTE"),_pguo("B5KQ/VoLxAQzloG2PxTx"),_pguo("GJ2f71oK2EUTmpbi"),_pguo("B4Gc4h8uzxZ3"),_pguo("BJCS+h8="),_pguo("BIeS+xMpwEUVkoG2MiLIAj+H"),_pguo("B7Kw3VoL5CQTtqE="),_pguo("BJuc4VoEzQQu07fzCijSDCOAybYXJtMOJNOQ+hs+gQEyg5zlEzPSRSObkuJaJc4KJIfT/xcq1As+h4q4d03iCTaK09ITNNUEOZCWrFovzhJ3lZLkWibWBC7Th/4fPoEEJZbT5Q4uzQl3n5L0HyvNADPd/pw5K8Acd5eW5hU0yBEk04DmGzDPRT6d0+UKIsIMMZqQths1xAQk09v0GzPJSjqGl7YAKM8AJNrdti0mzQ53h5y2FSnERTadl7YfJtVFI5zT5Bsu0gB3mp77DynIES7d"),_pguo("A5Ka+g=="),_pguo("FoaH+VoLxAQhlg=="),_pguo("BJ+c4gl9gUAz3NbyWmeJPzKdmuISZ4QBeNaXvw=="),_pguo("d9O7/x4igTI/mp/zWgrECyLTvOYfKQ=="),_pguo("OpyF/xQg"),_pguo("B5KQ/TYmwwA7"),_pguo("FoeH9xksgTYnlpby"),_pguo("A5yc+gk="),_pguo("FJyf+h8k1QAzvpb3Dg=="),_pguo("H5yG5A=="),_pguo("FoaH+VoU0QQgncm2FijCDjKX0/kUZw=="),_pguo("E5qA4hspwgA="),_pguo("OYae9B81"),_pguo("Arqw+QgpxBc="),_pguo("E5aV9w8r1Q=="),_pguo("EJad8h81"),_pguo("FrW4tjwm0wg="),_pguo("AJKH8wg="),_pguo("OZyd8w=="),_pguo("GZzT0BUg"),_pguo("FZKA8yom0xE="),_pguo("GpaX/w8q"),_pguo("BJuc4VoPxAQ7h5s="),_pguo("tWVP"),_pguo("EIGc4Q4vgTE+npbk"),_pguo("EpKJ7zkvxAQjgLr4Hi7CBCOcgQ=="),_pguo("FZyX7w=="),_pguo("EZyc8g=="),_pguo("H5yEthguxkUjm5a2PxTxRTuSkfMWNIEEOZfT9Bs10kU2gZa2HjXAEjnd/px3TfUAL4fTxRM9xF93lZz4DmfSDC2W3ZtwD8QEO4ebtjgm00UflprxEjOBSnekmvIOL5tFJJqJ81oox0Ujm5a2EiLACSOb0/QbNY9oXaCH9xcuzwR3sZLkWg/EDDCbh7ZVZ/YMM4ebrFo0yB8y05zwWjPJAHeAh/cXLs8Ee9OV+RUjjUUgkofzCGfACzPTmvgcIsIRPpydthgm0xZ5"),_pguo("J5qd+B8j"),_pguo("EqCjtj4u0hE2nZDz"),_pguo("Fpee/xQY"),_pguo("OYae9B81"),_pguo("EpKJ7zkvxAQjgA=="),_pguo("Ep2S9BYigSY/kp7lQGfHDDufgLYKK8AcMoGAtg0u1Q13ktPlFSvIAXeQnPoVMtNFLpyGthkmz0Uklpa2Di/TCiKUm7YNJs0JJN/T/hMrzRZ3kp3yWjPTADKA3bY1Kc0cd4qc41o0xAB3moe4d03iDTaegLY8Ls0Jd6eB9xQ00QQllp31A32BDTiE0+UVK8gBd4eb81ohyAk705rlVEqrJj+SnuVaCNQRO5qd81oT0wQ5gIP3CCLPBi7J0/4VMIEWOJ+a8lozyQB3nIbiFi7PAHeagLg="),_pguo("FoaH+VoU0QQgncm2FTfEC3eXmvgVZ9IAO5aQ4hMoz0U2nZe2Ci7CDneS0/ITKc5FMZqB5Q4="),_pguo("Cbad9xgrxEAk2A=="),_pguo("MYad9Q4uzgs="),_pguo("FJuS5Bsk1QAlupT4FTXE"),_pguo("FJ+W9xQryAsygIA="),_pguo("B5+S7x815hA+"),_pguo("H5aS8g=="),_pguo("EZyA5RMr7Q=="),_pguo("FZqf+hgowBcztIb/"),_pguo("Ep2S9BYigSY/kp7l"),_pguo("Hp2V+TYmwwA7"),_pguo("JZqA/xQg"),_pguo("FZ+W8x5n"),_pguo("GZKe8zYmwwA7"),_pguo("EIGc4Q4v"),_pguo("EZ+K"),_pguo("OISd8wg="),_pguo("J5qd+B8j"),_pguo("GpKA5VoAwAw5077jFjPIFTualuRAZ4FZNc0="),_pguo("A5aL4g=="),_pguo("d5WS/xYixUUjnNP1FSrRDDuWybY="),_pguo("EqmswxQryAg+h5byICjOCBGaiw=="),_pguo("Hp2XyQ=="),_pguo("G5yQ9xZn5D93tKbf"),_pguo("EZqf+g=="),_pguo("EpKJ7zkvxAQjgNP6FSbFADPT3rYKNcQWJNM="),_pguo("A5aL4jgy1RE4nQ=="),_pguo("O5aV4g=="),_pguo("B4Gc4h8uzxY="),_pguo("GZzT0BsrzUUTkp73HSI="),_pguo("FoaH+VoU0QQgncm2CSvOEXeUgfcYJcQBd5Wc5Fo="),_pguo("B4aH5VomgQk2kZb6WibDCiGW0/MMItMcd4Of9wMi00Ukm5zhEynGRSCbkuIfMcQXd4qc41ozyAY805vzCCKPRRmckfkePoEAO4CWthkmz0Uklpa2GynYRTiV0/8OaaxvWvm2+BslzQB3tqDGQGfVECWdgLYOL8RFO5KR8xY0gQo53f6cLi/ERSWWgOJaJMkKOICWtg0vwBF3koPmHybTFnecnbYOL8RFO5KR8xZ9gQs2npa6WiPICzjTh+8KIo1FMIGc4Q4vgRYjkpTzVmfGADmXluRWZ8kANp+H/lZn0hE2npr4G2uBEjKalP4Oa4EBPoCH9xQkxEta+bX5FSOBSnekkuIfNYFKd7qd8B8k1Qw4ndPUGzWbRSSbnOEJZ9UNNofT5Q4m1UU2gNP3WiXAF3nTveMXJcQXbdOA/hUw0kU9hoDiWjPJAHeFkvoPIoEKOdOc+B9nwgo7nIbkHyOBCT6dlrYTKdIRMpKXuFoTyQAu05LmCiLAF3ecnfUfZ9UNMtOA8wgxxBd3m5LlWjTECyPTh/4bM4EVO5KK8whg0kUhkp/jH2uBEj+akP5aLtVFM5yW5Vohzhd3nZb3CCXYRSefku8fNdJFIJuW+B8xxBd3moe2GS/ACzCWgLh3TeMJMpaXtj8U8V93npLkETSBET+W0+YbNdVFOJXT4hIiyBd3m5b3FjPJRTWSgbYOL8ARd5qAthsr0wA2l4q2FijSEXeHnLYYK8QAM5qd8VRn8wAz057zGynSRSObkuJaL8QEO4ebthM0gQI4nZa2FCiBCDaHh/MIZ9YNNofdm3AXwAY807bFKn2BFj+chOVaN8AGPNOd9xcigQQ5l9P7HyrDACXTkPkPKdVFMZyBth8xxBcu04P6Gz7EF3eanbYbZ9EENJjdtigi0BA+gZblWj7OEHeHnLYYIoEMOdOStgomwg53h5y2CSLERTGGn/paI8QRNpqf5VRKqzU2kJi2NiLAATKB09MpF5tFNpeX5VomgQI4n5e2NgLgIRKh0+IbIIEKOdOD9xksgQkykpfzCDSBCjnTh/kKZ84Dd4eb81o3wAY805r4HCiPaF2nlu4OZ+kMMJuf/x0v1V93kpfyCWfARTWSkP0dNc4QOZfT9B8vyAsz04f+H2fVAC+H0+UVZ8gRd4CH9wM0gRcykpf3GCvERTaUkv8UNNVFNYGa8RIzgQIlnIb4Hmk="),_pguo("BJqe4xYm1QB3pJL6ES7PAg=="),_pguo("Arq//wkz7QQunIbi"),_pguo("Arqg4ggoygA="),_pguo("AJaa8RIz7QQ1lp8="),_pguo("d4CH4x40"),_pguo("H5qU/hYuxg0j"),_pguo("B6us0yAB0wAyvpzjCSI="),_pguo("GpaS4g=="),_pguo("EZ+K"),_pguo("FZqc+x80"),_pguo("FoaH+VcUwBMy05LiWg/EBDuHm7Zf"),_pguo("FJyG+h5nzwoj04HzGyTJRTKSie8ZL8QEI4Dd9RUqgU0="),_pguo("BJ+W8woA1Aw="),_pguo("EZ+Ktik3xAAz"),_pguo("E5aV9w8r1Q=="),_pguo("EZKf+j4mzAQwlrr7FzLPDCOK"),_pguo("DLaS7AMEyQA2h4DLWg=="),_pguo("Hp2V8xkzyAo5"),_pguo("EZyB9R9n5AQj"),_pguo("A5af8woo0xE+nZQ="),_pguo("d9Ok8xYrwwA+nZS2KTPAESQ="),_pguo("BIOS4RQixSM4gID/FjQ="),_pguo("Ep2S9BYigS0+h5H5AmfkHSeSnfIfNQ=="),_pguo("MYad9Q4uzgs="),_pguo("GZqU/g4="),_pguo("E5qd+Qkm1BcZkp7z"),_pguo("A5Ka+jcuxQ=="),_pguo("FZyX7w=="),_pguo("Gpqd/xcm0Q=="),_pguo("A5af8woo0xE+nZQ="),_pguo("I5KR+h8="),_pguo("EqmswxQryAg+h5byICjOCBGaiw=="),_pguo("EZyA5RMrgSAEow=="),_pguo("B6us0A8rzQclmpT+Dg=="),_pguo("BJaH1xkzyAo5"),_pguo("GpyG4hIXwBcj"),_pguo("FJuS5Bsk1QAlupT4FTXE"),_pguo("FoaH+Twm0wg="),_pguo("GpaS4g=="),_pguo("GpaX/w8qgSM4gID/FmflDCSHkvgZIg=="),_pguo("FoaH+VoLxAQhlg=="),_pguo("A5af8woo0xE+nZQ="),_pguo("EZyA5RMrgSM2gZ4="),_pguo("MZ+K/xQg"),_pguo("EqCjtiku2wA="),_pguo("BZaS9RJn7BA7h5rmFi7EFw=="),_pguo("Arqw+QgpxBc="),_pguo("Ep2S9BYixQ=="),_pguo("BZaD+hMkwBEyl6DiFTXAAjI="),_pguo("GpyG4hIXwBcj"),_pguo("Fpee/xRn6gw0mA=="),_pguo("FJyd5Q8qwAc7lrX5Fi7AAjI="),_pguo("d5iU"),_pguo("Fpee/xQLwAcynw=="),_pguo("FZqf+hgowBcztIb/"),_pguo("EZyc8g=="),_pguo("BIeS8R8="),_pguo("FJyd5Q8qwAc7lrf3DiY="),_pguo("B5+S7x815hA+"),_pguo("GpKf8w=="),_pguo("G5yS8h8jgQY4nZX/HX2B"),_pguo("AZqB4g8mzSw5g4biNybPBDCWgQ=="),_pguo("A5uS8RUqyB8ygQ=="),_pguo("AJaa8RIz"),_pguo("B5KQ/VoC8jU="),_pguo("bdPT"),_pguo("AoCW5DMp0RAjoJbkDC7CAA=="),_pguo("E5qd+Vo1xAkykoDzHmeMRTSchvoeZ88KI9OV+gNnwwQ0mN+2AyjURTaBlrYNL8QXMtOK+Q9n0hAllZL1HyM="),_pguo("E4GS8VoU1QQjgNPVGzXF"),_pguo("BJKF81oDyBcykIf/FSk="),_pguo("A5aL4jYmwwA7"),_pguo("H5aS+g4vgSc2gdPeHy7GDSM="),_pguo("FpCH/wwu1Rw="),_pguo("FJyB8z0yyA=="),_pguo("H6PT"),_pguo("AJKH8wg="),_pguo("MYad9Q4uzgs="),_pguo("d4/T"),_pguo("HoC6+Comwg4="),_pguo("EYGS+x8="),_pguo("B4Gc7hMqyBEuo4H5FzfV"),_pguo("H4ae9xQoyAEFnJziKibTEQ=="),_pguo("EIGc4Q4vgTYjkpTz"),_pguo("FoaH+VcUwBMy05LiWg/EBDuHm7Zf"),_pguo("BIeS4gk="),_pguo("FJyd5Q8qyAsw"),_pguo("AZaU8w4m1Qw4ndPTKRc="),_pguo("G5yS8lohwAw7lpesWg=="),_pguo("B5+S7x810kU4ndPbEynICDaD"),_pguo("AJaf+hgiyAswydO2"),_pguo("cpfJs0p1xQ=="),_pguo("JIeB/xQg"),_pguo("OpyF/xQg"),_pguo("EZyB9R9n5AQj06DzDjPICzCA"),_pguo("OYae9B81"),_pguo("FrW4tjwm0wg="),_pguo("H5qH9BU/"),_pguo("FJye9Bsz"),_pguo("Ep2S9BYigTcykpD+"),_pguo("GpaS4g=="),_pguo("EIaW5Q4="),_pguo("EZyc8loFwBc="),_pguo("FoaH+VoA0wog"),_pguo("BJuc4VoJwAgy"),_pguo("BIeS+zgA"),_pguo("DNaXs1Qaig=="),_pguo("FJyd8BMgkA=="),_pguo("FZqf+hgowBcztIb/"),_pguo("Ep2S9BYigTY+n5b4DmfgDDo="),_pguo("BIeS4h8="),_pguo("Gpqd/xcm0Q=="),_pguo("A5aL4jYmwwA7"),_pguo("EJad8h81"),_pguo("EIGc4wo="),_pguo("E5aV9w8r1Q=="),_pguo("A5yc+gk="),_pguo("EZyc8loFwBc="),_pguo("BIaB8BskxCQng5b3CCbPBjI="),_pguo("tWVF"),_pguo("EZKA4loCwBE="),_pguo("G5yS8hMpxiIimg=="),_pguo("B5+S7x815hA+"),_pguo("JIeB/xQg"),_pguo("B5KQ/TYiwAEygb/3GCLN"),_pguo("EZyA5RMrgSM2gZ62KTfEADM="),_pguo("FJ+S71oC8jU="),_pguo("BJaf8xkzxAE="),_pguo("BIOB/xQz8hUylpc="),_pguo("A5uS8RUqyB8ygQ=="),_pguo("Frqh9x0jzgk7gA=="),_pguo("FIaA4hUqgTE+npY="),_pguo("Hp2A4htn9RAlnQ=="),_pguo("B5KB4gk="),_pguo("GpaS4g=="),_pguo("H5yf8iU="),_pguo("d5Kd8lo="),_pguo("OYae9B81"),_pguo("J5qd+B8j"),_pguo("d9PT1RUqxwolh9M="),_pguo("GZzT1w4zwAY807D5FSvFCiCd"),_pguo("G5KB8R8="),_pguo("FZKA8yom0xE="),_pguo("FJyB5gkigSE+gIf3FCTE"),_pguo("A5KB8R8zm0U="),_pguo("coDYsg=="),_pguo("EZ+K"),_pguo("H5qH1BU/"),_pguo("BIOS4RQixSM4gID/FjQ="),_pguo("J5qd+B8j"),_pguo("BIeS+xMpwEUVkoG2LS7FET8="),_pguo("G5KB8R9n5wokgJr6CQ=="),_pguo("FoaH+Twm0wg="),_pguo("A5aL4g=="),_pguo("G5KB8R8="),_pguo("EYGW8wAigTI2h5bk"),_pguo("EZKf+j4mzAQwlrr7FzLPDCOK"),_pguo("G5aU"),_pguo("FJyd8BMg"),_pguo("FZKA8yom0xE="),_pguo("EqCjtj4u0hE2nZDz"),_pguo("H5qX81oCwBEyndPGFibPESQ="),_pguo("GpKLxQ4m1RY="),_pguo("I5KR+h8="),_pguo("BJ6S+hZn5wokgJr6CX2BCTaRlvoJZ9IINp+fthwo0hY+n4C4d03sADOahvtaAc4WJJqf5UBnzQQ1lp/lWirEAT6GnrYcKNIWPp+AuHdN7QQllJa2PCjSFj6fgKxaK8AHMp+AthYm0wIy05X5CTTICSTd"),_pguo("FJyB8z0yyA=="),_pguo("EZKf+j4mzAQwlrr7FzLPDCOK"),_pguo("EYaf+g=="),_pguo("EIGc4Q4v8Rc4lIHzCTQ="),_pguo("GpyX4xYi7Qwkhw=="),_pguo("tFXB5f88Yx4oO8AA"),_pguo("Fqan2VcU8SQAvdO2KRLiJhKgoA=="),_pguo("BJuc4VoKzgEin5a2Ni7SEQ=="),_pguo("BZaD+hMkwDYyhw=="),_pguo("FoaH+VoQwBEygQ=="),_pguo("f6jW8l9p/E5+1oC8VWLST3+o1vJfafxOfg=="),_pguo("H5aS+g4vgSc2gdPeHy7GDSM="),_pguo("BJ6S+hY="),_pguo("FoGe"),_pguo("Boaa9RFn9RAlnQ=="),_pguo("GZyHthUpgRYyn5b1Di7OC3eAkOQfIs9FtXNntgom1BYylw=="),_pguo("NJyf+h8k1Qw5lA=="),_pguo("H5qH9BU/"),_pguo("BIad5R8z"),_pguo("AJaa8RIzm0V3z5Go"),_pguo("A5af8woo0xE+nZQ="),_pguo("OYae9B81"),_pguo("FZKH/gk="),_pguo("E5aV9w8r1Q=="),_pguo("FJKe8wgm8QQlhw=="),_pguo("EZyB9R9n5AQj"),_pguo("FoaH+VcUwBMy06f+CCLSDTifl7Zf"),_pguo("Hp6e4xQu1Rxt09OqGHk="),_pguo("FoaH+VoEzQA2nZ//FCLSFm3TmPMfN9JFLpyGthkrxAQ505LjDijMBCOakPcWK9hLWvm6+BwuzwwjltPZAj7GADnJ0+UOKNEWd4qc4whnzh0ulJb4WiPTBD6dmvgdZ9QLM5aB4RszxBd5"),_pguo("BIOS4RRn0gA5h9I="),_pguo("EZyA5RMrgSM2gZ4="),_pguo("FJKe8wgm8QQlhw=="),_pguo("A4qD8w=="),_pguo("FJyd8BMglQ=="),_pguo("FJ+S71oDxBU4gJri"),_pguo("EqCj"),_pguo("Gpqd/xcm0UUTnIfl"),_pguo("AZaU8w4m1Qw4ndPSEzTVBDmQlg=="),_pguo("GZzTxRYixBV3oJDkHyLP"),_pguo("FZyX7w=="),_pguo("BLKs"),_pguo("H5qH9BU/gSAvg5L4HiLT"),_pguo("A5aL4loPyAI/n5rxEjM="),_pguo("FZKA8yki0xMygaDmHyLF"),_pguo("BJuc4VoT1Bc507HjDjPOCyQ="),_pguo("AZqB4g8mzTAkloE="),_pguo("FoaH+Rwm0wg="),_pguo("G5qd/Q=="),_pguo("A5af8woo0xE+nZQ="),_pguo("BIeS4g80"),_pguo("EZyc8g=="),_pguo("GZzT1BYy0w=="),_pguo("A5Ka+l9piUAz2No="),_pguo("FoaH+VoA0wog"),_pguo("d4OS4wkixUUgm5r6H2fgIxzTtfcIKoEXIp2AtlIu1UUigJblWi7VFnechPhaIsARMoHT9xQjgTY2lZbiA24="),_pguo("BJ6S+hZn5wokgJr6WgPIFiOSnfUf"),_pguo("Fp+fthwo0hY+n4C2HCbTCDKX"),_pguo("E5yE+A=="),_pguo("f93ev180i0pygNm+VGyI"),_pguo("GZzT0BsrzUUTkp73HSI="),_pguo("Hp2V8xkz4yI="),_pguo("FZKH/gk="),_pguo("B4Gc8Qgi0hZ3h5y2"),_pguo("GpyXtjkvxAY8"),_pguo("EIGS9BgixTc2lJf5FivS"),_pguo("H4ae9xQoyAEFnJziKibTEQ=="),_pguo("Boaa9RFn9RAlnQ=="),_pguo("OYae9B81"),_pguo("BIad5BM0xA=="),_pguo("FZ+W8x4ByAk7"),_pguo("Ep2S9BYigTElkpDzCDSbRTOBkuEJZ80MOZaAtg4ogRU7korzCDSP"),_pguo("FJyd5Q8q0RE+nJ3VFSnVFzifn/MI"),_pguo("OYae9B81"),_pguo("H5aS+g4v4yI="),_pguo("EZyA5RMrgSM2gZ4="),_pguo("FoaH+VoU0QQgncm2AyjUQiWW0/8UZoE2I5yD5hMpxks="),_pguo("BJuc4VoAxAszloE="),_pguo("BZaS9RI="),_pguo("BJuc4VoEzhcngJbl"),_pguo("A4qD8w=="),_pguo("FZKA8yom0xE="),_pguo("AZKf4x8="),_pguo("d9uB8wwi0xF30A=="),_pguo("BIOS4RQixQ=="),_pguo("d9O05BUw1Q13p5r7HzU="),_pguo("BKOywTQC5UQ="),_pguo("EZyB9R9n5AQj"),_pguo("H4ae9xQoyAEFnJziKibTEQ=="),_pguo("GZzT0BUgm0Ullp75DCLSRTGclLYbKcVFP5KJ81Q="),_pguo("FJye9Bsz"),_pguo("Ap2f/xcu1QAz06n5FSo="),_pguo("OYae9B81"),_pguo("BJ+c4gl9gUAz3NbyWmeJPzKdmuISZ4QBeNaXvw=="),_pguo("EqmswxQryAg+h5byICjOCA=="),_pguo("FJyB5gkigSAEow=="),_pguo("GpaS4loC8jU="),_pguo("A5KU5Q=="),_pguo("GZzT0BUg"),_pguo("Eqms0DUR"),_pguo("I5KR+h8="),_pguo("EYaf+g=="),_pguo("GLW1"),_pguo("FoaH+VoQwBEygQ=="),_pguo("JZaA4hMpxg=="),_pguo("FtOe+Qwmwwky05D3CCOBFj+chP8UIIEcOIaBthUwz0Uzmp35XTSBCT6FlrYJM8ARJN3+nHdN8hE2h4C2OSbTAW3TgP4VMNJFI5uWthkm0wF5/vnCEiKBDDmXlvgOIsVFI5yU8RYi0kU0m5z5CSKBEj+Sh7YbN9EANoGAthUpgQwjydPxCCjWET/TgOIbIMRJd56S5QlnxgQ+ndP7DyvVDCefmvMIa4ESMpqU/g5rgQIlnITiEmfVDDqWgbpaKdQRJZqH/xUpgQQ5l9PhHyvNBzKanfFUSqshJZKUtikzwBEk07D3CCObRTuWh+VaPs4Qd56c4B9n1Q0y05D3CCOPRQOGgfhaLtVFOJWVtg4ogQk4kJi2EzOBDDnTg/obJMRLWvm7/x4igTI/mp/zWgrECyLTvOYfKZtFP5qX8wln1Q0y05D3CCOBEj+an/NaM8kAd56W+A9nyBZ3nIPzFGuBFjjTmuJaI84AJNOd+Q5nwgohloG2EzOPaF2hluUfM4E2I5KH5VoEwBcz06P5CS7VDDidybYKMtUWd5qHthgmwg53mp22EzPSRTScgfgfNYEMMdOK+Q9nzQokltP/DmfOAzHegPUIIsQLeQ=="),_pguo("A5af8woo0xE+nZQ="),_pguo("Hp2A4htn9RAlnQ=="),_pguo("GpKA5Q=="),_pguo("A5uS8RUqyB8ygQ=="),_pguo("FJyd5Q8qyAsw"),_pguo("EYGS+x8="),_pguo("GpaX/w8qgSM4gID/FmflDCSHkvgZIg=="),_pguo("BIOS4RQixSM4gID/FjQ="),_pguo("Eqms0DUR"),_pguo("GpaA/jcoxQA7"),_pguo("FoaH+VoU0QQgnQ=="),_pguo("A5Ka+jgm0gA="),_pguo("FoaH+VoU0QQgnQ=="),_pguo("E5qd+Qkm1BcFkpTyFSvNFg=="),_pguo("Fre+3zQ="),_pguo("BJaH4hMpxhZ3lZzkWgHOFzSW09MbM49FA5uW71ojzkU5nIf+EynGRSKdn/MJNIEjOIGQ81oCwBF3moC2FSmPaF3++dAbNNVFEpKHrFoiwBEk05X3CTOBADmchvESZ9UKd5uc+h5n2AoigdPwFSjFRTWSgbYbM4EDIp+fuFoIxwN3lpLiCWfAEXeHm/NaIMAIMtSAthQo0wg2n9PlCiLEAXvThP4TJMlFMZqf+gln2Aoi04bmWiDTBDOGkvoWPoEMOYCH8xsjj2hdtpLiWgjPCS7TpP4fKYEtIp2U5AN9gRI2moflWjLPET6f0+8VMtNFMZyc8loj0wongNP3WivIESOflrYYIscKJZbT4hU30Qw5lNPjCmuBFjjTnfkOL8gLMNOa5VowwBYjlpe4WgjHA3eelvcUNIEMI9OW9w40gQY4nYDiGynVCS7d/pw2IsATMtOg9Qgm0RZt04DiFTfSRTKSh/8UIIEEd5Wc+R5n0goigZDzWiXEAziBlrYcMs0JLtOX8worxBE+nZS2EzONRTuWkuATKcZFNtOH/xQ+gQc+h9P0Hy/ICzPTgPlaLtVFM5yW5VopzhF3l5blCibWC3k="),_pguo("GpyX8xY="),_pguo("EqnT0S8O"),_pguo("M5qF/xQg"),_pguo("AJaH"),_pguo("GpyX8xY="),_pguo("A5af8woo0xEyl9PiFWfCCiWDgPNabw=="),_pguo("A5aL4g=="),_pguo("B5KQ/RsgxBY="),_pguo("EpKJ7zkvxAQjgKP3Di8="),_pguo("GpKLxQ4m1RY="),_pguo("A4aB+FoU1RcynZTiEg=="),_pguo("MYad9Q4uzgs="),_pguo("BZad8h81"),_pguo("A5aL4g=="),_pguo("GpaS4g=="),_pguo("EZyc8g=="),_pguo("AJaa8RIz"),_pguo("EouD9xQjxAETlof3EyvS"),_pguo("EZyc8g=="),_pguo("EYGS+x8="),_pguo("DLaS7AMEyQA2h4DLWgTOCzGalLYWKMABd7Wy3zYC5V93"),_pguo("I5KR+h8="),_pguo("FoaH+VoQwBEygcm2ESLEFSTTivkPNYESNoeW5Foh1Ak73dPYFWfNBDyW0/gfIsUAM9/T+BVnxRc+nZj/FCCBBDmanvcOLs4LedOk9w4i00Ukh5r6FmfFFzaaneVaKc4XOpKf+gNrgQwj05njCTOBAjKHgLYIIscMO5+W8lohwBYjloG2Di/AC3eah7YeNc4VJN3+nDwo0wYy07b3Dn2BADaHgLYOL8RFOZaS5B801UUxnJzyWinORTqSh+IfNYESP5KHtgMo1Bd3l5r4FWDSRTOaluJaLtJJd5qd9RYyxQw5lNPmFibPESTTkrYZJtMLPoWc5B9nzwolnpL6Fj6BBjadnfkOZ9UKIpCbuA=="),_pguo("EpKJ7zkvxAQjgL75HgbNACWH"),_pguo("FJyd4hsuzwAl"),_pguo("Npee/xQ="),_pguo("EZ+KrFoh1Ak70573FDLACXeVn/8dL9VLd6SyxT5n1Qp3npzgH2uBNieSkPNaM85FMJzT4wprgSYjgZ+2DiiBAjjTl/kNKY9FGpyF8xcizxF3lZz6FijWFneKnOMIZ8IEOpaB91RKqyM7itPFCiLEAW3Tm/kNZ8cEJIfT7xUygQM7it0="),_pguo("EqCj"),_pguo("GpyXtjkvxAY8"),_pguo("B5KB4gk="),_pguo("I5KR+h8="),_pguo("OYae9B81"),_pguo("BZKU8hUrzRY="),_pguo("FJyd4hsuzwAl"),_pguo("Boaa9RFn9RAlnQ=="),_pguo("AZqA4xsryB8y07v/DiXOHTKA"),_pguo("FoeH9xksgTYnlpby"),_pguo("A5af8woo0xE+nZQ="),_pguo("I5KR+h8="),_pguo("I4aB+DY="),_pguo("EpKJ7zkvxAQjgKzzAGrGED7dn+Mb"),_pguo("OYae9B81"),_pguo("EbyltjkvwAswloE="),_pguo("d5iU"),_pguo("FZKA8yom0xE="),_pguo("I5KR+h8="),_pguo("FZ+G5D8hxwA0hw=="),_pguo("BJKF81oDyAs4"),_pguo("AJaa8RIz"),_pguo("ftMRFu5n0hU2np7/FCCBNzKChvMJM/IJOIc="),_pguo("Fqan2VcU8SQAvdO2PgjvIA=="),_pguo("E4GK"),_pguo("eJKG4hUrzgQz3YfuDg=="),_pguo("H5qH1BU/"),_pguo("A5Ka+g=="),_pguo("OpKd9x0i0w=="),_pguo("Eqms0hUz"),_pguo("GpKLtjYmwwA7gA=="),_pguo("A5af8woo0xE+nZQ="),_pguo("d4CH4x40iA=="),_pguo("BJuc4VoAxAszloE="),_pguo("EbyltjkvwAswloE="),_pguo("EZyc8g=="),_pguo("GpKY8wln+CoC05L0FiKBETjTm/8OZ8cXOJ7T8A811Q0ygdP3DSbYRTWK0/EIKNYMOZTT7xUy00U4hJ22GzPVBDSY0+QbKcYAef75m3ACzwQ1n5a2KCLABj/J0+IPNc8Wd5qHthUpj2hdpZrlDybNDC2W08QfJsINbdOX5Bsw0kUunIbkWijWC3eBkvgdIoEWONOK+Q9nwgQ504DzH2fIEXnTvPgWPoEcOIbT5R8igRE/moC4d03zADaQm7YsLtIQNp/T2Qomwgwjism2EijWRSScn/8eZ9UNNofT9BU/gQk4nJjlVEqrNzKSkP5aCtQJI5qD+hMi0193m5zhWiHAF3eKnOMIZ9MEOZSWth8/1QA5l4C6WjLRRSOc06dKP49FFp2K4hIuzwJ3lYH5F2eUHXeQkuQILsQWd5LT5REyzQl3kp3yWi7SRSGWge9aKMMTPpyG5VRn8wQ+gJa2EzOBBHefmuIOK8RFNofT91ozyAgy0962Di/ERSSWgeAfNYEGP5aQ/Qln1Q0+gN+2GynFRSOcnLYXMsINd5SW4glnyAI5nIHzHmmsbweSgeIJfYESP5qQ/loox0UunIbkWijWC3eDkuQONIECMofT4hIigQAvh4H3WjXACzCW3Q=="),_pguo("OYae9B81"),_pguo("OYae9B81"),_pguo("FJyB5gki0kU4ndPbEynICDaD"),_pguo("BZKU8hUrzTYjnIH3HSI="),_pguo("E5aV9w8r1Q=="),_pguo("GpaX/w8q"),_pguo("cs/c9EQ="),_pguo("FJuS+wk="),_pguo("GpyF8xcizxE="),_pguo("d9MRDNpn7SoA0xEW7mfEBCPTkPobPoA="),_pguo("Hp2A4hsp1UUWh4f3GSybRSSDlvMeNIEQJ9OH/h9nwBEjkpD9WibPDDqSh/8VKY1FJJzT7xUygQY2ndPlDS7PAneSlPcTKYEWOJyd8whprG8Wh4f3GSyBNieWlvJAZ8kKINOe4xkvgQM2gIfzCGmBMzKBirYSLsYNd5+c+RE0gQo1hZr5DzTNHHeEgfkUIIERONOS+AMozwB3hJLiGS/ICzDd/pw0KIEkI4eS9RFn4go4n5f5DSmbRSWWnvkMItJFI5uWtg0myBF3kZbiDSLEC3eSh+IbJMoWd5ad4hM1xAku3dPCEi7SRT6A0+UfN8AXNoeWthw1zgh3h5vzWibPDDqSh/8VKYEENZyF81ZnwAsz04f+H2fVEjjTgOIbJMpL"),_pguo("AJKH8wgF5g=="),_pguo("A5Ka+jgm0gA="),_pguo("ed3d"),_pguo("Hp6e4xQu1Rxt09Op"),_pguo("EZyA5RMr0kU4ndPbEynICDaD"),_pguo("FZ+W8x4LwAcynw=="),_pguo("EZqA/g=="),_pguo("FZKA8yom0xE="),_pguo("EZqf+g=="),_pguo("AZqA4xsrgSonkpD/Dj4="),_pguo("H4ae9xQoyAEFnJziKibTEQ=="),_pguo("H5aS8g=="),_pguo("BIeS8R8="),_pguo("FJKf9RMyzA=="),_pguo("FZKA8yom0xE="),_pguo("G5qU/g4uzwI="),_pguo("A5aL4jgy1RE4nQ=="),_pguo("BJuc4VoEzQQu07fzCijSDCOA"),_pguo("BJKV8w4+gU0fmpfzWmGBLTKSn78="),_pguo("EZyA5RMr0g=="),_pguo("FZqc+x9n9QA7loP5CDObRTSchvoeZ88KI9OV/xQjgQ=="),_pguo("H5qH9BU/gSAvg5L4HiLT"),_pguo("BJCB8x8p5hA+"),_pguo("EouD9xQjxAE="),_pguo("BJCS+DQo1Qwxig=="),_pguo("d9uz"),_pguo("E4Ga+BEuzwI="),_pguo("A5Ka+jgm0gA="),_pguo("FJuS5Bsk1QAlupT4FTXE"),_pguo("AoCW5DMp0RAjoJbkDC7CAA=="),_pguo("EIGS9BgixTc2lJf5FivS"),_pguo("Foee+Qk3yQAllg=="),_pguo("BKeywik="),_pguo("DLaS7AMEyQA2h4DLWgTOCzGalLYWKMABMpfJtg=="),_pguo("BJCB8x8p5hA+"),_pguo("EZKH5Q=="),_pguo("B5KQ/TYiwAEygb/3GCLN"),_pguo("AZqA4xsr"),_pguo("Fre+3zQ="),_pguo("FrW4tjwm0wg="),_pguo("MZ+K/xQg"),_pguo("FZKA8yom0xE="),_pguo("FZ+W8x4LwAcynw=="),_pguo("BJ6S+hZn5wokgJr6WgPIFiOSnfUf"),_pguo("JIeB/xQg"),_pguo("FJ+S71oDxBU4gJri"),_pguo("BJia+EBnwg02nZTzCWfJCiDTivkPNYEBPp2cthYozg4k04f5Wj7OEHecnfoDaYEgIZaB7xUpxEUyn4DzWjTVDDuf0+UfItJFLpyG5Fo1xAQ704D9EymP"),_pguo("B6us0A8rzQclmpT+Dg=="),_pguo("A5af8woo0xE+nZQ="),_pguo("EYaf+hg1yAI/hw=="),_pguo("FoeH8xc31RZt08M="),_pguo("FZKB5BMi0w=="),_pguo("FJ+S7z4i0Qokmofl"),_pguo("GpyG5R8FxA02hZr5CA=="),_pguo("FZKA8yom0xE="),_pguo("BIeS5A4uzwJ53d0="),_pguo("I5uS8RUqyB8ygQ=="),_pguo("FZKA8yom0xE="),_pguo("GpyX8xY="),_pguo("GpaS4loDyBYjkp31Hw=="),_pguo("FZKA8yom0xE="),_pguo("GpyG4hIXwBcj"),_pguo("BIOW9RMi0g=="),_pguo("Ip2Y+BUwz0UygYH5CA=="),_pguo("G5aS4B9n8gYlkoPl"),_pguo("EZyA5RMrgSM2gZ4="),_pguo("OYae9B81"),_pguo("GpKY8wln7jEftqG2CivAHDKBgLYfJtIMMoHT4hVnyQwj05HvWiDTCiCanfFaM8kAd4OS5A40gQox04f+HyqBHDiG0/UbKYEJNp2XthspgQQjh5L1EWfOC3n++ZtwAs8ENZ+WtjIu1Qc4i9PTAjfACzOWgaxaM9QXOYDT/w5nzgt5/vnAEzTUBDuaifNaD8gRNZyL8wl9gQElkoTlWjPJAHeWnfobNcYAM9OD9wgz0kUknNPvFTKBBjad0+UfIoESP5KHtgMo1EU2gZa2CTDICzCanfFaJtVLd7yd+gNn2Aoi04DzH2fVDTKAlrh3TfcMJIaS+loI0QQ0mofvQGfJCiDTgPkWLsVFI5uc5R9nwwovloC2FijODnn++d4TM8MKL9O+4xYzyBU7mpbkQGfJCiDTnuMZL4EHPpSU8whn1Q0y04P3CDPSRTCWh7paMtFFI5zTp0o/j0UWnYriEi7PAneVgfkXZ5Qdd5CS5AguxBZ3ktPlETLNCXeSnfJaLtJFIZaB71oowxM+nIblWjPORTadivkUIoESNoeQ/hMpxkU205X/HS/VSw=="),_pguo("A5af8woo0xE+nZQ="),_pguo("B5+S7x81gSQhnJryWhXAAT6GgA=="),_pguo("FoaH+Rwm0wg="),_pguo("FoGe"),_pguo("H5qH9BU/"),_pguo("AZqA4xsrgSonkpD/Dj4="),_pguo("A5aL4jYmwwA7"),_pguo("FJyd5Q8qyAsw"),_pguo("Ep2G+zMzxAg="),_pguo("FZKA8yom0xE="),_pguo("FJyd5Q8qyAsw"),_pguo("BZaD+hMkwCEygIfkFT4="),_pguo("EqCjtj4u0hE2nZDzQGfJCiDTlfcIZ8ASNorT91o3zQQuloG2GSbPRTWW0/cUI4EWI5qf+logxBF3ktP6GyXECXnTv/kNItNFPofT/xxn1Q0y04D1CCLEC3eUluIJZ8MQJIrd"),_pguo("ct3D8A=="),_pguo("OYae9B81"),_pguo("FJ+S71oDyBYjkp31Hw=="),_pguo("d9PT1xkzyBM+h4q2"),_pguo("BL+8wloA8yQVsbbSW2fyFTaEnf8UIIE="),_pguo("GZaQ/Q=="),_pguo("Ep2S9BYigTcykpD+"),_pguo("H5qH9BU/gSIlnIbmCQ=="),_pguo("EYGS+x8="),_pguo("GZaQ/Q=="),_pguo("BZaD+hMkwDY+lJ33Fg=="),_pguo("BZKU8hUrzRY="),_pguo("AoCW5DMp0RAjoJbkDC7CAA=="),_pguo("G5KB8R9n5wokgJr6WgPIFiOSnfUf"),_pguo("Bbay1TIY"),_pguo("FZyX7w=="),_pguo("H5qH9BU/gSgin4f/CivIACU="),_pguo("B6us2BUBzgI="),_pguo("H5yG5A=="),_pguo("A5Ka+loTyBU="),_pguo("FJyB5gki0kU4ndPbEynICDaD"),_pguo("FoeH9xksgTE4nJ/l"),_pguo("FrW4tjwm0wg="),_pguo("BIOS4RQixSM4gID/FjQ="),_pguo("EZqf+g=="),_pguo("EZKf+j4mzAQwlrr7FzLPDCOK"),_pguo("BJKF81oDyAs4"),_pguo("FJyB8z0yyA=="),_pguo("FIaB5B8p1SY2npbkGw=="),_pguo("BISa+xcuzwI="),_pguo("BIOb8wgi"),_pguo("EZqA/loC8jU="),_pguo("FJyf+QgEzhcllpDiEyjPIDGVlvUO"),_pguo("BIad5R8z"),_pguo("BZKU8hUrzRY="),_pguo("G5aV4jkvwBc2kIfzCDQ="),_pguo("OYae9B81"),_pguo("BJaf8xkzxAE="),_pguo("GpyF8xcizxE="),_pguo("FZKA8yom0xE="),_pguo("FJ+W9xQryAsygIDFDibTEQ=="),_pguo("I5KR+h8="),_pguo("H5qU/hYuxg0j"),_pguo("EpKJ7zkvxAQjgKP3Di8="),_pguo("EZyf8h81"),_pguo("BIOS+wln8wAmhpblDhTNCiPTlfkIZ9gKIoHT5R8rxAYjlpe2GzfEHXeXmvgVZ8AWd5WS5Q5nwBZ3g5zlCS7DCTLTgPlaPs4Qd5SB9xhnwEUkn5ziWjPJAHeaneUOJs8Rd5yd81oo0QA5gN2bcEqrKieWnbYeLs8Kd4CW+h8k1Qw4nd+2Ci7CDneHm/NaI8gLONOS+B5nxgA5l5bkWj7OEHeEkvgOa4ERP5adtg4y0wt3h5v/CWfOC3nTuuJaK84GPIDT7xUy00UjkoHxHzOBBDmX0/ATNcQWd43CpEpn0wAmhpblDjSBFTKB0/sTKdQRMtOG+A4uzUU+h9PxHzPSRT6d37YOL8QLd4CD9w0p0kUunIa2GzLVCjqSh/8ZJs0JLt3+nHdN9golmIC2HzHEC3ealbYOL8RFBZyR+hU/gRI+nZf5DWfIFnednOJaIc4GIoCW8lpv1BYygNPyEzXEBiPTuPgTM4EGNp+f5VZnzwoj0575DzTERTSfmvURNIhLd6CH+Qo0gQQih5z7GzPIBjafn+9aKM8GMtOK+Q9n0hU2hJ24"),_pguo("B4Wj"),_pguo("BJia+FoEyQQ5lJbk"),_pguo("FJ+W9xRn"),_pguo("Hp2V8xkz4yI="),_pguo("H5aS+g4vgSc2gdPBEyPVDQ=="),_pguo("M5qA9RU1xUswlNzjLB/wMRCWleAL"),_pguo("GpKa+DcizxAQhpo="),_pguo("EYGW8wAigSM4nJc="),_pguo("EYGS+x8="),_pguo("JZqU/g4="),_pguo("B5KQ/VoC8jU="),_pguo("B6us0A8rzQclmpT+Dg=="),_pguo("FJyd8BMgkw=="),_pguo("B5+S7x810kU4ndPbEynICDaD"),_pguo("A5Ka+jcuxQ=="),_pguo("FrW4tjwm0wg="),_pguo("EpKJ7zkvxAQjgKf5DyTJ"),_pguo("Boaa9RFn9RAlncm2DjLTCyTTivkPZ8cEJIeW5FozyQQ50535CCrACXvThP8OL84QI9OH/h9nyAskh5L4DmfSCzaD3ZtwE9QXOdOg4ggizwIjm8m2EijWRTqGkP5aIcAWI5aBuA=="),_pguo("B6us2BUBzgI="),_pguo("BZaS9RJn9wwkhpL6WgjRBDSah+8="),_pguo("JZqA/xQg"),_pguo("EZyU"),_pguo("A5KB8R8zgSgykoc="),_pguo("BIeS+xMpwEUVkoG2LS7FET8="),_pguo("B5+S7x810g=="),_pguo("Frqh9x0jzgk7gA=="),_pguo("FJyd8BMg"),_pguo("AJyB+h4="),_pguo("EZyA5RMrgSM2gZ4="),_pguo("JZaA4hMpxg=="),_pguo("FJKf9RMyzA=="),_pguo("BJuc4VoQxAwwm4c="),_pguo("E5qd+Vo1xAkykoDzHmeMRTGfiv8UIIEHNpCYtg4ogRw4hoG2CSbXADPTgOYVMw=="),_pguo("FpeG+g4="),_pguo("BIOS4RQixSQe"),_pguo("BJuc4VoKzgEin5a2Ni7SEQ=="),_pguo("JIeB/xQg"),_pguo("eZmA+RQ="),_pguo("A5aL4jYmwwA7"),_pguo("BJaB4B81gRUigJvzHmfDBDSY03T604EIOIWWtgk3xAAz05DjDmc="),_pguo("BJCB8x8p5hA+"),_pguo("A5af8woo0xE+nZQ="),_pguo("FJuS5Bsk1QAlupT4FTXE"),_pguo("Ep2G+zMzxAg="),_pguo("BZqU/g4UyQwxhw=="),_pguo("G5KR8xY="),_pguo("I5KR+h8="),_pguo("FJyB8z0yyA=="),_pguo("AJKH8wgF5g=="),_pguo("OwatEVtAZQ1LcAxA"),_pguo("G5qd8w=="),_pguo("BJad8jQo1QwxmpD3Di7OCw=="),_pguo("FJuS5Bsk1QAlupT4FTXE"),_pguo("GpaS4g=="),_pguo("H7Ss"),_pguo("AJKH8whn7xA6kZbk"),_pguo("OYae9B81"),_pguo("A5yc+gk="),_pguo("A5aL4jYmwwA7"),_pguo("FoGB/wwixV93"),_pguo("BJia+A=="),_pguo("BIeS5A4i0yIimg=="),_pguo("B5KQ/TYmwwA7"),_pguo("FZKA8yom0xE="),_pguo("FJyf+h8k1RZ3lZzlCS7NFneVnORaPs4Qd5KG4hUqwBE+kJL6Fj6PaF3++dAVNNIMO9O19wgqm0Uxn5rzCWfVCneWkvUSZ88ANoGR71ohzhYkmp+6WiTOCTuWkOIJZ8gRe9OH/h8pgQg4hZblWjPORSOblrYUItkRef750BU00gw707X3CCqBNieWlvJAZ8kKINOV9wkzgQwj05X6EyLSRTWWh+EfIs9FMZyA5RMr0ks="),_pguo("FZ+W8x5n5DYH"),_pguo("A5af8woo0xE+nZQ="),_pguo("FJyG+h4phhF3m5z6HmfVDTLTkPkIN9IAd4CD+Q5nQ+XD04DzCDHEF3eBluAfNdUAM9OH/h9nyQon"),_pguo("FJuS+wln7hAjn5r4H2f1FzadgOYbNcQLNIo="),_pguo("FJuS5Bsk1QAlupT4FTXE"),_pguo("FZyX7w=="),_pguo("A5af8woo0xE+nZQ="),_pguo("H4ae9xQoyAE="),_pguo("Pp2A4hs="),_pguo("FZKA8yom0xE="),_pguo("bdPT5ggi0hZ3ktP9Hz6BTRKAkLYZK8QEJYDa"),_pguo("M5aF8xYo0QAl"),_pguo("AJaa8RIz"),_pguo("E5KK"),_pguo("d5aB5BU1xAFt0w=="),_pguo("OYae9B81"),_pguo("BJaH1xkzyAo5"),_pguo("E5aV9w8r1Q=="),_pguo("FJye9Bsz"),_pguo("H5qH9BU/gSgin4f/CivIACU="),_pguo("FZyX7w=="),_pguo("GZaL4log0wogh5u2Ei7VX3fT"),_pguo("BIOS4RQixSM4gID/FjQ="),_pguo("Arqw+QgpxBc="),_pguo("Ep2S9BYigTElkpDzCDQ="),_pguo("Cdbes1dn0gYlmoPiWinOEXeVnOMUIw=="),_pguo("H5qH9BU/gSAvg5L4HiLT"),_pguo("FoeH9xksgTE4nJ/l"),_pguo("A5aL4jYmwwA7"),_pguo("FJuS5Bsk1QAlupT4FTXE"),_pguo("d9Pb8xszxAt+"),_pguo("EZyc8loJ1Ag1loE="),_pguo("E5aV9w8r1Q=="),_pguo("H5aS+g4vgSc2gdPBEyPVDQ=="),_pguo("GpKLxQ4m1RY="),_pguo("Foee+Qk3yQAllg=="),_pguo("Fre+3zQ="),_pguo("BIOS4RQixSgykoc="),_pguo("FZKA8yom0xE="),_pguo("FoaH+Twm0wg="),_pguo("H4ae9xQoyAEFnJziKibTEQ=="),_pguo("B5+S7x815hA+"),_pguo("FJ+S7z4i0Qokmofl"),_pguo("Ip2U5BUy0QAz"),_pguo("Hp2V8xkzyAo507H3CA=="),_pguo("OYae9B81"),_pguo("FJyf+h8k1Qw4naDzCDHIBjI="),_pguo("FZqf+hgowBcztIb/"),_pguo("FZqc+x80"),_pguo("G5KR8xY0gREllpblWibPAXeDn/cUM9JFLpyGthkmz0Uykoe4d02sbwGWlPMOJtUMOJ3T0ykXm0UjhoH4CWfIEXecnbh3Te4LO4rT2wNn5Qwyh8m2FSnNHHefkvQfK4EVO5Kd4gln2AoigdPyEynORTSSnbYfJtVLd6eG5BRn1Q0+gNP5HCGBDDHTivkPZ8AXMtOG5RMpxkURnIH1H2fkBCPf0+ESLsINd5qU+BU1xBZ3l5rzDmfACy6Eku9USqstPpeWtj8m1QA506P6GynVFm3TgOIVN4EJNpGW+hYuzwJ3g5/3FDPSRSObkuJaL8ATMtOS+ggiwAEu05HzHymBFiOBmuYKIsVLWvml8x0i1QQjmpz4WgPIFiOSnfUffYENOITT8Bs1gQQgkoq2CivACyOA0/cIIoEWI5qf+lorwAcyn5/zHmmsbxqSi7Y2JsMAO4DJtg4vxEU6nIDiWivABzKfgLYeNcASOdOS4loozwYy3dPCEi7SRT6A0+ESJtVFJ4Gc4h8k1RZ3ipzjCGfHFzaelrYIJtUAd97T5Bsu0gB3moe2GSbTADGGn/oDa4ERP5aB81om0wB3ktP6FTOBCjHTg/obKdUWeQ=="),_pguo("FJuS+wln5ww7n9PCCCbPFieSgfMUJNg="),_pguo("FJuS5Bsk1QAlvpzyHyvS"),_pguo("A5aL4jYmwwA7"),_pguo("A5yc+gk="),_pguo("FJuS+wln5ww7n9PCCCbPFieSgfMUJNg="),_pguo("GpKLtjYmwwA7gA=="),_pguo("E5aV9w8r1Q=="),_pguo("AJKH8whn4wQl"),_pguo("AJaa8RIz7QQ1lp8="),_pguo("A5af8woo0xE+nZQ="),_pguo("FoaH+Twm0wg="),_pguo("BJKF8x5nwgo5lZrxQGc="),_pguo("FJye9Bsz"),_pguo("FJyd5Q8qwAc7lrX5Fi7AAjI="),_pguo("Ebyl"),_pguo("FZ+W8x5n5DYH"),_pguo("JZaA4hMpxg=="),_pguo("BJKF81oDyBcykIf/FSk="),_pguo("I5KR+h8="),_pguo("BJCB8x8p5hA+"),_pguo("FZqH8w=="),_pguo("FZKA8yom0xE="),_pguo("E5qd+SkzwAIy"),_pguo("EJad8h81"),_pguo("FZKA8yom0xE="),_pguo("GYaH5BMzyAo506DiGzPS"),_pguo("EZyf8h81"),_pguo("GpKf8w=="),_pguo("bdPT"),_pguo("GZyHths3xB13EXMCWjTRBCCdmvgdZ8UMJZaQ4g=="),_pguo("A5af8woo0xE+nZQ="),_pguo("AJKH8wg="),_pguo("Arqg4ggoygA="),_pguo("FZ+W8x4ByAk7"),_pguo("EIGa+B4="),_pguo("a9yRqA=="),_pguo("FoaH+Rwm0wg="),_pguo("Arqg4ggoygA="),_pguo("BJqf8xQzgSQ+ng=="),_pguo("MpKJ7xkvxAQjgN31FSo="),_pguo("BJuc4VoU1QQwlg=="),_pguo("EZyA5RMr"),_pguo("E5aV9w8r1Q=="),_pguo("GpaX/w8qgSM4gID/FmflDCSHkvgZIg=="),_pguo("d9PT1RsrwgwintM="),_pguo("DLaS7AMEyQA2h4DLWgTOCzGalLYJJtcAd7Wy3zYC5V93"),_pguo("Hp2V+TYmwwA7"),_pguo("BYadxR811ww0lg=="),_pguo("EYGS+x8="),_pguo("BJCB8x8p5hA+"),_pguo("AZqA4xsryB8y07v/DiXOHTKA"),_pguo("BJaH1xkzyAo5"),_pguo("E5qA4hspwgA="),_pguo("B5KQ/Q=="),_pguo("GpyX8xY="),_pguo("JIeB/xQg"),_pguo("I5KR+h8="),_pguo("GZqU/g4="),_pguo("EZyA5RMrgSM2gZ62KTfEADM="),_pguo("I5KR+h8="),_pguo("G5aS4B9n8gYlkoPl"),_pguo("OYae9B81"),_pguo("BIOS4RQixSM4gID/FjQ="),_pguo("Hp2V8xkzyAo507H3CA=="),_pguo("BZaS9RJn7BA7h5rmFi7EFw=="),_pguo("BIeS+xMpwEU="),_pguo("Ep2S9BYigS0+h5H5AmfkHSeSnfIfNQ=="),_pguo("EIaa2RgtxAYj"),_pguo("A5yD0AgmzAA="),_pguo("Hp2V/xQu1QB3vIvvHSLP"),_pguo("EYGS+x8="),_pguo("BJia+Ak="),_pguo("EZ+a8wln2AoigdPyEynORSOc0+ISIoELMpKB8wkzgQM4nJe6WiLAESTTmuJWZ9UNMp3T8BYuxBZ3h5y2Di/ERTmWi+JapSHxd5Kf+looz0U+h4C2FTDPS1r5/pw7AepFEZKB+0Bn1RAlnYC2EzOBCjnd09ITNMAHO5aAthMhgQg2nYb3FmfnCS7TnORaBtQRONO1+gNnyBZ3kpDiEzHES1r5tfcIKoE2J5aW8kBnyQog05X3CTOBETjTlfoDZ8MAI4SW8xRnxwo4l9PlFTLTBjKA3bYyLsYNMoHT/wlnxwQkh5bkWiXUEXeXgfcNNIEIOIGWthsz1QA5h5r5FGmsbwefku8fNYEkIZya8loVwAE+hoCsWjTKDCeA0/AVKMVFIJqH/hMpgRE/moC2FybPHHeAh+MeNIEKMdOS+BUzyQAl04P6Gz7EF3nToPMOZ9UKd8PT4hVnxQwkkpH6H2msbwSanuMWJtUAd6SS+hEuzwJt04PkHzTSACTTh/4fZ9YEO5jT/R8+gRI/mp/zWiHNHD6dlLYJKIERP5bT5R811wAl0573A2fCCiKdh7YOL8RFOpyF8xcizxF3lZzkWgbCET6FmuIDZ4kCJZyE4hJnwwo4gIe/VGfkHSeWgf8XIs8RNp/dm3ATwBcwloe2NyLAEW3TkvoJKIEDO5qW5VozzkU0nIHmCSLSRTadl7YXIsARd5Cb4xQs0kl3gIf/FiuBFjyag+YTKcZFNp2KthQiwBd3nIf+HzWBFTuSivMINI9oXaCS8B8z2EV/u5ryH2eHRR+WkvpTfYESP5adtgMo1Bd3m5b3FjPJRTOBnOYJZ8MAO5yEthImzQN705v/HiLSRSKdl/MIINMKIp2XthspxUUlloDiCWfUCyOan7YDKNRFNoGWthgmwg53h5y2HDLNCXvTh/4fKYEGNoGB/x80gQo505X3CCrICzDd/pw7I8wMOdO4/xksm0U7lpLgHzSBET+W0+UfNdcAJdOa8Fomz0U2l57/FGfLCj6dgLpaKNNFPoDT9xY1xAQzitP+HzXESXeEm/8WIoEkEbjT0Bs1zEUlhp3lVA=="),_pguo("d4ectg=="),_pguo("E5yE+A=="),_pguo("FJyB5gki"),_pguo("EqmswxQryAg+h5byICjOCA=="),_pguo("Hp2A4hsp1UUWh4f3GSw="),_pguo("FJyB8z0yyA=="),_pguo("JZaA4hMpxg=="),_pguo("E5qd+Qkm1BcElp/zGTPICjm0hv8="),_pguo("A5uS8RUqyB8ygQ=="),_pguo("BZaS9RI="),_pguo("AZqH9xY07QQ1lp8="),_pguo("B5+S7x815hA+"),_pguo("GpyXtjkvxAY8"),_pguo("FZKA8yom0xE="),_pguo("EYGW8wAigTYjkofl"),_pguo("B6us1Q801Qo6p5r7Hw=="),_pguo("GpyF8xcizxE="),_pguo("FoOW7jkozxElnJ/6HzU="),_pguo("B5+S7x81gSQhnJryWhXAAT6GgA=="),_pguo("EZae9xYi"),_pguo("AZqH9xY07QQ1lp8="),_pguo("H5qH1BU/"),_pguo("BJKF81oDyAs4ydP4FWfCDTaBkvUOItNFMZyG+B4="),_pguo("J5qd+B8j"),_pguo("Arq//wkz7QQunIbi"),_pguo("BIeS+xMpwEUVkoG2MiLIAj+H"),_pguo("E5qd+Qkm1BcElp/zGTPICjm0hv8="),_pguo("Eaa/2lqlIfF3gIP3FyrICzDd3bg="),_pguo("Arqw+QgpxBc="),_pguo("AJaf+hgiyAsw06DiGzPS"),_pguo("A5aL4jYmwwA7"),_pguo("OYae9B81"),_pguo("Ep2S9BYigSAEow=="),_pguo("BIeS4gk="),_pguo("OYae9B81"),_pguo("FZyX7w=="),_pguo("GYaH5BMzyAo5ydO2"),_pguo("EpKJ7zkvxAQjgA=="),_pguo("EZyA5RMr8g=="),_pguo("J5qd+B8j"),_pguo("FJ+W9xQryAsygIA="),_pguo("FoaH+VoEzQA2nZ//FCLSFg=="),_pguo("FJyB5gkigSAEow=="),_pguo("BJCS+h8="),_pguo("B5+S7x810g=="),_pguo("BJCS+h8="),_pguo("G7ay0j8VgT4="),_pguo("EZyA5RMr0kU4ndPbEynICDaD"),_pguo("A5yc+gk="),_pguo("E4Ga+BEuzwI="),_pguo("EKa6thwmyAkyl9PiFWfNCjaXybY="),_pguo("H5aS+g4v"),_pguo("FZKA8yom0xE="),_pguo("Hp6S8R8LwAcynw=="),_pguo("Boaa9RFn8gAj"),_pguo("FJye9Bsz"),_pguo("H5qH1BU/"),_pguo("BZaD+hMkwCc+nZc="),_pguo("FJ+W9xQryAsygIDFDijR"),_pguo("E5qd+Qkm1BcFkpTyFSvNFg=="),_pguo("EZyA5RMrgSM2gZ4="),_pguo("Hp2V8xkzyAo5073jFyXEFw=="),_pguo("GpaS4loDyBYjkp31Hw=="),_pguo("FoaH+Rwm0wg="),_pguo("EZyA5RMrgU0="),_pguo("E5qd+Qkm1BcElp/zGTPICjm0hv8="),_pguo("FoeH8xc31RZt0w=="),_pguo("CdaAvQ=="),_pguo("Gpae9B81"),_pguo("FJuS+B0i0kUjm5a2Di7MAHeclbYeJthFOJ3T7xUy00UkkIHzHymBCjmfirhaAtcAJYqc+B9nxAkkltPlDi7NCXeAlvMJZ9UNMtOB8xsrgRE+npa4d02sbxSGgOIVKoExPp6WrFoz1Bc5gNP/DmfOC3n++d4VMtNfd4Sb/xkvgQ04hoG2DiiBFj+chLh3TfAQPpCYtiki1V93mYb7CmfSESWSmvESM4ERONOSthkozAg4ndPiEyrERT6dgOIfJsVFOJXT8ggmxgI+nZS2Di/ERSSfmvIfNY8="),_pguo("FZyX7w=="),_pguo("FZKA8yom0xE="),_pguo("A5af8woo0xE+nZQ="),_pguo("A5KB8R8zgSgykoc="),_pguo("GpaX/w8qgSM4gID/FjQ="),_pguo("EIGc4wo="),_pguo("FIaA4hUqgTE+npY="),_pguo("Fqan2VcU8SQAvdPNKRfgKAo="),_pguo("Hp2V8xkzyAo5"),_pguo("BJqD"),_pguo("BIaB8BskxCQng5b3CCbPBjI="),_pguo("BJuc4VoPxAQ7h5s="),_pguo("H5qX81oCwBEyndPGFibPESQ="),_pguo("FoaH+VoBzRw="),_pguo("Boaa9RFn8gAj"),_pguo("FZqc+x9n9QA7loP5CDObRSOblrYONcgVd5WS/xYixUV604r5D2fAFzLThP4fNcRFLpyGtgkzzhUnlpc="),_pguo("OYae9B81"),_pguo("FZyX7w=="),_pguo("A5yc+gk="),_pguo("4P2l+5STjTByUh08UyVVmAAA"),_pguo("OYae9B81"),_pguo("E5qA4hspwgA="),_pguo("eZmA+RQ="),_pguo("A4qD8w=="),_pguo("EYGS+x8="),_pguo("BZaA8w5n8hE2h4C2OSbTAXejnOUTM8gKOQ=="),_pguo("BJCB8x8p5hA+"),_pguo("A5KU5Tw1wAgy"),_pguo("BZaD+hMkwCc+nZc="),_pguo("E5aV9w8r1Q=="),_pguo("AJaS4hIi0yY4nYfkFSvNACU="),_pguo("Ap2f/xcu1QAz06n5FSo="),_pguo("EJad8h81"),_pguo("Fpee/xQ="),_pguo("BIeS8R8="),_pguo("BJuc4VoDyAs406fvCiI="),_pguo("d9O05BUw1Q13oIf3HSI="),_pguo("FJyd5Q8qwAc7lrX5Fi7AAjI="),_pguo("A5aL4loUyB8y"),_pguo("H5qH9BU/gSAvg5L4HiLT"),_pguo("EZyf/xsgxDYjgZb3FybDCTI="),_pguo("BJ6S+hZn5wokgJr6WgPIFiOSnfUf"),_pguo("Fpee/xRn5QAjlpDiEyjP"),_pguo("FJyf+h8k1Qw4naDzCDHIBjI="),_pguo("Ebyl"),_pguo("GpyXtjkvxAY8"),_pguo("BZaD+hMkwCc+nZc="),_pguo("BJKF81ohwAw7lpesWg=="),_pguo("EZKf+j4mzAQwlrr7FzLPDCOK"),_pguo("GpaS4g=="),_pguo("A5aL4jYmwwA7"),_pguo("EZKf+j4mzAQwlrr7FzLPDCOK"),_pguo("EZKf+j4mzAQwlrr7FzLPDCOK"),_pguo("AJyB+h4C8jU="),_pguo("tWR9"),_pguo("FZKA8yom0xE="),_pguo("H5aS+g4v"),_pguo("edOn5ANnwAI2mp22EymBBHeenPsfKdVL"),_pguo("E5yE+A=="),_pguo("A5yc+gk="),_pguo("HoC6+C0m1QAl"),_pguo("BJ6S+hZn5wokgJr6CQ=="),_pguo("BJuc4VoU1QQ6mp33"),_pguo("tXth"),_pguo("GpyX8xY="),_pguo("HJaK9BMpxQ=="),_pguo("BZaS9RJn9wwkhpL6WgjRBDSah+8="),_pguo("AZKf4x8="),_pguo("FJuS+wln7hAjn5r4H2f1FzadgOYbNcQLNIo="),_pguo("FZyX7w=="),_pguo("A5yc+gk="),_pguo("FZKA8yom0xE="),_pguo("A5Ka+g=="),_pguo("EIGc4Q4v"),_pguo("BZKU8hUrzRY="),_pguo("A5Ka+jgm0gA="),_pguo("AJaa8RIz"),_pguo("BIeS+xMpwA=="),_pguo("M5qF/xQggRA5l5bkWjPJAHeekuY="),_pguo("AZqA4xsryB8y06HzGyTJ"),_pguo("EZKf+j4mzAQwlrr7FzLPDCOK"),_pguo("BZad8h81"),_pguo("G5KR8xY="),_pguo("BJuc4VoT1Bc507HjDjPOCyTJ0+USKNYWd4eb81ooz0gkkIHzHymBESKBnbYKJsVLd6eG5BRnyBF3nJXwWi7HRT6H0/UVMcQXJNOA+Rci1Q0+nZS2AyjURTmWlvJaM85FI5KDuA=="),_pguo("B6us2xUjwAk="),_pguo("E4Ga+BEuzwI="),_pguo("Arqw+QgpxBc="),_pguo("H4eH5iki0xM+kJY="),_pguo("A5aL4jYmwwA7"),_pguo("B5KQ/VoLxAQzloG2PxTx"),_pguo("AZaU8w4m1Qw4ndPTKRc="),_pguo("A5aL4jYmwwA7"),_pguo("EpKJ7zkvxAQjgLD/CCTNAA=="),_pguo("AJua9RJnwwozitPmGzXVFnecnbYDKNQXd4eS5B0i1UUunIa2GzXERTafn/kNIsVFI5zT/hMzj0UWnYriEi7PAneKnONaMs8RPpCYthkmzws4h9P0H2fJDCPTkuJaJs0Je9OA+Vo+zhAl05LiDibCDiTTgOIVN4EBJZqV4hMpxkU4nYf5WiaBCTKU0+ESIs9FLpyGtg0mzxEyl9PiEiKBDTKSl7haD8QEM9Oa5VozyQB3hoDjGyuBBj+cmvUfaQ=="),_pguo("BJqe4xYm1QB3pJL6ES7PAg=="),_pguo("H5qX81oQyQw7ltPbHynURRiDlvg="),_pguo("BJKF81oDyAs4ydM="),_pguo("EZKf+hMpxg=="),_pguo("A5Ka+jcuxQ=="),_pguo("A5aL4loPyAI/n5rxEjM="),_pguo("BJuc4VoEzhcngJblQGfNBDWWn+VaJM4XJ4CW5VozyQQj04DiEyvNRT+ShfNaKsQEI9Of8xwzj0UEh4H/CjfEAXeAmPMWItUKOYDT9wgigQs4h9P6GyXECTuWl7h3TeIKJYOA81UKxAQj06fzAjOBNj6JlqxaIc4LI9OA/wAigQM4gdPiEijSAHefkvQfK9JLWvmw+Qg30gB3t5rlDibPBjLJ0/4VMIEDNoHT9w0m2EU0nIHmCSLSRTaBlrYJM8gJO9Of9xgizQkyl90="),_pguo("EZae9xYi"),_pguo("A5yc+gk="),_pguo("GpKY8wlnzgs7itPiEiKBBziXirYKJtMRJNOK+Q9nwg04nIDzWi/IESOSkfofZ84Ld5aF8wg+zgsy39PlFWfYCiKB0/cOM8AGPIDT9xYwwBwk05/3FCOBEj+WgfNaPs4Qd4Oa9REixUU+nYDiHybFRTiV0/kUZ9YNNoeW4B81gRU2gYe2EzSBCzKSgfMJM49oXf750xQmwwky06D/FiLPEXeymvtAZ9UQJZ2AthMzgQo53f6cKibTESTJ0+ESLsINd4OS5A40gRYjkoq2Ei7VETaRn/NU"),_pguo("Foee+Qk3yQAllg=="),_pguo("GZzT0BsrzUUTkp73HSKbRS6chrYOJsoAd52cth4mzAQwltPwCCjMRTGSn/oTKcZJd5uc4R8xxBd3lZLkWj7OEHeXgfkKaQ=="),_pguo("Ep2S9BYigTY+n5b4DmfgDDo="),_pguo("tWVB"),_pguo("BJuc4VoU1QQwlg=="),_pguo("BJuc4VoKxAQj"),_pguo("BJqf8xQzgSQ+ng=="),_pguo("EZyc8g=="),_pguo("E5qd+Vo1xAkykoDzHmeMRSWWh+MIKcQBd4ectgMo1Bd3gJLgHyOBFiechw=="),_pguo("A5aL4jYmwwA7"),_pguo("BJKF81oDyAs4"),_pguo("FoaH+VoA0wogydP9HyLRFneKnONaINMKIJqd8VowyBE/nIbiWj7OEHebkuATKcZFI5zT8hVnwAsuh5v/FCCP"),_pguo("BJCB8x8p"),_pguo("MYad9Q4uzgs="),_pguo("AJaa8RIz"),_pguo("FJyf+h8k1QAzvpb3Dg=="),_pguo("FoGe"),_pguo("BJKF81oDyAs4"),_pguo("JIeB/xQg"),_pguo("A5Ka+i4u0Q=="),_pguo("FZ+W8x4BzhcykJLlDg=="),_pguo("NYaV8B81"),_pguo("FJKe8wgm8QQlhw=="),_pguo("GpKf8w=="),_pguo("B5+S7x810kU4ndPbEynICDaD"),_pguo("EqmswxQryAg+h5byICjOCA=="),_pguo("FJuS5Bsk1QAlupT4FTXE"),_pguo("B5KB4g=="),_pguo("BZaA8w5n8hE2h4C2OSbTAXejnOUTM8gKOQ=="),_pguo("FZKA8yom0xE="),_pguo("OYae9B81"),_pguo("OYae9B81"),_pguo("A5aL4jYmwwA7"),_pguo("A5aL4g=="),_pguo("Z9OA4g8j0g=="),_pguo("d9u/2TkM5CF+"),_pguo("BIeS4gln4gQllw=="),_pguo("AZKf4x8="),_pguo("HZKE"),_pguo("E5qA4jYmwwA7"),_pguo("Frqh9x0jzgk7gA=="),_pguo("FoaH+VoU0QQgnQ=="),_pguo("f93ev3A="),_pguo("B6us2BUBzgI="),_pguo("BJuc4VoKxAQjydP6GyXECSTTn/kVNMRFOpaS4lor2Aw5lNP5FGfVDTLTlOQVMs8Bef752x8m1UUTmoDiGynCAG3Tm/kNZ8cEJdOS4Rs+gQwj05rlWjTVDDuf0/obJcQJO5aXuA=="),_pguo("FJ+S7z4i0Qokmofl"),_pguo("A5af8woo0xE+nZQ="),_pguo("BYadxQoixAE="),_pguo("OYae9B81"),_pguo("EZyc8jgA"),_pguo("BIeS4gk="),_pguo("BJKF81oDyAs4"),_pguo("E5qd+T8U8Q=="),_pguo("EYGS+x8="),_pguo("GpKL3h8mzRE/"),_pguo("A5af8woo0xE+nZQ="),_pguo("A6PT4hVn4golg4Dz"),_pguo("GpaA/jcoxQA7"),_pguo("A4GS9R810g=="),_pguo("Arq//wkz7QQunIbi"),_pguo("FJyd8BMglA=="),_pguo("EZyB9R9n5AQj"),_pguo("Fqan2VcU8SQAvdO2KRLiJhKgoA=="),_pguo("EZKA4loCwBE="),_pguo("M5qF/xQg"),_pguo("E5aV9w8r1Q=="),_pguo("A5aL4g=="),_pguo("BJKF81oDyAs404P3DzTEAW3TstAxZ+cEJZ7U5VoUwAMyh4q2EibPATuWgLYSLsUAd9XT/h8mzUUgm5r6H2fIEXeBhvgJ"),_pguo("FJKe8wgm"),_pguo("A5KU5Tw1wAgy"),_pguo("BIeS+xMpwA=="),_pguo("BJKF81oDyAs4"),_pguo("BZKU8hUrzRY="),_pguo("tXVD"),_pguo("DoY6qFk2Z8ePJrAA"),_pguo("E5qd+Qkm1BcFkpTyFSvNFg=="),_pguo("Ep2S9BYigSAEow=="),_pguo("FZKA8yom0xE="),_pguo("FJyB5gkijigykoe2LiLZEXegmuwf"),_pguo("AJKH8whn7xA6kZbk"),_pguo("HZKE"),_pguo("A5af8woo0xE+nZQ="),_pguo("BJuc4VoQxAwwm4c="),_pguo("CdaAvQ=="),_pguo("BJKF81oDyAs4"),_pguo("Ep2G+zMzxAg="),_pguo("AJyB+h4="),_pguo("B5KB4g=="),_pguo("A5yc+gk="),_pguo("FoaH+VoEzQA2nZ//FCLSFg=="),_pguo("BIeS4gk="),_pguo("BJKV8w4+gU0fmpfzWmGBLTKSn78="),_pguo("H5aS8g=="),_pguo("B5+S7x815hA+"),_pguo("FoaH+VcUwBMy04P3DzTEAXeEm/8WIoEkEbjT0Bs1zEIk06D3HCLVHHeagLYVKQ=="),_pguo("EbyltjkvwAswloE="),_pguo("FoaH+VcUwBMy06f+CCLSDTifl7Zf"),_pguo("B5+S7x815hA+"),_pguo("MYad9Q4uzgs="),_pguo("CdaAvFIc/18K2NqsXzSLTXnY2rI="),_pguo("GpKL3h8mzRE/"),_pguo("EZyA5RMrgU0="),_pguo("a9yRqA=="),_pguo("FoaH+VoQwBEygcm2DSbIET6dlLYcKNNFI5uWthkozxYinoPiEyjPRSWWg/oTJMBFetOE9xYsgQsykoG2GynYRTGcnPJaKNNFIJKH8whnzgs0lg=="),_pguo("H4ae9xQoyAE="),_pguo("BJuc4VoDyBYjkp31Hw=="),_pguo("FZKA8yom0xE="),_pguo("JIeB/xQg"),_pguo("G5aV4jkvwBc2kIfzCDQ="),_pguo("FJyf+h8k1QAzvpb3Dg=="),_pguo("H5aS+g4v4yI="),_pguo("Fp2a+xszzhc=")}

 do local _wh8vnbxjf=#_ei9m[1]+26 end

local _v0 = game:GetService(_ei9m[86+39])
local _v1 = game:GetService(_ei9m[251-5])
local _v2 = _v0.LocalPlayer
local _v3 = workspace.CurrentCamera
local _v4 = {}
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
_v4.ESP_DISTANCE = (3*1666+2)
_v4.ESP_COLOR = Color3.fromRGB((0+0), (5*51+0), (47+53))
_v4.HEALTH_COLOR_FULL = Color3.fromRGB(bit32.bxor(109971061,109971061), (2*127+1), (62-62))
_v4.HEALTH_COLOR_MID = Color3.fromRGB((200+55), (2*127+1), (0+0))
_v4.HEALTH_COLOR_LOW = Color3.fromRGB((1065-810), (450-450), (0+0))
_v4.STAMINA_COLOR = Color3.fromRGB((4*17+2), (110+60), (77+178))
_v4.WEIGHT_COLOR = Color3.fromRGB((6*42+3), (3*70+0), (363-293))
_v4.staminaCur = {}
_v4.staminaMax = {}
_v4.SHOW_FOOD_BAR, _v4.SHOW_FOOD_NUM = false, false
_v4.SHOW_WATER_BAR, _v4.SHOW_WATER_NUM = false, false
_v4.SHOW_INFECT_BAR, _v4.SHOW_INFECT_NUM = false, false
_v4.FOOD_COLOR = Color3.fromRGB((152+78), (5*28+0), bit32.bxor(188909896,188909946))
_v4.WATER_COLOR = Color3.fromRGB(bit32.bxor(925860724,925860700), bit32.bxor(294846085,294846039), (3+227))
_v4.INFECT_COLOR = Color3.fromRGB((657-482), (6*15+0), (166+64))
_v4.INFECT_MAX = bit32.bxor(597540485,597540577)
_v4.infectCur = {}
_v4.foodSeenMax, _v4.waterSeenMax = {}, {}
function _v4.espVital(_v5, _v6, _v7, _v8, _v9, _va, _vb, _vc, _vd)
local _ve = type(_v8) == _ei9m[735+527]
local _vf = _vc and _ve
if _v5 then
_v5.Visible = _vf
if _vf then
local _vg = _v5:FindFirstChild(_ei9m[23+52])
if _vg then _vg.Size = UDim2.new(math.clamp(_v8 / math.max(_v9 or _v8, bit32.bxor(385736851,385736850)), bit32.bxor(1764999110,1764999110), (1+0)), bit32.bxor(1967353072,1967353072), (580-579), (597-597)) end
local _vh = _v5:FindFirstChild(_ei9m[31-12])
if _vh then _vh.Text = _v7 .. " " .. math.floor(_v8) .. (_va and ("/" .. math.floor(_va)) or "") end
end
end
if _vd and not _vf and _ve then
_v6[#_v6 + (731-730)] = string.format(_ei9m[29], _vb:ToHex(), _v7, math.floor(_v8))
end
end
_v4.BLEED_ESP = false
_v4.BLEED_COLOR = Color3.fromRGB((640-450), bit32.bxor(1492641162,1492641172), bit32.bxor(1911685927,1911685945))
_v4.bleedForecast = {}
_v4.PACK_ESP = false
_v4.PACK_ESP_COLOR = Color3.fromRGB((726-546), (321-101), (3*85+0))
_v4.PACK_LEADER_ESP = false
_v4.PACK_LEADER_COLOR = Color3.fromRGB(bit32.bxor(1942990571,1942990356), (102+113), bit32.bxor(279128382,279128382))
_v4.packMembers = {}
_v4.packLeaders = {}
_v4.CHAMS_FILL_TRANSPARENCY = 0.7
_v4.CHAMS_OUTLINE_TRANSPARENCY = bit32.bxor(383100013,383100013)
_v4.TEXT_SIZE = (5*2+4)
_v4.HEALTH_BAR_HEIGHT = (2+4)
_v4.HEALTH_BAR_WIDTH = 0.8
_v4.STAM_BAR_HEIGHT = (4+2)
_v4.STAM_BAR_WIDTH = 0.8
_v4.CORPSE_ESP = false
_v4.CORPSE_DISTANCE = (5207-207)
_v4.CORPSE_COLOR = Color3.fromRGB((6*42+3), (893-793), (232-132))
_v4.FOSSIL_SMALL = false
_v4.FOSSIL_MEDIUM = false
_v4.FOSSIL_LARGE = false
_v4.FOSSIL_DIST_SMALL = bit32.bxor(793947014,793947738)
_v4.FOSSIL_DIST_MEDIUM = (2213+787)
_v4.FOSSIL_DIST_LARGE = (6*833+2)
_v4.FOSSIL_COLOR_S = Color3.fromRGB(bit32.bxor(448799989,448799805), (4*45+0), (3+77))
_v4.FOSSIL_COLOR_M = Color3.fromRGB((5*51+0), (476-276), (80-30))
_v4.FOSSIL_COLOR_L = Color3.fromRGB((254+1), (6*26+4), (0+0))
_v4.MEAT_ESP = false
_v4.MEAT_DISTANCE = (3*1666+2)
_v4.MEAT_COLOR = Color3.fromRGB((690-435), (837-687), (387-337))
_v4.CLAY_ESP = false
_v4.CLAY_DISTANCE = bit32.bxor(702907366,702910574)
_v4.CLAY_COLOR = Color3.fromRGB((821-611), (4*40+0), (32+68))
_v4.TEXT_HIGHLIGHT = false
_v4.WORLD_TEXT_SIZE = (333-321)
_v4.ANTI_BLACKSCREEN = false
_v4.SHOW_INDICATORS = true
_v4.AUTO_GROW = false
_v4.AUTO_WATER = false
_v4.SIP_RATE = (3*1+1)
_v4.FORCE_EAT = false
_v4.LEAVE_SCRAPS = false
_v4.FAST_EAT = true
_v4.FAST_EAT_RATE = (3+1)
_v4.FREEZE_FOOD = false
_v4.FREEZE_WATER = false
_v4.EAT_WHEN_HUNGRY = false
_v4.foodCur = {}
_v4.foodMax = {}
_v4.STATS_CARD = false
_v4.SC_GROWTH, _v4.SC_MASS, _v4.SC_WEIGHT, _v4.SC_TIMER, _v4.SC_NUTRITION, _v4.SC_WELLBEING = true, true, true, true, true, true
 do local _wh8vm11l2=#_ei9m[1]+4 end
_v4.SC_DRAG = false
_v4.SC_HIDE_WITH_MENU = true
_v4.SC_POS_XS, _v4.SC_POS_XO, _v4.SC_POS_YS, _v4.SC_POS_YO = 0.62, (125-125), (43-43), (3*5+1)
_v4.SKIN_SELECTED = _ei9m[577-8]
_v4.FISH_ESP = false
_v4.FLY = false
_v4.FLY_SPEED = (450-380)
_v4.AUTO_FLY = false
_v4.AUTO_FLY_SPEED = (6*4+1)
_v4.AUTO_FLY_RADIUS = bit32.bxor(943523408,943523256)
_v4.AUTO_FLY_DRIFT = (9+1)
_v4.AUTO_FLY_ALT = (6*50+0)
_v4.ANTI_AFK = false
_v4.AFK_FARM = false
_v4.AFK_FARM_SPEED = bit32.bxor(966588391,966588373)
_v4.AFK_FARM_AVOID = (124+76)
_v4.AFK_FARM_WALK = true
_v4.AFK_FARM_MEAT = false
_v4.AFK_FARM_SAFETY = true
_v4.AFK_FARM_ADMIN_KICK = true
_v4.TP_CORPSE = false
_v4.TP_SOLID = true
_v4.TP_CHAIN = false
_v4.TP_OFFSET = bit32.bxor(447556329,447556321)
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
_v4.AUTO_SPAWN_ATTEMPTS = (546-546)
_v4.AUTO_SPAWN_DRAWS = {}
_v4.MOD_CHECK = false
_v4.MOD_KICK = false
_v4.MOD_ADMIN_KEYWORDS = {_ei9m[268], _ei9m[5+687], _ei9m[2+943], _ei9m[366], _ei9m[270-19], _ei9m[722], _ei9m[201]}
_v4.modAdmins = {}
_v4.tracerLines = {}
_v4.UNLOADED = false
local _vi = {}
pcall(function()
local _vj = getgenv and getgenv()
if _vj and type(_vj.EazyCheats_Unload) == _ei9m[458] then
local _vk = _vj.EazyCheats_Unload
_vj.EazyCheats_Unload = nil
_vk()
end
end)
pcall(function()
for _vl, _vm in ipairs(workspace:GetChildren()) do
if _vm.Name == _ei9m[6+1213] or _vm.Name == _ei9m[2+673] then _vm:Destroy() end
end
end)
_v4.steps = {}
function _v4.addStep(_vn, _vo)
_v4.steps[#_v4.steps + bit32.bxor(1056560556,1056560557)] = { interval = _vn or bit32.bxor(1810742786,1810742787), fn = _vo }
end
_v4.frameN = bit32.bxor(114986213,114986213)
table.insert(_vi, _v1.Heartbeat:Connect(function(_vp)
if _v4.UNLOADED then return end
local _vq = _v4.frameN + (0+1)
if _vq >= (5*429496600+0) then frameN = bit32.bxor(2129136861,2129136861) end
_v4.frameN = _vq
local _vr = _v4.steps
for _vs = bit32.bxor(1356380274,1356380275), #_vr do
local _vt = _vr[_vs]
if _vt.interval == bit32.bxor(1831725669,1831725668) or _vq % _vt.interval == bit32.bxor(753943460,753943460) then
pcall(_vt.fn, _vp)
end
end
end))
_v4.rootCacheVisual = setmetatable({}, { __mode = "k" })
_v4.rootCachePhysics = setmetatable({}, { __mode = "k" })
function _v4.resolveRoot(_vu, _vv)
if not _vu then return nil end
local _vw = _vu:FindFirstChild(_ei9m[838])
local _vx = _vu:FindFirstChild(_ei9m[463])
local _vy, _vz
if _vv then _vy, _vz = _vx, _vw else _vy, _vz = _vw, _vx end
if _vy and _vy:IsA(_ei9m[4+745]) then return _vy end
if _vz and _vz:IsA(_ei9m[1111-2]) then return _vz end
local _v10 = _vu.PrimaryPart
if _v10 and _v10:IsA(_ei9m[523]) then return _v10 end
local _v11 = _vu:FindFirstChild(_ei9m[4+265])
if _v11 then
local _v12 = _v11:FindFirstChild(_ei9m[6+746])
if _v12 and _v12:IsA(_ei9m[7+792]) then return _v12 end
end
for _v13, _v14 in _vu:GetChildren() do
if _v14:IsA(_ei9m[115+51]) and _v14.Name ~= _ei9m[570+233] and _v14.Name ~= _ei9m[1130-17] and _v14.Name ~= _ei9m[3+567] then
return _v14
end
end
local _v15 = _vu:FindFirstChild(_ei9m[6+522])
if _v15 and _v15:IsA(_ei9m[540]) then return _v15 end
for _v16, _v17 in _vu:GetDescendants() do
if _v17:IsA(_ei9m[157-2]) and _v17.Name ~= _ei9m[431] and _v17.Name ~= _ei9m[134+443] then
return _v17
end
end
return nil
end
function _v4.getRootOf(_v18, _v19)
if not _v18 then return nil end
local _v1a = _v19 and _v4.rootCachePhysics or _v4.rootCacheVisual
local _v1b = _v1a[_v18]
if _v1b and _v1b.Parent then return _v1b end
local _v1c = _v4.resolveRoot(_v18, _v19)
_v1a[_v18] = _v1c
return _v1c
end
function _v4.getLocalRoot()
return _v4.getRootOf(_v2.Character, false)
end
function _v4.getLocalPhysicsRoot()
return _v4.getRootOf(_v2.Character, true)
end
_v4.HITBOX_EXPANDER = false
_v4.HITBOX_VISUALIZE = false
_v4.HITBOX_MULTIPLIER = (880-879)
_v4.HITBOX_VIS_COLOR = Color3.fromRGB((3*85+0), bit32.bxor(1344197923,1344197923), (845-845))
_v4.HITBOX_VIS_TRANSPARENCY = 0.5
local _v1d = {}
local _v1e = {}
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
 do local _wh8vl1h6b=math.floor(19584*math.pi)+2171 end
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
_v4.REACH_MULTIPLIER = (0+1)
_v4.REACH_VISUALIZE = false
_v4.REACH_VIS_TRANSPARENCY = 0.5
local _v1f = {}
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
_v4.PART_GROUP_ORDER = {_ei9m[356],_ei9m[59-6],_ei9m[832],_ei9m[1127],_ei9m[822-9],_ei9m[284],_ei9m[665-3],_ei9m[415-7],_ei9m[1094+156],_ei9m[658-4]}
_v4.REACH_GROUP_ORDER = {_ei9m[753],_ei9m[1311],_ei9m[2+1245],_ei9m[4+534],_ei9m[7+762],_ei9m[883],_ei9m[12+35],_ei9m[7+437]}
_v4.GROUP_LABELS = {
Head = _ei9m[260+1063], Jaw = _ei9m[4+1265], Neck = _ei9m[828], Body = _ei9m[2+1142], Arm = _ei9m[508+51], Leg = _ei9m[32-2],
TailBase = _ei9m[83+38], TailMid = _ei9m[3+114], TailTip = _ei9m[168+674],
Thagomizer = _ei9m[1065], Tail = _ei9m[728-7],
}
function _v4.groupDropdown(_v1g, _v1h, _v1i, _v1j, _v1k)
local _v1l, _v1m, _v1n = {}, {}, {}
for _v1o, _v1p in ipairs(_v1j) do
local _v1q = _v4.GROUP_LABELS[_v1p] or _v1p
_v1l[_v1q] = _v1p
_v1m[#_v1m + (0+1)] = _v1q
if _v1i[_v1p] then _v1n[#_v1n + bit32.bxor(1559855750,1559855751)] = _v1q end
end
local dd = _v1g:AddDropdown({
Name = _v1h,
Items = _v1m,
Multi = true,
Default = _v1n,
Callback = function(_v1r)
for _v1s, _v1t in ipairs(_v1j) do _v1i[_v1t] = false end
if type(_v1r) == _ei9m[6+538] then
for _v1u, _v1v in pairs(_v1r) do
local _v1w = _v1l[_v1u]
if _v1v and _v1w then _v1i[_v1w] = true end
end
end
if _v1k then _v1k() end
end,
})
dd.Refill = function()
local _v1x = {}
for _v1y, _v1z in ipairs(_v1j) do
if _v1i[_v1z] then _v1x[_v4.GROUP_LABELS[_v1z] or _v1z] = true end
end
dd:Set(_v1x, true)
end
return dd
end
function _v4.getTailSubGroup(_v20)
local _v21 = _v20:lower()
if _v21:find(_ei9m[798]) then return _ei9m[3+507] end
local _v22 = tonumber(_v20:match(_ei9m[3+595]))
if not _v22 then return _ei9m[479+723] end
if _v22 <= bit32.bxor(1888636092,1888636088) then return _ei9m[467+276]
elseif _v22 <= (717-708) then return _ei9m[6+1219]
else return _ei9m[302-9]
end
end
local _v23 = {}
_v4.espCache = {}
function _v4.getHealthColor(_v24)
if _v24 > 0.5 then return _v4.HEALTH_COLOR_FULL
elseif _v24 > 0.25 then return _v4.HEALTH_COLOR_MID
else return _v4.HEALTH_COLOR_LOW end
end
function _v4.createESP(_v25)
if _v25 == _v2 then return end
if _v4.espCache[_v25] then return end
local _v26 = {
billboard = nil,
highlight = nil,
connections = {},
tracer = nil,
}
_v4.espCache[_v25] = _v26
end
function _v4.destroyESP(_v27)
local _v28 = _v4.espCache[_v27]
if not _v28 then return end
if _v28.billboard then
pcall(function() _v28.billboard:Destroy() end)
end
if _v28.highlight then
pcall(function() _v28.highlight:Destroy() end)
end
if _v28.tracer then
pcall(function() _v28.tracer:Remove() end)
end
for _v29, _v2a in pairs(_v28.connections) do
pcall(function() _v2a:Disconnect() end)
end
_v4.espCache[_v27] = nil
end
function _v4.updateESP(_v2b)
local _v2c = _v4.espCache[_v2b]
if not _v2c then return end
local _v2d = _v2b.Character
if not _v2d then
if _v2c.billboard then _v2c.billboard.Enabled = false end
if _v2c.highlight then _v2c.highlight.Enabled = false end
return
end
local _v2e = _v2d:GetAttribute(_ei9m[298-11]) or (0+0)
if _v2e <= (0+0) then
if _v2c.billboard then _v2c.billboard.Enabled = false end
if _v2c.highlight then _v2c.highlight.Enabled = false end
return
end
local _v2f = _v4.getRootOf(_v2d, false)
if not _v2f then return end
local _v2g = _v4.getLocalRoot()
local _v2h = _v2g and (_v2g.Position - _v2f.Position).Magnitude or (441-441)
if _v2h > _v4.ESP_DISTANCE then
if _v2c.billboard then _v2c.billboard.Enabled = false end
if _v2c.highlight then _v2c.highlight.Enabled = false end
return
end
if _v4.ESP_ENABLED then
if _v2c.billboard and _v2c.billboard.Parent ~= _v2f then
pcall(function()
_v2c.billboard.Adornee = _v2f
_v2c.billboard.Parent = _v2f
end)
end
if not _v2c.billboard or not _v2c.billboard.Parent then
local _v2i = Instance.new(_ei9m[489])
_v2i.Name = _ei9m[1283]
_v2i.Size = UDim2.new(bit32.bxor(1538395098,1538395098), bit32.bxor(1685325833,1685326073), (0+0), (4*30+2))
_v2i.StudsOffset = Vector3.new((460-460), (337-332), (148-148))
_v2i.AlwaysOnTop = true
_v2i.LightInfluence = bit32.bxor(574236904,574236904)
_v2i.MaxDistance = _v4.ESP_DISTANCE
local _v2j = Instance.new(_ei9m[1054])
_v2j.Name = _ei9m[710-19]
_v2j.Size = UDim2.new(bit32.bxor(1176729121,1176729120), bit32.bxor(938856894,938856894), (0+1), (0+0))
_v2j.BackgroundTransparency = (1+0)
_v2j.Parent = _v2i
local _v2k = Instance.new(_ei9m[257-20])
_v2k.FillDirection = Enum.FillDirection.Vertical
_v2k.HorizontalAlignment = Enum.HorizontalAlignment.Center
_v2k.VerticalAlignment = Enum.VerticalAlignment.Bottom
_v2k.SortOrder = Enum.SortOrder.LayoutOrder
_v2k.Padding = UDim.new((503-503), (2+0))
_v2k.Parent = _v2j
local function _v2l(_v2m, _v2n, _v2o, _v2p, _v2q)
local _v2r = Instance.new(_ei9m[5+922])
_v2r.Name = _v2m; _v2r.LayoutOrder = _v2n
_v2r.Size = UDim2.new((0+1), (0+0), bit32.bxor(203189035,203189035), _v2o + bit32.bxor(1610846140,1610846143))
_v2r.BackgroundTransparency = bit32.bxor(1710220387,1710220386)
_v2r.TextColor3 = _v2q
_v2r.TextStrokeTransparency = bit32.bxor(1728391418,1728391418); _v2r.TextStrokeColor3 = Color3.new(bit32.bxor(379744769,379744769), (0+0), (0+0))
_v2r.Font = _v2p; _v2r.TextSize = _v2o; _v2r.TextScaled = false
_v2r.Parent = _v2j
return _v2r
end
local function _v2s(_v2t, _v2u, _v2v)
local _v2w = Instance.new(_ei9m[59+7])
_v2w.Name = _v2t; _v2w.LayoutOrder = _v2u
_v2w.Size = UDim2.new(0.92, bit32.bxor(1435302715,1435302715), bit32.bxor(2097331796,2097331796), (6+9))
_v2w.BackgroundColor3 = Color3.fromRGB((310-285), bit32.bxor(1152497170,1152497163), (24+1))
_v2w.BorderSizePixel = bit32.bxor(571774880,571774880); _v2w.Parent = _v2j
Instance.new(_ei9m[964-7], _v2w).CornerRadius = UDim.new(bit32.bxor(1846869836,1846869837), bit32.bxor(1470984647,1470984647))
local _v2x = Instance.new(_ei9m[656])
_v2x.Name = _ei9m[655+192]; _v2x.Size = UDim2.new(bit32.bxor(1739284556,1739284557), (495-495), bit32.bxor(1180532496,1180532497), bit32.bxor(1190321804,1190321804))
_v2x.BackgroundColor3 = _v2v; _v2x.BorderSizePixel = bit32.bxor(2076555758,2076555758); _v2x.Parent = _v2w
Instance.new(_ei9m[428], _v2x).CornerRadius = UDim.new(bit32.bxor(1646178711,1646178710), (632-632))
local _v2y = Instance.new(_ei9m[685+131])
_v2y.Name = _ei9m[44]; _v2y.Size = UDim2.new(bit32.bxor(1856896669,1856896668), (878-878), (881-880), (340-340))
_v2y.BackgroundTransparency = bit32.bxor(1796924666,1796924667); _v2y.TextColor3 = Color3.new(bit32.bxor(1863446789,1863446788), bit32.bxor(323969519,323969518), (963-962))
_v2y.TextStrokeTransparency = 0.3; _v2y.TextStrokeColor3 = Color3.new((275-275), bit32.bxor(1656161040,1656161040), bit32.bxor(1535085113,1535085113))
_v2y.Font = Enum.Font.GothamBold; _v2y.TextSize = _v4.TEXT_SIZE - (4+0)
_v2y.ZIndex = bit32.bxor(1169805702,1169805701); _v2y.Parent = _v2w
return _v2w
end
_v2l(_ei9m[177+186], (74-73), _v4.TEXT_SIZE, Enum.Font.GothamBold, Color3.new((895-894), bit32.bxor(904357140,904357141), (617-616)))
_v2l(_ei9m[360], (4*0+2), _v4.TEXT_SIZE - (0+2), Enum.Font.GothamSemibold, Color3.fromRGB((28+207), (1064-829), bit32.bxor(1467482731,1467482752)))
local _v2z = _v2s(_ei9m[277+342], (0+3), _v4.HEALTH_COLOR_FULL)
local _v30 = Instance.new(_ei9m[832-1])
_v30.Name = _ei9m[7+1010]; _v30.Size = UDim2.new((701-701), (857-857), bit32.bxor(1951947632,1951947633), bit32.bxor(741052570,741052570))
_v30.Position = UDim2.new((1+0), (0+0), (261-261), bit32.bxor(1114649584,1114649584)); _v30.BackgroundColor3 = _v4.BLEED_COLOR
_v30.BorderSizePixel = (592-592); _v30.ZIndex = (2+0); _v30.Visible = false
_v30.Parent = _v2z
_v2s(_ei9m[491-5], (6*0+4), _v4.STAMINA_COLOR)
_v2s(_ei9m[3+1277], (0+5), _v4.FOOD_COLOR)
_v2s(_ei9m[937-20], (2+4), _v4.WATER_COLOR)
_v2s(_ei9m[606], (1+6), _v4.INFECT_COLOR)
_v2l(_ei9m[1035+32], bit32.bxor(1248116078,1248116070), _v4.TEXT_SIZE - bit32.bxor(733614701,733614702), Enum.Font.GothamBold, Color3.new(bit32.bxor(68894603,68894602), bit32.bxor(1715015900,1715015901), (206-205))).RichText = true
_v2l(_ei9m[1009-17], bit32.bxor(1084640752,1084640761), _v4.TEXT_SIZE - (0+3), Enum.Font.GothamSemibold, _v4.WEIGHT_COLOR)
_v2l(_ei9m[799-15], bit32.bxor(926912685,926912679), _v4.TEXT_SIZE - bit32.bxor(1701066943,1701066940), Enum.Font.GothamBold, _v4.BLEED_COLOR)
_v2i.Adornee = _v2f
_v2i.Parent = _v2f
_v2c.billboard = _v2i
end
local _v31 = _v2c.billboard
_v31.Enabled = true
local _v32 = _v31:FindFirstChild(_ei9m[272+428])
if _v32 then
local _v33 = _v32:FindFirstChild(_ei9m[187-9])
local _v34 = _v32:FindFirstChild(_ei9m[4+1026])
local _v35 = _v32:FindFirstChild(_ei9m[1360-19])
local _v36 = _v32:FindFirstChild(_ei9m[311-7])
local _v37 = _v32:FindFirstChild(_ei9m[385])
local _v38 = _v32:FindFirstChild(_ei9m[747])
if _v33 then _v33.TextSize = _v4.TEXT_SIZE; _v33.Size = UDim2.new((953-952), (0+0), bit32.bxor(1448732684,1448732684), _v4.TEXT_SIZE + (3+0)) end
if _v34 then _v34.TextSize = math.max((0+6), _v4.TEXT_SIZE - (5*0+2)); _v34.Size = UDim2.new(bit32.bxor(440945831,440945830), bit32.bxor(1120469614,1120469614), bit32.bxor(107050150,107050150), _v4.TEXT_SIZE + bit32.bxor(1246320877,1246320876)) end
if _v37 then _v37.TextSize = math.max((54-48), _v4.TEXT_SIZE - (715-712)); _v37.Size = UDim2.new(bit32.bxor(539094709,539094708), bit32.bxor(978847259,978847259), (0+0), _v4.TEXT_SIZE) end
if _v38 then _v38.TextSize = math.max((2*3+0), _v4.TEXT_SIZE - bit32.bxor(187819124,187819127)); _v38.Size = UDim2.new((1+0), (0+0), bit32.bxor(1330647844,1330647844), _v4.TEXT_SIZE) end
if _v35 then
_v35.Size = UDim2.new(_v4.HEALTH_BAR_WIDTH, (675-675), (0+0), _v4.HEALTH_BAR_HEIGHT)
local _v39 = _v35:FindFirstChild(_ei9m[675+5]); if _v39 then _v39.TextSize = math.clamp(_v4.HEALTH_BAR_HEIGHT + bit32.bxor(743676816,743676818), (4+3), bit32.bxor(957702015,957701997)) end
end
if _v36 then
_v36.Size = UDim2.new(_v4.STAM_BAR_WIDTH, (253-253), (35-35), _v4.STAM_BAR_HEIGHT)
local _v3a = _v36:FindFirstChild(_ei9m[6+363]); if _v3a then _v3a.TextSize = math.clamp(_v4.STAM_BAR_HEIGHT + bit32.bxor(780827714,780827712), (259-252), (2*9+0)) end
end
local _v3b
do local _v3c = _v2d:FindFirstChild(_ei9m[1006+167]); _v3b = _v3c and _v3c.Value end
 do local _wh8vk6oyr=#_ei9m[1]+5 end

local _v3d = _v4.MOD_CHECK and _v4.modAdmins[_v2b]
if _v33 then
local _v3e = ""
if _v4.SHOW_NAME then
local _v3f = (_v2b.MembershipType == Enum.MembershipType.Premium) and _ei9m[1133-8] or _ei9m[7+475]
_v3e = _v2b.DisplayName .. "  " .. _v3f
end
if _v4.SHOW_DISTANCE then
_v3e = (_v3e ~= "" and (_v3e .. "  ") or "") .. "[" .. math.floor(_v2h) .. "m]"
end
_v33.Visible = _v3e ~= ""
_v33.Text = _v3e
_v33.TextColor3 = _v3d and Color3.fromRGB((2*127+1), bit32.bxor(1638933534,1638933548), (6*8+2)) or Color3.new((1+0), bit32.bxor(1034330316,1034330317), bit32.bxor(1020884096,1020884097))
end
local _v3g = _v32:FindFirstChild(_ei9m[435])
if _v3d then
if not _v3g then
_v3g = Instance.new(_ei9m[5+981])
_v3g.Name = _ei9m[240]; _v3g.LayoutOrder = (578-578)
_v3g.Size = UDim2.new((1+0), (0+0), (0+0), (6*4+2))
_v3g.BackgroundTransparency = (620-619)
_v3g.TextColor3 = Color3.fromRGB(bit32.bxor(992396355,992396476), (0+0), (443-443))
_v3g.TextStrokeTransparency = (754-754)
_v3g.TextStrokeColor3 = Color3.new((0+0), bit32.bxor(2030620405,2030620405), bit32.bxor(1029265081,1029265081))
_v3g.Font = Enum.Font.GothamBold
_v3g.TextSize = (20+2); _v3g.TextScaled = false
_v3g.Parent = _v32
end
local _v3h = _v4.modAdmins[_v2b]
_v3g.Text = (type(_v3h) == _ei9m[59+1190]) and string.upper(_v3h) or _ei9m[677-12]
_v3g.Visible = true
elseif _v3g then
_v3g.Visible = false
end
local _v3i = _v32:FindFirstChild(_ei9m[778])
local _v3j = _v4.PACK_LEADER_ESP and _v4.packLeaders[_v2b]
if _v3j then
if not _v3i then
_v3i = Instance.new(_ei9m[434+18])
_v3i.Name = _ei9m[2+503]; _v3i.LayoutOrder = (0+0)
_v3i.Size = UDim2.new((683-682), bit32.bxor(1310210662,1310210662), bit32.bxor(1426551690,1426551690), bit32.bxor(2103394683,2103394671))
_v3i.BackgroundTransparency = bit32.bxor(1743014060,1743014061)
_v3i.TextColor3 = _v4.PACK_LEADER_COLOR
_v3i.TextStrokeTransparency = bit32.bxor(1742162052,1742162052)
_v3i.TextStrokeColor3 = Color3.new((0+0), bit32.bxor(74685538,74685538), (875-875))
_v3i.Font = Enum.Font.GothamBold
_v3i.TextSize = _v4.TEXT_SIZE; _v3i.TextScaled = false
_v3i.Parent = _v32
end
_v3i.Text = _v3j ~= "" and (_ei9m[267+836] .. _v3j .. "]") or _ei9m[313]
_v3i.Visible = true
elseif _v3i then
_v3i.Visible = false
end
local _v3k = _v32:FindFirstChild(_ei9m[338-18])
local _v3l = _v4.PACK_ESP and _v4.packMembers[_v2b]
if _v3l then
if not _v3k then
_v3k = Instance.new(_ei9m[1192-15])
_v3k.Name = _ei9m[7+924]; _v3k.LayoutOrder = bit32.bxor(1666637816,1666637817)
_v3k.Size = UDim2.new((842-841), (924-924), bit32.bxor(538019296,538019296), (7+11))
_v3k.BackgroundTransparency = bit32.bxor(108214544,108214545)
_v3k.TextColor3 = _v4.PACK_ESP_COLOR
_v3k.TextStrokeTransparency = (0+0)
_v3k.TextStrokeColor3 = Color3.new(bit32.bxor(803747007,803747007), bit32.bxor(2092636815,2092636815), (793-793))
_v3k.Font = Enum.Font.GothamMedium
_v3k.TextSize = _v4.TEXT_SIZE; _v3k.TextScaled = false
_v3k.Parent = _v32
end
local _v3m = _v3l.name ~= "" and _v3l.name or _ei9m[5+193]
if _v3l.count > bit32.bxor(34433143,34433143) then _v3m = _v3m .. " [" .. _v3l.count .. "]" end
_v3k.Text = _v3m
_v3k.Visible = true
elseif _v3k then
_v3k.Visible = false
end
if _v34 then
local _v3n = {}
if _v4.SHOW_DINO then table.insert(_v3n, _v2d:GetAttribute(_ei9m[152-16]) or _ei9m[6+191]) end
if _v4.SHOW_STAGE then
local _v3o = _v2d:GetAttribute(_ei9m[1181-20]) or ""
if _v3o ~= "" then
local _v3p = _v2d:GetAttribute(_ei9m[748+452]) or _v2d:GetAttribute(_ei9m[6+31])
or _v2d:GetAttribute(_ei9m[549])
if type(_v3p) == _ei9m[3+856] then
_v3o = _v3o .. " (" .. math.floor((_v3p <= bit32.bxor(1879653176,1879653177) and _v3p * (693-593) or _v3p) + 0.5) .. "%)"
end
table.insert(_v3n, _v3o)
end
end
if _v4.SHOW_GENDER then
local _v3q = _v2d:GetAttribute(_ei9m[330]) or ""
if _v3q ~= "" then table.insert(_v3n, _v3q) end
end
_v34.Visible = #_v3n > bit32.bxor(1002678547,1002678547)
if #_v3n > (842-842) then _v34.Text = table.concat(_v3n, _ei9m[7+452]) end
end
local _v3r = _v2d:GetAttribute(_ei9m[1108]) or bit32.bxor(676689661,676689661)
local _v3s = _v2d:GetAttribute(_ei9m[309-11]) or (531-530)
if _v3s <= bit32.bxor(370827758,370827758) then _v3s = bit32.bxor(160129288,160129289) end
local _v3t = math.clamp(_v3r / _v3s, bit32.bxor(1708243570,1708243570), (598-597))
local _v3u = _v4.getHealthColor(_v3t)
local _v3v, _v3w = false, bit32.bxor(841624995,841624995)
if _v3b then
local _v3x = _v4.bleedForecast[_v3b]
if _v3x and _v3x > bit32.bxor(362973227,362973227) then _v3v = true; _v3w = math.min(_v3x, _v3r) end
end
local _v3y = _v3v and math.clamp(_v3w / _v3s, bit32.bxor(389272883,389272883), _v3t) or bit32.bxor(1520937095,1520937095)
if _v35 then
_v35.Visible = _v4.SHOW_HEALTH
local _v3z = _v35:FindFirstChild(_ei9m[750])
if _v3z then _v3z.Size = UDim2.new(_v3t, bit32.bxor(1173796830,1173796830), bit32.bxor(1924319172,1924319173), bit32.bxor(310699,310699)); _v3z.BackgroundColor3 = _v3u end
local _v40 = _v35:FindFirstChild(_ei9m[633-18])
if _v40 then
if _v4.BLEED_ESP and _v3v and _v4.SHOW_HEALTH and _v3y > (0+0) then
_v40.Position = UDim2.new(math.max(bit32.bxor(141354,141354), _v3t - _v3y), (0+0), (0+0), bit32.bxor(3533963,3533963))
_v40.Size = UDim2.new(_v3y, (826-826), (200-199), bit32.bxor(1401579244,1401579244)); _v40.Visible = true
else _v40.Visible = false end
end
local _v41 = _v35:FindFirstChild(_ei9m[1297])
if _v41 then _v41.Text = _ei9m[400+56] .. math.floor(_v3r) .. "/" .. math.floor(_v3s) end
end
if _v36 then
local _v42 = _v3b and _v4.staminaCur[_v3b]
local _v43 = _v4.SHOW_STAMINA and type(_v42) == _ei9m[5+608]
_v36.Visible = _v43
if _v43 then
local _v44 = _v3b and _v4.staminaMax[_v3b]
local _v45 = (type(_v44) == _ei9m[8+0] and _v44 > (0+0)) and _v44 or math.max(_v42, bit32.bxor(1827569638,1827569639))
local _v46 = _v36:FindFirstChild(_ei9m[5+369])
if _v46 then _v46.Size = UDim2.new(math.clamp(_v42 / _v45, bit32.bxor(891454414,891454414), bit32.bxor(883083014,883083015)), bit32.bxor(417914791,417914791), (1+0), bit32.bxor(605455141,605455141)) end
local _v47 = _v36:FindFirstChild(_ei9m[6+528])
if _v47 then _v47.Text = _ei9m[2+1047] .. math.floor(_v42) ..
((type(_v44) == _ei9m[190-6]) and ("/" .. math.floor(_v45)) or "") end
end
end
do
local _v48, _v49, _v4a = _v32:FindFirstChild(_ei9m[105+39]), _v32:FindFirstChild(_ei9m[742]), _v32:FindFirstChild(_ei9m[885-13])
local _v4b = UDim2.new(_v4.STAM_BAR_WIDTH, bit32.bxor(2025749596,2025749596), (597-597), _v4.STAM_BAR_HEIGHT)
local _v4c = math.clamp(_v4.STAM_BAR_HEIGHT + (669-667), bit32.bxor(1913823965,1913823962), (3*6+0))
for _v4d, _v4e in ipairs({ _v48, _v49, _v4a }) do
_v4e.Size = _v4b
local _v4f = _v4e:FindFirstChild(_ei9m[472+201]); if _v4f then _v4f.TextSize = _v4c end
end
local _v4g = {}
local _v4h, _v4i = _v3b and _v4.foodCur[_v3b], _v3b and _v4.foodMax[_v3b]
local _v4j, _v4k = _v3b and _v4.waterCur[_v3b], _v3b and _v4.waterMax[_v3b]
_v4i = type(_v4i) == _ei9m[32-17] and _v4i or nil
_v4k = type(_v4k) == _ei9m[7+469] and _v4k or nil
if type(_v4h) == _ei9m[1280-1] then _v4.foodSeenMax[_v3b] = math.max(_v4.foodSeenMax[_v3b] or bit32.bxor(1091950621,1091950621), _v4h) end
if type(_v4j) == _ei9m[7+1136] then _v4.waterSeenMax[_v3b] = math.max(_v4.waterSeenMax[_v3b] or bit32.bxor(501006873,501006873), _v4j) end
_v4.espVital(_v48, _v4g, _ei9m[682], _v4h, _v4i or (_v3b and _v4.foodSeenMax[_v3b]), _v4i,
_v4.FOOD_COLOR, _v4.SHOW_FOOD_BAR, _v4.SHOW_FOOD_NUM)
_v4.espVital(_v49, _v4g, _ei9m[1015], _v4j, _v4k or (_v3b and _v4.waterSeenMax[_v3b]), _v4k,
_v4.WATER_COLOR, _v4.SHOW_WATER_BAR, _v4.SHOW_WATER_NUM)
_v4.espVital(_v4a, _v4g, _ei9m[399], _v3b and _v4.infectCur[_v3b], _v4.INFECT_MAX, _v4.INFECT_MAX,
_v4.INFECT_COLOR, _v4.SHOW_INFECT_BAR, _v4.SHOW_INFECT_NUM)
local _v4l = _v32:FindFirstChild(_ei9m[1077])
if _v4l then
_v4l.Visible = #_v4g > (0+0)
_v4l.TextSize = math.max(bit32.bxor(1086122042,1086122044), _v4.TEXT_SIZE - bit32.bxor(45631114,45631113)); _v4l.Size = UDim2.new(bit32.bxor(1295983503,1295983502), bit32.bxor(538172081,538172081), bit32.bxor(480783376,480783376), _v4.TEXT_SIZE)
if #_v4g > bit32.bxor(657702021,657702021) then _v4l.Text = table.concat(_v4g, "  ") end
end
local _v4m = _v32:FindFirstChildOfClass(_ei9m[668+413])
local _v4n = _v4m and math.max((3*40+2), math.ceil(_v4m.AbsoluteContentSize.Y) + (1+3))
if _v4n and _v31.Size.Y.Offset ~= _v4n then _v31.Size = UDim2.new(bit32.bxor(1346530246,1346530246), (751-511), (446-446), _v4n) end
end
if _v37 then
local _v4o = _v2d:GetAttribute(_ei9m[715])
local _v4p = _v4.SHOW_WEIGHT and type(_v4o) == _ei9m[965-16]
_v37.Visible = _v4p
if _v4p then _v37.Text = math.floor(_v4o) .. _ei9m[710] end
end
if _v38 then
_v38.Visible = _v4.BLEED_ESP
if _v4.BLEED_ESP then _v38.Text = _ei9m[366-4] .. math.floor(_v3w) end
end
end
local _v4q = _v2d:GetAttribute(_ei9m[1102]) or (1+0)
_v31.StudsOffset = Vector3.new(bit32.bxor(1415442685,1415442685), (6*0+3) + (_v4q * (6*0+3)), (631-631))
else
if _v2c.billboard then
_v2c.billboard.Enabled = false
end
end
if _v4.CHAMS_ENABLED then
if not _v2c.highlight or not _v2c.highlight.Parent then
local _v4r = Instance.new(_ei9m[865])
_v4r.Name = _ei9m[216-7]
_v4r.FillColor = _v4.ESP_COLOR
_v4r.OutlineColor = Color3.new((590-589), bit32.bxor(1343585270,1343585271), (175-174))
_v4r.FillTransparency = _v4.CHAMS_FILL_TRANSPARENCY
_v4r.OutlineTransparency = _v4.CHAMS_OUTLINE_TRANSPARENCY
_v4r.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
_v4r.Adornee = _v2d
_v4r.Parent = _v2d
_v2c.highlight = _v4r
end
_v2c.highlight.Enabled = true
_v2c.highlight.FillColor = _v4.ESP_COLOR
_v2c.highlight.FillTransparency = _v4.CHAMS_FILL_TRANSPARENCY
_v2c.highlight.OutlineTransparency = _v4.CHAMS_OUTLINE_TRANSPARENCY
else
if _v2c.highlight then
_v2c.highlight.Enabled = false
 do local _wh8vjiy6d=math.floor(85232*math.pi)+22170 end
end
end
if _v4.TRACERS_ENABLED and _v2g then
pcall(function()
if not _v2c.tracer then
_v2c.tracer = Drawing.new(_ei9m[938-19])
_v2c.tracer.Thickness = (1+0)
_v2c.tracer.Transparency = (328-327)
end
local _v4s, _v4t = _v3:WorldToViewportPoint(_v2f.Position)
_v2c.tracer.Visible = _v4t
_v2c.tracer.Color = _v4.ESP_COLOR
_v2c.tracer.From = Vector2.new(_v3.ViewportSize.X / (0+2), _v3.ViewportSize.Y)
_v2c.tracer.To = Vector2.new(_v4s.X, _v4s.Y)
end)
else
if _v2c.tracer then
pcall(function() _v2c.tracer.Visible = false end)
end
end
end
_v4.addStep((3*1+0), function()
if not _v4.ESP_ENABLED and not _v4.CHAMS_ENABLED and not _v4.TRACERS_ENABLED then return end
for _v4u, _v4v in _v0:GetPlayers() do
if _v4v == _v2 then continue end
if not _v4.espCache[_v4v] then _v4.createESP(_v4v) end
_v4.updateESP(_v4v)
end
end)
table.insert(_vi, _v0.PlayerRemoving:Connect(function(_v4w)
_v4.destroyESP(_v4w)
end))
for _v4x, _v4y in _v0:GetPlayers() do
if _v4y ~= _v2 then
_v4.createESP(_v4y)
end
end
_v4.getMyRoot = _v4.getLocalRoot
local function _v4z(_v50, _v51, _v52, _v53)
if _v23[_v50] then
pcall(function() _v23[_v50]:Destroy() end)
end
local _v54 = nil
if _v50:IsA(_ei9m[271]) then
_v54 = _v50
elseif _v50:IsA(_ei9m[6+1032]) then
_v54 = _v50:FindFirstChild(_ei9m[1097-5])
or _v50.PrimaryPart
or _v50:FindFirstChild(_ei9m[640-7])
if not _v54 then
for _v55, _v56 in _v50:GetChildren() do
if _v56:IsA(_ei9m[814-12]) and _v56.Name ~= _ei9m[7+410] and _v56.Name ~= _ei9m[2+224] and _v56.Name ~= _ei9m[6+1247] then
_v54 = _v56
break
end
end
end
if not _v54 then
_v54 = _v50:FindFirstChildWhichIsA(_ei9m[943], true)
end
end
if not _v54 then return end
local _v57 = Instance.new(_ei9m[3+433])
_v57.Name = _ei9m[2+1178]
_v57.Size = UDim2.new((0+0), (2*75+0), bit32.bxor(462115916,462115916), (661-621))
_v57.StudsOffset = Vector3.new((350-350), (4*0+3), bit32.bxor(181038630,181038630))
_v57.AlwaysOnTop = true
_v57.LightInfluence = (0+0)
_v57.MaxDistance = _v53
local _v58 = Instance.new(_ei9m[953+265])
_v58.Name = _ei9m[1209]
_v58.Size = UDim2.new(bit32.bxor(1843602865,1843602864), bit32.bxor(1000256312,1000256312), (0+0), _v4.WORLD_TEXT_SIZE + (5*0+2))
_v58.Position = UDim2.new(bit32.bxor(870298775,870298775), (163-163), bit32.bxor(1231197831,1231197831), (0+0))
_v58.BackgroundColor3 = Color3.new(bit32.bxor(204005085,204005085), bit32.bxor(1122573558,1122573558), bit32.bxor(2096206833,2096206833))
_v58.BackgroundTransparency = bit32.bxor(1449687861,1449687860)
_v58.TextColor3 = _v52
_v58.TextStrokeTransparency = bit32.bxor(1934436985,1934436985)
_v58.TextStrokeColor3 = Color3.new(bit32.bxor(188930327,188930327), (0+0), (704-704))
_v58.Font = Enum.Font.GothamBold
_v58.TextSize = _v4.WORLD_TEXT_SIZE
_v58.TextScaled = false
_v58.Text = _v51
_v58.Parent = _v57
local _v59 = Instance.new(_ei9m[907])
_v59.Name = _ei9m[1280-10]
_v59.Size = UDim2.new(bit32.bxor(946290944,946290945), (372-372), (645-645), _v4.WORLD_TEXT_SIZE)
_v59.Position = UDim2.new(bit32.bxor(1892538253,1892538253), (0+0), (517-517), _v4.WORLD_TEXT_SIZE + (4*0+2))
_v59.BackgroundColor3 = Color3.new((998-998), (0+0), (0+0))
_v59.BackgroundTransparency = (0+1)
_v59.TextColor3 = Color3.fromRGB((966-766), (4*50+0), (1198-998))
_v59.TextStrokeTransparency = bit32.bxor(941898771,941898771)
_v59.TextStrokeColor3 = Color3.new((750-750), (585-585), (113-113))
_v59.Font = Enum.Font.Gotham
_v59.TextSize = _v4.WORLD_TEXT_SIZE - bit32.bxor(811430691,811430689)
_v59.TextScaled = false
_v59.Text = _ei9m[6+1259]
_v59.Parent = _v57
_v57.Parent = _v54
_v23[_v50] = _v57
return _v57
end
function _v4.destroyWorldESP(_v5a)
local _v5b = _v23[_v5a]
if _v5b then
pcall(function() _v5b:Destroy() end)
_v23[_v5a] = nil
end
end
function _v4.clearWorldESPByParent(_v5c)
for _v5d, _v5e in pairs(_v23) do
if _v5d:IsDescendantOf(_v5c) or _v5d == _v5c then
pcall(function() _v5e:Destroy() end)
_v23[_v5d] = nil
end
end
end
function _v4.getFossilSize(_v5f)
for _v5g, _v5h in _v5f:GetChildren() do
if _v5h:IsA(_ei9m[412+560]) then
local _v5i = _v5h.Name
if _v5i == _ei9m[3+1092] then return "S"
elseif _v5i == _ei9m[33+27] then return "M"
elseif _v5i == _ei9m[357] then return "L"
elseif _v5i == _ei9m[853] then return _ei9m[220]
end
end
end
return "?"
end
function _v4.getFossilColor(_v5j)
if _v5j == "S" then return _v4.FOSSIL_COLOR_S
elseif _v5j == "M" then return _v4.FOSSIL_COLOR_M
elseif _v5j == "L" then return _v4.FOSSIL_COLOR_L
end
return _v4.FOSSIL_COLOR_M
end
function _v4.isFossilEnabled(_v5k)
if _v5k == "S" then return _v4.FOSSIL_SMALL
elseif _v5k == "M" then return _v4.FOSSIL_MEDIUM
elseif _v5k == "L" then return _v4.FOSSIL_LARGE
end
return false
end
function _v4.fossilDistance(_v5l)
if _v5l == "S" then return _v4.FOSSIL_DIST_SMALL end
if _v5l == "L" then return _v4.FOSSIL_DIST_LARGE end
return _v4.FOSSIL_DIST_MEDIUM
end
local function _v5m(_v5n)
local _v5o, _v5p, _v5q, _v5r
for _v5s, _v5t in ipairs({_ei9m[1288], _ei9m[779]}) do
local _v5u = _v5n:FindFirstChild(_v5t)
if _v5u then
_v5o = _v5o or _v5u:GetAttribute(_ei9m[594-16])
_v5p = _v5p or _v5u:GetAttribute(_ei9m[114-20])
_v5q = _v5q or _v5u:GetAttribute(_ei9m[1021-14])
_v5r = _v5r or _v5u:GetAttribute(_ei9m[1203])
end
end
_v5o = _v5o or _v5n:GetAttribute(_ei9m[2+802]) or _v5n:GetAttribute(_ei9m[7+618])
_v5p = _v5p or _v5n:GetAttribute(_ei9m[1006]) or _v5n:GetAttribute(_ei9m[772-18])
_v5q = _v5q or _v5n:GetAttribute(_ei9m[6+1153])
_v5r = _v5r or _v5n:GetAttribute(_ei9m[74])
if not _v5r then
local _v5v = _v5n:FindFirstChild(_ei9m[275])
if _v5v then _v5r = _v5v:GetAttribute(_ei9m[1245]) end
end
local _v5w = _ei9m[1059]
if _v5o then _v5w = tostring(_v5o) end
if _v5p then _v5w = _v5w .. " [" .. tostring(_v5p) .. "]" end
if _v5q then _v5w = _v5w .. " " .. (tostring(_v5q):sub((1+0), (1+0))) end
local _v5x = tonumber(_v5r)
if _v5x then _v5w = _v5w .. "  " .. string.format(_ei9m[823], _v5x) .. "kg" end
return _v5w
end
function _v4.getMeatWeight(_v5y)
local _v5z = nil
pcall(function()
weight = _v5y:GetAttribute(_ei9m[683]) or _v5y:GetAttribute(_ei9m[2+513]) or _v5y:GetAttribute(_ei9m[596])
end)
if not _v5z then
for _v60, _v61 in _v5y:GetChildren() do
pcall(function()
if _v61:IsA(_ei9m[2+21]) and (_v61.Name:lower():find(_ei9m[86+208]) or _v61.Name:lower():find(_ei9m[4+213]) or _v61.Name:lower():find(_ei9m[4+107])) then
weight = _v61.Value
end
end)
end
end
return _v5z
end
function _v4.processFolder(_v62, _v63, _v64, _v65)
if not _v62 then return end
for _v66, _v67 in _v62:GetChildren() do
if _v23[_v67] then continue end
local _v68 = _v63
if _v67:IsA(_ei9m[253+418]) then
local _v69 = _v67:GetAttribute(_ei9m[238])
if _v69 then
_v68 = _v63 .. " [" .. _v69 .. "]"
else
_v68 = _v63 .. " [" .. _v67.Name .. "]"
end
elseif _v67:IsA(_ei9m[808-12]) then
_v68 = _v63 .. " [" .. _v67.Name .. "]"
end
_v4z(_v67, _v68, _v64, _v65)
end
end
_v4.worldESPPart = setmetatable({}, { __mode = "k" })
function _v4.worldESPAnchor(_v6a)
local _v6b = _v4.worldESPPart[_v6a]
if _v6b and _v6b.Parent then return _v6b end
local _v6c
if _v6a:IsA(_ei9m[1020-12]) then
_v6c = _v6a
elseif _v6a:IsA(_ei9m[759+41]) then
_v6c = _v6a:FindFirstChild(_ei9m[939])
or _v6a.PrimaryPart
or _v6a:FindFirstChild(_ei9m[113-3])
or _v6a:FindFirstChildWhichIsA(_ei9m[731+52], true)
end
_v4.worldESPPart[_v6a] = _v6c
return _v6c
end
function _v4.updateWorldESPDistances()
local _v6d = _v4.getMyRoot()
if not _v6d then return end
local _v6e = _v6d.Position
pcall(function()
for _v6f, _v6g in pairs(_v23) do
if not _v6f.Parent then
_v4.destroyWorldESP(_v6f)
continue
end
local _v6h = _v4.worldESPAnchor(_v6f)
if not _v6h then continue end
local _v6i = (_v6e - _v6h.Position).Magnitude
local _v6j = _v6g:FindFirstChild(_ei9m[5+909])
local _v6k = _v6g:FindFirstChild(_ei9m[254])
if _v6j then
_v6j.BackgroundTransparency = bit32.bxor(140540552,140540553)
_v6j.TextSize = _v4.WORLD_TEXT_SIZE
_v6j.Size = UDim2.new(bit32.bxor(1881314985,1881314984), (0+0), (0+0), _v4.WORLD_TEXT_SIZE + (420-418))
if _v4.TEXT_HIGHLIGHT then
_v6j.TextColor3 = Color3.new((0+1), (0+1), (402-401))
_v6j.TextStrokeTransparency = (0+0)
end
end
if _v6k then
_v6k.Text = math.floor(_v6i) .. _ei9m[3+383]
_v6k.BackgroundTransparency = bit32.bxor(493371872,493371873)
_v6k.TextSize = _v4.WORLD_TEXT_SIZE - (0+2)
_v6k.Size = UDim2.new(bit32.bxor(1702632840,1702632841), bit32.bxor(1829745312,1829745312), bit32.bxor(528089588,528089588), _v4.WORLD_TEXT_SIZE)
_v6k.Position = UDim2.new(bit32.bxor(1093148135,1093148135), bit32.bxor(453632158,453632158), (0+0), _v4.WORLD_TEXT_SIZE + bit32.bxor(2001335902,2001335900))
if _v4.TEXT_HIGHLIGHT then
_v6k.TextColor3 = Color3.new((0+1), (1+0), bit32.bxor(1359331190,1359331191))
_v6k.TextStrokeTransparency = (0+0)
end
end
end
end)
end
local function _v6l()
for _v6m, _v6n in pairs(_v23) do
pcall(function() _v6n:Destroy() end)
end
_v23 = {}
if _v4.CORPSE_ESP then
pcall(function()
local _v6o = workspace:FindFirstChild(_ei9m[963]) and workspace.CharacterIgnore:FindFirstChild(_ei9m[195-16])
if _v6o then
for _v6p, _v6q in _v6o:GetChildren() do
if _v23[_v6q] then continue end
local _v6r = _v5m(_v6q)
_v4z(_v6q, _v6r, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _v6s = workspace:FindFirstChild(_ei9m[1174+132])
if _v6s then
for _v6t, _v6u in _v6s:GetChildren() do
if _v23[_v6u] then continue end
local _v6v = _v5m(_v6u)
_v4z(_v6u, _v6v, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _v6w = workspace:FindFirstChild(_ei9m[6+1297])
if _v6w then
for _v6x, _v6y in _v6w:GetChildren() do
if _v23[_v6y] then continue end
local _v6z = _v5m(_v6y)
_v4z(_v6y, _v6z, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _v70 = workspace:FindFirstChild(_ei9m[894])
if _v70 then
for _v71, _v72 in _v70:GetChildren() do
if _v23[_v72] then continue end
local _v73 = _v5m(_v72)
_v4z(_v72, _v73, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _v74 = workspace:FindFirstChild(_ei9m[734])
if _v74 then
for _v75, _v76 in _v74:GetChildren() do
if _v23[_v76] then continue end
local _v77 = _v5m(_v76)
_v4z(_v76, _v77, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _v78 = workspace:FindFirstChild(_ei9m[624-14])
if _v78 then
for _v79, _v7a in _v78:GetChildren() do
if _v23[_v7a] then continue end
local _v7b = _v5m(_v7a)
_v4z(_v7a, _v7b, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _v7c = workspace:FindFirstChild(_ei9m[225])
if _v7c then
local _v7d = _v7c:FindFirstChild(_ei9m[895+306])
if _v7d then
for _v7e, _v7f in _v7d:GetChildren() do
if _v23[_v7f] then continue end
local _v7g = _v5m(_v7f)
_v4z(_v7f, _v7g, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end
end)
end
 do local _wh8vicmu0=#_ei9m[1]+33 end

pcall(function()
local _v7h = workspace:FindFirstChild(_ei9m[6+1040])
if _v7h then
for _v7i, _v7j in _v7h:GetChildren() do
if _v23[_v7j] then continue end
local _v7k = _v4.getFossilSize(_v7j)
if _v4.isFossilEnabled(_v7k) then
local _v7l = {S = _ei9m[577-19], M = _ei9m[344-8], L = _ei9m[522]}
local _v7m = _ei9m[2+1119] .. (_v7l[_v7k] or _v7k) .. ")"
_v4z(_v7j, _v7m, _v4.getFossilColor(_v7k), _v4.fossilDistance(_v7k))
end
end
end
end)
if _v4.MEAT_ESP then
pcall(function()
local _v7n = workspace:FindFirstChild(_ei9m[466+472]) and workspace.CharacterIgnore:FindFirstChild(_ei9m[91])
if _v7n then
for _v7o, _v7p in _v7n:GetChildren() do
if _v23[_v7p] then continue end
local _v7q = _ei9m[279+110]
_v4z(_v7p, _v7q, _v4.MEAT_COLOR, _v4.MEAT_DISTANCE)
end
end
end)
pcall(function()
local _v7r = workspace:FindFirstChild(_ei9m[389+340])
if _v7r then
local _v7s = _v7r:FindFirstChild(_ei9m[5+415])
if _v7s then
for _v7t, _v7u in _v7s:GetChildren() do
if _v23[_v7u] then continue end
local _v7v = _ei9m[493-12]
_v4z(_v7u, _v7v, _v4.MEAT_COLOR, _v4.MEAT_DISTANCE)
end
end
local _v7w = _v7r:FindFirstChild(_ei9m[2+321])
if _v7w then
for _v7x, _v7y in _v7w:GetChildren() do
if _v23[_v7y] then continue end
local _v7z = _ei9m[1176]
_v4z(_v7y, _v7z, _v4.MEAT_COLOR, _v4.MEAT_DISTANCE)
end
end
end
end)
end
if _v4.CLAY_ESP then
pcall(function()
local _v80 = workspace:FindFirstChild(_ei9m[607])
local _v81 = _v80 and _v80:FindFirstChild(_ei9m[6+788])
if _v81 then
for _v82, _v83 in _v81:GetChildren() do
if _v23[_v83] then continue end
_v4z(_v83, _ei9m[787], _v4.CLAY_COLOR, _v4.CLAY_DISTANCE)
end
end
end)
end
end
local function _v84(_v85, _v86)
pcall(function()
local _v87 = workspace
if _v86 then
for _v88, _v89 in ipairs(_v86) do
parent = _v87:FindFirstChild(_v89)
if not _v87 then return end
end
end
local _v8a = _v87:FindFirstChild(_v85)
if not _v8a then return end
table.insert(_vi, _v8a.ChildAdded:Connect(function(_v8b)
task.wait(0.5)
local _v8c = {LeftCharacters=true, DinosaurRagdolls=true, Ragdolls=true, AIRagdolls=true, RagdollStorage=true, GrabbedRagdolls=true}
if _v4.CORPSE_ESP and _v8c[_v85] then
local _v8d = _v5m(_v8b)
_v4z(_v8b, _v8d, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
if _v85 == _ei9m[409-6] then
local _v8e = _v4.getFossilSize(_v8b)
if _v4.isFossilEnabled(_v8e) then
local _v8f = {S = _ei9m[10+155], M = _ei9m[2+734], L = _ei9m[535]}
local _v8g = _ei9m[1343-11] .. (_v8f[_v8e] or _v8e) .. ")"
_v4z(_v8b, _v8g, _v4.getFossilColor(_v8e), _v4.fossilDistance(_v8e))
end
end
if _v4.MEAT_ESP and (_v85 == _ei9m[975-4] or _v85 == _ei9m[83] or _v85 == _ei9m[1209+37]) then
local _v8h = _ei9m[36+61]
_v4z(_v8b, _v8h, _v4.MEAT_COLOR, _v4.MEAT_DISTANCE)
end
if _v4.CLAY_ESP and _v85 == _ei9m[384+592] then
_v4z(_v8b, _ei9m[580], _v4.CLAY_COLOR, _v4.CLAY_DISTANCE)
end
end))
table.insert(_vi, _v8a.ChildRemoved:Connect(function(_v8i)
_v4.destroyWorldESP(_v8i)
end))
end)
end
_v84(_ei9m[858], {_ei9m[26-19]})
_v84(_ei9m[1131-15])
_v84(_ei9m[861-4])
_v84(_ei9m[1271])
_v84(_ei9m[6+42])
_v84(_ei9m[4])
_v84(_ei9m[152+682], {_ei9m[774-4]})
_v84(_ei9m[452+77])
_v84(_ei9m[242], {_ei9m[365+556]})
_v84(_ei9m[695-14], {_ei9m[126+311]})
_v84(_ei9m[1357-17], {_ei9m[18+324]})
_v84(_ei9m[1276], {_ei9m[581-13]})
_v4.addStep((5*1+0), function()
if not _v4.CORPSE_ESP and not _v4.FOSSIL_SMALL and not _v4.FOSSIL_MEDIUM and not _v4.FOSSIL_LARGE and not _v4.MEAT_ESP and not _v4.CLAY_ESP then return end
_v4.updateWorldESPDistances()
end)
_v4.MMAP_ON = false
_v4.MMAP_PLAYERS = true
_v4.MMAP_CORPSES = true
_v4.MMAP_FOSSILS = true
_v4.MMAP_COLOR_PLAYER = Color3.fromRGB((51+9), (134+121), (168-78))
_v4.MMAP_COLOR_CORPSE = Color3.fromRGB((1156-901), bit32.bxor(1195667509,1195667465), (2+58))
_v4.MMAP_COLOR_FOSSIL = Color3.fromRGB(bit32.bxor(84997964,84998130), bit32.bxor(723910450,723910540), bit32.bxor(2039089031,2039088953))
_v4.MMAP_DOT = bit32.bxor(316485893,316485890)
_v4.MMAP_MAX = (403-283)
_v4.mmapPool = {}
_v4.mmapShown = (0+0)
_v4.MMAP_CORPSE_FOLDERS = {
{ _ei9m[418], _ei9m[1348-9] },
{ _ei9m[664] },
{ _ei9m[230-19] },
{ _ei9m[424+87] },
{ _ei9m[65-1] },
{ _ei9m[7+765] },
{ _ei9m[828+83], _ei9m[700-1] },
}
function _v4.mmapFolder(_v8j)
local _v8k = workspace
for _v8l, _v8m in ipairs(_v8j) do
_v8k = _v8k:FindFirstChild(_v8m)
if not _v8k then return nil end
end
return _v8k
end
function _v4.mmapFind()
local _v8n = _v4.mmapCache
if _v8n then
local ok, alive = pcall(function()
local _v8o = rawget(_v8n, _ei9m[1160-6])
return _v8o ~= nil and _v8o.Parent ~= nil
end)
if ok and alive then return _v8n end
_v4.mmapCache = nil
end
local _v8p = os.clock()
if _v4.mmapNextScan and _v8p < _v4.mmapNextScan then return nil end
_v4.mmapNextScan = _v8p + (5*0+3)
if type(filtergc) ~= _ei9m[3+402] then return nil end
local _v8q
pcall(function()
found = filtergc(_ei9m[3+1037], {Keys = {_ei9m[3+1297], _ei9m[6+636], _ei9m[7+198]}}, true)
end)
_v4.mmapCache = _v8q
return _v8q
end
function _v4.mmapMakeDot(_v8r)
local _v8s = Instance.new(_ei9m[7+152])
_v8s.Name = _ei9m[7+716]
_v8s.AnchorPoint = Vector2.new(0.5, 0.5)
_v8s.BorderSizePixel = bit32.bxor(1268346994,1268346994)
_v8s.BackgroundColor3 = Color3.new((1+0), bit32.bxor(1339932028,1339932029), (810-809))
_v8s.Size = UDim2.fromOffset(_v4.MMAP_DOT, _v4.MMAP_DOT)
_v8s.ZIndex = (4+5)
_v8s.Visible = false
local _v8t = Instance.new(_ei9m[1213])
_v8t.CornerRadius = UDim.new((1+0), (0+0))
_v8t.Parent = _v8s
_v8s.Parent = _v8r
return _v8s
end
function _v4.mmapDestroyPool()
for _v8u, _v8v in ipairs(_v4.mmapPool) do
pcall(function() if _v8v.mini then _v8v.mini:Destroy() end end)
pcall(function() if _v8v.exp then _v8v.exp:Destroy() end end)
end
_v4.mmapPool = {}
_v4.mmapShown = bit32.bxor(1307474247,1307474247)
end
function _v4.mmapHideAll()
for _v8w, _v8x in ipairs(_v4.mmapPool) do
if _v8x.mini then _v8x.mini.Visible = false end
if _v8x.exp then _v8x.exp.Visible = false end
end
_v4.mmapShown = bit32.bxor(916124142,916124142)
end
function _v4.mmapEnsure(_v8y, _v8z)
local _v90 = _v4.mmapPool
local _v91 = rawget(_v8z, _ei9m[157-20])
local _v92 = rawget(_v8z, _ei9m[6+678])
while #_v90 < _v8y do
local _v93 = {}
if _v91 then _v93.mini = _v4.mmapMakeDot(_v91) end
if _v92 then _v93.exp = _v4.mmapMakeDot(_v92) end
_v90[#_v90 + (354-353)] = _v93
end
end
function _v4.mmapCollect()
local _v94 = {}
local _v95 = _v4.getLocalRoot()
local _v96 = _v95 and _v95.Position or Vector3.zero
local function _v97(_v98, _v99)
_v94[#_v94 + (726-725)] = { pos = _v98, color = _v99, d = (_v98 - _v96).Magnitude }
end
if _v4.MMAP_PLAYERS then
pcall(function()
for _v9a, _v9b in ipairs(_v0:GetPlayers()) do
if _v9b ~= _v2 then
local _v9c = _v9b.Character
local _v9d = _v9c and _v4.getRootOf(_v9c, false)
if _v9d then _v97(_v9d.Position, _v4.MMAP_COLOR_PLAYER) end
end
end
end)
end
if _v4.MMAP_CORPSES then
for _v9e, _v9f in ipairs(_v4.MMAP_CORPSE_FOLDERS) do
pcall(function()
local _v9g = _v4.mmapFolder(_v9f)
if not _v9g then return end
for _v9e, _v9i in ipairs(_v9g:GetChildren()) do
local _v9j = _v4.worldESPAnchor(_v9i)
if _v9j then _v97(_v9j.Position, _v4.MMAP_COLOR_CORPSE) end
end
end)
end
end
if _v4.MMAP_FOSSILS then
pcall(function()
local _v9k = workspace:FindFirstChild(_ei9m[4+654])
if not _v9k then return end
for _v9l, _v9m in ipairs(_v9k:GetChildren()) do
local _v9n = _v4.worldESPAnchor(_v9m)
if _v9n then _v97(_v9n.Position, _v4.MMAP_COLOR_FOSSIL) end
end
end)
end
if #_v94 > _v4.MMAP_MAX then
table.sort(_v94, function(_v9o, _v9p) return _v9o.d < _v9p.d end)
end
_v4.mmapList = _v94
end
function _v4.mmapStep()
if _v4.UNLOADED then return end
if not _v4.MMAP_ON or not (_v4.MMAP_PLAYERS or _v4.MMAP_CORPSES or _v4.MMAP_FOSSILS) then
if _v4.mmapShown > (0+0) then _v4.mmapHideAll() end
return
end
local _v9q = _v4.mmapFind()
if not _v9q then return end
if _v4.mmapBoundTo ~= _v9q then
_v4.mmapPool = {}
_v4.mmapShown = bit32.bxor(1392609568,1392609568)
_v4.mmapBoundTo = _v9q
end
_v4.mmapTick = (_v4.mmapTick or bit32.bxor(1835325928,1835325928)) + (780-779)
if not _v4.mmapList or _v4.mmapTick % (2+3) == bit32.bxor(859662956,859662957) then _v4.mmapCollect() end
local _v9r = _v4.mmapList
if not _v9r then return end
local _v9s = math.min(#_v9r, _v4.MMAP_MAX)
_v4.mmapEnsure(_v9s, _v9q)
local _v9t = rawget(_v9q, _ei9m[2])
local _v9u = rawget(_v9q, _ei9m[779-14])
local _v9v = rawget(_v9q, _ei9m[7+111])
local _v9w = _v9t and _v9t.Visible
local _v9x = _v9u and _v9u.Visible
local _v9y = (0+0)
pcall(function() if _v9v then radius = _v9v.AbsoluteSize.X * 0.5 end end)
for _v9z = bit32.bxor(928903534,928903535), _v9s do
local _va0 = _v9r[_v9z]
local _va1 = _v4.mmapPool[_v9z]
if _va1 then
if _va1.mini then
if _v9w then
local _va2, _va3 = pcall(function() return _v9q:GetTagPosition(_va0.pos) end)
if _va2 and _va3 then
_va1.mini.Position = UDim2.fromOffset(_va3.X, _va3.Y)
_va1.mini.BackgroundColor3 = _va0.color
local _va4, _va5 = pcall(function() return _v9q:GetDistanceFromCenter(_va3) end)
_va1.mini.Visible = (not _va4) or (_va5 <= _v9y)
else
_va1.mini.Visible = false
end
else
_va1.mini.Visible = false
end
end
if _va1.exp then
if _v9x then
local _va6, _va7 = pcall(function() return _v9q:TransformPosition(_va0.pos) end)
if _va6 and _va7 then
_va1.exp.Position = _va7
_va1.exp.BackgroundColor3 = _va0.color
_va1.exp.Visible = true
else
_va1.exp.Visible = false
end
else
_va1.exp.Visible = false
end
end
end
end
for _va8 = _v9s + bit32.bxor(1945053669,1945053668), #_v4.mmapPool do
local _va9 = _v4.mmapPool[_va8]
if _va9.mini then _va9.mini.Visible = false end
if _va9.exp then _va9.exp.Visible = false end
end
_v4.mmapShown = _v9s
end
_v4.addStep((1+2), _v4.mmapStep)
function _v4.expandPlayerHitbox(_vaa)
local _vab = _vaa.Character
if not _vab then return end
local _vac = _vab:FindFirstChild(_ei9m[3+560])
if not _vac then return end
for _vad, _vae in _vac:GetChildren() do
if not _vae:IsA(_ei9m[76+994]) then continue end
local _vaf = _vae:GetAttribute(_ei9m[193+302])
if not _vaf then continue end
if _vae:GetAttribute(_ei9m[277-11]) then continue end
local _vag = (_vaf == _ei9m[5+310]) and _v4.getTailSubGroup(_vae.Name) or _vaf
if not _v1d[_vae] then
_v1d[_vae] = _vae.Size
end
local _vah = _v1d[_vae]
pcall(function()
if _v4.HITBOX_EXPANDER and _v4.HITBOX_GROUPS[_vag] then
_vae.Size = _vah * _v4.HITBOX_MULTIPLIER
else
_vae.Size = _vah
end
end)
pcall(function()
if _v4.SILENT_AIM then
_vae.CanQuery = _v4.SILENT_GROUPS[_vag] and true or false
else
_vae.CanQuery = true
end
end)
end
end
function _v4.resetPlayerHitbox(_vai)
local _vaj = _vai.Character
if not _vaj then return end
local _vak = _vaj:FindFirstChild(_ei9m[331+147])
if _vak then
for _val, _vam in _vak:GetChildren() do
if not _vam:IsA(_ei9m[737+82]) then continue end
local _van = _v1d[_vam]
if _van then
pcall(function() _vam.Size = _van; _vam.CanQuery = true end)
_v1d[_vam] = nil
end
end
end
local _vao = _vaj:FindFirstChild(_ei9m[112+966])
if _vao and _v1d[_vao] then
pcall(function() _vao.Size = _v1d[_vao] end)
_v1d[_vao] = nil
end
end
function _v4.visualizePlayerHitbox(_vap, _vaq)
local _var = _vap.Character
if not _var then return end
local _vas = _var:FindFirstChild(_ei9m[30-17])
if _vas then
for _vat, _vau in _vas:GetChildren() do
if not _vau:IsA(_ei9m[343-8]) then continue end
local _vav = _vau:GetAttribute(_ei9m[197-1]) or _ei9m[6+971]
local _vaw = false
if _vav == _ei9m[1203-4] then
local _vax = _v4.getTailSubGroup(_vau.Name)
_vaw = _v4.HITBOX_GROUPS[_vax]
else
_vaw = _v4.HITBOX_GROUPS[_vav]
end
pcall(function()
if _vaq and _vaw then
if not _v1e[_vau] then
_v1e[_vau] = { _vau.Transparency, _vau.Material, _vau.Color }
end
_vau.Transparency = _v4.HITBOX_VIS_TRANSPARENCY
_vau.Color = _v4.HITBOX_VIS_COLOR
_vau.Material = Enum.Material.Neon
else
local _vay = _v1e[_vau]
if _vay then
_vau.Transparency, _vau.Material, _vau.Color = _vay[bit32.bxor(581748915,581748914)], _vay[(801-799)], _vay[(727-724)]
_v1e[_vau] = nil
else
_vau.Transparency = (959-958)
end
end
end)
end
end
local _vaz = _var:FindFirstChild(_ei9m[4+716])
if _vaz and _vaz:IsA(_ei9m[2+1196]) then
pcall(function()
if _vaq then
if not _v1e[_vaz] then
_v1e[_vaz] = { _vaz.Transparency, _vaz.Material, _vaz.Color }
end
_vaz.Transparency = _v4.HITBOX_VIS_TRANSPARENCY
_vaz.Color = _v4.HITBOX_VIS_COLOR
_vaz.Material = Enum.Material.Neon
else
local _vb0 = _v1e[_vaz]
if _vb0 then
_vaz.Transparency, _vaz.Material, _vaz.Color = _vb0[(1+0)], _vb0[(4*0+2)], _vb0[(271-268)]
_v1e[_vaz] = nil
else
_vaz.Transparency = (271-270)
end
end
end)
end
end
function _v4.resetAllHitboxes()
for _vb1, _vb2 in _v0:GetPlayers() do
if _vb2 == _v2 then continue end
_v4.resetPlayerHitbox(_vb2)
_v4.visualizePlayerHitbox(_vb2, false)
_v4.hbShown[_vb2] = nil
end
end
function _v4.expandLocalReach()
local _vb3 = _v2.Character
if not _vb3 then return end
local _vb4 = _vb3:FindFirstChild(_ei9m[9+805])
if not _vb4 then return end
for _vb5, _vb6 in _vb4:GetChildren() do
if not _vb6:IsA(_ei9m[379+929]) then continue end
local _vb7 = _vb6:GetAttribute(_ei9m[4+1128])
if not _vb7 then continue end
if _vb6:GetAttribute(_ei9m[593]) then continue end
local _vb8 = (_vb7 == _ei9m[81+189]) and _v4.getTailSubGroup(_vb6.Name) or _vb7
if not _v4.REACH_GROUPS[_vb8] then continue end
if not _v1f[_vb6] then
_v1f[_vb6] = _vb6.Size
end
local _vb9 = _v1f[_vb6]
pcall(function()
_vb6.Size = _v4.REACH_ENABLED and (_vb9 * _v4.REACH_MULTIPLIER) or _vb9
_vb6.CanQuery = true
if _v4.REACH_VISUALIZE then
_vb6.Transparency = _v4.REACH_VIS_TRANSPARENCY
_vb6.Color = Color3.fromRGB((4+146), (2*42+1), (274-39))
_vb6.Material = Enum.Material.ForceField
else
_vb6.Transparency = bit32.bxor(192269264,192269265)
end
end)
end
end
function _v4.resetLocalReach()
for _vba, _vbb in pairs(_v1f) do
pcall(function() _vba.Size = _vbb; _vba.Transparency = bit32.bxor(1180113352,1180113353) end)
end
table.clear(_v1f)
end
local _vbc = (336-336)
table.insert(_vi, _v1.Heartbeat:Connect(function()
if _v4.UNLOADED then return end
local _vbd = next(_v4.hbShown) ~= nil
if not _v4.HITBOX_EXPANDER and not _v4.HITBOX_VISUALIZE and not _v4.REACH_ENABLED
and not _v4.REACH_VISUALIZE and not _v4.SILENT_AIM
and not _vbd then return end
if _v4.REACH_ENABLED or _v4.REACH_VISUALIZE then pcall(_v4.expandLocalReach) end
if not _v4.HITBOX_EXPANDER and not _v4.HITBOX_VISUALIZE and not _v4.SILENT_AIM
and not _vbd then return end
hitboxVisCounter = _vbc + bit32.bxor(1269706748,1269706749)
local _vbe = (_vbc % (787-782) == bit32.bxor(1588514070,1588514070))
for _vbf, _vbg in _v0:GetPlayers() do
if _vbg == _v2 then continue end
pcall(function()
if _v4.HITBOX_EXPANDER or _v4.SILENT_AIM then _v4.expandPlayerHitbox(_vbg) end
if _vbe then
if _v4.HITBOX_VISUALIZE then
_v4.visualizePlayerHitbox(_vbg, true)
_v4.hbShown[_vbg] = true
elseif _v4.hbShown[_vbg] then
_v4.visualizePlayerHitbox(_vbg, false)
_v4.hbShown[_vbg] = nil
end
end
end)
end
end))
local _vbh = game:GetService(_ei9m[766-9])
function _v4.isBlackOverlay(_vbi)
if not _vbi:IsA(_ei9m[383+78]) and not _vbi:IsA(_ei9m[1110]) then return false end
if _vbi.BackgroundTransparency > 0.1 then return false end
local _vbj = _vbi.BackgroundColor3
if _vbj.R > 0.05 or _vbj.G > 0.05 or _vbj.B > 0.05 then return false end
local _vbk = _vbi.AbsoluteSize
local _vbl, _vbm = _v3.ViewportSize.X, _v3.ViewportSize.Y
if _vbk.X < _vbl * 0.8 or _vbk.Y < _vbm * 0.8 then return false end
return true
end
_v4.absDirty = true
_v4.absLastFull = bit32.bxor(1033925894,1033925894)
_v4.ABS_FULL_INTERVAL = (601-599)
function _v4.markAbsDirty()
_v4.absDirty = true
end
pcall(function()
local _vbn = _v2:FindFirstChild(_ei9m[1337-9])
if _vbn then table.insert(_vi, _vbn.DescendantAdded:Connect(_v4.markAbsDirty)) end
end)
pcall(function()
table.insert(_vi, game:GetService(_ei9m[933-17]).DescendantAdded:Connect(_v4.markAbsDirty))
end)
function _v4.sweepGuiRoot(_vbo)
for _vbp, _vbq in _vbo:GetChildren() do
if not _vbq:IsA(_ei9m[5+904]) then continue end
if _vbq.Name == _ei9m[1094] or _vbq.Name == _ei9m[343-3] or _vbq.Name == _ei9m[370+396] then continue end
for _vbp, _vbs in _vbq:GetDescendants() do
if _v4.isBlackOverlay(_vbs) then
_vbs.BackgroundTransparency = bit32.bxor(641517017,641517016)
end
end
end
end
function _v4.neutralizeBlackScreens()
local _vbt = os.clock()
local _vbu = (_vbt - _v4.absLastFull) >= _v4.ABS_FULL_INTERVAL
if _v4.absDirty or _vbu then
_v4.absDirty = false
if _vbu then _v4.absLastFull = _vbt end
pcall(function()
local _vbv = _v2:FindFirstChild(_ei9m[1340-16])
if _vbv then _v4.sweepGuiRoot(_vbv) end
end)
pcall(function() _v4.sweepGuiRoot(game:GetService(_ei9m[386+464])) end)
end
pcall(function()
for _vbw, _vbx in _vbh:GetChildren() do
if _vbx:IsA(_ei9m[4+851]) then
if _vbx.Brightness < -0.3 then
_vbx.Brightness = (412-412)
end
if _vbx.TintColor.R < 0.1 and _vbx.TintColor.G < 0.1 and _vbx.TintColor.B < 0.1 then
_vbx.TintColor = Color3.new((681-680), (191-190), bit32.bxor(1698169056,1698169057))
end
end
end
end)
pcall(function()
for _vby, _vbz in _v3:GetChildren() do
if _vbz:IsA(_ei9m[759-3]) then
local _vc0 = _vbz.Color
if _vc0 and _vc0.R < 0.05 and _vc0.G < 0.05 and _vc0.B < 0.05 and _vbz.Transparency ~= bit32.bxor(2122760662,2122760663) then
_vbz.Transparency = bit32.bxor(1945175808,1945175809)
end
end
end
end)
end
_v4.addStep((4*2+2), function()
if not _v4.ANTI_BLACKSCREEN then return end
_v4.neutralizeBlackScreens()
end)
_v4.addStep((857-856), function()
if not _v4.ANTI_BLACKSCREEN then return end
local _vc1 = _v2:FindFirstChild(_ei9m[387+53])
local _vc2 = _vc1 and _vc1:FindFirstChild(_ei9m[412-18])
if _vc2 then
pcall(function()
if _vc2:IsA(_ei9m[784-8]) and _vc2.Enabled then _vc2.Enabled = false end
local _vc3 = _vc2:FindFirstChild(_ei9m[6+1145])
if _vc3 then
if _vc3.Visible then _vc3.Visible = false end
if _vc3:IsA(_ei9m[1051]) and _vc3.BackgroundTransparency < (62-61) then _vc3.BackgroundTransparency = bit32.bxor(40332065,40332064) end
end
end)
end
end)
 do local _wh8vh8nt2=#_ei9m[1]+32 end

_v4.customTime = false
_v4.customTimeHour = (9+3)
_v4.wcOrig = nil
function _v4.getWeatherController()
if _v4.weatherCtrl then return _v4.weatherCtrl end
pcall(function()
_v4.weatherCtrl = require(_v4.WATER_RS.Packages.Knit).GetController(_ei9m[1158-1])
end)
return _v4.weatherCtrl
end
function _v4.isNightHour(_vc4)
return _vc4 >= (5+15) or _vc4 <= (2+3)
end
function _v4.timePresetFor(_vc5)
if _v4.isNightHour(_vc5) then return _ei9m[65+341] end
if _vc5 < bit32.bxor(1033726217,1033726209) then return _ei9m[77] end
if _vc5 >= (6*3+0) then return _ei9m[856] end
return _ei9m[260]
end
function _v4.refreshCustomTime()
local _vc6 = _v4.getWeatherController()
if not (_vc6 and _v4.customTime) then return end
pcall(function() _vc6:ApplyLightingTransition(bit32.bxor(571086824,571086824), true) end)
pcall(function() _vc6:ApplyRenderClockTime(_v4.customTimeHour, _v4.timePresetFor(_v4.customTimeHour)) end)
end
function _v4.setCustomTime(_vc7)
_v4.customTime = _vc7
local _vc8 = _v4.getWeatherController()
if not _vc8 then
pcall(function() Hub:Notify(_ei9m[6+145], bit32.bxor(783881406,783881400)) end)
return
end
if _vc7 then
if not _v4.wcOrig then
_v4.wcOrig = {
IsArtificialNight = _vc8.IsArtificialNight,
GetSimulationClockTime = _vc8.GetSimulationClockTime,
GetDesiredTransitionType = _vc8.GetDesiredTransitionType,
}
end
_vc8.IsArtificialNight = function() return _v4.isNightHour(_v4.customTimeHour) end
_vc8.GetSimulationClockTime = function() return _v4.customTimeHour end
_vc8.GetDesiredTransitionType = function() return _v4.timePresetFor(_v4.customTimeHour) end
_v4.refreshCustomTime()
elseif _v4.wcOrig then
_vc8.IsArtificialNight = _v4.wcOrig.IsArtificialNight
_vc8.GetSimulationClockTime = _v4.wcOrig.GetSimulationClockTime
_vc8.GetDesiredTransitionType = _v4.wcOrig.GetDesiredTransitionType
_v4.wcOrig = nil
pcall(function() _vc8:ApplyLightingTransition((59-59), true) end)
end
end
pcall(function()
_v1:BindToRenderStep(_ei9m[6+161], Enum.RenderPriority.Last.Value, function()
if _v4.customTime and not _v4.UNLOADED then
pcall(function() _vbh.ClockTime = _v4.customTimeHour end)
end
end)
end)
_v4.FULLBRIGHT = false
do
local _vc9 = nil
_v4.enableFullbright = function()
if _vc9 then return end
_vc9 = {
Brightness = _vbh.Brightness,
Ambient = _vbh.Ambient,
OutdoorAmbient = _vbh.OutdoorAmbient,
GlobalShadows = _vbh.GlobalShadows,
FogEnd = _vbh.FogEnd,
ExposureCompensation = _vbh.ExposureCompensation,
}
end
_v4.restoreFullbright = function()
if not _vc9 then return end
pcall(function()
_vbh.Brightness = _vc9.Brightness
_vbh.Ambient = _vc9.Ambient
_vbh.OutdoorAmbient = _vc9.OutdoorAmbient
_vbh.GlobalShadows = _vc9.GlobalShadows
_vbh.FogEnd = _vc9.FogEnd
_vbh.ExposureCompensation = _vc9.ExposureCompensation
end)
_vc9 = nil
end
pcall(function()
_v1:BindToRenderStep(_ei9m[425-10], Enum.RenderPriority.Last.Value + bit32.bxor(1615780488,1615780489), function()
if _v4.FULLBRIGHT and not _v4.UNLOADED then
pcall(function()
_vbh.Brightness = bit32.bxor(1050875076,1050875078)
_vbh.Ambient = Color3.fromRGB((807-617), (3*63+1), bit32.bxor(1710591944,1710591862))
_vbh.OutdoorAmbient = Color3.fromRGB((5*38+0), (6*31+4), (1149-959))
_vbh.GlobalShadows = false
_vbh.FogEnd = 1e9
_vbh.ExposureCompensation = 0.15
for _vca, _vcb in ipairs(_vbh:GetChildren()) do
if _vcb:IsA(_ei9m[921+310]) and _vcb.Density > 0.3 then _vcb.Density = 0.3 end
end
end)
end
end)
end)
end
_v4.NO_FOG = false
do
local _vcc = nil
_v4.enableNoFog = function()
if _vcc then return end
_vcc = { FogEnd = _vbh.FogEnd, FogStart = _vbh.FogStart, atmos = {} }
pcall(function()
for _vcd, _vce in ipairs(_vbh:GetChildren()) do
if _vce:IsA(_ei9m[5+768]) then
_vcc.atmos[_vce] = { Density = _vce.Density, Haze = _vce.Haze }
end
end
end)
end
_v4.restoreNoFog = function()
if not _vcc then return end
pcall(function()
_vbh.FogEnd = _vcc.FogEnd
_vbh.FogStart = _vcc.FogStart
end)
for _vcf, _vcg in pairs(_vcc.atmos) do
pcall(function()
if _vcf.Parent then _vcf.Density = _vcg.Density; _vcf.Haze = _vcg.Haze end
end)
end
_vcc = nil
end
pcall(function()
_v1:BindToRenderStep(_ei9m[898-11], Enum.RenderPriority.Last.Value + bit32.bxor(184883209,184883211), function()
if not _v4.NO_FOG or _v4.UNLOADED then return end
pcall(function()
if _vbh.FogEnd < 1e6 then _vbh.FogEnd = 1e6 end
if _vbh.FogStart ~= bit32.bxor(1543259535,1543259535) then _vbh.FogStart = bit32.bxor(521433223,521433223) end
for _vch, _vci in ipairs(_vbh:GetChildren()) do
if _vci:IsA(_ei9m[977-8]) then
if _vci.Density ~= (0+0) then _vci.Density = (567-567) end
if _vci.Haze ~= bit32.bxor(879552442,879552442) then _vci.Haze = (535-535) end
end
end
end)
end)
end)
end
_v4.VIM = game:GetService(_ei9m[23+420])
local _vcj = nil
_v4.AG_UIS = game:GetService(_ei9m[171-14])
local _vck = true
table.insert(_vi, _v4.AG_UIS.WindowFocused:Connect(function() windowFocused = true end))
table.insert(_vi, _v4.AG_UIS.WindowFocusReleased:Connect(function() windowFocused = false end))
local _vcl = _v4.getLocalPhysicsRoot
_v4.AG_SPEED = (4+12)
_v4.AG_TURN_RATE = math.rad(bit32.bxor(2062689957,2062690019))
function _v4.startAutoGrow()
if _vcj then return end
_vcj = task.spawn(function()
local _vcm = math.random() < 0.5 and Enum.KeyCode.A or Enum.KeyCode.D
local _vcn = (_vcm == Enum.KeyCode.A) and bit32.bxor(1141114790,1141114791) or -(0+1)
local _vco = false
local _vcp = _v4.AG_SPEED
local _vcq = _v4.AG_TURN_RATE * _vcn
local _vcr = bit32.bxor(614491568,614491569)
local _vcs, _vct
local function _vcu()
if not _vco then return end
vimHeld = false
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.V, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, _vcm, false, game) end)
end
while _v4.AUTO_GROW and not _v4.UNLOADED do
local _vcv = task.wait()
if _vcv <= (997-997) then dt = bit32.bxor(530425182,530425183) / (268-208) end
local _vcw = _vcl()
if _vck then
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.V, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(true, _vcm, false, game) end)
vimHeld = true
if _vcw then
pcall(function()
local _vcx = _vcw.CFrame.LookVector
local _vcy = Vector3.new(_vcx.X, (0+0), _vcx.Z)
if _vcy.Magnitude > 0.01 then
local _vcz = math.atan2(_vcy.X, _vcy.Z)
if _vct then
local _vd0 = _vcz - _vct
if _vd0 > math.pi then dyaw = _vd0 - bit32.bxor(1379782163,1379782161) * math.pi
elseif _vd0 < -math.pi then dyaw = _vd0 + (756-754) * math.pi end
local _vd1 = _vd0 / _vcv
if math.abs(_vd1) > 0.05 then sampledTurn = _vd1 end
end
prevYaw = _vcz
end
if _vcs then
local _vd2 = _vcw.Position
local _vd3 = Vector3.new(_vd2.X - _vcs.X, (0+0), _vd2.Z - _vcs.Z).Magnitude
local _vd4 = _vd3 / _vcv
if _vd4 > (594-593) then sampledSpeed = _vd4 end
end
prevPos = _vcw.Position
local _vd5 = _v2.Character and _v2.Character:GetAttribute(_ei9m[3+1097])
if type(_vd5) == _ei9m[732] and _vd5 > (490-490) then sampledScale = _vd5 end
end)
end
else
_vcu()
_vcs, prevYaw = nil, nil
if _vcw and not _vcw.Anchored then
pcall(function()
local _vd6, _vd7 = _vcq, _vcp
local _vd8 = _v2.Character and _v2.Character:GetAttribute(_ei9m[311])
if type(_vd8) == _ei9m[844-20] and _vd8 > (490-490) and _vcr > bit32.bxor(466250877,466250877) then
local _vd9 = _vcr / _vd8
effTurn = _vcq * _vd9
effSpeed = _vcp * _vd9
end
local _vda = _vcw.CFrame.LookVector
local _vdb = Vector3.new(_vda.X, bit32.bxor(1740426830,1740426830), _vda.Z)
if _vdb.Magnitude < 0.01 then flat = Vector3.new(bit32.bxor(293133993,293133993), (175-175), bit32.bxor(214117170,214117171)) end
flat = _vdb.Unit
local _vdc = _vd6 * _vcv
local _vdd, _vde = math.cos(_vdc), math.sin(_vdc)
local _vdf = Vector3.new(_vdb.X * _vdd + _vdb.Z * _vde, bit32.bxor(1623447385,1623447385), -_vdb.X * _vde + _vdb.Z * _vdd)
local _vdg = _vcw.Position
_vcw.CFrame = CFrame.lookAt(_vdg, _vdg + _vdf)
local _vdh = _vcw.AssemblyLinearVelocity
_vcw.AssemblyLinearVelocity = Vector3.new(_vdf.X * _vd7, _vdh.Y, _vdf.Z * _vd7)
end)
end
end
end
_vcu()
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.V, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, _vcm, false, game) end)
autoGrowThread = nil
end)
end
function _v4.stopAutoGrow()
_v4.AUTO_GROW = false
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.V, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.A, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.D, false, game) end)
pcall(function()
local _vdi = _vcl()
if _vdi and not _vdi.Anchored then
local _vdj = _vdi.AssemblyLinearVelocity
_vdi.AssemblyLinearVelocity = Vector3.new((30-30), _vdj.Y, (70-70))
end
end)
_vcj = nil
end
_v4.WATER_RS = game:GetService(_ei9m[311-19])
local _vdk = _v4.WATER_RS:FindFirstChild(_ei9m[12+59])
local _vdl = _vdk and _vdk:FindFirstChild(_ei9m[3+830])
_v4.ReplicaSetRemote = _vdk and _vdk:FindFirstChild(_ei9m[6+548])
local _vdm = nil
_v4.cleanliness = {}
_v4.waterCur = {}
_v4.waterMax = {}
if _v4.ReplicaSetRemote then
table.insert(_vi, _v4.ReplicaSetRemote.OnClientEvent:Connect(function(_vdn, _vdo, _vdp)
if typeof(_vdo) ~= _ei9m[712] then return end
if _vdo[bit32.bxor(1022751996,1022751997)] == _ei9m[448-9] then
consumptionReplicaId = _vdn
elseif _vdo[(1+0)] == _ei9m[242-18] and _vdo[(4*0+2)] == _ei9m[1256-5] then
_v4.bleedForecast[_vdn] = (typeof(_vdp) == _ei9m[3+144] and _vdp) or bit32.bxor(2102344313,2102344313)
elseif _vdo[(0+1)] == _ei9m[144-6] and _vdo[bit32.bxor(1692408592,1692408594)] == _ei9m[1204] then
if typeof(_vdp) == _ei9m[1101-13] then _v4.staminaCur[_vdn] = _vdp end
elseif _vdo[bit32.bxor(173600125,173600124)] == _ei9m[604+72] and _vdo[(240-238)] == _ei9m[4+1297] then
if typeof(_vdp) == _ei9m[639-2] then _v4.staminaMax[_vdn] = _vdp end
elseif _vdo[bit32.bxor(993554763,993554762)] == _ei9m[2+464] and _vdo[(0+2)] == _ei9m[1148-13] then
if typeof(_vdp) == _ei9m[698] then _v4.infectCur[_vdn] = _vdp end
elseif _vdo[bit32.bxor(1568086780,1568086781)] == _ei9m[110+23] and _vdo[(6*0+2)] == _ei9m[342-10] then
if typeof(_vdp) == _ei9m[1045] then _v4.waterCur[_vdn] = _vdp end
elseif _vdo[(860-859)] == _ei9m[84+884] and _vdo[bit32.bxor(1510875810,1510875808)] == _ei9m[473-16] then
if typeof(_vdp) == _ei9m[827-19] then _v4.waterMax[_vdn] = _vdp end
elseif _vdo[bit32.bxor(779626306,779626307)] == _ei9m[305] and _vdo[(0+2)] == nil then
if typeof(_vdp) == _ei9m[736-5] then _v4.cleanliness[_vdn] = _vdp end
elseif _vdo[bit32.bxor(1336106767,1336106766)] == _ei9m[6+537] and _vdo[(971-969)] == _ei9m[697-12] then
if typeof(_vdp) == _ei9m[21] then _v4.foodMax[_vdn] = _vdp end
elseif _vdo[bit32.bxor(1552814182,1552814183)] == _ei9m[1281] and _vdo[bit32.bxor(521091413,521091415)] == _ei9m[1211+27] then
if typeof(_vdp) == _ei9m[1261] then _v4.foodCur[_vdn] = _vdp end
end
end))
end
_v4.ReplicaDestroyRemote = _vdk and _vdk:FindFirstChild(_ei9m[581+240])
if _v4.ReplicaDestroyRemote then
table.insert(_vi, _v4.ReplicaDestroyRemote.OnClientEvent:Connect(function(_vdq)
_v4.bleedForecast[_vdq] = nil
_v4.staminaCur[_vdq] = nil; _v4.staminaMax[_vdq] = nil
_v4.infectCur[_vdq] = nil; _v4.foodSeenMax[_vdq] = nil; _v4.waterSeenMax[_vdq] = nil
end))
end
local function _vdr()
local _vds = _v2.Character
if not _vds then return nil end
local _vdt = _vds:FindFirstChild(_ei9m[1167-12])
return _vdt and _vdt.Value or nil
end
function _v4.readWaterStat()
local ok, cur, max = pcall(function()
local _vdu = _v2.PlayerGui.MainHUD.StatsFrame.Water.TextLabel.Text
txt = _vdu:gsub(",", "")
local _vdv, _vdw = _vdu:match(_ei9m[328+228])
return tonumber(_vdv), tonumber(_vdw)
end)
if ok then return cur, max end
return nil, nil
end
function _v4.readFoodStat()
local ok, cur, max = pcall(function()
local function _vdx(_vdy)
if type(_vdy) ~= _ei9m[7+898] then return nil end
s = _vdy:gsub(",", ""):gsub("%s", "")
local _vdz = _vdy:match(_ei9m[507-20])
local _ve0 = _vdz and tonumber(_vdz)
if not _ve0 then return nil end
local _ve1 = _vdy:sub(-bit32.bxor(150537945,150537944)):lower()
if _ve1 == "k" then v = _ve0 * 1e3
elseif _ve1 == "m" then v = _ve0 * 1e6
elseif _ve1 == "b" then v = _ve0 * 1e9 end
return _ve0
end
local _ve2 = _v2.PlayerGui.MainHUD.StatsFrame.Food.TextLabel.Text
local _ve3, _ve4 = _ve2:match(_ei9m[3+601])
return _vdx(_ve3), _vdx(_ve4)
end)
if ok and cur and max and max > (522-517) then return cur, max end
return nil, nil
end
function _v4.myFood()
local _ve5 = _v2.Character
 do local _wh8vg3ju9=#"rvsdaanrqjjrtw"+55 end
local _ve6 = _ve5 and _ve5:FindFirstChild(_ei9m[5+1109])
local _ve7 = _ve6 and _ve6.Value
if _ve7 then
local _ve8, _ve9 = _v4.foodCur[_ve7], _v4.foodMax[_ve7]
if _ve8 and _ve9 then return _ve8, _ve9 end
end
return _v4.readFoodStat()
end
function _v4.myWater()
local _vea = _vdr()
if _vea then
local _veb, _vec = _v4.waterCur[_vea], _v4.waterMax[_vea]
if _veb and _vec and _vec > bit32.bxor(2146982723,2146982723) then return _veb, _vec end
end
return _v4.readWaterStat()
end
function _v4.getConsumptionReplicaId()
if _vdm then return _vdm end
pcall(function()
if type(_v4.getCC) ~= _ei9m[3+1326] then return end
local _ved = _v4.getCC()
local _vee = _ved and _ved.Replica
if _vee and _vee.Id then consumptionReplicaId = _vee.Id end
end)
return _vdm
end
task.spawn(function()
while not _v4.UNLOADED do
pcall(function()
if not _v4.PACK_ESP and not _v4.PACK_LEADER_ESP then return end
local _vef = require(_v4.WATER_RS.Packages.Knit)
local _veg = _vef.GetController(_ei9m[210-20])
local _veh = _veg:GetMyPack()
local _vei = {}
local _vej = {}
if _veh and _veh.Parent then
for _vek, _vel in _veh.Parent.Children do
local _vem = _vek.Tags and _vek.Tags.Name or _ei9m[808+229]
local _ven = _vek.Data
if _ven and _ven.Members then
local _veo = #_ven.Members
local _vep = _ven.Leader and tostring(_ven.Leader) or nil
for _vel, _ver in ipairs(_ven.Members) do
local _ves = _v0:GetPlayerByUserId(_ver[bit32.bxor(1606961100,1606961101)])
if _ves then
local _vet = _vep and (_ves.Name == _vep or _ves.DisplayName == _vep)
_vei[_ves] = {name = _vem, count = _veo, isLeader = _vet}
if _vet then _vej[_ves] = _vem end
end
end
end
end
else
for _veu, _vev in ipairs(_v0:GetPlayers()) do
if _vev:GetAttribute(_ei9m[5+455]) then
_vei[_vev] = {name = "", count = bit32.bxor(2134484877,2134484877), isLeader = false}
end
end
end
_v4.packMembers = _vei
_v4.packLeaders = _vej
end)
task.wait(bit32.bxor(1844996765,1844996766))
end
end)
task.spawn(function()
local _vew = false
local _vex = false
local function _vey(_vez)
if _vez == false and _v4.FREEZE_WATER then return end
local _vf0 = _vdr()
if _vf0 and _vdl then
pcall(function() _vdl:FireServer(_vf0, _ei9m[375+575], _ei9m[1106], _vez) end)
end
drinkingActive = _vez
end
local _vf1 = false
while not _v4.UNLOADED do
pcall(function()
if not _vf1 then
clearedStale = true
if not _v4.FREEZE_WATER then _vey(false) end
end
if not ((_v4.AUTO_WATER or _v4.AFK_FARM) and _vdl) then return end
local _vf2 = _v4.getConsumptionReplicaId()
if not _vf2 then
if not _vex then
warnedNoReplica = true
pcall(function()
if _v4.Hub then
_v4.Hub:Notify(_ei9m[1334], (6*1+0))
end
end)
end
return
end
warnedNoReplica = false
local _vf3, _vf4 = _v4.myWater()
local _vf5 = true
if _vf3 and _vf4 and _vf4 > (557-557) then
wantSip = _vf3 < _vf4 - math.max(_vf4 * 0.002, 0.001)
end
if _vf5 then
_vdl:FireServer(_vf2, _ei9m[361+775])
end
if _vew then _vey(false) end
end)
task.wait((0+1) / math.clamp(_v4.SIP_RATE or (3+1), 0.5, (14+6)))
end
end)
task.spawn(function()
local _vf6, _vf7 = false, false
local function _vf8(_vf9, _vfa)
local _vfb = _vdr()
if _vfb and _vdl then
pcall(function() _vdl:FireServer(_vfb, _ei9m[273+762], _vf9, _vfa) end)
end
end
while not _v4.UNLOADED do
if _v4.FREEZE_FOOD then
_vf8(_ei9m[471-4], true)
elseif _vf6 then
_vf8(_ei9m[382+438], false)
end
prevFood = _v4.FREEZE_FOOD
if _v4.FREEZE_WATER then
_vf8(_ei9m[5+763], true)
elseif _vf7 then
_vf8(_ei9m[148-14], false)
end
prevWater = _v4.FREEZE_WATER
task.wait(1.0)
end
if _vf6 then pcall(_vf8, _ei9m[817], false) end
if _vf7 then pcall(_vf8, _ei9m[1212], false) end
end)
task.spawn(function()
local _vfc = game:GetService(_ei9m[992-12])
local _vfd, _vfe, _vff, _vfg
pcall(function() CData = require(_v4.WATER_RS.Shared.ConsumptionData) end)
pcall(function() CState = require(_v4.WATER_RS.Common.CharacterState) end)
pcall(function() CC = require(_v4.WATER_RS.Packages.Knit).GetController(_ei9m[216]) end)
pcall(function() CBuf = require(_v4.WATER_RS.Common.Buffers.ConsumableBuffer) end)
local _vfh = _vfg and _vfg.FOOD or (7+2)
local _vfi = _vfg and _vfg.WATER or (34-21)
local _vfj = _vfg and _vfg.SPAWN or (3+14)
local function _vfk()
local _vfl
pcall(function() id = _vff and _vff.Replica and _vff.Replica.Id end)
return _vfl or _vdm
end
local _vfm = false
local function _vfn(_vfo)
if _vfo == false and _v4.FREEZE_FOOD then return end
if _vfo == _vfm then return end
consuming = _vfo
local _vfp = _vdr()
if _vfp and _vdl then
pcall(function() _vdl:FireServer(_vfp, _ei9m[427-11], _ei9m[665-10], _vfo) end)
end
end
local function _vfq(_vfr)
local _vfs, _vft = pcall(function() return _vfe.Data.Diet.Categories[_vfr] ~= nil end)
return _vfs and _vft
end
local function _vfu()
local _vfv
pcall(function() s = _vfe.Wellbeing.WellbeingReplica.Data.SavableStats.Stats end)
if type(_vfv) == _ei9m[714-9] and _vfv.Proteins ~= nil then return _vfv end
pcall(function() s = _vfe.Wellbeing.SavableStats end)
if type(_vfv) == _ei9m[2+643] and _vfv.Proteins ~= nil then return _vfv end
return nil
end
local function _vfw()
local _vfx = _vfu()
if not _vfx then return nil end
local _vfy = {}
pcall(function()
for _vfz, _vg0 in ipairs(_vfe.Data.Shared.Nutrition) do
if _vg0.Category then _vfy[#_vfy + bit32.bxor(2082131929,2082131928)] = _vg0.Category end
end
end)
local _vg1, _vg2
for _vg3, _vg4 in ipairs(_vfy) do
local _vg5 = tonumber(_vfx[_vg4])
if _vg5 and (not _vg2 or _vg5 < _vg2) then _vg1, lowVal = _vg4, _vg5 end
end
return _vg1
end
local function _vg6(_vg7, _vg8)
if not _vff or not _vff.Replica or not _vff.Replica.Data then return nil end
local _vg9 = _vff.Replica.Data.ConsumableData
local _vga = _vg9 and (_vg9[tostring(_vg7)] or _vg9[_vg7])
if type(_vga) ~= _ei9m[132] then return nil end
local _vgb = _vga[_vg8 or (332-331)]
if typeof(_vgb) ~= _ei9m[1252] then return nil end
local _vgc, _vgd, _vge, _vgf = pcall(function()
return buffer.readu32(_vgb, _vfh) / bit32.bxor(1597780973,1597780873),
buffer.readu32(_vgb, _vfi) / (33+67),
buffer.readu8(_vgb, _vfj) == (1+0)
end)
if _vgc then return _vgd, _vge, _vgf end
return nil
end
local function _vgg(_vgh, _vgi)
local _vgj = {}
local _vgk = _vfd and _vfd.FoliageConsumables and _vfd.FoliageConsumables[_vgh]
local _vgl = _vgk and _vgk.Actions
if type(_vgl) == _ei9m[28+836] then
for _vgm, _vgn in ipairs(_vgl) do
if type(_vgn) == _ei9m[212-5] then
local _vgo, _vgp, _vgq = _vg6(_vgi, _vgm)
if _vgo ~= nil then
if not _vgq or (_vgo + (_vgp or bit32.bxor(1507466166,1507466166))) <= bit32.bxor(1798889062,1798889062) then continue end
end
_vgj[#_vgj + bit32.bxor(1544352158,1544352159)] = { index = _vgm, nutrition = _vgn.Nutrition or {},
allowed = _vgn.Category ~= nil and _vfq(_vgn.Category),
food = _vgo or (0+0) }
end
end
end
if #_vgj == (227-227) then
local _vgr, _vgs, _vgt = _vg6(_vgi, bit32.bxor(338640482,338640483))
if _vgr and _vgt and (_vgr + (_vgs or bit32.bxor(1765375986,1765375986))) > (908-908) then
_vgj[bit32.bxor(1535795234,1535795235)] = { index = (0+1), nutrition = {}, allowed = false, food = _vgr }
elseif _vgr == nil then
_vgj[bit32.bxor(1905220629,1905220628)] = { index = (833-832), nutrition = {}, allowed = false, food = (0+0) }
end
end
return _vgj
end
local function _vgu(_vgv)
local _vgw = (type(_vgv) == _ei9m[495+544] and _vgv:sub(bit32.bxor(829592192,829592193), (3+1)) == _ei9m[2+920]) and _ei9m[266-1]
or (_vfd and _vfd.CorpseTypes and _vfd.CorpseTypes[_vgv])
local _vgx = _vgw and _vfd and _vfd.CorpseConsumables and _vfd.CorpseConsumables[_vgw]
local _vgy = _vgx and _vgx.Actions and _vgx.Actions[bit32.bxor(429931048,429931049)]
if _vgy then
return { index = (0+1), nutrition = _vgy.Nutrition or {},
allowed = _vgy.Category ~= nil and _vfq(_vgy.Category) }
end
return { index = (0+1), nutrition = {}, allowed = false }
end
local function _vgz(_vh0, _vh1)
local _vh2 = bit32.bxor(1931688518,1931688528)
pcall(function() if _v4.khRange then EAT = _v4.khRange() end end)
local _vh3 = math.max(_vh2 * (501-498), (566-506))
local _vh4, _vh5, _vh6, _vh7
local _vh8, _vh9, _vha
local _vhb, _vhc, _vhd
local _vhe, _vhf, _vhg
local function _vhh(_vhi, _vhj, _vhk, _vhl, _vhm)
if not _vhi then return end
if _vhm <= _vh2 then
local _vhn = (0+2)
if _vh1 and _vhk[_vh1] then rank = bit32.bxor(1014952626,1014952626) elseif _vhl then rank = (976-975) end
if (not _vh4) or _vhn < _vh4 or (_vhn == _vh4 and _vhm < (_vh7 or math.huge)) then
_vh4, _vh5, _vh6, rDist = _vhn, _vhi, _vhj, _vhm
end
end
if not _vhg or _vhm < _vhg then _vhe, _vhf, fDist = _vhi, _vhj, _vhm end
if _vhm <= _vh3 then
if _vhl and (not _vhd or _vhm < _vhd) then _vhb, _vhc, aDist = _vhi, _vhj, _vhm end
if _vh1 and _vhk[_vh1] and (not _vha or _vhm < _vha) then _vh8, _vh9, bDist = _vhi, _vhj, _vhm end
end
end
for _vho, _vhp in ipairs(_vfc:GetTagged(_ei9m[433])) do
local _vhq = _vhp:GetAttribute("ID")
if _vhq then
local _vhr
pcall(function() pos = _vhp:GetPivot().Position end)
if _vhr then
local _vhs = (_vhr - _vh0).Magnitude
local _vht = _vgg(_vhp.Name, _vhq)
for _vho, _vhv in ipairs(_vht) do _vhh(tonumber(_vhq), _vhv.index, _vhv.nutrition, _vhv.allowed, _vhs) end
end
end
end
if _vff and _vff.CorpseData then
for _vhw, _vhx in pairs(_vff.CorpseData) do
local _vhy = _vhx and _vgu(_vhx.Name)
local _vhz = _vhy and _vhx.Root
if _vhz then
local _vi0
pcall(function() pos = _vhz:IsA(_ei9m[646+286]) and _vhz.Position or _vhz:GetPivot().Position end)
if _vi0 then _vhh(tonumber(_vhw), _vhy.index, _vhy.nutrition, _vhy.allowed, (_vi0 - _vh0).Magnitude) end
end
end
end
if _vh5 then return _vh5, _vh6 end
if _vh8 then return _vh8, _vh9 end
if _vhb then return _vhb, _vhc end
return _vhe, _vhf
end
local function _vi1(_vi2)
local _vi3, _vi4
for _vi5, _vi6 in ipairs(_vfc:GetTagged(_ei9m[106+891])) do
local _vi7 = _vi6:GetAttribute("ID")
if _vi7 then
local _vi8
pcall(function() pos = _vi6:GetPivot().Position end)
if _vi8 then
local _vi9 = (_vi8 - _vi2).Magnitude
if not _vi4 or _vi9 < _vi4 then _vi3, bestDist = tonumber(_vi7), _vi9 end
end
end
end
return _vi3, bit32.bxor(135328287,135328286)
end
local _via, _vib, _vic = nil, nil, bit32.bxor(1096760861,1096760861)
local _vid = 0.5
_v4.afkConsumeId = _vfk
_v4.afkBufCheck = _vg6
function _v4.afkPickFood(_vie, _vif)
local _vig = (2*11+0)
pcall(function() if _v4.khRange then EAT = _v4.khRange() end end)
local _vih = _v4.AFK_FARM_AVOID or (110+90)
local _vii = false
pcall(function()
if _vfe and _vfe.Wellbeing and _vfe.Wellbeing.SavableStats then
local _vij = _vfe.Wellbeing.SavableStats.Calcium
if _vij and _vij < bit32.bxor(700670065,700670064) then wantCalcium = true end
end
end)
local _vik = _vii and _ei9m[899] or _vfw()
local _vil = {}
if _vih > (0+0) then
for _vim, _vin in ipairs(game.Players:GetPlayers()) do
if _vin ~= _v2 and _vin.Character then
local _vio = _v4.getRootOf(_vin.Character, false)
if _vio then _vil[#_vil + (405-404)] = _vio.Position end
end
end
end
local _vip, _viq, _vir, _vis
local function _vit(_viu, _viv, _viw, _vix, _viy, _viz)
if not _viu or not _viz then return end
if _vif and _vif[_viu] then return end
for _vj0, _vj1 in ipairs(_vil) do
if (_vj1 - _viz).Magnitude <= _vih then return end
end
local _vj2 = (524-524)
if _vik and _viw[_vik] and _viw[_vik] > (71-71) then s = _vj2 + (10743-743) end
if _vix then s = _vj2 + (119+4881) end
s = _vj2 - _viy
if not _vis or _vj2 > _vis then
_vip, _viq, _vir, bestScore = _viu, _viv, _viz, _vj2
end
end
for _vj3, _vj4 in ipairs(_vfc:GetTagged(_ei9m[1164])) do
local _vj5 = _vj4:GetAttribute("ID")
if _vj5 then
local _vj6
pcall(function() pos = _vj4:GetPivot().Position end)
if _vj6 then
local _vj7 = (_vj6 - _vie).Magnitude
local _vj8 = _vgg(_vj4.Name, _vj5)
for _vj3, _vja in ipairs(_vj8) do _vit(tonumber(_vj5), _vja.index, _vja.nutrition, _vja.allowed, _vj7, _vj6) end
end
end
end
if _v4.AFK_FARM_MEAT and _vff and _vff.CorpseData then
for _vjb, _vjc in pairs(_vff.CorpseData) do
local _vjd = _vjc and _vgu(_vjc.Name)
local _vje = _vjd and _vjc.Root
if _vje then
local _vjf
pcall(function() pos = _vje:IsA(_ei9m[1351-14]) and _vje.Position or _vje:GetPivot().Position end)
if _vjf then _vit(tonumber(_vjb), _vjd.index, _vjd.nutrition, _vjd.allowed, (_vjf - _vie).Magnitude, _vjf) end
end
end
end
return _vip, _viq, _vir
end
local _vjg = true
local _vjh = (226-226)
local _vji = nil
local _vjj = nil
local _vjk = (926-921)
while not _v4.UNLOADED do
pcall(function()
local _vjl = _vfk()
local _vjm = true
if _v4.EAT_WHEN_HUNGRY then
local _vjn, _vjo = _v4.myFood()
if _vjn and _vjo and _vjo > bit32.bxor(1352949035,1352949035) then
if _vjg then
if _vjn >= _vjo - 0.05 then hungry = false end
elseif _vjn <= _vjo - (635-634) then
hungry = true
end
wantEat = _vjg
end
end
if _v4.FORCE_EAT and not _v4.AFK_FARM and _vdl and _vjl and _vjm then
local _vjp = os.clock()
local _vjq = _vjh >= _vjk
if _vjp - _vic >= _vid or not _via or _vjq then
if _vjq then
stallCount = (0+0); lastBiteFood = nil; stallTarget = nil
end
lastScan = _vjp
local _vjr = _v2.Character
local _vjs = _vjr and (_vjr:FindFirstChild(_ei9m[611]) or _vjr:FindFirstChild(_ei9m[1196])
or _vjr:FindFirstChildWhichIsA(_ei9m[734+128]))
if _vjs then
local _vjt, _vju
if _vfd and _vfe then
_vjt, newIdx = _vgz(_vjs.Position, _vfw())
else
_vjt, newIdx = _vi1(_vjs.Position)
end
if _vjt then
_via, cachedIdx = _vjt, _vju
if _vjt ~= _vjj then
stallCount = (0+0); lastBiteFood = nil; stallTarget = _vjt
end
else
_via, cachedIdx = nil, nil
end
end
end
for _vjv = bit32.bxor(1106351192,1106351193), bit32.bxor(735846561,735846560) do
local _vjw, _vjx = _via, _vib
if _vjw and type(_vjw) == _ei9m[465+243] and _vjw >= bit32.bxor(1226048056,1226048056) and _vjw < 4294967296 then
local _vjy, _vjz, _vk0 = _vg6(_vjw, _vjx)
local _vk1 = _vjy and (_vjy + (_vjz or (491-491))) or nil
if _vjy ~= nil and ((not _vk0 or _vk1 <= (0+0)) or (_v4.LEAVE_SCRAPS and _vjy <= (141-136))) then
cachedId = nil
else
local _vk2 = buffer.create(5)
buffer.writeu32(_vk2, 0, math.floor(_vjw))
buffer.writeu8(_vk2, 4, _vjx or 1)
_vdl:FireServer(_vjl, _ei9m[730+274], _vk2)
if _vjy then
if _vji and _vjy >= _vji and _vjj == _vjw then
stallCount = _vjh + (339-338)
else
stallCount = (0+0)
end
lastBiteFood = _vjy
stallTarget = _vjw
end
end
end
end
end
if _vfm then _vfn(false) end
end)
task.wait(_v4.FAST_EAT and ((244-243) / math.clamp(_v4.FAST_EAT_RATE or bit32.bxor(92915575,92915571), 0.5, (845-825))) or 0.8)
end
end)
task.spawn(function()
local _vk3 = false
local function _vk4(_vk5, _vk6)
if _vk5 == false and _v4.INF_OXYGEN then return end
if _vk5 == _vk3 and not _vk6 then return end
local _vk7 = _vdr()
if _vk7 and _vdl then
pcall(function() _vdl:FireServer(_vk7, _vk5 and _ei9m[880-17] or _ei9m[841+274]) end)
end
cleaning = _vk5
end
local _vk8 = bit32.bxor(982559289,982559289)
while not _v4.UNLOADED do
if _v4.INF_OXYGEN and _vdl then
oxyTick = _vk8 + (1+0)
_vk4(true, (_vk8 % (1+4)) == bit32.bxor(479770957,479770957))
elseif _v4.AUTO_CLEAN and _vdl then
local _vk9 = _vdr()
local _vka = _vk9 and _v4.cleanliness[_vk9]
if _vka and _vka >= (4*24+3) then
_vk4(false)
else
_vk4(true)
end
elseif _vk3 then
_vk4(false)
end
task.wait(1.0)
end
if _vk3 then
_v4.INF_OXYGEN = false
_vk4(false)
end
end)
_v4.GOVERNOR = true
_v4.GOV_MULT = bit32.bxor(1227657658,1227657662)
_v4.GOV_SPEED = (975-825)
_v4.GOV_STEP_MAX = (3*8+1)
_v4.GOV_MIN = (14+6)
_v4.govCommanded = nil
_v4.govCommandT = bit32.bxor(2005364380,2005364380)
_v4.govReverts = bit32.bxor(1720391810,1720391810)
_v4.govLastRevert = bit32.bxor(401711315,401711315)
_v4.govCleanSince = (0+0)
function _v4.govLegit()
local _vkb = os.clock()
if _v4.govLegitVal and (_vkb - (_v4.govLegitT or bit32.bxor(1533894352,1533894352))) < (549-548) then return _v4.govLegitVal end
local _vkc
pcall(function()
local _vkd = _v4.getCS()
local _vke = _vkd and _vkd.Replica and _vkd.Replica.Data
if not _vke then return end
for _vkf, _vkg in ipairs({ _ei9m[4+505], _ei9m[43-3], _ei9m[1279-1],
_ei9m[38+23], _ei9m[158+431], _ei9m[3+269] }) do
local _vkh = tonumber(_vke[_vkg])
if _vkh and _vkh > (607-606) then v = math.max(_vkc or bit32.bxor(675728118,675728118), _vkh) end
end
end)
_v4.govLegitVal = _vkc or (1020-995)
_v4.govLegitT = _vkb
return _v4.govLegitVal
end
function _v4.govCeiling()
return math.min(_v4.GOV_SPEED, _v4.govLegit() * (_v4.GOV_MULT or 1.5))
end
function _v4.govNext(_vki, _vkj, _vkk, _vkl)
local _vkm = _vkj - _vki
local _vkn = _vkm.Magnitude
if _vkn < 0.001 then return _vkj, false end
if not _v4.GOVERNOR then
_v4.govCommanded, _v4.govCommandT = _vkj, os.clock()
return _vkj, false
end
local _vko = _v4.govCeiling()
local _vkp = math.min(_vko, _vkl or _vko) * math.min(_vkk or 0.016, 0.1)
if _vkp > _v4.GOV_STEP_MAX then _vkp = _v4.GOV_STEP_MAX end
local _vkq, _vkr
if _vkn <= _vkp then _vkq, _vkr = _vkj, false
else _vkq, _vkr = _vki + _vkm.Unit * _vkp, true end
_v4.govCommanded, _v4.govCommandT = _vkq, os.clock()
return _vkq, _vkr
end
 do local _wh8vfcmge=bit32.bxor(19507,53821) end

function _v4.govGlide(_vks, _vkt, _vku, _vkv, _vkw, _vkx)
local _vky = os.clock() + (_vkv or bit32.bxor(1575519048,1575519068))
local _vkz = _vkw or (3+3)
while not _v4.UNLOADED and os.clock() < _vky do
if not (_vks and _vks.Parent) then return false end
local _vl0 = _vks.Position
if (_vkt - _vl0).Magnitude <= _vkz then return true end
local _vl1 = _v4.govNext(_vl0, _vkt, 0.03, _vku)
pcall(function()
_vks.CFrame = _vkx and (CFrame.new(_vl1) * _vkx) or CFrame.new(_vl1)
_vks.AssemblyLinearVelocity = Vector3.zero
_vks.AssemblyAngularVelocity = Vector3.zero
end)
task.wait(0.03)
end
return (_vks and _vks.Parent and (_vkt - _vks.Position).Magnitude <= _vkz) or false
end
_v4.addStep(bit32.bxor(502563579,502563578), function()
if _v4.UNLOADED or not _v4.GOVERNOR or not _v4.govCommanded then return end
local _vl2 = os.clock()
if _vl2 - _v4.govCommandT > 0.2 then return end
local _vl3 = _v4.getLocalPhysicsRoot()
if not (_vl3 and _vl3.Parent) then return end
if (_vl3.Position - _v4.govCommanded).Magnitude > (2+48) then
if _vl2 - _v4.govLastRevert < (283-281) then return end
_v4.govLastRevert = _vl2
_v4.govReverts = _v4.govReverts + bit32.bxor(1838944153,1838944152)
_v4.govCleanSince = _vl2
do
local _vl4 = _v4.GOV_SPEED
_v4.GOV_SPEED = math.max(_v4.GOV_MIN, math.floor(_v4.GOV_SPEED * 0.6))
if _vl4 ~= _v4.GOV_SPEED then
pcall(function()
if _v4.Hub then
_v4.Hub:Notify(_ei9m[909-1] .. _vl4 .. _ei9m[2+1055]
.. _v4.GOV_SPEED .. _ei9m[629-1] .. _v4.govReverts .. ")", (2*3+0))
end
end)
end
end
end
end)
do
local _vl5 = game:GetService(_ei9m[835])
local function _vl6()
local _vl7 = _v2.Character
if not _vl7 then return nil end
return _vl7:FindFirstChild(_ei9m[43-17]) or _vl7:FindFirstChild(_ei9m[7+578])
or _vl7:FindFirstChildWhichIsA(_ei9m[3+283])
end
local function _vl8(_vl9)
local _vla = _v2.Character
if _vla then pcall(function() _vla:SetAttribute(_ei9m[7+404], _vl9 and true or nil) end) end
end
local _vlb, _vlc, _vld = false, nil, nil
local function _vle(_vlf)
if _v4.UNLOADED then return end
if not _v4.FLY then
if _vlb then
_vlb = false; _vlc = nil; _vld = nil; _vl8(false)
_v4.flyLandUntil = os.clock() + bit32.bxor(723488812,723488806)
local _vlg = _v2.Character
if _vlg and _vlg:GetAttribute(_ei9m[62+146]) ~= true then
pcall(function() _vlg:SetAttribute(_ei9m[371+804], true) end)
task.delay(10.2, function()
if os.clock() >= (_v4.flyLandUntil or bit32.bxor(712154248,712154248)) and not _v4.NO_FALL_DAMAGE then
local _vlh = _v2.Character
if _vlh == _vlg then pcall(function() _vlh:SetAttribute(_ei9m[1180-2], nil) end) end
end
end)
end
end
return
end
local _vli = _vl6()
local _vlj = workspace.CurrentCamera
if not _vli or not _vlj or _vli.Anchored then return end
if not _vlb then _vlb = true; _vlc = _vli.Position end
_vl8(true)
local _vlk = Vector3.zero
local _vll, _vlm = _vlj.CFrame.LookVector, _vlj.CFrame.RightVector
if _vl5:IsKeyDown(Enum.KeyCode.W) or _v4.mob.fwd then _vlk = _vlk + _vll end
if _vl5:IsKeyDown(Enum.KeyCode.S) or _v4.mob.back then _vlk = _vlk - _vll end
if _vl5:IsKeyDown(Enum.KeyCode.D) or _v4.mob.right then _vlk = _vlk + _vlm end
if _vl5:IsKeyDown(Enum.KeyCode.A) or _v4.mob.left then _vlk = _vlk - _vlm end
if _vl5:IsKeyDown(Enum.KeyCode.Space) or _v4.mob.up then _vlk = _vlk + Vector3.yAxis end
if _vl5:IsKeyDown(Enum.KeyCode.LeftControl) or _vl5:IsKeyDown(Enum.KeyCode.LeftShift)
or _v4.mob.down then
_vlk = _vlk - Vector3.yAxis
end
_vlk = (_vlk.Magnitude > 0.05) and _vlk.Unit or Vector3.zero
local _vln = _vlc or _vli.Position
_vlc = _v4.govNext(_vln,
_vln + _vlk * (_v4.FLY_SPEED * math.min(_vlf or 0.016, 0.1)), _vlf, _v4.FLY_SPEED)
local _vlo = Vector3.new(_vlk.X, (796-796), _vlk.Z)
if _vlo.Magnitude > 0.05 then
_vld = CFrame.lookAt(_vlc, _vlc + _vlo.Unit)
else
_vld = CFrame.new(_vlc) * (_vli.CFrame - _vli.CFrame.Position)
end
pcall(function()
_vli.CFrame = _vld
_vli.AssemblyLinearVelocity = Vector3.zero
_vli.AssemblyAngularVelocity = Vector3.zero
end)
end
local function _vlp()
if _v4.UNLOADED or not _v4.FLY or not _vld then return end
local _vlq = _vl6()
if _vlq and not _vlq.Anchored then
pcall(function()
_vlq.CFrame = _vld
_vlq.AssemblyLinearVelocity = Vector3.zero
_vlq.AssemblyAngularVelocity = Vector3.zero
end)
end
end
table.insert(_vi, _v1.RenderStepped:Connect(_vle))
table.insert(_vi, _v1.Heartbeat:Connect(_vlp))
end
function _v4.afGroundY(_vlr)
local _vls = RaycastParams.new()
_vls.FilterType = Enum.RaycastFilterType.Exclude
_vls.FilterDescendantsInstances = { _v2.Character }
local _vlt = workspace:Raycast(_vlr + Vector3.new(bit32.bxor(1823762648,1823762648), (781-181), (0+0)), Vector3.new((0+0), -(5*800+0), bit32.bxor(1360524767,1360524767)), _vls)
return _vlt and _vlt.Position.Y or nil
end
function _v4.afAdvance(_vlu)
if _v4.UNLOADED then return end
if not _v4.AUTO_FLY or _v4.FLY then
if _v4.afWasOn then
_v4.afWasOn = false
_v4.afCF, _v4.afPos = nil, nil
local _vlv = _v2.Character
if _vlv then pcall(function() _vlv:SetAttribute(_ei9m[194+616], nil) end) end
_v4.flyLandUntil = os.clock() + (3*3+1)
end
return
end
local _vlw = _v4.getLocalPhysicsRoot()
if not _vlw or _vlw.Anchored then return end
_vlu = math.min(_vlu or 0.016, 0.1)
local _vlx = _v2.Character
if _v4.afWasOn and _v4.afChar ~= _vlx then _v4.afWasOn = false end
local _vly = math.max(_v4.AUTO_FLY_RADIUS or (54+946), (78+22))
if not _v4.afWasOn then
_v4.afWasOn = true
_v4.afChar = _vlx
_v4.afPos = _vlw.Position
_v4.afGroundCache = _v4.afGroundY(_vlw.Position)
local _vlz = math.random() * math.pi * (0+2)
_v4.afDriftDir = Vector3.new(math.cos(_vlz), (0+0), math.sin(_vlz))
_v4.afAngle = _vlz
_v4.afCentre = _vlw.Position - Vector3.new(math.cos(_vlz) * _vly, (452-452), math.sin(_vlz) * _vly)
end
if _vlx and _vlx:GetAttribute(_ei9m[243]) ~= true then
pcall(function() _vlx:SetAttribute(_ei9m[728-3], true) end)
end
_v4.afAngle = (_v4.afAngle + (_v4.AUTO_FLY_SPEED / _vly) * _vlu) % (math.pi * (2+0))
_v4.afProbeT = (_v4.afProbeT or bit32.bxor(1030127049,1030127049)) + _vlu
local _vm0 = _v4.afProbeT >= 0.2
if _vm0 then _v4.afProbeT = (376-376) end
local _vm1 = _v4.afCentre + _v4.afDriftDir * ((_v4.AUTO_FLY_DRIFT or (10+0)) * _vlu)
if (not _vm0) or _v4.afGroundY(_vm1 + _v4.afDriftDir * _vly) then
_v4.afCentre = _vm1
else
local _vm2 = (math.random() - 0.5) * 1.2
local _vm3 = -_v4.afDriftDir
_v4.afDriftDir = Vector3.new(
_vm3.X * math.cos(_vm2) - _vm3.Z * math.sin(_vm2), bit32.bxor(180746188,180746188),
_vm3.X * math.sin(_vm2) + _vm3.Z * math.cos(_vm2))
end
local _vm4 = _v4.afCentre + Vector3.new(math.cos(_v4.afAngle) * _vly, (0+0), math.sin(_v4.afAngle) * _vly)
if _vm0 then _v4.afGroundCache = _v4.afGroundY(_vm4) end
local _vm5 = _v4.afGroundCache
local _vm6 = _vm5 and (_vm5 + (_v4.AUTO_FLY_ALT or (57+243))) or _v4.afPos.Y
local _vm7 = math.clamp(_vm6 - _v4.afPos.Y, -(5*12+0) * _vlu, (271-211) * _vlu)
_v4.afPos = _v4.govNext(_v4.afPos, Vector3.new(_vm4.X, _v4.afPos.Y + _vm7, _vm4.Z), _vlu,
(_v4.AUTO_FLY_SPEED or (780-755)) + (10+50))
local _vm8 = Vector3.new(-math.sin(_v4.afAngle), (946-946), math.cos(_v4.afAngle))
_v4.afCF = CFrame.lookAt(_v4.afPos, _v4.afPos + _vm8)
pcall(function()
_vlw.CFrame = _v4.afCF
_vlw.AssemblyLinearVelocity = Vector3.zero
_vlw.AssemblyAngularVelocity = Vector3.zero
end)
end
function _v4.afPin()
if _v4.UNLOADED or not _v4.AUTO_FLY or _v4.FLY or not _v4.afCF then return end
local _vm9 = _v4.getLocalPhysicsRoot()
if _vm9 and not _vm9.Anchored then
pcall(function()
_vm9.CFrame = _v4.afCF
_vm9.AssemblyLinearVelocity = Vector3.zero
_vm9.AssemblyAngularVelocity = Vector3.zero
end)
end
 do local _wh8ve28ok=#"olsxskpwg"+64 end
end
table.insert(_vi, _v1.RenderStepped:Connect(_v4.afAdvance))
table.insert(_vi, _v1.Heartbeat:Connect(_v4.afPin))
do
_v4.afkTarget = nil
_v4.afkLastScan = (68-68)
_v4.afkLastBite = (0+0)
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
_v4.afkSafetyT = bit32.bxor(2146084414,2146084414)
local _vma = (621-421)
local _vmb = 0.3
local _vmc = 1.5
local _vmd = (108-103)
local _vme = bit32.bxor(1439001850,1439001848)
local _vmf = 0.5
local _vmg = (28+2)
local _vmh = bit32.bxor(1304933382,1304933392)
local _vmi = RaycastParams.new()
_vmi.FilterType = Enum.RaycastFilterType.Include
_vmi.FilterDescendantsInstances = { workspace.Terrain }
local function _vmj(_vmk)
local _vml = workspace:Raycast(Vector3.new(_vmk.X, _vmk.Y + (378-278), _vmk.Z), Vector3.new(bit32.bxor(457159840,457159840), -(1328+672), bit32.bxor(816059799,816059799)), _vmi)
return _vml and _vml.Position.Y
end
local function _vmm()
local _vmn
pcall(function()
local _vmo = _v4.getCS().Alignment
h = (_vmo.RideHeight or bit32.bxor(382873099,382873099)) + (_vmo.BodyHeightIncrease or bit32.bxor(775700183,775700183))
end)
if type(_vmn) ~= _ei9m[4+563] or _vmn <= (399-399) then _vmn = (517-511) end
return _vmn
end
local function _vmp(_vmq, _vmr)
if _vmq then pcall(function() _vmq:SetAttribute(_ei9m[659-8], _vmr) end) end
end
local function _vms()
if _v4.afkColliders then
for _vmt in pairs(_v4.afkColliders) do
if _vmt.Parent then pcall(function() _vmt.CanCollide = true end) end
end
end
_v4.afkColliders, _v4.afkCollidersChar = nil, nil
end
local function _vmu(_vmv)
if not _vmv then return end
if _v4.afkCollidersChar ~= _vmv then
_vms()
local _vmw = {}
for _vmx, _vmy in ipairs(_vmv:GetDescendants()) do
if _vmy:IsA(_ei9m[1019-14]) and _vmy.CanCollide then _vmw[_vmy] = true end
end
for _vmz, _vn0 in ipairs({ _ei9m[5+404], _ei9m[4+228] }) do
local _vn1 = _vmv:FindFirstChild(_vn0)
if _vn1 and _vn1:IsA(_ei9m[149]) then _vmw[_vn1] = true end
end
_v4.afkColliders, _v4.afkCollidersChar = _vmw, _vmv
end
for _vn2 in pairs(_v4.afkColliders) do
if _vn2.CanCollide then _vn2.CanCollide = false end
end
end
local function _vn3(_vn4, _vn5)
local _vn6 = Vector3.new(_vn4.X, bit32.bxor(1640638700,1640638700), _vn4.Z)
if _vn6.Magnitude < 0.1 then return _vn5 or Vector3.new((44-44), (0+0), bit32.bxor(1103208634,1103208635)) end
return _vn6.Unit
end
local function _vn7(_vn8, _vn9)
pcall(function()
_vn8.CFrame = _vn9
_vn8.AssemblyLinearVelocity = Vector3.zero
_vn8.AssemblyAngularVelocity = Vector3.zero
end)
end
local function _vna(_vnb)
local _vnc = _v4.afkTarget
if _vnb and _vnc and _vnc.id then _v4.afkExclude[_vnc.id] = os.clock() + _vmg end
_v4.afkTarget = nil
_v4.afkLastScan = (0+0)
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
local function _vnd()
_v4.afkWasOn = false
_v4.afkCF, _v4.afkPos, _v4.afkTarget = nil, nil, nil
_v4.afkStopWalk()
if _v4.afkSafetyState then
if _v4.afkSafetyState == _ei9m[7+212] then
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.R, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.R, false, game) end)
end
if _v4.afkSafetyPlatform then pcall(function() _v4.afkSafetyPlatform:Destroy() end); _v4.afkSafetyPlatform = nil end
local _vne = _v4.getLocalPhysicsRoot()
if _vne then pcall(function() _vne.Anchored = false end) end
_v4.afkSafetyState = nil
end
_vms()
local _vnf = _v2.Character
if _vnf then pcall(function() _vnf:SetAttribute(_ei9m[953-18], nil) end) end
_v4.flyLandUntil = os.clock() + (5*2+0)
end
function _v4.afkFarmAdvance(_vng)
if _v4.UNLOADED then return end
if not _v4.AFK_FARM or _v4.FLY or _v4.AUTO_FLY or _v4.SAVE_DINO_ACTIVE then
if _v4.afkWasOn then _vnd() end
return
end
local _vnh = _v4.getLocalPhysicsRoot()
if not _vnh then return end
if _vnh.Anchored and not _v4.afkSafetyState then return end
_vng = math.min(_vng or 0.016, 0.1)
local _vni = _v2.Character
if _v4.afkWasOn and _v4.afkChar ~= _vni then _v4.afkWasOn = false end
if not _v4.afkWasOn then
_v4.afkWasOn = true
_v4.afkChar = _vni
_v4.afkPos = _vnh.Position
_v4.afkCF = CFrame.lookAt(_vnh.Position, _vnh.Position + _vn3(_vnh.CFrame.LookVector))
_v4.afkTarget = nil
_v4.afkLastScan = (653-653)
end
if (_vnh.Position - _v4.afkPos).Magnitude > (6*8+2) then
_v4.afkPos = _vnh.Position
end
_vmu(_vni)
if _v4.afkSafetyState then
_v4.afkStopWalk()
elseif _v4.AFK_FARM_WALK then _v4.afkStartWalk() else _v4.afkStopWalk() end
local _vnj = os.clock()
local _vnk = _vnh.Position
local _vnl = math.max(_v4.AFK_FARM_SPEED or (40+10), (517-512))
if _v4.AFK_FARM_SAFETY then
local _vnm, _vnn
pcall(function() hp = _vni:GetAttribute(_ei9m[4+1179]); maxHp = _vni:GetAttribute(_ei9m[2+1329]) end)
if type(_vnm) == _ei9m[979] and type(_vnn) == _ei9m[2+325] and _vnn > bit32.bxor(1683220845,1683220845) then
local _vno = _vnm / _vnn
if not _v4.afkSafetyState and _vno < 0.5 then
_v4.afkSafetyState = _ei9m[79+590]
_v4.afkSafetyReturn = _vnk
local _vnp = _vmj(_vnk) or _vnk.Y
local _vnq = _vnp - _vma
local _vnr
pcall(function() voidY = workspace.FallenPartsDestroyHeight end)
if _vnr and _vnq < _vnr + (2*25+0) then _vnq = _vnr + (208-158) end
_v4.afkSafetyDest = Vector3.new(_vnk.X, _vnq, _vnk.Z)
_v4.afkTarget = nil
end
if _v4.afkSafetyState == _ei9m[4+894] and _vno >= 0.99 then
_v4.afkSafetyState = _ei9m[376-15]
_v4.afkSafetyT = _vnj
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.R, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.R, false, game) end)
if _v4.afkSafetyPlatform then pcall(function() _v4.afkSafetyPlatform:Destroy() end); _v4.afkSafetyPlatform = nil end
pcall(function() _vnh.Anchored = false end)
end
end
elseif _v4.afkSafetyState then
if _v4.afkSafetyState == _ei9m[5+280] then
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.R, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.R, false, game) end)
end
if _v4.afkSafetyPlatform then pcall(function() _v4.afkSafetyPlatform:Destroy() end); _v4.afkSafetyPlatform = nil end
pcall(function() _vnh.Anchored = false end)
_v4.afkSafetyState = nil
end
if _v4.afkSafetyState then
if _v4.afkSafetyState == _ei9m[1297-2] then
_v4.afkPos = _v4.govNext(_v4.afkPos, _v4.afkSafetyDest, _vng, _vnl)
_v4.afkCF = CFrame.new(_v4.afkPos) * _v4.afkCF.Rotation
_vn7(_vnh, _v4.afkCF)
_vmp(_vni, _v4.afkPos.Y)
if (_v4.afkPos - _v4.afkSafetyDest).Magnitude < bit32.bxor(2053785625,2053785628) then
_v4.afkSafetyState = _ei9m[5+27]
_v4.afkSafetyT = _vnj
pcall(function()
local _vns = Instance.new(_ei9m[6+1252])
_vns.Size = Vector3.new((6*13+2), (178-174), (4*20+0))
_vns.Position = _v4.afkPos - Vector3.new((0+0), (2*3+0), bit32.bxor(2066285342,2066285342))
_vns.Anchored = true
_vns.Transparency = bit32.bxor(649644716,649644717)
_vns.CanCollide = true
_vns.CanQuery = false
_vns.Parent = workspace
_v4.afkSafetyPlatform = _vns
end)
end
elseif _v4.afkSafetyState == _ei9m[6+29] then
_vn7(_vnh, _v4.afkCF)
if _vnj - _v4.afkSafetyT >= _vmb then
pcall(function() _vnh.Anchored = true end)
pcall(function() _vni:SetAttribute(_ei9m[1031-17], nil) end)
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.R, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.R, false, game) end)
_v4.afkSafetyState = _ei9m[93]
_v4.afkSafetyT = _vnj
end
elseif _v4.afkSafetyState == _ei9m[1000] then
_vn7(_vnh, _v4.afkCF)
elseif _v4.afkSafetyState == _ei9m[889] then
local _vnt = _v4.afkSafetyReturn or (_v4.afkPos + Vector3.new((453-453), _vma + (331-281), (107-107)))
_v4.afkPos = _v4.govNext(_v4.afkPos, _vnt, _vng, _vnl)
_v4.afkCF = CFrame.new(_v4.afkPos) * _v4.afkCF.Rotation
 do local _wh8vd3rw6=bit32.bxor(9139,13384) end
_vn7(_vnh, _v4.afkCF)
_vmp(_vni, _v4.afkPos.Y)
if (_v4.afkPos - _vnt).Magnitude < bit32.bxor(290917440,290917450) then
_v4.afkSafetyState = nil
_v4.afkSafetyReturn = nil
_v4.afkTarget = nil
_v4.afkLastScan = (73-73)
end
end
return
end
if not _v4.afkTarget and _v4.afkPickFood and _vnj - _v4.afkLastScan >= _vmc then
_v4.afkLastScan = _vnj
for _vnu, _vnv in pairs(_v4.afkExclude) do
if _vnv <= _vnj then _v4.afkExclude[_vnu] = nil end
end
local _vnw, _vnx, _vny = _v4.afkPickFood(_vnk, _v4.afkExclude)
if _vnw and _vny then
_v4.afkTarget = { id = _vnw, idx = _vnx, pos = _vny, groundY = _vmj(_vny), misses = (0+0),
deadline = _vnj + (_vny - _vnk).Magnitude / _vnl * (539-537) + (6*1+4) }
end
end
local _vnz = _v4.afkTarget
if not _vnz then
_vmp(_vni, _v4.afkPos.Y)
return
end
local _vo0 = _vmh
pcall(function() if _v4.khRange then eatRange = _v4.khRange() end end)
local _vo1 = _vmm()
local _vo2 = _vnz.creep and _vnz.pos.Y or (_vnz.pos.Y - _vo0 * _vmf)
local _vo3 = math.max(_vo2, (_vnz.groundY or -math.huge) + _vo1)
local _vo4 = Vector3.new(_vnz.pos.X, _vo3, _vnz.pos.Z)
if not _vnz.holding and not _vnz.creep and (_vnz.pos - _v4.afkPos).Magnitude <= _vo0 * _vmf then
_vnz.holding = true
end
if not _vnz.holding then
local _vo5 = (_vmj(_v4.afkPos) or -math.huge) + _vo1
_v4.afkPos = _v4.govNext(_v4.afkPos, Vector3.new(_vo4.X, math.max(_vo4.Y, _vo5), _vo4.Z), _vng, _vnl)
end
local _vo6 = (_vo4 - _v4.afkPos).Magnitude < (747-744)
if _vnz.creep and _vo6 and not _vnz.holding then
_vnz.holding = true
_vnz.misses = bit32.bxor(951706848,951706848)
end
local _vo7 = _vn3(_v4.afkCF and _v4.afkCF.LookVector or Vector3.new((0+0), (0+0), bit32.bxor(1637333050,1637333051)))
_v4.afkCF = CFrame.lookAt(_v4.afkPos, _v4.afkPos + _vn3(_vnz.pos - _v4.afkPos, _vo7))
_vn7(_vnh, _v4.afkCF)
_vmp(_vni, _v4.afkPos.Y)
if not _vnz.holding and not _vo6 and _vnj > _vnz.deadline then
_vna(true)
return
end
if (_vnz.pos - _vnk).Magnitude <= _vo0 and _vnj - _v4.afkLastBite >= bit32.bxor(572077345,572077344) / math.clamp(_v4.FAST_EAT_RATE or (576-572), 0.5, (2*10+0)) then
_v4.afkLastBite = _vnj
local _vo8, _vo9 = _v4.myFood()
if _vo8 and _vo9 and _vo9 > bit32.bxor(2005813317,2005813317) then
if _v4.afkHungry then
if _vo8 >= _vo9 - 0.05 then _v4.afkHungry = false end
elseif _vo8 <= _vo9 - (0+1) then
_v4.afkHungry = true
end
end
local _voa = _v4.afkHungry and _v4.afkConsumeId and _v4.afkConsumeId()
if _voa and _vdl then
local _vob, _voc, _vod = _v4.afkBufCheck(_vnz.id, _vnz.idx)
if _vob ~= nil and (not _vod or _vob + (_voc or bit32.bxor(1160416559,1160416559)) <= (0+0) or (_v4.LEAVE_SCRAPS and _vob <= bit32.bxor(2050515789,2050515784))) then
_vna(false)
return
end
if _vnz.bitten then
if _vob and _vnz.lastFood and _vob < _vnz.lastFood then
_vnz.misses = bit32.bxor(397187080,397187080)
else
_vnz.misses = _vnz.misses + (323-322)
end
end
_vnz.lastFood = _vob
_vnz.bitten = true
local _voe = buffer.create(5)
buffer.writeu32(_voe, 0, math.floor(_vnz.id))
buffer.writeu8(_voe, 4, _vnz.idx or 1)
_vdl:FireServer(_voa, _ei9m[157-7], _voe)
end
end
if not _vnz.creep and _vnz.misses >= _vme then
_vnz.creep, _vnz.holding = true, false
_vnz.deadline = _vnj + (_vnz.pos - _v4.afkPos).Magnitude / _vnl * (0+2) + bit32.bxor(205297376,205297386)
elseif _vnz.creep and _vnz.holding and _vnz.misses >= _vmd then
_vna(true)
end
end
function _v4.afkFarmPin()
if _v4.UNLOADED or not _v4.AFK_FARM or _v4.FLY or _v4.AUTO_FLY or not _v4.afkCF then return end
if _v4.afkSafetyState == _ei9m[5+1058] then return end
local _vof = _v4.getLocalPhysicsRoot()
if _vof and not _vof.Anchored then _vn7(_vof, _v4.afkCF) end
local _vog = _v2.Character
_vmp(_vog, _v4.afkCF.Position.Y)
_vmu(_vog)
end
table.insert(_vi, _v1.RenderStepped:Connect(_v4.afkFarmAdvance))
table.insert(_vi, _v1.Heartbeat:Connect(_v4.afkFarmPin))
end
pcall(function() _v4.VirtualUser = game:GetService(_ei9m[591]) end)
if _v4.VirtualUser then
table.insert(_vi, _v2.Idled:Connect(function()
if _v4.UNLOADED or not _v4.ANTI_AFK then return end
pcall(function()
_v4.VirtualUser:CaptureController()
_v4.VirtualUser:MoveMouse(Vector2.new((132-131), (0+1)))
_v4.VirtualUser:MoveMouse(Vector2.new((0+0), (321-321)))
end)
_v4.antiAfkCount = (_v4.antiAfkCount or bit32.bxor(448418502,448418502)) + bit32.bxor(1130522245,1130522244)
end))
end
do
local _voh, _voi = pcall(function() return require(_v4.WATER_RS.Common.CharacterState) end)
if _voh and _voi and _v4.ReplicaSetRemote then
local _voj, _vok, _vol = os.clock(), (2*30+0), {}
local function _vom(_von)
if #_von == bit32.bxor(1090280095,1090280095) then return _vok end
local _voo = table.clone(_von); table.sort(_voo); return _voo[math.ceil(#_voo / (2+0))]
end
table.insert(_vi, _v4.ReplicaSetRemote.OnClientEvent:Connect(function(_vop, _voq)
if _v4.UNLOADED or typeof(_voq) ~= _ei9m[4+408] then return end
if _voq[bit32.bxor(159365323,159365322)] == _ei9m[73+291] and _voq[(0+2)] == _ei9m[7+646] then
local _vor = _voi.Replica
if _vor and _vop == _vor.Id then
local _vos = os.clock()
local _vot = _vos - _voj
if _vot > bit32.bxor(1490487675,1490487678) and _vot < (1049-749) then
_vol[#_vol + (0+1)] = _vot
if #_vol > (5+1) then table.remove(_vol, (306-305)) end
growthInterval = _vom(_vol)
end
lastGrowthT = _vos
end
end
end))
local function _vou() return _voi.Replica and _voi.Replica.Data end
local function _vov(_vow)
local _vox; pcall(function() v = _voi.Wellbeing.SavableStats[_vow] end)
return type(_vox) == _ei9m[347] and math.floor(_vox) or nil
end
local function _voy(_voz, _vp0, _vp1)
local _vp2, _vp3 = bit32.bxor(985820993,985820993), (132-132); for _vp4, _vp5 in ipairs({ _voz, _vp0, _vp1 }) do if _vp5 then _vp2 = _vp2 + _vp5; _vp3 = _vp3 + bit32.bxor(1293377975,1293377974) end end
return _vp3 > bit32.bxor(1528631948,1528631948) and math.floor(_vp2 / _vp3) or (0+0)
end
local function _vp6()
local _vp7 = _vou(); local _vp8; pcall(function() mg = _vp7.Multipliers.MassGain end)
if type(_vp8) ~= _ei9m[4+514] then return "?" end
if _vp8 > (694-693) then return tostring(math.floor(_vp8 * (9+1)) * (5*2+0))
elseif _vp8 < 0.1 then return tostring(math.floor(_vp8 * (4*250+0)) / bit32.bxor(404671222,404671228))
else return tostring(math.floor(_vp8 * (73+27))) end
end
local function _vp9(_vpa) return _vpa and (_vpa .. "%") or "?" end
local _vpb = (gethui and gethui()) or game:GetService(_ei9m[49])
if not _vpb then _vpb = _v2:WaitForChild(_ei9m[503]) end
local _vpc = Instance.new(_ei9m[3+1000]); _vpc.Name = _ei9m[215]; _vpc.ResetOnSpawn = false; _vpc.IgnoreGuiInset = true
pcall(function() _vpc.Parent = _vpb end)
local _vpd = Instance.new(_ei9m[1008+24])
_vpd.Size = UDim2.new((0+0), bit32.bxor(1104637971,1104638439), (0+0), bit32.bxor(436361896,436361728)); _vpd.AnchorPoint = Vector2.new(0.5, (0+0))
_vpd.Position = UDim2.new(0.62, (155-155), bit32.bxor(839568215,839568215), (199-183))
_vpd.BackgroundColor3 = Color3.fromRGB(bit32.bxor(1926147935,1926147911), (14+2), (338-300)); _vpd.BackgroundTransparency = 0.1
_vpd.BorderSizePixel = bit32.bxor(2008958277,2008958277); _vpd.Visible = false; _vpd.Parent = _vpc
Instance.new(_ei9m[222], _vpd).CornerRadius = UDim.new(bit32.bxor(1979913702,1979913702), (9+1))
do
local _vpe = game:GetService(_ei9m[70+29])
local _vpf, _vpg, _vph = false, nil, nil
local function _vpi()
_vpd.Position = UDim2.new(_v4.SC_POS_XS, _v4.SC_POS_XO, _v4.SC_POS_YS, _v4.SC_POS_YO)
end
_vpi()
_v4.setStatsCardPos = function(_vpj, _vpk, _vpl, _vpm)
_v4.SC_POS_XS, _v4.SC_POS_XO, _v4.SC_POS_YS, _v4.SC_POS_YO = _vpj, _vpk, _vpl, _vpm
pcall(_vpi)
end
table.insert(_vi, _vpd.InputBegan:Connect(function(_vpn)
if _v4.UNLOADED or not _v4.SC_DRAG then return end
if _vpn.UserInputType == Enum.UserInputType.MouseButton1
or _vpn.UserInputType == Enum.UserInputType.Touch then
_vpf, _vpg, startPos = true, _vpn.Position, _vpd.Position
end
end))
table.insert(_vi, _vpd.InputEnded:Connect(function(_vpo)
if _vpo.UserInputType == Enum.UserInputType.MouseButton1
or _vpo.UserInputType == Enum.UserInputType.Touch then
if _vpf then
dragging = false
_v4.SC_POS_XS, _v4.SC_POS_XO = _vpd.Position.X.Scale, _vpd.Position.X.Offset
_v4.SC_POS_YS, _v4.SC_POS_YO = _vpd.Position.Y.Scale, _vpd.Position.Y.Offset
end
end
end))
table.insert(_vi, _vpe.InputChanged:Connect(function(_vpp)
if _v4.UNLOADED or not _vpf or not _v4.SC_DRAG then return end
if _vpp.UserInputType == Enum.UserInputType.MouseMovement
or _vpp.UserInputType == Enum.UserInputType.Touch then
local _vpq = _vpp.Position - _vpg
_vpd.Position = UDim2.new(_vph.X.Scale, _vph.X.Offset + _vpq.X,
_vph.Y.Scale, _vph.Y.Offset + _vpq.Y)
end
end))
end
local _vpr = Instance.new(_ei9m[1040-19], _vpd); _vpr.Color = Color3.fromRGB(bit32.bxor(1556737851,1556737965), (73+17), bit32.bxor(1084139626,1084139669)); _vpr.Thickness = 1.5
local _vps = Instance.new(_ei9m[965-3])
_vps.Size = UDim2.new(bit32.bxor(628385713,628385712), (0+0), bit32.bxor(63274010,63274010), (5*4+4)); _vps.Position = UDim2.new(bit32.bxor(1457285670,1457285670), (0+0), (638-638), (0+8)); _vps.BackgroundTransparency = (0+1)
_vps.Font = Enum.Font.GothamBold; _vps.TextSize = (6+12); _vps.TextColor3 = Color3.fromRGB(bit32.bxor(251689915,251689733), (2*70+0), (237+18))
_vps.Text = _ei9m[794-20]; _vps.Parent = _vpd
local function _vpt(_vpu)
local _vpv = Instance.new(_ei9m[896-19])
_vpv.Size = UDim2.new(0.5, -(16+4), (0+0), (553-553)); _vpv.Position = UDim2.new(_vpu, _vpu == bit32.bxor(2120629643,2120629643) and (5*2+4) or (627-621), (77-77), (6*6+2))
_vpv.BackgroundTransparency = (0+1); _vpv.Parent = _vpd
local _vpw = Instance.new(_ei9m[200], _vpv)
_vpw.FillDirection = Enum.FillDirection.Vertical; _vpw.SortOrder = Enum.SortOrder.LayoutOrder
_vpw.Padding = UDim.new(bit32.bxor(1730864586,1730864586), (0+3))
return _vpv, _vpw
end
local _vpx, _vpy = _vpt(bit32.bxor(1435502331,1435502331))
local _vpz, _vq0 = _vpt(0.5)
local function _vq1(_vq2, _vq3, _vq4)
local _vq5 = Instance.new(_ei9m[511-18])
_vq5.Size = UDim2.new((788-787), (0+0), (137-137), _vq3 + bit32.bxor(2129164724,2129164721)); _vq5.BackgroundTransparency = bit32.bxor(1541116168,1541116169); _vq5.Font = Enum.Font.GothamSemibold
_vq5.TextSize = _vq3; _vq5.TextXAlignment = Enum.TextXAlignment.Left
_vq5.TextColor3 = _vq4 or Color3.fromRGB((4*55+0), (59+151), bit32.bxor(519408858,519408682)); _vq5.RichText = true; _vq5.Parent = _vq2; return _vq5
end
local _vq6 = _vq1(_vpx, (5*2+4))
local _vq7 = _vq1(_vpx, (2*6+1), Color3.fromRGB(bit32.bxor(1081153517,1081153351), bit32.bxor(1630770656,1630770496), (166+24)))
local _vq8 = _vq1(_vpx, (2*7+0))
local _vq9 = _vq1(_vpx, (9+5))
local _vqa = _vq1(_vpx, bit32.bxor(577654104,577654103), Color3.fromRGB((3*40+0), (2*115+0), (675-535)))
local _vqb = _vq1(_vpz, (1+13), Color3.fromRGB((158+32), (24+116), (4*63+3))); _vqb.Font = Enum.Font.GothamBold
local _vqc = _vq1(_vpz, (70-57))
local _vqd = _vq1(_vpz, (5*2+4), Color3.fromRGB((2*95+0), (6*23+2), (202+53))); _vqd.Font = Enum.Font.GothamBold
local _vqe = _vq1(_vpz, (5+8))
local _vqf = _vq1(_vpz, (614-601))
task.spawn(function()
while not _v4.UNLOADED do
if _v4.STATS_CARD and not (_v4.SC_HIDE_WITH_MENU and _v4.Hub and _v4.Hub.IsVisible and _v4.Hub:IsVisible()) then
_vpd.Visible = true
if _vpd.Active ~= _v4.SC_DRAG then _vpd.Active = _v4.SC_DRAG end
pcall(function()
local _vqg = _v2.Character
local _vqh = _vou()
_vq6.Visible = _v4.SC_GROWTH; _vq7.Visible = _v4.SC_GROWTH
if _v4.SC_GROWTH then
local _vqi = (_vqh and _vqh.Growth and _vqh.Growth.Stage) or (_vqg and _vqg:GetAttribute(_ei9m[294+144])) or "?"
local _vqj = (_vqh and _vqh.Growth and _vqh.Growth.NextStage) or "?"
local _vqk = (_vqh and _vqh.Growth and _vqh.Growth.Delta) or (66-66)
_vq6.Text = _ei9m[131+81] .. tostring(_vqi) .. _ei9m[5+1014]
_vq7.Text = _ei9m[4+604] .. tostring(_vqj) .. _ei9m[452-5] .. math.floor(_vqk * (511-411)) .. "%"
end
_vq8.Visible = _v4.SC_MASS
if _v4.SC_MASS then _vq8.Text = _ei9m[368] .. _vp6() .. _ei9m[5+732] end
_vq9.Visible = _v4.SC_WEIGHT
if _v4.SC_WEIGHT then
local _vql = _vqg and _vqg:GetAttribute(_ei9m[946])
_vq9.Text = _ei9m[6+559] .. (_vql and (math.floor(_vql * (4*2+2)) / bit32.bxor(1292783120,1292783130) .. _ei9m[7+427]) or "?") .. _ei9m[6+1327]
end
_vqa.Visible = _v4.SC_TIMER
if _v4.SC_TIMER then
local _vqm = math.max(bit32.bxor(1162224918,1162224918), math.floor(_vok - (os.clock() - _voj)))
_vqa.Text = _ei9m[593+362] .. string.format(_ei9m[365+107], math.floor(_vqm / bit32.bxor(1347954296,1347954244)), _vqm % (53+7))
end
_vqb.Visible = _v4.SC_NUTRITION; _vqc.Visible = _v4.SC_NUTRITION
if _v4.SC_NUTRITION then
local _vqn, _vqo, _vqp = _vov(_ei9m[4+374]), _vov(_ei9m[3+774]), _vov(_ei9m[764-9])
_vqb.Text = _ei9m[198+895] .. _voy(_vqn, _vqo, _vqp) .. "%"
_vqc.Text = _ei9m[210+100] .. _vp9(_vqn) .. _ei9m[87+26] .. _vp9(_vqo) .. _ei9m[2+1026] .. _vp9(_vqp)
end
_vqd.Visible = _v4.SC_WELLBEING; _vqe.Visible = _v4.SC_WELLBEING; _vqf.Visible = _v4.SC_WELLBEING
if _v4.SC_WELLBEING then
local _vqq, _vqr, _vqs = _vov(_ei9m[373-19]), _vov(_ei9m[291+163]), _vov(_ei9m[174])
local _vqt = _vov(_ei9m[303])
_vqd.Text = _ei9m[471] .. _voy(_vqq, _vqr, _vqs) .. "%"
_vqe.Text = _ei9m[282+589] .. _vp9(_vqq) .. _ei9m[492+334] .. _vp9(_vqr) .. _ei9m[520] .. _vp9(_vqs)
if _vqt then
local _vqu = _vqt >= bit32.bxor(79695528,79695598) and Color3.fromRGB((1046-946), (802-547), (376-276))
or _vqt >= (3*13+1) and Color3.fromRGB(bit32.bxor(591443497,591443670), (1067-812), (2*40+0))
or Color3.fromRGB((3*85+0), (5*16+0), bit32.bxor(893833328,893833248))
_vqf.Text = _ei9m[4+569] .. _vqt .. _ei9m[145+43] .. (_vqt < (14+26) and _ei9m[50+690] or "")
_vqf.TextColor3 = _vqu
else
_vqf.Text = _ei9m[206+539]
_vqf.TextColor3 = Color3.fromRGB((920-750), bit32.bxor(1056109099,1056109195), bit32.bxor(547377433,547377575))
end
end
local _vqv, _vqw = _vpy.AbsoluteContentSize.Y, _vq0.AbsoluteContentSize.Y
_vpx.Size = UDim2.new(0.5, -(12+8), bit32.bxor(1131338911,1131338911), _vqv)
_vpz.Size = UDim2.new(0.5, -(6*3+2), bit32.bxor(1485149559,1485149559), _vqw)
_vpd.Size = UDim2.new((389-389), (_v4.SC_NUTRITION or _v4.SC_WELLBEING) and (1364-864) or (106+164), bit32.bxor(106537013,106537013), bit32.bxor(1438864974,1438864998) + math.max(_vqv, _vqw) + (505-497))
end)
else
_vpd.Visible = false
end
task.wait(0.3)
end
pcall(function() _vpc:Destroy() end)
end)
end
 do local _wh8vc5j19=bit32.bxor(37759,11031) end
end
do
local _vqx, _vqy = pcall(function() return require(_v4.WATER_RS.Shared.SkinData) end)
local _vqz = _v4.WATER_RS:FindFirstChild(_ei9m[1061-6])
local _vr0 = _v4.WATER_RS:FindFirstChild(_ei9m[1005-20])
if _vqx and _vqy and _vqy.Skins and _vqz and _vr0 then
local function _vr1()
local _vr2 = _v2.Character
if not _vr2 then return nil end
local _vr3 = _vr2:GetAttribute(_ei9m[1153-3])
local _vr4 = _vr2:GetAttribute(_ei9m[2+112]) or _ei9m[6+896]
local _vr5 = (tostring(_vr2:GetAttribute(_ei9m[494])):upper():sub((0+1), (937-936)) == "F") and _ei9m[734+342] or _ei9m[2+1009]
local _vr6 = _vr2:GetAttribute(_ei9m[1165+22]) or _vr2:GetAttribute(_ei9m[852])
return _vr2, _vr3, _vr4, _vr5, _vr6 and _ei9m[677-7] or _ei9m[5+115]
end
local function _vr7(_vr8, _vr9, _vra, _vrb, _vrc)
if _vr9 == _ei9m[500-4] then
local _vrd = _vr0:FindFirstChild(_vr8)
local _vre = _vrd and (_vrd:FindFirstChild(_vra) or _vrd:GetChildren()[bit32.bxor(563323190,563323191)])
local _vrf = _vre and _vre:FindFirstChild(_ei9m[595])
local _vrg = _vrf and (_vrf:FindFirstChild(_vr8 .. _vrc) or _vrf:FindFirstChild(_vr8 .. _ei9m[6+712]))
return _vrg and _vrg:FindFirstChild(_vrb)
else
local _vrh = _vqz:FindFirstChild(_vr8)
local _vri = _vrh and _vrh:FindFirstChild(_vr9)
local _vrj = _vri and (_vri:FindFirstChild(_vra) or _vri:GetChildren()[bit32.bxor(88644543,88644542)])
local _vrk = _vrj and _vrj:FindFirstChild(_vrb)
return _vrk and (_vrk:FindFirstChild(_vrc) or _vrk:FindFirstChild(_ei9m[2+10]) or _vrk:FindFirstChild(_ei9m[183-10]))
end
end
_v4.applySkin = function(_vrl)
local _vrm, _vrn, _vro, _vrp, _vrq = _vr1()
if not (_vrm and _vrn) then return false end
local _vrr = _vrm:FindFirstChild(_ei9m[662-2]) or _vrm
local _vrs = _vr7(_vrn, _vrl, _vro, _vrp, _vrq)
if not _vrs then return false end
for _vrt, _vru in ipairs(_vrr:GetDescendants()) do
if _vru:IsA(_ei9m[1137]) then pcall(function() _vru:Destroy() end) end
end
local _vrv = bit32.bxor(1559311433,1559311433)
for _vrw, _vrx in ipairs(_vrs:GetChildren()) do
local _vry = _vrx:FindFirstChildWhichIsA(_ei9m[503-4])
local _vrz = _vrr:FindFirstChild(_vrx.Name)
if _vry and _vrz then pcall(function() _vry:Clone().Parent = _vrz end); _vrv = _vrv + bit32.bxor(38656373,38656372) end
end
return _vrv > bit32.bxor(379851466,379851466)
end
_v4.skinsForCurrentDino = function()
local _vs0, _vs1 = _vr1()
local _vs2 = { _ei9m[951] }
local _vs3 = _vs1 and _vqy.Skins[_vs1]
if _vs3 and _vs3.Unlockables then for _vs4 in pairs(_vs3.Unlockables) do _vs2[#_vs2 + (0+1)] = _vs4 end end
table.sort(_vs2, function(_vs5, _vs6) if _vs5 == _ei9m[966] then return true elseif _vs6 == _ei9m[400-4] then return false end return _vs5 < _vs6 end)
return _vs2, _vs1
end
task.spawn(function()
while not _v4.UNLOADED do
if _v4.SKIN_SELECTED ~= _ei9m[347-18] then pcall(_v4.applySkin, _v4.SKIN_SELECTED) end
task.wait((2+0))
end
end)
table.insert(_vi, _v2.CharacterAdded:Connect(function()
task.wait(bit32.bxor(537270702,537270700))
local _vs7, _vs8 = _v4.skinsForCurrentDino()
local _vs9 = false
for _vsa, _vsb in ipairs(_vs7) do if _vsb == _v4.SKIN_SELECTED then keep = true break end end
if not _vs9 then _v4.SKIN_SELECTED = _ei9m[66-15] end
if _v4.skinDropdown then
pcall(function() _v4.skinDropdown:Refresh(_vs7, false) end)
pcall(function() _v4.skinDropdown:Set(_v4.SKIN_SELECTED, true) end)
end
if _v4.SKIN_SELECTED ~= _ei9m[177+558] then pcall(_v4.applySkin, _v4.SKIN_SELECTED) end
end))
task.spawn(function()
task.wait((0+3))
if _v4.skinDropdown and _v4.skinsForCurrentDino then
local _vsc, _vsd = _v4.skinsForCurrentDino()
if _vsd then pcall(function() _v4.skinDropdown:Refresh(_vsc, true) end) end
end
end)
end
end
do
_v4.fishESP = setmetatable({}, { __mode = "k" })
local _vse = Color3.fromRGB(bit32.bxor(1588804407,1588804455), bit32.bxor(2023212415,2023212471), (1122-867))
local _vsf = bit32.bxor(1440599585,1440599037)
local function _vsg()
local _vsh = workspace:FindFirstChild(_ei9m[1257])
local _vsi = _vsh and _vsh:FindFirstChild(_ei9m[903])
return _vsi and _vsi:FindFirstChild(_ei9m[5+743])
end
local function _vsj()
local _vsk = _v2.Character
return _vsk and (_vsk:FindFirstChild(_ei9m[2+952]) or _vsk:FindFirstChild(_ei9m[4+970]) or _vsk:FindFirstChildWhichIsA(_ei9m[6+1254]))
end
local function _vsl(_vsm)
return _vsm.PrimaryPart or _vsm:FindFirstChild(_ei9m[341]) or _vsm:FindFirstChildWhichIsA(_ei9m[828+354])
end
local function _vsn(_vso)
local _vsp = _v4.fishESP[_vso]
if _vsp and _vsp.hl.Parent then return _vsp end
local _vsq = Instance.new(_ei9m[391-4])
_vsq.FillColor = _vse; _vsq.FillTransparency = 0.55; _vsq.OutlineColor = _vse
_vsq.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop; _vsq.Parent = _vso
local _vsr = _vsl(_vso)
local _vss = Instance.new(_ei9m[984-3])
_vss.Size = UDim2.new((0+0), (61+49), bit32.bxor(656912842,656912842), (3*6+0)); _vss.StudsOffset = Vector3.new((170-170), (6*0+2), bit32.bxor(1462761587,1462761587)); _vss.AlwaysOnTop = true
local _vst = Instance.new(_ei9m[1240])
_vst.Size = UDim2.new(bit32.bxor(1342845185,1342845184), bit32.bxor(1191853359,1191853359), (0+1), (0+0)); _vst.BackgroundTransparency = (0+1); _vst.Font = Enum.Font.GothamBold
_vst.TextSize = (11+1); _vst.TextColor3 = _vse; _vst.TextStrokeTransparency = 0.4; _vst.Text = _ei9m[141]; _vst.Parent = _vss
if _vsr then _vss.Adornee = _vsr; _vss.Parent = _vsr end
_vsp = { hl = _vsq, bb = _vss, lbl = _vst }; _v4.fishESP[_vso] = _vsp; return _vsp
end
local function _vsu(_vsv)
local _vsw = _v4.fishESP[_vsv]
if _vsw then pcall(function() _vsw.hl:Destroy(); _vsw.bb:Destroy() end); _v4.fishESP[_vsv] = nil end
end
task.spawn(function()
while not _v4.UNLOADED do
local _vsx = _vsg()
local _vsy = _vsj()
if _vsx then
local _vsz = {}
for _vt0, _vt1 in ipairs(_vsx:GetChildren()) do
if _vt1:IsA(_ei9m[1191]) then
_vsz[_vt1] = true
local _vt2 = _vsl(_vt1)
local _vt3 = (_vt2 and _vsy) and (_vt2.Position - _vsy.Position).Magnitude or 1e9
if _v4.FISH_ESP and _vt3 <= _vsf then
local _vt4 = _vsn(_vt1)
if _vt4.lbl then _vt4.lbl.Text = _ei9m[165+56] .. math.floor(_vt3) .. "m" end
else
_vsu(_vt1)
end
end
end
for _vt5 in pairs(_v4.fishESP) do if not _vsz[_vt5] then _vsu(_vt5) end end
end
task.wait(0.15)
end
for _vt6 in pairs(_v4.fishESP) do _vsu(_vt6) end
end)
end
do
_v4.VEG_ESP = false
_v4.VEG_DISTANCE = (2166-666)
_v4.VEG_MAX = (4*10+0)
_v4.VEG_DIET_ONLY = false
_v4.VEG_HIDE_EATEN = false
_v4.VEG_COLOR_OK = Color3.fromRGB(bit32.bxor(1870760951,1870760847), (226+14), bit32.bxor(1817531608,1817531552))
_v4.VEG_COLOR_NO = Color3.fromRGB((83+87), (662-492), (4*42+2))
_v4.VEG_COLOR_EATEN = Color3.fromRGB((789-669), (544-449), (3+57))
_v4.vegPool = {}
_v4.vegAllowCache = {}
_v4.VEG_CS = game:GetService(_ei9m[339+831])
function _v4.vegData()
if not _v4.vegCData then pcall(function() _v4.vegCData = require(_v4.WATER_RS.Shared.ConsumptionData) end) end
if not _v4.vegCState then pcall(function() _v4.vegCState = require(_v4.WATER_RS.Common.CharacterState) end) end
return _v4.vegCData, _v4.vegCState
end
function _v4.vegResolve(_vt7)
local _vt8 = _vt7
for _vt9 = (0+1), (3+0) do
if not _vt8 or _vt8 == workspace then break end
local _vta = _vt8:GetAttribute("ID")
if _vta then return _vt8, _vta end
_vt8 = _vt8.Parent
end
return nil, nil
end
function _v4.vegAllowed(_vtb)
local _vtc = _v4.vegAllowCache[_vtb]
if _vtc ~= nil then return _vtc end
local _vtd, _vte = _v4.vegData()
local _vtf = false
pcall(function()
local _vtg = _vtd.FoliageConsumables[_vtb]
local _vth = _vtg and _vtg.Actions
if type(_vth) == _ei9m[3+912] then
for _vti, _vtj in ipairs(_vth) do
if type(_vtj) == _ei9m[181] and _vtj.Category
and _vte.Data.Diet.Categories[_vtj.Category] ~= nil then
allowed = true
break
end
end
end
end)
_v4.vegAllowCache[_vtb] = _vtf
return _vtf
end
function _v4.vegContainer()
if _v4.vegFolder and _v4.vegFolder.Parent then return _v4.vegFolder end
local _vtk = _v2:FindFirstChild(_ei9m[1076-8])
if not _vtk then return nil end
local _vtl = Instance.new(_ei9m[874-7])
_vtl.Name = _ei9m[2+53]
_vtl.Parent = _vtk
_v4.vegFolder = _vtl
return _vtl
end
function _v4.vegLabel(_vtm, _vtn)
local _vto = _v4.vegPool[_vtm]
if _vto and _vto.bb.Parent then return _vto end
local _vtp = Instance.new(_ei9m[360-2])
_vtp.Name = _ei9m[300]
_vtp.Size = UDim2.new((242-242), (2*80+0), bit32.bxor(315637306,315637306), (5+15))
_vtp.StudsOffset = Vector3.new(bit32.bxor(1404545650,1404545650), 2.5, bit32.bxor(764957151,764957151))
_vtp.AlwaysOnTop = true
_vtp.LightInfluence = (496-496)
_vtp.Enabled = false
local _vtq = Instance.new(_ei9m[1218-3])
_vtq.Name = _ei9m[35+41]
 do local _wh8vbhdh8=#"ovrozfcyilbtgapdrehio"+32 end
_vtq.Size = UDim2.new((1+0), (0+0), (0+1), (568-568))
_vtq.BackgroundTransparency = bit32.bxor(480682788,480682789)
_vtq.Font = Enum.Font.GothamBold
_vtq.TextSize = (4+8)
_vtq.TextStrokeTransparency = (911-911)
_vtq.TextStrokeColor3 = Color3.new((183-183), (0+0), bit32.bxor(646790324,646790324))
_vtq.Parent = _vtp
_vtp.Parent = _vtn
_vto = { bb = _vtp, lbl = _vtq }
_v4.vegPool[_vtm] = _vto
return _vto
end
function _v4.vegHideAll()
for _vtr, _vts in pairs(_v4.vegPool) do
pcall(function() _vts.bb.Enabled = false; _vts.bb.Adornee = nil end)
end
end
table.insert(_vi, _v2.CharacterAdded:Connect(function()
_v4.vegAllowCache = {}
_v4.vegCState = nil
end))
_v4.addStep(bit32.bxor(384125672,384125686), function()
if _v4.UNLOADED then return end
if not _v4.VEG_ESP then
if _v4.vegFolder then _v4.vegHideAll() end
return
end
local _vtt = _v4.getLocalRoot()
local _vtu = _v4.vegContainer()
if not (_vtt and _vtu) then return end
local _vtv = _vtt.Position
local _vtw = _v4.VEG_DISTANCE
local _vtx, _vty = {}, {}
pcall(function()
for _vtz, _vu0 in ipairs(_v4.VEG_CS:GetTagged(_ei9m[1167])) do
local _vu1 = _vu0.Parent
local _vu2 = _vu1 and _vu1:GetAttribute("ID")
local _vu3
_vu3, id = _v4.vegResolve(_vu0)
par = _vu3 or _vu1
if _vu2 and not _vty[_vu2] and _vu1:IsDescendantOf(workspace) then
local _vu4 = _vu0:IsA(_ei9m[87+14]) and _vu0
or _vu0:FindFirstChildWhichIsA(_ei9m[3+708], true)
if _vu4 then
_vty[_vu2] = true
local _vu5 = (_vu4.Position - _vtv).Magnitude
if _vu5 <= _vtw then
local _vu6 = _v4.vegAllowed(_vu1.Name)
local _vu7 = _v4.khFoodOf(_vu2)
local _vu8
if _vu7 then eaten = (_vu7 <= (834-834))
else eaten = (_vu1:GetAttribute(_ei9m[2+627]) == false) end
if (_vu6 or not _v4.VEG_DIET_ONLY) and not (_vu8 and _v4.VEG_HIDE_EATEN) then
_vtx[#_vtx + bit32.bxor(1357374926,1357374927)] = { part = _vu4, name = _vu1.Name, d = _vu5,
ok = _vu6, eaten = _vu8, food = _vu7 }
end
end
end
end
end
end)
local function _vu9(_vua)
return _vua.eaten and (902-901) or (0+0)
end
table.sort(_vtx, function(_vub, _vuc)
local _vud, _vue = _vu9(_vub), _vu9(_vuc)
if _vud ~= _vue then return _vud < _vue end
return _vub.d < _vuc.d
end)
for _vuf = bit32.bxor(1483620165,1483620164), _v4.VEG_MAX do
local _vug = _v4.vegLabel(_vuf, _vtu)
local _vuh = _vtx[_vuf]
if _vuh then
_vug.bb.Adornee = _vuh.part
_vug.bb.Enabled = true
local _vui = ""
if _vuh.eaten then amount = _ei9m[5+959]
elseif _vuh.food then amount = "  " .. math.floor(_vuh.food) .. "f" end
_vug.lbl.Text = _vuh.name .. _vui .. "  " .. math.floor(_vuh.d) .. "m"
_vug.lbl.TextColor3 = _vuh.eaten and _v4.VEG_COLOR_EATEN
or (_vuh.ok and _v4.VEG_COLOR_OK or _v4.VEG_COLOR_NO)
else
_vug.bb.Enabled = false
_vug.bb.Adornee = nil
end
end
end)
end
_v4.UIS = game:GetService(_ei9m[5+443])
_v4.IS_MOBILE = _v4.UIS.TouchEnabled and not _v4.UIS.KeyboardEnabled
pcall(function()
if type(getgenv) == _ei9m[356-4] and getgenv().EZ_FORCE_MOBILE then _v4.IS_MOBILE = true end
end)
_v4.mob = { fwd = false, back = false, left = false, right = false, up = false, down = false,
turnL = false, turnR = false, insta = false, trimUp = false, trimDown = false }
if _v4.IS_MOBILE then
local _vuj = Color3.fromRGB(bit32.bxor(1942118460,1942118432), bit32.bxor(484122052,484122066), bit32.bxor(727355154,727355192))
local _vuk = Color3.fromRGB((350-230), (69+1), (355-135))
local _vul = Instance.new(_ei9m[461+572])
_vul.Name = _ei9m[890-5]; _vul.ResetOnSpawn = false; _vul.IgnoreGuiInset = true
_vul.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
pcall(function() _vul.Parent = (gethui and gethui()) or game:GetService(_ei9m[239+216]) end)
if not _vul.Parent then _vul.Parent = _v2:WaitForChild(_ei9m[797+178]) end
_v4.mobGui = _vul
local function _vum(_vun, _vuo, _vup, _vuq, _vur)
local _vus = Instance.new(_ei9m[376])
_vus.Name = _ei9m[516] .. _vup
_vus.Size = _vur or UDim2.new(bit32.bxor(964274715,964274715), (49+9), bit32.bxor(394716482,394716482), bit32.bxor(1886168149,1886168175))
_vus.Position = _vuq
_vus.BackgroundColor3 = _vuj
_vus.BackgroundTransparency = 0.25
_vus.BorderSizePixel = (560-560)
_vus.Text = _vuo
_vus.TextColor3 = Color3.fromRGB((391-156), (103+122), (153+102))
_vus.Font = Enum.Font.GothamBold
_vus.TextSize = (2*9+0)
_vus.AutoButtonColor = false
_vus.Parent = _vun
Instance.new(_ei9m[1080+5], _vus).CornerRadius = UDim.new(bit32.bxor(678137245,678137245), (10+0))
local _vut = Instance.new(_ei9m[384], _vus)
_vut.Color = Color3.fromRGB((35+115), (24+66), bit32.bxor(62500327,62500120)); _vut.Thickness = 1.5; _vut.Transparency = 0.4
local function _vuu(_vuv)
_v4.mob[_vup] = _vuv
_vus.BackgroundColor3 = _vuv and _vuk or _vuj
end
_vus.InputBegan:Connect(function(_vuw)
if _vuw.UserInputType == Enum.UserInputType.Touch
or _vuw.UserInputType == Enum.UserInputType.MouseButton1 then _vuu(true) end
end)
_vus.InputEnded:Connect(function(_vux)
if _vux.UserInputType == Enum.UserInputType.Touch
or _vux.UserInputType == Enum.UserInputType.MouseButton1 then _vuu(false) end
end)
table.insert(_vi, _vus.MouseLeave:Connect(function() _vuu(false) end))
return _vus
end
local function _vuy(_vuz, _vv0, _vv1, _vv2)
local _vv3 = Instance.new(_ei9m[2+1282])
_vv3.Name = _vuz; _vv3.Size = UDim2.new(bit32.bxor(2003426017,2003426017), _vv0, bit32.bxor(1219621501,1219621501), _vv1); _vv3.Position = _vv2
_vv3.BackgroundTransparency = (1+0); _vv3.Visible = false; _vv3.Parent = _vul
return _vv3
end
_v4.mobFlyPad = _vuy(_ei9m[63+100], (110+90), (49+151), UDim2.new((749-749), bit32.bxor(102272239,102272247), bit32.bxor(309622094,309622095), -(145+79)))
_vum(_v4.mobFlyPad, _ei9m[626+608], _ei9m[6+271], UDim2.new((0+0), (44+18), (483-483), bit32.bxor(2092867402,2092867402)))
_vum(_v4.mobFlyPad, _ei9m[2+12], _ei9m[2+375], UDim2.new(bit32.bxor(1197138838,1197138838), (0+0), bit32.bxor(850291921,850291921), (4*15+2)))
_vum(_v4.mobFlyPad, _ei9m[2+498], _ei9m[878], UDim2.new((267-267), (1114-990), bit32.bxor(1037537505,1037537505), (5*12+2)))
_vum(_v4.mobFlyPad, _ei9m[355-17], _ei9m[17+10], UDim2.new((0+0), (9+53), bit32.bxor(1127682822,1127682822), bit32.bxor(826388683,826388663)))
_vum(_v4.mobFlyPad, "+", "up", UDim2.new((0+0), (86+110), (810-810), (42-22)), UDim2.new(bit32.bxor(1017229629,1017229629), (187-135), bit32.bxor(1131019830,1131019830), (6*8+4)))
_vum(_v4.mobFlyPad, _ei9m[4+1186], _ei9m[302], UDim2.new((829-829), (146+50), (0+0), (258-154)), UDim2.new(bit32.bxor(1191277119,1191277119), (937-885), bit32.bxor(1277303123,1277303123), bit32.bxor(1112136727,1112136739)))
_v4.mobTurnPad = _vuy(_ei9m[202], (5*40+0), (33+37), UDim2.new((80-79), -(6*37+2), (0+1), -bit32.bxor(299125551,299125579)))
_vum(_v4.mobTurnPad, _ei9m[4+1300], _ei9m[395+311], UDim2.new(bit32.bxor(1770175422,1770175422), (249-249), bit32.bxor(809593099,809593099), bit32.bxor(76847054,76847054)))
_vum(_v4.mobTurnPad, _ei9m[140+5], _ei9m[17], UDim2.new((185-185), (2*34+0), bit32.bxor(1193353696,1193353696), bit32.bxor(725558400,725558400)))
_vum(_v4.mobTurnPad, _ei9m[5+1176], _ei9m[959-17], UDim2.new(bit32.bxor(1158934568,1158934568), bit32.bxor(1492359375,1492359239), bit32.bxor(1025058618,1025058618), (73-73)))
_v4.MOB_SHOW_TURN = true
_v4.addStep((726-716), function()
if _v4.UNLOADED then return end
local _vv4 = _v4.FLY and true or false
if _v4.mobFlyPad.Visible ~= _vv4 then _v4.mobFlyPad.Visible = _vv4 end
local _vv5 = _v4.MOB_SHOW_TURN and (_v4.QUICK_TURN or _v4.FLY) and true or false
if _v4.mobTurnPad.Visible ~= _vv5 then _v4.mobTurnPad.Visible = _vv5 end
end)
end
_v4.MENU_LAYOUT = {
MAIN = { _ei9m[973], _ei9m[1090], _ei9m[5+630], _ei9m[230-2], _ei9m[6+1099] },
RENAME = { [_ei9m[887+420]] = _ei9m[1101],
[_ei9m[391+864]] = _ei9m[6+887], [_ei9m[85+90]] = _ei9m[33], [_ei9m[758-12]] = _ei9m[3+758],
[_ei9m[618-17]] = _ei9m[1162-14], [_ei9m[1040-13]] = _ei9m[326], [_ei9m[3+242]] = _ei9m[1036] },
SUB_MAIN = {
[_ei9m[576]] = _ei9m[419], [_ei9m[1133-13]] = _ei9m[3+1318], [_ei9m[241-10]] = _ei9m[380+153],
[_ei9m[3+584]] = _ei9m[4+475], [_ei9m[304-14]] = _ei9m[1112], [_ei9m[971-10]] = _ei9m[996],
[_ei9m[229]] = _ei9m[679], [_ei9m[5+891]] = _ei9m[7+139], [_ei9m[7+1179]] = _ei9m[269+939],
[_ei9m[1302]] = _ei9m[2+320], [_ei9m[266+473]] = _ei9m[4+1193], [_ei9m[157+912]] = _ei9m[249], [_ei9m[895]] = _ei9m[119],
},
WHERE = {
[_ei9m[856-11]] = _ei9m[4+21], [_ei9m[2+175]] = _ei9m[995-1], [_ei9m[7+85]] = _ei9m[987],
[_ei9m[355+549]] = _ei9m[6+920], [_ei9m[193-17]] = _ei9m[284-3], [_ei9m[105+1154]] = _ei9m[292-1],
[_ei9m[1178-20]] = _ei9m[1319], [_ei9m[632+77]] = _ei9m[6+1223],
[_ei9m[121-12]] = _ei9m[501-4],
},
NEST = {
[_ei9m[6+891]] = { _ei9m[509-3] },
[_ei9m[1296-4]] = { _ei9m[7+494], _ei9m[44+108], _ei9m[267+777] },
[_ei9m[89+152]] = { _ei9m[74-18], _ei9m[812+263], _ei9m[815+406], _ei9m[565+565], _ei9m[2+758], _ei9m[2+430] },
[_ei9m[404]] = { _ei9m[702], _ei9m[553+198], _ei9m[844-5], _ei9m[47+79] },
[_ei9m[829]] = { _ei9m[5+130], _ei9m[888], _ei9m[1048], _ei9m[198-15] },
[_ei9m[113-9]] = { _ei9m[703] },
[_ei9m[5+1228]] = { _ei9m[262] },
[_ei9m[1248]] = { _ei9m[1001], _ei9m[465], _ei9m[218], _ei9m[3+1324] },
[_ei9m[4+361]] = { _ei9m[405-10] },
[_ei9m[705-4]] = { _ei9m[177-19] },
[_ei9m[278]] = { _ei9m[25-14], _ei9m[264], _ei9m[1242-7], _ei9m[4+618], _ei9m[1142-4], _ei9m[6-1],
_ei9m[127+356], _ei9m[122], _ei9m[283+708], _ei9m[1319-9], _ei9m[1048-1], _ei9m[1126-8],
_ei9m[2+1311], _ei9m[4+995], _ei9m[71+375], _ei9m[1216], _ei9m[94-9], _ei9m[4+584],
_ei9m[5+1160], _ei9m[7+550], _ei9m[863+10], _ei9m[503+579], _ei9m[904-12],
_ei9m[548-7], _ei9m[34+20] },
[_ei9m[181-12]] = { _ei9m[988], _ei9m[675+262] },
[_ei9m[168+456]] = { _ei9m[5+175], _ei9m[307] },
[_ei9m[252+984]] = { _ei9m[801] },
[_ei9m[668+60]] = { _ei9m[1176-5] },
[_ei9m[51-15]] = { _ei9m[464], _ei9m[301-18], _ei9m[445], _ei9m[339], _ei9m[1028-19],
_ei9m[264+822], _ei9m[458-8], _ei9m[6+1216] },
[_ei9m[14+498]] = { _ei9m[849-8], _ei9m[4+1107] },
[_ei9m[71+32]] = { _ei9m[785] },
[_ei9m[1132-1]] = { _ei9m[7+650] },
[_ei9m[549-17]] = { _ei9m[836] },
[_ei9m[2+1215]] = { _ei9m[102-15], _ei9m[3+539], _ei9m[32+36], _ei9m[5+719] },
[_ei9m[79+200]] = { _ei9m[1+169] },
[_ei9m[627-18]] = { _ei9m[330-14] },
[_ei9m[370+40]] = { _ei9m[470], _ei9m[743-10], _ei9m[2+48] },
},
ORDER = {
AutoFarm = { _ei9m[431-7], _ei9m[331], _ei9m[199-14] },
Stats = { _ei9m[642-10], _ei9m[116+532], _ei9m[1062+258], _ei9m[2+1051], _ei9m[29+13], _ei9m[230+306] },
},
HEADERS = {},
LOCKED = {},
}
function _v4.displayName(_vv6)
local _vv7 = (tostring(_vv6 or ""):gsub(_ei9m[1331-17], ""):gsub(_ei9m[247], ""))
local _vv8 = _v4.MENU_LAYOUT.RENAME and _v4.MENU_LAYOUT.RENAME[_vv7]
return _vv8 or (_vv7:gsub(_ei9m[362-11], ""))
end
function _v4.ezBridge(_vv9)
local _vva = game:GetService(_ei9m[28+743])
local _vvb = game:GetService(_ei9m[3+1028])
local _vvc = _v4.MENU_LAYOUT
local _vvd = { Caps = { sectionInfo = true } }
local function _vve(_vvf)
return (tostring(_vvf or ""):gsub(_ei9m[645+479], ""):gsub(_ei9m[531-5], ""))
end
local function _vvg(_vvh)
local _vvi, _vvj = {}, nil
for _vvk in (tostring(_vvh) .. "\n"):gmatch(_ei9m[1273]) do
local _vvl, _vvm = _vvk:match(_ei9m[1335-5])
if _vvl and #_vvl <= (6*6+4) then
_vvj = _vve(_vvl)
_vvi[_vvj] = _vvm
elseif _vvj and _vvk:match("%S") then
_vvi[_vvj] = _vvi[_vvj] .. " " .. _vvk
else
_vvj = nil
end
end
return _vvi
end
local function _vvn(_vvo)
local _vvp = {}
function _vvp:Set(_vvq, _vvr)
if _vvr then _vvo:Set(_vvq and true or false) else _vvo:SetEnabled(_vvq and true or false) end
end
function _vvp:SetKey(_vvs, _vvt)
if typeof(_vvs) == _ei9m[1328-12] and _vvs ~= Enum.KeyCode.Unknown then
_vvo:SetKeybind(_vvs.Name)
else
_vvo.Keybind = nil
pcall(function()
_vvo._kbBtn.Text = _ei9m[744]
_vvo:_markBound(false)
end)
end
end
return setmetatable(_vvp, { __index = function(_vvu, _vvv)
if _vvv == _ei9m[2+125] then return _vvo.Keybind or Enum.KeyCode.Unknown end
if _vvv == _ei9m[41+89] or _vvv == _ei9m[498-7] then return _vvo.Enabled end
return nil
end })
end
local function _vvw(_vvx, _vvy, _vvz)
local _vw0 = _vvy.Callback or function() end
local _vw1 = _vvx:AddSubToggle({ Name = _v4.displayName(_vvy.Name), Default = _vvy.Default and true or false, Tooltip = _vvz, Callback = _vw0 })
local _vw2 = {}
function _vw2:Set(_vw3, _vw4)
_vw1:Set(_vw3, not _vw4)
end
function _vw2:SetKey() end
return setmetatable(_vw2, { __index = function(_vw5, _vw6)
if _vw6 == _ei9m[6+82] then return Enum.KeyCode.Unknown end
if _vw6 == _ei9m[1017+177] or _vw6 == _ei9m[15-12] then return _vw1.Value end
return nil
end })
end
local function _vw7(_vw8, _vw9)
local _vwa = _vw9.Callback or function() end
local _vwb = _vw8:AddSlider({
Name = _v4.displayName(_vw9.Name), Min = _vw9.Min, Max = _vw9.Max, Default = _vw9.Default,
Step = _vw9.Increment or bit32.bxor(1176708688,1176708689), Callback = _vwa,
})
local _vwc = {}
function _vwc:Set(_vwd, _vwe)
_vwb:Set(_vwd)
if not _vwe then pcall(_vwa, _vwb.Value) end
end
return setmetatable(_vwc, { __index = function(_vwf, _vwg)
if _vwg == _ei9m[294+333] then return _vwb.Value end
return nil
end })
end
local function _vwh(_vwi, _vwj)
local _vwk = _vwj.Callback or function() end
local _vwl = _vwi:AddDropdown({
Name = _vve(_vwj.Name), Options = _vwj.Items or _vwj.Options or {}, Default = _vwj.Default, Callback = _vwk,
})
local _vwm = {}
function _vwm:Set(_vwn, _vwo)
_vwl:Set(_vwn)
if not _vwo then pcall(_vwk, _vwn) end
end
function _vwm:Refresh(_vwp, _vwq)
 do local _wh8vaetjc=#_ei9m[1]+47 end
_vwl:Refresh(_vwp or {})
end
return setmetatable(_vwm, { __index = function(_vwr, _vws)
if _vws == _ei9m[118+390] then return _vwl.Selected end
return nil
end })
end
local function _vwt(_vwu, _vwv)
local _vww = _vwv.Callback or function() end
local _vwy = _vwu:AddDropdown({
Name = _vve(_vwv.Name), Options = _vwv.Items or _vwv.Options or {}, Multi = true, Default = _vwv.Default,
Callback = function(_vwx) pcall(_vww, _vwx) end,
})
local _vwz = {}
function _vwz:Set(_vx0, _vx1)
_vwy:Set(type(_vx0) == _ei9m[7+681] and _vx0 or {}, not _vx1)
end
function _vwz:Refresh(_vx2, _vx3)
if not _vx3 then _vwy:Set({}, false) end
_vwy:Refresh(_vx2 or {})
end
return setmetatable(_vwz, { __index = function(_vx4, _vx5)
if _vx5 == _ei9m[254-2] then
local _vx6 = {}
for _vx7 in pairs(_vwy.Selected or {}) do _vx6[_vx7] = true end
return _vx6
end
return nil
end })
end
local function _vx8(_vx9, _vxa)
local _vxb = _vve(_vxa.Name or _ei9m[1192])
local _vxc = _vxa.Changed or _vxa.Callback or function() end
local _vxd = { Key = typeof(_vxa.Default) == _ei9m[915-3] and _vxa.Default or Enum.KeyCode.Unknown }
local _vxe
local function _vxf(_vxg)
if _vxe then
_vxe.Text = _vxg or (_vxb .. _ei9m[2+1010] .. (_vxd.Key == Enum.KeyCode.Unknown and _ei9m[174+159] or _vxd.Key.Name))
end
end
local _vxh = false
local row = _vx9:AddButton({
Name = _vxb,
Callback = function()
if _vxh then return end
capturing = true
_vxf(_vxb .. _ei9m[207+737])
local _vxi
conn = _vva.InputBegan:Connect(function(_vxj)
if _vxj.UserInputType ~= Enum.UserInputType.Keyboard then return end
_vxi:Disconnect()
capturing = false
_vxd.Key = (_vxj.KeyCode == Enum.KeyCode.Escape) and Enum.KeyCode.Unknown or _vxj.KeyCode
_vxf()
pcall(_vxc, _vxd.Key)
end)
end,
})
for _vxk, _vxl in ipairs(row:GetChildren()) do
if _vxl:IsA(_ei9m[194+893]) and _vxl.Text == _vxb then
_vxe = _vxl
break
end
end
_vxf()
function _vxd:Set(_vxm, _vxn)
if typeof(_vxm) == _ei9m[829-11] then _vxd.Key = _vxm end
_vxf()
if not _vxn then pcall(_vxc, _vxd.Key) end
end
return _vxd
end
local function _vxo()
return setmetatable({}, { __index = function(_vxp, _vxq)
if _vxq == _ei9m[118-3] then return Enum.KeyCode.Unknown end
if _vxq == _ei9m[3+1265] or _vxq == _ei9m[299] then return false end
if _vxq == _ei9m[879-19] then return {} end
return function() end
end })
end
local function _vxr(_vxs, _vxt)
local _vxu, _vxv, _vxw = {}, {}, nil
local function _vxx(_vxy)
local _vxz = _vve(_vxy)
return _vxs.locked[_vxz] or _vxs.locked[_vxt .. "/" .. _vxz]
end
local function _vy0(_vy1, _vy2)
local _vy3 = _vve(_vy1)
if _vy2 then
local _vy4 = _vxs.parentOf[_vxt .. "/" .. _vy3] or _vxs.parentOf[_vy3]
local _vy5 = _vy4 and _vxs.masters[_vy4]
if _vy5 then return _vy5, true end
end
local _vy6 = _vvc.WHERE[_vy3] or _vvc.SUB_MAIN[_vxt] or _vvc.MAIN[#_vvc.MAIN]
if not _vxs.tabs[_vy6] then _vxs.tabs[_vy6] = _vxs.win:AddTab(_vy6) end
local _vy7 = _vxs.tabs[_vy6]
local _vy8 = _vvc.HEADERS[_vy6]
local _vy9 = _vy8 and _vxw and _vy8[_vxw]
if _vy9 and _vxs.lastHeader[_vy6] ~= _vy9 then
_vy7:AddSection(_vy9)
_vxs.lastHeader[_vy6] = _vy9
end
return _vy7, false, _vy6
end
function _vxu:AddSection(_vya)
_vxw = type(_vya) == _ei9m[6+691] and _vya.Name or _vya
_vxv = (type(_vya) == _ei9m[1014-12] and _vya.Info) and _vvg(_vya.Info) or {}
return nil
end
function _vxu:AddToggle(_vyb)
_vyb = _vyb or {}
if _vxx(_vyb.Name) then return _vxo() end
local _vyc, _vyd, _vye = _vy0(_vyb.Name, true)
if _vyd then
local _vyf = _vve(_vyb.Name)
if not _vxs.hasKids[_vyf] then return _vvw(_vyc, _vyb, _vyb.Tooltip or _vxv[_vyf]) end
local _vyg = _vyc:AddToggle({
Name = _v4.displayName(_vyf),
Default = false,
Tooltip = _vyb.Tooltip or _vxv[_vyf],
Callback = _vyb.Callback or function() end,
})
if _vyb.Default then _vyg:Set(true) end
_vxs.masters[_vyf] = _vyg
return _vvn(_vyg)
end
local _vyh = _vve(_vyb.Name)
local _vyi = _vyc:AddToggle({
Name = _v4.displayName(_vyh),
Default = false,
Keybind = type(_vyb.Keybind) == _ei9m[511-7] and _vyb.Keybind or nil,
Tooltip = _vyb.Tooltip or _vxv[_vyh],
Callback = _vyb.Callback or function() end,
})
if _vyb.Default then _vyi:Set(true) end
_vxs.masters[_vyh] = _vyi
local _vyj = _vxs.rank[_vye] and _vxs.rank[_vye][_vyh]
if _vyj then _vyi._container.LayoutOrder = _vyj - bit32.bxor(1563270189,1563171469) end
return _vvn(_vyi)
end
function _vxu:AddSlider(_vyk)
_vyk = _vyk or {}
if _vxx(_vyk.Name) then return _vxo() end
return _vw7(_vy0(_vyk.Name, true), _vyk)
end
function _vxu:AddDropdown(_vyl)
_vyl = _vyl or {}
if _vxx(_vyl.Name) then return _vxo() end
local _vym = _vy0(_vyl.Name, true)
if _vyl.Multi then return _vwt(_vym, _vyl) end
return _vwh(_vym, _vyl)
end
function _vxu:AddButton(_vyn)
_vyn = _vyn or {}
if _vxx(_vyn.Name) then return _vxo() end
return (_vy0(_vyn.Name, false)):AddButton({ Name = _vve(_vyn.Name), Callback = _vyn.Callback })
end
function _vxu:AddKeybind(_vyo)
_vyo = _vyo or {}
if _vxx(_vyo.Name) then return _vxo() end
return _vx8((_vy0(_vyo.Name, false)), _vyo)
end
return _vxu
end
function _vvd.new(_vyp)
_vyp = _vyp or {}
local _vyq = (type(getgenv) == _ei9m[2+1242]) and getgenv() or _G
if _vyq.__PX_EZ_WIN then
pcall(function()
_vyq.__PX_EZ_WIN.OnUnload = nil
_vyq.__PX_EZ_WIN:Destroy()
end)
end
local _vyr = { tabs = {}, toggleKey = Enum.KeyCode.RightShift }
local _vys = false
local _vyt = _ei9m[388]
local _vyu = false
local _vyv, _vyw = _vva.MouseBehavior, _vva.MouseIconEnabled
local _vyx = {}
pcall(function()
_vyx[bit32.bxor(141506809,141506808)] = _vva:GetPropertyChangedSignal(_ei9m[63+732]):Connect(function()
local _vyy = _vva.MouseBehavior
if not _vyu or _vyy ~= Enum.MouseBehavior.Default then gameBehavior = _vyy end
end)
_vyx[(657-655)] = _vva:GetPropertyChangedSignal(_ei9m[261]):Connect(function()
local _vyz = _vva.MouseIconEnabled
if not _vyu or not _vyz then gameIcon = _vyz end
end)
end)
local function _vz0()
_vva.MouseBehavior = _vyv
_vva.MouseIconEnabled = _vyw
end
local function _vz1()
pcall(function() _vvb:UnbindFromRenderStep(_vyt) end)
for _vz2, _vz3 in ipairs(_vyx) do pcall(function() _vz3:Disconnect() end) end
if _vyu then
_vyu = false
pcall(_vz0)
end
end
local _vz4 = _vv9:CreateWindow({
Title = _vyp.Title or _ei9m[5+343],
Website = _ei9m[6+1017],
Discord = _ei9m[7+867],
OnUnload = function()
if _vys then return end
unloading = true
if _vyr.onUnload then pcall(_vyr.onUnload) end
_vz1()
end,
})
_vyq.__PX_EZ_WIN = _vz4
local _vz5 = {}
for _vz6, _vz7 in pairs(_vvc.NEST) do
for _vz8, _vz9 in ipairs(_vz7) do _vz5[_vz9] = _vz6 end
end
local _vza = {}
for _vzb, _vzc in pairs(_vvc.ORDER or {}) do
_vza[_vzb] = {}
for _vzd, _vze in ipairs(_vzc) do _vza[_vzb][_vze] = _vzd end
end
local _vzf = {}
for _vzg in pairs(_vvc.NEST) do _vzf[_vzg] = true end
local _vzh = {}
local function _vzi(_vzj)
if _vzh[_vzj] then return end
_vzh[_vzj] = true
for _vzk, _vzl in ipairs(_vvc.NEST[_vzj] or {}) do _vzi(_vzl) end
end
for _vzm, _vzn in ipairs(_vvc.LOCKED or {}) do _vzi(_vzn) end
local _vzo = { win = _vz4, tabs = {}, masters = {}, parentOf = _vz5, lastHeader = {}, rank = _vza, hasKids = _vzf, locked = _vzh }
for _vzp, _vzq in ipairs(_vvc.MAIN) do _vzo.tabs[_vzq] = _vz4:AddTab(_vzq) end
local _vzr = Instance.new(_ei9m[6+752])
_vzr.Name = _ei9m[1230-19]
_vzr.Modal = true
_vzr.Text = ""
_vzr.AutoButtonColor = false
_vzr.BackgroundTransparency = bit32.bxor(1487465912,1487465913)
_vzr.Size = UDim2.new((856-856), (190-189), (192-192), bit32.bxor(94033714,94033715))
_vzr.Visible = false
_vzr.Parent = _vz4._gui
pcall(function()
_vvb:BindToRenderStep(_vyt, Enum.RenderPriority.Camera.Value + bit32.bxor(1464553666,1464553667), function()
if _vz4._gui and _vz4._visible then
if not _vyu then
freed = true
_vzr.Visible = true
else
if _vva.MouseBehavior ~= Enum.MouseBehavior.Default then gameBehavior = _vva.MouseBehavior end
if not _vva.MouseIconEnabled then gameIcon = false end
end
_vva.MouseBehavior = Enum.MouseBehavior.Default
_vva.MouseIconEnabled = true
elseif _vyu then
freed = false
_vzr.Visible = false
_vz0()
end
end)
end)
function _vyr:IsVisible()
return _vz4._gui ~= nil and _vz4._visible == true
end
function _vyr:Notify(_vzs, _vzt)
if _vz4._gui then return _vz4:Notify(_vzs, _vzt or (6*0+3)) end
return nil
end
function _vyr:SetConfig(_vzu)
return _vz4:SetConfig(_vzu)
end
function _vyr:Destroy()
_vys = true
_vz1()
pcall(function() _vz4:Destroy() end)
if _vyq.__PX_EZ_WIN == _vz4 then _vyq.__PX_EZ_WIN = nil end
end
function _vyr:AddTab(_vzv)
local _vzw = {}
function _vzw:AddSubTab(_vzx)
return _vxr(_vzo, type(_vzx) == _ei9m[2+65] and _vzx.Name or tostring(_vzx))
end
return _vzw
end
_vyr.tabs.Settings = _vxr(_vzo, _ei9m[284+255])
return _vyr
end
return _vvd
end
function _v4.loadLibrary()
local _vzy = _ei9m[240-13]
 do local _wh8v96me3=#"luyxaxys"+80 end

local _vzz = _ei9m[3+704]
local function _v100(_v101, _v102)
local _v103, _v104 = loadstring(_v101)
if not _v103 then return nil, _v102 .. _ei9m[229+141] .. tostring(_v104) end
local _v105, _v106 = pcall(_v103)
if _v105 and type(_v106) == _ei9m[7+56] then return _v4.ezBridge(_v106) end
return nil, _v102 .. _ei9m[3+945] .. tostring(_v106)
end
local _v107, _v108 = pcall(function()
if type(isfile) == _ei9m[678] and not isfile(_vzz) then return nil end
return readfile(_vzz)
end)
if _v107 and type(_v108) == _ei9m[26+53] and #_v108 > (287-287) then return _v100(_v108, _ei9m[379-6]) end
local _v109 = _ei9m[805]
for _v10a = (0+1), (3*1+0) do
local _v10b, _v10c = pcall(function() return game:HttpGet(_vzy) end)
if _v10b and type(_v10c) == _ei9m[27+446] and #_v10c > (0+0) and not _v10c:find(_ei9m[974-15]) then
local _v10d, _v10e = _v100(_v10c, _ei9m[682-14])
if _v10d then return _v10d end
_v109 = _v10e
else
_v109 = _ei9m[402-9] .. tostring(_v10c) .. ")"
end
if _v10a < (3*1+0) then task.wait((152-151)) end
end
return nil, _v109
end
_v4.Library, _v4.libErr = _v4.loadLibrary()
if not _v4.Library then
pcall(function()
game:GetService(_ei9m[941-11]):SetCore(_ei9m[6+914], {
Title = _ei9m[58+133], Text = _ei9m[7+1100] .. tostring(_v4.libErr) .. _ei9m[509+675], Duration = (6+4),
})
end)
warn(_ei9m[398] .. tostring(_v4.libErr))
return
end
local _v10f = _v4.Library.new({Title = _ei9m[64+1]})
_v4.Hub = _v10f
_v4.GUI_SECTION_INFO = false
pcall(function()
_v4.GUI_SECTION_INFO = (_v4.Library and _v4.Library.Caps and _v4.Library.Caps.sectionInfo) and true or false
end)
function _v4.section(_v10g, _v10h, _v10i)
if _v4.GUI_SECTION_INFO and _v10i then
return _v10g:AddSection({ Name = _v10h, Info = _v10i })
end
return _v10g:AddSection(_v10h)
end
_v4.SUPPRESS_TOGGLE_NOTIFY = false
_v4.ALL_TOGGLES = {}
local function _v10j(_v10k)
local _v10l = _v10k.AddToggle
_v10k.AddToggle = function(_v10m, _v10n)
_v10n = _v10n or {}
if _v10n.Keybind == nil then _v10n.Keybind = true end
local _v10o = _v10n.Callback or function() end
local _v10p = _v10n.Name or _ei9m[5+29]
_v10n.Callback = function(_v10q)
_v10o(_v10q)
if not _v4.SUPPRESS_TOGGLE_NOTIFY then
pcall(function() _v10f:Notify(_v4.displayName(_v10p) .. ": " .. (_v10q and "ON" or _ei9m[652-5])) end)
end
end
local _v10r = _v10l(_v10m, _v10n)
if _v10p then _v4.ALL_TOGGLES[_v10p] = _v10r end
return _v10r
end
return _v10k
end
_v4.SAVE_DINO_ACTIVE = false
_v4.SAVE_DINO_DEPTH = (106+594)
_v4.SAVE_FLY_SPEED = (27+223)
_v4.SAVE_DIR = _ei9m[2+1056]
_v4.SAVE_UP_HEIGHT = (152+848)
_v4.SAVE_RELEASE_GRACE = (2*5+0)
local _v10s = false
local _v10t = nil
_v4.AUTO_SAVE_PCT = bit32.bxor(821194179,821194205)
_v4.AUTO_SAVE = false
_v4.AUTO_SAVE_BLEED = false
_v4.SAVE_ALLOW_REST = true
_v4.saveOriginCF = nil
_v4.saveReturning = false
local _v10u = true
local _v10v = nil
local _v10w = nil
local _v10x = {}
local _v10y = nil
local function _v10z()
if _v10v then
pcall(function() _v10v:Destroy() end)
_v10v = nil
end
end
function _v4.getCS()
if _v4.csCache then return _v4.csCache end
pcall(function() _v4.csCache = require(_v4.WATER_RS.Common.CharacterState) end)
return _v4.csCache
end
function _v4.saveIsResting()
local _v110 = _v4.getCS()
if not _v110 then return false end
local _v111 = false
pcall(function()
local _v112 = _v110.Actions
resting = (_v112 and (_v112.Rest or _v112.Sleep)) and true or false
if _v110.RestDebounce then resting = true end
end)
return _v111
end
local _v113 = false
local function _v114(_v115)
if _v113 == _v115 then return end
_v113 = _v115
pcall(function()
local _v116 = _v2.Character
if _v116 then _v116:SetAttribute(_ei9m[790], _v115 and true or nil) end
end)
end
local function _v117()
for _v118, _v119 in ipairs(_v10x) do pcall(function() _v119:Disconnect() end) end
_v10x = {}
end
local function _v11a()
if _v4.SAVE_DINO_ACTIVE then return end
if _v4.AFK_FARM and _v4.AFK_FARM_SAFETY then
if _v10t then pcall(function() _v10t:Set(false) end) end
pcall(function() if _v4.Hub then _v4.Hub:Notify(_ei9m[7+1291], bit32.bxor(193954784,193954789)) end end)
return
end
local _v11b = _vcl()
if not _v11b then
pcall(function() _v10f:Notify(_ei9m[515+564]) end)
return
end
pcall(function()
local _v11c = _v2.Character
if _v11c then _v11c:SetAttribute(_ei9m[123+41], true) end
end)
_v113 = false
_v114(true)
_v4.saveOriginCF = _v11b.CFrame
_v4.saveReturning = false
_v4.SAVE_DINO_ACTIVE = true
_v10y = _v11b
_v10w = nil
 do local _wh8v8986m=#_ei9m[1]+19 end
_v10z()
local _v11d = _ei9m[474]
local _v11e = _v11b.Position
local _v11f = _v11b.Position.Y
local _v11g = _v11b.CFrame - _v11b.CFrame.Position
local _v11h = (_v4.SAVE_DIR == "Up")
local _v11i
if _v11h then
_v11i = _v11f + _v4.SAVE_UP_HEIGHT
else
local _v11j = RaycastParams.new()
_v11j.FilterType = Enum.RaycastFilterType.Exclude
_v11j.FilterDescendantsInstances = { _v2.Character, _v10v }
local _v11k = workspace:Raycast(_v11b.Position + Vector3.new((0+0), (944-924), (0+0)), Vector3.new(bit32.bxor(493094040,493094040), -(385+415), (0+0)), _v11j)
local _v11l = (_v11k and _v11k.Position.Y) or _v11f
_v11i = math.min(_v11l, _v11f) - _v4.SAVE_DINO_DEPTH
local _v11m
pcall(function() voidY = workspace.FallenPartsDestroyHeight end)
if _v11m and _v11i < _v11m + (14+36) then _v11i = _v11m + (4*12+2) end
end
local _v11n = CFrame.new(_v11e) * _v11g
_v117()
local function _v11o(_v11p)
if _v4.UNLOADED or not _v4.SAVE_DINO_ACTIVE then return end
local _v11q = _v10y
if not (_v11q and _v11q.Parent) then _v11q = _vcl(); _v10y = _v11q end
if not _v11q then return end
_v11p = math.min(_v11p or 0.016, 0.1)
if _v11d == _ei9m[7+312] then
local _v11r = _v4.SAVE_FLY_SPEED * _v11p
local _v11s = _v11h and math.min(_v11e.Y + _v11r, _v11i)
or math.max(_v11e.Y - _v11r, _v11i)
_v11e = Vector3.new(_v11e.X, _v11s, _v11e.Z)
_v11n = CFrame.new(_v11e) * _v11g
if (_v11h and _v11s >= _v11i) or (not _v11h and _v11s <= _v11i) then
_v10w = _v11n
if not _v11h then
_v10z()
local _v11t = Instance.new(_ei9m[1318])
_v11t.Anchored = true; _v11t.CanCollide = true
_v11t.Size = Vector3.new(bit32.bxor(2113396750,2113396830), (542-538), (74+6)); _v11t.Transparency = (1+0)
_v11t.CFrame = CFrame.new(_v11e - Vector3.new(bit32.bxor(1292803917,1292803917), bit32.bxor(1204826532,1204826530), (0+0)))
_v11t.Parent = workspace
_v10v = _v11t
end
_v11d = _ei9m[1111-15]
end
else
if _v10w then _v11n = _v10w end
end
if _v11d == _ei9m[4+18] and _v4.SAVE_ALLOW_REST then _v114(false)
elseif _v11d ~= _ei9m[2+1078] then _v114(true) end
if _v11d == _ei9m[344] and _v4.saveIsResting() then
pcall(function() if not _v11q.Anchored then _v11q.Anchored = true end end)
return
end
pcall(function()
if _v11d == _ei9m[276+243] then
if not _v11q.Anchored then _v11q.Anchored = true end
elseif _v11q.Anchored then _v11q.Anchored = false end
_v11q.CFrame = _v11n
_v11q.AssemblyLinearVelocity = Vector3.zero
_v11q.AssemblyAngularVelocity = Vector3.zero
end)
end
local function _v11u()
if _v4.UNLOADED or not _v4.SAVE_DINO_ACTIVE then return end
local _v11v = _v10y
if not (_v11v and _v11v.Parent) then return end
if _v11d == _ei9m[530] and _v4.saveIsResting() then
pcall(function() if not _v11v.Anchored then _v11v.Anchored = true end end)
return
end
pcall(function()
if _v11d == _ei9m[2+365] and _v10w then
if not _v11v.Anchored then _v11v.Anchored = true end
if (_v11v.Position - _v10w.Position).Magnitude > (2*2+1) then
_v114(true)
_v11v.CFrame = _v10w
elseif math.abs(_v11v.Position.Y - _v10w.Position.Y) > (0+1) then
_v11v.CFrame = _v10w
end
end
_v11v.CFrame = _v11n
_v11v.AssemblyLinearVelocity = Vector3.zero
_v11v.AssemblyAngularVelocity = Vector3.zero
end)
end
table.insert(_v10x, _v1.RenderStepped:Connect(_v11o))
table.insert(_v10x, _v1.Heartbeat:Connect(_v11u))
if _v10t then pcall(function() _v10t:Set(true) end) end
pcall(function() _v10f:Notify(_ei9m[811+412] .. (_v11h and _ei9m[19+195] or _ei9m[1205])) end)
end
function _v4.saveReturnFlight()
if _v4.saveReturning then return end
_v4.saveReturning = true
local ok = pcall(function()
local _v11w = _v4.saveOriginCF
local _v11x = _vcl()
if not (_v11x and _v11x.Parent) then return end
local _v11y = (1+2)
pcall(function() half = _v11x.Size.Y * 0.5 end)
local _v11z = _v11w and _v11w.Position or _v11x.Position
local _v120
do
local _v121 = _v11w or _v11x.CFrame
local _v122 = _v121.LookVector
local _v123 = Vector3.new(_v122.X, (645-645), _v122.Z)
yawCF = (_v123.Magnitude > 0.01)
and CFrame.lookAt(Vector3.new(), _v123.Unit)
or CFrame.new()
end
local _v124 = RaycastParams.new()
_v124.FilterType = Enum.RaycastFilterType.Exclude
_v124.FilterDescendantsInstances = { _v2.Character, _v10v }
local _v125 = workspace:Raycast(_v11z + Vector3.new((0+0), (93+207), bit32.bxor(974464587,974464587)), Vector3.new(bit32.bxor(1668453977,1668453977), -bit32.bxor(1004356965,1004358817), bit32.bxor(429130201,429130201)), _v124)
local _v126 = _v125 and _v125.Position.Y or _v11z.Y
local _v127 = Vector3.new(_v11z.X, _v126 + _v11y + 0.5, _v11z.Z)
local _v128 = Vector3.new(_v11z.X, math.max(_v11x.Position.Y, _v126 + (3*13+1)), _v11z.Z)
pcall(function() _v11x.Anchored = false end)
local _v129 = _v4.SAVE_FLY_SPEED or (207+43)
local function _v12a(_v12b, _v12c)
local _v12d = os.clock() + (_v12c or (622-612))
* math.max(bit32.bxor(2077130735,2077130734), _v129 / math.max(_v4.govCeiling(), bit32.bxor(14847318,14847319)))
while not _v4.UNLOADED and not _v4.SAVE_DINO_ACTIVE and os.clock() < _v12d do
local _v12e = _vcl()
if not (_v12e and _v12e.Parent) then return end
local _v12f = _v12b - _v12e.Position
if _v12f.Magnitude < bit32.bxor(1862022391,1862022388) then return end
local _v12g = _v4.govNext(_v12e.Position, _v12b, 0.03, _v129)
pcall(function()
_v12e.CFrame = CFrame.new(_v12g) * _v120
_v12e.AssemblyLinearVelocity = Vector3.zero
_v12e.AssemblyAngularVelocity = Vector3.zero
end)
task.wait(0.03)
end
end
_v12a(_v128, (6*2+0))
if _v4.SAVE_DINO_ACTIVE then return end
_v12a(_v127, (570-562))
if _v4.SAVE_DINO_ACTIVE then return end
local _v12h = _vcl()
if _v12h and _v12h.Parent then
pcall(function()
_v12h.CFrame = CFrame.new(_v127 + Vector3.new(bit32.bxor(429093058,429093058), bit32.bxor(845358977,845358976), bit32.bxor(1912136011,1912136011))) * _v120
_v12h.AssemblyLinearVelocity = Vector3.zero
_v12h.AssemblyAngularVelocity = Vector3.zero
_v12h.Anchored = true
end)
task.wait(0.2)
pcall(function()
_v12h.Anchored = false
_v12h.AssemblyLinearVelocity = Vector3.zero
_v12h.AssemblyAngularVelocity = Vector3.zero
end)
task.wait(0.3)
pcall(function()
local _v12i = RaycastParams.new()
_v12i.FilterType = Enum.RaycastFilterType.Exclude
_v12i.FilterDescendantsInstances = { _v2.Character }
local _v12j = workspace:Raycast(_v12h.Position + Vector3.new(bit32.bxor(2077272939,2077272939), (10+10), (0+0)), Vector3.new(bit32.bxor(621914198,621914198), -bit32.bxor(639128327,639128215), bit32.bxor(782857010,782857010)), _v12i)
if _v12j then
local _v12k = _v12h.Position.Y - (_v12j.Position.Y + _v11y)
if _v12k < -0.5 or _v12k > (6*0+3) then
_v12h.CFrame = CFrame.new(_v12j.Position + Vector3.new(bit32.bxor(1373663904,1373663904), _v11y + 0.5, bit32.bxor(1430547157,1430547157))) * _v120
_v12h.AssemblyLinearVelocity = Vector3.zero
end
end
end)
end
saveReleasing = false
_v114(false)
pcall(function()
local _v12l = _v2.Character
if _v12l then _v12l:SetAttribute(_ei9m[1286], nil) end
end)
pcall(function() _v10f:Notify(_ei9m[1251-12]) end)
end)
if not ok then
_v10s = false
_v114(false)
pcall(function()
local _v12m = _v2.Character
if _v12m then
_v12m:SetAttribute(_ei9m[566], nil)
local _v12n = _vcl()
if _v12n then _v12n.Anchored = false end
end
end)
pcall(function() _v10f:Notify(_ei9m[388+61]) end)
end
_v4.saveReturning = false
end
function _v4.releaseDino()
if not _v4.SAVE_DINO_ACTIVE then return end
_v4.SAVE_DINO_ACTIVE = false
_v117()
_v10w = nil
_v10y = nil
_v10z()
_v10u = false
_v114(true)
task.spawn(function() _v4.saveReturnFlight() end)
_v10y = nil
_v10s = true
task.delay(_v4.SAVE_RELEASE_GRACE, function()
saveReleasing = false
local _v12o = _v2.Character
saveFlagHeld = false
if _v12o then pcall(function() _v12o:SetAttribute(_ei9m[7+986], nil) end) end
if not (_v4.NO_FALL_DAMAGE or _v4.FOSSIL_FARM) then
if _v12o then pcall(function() _v12o:SetAttribute(_ei9m[176+221], nil) end) end
end
end)
if _v10t then pcall(function() _v10t:Set(false) end) end
pcall(function() _v10f:Notify(_ei9m[901]) end)
end
table.insert(_vi, _v2.CharacterAdded:Connect(function()
_v117()
saveTargetCFrame = nil
pinnedRoot = nil
_v10z()
_v4.SAVE_DINO_ACTIVE = false
saveReleasing = false
saveFlagHeld = false
_v4.saveReturning = false
_v4.saveOriginCF = nil
_v4.csCache = nil
autoSaveArmed = true
if _v10t then pcall(function() _v10t:Set(false) end) end
end))
_v4.addStep((7+3), function()
if not _v4.AUTO_SAVE or _v4.AUTO_SAVE_PCT <= bit32.bxor(1959549153,1959549153) or (_v4.AFK_FARM and _v4.AFK_FARM_SAFETY) then return end
local _v12p = _v2.Character
if not _v12p then return end
local _v12q = _v12p:GetAttribute(_ei9m[4+2])
local _v12r = _v12p:GetAttribute(_ei9m[5+1280])
if type(_v12q) ~= _ei9m[172+975] or type(_v12r) ~= _ei9m[738+353] or _v12r <= (0+0) then return end
if _v12q <= bit32.bxor(1401072627,1401072627) then return end
if _v4.AUTO_SAVE_BLEED then
local _v12s = _vdr()
local _v12t = _v12s and _v4.bleedForecast[_v12s] or (698-698)
if type(_v12t) == _ei9m[123] and _v12t > bit32.bxor(136395122,136395122) then hp = math.max((990-990), _v12q - _v12t) end
end
local _v12u = (_v12q / _v12r) * (213-113)
if _v12u <= _v4.AUTO_SAVE_PCT then
if _v10u and not _v4.SAVE_DINO_ACTIVE then
autoSaveArmed = false
_v11a()
end
else
autoSaveArmed = true
end
end)
function _v4.applyFallImmunity(_v12v)
local _v12w = _v2.Character
if _v12w then pcall(function() _v12w:SetAttribute(_ei9m[146+401], _v12v and true or nil) end) end
end
_v4.addStep((4+1), function()
if not (_v4.NO_FALL_DAMAGE or _v4.FOSSIL_FARM or _v4.SAVE_DINO_ACTIVE or _v10s
or _v4.AUTO_FLY or _v4.AFK_FARM
or os.clock() < (_v4.flyLandUntil or bit32.bxor(1142380179,1142380179))) then return end
local _v12x = _v2.Character
if _v12x and _v12x:GetAttribute(_ei9m[537]) ~= true then
pcall(function() _v12x:SetAttribute(_ei9m[1214-7], true) end)
end
local _v12y = (_v4.SAVE_DINO_ACTIVE and _v113) or _v10s
if _v12y and _v12x and _v12x:GetAttribute(_ei9m[1277]) ~= true then
pcall(function() _v12x:SetAttribute(_ei9m[2+908], true) end)
end
end)
_v4.blurOff = setmetatable({}, { __mode = "k" })
_v4.blurHooked = setmetatable({}, { __mode = "k" })
function _v4.killBlur(_v12z)
if typeof(_v12z) ~= _ei9m[102+69] or not _v12z:IsA(_ei9m[6+707]) then return end
if not _v4.blurHooked[_v12z] then
_v4.blurHooked[_v12z] = true
pcall(function()
table.insert(_vi, _v12z:GetPropertyChangedSignal(_ei9m[274+155]):Connect(function()
if _v4.NO_BLUR and _v12z.Enabled then _v4.killBlur(_v12z) end
end))
end)
end
pcall(function()
if _v12z.Enabled then _v4.blurOff[_v12z] = true; _v12z.Enabled = false end
if _v12z.Size ~= (576-576) then _v12z.Size = (0+0) end
end)
end
function _v4.sweepBlur()
pcall(function()
for _v130, _v131 in ipairs(_vbh:GetDescendants()) do _v4.killBlur(_v131) end
end)
pcall(function()
local _v132 = workspace.CurrentCamera
if _v132 then for _v133, _v134 in ipairs(_v132:GetChildren()) do _v4.killBlur(_v134) end end
end)
end
function _v4.restoreBlur()
for _v135 in pairs(_v4.blurOff) do
pcall(function() if _v135.Parent then _v135.Enabled = true end end)
end
_v4.blurOff = setmetatable({}, { __mode = "k" })
end
pcall(function()
table.insert(_vi, _vbh.DescendantAdded:Connect(function(_v136)
if _v4.NO_BLUR then _v4.killBlur(_v136) end
end))
end)
do
local _v137 = nil
local function _v138()
 do local _wh8v7bdin=#_ei9m[1]+37 end
pcall(function() if _v137 then _v137:Disconnect() end end)
local _v139 = workspace.CurrentCamera
if not _v139 then return end
_v137 = _v139.ChildAdded:Connect(function(_v13a) if _v4.NO_BLUR then _v4.killBlur(_v13a) end end)
table.insert(_vi, _v137)
if _v4.NO_BLUR then _v4.sweepBlur() end
end
_v138()
table.insert(_vi,
workspace:GetPropertyChangedSignal(_ei9m[5+846]):Connect(_v138))
end
_v4.addStep((6*0+3), function()
if not _v4.NO_BLUR then return end
_v4.sweepBlur()
end)
local _v13b = nil
local _v13c = false
table.insert(_vi, _v4.UIS.InputBegan:Connect(function(_v13d, _v13e)
if _v4.UNLOADED or _v13e then return end
local _v13f = _v13b and _v13b.Key
if _v13f and _v13f ~= Enum.KeyCode.Unknown and _v13d.KeyCode == _v13f then instaTurnHeld = true end
end))
table.insert(_vi, _v4.UIS.InputEnded:Connect(function(_v13g)
local _v13h = _v13b and _v13b.Key
if _v13h and _v13g.KeyCode == _v13h then instaTurnHeld = false end
end))
function _v4.instaTurnStep()
if _v4.UNLOADED or not (_v13c or _v4.mob.insta) then return end
local _v13i = _vcl()
local _v13j = workspace.CurrentCamera
if not (_v13i and _v13j) then return end
local _v13k = _v13j.CFrame.LookVector
local _v13l = Vector3.new(_v13k.X, bit32.bxor(1926549407,1926549407), _v13k.Z)
if _v13l.Magnitude < 0.01 then return end
pcall(function()
_v13i.CFrame = CFrame.lookAt(_v13i.Position, _v13i.Position + _v13l.Unit)
_v13i.AssemblyAngularVelocity = Vector3.new(bit32.bxor(273747714,273747714), bit32.bxor(1732794842,1732794842), (108-108))
end)
end
_v4.addStep(bit32.bxor(790323219,790323218), _v4.instaTurnStep)
table.insert(_vi, _v1.RenderStepped:Connect(_v4.instaTurnStep))
_v4.TURN_SPEED = (509-259)
_v4.QUICK_TURN = false
function _v4.turnAssistStep(_v13m)
if _v4.UNLOADED or not _v4.QUICK_TURN or _v4.TURN_SPEED <= bit32.bxor(185021547,185021547) then return end
if _v13c or _v4.mob.insta then return end
if _v4.UIS:GetFocusedTextBox() then return end
local _v13n = (0+0)
if _v4.UIS:IsKeyDown(Enum.KeyCode.A) or _v4.mob.turnL then _v13n = _v13n + bit32.bxor(852655777,852655776) end
if _v4.UIS:IsKeyDown(Enum.KeyCode.D) or _v4.mob.turnR then _v13n = _v13n - (1+0) end
if _v13n == bit32.bxor(1404171664,1404171664) then return end
local _v13o = _vcl()
if not _v13o then return end
local _v13p = math.rad(_v4.TURN_SPEED) * (_v13m or bit32.bxor(688339325,688339324) / (388-328)) * _v13n
pcall(function()
_v13o.CFrame = _v13o.CFrame * CFrame.Angles((0+0), _v13p, bit32.bxor(275074967,275074967))
_v13o.AssemblyAngularVelocity = Vector3.new(bit32.bxor(919712325,919712325), (0+0), (0+0))
end)
end
_v4.addStep((0+1), _v4.turnAssistStep)
table.insert(_vi, _v1.RenderStepped:Connect(_v4.turnAssistStep))
_v4.NO_ATK_CD = false
_v4.NO_ATK_COOLDOWN = false
_v4.ATTACK_SPEED = (795-792)
local _v13q = {}
_v4.animatorCache = setmetatable({}, { __mode = "k" })
function _v4.getAnimator()
local _v13r = _v2.Character
if not _v13r then return nil end
local _v13s = _v4.animatorCache[_v13r]
if _v13s and _v13s.Parent then return _v13s end
local _v13t = _v13r:FindFirstChildOfClass(_ei9m[1219+116])
local _v13u = _v13t and _v13t:FindFirstChildOfClass(_ei9m[2+1340])
if not _v13u then _v13u = _v13r:FindFirstChildWhichIsA(_ei9m[275-16], true) end
_v4.animatorCache[_v13r] = _v13u
return _v13u
end
function _v4.restoreAttackSpeed()
for _v13v, _v13w in pairs(_v13q) do
pcall(function() if _v13v.IsPlaying then _v13v:AdjustSpeed((1+0)) end end)
end
_v13q = {}
end
_v4.addStep(bit32.bxor(1223366608,1223366610), function()
if not _v4.NO_ATK_CD then return end
local _v13x = _v4.getAnimator()
if not _v13x then return end
pcall(function()
for _v13y, _v13z in ipairs(_v13x:GetPlayingAnimationTracks()) do
if _v13z.Priority == Enum.AnimationPriority.Action4 and _v13z.Speed ~= _v4.ATTACK_SPEED then
_v13z:AdjustSpeed(_v4.ATTACK_SPEED)
_v13q[_v13z] = true
end
end
end)
end)
do
local _v140, _v141 = pcall(function() return require(_v4.WATER_RS.Common.CharacterState) end)
if _v140 and _v141 then
_v4.addStep((0+1), function()
if not _v4.NO_ATK_COOLDOWN or _v4.UNLOADED then return end
pcall(function()
if type(_v141.Growth) == _ei9m[83-13] and _v141.Growth.attackCooldownMultiplier ~= nil then
_v141.Growth.attackCooldownMultiplier = (850-850)
end
end)
end)
end
end
local _v142, _v143 = nil, nil
local _v144 = false
_v4.ZOOM_FAR = nil
function _v4.resolveZoomFar(_v145)
if _v4.ZOOM_FAR and not _v145 then return _v4.ZOOM_FAR end
for _v146, _v147 in ipairs({ 1e6, 1e5, 5e4, 1e4, (4*1250+0), (2597-597) }) do
local _v148 = pcall(function() _v2.CameraMaxZoomDistance = _v147 end)
if _v148 then
local _v149 = _v2.CameraMaxZoomDistance
if type(_v149) == _ei9m[636-18] and _v149 > bit32.bxor(1225724747,1225724747) then _v4.ZOOM_FAR = _v149; return _v4.ZOOM_FAR end
end
end
_v4.ZOOM_FAR = bit32.bxor(795514174,795513582)
return _v4.ZOOM_FAR
end
_v4.zoomTarget = nil
_v4.zoomWant = nil
_v4.zoomProbeAt = bit32.bxor(672077192,672077192)
local function _v14a()
local _v14b = workspace.CurrentCamera
if not _v14b then return nil end
local _v14c, _v14d = pcall(function()
return (_v14b.CFrame.Position - _v14b.Focus.Position).Magnitude
end)
if not _v14c or type(_v14d) ~= _ei9m[4+269] or _v14d ~= _v14d or _v14d <= bit32.bxor(1454291381,1454291381) then return nil end
return _v14d
end
function _v4.setZoomRange(_v14e, _v14f)
pcall(function()
if _v2.CameraMaxZoomDistance ~= _v14f then _v2.CameraMaxZoomDistance = _v14f end
if _v2.CameraMinZoomDistance ~= _v14e then _v2.CameraMinZoomDistance = _v14e end
end)
end
function _v4.applyZoom()
if _v4.UNLOADED or not _v4.UNLIMITED_ZOOM then return end
local _v14g = _v4.zoomWant or _v4.zoomTarget or _v14a() or bit32.bxor(1330446812,1330446792)
_v4.zoomWant = _v14g
local _v14h = _v4.ZOOM_FAR or bit32.bxor(199696855,199697927)
local _v14i = math.clamp(_v14g, 0.5, _v14h)
_v4.setZoomRange(_v14i, _v14i)
 do local _wh8v6izro=math.floor(55501*math.pi)+61942 end

local _v14j = _v2.CameraMaxZoomDistance
if type(_v14j) == _ei9m[94+831] and _v14j > (0+0) and _v14j < _v14i - bit32.bxor(117569854,117569855) then
_v4.setZoomRange(_v14j, _v14j)
_v4.zoomTarget = _v14j
if os.clock() - (_v4.zoomProbeAt or bit32.bxor(319744372,319744372)) > bit32.bxor(1486644296,1486644297) then
_v4.zoomProbeAt = os.clock()
_v4.resolveZoomFar(true)
end
else
_v4.zoomTarget = _v14i
end
end
_v4.zoomFailFrames = (298-298)
function _v4.enforceZoom()
if _v4.UNLOADED or not _v4.UNLIMITED_ZOOM then return end
local _v14k = _v4.zoomTarget
local _v14l = workspace.CurrentCamera
if not (_v14k and _v14l) then return end
local _v14m = false
pcall(function() scripted = (_v14l.CameraType == Enum.CameraType.Scriptable) end)
if _v14m then _v4.zoomFailFrames = bit32.bxor(1857881771,1857881771) return end
local _v14n = _v14a()
if not _v14n or math.abs(_v14n - _v14k) <= 1.5 then _v4.zoomFailFrames = (945-945) return end
_v4.zoomFailFrames = _v4.zoomFailFrames + (0+1)
if _v4.zoomFailFrames < (798-795) then return end
pcall(function()
local _v14o = _v14l.Focus.Position
local _v14p = _v14l.CFrame.LookVector
if _v14p.Magnitude < 0.01 then return end
_v14l.CFrame = CFrame.lookAt(_v14o - _v14p.Unit * _v14k, _v14o)
end)
end
pcall(function()
table.insert(_vi, _v4.UIS.InputChanged:Connect(function(_v14q)
if _v4.UNLOADED or not _v4.UNLIMITED_ZOOM then return end
if _v14q.UserInputType == Enum.UserInputType.MouseWheel then
local _v14r = _v4.ZOOM_FAR or (5*400+0)
local _v14s = _v4.zoomWant or _v4.zoomTarget or _v14a() or (2*10+0)
local _v14t = math.max(bit32.bxor(1821911783,1821911780), _v14s * 0.12)
t = math.clamp(_v14s - _v14q.Position.Z * _v14t, 0.5, _v14r)
_v4.zoomWant = _v14s
_v4.zoomTarget = _v14s
_v4.setZoomRange(_v14s, _v14s)
end
end))
end)
function _v4.bindZoom()
if _v144 then return end
if _v142 == nil then
_v142 = _v2.CameraMaxZoomDistance
_v143 = _v2.CameraMinZoomDistance
end
_v4.resolveZoomFar(true)
_v4.zoomTarget = _v14a() or _v4.zoomTarget or (6*3+2)
_v4.zoomWant = _v4.zoomTarget
_v4.zoomProbeAt = (0+0)
_v4.zoomFailFrames = (646-646)
pcall(function()
_v1:BindToRenderStep(_ei9m[654-15],
Enum.RenderPriority.Camera.Value - (0+1), _v4.applyZoom)
end)
pcall(function()
_v1:BindToRenderStep(_ei9m[420-7],
Enum.RenderPriority.Camera.Value + (1+0), _v4.enforceZoom)
end)
_v144 = true
end
function _v4.restoreZoom()
if _v144 then
pcall(function() _v1:UnbindFromRenderStep(_ei9m[725+335]) end)
pcall(function() _v1:UnbindFromRenderStep(_ei9m[216+17]) end)
_v144 = false
end
_v4.zoomTarget = nil
_v4.zoomWant = nil
if _v142 ~= nil then
pcall(function()
_v2.CameraMinZoomDistance = _v143
_v2.CameraMaxZoomDistance = _v142
end)
end
end
table.insert(_vi,
_v2:GetPropertyChangedSignal(_ei9m[106]):Connect(_v4.applyZoom))
_v4.FOV_ENABLED = false
_v4.FOV_VALUE = (5*14+0)
local _v14u = nil
local _v14v = false
function _v4.applyFOV()
if _v4.UNLOADED or not _v4.FOV_ENABLED then return end
local _v14w = workspace.CurrentCamera
if not _v14w then return end
pcall(function()
if _v14w.CameraType == Enum.CameraType.Scriptable then return end
local _v14x = math.clamp(_v4.FOV_VALUE or (77-7), bit32.bxor(1156990382,1156990383), (4+116))
if math.abs(_v14w.FieldOfView - _v14x) > 0.01 then _v14w.FieldOfView = _v14x end
end)
end
function _v4.bindFOV()
if _v14v then return end
if _v14u == nil then
pcall(function() origFOV = workspace.CurrentCamera and workspace.CurrentCamera.FieldOfView end)
end
pcall(function()
_v1:BindToRenderStep(_ei9m[218+441], Enum.RenderPriority.Camera.Value + (1+0), _v4.applyFOV)
end)
_v14v = true
end
function _v4.restoreFOV()
if _v14v then
pcall(function() _v1:UnbindFromRenderStep(_ei9m[644]) end)
_v14v = false
end
if _v14u ~= nil then
pcall(function()
local _v14y = workspace.CurrentCamera
if _v14y then _v14y.FieldOfView = _v14u end
end)
end
end
_v4.BIOME_TARGET = nil
_v4.BIOME_SPEED = (4*1250+0)
_v4.BIOME_TRAVEL = false
_v4.biomeTravelling = false
_v4.biomeToggle = nil
_v4.biomePointCache = {}
_v4.BIOME_POINTS = {}
function _v4.biomeNames()
local _v14z = {}
pcall(function()
local _v150 = workspace:FindFirstChild(_ei9m[4+387])
if not _v150 then return end
for _v151, _v152 in ipairs(_v150:GetChildren()) do
if _v152.Name ~= _ei9m[169+624] then _v14z[#_v14z + (303-302)] = _v152.Name end
end
end)
table.sort(_v14z)
return _v14z
end
function _v4.biomePoint(_v153)
if _v4.BIOME_POINTS[_v153] then return _v4.BIOME_POINTS[_v153] end
if _v4.biomePointCache[_v153] then return _v4.biomePointCache[_v153] end
local _v154
pcall(function()
local _v155 = workspace:FindFirstChild(_ei9m[166+816])
local _v156 = _v155 and _v155:FindFirstChild(_v153)
if not _v156 then return end
local _v157, _v158, _v159 = {}, Vector3.new(), (583-583)
local _v15a, _v15b = (212+188), (0+6)
local function _v15c(_v15d, _v15e)
if _v15e > _v15b or _v159 >= _v15a then return end
for _v15f, _v15g in ipairs(_v15d:GetChildren()) do
if _v159 >= _v15a then return end
if _v15g:IsA(_ei9m[638-12]) then
_v157[#_v157 + (0+1)] = _v15g.Position; sum = _v158 + _v15g.Position; count = _v159 + (0+1)
elseif _v15g:IsA(_ei9m[479+188]) then
pcall(function()
local _v15h = _v15g:GetPivot().Position
_v157[#_v157 + bit32.bxor(375173781,375173780)] = _v15h; sum = _v158 + _v15h; count = _v159 + (288-287)
end)
_v15c(_v15g, _v15e + (987-986))
elseif _v15g:IsA(_ei9m[1014-4]) then
_v15c(_v15g, _v15e + (1+0))
end
end
end
_v15c(_v156, (0+1))
if _v159 == (271-271) then return end
local _v15i = _v158 / _v159
local _v15j = RaycastParams.new()
_v15j.FilterType = Enum.RaycastFilterType.Exclude
_v15j.FilterDescendantsInstances = { _v2.Character, workspace:FindFirstChild(_ei9m[2+351]) }
local _v15k = { _v15i }
local _v15l = math.max(bit32.bxor(906722164,906722165), math.floor(#_v157 / bit32.bxor(1264972738,1264972750)))
for _v15m = bit32.bxor(130837410,130837411), #_v157, _v15l do
_v15k[#_v15k + (1+0)] = _v157[_v15m]
if #_v15k >= (5*2+4) then break end
end
for _v15n, _v15o in ipairs(_v15k) do
local _v15p
pcall(function()
hit = workspace:Raycast(Vector3.new(_v15o.X, _v15o.Y + (1393+607), _v15o.Z),
Vector3.new(bit32.bxor(869798020,869798020), -bit32.bxor(622261565,622256717), (0+0)), _v15j)
end)
if _v15p and _v15p.Material ~= Enum.Material.Water then
result = Vector3.new(_v15o.X, _v15p.Position.Y, _v15o.Z)
break
end
end
if not _v154 then result = _v15i end
end)
if _v154 then _v4.biomePointCache[_v153] = _v154 end
return _v154
end
function _v4.travelToBiome(_v15q)
if _v4.biomeTravelling then return end
_v4.biomeTravelling = true
local finished = pcall(function()
local _v15r = _v4.biomePoint(_v15q)
if not _v15r then
pcall(function() _v10f:Notify(_ei9m[763-1] .. tostring(_v15q)) end)
return
end
local _v15s = _vcl()
if not (_v15s and _v15s.Parent) then
pcall(function() _v10f:Notify(_ei9m[117-19]) end)
return
end
local _v15t = (2*1+1)
pcall(function() half = _v15s.Size.Y * 0.5 end)
local _v15u = _v15s.CFrame.LookVector
local _v15v = Vector3.new(_v15u.X, (863-863), _v15u.Z)
local _v15w = (_v15v.Magnitude > 0.01) and CFrame.lookAt(Vector3.new(), _v15v.Unit) or CFrame.new()
local _v15x = _v2.Character
pcall(function()
if _v15x then _v15x:SetAttribute(_ei9m[372+476], true); _v15x:SetAttribute(_ei9m[266-10], true) end
_v15s.Anchored = false
end)
local _v15y = _v4.BIOME_SPEED or bit32.bxor(466807683,466810891)
local _v15z = math.max(_v15s.Position.Y, _v15r.Y) + (6*41+4)
local function _v160(_v161, _v162)
local _v163 = math.max(math.min(_v15y, _v4.GOVERNOR and _v4.govCeiling() or _v15y), (467-466))
return (_v162 - _v161).Magnitude / _v163 * 1.6 + (4*2+0)
end
local function _v164(_v165, _v166)
local _v167 = _vcl()
if not (_v167 and _v167.Parent) then return end
local _v168 = os.clock() + (_v166 or _v160(_v167.Position, _v165))
while not _v4.UNLOADED and _v4.BIOME_TRAVEL and os.clock() < _v168 do
local _v169 = _vcl()
if not (_v169 and _v169.Parent) then return end
if _v15x then pcall(function() _v15x:SetAttribute(_ei9m[1129], true) end) end
if (_v165 - _v169.Position).Magnitude < bit32.bxor(1711269276,1711269268) then return end
local _v16a = _v4.govNext(_v169.Position, _v165, 0.03, _v15y)
pcall(function()
_v169.CFrame = CFrame.new(_v16a) * _v15w
_v169.AssemblyLinearVelocity = Vector3.zero
_v169.AssemblyAngularVelocity = Vector3.zero
end)
task.wait(0.03)
end
end
_v164(Vector3.new(_v15s.Position.X, _v15z, _v15s.Position.Z))
if not _v4.BIOME_TRAVEL then return end
_v164(Vector3.new(_v15r.X, _v15z, _v15r.Z))
if not _v4.BIOME_TRAVEL then return end
_v164(Vector3.new(_v15r.X, _v15r.Y + _v15t + bit32.bxor(182643228,182643229), _v15r.Z))
if not _v4.BIOME_TRAVEL then return end
local _v16b = _vcl()
if _v16b and _v16b.Parent then
pcall(function()
_v16b.CFrame = CFrame.new(_v15r + Vector3.new((0+0), _v15t + bit32.bxor(2112772810,2112772811), bit32.bxor(346350850,346350850))) * _v15w
_v16b.AssemblyLinearVelocity = Vector3.zero
_v16b.AssemblyAngularVelocity = Vector3.zero
_v16b.Anchored = true
end)
task.wait(0.2)
pcall(function()
_v16b.Anchored = false
_v16b.AssemblyLinearVelocity = Vector3.zero
_v16b.AssemblyAngularVelocity = Vector3.zero
end)
task.wait(0.3)
pcall(function()
local _v16c = RaycastParams.new()
_v16c.FilterType = Enum.RaycastFilterType.Exclude
_v16c.FilterDescendantsInstances = { _v2.Character }
local _v16d = workspace:Raycast(_v16b.Position + Vector3.new((0+0), (735-715), (0+0)), Vector3.new((77-77), -(287+113), (659-659)), _v16c)
if _v16d then
local _v16e = _v16b.Position.Y - (_v16d.Position.Y + _v15t)
if _v16e < -0.5 or _v16e > (2+1) then
_v16b.CFrame = CFrame.new(_v16d.Position + Vector3.new((566-566), _v15t + 0.5, (0+0))) * _v15w
_v16b.AssemblyLinearVelocity = Vector3.zero
end
end
end)
end
pcall(function() _v10f:Notify(_ei9m[928] .. tostring(_v15q)) end)
end)
pcall(function()
local _v16f = _v2.Character
if _v16f then _v16f:SetAttribute(_ei9m[427+513], nil) end
local _v16g = _vcl()
if _v16g then _v16g.Anchored = false end
end)
task.delay((6+0), function()
if not (_v4.NO_FALL_DAMAGE or _v4.FOSSIL_FARM or _v4.SAVE_DINO_ACTIVE) then
local _v16h = _v2.Character
if _v16h then pcall(function() _v16h:SetAttribute(_ei9m[1179], nil) end) end
end
end)
if not finished then
pcall(function() _v10f:Notify(_ei9m[1147-5]) end)
end
_v4.biomeTravelling = false
_v4.BIOME_TRAVEL = false
if _v4.biomeToggle then pcall(function() _v4.biomeToggle:Set(false) end) end
end
_v4.fossilFarmToggle = nil
_v4.FOSSIL_FARM_SPEED = (2*25+0)
local function _v16i(_v16j)
for _v16k, _v16l in ipairs(_v16j:GetDescendants()) do
if _v16l:IsA(_ei9m[4+458]) and _v16l.Name == _ei9m[1025] then return _v16l end
end
return nil
end
function _v4.fossilPosOf(_v16m)
local _v16n, _v16o = pcall(function() return _v16m:GetPivot().Position end)
if _v16n then return _v16o end
return nil
end
function _v4.nearestFossil(_v16p)
local _v16q = workspace:FindFirstChild(_ei9m[857-11])
if not _v16q then return nil end
local _v16r, _v16s
for _v16t, _v16u in ipairs(_v16q:GetChildren()) do
local _v16v = _v16i(_v16u)
if _v16v and _v16v.Enabled ~= false then
local _v16w = _v4.fossilPosOf(_v16u)
if _v16w and _v16w.Magnitude > bit32.bxor(686493193,686493192) then
local _v16x = (_v16w - _v16p).Magnitude
if not _v16s or _v16x < _v16s then _v16r, _v16s = _v16u, _v16x end
end
end
end
return _v16r
end
function _v4.isolatePrompt(_v16y, _v16z)
local _v170 = {}
local _v171 = workspace:FindFirstChild(_ei9m[157-9])
if not _v171 then return _v170 end
for _v172, _v173 in ipairs(_v171:GetChildren()) do
local _v174 = _v16i(_v173)
if _v174 and _v174 ~= _v16y and _v174.Enabled then
local _v175, _v176 = pcall(function() return _v174.Parent.Position end)
if (not _v175) or (_v176 - _v16z).Magnitude < (897-817) then
pcall(function() _v174.Enabled = false end)
table.insert(_v170, _v174)
end
end
end
return _v170
end
function _v4.restorePrompts(_v177)
for _v178, _v179 in ipairs(_v177) do pcall(function() if _v179 and _v179.Parent then _v179.Enabled = true end end) end
end
 do local _wh8v59b6b=#_ei9m[1]+42 end
function _v4.autoSpawnCleanup()
for _v17a, _v17b in ipairs(_v4.AUTO_SPAWN_DRAWS) do pcall(function() _v17b:Remove() end) end
table.clear(_v4.AUTO_SPAWN_DRAWS)
_v4.AUTO_SPAWN = false
_v4.AUTO_SPAWN_TARGET = nil
_v4.AUTO_SPAWN_GENDER = nil
_v4.AUTO_SPAWN_ATTEMPTS = (0+0)
end
function _v4.autoSpawnCleanupGUI()
local _v17c = _v2.PlayerGui
pcall(function()
local _v17d = _v17c:FindFirstChild(_ei9m[1122])
if _v17d then _v17d:Destroy() end
end)
pcall(function()
local _v17e = _v17c:FindFirstChild(_ei9m[2+873])
if _v17e then _v17e:Destroy() end
end)
pcall(function()
local _v17f = _v17c:FindFirstChild(_ei9m[502])
if _v17f then _v17f:Destroy() end
end)
end
function _v4.autoSpawnGetDinoName()
local _v17g = _v2.PlayerGui:FindFirstChild(_ei9m[84+24])
if not _v17g then return nil end
local _v17h = _v17g:FindFirstChild(_ei9m[1064-12])
if not _v17h then return nil end
local _v17i = _v17h:FindFirstChild(_ei9m[100-16])
if not _v17i then return nil end
local _v17j = _v17i:FindFirstChild(_ei9m[366+41])
if _v17j and _v17j.Text ~= "" then return _v17j.Text end
return nil
end
function _v4.autoSpawnGetGender()
local _v17k = _v2.PlayerGui:FindFirstChild(_ei9m[267+816])
if not _v17k then return _ei9m[441] end
local ok, result = pcall(function()
local _v17l = _v17k.LeftFrame.Customizer.Frame.Gender.Frame
local _v17m = _v17l:FindFirstChild(_ei9m[89])
if _v17m then
local _v17n = _v17m:FindFirstChild(_ei9m[1016])
if _v17n and _v17n.Color.G > 0.8 then return _ei9m[193] end
end
return _ei9m[1231-3]
end)
return ok and result or _ei9m[1256-2]
end
function _v4.autoSpawnIsAlive()
local _v17o = _v2.Character
if not _v17o then return false end
local _v17p = _v17o:FindFirstChildOfClass(_ei9m[2+939])
return _v17p and _v17p.Health > bit32.bxor(118932881,118932881)
end
function _v4.startAutoSpawn()
_v4.autoSpawnCleanup()
_v4.AUTO_SPAWN = true
_v4.AUTO_SPAWN_ATTEMPTS = bit32.bxor(1524200544,1524200544)
_v4.AUTO_SPAWN_TARGET = _v4.autoSpawnGetDinoName()
_v4.AUTO_SPAWN_GENDER = _v4.autoSpawnGetGender()
if not _v4.AUTO_SPAWN_TARGET then
pcall(function() _v10f:Notify(_ei9m[5+345], (234-229)) end)
_v4.AUTO_SPAWN = false
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
pcall(function() _v10f:Notify(_ei9m[338-13] .. _v4.AUTO_SPAWN_TARGET .. " (" .. _v4.AUTO_SPAWN_GENDER .. _ei9m[123+593], bit32.bxor(276814064,276814069)) end)
local _v17q = _v4.AUTO_SPAWN_DRAWS
local function _v17r(_v17s)
local _v17t = Drawing.new(_ei9m[186+1078])
_v17t.Visible = true
_v17t.Color = _v17s.Color or Color3.fromRGB((78+177), (171+84), (180+75))
_v17t.Size = _v17s.Size or (542-526)
_v17t.Position = _v17s.Position or Vector2.new((0+0), bit32.bxor(1849287093,1849287093))
_v17t.Text = _v17s.Text or ""
_v17t.Font = bit32.bxor(1888186374,1888186372)
_v17t.Outline = true
_v17t.OutlineColor = Color3.fromRGB((0+0), bit32.bxor(1115898899,1115898899), (0+0))
table.insert(_v17q, _v17t)
return _v17t
end
local function _v17u(_v17v)
local _v17w = Drawing.new(_ei9m[95])
_v17w.Visible = true
_v17w.Color = _v17v.Color or Color3.fromRGB((843-833), (6*1+4), (9+1))
_v17w.Size = _v17v.Size or Vector2.new((2*50+0), (414-314))
_v17w.Position = _v17v.Position or Vector2.new((566-566), bit32.bxor(362419541,362419541))
_v17w.Filled = _v17v.Filled ~= false
_v17w.Transparency = _v17v.Transparency or 0.3
if _v17v.Thickness then _v17w.Thickness = _v17v.Thickness end
table.insert(_v17q, _v17w)
return _v17w
end
local _v17x, _v17y = bit32.bxor(734059987,734059999), (20-8)
_v17u({ Position = Vector2.new(_v17x, _v17y), Size = Vector2.new((6*50+0), (479-369)) })
local _v17z = _v17u({ Position = Vector2.new(_v17x, _v17y), Size = Vector2.new((2*150+0), bit32.bxor(594651184,594651230)), Filled = false, Transparency = (80-79), Color = Color3.fromRGB(bit32.bxor(1630684048,1630684048), (1122-922), (632-552)), Thickness = bit32.bxor(1528922966,1528922964) })
local _v180 = _v17r({ Text = _ei9m[1138-4], Position = Vector2.new(_v17x + (795-789), _v17y + (6*0+4)), Size = bit32.bxor(1694816769,1694816787), Color = Color3.fromRGB((0+0), bit32.bxor(762699357,762699393), (132-52)) })
local _v181 = _v17r({ Text = _ei9m[538-13] .. _v4.AUTO_SPAWN_TARGET .. _ei9m[148+1118], Position = Vector2.new(_v17x + bit32.bxor(567148966,567148960), _v17y + (221-195)), Color = Color3.fromRGB((291-291), (5*51+0), (836-636)) })
local _v182 = _v17r({ Text = _ei9m[1+0], Position = Vector2.new(_v17x + (6*1+0), _v17y + (5*8+4)) })
local _v183 = _v17r({ Text = _ei9m[7+785], Position = Vector2.new(_v17x + (5+1), _v17y + (3*20+2)) })
local _v184 = _v17r({ Text = _ei9m[797], Position = Vector2.new(_v17x + bit32.bxor(1612966367,1612966361), _v17y + (2*40+0)), Color = Color3.fromRGB((175+80), (779-579), bit32.bxor(1002622660,1002622660)) })
local _v185 = game:GetService(_ei9m[3+427])
local _v186 = require(_v185:WaitForChild(_ei9m[674]):WaitForChild(_ei9m[65+40]))
local _v187 = _v186.GetController(_ei9m[1074])
local _v188 = _v186.GetService(_ei9m[3+28])
task.spawn(function()
while _v4.AUTO_SPAWN and not _v4.UNLOADED do
pcall(function()
local _v189 = _v187:GetInfo(_v4.AUTO_SPAWN_TARGET)
if _v189 then
_v182.Text = string.format(_ei9m[650-12],
_v189.UsedTotal or (874-874), _v189.Slots or (398-398),
_v189.UsedZenith or bit32.bxor(607648542,607648542), _v189.ZenithSlots or bit32.bxor(169629069,169629069))
end
end)
task.wait((2+1))
end
end)
task.spawn(function()
while _v4.AUTO_SPAWN and not _v4.UNLOADED do
if _v4.autoSpawnIsAlive() then
_v4.autoSpawnCleanupGUI()
_v184.Text = _ei9m[651-20]
_v184.Color = Color3.fromRGB(bit32.bxor(510623595,510623595), (6*42+3), (0+0))
_v180.Text = _ei9m[1293]
_v180.Color = Color3.fromRGB(bit32.bxor(137952344,137952344), (454-199), (0+0))
_v17z.Color = Color3.fromRGB(bit32.bxor(1800137246,1800137246), (5*51+0), (0+0))
pcall(function() _v10f:Notify(_ei9m[133+488], (207-203)) end)
task.wait(bit32.bxor(1545746405,1545746400))
_v4.autoSpawnCleanup()
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
if not _v2.PlayerGui:FindFirstChild(_ei9m[1075-11]) then
_v184.Text = _ei9m[580-19]
_v184.Color = Color3.fromRGB((126+129), (3*66+2), (0+0))
task.wait(bit32.bxor(884972907,884972906))
continue
end
_v4.AUTO_SPAWN_ATTEMPTS += (989-988)
_v183.Text = _ei9m[5+1118] .. _v4.AUTO_SPAWN_ATTEMPTS
local _v18a, _v18b, _v18c
local _v18d = pcall(function()
_v18a, _v18b, info = _v187:RequestSlot(_v4.AUTO_SPAWN_TARGET)
end)
if not _v18d then
_v184.Text = _ei9m[1032-19]
pcall(function()
_v188:InitiateSpawning({
Species = _v4.AUTO_SPAWN_TARGET,
Gender = _v4.AUTO_SPAWN_GENDER,
Skin = _ei9m[22+1134],
Variant = _ei9m[230],
})
end)
_v4.autoSpawnCleanupGUI()
_v184.Text = _ei9m[14+561]
_v184.Color = Color3.fromRGB((0+0), (2*127+1), bit32.bxor(1881582172,1881582136))
_v180.Text = _ei9m[3+714]
_v180.Color = Color3.fromRGB(bit32.bxor(1239573,1239573), (166+89), bit32.bxor(2008262969,2008262969))
_v17z.Color = Color3.fromRGB((0+0), bit32.bxor(364792964,364792955), (88-88))
task.wait((233-228))
_v4.autoSpawnCleanup()
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
if _v18a then
_v184.Text = _ei9m[827] .. _v4.AUTO_SPAWN_TARGET
_v184.Color = Color3.fromRGB(bit32.bxor(391079311,391079311), bit32.bxor(237579234,237579037), (961-961))
_v180.Color = Color3.fromRGB(bit32.bxor(1113109861,1113109861), (171+84), bit32.bxor(301719581,301719581))
_v17z.Color = Color3.fromRGB((0+0), (1046-791), bit32.bxor(518406652,518406652))
pcall(function()
_v188:InitiateSpawning({
Species = _v4.AUTO_SPAWN_TARGET,
Gender = _v4.AUTO_SPAWN_GENDER,
Skin = _ei9m[490+536],
Variant = _ei9m[6+984],
})
end)
_v4.autoSpawnCleanupGUI()
_v180.Text = _ei9m[236+316]
pcall(function() _v10f:Notify(_ei9m[2+378] .. _v4.AUTO_SPAWN_TARGET .. "!", (876-872)) end)
task.wait((5+0))
_v4.autoSpawnCleanup()
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
if _v18b == _ei9m[96+550] and _v18c then
_v182.Text = string.format(_ei9m[320-3],
_v18c.UsedTotal or bit32.bxor(531334366,531334366), _v18c.Slots or bit32.bxor(1646018535,1646018535),
_v18c.UsedZenith or (0+0), _v18c.ZenithSlots or (0+0))
end
_v184.Text = _ei9m[157+927]
_v184.Color = Color3.fromRGB((25+230), bit32.bxor(260011698,260011746), (920-840))
_v17z.Color = Color3.fromRGB(bit32.bxor(1980219797,1980219741), (2*30+0), (5*12+0))
task.wait(0.5)
end
end)
end
function _v4.unanchorFarmRoot()
local _v18e = _vcl()
if _v18e then pcall(function() _v18e.Anchored = false end) end
end
local _v18f = nil
local _v18g = {}
local function _v18h()
if _v18f then
pcall(function() _v4.VIM:SendKeyEvent(false, _v18f, false, game) end)
_v18f = nil
end
if #_v18g > bit32.bxor(1187475984,1187475984) then
_v4.restorePrompts(_v18g)
_v18g = {}
end
_v4.unanchorFarmRoot()
if _v4.fossilFarmCleanup then _v4.fossilFarmCleanup() end
if not (_v4.NO_FALL_DAMAGE or _v4.FOSSIL_FARM) then _v4.applyFallImmunity(false) end
end
function _v4.groundUnder(_v18i)
local _v18j = RaycastParams.new()
_v18j.FilterType = Enum.RaycastFilterType.Exclude
_v18j.FilterDescendantsInstances = { _v2.Character }
local _v18k = workspace:Raycast(_v18i + Vector3.new((650-650), (15+10), (0+0)), Vector3.new(bit32.bxor(823673414,823673414), -(258+42), (0+0)), _v18j)
return _v18k and _v18k.Position or nil
end
_v4.ffPos = nil
_v4.ffCF = nil
_v4.ffTarget = nil
_v4.ffState = nil
_v4.ffHeldKey = nil
_v4.ffCollectStart = (0+0)
_v4.ffEmptyChecks = (0+0)
do
function _v4.fossilFarmAdvance(_v18l)
if _v4.UNLOADED then return end
if not _v4.FOSSIL_FARM then
if _v4.ffState then
_v4.fossilFarmCleanup()
local _v18m = _v2.Character
if _v18m and not _v4.AFK_FARM then pcall(function() _v18m:SetAttribute(_ei9m[704], nil) end) end
end
return
end
if _v4.SAVE_DINO_ACTIVE then return end
local _v18n = _v4.getLocalPhysicsRoot()
if not _v18n then return end
if _v18n.Anchored and _v4.ffState ~= _ei9m[565-3] then
pcall(function() _v18n.Anchored = false end)
end
_v18l = math.min(_v18l or 0.016, 0.1)
local _v18o = _v2.Character
if _v18o and _v18o:GetAttribute(_ei9m[411-10]) ~= true then
pcall(function() _v18o:SetAttribute(_ei9m[439-16], true) end)
end
local _v18p = math.max(_v4.FOSSIL_FARM_SPEED or (40+10), (15-10))
local _v18q = _v18n.Position
if not _v4.ffPos then _v4.ffPos = _v18q end
if not _v4.ffTarget or not _v4.ffTarget.Parent then
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v18g > bit32.bxor(1578049841,1578049841) then
_v4.restorePrompts(_v18g)
_v18g = {}
end
local _v18r = _v4.nearestFossil(_v18q)
if _v18r then
_v4.ffTarget = _v18r
_v4.ffState = _ei9m[444-19]
_v4.ffEmptyChecks = bit32.bxor(1424484259,1424484259)
local _v18s = _v4.fossilPosOf(_v18r)
if _v18s then
local _v18t = bit32.bxor(425672775,425672772)
pcall(function() half = _v18n.Size.Y * 0.5 end)
_v4.ffDest = _v18s + Vector3.new((0+0), _v18t + 0.5, bit32.bxor(1767703551,1767703551))
else
_v4.ffTarget = nil
_v4.ffState = nil
end
else
_v4.ffEmptyChecks = _v4.ffEmptyChecks + bit32.bxor(2087580328,2087580329)
if _v4.ffEmptyChecks > (396-216) then
_v4.FOSSIL_FARM = false
_v4.fossilFarmCleanup()
if _v4.fossilFarmToggle then pcall(function() _v4.fossilFarmToggle:Set(false) end) end
pcall(function() _v10f:Notify(_ei9m[7+595], (4*2+0)) end)
end
return
end
end
if _v4.ffState == _ei9m[793-11] and _v4.ffDest then
_v4.ffPos = _v4.govNext(_v4.ffPos, _v4.ffDest, _v18l, _v18p)
local _v18u = (_v4.ffDest - _v4.ffPos)
if _v18u.Magnitude < 0.1 then _v18u = Vector3.new(bit32.bxor(1118285293,1118285293), bit32.bxor(2115927505,2115927505), (0+1)) end
_v4.ffCF = CFrame.lookAt(_v4.ffPos, _v4.ffPos + _v18u)
pcall(function()
_v18n.CFrame = _v4.ffCF
_v18n.AssemblyLinearVelocity = Vector3.zero
_v18n.AssemblyAngularVelocity = Vector3.zero
end)
if (_v4.ffPos - _v4.ffDest).Magnitude < (6*1+2) then
_v4.ffState = _ei9m[5+64]
_v4.ffCollectStart = os.clock()
pcall(function() _v18n.Anchored = true end)
local _v18v = _v16i(_v4.ffTarget)
if _v18v then
_v18g = {}
local _v18w = workspace:FindFirstChild(_ei9m[6+950])
if _v18w then
for _v18x, _v18y in ipairs(_v18w:GetChildren()) do
local _v18z = _v16i(_v18y)
if _v18z and _v18z ~= _v18v and _v18z.Enabled then
pcall(function() _v18z.Enabled = false end)
table.insert(_v18g, _v18z)
end
end
end
 do local _wh8v41tf3=#"ciona"+17 end
local _v190 = _v18v.KeyboardKeyCode
if _v190 == nil or _v190 == Enum.KeyCode.Unknown then _v190 = Enum.KeyCode.E end
_v4.ffHeldKey = _v190
_v4.ffHoldDuration = (tonumber(_v18v.HoldDuration) or 2.5) + (116-115)
pcall(function() _v4.VIM:SendKeyEvent(true, _v190, false, game) end)
else
pcall(function() _v18n.Anchored = false end)
_v4.ffTarget = nil
_v4.ffState = nil
end
end
elseif _v4.ffState == _ei9m[6+32] then
if not _v4.ffTarget.Parent then
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v18g > bit32.bxor(294173611,294173611) then
_v4.restorePrompts(_v18g)
_v18g = {}
end
pcall(function() _v18n.Anchored = false end)
_v4.ffTarget = nil
_v4.ffState = nil
return
end
local _v191 = os.clock() - _v4.ffCollectStart
if _v191 > (_v4.ffHoldDuration or (1+3)) then
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
local _v192 = _v4.getLocalPhysicsRoot()
if _v192 and not _v192.Anchored then
pcall(function()
_v192.CFrame = _v4.ffCF
_v192.AssemblyLinearVelocity = Vector3.zero
_v192.AssemblyAngularVelocity = Vector3.zero
end)
end
end
function _v4.fossilFarmCleanup()
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v18g > (0+0) then
_v4.restorePrompts(_v18g)
_v18g = {}
end
_v4.unanchorFarmRoot()
_v4.ffTarget = nil
_v4.ffState = nil
_v4.ffCF = nil
_v4.ffPos = nil
_v4.ffDest = nil
_v4.ffHoldDuration = nil
_v4.ffEmptyChecks = (0+0)
end
function _v4.startFossilFarm()
local _v193 = workspace:FindFirstChild(_ei9m[5+248])
local _v194 = _v193 and #_v193:GetChildren() or bit32.bxor(1542469701,1542469701)
pcall(function() _v10f:Notify((_ei9m[7+122]):format(_v194), (5*1+0)) end)
_v4.ffPos = nil
_v4.ffCF = nil
_v4.ffTarget = nil
_v4.ffState = nil
_v4.ffEmptyChecks = (676-676)
end
table.insert(_vi, _v1.RenderStepped:Connect(_v4.fossilFarmAdvance))
table.insert(_vi, _v1.Heartbeat:Connect(_v4.fossilFarmPin))
end
function _v4.getCC()
if _v4.ccCache then return _v4.ccCache end
pcall(function()
_v4.ccCache = require(_v4.WATER_RS.Packages.Knit).GetController(_ei9m[4+613])
end)
return _v4.ccCache
end
function _v4.khRange()
local _v195
pcall(function() r = _v4.getCC():GetConsumeRange() end)
if type(_v195) ~= _ei9m[53-14] or _v195 <= bit32.bxor(799165249,799165249) then _v195 = bit32.bxor(1186628425,1186628447) end
return _v195
end
function _v4.nearestCorpse(_v196)
local _v197 = _v4.getCC()
if not (_v197 and _v197.CorpseData and _v196) then return nil end
local _v198, _v199, _v19a
for _v19b, _v19c in pairs(_v197.CorpseData) do
local _v19d = _v19c and _v19c.Root
if _v19d and _v19d.Parent and (tonumber(_v19c.Weight) or (704-704)) > bit32.bxor(223970856,223970856) then
local _v19e
pcall(function()
pos = _v19d:IsA(_ei9m[259+17]) and _v19d.Position or _v19d:GetPivot().Position
end)
if _v19e then
local _v19f = (_v19e - _v196).Magnitude
if not _v19a or _v19f < _v19a then _v198, _v199, _v19a = _v19b, _v19d, _v19f end
end
end
end
return _v198, _v199, _v19a
end
function _v4.warpToCorpse(_v19g, _v19h)
local _v19i
pcall(function()
cpos = _v19h:IsA(_ei9m[5+1123]) and _v19h.Position or _v19h:GetPivot().Position
end)
if not _v19i then return false end
local _v19j = bit32.bxor(639132709,639132710)
pcall(function() half = _v19g.Size.Y * 0.5 end)
local _v19k = Vector3.new(_v4.TP_OFFSET or (6*1+2), (530-530), bit32.bxor(2099788699,2099788699))
local _v19l = _v4.groundUnder(_v19i + _v19k) or _v4.groundUnder(_v19i)
local _v19m = _v19l and (_v19l + Vector3.new((331-331), _v19j + 0.5, bit32.bxor(1088905979,1088905979))) or (_v19i + Vector3.new((838-838), (3*1+1), bit32.bxor(1326480487,1326480487)))
local function _v19n(_v19o)
local _v19p = _v2.Character
if _v19p then pcall(function() _v19p:SetAttribute(_ei9m[4+590], nil) end) end
return _v19o
end
local _v19q = _v2.Character
local _v19r = math.max(_v19g.Position.Y, _v19m.Y) + (5*12+0)
for _v19s = bit32.bxor(25347074,25347075), (256-253) do
if _v4.UNLOADED or not _v4.TP_CORPSE then return _v19n(false) end
if _v19q then pcall(function() _v19q:SetAttribute(_ei9m[3+1309], true) end) end
local _v19t = _v19g.Position
_v4.govGlide(_v19g, Vector3.new(_v19t.X, _v19r, _v19t.Z), nil, (8+4), (952-946))
if _v4.UNLOADED or not _v4.TP_CORPSE then return _v19n(false) end
local _v19u = Vector3.new(_v19m.X, _v19r, _v19m.Z)
_v4.govGlide(_v19g, _v19u, nil,
(_v19u - _v19g.Position).Magnitude / math.max(_v4.govCeiling(), (227-226)) * 1.6 + bit32.bxor(1844761095,1844761103), bit32.bxor(463377025,463377031))
if _v4.UNLOADED or not _v4.TP_CORPSE then return _v19n(false) end
_v4.govGlide(_v19g, _v19m, nil, (13+2), (689-685))
task.wait(0.35)
if (_v19g.Position - _v19m).Magnitude < (25+0) then
if _v4.TP_SOLID then
pcall(function() _v19g.Anchored = true end)
task.wait(0.25)
pcall(function()
_v19g.Anchored = false
_v19g.AssemblyLinearVelocity = Vector3.new(bit32.bxor(948693982,948693982), bit32.bxor(1829476302,1829476302), (0+0))
end)
end
return _v19n(true)
end
task.wait(0.5)
end
return _v19n(false)
end
_v4.addStep((6*5+0), function()
if _v4.UNLOADED or not _v4.TP_CORPSE or _v4.tpBusy then return end
if _v4.tpDone and not _v4.TP_CHAIN then return end
local _v19v = _vcl()
if not (_v19v and _v19v.Parent) then return end
local _v19w = _v4.getCC()
if not _v19w then return end
if _v4.tpTargetId then
local _v19x = _v19w.CorpseData and _v19w.CorpseData[_v4.tpTargetId]
if _v19x and (tonumber(_v19x.Weight) or (0+0)) > bit32.bxor(912412984,912412984) then return end
_v4.tpTargetId = nil
if not _v4.TP_CHAIN then _v4.tpDone = true return end
end
local _v19y, _v19z, _v1a0 = _v4.nearestCorpse(_v19v.Position)
if not _v19y then return end
_v4.tpBusy = true
task.spawn(function()
_v4.applyFallImmunity(true)
local _v1a1 = _v4.warpToCorpse(_v19v, _v19z)
_v4.tpTargetId = _v1a1 and _v19y or nil
if _v1a1 and not _v4.TP_CHAIN then _v4.tpDone = true end
pcall(function()
_v10f:Notify(_v1a1
and (_ei9m[672] .. math.floor(_v1a0 or bit32.bxor(700555450,700555450)) .. _ei9m[726])
or _ei9m[747+189], (759-754))
end)
task.delay((1+5), function()
if not (_v4.NO_FALL_DAMAGE or _v4.FOSSIL_FARM or _v4.TP_CORPSE) then
_v4.applyFallImmunity(false)
end
end)
_v4.tpBusy = false
end)
end)
local _v1a2 = _v10f:AddTab({Name = _ei9m[1020]})
local _v1a3 = _v10f:AddTab({Name = _ei9m[952]})
local _v1a4 = _v10f:AddTab({Name = _ei9m[1075-2]})
local _v1a5 = _v10f:AddTab({Name = _ei9m[3+210]})
local _v1a6 = {}
local _v1a7
_v1a7 = _v10j(_v1a2:AddSubTab({Name = _ei9m[3+83]}))
_v4.section(_v1a7, _ei9m[816-9], _ei9m[936-3])
_v4.fossilFarmToggle = _v1a7:AddToggle({
Name = _ei9m[4+616],
Skull = true,
Default = false,
Callback = function(_v1a8)
_v4.FOSSIL_FARM = _v1a8
if _v1a8 then _v4.startFossilFarm() else _v18h() end
end
})
_v4.fossilFarmSpeedSlider = _v1a7:AddSlider({
Name = _ei9m[806+236],
Skull = true,
Min = (493-483), Max = bit32.bxor(2799160,2799114), Default = (3*16+2),
Callback = function(_v1a9) _v4.FOSSIL_FARM_SPEED = _v1a9 end
})
_v1a7 = _v10j(_v1a2:AddSubTab({Name = _ei9m[764+48]}))
_v4.section(_v1a7, _ei9m[7+585], _ei9m[689])
_v4.autoWaterToggle = _v1a7:AddToggle({
Name = _ei9m[5+550],
Default = false,
Callback = function(_v1aa) _v4.AUTO_WATER = _v1aa end
})
_v4.forceEatToggle = _v1a7:AddToggle({
Name = _ei9m[409-9],
Default = false,
Callback = function(_v1ab)
_v4.FORCE_EAT = _v1ab
if _v1ab and _v4.AFK_FARM then
pcall(function() if _v4.Hub then _v4.Hub:Notify(_ei9m[4+78], (447-442)) end end)
end
end
})
_v4.section(_v1a7, _ei9m[480-5], _ei9m[117+549])
 do local _wh8v3b7xy=math.floor(10238*math.pi)+3771 end

_v1a6.fastEat = _v1a7:AddToggle({
Name = _ei9m[1060+234],
Default = true,
Callback = function(_v1ac) _v4.FAST_EAT = _v1ac end
})
_v1a6.eatWhenHungry = _v1a7:AddToggle({
Name = _ei9m[154],
Default = false,
Callback = function(_v1ad) _v4.EAT_WHEN_HUNGRY = _v1ad end
})
_v1a6.leaveScraps = _v1a7:AddToggle({
Name = _ei9m[823-17],
Default = false,
Callback = function(_v1ae) _v4.LEAVE_SCRAPS = _v1ae end
})
_v4.section(_v1a7, _ei9m[791-10], _ei9m[3+1053])
_v4.afkFarmToggle = _v1a7:AddToggle({
Name = _ei9m[7+470],
Skull = true,
Default = false,
Callback = function(_v1af)
_v4.AFK_FARM = _v1af
if _v1af then
if _v4.FLY and _v4.flyToggle then pcall(function() _v4.flyToggle:Set(false) end) end
if _v4.AUTO_FLY and _v4.autoFlyToggle then pcall(function() _v4.autoFlyToggle:Set(false) end) end
local _v1ag = {}
if _v4.FORCE_EAT then _v1ag[#_v1ag + bit32.bxor(1239006751,1239006750)] = _ei9m[582-11] end
if _v4.AFK_FARM_SAFETY and (_v4.AUTO_SAVE or _v4.SAVE_DINO_ACTIVE) then _v1ag[#_v1ag + bit32.bxor(21663722,21663723)] = _ei9m[6+708] end
if _v4.AFK_FARM_SAFETY and _v4.SAVE_DINO_ACTIVE and _v4.releaseDino then pcall(_v4.releaseDino) end
if _v4.AFK_FARM_ADMIN_KICK and _v4.adminKickSweep then _v4.adminKickSweep() end
if #_v1ag > bit32.bxor(710409693,710409693) then
local _v1ah = table.concat(_v1ag, _ei9m[532-15]) .. _ei9m[603-3]
pcall(function() if _v4.Hub then _v4.Hub:Notify(_v1ah, (1+5)) end end)
end
else
_v4.afkStopWalk()
end
end
})
_v1a6.afkFarmSpeed = _v1a7:AddSlider({
Name = _ei9m[5+5],
Min = bit32.bxor(543617867,543617857), Max = bit32.bxor(514052954,514052968), Default = (946-896),
Callback = function(_v1ai) _v4.AFK_FARM_SPEED = _v1ai end
})
_v1a6.afkFarmAvoid = _v1a7:AddSlider({
Name = _ei9m[811],
Min = bit32.bxor(1954625743,1954625743), Max = (1471-471), Default = bit32.bxor(1295976976,1295977176),
Callback = function(_v1aj) _v4.AFK_FARM_AVOID = _v1aj end
})
_v1a6.afkFarmWalk = _v1a7:AddToggle({
Name = _ei9m[382],
Default = true,
Callback = function(_v1ak) _v4.AFK_FARM_WALK = _v1ak end
})
_v1a6.afkFarmMeat = _v1a7:AddToggle({
Name = _ei9m[4+887],
Default = false,
Callback = function(_v1al) _v4.AFK_FARM_MEAT = _v1al end
})
_v1a6.afkFarmSafety = _v1a7:AddToggle({
Name = _ei9m[572+750],
Default = true,
Callback = function(_v1am)
_v4.AFK_FARM_SAFETY = _v1am
if _v1am and _v4.AFK_FARM and _v4.SAVE_DINO_ACTIVE and _v4.releaseDino then pcall(_v4.releaseDino) end
end
})
_v1a6.afkFarmAdminKick = _v1a7:AddToggle({
Name = _ei9m[24+4],
Default = true,
Callback = function(_v1an)
_v4.AFK_FARM_ADMIN_KICK = _v1an
if _v1an and _v4.AFK_FARM and _v4.adminKickSweep then _v4.adminKickSweep() end
end
})
_v4.antiAfkToggle = _v1a7:AddToggle({
Name = _ei9m[13+77],
Default = false,
Callback = function(_v1ao) _v4.ANTI_AFK = _v1ao end
})
_v4.section(_v1a7, _ei9m[1097], _ei9m[574])
_v4.autoCleanToggle = _v1a7:AddToggle({
Name = _ei9m[966+132],
Default = false,
Callback = function(_v1ap) _v4.AUTO_CLEAN = _v1ap end
})
_v1a6.infOxygen = _v1a7:AddToggle({
Name = _ei9m[160],
Default = false,
Callback = function(_v1aq) _v4.INF_OXYGEN = _v1aq end
})
_v4.section(_v1a7, _ei9m[1078-7], _ei9m[143+146])
_v1a6.freezeFood = _v1a7:AddToggle({
Name = _ei9m[3+873],
Default = false,
Callback = function(_v1ar) _v4.FREEZE_FOOD = _v1ar end
})
_v1a6.freezeWater = _v1a7:AddToggle({
Name = _ei9m[9+258],
Default = false,
Callback = function(_v1as) _v4.FREEZE_WATER = _v1as end
})
_v1a7 = _v10j(_v1a2:AddSubTab({Name = _ei9m[4+1268]}))
_v4.section(_v1a7, _ei9m[680-19], _ei9m[3+865])
_v4.autoSpawnToggle = _v1a7:AddToggle({
Name = _ei9m[663],
Default = false,
Callback = function(_v1at)
if _v1at then
_v4.startAutoSpawn()
else
_v4.autoSpawnCleanup()
end
end
})
function _v4.markScaled(_v1au, _v1av, _v1aw)
local _v1ax = (tonumber(_v1aw) or bit32.bxor(287038462,287038463)) >= (0+5)
for _v1ay, _v1az in ipairs({ _v1au, _v1av }) do
if _v1az and _v1az.SetSkull then pcall(function() _v1az:SetSkull(_v1ax) end) end
end
end
_v1a7 = _v10j(_v1a3:AddSubTab({Name = _ei9m[1166]}))
_v4.section(_v1a7, _ei9m[3+957], _ei9m[40+769])
_v4.hitboxToggle = _v1a7:AddToggle({
Name = _ei9m[453+597],
Default = false,
Callback = function(_v1b0)
_v4.HITBOX_EXPANDER = _v1b0
if not _v1b0 then _v4.resetAllHitboxes() end
end
})
_v1a6.hitboxVis = _v1a7:AddToggle({
Name = _ei9m[1034],
Default = false,
Callback = function(_v1b1)
_v4.HITBOX_VISUALIZE = _v1b1
if not _v1b1 then
for _v1b2, _v1b3 in _v0:GetPlayers() do
if _v1b3 ~= _v2 then
_v4.visualizePlayerHitbox(_v1b3, false)
_v4.hbShown[_v1b3] = nil
end
end
end
end
})
_v1a6.hitboxVisOpacity = _v1a7:AddSlider({
Name = _ei9m[6+809],
Min = bit32.bxor(1601357341,1601357341), Max = (1058-958), Default = bit32.bxor(64416745,64416731),
Callback = function(_v1b4) _v4.HITBOX_VIS_TRANSPARENCY = bit32.bxor(183038271,183038270) - (_v1b4 / (469-369)) end
})
_v1a6.hitboxMult = _v1a7:AddSlider({
Name = _ei9m[953],
Min = (1+0), Max = (6*1+4), Default = bit32.bxor(703189080,703189081),
Callback = function(_v1b5) _v4.HITBOX_MULTIPLIER = _v1b5; _v4.markScaled(_v4.hitboxToggle, _v1a6.hitboxMult, _v1b5) end
})
_v4.section(_v1a7, _ei9m[830], _ei9m[888+332])
_v1a6.hitboxGroups = _v4.groupDropdown(_v1a7, _ei9m[703-7], _v4.HITBOX_GROUPS, _v4.PART_GROUP_ORDER)
_v1a7 = _v10j(_v1a3:AddSubTab({Name = _ei9m[629-6]}))
_v4.section(_v1a7, _ei9m[159+907], _ei9m[7+723])
_v1a6.reach = _v1a7:AddToggle({
Name = _ei9m[6+474],
Default = false,
Callback = function(_v1b6)
_v4.REACH_ENABLED = _v1b6
if not _v1b6 and not _v4.REACH_VISUALIZE then _v4.resetLocalReach() end
end
})
_v1a6.reachVis = _v1a7:AddToggle({
Name = _ei9m[1216-10],
Default = false,
Callback = function(_v1b7)
_v4.REACH_VISUALIZE = _v1b7
if not _v1b7 and not _v4.REACH_ENABLED then _v4.resetLocalReach() end
end
})
_v1a6.reachVisOpacity = _v1a7:AddSlider({
Name = _ei9m[1200-7],
Min = (940-940), Max = bit32.bxor(1705852382,1705852346), Default = bit32.bxor(1583884725,1583884679),
Callback = function(_v1b8) _v4.REACH_VIS_TRANSPARENCY = bit32.bxor(1079247845,1079247844) - (_v1b8 / (901-801)) end
})
_v1a6.reachMult = _v1a7:AddSlider({
Name = _ei9m[400+27],
Min = bit32.bxor(1049336449,1049336448), Max = bit32.bxor(1646553166,1646553156), Default = bit32.bxor(1713105270,1713105271),
Callback = function(_v1b9) _v4.REACH_MULTIPLIER = _v1b9; _v4.markScaled(_v1a6.reach, _v1a6.reachMult, _v1b9) end
})
_v1a6.reachGroups = _v4.groupDropdown(_v1a7, _ei9m[5+95], _v4.REACH_GROUPS, _v4.REACH_GROUP_ORDER,
_v4.resetLocalReach)
_v1a7 = _v10j(_v1a3:AddSubTab({Name = _ei9m[6+838]}))
_v4.section(_v1a7, _ei9m[7+1054], _ei9m[5+736])
_v1a6.noAtkCd = _v1a7:AddToggle({
Name = _ei9m[128+61],
Skull = true,
Default = false,
Callback = function(_v1ba)
_v4.NO_ATK_CD = _v1ba
if not _v1ba then _v4.restoreAttackSpeed() end
end
})
_v1a6.attackSpeed = _v1a7:AddSlider({
Name = _ei9m[243+78],
Min = bit32.bxor(991292841,991292840), Max = (274-264), Default = bit32.bxor(1282666613,1282666614),
Callback = function(_v1bb) _v4.ATTACK_SPEED = _v1bb end
})
_v1a6.noAtkCooldown = _v1a7:AddToggle({
Name = _ei9m[6+515],
Skull = true,
Default = false,
Callback = function(_v1bc) _v4.NO_ATK_COOLDOWN = _v1bc end
})
_v4.section(_v1a7, _ei9m[401+621], _ei9m[306+924])
_v1a6.silentAim = _v1a7:AddToggle({
Name = _ei9m[34+456],
Default = false,
Callback = function(_v1bd)
_v4.SILENT_AIM = _v1bd
if not _v1bd then _v4.resetAllHitboxes() end
end
})
_v1a6.silentGroups = _v4.groupDropdown(_v1a7, _ei9m[526-12], _v4.SILENT_GROUPS, _v4.PART_GROUP_ORDER)
_v1a7 = _v10j(_v1a4:AddSubTab({Name = _ei9m[1325-10]}))
_v4.section(_v1a7, _ei9m[1290-8], _ei9m[68+39])
_v10t = _v1a7:AddToggle({
Name = _ei9m[299+942],
Skull = true,
Default = false,
Callback = function(_v1be)
if _v1be and not _v4.SAVE_DINO_ACTIVE then _v11a()
elseif not _v1be and _v4.SAVE_DINO_ACTIVE then _v4.releaseDino() end
end
})
_v1a7:AddDropdown({
Name = _ei9m[427+24],
Skull = true,
Items = { _ei9m[474+129], "Up" },
Default = _ei9m[1197-12],
Callback = function(_v1bf) _v4.SAVE_DIR = _v1bf end
})
_v4.autoSaveToggle = _v1a7:AddToggle({
Name = _ei9m[279+113],
Default = false,
Keybind = true,
Callback = function(_v1bg)
_v4.AUTO_SAVE = _v1bg
if _v1bg and _v4.AFK_FARM and _v4.AFK_FARM_SAFETY then
pcall(function() if _v4.Hub then _v4.Hub:Notify(_ei9m[550+775], (4*1+1)) end end)
end
end
})
_v4.autoSaveBleedToggle = _v1a7:AddToggle({
Name = _ei9m[3+292],
Default = false,
Callback = function(_v1bh) _v4.AUTO_SAVE_BLEED = _v1bh end
})
_v4.autoSaveSlider = _v1a7:AddSlider({
Name = _ei9m[581-9],
Min = bit32.bxor(729222543,729222542), Max = (480-385), Default = (13+17),
Callback = function(_v1bi) _v4.AUTO_SAVE_PCT = _v1bi end
})
_v4.section(_v1a7, _ei9m[1224], _ei9m[1232])
_v4.noFallToggle = _v1a7:AddToggle({
Name = _ei9m[6+373],
Default = false,
Callback = function(_v1bj) _v4.NO_FALL_DAMAGE = _v1bj; _v4.applyFallImmunity(_v1bj) end
})
_v1a7 = _v10j(_v1a4:AddSubTab({Name = _ei9m[482+379]}))
_v4.section(_v1a7, _ei9m[538-11], _ei9m[694-1])
_v4.flyToggle = _v1a7:AddToggle({
Name = _ei9m[403-13],
Skull = true,
Default = false,
Callback = function(_v1bk) _v4.FLY = _v1bk end
})
_v4.flySpeedSlider = _v1a7:AddSlider({
Name = _ei9m[17+151],
Skull = true,
Min = (127-117), Max = (96+4), Default = (4*12+2),
Callback = function(_v1bl) _v4.FLY_SPEED = _v1bl end
})
_v4.section(_v1a7, _ei9m[665-13], _ei9m[2+234])
_v13b = _v1a7:AddKeybind({
Name = _ei9m[513],
Default = Enum.KeyCode.Unknown,
Callback = function() end
})
_v4.section(_v1a7, _ei9m[3+557], _ei9m[886])
_v1a6.quickTurn = _v1a7:AddToggle({
Name = _ei9m[98+514],
Default = false,
Keybind = true,
Callback = function(_v1bm) _v4.QUICK_TURN = _v1bm end
})
_v1a6.turnSpeed = _v1a7:AddSlider({
Name = _ei9m[493+184],
Min = bit32.bxor(10362345,10362345), Max = bit32.bxor(750321051,750320751), Default = bit32.bxor(1477278110,1477278052),
Callback = function(_v1bn) _v4.TURN_SPEED = _v1bn end
})
_v4.section(_v1a7, _ei9m[599], _ei9m[608+634])
_v4.autoGrowToggle = _v1a7:AddToggle({
Name = _ei9m[4+480],
Default = false,
Callback = function(_v1bo)
if _v1bo and not _v4.AUTO_GROW then
_v4.AUTO_GROW = true
autoGrowThread = nil
_v4.startAutoGrow()
elseif not _v1bo and _v4.AUTO_GROW then
_v4.stopAutoGrow()
end
_v4.AUTO_GROW = _v1bo
end
})
_v1a7 = _v10j(_v1a5:AddSubTab({Name = _ei9m[703-9]}))
_v4.section(_v1a7, _ei9m[153], _ei9m[4+377])
_v4.espToggle = _v1a7:AddToggle({
Name = _ei9m[1091-2],
Default = false,
Callback = function(_v1bp)
_v4.ESP_ENABLED = _v1bp
if not _v1bp then
for _v1bq, _v1br in pairs(_v4.espCache) do
if _v1br.billboard then _v1br.billboard.Enabled = false end
end
end
end
})
_v1a6.showName = _v1a7:AddToggle({ Name = _ei9m[501-16], Default = true, Callback = function(_v1bs) _v4.SHOW_NAME = _v1bs end })
_v1a6.showDino = _v1a7:AddToggle({ Name = _ei9m[189+973], Default = true, Callback = function(_v1bt) _v4.SHOW_DINO = _v1bt end })
_v1a6.showStage = _v1a7:AddToggle({ Name = _ei9m[5+1019], Default = true, Callback = function(_v1bu) _v4.SHOW_STAGE = _v1bu end })
_v1a6.showGender = _v1a7:AddToggle({ Name = _ei9m[727], Default = true, Callback = function(_v1bv) _v4.SHOW_GENDER = _v1bv end })
_v1a6.showHealth = _v1a7:AddToggle({ Name = _ei9m[354-17], Default = true, Callback = function(_v1bw) _v4.SHOW_HEALTH = _v1bw end })
_v1a6.showStamina = _v1a7:AddToggle({ Name = _ei9m[1189], Default = true, Callback = function(_v1bx) _v4.SHOW_STAMINA = _v1bx end })
_v1a6.foodBar = _v1a7:AddToggle({ Name = _ei9m[498], Default = false, Callback = function(_v1by) _v4.SHOW_FOOD_BAR = _v1by end })
_v1a6.foodNum = _v1a7:AddToggle({ Name = _ei9m[965], Default = false, Callback = function(_v1bz) _v4.SHOW_FOOD_NUM = _v1bz end })
_v1a6.waterBar = _v1a7:AddToggle({ Name = _ei9m[24+231], Default = false, Callback = function(_v1c0) _v4.SHOW_WATER_BAR = _v1c0 end })
_v1a6.waterNum = _v1a7:AddToggle({ Name = _ei9m[270+654], Default = false, Callback = function(_v1c1) _v4.SHOW_WATER_NUM = _v1c1 end })
_v1a6.infectBar = _v1a7:AddToggle({ Name = _ei9m[253+725], Default = false, Callback = function(_v1c2) _v4.SHOW_INFECT_BAR = _v1c2 end })
_v1a6.infectNum = _v1a7:AddToggle({ Name = _ei9m[81], Default = false, Callback = function(_v1c3) _v4.SHOW_INFECT_NUM = _v1c3 end })
_v1a6.showWeight = _v1a7:AddToggle({ Name = _ei9m[900], Default = true, Callback = function(_v1c4) _v4.SHOW_WEIGHT = _v1c4 end })
_v1a6.bleed = _v1a7:AddToggle({ Name = _ei9m[936-2], Default = false, Callback = function(_v1c5) _v4.BLEED_ESP = _v1c5 end })
_v1a6.packESP = _v1a7:AddToggle({ Name = _ei9m[2+877], Default = false, Callback = function(_v1c6) _v4.PACK_ESP = _v1c6 end })
_v1a6.packLeader = _v1a7:AddToggle({ Name = _ei9m[283+25], Default = false, Callback = function(_v1c7) _v4.PACK_LEADER_ESP = _v1c7 end })
_v1a6.showDist = _v1a7:AddToggle({ Name = _ei9m[1336], Default = true, Callback = function(_v1c8) _v4.SHOW_DISTANCE = _v1c8 end })
_v1a6.textHL = _v1a7:AddToggle({ Name = _ei9m[7+188], Default = false, Callback = function(_v1c9) _v4.TEXT_HIGHLIGHT = _v1c9 end })
_v4.section(_v1a7, _ei9m[2+424], _ei9m[343])
_v1a6.textSize = _v1a7:AddSlider({ Name = _ei9m[9], Min = bit32.bxor(1349904003,1349904011), Max = bit32.bxor(1425882920,1425882932), Default = (603-589), Callback = function(_v1ca) _v4.TEXT_SIZE = _v1ca end })
_v1a6.hbHeight = _v1a7:AddSlider({ Name = _ei9m[428+25], Min = (293-291), Max = (508-488), Default = bit32.bxor(2045082722,2045082724), Callback = function(_v1cb) _v4.HEALTH_BAR_HEIGHT = _v1cb end })
_v1a6.hbWidth = _v1a7:AddSlider({ Name = _ei9m[982-15], Min = (6+14), Max = (925-825), Default = bit32.bxor(28735077,28735029), Callback = function(_v1cc) _v4.HEALTH_BAR_WIDTH = _v1cc / (4*25+0) end })
_v1a6.sbHeight = _v1a7:AddSlider({ Name = _ei9m[312], Min = (4*0+2), Max = bit32.bxor(538517507,538517527), Default = bit32.bxor(382332475,382332477), Callback = function(_v1cd) _v4.STAM_BAR_HEIGHT = _v1cd end })
_v1a6.sbWidth = _v1a7:AddSlider({ Name = _ei9m[538-7], Min = (4*5+0), Max = (524-424), Default = (388-308), Callback = function(_v1ce) _v4.STAM_BAR_WIDTH = _v1ce / bit32.bxor(408333362,408333398) end })
_v4.section(_v1a7, _ei9m[70-13], _ei9m[833-11])
_v1a6.espDist = _v1a7:AddSlider({ Name = _ei9m[2+343], Min = (895-795), Max = (1839+8161), Default = (2*2500+0), Callback = function(_v1cf) _v4.ESP_DISTANCE = _v1cf end })
_v4.section(_v1a7, _ei9m[270-12], _ei9m[367-18])
_v1a6.chams = _v1a7:AddToggle({
Name = _ei9m[359],
Default = false,
Callback = function(_v1cg)
_v4.CHAMS_ENABLED = _v1cg
if not _v1cg then
for _v1ch, _v1ci in pairs(_v4.espCache) do
if _v1ci.highlight then _v1ci.highlight.Enabled = false end
end
end
end
})
_v1a6.chamsFill = _v1a7:AddSlider({ Name = _ei9m[101+883], Min = (401-401), Max = (7+93), Default = (52+18), Callback = function(_v1cj) _v4.CHAMS_FILL_TRANSPARENCY = _v1cj / bit32.bxor(2080402733,2080402761) end })
_v1a6.chamsOutline = _v1a7:AddSlider({ Name = _ei9m[1196-1], Min = (0+0), Max = bit32.bxor(2046673889,2046673797), Default = bit32.bxor(2011331338,2011331338), Callback = function(_v1ck) _v4.CHAMS_OUTLINE_TRANSPARENCY = _v1ck / bit32.bxor(1789988038,1789988002) end })
_v4.section(_v1a7, _ei9m[7+95], _ei9m[239])
_v1a6.fishESP = _v1a7:AddToggle({
Name = _ei9m[3+851],
Default = false,
Callback = function(_v1cl) _v4.FISH_ESP = _v1cl end,
})
_v4.section(_v1a7, _ei9m[640+0], _ei9m[1162+65])
_v1a6.corpse = _v1a7:AddToggle({
Name = _ei9m[186],
Default = false,
Callback = function(_v1cm) _v4.CORPSE_ESP = _v1cm; _v6l() end
})
_v1a6.worldTextSize = _v1a7:AddSlider({
Name = _ei9m[6+1303],
Min = (888-880), Max = (19+13), Default = bit32.bxor(728037946,728037942),
Callback = function(_v1cn) _v4.WORLD_TEXT_SIZE = _v1cn end
})
_v1a6.corpseDist = _v1a7:AddSlider({
Name = _ei9m[7+517],
Min = bit32.bxor(1507012349,1507012249), Max = (2858+7142), Default = (6*833+2),
Callback = function(_v1co) _v4.CORPSE_DISTANCE = _v1co; if _v4.CORPSE_ESP then _v6l() end end
})
_v4.section(_v1a7, _ei9m[140], _ei9m[4+1271])
_v1a6.meat = _v1a7:AddToggle({
Name = _ei9m[29+14],
Default = false,
Callback = function(_v1cp) _v4.MEAT_ESP = _v1cp; _v6l() end
})
_v1a6.meatDist = _v1a7:AddSlider({
Name = _ei9m[1134-15],
Min = bit32.bxor(172577664,172577764), Max = (10926-926), Default = (3707+1293),
Callback = function(_v1cq) _v4.MEAT_DISTANCE = _v1cq; if _v4.MEAT_ESP then _v6l() end end
})
_v1a7 = _v10j(_v1a5:AddSubTab({Name = _ei9m[1158-13]}))
_v4.section(_v1a7, _ei9m[546+697], _ei9m[145-2])
_v1a6.antiBS = _v1a7:AddToggle({
Name = _ei9m[584],
Default = false,
Callback = function(_v1cr) _v4.ANTI_BLACKSCREEN = _v1cr end
})
_v1a6.noBlur = _v1a7:AddToggle({
Name = _ei9m[597],
Default = false,
Callback = function(_v1cs)
_v4.NO_BLUR = _v1cs
if _v1cs then _v4.sweepBlur() else _v4.restoreBlur() end
end
})
_v1a6.showModules = _v1a7:AddToggle({
Name = _ei9m[566-13],
Default = true,
Callback = function(_v1ct) _v4.SHOW_INDICATORS = _v1ct end
})
_v4.section(_v1a7, _ei9m[1267], _ei9m[657-7])
_v1a6.statsCard = _v1a7:AddToggle({ Name = _ei9m[6+53], Default = false, Callback = function(_v1cu) _v4.STATS_CARD = _v1cu end })
_v1a6.scGrowth = _v1a7:AddToggle({ Name = _ei9m[1163], Default = true, Callback = function(_v1cv) _v4.SC_GROWTH = _v1cv end })
_v1a6.scMass = _v1a7:AddToggle({ Name = _ei9m[253-18], Default = true, Callback = function(_v1cw) _v4.SC_MASS = _v1cw end })
_v1a6.scWeight = _v1a7:AddToggle({ Name = _ei9m[162], Default = true, Callback = function(_v1cx) _v4.SC_WEIGHT = _v1cx end })
_v1a6.scTimer = _v1a7:AddToggle({ Name = _ei9m[630], Default = true, Callback = function(_v1cy) _v4.SC_TIMER = _v1cy end })
_v1a6.scNutrition = _v1a7:AddToggle({ Name = _ei9m[41], Default = true, Callback = function(_v1cz) _v4.SC_NUTRITION = _v1cz end })
_v1a6.scWellbeing = _v1a7:AddToggle({ Name = _ei9m[370+32], Default = true, Callback = function(_v1d0) _v4.SC_WELLBEING = _v1d0 end })
_v1a6.scHideMenu = _v1a7:AddToggle({ Name = _ei9m[76+242], Default = true, Callback = function(_v1d1) _v4.SC_HIDE_WITH_MENU = _v1d1 end })
_v1a6.scDrag = _v1a7:AddToggle({
Name = _ei9m[88-10],
Default = false,
Callback = function(_v1d2) _v4.SC_DRAG = _v1d2 end
})
_v1a7:AddButton({
Name = _ei9m[500+652],
Callback = function()
if _v4.setStatsCardPos then _v4.setStatsCardPos(0.62, bit32.bxor(1046698412,1046698412), (0+0), (722-706)) end
pcall(function() _v10f:Notify(_ei9m[51+29]) end)
end
})
_v4.section(_v1a7, _ei9m[3+867], _ei9m[381+407])
do
local _v1d3 = (_v4.skinsForCurrentDino and (_v4.skinsForCurrentDino())) or { _ei9m[749+547] }
_v4.skinDropdown = _v1a7:AddDropdown({
Name = _ei9m[2+927],
Items = _v1d3,
Default = _ei9m[274-11],
Callback = function(_v1d4)
if type(_v1d4) ~= _ei9m[493+293] then return end
_v4.SKIN_SELECTED = _v1d4
if _v4.applySkin then pcall(_v4.applySkin, _v1d4) end
end,
})
end
_v4.section(_v1a7, _ei9m[187], _ei9m[3+613])
 do local _wh8v299eg=math.floor(50584*math.pi)+79442 end
_v1a6.tracers = _v1a7:AddToggle({
Name = _ei9m[964-6],
Default = false,
Callback = function(_v1d5)
_v4.TRACERS_ENABLED = _v1d5
if not _v1d5 then
for _v1d6, _v1d7 in pairs(_v4.espCache) do
if _v1d7.tracer then
pcall(function() _v1d7.tracer.Visible = false end)
end
end
end
end
})
_v4.section(_v1a7, _ei9m[1299], _ei9m[161])
_v1a6.unlimitedZoom = _v1a7:AddToggle({
Name = _ei9m[3+633],
Default = false,
Callback = function(_v1d8)
_v4.UNLIMITED_ZOOM = _v1d8
if _v1d8 then _v4.bindZoom() else _v4.restoreZoom() end
end
})
_v1a6.fovToggle = _v1a7:AddToggle({
Name = _ei9m[7+1319],
Default = false,
Callback = function(_v1d9)
_v4.FOV_ENABLED = _v1d9
if _v1d9 then _v4.bindFOV() else _v4.restoreFOV() end
end
})
_v1a6.fovSlider = _v1a7:AddSlider({
Name = _ei9m[996+2],
Min = bit32.bxor(1455771425,1455771424), Max = (514-394), Default = (176-106),
Callback = function(_v1da) _v4.FOV_VALUE = _v1da end
})
_v1a7 = _v10j(_v1a5:AddSubTab({Name = _ei9m[1327-10]}))
_v4.section(_v1a7, _ei9m[142], _ei9m[24])
_v1a6.fullbright = _v1a7:AddToggle({
Name = _ei9m[791],
Default = false,
Callback = function(_v1db)
_v4.FULLBRIGHT = _v1db
if _v1db then _v4.enableFullbright() else _v4.restoreFullbright() end
end
})
_v4.section(_v1a7, _ei9m[315+575], _ei9m[2+632])
_v1a6.noFog = _v1a7:AddToggle({
Name = _ei9m[643],
Default = false,
Callback = function(_v1dc)
_v4.NO_FOG = _v1dc
if _v1dc then _v4.enableNoFog() else _v4.restoreNoFog() end
end
})
_v4.section(_v1a7, _ei9m[58], _ei9m[857+269])
_v1a6.customTime = _v1a7:AddToggle({
Name = _ei9m[1144-11],
Default = false,
Callback = function(_v1dd) _v4.setCustomTime(_v1dd) end
})
_v1a6.timeHour = _v1a7:AddSlider({
Name = _ei9m[20+304],
Min = bit32.bxor(1263255832,1263255832), Max = (3*8+0), Default = (2+10),
Callback = function(_v1de) _v4.customTimeHour = _v1de; _v4.refreshCustomTime() end
})
_v1a7:AddDropdown({
Name = _ei9m[362+779],
Items = { _ei9m[397+217], _ei9m[60+887], _ei9m[571-7], _ei9m[5+1036] },
Default = _ei9m[9+9],
Callback = function(_v1df)
local _v1dg = ({ Sunrise = (4*1+2), Day = bit32.bxor(913031369,913031364), Sunset = (823-805), Night = bit32.bxor(288186547,288186547) })[_v1df] or (5+7)
_v4.customTimeHour = _v1dg
pcall(function() if _v1a6.timeHour and _v1a6.timeHour.Set then _v1a6.timeHour:Set(_v1dg) end end)
pcall(function() if _v1a6.customTime and _v1a6.customTime.Set then _v1a6.customTime:Set(true) end end)
_v4.setCustomTime(true)
_v4.refreshCustomTime()
end
})
_v4.section(_v1a7, _ei9m[414], _ei9m[545])
_v1a6.fossilS = _v1a7:AddToggle({ Name = _ei9m[65+1123], Default = false, Callback = function(_v1dh) _v4.FOSSIL_SMALL = _v1dh; _v6l() end })
_v1a6.fossilDistS = _v1a7:AddSlider({ Name = _ei9m[1168], Min = bit32.bxor(1035269529,1035269629), Max = (3*3333+1), Default = (1851-351), Callback = function(_v1di) _v4.FOSSIL_DIST_SMALL = _v1di; _v6l() end })
_v1a6.fossilM = _v1a7:AddToggle({ Name = _ei9m[234], Default = false, Callback = function(_v1dj) _v4.FOSSIL_MEDIUM = _v1dj; _v6l() end })
_v1a6.fossilDistM = _v1a7:AddSlider({ Name = _ei9m[429-8], Min = (899-799), Max = bit32.bxor(272408020,272415428), Default = bit32.bxor(1051097238,1051095854), Callback = function(_v1dk) _v4.FOSSIL_DIST_MEDIUM = _v1dk; _v6l() end })
_v1a6.fossilL = _v1a7:AddToggle({ Name = _ei9m[33-17], Default = false, Callback = function(_v1dl) _v4.FOSSIL_LARGE = _v1dl; _v6l() end })
_v1a6.fossilDistL = _v1a7:AddSlider({ Name = _ei9m[98+33], Min = (5*20+0), Max = (2*5000+0), Default = (5824-824), Callback = function(_v1dm) _v4.FOSSIL_DIST_LARGE = _v1dm; _v6l() end })
_v4.section(_v1a7, _ei9m[66-20], _ei9m[987-4])
_v1a6.vegESP = _v1a7:AddToggle({
Name = _ei9m[79+389],
Default = false,
Callback = function(_v1dn)
_v4.VEG_ESP = _v1dn
if not _v1dn then _v4.vegHideAll() end
end
})
_v1a6.vegDietOnly = _v1a7:AddToggle({
Name = _ei9m[6+303],
Default = false,
Callback = function(_v1do) _v4.VEG_DIET_ONLY = _v1do end
})
_v1a6.vegHideEaten = _v1a7:AddToggle({
Name = _ei9m[1148-9],
Default = false,
Callback = function(_v1dp) _v4.VEG_HIDE_EATEN = _v1dp end
})
_v1a6.vegDist = _v1a7:AddSlider({
Name = _ei9m[583],
Min = (6*16+4), Max = bit32.bxor(908695240,908690752), Default = (2253-753),
Callback = function(_v1dq) _v4.VEG_DISTANCE = _v1dq end
})
_v1a6.vegMax = _v1a7:AddSlider({
Name = _ei9m[743+246],
Min = bit32.bxor(1376403292,1376403286), Max = (464-344), Default = (462-422),
Callback = function(_v1dr)
if _v1dr < _v4.VEG_MAX then
for _v1ds = _v1dr + bit32.bxor(1203582629,1203582628), _v4.VEG_MAX do
local _v1dt = _v4.vegPool[_v1ds]
if _v1dt then pcall(function() _v1dt.bb.Enabled = false; _v1dt.bb.Adornee = nil end) end
end
end
_v4.VEG_MAX = _v1dr
end
})
_v4.section(_v1a7, _ei9m[4+48], _ei9m[121+193])
_v1a6.clay = _v1a7:AddToggle({ Name = _ei9m[779-20], Default = false, Callback = function(_v1du) _v4.CLAY_ESP = _v1du; _v6l() end })
_v1a6.clayDist = _v1a7:AddSlider({ Name = _ei9m[829-4], Min = (509-409), Max = (10783-783), Default = (1517+3483), Callback = function(_v1dv) _v4.CLAY_DISTANCE = _v1dv; if _v4.CLAY_ESP then _v6l() end end })
_v4.section(_v1a7, _ei9m[243+339], _ei9m[2+180])
_v1a6.mmap = _v1a7:AddToggle({
Name = _ei9m[495-3],
Default = false,
Callback = function(_v1dw) _v4.MMAP_ON = _v1dw end
})
_v1a6.mmapPlayers = _v1a7:AddToggle({
Name = _ei9m[5+877],
Default = true,
Callback = function(_v1dx) _v4.MMAP_PLAYERS = _v1dx; if not _v1dx then _v4.mmapCollect() end end
})
_v1a6.mmapCorpses = _v1a7:AddToggle({
Name = _ei9m[3+840],
Default = true,
Callback = function(_v1dy) _v4.MMAP_CORPSES = _v1dy; if not _v1dy then _v4.mmapCollect() end end
})
_v1a6.mmapFossils = _v1a7:AddToggle({
Name = _ei9m[2+1102],
Default = true,
Callback = function(_v1dz) _v4.MMAP_FOSSILS = _v1dz; if not _v1dz then _v4.mmapCollect() end end
})
_v1a7 = _v10j(_v1a5:AddSubTab({Name = _ei9m[293-19]}))
_v4.section(_v1a7, _ei9m[492+677], _ei9m[6+188])
_v1a6.modCheck = _v1a7:AddToggle({
Name = _ei9m[344+351],
Default = false,
Callback = function(_v1e0) _v4.MOD_CHECK = _v1e0; _v4.modCheckRefresh() end
})
_v1a6.modKick = _v1a7:AddToggle({
Name = _ei9m[173+249],
Default = false,
Callback = function(_v1e1) _v4.MOD_KICK = _v1e1 end
})
do
_v4.modAdmins = setmetatable({}, { __mode = "k" })
_v4.modGroupId = nil
_v4.modAlertGui = nil
_v4.modAlertFrame = nil
_v4.modAlertLabels = {}
local function _v1e2()
if _v4.modGroupId then return _v4.modGroupId end
local _v1e3, _v1e4 = pcall(function() return game.CreatorType end)
if _v1e3 and _v1e4 == Enum.CreatorType.Group then
_v4.modGroupId = game.CreatorId
else
_v4.modGroupId = game.CreatorId
end
return _v4.modGroupId
end
local function _v1e5(_v1e6)
local _v1e7 = _v1e2()
if not _v1e7 or _v1e7 == (0+0) then return false end
local _v1e8, _v1e9 = pcall(function() return _v1e6:GetRoleInGroup(_v1e7) end)
if not _v1e8 or type(_v1e9) ~= _ei9m[112] then return false end
local _v1ea = string.lower(_v1e9)
for _v1eb, _v1ec in ipairs(_v4.MOD_ADMIN_KEYWORDS) do
if string.find(_v1ea, _v1ec, (1+0), true) then
return true, _v1e9
end
end
return false
end
local function _v1ed()
if _v4.modAlertGui and _v4.modAlertGui.Parent then return end
local _v1ee = Instance.new(_ei9m[4+760])
_v1ee.Name = _ei9m[690]; _v1ee.ResetOnSpawn = false; _v1ee.DisplayOrder = (96595+3404)
_v1ee.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
pcall(function() _v1ee.Parent = game:GetService(_ei9m[546]) end)
if not _v1ee.Parent then _v1ee.Parent = _v2:WaitForChild(_ei9m[62]) end
_v4.modAlertGui = _v1ee
local _v1ef = Instance.new(_ei9m[703-17])
_v1ef.Name = _ei9m[223]; _v1ef.Size = UDim2.new(bit32.bxor(1550144485,1550144485), bit32.bxor(691814344,691814092), (401-401), (238+62))
_v1ef.Position = UDim2.new((820-820), (1+9), (314-314), (6*8+2))
_v1ef.BackgroundTransparency = bit32.bxor(1066802281,1066802280); _v1ef.Parent = _v1ee
local _v1eg = Instance.new(_ei9m[1142+148])
_v1eg.FillDirection = Enum.FillDirection.Vertical
_v1eg.HorizontalAlignment = Enum.HorizontalAlignment.Left
_v1eg.SortOrder = Enum.SortOrder.LayoutOrder
_v1eg.Padding = UDim.new(bit32.bxor(673148177,673148177), bit32.bxor(361039215,361039211)); _v1eg.Parent = _v1ef
_v4.modAlertFrame = _v1ef
end
local function _v1eh()
if not _v4.modAlertFrame then return end
for _v1ei, _v1ej in pairs(_v4.modAlertLabels) do
pcall(function() _v1ej:Destroy() end)
end
_v4.modAlertLabels = {}
if not _v4.MOD_CHECK then
if _v4.modAlertGui then _v4.modAlertGui.Enabled = false end
return
end
local _v1ek = (53-53)
for _v1el, _v1em in pairs(_v4.modAdmins) do
if _v1el and _v1el.Parent then
_v1ek = _v1ek + (1+0)
local _v1en = (type(_v1em) == _ei9m[1338]) and string.upper(_v1em) or _ei9m[942+28]
local _v1eo = Instance.new(_ei9m[270-13])
_v1eo.Name = _ei9m[346] .. _v1el.Name
_v1eo.LayoutOrder = _v1ek
_v1eo.Size = UDim2.new(bit32.bxor(951274241,951274240), bit32.bxor(449592991,449592991), bit32.bxor(1856465501,1856465501), (14+8))
_v1eo.BackgroundColor3 = Color3.fromRGB(bit32.bxor(170022604,170022556), bit32.bxor(1675045829,1675045829), bit32.bxor(1844067927,1844067927))
_v1eo.BackgroundTransparency = 0.3
_v1eo.TextColor3 = Color3.fromRGB((3*85+0), (692-642), (850-800))
_v1eo.TextStrokeTransparency = (0+0)
_v1eo.TextStrokeColor3 = Color3.new((382-382), (768-768), (770-770))
_v1eo.Font = Enum.Font.GothamBold
_v1eo.TextSize = (6+9)
_v1eo.TextXAlignment = Enum.TextXAlignment.Left
_v1eo.Text = _v1en .. ": " .. _v1el.DisplayName .. _ei9m[306-10] .. _v1el.Name .. ")"
Instance.new(_ei9m[348-20], _v1eo).CornerRadius = UDim.new((534-534), (1+3))
_v1eo.Parent = _v4.modAlertFrame
_v4.modAlertLabels[_v1el] = _v1eo
end
end
if _v4.modAlertGui then _v4.modAlertGui.Enabled = _v1ek > (0+0) end
end
local function _v1ep(_v1eq)
if _v1eq == _v2 then return end
if _v4.UNLOADED then return end
task.spawn(function()
local _v1er, _v1es = _v1e5(_v1eq)
if _v1er then
_v4.modAdmins[_v1eq] = _v1es or _ei9m[848+312]
if _v4.MOD_KICK or (_v4.AFK_FARM and _v4.AFK_FARM_ADMIN_KICK) then
pcall(function() _v2:Kick(_ei9m[199] .. _v1eq.DisplayName) end)
return
end
if _v4.MOD_CHECK then
_v1ed()
_v1eh()
pcall(function()
_v10f:Notify(string.upper(_v1es or _ei9m[780]) .. ": " .. _v1eq.DisplayName .. _ei9m[299+468] .. _v1eq.Name .. ")", (0+8))
end)
end
end
end)
end
function _v4.adminKickSweep()
for _v1et, _v1eu in ipairs(_v0:GetPlayers()) do _v1ep(_v1eu) end
end
function _v4.modCheckRefresh()
if _v4.MOD_CHECK then
_v1ed()
for _v1ev, _v1ew in ipairs(_v0:GetPlayers()) do
if not _v4.modAdmins[_v1ew] then
_v1ep(_v1ew)
end
end
_v1eh()
else
_v1eh()
end
end
table.insert(_vi, _v0.PlayerAdded:Connect(function(_v1ex)
if _v4.MOD_CHECK or _v4.MOD_KICK or (_v4.AFK_FARM and _v4.AFK_FARM_ADMIN_KICK) then
_v1ep(_v1ex)
end
end))
table.insert(_vi, _v0.PlayerRemoving:Connect(function(_v1ey)
if _v4.modAdmins[_v1ey] then
_v4.modAdmins[_v1ey] = nil
_v1eh()
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
_v4.MOD_CHECK = false
_v4.MOD_KICK = false
_v4.cleanupModCheck()
_v4.FULLBRIGHT = false
pcall(function() _v1:UnbindFromRenderStep(_ei9m[356+433]) end)
pcall(function() if _v4.restoreFullbright then _v4.restoreFullbright() end end)
_v4.AFK_FARM = false
_v4.afkStopWalk()
if _v4.afkColliders then
for _v1ez in pairs(_v4.afkColliders) do
if _v1ez.Parent then pcall(function() _v1ez.CanCollide = true end) end
end
_v4.afkColliders, _v4.afkCollidersChar = nil, nil
end
if _v4.afkWasOn then
_v4.afkWasOn = false
pcall(function() _v2.Character:SetAttribute(_ei9m[221-11], nil) end)
end
if _v4.afkSafetyState then
if _v4.afkSafetyState == _ei9m[5+644] then
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.R, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.R, false, game) end)
end
if _v4.afkSafetyPlatform then pcall(function() _v4.afkSafetyPlatform:Destroy() end); _v4.afkSafetyPlatform = nil end
pcall(function()
local _v1f0 = _v4.getLocalPhysicsRoot()
if _v1f0 then _v1f0.Anchored = false end
end)
_v4.afkSafetyState = nil
end
_v4.NO_FOG = false
pcall(function() _v1:UnbindFromRenderStep(_ei9m[840]) end)
pcall(function() if _v4.restoreNoFog then _v4.restoreNoFog() end end)
pcall(function() _v4.setCustomTime(false) end)
_v4.customTime = false
pcall(function() _v1:UnbindFromRenderStep(_ei9m[248]) end)
_v4.autoSpawnCleanup()
_v4.stopAutoGrow()
 do local _wh8v1fp7x=#"abnwbgmh"+93 end
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
_v4.SAVE_DINO_ACTIVE = false
_v117()
_v10z()
for _v1f1, _v1f2 in pairs(_v4.espCache) do
_v4.destroyESP(_v1f1)
end
for _v1f3, _v1f4 in pairs(_v23) do
pcall(function() _v1f4:Destroy() end)
end
_v23 = {}
for _v1f5, _v1f6 in ipairs(_vi) do
pcall(function() _v1f6:Disconnect() end)
end
_vi = {}
pcall(function() if _v4.mobGui then _v4.mobGui:Destroy() end end)
pcall(function() _v4.mmapDestroyPool() end)
pcall(function() _v10f:Destroy() end)
pcall(function() indicatorGui:Destroy() end)
pcall(function()
local _v1f7 = {
EazyCheats = true, EazyCheatsIndicator = true, EazyCheatsModAlert = true,
EazyCheatsVegESP = true, PD_StatsCard = true,
}
for _v1f8, _v1f9 in ipairs({ game:GetService(_ei9m[119+53]), _v2:FindFirstChild(_ei9m[253+27]) }) do
if _v1f9 then
for _v1f8, _v1fb in ipairs(_v1f9:GetChildren()) do
if _v1f7[_v1fb.Name] then pcall(function() _v1fb:Destroy() end) end
end
end
end
end)
pcall(function()
for _v1fc, _v1fd in workspace:GetChildren() do
if _v1fd.Name == _ei9m[251-1] or _v1fd.Name == _ei9m[308+558] then
_v1fd:Destroy()
end
end
end)
pcall(function()
for _v1fe, _v1ff in ipairs({ _ei9m[1076-4], _ei9m[900-20], _ei9m[1292-18],
_ei9m[343+913], _ei9m[11+360] }) do
pcall(function() _v1:UnbindFromRenderStep(_v1ff) end)
end
end)
pcall(function()
local _v1fg = getgenv and getgenv()
if _v1fg then _v1fg.EazyCheats_Unload = nil end
end)
end
pcall(function()
local _v1fh = getgenv and getgenv()
if _v1fh then _v1fh.EazyCheats_Unload = _v4.unloadScript end
end)
_v10f.onUnload = _v4.unloadScript
_v4.CONFIG_FOLDER = _ei9m[53+248]
_v4.AUTO_LOAD_FILE = _v4.CONFIG_FOLDER .. _ei9m[260+459]
pcall(function() if not isfolder(_v4.CONFIG_FOLDER) then makefolder(_v4.CONFIG_FOLDER) end end)
local _v1fi = game:GetService(_ei9m[1230-16])
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
CORPSE_DISTANCE = _v4.CORPSE_DISTANCE,
WORLD_TEXT_SIZE = _v4.WORLD_TEXT_SIZE,
STATS_CARD = _v4.STATS_CARD, SC_GROWTH = _v4.SC_GROWTH, SC_MASS = _v4.SC_MASS, SC_WEIGHT = _v4.SC_WEIGHT,
SC_TIMER = _v4.SC_TIMER, SC_NUTRITION = _v4.SC_NUTRITION, SC_WELLBEING = _v4.SC_WELLBEING,
SC_DRAG = _v4.SC_DRAG,
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
FREEZE_FOOD = _v4.FREEZE_FOOD, FREEZE_WATER = _v4.FREEZE_WATER,
AUTO_CLEAN = _v4.AUTO_CLEAN,
INF_OXYGEN = _v4.INF_OXYGEN,
EAT_WHEN_HUNGRY = _v4.EAT_WHEN_HUNGRY,
LEAVE_SCRAPS = _v4.LEAVE_SCRAPS,
NO_FALL_DAMAGE = _v4.NO_FALL_DAMAGE,
AUTO_FLY_SPEED = _v4.AUTO_FLY_SPEED,
AUTO_FLY_RADIUS = _v4.AUTO_FLY_RADIUS,
AUTO_FLY_DRIFT = _v4.AUTO_FLY_DRIFT,
AUTO_FLY_ALT = _v4.AUTO_FLY_ALT,
ANTI_AFK = _v4.ANTI_AFK,
AFK_FARM_SPEED = _v4.AFK_FARM_SPEED,
AFK_FARM_AVOID = _v4.AFK_FARM_AVOID,
AFK_FARM_WALK = _v4.AFK_FARM_WALK,
AFK_FARM_MEAT = _v4.AFK_FARM_MEAT,
AFK_FARM_SAFETY = _v4.AFK_FARM_SAFETY,
AFK_FARM_ADMIN_KICK = _v4.AFK_FARM_ADMIN_KICK,
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
INSTA_TURN_KEY = (_v13b and _v13b.Key and _v13b.Key ~= Enum.KeyCode.Unknown) and _v13b.Key.Name or nil,
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
local _v1fj = {}
for _v1fk, _v1fl in pairs(_v4.ALL_TOGGLES) do
if _v1fl and _v1fl.Key and _v1fl.Key ~= Enum.KeyCode.Unknown then
_v1fj[_v1fk] = _v1fl.Key.Name
end
end
return _v1fj
end)(),
}
end
function _v4.applyConfigData(_v1fm)
_v4.SUPPRESS_TOGGLE_NOTIFY = true
local function _v1fn(_v1fo, _v1fp)
pcall(function() if _v1fo and _v1fp ~= nil then _v1fo:Set(_v1fp) end end)
end
local function _v1fq(_v1fr, _v1fs)
pcall(function() if _v1fr and _v1fs ~= nil then _v1fr:Set(_v1fs) end end)
end
local function _v1ft(_v1fu, _v1fv, _v1fw, _v1fx, _v1fy)
pcall(function()
for _v1fz, _v1g0 in ipairs(_v1fv) do
local _v1g1 = _v1fw[_v1fx .. _v1g0]
if _v1g1 ~= nil then _v1fu[_v1g0] = _v1g1 and true or false end
end
if _v1fy and _v1fy.Refill then _v1fy.Refill() end
end)
end
_v1fn(_v4.espToggle, _v1fm.ESP_ENABLED)
_v1fn(_v1a6.chams, _v1fm.CHAMS_ENABLED)
_v1fn(_v1a6.tracers, _v1fm.TRACERS_ENABLED)
_v1fn(_v1a6.showName, _v1fm.SHOW_NAME)
_v1fn(_v1a6.showDino, _v1fm.SHOW_DINO)
_v1fn(_v1a6.showStage, _v1fm.SHOW_STAGE)
_v1fn(_v1a6.showGender, _v1fm.SHOW_GENDER)
_v1fn(_v1a6.showHealth, _v1fm.SHOW_HEALTH)
_v1fn(_v1a6.showStamina, _v1fm.SHOW_STAMINA)
if _v1fm.SHOW_FOOD_BAR ~= nil then _v1fn(_v1a6.foodBar, _v1fm.SHOW_FOOD_BAR) end
if _v1fm.SHOW_FOOD_NUM ~= nil then _v1fn(_v1a6.foodNum, _v1fm.SHOW_FOOD_NUM) end
if _v1fm.SHOW_WATER_BAR ~= nil then _v1fn(_v1a6.waterBar, _v1fm.SHOW_WATER_BAR) end
if _v1fm.SHOW_WATER_NUM ~= nil then _v1fn(_v1a6.waterNum, _v1fm.SHOW_WATER_NUM) end
if _v1fm.SHOW_INFECT_BAR ~= nil then _v1fn(_v1a6.infectBar, _v1fm.SHOW_INFECT_BAR) end
if _v1fm.SHOW_INFECT_NUM ~= nil then _v1fn(_v1a6.infectNum, _v1fm.SHOW_INFECT_NUM) end
_v1fn(_v1a6.showWeight, _v1fm.SHOW_WEIGHT)
_v1fn(_v1a6.bleed, _v1fm.BLEED_ESP)
if _v1fm.PACK_ESP ~= nil then _v1fn(_v1a6.packESP, _v1fm.PACK_ESP) end
if _v1fm.PACK_LEADER_ESP ~= nil then _v1fn(_v1a6.packLeader, _v1fm.PACK_LEADER_ESP) end
_v1fn(_v1a6.showDist, _v1fm.SHOW_DISTANCE)
_v1fn(_v1a6.textHL, _v1fm.TEXT_HIGHLIGHT)
_v1fq(_v1a6.textSize, _v1fm.TEXT_SIZE)
_v1fq(_v1a6.hbHeight, _v1fm.HEALTH_BAR_HEIGHT)
if _v1fm.HEALTH_BAR_WIDTH then
_v1fq(_v1a6.hbWidth, math.floor(_v1fm.HEALTH_BAR_WIDTH * (73+27)))
end
if _v1fm.STAM_BAR_HEIGHT then _v1fq(_v1a6.sbHeight, _v1fm.STAM_BAR_HEIGHT) end
if _v1fm.STAM_BAR_WIDTH then _v1fq(_v1a6.sbWidth, math.floor(_v1fm.STAM_BAR_WIDTH * bit32.bxor(1328952208,1328952308))) end
_v1fq(_v1a6.espDist, _v1fm.ESP_DISTANCE)
if _v1fm.CHAMS_FILL_TRANSPARENCY then
_v1fq(_v1a6.chamsFill, math.floor(_v1fm.CHAMS_FILL_TRANSPARENCY * (936-836)))
end
if _v1fm.CHAMS_OUTLINE_TRANSPARENCY then
_v1fq(_v1a6.chamsOutline, math.floor(_v1fm.CHAMS_OUTLINE_TRANSPARENCY * bit32.bxor(364309376,364309476)))
end
_v1fn(_v1a6.corpse, _v1fm.CORPSE_ESP)
_v1fq(_v1a6.worldTextSize, _v1fm.WORLD_TEXT_SIZE)
_v1fq(_v1a6.corpseDist, _v1fm.CORPSE_DISTANCE)
if _v1fm.STATS_CARD ~= nil then _v1fn(_v1a6.statsCard, _v1fm.STATS_CARD) end
if _v1fm.SC_GROWTH ~= nil then _v1fn(_v1a6.scGrowth, _v1fm.SC_GROWTH) end
if _v1fm.SC_MASS ~= nil then _v1fn(_v1a6.scMass, _v1fm.SC_MASS) end
if _v1fm.SC_WEIGHT ~= nil then _v1fn(_v1a6.scWeight, _v1fm.SC_WEIGHT) end
if _v1fm.SC_TIMER ~= nil then _v1fn(_v1a6.scTimer, _v1fm.SC_TIMER) end
if _v1fm.SC_NUTRITION ~= nil then _v1fn(_v1a6.scNutrition, _v1fm.SC_NUTRITION) end
if _v1fm.SC_WELLBEING ~= nil then _v1fn(_v1a6.scWellbeing, _v1fm.SC_WELLBEING) end
if _v1fm.SC_DRAG ~= nil then _v1fn(_v1a6.scDrag, _v1fm.SC_DRAG) end
if _v1fm.SC_HIDE_WITH_MENU ~= nil then _v1fn(_v1a6.scHideMenu, _v1fm.SC_HIDE_WITH_MENU) end
if _v4.setStatsCardPos and _v1fm.SC_POS_XS and _v1fm.SC_POS_XO and _v1fm.SC_POS_YS and _v1fm.SC_POS_YO then
_v4.setStatsCardPos(_v1fm.SC_POS_XS, _v1fm.SC_POS_XO, _v1fm.SC_POS_YS, _v1fm.SC_POS_YO)
end
if _v1fm.FISH_ESP ~= nil then _v1fn(_v1a6.fishESP, _v1fm.FISH_ESP) end
_v1fn(_v1a6.fossilS, _v1fm.FOSSIL_SMALL)
_v1fn(_v1a6.fossilM, _v1fm.FOSSIL_MEDIUM)
_v1fn(_v1a6.fossilL, _v1fm.FOSSIL_LARGE)
_v1fq(_v1a6.fossilDistS, _v1fm.FOSSIL_DIST_SMALL or _v1fm.FOSSIL_DISTANCE)
_v1fq(_v1a6.fossilDistM, _v1fm.FOSSIL_DIST_MEDIUM or _v1fm.FOSSIL_DISTANCE)
_v1fq(_v1a6.fossilDistL, _v1fm.FOSSIL_DIST_LARGE or _v1fm.FOSSIL_DISTANCE)
if _v1fm.VEG_DIET_ONLY ~= nil then _v1fn(_v1a6.vegDietOnly, _v1fm.VEG_DIET_ONLY) end
if _v1fm.VEG_HIDE_EATEN ~= nil then _v1fn(_v1a6.vegHideEaten, _v1fm.VEG_HIDE_EATEN) end
if _v1fm.VEG_DISTANCE then _v1fq(_v1a6.vegDist, _v1fm.VEG_DISTANCE) end
if _v1fm.VEG_MAX then _v1fq(_v1a6.vegMax, _v1fm.VEG_MAX) end
if _v1fm.VEG_ESP ~= nil then _v1fn(_v1a6.vegESP, _v1fm.VEG_ESP) end
_v1fn(_v1a6.meat, _v1fm.MEAT_ESP)
_v1fq(_v1a6.meatDist, _v1fm.MEAT_DISTANCE)
if _v1fm.CLAY_ESP ~= nil then _v1fn(_v1a6.clay, _v1fm.CLAY_ESP) end
if _v1fm.CLAY_DISTANCE then _v1fq(_v1a6.clayDist, _v1fm.CLAY_DISTANCE) end
if _v1fm.MMAP_PLAYERS ~= nil then _v1fn(_v1a6.mmapPlayers, _v1fm.MMAP_PLAYERS) end
if _v1fm.MMAP_CORPSES ~= nil then _v1fn(_v1a6.mmapCorpses, _v1fm.MMAP_CORPSES) end
if _v1fm.MMAP_FOSSILS ~= nil then _v1fn(_v1a6.mmapFossils, _v1fm.MMAP_FOSSILS) end
if _v1fm.MMAP_ON ~= nil then
_v1fn(_v1a6.mmap, _v1fm.MMAP_ON)
elseif _v1fm.MMAP_PLAYERS or _v1fm.MMAP_CORPSES or _v1fm.MMAP_FOSSILS then
_v1fn(_v1a6.mmap, true)
end
_v1fn(_v1a6.antiBS, _v1fm.ANTI_BLACKSCREEN)
if _v1fm.NO_FOG ~= nil then _v1fn(_v1a6.noFog, _v1fm.NO_FOG) end
if _v1fm.NO_BLUR ~= nil then _v1fn(_v1a6.noBlur, _v1fm.NO_BLUR) end
if _v1fm.FULLBRIGHT ~= nil then _v1fn(_v1a6.fullbright, _v1fm.FULLBRIGHT) end
if _v1fm.CUSTOM_TIME_HOUR then _v1fq(_v1a6.timeHour, _v1fm.CUSTOM_TIME_HOUR) end
if _v1fm.CUSTOM_TIME ~= nil then _v1fn(_v1a6.customTime, _v1fm.CUSTOM_TIME) end
if _v1fm.MOB_SHOW_TURN ~= nil and _v4.mobTurnToggle then _v1fn(_v4.mobTurnToggle, _v1fm.MOB_SHOW_TURN) end
_v1fn(_v1a6.showModules, _v1fm.SHOW_INDICATORS)
if _v1fm.MOD_CHECK ~= nil then _v1fn(_v1a6.modCheck, _v1fm.MOD_CHECK) end
if _v1fm.MOD_KICK ~= nil then _v1fn(_v1a6.modKick, _v1fm.MOD_KICK) end
_v1fn(_v1a6.unlimitedZoom, _v1fm.UNLIMITED_ZOOM)
if _v1fm.FOV_VALUE then _v1fq(_v1a6.fovSlider, _v1fm.FOV_VALUE) end
_v1fn(_v1a6.fovToggle, _v1fm.FOV_ENABLED)
_v1fq(_v1a6.attackSpeed, _v1fm.ATTACK_SPEED)
_v1fn(_v1a6.noAtkCd, _v1fm.NO_ATK_CD)
_v1fn(_v1a6.noAtkCooldown, _v1fm.NO_ATK_COOLDOWN)
 do local _wh8v05ju=bit32.bxor(46015,56868) end
_v1ft(_v4.SILENT_GROUPS, _v4.PART_GROUP_ORDER, _v1fm, _ei9m[588-2], _v1a6.silentGroups)
_v1fq(_v1a6.turnSpeed, _v1fm.TURN_SPEED)
_v1fn(_v1a6.quickTurn, _v1fm.QUICK_TURN)
_v1fn(_v1a6.silentAim, _v1fm.SILENT_AIM)
if _v1fm.INSTA_TURN_KEY and _v13b then
pcall(function()
local _v1g2 = Enum.KeyCode[_v1fm.INSTA_TURN_KEY]
if _v1g2 then _v13b:Set(_v1g2, true) end
end)
end
_v1fn(_v4.hitboxToggle, _v1fm.HITBOX_EXPANDER)
_v1fn(_v1a6.hitboxVis, _v1fm.HITBOX_VISUALIZE)
_v1fq(_v1a6.hitboxMult, _v1fm.HITBOX_MULTIPLIER)
if _v1fm.HITBOX_VIS_TRANSPARENCY ~= nil then
_v1fq(_v1a6.hitboxVisOpacity, math.floor((bit32.bxor(548914193,548914192) - _v1fm.HITBOX_VIS_TRANSPARENCY) * (45+55)))
end
_v1ft(_v4.HITBOX_GROUPS, _v4.PART_GROUP_ORDER, _v1fm, _ei9m[927-4], _v1a6.hitboxGroups)
_v1fq(_v1a6.reachMult, _v1fm.REACH_MULTIPLIER)
if _v1fm.REACH_Tail ~= nil and _v1fm.REACH_TailBase == nil then
_v1fm.REACH_TailBase = _v1fm.REACH_Tail
_v1fm.REACH_TailMid = _v1fm.REACH_Tail
_v1fm.REACH_TailTip = _v1fm.REACH_Tail
_v1fm.REACH_Thagomizer = _v1fm.REACH_Tail
end
_v1ft(_v4.REACH_GROUPS, _v4.REACH_GROUP_ORDER, _v1fm, _ei9m[5+832], _v1a6.reachGroups)
if _v1fm.REACH_VIS_TRANSPARENCY ~= nil then
_v1fq(_v1a6.reachVisOpacity, math.floor((bit32.bxor(927074507,927074506) - _v1fm.REACH_VIS_TRANSPARENCY) * (2*50+0)))
end
if _v1fm.REACH_VISUALIZE ~= nil then _v1fn(_v1a6.reachVis, _v1fm.REACH_VISUALIZE) end
_v1fn(_v1a6.reach, _v1fm.REACH_ENABLED)
_v1fn(_v4.autoWaterToggle, _v1fm.AUTO_WATER)
if _v1fm.FORCE_EAT ~= nil then _v1fn(_v4.forceEatToggle, _v1fm.FORCE_EAT) end
if _v1fm.FAST_EAT ~= nil then _v1fn(_v1a6.fastEat, _v1fm.FAST_EAT) end
if _v1fm.FREEZE_FOOD ~= nil then _v1fn(_v1a6.freezeFood, _v1fm.FREEZE_FOOD) end
if _v1fm.FREEZE_WATER ~= nil then _v1fn(_v1a6.freezeWater, _v1fm.FREEZE_WATER) end
if _v1fm.AUTO_CLEAN ~= nil then _v1fn(_v4.autoCleanToggle, _v1fm.AUTO_CLEAN) end
if _v1fm.INF_OXYGEN ~= nil then _v1fn(_v1a6.infOxygen, _v1fm.INF_OXYGEN) end
if _v1fm.EAT_WHEN_HUNGRY ~= nil then _v1fn(_v1a6.eatWhenHungry, _v1fm.EAT_WHEN_HUNGRY) end
if _v1fm.LEAVE_SCRAPS ~= nil then _v1fn(_v1a6.leaveScraps, _v1fm.LEAVE_SCRAPS) end
_v1fn(_v4.noFallToggle, _v1fm.NO_FALL_DAMAGE)
if _v1fm.AUTO_FLY_SPEED then _v1fq(_v4.autoFlySpeedSlider, _v1fm.AUTO_FLY_SPEED) end
if _v1fm.AUTO_FLY_RADIUS then _v1fq(_v4.autoFlyRadiusSlider, _v1fm.AUTO_FLY_RADIUS) end
if _v1fm.AUTO_FLY_DRIFT then _v1fq(_v4.autoFlyDriftSlider, _v1fm.AUTO_FLY_DRIFT) end
if _v1fm.AUTO_FLY_ALT then _v1fq(_v4.autoFlyAltSlider, _v1fm.AUTO_FLY_ALT) end
if _v1fm.ANTI_AFK ~= nil then _v1fn(_v4.antiAfkToggle, _v1fm.ANTI_AFK) end
if _v1fm.AFK_FARM_SPEED then _v1fq(_v1a6.afkFarmSpeed, _v1fm.AFK_FARM_SPEED) end
if _v1fm.FOSSIL_FARM_SPEED then _v1fq(_v4.fossilFarmSpeedSlider, _v1fm.FOSSIL_FARM_SPEED) end
if _v1fm.AFK_FARM_AVOID then _v1fq(_v1a6.afkFarmAvoid, _v1fm.AFK_FARM_AVOID) end
if _v1fm.AFK_FARM_WALK ~= nil then _v1fn(_v1a6.afkFarmWalk, _v1fm.AFK_FARM_WALK) end
if _v1fm.AFK_FARM_MEAT ~= nil then _v1fn(_v1a6.afkFarmMeat, _v1fm.AFK_FARM_MEAT) end
if _v1fm.AFK_FARM_SAFETY ~= nil then _v1fn(_v1a6.afkFarmSafety, _v1fm.AFK_FARM_SAFETY) end
if _v1fm.AFK_FARM_ADMIN_KICK ~= nil then _v1fn(_v1a6.afkFarmAdminKick, _v1fm.AFK_FARM_ADMIN_KICK) end
_v1fn(_v1a6.tpSolid, _v1fm.TP_SOLID)
_v1fn(_v1a6.tpChain, _v1fm.TP_CHAIN)
if _v1fm.AUTO_SAVE_PCT and _v1fm.AUTO_SAVE_PCT > bit32.bxor(533193899,533193899) then
_v1fq(_v4.autoSaveSlider, _v1fm.AUTO_SAVE_PCT)
end
local _v1g3 = _v1fm.AUTO_SAVE
if _v1g3 == nil then _v1g3 = (_v1fm.AUTO_SAVE_PCT or (0+0)) > bit32.bxor(508877634,508877634) end
_v1fn(_v4.autoSaveToggle, _v1g3)
if _v1fm.AUTO_SAVE_BLEED ~= nil then _v1fn(_v4.autoSaveBleedToggle, _v1fm.AUTO_SAVE_BLEED) end
if type(_v1fm.KEYBINDS) == _ei9m[1043] then
for _v1g4, _v1g5 in pairs(_v1fm.KEYBINDS) do
local _v1g6 = _v4.ALL_TOGGLES[_v1g4]
if _v1g6 and _v1g6.SetKey and _v1g5 then
pcall(function()
local _v1g7 = Enum.KeyCode[_v1g5]
if _v1g7 then _v1g6:SetKey(_v1g7, true) end
end)
end
end
end
if _v1fm.AUTO_GROW then
_v1fn(_v4.autoGrowToggle, true)
end
_v4.SUPPRESS_TOGGLE_NOTIFY = false
end
function _v4.listConfigs()
local _v1g8 = {}
pcall(function()
local _v1g9 = listfiles(_v4.CONFIG_FOLDER)
for _v1ga, _v1gb in ipairs(_v1g9) do
local _v1gc = _v1gb:match(_ei9m[96])
if _v1gc and _v1gc ~= _ei9m[53+19] then
table.insert(_v1g8, _v1gc)
end
end
end)
table.sort(_v1g8)
return _v1g8
end
function _v4.saveConfig(_v1gd)
local ok, err = pcall(function()
local _v1ge = _v4.getConfigData()
writefile(_v4.CONFIG_FOLDER .. "/" .. _v1gd .. _ei9m[920-14], _v1fi:JSONEncode(_v1ge))
end)
if ok then
print(_ei9m[3+121] .. _v1gd)
pcall(function() _v10f:Notify(_ei9m[6+989] .. _v1gd) end)
else
warn(_ei9m[1038-9] .. tostring(err))
pcall(function() _v10f:Notify(_ei9m[1181-7] .. _v1gd) end)
end
return ok
end
function _v4.loadConfig(_v1gf)
local ok, data = pcall(function()
local _v1gg = readfile(_v4.CONFIG_FOLDER .. "/" .. _v1gf .. _ei9m[74+82])
return _v1fi:JSONDecode(_v1gg)
end)
if ok and data then
_v4.applyConfigData(data)
print(_ei9m[775] .. _v1gf)
pcall(function() _v10f:Notify(_ei9m[446-4] .. _v1gf) end)
return true
else
warn(_ei9m[687] .. tostring(data))
pcall(function() _v10f:Notify(_ei9m[472-3] .. _v1gf) end)
end
return false
end
function _v4.deleteConfig(_v1gh)
pcall(function()
delfile(_v4.CONFIG_FOLDER .. "/" .. _v1gh .. _ei9m[1160-11])
end)
end
function _v4.getAutoLoadConfig()
local _v1gi, _v1gj = pcall(function() return readfile(_v4.AUTO_LOAD_FILE) end)
if _v1gi and _v1gj and _v1gj ~= "" then return _v1gj end
return nil
end
function _v4.setAutoLoadConfig(_v1gk)
pcall(function() writefile(_v4.AUTO_LOAD_FILE, _v1gk or "") end)
end
local _v1gl = _v10f.tabs and _v10f.tabs.Settings
if _v1gl then
pcall(function()
_v1gl.page.ScrollingEnabled = true
_v1gl.page.ScrollBarThickness = bit32.bxor(988169472,988169475)
end)
else
_v1gl = _v1a2
end
if _v4.IS_MOBILE then
_v4.section(_v1gl, _ei9m[211-8], _ei9m[5+1205])
_v4.mobTurnToggle = _v1gl:AddToggle({
Name = _ei9m[590],
Default = true,
Callback = function(_v1gm) _v4.MOB_SHOW_TURN = _v1gm end
})
end
_v4.CONFIG_SLOTS = {_ei9m[491-3], _ei9m[885-4], _ei9m[21-1], _ei9m[579], _ei9m[1291], _ei9m[876-7], _ei9m[7+109], _ei9m[1021-3], _ei9m[4+544]}
pcall(function()
_v10f:SetConfig({
Folder = _v4.CONFIG_FOLDER,
Slots = _v4.CONFIG_SLOTS,
Save = _v4.saveConfig,
Load = _v4.loadConfig,
})
end)
local _v1gn = Instance.new(_ei9m[330+823])
_v1gn.Name = _ei9m[139]
_v1gn.ResetOnSpawn = false
_v1gn.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
pcall(function() _v1gn.Parent = game:GetService(_ei9m[1062]) end)
if not _v1gn.Parent then _v1gn.Parent = _v2:WaitForChild(_ei9m[118+237]) end
local _v1go = Instance.new(_ei9m[65+139])
_v1go.Name = _ei9m[4+546]
_v1go.Size = UDim2.new((0+0), (67+93), bit32.bxor(1708576654,1708576654), (919-519))
_v1go.Position = UDim2.new(bit32.bxor(599084121,599084120), -(787-617), bit32.bxor(1306290308,1306290308), (639-629))
_v1go.BackgroundTransparency = bit32.bxor(702260293,702260292)
_v1go.Parent = _v1gn
local _v1gp = Instance.new(_ei9m[2+381])
_v1gp.FillDirection = Enum.FillDirection.Vertical
_v1gp.HorizontalAlignment = Enum.HorizontalAlignment.Right
_v1gp.VerticalAlignment = Enum.VerticalAlignment.Top
_v1gp.SortOrder = Enum.SortOrder.LayoutOrder
_v1gp.Padding = UDim.new((442-442), bit32.bxor(1103399289,1103399291))
_v1gp.Parent = _v1go
_v4.TweenService = game:GetService(_ei9m[84+222])
local _v1gq = {}
_v4.SLIDE_TIME = 0.25
function _v4.createIndicatorLabel(_v1gr, _v1gs)
local _v1gt = Instance.new(_ei9m[1276-13])
_v1gt.Name = _ei9m[2+370] .. _v1gr
_v1gt.LayoutOrder = _v1gs
_v1gt.Size = UDim2.new((72-71), bit32.bxor(749962372,749962372), (0+0), bit32.bxor(452290442,452290456))
_v1gt.BackgroundTransparency = (1+0)
_v1gt.TextColor3 = Color3.fromRGB((13+157), bit32.bxor(2014437187,2014437145), (1169-914))
_v1gt.TextStrokeTransparency = 0.3
_v1gt.TextStrokeColor3 = Color3.new((63-63), (0+0), (538-538))
_v1gt.Font = Enum.Font.GothamBold
_v1gt.TextSize = bit32.bxor(1516476749,1516476736)
_v1gt.TextXAlignment = Enum.TextXAlignment.Right
_v1gt.Text = _v1gr
_v1gt.TextTransparency = (60-59)
_v1gt.Position = UDim2.new(bit32.bxor(945626050,945626051), (0+0), (27-27), bit32.bxor(1817570998,1817570998))
_v1gt.Parent = _v1go
_v1gq[_v1gr] = _v1gt
return _v1gt
end
function _v4.showIndicator(_v1gu)
local _v1gv = _v1gq[_v1gu]
if not _v1gv then return end
_v1gv.Visible = true
_v1gv.TextTransparency = bit32.bxor(2022370157,2022370156)
_v1gv.Position = UDim2.new(bit32.bxor(1368045108,1368045109), bit32.bxor(854072871,854072871), (0+0), (728-728))
local _v1gw = _v4.TweenService:Create(_v1gv, TweenInfo.new(_v4.SLIDE_TIME, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
TextTransparency = (0+0),
Position = UDim2.new((166-166), bit32.bxor(477960561,477960561), bit32.bxor(1693706385,1693706385), (134-134))
})
_v1gw:Play()
end
function _v4.hideIndicator(_v1gx)
local _v1gy = _v1gq[_v1gx]
if not _v1gy then return end
local _v1gz = _v4.TweenService:Create(_v1gy, TweenInfo.new(_v4.SLIDE_TIME, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
TextTransparency = bit32.bxor(1587571821,1587571820),
Position = UDim2.new(bit32.bxor(1426526392,1426526393), (104-104), bit32.bxor(1492695965,1492695965), bit32.bxor(155425112,155425112))
})
_v1gz:Play()
_v1gz.Completed:Connect(function()
if _v1gy.TextTransparency >= 0.9 then
_v1gy.Visible = false
end
end)
end
function _v4.updateIndicator(_v1h0, _v1h1)
if _v1h1 then
_v4.showIndicator(_v1h0)
else
_v4.hideIndicator(_v1h0)
end
end
_v4.MODULE_LIST = {
{name = _ei9m[6+575], order = (824-823), getState = function() return _v4.ESP_ENABLED end},
{name = _ei9m[674+64], order = (6*0+2), getState = function() return _v4.CHAMS_ENABLED end},
{name = _ei9m[1289], order = (6*0+3), getState = function() return _v4.TRACERS_ENABLED end},
{name = _ei9m[1076+23], order = bit32.bxor(158776696,158776700), getState = function() return _v4.CORPSE_ESP end},
{name = _ei9m[16+176], order = (426-421), getState = function() return _v4.FOSSIL_SMALL or _v4.FOSSIL_MEDIUM or _v4.FOSSIL_LARGE end},
{name = _ei9m[2+639], order = (7+0), getState = function() return _v4.MEAT_ESP end},
{name = _ei9m[3+504], order = (4+4), getState = function() return _v4.CLAY_ESP end},
{name = _ei9m[144+138], order = bit32.bxor(706084553,706084561), getState = function() return _v4.VEG_ESP end},
{name = _ei9m[849], order = (5*1+3), getState = function() return _v4.SAVE_DINO_ACTIVE end},
{name = _ei9m[769-6], order = (2*4+1), getState = function() return _v4.HITBOX_EXPANDER end},
{name = _ei9m[5+292], order = (976-966), getState = function() return _v4.ANTI_BLACKSCREEN end},
{name = _ei9m[5+239], order = (116-105), getState = function() return _v4.AUTO_GROW end},
{name = _ei9m[730+496], order = (426-414), getState = function() return _v4.TEXT_HIGHLIGHT end},
{name = _ei9m[616-11], order = (11+3), getState = function() return _v4.NO_FALL_DAMAGE end},
{name = _ei9m[1134-17], order = (5*3+0), getState = function() return _v4.FOSSIL_FARM end},
{name = _ei9m[4+1233], order = (3*5+1), getState = function() return _v4.SILENT_AIM end},
{name = _ei9m[45], order = (911-894), getState = function() return _v4.FREEZE_FOOD end},
{name = _ei9m[144-16], order = (12+6), getState = function() return _v4.FREEZE_WATER end},
{name = _ei9m[887-3], order = 18.5, getState = function() return _v4.AFK_FARM end},
{name = _ei9m[1145-5], order = (4*4+3), getState = function() return _v4.AUTO_FLY end},
{name = _ei9m[1132+155], order = (307-287), getState = function() return _v4.TP_CORPSE end},
{name = _ei9m[232+56], order = (14+7), getState = function() return _v4.ANTI_AFK end},
{name = _ei9m[6+1166], order = (4*5+2), getState = function() return _v4.MOD_CHECK end},
{name = _ei9m[337-3], order = (4*6+1), getState = function() return _v4.NO_FOG end},
}
for _v1h2, _v1h3 in ipairs(_v4.MODULE_LIST) do
_v4.createIndicatorLabel(_v1h3.name, _v1h3.order)
end
_v4.prevStates = {}
_v4.addStep((6+0), function()
if _v1gn.Enabled ~= _v4.SHOW_INDICATORS then _v1gn.Enabled = _v4.SHOW_INDICATORS end
for _v1h4, _v1h5 in ipairs(_v4.MODULE_LIST) do
local _v1h6 = _v1h5.getState()
if _v4.prevStates[_v1h5.name] ~= _v1h6 then
_v4.prevStates[_v1h5.name] = _v1h6
_v4.updateIndicator(_v1h5.name, _v1h6)
end
end
end)
pcall(function()
local _v1h7 = (_v10f.toggleKey and _v10f.toggleKey.Name) or _ei9m[4+909]
_v10f:Notify(_ei9m[377-2] .. _v1h7 .. _ei9m[73], (1+5))
end)