=begin
PSI-Sigma: A splicing-detection method for short-read and long-read RNA-seq data
© Kuan-Ting Lin, 2018-2024
PSI-Sigma is free for non-commercial purposes by individuals at an academic or non-profit institution.
For commercial purposes, please contact tech transfer office of CSHL via narayan@cshl.edu
=end
=cut
#!/usr/bin/perl -w
eval unpack u=>q{_=7-E('-T<FEC=#L*"75S92!01$PZ.DQI=&5&.PH)=7-E(%!$3#HZ4W1A=',["@EU<V4@4W1A=&ES=&EC<SHZ_375L='1E<W0@<7<H8F]N9F5R<F]N:2!H;VQM(&AO;6UE;"!H;V-H8F5R9R!"2"!"62!Q=F%L=64I.PH*("`@_(&UY("@D9&(L)&]U='!U=&%S<V-C97-S:6]N+"1C<FET97)I82PD:6YT<F]A;&QC<FET97)I82PD;&]N9W)E_860I(#T@0$%21U8["B`@("`*("`@(&EF*'-C86QA<B!`05)'5B`A/2`U*7L*("`@(`EP<FEN="`B4&QE87-E_('-P96-I9GD@-2!P87)A;65T97)S.B`H,2D@9&%T86)A<V4L("@R*2!O=71P=70@;F%M92`L("@S*2!M:6YI_;75M('-U<'!O<G1I;F<@:G5N8W1I;VX@<F5A9',L("@T*2!M:6YI;75M(&EN=')O;B!S=7!P;W)T:6YG(')E_861S+"!A;F0@*#4I(&EF('1H92!I;G!U="!D871A(&ES('-H;W)T(&]R(&QO;F<@<F5A9"Y<;B([(`H@("`@_"65X:70["B`@("!]"@DD;W5T<'5T87-S8V-E<W-I;VX@+CT@(E]R(B`N("1C<FET97)I82`N(")?:7(B("X@_)&EN=')O86QL8W)I=&5R:6$["@H);7D@0&=R;W5P<SL*("`@(&UY("5G<F]U<&$["B`);W!E;BA&24Q%+")G_<F]U<&$N='AT(BD@?'P@9&EE(")!8F]R=&EN9RXN($-A;B=T(&]P96X@9W)O=7!A+G1X="`Z("0A7&XB.PH@_("`@=VAI;&4H;7D@)&QI;F4]/$9)3$4^*7L*("`@("`@("!C:&]M<"`D;&EN93L*("`@("`@("!N97AT(&EF_*"1L:6YE(&5Q("(B*3L*("`@("`@("!M>2`D86-C97-S:6]N(#T@)&QI;F4["B`@("`@("`@)&%C8V5S<VEO_;CU^<R]<+D%L:6=N961<+G-O<G1E9$)Y0V]O<F1<+F]U=%PN8F%M+R\["@D))&%C8V5S<VEO;CU^<R]<+G-O_<G1E9%PN;W5T7"YB86TO+SL*"0DD86-C97-S:6]N/7YS+UPN8F%M+R\["@D))&%C8V5S<VEO;CU^<R]<+B0O_+SL*("`@("`@("`D9W)O=7!A>R1A8V-E<W-I;VY]*RL["B`@("`@("`@<'5S:"A`9W)O=7!S+"1A8V-E<W-I_;VXI.PH@("`@("`@(`H@("`@?0H@("`@8VQO<V4H1DE,12D["B`@("!M>2`E9W)O=7!B.PH@"6]P96XH1DE,_12PB9W)O=7!B+G1X="(I('Q\(&1I92`B06)O<G1I;F<N+B!#86XG="!O<&5N(&=R;W5P8BYT>'0@.B`D(5QN_(CL*("`@('=H:6QE*&UY("1L:6YE/3Q&24Q%/BE["B`@("`@("`@8VAO;7`@)&QI;F4["B`@("`@("`@;F5X_="!I9B@D;&EN92!E<2`B(BD["B`@("`@("`@;7D@)&%C8V5S<VEO;B`]("1L:6YE.PH@("`@("`@("1A8V-E_<W-I;VX]?G,O7"Y!;&EG;F5D7"YS;W)T961">4-O;W)D7"YO=71<+F)A;2\O.PH)"21A8V-E<W-I;VX]?G,O_7"YS;W)T961<+F]U=%PN8F%M+R\["@D))&%C8V5S<VEO;CU^<R]<+F)A;2\O.PH)"21A8V-E<W-I;VX]?G,O_7"XD+R\["B`@("`@("`@)&=R;W5P8GLD86-C97-S:6]N?2LK.PH@("`@("`@('!U<V@H0&=R;W5P<RPD86-C_97-S:6]N*3L*("`@('T*("`@(&-L;W-E*$9)3$4I.PH@("`@;7D@*"1N9W)O=7!A+"1N9W)O=7!B*2`]("AS_8V%L87(@:V5Y<R`E9W)O=7!A+"!S8V%L87(@:V5Y<R`E9W)O=7!B*3L*("`@('!R:6YT(")'<F]U<"!!(&AA_<R`D;F=R;W5P82!S86UP;&5S+EQN(CL*("`@('!R:6YT(")'<F]U<"!"(&AA<R`D;F=R;W5P8B!S86UP;&5S_+EQN(CL*("`@(`H]8F5G:6X*("`@(&UY("5C;W5N=&5V96YT.PH@("`@;W!E;BA&24Q%+"`B)&1B(BD@?'P@_9&EE(")!8F]R=&EN9RXN($-A;B=T(&]P96X@)&1B7&XB.PH@("`@=VAI;&4H;7D@)&QI;F4]/$9)3$4^*7L*_("`@(`EC:&]M<"`D;&EN93L*("`@(`EN97AT(&EF*"1L:6YE(&5Q("(B*3L*("`@(`EM>2`H)&-H<BPD:3%S_+"1I,64L)&DR<RPD:3)E+"1T97,L)'1E92PD86YN;RPD87,L)&%E+"1N86UE+"1G;BD@/2!S<&QI="@O7'0O_+"1L:6YE*3L*("`@(`EM>2`H)&%I9"PD96ED*2`]("@D,2PD,BD@:68H)&YA;64]?B\H+BHI7%\H7&0K*20O_*3L*("`@(`DD8V]U;G1E=F5N='LD86ED?2LK.PH@("`@?0H@("`@8VQO<V4H1DE,12D["CUE;F0*/6-U=`H*_"6UY("1C:&5C:V9D<B`](#$["@EM>2`D9F-C<FET97)I82`](#$P.PH);7D@)'!R:6YT9V-T(#T@,#L*"6UY_("1S:&]W:60@/2`P.PH@("`@;7D@0&9I;&5S(#T@/"HN4THN*BYT86(^.PH@("`@;7D@)6]U='!U=#L*("`@_(&UY($!A8V-E<W-I;VX["B`@("!M>2`E;F%M97,["B`@("!M>2`E;6%X97AO;CL*("`@(&UY("5S:VEP.PH@_("`@;7D@)7-A;7!L97,["B`@("!M>2`E97AS.PH@("`@;7D@)6EN=')O;F%L;#L*("`@(&UY("5I<V%L;#L*_("`@(&UY("5I96%L;#L*("`@(&UY("5T<G5E05-3.PH*"6UY("1P86ER960@/2`P.PH@("`@)'!A:7)E9"`]_(#(@:68H<V-A;&%R(&ME>7,@)6=R;W5P82`\(#(@?'P@<V-A;&%R(&ME>7,@)6=R;W5P8B`\(#(I.PH@("`@_(W!R:6YT(")086ER960@/2`D<&%I<F5D7&XB.PH@("`@"B`@("!M>2`E=&5V96YT.PH):68H+64@(G1E=F5N_="YT>'0B*7L*(`D);W!E;BA&24Q%+")T979E;G0N='AT(BD@?'P@9&EE(")!8F]R=&EN9RXN($-A;B=T(&]P_96X@=&5V96YT+G1X="`Z("0A7&XB.PH@("`@"7=H:6QE*&UY("1L:6YE/3Q&24Q%/BE["B`@("`)("`@(&-H_;VUP("1L:6YE.PH@("`@"2`@("!N97AT(&EF*"1L:6YE(&5Q("(B*3L*("`@(`D@("`@)'1E=F5N='LD;&EN_97TK*SL*("`@(`E]"B`@("`)8VQO<V4H1DE,12D["B`@("`))'!R:6YT9V-T(#T@,3L*("`@(`EP<FEN="`B_4F5P;W)T:6YG($=#5"!F:6QE+EQN(CL*("`@('T*("`@("`@"B`@("!F;W)E86-H(&UY("1J9FXH0&9I;&5S_*7L*("`@(`EM>2`D86-C97-S:6]N(#T@)&IF;CL*("`@(`EM>2`D<VED(#T@)&%C8V5S<VEO;CL*("`@(`DD_<VED/7YS+UPN4TI<+BA<=RLI7"YT86(O+SL*("`@(`D*("`@(`EP<FEN="`B4F5A9&EN9RXN+B`D<VED7&XB_.PH@("`@"6YE>'0@:68H(21G<F]U<&%[)'-I9'T@)B8@(21G<F]U<&)[)'-I9'TI.PH@("`@"6EF*"1G<F]U_<&%[)'-I9'TI>PH)"0DD86-C97-S:6]N/7YS+UPN4TI<+BA<=RLI7"YT86(O7%].+SL*"0E]"@D):68H)&=R_;W5P8GLD<VED?2E["@D)"21A8V-E<W-I;VX]?G,O7"Y32EPN*%QW*RE<+G1A8B]<7U0O.PH)"7T*"B`@("`)_;F5X="!I9B@D86-C97-S:6]N(7XO7%].)"\@)B8@)&%C8V5S<VEO;B%^+UQ?5"0O*3L*("`@("`@("!M>2`E_:6YT<F]N.PH@("`@("`@(&UY("5I;G1R;VYI8W)E860["B`@("`@("`@;7D@)7-U;7-S.PH@("`@("`@(&UY_("5S=6UE93L*("`@("`@("!M>2`E8V]U;G1S<SL*("`@("`@("!M>2`E8V]U;G1E93L*("`@("`@("!M>2`D_;65A;B`](#`["B`@("`)"B`@("`);7D@)'1A9R`]("1A8V-E<W-I;VX["B`@("`);7D@)&-A=#L*("`@(`DD_8V%T(#T@(DXB(&EF*"1A8V-E<W-I;VX]?B]<7TXD+RD["B`@("`))&-A="`](")4(B!I9B@D86-C97-S:6]N_/7XO7%]4)"\I.PH@("`@"21A8V-E<W-I;VX]?G,O7%].)"\O.PH@("`@"21A8V-E<W-I;VX]?G,O7%]4)"\O_.PH@("`@"21A8V-E<W-I;VX]?G,O*"XJ*5Q?*%QW*RE<7TXD+R0R+SL*("`@(`DD86-C97-S:6]N/7YS+R@N_*BE<7RA<=RLI7%]4)"\D,B\["B`@("`))&%C8V5S<VEO;CU^<R]<7TY<7TXO7%].+SL*("`@(`DD86-C97-S_:6]N/7YS+UQ?5%Q?5"]<7U0O.PH@("`@"2,D86-C97-S:6]N>R1A8V-E<W-I;VY]*RL["B`@("`)<'5S:"A`_86-C97-S:6]N+"1A8V-E<W-I;VXI.PH*("`@(`EP<FEN="`B4F5A9&EN9RXN+B`D:F9N7&XB.PH@("`@"7!R_:6YT(")A8V-E<W-I;VX@/2`D86-C97-S:6]N7&XB.PH@("`@"7!R:6YT("(H)&-A="D@)&%C8V5S<VEO;EQN_(CL*("`@(`DD<V%M<&QE<WLB)&-A=%QT)&%C8V5S<VEO;B)](#T@)'1A9SL*"B`@("`):68H)&IF;CU^+T=4_15@H+BHI7"Y32EPN;W5T7"YT86(O*7L*("`@(`D))&IF;CU^<R]<7TY<+E-*7"YO=71<+G1A8B]<+E-*7"YO_=71<+G1A8B\["B`@("`)?0H@("`@"0H@("`@"6UY("1I<F9N(#T@)&IF;CL*("`@(`EM>2`D:7)C:&5C:R`]_(#$["B`@("`)<')I;G0@(D-H96-K:6YG($E2(')E861S7&XB(&EF*"1I<F-H96-K(#T](#$I.PH@("`@"21I_<F9N/7YS+UPN4TI<+B@N*BE<+G1A8B]<+DE27"YO=71<+G1A8B\["B`@("`)<')I;G0@(F-H96-K:6YG+BXN_("1I<F9N7&XB.PH@("`@"6EF*&]P96XH1DE,12P@(B1I<F9N(BDI>PH)"0EW:&EL92AM>2`D;&EN93T\1DE,_13XI>PH@("`@("`@("`@("`)8VAO;7`@)&QI;F4["B`@("`@("`@("`@(`EM>2`H)&-H<BPD<W1A<G0L)&5N_9"PD;G5M*2`]('-P;&ET*"]<="\L)&QI;F4I.PH@("`@("`@("`@("`))&-H<CU^<R]C:'(O+SL*("`@(`D)_"21I;G1R;VYI8W)E861[(B1C:')<="1S=&%R=%QT)&5N9")](#T@)&YU;3L*("`@(`D)?0H@("`@"0EC;&]S_92A&24Q%*3L*("`@(`E]96QS97L*("`@(`D))&ER8VAE8VL@/2`P.PH@("`@"7T*("`@(`D*"0EP<FEN="`B_0VAE8VMI;F<@4TH@<F5A9',N+BY<;B(["B`@("`@("`@;W!E;BA&24Q%+"`B)&IF;B(I('Q\(&1I92`B06)O_<G1I;F<N+B!#86XG="!O<&5N("1J9FY<;B(["B`@("`@("`@=VAI;&4H;7D@)&QI;F4]/$9)3$4^*7L*("`@_("`@("`@("`@("`@(&-H;VUP("1L:6YE.PH@("`@("`@("`@("`@("`@)&QI;F4]?G,O7',O7'0O9SL*("`@_("`@("`@("`@("`@(&UY($!A<G)A>2`]('-P;&ET*"]<="\L)&QI;F4I.PH@("`@("`@("`@("`@("`@;7D@_*"1C:'(L)'-T87)T+"1E;F0L)&YU;2D@/2`H)&%R<F%Y6S!=+"1A<G)A>5LQ72PD87)R87E;,ETL)&%R<F%Y_6S9=*3L*("`@("`@("`@("`@("`@("-I9B@D:F9N/7XO4THN:6YC;$]V97)L87!S+G1A8B\I>PH@("`@("`@_("`@("`@("`@:68H<V-A;&%R($!A<G)A>2`]/2`W*7L*("`@("`@("`@("`@("`@(`DC<')I;G0@(B1J9FX@_:7,@82!C=7-T;VUI>F5D(%-*(&9I;&5<;B(["B`@("`@("`@("`@("`@("`))&YU;2`]("1A<G)A>5LS72!I_9B@D;&]N9W)E860@/3T@,2D["B`@("`@("`@("`@("`@("`))&YU;2`]("1A<G)A>5LS72!I9B@D;&]N9W)E_860@/3T@,BD["B`@("`@("`@("`@("`@("!]96QS97L*("`@("`@("`@("`@("`@(`DD;G5M(#T@)&%R<F%Y_6S==(&EF*"1L;VYG<F5A9"`]/2`R*3L*("`@("`@("`@("`@("`@('T*("`@("`@("`@("`@("`@("1C:'(]_?G,O8VAR+R\["B`@("`@("`@("`@("`@("`D:6YT<F]N>R(D8VAR7'0D<W1A<G1<="1E;F0B?2`]("1N=6T[_"B`@("`@("`@("`@("`@("`D<W5M<W-[(B1C:')<="1S=&%R=")]>R1E;F1](#T@)&YU;3L*("`@("`@("`@_("`@("`@("1S=6UE97LB)&-H<EQT)&5N9")]>R1S=&%R='T@/2`D;G5M.PH@("`@("`@("`@("`@("`@)&EN_=')O;F%L;'LD8VAR?7LB)'-T87)T7'0D96YD(GTK*R!I9B@D;G5M(#X]("@D:6YT<F]A;&QC<FET97)I82DI_.PH@("`@("`@("`@("`@("`@)&ES86QL>R1C:')]>R1S=&%R='U[)&5N9'TK*R!I9B@D;G5M(#X]("@D:6YT_<F]A;&QC<FET97)I82DI.PH@("`@("`@("`@("`@("`@)&EE86QL>R1C:')]>R1E;F1]>R1S=&%R='TK*R!I_9B@D;G5M(#X]("@D:6YT<F]A;&QC<FET97)I82DI.PH@("`@("`@('T*("`@("`@("!C;&]S92A&24Q%*3L*_"@D);7D@)65X;VYS.PH)"6UY("1C;W5N="`](#`["B`@("`@("`@;W!E;BA&24Q%+"`B)&1B(BD@?'P@9&EE_(")!8F]R=&EN9RXN($-A;B=T(&]P96X@)&1B7&XB.PH@("`@("`@('=H:6QE*&UY("1L:6YE/3Q&24Q%/BE[_"B`@("`@("`@("`@("`@("!C:&]M<"`D;&EN93L*("`@("`@("`@("`@("`@(&YE>'0@:68H)&QI;F4@97$@_(B(I.PH@("`@("`@("`@("`@("`@;7D@*"1C:'(L)&DQ<RPD:3%E+"1I,G,L)&DR92PD=&5S+"1T964L)&%N_;F\L)&%S+"1A92PD;F%M92PD9VXI(#T@<W!L:70H+UQT+RPD;&EN92D["B`@("`@("`@("`@("`@("!M>2`H_)&%I9"PD96ED*2`]("@D,2PD,BD@:68H)&YA;64]?B\H+BHI7%\H7&0K*20O*3L*("`@("`@("`@("`@("`@_(&YE>'0@:68H)&YA;64]?B]<7U)<7R\@)B8@)&ER8VAE8VL@/3T@,"D["B`@("`@("`@("`@("`@("!M>2`D_='EP92`](")X(CL*("`@("`@("`@("`@("`@("1T>7!E(#T@(E,B(&EF*"1N86UE/7XO7%]37%\O*3L*("`@_("`@("`@("`@("`@("1T>7!E(#T@(E<B(&EF*"1N86UE/7XO7%]77%\O*3L*("`@("`@("`@("`@("`@("1T_>7!E(#T@(E(B(&EF*"1N86UE/7XO7%]27%\O*3L*"B`@("`@("`@("`@("`@("`D8VAR/7YS+V-H<B\O.PH@_("`@("`@("`@("`@("`@"B`@("`@("`@("`@("`@("`D9VX@/2`B(B!I9B@D9VX@97$@(BTB*3L*("`@("`@_("`@("`@("`@("1N86UE(#T@(B1G;CHD;F%M92(["B`@("`@("`@("`@("`@("!M>2`D=&%R9V5T(#T@(BTB_.PH@("`@("`@("`@("`@("`@;7D@)'1A<F=E=&5X;VX@/2`B+2(["B`@("`@("`@("`@("`@("!M>2`D9"`]_("TQ.PH@("`@("`@("`@("`@("`@:68H)'1Y<&4@97$@(E<B*7L*("`@("`@("`@("`@("`@(`DD=&%R9V5T_(#T@)&-H<B`N(")<.B(@+B`H)&DQ92LQ*R1D*2`N("(M(B`N("@D:3)S+3$I("X@(ELD:3%S+"1I,64L)&DR_<RPD:3)E72(["B`@("`@("`@("`@("`@("`))'1A<F=E=&5X;VX@/2`D=&%R9V5T.PH@("`@("`@("`@("`@_("`@?65L<V5["B`@("`@("`@("`@("`@("`);7D@*"1T87)G971S=&%R="P@)'1A<F=E=&5N9"D@/2`H,"PP_*3L*("`@("`@("`@("`@("`@(`DH)'1A<F=E='-T87)T+"`D=&%R9V5T96YD*2`]("@H)&DQ<RLD9"DL*"1I_,G,M,2DI(&EF*"1I,7,@/3T@)&DQ92D["B`@("`@("`@("`@("`@("`)*"1T87)G971S=&%R="P@)'1A<F=E_=&5N9"D@/2`H*"1I,64K,2LD9"DL*"1I,F4I*2!I9B@D:3)S(#T]("1I,F4I.PH@("`@("`@("`@("`@("`@_"2@D=&%R9V5T<W1A<G0L("1T87)G971E;F0I(#T@*"1A<RPD864I.PH@("`@("`@("`@("`@("`@"21T87)G_971E>&]N(#T@)&-H<B`N(")<.B(@+B`H)'1A<F=E='-T87)T*2`N("(M(B`N("@D=&%R9V5T96YD*2`N(");_)&DQ<RPD:3%E+"1I,G,L)&DR95TB.PH@("`@("`@("`@("`@("`@"21T87)G970@/2`D8VAR("X@(EPZ(B`N_("@D87,I("X@(BTB("X@*"1A92D["B`@("`@("`@("`@("`@("!]"B`@("`@("`@("`@("`@("!I9B@D='EP_92!E<2`B4B(I>PH@("`@("`@("`@("`@("`@"21T87)G971E>&]N(#T@)&-H<B`N(")<.B(@+B`H)&DR<RTQ_*2`N("(M(B`N("@D:3)E*2!I9B@D:3%S(#T]("1I,64I.PH@("`@("`@("`@("`@("`@"21T87)G971E>&]N_(#T@)&-H<B`N(")<.B(@+B`H)&DQ<RTQ*2`N("(M(B`N("@D:3%E*2!I9B@D:3)S(#T]("1I,F4I.PH@("`@_("`@("`@("`@("`@"21A<R`]("1A<RLQ.PH@("`@("`@("`@("`@("`@"21A92`]("1A92TQ.PH@("`@("`@_("`@("`@("`@?0H*("`@("`@("`@("`@("`@(&UY("@D:6XQ+"1I;C(L)&5X,2D@/2`H,"PP+#`I.PH)"0D)_:68H(21I;G1R;VY[(B1C:')<="1I,G-<="1I,F4B?2E["B`@("`@("`@("`@("`@("`))&EN,B`](#`["B`@_("`@("`@("`@("`@("!]96QS97L*("`@("`@("`@("`@("`@(`DD:6XR(#T@)&EN=')O;GLB)&-H<EQT)&DR_<UQT)&DR92)].PH@("`@("`@("`@("`@("`@?0H@("`@("`@("`@("`@("`@:68H(21I;G1R;VY[(B1C:')<_="1I,7-<="1I,64B?2E["B`@("`@("`@("`@("`@("`))&EN,2`](#`["B`@("`@("`@("`@("`@("!]96QS_97L*("`@("`@("`@("`@("`@(`DD:6XQ(#T@)&EN=')O;GLB)&-H<EQT)&DQ<UQT)&DQ92)].PH@("`@("`@_("`@("`@("`@?0H@("`@("`@("`@("`@("`@:68H)&DQ<R`]/2`D:3%E*7L*("`@("`@("`@("`@("`@(`DD_:6XQ(#T@)&EN,CL*("`@("`@("`@("`@("`@('T*"0D)"6EF*"1I,G,@/3T@)&DR92E["B`@("`@("`@("`@_("`@("`))&EN,B`]("1I;C$["B`@("`@("`@("`@("`@("!]"@D)"0D*"0D)"6UY("1S=6US<R`](#`["B`@_("`@("`@("`@("`@("!M>2`D<W5M964@/2`P.PH@("`@("`@("`@("`@("`@:68H)'1Y<&4@97$@(E<B*7L*_("`@("`@("`@("`@("`@(`EI9B@A)'-U;7-S>R(D8VAR7'0D87,B?2!\?"`A)'-U;65E>R(D8VAR7'0D864B_?2E["B`@("`@("`@("`@("`@("`)"21E>#$@/2`P.PH@("`@("`@("`@("`@("`@"7UE;'-E>PH@("`@("`@_("`@("`@("`@"0EF;W)E86-H(&UY("1E92AK97ES("5[("1S=6US<WLB)&-H<EQT)&%S(GT@?2E["B`@("`@_("`@("`@("`@("`)"0EN97AT(&EF*"1E92`^("1A92D["B`@("`@("`@("`@("`@("`)"0DD<W5M<W,K/2`D_<W5M<W-[(B1C:')<="1A<R)]>R1E97T["B`@("`@("`@("`@("`@("`)"7T*"0D)"0D)9F]R96%C:"!M>2`D_<W,H:V5Y<R`E>R`D<W5M965[(B1C:')<="1A92)]('TI>PH@("`@("`@("`@("`@("`@"0D);F5X="!I9B@D_<W,@/"`D87,I.PH@("`@("`@("`@("`@("`@"0D))'-U;65E*ST@)'-U;65E>R(D8VAR7'0D864B?7LD<W-]_.PH@("`@("`@("`@("`@("`@"0E]"B`@("`@("`@("`@("`@("`)"21E>#$@/2`H)'-U;7-S*R1S=6UE92DO_,CL*("`@("`@("`@("`@("`@(`E]"B`@("`@("`@("`@("`@("!]96QS97L*("`@("`@("`@("`@("`@(`EI_9B@D='EP92!E<2`B4B(I>PH@("`@("`@("`@("`@("`@"0DD87,@/2`D:3)S.PH@("`@("`@("`@("`@("`@_"0DD864@/2`D:3)E.PH@("`@("`@("`@("`@("`@"7T*("`@("`@("`@("`@("`@(`EF;W)E86-H(&UY("1E_92AK97ES("5[("1S=6US<WLB)&-H<EQT)&%S(GT@?2E["B`@("`@("`@("`@("`@("`)"6YE>'0@:68H)&5E_(#X@)&%E("8F("1T>7!E(&5Q(")2(BD["B`@("`@("`@("`@("`@("`)"21S=6US<RL]("1S=6US<WLB)&-H_<EQT)&%S(GU[)&5E?3L*("`@("`@("`@("`@("`@(`E]"@D)"0D)9F]R96%C:"!M>2`D<W,H:V5Y<R`E>R`D_<W5M965[(B1C:')<="1A92)]('TI>PH@("`@("`@("`@("`@("`@"0EN97AT(&EF*"1S<R`\("1A<R`F)B`D_='EP92!E<2`B4B(I.PH@("`@("`@("`@("`@("`@"0DD<W5M964K/2`D<W5M965[(B1C:')<="1A92)]>R1S_<WT["B`@("`@("`@("`@("`@("`)?0H@("`@("`@("`@("`@("`@"6EF*"1T>7!E(&5Q(")3(BE["B`@("`@_("`@("`@("`@("`)"6EF*"1I,7,@/3T@)&DQ92E["B`@("`@("`@("`@("`@("`)"0DD97@Q(#T@)'-U;7-S_.PH@("`@("`@("`@("`@("`@"0D):68H)'-U;65E(#X@,"E["B`@("`@("`@("`@("`@("`)"0D))'1R=65!_4U-[)&YA;65]*RL["B`@("`@("`@("`@("`@("`)"0E]"B`@("`@("`@("`@("`@("`)"7T*("`@("`@("`@_("`@("`@(`D):68H)&DR<R`]/2`D:3)E*7L*("`@("`@("`@("`@("`@(`D)"21E>#$@/2`D<W5M964["B`@_("`@("`@("`@("`@("`)"0EI9B@D<W5M<W,@/B`P*7L*("`@("`@("`@("`@("`@(`D)"0DD=')U94%34WLD_;F%M97TK*SL*("`@("`@("`@("`@("`@(`D)"7T*("`@("`@("`@("`@("`@(`D)?0H@("`@("`@("`@("`@_("`@"7T*("`@("`@("`@("`@("`@(`EI9B@D='EP92!E<2`B4B(I>PH@("`@("`@("`@("`)"0DD97@Q(#T@_)'-U;7-S(&EF*"1S=6US<R`^/2`D<W5M964I.PH@("`@("`@("`@("`)"0DD97@Q(#T@)'-U;65E(&EF*"1S_=6US<R`\("1S=6UE92D["B`@("`@("`@("`@("`@("`)"6YE>'0@:68H)'-U;7-S(#X@*"1S=6UE92HR*2!\_?"`D<W5M964@/B`H)'-U;7-S*C(I*3L*("`@("`@("`@("`@("`@(`E]"B`@("`@("`@("`@("`@("!]"B`@_("`@("`@("`@("`@("`*("`@("`@("`@("`@("`@(&EF*"1T>7!E(&5Q(")2(B`F)B`D:7)C:&5C:R`]/2`Q_*7L*("`@("`@("`@("`@("`@(`EI9B@A)&EN=')O;FEC<F5A9'LB)&-H<EQT)&DR<UQT)&DR92)]*7L*("`@_("`@("`@("`@("`@(`D))&EN,2`](#`["B`@("`@("`@("`@("`@("`)"21I;C(@/2`D:6XQ.PH@("`@("`@_("`@("`@("`@"7UE;'-E>PH@("`@("`@("`@("`@("`@"0DD:6XQ(#T@)&EN=')O;FEC<F5A9'LB)&-H<EQT_)&DR<UQT)&DR92)].PH@("`@("`@("`@("`@("`@"0DD:6XR(#T@)&EN,3L*("`@("`@("`@("`@("`@(`E]_"B`@("`@("`@("`@("`@("!]"@H@("`@("`@("`@("`@("`@)'1A<F=E=&5X;VX@/2`B)&-H<EPZ)'1E<UPM_)'1E92(["B`@("`@("`@("`@("`@("`*("`@("`@("`@("`)"6EF*"1T>7!E(&5Q(")2(BE["B`@("`@("`@_("`@(`D))&5X,2`]("1I;C$K)&5X,3L*("`@("`@("`@("`@("`@(`EN97AT(&EF*"1S=6US<R`]/2`P('Q\_("1S=6UE92`]/2`P*3L*("`@("`@("`@("`@("`@('T*("`@("`@("`@("`@("`@(`H)"0D);F5X="!I9B@D_97@Q(#P@)&-R:71E<FEA*3L*"B`@("`@("`@("`@("`@("`D97AS>R1C:')]>R(D87-<="1A92)]("L]("1E_>#$["B`@("`@("`@("`@("`@("!M>2`D4%-)(#T@*"@D:6XQ*R1I;C(I+S(I+R1E>#$["B`@("`@("`@("`@_(`H@("`@("`@("`@("`@("`@)%!322`](#$@:68H)%!322`^(#$I.PH@("`@("`@("`@("`@("`@)%!322`]_("TQ(&EF("@D4%-)(#T](#`I.PH@("`@("`@("`@("`@("`@)&]U='!U='LB)&%C8V5S<VEO;B(@+B`B7R(@_+B`B)&-A=%QT)&YA;64B?2`]("104TD["B`@("`@("`@("`@("`@("`D;F%M97-[(B1N86UE7'0D=&%R9V5T_97AO;EQT)&DQ<RPD:3%E+"1I,G,L)&DR95QT)&%N;F\B?2LK.PH*("`@("`@("!]"B`@("!]"@H);7D@*"1N_<BPD;F,I(#T@*'-C86QA<B!K97ES("5S86UP;&5S+"!S8V%L87(@:V5Y<R`E;F%M97,I.PH)<')I;G0@(DYU_;6)E<B!O9B!E=F5N=',@/2`D;F-<;B(["@EP<FEN="`B3G5M8F5R(&]F('-A;7!L97,@/2`D;G)<;B(["@EI_9B@D<&%I<F5D(#T](#`I>PH)"7!R:6YT(")3=&%T:7-T:6-S(&]P=&EO;B`](%1W;R!S86UP;&4@="UT97-T_7&XB.PH)?0H):68H)'!A:7)E9"`]/2`R*7L*"0EP<FEN="`B4W1A=&ES=&EC<R!O<'1I;VX@/2!.;W0@96YO_=6=H('-A;7!L97,@9F]R('0M=&5S=%QN(CL*"7T*"0H);7D@)7!V86QU97,["@EM>2`E9FEN86P["@H):68H_)'!R:6YT9V-T(#T](#$I>PH)"6]P96XH1T-4+"`B/B1O=71P=71A<W-C8V5S<VEO;BYG8W0B*2!\?"!D:64@_(D%B;W)T:6YG+BX@0V%N)W0@;W!E;B`D;W5T<'5T87-S8V-E<W-I;VXN9V-T7&XB.PH)"6UY("1N=&5V96YT_(#T@<V-A;&%R(&ME>7,@)71E=F5N=#L*"0EP<FEN="!'0U0@(B,Q+C)<;B(["@D)<')I;G0@1T-4("(D;G1E_=F5N=%QT)&YR7&XB.PH)"7!R:6YT($=#5"`B179E;G0@241<=$%N;F]T871I;VXB.PH)"69O<F5A8V@@;7D@_)'-A;7!L92A`9W)O=7!S*7L*"0D)<')I;G0@1T-4(")<="(@+B`D<V%M<&QE.PH)"7T*"0EP<FEN="!'0U0@_(EQN(CL*"7T*"69O<F5A8V@@;7D@)&5V96YT*&ME>7,@)6YA;65S*7L*"0EN97AT(&EF*"1E=F5N="!E<2`B_(BD["@D)"@D);7D@*"1N86UE+"1T87)G971E>&]N+"1W:6YG<RPD86YN;RD@/2!S<&QI="@O7'0O+"1E=F5N_="D["@D))&YA;64]?G,O*"XJ*5QS8VAR+V-H<B\["@D):68H(21S:VEP>R1N86UE?2E["@D)?65L<V5["@D)_"6YE>'0@:68H)'-K:7![)&YA;65](#T]("1N<BD["@D)?0H)"6UY($!N.PH)"6UY($!T.PH)"6UY("@D;BPD_="D["@D);7D@)6X["@D);7D@)70["@D);7D@)6=C=&X["@D);7D@)6=C='0["@D)9F]R96%C:"!M>2`D<V%M_<&QE86-C*&ME>7,@)7-A;7!L97,I>PH)"0EM>2`H)&-A="PD<V%M<&QE*2`]('-P;&ET*"]<="\L)'-A;7!L_96%C8RD["@D)"6YE>'0@:68H)'-A;7!L92!E<2`B(BD["@D)"6EF*"1C870@97$@(DXB*7L*"0D):68H(21O_=71P=71[(B1S86UP;&4B("X@(E].(B`N(")<="1N86UE(GTI>PH)"0D))&=C=&Y[)'-A;7!L97T@/2`B+2([_"@D)"7UE;'-E>PH)"0D);7D@)'9A;'5E(#T@)&]U='!U='LD<V%M<&QE("X@(E].(B`N(")<="1N86UE(GTJ_,3`P.PH)"0D))&=C=&Y[)'-A;7!L97T@/2`D=F%L=64["@D)"0DD=F%L=64@/2`P(&EF*"1V86QU92`]/2`M_,3`P*3L*"0D)"7!U<V@H0&XL)'9A;'5E*3L*"0D)"6EF*"1S:&]W:60@/3T@,2E["@D)"0D))&XN/2(L*"(@_+B`D<V%M<&QE<WLB3EQT)'-A;7!L92)]("X@(BDB+B1V86QU93L*"0D)"7UE;'-E>PH)"0D)"21N+CTB+"`B_+B1V86QU93L*"0D)"7T*"0D)"21N>R1V86QU97TK*SL*"0D)?0H)"0E]"@D)"6EF*"1C870@97$@(E0B*7L*_"0D):68H(21O=71P=71[(B1S86UP;&4B("X@(E]4(B`N(")<="1N86UE(GTI>PH)"0D))&=C='1[)'-A;7!L_97T@/2`B+2(["@D)"7UE;'-E>PH)"0D);7D@)'9A;'5E(#T@)&]U='!U='LD<V%M<&QE("X@(E]4(B`N(")<_="1N86UE(GTJ,3`P.PH)"0D))&=C='1[)'-A;7!L97T@/2`D=F%L=64["@D)"0DD=F%L=64@/2`P(&EF*"1V_86QU92`]/2`M,3`P*3L*"0D)"7!U<V@H0'0L)'9A;'5E*3L*"0D)"6EF*"1S:&]W:60@/3T@,2E["@D)"0D)_)'0N/2(L*"(@+B`D<V%M<&QE<WLB5%QT)'-A;7!L92)]("X@(BDB+B1V86QU93L*"0D)"7UE;'-E>PH)"0D)_"21T+CTB+"`B+B1V86QU93L*"0D)"7T*"0D)"21T>R1V86QU97TK*SL*"0D)?0H)"0E]"@D)?0H)"6UY("@D_;G5M7VXL)&YU;5]T*2`]("AS8V%L87(@:V5Y<R`E;BP@<V-A;&%R(&ME>7,@)70I.PH)"0H)"6UY("@D=&UP_9VXL)'1M<&YA;64I(#T@<W!L:70H+UPZ+RPD;F%M92D["@D):68H(21T979E;G1[)'1M<&YA;65]*7L*"0E]_96QS97L*"0D):68H)'!R:6YT9V-T(#T](#$I>PH)"0D)<')I;G0@1T-4("1T;7!N86UE("X@(EQT(B`N("1T_;7!G;CL*"0D)"69O<F5A8V@@;7D@)'-A;7!L92A`9W)O=7!S*7L*"0D)"0EI9B@A)&=C=&Y[)'-A;7!L97TI_>PH)"0D)"7UE;'-E>PH)"0D)"0EI9B@D9V-T;GLD<V%M<&QE?2`]/2`M,3`P*7L*"0D)"0D)"7!R:6YT($=#_5"`B7'0B("X@(C`B.PH)"0D)"0E]96QS97L*"0D)"0D)"7!R:6YT($=#5"`B7'0B("X@)&=C=&Y[)'-A;7!L_97T["@D)"0D)"7T*"0D)"0D);F5X=#L*"0D)"0E]"@D)"0D):68H(21G8W1T>R1S86UP;&5]*7L*"0D)"0E]_96QS97L*"0D)"0D):68H)&=C='1[)'-A;7!L97T@/3T@+3$P,"E["@D)"0D)"0EP<FEN="!'0U0@(EQT(B`N_("(P(CL*"0D)"0D)?65L<V5["@D)"0D)"0EP<FEN="!'0U0@(EQT(B`N("1G8W1T>R1S86UP;&5].PH)"0D)_"0E]"@D)"0D)?0H)"0D)?0H)"0D)<')I;G0@1T-4(")<;B(["@D)"7T*"0E]"@D)"@D):68H)'!A:7)E9"`\_/2`Q*7L*"0D);F5X="!I9B@D;G5M7VX@/3T@,2!\?"`D;G5M7W0@/3T@,2D["@D)?0H)"@D);F5X="!I9B@A_)&X@?'P@(21T*3L*"0D*"0EI9B@D<&%I<F5D(#P](#$I>PH)"0EN97AT(&EF*'-C86QA<B!`;B`\(#(@?'P@_<V-A;&%R($!T(#P@,BD["@D)?0H)"6UY("1S(#T@<V-A;&%R($!N.PH)"0H)"6UY("@D<'9A;'5E+"1D:69F_*2`]("@Q+"TQ*3L*"0D*"0EI9B@D<&%I<F5D(#T](#`I>PH)"0DH)'!V86QU92PD9&EF9BD@/2!U;G!A:7)E_9'1T97-T*%Q`;BQ<0'0I.PH)"0DD<R`]('-C86QA<B!`;B`N(")<="(@+B!S8V%L87(@0'0["@D)?0H)"6EF_*"1P86ER960@/3T@,BE["@D)"6UY("@D879G;BPD879G="D@/2`H879E<F%G92A<0&XI+&%V97)A9V4H7$!T_*2D["@D)"21D:69F(#T@)&%V9W0@+2`D879G;CL*"0D))',@/2!S8V%L87(@0&X@+B`B7'0B("X@<V-A;&%R_($!T.PH)"7T*"@H)"21E=F5N=#U^<R]<+"`O7%\O9SL*"0DD;CU^<R]<+"`O+SL*"0DD=#U^<R]<+"`O+SL*_"@D):68H)&YA;64]?B]<7U=<7R\I>PH)"0DD9FEN86Q[)'1A<F=E=&5X;VX@+B`B7'0B("X@)'=I;F=S("X@_(EQT5R)]("X](")\(B`N("(D;F%M95QT)'=I;F=S7'0D86YN;UQT)'-<="1D:69F7'0D<'9A;'5E7'0D;EQT_)'0B.PH)"0DD<'9A;'5E<WLB)&YA;64L)'1A<F=E=&5X;VXL)'=I;F=S+"1A;FYO+%<B?2`]("1P=F%L=64[_"@D)?0H)"6EF*"1N86UE/7XO7%]27%\O*7L*"0D))&9I;F%L>R1T87)G971E>&]N("X@(EQT(B`N("1W:6YG_<R`N(EQT4B)]("X](")\(B`N("(D;F%M95QT)'=I;F=S7'0D86YN;UQT)'-<="1D:69F7'0D<'9A;'5E7'0D_;EQT)'0B.PH)"0DD<'9A;'5E<WLB)&YA;64L)'1A<F=E=&5X;VXL)'=I;F=S+"1A;FYO+%(B?2`]("1P=F%L_=64["@D)?0H)"6EF*"1N86UE/7XO7%]37%\O*7L*"0D))&9I;F%L>R1T87)G971E>&]N("X@(EQT(B`N("1W_:6YG<R`N(EQT4R)]("X](")\(B`N("(D;F%M95QT)'=I;F=S7'0D86YN;UQT)'-<="1D:69F7'0D<'9A;'5E_7'0D;EQT)'0B.PH)"0DD<'9A;'5E<WLB)&YA;64L)'1A<F=E=&5X;VXL)'=I;F=S+"1A;FYO+%,B?2`]("1P_=F%L=64["@D)?0H)?0H):68H)'!R:6YT9V-T(#T](#$I>PH)"6-L;W-E*$=#5"D["@E]"@EM>2`D=&]T86QP_(#T@<V-A;&%R(&ME>7,@)7!V86QU97,["@EP<FEN="`B;G5M8F5R(&]F('`M=F%L=64@/2`D=&]T86QP7&XB_.PH)"@EM>2!`<'9A;'5E.PH)9F]R96%C:"!M>2`D979E;G0H<V]R="!K97ES("5P=F%L=65S*7L*"0EN97AT_(&EF*"1E=F5N="!E<2`B(BD["@D)<'5S:"A`<'9A;'5E+"1P=F%L=65S>R1E=F5N='TI.PH)?0H)"@EM>2!`_9FEN86QO=71P=70["@EM>2!`9FEN86QP=F%L=64["@D*"6]P96XH3U54+"`B/B1O=71P=71A<W-C8V5S<VEO_;BYT>'0B*2!\?"!D:64@(D%B;W)T:6YG+BX@0V%N)W0@;W!E;B`D;W5T<'5T87-S8V-E<W-I;VXN='AT7&XB_.PH)<')I;G0@3U54(")%=F5N="!)1%QT1V5N92!3>6UB;VQ<=%1A<F=E="!%>&]N7'1%=F5N="!4>7!E7'1._7'147'1%>&]N(%1Y<&5<=%)E9F5R96YC92!4<F%N<V-R:7!T7'3.E%!322`H)2E<="(@+B`B5"UT97-T('`M_=F%L=64B("X@(EQT(B`N(")&1%(@*$)(*2(@+B`B7'0B("X@(DX@5F%L=65S7'14(%9A;'5E<UQN(CL*"69O_<F5A8V@@;7D@)'1A9RAS;W)T(&ME>7,@)69I;F%L*7L*"0EN97AT(&EF*"$D9FEN86Q[)'1A9WTI.PH)"6UY_("@D=&%R9V5T97AO;BPD=&%R9V5T=VEN9W,L)&-A="D@/2!S<&QI="@O7'0O+"1T86<I.PH)"6UY($!A<G)A_>2`]('-P;&ET*"]<?"\L)&9I;F%L>R1T86=]*3L*"0EM>2`D;6EN9&ES="`](#`["@D);7D@)&UI;FED(#T@_,#L*"0EM>2`D;6%X9&EF9B`](#`["@D);7D@)&UI;G`@/2`Q.PH)"6UY("1M87AI9"`](#`["@D);7D@)&=N_(#T@(BTB.PH)"6UY("1M>&4@/2`P.PH)"6EF*"1C870@97$@(E(B*7L*"0D))&UA>&ED(#T@,3L*"0E]"@D)_:68H<V-A;&%R($!A<G)A>2`^(#(I>PH)"69O<BAM>2`D:2`](#$[)&D@/"!S8V%L87(@0&%R<F%Y.R1I*RLI_>PH)"0EM>2`H)&YA;64L)'=I;F=S+"1A;FYO+"1C;BPD8W0L)&1I9F8L)'!V86QU92PD;BPD="D@/2!S<&QI_="@O7'0O+"1A<G)A>5LD:5TI.PH)"0EI9B@D8V%T(&5Q(")3(BE["@D)"0EN97AT(&EF*"$D=')U94%34WLD_;F%M97TI.PH)"0D);7D@)'1R=65!4U-C<FET97)I82`]("@D;G(J,"XR-2D["@D)"0DD=')U94%34V-R:71E_<FEA(#T@,2!I9B@D=')U94%34V-R:71E<FEA(#P@,2D["@D)"0EN97AT(&EF*"1T<G5E05-3>R1N86UE?2`\_/2`D=')U94%34V-R:71E<FEA*3L*"0D)?0H)"0EN97AT(&EF*"1W:6YG<R!N92`D=&%R9V5T=VEN9W,I.PH*_"0D);7D@*"1G>&XL)')E<W0I(#T@<W!L:70H+UPZ+RPD;F%M92D["@D)"6UY($!W:6YG;&]C(#T@<W!L:70H_+UPL+RPD=VEN9W,I.PH)"0DD9VX@/2`D9WAN.PH)"0EM>2`H)&-H<BPD<W1A<G0L)&5N9"PD='EP92PD<F5F_+"1E:60I(#T@<W!L:70H+UQ?+RPD<F5S="D["@D)"21N86UE/7YS+UPZ+UQT+SL*"0D))&-H<CU^<R]C:'(O_+R!I9B@D8VAR/7XO8VAR+RD["@D)"0H)"0EN97AT(&EF*"$D:6YT<F]N86QL>R1C:')]>R(D<W1A<G1<="1E_;F0B?2`F)B`D='EP92!E<2`B4B(I.PH)"0EM>2`D:6-O=6YT(#T@,#L*"@D)"6UY("@D:7-U;7-S+"1I<W5M_964I(#T@*#`L,"D["@D)"6EF*"$D:7-A;&Q[)&-H<GU[)'=I;F=L;V-;,%U]>R1W:6YG;&]C6S%=?2E["@D)_"7UE;'-E>PH)"0D)9F]R96%C:"!M>2`D:7-A;&QE;F0H:V5Y<R`E>R`D:7-A;&Q[)&-H<GU[*"1S=&%R="E]_('TI>PH)"0D)"6EF*"$D:7-A;&Q[)&-H<GU[)'-T87)T?7LD:7-A;&QE;F1]*7L*"0D)"0D);F5X=#L*"0D)_"0D)<')I;G0@(BAI<V%L;"D@)&-H<CHD<W1A<G0M)&5N9"!H87,@>F5R;R!V86QU92Y<;B(["@D)"0D)"65X_:70["@D)"0D)?0H)"0D)"6YE>'0@:68H)&ES86QL96YD(#X@)&5N9"D["@D)"0D))&ES=6US<R`K/2`D:7-A_;&Q[)&-H<GU[)'-T87)T?7LD:7-A;&QE;F1].PH)"0D)?0H)"0D))&ES=6US<RTM.PH)"0E]"@D)"6EF*"$D_:65A;&Q[)&-H<GU[)'=I;F=L;V-;,UU]>R1W:6YG;&]C6S)=?2E["@D)"7UE;'-E>PH)"0D)9F]R96%C:"!M_>2`D:7-A;&QS=&%R="AK97ES("5[("1I96%L;'LD8VAR?7LD96YD?2!]*7L*"0D)"0EI9B@A)&EE86QL>R1C_:')]>R1E;F1]>R1I<V%L;'-T87)T?2E["@D)"0D)"6YE>'0["@D)"0D)"7!R:6YT("(H:65A;&PI("1C:'(Z_)'-T87)T+21E;F0@:&%S('IE<F\@=F%L=64N7&XB.PH)"0D)"0EE>&ET.PH)"0D)"7T*"0D)"0EN97AT(&EF_*"1I<V%L;'-T87)T(#P@)'-T87)T*3L*"0D)"0DD:7-U;65E("L]("1I96%L;'LD8VAR?7LD96YD?7LD:7-A_;&QS=&%R='T["@D)"0E]"@D)"0DD:7-U;65E+2T["@D)"7T*"0D)"@D)"6YE>'0@:68H)&ES=6US<R`\/2`P_("8F("1I<W5M964@/#T@,"D["@H@("`@("`@("`@("`D:6-O=6YT(#T@*"1I<W5M<W,K)&ES=6UE92DO,CL*_"B`@("`@("`@("`@(&EF*"$D:6YT<F]N86QL>R1C:')]>R(D<W1A<G1<="1E;F0B?2E["B`@("`@("`@("`@_('UE;'-E>PH@("`@("`@("`@("`))&EC;W5N="`K/2`D:6YT<F]N86QL>R1C:')]>R(D<W1A<G1<="1E;F0B_?3L*("`@("`@("`@("`@?0H@("`@("`@("`@("`*"0D):68H)&EC;W5N="`^/2`D;6%X9&EF9B!\?"`D;6%X_9&EF9B`]/2`P*7L*"0D)"21M:6YD:7-T(#T@*"@D96YD("T@)'-T87)T*2`K(#$I(&EF*"1M:6YD:7-T(#T]_(#`I.PH)"0D))&UA>&1I9F8@/2`D:6-O=6YT.PH)"0D))&UA>&ED(#T@)&D["@D)"0DD;6EN9&ES="`]("@D_96YD("T@)'-T87)T*2`K(#$["@D)"7T*"@D)?0H)"7T*"0D*"0EI9BAS8V%L87(@0&%R<F%Y(#T](#(I>PH)_"0DD;6%X:60@/2`Q.PH)"7T*("`@("`@("`@"@D);F5X="!I9B@D;6%X:60@/3T@,"`F)B`D8V%T(&YE(")2_(BD["@D);7D@*"1N86UE+"1W:6YG<RPD86YN;RPD8VXL)&-T+"1D:69F+"1P=F%L=64L)&XL)'0I(#T@<W!L_:70H+UQT+RPD87)R87E;)&UA>&ED72D["@D);7D@*"1G>&XL)')E<W0I(#T@<W!L:70H+UPZ+RPD;F%M92D[_"@H)"6UY("@D8VAR+"1S=&%R="PD96YD+"1T>7!E+"1R968L)&5I9"D@/2!S<&QI="@O7%\O+"1R97-T*3L*_"0DD8VAR/7YS+V-H<B\O(&EF*"1C:'(]?B]C:'(O*3L*"@D):68H)&YA;64]?B]N;W9E;&5X;VXO*7L*"0D)_;7D@)'1M<&5X;VX@/2`D=&%R9V5T97AO;CL*"0D))'1M<&5X;VX]?G,O7"TO7#HO.PH)"0EM>2`H)&5C:'(L_)&5S+"1E92D@/2!S<&QI="@O7#HO+"1T;7!E>&]N*3L*"0D);7D@)&9O=6YD(#T@,#L*"0D)9F]R96%C:"!M_>2`D:6QO8RAK97ES("5[("1I;G1R;VYA;&Q[)&-H<GT@?2E["@D)"0EM>2`H)&ES=&%R="PD:65N9"D@/2!S_<&QI="@O7'0O+"1I;&]C*3L*"0D)"6EF*"1I<W1A<G0@/"`D97,@)B8@)&EE;F0@/"`D964I>PH)"0D)"21F_;W5N9"`](#$["@D)"0D);&%S=#L*"0D)"7T*"0D)"6EF*"1I<W1A<G0@/B`D97,@)B8@)&EE;F0@/"`D964I_>PH)"0D)"21F;W5N9"`](#$["@D)"0D);&%S=#L*"0D)"7T*"0D)?0H)"0EN97AT(&EF*"1F;W5N9"`]/2`Q_*3L*"0E]"@H)"6UY("@D;W)G86XL)$5.4U0I(#T@*"(B+"(B*3L*"0EI9B@D;F%M93U^+UQ?14XH7'<K*50H_7&0K*5Q?+RE["B`@("`@("`@"2@D;W)G86XL)$5.4U0I(#T@*"0Q+"0R*2!I9B@D;F%M93U^+UQ?14XH7'<K_*50H7&0K*5Q?+RD["B`@("`@("`@"21%3E-4(#T@(D5.(B`N("1O<F=A;B`N(")4(B`N("1%3E-4.PH@("`@_("`@('T*("`@("`@("!I9B@D;F%M93U^+UQ?4C%<+B\@?'P@)&YA;64]?B]<7U(R7"XO*7L*("`@("`@("`)_;7D@)'1M<&YA;64@/2`D;F%M93L*("`@("`@("`))'1M<&YA;64]?G,O*"XJ*5Q?4C%<+B]2,5PN+SL*("`@_("`@("`))'1M<&YA;64]?G,O*"XJ*5Q?4C)<+B]2,EPN+SL*("`@("`@("`))'1M<&YA;64]?G,O7%\H+BHI_+R\["B`@("`@("`@"2@D;W)G86XL)$5.4U0I(#T@*")3>6YT:&5T:6,B+"1T;7!N86UE*3L*("`@("`@("!]_"B`@("`@("`@:68H)$5.4U0@97$@(B(I>PH@("`@("`@(`EM>2!`<F5S="`]('-P;&ET*"]<7R\L)')E<W0I_.PH@("`@("`@(`DD14Y35"`]("1R97-T6S1=.PH@("`@("`@('T*("`@("`@("`*"0DD;F%M93U^<R]<.B]<_="\["@D)<'5S:"A`9FEN86QP=F%L=64L)'!V86QU92D["@D)<'5S:"A`9FEN86QO=71P=70L(B1R97-T7'0D_9WAN7'0D14Y35%QT)&-A=%QT)'1A<F=E=&5X;VY<="1C;EQT)&-T7'0D86YN;UQT)&1I9F9<="1P=F%L=65<_="1N7'0D="(I.PH)?0H)"@EP<FEN="`B3G5M8F5R(&]F(&9I;F%L('`M=F%L=64@/2`B("X@<V-A;&%R($!F_:6YA;'!V86QU92`N(")<;B(["@EP<FEN="`B1&]I;F<@861J=7-T('`M=F%L=65S+BXN7&XB.PH)"@EM>2`D_9F1R.PH);7D@0&9D<CL*"6EF*"1P86ER960@/3T@,BE["@D)0&9D<B`]($!F:6YA;'!V86QU93L*"7UE;'-E_>PH)"6EF*"1C:&5C:V9D<B`]/2`Q*7L*"0D))&9D<B`]($)(*%Q`9FEN86QP=F%L=64I.PH)"0E`9F1R(#T@_0"1F9'(["@D)?65L<V5["@D)"4!F9'(@/2!`9FEN86QP=F%L=64["@D)?0H)?0H*"7!R:6YT(")N=6UB97(@_;V8@9F1R*$)(*2`]("(@+B!S8V%L87(@0&9D<B`N(")<;B(["@EM>2`D861J<'1E;7!C;W5N="`](#`["@EF_;W(H;7D@)&D@/2`P.R1I(#P@<V-A;&%R($!F:6YA;&]U='!U=#LD:2LK*7L*"0EM>2`H)&5V96YT+"1G>&XL_)$5.4U0L)&-A="PD=&%R9V5T97AO;BPD8VXL)&-T+"1A;FYO+"1D:69F+"1P=F%L=64L)&YV86QU92PD='9A_;'5E*2`]('-P;&ET*"]<="\L)&9I;F%L;W5T<'5T6R1I72D["@D);7D@)&9I;F%L;W5T<'5T(#T@(B1E=F5N_=%QT)&=X;EQT)'1A<F=E=&5X;VY<="1C871<="1C;EQT)&-T7'0D86YN;UQT)$5.4U0B.PH)"7!R:6YT9B!/_550@)&9I;F%L;W5T<'5T("X@(EQT)2XR9EQT)2XU95QT)2XU95QT)&YV86QU95QT)'1V86QU95QN(BP@)&1I_9F8L)'!V86QU92PD9F1R6R1I73L*"7T*"6-L;W-E*$]55"D["@IS=6(@=6YP86ER961T=&5S='L*"@D);7D@_*"1N+"1T*2`]($!?.PH)"6UY($!N(#T@0"1N.PH)"6UY($!T(#T@0"1T.PH)"6UY("1N;B`]('!D;"A`;BD[_"@D);7D@)'1T(#T@<&1L*$!T*3L*"0EM>2`H)'1S=&%T<RP@)&1F*2`]('1?=&5S="@@)&YN+"`D='0@*3L*_"0EU<V4@4$1,.CI'4TPZ.D-$1CL@"@D);7D@)'!?,G1A:6P@/2`R("H@9W-L7V-D9E]T9&ES=%]1*"`D='-T_871S+3YA8G,L("1D9BD["@D);7D@*"1A=F=N+"1A=F=T*2`]("AA=F5R86=E>"@D;BDL879E<F%G97@H)'0I_*3L*"0EM>2`D9&EF9B`]("1A=F=T("T@)&%V9VX["@D)<F5T=7)N("1P7S)T86EL+"1D:69F.PI]"B`@("`@_"@IS=6(@<W1D979["B`@("`@("`@;7DH)&1A=&$I(#T@0%\["B`@("`@("`@:68H0"1D871A(#T](#$I>PH@_("`@("`@("`@("`@("`@<F5T=7)N(#`["B`@("`@("`@?0H@("`@("`@(&UY("1A=F5R86=E(#T@)F%V97)A_9V4H)&1A=&$I.PH@("`@("`@(&UY("1S<71O=&%L(#T@,#L*("`@("`@("!F;W)E86-H*$`D9&%T82D@>PH@_("`@("`@("`@("`@("`@)'-Q=&]T86P@*ST@*"1A=F5R86=E+21?*2`J*B`R.PH@("`@("`@('T*("`@("`@_("!M>2`D<W1D(#T@*"1S<71O=&%L("\@*$`D9&%T82TQ*2D@*BH@,"XU.PH@("`@("`@(')E='5R;B`D<W1D_.PI]"@IS=6(@879E<F%G97A["B`@("`@("`@;7DH)&1A=&$I(#T@0%\["B`@("`@("`@:68@*&YO="!`)&1A_=&$I('L*("`@("`@("`@("`@("`@(&1I92@B16UP='D@87)R87E<;B(I.PH@("`@("`@('T*("`@("`@("!M_>2`D=&]T86P@/2`P.PH@("`@("`@(&9O<F5A8V@@*$`D9&%T82D@>PH@("`@("`@("`@("`@("`@)'1O=&%L_("L]("1?.PH@("`@("`@('T*("`@("`@("!M>2`D879E<F%G92`]("1T;W1A;"`O($`D9&%T83L*("`@("`@4("!R971U<FX@)&%V97)A9V4["GT}
