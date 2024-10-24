    format long
    close all
    
    
    y0 = zeros(51,1); 
    y0(40) = 1;
    y0(41) = 0.0963;
    y0(42) = 0.3915;
    y0(51) = 0.5122;
    
    
    tau = 1000;
    numS = 350.035E-3;
    
    optode=odeset('NonNegative',1:51,'Abstol',1E-8,'RelTol',1E-8);
    [t,y]=ode15s(@(t,y)MA_Cu_73_573_CSTR(t, y, numS),[0,1e+7],y0,optode);



    loglog(t, y(:,1),'g',t,y(:,2),'b',t,y(:,3),'b',t,y(:,4),'b',t,y(:,5),'b',t,y(:,6),'r',t,y(:,7),'b',t,y(:,8),'b',t,y(:,9),'b',t,y(:,10),'b',t,y(:,11),'b',t,y(:,12),'b',t,y(:,13),'b',t,y(:,14),'b',t,y(:,15),'b',t,y(:,16),'b',t,y(:,17),'b',t,y(:,18),'b',t,y(:,19),'b',t,y(:,20),'b',t,y(:,21),'b',t,y(:,22),'b',t,y(:,23),'b',t,y(:,24),'b',t,y(:,25),'b',t,y(:,26),'b',t,y(:,27),'b',t,y(:,28),'b',t,y(:,29),'b',t,y(:,30),'y',t,y(:,31),'b',t,y(:,32),'b',t,y(:,33),'b',t,y(:,34),'b',t,y(:,35),'b',t,y(:,36),'b',t,y(:,37),'b',t,y(:,38),'b',t,y(:,39),'b',t,y(:,40),t,y(:,41),'b',t,y(:,42),'b',t,y(:,43),'b',t,y(:,44),'b',t,y(:,45),'b',t,y(:,46),'b',t,y(:,47),'b',t,y(:,48),'b',t,y(:,49),'b',t,y(:,50),'b',t,y(:,51))
    title('Coverage at Different times');
    xlabel('time t'); ylabel('coverage y');
    l = legend('y 1','y 2','y 3','y 4','y 5','y 6','y 7','y 8','y 9','y 10','y 11','y 12','y 13','y 14','y 15','y 16','y 17','y 18','y 19','y 20','y 21','y 22','y 23','y 24','y 25','y 26','y 27','y 28','y 29','y 30','y 31','y 32','y 33','y 34','y 35','y 36','y 37','y 38','y 39','y 40','y 41','y 42','y 43','y 44','y 45','y 46','y 47','y 48','y 49','y 50');
    set(l,'Edgecolor',[1 1 1]);
    y=y(end,:);
    y_site_balance=y(1:40).*[1 1 2 4 3 2 3 4 4 5 7 3 3 3 2 3 4 4 5 3 1 1 1 1 2 2 3 1 1 1 3 3 1 1 2 3 3 3 3 1];
    sum(y_site_balance)
    sum(y(41:51))


    PCH3COOCH3=0.0795;
    PCH3CH2OH=0.00;
    PCH4=0.00;
    PH2=0.3211;
    PCH3COOH=0.00;
    PCH2O=0.00;
    PCH3COOCH2CH3=0.00;
    PCH3CHO=0.00;
    PCH3OH=0.00;
    PCO= 0.00;
    PN2 = 0.42;
    Ptot = PCH3COOCH3 + PCH3CH2OH + PCH4 + PH2 + PCH3COOH + PCH2O  + PCH3COOCH2CH3 + PCH3CHO + PCH3OH + PCO+ PN2;
    
    
    Keq1=6.00E-05;
    Keq2=1.25E-04;
    Keq3=3.72E-05;
    Keq4=4.32E-04;
    Keq5=4.41E-07;
    Keq6=3.24E+05;
    Keq7=1.33E-05;
    Keq8=1.87E-05;
    Keq9=8.03E-05;
    Keq10=7.51E-08;
    Keq11=1.69E+04;
    Keq12=1.60E-05;
    Keq13=6.92E-06;
    Keq14=1.69E-02;
    Keq15=1.97E-09;
    Keq16=2.81E+01;
    Keq17=1.07E-04;
    Keq18=3.67E-03;
    Keq19=9.87E-03;
    Keq20=7.90E+04;
    Keq21=2.48E-05;
    Keq22=5.49E-09;
    Keq23=1.81E-09;
    Keq24=7.85E+00;
    Keq25=2.24E-12;
    Keq26=6.95E-08;
    Keq27=1.02E-11;
    Keq28=1.38E-01;
    Keq29=1.04E-07;
    Keq30=1.81E-07;
    Keq31=2.76E+01;
    Keq32=8.69E-03;
    Keq33=4.07E+08;% r33 was not included in the mechanism
    Keq34=2.39E-02;
    Keq35=8.18E-04;
    Keq36=2.43E+05;
    Keq37=8.95E-02;
    Keq38=5.93E-14;
    Keq39=1.51E-04;
    Keq40=3.55E+07;
    Keq41=3.08E+02;
    Keq42=1.39E-02;
    Keq43=1.71E+01;
    Keq44=4.35E-07;
    Keq45=4.54E+03;
    Keq46=2.52E-04;
    Keq47=4.92E+01;
    Keq48=5.83E-01;
    Keq49=1.82E+08;
    Keq50=3.78E-04;
    Keq51=4.12E+06;
    Keq52=9.56E-03;
    Keq53=4.04E-10;
    Keq54=8.74E-05;
    Keq55=1.93E-06;
    Keq56=3.96E-06;
    Keq57=1.52E+08;
    Keq58=1.80E+01;
    Keq59=1.45E+02;
    Keq60=5.55E-05;
    Keq61=6.45E-05;
    Keq62=1.01E-04;
    Keq63=6.26E-11;
    Keq64=3.74E-08;
    Keq65=8.24E-04;
    Keq66=1.10E-02;
    Keq67=2.59E-03;
    Keq68=6.17E-04;
    Keq69=1.11E-04;
    Keq70=7.18E-04;
    Keq71=3.87E+00;
    Keq72=1.66E-04;
    Keq73=2.87E-05;


    % forward rates constant

    k1f=7.31E+07;
    k2f=8.81E+03;
    k3f=2.74E+01;
    k4f=1.16E+03;
    k5f=2.97E-05;
    k6f=3.63E+01;
    k7f=1.22E+04;
    k8f=3.98E+02;
    k9f=6.56E+03;
    k10f=1.02E-07;
    k11f=1.83E+08;
    k12f=2.88E+06;
    k13f=3.92E+02;
    k14f=4.62E+03;
    k15f=5.24E-01;
    k16f=1.88E-03;
    k17f=9.46E+02;
    k18f=2.52E+06;
    k19f=1.03E+07;
    k20f=2.73E+08;
    k21f=5.19E+04;
    k22f=5.00E+00;
    k23f=5.70E-01;
    k24f=6.07E+06;
    k25f=2.04E-03;
    k26f=1.37E+01;
    k27f=2.59E-02;
    k28f=1.85E+08;
    k29f=1.82E-06;
    k30f=1.76E+00;
    k31f=1.29E+06;
    k32f=4.74E+04;
    k33f=2.07E+10;
    k34f=3.84E+03;
    k35f=2.50E+06;
    k36f=1.00E+14;
    k37f=9.76E+07;
    k38f=1.02E-04;
    k39f=5.99E-04;
    k40f=2.33E+11;
    k41f=9.72E+03;
    k42f=1.12+08;
    k43f=2.11E+05;
    k44f=4.19E-01;
    k45f=7.28E+09;
    k46f=1.30E+03;
    k47f=1.20E+08;
    k48f=1.90E+09;
    k49f=7.47E+10;
    k50f=2.18E+03;
    k51f=2.46E+12;
    k52f=1.13E+05;
    k53f=5.14E-02;
    k54f=6.94E+04;
    k55f=1.44E+02;
    k56f=3.35E+05;
    k57f=3.35E+13;
    k58f=1.54E+07;
    k59f=7.81E+07;
    k60f=4.73E+02;
    k61f=3.62E+05;
    k62f=5.24E+03;
    k63f=3.76E+01;
    k64f=1.08E+00;
    k65f=9.71E+07;
    k66f=1.57E+08;
    k67f=4.43E+08;
    k68f=1.11E+08;
    k69f=8.12E+07;
    k70f=6.71E+07;
    k71f=1.19E+08;
    k72f=1.15E+08;
    k73f=9.48E+07;

    % Reverse rate constant

    k1b=k1f/Keq1;
    k2b=k2f/Keq2;
    k3b=k3f/Keq3;
    k4b=k4f/Keq4;
    k5b=k5f/Keq5;
    k6b=k6f/Keq6;
    k7b=k7f/Keq7;
    k8b=k8f/Keq8;
    k9b=k9f/Keq9;
    k10b=k10f/Keq10;
    k11b=k11f/Keq11;
    k12b=k12f/Keq12;
    k13b=k13f/Keq13;
    k14b=k14f/Keq14;
    k15b=k15f/Keq15;
    k16b=k16f/Keq16;
    k17b=k17f/Keq17;
    k18b=k18f/Keq18;
    k19b=k19f/Keq19;
    k20b=k20f/Keq20;
    k21b=k21f/Keq21;
    k22b=k22f/Keq22;
    k23b=k23f/Keq23;
    k24b=k24f/Keq24;
    k25b=k25f/Keq25;
    k26b=k26f/Keq26;
    k27b=k27f/Keq27;
    k28b=k28f/Keq28;
    k29b=k29f/Keq29;
    k30b=k30f/Keq30;
    k31b=k31f/Keq31;
    k32b=k32f/Keq32;
    k33b=k33f/Keq33;
    k34b=k34f/Keq34;
    k35b=k35f/Keq35;
    k36b=k36f/Keq36;
    k37b=k37f/Keq37;
    k38b=k38f/Keq38;
    k39b=k39f/Keq39;
    k40b=k40f/Keq40;
    k41b=k41f/Keq41;
    k42b=k42f/Keq42;
    k43b=k43f/Keq43;
    k44b=k44f/Keq44;
    k45b=k45f/Keq45;
    k46b=k46f/Keq46;
    k47b=k47f/Keq47;
    k48b=k48f/Keq48;
    k49b=k49f/Keq49;
    k50b=k50f/Keq50;
    k51b=k51f/Keq51;
    k52b=k52f/Keq52;
    k53b=k53f/Keq53;
    k54b=k54f/Keq54;
    k55b=k55f/Keq55;
    k56b=k56f/Keq56;
    k57b=k57f/Keq57;
    k58b=k58f/Keq58;
    k59b=k59f/Keq59;
    k60b=k60f/Keq60;
    k61b=k61f/Keq61;
    k62b=k62f/Keq62;
    k63b=k63f/Keq63;
    k64b=k64f/Keq64;
    k65b=k65f/Keq65;
    k66b=k66f/Keq66;
    k67b=k67f/Keq67;
    k68b=k68f/Keq68;
    k69b=k69f/Keq69; 
    k70b=k70f/Keq70;
    k71b=k71f/Keq71;
    k72b=k72f/Keq72;
    k73b=k73f/Keq73;
    
   

        % Rate equations

        r1=k1f*Ptot*y(41)*y(40) - k1b*y(1);      %ads
        r2=k2f*y(1)*y(40)^4 - k2b*y(35)*y(36);
        r3=k3f*y(1)*y(40)^2 - k3b*y(3)*y(30);
        r4=k4f*y(1)*y(40)^2 - k4b*y(6)*y(30);
        r5=k5f*y(1)*y(40)^4 - k5b*y(31)*y(25);
        r6=k6f*y(1)*y(40)^4 - k6b*y(26)*y(31);
        r7=k7f*y(3)*y(40)   - k7b*y(35)*y(34);
        r8=k8f*y(3)*y(40)^3 - k8b*y(4)*y(30);
        r9=k9f*y(3)*y(40)^2 - k9b*y(7)*y(30);
        r10=k10f*y(3)*y(40)^5 - k10b*y(31)*y(17);
        r11=k11f*y(3)*y(40)^3 - k11b*y(26)*y(37);
        r12=k12f*y(6)*y(40)^4 - k12b*y(16)*y(36);
        r13=k13f*y(6)*y(40)^2 - k13b*y(7)*y(30);
        r14=k14f*y(6)*y(40)^3 - k14b*y(9)*y(30);
        r15=k15f*y(6)*y(40)^3 - k15b*y(37)*y(25);
        r16=k16f*y(6)*y(40)^5 - k16b*y(18)*y(31);
        r17=k17f*y(4)*y(40) - k17b*y(8)*y(30);
        r18=k18f*y(4)       - k18b*y(5)*y(30);
        r19=k19f*y(4)*y(40) - k19b*y(35)*y(32);
        r20=k20f*y(4)*y(40) - k20b*y(26)*y(38);
        r21=k21f*y(7)*y(40)^2 - k21b*y(8)*y(30);
        r22=k22f*y(7)*y(40)^3 - k22b*y(10)*y(30);
        r23=k23f*y(7)*y(40)^4 - k23b*y(37)*y(17);
        r24=k24f*y(7)*y(40)^4 - k24b*y(18)*y(37);
        r25=k25f*y(9)*y(40)^2 - k25b*y(10)*y(30);
        r26=k26f*y(9)       - k26b*y(12)*y(30);
        r27=k27f*y(9)*y(40) - k27b*y(38)*y(25);
        r28=k28f*y(9)*y(40) - k28b*y(15)*y(36);
        r29=k29f*y(9)*y(40)^4 - k29b*y(19)*y(31);
        r30=k30f*y(8)*y(40)^4 - k30b*y(11)*y(30);
        r31=k31f*y(8)*y(40)^3 - k31b*y(18)*y(38);
        r32=k32f*y(5)*y(40)^2 - k32b*y(26)*y(39);
        r33=0;% k33f*y(5)*y(40) - k33b*y(35)*y(33);r33 was not considered for the model
        r34=k34f*y(10)        - k34b*y(13)*y(30)*y(40);
        r35=k35f*y(10)*y(40)^3 - k35b*y(11)*y(30);
        r36=k36f*y(10)         - k36b*y(15)*y(34)*y(40)^2;
        r37=k37f*y(10)*y(40)^3 - k37b*y(19)*y(37);
        r38=k38f*y(12)*y(40)^2 - k38b*y(25)*y(39);
        r39=k39f*y(12)*y(40)^3 - k39b*y(20)*y(31);
        r40=k40f*y(12)*y(40)^3 - k40b*y(14)*y(36);
        r41=k41f*y(22)*y(40)^3 - k41b*y(27)*y(30);
        r42=k42f*y(34)*y(40)^3 - k42b*y(32)*y(30);
        r43=k43f*y(29)*y(40)^3 - k43b*y(36)*y(30);
        r44=k44f*y(21)*y(40)^3 - k44b*y(31)*y(30);
        r45=k45f*y(23)*y(40)^2 - k45b*y(26)*y(30);
        r46=k46f*y(24)*y(40)^4 - k46b*y(35)*y(27);
        r47=k47f*y(2)*y(40)    - k47b*y(30)^2;
        r48=k48f*y(28)*y(40)^2 - k48b*y(35)*y(30);
        r49=k49f*y(13)*y(40)   - k49b*y(14)*y(34); 
        r50=k50f*y(13)*y(40)^3 - k50b*y(20)*y(37);
        r51=k51f*y(11)         - k51b*y(15)*y(32)*y(40)^2;
        r52=k52f*y(11)*y(40) - k52b*y(19)*y(38);
        r53=k53f*y(38)*y(40) - k53b*y(39)*y(30);
        r54=k54f*y(37)*y(40) - k54b*y(38)*y(30);
        r55=k55f*y(31)*y(40) - k55b*y(37)*y(30);
        r56=k56f*y(36)       - k56b*y(34)*y(30)*y(40);
        r57=k57f*y(32)*y(40) - k57b*y(33)*y(30)*y(40);   
        r58=k58f*y(15)*y(40)^2 - k58b*y(14)*y(30);
        r59=k59f*y(16)         - k59b*y(15)*y(30);
        r60=k60f*y(35)*y(40)^2 - k60b*y(16)*y(30);
        r61=k61f*y(27)         - k61b*y(28)*y(30)*y(40);
        r62=k62f*y(19)         - k62b*y(20)*y(30)*y(40);
        r63=k63f*y(18)*y(40)^2 - k63b*y(19)*y(30);
        r64=k64f*y(26)*y(40)^3 - k64b*y(18)*y(30);
        r65=k65f*Ptot*y(45)*y(40) - k65b*y(22);          %ads
        r66=k66f*Ptot*y(44)*y(40)      - k66b*y(21);     %ads
        r67=k67f*Ptot*y(42)*y(40)       - k67b*y(2);     %ads        
        r68=k68f*Ptot*y(48)*y(40)    - k68b*y(29);       %ads
        r69=k69f*Ptot*y(43)*y(40)  - k69b*y(23);         %ads
        r70=k70f*Ptot*y(46)*y(40) - k70b*y(24);          %ads
        r71=k71f*Ptot*y(49)*y(40) - k71b*y(33);          %ads
        r72=k72f*Ptot*y(50)*y(40) - k72b*y(34);          %ads
        r73=k73f*Ptot*y(47)*y(40) - k73b*y(28);          %ads 
        r74=0;                                % inert balance
        Rgas = -(r1 + r65 + r66 + r67 + r68 + r69 + r70 + r71 + r72 + r73 + r74);
       
       




     K=[Keq1 	Keq2 	Keq3 	Keq4 	Keq5 	Keq6 	Keq7 	Keq8 	Keq9 	Keq10 	Keq11 	Keq12 	Keq13 	Keq14 	Keq15 	Keq16 	Keq17 	Keq18 	Keq19 	Keq20 	Keq21 	Keq22 	Keq23 	Keq24 	Keq25 	Keq26 	Keq27 	Keq28 	Keq29 	Keq30 	Keq31 	Keq32 	Keq33 	Keq34 	Keq35 	Keq36 	Keq37 	Keq38 	Keq39 	Keq40 	Keq41 	Keq42 	Keq43 	Keq44 	Keq45 	Keq46 	Keq47 	Keq48 	Keq49 	Keq50 	Keq51 	Keq52 	Keq53 	Keq54 	Keq55 	Keq56 	Keq57 	Keq58 	Keq59 	Keq60 	Keq61 	Keq62 	Keq63 	Keq64 	Keq65 	Keq66 	Keq67 	Keq68 	Keq69 	Keq70 	Keq71 	Keq72 	Keq73 ];   

     r=[r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 r16 r17 r18 r19 r20 r21 r22 r23 r24 r25 r26 r27 r28 r29 r30 r31 r32 r33 r34 r35 r36 r37 r38 r39 r40 r41 r42 r43 r44 r45 r46 r47 r48 r49 r50 r51 r52 r53 r54 r55 r56 r57 r58 r59 r60 r61 r62 r63 r64 r65 r66 r67 r68 r69 r70 r71 r72 r73];

     conv = (1-((y(41)/(PCH3COOCH3/Ptot))*(1 + tau*numS*Rgas)))



    %Yield_CH3COOCH3 = (y(41)/(PCH3COOCH3/Ptot))*(1+tau*numS*Rgas)-PCH3COOCH3/PCH3COOCH3;
    Yield_CH3CH2OH = (2/3*y(45)/(PCH3COOCH3/Ptot))*(1+tau*numS*Rgas);
    Yield_CH4 = (1/3*y(44)/(PCH3COOCH3/Ptot))*(1+tau*numS*Rgas);
    %Yield_H2 = (y(42)/(PCH3COOCH3/Ptot))*(1+tau*numS*Rgas)-PH2/PCH3COOCH3;
    Yield_CH3OH = (1/3*y(48)/(PCH3COOCH3/Ptot))*(1+tau*numS*Rgas);
    Yield_CH3COOH = (2/3*y(43)/(PCH3COOCH3/Ptot))*(1+tau*numS*Rgas);
    Yield_CH3COOCH2CH3 = (4/3*y(46)/(PCH3COOCH3/Ptot))*(1+tau*numS*Rgas);
    Yield_CH2O = (1/3*y(50)/(PCH3COOCH3/Ptot))*(1+tau*numS*Rgas);
    Yield_CO = (1/3*y(49)/(PCH3COOCH3/Ptot))*(1+tau*numS*Rgas);
    Yield_CH3CHO = (2/3*y(47)/(PCH3COOCH3/Ptot))*(1+tau*numS*Rgas);
    %Yield_N2 = (y(51)/(PCH3COOCH3/Ptot))*(1+tau*numS*Rgas);
  
   

    sel_CH3CH2OH = Yield_CH3CH2OH/conv;
    sel_CH3OH = Yield_CH3OH/conv;
    %sel_N2 = Yield_N2/conv;
    sel_CH4 = Yield_CH4/conv;
    %sel_H2 = Yield_H2/conv;
    sel_CH3COOH = Yield_CH3COOH/conv;
    sel_CH3COOCH2CH3 = Yield_CH3COOCH2CH3/conv;
    sel_CH2O = Yield_CH2O/conv;
    sel_CO = Yield_CO/conv;
    sel_CH3CHO = Yield_CH3CHO/conv;
    %sel_CH3COOCH3 = Yield_CH3COOCH3/conv;

    sel=[sel_CH3CH2OH sel_CH4 sel_CH3OH sel_CH3COOH sel_CH3COOCH2CH3 sel_CO sel_CH2O sel_CH3CHO]; % print selectivities