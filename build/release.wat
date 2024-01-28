(module
 (type $0 (func (param i32) (result i32)))
 (type $1 (func (param i32)))
 (type $2 (func (param i32 i32) (result i32)))
 (type $3 (func (param i32 i32 i32)))
 (type $4 (func))
 (type $5 (func (param i32 i32)))
 (type $6 (func (result i32)))
 (type $7 (func (param i32 i32 i32 i32)))
 (type $8 (func (param i32 i32 i64)))
 (type $9 (func (param i64 i32 i32) (result i64)))
 (type $10 (func (param f64 i32) (result f64)))
 (type $11 (func (param i32 i32 i32) (result i32)))
 (type $12 (func (param i32) (result f64)))
 (type $13 (func (param i64) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "bitcoin" "retarget" (func $assembly/bitcoin/retarget (param i64 i32 i32) (result i64)))
 (import "sdk" "console.log" (func $~lib/@vsc.eco/sdk/assembly/index/console.log (param i32)))
 (import "bitcoin" "base64" (func $assembly/bitcoin/base64 (param i32) (result i32)))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $assembly/index/dataStorage (mut i32) (i32.const 0))
 (global $assembly/index/headersState (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/assembly/JSON/_JSON.handler (mut i32) (i32.const 0))
 (global $~lib/assemblyscript-json/assembly/JSON/_JSON.decoder (mut i32) (i32.const 0))
 (global $~lib/util/string/__fixmulShift (mut i64) (i64.const 0))
 (global $~lib/assemblyscript-json/assembly/JSON/NULL (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 6528))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 39396))
 (memory $0 1)
 (data $0 (i32.const 1036) "<")
 (data $0.1 (i32.const 1048) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $1 (i32.const 1100) "<")
 (data $1.1 (i32.const 1112) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $4 (i32.const 1228) "<")
 (data $4.1 (i32.const 1240) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $5 (i32.const 1292) ",")
 (data $5.1 (i32.const 1304) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $7 (i32.const 1372) "<")
 (data $7.1 (i32.const 1384) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $8 (i32.const 1436) ",")
 (data $8.1 (i32.const 1448) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $9 (i32.const 1484) "<")
 (data $9.1 (i32.const 1496) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data $10 (i32.const 1548) "<")
 (data $10.1 (i32.const 1560) "\02\00\00\00$\00\00\00r\00e\00t\00a\00r\00g\00e\00t\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 ")
 (data $11 (i32.const 1612) "|")
 (data $11.1 (i32.const 1624) "\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data $12 (i32.const 1740) "<")
 (data $12.1 (i32.const 1752) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data $13 (i32.const 1804) "\1c")
 (data $13.1 (i32.const 1816) "\02\00\00\00\02\00\00\000")
 (data $14 (i32.const 1836) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data $15 (i32.const 2236) "\1c\04")
 (data $15.1 (i32.const 2248) "\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data $16 (i32.const 3292) "\\")
 (data $16.1 (i32.const 3304) "\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data $17 (i32.const 3388) "\1c")
 (data $17.1 (i32.const 3400) "\02")
 (data $18 (i32.const 3420) "<")
 (data $18.1 (i32.const 3432) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00d\00a\00t\00a\00v\00i\00e\00w\00.\00t\00s")
 (data $19 (i32.const 3484) ",")
 (data $19.1 (i32.const 3496) "\02\00\00\00\16\00\00\00i\00n\00s\00i\00d\00e\00 \00m\00a\00i\00n")
 (data $20 (i32.const 3532) "<")
 (data $20.1 (i32.const 3544) "\02\00\00\00$\00\00\00U\00n\00p\00a\00i\00r\00e\00d\00 \00s\00u\00r\00r\00o\00g\00a\00t\00e")
 (data $21 (i32.const 3596) ",")
 (data $21.1 (i32.const 3608) "\02\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data $22 (i32.const 3644) "<")
 (data $22.1 (i32.const 3656) "\02\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $23 (i32.const 3708) ",")
 (data $23.1 (i32.const 3720) "\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $24 (i32.const 3756) "|")
 (data $24.1 (i32.const 3768) "\02\00\00\00^\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00n\00u\00l\00l\00\'\00 \00(\00n\00o\00t\00 \00a\00s\00s\00i\00g\00n\00e\00d\00 \00o\00r\00 \00f\00a\00i\00l\00e\00d\00 \00c\00a\00s\00t\00)")
 (data $25 (i32.const 3884) "l")
 (data $25.1 (i32.const 3896) "\02\00\00\00X\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00d\00e\00c\00o\00d\00e\00r\00.\00t\00s")
 (data $26 (i32.const 3996) "<")
 (data $26.1 (i32.const 4008) "\02\00\00\00(\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00i\00n\00p\00u\00t\00 \00e\00n\00d")
 (data $27 (i32.const 4060) "\1c")
 (data $27.1 (i32.const 4072) "\02\00\00\00\02\00\00\00{")
 (data $28 (i32.const 4092) "|")
 (data $28.1 (i32.const 4104) "\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data $29 (i32.const 4220) "<")
 (data $29.1 (i32.const 4232) "\02\00\00\00 \00\00\00i\00n\00v\00a\00l\00i\00d\00 \00d\00o\00w\00n\00c\00a\00s\00t")
 (data $30 (i32.const 4284) "l")
 (data $30.1 (i32.const 4296) "\02\00\00\00R\00\00\00~\00l\00i\00b\00/\00a\00s\00s\00e\00m\00b\00l\00y\00s\00c\00r\00i\00p\00t\00-\00j\00s\00o\00n\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00J\00S\00O\00N\00.\00t\00s")
 (data $31 (i32.const 4396) "\1c")
 (data $31.1 (i32.const 4408) "\02\00\00\00\02\00\00\00}")
 (data $32 (i32.const 4428) "\1c")
 (data $32.1 (i32.const 4440) "\02\00\00\00\02\00\00\00,")
 (data $33 (i32.const 4460) ",")
 (data $33.1 (i32.const 4472) "\02\00\00\00\18\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00,\00\'")
 (data $34 (i32.const 4508) "\1c")
 (data $34.1 (i32.const 4520) "\02\00\00\00\02\00\00\00\"")
 (data $35 (i32.const 4540) "L")
 (data $35.1 (i32.const 4552) "\02\00\00\00:\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00d\00o\00u\00b\00l\00e\00-\00q\00u\00o\00t\00e\00d\00 \00s\00t\00r\00i\00n\00g")
 (data $36 (i32.const 4620) "L")
 (data $36.1 (i32.const 4632) "\02\00\00\008\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00c\00o\00n\00t\00r\00o\00l\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r")
 (data $37 (i32.const 4700) "\1c")
 (data $37.1 (i32.const 4712) "\02\00\00\00\02\00\00\00\\")
 (data $38 (i32.const 4732) "\1c")
 (data $38.1 (i32.const 4744) "\02\00\00\00\02\00\00\00/")
 (data $39 (i32.const 4764) "\1c")
 (data $39.1 (i32.const 4776) "\02\00\00\00\02\00\00\00b")
 (data $40 (i32.const 4796) "\1c")
 (data $40.1 (i32.const 4808) "\02\00\00\00\02\00\00\00\08")
 (data $41 (i32.const 4828) "\1c")
 (data $41.1 (i32.const 4840) "\02\00\00\00\02\00\00\00n")
 (data $42 (i32.const 4860) "\1c")
 (data $42.1 (i32.const 4872) "\02\00\00\00\02\00\00\00\n")
 (data $43 (i32.const 4892) "\1c")
 (data $43.1 (i32.const 4904) "\02\00\00\00\02\00\00\00r")
 (data $44 (i32.const 4924) "\1c")
 (data $44.1 (i32.const 4936) "\02\00\00\00\02\00\00\00\r")
 (data $45 (i32.const 4956) "\1c")
 (data $45.1 (i32.const 4968) "\02\00\00\00\02\00\00\00t")
 (data $46 (i32.const 4988) "\1c")
 (data $46.1 (i32.const 5000) "\02\00\00\00\02\00\00\00\t")
 (data $47 (i32.const 5020) "\1c")
 (data $47.1 (i32.const 5032) "\02\00\00\00\02\00\00\00u")
 (data $48 (i32.const 5052) "<")
 (data $48.1 (i32.const 5064) "\02\00\00\00&\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\\\00u\00 \00d\00i\00g\00i\00t")
 (data $49 (i32.const 5116) "L")
 (data $49.1 (i32.const 5128) "\02\00\00\00<\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00s\00c\00a\00p\00e\00d\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r\00:\00 ")
 (data $50 (i32.const 5196) "\1c")
 (data $50.1 (i32.const 5208) "\02\00\00\00\02\00\00\00:")
 (data $51 (i32.const 5228) ",")
 (data $51.1 (i32.const 5240) "\02\00\00\00\18\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00:\00\'")
 (data $52 (i32.const 5276) "L")
 (data $52.1 (i32.const 5288) "\02\00\00\000\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00n\00d\00 \00o\00f\00 \00o\00b\00j\00e\00c\00t")
 (data $53 (i32.const 5356) ",")
 (data $53.1 (i32.const 5368) "\02\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y")
 (data $54 (i32.const 5404) "\1c")
 (data $54.1 (i32.const 5416) "\02\00\00\00\02\00\00\00[")
 (data $55 (i32.const 5436) "\1c")
 (data $55.1 (i32.const 5448) "\02\00\00\00\02\00\00\00]")
 (data $56 (i32.const 5468) "L")
 (data $56.1 (i32.const 5480) "\02\00\00\00.\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00e\00n\00d\00 \00o\00f\00 \00a\00r\00r\00a\00y")
 (data $57 (i32.const 5548) "\1c")
 (data $57.1 (i32.const 5560) "\02\00\00\00\n\00\00\00f\00a\00l\00s\00e")
 (data $58 (i32.const 5580) ",")
 (data $58.1 (i32.const 5592) "\02\00\00\00\14\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00\'")
 (data $59 (i32.const 5628) "\1c")
 (data $59.1 (i32.const 5640) "\02\00\00\00\02\00\00\00\'")
 (data $60 (i32.const 5660) "\1c")
 (data $60.1 (i32.const 5672) "\02\00\00\00\08\00\00\00t\00r\00u\00e")
 (data $61 (i32.const 5692) "\1c")
 (data $61.1 (i32.const 5704) "\02\00\00\00\04\00\00\00-\000")
 (data $62 (i32.const 5734) "\f0?\00\00\00\00\00\00$@\00\00\00\00\00\00Y@\00\00\00\00\00@\8f@\00\00\00\00\00\88\c3@\00\00\00\00\00j\f8@\00\00\00\00\80\84.A\00\00\00\00\d0\12cA\00\00\00\00\84\d7\97A\00\00\00\00e\cd\cdA\00\00\00 _\a0\02B\00\00\00\e8vH7B\00\00\00\a2\94\1amB\00\00@\e5\9c0\a2B\00\00\90\1e\c4\bc\d6B\00\004&\f5k\0cC\00\80\e07y\c3AC\00\a0\d8\85W4vC\00\c8Ngm\c1\abC\00=\91`\e4X\e1C@\8c\b5x\1d\af\15DP\ef\e2\d6\e4\1aKD\92\d5M\06\cf\f0\80D")
 (data $63 (i32.const 5916) "\1c")
 (data $63.1 (i32.const 5928) "\02\00\00\00\08\00\00\00n\00u\00l\00l")
 (data $64 (i32.const 5948) "<")
 (data $64.1 (i32.const 5960) "\02\00\00\00\"\00\00\00C\00a\00n\00n\00o\00t\00 \00p\00a\00r\00s\00e\00 \00J\00S\00O\00N")
 (data $65 (i32.const 6012) "<")
 (data $65.1 (i32.const 6024) "\02\00\00\00\"\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00d\00e\00x\00.\00t\00s")
 (data $66 (i32.const 6076) "\1c")
 (data $66.1 (i32.const 6088) "\01")
 (data $67 (i32.const 6108) ",")
 (data $67.1 (i32.const 6120) "\02\00\00\00\16\00\00\00p\00r\00o\00c\00e\00s\00s\00i\00n\00g\00 ")
 (data $68 (i32.const 6156) ",")
 (data $68.1 (i32.const 6168) "\02\00\00\00\0e\00\00\00 \00b\00l\00o\00c\00k\00s")
 (data $69 (i32.const 6204) "\1c")
 (data $69.1 (i32.const 6216) "\02\00\00\00\04\00\00\00{\00}")
 (data $70 (i32.const 6236) "<")
 (data $70.1 (i32.const 6248) "\02\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data $71 (i32.const 6300) ",")
 (data $71.1 (i32.const 6312) "\02\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s")
 (data $72 (i32.const 6348) ",")
 (data $72.1 (i32.const 6360) "\02\00\00\00\0e\00\00\00s\00u\00c\00c\00e\00s\00s")
 (data $73 (i32.const 6396) "<")
 (data $73.1 (i32.const 6408) "\02\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d")
 (data $74 (i32.const 6460) "<")
 (data $74.1 (i32.const 6472) "\02\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d")
 (data $75 (i32.const 6528) "\18\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00\10A\82\00\02A")
 (data $75.1 (i32.const 6564) " \00\00\00\10A\82\00A\00\00\00\00\00\00\00 \00\00\00\02A")
 (data $75.2 (i32.const 6604) " \00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00\02\t")
 (export "__new" (func $~lib/rt/itcms/__new))
 (export "__pin" (func $~lib/rt/itcms/__pin))
 (export "__unpin" (func $~lib/rt/itcms/__unpin))
 (export "__collect" (func $~lib/rt/itcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (export "processHeaders" (func $export:assembly/index/processHeaders))
 (export "setU8" (func $export:assembly/index/setU8))
 (export "getU8" (func $export:assembly/index/getU8))
 (export "main" (func $export:assembly/index/main))
 (export "createBufferFromBase64" (func $export:assembly/index/createBufferFromBase64))
 (start $~start)
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  global.get $assembly/index/dataStorage
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/headersState
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 1248
  call $~lib/rt/itcms/__visit
  i32.const 1456
  call $~lib/rt/itcms/__visit
  i32.const 5376
  call $~lib/rt/itcms/__visit
  i32.const 4112
  call $~lib/rt/itcms/__visit
  i32.const 6256
  call $~lib/rt/itcms/__visit
  i32.const 1056
  call $~lib/rt/itcms/__visit
  i32.const 6416
  call $~lib/rt/itcms/__visit
  i32.const 6480
  call $~lib/rt/itcms/__visit
  i32.const 3552
  call $~lib/rt/itcms/__visit
  i32.const 2256
  call $~lib/rt/itcms/__visit
  i32.const 3312
  call $~lib/rt/itcms/__visit
  i32.const 5680
  call $~lib/rt/itcms/__visit
  i32.const 5568
  call $~lib/rt/itcms/__visit
  i32.const 5936
  call $~lib/rt/itcms/__visit
  global.get $~lib/assemblyscript-json/assembly/JSON/_JSON.handler
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/assemblyscript-json/assembly/JSON/_JSON.decoder
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/assemblyscript-json/assembly/JSON/NULL
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 1120
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#unlink (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  i32.const -4
  i32.and
  local.tee $1
  i32.eqz
  if
   local.get $0
   i32.load offset=8
   i32.eqz
   local.get $0
   i32.const 39396
   i32.lt_u
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1120
    i32.const 128
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $0
  i32.load offset=8
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 132
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1120
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/itcms/iter
  end
  local.get $0
  call $~lib/rt/itcms/Object#unlink
  global.get $~lib/rt/itcms/toSpace
  local.set $1
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $2
   i32.const 6528
   i32.load
   i32.gt_u
   if
    i32.const 1248
    i32.const 1312
    i32.const 21
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   i32.const 2
   i32.shl
   i32.const 6532
   i32.add
   i32.load
   i32.const 32
   i32.and
  end
  local.set $3
  local.get $1
  i32.load offset=8
  local.set $2
  local.get $0
  global.get $~lib/rt/itcms/white
  i32.eqz
  i32.const 2
  local.get $3
  select
  local.get $1
  i32.or
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $2
  local.get $0
  local.get $2
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store offset=8
 )
 (func $~lib/rt/itcms/__visit (param $0 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.tee $3
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $3
   local.get $3
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $3
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $2
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $3
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.set $5
  local.get $1
  i32.load offset=4
  local.tee $4
  if
   local.get $4
   local.get $5
   i32.store offset=8
  end
  local.get $5
  if
   local.get $5
   local.get $4
   i32.store offset=4
  end
  local.get $1
  local.get $0
  local.get $2
  i32.const 4
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.tee $1
  i32.load offset=96
  i32.eq
  if
   local.get $1
   local.get $5
   i32.store offset=96
   local.get $5
   i32.eqz
   if
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    local.tee $1
    i32.load offset=4
    i32.const -2
    local.get $3
    i32.rotl
    i32.and
    local.set $3
    local.get $1
    local.get $3
    i32.store offset=4
    local.get $3
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $2
     i32.rotl
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $1
   i32.load
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1392
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $1
  i32.const 4
  i32.add
  local.get $2
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 1392
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $2
   local.get $2
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $5
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $5
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store offset=4
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $5
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $2
  local.get $1
  i64.extend_i32_u
  i64.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 382
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.load offset=1568
  local.tee $3
  if
   local.get $3
   i32.const 4
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1392
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   local.get $1
   i32.const 16
   i32.sub
   local.tee $5
   i32.eq
   if
    local.get $3
    i32.load
    local.set $4
    local.get $5
    local.set $1
   end
  else
   local.get $0
   i32.const 1572
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1392
    i32.const 402
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.wrap_i64
  i32.const -16
  i32.and
  local.get $1
  i32.sub
  local.tee $3
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $3
  i32.const 8
  i32.sub
  local.tee $3
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 4
  i32.add
  local.get $3
  i32.add
  local.tee $3
  i32.const 2
  i32.store
  local.get $0
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $1
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
   local.get $1
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  i32.const 39408
  i32.const 0
  i32.store
  i32.const 40976
  i32.const 0
  i32.store
  loop $for-loop|0
   local.get $0
   i32.const 23
   i32.lt_u
   if
    local.get $0
    i32.const 2
    i32.shl
    i32.const 39408
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $1
    loop $for-loop|1
     local.get $1
     i32.const 16
     i32.lt_u
     if
      local.get $0
      i32.const 4
      i32.shl
      local.get $1
      i32.add
      i32.const 2
      i32.shl
      i32.const 39408
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 39408
  i32.const 40980
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 39408
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      br_table $case0|0 $case1|0 $case2|0 $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    loop $while-continue|1
     local.get $0
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $1
      local.get $0
      i32.load offset=4
      local.tee $2
      i32.const 3
      i32.and
      i32.ne
      if
       local.get $0
       local.get $2
       i32.const -4
       i32.and
       local.get $1
       i32.or
       i32.store offset=4
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       return
      end
      local.get $0
      i32.load offset=4
      i32.const -4
      i32.and
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/toSpace
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.set $0
     loop $while-continue|0
      local.get $0
      i32.const 39396
      i32.lt_u
      if
       local.get $0
       i32.load
       call $~lib/rt/itcms/__visit
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       br $while-continue|0
      end
     end
     global.get $~lib/rt/itcms/iter
     i32.load offset=4
     i32.const -4
     i32.and
     local.set $0
     loop $while-continue|2
      local.get $0
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $1
       local.get $0
       i32.load offset=4
       local.tee $2
       i32.const 3
       i32.and
       i32.ne
       if
        local.get $0
        local.get $2
        i32.const -4
        i32.and
        local.get $1
        i32.or
        i32.store offset=4
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
       end
       local.get $0
       i32.load offset=4
       i32.const -4
       i32.and
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $0
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $0
     global.set $~lib/rt/itcms/toSpace
     local.get $1
     global.set $~lib/rt/itcms/white
     local.get $0
     i32.load offset=4
     i32.const -4
     i32.and
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    return
   end
   global.get $~lib/rt/itcms/iter
   local.tee $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    i32.load offset=4
    local.tee $1
    i32.const -4
    i32.and
    global.set $~lib/rt/itcms/iter
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.get $1
    i32.const 3
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 1120
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 39396
    i32.lt_u
    if
     local.get $0
     i32.const 0
     i32.store offset=4
     local.get $0
     i32.const 0
     i32.store offset=8
    else
     global.get $~lib/rt/itcms/total
     local.get $0
     i32.load
     i32.const -4
     i32.and
     i32.const 4
     i32.add
     i32.sub
     global.set $~lib/rt/itcms/total
     local.get $0
     i32.const 4
     i32.add
     local.tee $0
     i32.const 39396
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      global.get $~lib/rt/tlsf/ROOT
      local.set $1
      local.get $0
      i32.const 4
      i32.sub
      local.set $2
      local.get $0
      i32.const 15
      i32.and
      i32.const 1
      local.get $0
      select
      if (result i32)
       i32.const 1
      else
       local.get $2
       i32.load
       i32.const 1
       i32.and
      end
      if
       i32.const 0
       i32.const 1392
       i32.const 562
       i32.const 3
       call $~lib/builtins/abort
       unreachable
      end
      local.get $2
      local.get $2
      i32.load
      i32.const 1
      i32.or
      i32.store
      local.get $1
      local.get $2
      call $~lib/rt/tlsf/insertBlock
     end
    end
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   local.tee $0
   local.get $0
   i32.store offset=4
   local.get $0
   local.get $0
   i32.store offset=8
   i32.const 0
   global.set $~lib/rt/itcms/state
  end
  i32.const 0
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $1
  else
   local.get $1
   i32.const 536870910
   i32.lt_u
   if
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
    local.set $1
   end
   local.get $1
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $2
   i32.const 7
   i32.sub
   local.set $2
  end
  local.get $1
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 334
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1392
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt$69
    i32.const 2048
    local.set $2
    loop $do-loop|0
     local.get $2
     call $~lib/rt/itcms/step
     i32.sub
     local.set $2
     global.get $~lib/rt/itcms/state
     i32.eqz
     if
      global.get $~lib/rt/itcms/total
      i64.extend_i32_u
      i64.const 200
      i64.mul
      i64.const 100
      i64.div_u
      i32.wrap_i64
      i32.const 1024
      i32.add
      global.set $~lib/rt/itcms/threshold
      br $__inlined_func$~lib/rt/itcms/interrupt$69
     end
     local.get $2
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    local.tee $2
    local.get $2
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
    i32.add
    global.set $~lib/rt/itcms/threshold
   end
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.set $4
  local.get $0
  i32.const 16
  i32.add
  local.tee $2
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1056
   i32.const 1392
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $2
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $2
   i32.const 19
   i32.add
   i32.const -16
   i32.and
   i32.const 4
   i32.sub
  end
  local.tee $5
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   memory.size
   local.tee $2
   local.get $5
   i32.const 256
   i32.ge_u
   if (result i32)
    local.get $5
    i32.const 536870910
    i32.lt_u
    if (result i32)
     local.get $5
     i32.const 1
     i32.const 27
     local.get $5
     i32.clz
     i32.sub
     i32.shl
     i32.add
     i32.const 1
     i32.sub
    else
     local.get $5
    end
   else
    local.get $5
   end
   i32.const 4
   local.get $4
   i32.load offset=1568
   local.get $2
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $2
   local.get $3
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $4
   local.get $2
   i32.const 16
   i32.shl
   memory.size
   i64.extend_i32_s
   i64.const 16
   i64.shl
   call $~lib/rt/tlsf/addMemory
   local.get $4
   local.get $5
   call $~lib/rt/tlsf/searchBlock
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1392
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $5
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $2
  i32.load
  local.set $6
  local.get $5
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1392
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.const -4
  i32.and
  local.get $5
  i32.sub
  local.tee $3
  i32.const 16
  i32.ge_u
  if
   local.get $2
   local.get $5
   local.get $6
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $2
   i32.const 4
   i32.add
   local.get $5
   i32.add
   local.tee $5
   local.get $3
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $4
   local.get $5
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $2
   local.get $6
   i32.const -2
   i32.and
   i32.store
   local.get $2
   i32.const 4
   i32.add
   local.get $2
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   local.get $3
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  global.get $~lib/rt/itcms/fromSpace
  local.tee $1
  i32.load offset=8
  local.set $3
  local.get $2
  local.get $1
  global.get $~lib/rt/itcms/white
  i32.or
  i32.store offset=4
  local.get $2
  local.get $3
  i32.store offset=8
  local.get $3
  local.get $2
  local.get $3
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  global.get $~lib/rt/itcms/total
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.tee $1
  i32.const 0
  local.get $0
  memory.fill
  local.get $1
 )
 (func $~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 295
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/white
  local.tee $3
  local.get $1
  i32.const 20
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $3
   i32.eqz
   local.get $0
   i32.const 20
   i32.sub
   local.tee $0
   i32.load offset=4
   i32.const 3
   i32.and
   local.tee $3
   i32.eq
   if
    local.get $0
    local.get $1
    local.get $2
    select
    call $~lib/rt/itcms/Object#makeGray
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    local.get $3
    i32.const 3
    i32.eq
    i32.and
    if
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $~lib/util/number/utoa32_dec_lut (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  loop $while-continue|0
   local.get $1
   i32.const 10000
   i32.ge_u
   if
    local.get $1
    i32.const 10000
    i32.rem_u
    local.set $3
    local.get $1
    i32.const 10000
    i32.div_u
    local.set $1
    local.get $0
    local.get $2
    i32.const 4
    i32.sub
    local.tee $2
    i32.const 1
    i32.shl
    i32.add
    local.get $3
    i32.const 100
    i32.div_u
    i32.const 2
    i32.shl
    i32.const 1836
    i32.add
    i64.load32_u
    local.get $3
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.const 1836
    i32.add
    i64.load32_u
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $while-continue|0
   end
  end
  local.get $1
  i32.const 100
  i32.ge_u
  if
   local.get $0
   local.get $2
   i32.const 2
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 100
   i32.rem_u
   i32.const 2
   i32.shl
   i32.const 1836
   i32.add
   i32.load
   i32.store
   local.get $1
   i32.const 100
   i32.div_u
   local.set $1
  end
  local.get $1
  i32.const 10
  i32.ge_u
  if
   local.get $0
   local.get $2
   i32.const 2
   i32.sub
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 2
   i32.shl
   i32.const 1836
   i32.add
   i32.load
   i32.store
  else
   local.get $0
   local.get $2
   i32.const 1
   i32.sub
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 48
   i32.add
   i32.store16
  end
 )
 (func $~lib/rt/itcms/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.const 20
  i32.sub
  local.tee $3
  i32.load
  i32.const -4
  i32.and
  i32.const 16
  i32.sub
  i32.le_u
  if
   local.get $3
   local.get $1
   i32.store offset=16
   local.get $0
   return
  end
  local.get $1
  local.get $3
  i32.load offset=12
  call $~lib/rt/itcms/__new
  local.tee $2
  local.get $0
  local.get $1
  local.get $3
  i32.load offset=16
  local.tee $0
  local.get $0
  local.get $1
  i32.gt_u
  select
  memory.copy
  local.get $2
 )
 (func $~lib/string/String.fromCharCode@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const -1
   local.set $1
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 2
  local.get $1
  i32.const 0
  i32.gt_s
  local.tee $3
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  local.get $2
  local.get $0
  i32.store16
  local.get $3
  if
   local.get $2
   local.get $1
   i32.store16 offset=2
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/math/ipow32 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 5
  local.set $1
  i32.const 1
  local.set $2
  local.get $0
  i32.const 0
  i32.le_s
  if
   local.get $0
   i32.eqz
   return
  else
   local.get $0
   i32.const 1
   i32.eq
   if
    i32.const 5
    return
   else
    local.get $0
    i32.const 2
    i32.eq
    if
     i32.const 25
     return
    else
     local.get $0
     i32.const 32
     i32.lt_s
     if
      block $break|0
       block $case4|0
        block $case3|0
         block $case2|0
          block $case1|0
           block $case0|0
            i32.const 31
            local.get $0
            i32.clz
            i32.sub
            br_table $case4|0 $case3|0 $case2|0 $case1|0 $case0|0 $break|0
           end
           i32.const 5
           i32.const 1
           local.get $0
           i32.const 1
           i32.and
           select
           local.set $2
           local.get $0
           i32.const 1
           i32.shr_u
           local.set $0
           i32.const 25
           local.set $1
          end
          local.get $1
          local.get $2
          i32.mul
          local.get $2
          local.get $0
          i32.const 1
          i32.and
          select
          local.set $2
          local.get $0
          i32.const 1
          i32.shr_u
          local.set $0
          local.get $1
          local.get $1
          i32.mul
          local.set $1
         end
         local.get $1
         local.get $2
         i32.mul
         local.get $2
         local.get $0
         i32.const 1
         i32.and
         select
         local.set $2
         local.get $0
         i32.const 1
         i32.shr_u
         local.set $0
         local.get $1
         local.get $1
         i32.mul
         local.set $1
        end
        local.get $1
        local.get $2
        i32.mul
        local.get $2
        local.get $0
        i32.const 1
        i32.and
        select
        local.set $2
        local.get $0
        i32.const 1
        i32.shr_u
        local.set $0
        local.get $1
        local.get $1
        i32.mul
        local.set $1
       end
       local.get $1
       local.get $2
       i32.mul
       local.get $2
       local.get $0
       i32.const 1
       i32.and
       select
       local.set $2
      end
      local.get $2
      return
     end
    end
   end
  end
  loop $while-continue|1
   local.get $0
   if
    local.get $1
    local.get $2
    i32.mul
    local.get $2
    local.get $0
    i32.const 1
    i32.and
    select
    local.set $2
    local.get $0
    i32.const 1
    i32.shr_u
    local.set $0
    local.get $1
    local.get $1
    i32.mul
    local.set $1
    br $while-continue|1
   end
  end
  local.get $2
 )
 (func $~lib/math/NativeMath.scalbn (param $0 f64) (param $1 i32) (result f64)
  local.get $1
  i32.const 1023
  i32.gt_s
  if (result f64)
   local.get $0
   f64.const 8988465674311579538646525e283
   f64.mul
   local.set $0
   local.get $1
   i32.const 1023
   i32.sub
   local.tee $1
   i32.const 1023
   i32.gt_s
   if (result f64)
    i32.const 1023
    local.get $1
    i32.const 1023
    i32.sub
    local.tee $1
    local.get $1
    i32.const 1023
    i32.ge_s
    select
    local.set $1
    local.get $0
    f64.const 8988465674311579538646525e283
    f64.mul
   else
    local.get $0
   end
  else
   local.get $1
   i32.const -1022
   i32.lt_s
   if (result f64)
    local.get $0
    f64.const 2.004168360008973e-292
    f64.mul
    local.set $0
    local.get $1
    i32.const 969
    i32.add
    local.tee $1
    i32.const -1022
    i32.lt_s
    if (result f64)
     i32.const -1022
     local.get $1
     i32.const 969
     i32.add
     local.tee $1
     local.get $1
     i32.const -1022
     i32.le_s
     select
     local.set $1
     local.get $0
     f64.const 2.004168360008973e-292
     f64.mul
    else
     local.get $0
    end
   else
    local.get $0
   end
  end
  local.get $1
  i64.extend_i32_s
  i64.const 1023
  i64.add
  i64.const 52
  i64.shl
  f64.reinterpret_i64
  f64.mul
 )
 (func $~lib/rt/itcms/__pin (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $1
   i32.load offset=4
   i32.const 3
   i32.and
   i32.const 3
   i32.eq
   if
    i32.const 6416
    i32.const 1120
    i32.const 338
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   call $~lib/rt/itcms/Object#unlink
   global.get $~lib/rt/itcms/pinSpace
   local.tee $3
   i32.load offset=8
   local.set $2
   local.get $1
   local.get $3
   i32.const 3
   i32.or
   i32.store offset=4
   local.get $1
   local.get $2
   i32.store offset=8
   local.get $2
   local.get $1
   local.get $2
   i32.load offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store offset=4
   local.get $3
   local.get $1
   i32.store offset=8
  end
  local.get $0
 )
 (func $~lib/rt/itcms/__unpin (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.const 3
  i32.ne
  if
   i32.const 6480
   i32.const 1120
   i32.const 352
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/state
  i32.const 1
  i32.eq
  if
   local.get $1
   call $~lib/rt/itcms/Object#makeGray
  else
   local.get $1
   call $~lib/rt/itcms/Object#unlink
   global.get $~lib/rt/itcms/fromSpace
   local.tee $0
   i32.load offset=8
   local.set $2
   local.get $1
   local.get $0
   global.get $~lib/rt/itcms/white
   i32.or
   i32.store offset=4
   local.get $1
   local.get $2
   i32.store offset=8
   local.get $2
   local.get $1
   local.get $2
   i32.load offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store offset=4
   local.get $0
   local.get $1
   i32.store offset=8
  end
 )
 (func $~lib/rt/itcms/__collect
  global.get $~lib/rt/itcms/state
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    global.get $~lib/rt/itcms/state
    if
     call $~lib/rt/itcms/step
     drop
     br $while-continue|0
    end
   end
  end
  call $~lib/rt/itcms/step
  drop
  loop $while-continue|1
   global.get $~lib/rt/itcms/state
   if
    call $~lib/rt/itcms/step
    drop
    br $while-continue|1
   end
  end
  global.get $~lib/rt/itcms/total
  i64.extend_i32_u
  i64.const 200
  i64.mul
  i64.const 100
  i64.div_u
  i32.wrap_i64
  i32.const 1024
  i32.add
  global.set $~lib/rt/itcms/threshold
 )
 (func $~lib/map/Map<~lib/string/String,~lib/string/String>~visit (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.store
  local.get $0
  i32.load
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=8
  local.tee $2
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.gt_u
   if
    local.get $1
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $1
     i32.load
     call $~lib/rt/itcms/__visit
     local.get $1
     i32.load offset=4
     call $~lib/rt/itcms/__visit
    end
    local.get $1
    i32.const 12
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
  local.get $2
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<~lib/string/String>~visit (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $2
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $2
  loop $while-continue|0
   local.get $1
   local.get $2
   i32.lt_u
   if
    local.get $1
    i32.load
    local.tee $3
    if
     local.get $3
     call $~lib/rt/itcms/__visit
    end
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  block $folding-inner1
   block $folding-inner0
    block $invalid
     block $~lib/array/Array<i32>
      block $~lib/assemblyscript-json/assembly/JSON/Null
       block $~lib/assemblyscript-json/assembly/JSON/Integer
        block $~lib/assemblyscript-json/assembly/JSON/Num
         block $~lib/assemblyscript-json/assembly/JSON/Float
          block $~lib/assemblyscript-json/assembly/JSON/Bool
           block $~lib/assemblyscript-json/assembly/decoder/DecoderState
            block $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>
             block $~lib/array/Array<~lib/assemblyscript-json/assembly/JSON/Value>
              block $~lib/assemblyscript-json/assembly/decoder/JSONHandler
               block $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/assembly/JSON/Value>
                block $~lib/assemblyscript-json/assembly/JSON/Value
                 block $~lib/array/Array<~lib/string/String>
                  block $~lib/map/Map<~lib/string/String,~lib/string/String>
                   block $~lib/string/String
                    block $~lib/arraybuffer/ArrayBuffer
                     block $~lib/object/Object
                      local.get $0
                      i32.const 8
                      i32.sub
                      i32.load
                      br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $folding-inner0 $~lib/map/Map<~lib/string/String,~lib/string/String> $~lib/array/Array<~lib/string/String> $folding-inner0 $folding-inner1 $~lib/assemblyscript-json/assembly/JSON/Value $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/assembly/JSON/Value> $folding-inner0 $folding-inner1 $~lib/assemblyscript-json/assembly/decoder/JSONHandler $~lib/array/Array<~lib/assemblyscript-json/assembly/JSON/Value> $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler> $~lib/assemblyscript-json/assembly/decoder/DecoderState $folding-inner1 $folding-inner1 $~lib/assemblyscript-json/assembly/JSON/Bool $~lib/assemblyscript-json/assembly/JSON/Float $~lib/assemblyscript-json/assembly/JSON/Num $~lib/assemblyscript-json/assembly/JSON/Integer $~lib/assemblyscript-json/assembly/JSON/Null $~lib/array/Array<i32> $invalid
                     end
                     return
                    end
                    return
                   end
                   return
                  end
                  local.get $0
                  call $~lib/map/Map<~lib/string/String,~lib/string/String>~visit
                  return
                 end
                 local.get $0
                 call $~lib/array/Array<~lib/string/String>~visit
                 return
                end
                return
               end
               local.get $0
               call $~lib/map/Map<~lib/string/String,~lib/string/String>~visit
               return
              end
              return
             end
             local.get $0
             call $~lib/array/Array<~lib/string/String>~visit
             return
            end
            local.get $0
            i32.load
            local.tee $1
            if
             local.get $1
             call $~lib/rt/itcms/__visit
            end
            local.get $0
            i32.load offset=4
            local.tee $0
            if
             local.get $0
             call $~lib/rt/itcms/__visit
            end
            return
           end
           local.get $0
           i32.load
           local.tee $1
           if
            local.get $1
            call $~lib/rt/itcms/__visit
           end
           local.get $0
           i32.load offset=8
           local.tee $0
           if
            local.get $0
            call $~lib/rt/itcms/__visit
           end
           return
          end
          return
         end
         return
        end
        return
       end
       return
      end
      return
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 6628
     i32.lt_s
     if
      i32.const 39424
      i32.const 39472
      i32.const 1
      i32.const 1
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     i32.const 0
     i32.store
     local.get $1
     local.get $0
     i32.store
     local.get $0
     i32.load
     call $~lib/rt/itcms/__visit
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     return
    end
    unreachable
   end
   local.get $0
   i32.load
   local.tee $0
   if
    local.get $0
    call $~lib/rt/itcms/__visit
   end
   return
  end
  local.get $0
  i32.load
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/map/Map<~lib/string/String,~lib/string/String>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 24
  i32.const 4
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 3
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 4
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   block $__inlined_func$~lib/string/String#concat$531 (result i32)
    local.get $2
    local.get $0
    i32.store
    local.get $2
    local.get $1
    i32.store offset=4
    local.get $2
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 6628
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $5
    i64.const 0
    i64.store
    local.get $5
    local.get $0
    i32.store
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const -2
    i32.and
    local.set $2
    local.get $5
    local.get $1
    i32.store
    local.get $1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const -2
    i32.and
    local.tee $3
    local.get $2
    i32.add
    local.tee $4
    i32.eqz
    if
     local.get $5
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 3408
     br $__inlined_func$~lib/string/String#concat$531
    end
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $4
    i32.store offset=4
    local.get $4
    local.get $0
    local.get $2
    memory.copy
    local.get $2
    local.get $4
    i32.add
    local.get $1
    local.get $3
    memory.copy
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $4
   end
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 39424
  i32.const 39472
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/index/processHeaders
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 1568
  i32.store offset=4
  i64.const 1152903912420802560
  i32.const 50000
  i32.const 51000
  call $assembly/bitcoin/retarget
  call $~lib/util/number/itoa64
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  i32.const 1568
  local.get $0
  call $~lib/string/String.__concat
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/@vsc.eco/sdk/assembly/index/console.log
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/dataview/DataView#constructor@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   block $2of2
    block $1of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $1of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=16
    local.set $1
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.store
   local.get $2
   local.get $0
   i32.store offset=4
   local.get $2
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   i32.const 0
   i32.store offset=8
   local.get $2
   i32.const 12
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   i32.const 0
   i32.store
   local.get $2
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   i32.const 0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   local.get $1
   i32.lt_u
   local.get $1
   i32.const 1073741820
   i32.gt_u
   i32.or
   if
    i32.const 1456
    i32.const 3440
    i32.const 25
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $2
   i32.store offset=4
   local.get $3
   local.get $0
   i32.store offset=8
   local.get $2
   local.get $0
   i32.store
   local.get $2
   local.get $0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 39424
  i32.const 39472
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/assemblyscript-json/assembly/util/index/Buffer.fromString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   local.get $0
   i32.store
   i32.const 2
   global.set $~argumentsLength
   local.get $3
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   local.get $0
   local.tee $1
   i32.store
   local.get $0
   local.tee $2
   i32.const 20
   i32.sub
   i32.load offset=16
   local.get $0
   i32.add
   local.set $4
   i32.const 0
   local.set $0
   loop $while-continue|0
    local.get $2
    local.get $4
    i32.lt_u
    if
     local.get $2
     i32.load16_u
     local.tee $5
     i32.const 128
     i32.lt_u
     if (result i32)
      local.get $0
      i32.const 1
      i32.add
     else
      local.get $5
      i32.const 2048
      i32.lt_u
      if (result i32)
       local.get $0
       i32.const 2
       i32.add
      else
       local.get $5
       i32.const 64512
       i32.and
       i32.const 55296
       i32.eq
       local.get $2
       i32.const 2
       i32.add
       local.get $4
       i32.lt_u
       i32.and
       if
        local.get $2
        i32.load16_u offset=2
        i32.const 64512
        i32.and
        i32.const 56320
        i32.eq
        if
         local.get $0
         i32.const 4
         i32.add
         local.set $0
         local.get $2
         i32.const 4
         i32.add
         local.set $2
         br $while-continue|0
        end
       end
       local.get $0
       i32.const 3
       i32.add
      end
     end
     local.set $0
     local.get $2
     i32.const 2
     i32.add
     local.set $2
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const -2
   i32.and
   i32.add
   local.set $5
   local.get $2
   local.set $0
   loop $while-continue|00
    local.get $1
    local.get $5
    i32.lt_u
    if
     local.get $1
     i32.load16_u
     local.tee $6
     i32.const 128
     i32.lt_u
     if (result i32)
      local.get $0
      local.get $6
      i32.store8
      local.get $0
      i32.const 1
      i32.add
     else
      local.get $6
      i32.const 2048
      i32.lt_u
      if (result i32)
       local.get $0
       local.get $6
       i32.const 6
       i32.shr_u
       i32.const 192
       i32.or
       local.get $6
       i32.const 63
       i32.and
       i32.const 128
       i32.or
       i32.const 8
       i32.shl
       i32.or
       i32.store16
       local.get $0
       i32.const 2
       i32.add
      else
       local.get $6
       i32.const 63488
       i32.and
       i32.const 55296
       i32.eq
       if
        local.get $6
        i32.const 56320
        i32.lt_u
        local.get $1
        i32.const 2
        i32.add
        local.get $5
        i32.lt_u
        i32.and
        if
         local.get $1
         i32.load16_u offset=2
         local.tee $4
         i32.const 64512
         i32.and
         i32.const 56320
         i32.eq
         if
          local.get $0
          local.get $6
          i32.const 1023
          i32.and
          i32.const 10
          i32.shl
          i32.const 65536
          i32.add
          local.get $4
          i32.const 1023
          i32.and
          i32.or
          local.tee $4
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.const 24
          i32.shl
          local.get $4
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.const 16
          i32.shl
          i32.or
          local.get $4
          i32.const 12
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.const 8
          i32.shl
          i32.or
          local.get $4
          i32.const 18
          i32.shr_u
          i32.const 240
          i32.or
          i32.or
          i32.store
          local.get $0
          i32.const 4
          i32.add
          local.set $0
          local.get $1
          i32.const 4
          i32.add
          local.set $1
          br $while-continue|00
         end
        end
       end
       local.get $0
       local.get $6
       i32.const 12
       i32.shr_u
       i32.const 224
       i32.or
       local.get $6
       i32.const 6
       i32.shr_u
       i32.const 63
       i32.and
       i32.const 128
       i32.or
       i32.const 8
       i32.shl
       i32.or
       i32.store16
       local.get $0
       local.get $6
       i32.const 63
       i32.and
       i32.const 128
       i32.or
       i32.store8 offset=2
       local.get $0
       i32.const 3
       i32.add
      end
     end
     local.set $0
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $while-continue|00
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   local.get $2
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.eqz
   if
    block $__inlined_func$~lib/typedarray/Uint8Array#constructor$3 (result i32)
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.sub
     global.set $~lib/memory/__stack_pointer
     block $folding-inner00
      global.get $~lib/memory/__stack_pointer
      i32.const 6628
      i32.lt_s
      br_if $folding-inner00
      global.get $~lib/memory/__stack_pointer
      local.tee $0
      i64.const 0
      i64.store
      local.get $0
      i32.const 12
      i32.const 10
      call $~lib/rt/itcms/__new
      local.tee $0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      local.get $0
      i32.store offset=4
      local.get $1
      i32.const 16
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 6628
      i32.lt_s
      br_if $folding-inner00
      global.get $~lib/memory/__stack_pointer
      local.tee $2
      i64.const 0
      i64.store
      local.get $2
      i64.const 0
      i64.store offset=8
      local.get $0
      i32.eqz
      if
       local.get $2
       i32.const 12
       i32.const 3
       call $~lib/rt/itcms/__new
       local.tee $0
       i32.store
      end
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=4
      local.get $0
      i32.const 0
      i32.store
      local.get $0
      i32.const 0
      i32.const 0
      call $~lib/rt/itcms/__link
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=4
      local.get $0
      i32.const 0
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=4
      local.get $0
      i32.const 0
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.const 1
      call $~lib/rt/itcms/__new
      local.tee $2
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=12
      local.get $0
      local.get $2
      i32.store
      local.get $0
      local.get $2
      i32.const 0
      call $~lib/rt/itcms/__link
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=4
      local.get $0
      local.get $2
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=4
      local.get $0
      i32.const 0
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      i32.const 16
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $1
      local.get $0
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $0
      br $__inlined_func$~lib/typedarray/Uint8Array#constructor$3
     end
     br $folding-inner1
    end
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    return
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $2
   i32.store
   i32.const 1
   global.set $~argumentsLength
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $2
   i32.store
   local.get $0
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
   local.get $2
   i32.store
   local.get $0
   local.get $2
   i32.store offset=4
   local.get $2
   i32.const 20
   i32.sub
   i32.load offset=16
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store offset=8
   local.get $1
   local.get $2
   i32.store
   local.get $1
   local.get $2
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $1
   local.get $0
   i32.store offset=8
   local.get $1
   local.get $2
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 39424
  i32.const 39472
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/assembly/JSON/Value>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store
  local.get $0
  i64.const 0
  i64.store offset=8
  local.get $0
  i32.const 16
  i32.const 13
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 32
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#get:state (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=4
  local.tee $0
  i32.store offset=4
  local.get $0
  i32.eqz
  if
   i32.const 3776
   i32.const 3904
   i32.const 127
   i32.const 26
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#get:length (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.store
  local.get $0
  i32.load offset=8
  local.set $0
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 1248
   i32.const 3664
   i32.const 167
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.load8_u
  local.set $0
  local.get $2
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#peekChar (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#get:state
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.load offset=4
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#get:state
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=8
  local.tee $2
  i32.store
  local.get $2
  call $~lib/typedarray/Uint8Array#get:length
  local.get $1
  i32.le_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const -1
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#get:state
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=8
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#get:state
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $1
  local.get $0
  i32.load offset=4
  call $~lib/typedarray/Uint8Array#__get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#readChar (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 0
  i64.store offset=8
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $0
  call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#get:state
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.load offset=4
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#get:state
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=8
  local.tee $2
  i32.store
  local.get $2
  call $~lib/typedarray/Uint8Array#get:length
  local.get $1
  i32.le_s
  if
   i32.const 4016
   i32.const 3904
   i32.const 156
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#get:state
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=8
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#get:state
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  local.get $0
  call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#get:state
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $2
  local.get $0
  i32.load offset=4
  local.tee $0
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $1
  local.get $0
  call $~lib/typedarray/Uint8Array#__get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#skipWhitespace (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  loop $while-continue|0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   local.get $0
   i32.store offset=4
   local.get $0
   call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#peekChar
   local.tee $1
   i32.const 10
   i32.eq
   local.get $1
   i32.const 9
   i32.eq
   i32.or
   local.get $1
   i32.const 13
   i32.eq
   i32.or
   local.get $1
   i32.const 32
   i32.eq
   i32.or
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#readChar
    drop
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/string/String#charCodeAt (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   local.get $2
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const -1
   return
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/assemblyscript-json/assembly/JSON/Value#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $0
  i32.eqz
  if
   local.get $1
   i32.const 0
   i32.const 8
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store offset=4
  local.get $1
  local.get $0
  call $~lib/object/Object#constructor
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/assembly/JSON/Value>#get:length (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.store
  local.get $0
  i32.load offset=12
  local.set $0
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $3
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 268435455
   i32.gt_u
   if
    i32.const 1456
    i32.const 3728
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 8
   local.get $1
   local.get $1
   i32.const 8
   i32.le_u
   select
   i32.const 2
   i32.shl
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $2
   if
    i32.const 1073741820
    local.get $3
    i32.const 1
    i32.shl
    local.tee $2
    local.get $2
    i32.const 1073741820
    i32.ge_u
    select
    local.tee $2
    local.get $1
    local.get $1
    local.get $2
    i32.lt_u
    select
    local.set $1
   end
   local.get $0
   i32.load
   local.tee $4
   local.get $1
   call $~lib/rt/itcms/__renew
   local.tee $2
   local.get $4
   i32.ne
   if
    local.get $0
    local.get $2
    i32.store
    local.get $0
    local.get $2
    i32.store offset=4
    local.get $0
    local.get $2
    i32.const 0
    call $~lib/rt/itcms/__link
   end
   local.get $0
   local.get $1
   i32.store offset=8
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/assembly/JSON/Value>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  i32.store
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  i32.const 1
  call $~lib/array/ensureCapacity
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $3
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/assembly/JSON/Value>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1248
   i32.const 3728
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.store offset=4
  local.get $0
  i32.eqz
  if
   i32.const 4112
   i32.const 3728
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/assemblyscript-json/assembly/JSON/Handler#get:peek (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  local.get $0
  i32.load
  local.tee $2
  i32.store
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $0
  i32.load
  local.tee $0
  i32.store offset=4
  local.get $2
  local.get $0
  call $~lib/array/Array<~lib/assemblyscript-json/assembly/JSON/Value>#get:length
  i32.const 1
  i32.sub
  call $~lib/array/Array<~lib/assemblyscript-json/assembly/JSON/Value>#__get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/util/hash/HASH<~lib/string/String> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  block $~lib/util/hash/hashStr|inlined.0 (result i32)
   local.get $1
   local.get $0
   i32.store
   i32.const 0
   local.get $0
   i32.eqz
   br_if $~lib/util/hash/hashStr|inlined.0
   drop
   local.get $1
   local.get $0
   local.tee $1
   i32.store offset=4
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const -2
   i32.and
   local.tee $3
   i32.const 16
   i32.ge_u
   if (result i32)
    i32.const 606290984
    local.set $2
    i32.const -2048144777
    local.set $4
    i32.const 1640531535
    local.set $5
    local.get $1
    local.get $3
    i32.add
    i32.const 16
    i32.sub
    local.set $7
    loop $while-continue|0
     local.get $1
     local.get $7
     i32.le_u
     if
      local.get $2
      local.get $1
      i32.load
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $2
      local.get $4
      local.get $1
      i32.load offset=4
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $4
      local.get $6
      local.get $1
      i32.load offset=8
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $6
      local.get $5
      local.get $1
      i32.load offset=12
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $5
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      br $while-continue|0
     end
    end
    local.get $3
    local.get $2
    i32.const 1
    i32.rotl
    local.get $4
    i32.const 7
    i32.rotl
    i32.add
    local.get $6
    i32.const 12
    i32.rotl
    i32.add
    local.get $5
    i32.const 18
    i32.rotl
    i32.add
    i32.add
   else
    local.get $3
    i32.const 374761393
    i32.add
   end
   local.set $2
   local.get $0
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.set $4
   loop $while-continue|1
    local.get $1
    local.get $4
    i32.le_u
    if
     local.get $2
     local.get $1
     i32.load
     i32.const -1028477379
     i32.mul
     i32.add
     i32.const 17
     i32.rotl
     i32.const 668265263
     i32.mul
     local.set $2
     local.get $1
     i32.const 4
     i32.add
     local.set $1
     br $while-continue|1
    end
   end
   local.get $0
   local.get $3
   i32.add
   local.set $0
   loop $while-continue|2
    local.get $0
    local.get $1
    i32.gt_u
    if
     local.get $2
     local.get $1
     i32.load8_u
     i32.const 374761393
     i32.mul
     i32.add
     i32.const 11
     i32.rotl
     i32.const -1640531535
     i32.mul
     local.set $2
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $while-continue|2
    end
   end
   local.get $2
   local.get $2
   i32.const 15
   i32.shr_u
   i32.xor
   i32.const -2048144777
   i32.mul
   local.tee $0
   local.get $0
   i32.const 13
   i32.shr_u
   i32.xor
   i32.const -1028477379
   i32.mul
   local.tee $0
   local.get $0
   i32.const 16
   i32.shr_u
   i32.xor
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $0
  local.get $1
  i32.eq
  if
   local.get $2
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1
   return
  end
  block $folding-inner0
   local.get $1
   i32.eqz
   local.get $0
   i32.eqz
   i32.or
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.tee $2
   local.get $0
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.set $3
   local.get $2
   local.get $1
   i32.store
   local.get $3
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.ne
   br_if $folding-inner0
   local.get $4
   local.get $0
   i32.store
   local.get $0
   local.set $2
   local.get $4
   local.get $1
   i32.store offset=4
   local.get $3
   local.tee $0
   i32.const 4
   i32.ge_u
   if (result i32)
    local.get $2
    i32.const 7
    i32.and
    local.get $1
    i32.const 7
    i32.and
    i32.or
   else
    i32.const 1
   end
   i32.eqz
   if
    loop $do-loop|0
     local.get $2
     i64.load
     local.get $1
     i64.load
     i64.eq
     if
      local.get $2
      i32.const 8
      i32.add
      local.set $2
      local.get $1
      i32.const 8
      i32.add
      local.set $1
      local.get $0
      i32.const 4
      i32.sub
      local.tee $0
      i32.const 4
      i32.ge_u
      br_if $do-loop|0
     end
    end
   end
   block $__inlined_func$~lib/util/string/compareImpl$206
    loop $while-continue|1
     local.get $0
     local.tee $3
     i32.const 1
     i32.sub
     local.set $0
     local.get $3
     if
      local.get $2
      i32.load16_u
      local.tee $5
      local.get $1
      i32.load16_u
      local.tee $4
      i32.sub
      local.set $3
      local.get $4
      local.get $5
      i32.ne
      br_if $__inlined_func$~lib/util/string/compareImpl$206
      local.get $2
      i32.const 2
      i32.add
      local.set $2
      local.get $1
      i32.const 2
      i32.add
      local.set $1
      br $while-continue|1
     end
    end
    i32.const 0
    local.set $3
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   i32.eqz
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/assembly/JSON/Value>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i64.const 0
  i64.store
  local.get $3
  local.get $0
  i32.store
  local.get $0
  i32.load
  local.set $4
  local.get $3
  local.get $0
  i32.store
  local.get $4
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $2
  loop $while-continue|0
   local.get $2
   if
    local.get $2
    i32.load offset=8
    local.tee $0
    i32.const 1
    i32.and
    if (result i32)
     i32.const 0
    else
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $2
     i32.load
     local.tee $4
     i32.store
     local.get $3
     local.get $1
     i32.store offset=4
     local.get $4
     local.get $1
     call $~lib/string/String.__eq
    end
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $2
     return
    end
    local.get $0
    i32.const -2
    i32.and
    local.set $2
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/assembly/JSON/Value>#set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   i32.const 0
   i32.store offset=8
   local.get $3
   local.get $1
   i32.store
   local.get $1
   call $~lib/util/hash/HASH<~lib/string/String>
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $0
   local.get $1
   local.get $9
   call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/assembly/JSON/Value>#find
   local.tee $3
   if
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    local.get $3
    local.get $2
    i32.store offset=4
    local.get $0
    local.get $2
    i32.const 1
    call $~lib/rt/itcms/__link
   else
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    local.get $0
    i32.store
    local.get $0
    i32.load offset=16
    local.set $4
    local.get $3
    local.get $0
    i32.store
    local.get $4
    local.get $0
    i32.load offset=12
    i32.eq
    if
     local.get $3
     local.get $0
     i32.store
     local.get $3
     local.get $0
     i32.store offset=4
     local.get $0
     i32.load offset=20
     local.set $4
     local.get $3
     local.get $0
     i32.store offset=4
     local.get $4
     local.get $0
     i32.load offset=12
     i32.const 3
     i32.mul
     i32.const 4
     i32.div_s
     i32.lt_s
     if (result i32)
      local.get $3
      local.get $0
      i32.store offset=4
      local.get $0
      i32.load offset=4
     else
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=4
      local.get $0
      i32.load offset=4
      i32.const 1
      i32.shl
      i32.const 1
      i32.or
     end
     local.set $5
     global.get $~lib/memory/__stack_pointer
     i32.const 20
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 6628
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     i32.const 0
     i32.const 20
     memory.fill
     local.get $3
     local.get $5
     i32.const 1
     i32.add
     local.tee $3
     i32.const 2
     i32.shl
     call $~lib/arraybuffer/ArrayBuffer#constructor
     local.tee $11
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.const 3
     i32.shl
     i32.const 3
     i32.div_s
     local.tee $8
     i32.const 12
     i32.mul
     call $~lib/arraybuffer/ArrayBuffer#constructor
     local.tee $4
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     local.get $0
     i32.load offset=8
     local.set $12
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     local.get $12
     local.get $0
     i32.load offset=16
     i32.const 12
     i32.mul
     i32.add
     local.set $7
     local.get $4
     local.set $3
     loop $while-continue|0
      local.get $7
      local.get $12
      i32.ne
      if
       local.get $12
       i32.load offset=8
       i32.const 1
       i32.and
       i32.eqz
       if
        global.get $~lib/memory/__stack_pointer
        local.tee $10
        local.get $12
        i32.load
        local.tee $13
        i32.store offset=12
        local.get $10
        local.get $13
        i32.store offset=8
        local.get $3
        local.get $13
        i32.store
        local.get $10
        local.get $12
        i32.load offset=4
        local.tee $6
        i32.store offset=8
        local.get $3
        local.get $6
        i32.store offset=4
        local.get $10
        local.get $13
        i32.store offset=8
        local.get $3
        local.get $11
        local.get $13
        call $~lib/util/hash/HASH<~lib/string/String>
        local.get $5
        i32.and
        i32.const 2
        i32.shl
        i32.add
        local.tee $6
        i32.load
        i32.store offset=8
        local.get $6
        local.get $3
        i32.store
        local.get $3
        i32.const 12
        i32.add
        local.set $3
       end
       local.get $12
       i32.const 12
       i32.add
       local.set $12
       br $while-continue|0
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $0
     i32.store offset=8
     local.get $3
     local.get $11
     i32.store offset=16
     local.get $0
     local.get $11
     i32.store
     local.get $0
     local.get $11
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     local.get $0
     local.get $5
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=16
     local.get $0
     local.get $4
     i32.store offset=8
     local.get $0
     local.get $4
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     local.get $0
     local.get $8
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=16
     local.get $0
     local.get $0
     i32.load offset=20
     i32.store offset=16
     global.get $~lib/memory/__stack_pointer
     i32.const 20
     i32.add
     global.set $~lib/memory/__stack_pointer
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    local.get $0
    i32.store
    local.get $3
    local.get $0
    i32.load offset=8
    local.tee $4
    i32.store offset=8
    local.get $3
    local.get $0
    i32.store
    local.get $3
    local.get $0
    i32.store offset=4
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $5
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $3
    local.get $1
    i32.store
    local.get $4
    local.get $5
    i32.const 12
    i32.mul
    i32.add
    local.tee $3
    local.get $1
    i32.store
    local.get $0
    local.get $1
    i32.const 1
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    local.get $3
    local.get $2
    i32.store offset=4
    local.get $0
    local.get $2
    i32.const 1
    call $~lib/rt/itcms/__link
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $0
    local.get $0
    i32.load offset=20
    i32.const 1
    i32.add
    i32.store offset=20
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.load
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $3
    local.get $1
    local.get $9
    local.get $0
    i32.load offset=4
    i32.and
    i32.const 2
    i32.shl
    i32.add
    local.tee $0
    i32.load
    i32.store offset=8
    local.get $0
    local.get $3
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 39424
  i32.const 39472
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/assemblyscript-json/assembly/JSON/Handler#addValue (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.const 32
   memory.fill
   local.get $3
   local.get $1
   i32.store
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   if (result i32)
    i32.const 1
   else
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    local.get $0
    i32.store offset=4
    local.get $3
    local.get $0
    i32.load
    local.tee $3
    i32.store
    local.get $3
    call $~lib/array/Array<~lib/assemblyscript-json/assembly/JSON/Value>#get:length
   end
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store offset=8
    local.get $1
    local.get $0
    i32.load
    local.tee $0
    i32.store
    local.get $1
    local.get $2
    i32.store offset=4
    local.get $0
    local.get $2
    call $~lib/array/Array<~lib/assemblyscript-json/assembly/JSON/Value>#push
    global.get $~lib/memory/__stack_pointer
    i32.const 32
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store
   local.get $3
   local.get $0
   call $~lib/assemblyscript-json/assembly/JSON/Handler#get:peek
   local.tee $3
   i32.store offset=12
   local.get $3
   if (result i32)
    local.get $3
    i32.const 8
    i32.sub
    i32.load
    i32.const 7
    i32.eq
   else
    i32.const 0
   end
   if
    block $__inlined_func$~instanceof|~lib/assemblyscript-json/assembly/JSON/Obj$253 (result i32)
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $0
     i32.store offset=16
     local.get $3
     local.get $0
     call $~lib/assemblyscript-json/assembly/JSON/Handler#get:peek
     local.tee $0
     i32.store offset=20
     i32.const 0
     local.get $0
     i32.const 8
     i32.sub
     i32.load
     i32.const 7
     i32.ne
     br_if $__inlined_func$~instanceof|~lib/assemblyscript-json/assembly/JSON/Obj$253
     drop
     i32.const 1
    end
    i32.eqz
    if
     i32.const 4240
     i32.const 4304
     i32.const 78
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    local.get $0
    i32.store
    local.get $3
    local.get $1
    i32.store offset=4
    local.get $3
    local.get $2
    i32.store offset=8
    local.get $3
    i32.const 16
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 6628
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    i64.const 0
    i64.store
    local.get $3
    i64.const 0
    i64.store offset=8
    local.get $3
    local.get $0
    i32.store offset=12
    local.get $3
    local.get $0
    i32.load
    local.tee $0
    i32.store
    local.get $3
    local.get $1
    i32.store offset=4
    local.get $3
    local.get $2
    i32.store offset=8
    local.get $0
    local.get $1
    local.get $2
    call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/assembly/JSON/Value>#set
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.add
    global.set $~lib/memory/__stack_pointer
   else
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store
    local.get $1
    local.get $0
    call $~lib/assemblyscript-json/assembly/JSON/Handler#get:peek
    local.tee $1
    i32.store offset=24
    local.get $1
    if (result i32)
     local.get $1
     i32.const 8
     i32.sub
     i32.load
     i32.const 16
     i32.eq
    else
     i32.const 0
    end
    if
     block $__inlined_func$~instanceof|~lib/assemblyscript-json/assembly/JSON/Arr$255 (result i32)
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      local.get $0
      i32.store offset=8
      local.get $1
      local.get $0
      call $~lib/assemblyscript-json/assembly/JSON/Handler#get:peek
      local.tee $0
      i32.store offset=28
      i32.const 0
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      i32.const 16
      i32.ne
      br_if $__inlined_func$~instanceof|~lib/assemblyscript-json/assembly/JSON/Arr$255
      drop
      i32.const 1
     end
     i32.eqz
     if
      i32.const 4240
      i32.const 4304
      i32.const 80
      i32.const 13
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $0
     i32.store
     local.get $1
     local.get $2
     i32.store offset=4
     local.get $1
     i32.const 12
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 6628
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     i64.const 0
     i64.store
     local.get $1
     i32.const 0
     i32.store offset=8
     local.get $1
     local.get $0
     i32.store offset=8
     local.get $1
     local.get $0
     i32.load
     local.tee $0
     i32.store
     local.get $1
     local.get $2
     i32.store offset=4
     local.get $0
     local.get $2
     call $~lib/array/Array<~lib/assemblyscript-json/assembly/JSON/Value>#push
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 39424
  i32.const 39472
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/array/Array<~lib/string/String>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i64.const 0
  i64.store offset=8
  local.get $1
  i32.const 16
  i32.const 5
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 268435455
  i32.gt_u
  if
   i32.const 1456
   i32.const 3728
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  local.get $0
  local.get $0
  i32.const 8
  i32.le_u
  select
  i32.const 2
  i32.shl
  local.tee $1
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $2
  local.get $3
  i32.store
  local.get $2
  local.get $3
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $3
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/assemblyscript-json/assembly/decoder/DecoderState#readString@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $1of1
    block $0of1
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of1 $1of1 $outOfRange
     end
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.load offset=4
    local.set $3
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   local.get $0
   i32.store offset=4
   local.get $2
   local.get $0
   i32.load offset=8
   local.tee $0
   i32.store
   local.get $2
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.store
   local.get $2
   local.get $0
   i32.store
   local.get $2
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.store
   local.get $2
   local.get $0
   i32.store
   local.get $0
   i32.load
   local.set $4
   local.get $2
   local.get $0
   i32.store
   local.get $2
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.store
   local.get $2
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   local.set $5
   local.get $2
   local.get $0
   i32.store
   local.get $5
   local.get $0
   i32.load
   i32.sub
   local.set $0
   local.get $2
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   local.get $4
   i32.add
   local.get $1
   i32.add
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $3
   i32.const 1
   i32.sub
   local.get $1
   i32.sub
   local.tee $0
   local.get $2
   i32.add
   local.tee $4
   local.get $2
   i32.lt_u
   if
    i32.const 0
    i32.const 3616
    i32.const 770
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 1
   i32.shl
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   local.get $1
   local.set $0
   loop $while-continue|0
    local.get $2
    local.get $4
    i32.lt_u
    if
     block $while-break|0
      local.get $2
      i32.load8_u
      local.set $5
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      local.get $5
      i32.const 128
      i32.and
      if
       local.get $2
       local.get $4
       i32.eq
       br_if $while-break|0
       local.get $2
       i32.load8_u
       i32.const 63
       i32.and
       local.set $3
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       local.get $5
       i32.const 224
       i32.and
       i32.const 192
       i32.eq
       if
        local.get $0
        local.get $5
        i32.const 31
        i32.and
        i32.const 6
        i32.shl
        local.get $3
        i32.or
        i32.store16
       else
        local.get $2
        local.get $4
        i32.eq
        br_if $while-break|0
        local.get $2
        i32.load8_u
        i32.const 63
        i32.and
        local.set $6
        local.get $2
        i32.const 1
        i32.add
        local.set $2
        local.get $5
        i32.const 240
        i32.and
        i32.const 224
        i32.eq
        if
         local.get $5
         i32.const 15
         i32.and
         i32.const 12
         i32.shl
         local.get $3
         i32.const 6
         i32.shl
         i32.or
         local.get $6
         i32.or
         local.set $3
        else
         local.get $2
         local.get $4
         i32.eq
         br_if $while-break|0
         local.get $2
         i32.load8_u
         i32.const 63
         i32.and
         local.get $5
         i32.const 7
         i32.and
         i32.const 18
         i32.shl
         local.get $3
         i32.const 12
         i32.shl
         i32.or
         local.get $6
         i32.const 6
         i32.shl
         i32.or
         i32.or
         local.set $3
         local.get $2
         i32.const 1
         i32.add
         local.set $2
        end
        local.get $3
        i32.const 65536
        i32.lt_u
        if
         local.get $0
         local.get $3
         i32.store16
        else
         local.get $0
         local.get $3
         i32.const 65536
         i32.sub
         local.tee $3
         i32.const 10
         i32.shr_u
         i32.const 55296
         i32.or
         local.get $3
         i32.const 1023
         i32.and
         i32.const 56320
         i32.or
         i32.const 16
         i32.shl
         i32.or
         i32.store
         local.get $0
         i32.const 2
         i32.add
         local.set $0
        end
       end
      else
       local.get $0
       local.get $5
       i32.store16
      end
      local.get $0
      i32.const 2
      i32.add
      local.set $0
      br $while-continue|0
     end
    end
   end
   local.get $1
   local.get $0
   local.get $1
   i32.sub
   call $~lib/rt/itcms/__renew
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 39424
  i32.const 39472
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/util/string/joinStringArray (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $5
  i64.const 0
  i64.store
  local.get $5
  i64.const 0
  i64.store offset=8
  local.get $1
  i32.const 1
  i32.sub
  local.tee $4
  i32.const 0
  i32.lt_s
  if
   local.get $5
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 3408
   return
  end
  local.get $4
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.load
   local.tee $0
   i32.store
   local.get $1
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.const 3408
   local.get $0
   select
   return
  end
  loop $for-loop|0
   local.get $1
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $5
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $6
    i32.store offset=4
    local.get $6
    if
     local.get $5
     local.get $6
     i32.store offset=8
     local.get $2
     local.get $6
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     i32.add
     local.set $2
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 3408
  i32.store offset=8
  local.get $1
  local.get $2
  i32.const 3404
  i32.load
  i32.const 1
  i32.shr_u
  local.tee $5
  local.get $4
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $6
  i32.store offset=12
  i32.const 0
  local.set $2
  loop $for-loop|1
   local.get $2
   local.get $4
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $7
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $1
    i32.store offset=4
    local.get $1
    if
     local.get $7
     local.get $1
     i32.store offset=8
     local.get $6
     local.get $3
     i32.const 1
     i32.shl
     i32.add
     local.get $1
     local.get $1
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     local.tee $1
     i32.const 1
     i32.shl
     memory.copy
     local.get $1
     local.get $3
     i32.add
     local.set $3
    end
    local.get $5
    if
     local.get $6
     local.get $3
     i32.const 1
     i32.shl
     i32.add
     i32.const 3408
     local.get $5
     i32.const 1
     i32.shl
     memory.copy
     local.get $3
     local.get $5
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.store offset=4
  local.get $0
  if
   local.get $1
   local.get $0
   i32.store offset=8
   local.get $6
   local.get $3
   i32.const 1
   i32.shl
   i32.add
   local.get $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const -2
   i32.and
   memory.copy
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#readHexDigit (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.store
  local.get $0
  call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#readChar
  local.tee $1
  i32.const 48
  i32.sub
  local.tee $0
  i32.const 9
  i32.gt_s
  if
   local.get $1
   i32.const 55
   i32.sub
   local.tee $0
   i32.const 10
   i32.lt_s
   local.get $0
   i32.const 15
   i32.gt_s
   i32.or
   if
    local.get $1
    i32.const 87
    i32.sub
    local.set $0
   end
  end
  local.get $0
  i32.const 16
  i32.lt_s
  local.get $0
  i32.const 0
  i32.ge_s
  i32.and
  i32.eqz
  if
   i32.const 5072
   i32.const 3904
   i32.const 319
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#readEscapedChar (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   local.get $0
   i32.store
   local.get $0
   call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#readChar
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 4528
   i32.store
   i32.const 4528
   i32.const 0
   call $~lib/string/String#charCodeAt
   local.get $1
   i32.eq
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 4528
    return
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4720
   i32.store
   i32.const 4720
   i32.const 0
   call $~lib/string/String#charCodeAt
   local.get $1
   i32.eq
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 4720
    return
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4752
   i32.store
   i32.const 4752
   i32.const 0
   call $~lib/string/String#charCodeAt
   local.get $1
   i32.eq
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 4752
    return
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4784
   i32.store
   i32.const 4784
   i32.const 0
   call $~lib/string/String#charCodeAt
   local.get $1
   i32.eq
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 4816
    return
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4848
   i32.store
   i32.const 4848
   i32.const 0
   call $~lib/string/String#charCodeAt
   local.get $1
   i32.eq
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 4880
    return
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4912
   i32.store
   i32.const 4912
   i32.const 0
   call $~lib/string/String#charCodeAt
   local.get $1
   i32.eq
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 4944
    return
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4976
   i32.store
   i32.const 4976
   i32.const 0
   call $~lib/string/String#charCodeAt
   local.get $1
   i32.eq
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 5008
    return
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5040
   i32.store
   i32.const 5040
   i32.const 0
   call $~lib/string/String#charCodeAt
   local.get $1
   i32.eq
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#readHexDigit
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#readHexDigit
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#readHexDigit
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#readHexDigit
    local.get $2
    i32.const 12
    i32.shl
    local.get $3
    i32.const 8
    i32.shl
    i32.add
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.add
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 6628
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    i32.const 0
    i32.store
    local.get $1
    i32.const 2
    local.get $0
    i32.const 65535
    i32.gt_u
    local.tee $1
    i32.shl
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $2
    i32.store
    local.get $1
    if
     local.get $0
     i32.const 1114111
     i32.gt_u
     if
      i32.const 0
      i32.const 3616
      i32.const 39
      i32.const 7
      call $~lib/builtins/abort
      unreachable
     end
     local.get $2
     local.get $0
     i32.const 65536
     i32.sub
     local.tee $0
     i32.const 10
     i32.shr_u
     i32.const 55296
     i32.or
     local.get $0
     i32.const 1023
     i32.and
     i32.const 56320
     i32.or
     i32.const 16
     i32.shl
     i32.or
     i32.store
    else
     local.get $2
     local.get $0
     i32.store16
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $2
    return
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 5136
   i32.store
   i32.const 1
   global.set $~argumentsLength
   local.get $1
   call $~lib/string/String.fromCharCode@varargs
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   i32.const 5136
   local.get $0
   call $~lib/string/String.__concat
   i32.const 3904
   i32.const 306
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 39424
  i32.const 39472
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#readString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.const 24
   memory.fill
   local.get $1
   local.get $0
   i32.store
   local.get $0
   call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#readChar
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 4528
   i32.store
   i32.const 4528
   i32.const 0
   call $~lib/string/String#charCodeAt
   local.get $1
   i32.ne
   if
    i32.const 4560
    i32.const 3904
    i32.const 245
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#get:state
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load offset=4
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $~lib/array/Array<~lib/string/String>#constructor
   local.tee $2
   i32.store offset=8
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#readChar
    local.tee $3
    i32.const 32
    i32.lt_s
    if
     i32.const 4640
     i32.const 3904
     i32.const 254
     i32.const 7
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4528
    i32.store
    i32.const 4528
    i32.const 0
    call $~lib/string/String#charCodeAt
    local.get $3
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $0
     call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#get:state
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     i32.const 1
     global.set $~argumentsLength
     local.get $3
     local.get $0
     local.get $1
     call $~lib/assemblyscript-json/assembly/decoder/DecoderState#readString@varargs
     local.tee $0
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     local.get $2
     call $~lib/array/Array<~lib/assemblyscript-json/assembly/JSON/Value>#get:length
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 24
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $0
      return
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $2
     i32.store
     local.get $1
     local.get $0
     i32.store offset=4
     local.get $2
     local.get $0
     call $~lib/array/Array<~lib/assemblyscript-json/assembly/JSON/Value>#push
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 3408
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 6628
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $0
     i32.const 0
     i32.store
     local.get $0
     local.get $2
     i32.store
     local.get $2
     i32.load offset=4
     local.set $1
     local.get $0
     local.get $2
     i32.store
     local.get $2
     i32.load offset=12
     local.set $2
     local.get $0
     i32.const 3408
     i32.store
     local.get $1
     local.get $2
     call $~lib/util/string/joinStringArray
     local.set $0
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 24
     i32.add
     global.set $~lib/memory/__stack_pointer
    else
     global.get $~lib/memory/__stack_pointer
     i32.const 4720
     i32.store
     i32.const 4720
     i32.const 0
     call $~lib/string/String#charCodeAt
     local.get $3
     i32.eq
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=4
      local.get $0
      call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#get:state
      local.set $3
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store
      local.get $3
      i32.load offset=4
      local.get $1
      i32.const 1
      i32.add
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=20
       local.get $0
       call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#get:state
       local.set $3
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store offset=16
       i32.const 1
       global.set $~argumentsLength
       local.get $3
       local.get $1
       call $~lib/assemblyscript-json/assembly/decoder/DecoderState#readString@varargs
       local.set $1
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store offset=4
       local.get $2
       local.get $1
       call $~lib/array/Array<~lib/assemblyscript-json/assembly/JSON/Value>#push
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      local.get $2
      i32.store
      local.get $1
      local.get $0
      i32.store offset=16
      local.get $0
      call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#readEscapedChar
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store offset=4
      local.get $2
      local.get $1
      call $~lib/array/Array<~lib/assemblyscript-json/assembly/JSON/Value>#push
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=4
      local.get $0
      call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#get:state
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store
      local.get $1
      i32.load offset=4
      local.set $1
     end
     br $for-loop|0
    end
   end
   local.get $0
   return
  end
  i32.const 39424
  i32.const 39472
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/array/Array<~lib/assemblyscript-json/assembly/JSON/Value>#pop (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  local.get $0
  i32.store
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 0
  i32.le_s
  if
   i32.const 5376
   i32.const 3728
   i32.const 271
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 1
  i32.sub
  local.tee $2
  i32.const 2
  i32.shl
  i32.add
  i32.load
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store
  local.get $0
  local.get $2
  i32.store offset=12
  local.get $1
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/assemblyscript-json/assembly/JSON/Handler#popObject (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  local.get $0
  i32.load
  local.tee $1
  i32.store
  local.get $1
  call $~lib/array/Array<~lib/assemblyscript-json/assembly/JSON/Value>#get:length
  i32.const 1
  i32.gt_s
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<~lib/assemblyscript-json/assembly/JSON/Value>#pop
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#parseObject (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i64.const 0
   i64.store offset=8
   local.get $1
   local.get $0
   i32.store
   local.get $0
   call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#peekChar
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 4080
   i32.store
   i32.const 4080
   i32.const 0
   call $~lib/string/String#charCodeAt
   local.get $1
   i32.ne
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 0
    return
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store offset=4
   local.get $0
   call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#get:state
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $1
   local.get $2
   i32.load
   local.tee $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   local.get $0
   call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#get:state
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 3408
   i32.store offset=4
   local.get $2
   i32.const 3408
   i32.store
   local.get $2
   i32.const 3408
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   i64.const 0
   i64.store offset=8
   local.get $3
   block $__inlined_func$~lib/assemblyscript-json/assembly/JSON/Value.Object$6 (result i32)
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.sub
    global.set $~lib/memory/__stack_pointer
    block $folding-inner00
     global.get $~lib/memory/__stack_pointer
     i32.const 6628
     i32.lt_s
     br_if $folding-inner00
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     i64.const 0
     i64.store
     local.get $3
     i32.const 0
     i32.store offset=8
     local.get $3
     i32.const 4
     i32.const 7
     call $~lib/rt/itcms/__new
     local.tee $3
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     local.get $3
     i32.const 0
     i32.store
     local.get $3
     i32.const 0
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $3
     call $~lib/assemblyscript-json/assembly/JSON/Value#constructor
     local.tee $3
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 6628
     i32.lt_s
     br_if $folding-inner00
     global.get $~lib/memory/__stack_pointer
     local.tee $4
     i64.const 0
     i64.store
     local.get $4
     i32.const 0
     i32.store offset=8
     local.get $4
     i32.const 24
     i32.const 9
     call $~lib/rt/itcms/__new
     local.tee $4
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=4
     i32.const 16
     call $~lib/arraybuffer/ArrayBuffer#constructor
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=8
     local.get $4
     local.get $5
     i32.store
     local.get $4
     local.get $5
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=4
     local.get $4
     i32.const 3
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=4
     i32.const 48
     call $~lib/arraybuffer/ArrayBuffer#constructor
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=8
     local.get $4
     local.get $5
     i32.store offset=8
     local.get $4
     local.get $5
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=4
     local.get $4
     i32.const 4
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=4
     local.get $4
     i32.const 0
     i32.store offset=16
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=4
     local.get $4
     i32.const 0
     i32.store offset=20
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=8
     local.get $3
     local.get $4
     i32.store
     local.get $3
     local.get $4
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $3
     br $__inlined_func$~lib/assemblyscript-json/assembly/JSON/Value.Object$6
    end
    br $folding-inner1
   end
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $2
   i32.store offset=4
   local.get $4
   local.get $1
   i32.store offset=8
   local.get $4
   local.get $3
   i32.store offset=12
   local.get $2
   local.get $1
   local.get $3
   call $~lib/assemblyscript-json/assembly/JSON/Handler#addValue
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load
   local.tee $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=8
   local.get $1
   local.get $3
   call $~lib/array/Array<~lib/assemblyscript-json/assembly/JSON/Value>#push
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#readChar
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#skipWhitespace
   i32.const 1
   local.set $1
   loop $while-continue|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#peekChar
    local.set $2
    global.get $~lib/memory/__stack_pointer
    i32.const 4416
    i32.store
    i32.const 4416
    i32.const 0
    call $~lib/string/String#charCodeAt
    local.get $2
    i32.ne
    if
     local.get $1
     if
      i32.const 0
      local.set $1
     else
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#readChar
      local.set $2
      global.get $~lib/memory/__stack_pointer
      i32.const 4448
      i32.store
      i32.const 4448
      i32.const 0
      call $~lib/string/String#charCodeAt
      local.get $2
      i32.ne
      if
       i32.const 4480
       i32.const 3904
       i32.const 190
       i32.const 11
       call $~lib/builtins/abort
       unreachable
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $0
     i32.store
     local.get $2
     i32.const 12
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 6628
     i32.lt_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     i64.const 0
     i64.store
     local.get $2
     i32.const 0
     i32.store offset=8
     local.get $2
     local.get $0
     i32.store
     local.get $0
     call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#skipWhitespace
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     local.get $0
     call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#get:state
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     local.get $0
     call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#readString
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     local.get $2
     local.get $3
     i32.store
     local.get $2
     local.get $3
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#skipWhitespace
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#readChar
     local.set $2
     global.get $~lib/memory/__stack_pointer
     i32.const 5216
     i32.store
     i32.const 5216
     i32.const 0
     call $~lib/string/String#charCodeAt
     local.get $2
     i32.ne
     if
      i32.const 5248
      i32.const 3904
      i32.const 207
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#parseValue
     drop
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#readChar
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 4416
   i32.store
   i32.const 4416
   i32.const 0
   call $~lib/string/String#charCodeAt
   local.get $1
   i32.ne
   if
    i32.const 5296
    i32.const 3904
    i32.const 197
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store offset=4
   local.get $1
   local.get $0
   i32.load
   local.tee $0
   i32.store
   local.get $0
   call $~lib/assemblyscript-json/assembly/JSON/Handler#popObject
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1
   return
  end
  i32.const 39424
  i32.const 39472
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#parseArray (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i64.const 0
   i64.store offset=8
   local.get $1
   local.get $0
   i32.store
   local.get $0
   call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#peekChar
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 5424
   i32.store
   i32.const 5424
   i32.const 0
   call $~lib/string/String#charCodeAt
   local.get $1
   i32.ne
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 0
    return
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store offset=4
   local.get $0
   call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#get:state
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $1
   local.get $2
   i32.load
   local.tee $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   local.get $0
   call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#get:state
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 3408
   i32.store offset=4
   local.get $1
   i32.const 3408
   i32.store
   local.get $1
   i32.const 3408
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i64.const 0
   i64.store
   local.get $4
   i64.const 0
   i64.store offset=8
   local.get $4
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 4
   i32.const 16
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/assemblyscript-json/assembly/JSON/Value#constructor
   local.tee $5
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   call $~lib/array/Array<~lib/assemblyscript-json/assembly/JSON/Value>#constructor
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $5
   local.get $1
   i32.store
   local.get $5
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   local.get $5
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load
   local.tee $1
   i32.store offset=4
   local.get $1
   call $~lib/array/Array<~lib/assemblyscript-json/assembly/JSON/Value>#get:length
   if
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=12
    local.get $3
    local.get $2
    local.get $5
    call $~lib/assemblyscript-json/assembly/JSON/Handler#addValue
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.load
    local.tee $1
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=8
   else
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $3
    i32.store offset=12
    local.get $2
    local.get $3
    i32.load
    local.tee $1
    i32.store offset=4
    local.get $2
    local.get $5
    i32.store offset=8
   end
   local.get $1
   local.get $5
   call $~lib/array/Array<~lib/assemblyscript-json/assembly/JSON/Value>#push
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#readChar
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#skipWhitespace
   i32.const 1
   local.set $1
   loop $while-continue|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#peekChar
    local.set $2
    global.get $~lib/memory/__stack_pointer
    i32.const 5456
    i32.store
    i32.const 5456
    i32.const 0
    call $~lib/string/String#charCodeAt
    local.get $2
    i32.ne
    if
     local.get $1
     if
      i32.const 0
      local.set $1
     else
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#readChar
      local.set $2
      global.get $~lib/memory/__stack_pointer
      i32.const 4448
      i32.store
      i32.const 4448
      i32.const 0
      call $~lib/string/String#charCodeAt
      local.get $2
      i32.ne
      if
       i32.const 4480
       i32.const 3904
       i32.const 224
       i32.const 11
       call $~lib/builtins/abort
       unreachable
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#parseValue
     drop
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#readChar
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 5456
   i32.store
   i32.const 5456
   i32.const 0
   call $~lib/string/String#charCodeAt
   local.get $1
   i32.ne
   if
    i32.const 5488
    i32.const 3904
    i32.const 230
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store offset=4
   local.get $1
   local.get $0
   i32.load
   local.tee $0
   i32.store
   local.get $0
   call $~lib/assemblyscript-json/assembly/JSON/Handler#popObject
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1
   return
  end
  i32.const 39424
  i32.const 39472
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#readAndAssert (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i64.const 0
  i64.store
  local.get $3
  i64.const 0
  i64.store offset=8
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $1
   i32.store
   local.get $2
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.lt_s
   if
    local.get $3
    local.get $1
    i32.store
    local.get $1
    local.get $2
    call $~lib/string/String#charCodeAt
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#readChar
    local.get $3
    i32.ne
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 5600
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=12
     i32.const 5600
     local.get $1
     call $~lib/string/String.__concat
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 5648
     i32.store offset=4
     local.get $0
     i32.const 5648
     call $~lib/string/String.__concat
     i32.const 3904
     i32.const 396
     i32.const 7
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/assemblyscript-json/assembly/JSON/Handler#setBoolean (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   i64.const 0
   i64.store offset=8
   local.get $3
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i64.const 0
   i64.store
   local.get $4
   i32.const 1
   i32.const 18
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $5
   i32.store offset=4
   local.get $5
   local.get $2
   i32.store8
   local.get $4
   local.get $5
   i32.store offset=4
   local.get $4
   local.get $5
   call $~lib/assemblyscript-json/assembly/JSON/Value#constructor
   local.tee $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   local.get $0
   local.get $1
   local.get $2
   call $~lib/assemblyscript-json/assembly/JSON/Handler#addValue
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 39424
  i32.const 39472
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/util/string/strtod (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 f64)
  (local $9 i32)
  (local $10 f64)
  (local $11 i32)
  (local $12 i64)
  (local $13 i64)
  (local $14 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  local.get $0
  i32.store
  block $folding-inner1
   block $folding-inner0
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.tee $5
    i32.eqz
    br_if $folding-inner0
    local.get $0
    i32.load16_u
    local.set $4
    f64.const 1
    local.set $10
    loop $while-continue|0
     local.get $5
     if (result i32)
      block $__inlined_func$~lib/util/string/isSpace$326 (result i32)
       local.get $4
       i32.const 128
       i32.or
       i32.const 160
       i32.eq
       local.get $4
       i32.const 9
       i32.sub
       i32.const 4
       i32.le_u
       i32.or
       local.get $4
       i32.const 5760
       i32.lt_u
       br_if $__inlined_func$~lib/util/string/isSpace$326
       drop
       i32.const 1
       local.get $4
       i32.const -8192
       i32.add
       i32.const 10
       i32.le_u
       br_if $__inlined_func$~lib/util/string/isSpace$326
       drop
       block $break|0
        block $case0|0
         local.get $4
         i32.const 5760
         i32.eq
         br_if $case0|0
         local.get $4
         i32.const 8232
         i32.eq
         br_if $case0|0
         local.get $4
         i32.const 8233
         i32.eq
         br_if $case0|0
         local.get $4
         i32.const 8239
         i32.eq
         br_if $case0|0
         local.get $4
         i32.const 8287
         i32.eq
         br_if $case0|0
         local.get $4
         i32.const 12288
         i32.eq
         br_if $case0|0
         local.get $4
         i32.const 65279
         i32.eq
         br_if $case0|0
         br $break|0
        end
        i32.const 1
        br $__inlined_func$~lib/util/string/isSpace$326
       end
       i32.const 0
      end
     else
      i32.const 0
     end
     if
      local.get $0
      i32.const 2
      i32.add
      local.tee $0
      i32.load16_u
      local.set $4
      local.get $5
      i32.const 1
      i32.sub
      local.set $5
      br $while-continue|0
     end
    end
    local.get $5
    i32.eqz
    br_if $folding-inner0
    local.get $4
    i32.const 45
    i32.eq
    if (result i32)
     local.get $5
     i32.const 1
     i32.sub
     local.tee $5
     i32.eqz
     br_if $folding-inner0
     f64.const -1
     local.set $10
     local.get $0
     i32.const 2
     i32.add
     local.tee $0
     i32.load16_u
    else
     local.get $4
     i32.const 43
     i32.eq
     if (result i32)
      local.get $5
      i32.const 1
      i32.sub
      local.tee $5
      i32.eqz
      br_if $folding-inner0
      local.get $0
      i32.const 2
      i32.add
      local.tee $0
      i32.load16_u
     else
      local.get $4
     end
    end
    local.tee $4
    i32.const 73
    i32.eq
    local.get $5
    i32.const 8
    i32.ge_s
    i32.and
    if
     local.get $0
     i64.load
     i64.const 29555310648492105
     i64.eq
     if (result i32)
      local.get $0
      i64.load offset=8
      i64.const 34058970405077102
      i64.eq
     else
      i32.const 0
     end
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $10
      f64.const inf
      f64.mul
      return
     end
     br $folding-inner0
    end
    local.get $4
    i32.const 46
    i32.ne
    local.get $4
    i32.const 48
    i32.sub
    i32.const 10
    i32.ge_u
    i32.and
    br_if $folding-inner0
    local.get $0
    local.set $3
    loop $while-continue|1
     local.get $4
     i32.const 48
     i32.eq
     if
      local.get $0
      i32.const 2
      i32.add
      local.tee $0
      i32.load16_u
      local.set $4
      local.get $5
      i32.const 1
      i32.sub
      local.set $5
      br $while-continue|1
     end
    end
    local.get $5
    i32.const 0
    i32.le_s
    br_if $folding-inner1
    local.get $4
    i32.const 46
    i32.eq
    if
     local.get $0
     local.get $3
     i32.eq
     local.set $3
     local.get $0
     i32.const 2
     i32.add
     local.set $0
     local.get $3
     local.get $5
     i32.const 1
     i32.sub
     local.tee $5
     i32.eqz
     i32.and
     br_if $folding-inner0
     i32.const 1
     local.set $9
     loop $for-loop|2
      local.get $0
      i32.load16_u
      local.tee $4
      i32.const 48
      i32.eq
      if
       local.get $5
       i32.const 1
       i32.sub
       local.set $5
       local.get $2
       i32.const 1
       i32.sub
       local.set $2
       local.get $0
       i32.const 2
       i32.add
       local.set $0
       br $for-loop|2
      end
     end
     local.get $5
     i32.const 0
     i32.le_s
     br_if $folding-inner1
     local.get $3
     local.get $2
     i32.eqz
     i32.and
     local.get $4
     i32.const 48
     i32.sub
     i32.const 10
     i32.ge_u
     i32.and
     br_if $folding-inner0
    end
    local.get $4
    i32.const 48
    i32.sub
    local.set $3
    loop $for-loop|3
     local.get $3
     i32.const 10
     i32.lt_u
     local.tee $11
     local.get $9
     i32.eqz
     local.get $4
     i32.const 46
     i32.eq
     i32.and
     i32.or
     if
      block $for-break3
       local.get $11
       if
        local.get $1
        i32.const 19
        i32.lt_s
        if (result i64)
         local.get $3
         i64.extend_i32_u
         local.get $6
         i64.const 10
         i64.mul
         i64.add
        else
         local.get $6
         local.get $3
         i32.const 0
         i32.ne
         i64.extend_i32_u
         i64.or
        end
        local.set $6
        local.get $1
        i32.const 1
        i32.add
        local.set $1
       else
        local.get $1
        local.set $2
        i32.const 1
        local.set $9
       end
       local.get $5
       i32.const 1
       i32.sub
       local.tee $5
       i32.eqz
       br_if $for-break3
       local.get $0
       i32.const 2
       i32.add
       local.tee $0
       i32.load16_u
       local.tee $4
       i32.const 48
       i32.sub
       local.set $3
       br $for-loop|3
      end
     end
    end
    block $~lib/util/string/scientific|inlined.0
     local.get $6
     i64.eqz
     local.get $2
     local.get $1
     local.get $9
     select
     i32.const 19
     local.get $1
     local.get $1
     i32.const 19
     i32.gt_s
     select
     i32.sub
     block $~lib/util/string/parseExp|inlined.0 (result i32)
      i32.const 1
      local.set $9
      i32.const 0
      local.set $3
      i32.const 0
      local.get $0
      i32.load16_u
      i32.const 32
      i32.or
      i32.const 101
      i32.ne
      br_if $~lib/util/string/parseExp|inlined.0
      drop
      i32.const 0
      local.get $5
      i32.const 1
      i32.sub
      local.tee $5
      i32.eqz
      br_if $~lib/util/string/parseExp|inlined.0
      drop
      local.get $0
      i32.const 2
      i32.add
      local.tee $0
      i32.load16_u
      local.tee $1
      i32.const 45
      i32.eq
      if (result i32)
       i32.const 0
       local.get $5
       i32.const 1
       i32.sub
       local.tee $5
       i32.eqz
       br_if $~lib/util/string/parseExp|inlined.0
       drop
       i32.const -1
       local.set $9
       local.get $0
       i32.const 2
       i32.add
       local.tee $0
       i32.load16_u
      else
       local.get $1
       i32.const 43
       i32.eq
       if (result i32)
        i32.const 0
        local.get $5
        i32.const 1
        i32.sub
        local.tee $5
        i32.eqz
        br_if $~lib/util/string/parseExp|inlined.0
        drop
        local.get $0
        i32.const 2
        i32.add
        local.tee $0
        i32.load16_u
       else
        local.get $1
       end
      end
      local.set $4
      loop $while-continue|4
       local.get $4
       i32.const 48
       i32.eq
       if
        i32.const 0
        local.get $5
        i32.const 1
        i32.sub
        local.tee $5
        i32.eqz
        br_if $~lib/util/string/parseExp|inlined.0
        drop
        local.get $0
        i32.const 2
        i32.add
        local.tee $0
        i32.load16_u
        local.set $4
        br $while-continue|4
       end
      end
      local.get $4
      i32.const 48
      i32.sub
      local.set $4
      loop $for-loop|5
       local.get $4
       i32.const 10
       i32.lt_u
       i32.const 0
       local.get $5
       select
       if
        local.get $9
        i32.const 3200
        i32.mul
        local.get $3
        i32.const 3200
        i32.ge_s
        br_if $~lib/util/string/parseExp|inlined.0
        drop
        local.get $3
        i32.const 10
        i32.mul
        local.get $4
        i32.add
        local.set $3
        local.get $5
        i32.const 1
        i32.sub
        local.set $5
        local.get $0
        i32.const 2
        i32.add
        local.tee $0
        i32.load16_u
        i32.const 48
        i32.sub
        local.set $4
        br $for-loop|5
       end
      end
      local.get $3
      local.get $9
      i32.mul
     end
     i32.add
     local.tee $0
     i32.const -342
     i32.lt_s
     i32.or
     br_if $~lib/util/string/scientific|inlined.0
     f64.const inf
     local.set $8
     local.get $0
     i32.const 308
     i32.gt_s
     br_if $~lib/util/string/scientific|inlined.0
     local.get $6
     f64.convert_i64_u
     local.set $8
     local.get $0
     i32.eqz
     br_if $~lib/util/string/scientific|inlined.0
     local.get $0
     i32.const 37
     i32.le_s
     local.get $0
     i32.const 22
     i32.gt_s
     i32.and
     if
      local.get $8
      local.get $0
      i32.const 3
      i32.shl
      i32.const 5552
      i32.add
      f64.load
      f64.mul
      local.set $8
      i32.const 22
      local.set $0
     end
     local.get $6
     i64.const 9007199254740991
     i64.le_u
     if (result i32)
      local.get $0
      i32.const 31
      i32.shr_s
      local.tee $1
      local.get $0
      local.get $1
      i32.add
      i32.xor
      i32.const 22
      i32.le_s
     else
      i32.const 0
     end
     if (result f64)
      local.get $0
      i32.const 0
      i32.gt_s
      if
       local.get $8
       local.get $0
       i32.const 3
       i32.shl
       i32.const 5728
       i32.add
       f64.load
       f64.mul
       local.set $8
       br $~lib/util/string/scientific|inlined.0
      end
      local.get $8
      i32.const 0
      local.get $0
      i32.sub
      i32.const 3
      i32.shl
      i32.const 5728
      i32.add
      f64.load
      f64.div
     else
      local.get $0
      i32.const 0
      i32.lt_s
      if (result f64)
       local.get $6
       local.get $6
       i64.clz
       local.tee $7
       i64.shl
       local.set $6
       local.get $0
       i64.extend_i32_s
       local.get $7
       i64.sub
       local.set $7
       loop $for-loop|6
        local.get $0
        i32.const -14
        i32.le_s
        if
         local.get $6
         i64.const 6103515625
         i64.rem_u
         local.get $6
         i64.const 6103515625
         i64.div_u
         local.tee $6
         i64.clz
         local.tee $12
         i64.const 18
         i64.sub
         i64.shl
         f64.convert_i64_u
         f64.const 0.00004294967296
         f64.mul
         f64.nearest
         i64.trunc_sat_f64_u
         local.get $6
         local.get $12
         i64.shl
         i64.add
         local.set $6
         local.get $7
         local.get $12
         i64.sub
         local.set $7
         local.get $0
         i32.const 14
         i32.add
         local.set $0
         br $for-loop|6
        end
       end
       local.get $6
       i32.const 0
       local.get $0
       i32.sub
       call $~lib/math/ipow32
       i64.extend_i32_s
       local.tee $13
       i64.div_u
       local.tee $14
       i64.clz
       local.set $12
       local.get $6
       local.get $13
       i64.rem_u
       f64.convert_i64_u
       i64.reinterpret_f64
       local.get $12
       i64.const 52
       i64.shl
       i64.add
       f64.reinterpret_i64
       local.get $13
       f64.convert_i64_u
       f64.div
       i64.trunc_sat_f64_u
       local.get $14
       local.get $12
       i64.shl
       i64.add
       f64.convert_i64_u
       local.get $7
       local.get $12
       i64.sub
       i32.wrap_i64
       call $~lib/math/NativeMath.scalbn
      else
       local.get $6
       local.get $6
       i64.ctz
       local.tee $7
       i64.shr_u
       local.set $6
       local.get $7
       local.get $0
       i64.extend_i32_s
       i64.add
       global.set $~lib/util/string/__fixmulShift
       loop $for-loop|7
        local.get $0
        i32.const 13
        i32.ge_s
        if
         i64.const 32
         local.get $6
         i64.const 32
         i64.shr_u
         i64.const 1220703125
         i64.mul
         local.get $6
         i64.const 4294967295
         i64.and
         i64.const 1220703125
         i64.mul
         local.tee $6
         i64.const 32
         i64.shr_u
         i64.add
         local.tee $7
         i64.const 32
         i64.shr_u
         i32.wrap_i64
         i32.clz
         i64.extend_i32_u
         local.tee $12
         i64.sub
         local.tee $13
         global.get $~lib/util/string/__fixmulShift
         i64.add
         global.set $~lib/util/string/__fixmulShift
         local.get $6
         local.get $12
         i64.shl
         i64.const 31
         i64.shr_u
         i64.const 1
         i64.and
         local.get $7
         local.get $12
         i64.shl
         local.get $6
         i64.const 4294967295
         i64.and
         local.get $13
         i64.shr_u
         i64.or
         i64.add
         local.set $6
         local.get $0
         i32.const 13
         i32.sub
         local.set $0
         br $for-loop|7
        end
       end
       local.get $0
       call $~lib/math/ipow32
       i64.extend_i32_u
       local.tee $7
       local.get $6
       i64.const 4294967295
       i64.and
       i64.mul
       local.set $12
       i64.const 32
       local.get $6
       i64.const 32
       i64.shr_u
       local.get $7
       i64.mul
       local.get $12
       i64.const 32
       i64.shr_u
       i64.add
       local.tee $6
       i64.const 32
       i64.shr_u
       i32.wrap_i64
       i32.clz
       i64.extend_i32_u
       local.tee $7
       i64.sub
       local.tee $13
       global.get $~lib/util/string/__fixmulShift
       i64.add
       global.set $~lib/util/string/__fixmulShift
       local.get $12
       local.get $7
       i64.shl
       i64.const 31
       i64.shr_u
       i64.const 1
       i64.and
       local.get $6
       local.get $7
       i64.shl
       local.get $12
       i64.const 4294967295
       i64.and
       local.get $13
       i64.shr_u
       i64.or
       i64.add
       f64.convert_i64_u
       global.get $~lib/util/string/__fixmulShift
       i32.wrap_i64
       call $~lib/math/NativeMath.scalbn
      end
     end
     local.set $8
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $8
    local.get $10
    f64.copysign
    return
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   f64.const nan:0x8000000000000
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $10
  f64.const 0
  f64.mul
 )
 (func $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#parseNumber (param $0 i32) (result i32)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 f64)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $6
   i32.const 0
   i32.const 20
   memory.fill
   i32.const 3408
   local.set $4
   local.get $6
   i32.const 3408
   i32.store
   local.get $6
   local.get $0
   i32.store offset=4
   local.get $0
   call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#peekChar
   i32.const 45
   i32.eq
   if (result f64)
    global.get $~lib/memory/__stack_pointer
    i32.const 3408
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=12
    local.get $0
    call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#readChar
    local.set $6
    i32.const 1
    global.set $~argumentsLength
    local.get $6
    call $~lib/string/String.fromCharCode@varargs
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=8
    local.get $4
    i32.const 3408
    local.get $6
    call $~lib/string/String.__concat
    local.tee $4
    i32.store
    f64.const -1
   else
    f64.const 1
   end
   local.set $7
   loop $while-continue|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    local.get $0
    call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#peekChar
    i32.const 48
    i32.ge_s
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $0
     call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#peekChar
     i32.const 57
     i32.le_s
    else
     i32.const 0
    end
    if (result i32)
     i32.const 1
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $0
     call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#peekChar
     i32.const 46
     i32.eq
    end
    if (result i32)
     i32.const 1
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $0
     call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#peekChar
     i32.const 45
     i32.eq
    end
    if (result i32)
     i32.const 1
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $0
     call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#peekChar
     i32.const 43
     i32.eq
    end
    if (result i32)
     i32.const 1
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $0
     call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#peekChar
     i32.const 69
     i32.eq
    end
    if (result i32)
     i32.const 1
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $0
     call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#peekChar
     i32.const 101
     i32.eq
    end
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $0
     call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#readChar
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.set $9
     i32.const 1
     global.set $~argumentsLength
     local.get $8
     call $~lib/string/String.fromCharCode@varargs
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=8
     local.get $9
     local.get $4
     local.get $6
     call $~lib/string/String.__concat
     local.tee $4
     i32.store
     local.get $8
     i32.const 101
     i32.eq
     local.get $8
     i32.const 69
     i32.eq
     i32.or
     local.get $8
     i32.const 46
     i32.eq
     i32.or
     local.get $8
     i32.const 43
     i32.eq
     i32.or
     local.get $8
     i32.const 45
     i32.eq
     i32.or
     if
      i32.const 1
      local.set $2
     else
      local.get $2
      i32.eqz
      if
       local.get $1
       f64.const 10
       f64.mul
       local.get $8
       i32.const 48
       i32.sub
       f64.convert_i32_s
       f64.add
       local.set $1
      end
      local.get $3
      i32.const 1
      i32.add
      local.set $3
     end
     br $while-continue|0
    end
   end
   local.get $3
   i32.const 0
   i32.gt_s
   if
    local.get $2
    if (result i32)
     i32.const 1
    else
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $4
     i32.store offset=4
     local.get $2
     i32.const 5712
     i32.store offset=8
     local.get $4
     i32.const 5712
     call $~lib/string/String.__eq
    end
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $0
     i32.store offset=12
     local.get $2
     local.get $0
     i32.load
     local.tee $3
     i32.store offset=4
     local.get $2
     local.get $0
     i32.store offset=16
     local.get $0
     call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#get:state
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load
     local.tee $2
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 6628
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $0
     i32.const 0
     i32.store
     local.get $0
     local.get $4
     i32.store
     local.get $4
     call $~lib/util/string/strtod
     local.set $1
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 6628
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $4
     i64.const 0
     i64.store
     local.get $4
     i64.const 0
     i64.store offset=8
     local.get $4
     i32.const 8
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 6628
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $0
     i64.const 0
     i64.store
     local.get $0
     i32.const 8
     i32.const 19
     call $~lib/rt/itcms/__new
     local.tee $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.tee $6
     local.get $0
     i32.store offset=4
     local.get $6
     i32.const 8
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 6628
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $8
     i64.const 0
     i64.store
     local.get $0
     i32.eqz
     if
      local.get $8
      i32.const 8
      i32.const 20
      call $~lib/rt/itcms/__new
      local.tee $0
      i32.store
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $8
     local.get $0
     i32.store offset=4
     local.get $0
     local.get $1
     f64.store
     local.get $8
     local.get $0
     i32.store offset=4
     local.get $8
     local.get $0
     call $~lib/assemblyscript-json/assembly/JSON/Value#constructor
     local.tee $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $6
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $4
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=12
     local.get $3
     local.get $2
     local.get $0
     call $~lib/assemblyscript-json/assembly/JSON/Handler#addValue
    else
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $0
     i32.store offset=12
     local.get $2
     local.get $0
     i32.load
     local.tee $3
     i32.store offset=4
     local.get $2
     local.get $0
     i32.store offset=16
     local.get $0
     call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#get:state
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load
     local.tee $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 6628
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     i64.const 0
     i64.store
     local.get $2
     i64.const 0
     i64.store offset=8
     local.get $2
     i32.const 8
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 6628
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $4
     i64.const 0
     i64.store
     local.get $4
     i32.const 8
     i32.const 21
     call $~lib/rt/itcms/__new
     local.tee $4
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.tee $6
     local.get $4
     i32.store offset=4
     local.get $4
     local.get $1
     local.get $7
     f64.mul
     i64.trunc_sat_f64_s
     i64.store
     local.get $6
     local.get $4
     i32.store offset=4
     local.get $6
     local.get $4
     call $~lib/assemblyscript-json/assembly/JSON/Value#constructor
     local.tee $4
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $2
     local.get $4
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=12
     local.get $3
     local.get $0
     local.get $4
     call $~lib/assemblyscript-json/assembly/JSON/Handler#addValue
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 20
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 1
    return
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 0
   return
  end
  i32.const 39424
  i32.const 39472
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#parseValue (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store
   local.get $1
   local.get $0
   i32.store
   local.get $0
   call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#skipWhitespace
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#parseObject
   local.tee $1
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#parseArray
    local.set $1
   end
   local.get $1
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store
    local.get $1
    i32.const 20
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 6628
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    i32.const 0
    i32.const 20
    memory.fill
    local.get $1
    local.get $0
    i32.store
    local.get $0
    call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#peekChar
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 4528
    i32.store
    block $__inlined_func$~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#parseString$2
     i32.const 4528
     i32.const 0
     call $~lib/string/String#charCodeAt
     local.get $1
     i32.ne
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 20
      i32.add
      global.set $~lib/memory/__stack_pointer
      i32.const 0
      local.set $1
      br $__inlined_func$~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#parseString$2
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $0
     i32.store offset=12
     local.get $1
     local.get $0
     i32.load
     local.tee $3
     i32.store
     local.get $1
     local.get $0
     i32.store offset=16
     local.get $0
     call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#get:state
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.load
     local.tee $4
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=12
     local.get $0
     call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#readString
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 6628
     i32.lt_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     i64.const 0
     i64.store
     local.get $1
     i64.const 0
     i64.store offset=8
     local.get $1
     local.get $5
     i32.store
     local.get $1
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 6628
     i32.lt_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     i32.const 0
     i32.store
     local.get $2
     local.get $5
     i32.store
     local.get $2
     i32.const 12
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 6628
     i32.lt_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     i64.const 0
     i64.store
     local.get $2
     i32.const 0
     i32.store offset=8
     local.get $2
     i32.const 4
     i32.const 17
     call $~lib/rt/itcms/__new
     local.tee $2
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.tee $6
     local.get $2
     i32.store offset=4
     local.get $6
     local.get $5
     i32.store offset=8
     local.get $2
     local.get $5
     i32.store
     local.get $2
     local.get $5
     i32.const 0
     call $~lib/rt/itcms/__link
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $2
     call $~lib/assemblyscript-json/assembly/JSON/Value#constructor
     local.tee $2
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $1
     local.get $2
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=12
     local.get $3
     local.get $4
     local.get $2
     call $~lib/assemblyscript-json/assembly/JSON/Handler#addValue
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 20
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 1
     local.set $1
    end
   end
   local.get $1
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store
    block $__inlined_func$~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#parseBoolean$7 (result i32)
     local.get $1
     i32.const 16
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 6628
     i32.lt_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     i64.const 0
     i64.store
     local.get $1
     i64.const 0
     i64.store offset=8
     local.get $1
     local.get $0
     i32.store
     local.get $0
     call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#peekChar
     local.set $1
     global.get $~lib/memory/__stack_pointer
     i32.const 5568
     i32.store
     block $folding-inner001
      i32.const 5568
      i32.const 0
      call $~lib/string/String#charCodeAt
      local.get $1
      i32.eq
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       global.get $~lib/memory/__stack_pointer
       i32.const 5568
       i32.store offset=4
       local.get $0
       i32.const 5568
       call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#readAndAssert
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=8
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load
       local.tee $1
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=12
       local.get $0
       call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#get:state
       local.set $2
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store offset=8
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.load
       local.tee $2
       i32.store offset=4
       local.get $1
       local.get $2
       i32.const 0
       call $~lib/assemblyscript-json/assembly/JSON/Handler#setBoolean
       br $folding-inner001
      end
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#peekChar
      local.set $1
      global.get $~lib/memory/__stack_pointer
      i32.const 5680
      i32.store
      i32.const 5680
      i32.const 0
      call $~lib/string/String#charCodeAt
      local.get $1
      i32.eq
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store
       global.get $~lib/memory/__stack_pointer
       i32.const 5680
       i32.store offset=4
       local.get $0
       i32.const 5680
       call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#readAndAssert
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=8
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load
       local.tee $1
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=12
       local.get $0
       call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#get:state
       local.set $2
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store offset=8
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.load
       local.tee $2
       i32.store offset=4
       local.get $1
       local.get $2
       i32.const 1
       call $~lib/assemblyscript-json/assembly/JSON/Handler#setBoolean
       br $folding-inner001
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 16
      i32.add
      global.set $~lib/memory/__stack_pointer
      i32.const 0
      br $__inlined_func$~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#parseBoolean$7
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 1
    end
    local.set $1
   end
   local.get $1
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#parseNumber
    local.set $1
   end
   local.get $1
   i32.eqz
   if
    block $__inlined_func$~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#parseNull$541 (result i32)
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $0
     i32.store
     local.get $1
     i32.const 16
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 6628
     i32.lt_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     i64.const 0
     i64.store
     local.get $1
     i64.const 0
     i64.store offset=8
     local.get $1
     local.get $0
     i32.store
     local.get $0
     call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#peekChar
     local.set $1
     global.get $~lib/memory/__stack_pointer
     i32.const 5936
     i32.store
     i32.const 5936
     i32.const 0
     call $~lib/string/String#charCodeAt
     local.get $1
     i32.eq
     if
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 5936
      i32.store offset=4
      local.get $0
      i32.const 5936
      call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#readAndAssert
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load
      local.tee $1
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=12
      local.get $0
      call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#get:state
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.load
      local.tee $2
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      i32.const 16
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 6628
      i32.lt_s
      br_if $folding-inner1
      global.get $~lib/memory/__stack_pointer
      local.tee $3
      i64.const 0
      i64.store
      local.get $3
      i64.const 0
      i64.store offset=8
      local.get $3
      global.get $~lib/assemblyscript-json/assembly/JSON/NULL
      local.tee $4
      i32.store
      local.get $3
      local.get $1
      i32.store offset=4
      local.get $3
      local.get $2
      i32.store offset=8
      local.get $3
      local.get $4
      i32.store offset=12
      local.get $1
      local.get $2
      local.get $4
      call $~lib/assemblyscript-json/assembly/JSON/Handler#addValue
      global.get $~lib/memory/__stack_pointer
      i32.const 16
      i32.add
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 16
      i32.add
      global.set $~lib/memory/__stack_pointer
      i32.const 1
      br $__inlined_func$~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#parseNull$541
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 0
    end
    local.set $1
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#skipWhitespace
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 39424
  i32.const 39472
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/assemblyscript-json/assembly/JSON/_JSON.parse<~lib/string/String> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i64.const 0
   i64.store offset=8
   local.get $1
   local.get $0
   i32.store
   local.get $1
   local.get $0
   call $~lib/assemblyscript-json/assembly/util/index/Buffer.fromString
   local.tee $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/assemblyscript-json/assembly/JSON/_JSON.decoder
   local.tee $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
   local.get $2
   i32.store
   local.get $0
   local.get $1
   i32.store offset=8
   local.get $0
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
   i32.const 12
   i32.const 15
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $3
   i32.store offset=4
   local.get $0
   local.get $1
   i32.store offset=8
   local.get $3
   local.get $1
   i32.store offset=8
   local.get $3
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 3408
   i32.store offset=8
   local.get $3
   i32.const 3408
   i32.store
   local.get $3
   i32.const 3408
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   local.get $2
   i32.store
   local.get $0
   local.get $3
   i32.store offset=4
   local.get $2
   local.get $3
   i32.store offset=4
   local.get $2
   local.get $3
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $~lib/assemblyscript-json/assembly/decoder/JSONDecoder<~lib/assemblyscript-json/assembly/JSON/Handler>#parseValue
   i32.eqz
   if
    i32.const 5968
    i32.const 3904
    i32.const 144
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   global.get $~lib/assemblyscript-json/assembly/JSON/_JSON.decoder
   local.tee $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.load
   local.tee $1
   i32.store
   local.get $0
   local.get $1
   call $~lib/assemblyscript-json/assembly/JSON/Handler#get:peek
   local.tee $0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/assemblyscript-json/assembly/JSON/_JSON.decoder
   local.tee $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   loop $while-continue|0
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $1
    i32.store offset=4
    local.get $2
    local.get $1
    i32.load
    local.tee $2
    i32.store
    local.get $2
    call $~lib/array/Array<~lib/assemblyscript-json/assembly/JSON/Value>#get:length
    i32.const 0
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.load
     local.tee $2
     i32.store
     local.get $2
     call $~lib/array/Array<~lib/assemblyscript-json/assembly/JSON/Value>#pop
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 39424
  i32.const 39472
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/index/getStringValueFromJsonObject (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner2
   block $folding-inner1
    global.get $~lib/memory/__stack_pointer
    i32.const 6628
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    i32.const 0
    i32.const 24
    memory.fill
    local.get $2
    local.get $0
    i32.store
    local.get $2
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 6628
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    i64.const 0
    i64.store
    local.get $2
    local.get $0
    i32.store
    local.get $2
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 6628
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    i32.const 0
    i32.store
    local.get $0
    if (result i32)
     local.get $2
     local.get $0
     i32.store
     local.get $0
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
    else
     i32.const 0
    end
    local.set $2
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $2
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $0
     i32.store
     local.get $2
     i32.const 6224
     i32.store offset=4
     local.get $0
     i32.const 6224
     call $~lib/string/String.__eq
    else
     i32.const 1
    end
    local.set $2
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $2
    br_if $folding-inner2
    block $__inlined_func$~instanceof|~lib/assemblyscript-json/assembly/JSON/Obj$378 (result i32)
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $0
     i32.store offset=4
     local.get $2
     local.get $0
     i32.store
     local.get $2
     local.get $0
     call $~lib/assemblyscript-json/assembly/JSON/_JSON.parse<~lib/string/String>
     local.tee $3
     i32.store offset=8
     i32.const 0
     local.get $3
     i32.const 8
     i32.sub
     i32.load
     i32.const 7
     i32.ne
     br_if $__inlined_func$~instanceof|~lib/assemblyscript-json/assembly/JSON/Obj$378
     drop
     i32.const 1
    end
    i32.eqz
    if
     i32.const 4240
     i32.const 6032
     i32.const 316
     i32.const 33
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    local.get $3
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $3
    i32.store
    local.get $2
    local.get $1
    i32.store offset=16
    local.get $2
    i32.const 16
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 6628
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i64.const 0
    i64.store
    local.get $0
    i64.const 0
    i64.store offset=8
    local.get $0
    local.get $3
    i32.store
    local.get $0
    local.get $1
    i32.store offset=4
    local.get $0
    block $__inlined_func$~lib/assemblyscript-json/assembly/JSON/Obj#get$9 (result i32)
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.sub
     global.set $~lib/memory/__stack_pointer
     block $folding-inner00
      global.get $~lib/memory/__stack_pointer
      i32.const 6628
      i32.lt_s
      br_if $folding-inner00
      global.get $~lib/memory/__stack_pointer
      local.tee $4
      i64.const 0
      i64.store
      local.get $4
      i32.const 0
      i32.store offset=8
      local.get $4
      local.get $3
      i32.store offset=8
      local.get $4
      local.get $3
      i32.load
      local.tee $0
      i32.store
      local.get $4
      local.get $1
      i32.store offset=4
      local.get $4
      i32.const 12
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 6628
      i32.lt_s
      br_if $folding-inner00
      global.get $~lib/memory/__stack_pointer
      local.tee $4
      i64.const 0
      i64.store
      local.get $4
      i32.const 0
      i32.store offset=8
      local.get $4
      local.get $0
      i32.store
      local.get $4
      local.get $1
      i32.store offset=4
      local.get $4
      local.get $1
      i32.store offset=8
      local.get $0
      local.get $1
      local.get $1
      call $~lib/util/hash/HASH<~lib/string/String>
      call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/assembly/JSON/Value>#find
      i32.const 0
      i32.ne
      local.set $0
      global.get $~lib/memory/__stack_pointer
      i32.const 12
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $0
      i32.eqz
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 12
       i32.add
       global.set $~lib/memory/__stack_pointer
       i32.const 0
       br $__inlined_func$~lib/assemblyscript-json/assembly/JSON/Obj#get$9
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $0
      local.get $3
      i32.store offset=8
      local.get $0
      local.get $3
      i32.load
      local.tee $3
      i32.store
      local.get $0
      local.get $1
      i32.store offset=4
      local.get $0
      i32.const 12
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 6628
      i32.lt_s
      br_if $folding-inner00
      global.get $~lib/memory/__stack_pointer
      local.tee $0
      i64.const 0
      i64.store
      local.get $0
      i32.const 0
      i32.store offset=8
      local.get $0
      local.get $3
      i32.store
      local.get $0
      local.get $1
      i32.store offset=4
      local.get $0
      local.get $1
      i32.store offset=8
      local.get $3
      local.get $1
      local.get $1
      call $~lib/util/hash/HASH<~lib/string/String>
      call $~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/assembly/JSON/Value>#find
      local.tee $0
      i32.eqz
      if
       i32.const 6256
       i32.const 6320
       i32.const 105
       i32.const 17
       call $~lib/builtins/abort
       unreachable
      end
      local.get $0
      i32.load offset=4
      local.set $0
      global.get $~lib/memory/__stack_pointer
      i32.const 12
      i32.add
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 12
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $0
      br $__inlined_func$~lib/assemblyscript-json/assembly/JSON/Obj#get$9
     end
     br $folding-inner1
    end
    local.tee $0
    i32.store offset=8
    local.get $0
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $0
     i32.store
     local.get $1
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 6628
     i32.lt_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     i32.const 0
     i32.store
     local.get $1
     local.get $0
     i32.store
     local.get $0
     if (result i32)
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      i32.const 17
      i32.eq
     else
      i32.const 0
     end
     local.set $1
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
    else
     i32.const 0
     local.set $1
    end
    block $__inlined_func$~lib/assemblyscript-json/assembly/JSON/Obj#getString$543
     local.get $1
     if
      block $__inlined_func$~instanceof|~lib/assemblyscript-json/assembly/JSON/Str$374 (result i32)
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=12
       i32.const 0
       local.get $0
       i32.const 8
       i32.sub
       i32.load
       i32.const 17
       i32.ne
       br_if $__inlined_func$~instanceof|~lib/assemblyscript-json/assembly/JSON/Str$374
       drop
       i32.const 1
      end
      i32.eqz
      if
       i32.const 4240
       i32.const 4304
       i32.const 361
       i32.const 21
       call $~lib/builtins/abort
       unreachable
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 16
      i32.add
      global.set $~lib/memory/__stack_pointer
      br $__inlined_func$~lib/assemblyscript-json/assembly/JSON/Obj#getString$543
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 0
     local.set $0
    end
    local.get $2
    local.get $0
    i32.store offset=20
    local.get $0
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $0
     i32.store
     local.get $1
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 6628
     i32.lt_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     i32.const 0
     i32.store
     local.get $1
     local.get $0
     i32.store
     local.get $0
     i32.load
     local.set $0
     local.get $1
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 24
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $0
     return
    end
    br $folding-inner2
   end
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 3408
 )
 (func $assembly/index/main (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.const 48
   memory.fill
   local.get $2
   i32.const 3504
   i32.store
   i32.const 3504
   call $~lib/@vsc.eco/sdk/assembly/index/console.log
   global.get $~lib/memory/__stack_pointer
   local.set $2
   block $__inlined_func$~instanceof|~lib/assemblyscript-json/assembly/JSON/Obj$380 (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    call $~lib/assemblyscript-json/assembly/JSON/_JSON.parse<~lib/string/String>
    local.tee $4
    i32.store offset=8
    i32.const 0
    local.get $4
    i32.const 8
    i32.sub
    i32.load
    i32.const 7
    i32.ne
    br_if $__inlined_func$~instanceof|~lib/assemblyscript-json/assembly/JSON/Obj$380
    drop
    i32.const 1
   end
   i32.eqz
   if
    i32.const 4240
    i32.const 6032
    i32.const 991
    i32.const 33
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   local.get $4
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $4
   i32.store
   local.get $3
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   local.get $4
   i32.store offset=4
   local.get $2
   local.get $4
   i32.load
   local.tee $2
   i32.store
   block $__inlined_func$~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/assembly/JSON/Value>#keys$10 (result i32)
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.sub
    global.set $~lib/memory/__stack_pointer
    block $folding-inner00
     global.get $~lib/memory/__stack_pointer
     i32.const 6628
     i32.lt_s
     br_if $folding-inner00
     global.get $~lib/memory/__stack_pointer
     local.tee $6
     i64.const 0
     i64.store
     local.get $6
     i32.const 0
     i32.store offset=8
     local.get $6
     local.get $2
     i32.store
     local.get $2
     i32.load offset=8
     local.set $4
     local.get $6
     local.get $2
     i32.store
     local.get $6
     local.get $2
     i32.load offset=16
     local.tee $6
     call $~lib/array/Array<~lib/string/String>#constructor
     local.tee $7
     i32.store offset=4
     loop $for-loop|0
      local.get $5
      local.get $6
      i32.lt_s
      if
       local.get $4
       local.get $5
       i32.const 12
       i32.mul
       i32.add
       local.tee $8
       i32.load offset=8
       i32.const 1
       i32.and
       i32.eqz
       if
        global.get $~lib/memory/__stack_pointer
        local.tee $9
        local.get $7
        i32.store
        local.get $1
        local.tee $2
        i32.const 1
        i32.add
        local.set $1
        local.get $9
        local.get $8
        i32.load
        local.tee $8
        i32.store offset=8
        local.get $9
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 6628
        i32.lt_s
        br_if $folding-inner00
        global.get $~lib/memory/__stack_pointer
        local.tee $9
        i32.const 0
        i32.store
        local.get $9
        local.get $7
        i32.store
        local.get $2
        local.get $7
        i32.load offset=12
        i32.ge_u
        if
         local.get $2
         i32.const 0
         i32.lt_s
         if
          i32.const 1248
          i32.const 3728
          i32.const 130
          i32.const 22
          call $~lib/builtins/abort
          unreachable
         end
         local.get $7
         local.get $2
         i32.const 1
         i32.add
         local.tee $9
         i32.const 1
         call $~lib/array/ensureCapacity
         global.get $~lib/memory/__stack_pointer
         local.get $7
         i32.store
         local.get $7
         local.get $9
         i32.store offset=12
        end
        global.get $~lib/memory/__stack_pointer
        local.get $7
        i32.store
        local.get $7
        i32.load offset=4
        local.get $2
        i32.const 2
        i32.shl
        i32.add
        local.get $8
        i32.store
        local.get $7
        local.get $8
        i32.const 1
        call $~lib/rt/itcms/__link
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
       end
       local.get $5
       i32.const 1
       i32.add
       local.set $5
       br $for-loop|0
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $7
     i32.store
     local.get $2
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 6628
     i32.lt_s
     br_if $folding-inner00
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.store
     local.get $7
     local.get $1
     i32.const 0
     call $~lib/array/ensureCapacity
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store
     local.get $7
     local.get $1
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $7
     br $__inlined_func$~lib/map/Map<~lib/string/String,~lib/assemblyscript-json/assembly/JSON/Value>#keys$10
    end
    br $folding-inner1
   end
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   local.get $2
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.store
   i32.const 0
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.const 6096
   i32.const 0
   memory.copy
   local.get $3
   local.get $4
   i32.store
   i32.const 16
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $3
   local.get $4
   i32.store
   local.get $3
   local.get $4
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $3
   local.get $4
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.store offset=8
   local.get $3
   i32.const 0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   local.get $3
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   i32.const 6128
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=40
   local.get $2
   call $~lib/array/Array<~lib/assemblyscript-json/assembly/JSON/Value>#get:length
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 0
   i32.store
   block $__inlined_func$~lib/util/number/itoa32$86
    local.get $1
    i32.eqz
    if
     local.get $4
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 1824
     local.set $1
     br $__inlined_func$~lib/util/number/itoa32$86
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    local.get $1
    i32.sub
    local.get $1
    local.get $1
    i32.const 31
    i32.shr_u
    i32.const 1
    i32.shl
    local.tee $4
    select
    local.tee $5
    i32.const 100000
    i32.lt_u
    if (result i32)
     local.get $5
     i32.const 100
     i32.lt_u
     if (result i32)
      local.get $5
      i32.const 10
      i32.ge_u
      i32.const 1
      i32.add
     else
      local.get $5
      i32.const 10000
      i32.ge_u
      i32.const 3
      i32.add
      local.get $5
      i32.const 1000
      i32.ge_u
      i32.add
     end
    else
     local.get $5
     i32.const 10000000
     i32.lt_u
     if (result i32)
      local.get $5
      i32.const 1000000
      i32.ge_u
      i32.const 6
      i32.add
     else
      local.get $5
      i32.const 1000000000
      i32.ge_u
      i32.const 8
      i32.add
      local.get $5
      i32.const 100000000
      i32.ge_u
      i32.add
     end
    end
    local.tee $6
    i32.const 1
    i32.shl
    local.get $4
    i32.add
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $1
    i32.store
    local.get $1
    local.get $4
    i32.add
    local.get $5
    local.get $6
    call $~lib/util/number/utoa32_dec_lut
    local.get $4
    if
     local.get $1
     i32.const 45
     i32.store16
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=36
   i32.const 6128
   local.get $1
   call $~lib/string/String.__concat
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   i32.const 6176
   i32.store offset=28
   local.get $1
   i32.const 6176
   call $~lib/string/String.__concat
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/@vsc.eco/sdk/assembly/index/console.log
   i32.const 0
   local.set $1
   loop $for-loop|01
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store
    local.get $2
    call $~lib/array/Array<~lib/assemblyscript-json/assembly/JSON/Value>#get:length
    local.get $1
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $2
     local.get $1
     call $~lib/array/Array<~lib/assemblyscript-json/assembly/JSON/Value>#__get
     local.tee $4
     i32.store offset=44
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=28
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=32
     local.get $0
     local.get $4
     call $assembly/index/getStringValueFromJsonObject
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=24
     local.get $3
     local.get $4
     call $~lib/array/Array<~lib/assemblyscript-json/assembly/JSON/Value>#push
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|01
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   call $assembly/index/processHeaders
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 39424
  i32.const 39472
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~start
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   memory.size
   i32.const 16
   i32.shl
   i32.const 39396
   i32.sub
   i32.const 1
   i32.shr_u
   global.set $~lib/rt/itcms/threshold
   i32.const 1172
   i32.const 1168
   i32.store
   i32.const 1176
   i32.const 1168
   i32.store
   i32.const 1168
   global.set $~lib/rt/itcms/pinSpace
   i32.const 1204
   i32.const 1200
   i32.store
   i32.const 1208
   i32.const 1200
   i32.store
   i32.const 1200
   global.set $~lib/rt/itcms/toSpace
   i32.const 1348
   i32.const 1344
   i32.store
   i32.const 1352
   i32.const 1344
   i32.store
   i32.const 1344
   global.set $~lib/rt/itcms/fromSpace
   call $~lib/map/Map<~lib/string/String,~lib/string/String>#constructor
   global.set $assembly/index/dataStorage
   call $~lib/map/Map<~lib/string/String,~lib/string/String>#constructor
   global.set $assembly/index/headersState
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
   i32.const 4
   i32.const 11
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store offset=4
   local.get $1
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $0
   i32.eqz
   if
    local.get $2
    i32.const 0
    i32.const 12
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store offset=4
   local.get $2
   local.get $0
   call $~lib/object/Object#constructor
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   call $~lib/array/Array<~lib/assemblyscript-json/assembly/JSON/Value>#constructor
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   local.get $1
   i32.store
   local.get $0
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $~lib/assemblyscript-json/assembly/JSON/_JSON.handler
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/assemblyscript-json/assembly/JSON/_JSON.handler
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 8
   i32.const 14
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $1
   local.get $0
   i32.store
   local.get $1
   local.get $0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   global.set $~lib/assemblyscript-json/assembly/JSON/_JSON.decoder
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store
   local.get $0
   i32.const 0
   i32.const 22
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store offset=4
   local.get $1
   local.get $0
   call $~lib/assemblyscript-json/assembly/JSON/Value#constructor
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $~lib/assemblyscript-json/assembly/JSON/NULL
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 39424
  i32.const 39472
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1456
   i32.const 1504
   i32.const 52
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/util/number/itoa64 (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $0
  i64.eqz
  if
   local.get $1
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1824
   return
  end
  i64.const 0
  local.get $0
  i64.sub
  local.get $0
  local.get $0
  i64.const 63
  i64.shr_u
  i32.wrap_i64
  i32.const 1
  i32.shl
  local.tee $2
  select
  local.tee $0
  i64.const 4294967295
  i64.le_u
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.wrap_i64
   local.tee $1
   i32.const 100000
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 100
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 10
     i32.ge_u
     i32.const 1
     i32.add
    else
     local.get $1
     i32.const 10000
     i32.ge_u
     i32.const 3
     i32.add
     local.get $1
     i32.const 1000
     i32.ge_u
     i32.add
    end
   else
    local.get $1
    i32.const 10000000
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 1000000
     i32.ge_u
     i32.const 6
     i32.add
    else
     local.get $1
     i32.const 1000000000
     i32.ge_u
     i32.const 8
     i32.add
     local.get $1
     i32.const 100000000
     i32.ge_u
     i32.add
    end
   end
   local.tee $4
   i32.const 1
   i32.shl
   local.get $2
   i32.add
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store
   local.get $2
   local.get $3
   i32.add
   local.get $1
   local.get $4
   call $~lib/util/number/utoa32_dec_lut
  else
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i64.const 1000000000000000
   i64.lt_u
   if (result i32)
    local.get $0
    i64.const 1000000000000
    i64.lt_u
    if (result i32)
     local.get $0
     i64.const 100000000000
     i64.ge_u
     i32.const 10
     i32.add
     local.get $0
     i64.const 10000000000
     i64.ge_u
     i32.add
    else
     local.get $0
     i64.const 100000000000000
     i64.ge_u
     i32.const 13
     i32.add
     local.get $0
     i64.const 10000000000000
     i64.ge_u
     i32.add
    end
   else
    local.get $0
    i64.const 100000000000000000
    i64.lt_u
    if (result i32)
     local.get $0
     i64.const 10000000000000000
     i64.ge_u
     i32.const 16
     i32.add
    else
     local.get $0
     i64.const -8446744073709551616
     i64.ge_u
     i32.const 18
     i32.add
     local.get $0
     i64.const 1000000000000000000
     i64.ge_u
     i32.add
    end
   end
   local.tee $1
   i32.const 1
   i32.shl
   local.get $2
   i32.add
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store
   local.get $2
   local.get $3
   i32.add
   local.set $5
   loop $while-continue|0
    local.get $0
    i64.const 100000000
    i64.ge_u
    if
     local.get $5
     local.get $1
     i32.const 4
     i32.sub
     local.tee $1
     i32.const 1
     i32.shl
     i32.add
     local.get $0
     local.get $0
     i64.const 100000000
     i64.div_u
     local.tee $0
     i64.const 100000000
     i64.mul
     i64.sub
     i32.wrap_i64
     local.tee $4
     i32.const 10000
     i32.rem_u
     local.tee $6
     i32.const 100
     i32.div_u
     i32.const 2
     i32.shl
     i32.const 1836
     i32.add
     i64.load32_u
     local.get $6
     i32.const 100
     i32.rem_u
     i32.const 2
     i32.shl
     i32.const 1836
     i32.add
     i64.load32_u
     i64.const 32
     i64.shl
     i64.or
     i64.store
     local.get $5
     local.get $1
     i32.const 4
     i32.sub
     local.tee $1
     i32.const 1
     i32.shl
     i32.add
     local.get $4
     i32.const 10000
     i32.div_u
     local.tee $4
     i32.const 100
     i32.div_u
     i32.const 2
     i32.shl
     i32.const 1836
     i32.add
     i64.load32_u
     local.get $4
     i32.const 100
     i32.rem_u
     i32.const 2
     i32.shl
     i32.const 1836
     i32.add
     i64.load32_u
     i64.const 32
     i64.shl
     i64.or
     i64.store
     br $while-continue|0
    end
   end
   local.get $5
   local.get $0
   i32.wrap_i64
   local.get $1
   call $~lib/util/number/utoa32_dec_lut
  end
  local.get $2
  if
   local.get $3
   i32.const 45
   i32.store16
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/object/Object#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   local.get $1
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/index/processHeaders (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  call $assembly/index/processHeaders
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/index/setU8 (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store
   local.get $3
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   local.get $0
   i32.store
   i32.const 1
   global.set $~argumentsLength
   local.get $3
   local.get $0
   call $~lib/dataview/DataView#constructor@varargs
   local.tee $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.store
   local.get $3
   local.get $0
   i32.store
   local.get $1
   i32.const 255
   i32.and
   local.tee $1
   local.get $0
   i32.load offset=8
   i32.ge_u
   if
    i32.const 1248
    i32.const 3440
    i32.const 128
    i32.const 50
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store
   local.get $1
   local.get $0
   i32.load offset=4
   i32.add
   local.get $2
   i32.store8
   local.get $3
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 39424
  i32.const 39472
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:assembly/index/getU8 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $2
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store
   local.get $2
   local.get $0
   i32.store
   i32.const 1
   global.set $~argumentsLength
   local.get $2
   local.get $0
   call $~lib/dataview/DataView#constructor@varargs
   local.tee $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.store
   local.get $2
   local.get $0
   i32.store
   local.get $1
   i32.const 255
   i32.and
   local.tee $1
   local.get $0
   i32.load offset=8
   i32.ge_u
   if
    i32.const 1248
    i32.const 3440
    i32.const 72
    i32.const 50
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store
   local.get $1
   local.get $0
   i32.load offset=4
   i32.add
   i32.load8_u
   local.set $0
   local.get $2
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 39424
  i32.const 39472
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:assembly/index/main (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 6628
  i32.lt_s
  if
   i32.const 39424
   i32.const 39472
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/index/main
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 6368
 )
 (func $export:assembly/index/createBufferFromBase64 (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store
   local.get $1
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 6628
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   local.get $0
   i32.store
   local.get $1
   local.get $0
   call $assembly/bitcoin/base64
   local.tee $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/@vsc.eco/sdk/assembly/index/console.log
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 39424
  i32.const 39472
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
)
