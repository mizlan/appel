{-# OPTIONS_GHC -w #-}
module Pup.Parser where

import Pup.Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14
	| HappyAbsSyn15 t15
	| HappyAbsSyn16 t16
	| HappyAbsSyn17 t17
	| HappyAbsSyn18 t18
	| HappyAbsSyn19 t19

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,396) ([0,16600,32904,14336,0,8300,16452,7168,0,0,0,256,0,0,1088,0,0,0,64512,63,49152,16902,1028,448,0,0,0,128,0,0,0,0,0,0,0,0,27648,17440,64,28,0,0,0,0,6912,4360,16,7,3456,2180,32776,3,0,0,0,0,0,0,0,0,0,21760,0,0,0,0,0,0,0,0,0,0,4150,8226,3584,0,0,0,1024,0,0,0,512,0,0,0,0,0,0,4,0,0,32768,65408,7,0,128,65472,3,32768,14,0,0,0,0,0,1,0,64,32760,0,3456,2180,32776,3,1728,1090,49156,1,864,545,57346,0,33200,272,28673,0,16600,32904,14336,0,8300,16452,7168,0,4150,8226,3584,0,2075,4113,1792,32768,33805,2056,896,49152,16902,1028,448,24576,8451,514,224,45056,4225,257,112,55296,34880,128,56,0,0,0,16,13824,8720,32,14,0,0,32760,0,0,0,0,0,0,8192,8190,0,0,0,1023,0,0,32768,511,0,0,49152,3,0,0,57344,1,0,0,61440,0,0,0,30720,0,0,0,15360,0,0,0,7680,0,0,0,0,0,0,0,0,0,0,0,768,0,0,0,384,0,13824,8720,32,14,6912,4360,16,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16600,32904,14336,0,0,0,4096,0,0,0,2048,0,0,0,1024,32768,33805,2056,896,49152,16902,1028,448,0,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,1024,0,0,0,1024,0,0,0,16384,16380,0,0,2176,0,0,864,545,57346,0,0,0,0,0,0,4,0,0,0,0,4096,0,0,0,2048,0,0,0,0,0,0,64516,63,0,2048,65024,31,0,0,4096,0,0,16384,0,8,0,32768,0,0,0,1,65504,1,2048,0,65520,0,0,0,32760,0,0,0,0,0,1728,1090,49156,1,0,0,0,0,0,0,16384,0,0,0,8192,0,8300,16452,7168,0,2048,512,2048,0,2075,4113,1792,0,0,0,0,49152,16902,1028,448,0,0,0,0,0,0,0,0,55296,34880,128,56,0,0,65504,1,0,0,65520,0,0,0,32760,0,0,0,16380,0,0,0,0,0,0,16,0,0,0,0,16384,0,0,0,0,0,0,57344,511,0,0,0,256,0,0,32,0,0,8192,64512,63,49152,16902,1028,448,0,32768,4096,0,45056,4225,257,112,0,0,16,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,16380,0,0,0,0,1,864,545,57346,0,0,32768,2047,0,0,49152,1023,0,0,0,2,0,4150,8226,3584,0,0,63488,127,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","program","decs","dec","tydec","ty","tyfields","tyfield","tyfields1","vardec","fundec","lvalue","lvaluei","expmany","expseqi","expseqii","exp","while","for","to","break","let","in","end","function","var","type","array","if","then","else","do","of","nil","','","':'","';'","'('","')'","'['","']'","'{'","'}'","'.'","'+'","'-'","'*'","'/'","'='","'<>'","'<'","'<='","'>'","'>='","'&'","'|'","':='","int","str","ident","%eof"]
        bit_start = st Prelude.* 63
        bit_end = (st Prelude.+ 1) Prelude.* 63
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..62]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (20) = happyShift action_5
action_0 (21) = happyShift action_6
action_0 (23) = happyShift action_7
action_0 (24) = happyShift action_8
action_0 (31) = happyShift action_9
action_0 (36) = happyShift action_10
action_0 (40) = happyShift action_11
action_0 (48) = happyShift action_12
action_0 (60) = happyShift action_13
action_0 (61) = happyShift action_14
action_0 (62) = happyShift action_15
action_0 (4) = happyGoto action_16
action_0 (14) = happyGoto action_2
action_0 (15) = happyGoto action_3
action_0 (19) = happyGoto action_4
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (20) = happyShift action_5
action_1 (21) = happyShift action_6
action_1 (23) = happyShift action_7
action_1 (24) = happyShift action_8
action_1 (31) = happyShift action_9
action_1 (36) = happyShift action_10
action_1 (40) = happyShift action_11
action_1 (48) = happyShift action_12
action_1 (60) = happyShift action_13
action_1 (61) = happyShift action_14
action_1 (62) = happyShift action_15
action_1 (14) = happyGoto action_2
action_1 (15) = happyGoto action_3
action_1 (19) = happyGoto action_4
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (59) = happyShift action_42
action_2 _ = happyReduce_34

action_3 (42) = happyShift action_40
action_3 (46) = happyShift action_41
action_3 _ = happyReduce_21

action_4 (47) = happyShift action_28
action_4 (48) = happyShift action_29
action_4 (49) = happyShift action_30
action_4 (50) = happyShift action_31
action_4 (51) = happyShift action_32
action_4 (52) = happyShift action_33
action_4 (53) = happyShift action_34
action_4 (54) = happyShift action_35
action_4 (55) = happyShift action_36
action_4 (56) = happyShift action_37
action_4 (57) = happyShift action_38
action_4 (58) = happyShift action_39
action_4 _ = happyReduce_1

action_5 (20) = happyShift action_5
action_5 (21) = happyShift action_6
action_5 (23) = happyShift action_7
action_5 (24) = happyShift action_8
action_5 (31) = happyShift action_9
action_5 (36) = happyShift action_10
action_5 (40) = happyShift action_11
action_5 (48) = happyShift action_12
action_5 (60) = happyShift action_13
action_5 (61) = happyShift action_14
action_5 (62) = happyShift action_15
action_5 (14) = happyGoto action_2
action_5 (15) = happyGoto action_3
action_5 (19) = happyGoto action_27
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (62) = happyShift action_26
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_44

action_8 (5) = happyGoto action_25
action_8 _ = happyReduce_2

action_9 (20) = happyShift action_5
action_9 (21) = happyShift action_6
action_9 (23) = happyShift action_7
action_9 (24) = happyShift action_8
action_9 (31) = happyShift action_9
action_9 (36) = happyShift action_10
action_9 (40) = happyShift action_11
action_9 (48) = happyShift action_12
action_9 (60) = happyShift action_13
action_9 (61) = happyShift action_14
action_9 (62) = happyShift action_15
action_9 (14) = happyGoto action_2
action_9 (15) = happyGoto action_3
action_9 (19) = happyGoto action_24
action_9 _ = happyFail (happyExpListPerState 9)

action_10 _ = happyReduce_33

action_11 (20) = happyShift action_5
action_11 (21) = happyShift action_6
action_11 (23) = happyShift action_7
action_11 (24) = happyShift action_8
action_11 (31) = happyShift action_9
action_11 (36) = happyShift action_10
action_11 (40) = happyShift action_11
action_11 (48) = happyShift action_12
action_11 (60) = happyShift action_13
action_11 (61) = happyShift action_14
action_11 (62) = happyShift action_15
action_11 (14) = happyGoto action_2
action_11 (15) = happyGoto action_3
action_11 (17) = happyGoto action_22
action_11 (19) = happyGoto action_23
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (20) = happyShift action_5
action_12 (21) = happyShift action_6
action_12 (23) = happyShift action_7
action_12 (24) = happyShift action_8
action_12 (31) = happyShift action_9
action_12 (36) = happyShift action_10
action_12 (40) = happyShift action_11
action_12 (48) = happyShift action_12
action_12 (60) = happyShift action_13
action_12 (61) = happyShift action_14
action_12 (62) = happyShift action_15
action_12 (14) = happyGoto action_2
action_12 (15) = happyGoto action_3
action_12 (19) = happyGoto action_21
action_12 _ = happyFail (happyExpListPerState 12)

action_13 _ = happyReduce_32

action_14 _ = happyReduce_31

action_15 (40) = happyShift action_17
action_15 (42) = happyShift action_18
action_15 (44) = happyShift action_19
action_15 (46) = happyShift action_20
action_15 _ = happyReduce_20

action_16 (63) = happyAccept
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (16) = happyGoto action_77
action_17 _ = happyReduce_26

action_18 (20) = happyShift action_5
action_18 (21) = happyShift action_6
action_18 (23) = happyShift action_7
action_18 (24) = happyShift action_8
action_18 (31) = happyShift action_9
action_18 (36) = happyShift action_10
action_18 (40) = happyShift action_11
action_18 (48) = happyShift action_12
action_18 (60) = happyShift action_13
action_18 (61) = happyShift action_14
action_18 (62) = happyShift action_15
action_18 (14) = happyGoto action_2
action_18 (15) = happyGoto action_3
action_18 (19) = happyGoto action_76
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (62) = happyShift action_75
action_19 (9) = happyGoto action_72
action_19 (10) = happyGoto action_73
action_19 (11) = happyGoto action_74
action_19 _ = happyReduce_11

action_20 (62) = happyShift action_71
action_20 _ = happyFail (happyExpListPerState 20)

action_21 _ = happyReduce_46

action_22 (41) = happyShift action_70
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (39) = happyShift action_69
action_23 (47) = happyShift action_28
action_23 (48) = happyShift action_29
action_23 (49) = happyShift action_30
action_23 (50) = happyShift action_31
action_23 (51) = happyShift action_32
action_23 (52) = happyShift action_33
action_23 (53) = happyShift action_34
action_23 (54) = happyShift action_35
action_23 (55) = happyShift action_36
action_23 (56) = happyShift action_37
action_23 (57) = happyShift action_38
action_23 (58) = happyShift action_39
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (32) = happyShift action_68
action_24 (47) = happyShift action_28
action_24 (48) = happyShift action_29
action_24 (49) = happyShift action_30
action_24 (50) = happyShift action_31
action_24 (51) = happyShift action_32
action_24 (52) = happyShift action_33
action_24 (53) = happyShift action_34
action_24 (54) = happyShift action_35
action_24 (55) = happyShift action_36
action_24 (56) = happyShift action_37
action_24 (57) = happyShift action_38
action_24 (58) = happyShift action_39
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (25) = happyShift action_64
action_25 (27) = happyShift action_65
action_25 (28) = happyShift action_66
action_25 (29) = happyShift action_67
action_25 (6) = happyGoto action_60
action_25 (7) = happyGoto action_61
action_25 (12) = happyGoto action_62
action_25 (13) = happyGoto action_63
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (59) = happyShift action_59
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (34) = happyShift action_58
action_27 (47) = happyShift action_28
action_27 (48) = happyShift action_29
action_27 (49) = happyShift action_30
action_27 (50) = happyShift action_31
action_27 (51) = happyShift action_32
action_27 (52) = happyShift action_33
action_27 (53) = happyShift action_34
action_27 (54) = happyShift action_35
action_27 (55) = happyShift action_36
action_27 (56) = happyShift action_37
action_27 (57) = happyShift action_38
action_27 (58) = happyShift action_39
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (20) = happyShift action_5
action_28 (21) = happyShift action_6
action_28 (23) = happyShift action_7
action_28 (24) = happyShift action_8
action_28 (31) = happyShift action_9
action_28 (36) = happyShift action_10
action_28 (40) = happyShift action_11
action_28 (48) = happyShift action_12
action_28 (60) = happyShift action_13
action_28 (61) = happyShift action_14
action_28 (62) = happyShift action_15
action_28 (14) = happyGoto action_2
action_28 (15) = happyGoto action_3
action_28 (19) = happyGoto action_57
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (20) = happyShift action_5
action_29 (21) = happyShift action_6
action_29 (23) = happyShift action_7
action_29 (24) = happyShift action_8
action_29 (31) = happyShift action_9
action_29 (36) = happyShift action_10
action_29 (40) = happyShift action_11
action_29 (48) = happyShift action_12
action_29 (60) = happyShift action_13
action_29 (61) = happyShift action_14
action_29 (62) = happyShift action_15
action_29 (14) = happyGoto action_2
action_29 (15) = happyGoto action_3
action_29 (19) = happyGoto action_56
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (20) = happyShift action_5
action_30 (21) = happyShift action_6
action_30 (23) = happyShift action_7
action_30 (24) = happyShift action_8
action_30 (31) = happyShift action_9
action_30 (36) = happyShift action_10
action_30 (40) = happyShift action_11
action_30 (48) = happyShift action_12
action_30 (60) = happyShift action_13
action_30 (61) = happyShift action_14
action_30 (62) = happyShift action_15
action_30 (14) = happyGoto action_2
action_30 (15) = happyGoto action_3
action_30 (19) = happyGoto action_55
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (20) = happyShift action_5
action_31 (21) = happyShift action_6
action_31 (23) = happyShift action_7
action_31 (24) = happyShift action_8
action_31 (31) = happyShift action_9
action_31 (36) = happyShift action_10
action_31 (40) = happyShift action_11
action_31 (48) = happyShift action_12
action_31 (60) = happyShift action_13
action_31 (61) = happyShift action_14
action_31 (62) = happyShift action_15
action_31 (14) = happyGoto action_2
action_31 (15) = happyGoto action_3
action_31 (19) = happyGoto action_54
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (20) = happyShift action_5
action_32 (21) = happyShift action_6
action_32 (23) = happyShift action_7
action_32 (24) = happyShift action_8
action_32 (31) = happyShift action_9
action_32 (36) = happyShift action_10
action_32 (40) = happyShift action_11
action_32 (48) = happyShift action_12
action_32 (60) = happyShift action_13
action_32 (61) = happyShift action_14
action_32 (62) = happyShift action_15
action_32 (14) = happyGoto action_2
action_32 (15) = happyGoto action_3
action_32 (19) = happyGoto action_53
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (20) = happyShift action_5
action_33 (21) = happyShift action_6
action_33 (23) = happyShift action_7
action_33 (24) = happyShift action_8
action_33 (31) = happyShift action_9
action_33 (36) = happyShift action_10
action_33 (40) = happyShift action_11
action_33 (48) = happyShift action_12
action_33 (60) = happyShift action_13
action_33 (61) = happyShift action_14
action_33 (62) = happyShift action_15
action_33 (14) = happyGoto action_2
action_33 (15) = happyGoto action_3
action_33 (19) = happyGoto action_52
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (20) = happyShift action_5
action_34 (21) = happyShift action_6
action_34 (23) = happyShift action_7
action_34 (24) = happyShift action_8
action_34 (31) = happyShift action_9
action_34 (36) = happyShift action_10
action_34 (40) = happyShift action_11
action_34 (48) = happyShift action_12
action_34 (60) = happyShift action_13
action_34 (61) = happyShift action_14
action_34 (62) = happyShift action_15
action_34 (14) = happyGoto action_2
action_34 (15) = happyGoto action_3
action_34 (19) = happyGoto action_51
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (20) = happyShift action_5
action_35 (21) = happyShift action_6
action_35 (23) = happyShift action_7
action_35 (24) = happyShift action_8
action_35 (31) = happyShift action_9
action_35 (36) = happyShift action_10
action_35 (40) = happyShift action_11
action_35 (48) = happyShift action_12
action_35 (60) = happyShift action_13
action_35 (61) = happyShift action_14
action_35 (62) = happyShift action_15
action_35 (14) = happyGoto action_2
action_35 (15) = happyGoto action_3
action_35 (19) = happyGoto action_50
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (20) = happyShift action_5
action_36 (21) = happyShift action_6
action_36 (23) = happyShift action_7
action_36 (24) = happyShift action_8
action_36 (31) = happyShift action_9
action_36 (36) = happyShift action_10
action_36 (40) = happyShift action_11
action_36 (48) = happyShift action_12
action_36 (60) = happyShift action_13
action_36 (61) = happyShift action_14
action_36 (62) = happyShift action_15
action_36 (14) = happyGoto action_2
action_36 (15) = happyGoto action_3
action_36 (19) = happyGoto action_49
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (20) = happyShift action_5
action_37 (21) = happyShift action_6
action_37 (23) = happyShift action_7
action_37 (24) = happyShift action_8
action_37 (31) = happyShift action_9
action_37 (36) = happyShift action_10
action_37 (40) = happyShift action_11
action_37 (48) = happyShift action_12
action_37 (60) = happyShift action_13
action_37 (61) = happyShift action_14
action_37 (62) = happyShift action_15
action_37 (14) = happyGoto action_2
action_37 (15) = happyGoto action_3
action_37 (19) = happyGoto action_48
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (20) = happyShift action_5
action_38 (21) = happyShift action_6
action_38 (23) = happyShift action_7
action_38 (24) = happyShift action_8
action_38 (31) = happyShift action_9
action_38 (36) = happyShift action_10
action_38 (40) = happyShift action_11
action_38 (48) = happyShift action_12
action_38 (60) = happyShift action_13
action_38 (61) = happyShift action_14
action_38 (62) = happyShift action_15
action_38 (14) = happyGoto action_2
action_38 (15) = happyGoto action_3
action_38 (19) = happyGoto action_47
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (20) = happyShift action_5
action_39 (21) = happyShift action_6
action_39 (23) = happyShift action_7
action_39 (24) = happyShift action_8
action_39 (31) = happyShift action_9
action_39 (36) = happyShift action_10
action_39 (40) = happyShift action_11
action_39 (48) = happyShift action_12
action_39 (60) = happyShift action_13
action_39 (61) = happyShift action_14
action_39 (62) = happyShift action_15
action_39 (14) = happyGoto action_2
action_39 (15) = happyGoto action_3
action_39 (19) = happyGoto action_46
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (20) = happyShift action_5
action_40 (21) = happyShift action_6
action_40 (23) = happyShift action_7
action_40 (24) = happyShift action_8
action_40 (31) = happyShift action_9
action_40 (36) = happyShift action_10
action_40 (40) = happyShift action_11
action_40 (48) = happyShift action_12
action_40 (60) = happyShift action_13
action_40 (61) = happyShift action_14
action_40 (62) = happyShift action_15
action_40 (14) = happyGoto action_2
action_40 (15) = happyGoto action_3
action_40 (19) = happyGoto action_45
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (62) = happyShift action_44
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (20) = happyShift action_5
action_42 (21) = happyShift action_6
action_42 (23) = happyShift action_7
action_42 (24) = happyShift action_8
action_42 (31) = happyShift action_9
action_42 (36) = happyShift action_10
action_42 (40) = happyShift action_11
action_42 (48) = happyShift action_12
action_42 (60) = happyShift action_13
action_42 (61) = happyShift action_14
action_42 (62) = happyShift action_15
action_42 (14) = happyGoto action_2
action_42 (15) = happyGoto action_3
action_42 (19) = happyGoto action_43
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (47) = happyShift action_28
action_43 (48) = happyShift action_29
action_43 (49) = happyShift action_30
action_43 (50) = happyShift action_31
action_43 (51) = happyShift action_32
action_43 (52) = happyShift action_33
action_43 (53) = happyShift action_34
action_43 (54) = happyShift action_35
action_43 (55) = happyShift action_36
action_43 (56) = happyShift action_37
action_43 (57) = happyShift action_38
action_43 (58) = happyShift action_39
action_43 _ = happyReduce_35

action_44 _ = happyReduce_23

action_45 (43) = happyShift action_92
action_45 (47) = happyShift action_28
action_45 (48) = happyShift action_29
action_45 (49) = happyShift action_30
action_45 (50) = happyShift action_31
action_45 (51) = happyShift action_32
action_45 (52) = happyShift action_33
action_45 (53) = happyShift action_34
action_45 (54) = happyShift action_35
action_45 (55) = happyShift action_36
action_45 (56) = happyShift action_37
action_45 (57) = happyShift action_38
action_45 (58) = happyShift action_39
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (47) = happyShift action_28
action_46 (48) = happyShift action_29
action_46 (49) = happyShift action_30
action_46 (50) = happyShift action_31
action_46 (51) = happyShift action_32
action_46 (52) = happyShift action_33
action_46 (53) = happyShift action_34
action_46 (54) = happyShift action_35
action_46 (55) = happyShift action_36
action_46 (56) = happyShift action_37
action_46 _ = happyReduce_53

action_47 (47) = happyShift action_28
action_47 (48) = happyShift action_29
action_47 (49) = happyShift action_30
action_47 (50) = happyShift action_31
action_47 (51) = happyShift action_32
action_47 (52) = happyShift action_33
action_47 (53) = happyShift action_34
action_47 (54) = happyShift action_35
action_47 (55) = happyShift action_36
action_47 (56) = happyShift action_37
action_47 _ = happyReduce_52

action_48 (47) = happyShift action_28
action_48 (48) = happyShift action_29
action_48 (49) = happyShift action_30
action_48 (50) = happyShift action_31
action_48 (51) = happyFail []
action_48 (52) = happyFail []
action_48 (53) = happyFail []
action_48 (54) = happyFail []
action_48 (55) = happyFail []
action_48 (56) = happyFail []
action_48 _ = happyReduce_58

action_49 (47) = happyShift action_28
action_49 (48) = happyShift action_29
action_49 (49) = happyShift action_30
action_49 (50) = happyShift action_31
action_49 (51) = happyFail []
action_49 (52) = happyFail []
action_49 (53) = happyFail []
action_49 (54) = happyFail []
action_49 (55) = happyFail []
action_49 (56) = happyFail []
action_49 _ = happyReduce_57

action_50 (47) = happyShift action_28
action_50 (48) = happyShift action_29
action_50 (49) = happyShift action_30
action_50 (50) = happyShift action_31
action_50 (51) = happyFail []
action_50 (52) = happyFail []
action_50 (53) = happyFail []
action_50 (54) = happyFail []
action_50 (55) = happyFail []
action_50 (56) = happyFail []
action_50 _ = happyReduce_56

action_51 (47) = happyShift action_28
action_51 (48) = happyShift action_29
action_51 (49) = happyShift action_30
action_51 (50) = happyShift action_31
action_51 (51) = happyFail []
action_51 (52) = happyFail []
action_51 (53) = happyFail []
action_51 (54) = happyFail []
action_51 (55) = happyFail []
action_51 (56) = happyFail []
action_51 _ = happyReduce_55

action_52 (47) = happyShift action_28
action_52 (48) = happyShift action_29
action_52 (49) = happyShift action_30
action_52 (50) = happyShift action_31
action_52 (51) = happyFail []
action_52 (52) = happyFail []
action_52 (53) = happyFail []
action_52 (54) = happyFail []
action_52 (55) = happyFail []
action_52 (56) = happyFail []
action_52 _ = happyReduce_54

action_53 (47) = happyShift action_28
action_53 (48) = happyShift action_29
action_53 (49) = happyShift action_30
action_53 (50) = happyShift action_31
action_53 (51) = happyFail []
action_53 (52) = happyFail []
action_53 (53) = happyFail []
action_53 (54) = happyFail []
action_53 (55) = happyFail []
action_53 (56) = happyFail []
action_53 _ = happyReduce_51

action_54 _ = happyReduce_50

action_55 _ = happyReduce_49

action_56 (49) = happyShift action_30
action_56 (50) = happyShift action_31
action_56 _ = happyReduce_48

action_57 (49) = happyShift action_30
action_57 (50) = happyShift action_31
action_57 _ = happyReduce_47

action_58 (20) = happyShift action_5
action_58 (21) = happyShift action_6
action_58 (23) = happyShift action_7
action_58 (24) = happyShift action_8
action_58 (31) = happyShift action_9
action_58 (36) = happyShift action_10
action_58 (40) = happyShift action_11
action_58 (48) = happyShift action_12
action_58 (60) = happyShift action_13
action_58 (61) = happyShift action_14
action_58 (62) = happyShift action_15
action_58 (14) = happyGoto action_2
action_58 (15) = happyGoto action_3
action_58 (19) = happyGoto action_91
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (20) = happyShift action_5
action_59 (21) = happyShift action_6
action_59 (23) = happyShift action_7
action_59 (24) = happyShift action_8
action_59 (31) = happyShift action_9
action_59 (36) = happyShift action_10
action_59 (40) = happyShift action_11
action_59 (48) = happyShift action_12
action_59 (60) = happyShift action_13
action_59 (61) = happyShift action_14
action_59 (62) = happyShift action_15
action_59 (14) = happyGoto action_2
action_59 (15) = happyGoto action_3
action_59 (19) = happyGoto action_90
action_59 _ = happyFail (happyExpListPerState 59)

action_60 _ = happyReduce_3

action_61 _ = happyReduce_4

action_62 _ = happyReduce_5

action_63 _ = happyReduce_6

action_64 (20) = happyShift action_5
action_64 (21) = happyShift action_6
action_64 (23) = happyShift action_7
action_64 (24) = happyShift action_8
action_64 (31) = happyShift action_9
action_64 (36) = happyShift action_10
action_64 (40) = happyShift action_11
action_64 (48) = happyShift action_12
action_64 (60) = happyShift action_13
action_64 (61) = happyShift action_14
action_64 (62) = happyShift action_15
action_64 (14) = happyGoto action_2
action_64 (15) = happyGoto action_3
action_64 (19) = happyGoto action_89
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (62) = happyShift action_88
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (62) = happyShift action_87
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (62) = happyShift action_86
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (20) = happyShift action_5
action_68 (21) = happyShift action_6
action_68 (23) = happyShift action_7
action_68 (24) = happyShift action_8
action_68 (31) = happyShift action_9
action_68 (36) = happyShift action_10
action_68 (40) = happyShift action_11
action_68 (48) = happyShift action_12
action_68 (60) = happyShift action_13
action_68 (61) = happyShift action_14
action_68 (62) = happyShift action_15
action_68 (14) = happyGoto action_2
action_68 (15) = happyGoto action_3
action_68 (19) = happyGoto action_85
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (20) = happyShift action_5
action_69 (21) = happyShift action_6
action_69 (23) = happyShift action_7
action_69 (24) = happyShift action_8
action_69 (31) = happyShift action_9
action_69 (36) = happyShift action_10
action_69 (40) = happyShift action_11
action_69 (48) = happyShift action_12
action_69 (60) = happyShift action_13
action_69 (61) = happyShift action_14
action_69 (62) = happyShift action_15
action_69 (14) = happyGoto action_2
action_69 (15) = happyGoto action_3
action_69 (19) = happyGoto action_84
action_69 _ = happyFail (happyExpListPerState 69)

action_70 _ = happyReduce_37

action_71 _ = happyReduce_22

action_72 (45) = happyShift action_83
action_72 _ = happyFail (happyExpListPerState 72)

action_73 _ = happyReduce_14

action_74 (37) = happyShift action_82
action_74 _ = happyReduce_12

action_75 (38) = happyShift action_81
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (43) = happyShift action_80
action_76 (47) = happyShift action_28
action_76 (48) = happyShift action_29
action_76 (49) = happyShift action_30
action_76 (50) = happyShift action_31
action_76 (51) = happyShift action_32
action_76 (52) = happyShift action_33
action_76 (53) = happyShift action_34
action_76 (54) = happyShift action_35
action_76 (55) = happyShift action_36
action_76 (56) = happyShift action_37
action_76 (57) = happyShift action_38
action_76 (58) = happyShift action_39
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (37) = happyShift action_78
action_77 (41) = happyShift action_79
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (20) = happyShift action_5
action_78 (21) = happyShift action_6
action_78 (23) = happyShift action_7
action_78 (24) = happyShift action_8
action_78 (31) = happyShift action_9
action_78 (36) = happyShift action_10
action_78 (40) = happyShift action_11
action_78 (48) = happyShift action_12
action_78 (60) = happyShift action_13
action_78 (61) = happyShift action_14
action_78 (62) = happyShift action_15
action_78 (14) = happyGoto action_2
action_78 (15) = happyGoto action_3
action_78 (19) = happyGoto action_105
action_78 _ = happyFail (happyExpListPerState 78)

action_79 _ = happyReduce_36

action_80 (35) = happyShift action_104
action_80 _ = happyReduce_24

action_81 (62) = happyShift action_103
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (62) = happyShift action_75
action_82 (10) = happyGoto action_102
action_82 _ = happyFail (happyExpListPerState 82)

action_83 _ = happyReduce_38

action_84 (39) = happyShift action_101
action_84 (47) = happyShift action_28
action_84 (48) = happyShift action_29
action_84 (49) = happyShift action_30
action_84 (50) = happyShift action_31
action_84 (51) = happyShift action_32
action_84 (52) = happyShift action_33
action_84 (53) = happyShift action_34
action_84 (54) = happyShift action_35
action_84 (55) = happyShift action_36
action_84 (56) = happyShift action_37
action_84 (57) = happyShift action_38
action_84 (58) = happyShift action_39
action_84 (18) = happyGoto action_100
action_84 _ = happyReduce_29

action_85 (33) = happyShift action_99
action_85 (47) = happyShift action_28
action_85 (48) = happyShift action_29
action_85 (49) = happyShift action_30
action_85 (50) = happyShift action_31
action_85 (51) = happyShift action_32
action_85 (52) = happyShift action_33
action_85 (53) = happyShift action_34
action_85 (54) = happyShift action_35
action_85 (55) = happyShift action_36
action_85 (56) = happyShift action_37
action_85 (57) = happyShift action_38
action_85 (58) = happyShift action_39
action_85 _ = happyReduce_40

action_86 (51) = happyShift action_98
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (38) = happyShift action_96
action_87 (59) = happyShift action_97
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (40) = happyShift action_95
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (26) = happyShift action_94
action_89 (47) = happyShift action_28
action_89 (48) = happyShift action_29
action_89 (49) = happyShift action_30
action_89 (50) = happyShift action_31
action_89 (51) = happyShift action_32
action_89 (52) = happyShift action_33
action_89 (53) = happyShift action_34
action_89 (54) = happyShift action_35
action_89 (55) = happyShift action_36
action_89 (56) = happyShift action_37
action_89 (57) = happyShift action_38
action_89 (58) = happyShift action_39
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (22) = happyShift action_93
action_90 (47) = happyShift action_28
action_90 (48) = happyShift action_29
action_90 (49) = happyShift action_30
action_90 (50) = happyShift action_31
action_90 (51) = happyShift action_32
action_90 (52) = happyShift action_33
action_90 (53) = happyShift action_34
action_90 (54) = happyShift action_35
action_90 (55) = happyShift action_36
action_90 (56) = happyShift action_37
action_90 (57) = happyShift action_38
action_90 (58) = happyShift action_39
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (47) = happyShift action_28
action_91 (48) = happyShift action_29
action_91 (49) = happyShift action_30
action_91 (50) = happyShift action_31
action_91 (51) = happyShift action_32
action_91 (52) = happyShift action_33
action_91 (53) = happyShift action_34
action_91 (54) = happyShift action_35
action_91 (55) = happyShift action_36
action_91 (56) = happyShift action_37
action_91 (57) = happyShift action_38
action_91 (58) = happyShift action_39
action_91 _ = happyReduce_42

action_92 _ = happyReduce_25

action_93 (20) = happyShift action_5
action_93 (21) = happyShift action_6
action_93 (23) = happyShift action_7
action_93 (24) = happyShift action_8
action_93 (31) = happyShift action_9
action_93 (36) = happyShift action_10
action_93 (40) = happyShift action_11
action_93 (48) = happyShift action_12
action_93 (60) = happyShift action_13
action_93 (61) = happyShift action_14
action_93 (62) = happyShift action_15
action_93 (14) = happyGoto action_2
action_93 (15) = happyGoto action_3
action_93 (19) = happyGoto action_116
action_93 _ = happyFail (happyExpListPerState 93)

action_94 _ = happyReduce_45

action_95 (62) = happyShift action_75
action_95 (9) = happyGoto action_115
action_95 (10) = happyGoto action_73
action_95 (11) = happyGoto action_74
action_95 _ = happyReduce_11

action_96 (62) = happyShift action_114
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (20) = happyShift action_5
action_97 (21) = happyShift action_6
action_97 (23) = happyShift action_7
action_97 (24) = happyShift action_8
action_97 (31) = happyShift action_9
action_97 (36) = happyShift action_10
action_97 (40) = happyShift action_11
action_97 (48) = happyShift action_12
action_97 (60) = happyShift action_13
action_97 (61) = happyShift action_14
action_97 (62) = happyShift action_15
action_97 (14) = happyGoto action_2
action_97 (15) = happyGoto action_3
action_97 (19) = happyGoto action_113
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (30) = happyShift action_110
action_98 (44) = happyShift action_111
action_98 (62) = happyShift action_112
action_98 (8) = happyGoto action_109
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (20) = happyShift action_5
action_99 (21) = happyShift action_6
action_99 (23) = happyShift action_7
action_99 (24) = happyShift action_8
action_99 (31) = happyShift action_9
action_99 (36) = happyShift action_10
action_99 (40) = happyShift action_11
action_99 (48) = happyShift action_12
action_99 (60) = happyShift action_13
action_99 (61) = happyShift action_14
action_99 (62) = happyShift action_15
action_99 (14) = happyGoto action_2
action_99 (15) = happyGoto action_3
action_99 (19) = happyGoto action_108
action_99 _ = happyFail (happyExpListPerState 99)

action_100 _ = happyReduce_28

action_101 (20) = happyShift action_5
action_101 (21) = happyShift action_6
action_101 (23) = happyShift action_7
action_101 (24) = happyShift action_8
action_101 (31) = happyShift action_9
action_101 (36) = happyShift action_10
action_101 (40) = happyShift action_11
action_101 (48) = happyShift action_12
action_101 (60) = happyShift action_13
action_101 (61) = happyShift action_14
action_101 (62) = happyShift action_15
action_101 (14) = happyGoto action_2
action_101 (15) = happyGoto action_3
action_101 (19) = happyGoto action_107
action_101 _ = happyFail (happyExpListPerState 101)

action_102 _ = happyReduce_15

action_103 _ = happyReduce_13

action_104 (20) = happyShift action_5
action_104 (21) = happyShift action_6
action_104 (23) = happyShift action_7
action_104 (24) = happyShift action_8
action_104 (31) = happyShift action_9
action_104 (36) = happyShift action_10
action_104 (40) = happyShift action_11
action_104 (48) = happyShift action_12
action_104 (60) = happyShift action_13
action_104 (61) = happyShift action_14
action_104 (62) = happyShift action_15
action_104 (14) = happyGoto action_2
action_104 (15) = happyGoto action_3
action_104 (19) = happyGoto action_106
action_104 _ = happyFail (happyExpListPerState 104)

action_105 (47) = happyShift action_28
action_105 (48) = happyShift action_29
action_105 (49) = happyShift action_30
action_105 (50) = happyShift action_31
action_105 (51) = happyShift action_32
action_105 (52) = happyShift action_33
action_105 (53) = happyShift action_34
action_105 (54) = happyShift action_35
action_105 (55) = happyShift action_36
action_105 (56) = happyShift action_37
action_105 (57) = happyShift action_38
action_105 (58) = happyShift action_39
action_105 _ = happyReduce_27

action_106 (47) = happyShift action_28
action_106 (48) = happyShift action_29
action_106 (49) = happyShift action_30
action_106 (50) = happyShift action_31
action_106 (51) = happyShift action_32
action_106 (52) = happyShift action_33
action_106 (53) = happyShift action_34
action_106 (54) = happyShift action_35
action_106 (55) = happyShift action_36
action_106 (56) = happyShift action_37
action_106 (57) = happyShift action_38
action_106 (58) = happyShift action_39
action_106 _ = happyReduce_39

action_107 (47) = happyShift action_28
action_107 (48) = happyShift action_29
action_107 (49) = happyShift action_30
action_107 (50) = happyShift action_31
action_107 (51) = happyShift action_32
action_107 (52) = happyShift action_33
action_107 (53) = happyShift action_34
action_107 (54) = happyShift action_35
action_107 (55) = happyShift action_36
action_107 (56) = happyShift action_37
action_107 (57) = happyShift action_38
action_107 (58) = happyShift action_39
action_107 _ = happyReduce_30

action_108 (47) = happyShift action_28
action_108 (48) = happyShift action_29
action_108 (49) = happyShift action_30
action_108 (50) = happyShift action_31
action_108 (51) = happyShift action_32
action_108 (52) = happyShift action_33
action_108 (53) = happyShift action_34
action_108 (54) = happyShift action_35
action_108 (55) = happyShift action_36
action_108 (56) = happyShift action_37
action_108 (57) = happyShift action_38
action_108 (58) = happyShift action_39
action_108 _ = happyReduce_41

action_109 _ = happyReduce_7

action_110 (35) = happyShift action_121
action_110 _ = happyFail (happyExpListPerState 110)

action_111 (62) = happyShift action_75
action_111 (9) = happyGoto action_120
action_111 (10) = happyGoto action_73
action_111 (11) = happyGoto action_74
action_111 _ = happyReduce_11

action_112 _ = happyReduce_8

action_113 (47) = happyShift action_28
action_113 (48) = happyShift action_29
action_113 (49) = happyShift action_30
action_113 (50) = happyShift action_31
action_113 (51) = happyShift action_32
action_113 (52) = happyShift action_33
action_113 (53) = happyShift action_34
action_113 (54) = happyShift action_35
action_113 (55) = happyShift action_36
action_113 (56) = happyShift action_37
action_113 (57) = happyShift action_38
action_113 (58) = happyShift action_39
action_113 _ = happyReduce_16

action_114 (59) = happyShift action_119
action_114 _ = happyFail (happyExpListPerState 114)

action_115 (41) = happyShift action_118
action_115 _ = happyFail (happyExpListPerState 115)

action_116 (34) = happyShift action_117
action_116 (47) = happyShift action_28
action_116 (48) = happyShift action_29
action_116 (49) = happyShift action_30
action_116 (50) = happyShift action_31
action_116 (51) = happyShift action_32
action_116 (52) = happyShift action_33
action_116 (53) = happyShift action_34
action_116 (54) = happyShift action_35
action_116 (55) = happyShift action_36
action_116 (56) = happyShift action_37
action_116 (57) = happyShift action_38
action_116 (58) = happyShift action_39
action_116 _ = happyFail (happyExpListPerState 116)

action_117 (20) = happyShift action_5
action_117 (21) = happyShift action_6
action_117 (23) = happyShift action_7
action_117 (24) = happyShift action_8
action_117 (31) = happyShift action_9
action_117 (36) = happyShift action_10
action_117 (40) = happyShift action_11
action_117 (48) = happyShift action_12
action_117 (60) = happyShift action_13
action_117 (61) = happyShift action_14
action_117 (62) = happyShift action_15
action_117 (14) = happyGoto action_2
action_117 (15) = happyGoto action_3
action_117 (19) = happyGoto action_127
action_117 _ = happyFail (happyExpListPerState 117)

action_118 (38) = happyShift action_125
action_118 (51) = happyShift action_126
action_118 _ = happyFail (happyExpListPerState 118)

action_119 (20) = happyShift action_5
action_119 (21) = happyShift action_6
action_119 (23) = happyShift action_7
action_119 (24) = happyShift action_8
action_119 (31) = happyShift action_9
action_119 (36) = happyShift action_10
action_119 (40) = happyShift action_11
action_119 (48) = happyShift action_12
action_119 (60) = happyShift action_13
action_119 (61) = happyShift action_14
action_119 (62) = happyShift action_15
action_119 (14) = happyGoto action_2
action_119 (15) = happyGoto action_3
action_119 (19) = happyGoto action_124
action_119 _ = happyFail (happyExpListPerState 119)

action_120 (45) = happyShift action_123
action_120 _ = happyFail (happyExpListPerState 120)

action_121 (62) = happyShift action_122
action_121 _ = happyFail (happyExpListPerState 121)

action_122 _ = happyReduce_10

action_123 _ = happyReduce_9

action_124 (47) = happyShift action_28
action_124 (48) = happyShift action_29
action_124 (49) = happyShift action_30
action_124 (50) = happyShift action_31
action_124 (51) = happyShift action_32
action_124 (52) = happyShift action_33
action_124 (53) = happyShift action_34
action_124 (54) = happyShift action_35
action_124 (55) = happyShift action_36
action_124 (56) = happyShift action_37
action_124 (57) = happyShift action_38
action_124 (58) = happyShift action_39
action_124 _ = happyReduce_17

action_125 (62) = happyShift action_129
action_125 _ = happyFail (happyExpListPerState 125)

action_126 (20) = happyShift action_5
action_126 (21) = happyShift action_6
action_126 (23) = happyShift action_7
action_126 (24) = happyShift action_8
action_126 (31) = happyShift action_9
action_126 (36) = happyShift action_10
action_126 (40) = happyShift action_11
action_126 (48) = happyShift action_12
action_126 (60) = happyShift action_13
action_126 (61) = happyShift action_14
action_126 (62) = happyShift action_15
action_126 (14) = happyGoto action_2
action_126 (15) = happyGoto action_3
action_126 (19) = happyGoto action_128
action_126 _ = happyFail (happyExpListPerState 126)

action_127 (47) = happyShift action_28
action_127 (48) = happyShift action_29
action_127 (49) = happyShift action_30
action_127 (50) = happyShift action_31
action_127 (51) = happyShift action_32
action_127 (52) = happyShift action_33
action_127 (53) = happyShift action_34
action_127 (54) = happyShift action_35
action_127 (55) = happyShift action_36
action_127 (56) = happyShift action_37
action_127 (57) = happyShift action_38
action_127 (58) = happyShift action_39
action_127 _ = happyReduce_43

action_128 (47) = happyShift action_28
action_128 (48) = happyShift action_29
action_128 (49) = happyShift action_30
action_128 (50) = happyShift action_31
action_128 (51) = happyShift action_32
action_128 (52) = happyShift action_33
action_128 (53) = happyShift action_34
action_128 (54) = happyShift action_35
action_128 (55) = happyShift action_36
action_128 (56) = happyShift action_37
action_128 (57) = happyShift action_38
action_128 (58) = happyShift action_39
action_128 _ = happyReduce_18

action_129 (51) = happyShift action_130
action_129 _ = happyFail (happyExpListPerState 129)

action_130 (20) = happyShift action_5
action_130 (21) = happyShift action_6
action_130 (23) = happyShift action_7
action_130 (24) = happyShift action_8
action_130 (31) = happyShift action_9
action_130 (36) = happyShift action_10
action_130 (40) = happyShift action_11
action_130 (48) = happyShift action_12
action_130 (60) = happyShift action_13
action_130 (61) = happyShift action_14
action_130 (62) = happyShift action_15
action_130 (14) = happyGoto action_2
action_130 (15) = happyGoto action_3
action_130 (19) = happyGoto action_131
action_130 _ = happyFail (happyExpListPerState 130)

action_131 (47) = happyShift action_28
action_131 (48) = happyShift action_29
action_131 (49) = happyShift action_30
action_131 (50) = happyShift action_31
action_131 (51) = happyShift action_32
action_131 (52) = happyShift action_33
action_131 (53) = happyShift action_34
action_131 (54) = happyShift action_35
action_131 (55) = happyShift action_36
action_131 (56) = happyShift action_37
action_131 (57) = happyShift action_38
action_131 (58) = happyShift action_39
action_131 _ = happyReduce_19

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 _
	 =  HappyAbsSyn4
		 (
	)

happyReduce_2 = happySpecReduce_0  5 happyReduction_2
happyReduction_2  =  HappyAbsSyn5
		 (
	)

happyReduce_3 = happySpecReduce_2  5 happyReduction_3
happyReduction_3 _
	_
	 =  HappyAbsSyn5
		 (
	)

happyReduce_4 = happySpecReduce_1  6 happyReduction_4
happyReduction_4 _
	 =  HappyAbsSyn6
		 (
	)

happyReduce_5 = happySpecReduce_1  6 happyReduction_5
happyReduction_5 _
	 =  HappyAbsSyn6
		 (
	)

happyReduce_6 = happySpecReduce_1  6 happyReduction_6
happyReduction_6 _
	 =  HappyAbsSyn6
		 (
	)

happyReduce_7 = happyReduce 4 7 happyReduction_7
happyReduction_7 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (
	) `HappyStk` happyRest

happyReduce_8 = happySpecReduce_1  8 happyReduction_8
happyReduction_8 _
	 =  HappyAbsSyn8
		 (
	)

happyReduce_9 = happySpecReduce_3  8 happyReduction_9
happyReduction_9 _
	_
	_
	 =  HappyAbsSyn8
		 (
	)

happyReduce_10 = happySpecReduce_3  8 happyReduction_10
happyReduction_10 _
	_
	_
	 =  HappyAbsSyn8
		 (
	)

happyReduce_11 = happySpecReduce_0  9 happyReduction_11
happyReduction_11  =  HappyAbsSyn9
		 (
	)

happyReduce_12 = happySpecReduce_1  9 happyReduction_12
happyReduction_12 _
	 =  HappyAbsSyn9
		 (
	)

happyReduce_13 = happySpecReduce_3  10 happyReduction_13
happyReduction_13 _
	_
	_
	 =  HappyAbsSyn10
		 (
	)

happyReduce_14 = happySpecReduce_1  11 happyReduction_14
happyReduction_14 _
	 =  HappyAbsSyn11
		 (
	)

happyReduce_15 = happySpecReduce_3  11 happyReduction_15
happyReduction_15 _
	_
	_
	 =  HappyAbsSyn11
		 (
	)

happyReduce_16 = happyReduce 4 12 happyReduction_16
happyReduction_16 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (
	) `HappyStk` happyRest

happyReduce_17 = happyReduce 6 12 happyReduction_17
happyReduction_17 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (
	) `HappyStk` happyRest

happyReduce_18 = happyReduce 7 13 happyReduction_18
happyReduction_18 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (
	) `HappyStk` happyRest

happyReduce_19 = happyReduce 9 13 happyReduction_19
happyReduction_19 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_1  14 happyReduction_20
happyReduction_20 _
	 =  HappyAbsSyn14
		 (
	)

happyReduce_21 = happySpecReduce_1  14 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn14
		 (
	)

happyReduce_22 = happySpecReduce_3  15 happyReduction_22
happyReduction_22 _
	_
	_
	 =  HappyAbsSyn15
		 (
	)

happyReduce_23 = happySpecReduce_3  15 happyReduction_23
happyReduction_23 _
	_
	_
	 =  HappyAbsSyn15
		 (
	)

happyReduce_24 = happyReduce 4 15 happyReduction_24
happyReduction_24 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (
	) `HappyStk` happyRest

happyReduce_25 = happyReduce 4 15 happyReduction_25
happyReduction_25 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (
	) `HappyStk` happyRest

happyReduce_26 = happySpecReduce_0  16 happyReduction_26
happyReduction_26  =  HappyAbsSyn16
		 (
	)

happyReduce_27 = happySpecReduce_3  16 happyReduction_27
happyReduction_27 _
	_
	_
	 =  HappyAbsSyn16
		 (
	)

happyReduce_28 = happyReduce 4 17 happyReduction_28
happyReduction_28 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (
	) `HappyStk` happyRest

happyReduce_29 = happySpecReduce_0  18 happyReduction_29
happyReduction_29  =  HappyAbsSyn18
		 (
	)

happyReduce_30 = happySpecReduce_2  18 happyReduction_30
happyReduction_30 _
	_
	 =  HappyAbsSyn18
		 (
	)

happyReduce_31 = happySpecReduce_1  19 happyReduction_31
happyReduction_31 _
	 =  HappyAbsSyn19
		 (
	)

happyReduce_32 = happySpecReduce_1  19 happyReduction_32
happyReduction_32 _
	 =  HappyAbsSyn19
		 (
	)

happyReduce_33 = happySpecReduce_1  19 happyReduction_33
happyReduction_33 _
	 =  HappyAbsSyn19
		 (
	)

happyReduce_34 = happySpecReduce_1  19 happyReduction_34
happyReduction_34 _
	 =  HappyAbsSyn19
		 (
	)

happyReduce_35 = happySpecReduce_3  19 happyReduction_35
happyReduction_35 _
	_
	_
	 =  HappyAbsSyn19
		 (
	)

happyReduce_36 = happyReduce 4 19 happyReduction_36
happyReduction_36 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (
	) `HappyStk` happyRest

happyReduce_37 = happySpecReduce_3  19 happyReduction_37
happyReduction_37 _
	_
	_
	 =  HappyAbsSyn19
		 (
	)

happyReduce_38 = happyReduce 4 19 happyReduction_38
happyReduction_38 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (
	) `HappyStk` happyRest

happyReduce_39 = happyReduce 6 19 happyReduction_39
happyReduction_39 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (
	) `HappyStk` happyRest

happyReduce_40 = happyReduce 4 19 happyReduction_40
happyReduction_40 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (
	) `HappyStk` happyRest

happyReduce_41 = happyReduce 6 19 happyReduction_41
happyReduction_41 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (
	) `HappyStk` happyRest

happyReduce_42 = happyReduce 4 19 happyReduction_42
happyReduction_42 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (
	) `HappyStk` happyRest

happyReduce_43 = happyReduce 8 19 happyReduction_43
happyReduction_43 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (
	) `HappyStk` happyRest

happyReduce_44 = happySpecReduce_1  19 happyReduction_44
happyReduction_44 _
	 =  HappyAbsSyn19
		 (
	)

happyReduce_45 = happyReduce 5 19 happyReduction_45
happyReduction_45 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (
	) `HappyStk` happyRest

happyReduce_46 = happySpecReduce_2  19 happyReduction_46
happyReduction_46 _
	_
	 =  HappyAbsSyn19
		 (
	)

happyReduce_47 = happySpecReduce_3  19 happyReduction_47
happyReduction_47 _
	_
	_
	 =  HappyAbsSyn19
		 (
	)

happyReduce_48 = happySpecReduce_3  19 happyReduction_48
happyReduction_48 _
	_
	_
	 =  HappyAbsSyn19
		 (
	)

happyReduce_49 = happySpecReduce_3  19 happyReduction_49
happyReduction_49 _
	_
	_
	 =  HappyAbsSyn19
		 (
	)

happyReduce_50 = happySpecReduce_3  19 happyReduction_50
happyReduction_50 _
	_
	_
	 =  HappyAbsSyn19
		 (
	)

happyReduce_51 = happySpecReduce_3  19 happyReduction_51
happyReduction_51 _
	_
	_
	 =  HappyAbsSyn19
		 (
	)

happyReduce_52 = happySpecReduce_3  19 happyReduction_52
happyReduction_52 _
	_
	_
	 =  HappyAbsSyn19
		 (
	)

happyReduce_53 = happySpecReduce_3  19 happyReduction_53
happyReduction_53 _
	_
	_
	 =  HappyAbsSyn19
		 (
	)

happyReduce_54 = happySpecReduce_3  19 happyReduction_54
happyReduction_54 _
	_
	_
	 =  HappyAbsSyn19
		 (
	)

happyReduce_55 = happySpecReduce_3  19 happyReduction_55
happyReduction_55 _
	_
	_
	 =  HappyAbsSyn19
		 (
	)

happyReduce_56 = happySpecReduce_3  19 happyReduction_56
happyReduction_56 _
	_
	_
	 =  HappyAbsSyn19
		 (
	)

happyReduce_57 = happySpecReduce_3  19 happyReduction_57
happyReduction_57 _
	_
	_
	 =  HappyAbsSyn19
		 (
	)

happyReduce_58 = happySpecReduce_3  19 happyReduction_58
happyReduction_58 _
	_
	_
	 =  HappyAbsSyn19
		 (
	)

happyNewToken action sts stk [] =
	action 63 63 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	While -> cont 20;
	For -> cont 21;
	To -> cont 22;
	Break -> cont 23;
	Let -> cont 24;
	In -> cont 25;
	End -> cont 26;
	Function -> cont 27;
	Var -> cont 28;
	Type -> cont 29;
	Array -> cont 30;
	If -> cont 31;
	Then -> cont 32;
	Else -> cont 33;
	Do -> cont 34;
	Of -> cont 35;
	Nil -> cont 36;
	Comma -> cont 37;
	Colon -> cont 38;
	Semicolon -> cont 39;
	LParen -> cont 40;
	RParen -> cont 41;
	LBracket -> cont 42;
	RBracket -> cont 43;
	LBrace -> cont 44;
	RBrace -> cont 45;
	Dot -> cont 46;
	Plus -> cont 47;
	Minus -> cont 48;
	Star -> cont 49;
	Slash -> cont 50;
	Equals -> cont 51;
	Neq -> cont 52;
	Less -> cont 53;
	LessEq -> cont 54;
	Greater -> cont 55;
	GreaterEq -> cont 56;
	And -> cont 57;
	Or -> cont 58;
	Assign -> cont 59;
	IntLit happy_dollar_dollar -> cont 60;
	StringLit happy_dollar_dollar -> cont 61;
	Ident happy_dollar_dollar -> cont 62;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 63 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
parse tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError _ = error "Parse error"

main = getContents >>= print . parse . alexScanTokens
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
