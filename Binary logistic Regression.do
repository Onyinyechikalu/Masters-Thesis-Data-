.  reg Cutting_Uprooting_Trees i.Gender  cost_management ib1.Infestation i.New_Effectiveness occup_liv occup_forest occup_nonfarm 
> ib3.Perception age_hh_wave1 lnd_size_access  hh_size_wave1 crop_produce 

      Source |       SS           df       MS      Number of obs   =       536
-------------+----------------------------------   F(15, 520)      =      1.45
       Model |  4.28437834        15  .285625223   Prob > F        =    0.1193
    Residual |  102.400323       520  .196923698   R-squared       =    0.0402
-------------+----------------------------------   Adj R-squared   =    0.0125
       Total |  106.684701       535  .199410657   Root MSE        =    .44376

-------------------------------------------------------------------------------------
Cutting_Uprooting~s |      Coef.   Std. Err.      t    P>|t|     [95% Conf. Interval]
--------------------+----------------------------------------------------------------
           1.Gender |  -.0344591   .0449012    -0.77   0.443     -.122669    .0537509
    cost_management |   2.66e-06   1.36e-06     1.96   0.051    -8.92e-09    5.32e-06
                    |
        Infestation |
                 2  |   .0249865   .0941166     0.27   0.791     -.159909    .2098819
                 3  |  -.0336379   .0923555    -0.36   0.716    -.2150737    .1477978
                 4  |   -.004127   .0800876    -0.05   0.959     -.161462    .1532081
                    |
2.New_Effectiveness |  -.1526289   .0397992    -3.83   0.000     -.230816   -.0744418
          occup_liv |   .0218173   .0492863     0.44   0.658    -.0750073     .118642
       occup_forest |   .0547261   .0454209     1.20   0.229    -.0345049    .1439571
      occup_nonfarm |    .001901   .0406829     0.05   0.963     -.078022     .081824
                    |
         Perception |
                 1  |  -.0063829   .0645079    -0.10   0.921     -.133111    .1203452
                 2  |  -.0235839   .0452572    -0.52   0.603    -.1124933    .0653256
                    |
       age_hh_wave1 |  -.0011939   .0013252    -0.90   0.368    -.0037972    .0014095
    lnd_size_access |  -.0011994   .0053841    -0.22   0.824    -.0117768    .0093779
      hh_size_wave1 |  -.0000418   .0071274    -0.01   0.995    -.0140437    .0139602
       crop_produce |  -.0064247    .044019    -0.15   0.884    -.0929016    .0800523
              _cons |   .8242954   .1288204     6.40   0.000      .571223    1.077368
-------------------------------------------------------------------------------------

. 
. 
. vif

    Variable |       VIF       1/VIF  
-------------+----------------------
    1.Gender |      1.06    0.944332
cost_manag~t |      1.04    0.963670
 Infestation |
          2  |      2.64    0.379213
          3  |      2.73    0.366128
          4  |      3.83    0.261261
2.New_Effe~s |      1.05    0.955939
   occup_liv |      1.16    0.865322
occup_forest |      1.21    0.827550
occup_nonf~m |      1.10    0.905165
  Perception |
          1  |      1.32    0.759253
          2  |      1.35    0.741271
age_hh_wave1 |      1.18    0.846725
lnd_size_a~s |      1.13    0.885445
hh_size_wa~1 |      1.11    0.898390
crop_produce |      1.24    0.805828
-------------+----------------------
    Mean VIF |      1.54

. replace New_Effectiveness=0 if New_Effectiveness==2
(222 real changes made)

. save "C:\Users\Admin\Downloads\New MVprobit Data.dta", replace
file C:\Users\Admin\Downloads\New MVprobit Data.dta saved

. logit Cutting_Uprooting_Trees i.Gender  cost_management ib1.Infestation i.New_Effectiveness occup_liv occup_forest occup_nonfarm
>  ib3.Perception age_hh_wave1 lnd_size_access  hh_size_wave1 crop_produce 

Iteration 0:   log likelihood = -314.86996  
Iteration 1:   log likelihood = -303.97884  
Iteration 2:   log likelihood = -303.71605  
Iteration 3:   log likelihood = -303.71521  
Iteration 4:   log likelihood = -303.71521  

Logistic regression                             Number of obs     =        536
                                                LR chi2(15)       =      22.31
                                                Prob > chi2       =     0.0999
Log likelihood = -303.71521                     Pseudo R2         =     0.0354

-----------------------------------------------------------------------------------------
Cutting_Uprooting_Trees |      Coef.   Std. Err.      z    P>|z|     [95% Conf. Interval]
------------------------+----------------------------------------------------------------
               1.Gender |  -.1782111   .2355521    -0.76   0.449    -.6398848    .2834626
        cost_management |   .0000186   9.75e-06     1.91   0.056    -4.94e-07    .0000377
                        |
            Infestation |
                     2  |   .1559762   .4945626     0.32   0.752    -.8133486    1.125301
                     3  |  -.1731527   .4767573    -0.36   0.716     -1.10758    .7612744
                     4  |  -.0194034   .4158884    -0.05   0.963    -.8345297    .7957228
                        |
    1.New_Effectiveness |   .7789205   .2026378     3.84   0.000     .3817577    1.176083
              occup_liv |   .0979243   .2514271     0.39   0.697    -.3948637    .5907124
           occup_forest |   .2794099   .2283012     1.22   0.221    -.1680523     .726872
          occup_nonfarm |   .0196411   .2097584     0.09   0.925    -.3914779      .43076
                        |
             Perception |
                     1  |  -.0157499   .3410631    -0.05   0.963    -.6842212    .6527214
                     2  |  -.1150729   .2349835    -0.49   0.624     -.575632    .3454863
                        |
           age_hh_wave1 |  -.0062593   .0067422    -0.93   0.353    -.0194737    .0069551
        lnd_size_access |  -.0061427   .0266444    -0.23   0.818    -.0583647    .0460793
          hh_size_wave1 |  -.0016042   .0365179    -0.04   0.965     -.073178    .0699697
           crop_produce |  -.0267519   .2246307    -0.12   0.905      -.46702    .4135163
                  _cons |   .7303564   .6630538     1.10   0.271    -.5692052    2.029918
-----------------------------------------------------------------------------------------

. logit Cutting_Uprooting_Trees i.Gender  cost_management ib1.Infestation i.New_Effectiveness occup_liv occup_forest occup_nonfarm
>  ib3.Perception age_hh_wave1 lnd_size_access  hh_size_wave1 crop_produce ib3.Control_Frequency 

Iteration 0:   log likelihood = -314.86996  
Iteration 1:   log likelihood = -303.52352  
Iteration 2:   log likelihood =  -303.2399  
Iteration 3:   log likelihood = -303.23899  
Iteration 4:   log likelihood = -303.23899  

Logistic regression                             Number of obs     =        536
                                                LR chi2(18)       =      23.26
                                                Prob > chi2       =     0.1807
Log likelihood = -303.23899                     Pseudo R2         =     0.0369

-----------------------------------------------------------------------------------------
Cutting_Uprooting_Trees |      Coef.   Std. Err.      z    P>|z|     [95% Conf. Interval]
------------------------+----------------------------------------------------------------
               1.Gender |  -.1684151   .2363252    -0.71   0.476     -.631604    .2947738
        cost_management |   .0000186   9.78e-06     1.91   0.057    -5.33e-07    .0000378
                        |
            Infestation |
                     2  |   .1703174   .4967163     0.34   0.732    -.8032286    1.143863
                     3  |  -.1647079   .4844624    -0.34   0.734    -1.114237    .7848209
                     4  |   -.006169   .4214418    -0.01   0.988    -.8321798    .8198418
                        |
    1.New_Effectiveness |   .7738218   .2028923     3.81   0.000     .3761603    1.171483
              occup_liv |   .1127787   .2529861     0.45   0.656    -.3830649    .6086223
           occup_forest |   .3566718   .3553677     1.00   0.316    -.3398361     1.05318
          occup_nonfarm |   .0216532   .2102585     0.10   0.918    -.3904459    .4337522
                        |
             Perception |
                     1  |  -.0047475   .3439794    -0.01   0.989    -.6789348    .6694398
                     2  |  -.1160636   .2360733    -0.49   0.623    -.5787587    .3466315
                        |
           age_hh_wave1 |  -.0063031   .0067915    -0.93   0.353    -.0196142    .0070079
        lnd_size_access |  -.0060236   .0264468    -0.23   0.820    -.0578584    .0458112
          hh_size_wave1 |  -.0030548   .0366631    -0.08   0.934    -.0749132    .0688036
           crop_produce |  -.0104192   .2257036    -0.05   0.963    -.4527901    .4319517
                        |
      Control_Frequency |
                     1  |  -.2872195   .4489795    -0.64   0.522    -1.167203    .5927642
                     2  |  -.2418401   .3088634    -0.78   0.434    -.8472013    .3635211
                     4  |    .011054   .3590442     0.03   0.975    -.6926597    .7147677
                        |
                  _cons |   .6962573    .699157     1.00   0.319    -.6740652     2.06658
-----------------------------------------------------------------------------------------

. 
. 
. logit Cutting_Uprooting_Trees i.Gender  cost_management ib1.Infestation i.New_Effectiveness occup_liv occup_forest occup_nonfarm
>  ib3.Perception age_hh_wave1 lnd_size_access  hh_size_wave1 crop_produce i.village_num 

note: 5.village_num != 0 predicts failure perfectly
      5.village_num dropped and 1 obs not used

note: 7.village_num != 0 predicts success perfectly
      7.village_num dropped and 1 obs not used

note: 18.village_num != 0 predicts success perfectly
      18.village_num dropped and 1 obs not used

note: 32.village_num != 0 predicts success perfectly
      32.village_num dropped and 1 obs not used

note: 40.village_num != 0 predicts success perfectly
      40.village_num dropped and 1 obs not used

Iteration 0:   log likelihood = -312.29338  
Iteration 1:   log likelihood = -282.64712  
Iteration 2:   log likelihood =  -281.2537  
Iteration 3:   log likelihood = -281.24225  
Iteration 4:   log likelihood = -281.24224  

Logistic regression                             Number of obs     =        531
                                                LR chi2(49)       =      62.10
                                                Prob > chi2       =     0.0990
Log likelihood = -281.24224                     Pseudo R2         =     0.0994

-----------------------------------------------------------------------------------------
Cutting_Uprooting_Trees |      Coef.   Std. Err.      z    P>|z|     [95% Conf. Interval]
------------------------+----------------------------------------------------------------
               1.Gender |  -.1900021   .2569433    -0.74   0.460    -.6936016    .3135974
        cost_management |   .0000199   .0000107     1.86   0.062    -1.02e-06    .0000408
                        |
            Infestation |
                     2  |   .3178373   .5229903     0.61   0.543    -.7072048    1.342879
                     3  |  -.2024938   .5022207    -0.40   0.687    -1.186828    .7818408
                     4  |   .2217389   .4576839     0.48   0.628    -.6753051    1.118783
                        |
    1.New_Effectiveness |   .8316444   .2218423     3.75   0.000     .3968415    1.266447
              occup_liv |  -.1737905   .2807392    -0.62   0.536    -.7240291    .3764481
           occup_forest |   .5003944   .4480669     1.12   0.264    -.3778005    1.378589
          occup_nonfarm |   .0931094   .2270687     0.41   0.682    -.3519372    .5381559
                        |
             Perception |
                     1  |  -.2471721   .3734379    -0.66   0.508    -.9790969    .4847527
                     2  |  -.4740236   .2672406    -1.77   0.076    -.9978056    .0497584
                        |
           age_hh_wave1 |  -.0007538   .0075489    -0.10   0.920    -.0155493    .0140417
        lnd_size_access |  -.0172023   .0278929    -0.62   0.537    -.0718714    .0374668
          hh_size_wave1 |  -.0071851   .0408366    -0.18   0.860    -.0872234    .0728532
           crop_produce |   .1705537   .2515502     0.68   0.498    -.3224755     .663583
                        |
            village_num |
               Bogoria  |  -2.344354   1.298634    -1.81   0.071     -4.88963    .2009216
        Chemeron upper  |  -2.198998   1.294871    -1.70   0.089    -4.736899    .3389022
              Chepkech  |  -3.041113   1.197563    -2.54   0.011    -5.388292   -.6939336
          Chepkoryande  |          0  (empty)
                Eldebe  |   -1.83537   1.340739    -1.37   0.171     -4.46317    .7924306
              Ilchurai  |          0  (empty)
             Ilkateeyo  |  -3.442716    1.27135    -2.71   0.007    -5.934516   -.9509157
            Ilngeriyoi  |  -1.285047   1.387767    -0.93   0.354    -4.005021    1.434927
              Kabikoki  |  -2.891454   1.288986    -2.24   0.025    -5.417821   -.3650878
               Kamaech  |  -2.432664   1.235713    -1.97   0.049    -4.854616   -.0107113
                Kamuga  |  -1.790445   1.206542    -1.48   0.138    -4.155224    .5743337
           Kapchekendi  |   -1.23853   1.387178    -0.89   0.372     -3.95735     1.48029
           Kapchereren  |  -1.313184   1.353403    -0.97   0.332    -3.965804    1.339437
              Kapchumo  |  -1.223512   1.252178    -0.98   0.329    -3.677736    1.230712
               Kaptich  |  -2.580086   1.295481    -1.99   0.046    -5.119182   -.0409904
                 Keper  |   -1.79456   1.321107    -1.36   0.174    -4.383883    .7947626
            Kereswanin  |          0  (empty)
             Kesumonin  |  -1.062368    1.24022    -0.86   0.392    -3.493154    1.368418
           Kipkunyangi  |  -1.942073   1.221084    -1.59   0.112    -4.335353    .4512082
           Koibokirwok  |  -2.349333   1.266987    -1.85   0.064    -4.832581    .1339155
                Korget  |  -3.213609    1.18754    -2.71   0.007    -5.541144   -.8860734
            Lamargweny  |  -2.029067   1.341728    -1.51   0.130    -4.658805    .6006718
                Leseki  |  -2.273429   1.311427    -1.73   0.083    -4.843779    .2969218
            Maji Ndege  |  -2.142906   1.337789    -1.60   0.109    -4.764924    .4791117
                 Masai  |  -2.260013   1.293791    -1.75   0.081    -4.795796    .2757698
                Mokobe  |   -.596477   1.321528    -0.45   0.652    -3.186624     1.99367
             Ngolbelon  |  -2.573866   1.192088    -2.16   0.031    -4.910316   -.2374165
             Ngosonoik  |  -2.439132   1.295004    -1.88   0.060    -4.977294    .0990297
                Ntepes  |  -2.305355   1.313259    -1.76   0.079    -4.879296    .2685847
             Parleleru  |   -2.43954   1.301449    -1.87   0.061    -4.990334    .1112538
                 Rabai  |          0  (empty)
                Saruni  |  -2.496333   1.308281    -1.91   0.056    -5.060516    .0678503
            Siriangoti  |  -2.841692   1.274015    -2.23   0.026    -5.338715   -.3446688
               Sirinyo  |  -1.218794   1.374559    -0.89   0.375    -3.912881    1.475293
               Sokonin  |  -2.828975   1.191687    -2.37   0.018    -5.164639   -.4933118
             Sokoteiwo  |  -2.603221   1.284773    -2.03   0.043    -5.121329   -.0851124
               Toborwo  |    -2.2335   1.195607    -1.87   0.062    -4.576847    .1098473
         Tongururwonin  |  -2.113845   1.201076    -1.76   0.078     -4.46791    .2402201
               Tuiyono  |          0  (empty)
                        |
                  _cons |   2.658942   1.258408     2.11   0.035     .1925079    5.125376
-----------------------------------------------------------------------------------------

. 
. 
. margins, dydx(*)

Average marginal effects                        Number of obs     =        531
Model VCE    : OIM

Expression   : Pr(Cutting_Uprooting_Trees), predict()
dy/dx w.r.t. : 1.Gender cost_management 2.Infestation 3.Infestation 4.Infestation 1.New_Effectiveness occup_liv occup_forest
               occup_nonfarm 1.Perception 2.Perception age_hh_wave1 lnd_size_access hh_size_wave1 crop_produce 2.village_num
               3.village_num 4.village_num 5.village_num 6.village_num 7.village_num 8.village_num 9.village_num 10.village_num
               11.village_num 12.village_num 13.village_num 14.village_num 15.village_num 16.village_num 17.village_num
               18.village_num 19.village_num 20.village_num 21.village_num 22.village_num 23.village_num 24.village_num
               25.village_num 26.village_num 27.village_num 28.village_num 29.village_num 30.village_num 31.village_num
               32.village_num 33.village_num 34.village_num 35.village_num 36.village_num 37.village_num 38.village_num
               39.village_num 40.village_num

-------------------------------------------------------------------------------------
                    |            Delta-method
                    |      dy/dx   Std. Err.      z    P>|z|     [95% Conf. Interval]
--------------------+----------------------------------------------------------------
           1.Gender |  -.0329306    .043708    -0.75   0.451    -.1185967    .0527356
    cost_management |   3.50e-06   1.86e-06     1.88   0.060    -1.45e-07    7.15e-06
                    |
        Infestation |
                 2  |    .055828   .0934148     0.60   0.550    -.1272616    .2389177
                 3  |  -.0387185   .0948659    -0.41   0.683    -.2246522    .1472153
                 4  |   .0396358   .0841135     0.47   0.637    -.1252236    .2044952
                    |
1.New_Effectiveness |   .1523995   .0406702     3.75   0.000     .0726874    .2321117
          occup_liv |  -.0306284   .0494163    -0.62   0.535    -.1274827    .0662258
       occup_forest |   .0881883   .0786793     1.12   0.262    -.0660204     .242397
      occup_nonfarm |   .0164094   .0400033     0.41   0.682    -.0619956    .0948144
                    |
         Perception |
                 1  |  -.0405052   .0622118    -0.65   0.515    -.1624382    .0814277
                 2  |  -.0812138   .0439482    -1.85   0.065    -.1673508    .0049232
                    |
       age_hh_wave1 |  -.0001328   .0013303    -0.10   0.920    -.0027403    .0024746
    lnd_size_access |  -.0030317    .004911    -0.62   0.537     -.012657    .0065936
      hh_size_wave1 |  -.0012663   .0071962    -0.18   0.860    -.0153707    .0128381
       crop_produce |    .030058   .0442727     0.68   0.497     -.056715    .1168309
                    |
        village_num |
           Bogoria  |   -.265232    .135808    -1.95   0.051    -.5314108    .0009468
    Chemeron upper  |  -.2369708   .1312182    -1.81   0.071    -.4941538    .0202123
          Chepkech  |  -.4166903   .1474295    -2.83   0.005    -.7056469   -.1277337
      Chepkoryande  |          .  (not estimable)
            Eldebe  |  -.1731828   .1256165    -1.38   0.168    -.4193866     .073021
          Ilchurai  |          .  (not estimable)
         Ilkateeyo  |  -.5090234    .141833    -3.59   0.000    -.7870109   -.2310358
        Ilngeriyoi  |  -.0968514   .1065629    -0.91   0.363    -.3057108     .112008
          Kabikoki  |  -.3825843   .1452943    -2.63   0.008    -.6673559   -.0978127
           Kamaech  |  -.2830935   .1252614    -2.26   0.024    -.5286014   -.0375856
            Kamuga  |  -.1660305     .10425    -1.59   0.111    -.3703568    .0382958
       Kapchekendi  |  -.0915016   .1043774    -0.88   0.381    -.2960775    .1130743
       Kapchereren  |  -.1001679   .1060311    -0.94   0.345     -.307985    .1076491
          Kapchumo  |  -.0898095   .0876728    -1.02   0.306     -.261645    .0820261
           Kaptich  |  -.3139577   .1395813    -2.25   0.024    -.5875321   -.0403834
             Keper  |  -.1666789   .1198609    -1.39   0.164    -.4016019    .0682441
        Kereswanin  |          .  (not estimable)
         Kesumonin  |   -.072706   .0813155    -0.89   0.371    -.2320815    .0866694
       Kipkunyangi  |  -.1908246   .1171281    -1.63   0.103    -.4203915    .0387423
       Koibokirwok  |  -.2662255   .1314309    -2.03   0.043    -.5238253   -.0086258
            Korget  |  -.4563976   .1415799    -3.22   0.001     -.733889   -.1789061
        Lamargweny  |  -.2058798   .1358623    -1.52   0.130    -.4721651    .0604054
            Leseki  |  -.2512586   .1371774    -1.83   0.067    -.5201214    .0176043
        Maji Ndege  |   -.226468   .1414432    -1.60   0.109    -.5036916    .0507556
             Masai  |  -.2486543   .1339304    -1.86   0.063    -.5111531    .0138445
            Mokobe  |  -.0331916    .072318    -0.46   0.646    -.1749324    .1085491
         Ngolbelon  |  -.3126311   .1296413    -2.41   0.016    -.5667235   -.0585387
         Ngosonoik  |   -.284421   .1399887    -2.03   0.042    -.5587938   -.0100483
            Ntepes  |  -.2575063    .137769    -1.87   0.062    -.5275286     .012516
         Parleleru  |  -.2845049   .1430243    -1.99   0.047    -.5648273   -.0041825
             Rabai  |          .  (not estimable)
            Saruni  |  -.2962706   .1429984    -2.07   0.038    -.5765422    -.015999
        Siriangoti  |  -.3713692   .1421706    -2.61   0.009    -.6500185   -.0927199
           Sirinyo  |  -.0892814   .1031228    -0.87   0.387    -.2913983    .1128356
           Sokonin  |  -.3685157   .1365398    -2.70   0.007    -.6361288   -.1009026
         Sokoteiwo  |  -.3189096   .1394907    -2.29   0.022    -.5923064   -.0455128
           Toborwo  |  -.2435448   .1222535    -1.99   0.046    -.4831572   -.0039323
     Tongururwonin  |  -.2211185   .1215815    -1.82   0.069    -.4594139     .017177
           Tuiyono  |          .  (not estimable)
-------------------------------------------------------------------------------------
Note: dy/dx for factor levels is the discrete change from the base level.

. logit Cutting_Uprooting_Trees i.Gender  cost_management ib1.Infestation i.New_Effectiveness occup_liv occup_forest occup_nonfarm

Iteration 0:   log likelihood = -314.86996  
Iteration 1:   log likelihood = -304.62852  
Iteration 2:   log likelihood =  -304.3836  
Iteration 3:   log likelihood = -304.38285  
Iteration 4:   log likelihood = -304.38285  

Logistic regression                             Number of obs     =        536
                                                LR chi2(9)        =      20.97
                                                Prob > chi2       =     0.0128
Log likelihood = -304.38285                     Pseudo R2         =     0.0333

-----------------------------------------------------------------------------------------
Cutting_Uprooting_Trees |      Coef.   Std. Err.      z    P>|z|     [95% Conf. Interval]
------------------------+----------------------------------------------------------------
               1.Gender |  -.1666659   .2303135    -0.72   0.469    -.6180722    .2847403
        cost_management |   .0000184   9.73e-06     1.89   0.058    -6.48e-07    .0000375
                        |
            Infestation |
                     2  |   .1296462   .4927313     0.26   0.792    -.8360895    1.095382
                     3  |  -.1841041   .4765493    -0.39   0.699    -1.118124    .7499153
                     4  |  -.0426288   .4146783    -0.10   0.918    -.8553834    .7701258
                        |
    1.New_Effectiveness |    .772911    .201663     3.83   0.000     .3776589    1.168163
              occup_liv |   .0829076   .2407264     0.34   0.731    -.3889074    .5547227
           occup_forest |    .340468   .2108918     1.61   0.106    -.0728724    .7538084
          occup_nonfarm |   .0639739   .2028402     0.32   0.752    -.3335855    .4615333
                  _cons |   .3039062    .508068     0.60   0.550    -.6918888    1.299701
-----------------------------------------------------------------------------------------

. 
. ib3.Perception age_hh_wave1 lnd_size_access  hh_size_wave1 crop_produce
ib3.Perception is not a valid command name
r(199);

. logit Cutting_Uprooting_Trees i.Gender  cost_management ib1.Infestation i.New_Effectiveness occup_liv occup_forest occup_nonfarm
>  ib3.Perception age_hh_wave1 lnd_size_access  hh_size_wave1 crop_produce

Iteration 0:   log likelihood = -314.86996  
Iteration 1:   log likelihood = -303.97884  
Iteration 2:   log likelihood = -303.71605  
Iteration 3:   log likelihood = -303.71521  
Iteration 4:   log likelihood = -303.71521  

Logistic regression                             Number of obs     =        536
                                                LR chi2(15)       =      22.31
                                                Prob > chi2       =     0.0999
Log likelihood = -303.71521                     Pseudo R2         =     0.0354

-----------------------------------------------------------------------------------------
Cutting_Uprooting_Trees |      Coef.   Std. Err.      z    P>|z|     [95% Conf. Interval]
------------------------+----------------------------------------------------------------
               1.Gender |  -.1782111   .2355521    -0.76   0.449    -.6398848    .2834626
        cost_management |   .0000186   9.75e-06     1.91   0.056    -4.94e-07    .0000377
                        |
            Infestation |
                     2  |   .1559762   .4945626     0.32   0.752    -.8133486    1.125301
                     3  |  -.1731527   .4767573    -0.36   0.716     -1.10758    .7612744
                     4  |  -.0194034   .4158884    -0.05   0.963    -.8345297    .7957228
                        |
    1.New_Effectiveness |   .7789205   .2026378     3.84   0.000     .3817577    1.176083
              occup_liv |   .0979243   .2514271     0.39   0.697    -.3948637    .5907124
           occup_forest |   .2794099   .2283012     1.22   0.221    -.1680523     .726872
          occup_nonfarm |   .0196411   .2097584     0.09   0.925    -.3914779      .43076
                        |
             Perception |
                     1  |  -.0157499   .3410631    -0.05   0.963    -.6842212    .6527214
                     2  |  -.1150729   .2349835    -0.49   0.624     -.575632    .3454863
                        |
           age_hh_wave1 |  -.0062593   .0067422    -0.93   0.353    -.0194737    .0069551
        lnd_size_access |  -.0061427   .0266444    -0.23   0.818    -.0583647    .0460793
          hh_size_wave1 |  -.0016042   .0365179    -0.04   0.965     -.073178    .0699697
           crop_produce |  -.0267519   .2246307    -0.12   0.905      -.46702    .4135163
                  _cons |   .7303564   .6630538     1.10   0.271    -.5692052    2.029918
-----------------------------------------------------------------------------------------

. margins, dydx(*)

Average marginal effects                        Number of obs     =        536
Model VCE    : OIM

Expression   : Pr(Cutting_Uprooting_Trees), predict()
dy/dx w.r.t. : 1.Gender cost_management 2.Infestation 3.Infestation 4.Infestation 1.New_Effectiveness occup_liv occup_forest
               occup_nonfarm 1.Perception 2.Perception age_hh_wave1 lnd_size_access hh_size_wave1 crop_produce

-------------------------------------------------------------------------------------
                    |            Delta-method
                    |      dy/dx   Std. Err.      z    P>|z|     [95% Conf. Interval]
--------------------+----------------------------------------------------------------
           1.Gender |  -.0333888   .0432573    -0.77   0.440    -.1181716    .0513939
    cost_management |   3.55e-06   1.84e-06     1.93   0.054    -5.95e-08    7.17e-06
                    |
        Infestation |
                 2  |   .0285584   .0914889     0.31   0.755    -.1507565    .2078732
                 3  |  -.0339755   .0923166    -0.37   0.713    -.2149128    .1469617
                 4  |  -.0036915   .0788565    -0.05   0.963    -.1582473    .1508644
                    |
1.New_Effectiveness |   .1543535   .0402481     3.84   0.000     .0754686    .2332384
          occup_liv |   .0186836    .047949     0.39   0.697    -.0752948     .112662
       occup_forest |   .0533103    .043367     1.23   0.219    -.0316873     .138308
      occup_nonfarm |   .0037474   .0400206     0.09   0.925    -.0746915    .0821863
                    |
         Perception |
                 1  |  -.0029282   .0634902    -0.05   0.963    -.1273667    .1215103
                 2  |  -.0218546    .044241    -0.49   0.621    -.1085653    .0648561
                    |
       age_hh_wave1 |  -.0011942   .0012831    -0.93   0.352    -.0037091    .0013206
    lnd_size_access |   -.001172   .0050828    -0.23   0.818    -.0111342    .0087902
      hh_size_wave1 |  -.0003061   .0069674    -0.04   0.965     -.013962    .0133499
       crop_produce |  -.0051042   .0428564    -0.12   0.905    -.0891011    .0788928
-------------------------------------------------------------------------------------
Note: dy/dx for factor levels is the discrete change from the base level.

. logit Pruning_Trees i.Gender  cost_management ib1.Infestation i.New_Effectiveness occup_liv occup_forest occup_nonfarm

Iteration 0:   log likelihood = -269.32101  
Iteration 1:   log likelihood = -260.10869  
Iteration 2:   log likelihood = -258.97245  
Iteration 3:   log likelihood = -258.95289  
Iteration 4:   log likelihood = -258.95289  

Logistic regression                             Number of obs     =        536
                                                LR chi2(9)        =      20.74
                                                Prob > chi2       =     0.0139
Log likelihood = -258.95289                     Pseudo R2         =     0.0385

-------------------------------------------------------------------------------------
      Pruning_Trees |      Coef.   Std. Err.      z    P>|z|     [95% Conf. Interval]
--------------------+----------------------------------------------------------------
           1.Gender |   .2533938   .2602603     0.97   0.330     -.256707    .7634946
    cost_management |  -.0000414   .0000156    -2.66   0.008    -.0000719   -.0000109
                    |
        Infestation |
                 2  |  -.2215586   .5194398    -0.43   0.670    -1.239642    .7965248
                 3  |  -.1075293   .5083853    -0.21   0.832    -1.103946    .8888876
                 4  |  -.2312492   .4352613    -0.53   0.595    -1.084346    .6218472
                    |
1.New_Effectiveness |  -.6194699   .2228736    -2.78   0.005    -1.056294   -.1826458
          occup_liv |  -.2045639   .2617409    -0.78   0.434    -.7175666    .3084388
       occup_forest |  -.4131409    .231997    -1.78   0.075    -.8678467    .0415648
      occup_nonfarm |   -.014776   .2250577    -0.07   0.948    -.4558809    .4263289
              _cons |  -.4316696   .5425583    -0.80   0.426    -1.495064    .6317251
-------------------------------------------------------------------------------------

. 
. ib3.Perception age_hh_wave1 lnd_size_access  hh_size_wave1 crop_produce
ib3.Perception is not a valid command name
r(199);

. logit Cutting_Uprooting_Trees i.Gender  cost_management ib1.Infestation i.New_Effectiveness occup_liv occup_forest occup_nonfarm
> ib3.Perception age_hh_wave1 lnd_size_access  hh_size_wave1 crop_produce
occup_nonfarmib3.Perception invalid name
r(198);

. logit Cutting_Uprooting_Trees i.Gender  cost_management ib1.Infestation i.New_Effectiveness occup_liv occup_forest occup_nonfarm
> ib3.Perception age_hh_wave1 lnd_size_access  hh_size_wave1 crop_produce
occup_nonfarmib3.Perception invalid name
r(198);

.  logit Pruning_Trees i.Gender  cost_management ib1.Infestation i.New_Effectiveness occup_liv occup_forest occup_nonfarm ib3.Perc
> eption age_hh_wave1 lnd_size_access  hh_size_wave1 crop_produce

Iteration 0:   log likelihood = -269.32101  
Iteration 1:   log likelihood = -258.95021  
Iteration 2:   log likelihood = -257.72147  
Iteration 3:   log likelihood = -257.69993  
Iteration 4:   log likelihood = -257.69993  

Logistic regression                             Number of obs     =        536
                                                LR chi2(15)       =      23.24
                                                Prob > chi2       =     0.0791
Log likelihood = -257.69993                     Pseudo R2         =     0.0431

-------------------------------------------------------------------------------------
      Pruning_Trees |      Coef.   Std. Err.      z    P>|z|     [95% Conf. Interval]
--------------------+----------------------------------------------------------------
           1.Gender |   .2732865   .2665468     1.03   0.305    -.2491357    .7957087
    cost_management |   -.000042   .0000155    -2.71   0.007    -.0000723   -.0000116
                    |
        Infestation |
                 2  |  -.2780351   .5223882    -0.53   0.595    -1.301897     .745827
                 3  |  -.1272869   .5092443    -0.25   0.803    -1.125387    .8708136
                 4  |  -.2912653   .4376251    -0.67   0.506    -1.148995    .5664641
                    |
1.New_Effectiveness |  -.6189608   .2241331    -2.76   0.006    -1.058254   -.1796679
          occup_liv |  -.2147472   .2734019    -0.79   0.432    -.7506052    .3211107
       occup_forest |  -.3141618   .2507466    -1.25   0.210    -.8056161    .1772926
      occup_nonfarm |   .0328175   .2330721     0.14   0.888    -.4239954    .4896304
                    |
         Perception |
                 1  |  -.3006871   .3984612    -0.75   0.450    -1.081657    .4802824
                 2  |   .0668383   .2584944     0.26   0.796    -.4398015     .573478
                    |
       age_hh_wave1 |   .0073907    .007495     0.99   0.324    -.0072992    .0220806
    lnd_size_access |   .0128882   .0274085     0.47   0.638    -.0408314    .0666078
      hh_size_wave1 |   .0169312   .0407444     0.42   0.678    -.0629264    .0967888
       crop_produce |  -.0812953   .2471718    -0.33   0.742    -.5657432    .4031526
              _cons |  -.8911848   .7263913    -1.23   0.220    -2.314886     .532516
-------------------------------------------------------------------------------------

. margins, dydx(*)

Average marginal effects                        Number of obs     =        536
Model VCE    : OIM

Expression   : Pr(Pruning_Trees), predict()
dy/dx w.r.t. : 1.Gender cost_management 2.Infestation 3.Infestation 4.Infestation 1.New_Effectiveness occup_liv occup_forest
               occup_nonfarm 1.Perception 2.Perception age_hh_wave1 lnd_size_access hh_size_wave1 crop_produce

-------------------------------------------------------------------------------------
                    |            Delta-method
                    |      dy/dx   Std. Err.      z    P>|z|     [95% Conf. Interval]
--------------------+----------------------------------------------------------------
           1.Gender |    .040637   .0380772     1.07   0.286    -.0339928    .1152669
    cost_management |  -6.47e-06   2.37e-06    -2.73   0.006    -.0000111   -1.83e-06
                    |
        Infestation |
                 2  |  -.0454455   .0871027    -0.52   0.602    -.2161636    .1252727
                 3  |  -.0216077   .0873387    -0.25   0.805    -.1927885     .149573
                 4  |   -.047446   .0755596    -0.63   0.530    -.1955401    .1006481
                    |
1.New_Effectiveness |  -.0987341   .0363696    -2.71   0.007    -.1700172    -.027451
          occup_liv |  -.0331282    .042118    -0.79   0.432     -.115678    .0494215
       occup_forest |  -.0484645   .0385465    -1.26   0.209    -.1240144    .0270853
      occup_nonfarm |   .0050626   .0359534     0.14   0.888    -.0654047      .07553
                    |
         Perception |
                 1  |  -.0425542   .0543777    -0.78   0.434    -.1491326    .0640241
                 2  |    .010501   .0403496     0.26   0.795    -.0685828    .0895847
                    |
       age_hh_wave1 |   .0011401   .0011538     0.99   0.323    -.0011213    .0034016
    lnd_size_access |   .0019882    .004226     0.47   0.638    -.0062946    .0102711
      hh_size_wave1 |   .0026119   .0062831     0.42   0.678    -.0097028    .0149266
       crop_produce |  -.0125411   .0381224    -0.33   0.742    -.0872597    .0621774
-------------------------------------------------------------------------------------
Note: dy/dx for factor levels is the discrete change from the base level.

. 
