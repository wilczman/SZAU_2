%uczenie predyktora oe
clear all;
n=0; farx(n+1)=2.626575e+003; foe(n+1)=2.622005e+003; wspucz(n+1)=0.000000e+000; ng(n+1)=0.000000e+000;
%odnowa zmiennej metryki
n=1; farx(n+1)=1.855477e+003; foe(n+1)=1.789273e+003; krok(n+1)=5.069434e-004; ng(n+1)=3.332215e+003;
n=2; farx(n+1)=7.292632e+002; foe(n+1)=5.100189e+002; krok(n+1)=5.433546e-003; ng(n+1)=1.345987e+003;
n=3; farx(n+1)=7.539493e+002; foe(n+1)=4.988714e+002; krok(n+1)=3.163070e-004; ng(n+1)=1.018057e+003;
n=4; farx(n+1)=6.181602e+002; foe(n+1)=4.849697e+002; krok(n+1)=8.876006e-004; ng(n+1)=6.103622e+002;
n=5; farx(n+1)=8.798398e+001; foe(n+1)=2.466471e+002; krok(n+1)=5.186798e-003; ng(n+1)=9.012872e+002;
n=6; farx(n+1)=7.657991e+001; foe(n+1)=2.418803e+002; krok(n+1)=1.054119e-004; ng(n+1)=2.888416e+003;
n=7; farx(n+1)=6.801216e+001; foe(n+1)=2.372081e+002; krok(n+1)=3.423805e-004; ng(n+1)=3.318908e+003;
n=8; farx(n+1)=6.882108e+001; foe(n+1)=2.332683e+002; krok(n+1)=7.625735e-004; ng(n+1)=3.830456e+003;
n=9; farx(n+1)=5.489523e+001; foe(n+1)=2.147414e+002; krok(n+1)=9.977322e-004; ng(n+1)=3.895746e+003;
n=10; farx(n+1)=4.688444e+001; foe(n+1)=2.074213e+002; krok(n+1)=8.398512e-004; ng(n+1)=1.238476e+003;
n=11; farx(n+1)=4.112120e+001; foe(n+1)=2.038072e+002; krok(n+1)=6.500859e-004; ng(n+1)=1.364355e+003;
n=12; farx(n+1)=3.043803e+001; foe(n+1)=1.762890e+002; krok(n+1)=2.914778e-003; ng(n+1)=1.743886e+003;
n=13; farx(n+1)=2.836092e+001; foe(n+1)=1.661653e+002; krok(n+1)=1.440996e-004; ng(n+1)=4.811323e+003;
n=14; farx(n+1)=2.682271e+001; foe(n+1)=1.404476e+002; krok(n+1)=8.410247e-004; ng(n+1)=8.649846e+003;
n=15; farx(n+1)=2.639370e+001; foe(n+1)=1.344647e+002; krok(n+1)=3.702988e-004; ng(n+1)=8.065457e+003;
n=16; farx(n+1)=1.978462e+001; foe(n+1)=1.126202e+002; krok(n+1)=5.087256e-003; ng(n+1)=6.338955e+003;
n=17; farx(n+1)=1.839414e+001; foe(n+1)=1.046382e+002; krok(n+1)=4.167959e-004; ng(n+1)=2.246030e+003;
n=18; farx(n+1)=1.613437e+001; foe(n+1)=9.755762e+001; krok(n+1)=1.259664e-003; ng(n+1)=2.822103e+003;
n=19; farx(n+1)=1.670736e+001; foe(n+1)=9.624636e+001; krok(n+1)=1.003104e-004; ng(n+1)=2.806820e+003;
n=20; farx(n+1)=1.507560e+001; foe(n+1)=8.982221e+001; krok(n+1)=7.740461e-004; ng(n+1)=1.564818e+003;
n=21; farx(n+1)=1.254420e+001; foe(n+1)=6.793863e+001; krok(n+1)=3.765398e-003; ng(n+1)=4.522916e+003;
n=22; farx(n+1)=1.346684e+001; foe(n+1)=6.153215e+001; krok(n+1)=6.946998e-004; ng(n+1)=4.003727e+003;
n=23; farx(n+1)=9.687230e+000; foe(n+1)=4.518988e+001; krok(n+1)=5.967206e-003; ng(n+1)=1.362912e+003;
n=24; farx(n+1)=8.406485e+000; foe(n+1)=4.254315e+001; krok(n+1)=4.706747e-004; ng(n+1)=1.654436e+003;
n=25; farx(n+1)=6.609455e+000; foe(n+1)=3.682619e+001; krok(n+1)=1.058508e-003; ng(n+1)=3.261874e+003;
%odnowa zmiennej metryki
n=26; farx(n+1)=6.925443e+000; foe(n+1)=3.457384e+001; krok(n+1)=2.490114e-005; ng(n+1)=1.433727e+003;
n=27; farx(n+1)=6.931582e+000; foe(n+1)=3.419525e+001; krok(n+1)=3.213736e-006; ng(n+1)=1.650228e+003;
n=28; farx(n+1)=6.675180e+000; foe(n+1)=3.338298e+001; krok(n+1)=5.039187e-005; ng(n+1)=5.592467e+002;
n=29; farx(n+1)=5.045660e+000; foe(n+1)=2.692242e+001; krok(n+1)=3.968650e-004; ng(n+1)=5.983773e+002;
n=30; farx(n+1)=4.399978e+000; foe(n+1)=2.460942e+001; krok(n+1)=3.927263e-004; ng(n+1)=2.051950e+003;
n=31; farx(n+1)=3.234359e+000; foe(n+1)=1.836626e+001; krok(n+1)=2.607206e-003; ng(n+1)=3.441655e+003;
n=32; farx(n+1)=3.086448e+000; foe(n+1)=1.520445e+001; krok(n+1)=4.315901e-003; ng(n+1)=1.471556e+003;
n=33; farx(n+1)=3.133137e+000; foe(n+1)=1.444025e+001; krok(n+1)=6.037139e-004; ng(n+1)=2.033855e+003;
n=34; farx(n+1)=3.101700e+000; foe(n+1)=1.297372e+001; krok(n+1)=2.000848e-003; ng(n+1)=1.105113e+003;
n=35; farx(n+1)=2.966603e+000; foe(n+1)=1.189855e+001; krok(n+1)=3.796286e-003; ng(n+1)=6.964586e+002;
n=36; farx(n+1)=2.748746e+000; foe(n+1)=1.025656e+001; krok(n+1)=1.199493e-002; ng(n+1)=2.744759e+002;
n=37; farx(n+1)=2.446250e+000; foe(n+1)=9.000883e+000; krok(n+1)=2.553842e-003; ng(n+1)=4.145876e+002;
n=38; farx(n+1)=2.361285e+000; foe(n+1)=8.741584e+000; krok(n+1)=9.447947e-004; ng(n+1)=5.833190e+002;
n=39; farx(n+1)=2.211398e+000; foe(n+1)=8.124604e+000; krok(n+1)=2.673171e-003; ng(n+1)=6.596284e+002;
n=40; farx(n+1)=2.007070e+000; foe(n+1)=7.285333e+000; krok(n+1)=4.290347e-003; ng(n+1)=7.729103e+002;
n=41; farx(n+1)=1.732603e+000; foe(n+1)=6.853366e+000; krok(n+1)=3.910756e-003; ng(n+1)=1.233717e+003;
n=42; farx(n+1)=1.446984e+000; foe(n+1)=6.283566e+000; krok(n+1)=7.883344e-003; ng(n+1)=1.186234e+003;
n=43; farx(n+1)=1.224888e+000; foe(n+1)=5.897048e+000; krok(n+1)=9.307204e-003; ng(n+1)=5.816628e+002;
n=44; farx(n+1)=1.060134e+000; foe(n+1)=5.503678e+000; krok(n+1)=9.152723e-003; ng(n+1)=7.275344e+002;
n=45; farx(n+1)=1.009435e+000; foe(n+1)=5.177467e+000; krok(n+1)=1.314565e-002; ng(n+1)=7.733257e+002;
n=46; farx(n+1)=9.934923e-001; foe(n+1)=4.821533e+000; krok(n+1)=3.468850e-002; ng(n+1)=5.306637e+002;
n=47; farx(n+1)=1.004658e+000; foe(n+1)=4.593648e+000; krok(n+1)=6.256921e-003; ng(n+1)=1.234157e+003;
n=48; farx(n+1)=9.936910e-001; foe(n+1)=4.392071e+000; krok(n+1)=2.741623e-002; ng(n+1)=4.624519e+002;
n=49; farx(n+1)=9.907950e-001; foe(n+1)=4.072830e+000; krok(n+1)=9.317009e-003; ng(n+1)=3.293363e+002;
n=50; farx(n+1)=1.004376e+000; foe(n+1)=3.982212e+000; krok(n+1)=6.256921e-003; ng(n+1)=9.578827e+002;
%odnowa zmiennej metryki
n=51; farx(n+1)=9.993877e-001; foe(n+1)=3.934062e+000; krok(n+1)=4.457231e-006; ng(n+1)=5.030059e+002;
n=52; farx(n+1)=9.914645e-001; foe(n+1)=3.886405e+000; krok(n+1)=1.929519e-005; ng(n+1)=2.346322e+002;
n=53; farx(n+1)=9.833839e-001; foe(n+1)=3.866036e+000; krok(n+1)=1.903096e-005; ng(n+1)=1.638280e+002;
n=54; farx(n+1)=9.946602e-001; foe(n+1)=3.745107e+000; krok(n+1)=3.163070e-004; ng(n+1)=8.439089e+001;
n=55; farx(n+1)=9.993579e-001; foe(n+1)=3.670252e+000; krok(n+1)=4.438003e-004; ng(n+1)=6.581647e+001;
n=56; farx(n+1)=1.020126e+000; foe(n+1)=3.452940e+000; krok(n+1)=5.682045e-003; ng(n+1)=5.591617e+001;
n=57; farx(n+1)=1.014641e+000; foe(n+1)=3.378611e+000; krok(n+1)=1.473654e-003; ng(n+1)=5.034908e+002;
n=58; farx(n+1)=9.653617e-001; foe(n+1)=3.150355e+000; krok(n+1)=1.000726e-002; ng(n+1)=6.687837e+002;
n=59; farx(n+1)=9.379940e-001; foe(n+1)=2.931662e+000; krok(n+1)=8.799720e-003; ng(n+1)=1.617698e+002;
n=60; farx(n+1)=9.158618e-001; foe(n+1)=2.767036e+000; krok(n+1)=4.520892e-003; ng(n+1)=4.932976e+002;
n=61; farx(n+1)=8.689423e-001; foe(n+1)=2.650363e+000; krok(n+1)=4.611188e-003; ng(n+1)=5.281707e+002;
n=62; farx(n+1)=8.438804e-001; foe(n+1)=2.554371e+000; krok(n+1)=4.352152e-003; ng(n+1)=4.934229e+002;
n=63; farx(n+1)=8.232626e-001; foe(n+1)=2.471827e+000; krok(n+1)=2.914778e-003; ng(n+1)=4.953904e+002;
n=64; farx(n+1)=8.366339e-001; foe(n+1)=2.366988e+000; krok(n+1)=8.672124e-003; ng(n+1)=2.989909e+002;
n=65; farx(n+1)=8.678567e-001; foe(n+1)=2.184470e+000; krok(n+1)=4.525276e-003; ng(n+1)=9.187757e+002;
n=66; farx(n+1)=8.711537e-001; foe(n+1)=2.030301e+000; krok(n+1)=2.262062e-002; ng(n+1)=2.651697e+002;
n=67; farx(n+1)=8.874742e-001; foe(n+1)=1.845562e+000; krok(n+1)=1.207035e-002; ng(n+1)=2.271232e+002;
n=68; farx(n+1)=9.019762e-001; foe(n+1)=1.798900e+000; krok(n+1)=6.065270e-003; ng(n+1)=4.190382e+002;
n=69; farx(n+1)=9.239753e-001; foe(n+1)=1.751719e+000; krok(n+1)=6.506258e-003; ng(n+1)=2.076665e+002;
n=70; farx(n+1)=9.205142e-001; foe(n+1)=1.642374e+000; krok(n+1)=1.384176e-002; ng(n+1)=2.907787e+002;
n=71; farx(n+1)=8.543466e-001; foe(n+1)=1.560858e+000; krok(n+1)=1.297031e-002; ng(n+1)=4.454846e+002;
n=72; farx(n+1)=8.160666e-001; foe(n+1)=1.491106e+000; krok(n+1)=1.576669e-002; ng(n+1)=4.946330e+002;
n=73; farx(n+1)=6.554722e-001; foe(n+1)=1.350598e+000; krok(n+1)=5.955282e-002; ng(n+1)=5.122174e+002;
n=74; farx(n+1)=5.335664e-001; foe(n+1)=1.208066e+000; krok(n+1)=1.932256e-002; ng(n+1)=5.716633e+002;
n=75; farx(n+1)=4.695136e-001; foe(n+1)=1.092662e+000; krok(n+1)=2.570124e-002; ng(n+1)=6.867078e+002;
%odnowa zmiennej metryki
n=76; farx(n+1)=4.663658e-001; foe(n+1)=1.013383e+000; krok(n+1)=5.874564e-006; ng(n+1)=5.536460e+002;
n=77; farx(n+1)=4.589125e-001; foe(n+1)=9.317220e-001; krok(n+1)=3.849289e-006; ng(n+1)=6.876329e+002;
n=78; farx(n+1)=4.588469e-001; foe(n+1)=9.302300e-001; krok(n+1)=4.142305e-006; ng(n+1)=9.272280e+001;
n=79; farx(n+1)=4.590141e-001; foe(n+1)=9.099241e-001; krok(n+1)=8.074766e-005; ng(n+1)=8.765936e+001;
n=80; farx(n+1)=4.575671e-001; foe(n+1)=8.692545e-001; krok(n+1)=2.578785e-004; ng(n+1)=6.555640e+001;
n=81; farx(n+1)=4.587518e-001; foe(n+1)=8.438787e-001; krok(n+1)=4.250148e-004; ng(n+1)=5.337056e+001;
n=82; farx(n+1)=4.635491e-001; foe(n+1)=8.212975e-001; krok(n+1)=2.223715e-003; ng(n+1)=6.498448e+001;
n=83; farx(n+1)=4.667449e-001; foe(n+1)=7.626478e-001; krok(n+1)=1.915637e-003; ng(n+1)=8.472059e+001;
n=84; farx(n+1)=4.661564e-001; foe(n+1)=7.212895e-001; krok(n+1)=5.162776e-003; ng(n+1)=2.801084e+002;
n=85; farx(n+1)=4.242667e-001; foe(n+1)=6.756224e-001; krok(n+1)=1.181377e-002; ng(n+1)=5.715913e+002;
n=86; farx(n+1)=4.033325e-001; foe(n+1)=6.419195e-001; krok(n+1)=9.778245e-003; ng(n+1)=4.616425e+002;
n=87; farx(n+1)=4.073534e-001; foe(n+1)=6.247129e-001; krok(n+1)=6.681129e-003; ng(n+1)=3.829561e+002;
n=88; farx(n+1)=3.844488e-001; foe(n+1)=5.865682e-001; krok(n+1)=1.321526e-002; ng(n+1)=2.695268e+002;
n=89; farx(n+1)=3.647035e-001; foe(n+1)=5.733269e-001; krok(n+1)=4.944398e-003; ng(n+1)=4.517659e+002;
n=90; farx(n+1)=2.575903e-001; foe(n+1)=5.132002e-001; krok(n+1)=3.585583e-002; ng(n+1)=2.650840e+002;
n=91; farx(n+1)=2.436236e-001; foe(n+1)=4.896073e-001; krok(n+1)=1.290032e-002; ng(n+1)=1.742964e+002;
n=92; farx(n+1)=2.354284e-001; foe(n+1)=4.809864e-001; krok(n+1)=5.320104e-003; ng(n+1)=3.332353e+002;
n=93; farx(n+1)=2.074025e-001; foe(n+1)=4.438198e-001; krok(n+1)=9.248075e-003; ng(n+1)=3.423730e+002;
n=94; farx(n+1)=1.756253e-001; foe(n+1)=4.006546e-001; krok(n+1)=4.568872e-002; ng(n+1)=1.326266e+002;
n=95; farx(n+1)=1.647173e-001; foe(n+1)=3.763498e-001; krok(n+1)=2.014462e-002; ng(n+1)=4.043816e+002;
n=96; farx(n+1)=1.452712e-001; foe(n+1)=3.526054e-001; krok(n+1)=3.618094e-002; ng(n+1)=1.798519e+002;
n=97; farx(n+1)=1.294872e-001; foe(n+1)=3.396428e-001; krok(n+1)=1.209242e-002; ng(n+1)=1.574845e+002;
n=98; farx(n+1)=1.148200e-001; foe(n+1)=3.241886e-001; krok(n+1)=3.178877e-002; ng(n+1)=2.706279e+002;
n=99; farx(n+1)=9.392983e-002; foe(n+1)=2.902711e-001; krok(n+1)=5.983917e-002; ng(n+1)=2.474535e+002;
n=100; farx(n+1)=8.385866e-002; foe(n+1)=2.657805e-001; krok(n+1)=4.086147e-002; ng(n+1)=3.557257e+002;

figure; semilogy(farx,'b'); hold on; semilogy(foe,'r'); xlabel('Iteracje'); ylabel('Earx, Eoe'); legend('Earx','Eoe'); title('Uczenie predyktora OE');
figure; subplot(2,1,1); semilogy(krok); xlabel('Iteracje'); ylabel('Krok');
subplot(2,1,2); semilogy(ng); xlabel('Iteracje'); ylabel('Norma gradientu');
Earx=farx(n+1)
Eoe=foe(n+1)
