=begin
PSI-Sigma: A splicing-detection method for short-read and long-read RNA-seq data
© Kuan-Ting Lin, 2018-2024
PSI-Sigma is free for non-commercial purposes by individuals at an academic or non-profit institution.
For commercial purposes, please contact tech transfer office of CSHL via narayan@cshl.edu
=end
=cut
#!/usr/bin/perl -w

eval unpack u=>q{_=7-E('-T<FEC=#L*"75S92!01$PZ.DQI=&5&.PH)=7-E(%!$3#HZ4W1A=',["@EU<V4@4W1A=&ES=&EC<SHZ_375L='1E<W0@<7<H8F]N9F5R<F]N:2!H;VQM(&AO;6UE;"!H;V-H8F5R9R!"2"!"62!Q=F%L=64I.PH*("`@_(&UY("@D9&(L)&]U='!U=&%S<V-C97-S:6]N+"1C<FET97)I82PD:6YT<F]A;&QC<FET97)I82PD;&]N9W)E_860I(#T@0$%21U8["B`@("`*("`@(&EF*'-C86QA<B!`05)'5B`A/2`U*7L*("`@(`EP<FEN="`B4&QE87-E_('-P96-I9GD@-2!P87)A;65T97)S.B`H,2D@9&%T86)A<V4L("@R*2!O=71P=70@;F%M92`L("@S*2!M:6YI_;75M('-U<'!O<G1I;F<@:G5N8W1I;VX@<F5A9',L("@T*2!M:6YI;75M(&EN=')O;B!S=7!P;W)T:6YG(')E_861S+"!A;F0@*#4I(&EF('1H92!I;G!U="!D871A(&ES('-H;W)T(&]R(&QO;F<@<F5A9"Y<;B([(`H@("`@_"65X:70["B`@("!]"@DD;W5T<'5T87-S8V-E<W-I;VX@+CT@(E]R(B`N("1C<FET97)I82`N(")?:7(B("X@_)&EN=')O86QL8W)I=&5R:6$["@H);7D@0&=R;W5P<SL*("`@(&UY("5G<F]U<&$["B`);W!E;BA&24Q%+")G_<F]U<&$N='AT(BD@?'P@9&EE(")!8F]R=&EN9RXN($-A;B=T(&]P96X@9W)O=7!A+G1X="`Z("0A7&XB.PH@_("`@=VAI;&4H;7D@)&QI;F4]/$9)3$4^*7L*("`@("`@("!C:&]M<"`D;&EN93L*("`@("`@("!N97AT(&EF_*"1L:6YE(&5Q("(B*3L*("`@("`@("!M>2`D86-C97-S:6]N(#T@)&QI;F4["B`@("`@("`@)&%C8V5S<VEO_;CU^<R]<+D%L:6=N961<+G-O<G1E9$)Y0V]O<F1<+F]U=%PN8F%M+R\["@D))&%C8V5S<VEO;CU^<R]<+G-O_<G1E9%PN;W5T7"YB86TO+SL*"0DD86-C97-S:6]N/7YS+UPN8F%M+R\["@D))&%C8V5S<VEO;CU^<R]<+B0O_+SL*("`@("`@("`D9W)O=7!A>R1A8V-E<W-I;VY]*RL["B`@("`@("`@<'5S:"A`9W)O=7!S+"1A8V-E<W-I_;VXI.PH@("`@("`@(`H@("`@?0H@("`@8VQO<V4H1DE,12D["B`@("!M>2`E9W)O=7!B.PH@"6]P96XH1DE,_12PB9W)O=7!B+G1X="(I('Q\(&1I92`B06)O<G1I;F<N+B!#86XG="!O<&5N(&=R;W5P8BYT>'0@.B`D(5QN_(CL*("`@('=H:6QE*&UY("1L:6YE/3Q&24Q%/BE["B`@("`@("`@8VAO;7`@)&QI;F4["B`@("`@("`@;F5X_="!I9B@D;&EN92!E<2`B(BD["B`@("`@("`@;7D@)&%C8V5S<VEO;B`]("1L:6YE.PH@("`@("`@("1A8V-E_<W-I;VX]?G,O7"Y!;&EG;F5D7"YS;W)T961">4-O;W)D7"YO=71<+F)A;2\O.PH)"21A8V-E<W-I;VX]?G,O_7"YS;W)T961<+F]U=%PN8F%M+R\["@D))&%C8V5S<VEO;CU^<R]<+F)A;2\O.PH)"21A8V-E<W-I;VX]?G,O_7"XD+R\["B`@("`@("`@)&=R;W5P8GLD86-C97-S:6]N?2LK.PH@("`@("`@('!U<V@H0&=R;W5P<RPD86-C_97-S:6]N*3L*("`@('T*("`@(&-L;W-E*$9)3$4I.PH@("`@;7D@*"1N9W)O=7!A+"1N9W)O=7!B*2`]("AS_8V%L87(@:V5Y<R`E9W)O=7!A+"!S8V%L87(@:V5Y<R`E9W)O=7!B*3L*("`@('!R:6YT(")'<F]U<"!!(&AA_<R`D;F=R;W5P82!S86UP;&5S+EQN(CL*("`@('!R:6YT(")'<F]U<"!"(&AA<R`D;F=R;W5P8B!S86UP;&5S_+EQN(CL*("`@(`H]8F5G:6X*("`@(&UY("5C;W5N=&5V96YT.PH@("`@;W!E;BA&24Q%+"`B)&1B(BD@?'P@_9&EE(")!8F]R=&EN9RXN($-A;B=T(&]P96X@)&1B7&XB.PH@("`@=VAI;&4H;7D@)&QI;F4]/$9)3$4^*7L*_("`@(`EC:&]M<"`D;&EN93L*("`@(`EN97AT(&EF*"1L:6YE(&5Q("(B*3L*("`@(`EM>2`H)&-H<BPD:3%S_+"1I,64L)&DR<RPD:3)E+"1T97,L)'1E92PD86YN;RPD87,L)&%E+"1N86UE+"1G;BD@/2!S<&QI="@O7'0O_+"1L:6YE*3L*("`@(`EM>2`H)&%I9"PD96ED*2`]("@D,2PD,BD@:68H)&YA;64]?B\H+BHI7%\H7&0K*20O_*3L*("`@(`DD8V]U;G1E=F5N='LD86ED?2LK.PH@("`@?0H@("`@8VQO<V4H1DE,12D["CUE;F0*/6-U=`H*_"6UY("1C:&5C:V9D<B`](#$["@EM>2`D9F-C<FET97)I82`](#$P.PH);7D@)'!R:6YT9V-T(#T@,#L*"6UY_("1S:&]W:60@/2`P.PH@("`@;7D@0&9I;&5S(#T@/"HN4THN*BYT86(^.PH@("`@;7D@)6]U='!U=#L*("`@_(&UY($!A8V-E<W-I;VX["B`@("!M>2`E;F%M97,["B`@("!M>2`E;6%X97AO;CL*("`@(&UY("5S:VEP.PH@_("`@;7D@)7-A;7!L97,["B`@("!M>2`E97AS.PH@("`@;7D@)6EN=')O;F%L;#L*("`@(&UY("5I<V%L;#L*_("`@(&UY("5I96%L;#L*("`@(&UY("5T<G5E05-3.PH*"6UY("1P86ER960@/2`P.PH@("`@)'!A:7)E9"`]_(#(@:68H<V-A;&%R(&ME>7,@)6=R;W5P82`\(#(@?'P@<V-A;&%R(&ME>7,@)6=R;W5P8B`\(#(I.PH@("`@_(W!R:6YT(")086ER960@/2`D<&%I<F5D7&XB.PH@("`@"B`@("!M>2`E=&5V96YT.PH@("`@;7D@)6=R;W5P_86YN;SL*"6EF*"UE(")T979E;G0N='AT(BE["B`)"6]P96XH1DE,12PB=&5V96YT+G1X="(I('Q\(&1I92`B_06)O<G1I;F<N+B!#86XG="!O<&5N('1E=F5N="YT>'0@.B`D(5QN(CL*("`@(`EW:&EL92AM>2`D;&EN93T\_1DE,13XI>PH@("`@"2`@("!C:&]M<"`D;&EN93L*("`@(`D@("`@;F5X="!I9B@D;&EN92!E<2`B(BD["B`@_("`)("`@("1T979E;G1[)&QI;F5]*RL["B`@("`)?0H@("`@"6-L;W-E*$9)3$4I.PH@("`@"6]P96XH1DE,_12PB9W)O=7!A;FYO+G1X="(I('Q\(&1I92`B06)O<G1I;F<N+B!#86XG="!O<&5N('1E=F5N="YT>'0@.B`D_(5QN(CL*("`@(`EW:&EL92AM>2`D;&EN93T\1DE,13XI>PH@("`@"2`@("!C:&]M<"`D;&EN93L*("`@(`D@_("`@;F5X="!I9B@D;&EN92!E<2`B(BD["B`@("`)("`@(&UY("@D240L)&=R;W5P*2`]('-P;&ET*"]<="\L_)&QI;F4I.PH@("`@"2`@("`D9W)O=7!A;FYO>R1)1'T@/2`D9W)O=7`["B`@("`)?0H@("`@"6-L;W-E*$9)_3$4I.PH@("`@"21P<FEN=&=C="`](#$["B`@("`)<')I;G0@(E)E<&]R=&EN9R!'0U0@9FEL92Y<;B(["B`@_("!]"B`@("`@(`H@("`@9F]R96%C:"!M>2`D:F9N*$!F:6QE<RE["B`@("`);7D@)&%C8V5S<VEO;B`]("1J_9FX["B`@("`);7D@)'-I9"`]("1A8V-E<W-I;VX["B`@("`))'-I9#U^<R]<+E-*7"XH7'<K*5PN=&%B+R\[_"B`@("`)"B`@("`)<')I;G0@(E)E861I;F<N+BX@)'-I9%QN(CL*("`@(`EN97AT(&EF*"$D9W)O=7!A>R1S_:61]("8F("$D9W)O=7!B>R1S:61]*3L*("`@(`EI9B@D9W)O=7!A>R1S:61]*7L*"0D))&%C8V5S<VEO;CU^_<R]<+E-*7"XH7'<K*5PN=&%B+UQ?3B\["@D)?0H)"6EF*"1G<F]U<&)[)'-I9'TI>PH)"0DD86-C97-S:6]N_/7YS+UPN4TI<+BA<=RLI7"YT86(O7%]4+SL*"0E]"@H@("`@"6YE>'0@:68H)&%C8V5S<VEO;B%^+UQ?3B0O_("8F("1A8V-E<W-I;VXA?B]<7U0D+RD["B`@("`@("`@;7D@)6EN=')O;CL*("`@("`@("!M>2`E:6YT<F]N_:6-R96%D.PH@("`@("`@(&UY("5S=6US<SL*("`@("`@("!M>2`E<W5M964["B`@("`@("`@;7D@)6-O=6YT_<W,["B`@("`@("`@;7D@)6-O=6YT964["B`@("`@("`@;7D@)&UE86X@/2`P.PH@("`@"0H@("`@"6UY("1T_86<@/2`D86-C97-S:6]N.PH@("`@"6UY("1C870["B`@("`))&-A="`](").(B!I9B@D86-C97-S:6]N/7XO_7%].)"\I.PH@("`@"21C870@/2`B5"(@:68H)&%C8V5S<VEO;CU^+UQ?5"0O*3L*("`@(`DD86-C97-S:6]N_/7YS+UQ?3B0O+SL*("`@(`DD86-C97-S:6]N/7YS+UQ?5"0O+SL*("`@(`DD86-C97-S:6]N/7YS+R@N*BE<_7RA<=RLI7%].)"\D,B\["B`@("`))&%C8V5S<VEO;CU^<R\H+BHI7%\H7'<K*5Q?5"0O)#(O.PH@("`@"21A_8V-E<W-I;VX]?G,O7%].7%].+UQ?3B\["B`@("`))&%C8V5S<VEO;CU^<R]<7U1<7U0O7%]4+SL*("`@(`DC_)&%C8V5S<VEO;GLD86-C97-S:6]N?2LK.PH@("`@"7!U<V@H0&%C8V5S<VEO;BPD86-C97-S:6]N*3L*"B`@_("`)<')I;G0@(E)E861I;F<N+BX@)&IF;EQN(CL*("`@(`EP<FEN="`B86-C97-S:6]N(#T@)&%C8V5S<VEO_;EQN(CL*("`@(`EP<FEN="`B*"1C870I("1A8V-E<W-I;VY<;B(["B`@("`))'-A;7!L97-[(B1C871<="1A_8V-E<W-I;VXB?2`]("1T86<["@H@("`@"6EF*"1J9FX]?B]'5$58*"XJ*5PN4TI<+F]U=%PN=&%B+RE["B`@_("`)"21J9FX]?G,O7%].7"Y32EPN;W5T7"YT86(O7"Y32EPN;W5T7"YT86(O.PH@("`@"7T*("`@(`D*("`@_(`EM>2`D:7)F;B`]("1J9FX["B`@("`);7D@)&ER8VAE8VL@/2`Q.PH@("`@"7!R:6YT(")#:&5C:VEN9R!)_4B!R96%D<UQN(B!I9B@D:7)C:&5C:R`]/2`Q*3L*("`@(`DD:7)F;CU^<R]<+E-*7"XH+BHI7"YT86(O7"Y)_4EPN;W5T7"YT86(O.PH@("`@"7!R:6YT(")C:&5C:VEN9RXN+B`D:7)F;EQN(CL*("`@(`EI9BAO<&5N*$9)_3$4L("(D:7)F;B(I*7L*"0D)=VAI;&4H;7D@)&QI;F4]/$9)3$4^*7L*("`@("`@("`@("`@"6-H;VUP("1L_:6YE.PH@("`@("`@("`@("`);7D@*"1C:'(L)'-T87)T+"1E;F0L)&YU;2D@/2!S<&QI="@O7'0O+"1L:6YE_*3L*("`@("`@("`@("`@"21C:'(]?G,O8VAR+R\["B`@("`)"0DD:6YT<F]N:6-R96%D>R(D8VAR7'0D<W1A_<G1<="1E;F0B?2`]("1N=6T["B`@("`)"7T*("`@(`D)8VQO<V4H1DE,12D["B`@("`)?65L<V5["B`@("`)_"21I<F-H96-K(#T@,#L*("`@(`E]"B`@("`)"@D)<')I;G0@(D-H96-K:6YG(%-*(')E861S+BXN7&XB.PH@_("`@("`@(&]P96XH1DE,12P@(B1J9FXB*2!\?"!D:64@(D%B;W)T:6YG+BX@0V%N)W0@;W!E;B`D:F9N7&XB_.PH@("`@("`@('=H:6QE*&UY("1L:6YE/3Q&24Q%/BE["B`@("`@("`@("`@("`@("!C:&]M<"`D;&EN93L*_("`@("`@("`@("`@("`@("1L:6YE/7YS+UQS+UQT+V<["B`@("`@("`@("`@("`@("!M>2!`87)R87D@/2!S_<&QI="@O7'0O+"1L:6YE*3L*("`@("`@("`@("`@("`@(&UY("@D8VAR+"1S=&%R="PD96YD+"1N=6TI(#T@_*"1A<G)A>5LP72PD87)R87E;,5TL)&%R<F%Y6S)=+"1A<G)A>5LV72D["B`@("`@("`@("`@("`@("`C:68H_)&IF;CU^+U-*+FEN8VQ/=F5R;&%P<RYT86(O*7L*("`@("`@("`@("`@("`@(&EF*'-C86QA<B!`87)R87D@_/3T@-RE["B`@("`@("`@("`@("`@("`)(R1J9FX@:7,@82!C=7-T;VUI>F5D(%-*(&9I;&5<;B(["B`@("`@_("`@("`@("`@("`))&YU;2`]("1A<G)A>5LS72!I9B@D;&]N9W)E860@/3T@,2D["B`@("`@("`@("`@("`@_("`))&YU;2`]("1A<G)A>5LT72!I9B@D;&]N9W)E860@/3T@,BD["B`@("`@("`@("`@("`@("!]96QS97L*_("`@("`@("`@("`@("`@(`EP<FEN="`B6T524D]2.E5.2TY/5TX@1D]234%4(&]F("1J9FY=7&XB(&EF*"1L_;VYG<F5A9"`]/2`R*3L*("`@("`@("`@("`@("`@(`DD;G5M(#T@)&%R<F%Y6S==(&EF*"1L;VYG<F5A9"`]_/2`R*3L*("`@("`@("`@("`@("`@('T*("`@("`@("`@("`@("`@("1C:'(]?G,O8VAR+R\["B`@("`@("`@_("`@("`@("`D:6YT<F]N>R(D8VAR7'0D<W1A<G1<="1E;F0B?2`]("1N=6T["B`@("`@("`@("`@("`@("`D_<W5M<W-[(B1C:')<="1S=&%R=")]>R1E;F1](#T@)&YU;3L*("`@("`@("`@("`@("`@("1S=6UE97LB)&-H_<EQT)&5N9")]>R1S=&%R='T@/2`D;G5M.PH@("`@("`@("`@("`@("`@)&EN=')O;F%L;'LD8VAR?7LB)'-T_87)T7'0D96YD(GTK*R!I9B@D;G5M(#X]("@D:6YT<F]A;&QC<FET97)I82DI.PH@("`@("`@("`@("`@("`@_)&ES86QL>R1C:')]>R1S=&%R='U[)&5N9'TK*R!I9B@D;G5M(#X]("@D:6YT<F]A;&QC<FET97)I82DI.PH@_("`@("`@("`@("`@("`@)&EE86QL>R1C:')]>R1E;F1]>R1S=&%R='TK*R!I9B@D;G5M(#X]("@D:6YT<F]A_;&QC<FET97)I82DI.PH@("`@("`@('T*("`@("`@("!C;&]S92A&24Q%*3L*("`@("`@("`*"0EM>2`E97AO_;G,["@D);7D@)&-O=6YT(#T@,#L*("`@("`@("!O<&5N*$9)3$4L("(D9&(B*2!\?"!D:64@(D%B;W)T:6YG_+BX@0V%N)W0@;W!E;B`D9&)<;B(["B`@("`@("`@=VAI;&4H;7D@)&QI;F4]/$9)3$4^*7L*("`@("`@("`@_("`@("`@(&-H;VUP("1L:6YE.PH@("`@("`@("`@("`@("`@;F5X="!I9B@D;&EN92!E<2`B(BD["B`@("`@_("`@("`@("`@("!M>2`H)&-H<BPD:3%S+"1I,64L)&DR<RPD:3)E+"1T97,L)'1E92PD86YN;RPD87,L)&%E_+"1N86UE+"1G;BD@/2!S<&QI="@O7'0O+"1L:6YE*3L*("`@("`@("`@("`@("`@(&UY("@D86ED+"1E:60I_(#T@*"0Q+"0R*2!I9B@D;F%M93U^+R@N*BE<7RA<9"LI)"\I.PH@("`@("`@("`@("`@("`@;F5X="!I9B@D_;F%M93U^+UQ?4EQ?+R`F)B`D:7)C:&5C:R`]/2`P*3L*("`@("`@("`@("`@("`@(&UY("1T>7!E(#T@(G@B_.PH@("`@("`@("`@("`@("`@)'1Y<&4@/2`B4R(@:68H)&YA;64]?B]<7U-<7R\I.PH@("`@("`@("`@("`@_("`@)'1Y<&4@/2`B5R(@:68H)&YA;64]?B]<7U=<7R\I.PH@("`@("`@("`@("`@("`@)'1Y<&4@/2`B4B(@_:68H)&YA;64]?B]<7U)<7R\I.PH*("`@("`@("`@("`@("`@("1C:'(]?G,O8VAR+R\["B`@("`@("`@("`@_("`@("`*("`@("`@("`@("`@("`@("1G;B`]("(B(&EF*"1G;B!E<2`B+2(I.PH@("`@("`@("`@("`@("`@_)&YA;64@/2`B)&=N.B1N86UE(CL*("`@("`@("`@("`@("`@(&UY("1T87)G970@/2`B+2(["B`@("`@("`@_("`@("`@("!M>2`D=&%R9V5T97AO;B`]("(M(CL*("`@("`@("`@("`@("`@(&UY("1D(#T@+3$["B`@("`@_("`@("`@("`@("!I9B@D='EP92!E<2`B5R(I>PH@("`@("`@("`@("`@("`@"21T87)G970@/2`D8VAR("X@_(EPZ(B`N("@D:3%E*S$K)&0I("X@(BTB("X@*"1I,G,M,2D@+B`B6R1I,7,L)&DQ92PD:3)S+"1I,F5=(CL*_("`@("`@("`@("`@("`@(`DD=&%R9V5T97AO;B`]("1T87)G970["B`@("`@("`@("`@("`@("`):68H)&DQ_<R`]/2`D87,@)B8@)&DR92`]/2`D864I>PH@("`@("`@("`@("`@("`@"7UE;'-E>PH@("`@("`@("`@("`@_("`@"0EN97AT(&EF*"$D:6YT<F]N86QL>R1C:')]>R(D:3%S7'0D:3)E(GTI.PH@("`@("`@("`@("`@("`@_"7T*("`@("`@("`@("`@("`@('UE;'-E>PH@("`@("`@("`@("`@("`@"6UY("@D=&%R9V5T<W1A<G0L("1T_87)G971E;F0I(#T@*#`L,"D["B`@("`@("`@("`@("`@("`)*"1T87)G971S=&%R="P@)'1A<F=E=&5N9"D@_/2`H*"1I,7,K)&0I+"@D:3)S+3$I*2!I9B@D:3%S(#T]("1I,64I.PH@("`@("`@("`@("`@("`@"2@D=&%R_9V5T<W1A<G0L("1T87)G971E;F0I(#T@*"@D:3%E*S$K)&0I+"@D:3)E*2D@:68H)&DR<R`]/2`D:3)E*3L*_("`@("`@("`@("`@("`@(`DH)'1A<F=E='-T87)T+"`D=&%R9V5T96YD*2`]("@D87,L)&%E*3L*("`@("`@_("`@("`@("`@(`DD=&%R9V5T97AO;B`]("1C:'(@+B`B7#HB("X@*"1T87)G971S=&%R="D@+B`B+2(@+B`H_)'1A<F=E=&5N9"D@+B`B6R1I,7,L)&DQ92PD:3)S+"1I,F5=(CL*("`@("`@("`@("`@("`@(`DD=&%R9V5T_(#T@)&-H<B`N(")<.B(@+B`H)&%S*2`N("(M(B`N("@D864I.PH@("`@("`@("`@("`@("`@?0H@("`@("`@_("`@("`@("`@:68H)'1Y<&4@97$@(E(B*7L*("`@("`@("`@("`@("`@(`DD=&%R9V5T97AO;B`]("1C:'(@_+B`B7#HB("X@*"1I,G,M,2D@+B`B+2(@+B`H)&DR92D@:68H)&DQ<R`]/2`D:3%E*3L*("`@("`@("`@("`@_("`@(`DD=&%R9V5T97AO;B`]("1C:'(@+B`B7#HB("X@*"1I,7,M,2D@+B`B+2(@+B`H)&DQ92D@:68H)&DR_<R`]/2`D:3)E*3L*("`@("`@("`@("`@("`@(`DD87,@/2`D87,K,3L*("`@("`@("`@("`@("`@(`DD864@_/2`D864M,3L*("`@("`@("`@("`@("`@('T*"B`@("`@("`@("`@("`@("!M>2`H)&EN,2PD:6XR+"1E>#$I_(#T@*#`L,"PP*3L*"0D)"6EF*"$D:6YT<F]N>R(D8VAR7'0D:3)S7'0D:3)E(GTI>PH@("`@("`@("`@("`@_("`@"21I;C(@/2`P.PH@("`@("`@("`@("`@("`@?65L<V5["B`@("`@("`@("`@("`@("`))&EN,B`]("1I_;G1R;VY[(B1C:')<="1I,G-<="1I,F4B?3L*("`@("`@("`@("`@("`@('T*("`@("`@("`@("`@("`@(&EF_*"$D:6YT<F]N>R(D8VAR7'0D:3%S7'0D:3%E(GTI>PH@("`@("`@("`@("`@("`@"21I;C$@/2`P.PH@("`@_("`@("`@("`@("`@?65L<V5["B`@("`@("`@("`@("`@("`))&EN,2`]("1I;G1R;VY[(B1C:')<="1I,7-<_="1I,64B?3L*("`@("`@("`@("`@("`@('T*("`@("`@("`@("`@("`@(&EF*"1I,7,@/3T@)&DQ92E["B`@_("`@("`@("`@("`@("`))&EN,2`]("1I;C(["B`@("`@("`@("`@("`@("!]"@D)"0EI9B@D:3)S(#T]("1I_,F4I>PH@("`@("`@("`@("`@("`@"21I;C(@/2`D:6XQ.PH@("`@("`@("`@("`@("`@?0H)"0D)"@D)"0EM_>2`D<W5M<W,@/2`P.PH@("`@("`@("`@("`@("`@;7D@)'-U;65E(#T@,#L*("`@("`@("`@("`@("`@(&EF_*"1T>7!E(&5Q(")7(BE["B`@("`@("`@("`@("`@("`):68H(21S=6US<WLB)&-H<EQT)&%S(GT@?'P@(21S_=6UE97LB)&-H<EQT)&%E(GTI>PH@("`@("`@("`@("`@("`@"0DD97@Q(#T@,#L*("`@("`@("`@("`@("`@_(`E]96QS97L*("`@("`@("`@("`@("`@(`D)9F]R96%C:"!M>2`D964H:V5Y<R`E>R`D<W5M<W-[(B1C:')<_="1A<R)]('TI>PH@("`@("`@("`@("`@("`@"0D);F5X="!I9B@D964@/B`D864I.PH@("`@("`@("`@("`@_("`@"0D))'-U;7-S*ST@)'-U;7-S>R(D8VAR7'0D87,B?7LD965].PH@("`@("`@("`@("`@("`@"0E]"@D)_"0D)"69O<F5A8V@@;7D@)'-S*&ME>7,@)7L@)'-U;65E>R(D8VAR7'0D864B?2!]*7L*("`@("`@("`@("`@_("`@(`D)"6YE>'0@:68H)'-S(#P@)&%S*3L*("`@("`@("`@("`@("`@(`D)"21S=6UE92L]("1S=6UE97LB_)&-H<EQT)&%E(GU[)'-S?3L*("`@("`@("`@("`@("`@(`D)?0H@("`@("`@("`@("`@("`@"0DD97@Q(#T@_*"1S=6US<RLD<W5M964I+S(["B`@("`@("`@("`@("`@("`)?0H@("`@("`@("`@("`@("`@?65L<V5["B`@_("`@("`@("`@("`@("`):68H)'1Y<&4@97$@(E(B*7L*("`@("`@("`@("`@("`@(`D))&%S(#T@)&DR<SL*_("`@("`@("`@("`@("`@(`D))&%E(#T@)&DR93L*("`@("`@("`@("`@("`@(`E]"B`@("`@("`@("`@("`@_("`)9F]R96%C:"!M>2`D964H:V5Y<R`E>R`D<W5M<W-[(B1C:')<="1A<R)]('TI>PH@("`@("`@("`@("`@_("`@"0EN97AT(&EF*"1E92`^("1A92`F)B`D='EP92!E<2`B4B(I.PH@("`@("`@("`@("`@("`@"0DD<W5M_<W,K/2`D<W5M<W-[(B1C:')<="1A<R)]>R1E97T["B`@("`@("`@("`@("`@("`)?0H)"0D)"69O<F5A8V@@_;7D@)'-S*&ME>7,@)7L@)'-U;65E>R(D8VAR7'0D864B?2!]*7L*("`@("`@("`@("`@("`@(`D);F5X="!I_9B@D<W,@/"`D87,@)B8@)'1Y<&4@97$@(E(B*3L*("`@("`@("`@("`@("`@(`D))'-U;65E*ST@)'-U;65E_>R(D8VAR7'0D864B?7LD<W-].PH@("`@("`@("`@("`@("`@"7T*("`@("`@("`@("`@("`@(`EI9B@D='EP_92!E<2`B4R(I>PH@("`@("`@("`@("`@("`@"0EI9B@D:3%S(#T]("1I,64I>PH@("`@("`@("`@("`@("`@_"0D))&5X,2`]("1S=6US<SL*("`@("`@("`@("`@("`@(`D)"6EF*"1S=6UE92`^(#`I>PH@("`@("`@("`@_("`@("`@"0D)"21T<G5E05-3>R1N86UE?2LK.PH@("`@("`@("`@("`@("`@"0D)?0H@("`@("`@("`@("`@_("`@"0E]"B`@("`@("`@("`@("`@("`)"6EF*"1I,G,@/3T@)&DR92E["B`@("`@("`@("`@("`@("`)"0DD_97@Q(#T@)'-U;65E.PH@("`@("`@("`@("`@("`@"0D):68H)'-U;7-S(#X@,"E["B`@("`@("`@("`@("`@_("`)"0D))'1R=65!4U-[)&YA;65]*RL["B`@("`@("`@("`@("`@("`)"0E]"B`@("`@("`@("`@("`@("`)_"7T*("`@("`@("`@("`@("`@(`E]"B`@("`@("`@("`@("`@("`):68H)'1Y<&4@97$@(E(B*7L*("`@("`@_("`@("`@"0D))&5X,2`]("1S=6US<R!I9B@D<W5M<W,@/CT@)'-U;65E*3L*("`@("`@("`@("`@"0D))&5X_,2`]("1S=6UE92!I9B@D<W5M<W,@/"`D<W5M964I.PH@("`@("`@("`@("`@("`@"0EN97AT(&EF*"1S=6US_<R`^("@D<W5M964J,BD@?'P@)'-U;65E(#X@*"1S=6US<RHR*2D["B`@("`@("`@("`@("`@("`)?0H@("`@_("`@("`@("`@("`@?0H@("`@("`@("`@("`@("`@"B`@("`@("`@("`@("`@("!I9B@D='EP92!E<2`B4B(@_)B8@)&ER8VAE8VL@/3T@,2E["B`@("`@("`@("`@("`@("`):68H(21I;G1R;VYI8W)E861[(B1C:')<="1I_,G-<="1I,F4B?2E["B`@("`@("`@("`@("`@("`)"21I;C$@/2`P.PH@("`@("`@("`@("`@("`@"0DD:6XR_(#T@)&EN,3L*("`@("`@("`@("`@("`@(`E]96QS97L*("`@("`@("`@("`@("`@(`D))&EN,2`]("1I;G1R_;VYI8W)E861[(B1C:')<="1I,G-<="1I,F4B?3L*("`@("`@("`@("`@("`@(`D))&EN,B`]("1I;C$["B`@_("`@("`@("`@("`@("`)?0H@("`@("`@("`@("`@("`@?0H*("`@("`@("`@("`@("`@("1T87)G971E>&]N_(#T@(B1C:')<.B1T97-<+21T964B.PH@("`@("`@("`@("`@("`@"B`@("`@("`@("`@"0EI9B@D='EP92!E_<2`B4B(I>PH@("`@("`@("`@("`)"21E>#$@/2`D:6XQ*R1E>#$["B`@("`@("`@("`@("`@("`);F5X="!I_9B@D<W5M<W,@/3T@,"!\?"`D<W5M964@/3T@,"D["B`@("`@("`@("`@("`@("!]"B`@("`@("`@("`@("`@_("`*"0D)"6YE>'0@:68H)&5X,2`\("1C<FET97)I82D["@H@("`@("`@("`@("`@("`@)&5X<WLD8VAR?7LB_)&%S7'0D864B?2`K/2`D97@Q.PH@("`@("`@("`@("`@("`@;7D@)%!322`]("@H)&EN,2LD:6XR*2\R*2\D_97@Q.PH@("`@("`@("`@("`*("`@("`@("`@("`@("`@("104TD@/2`Q(&EF*"104TD@/B`Q*3L*("`@("`@_("`@("`@("`@("104TD@/2`M,2!I9B`H)%!322`]/2`P*3L*("`@("`@("`@("`@("`@("1O=71P=71[(B1A_8V-E<W-I;VXB("X@(E\B("X@(B1C871<="1N86UE(GT@/2`D4%-).PH@("`@("`@("`@("`@("`@)&YA;65S_>R(D;F%M95QT)'1A<F=E=&5X;VY<="1I,7,L)&DQ92PD:3)S+"1I,F5<="1A;FYO(GTK*SL*"B`@("`@("`@_?0H@("`@?0H*"6UY("@D;G(L)&YC*2`]("AS8V%L87(@:V5Y<R`E<V%M<&QE<RP@<V-A;&%R(&ME>7,@)6YA_;65S*3L*"7!R:6YT(").=6UB97(@;V8@979E;G1S(#T@)&YC7&XB.PH)<')I;G0@(DYU;6)E<B!O9B!S86UP_;&5S(#T@)&YR7&XB.PH):68H)'!A:7)E9"`]/2`P*7L*"0EP<FEN="`B4W1A=&ES=&EC<R!O<'1I;VX@/2!4_=V\@<V%M<&QE('0M=&5S=%QN(CL*"7T*"6EF*"1P86ER960@/3T@,BE["@D)<')I;G0@(E-T871I<W1I8W,@_;W!T:6]N(#T@3F]T(&5N;W5G:"!S86UP;&5S(&9O<B!T+71E<W1<;B(["@E]"@D*"6UY("5P=F%L=65S.PH)_;7D@)69I;F%L.PH*"6EF*"1P<FEN=&=C="`]/2`Q*7L*"0EO<&5N*$=#5"P@(CXD;W5T<'5T87-S8V-E<W-I_;VXN9V-T(BD@?'P@9&EE(")!8F]R=&EN9RXN($-A;B=T(&]P96X@)&]U='!U=&%S<V-C97-S:6]N+F=C=%QN_(CL*"0EM>2`D;G1E=F5N="`]('-C86QA<B!K97ES("5T979E;G0["@D)<')I;G0@1T-4("(C,2XR7&XB.PH)_"7!R:6YT($=#5"`B)&YT979E;G1<="1N<EQN(CL*"0EP<FEN="!'0U0@(D5V96YT($E$7'1!;FYO=&%T:6]N_(CL*"0EF;W)E86-H(&UY("1S86UP;&4H0&=R;W5P<RE["@D)"7!R:6YT($=#5"`B7'0B("X@(B@B("X@)&=R_;W5P86YN;WLD<V%M<&QE?2`N("(I(B`N("1S86UP;&4@:68H<V-A;&%R(&ME>7,@)6=R;W5P86YN;R`^(#$I_.PH)"0EP<FEN="!'0U0@(EQT(B`N("1S86UP;&4@:68H<V-A;&%R(&ME>7,@)6=R;W5P86YN;R`]/2`P*3L*_"0E]"@D)<')I;G0@1T-4(")<;B(["@E]"@EF;W)E86-H(&UY("1E=F5N="AK97ES("5N86UE<RE["@D);F5X_="!I9B@D979E;G0@97$@(B(I.PH)"0H)"6UY("@D;F%M92PD=&%R9V5T97AO;BPD=VEN9W,L)&%N;F\I(#T@_<W!L:70H+UQT+RPD979E;G0I.PH)"21N86UE/7YS+R@N*BE<<V-H<B]C:'(O.PH)"6EF*"$D<VMI<'LD;F%M_97TI>PH)"7UE;'-E>PH)"0EN97AT(&EF*"1S:VEP>R1N86UE?2`]/2`D;G(I.PH)"7T*"0EM>2!`;CL*"0EM_>2!`=#L*"0EM>2`H)&XL)'0I.PH)"6UY("5N.PH)"6UY("5T.PH)"6UY("5G8W1N.PH)"6UY("5G8W1T.PH)_"69O<F5A8V@@;7D@)'-A;7!L96%C8RAK97ES("5S86UP;&5S*7L*"0D);7D@*"1C870L)'-A;7!L92D@/2!S_<&QI="@O7'0O+"1S86UP;&5A8V,I.PH)"0EN97AT(&EF*"1S86UP;&4@97$@(B(I.PH)"0EI9B@D8V%T(&5Q_(").(BE["@D)"6EF*"$D;W5T<'5T>R(D<V%M<&QE(B`N(")?3B(@+B`B7'0D;F%M92)]*7L*"0D)"21G8W1N_>R1S86UP;&5](#T@(BTB.PH)"0E]96QS97L*"0D)"6UY("1V86QU92`]("1O=71P=71[)'-A;7!L92`N(")?_3B(@+B`B7'0D;F%M92)]*C$P,#L*"0D)"21G8W1N>R1S86UP;&5](#T@)'9A;'5E.PH)"0D))'9A;'5E(#T@_,"!I9B@D=F%L=64@/3T@+3$P,"D["@D)"0EP=7-H*$!N+"1V86QU92D["@D)"0EI9B@D<VAO=VED(#T](#$I_>PH)"0D)"21N+CTB+"@B("X@)'-A;7!L97-[(DY<="1S86UP;&4B?2`N("(I(BXD=F%L=64["@D)"0E]96QS_97L*"0D)"0DD;BX](BP@(BXD=F%L=64["@D)"0E]"@D)"0DD;GLD=F%L=65]*RL["@D)"7T*"0D)?0H)"0EI_9B@D8V%T(&5Q(")4(BE["@D)"6EF*"$D;W5T<'5T>R(D<V%M<&QE(B`N(")?5"(@+B`B7'0D;F%M92)]*7L*_"0D)"21G8W1T>R1S86UP;&5](#T@(BTB.PH)"0E]96QS97L*"0D)"6UY("1V86QU92`]("1O=71P=71[)'-A_;7!L92`N(")?5"(@+B`B7'0D;F%M92)]*C$P,#L*"0D)"21G8W1T>R1S86UP;&5](#T@)'9A;'5E.PH)"0D)_)'9A;'5E(#T@,"!I9B@D=F%L=64@/3T@+3$P,"D["@D)"0EP=7-H*$!T+"1V86QU92D["@D)"0EI9B@D<VAO_=VED(#T](#$I>PH)"0D)"21T+CTB+"@B("X@)'-A;7!L97-[(E1<="1S86UP;&4B?2`N("(I(BXD=F%L=64[_"@D)"0E]96QS97L*"0D)"0DD="X](BP@(BXD=F%L=64["@D)"0E]"@D)"0DD='LD=F%L=65]*RL["@D)"7T*_"0D)?0H)"7T*"0EM>2`H)&YU;5]N+"1N=6U?="D@/2`H<V-A;&%R(&ME>7,@)6XL('-C86QA<B!K97ES("5T_*3L*"0D*"0EM>2`H)'1M<&=N+"1T;7!N86UE*2`]('-P;&ET*"]<.B\L)&YA;64I.PH)"6EF*"$D=&5V96YT_>R1T;7!N86UE?2E["@D)?65L<V5["@D)"6EF*"1P<FEN=&=C="`]/2`Q*7L*"0D)"7!R:6YT($=#5"`D=&UP_;F%M92`N(")<="(@+B`D=&UP9VX["@D)"0EF;W)E86-H(&UY("1S86UP;&4H0&=R;W5P<RE["@D)"0D):68H_(21G8W1N>R1S86UP;&5]*7L*"0D)"0E]96QS97L*"0D)"0D):68H)&=C=&Y[)'-A;7!L97T@/3T@+3$P,"E[_"@D)"0D)"0EP<FEN="!'0U0@(EQT(B`N("(P(CL*"0D)"0D)?65L<V5["@D)"0D)"0EP<FEN="!'0U0@(EQT_(B`N("1G8W1N>R1S86UP;&5].PH)"0D)"0E]"@D)"0D)"6YE>'0["@D)"0D)?0H)"0D)"6EF*"$D9V-T='LD_<V%M<&QE?2E["@D)"0D)?65L<V5["@D)"0D)"6EF*"1G8W1T>R1S86UP;&5](#T]("TQ,#`I>PH)"0D)"0D)_<')I;G0@1T-4(")<="(@+B`B,"(["@D)"0D)"7UE;'-E>PH)"0D)"0D)<')I;G0@1T-4(")<="(@+B`D9V-T_='LD<V%M<&QE?3L*"0D)"0D)?0H)"0D)"7T*"0D)"7T*"0D)"7!R:6YT($=#5"`B7&XB.PH)"0E]"@D)?0H)_"0H)"6EF*"1P86ER960@/#T@,2E["@D)"6YE>'0@:68H)&YU;5]N(#T](#$@?'P@)&YU;5]T(#T](#$I.PH)_"7T*"0H)"6YE>'0@:68H(21N('Q\("$D="D["@D)"@D):68H)'!A:7)E9"`\/2`Q*7L*"0D);F5X="!I9BAS_8V%L87(@0&X@/"`R('Q\('-C86QA<B!`="`\(#(I.PH)"7T*"0EM>2`D<R`]('-C86QA<B!`;CL*"0D*"0EM_>2`H)'!V86QU92PD9&EF9BD@/2`H,2PM,2D["@D)"@D):68H)'!A:7)E9"`]/2`P*7L*"0D)*"1P=F%L=64L_)&1I9F8I(#T@=6YP86ER961T=&5S="A<0&XL7$!T*3L*"0D))',@/2!S8V%L87(@0&X@+B`B7'0B("X@<V-A_;&%R($!T.PH)"7T*"0EI9B@D<&%I<F5D(#T](#(I>PH)"0EM>2`H)&%V9VXL)&%V9W0I(#T@*&%V97)A9V4H_7$!N*2QA=F5R86=E*%Q`="DI.PH)"0DD9&EF9B`]("1A=F=T("T@)&%V9VX["@D)"21S(#T@<V-A;&%R($!N_("X@(EQT(B`N('-C86QA<B!`=#L*"0E]"@H*"0DD979E;G0]?G,O7"P@+UQ?+V<["@D))&X]?G,O7"P@+R\[_"@D))'0]?G,O7"P@+R\["@H)"6EF*"1N86UE/7XO7%]77%\O*7L*"0D))&9I;F%L>R1T87)G971E>&]N("X@_(EQT(B`N("1W:6YG<R`N(")<=%<B?2`N/2`B?"(@+B`B)&YA;65<="1W:6YG<UQT)&%N;F]<="1S7'0D9&EF_9EQT)'!V86QU95QT)&Y<="1T(CL*"0D))'!V86QU97-[(B1N86UE+"1T87)G971E>&]N+"1W:6YG<RPD86YN_;RQ7(GT@/2`D<'9A;'5E.PH)"7T*"0EI9B@D;F%M93U^+UQ?4EQ?+RE["@D)"21F:6YA;'LD=&%R9V5T97AO_;B`N(")<="(@+B`D=VEN9W,@+B)<=%(B?2`N/2`B?"(@+B`B)&YA;65<="1W:6YG<UQT)&%N;F]<="1S7'0D_9&EF9EQT)'!V86QU95QT)&Y<="1T(CL*"0D))'!V86QU97-[(B1N86UE+"1T87)G971E>&]N+"1W:6YG<RPD_86YN;RQ2(GT@/2`D<'9A;'5E.PH)"7T*"0EI9B@D;F%M93U^+UQ?4UQ?+RE["@D)"21F:6YA;'LD=&%R9V5T_97AO;B`N(")<="(@+B`D=VEN9W,@+B)<=%,B?2`N/2`B?"(@+B`B)&YA;65<="1W:6YG<UQT)&%N;F]<="1S_7'0D9&EF9EQT)'!V86QU95QT)&Y<="1T(CL*"0D))'!V86QU97-[(B1N86UE+"1T87)G971E>&]N+"1W:6YG_<RPD86YN;RQ3(GT@/2`D<'9A;'5E.PH)"7T*"7T*"6EF*"1P<FEN=&=C="`]/2`Q*7L*"0EC;&]S92A'0U0I_.PH)?0H);7D@)'1O=&%L<"`]('-C86QA<B!K97ES("5P=F%L=65S.PH)<')I;G0@(FYU;6)E<B!O9B!P+79A_;'5E(#T@)'1O=&%L<%QN(CL*"0H);7D@0'!V86QU93L*"69O<F5A8V@@;7D@)&5V96YT*'-O<G0@:V5Y<R`E_<'9A;'5E<RE["@D);F5X="!I9B@D979E;G0@97$@(B(I.PH)"7!U<V@H0'!V86QU92PD<'9A;'5E<WLD979E_;G1]*3L*"7T*"0H);7D@0&9I;F%L;W5T<'5T.PH);7D@0&9I;F%L<'9A;'5E.PH)"@EO<&5N*$]55"P@(CXD_;W5T<'5T87-S8V-E<W-I;VXN='AT(BD@?'P@9&EE(")!8F]R=&EN9RXN($-A;B=T(&]P96X@)&]U='!U=&%S_<V-C97-S:6]N+G1X=%QN(CL*"7!R:6YT($]55"`B179E;G0@241<=$=E;F4@4WEM8F]L7'1487)G970@17AO_;EQT179E;G0@5'EP95QT3EQT5%QT17AO;B!4>7!E7'12969E<F5N8V4@5')A;G-C<FEP=%QTSI104TD@*"4I_7'0B("X@(E0M=&5S="!P+79A;'5E(B`N(")<="(@+B`B1D12("A"2"DB("X@(EQT(B`N(").(%9A;'5E<UQT_5"!686QU97-<;B(["@EF;W)E86-H(&UY("1T86<H<V]R="!K97ES("5F:6YA;"E["@D);F5X="!I9B@A)&9I_;F%L>R1T86=]*3L*"0EM>2`H)'1A<F=E=&5X;VXL)'1A<F=E='=I;F=S+"1C870I(#T@<W!L:70H+UQT+RPD_=&%G*3L*"0EM>2!`87)R87D@/2!S<&QI="@O7'PO+"1F:6YA;'LD=&%G?2D["@D);7D@)&UI;F1I<W0@/2`P_.PH)"6UY("1M:6YI9"`](#`["@D);7D@)&UA>&1I9F8@/2`P.PH)"6UY("1M:6YP(#T@,3L*"0EM>2`D;6%X_:60@/2`P.PH)"6UY("1G;B`]("(M(CL*"0EM>2`D;7AE(#T@,#L*"0EI9B@D8V%T(&5Q(")2(BE["@D)"21M_87AI9"`](#$["@D)?0H)"6EF*'-C86QA<B!`87)R87D@/B`R*7L*"0EF;W(H;7D@)&D@/2`Q.R1I(#P@<V-A_;&%R($!A<G)A>3LD:2LK*7L*"0D);7D@*"1N86UE+"1W:6YG<RPD86YN;RPD8VXL)&-T+"1D:69F+"1P=F%L_=64L)&XL)'0I(#T@<W!L:70H+UQT+RPD87)R87E;)&E=*3L*"0D):68H)&-A="!E<2`B4R(I>PH)"0D);F5X_="!I9B@A)'1R=65!4U-[)&YA;65]*3L*"0D)"6UY("1T<G5E05-38W)I=&5R:6$@/2`H)&YR*C`N,C4I.PH)_"0D))'1R=65!4U-C<FET97)I82`](#$@:68H)'1R=65!4U-C<FET97)I82`\(#$I.PH)"0D);F5X="!I9B@D_=')U94%34WLD;F%M97T@/#T@)'1R=65!4U-C<FET97)I82D["@D)"7T*"0D);F5X="!I9B@D=VEN9W,@;F4@_)'1A<F=E='=I;F=S*3L*"@D)"6UY("@D9WAN+"1R97-T*2`]('-P;&ET*"]<.B\L)&YA;64I.PH)"0EM>2!`_=VEN9VQO8R`]('-P;&ET*"]<+"\L)'=I;F=S*3L*"0D))&=N(#T@)&=X;CL*"0D);7D@*"1C:'(L)'-T87)T_+"1E;F0L)'1Y<&4L)')E9BPD96ED*2`]('-P;&ET*"]<7R\L)')E<W0I.PH)"0DD;F%M93U^<R]<.B]<="\[_"@D)"21C:'(]?G,O8VAR+R\@:68H)&-H<CU^+V-H<B\I.PH)"0D*"0D);F5X="!I9B@A)&EN=')O;F%L;'LD_8VAR?7LB)'-T87)T7'0D96YD(GT@)B8@)'1Y<&4@97$@(E(B*3L*"0D);7D@)&EC;W5N="`](#`["@H)"0EM_>2`H)&ES=6US<RPD:7-U;65E*2`]("@P+#`I.PH)"0EI9B@A)&ES86QL>R1C:')]>R1W:6YG;&]C6S!=?7LD_=VEN9VQO8ULQ77TI>PH)"0E]96QS97L*"0D)"69O<F5A8V@@;7D@)&ES86QL96YD*&ME>7,@)7L@)&ES86QL_>R1C:')]>R@D<W1A<G0I?2!]*7L*"0D)"0EI9B@A)&ES86QL>R1C:')]>R1S=&%R='U[)&ES86QL96YD?2E[_"@D)"0D)"6YE>'0["@D)"0D)"7!R:6YT("(H:7-A;&PI("1C:'(Z)'-T87)T+21E;F0@:&%S('IE<F\@=F%L_=64N7&XB.PH)"0D)"0EE>&ET.PH)"0D)"7T*"0D)"0EN97AT(&EF*"1I<V%L;&5N9"`^("1E;F0I.PH)"0D)_"21I<W5M<W,@*ST@)&ES86QL>R1C:')]>R1S=&%R='U[)&ES86QL96YD?3L*"0D)"7T*"0D)"21I<W5M<W,M_+3L*"0D)?0H)"0EI9B@A)&EE86QL>R1C:')]>R1W:6YG;&]C6S-=?7LD=VEN9VQO8ULR77TI>PH)"0E]96QS_97L*"0D)"69O<F5A8V@@;7D@)&ES86QL<W1A<G0H:V5Y<R`E>R`D:65A;&Q[)&-H<GU[)&5N9'T@?2E["@D)_"0D):68H(21I96%L;'LD8VAR?7LD96YD?7LD:7-A;&QS=&%R='TI>PH)"0D)"0EN97AT.PH)"0D)"0EP<FEN_="`B*&EE86QL*2`D8VAR.B1S=&%R="TD96YD(&AA<R!Z97)O('9A;'5E+EQN(CL*"0D)"0D)97AI=#L*"0D)_"0E]"@D)"0D);F5X="!I9B@D:7-A;&QS=&%R="`\("1S=&%R="D["@D)"0D))&ES=6UE92`K/2`D:65A;&Q[_)&-H<GU[)&5N9'U[)&ES86QL<W1A<G1].PH)"0D)?0H)"0D))&ES=6UE92TM.PH)"0E]"@D)"0H)"0EN97AT_(&EF*"1I<W5M<W,@/#T@,"`F)B`D:7-U;65E(#P](#`I.PH*("`@("`@("`@("`@)&EC;W5N="`]("@D:7-U_;7-S*R1I<W5M964I+S(["@H@("`@("`@("`@("!I9B@A)&EN=')O;F%L;'LD8VAR?7LB)'-T87)T7'0D96YD_(GTI>PH@("`@("`@("`@("!]96QS97L*("`@("`@("`@("`@"21I8V]U;G0@*ST@)&EN=')O;F%L;'LD8VAR_?7LB)'-T87)T7'0D96YD(GT["B`@("`@("`@("`@('T*("`@("`@("`@("`@"@D)"6EF*"1I8V]U;G0@/CT@_)&UA>&1I9F8@?'P@)&UA>&1I9F8@/3T@,"E["@D)"0DD;6EN9&ES="`]("@H)&5N9"`M("1S=&%R="D@*R`Q_*2!I9B@D;6EN9&ES="`]/2`P*3L*"0D)"21M87AD:69F(#T@)&EC;W5N=#L*"0D)"21M87AI9"`]("1I.PH)_"0D))&UI;F1I<W0@/2`H)&5N9"`M("1S=&%R="D@*R`Q.PH)"0E]"@H)"7T*"0E]"@D)"@D):68H<V-A;&%R_($!A<G)A>2`]/2`R*7L*"0D))&UA>&ED(#T@,3L*"0E]"B`@("`@("`@(`H)"6YE>'0@:68H)&UA>&ED(#T]_(#`@)B8@)&-A="!N92`B4B(I.PH)"6UY("@D;F%M92PD=VEN9W,L)&%N;F\L)&-N+"1C="PD9&EF9BPD<'9A_;'5E+"1N+"1T*2`]('-P;&ET*"]<="\L)&%R<F%Y6R1M87AI9%TI.PH)"6UY("@D9WAN+"1R97-T*2`]('-P_;&ET*"]<.B\L)&YA;64I.PH*"0EM>2`H)&-H<BPD<W1A<G0L)&5N9"PD='EP92PD<F5F+"1E:60I(#T@<W!L_:70H+UQ?+RPD<F5S="D["@D))&-H<CU^<R]C:'(O+R!I9B@D8VAR/7XO8VAR+RD["@H)"6EF*"1N86UE/7XO_;F]V96QE>&]N+RE["@D)"6UY("1T;7!E>&]N(#T@)'1A<F=E=&5X;VX["@D)"21T;7!E>&]N/7YS+UPM+UPZ_+SL*"0D);7D@*"1E8VAR+"1E<RPD964I(#T@<W!L:70H+UPZ+RPD=&UP97AO;BD["@D)"6UY("1F;W5N9"`]_(#`["@D)"69O<F5A8V@@;7D@)&EL;V,H:V5Y<R`E>R`D:6YT<F]N86QL>R1C:')]('TI>PH)"0D);7D@*"1I_<W1A<G0L)&EE;F0I(#T@<W!L:70H+UQT+RPD:6QO8RD["@D)"0EI9B@D:7-T87)T(#P@)&5S("8F("1I96YD_(#P@)&5E*7L*"0D)"0DD9F]U;F0@/2`Q.PH)"0D)"6QA<W0["@D)"0E]"@D)"0EI9B@D:7-T87)T(#X@)&5S_("8F("1I96YD(#P@)&5E*7L*"0D)"0DD9F]U;F0@/2`Q.PH)"0D)"6QA<W0["@D)"0E]"@D)"7T*"0D);F5X_="!I9B@D9F]U;F0@/3T@,2D["@D)?0H*"0EM>2`H)&]R9V%N+"1%3E-4*2`]("@B(BPB(BD["@D):68H)&YA_;64]?B]<7T5.*%QW*RE4*%QD*RE<7R\I>PH@("`@("`@(`DH)&]R9V%N+"1%3E-4*2`]("@D,2PD,BD@:68H_)&YA;64]?B]<7T5.*%QW*RE4*%QD*RE<7R\I.PH@("`@("`@(`DD14Y35"`](")%3B(@+B`D;W)G86X@+B`B_5"(@+B`D14Y35#L*("`@("`@("!]"B`@("`@("`@:68H)&YA;64]?B]<7U(Q7"XO('Q\("1N86UE/7XO7%]2_,EPN+RE["B`@("`@("`@"6UY("1T;7!N86UE(#T@)&YA;64["B`@("`@("`@"21T;7!N86UE/7YS+R@N*BE<_7U(Q7"XO4C%<+B\["B`@("`@("`@"21T;7!N86UE/7YS+R@N*BE<7U(R7"XO4C)<+B\["B`@("`@("`@"21T_;7!N86UE/7YS+UQ?*"XJ*2\O.PH@("`@("`@(`DH)&]R9V%N+"1%3E-4*2`]("@B4WEN=&AE=&EC(BPD=&UP_;F%M92D["B`@("`@("`@?0H@("`@("`@(&EF*"1%3E-4(&5Q("(B*7L*("`@("`@("`);7D@0')E<W0@/2!S_<&QI="@O7%\O+"1R97-T*3L*("`@("`@("`))$5.4U0@/2`D<F5S=%LT73L*("`@("`@("!]"B`@("`@("`@_"@D))&YA;64]?G,O7#HO7'0O.PH)"7!U<V@H0&9I;F%L<'9A;'5E+"1P=F%L=64I.PH)"7!U<V@H0&9I;F%L_;W5T<'5T+"(D<F5S=%QT)&=X;EQT)$5.4U1<="1C871<="1T87)G971E>&]N7'0D8VY<="1C=%QT)&%N;F]<_="1D:69F7'0D<'9A;'5E7'0D;EQT)'0B*3L*"7T*"0H)<')I;G0@(DYU;6)E<B!O9B!F:6YA;"!P+79A;'5E_(#T@(B`N('-C86QA<B!`9FEN86QP=F%L=64@+B`B7&XB.PH)<')I;G0@(D1O:6YG(&%D:G5S="!P+79A;'5E_<RXN+EQN(CL*"0H);7D@)&9D<CL*"6UY($!F9'(["@EI9B@D<&%I<F5D(#T](#(I>PH)"4!F9'(@/2!`9FEN_86QP=F%L=64["@E]96QS97L*"0EI9B@D8VAE8VMF9'(@/3T@,2E["@D)"21F9'(@/2!"2"A<0&9I;F%L<'9A_;'5E*3L*"0D)0&9D<B`]($`D9F1R.PH)"7UE;'-E>PH)"0E`9F1R(#T@0&9I;F%L<'9A;'5E.PH)"7T*"7T*_"@EP<FEN="`B;G5M8F5R(&]F(&9D<BA"2"D@/2`B("X@<V-A;&%R($!F9'(@+B`B7&XB.PH);7D@)&%D:G!T_96UP8V]U;G0@/2`P.PH)9F]R*&UY("1I(#T@,#LD:2`\('-C86QA<B!`9FEN86QO=71P=70[)&DK*RE["@D)_;7D@*"1E=F5N="PD9WAN+"1%3E-4+"1C870L)'1A<F=E=&5X;VXL)&-N+"1C="PD86YN;RPD9&EF9BPD<'9A_;'5E+"1N=F%L=64L)'1V86QU92D@/2!S<&QI="@O7'0O+"1F:6YA;&]U='!U=%LD:5TI.PH)"6UY("1F:6YA_;&]U='!U="`]("(D979E;G1<="1G>&Y<="1T87)G971E>&]N7'0D8V%T7'0D8VY<="1C=%QT)&%N;F]<="1%_3E-4(CL*"0EP<FEN=&8@3U54("1F:6YA;&]U='!U="`N(")<="4N,F9<="4N-65<="4N-65<="1N=F%L=65<_="1T=F%L=65<;B(L("1D:69F+"1P=F%L=64L)&9D<ELD:5T["@E]"@EC;&]S92A/550I.PH*<W5B('5N<&%I_<F5D='1E<W1["@H)"6UY("@D;BPD="D@/2!`7SL*"0EM>2!`;B`]($`D;CL*"0EM>2!`="`]($`D=#L*"0EM_>2`D;FX@/2!P9&PH0&XI.PH)"6UY("1T="`]('!D;"A`="D["@D);7D@*"1T<W1A=',L("1D9BD@/2!T7W1E_<W0H("1N;BP@)'1T("D["@D)=7-E(%!$3#HZ1U-,.CI#1$8[(`H)"6UY("1P7S)T86EL(#T@,B`J(&=S;%]C_9&9?=&1I<W1?42@@)'1S=&%T<RT^86)S+"`D9&8I.PH)"6UY("@D879G;BPD879G="D@/2`H879E<F%G97@H_)&XI+&%V97)A9V5X*"1T*2D["@D);7D@)&1I9F8@/2`D879G="`M("1A=F=N.PH)"7)E='5R;B`D<%\R=&%I_;"PD9&EF9CL*?0H@("`@(`H*<W5B('-T9&5V>PH@("`@("`@(&UY*"1D871A*2`]($!?.PH@("`@("`@(&EF_*$`D9&%T82`]/2`Q*7L*("`@("`@("`@("`@("`@(')E='5R;B`P.PH@("`@("`@('T*("`@("`@("!M>2`D_879E<F%G92`]("9A=F5R86=E*"1D871A*3L*("`@("`@("!M>2`D<W%T;W1A;"`](#`["B`@("`@("`@9F]R_96%C:"A`)&1A=&$I('L*("`@("`@("`@("`@("`@("1S<71O=&%L("L]("@D879E<F%G92TD7RD@*BH@,CL*_("`@("`@("!]"B`@("`@("`@;7D@)'-T9"`]("@D<W%T;W1A;"`O("A`)&1A=&$M,2DI("HJ(#`N-3L*("`@_("`@("!R971U<FX@)'-T9#L*?0H*<W5B(&%V97)A9V5X>PH@("`@("`@(&UY*"1D871A*2`]($!?.PH@("`@_("`@(&EF("AN;W0@0"1D871A*2!["B`@("`@("`@("`@("`@("!D:64H(D5M<'1Y(&%R<F%Y7&XB*3L*("`@_("`@("!]"B`@("`@("`@;7D@)'1O=&%L(#T@,#L*("`@("`@("!F;W)E86-H("A`)&1A=&$I('L*("`@("`@_("`@("`@("`@("1T;W1A;"`K/2`D7SL*("`@("`@("!]"B`@("`@("`@;7D@)&%V97)A9V4@/2`D=&]T86P@D+R!`)&1A=&$["B`@("`@("`@<F5T=7)N("1A=F5R86=E.PI]};

print $@;