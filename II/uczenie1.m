%uczenie predyktora oe
clear all;
n=0; farx(n+1)=2.614859e+003; foe(n+1)=2.627070e+003; wspucz(n+1)=0.000000e+000; ng(n+1)=0.000000e+000;
%odnowa zmiennej metryki
n=1; farx(n+1)=1.850025e+003; foe(n+1)=1.847100e+003; krok(n+1)=4.927090e-004; ng(n+1)=1.534508e+003;
n=2; farx(n+1)=1.841218e+003; foe(n+1)=1.845205e+003; krok(n+1)=9.638767e-004; ng(n+1)=7.564824e+001;
n=3; farx(n+1)=5.533433e+002; foe(n+1)=6.118816e+002; krok(n+1)=4.305393e-002; ng(n+1)=5.542919e+001;
n=4; farx(n+1)=5.533991e+002; foe(n+1)=6.113431e+002; krok(n+1)=9.081789e-007; ng(n+1)=2.208310e+003;
n=5; farx(n+1)=7.552358e+002; foe(n+1)=6.080558e+002; krok(n+1)=5.357205e-003; ng(n+1)=2.271641e+003;
n=6; farx(n+1)=9.292604e+002; foe(n+1)=5.986197e+002; krok(n+1)=7.233985e-002; ng(n+1)=1.801566e+003;
n=7; farx(n+1)=8.844370e+002; foe(n+1)=5.930935e+002; krok(n+1)=4.077788e-002; ng(n+1)=1.670590e+003;
n=8; farx(n+1)=1.304963e+002; foe(n+1)=3.964687e+002; krok(n+1)=5.671128e-002; ng(n+1)=1.651900e+003;
n=9; farx(n+1)=6.308241e+001; foe(n+1)=2.324515e+002; krok(n+1)=5.226535e-001; ng(n+1)=3.622933e+003;
n=10; farx(n+1)=5.827548e+001; foe(n+1)=2.109269e+002; krok(n+1)=8.268560e-002; ng(n+1)=3.866977e+003;
n=11; farx(n+1)=5.682357e+001; foe(n+1)=1.700151e+002; krok(n+1)=8.997464e-001; ng(n+1)=6.082323e+002;
n=12; farx(n+1)=4.721689e+001; foe(n+1)=1.600203e+002; krok(n+1)=1.951976e-001; ng(n+1)=4.229827e+002;
n=13; farx(n+1)=3.460884e+001; foe(n+1)=1.382705e+002; krok(n+1)=4.275922e-001; ng(n+1)=1.346562e+003;
n=14; farx(n+1)=3.500135e+001; foe(n+1)=1.266299e+002; krok(n+1)=1.833902e+000; ng(n+1)=4.008253e+002;
n=15; farx(n+1)=3.124957e+001; foe(n+1)=1.138887e+002; krok(n+1)=1.073054e+000; ng(n+1)=8.534300e+002;
n=16; farx(n+1)=2.487031e+001; foe(n+1)=1.058012e+002; krok(n+1)=6.710813e-001; ng(n+1)=3.655560e+002;
n=17; farx(n+1)=1.852400e+001; foe(n+1)=9.566411e+001; krok(n+1)=9.826030e-001; ng(n+1)=1.236736e+003;
n=18; farx(n+1)=1.500284e+001; foe(n+1)=8.918378e+001; krok(n+1)=4.698917e-001; ng(n+1)=2.020780e+003;
n=19; farx(n+1)=1.233163e+001; foe(n+1)=8.071413e+001; krok(n+1)=4.995470e-001; ng(n+1)=4.261208e+002;
n=20; farx(n+1)=1.037681e+001; foe(n+1)=7.450491e+001; krok(n+1)=1.981558e-001; ng(n+1)=2.259798e+003;
n=21; farx(n+1)=8.675922e+000; foe(n+1)=6.815594e+001; krok(n+1)=2.162376e-001; ng(n+1)=1.981925e+003;
n=22; farx(n+1)=7.465379e+000; foe(n+1)=6.339709e+001; krok(n+1)=3.881773e-001; ng(n+1)=8.787739e+002;
n=23; farx(n+1)=6.825379e+000; foe(n+1)=6.206236e+001; krok(n+1)=6.202698e-001; ng(n+1)=1.449779e+003;
n=24; farx(n+1)=6.506139e+000; foe(n+1)=5.623570e+001; krok(n+1)=2.172575e+000; ng(n+1)=2.309087e+002;
n=25; farx(n+1)=5.848313e+000; foe(n+1)=5.458989e+001; krok(n+1)=9.168184e-001; ng(n+1)=1.310458e+003;
%odnowa zmiennej metryki
n=26; farx(n+1)=5.725246e+000; foe(n+1)=5.435884e+001; krok(n+1)=3.332727e-006; ng(n+1)=6.300220e+002;
n=27; farx(n+1)=5.553090e+000; foe(n+1)=5.359408e+001; krok(n+1)=9.392863e-006; ng(n+1)=5.807600e+002;
n=28; farx(n+1)=5.683493e+000; foe(n+1)=5.328441e+001; krok(n+1)=7.603543e-005; ng(n+1)=1.551688e+002;
n=29; farx(n+1)=5.123098e+000; foe(n+1)=5.177932e+001; krok(n+1)=3.400118e-003; ng(n+1)=4.668267e+001;
n=30; farx(n+1)=5.290201e+000; foe(n+1)=5.089214e+001; krok(n+1)=4.026836e-003; ng(n+1)=6.911552e+002;
n=31; farx(n+1)=5.063360e+000; foe(n+1)=5.069257e+001; krok(n+1)=5.608389e-003; ng(n+1)=1.619242e+003;
n=32; farx(n+1)=4.916908e+000; foe(n+1)=5.041014e+001; krok(n+1)=3.320390e-002; ng(n+1)=2.025699e+003;
n=33; farx(n+1)=4.940780e+000; foe(n+1)=4.939363e+001; krok(n+1)=8.328011e-001; ng(n+1)=1.860732e+003;
n=34; farx(n+1)=4.551241e+000; foe(n+1)=4.804814e+001; krok(n+1)=2.016487e+000; ng(n+1)=3.980950e+002;
n=35; farx(n+1)=4.533993e+000; foe(n+1)=4.766109e+001; krok(n+1)=4.041502e-001; ng(n+1)=3.146433e+002;
n=36; farx(n+1)=4.512719e+000; foe(n+1)=4.736280e+001; krok(n+1)=6.335709e-001; ng(n+1)=1.112487e+003;
n=37; farx(n+1)=4.338066e+000; foe(n+1)=4.703665e+001; krok(n+1)=2.208206e+000; ng(n+1)=4.493786e+002;
n=38; farx(n+1)=4.246002e+000; foe(n+1)=4.689543e+001; krok(n+1)=4.741921e-001; ng(n+1)=1.617212e+002;
n=39; farx(n+1)=4.186940e+000; foe(n+1)=4.683181e+001; krok(n+1)=6.400584e-001; ng(n+1)=4.580149e+002;
n=40; farx(n+1)=4.145971e+000; foe(n+1)=4.676719e+001; krok(n+1)=2.375710e+000; ng(n+1)=1.946349e+002;
n=41; farx(n+1)=4.151596e+000; foe(n+1)=4.674490e+001; krok(n+1)=7.470650e-001; ng(n+1)=9.091960e+001;
n=42; farx(n+1)=4.140135e+000; foe(n+1)=4.673952e+001; krok(n+1)=4.577617e-001; ng(n+1)=6.408947e+001;
n=43; farx(n+1)=4.118853e+000; foe(n+1)=4.673551e+001; krok(n+1)=1.184214e+000; ng(n+1)=5.480227e+001;
n=44; farx(n+1)=4.113303e+000; foe(n+1)=4.673388e+001; krok(n+1)=2.048868e+000; ng(n+1)=2.028127e+001;
n=45; farx(n+1)=4.081382e+000; foe(n+1)=4.673231e+001; krok(n+1)=3.629522e+000; ng(n+1)=3.001996e+001;
n=46; farx(n+1)=4.078337e+000; foe(n+1)=4.673191e+001; krok(n+1)=1.172218e+000; ng(n+1)=2.195180e+000;
n=47; farx(n+1)=4.076844e+000; foe(n+1)=4.673185e+001; krok(n+1)=6.776371e-001; ng(n+1)=1.938377e+001;
n=48; farx(n+1)=4.077373e+000; foe(n+1)=4.673185e+001; krok(n+1)=6.400584e-001; ng(n+1)=3.505991e+000;
n=49; farx(n+1)=4.078508e+000; foe(n+1)=4.673184e+001; krok(n+1)=2.306654e+000; ng(n+1)=1.228065e+000;
n=50; farx(n+1)=4.079034e+000; foe(n+1)=4.673184e+001; krok(n+1)=1.441640e+000; ng(n+1)=2.975300e-001;
%odnowa zmiennej metryki
n=51; farx(n+1)=4.079034e+000; foe(n+1)=4.673184e+001; krok(n+1)=7.285404e-007; ng(n+1)=4.251457e-002;
n=52; farx(n+1)=4.079035e+000; foe(n+1)=4.673184e+001; krok(n+1)=8.856543e-006; ng(n+1)=1.979187e-002;
n=53; farx(n+1)=4.079038e+000; foe(n+1)=4.673184e+001; krok(n+1)=3.406064e-005; ng(n+1)=3.936376e-003;
n=54; farx(n+1)=4.079044e+000; foe(n+1)=4.673184e+001; krok(n+1)=2.675703e-003; ng(n+1)=7.908019e-004;
n=55; farx(n+1)=4.079030e+000; foe(n+1)=4.673184e+001; krok(n+1)=3.903718e-002; ng(n+1)=3.115979e-004;
n=56; farx(n+1)=4.079014e+000; foe(n+1)=4.673184e+001; krok(n+1)=1.631060e-002; ng(n+1)=2.762919e-004;
n=57; farx(n+1)=4.079006e+000; foe(n+1)=4.673184e+001; krok(n+1)=5.637659e-002; ng(n+1)=1.497604e-004;
n=58; farx(n+1)=4.079006e+000; foe(n+1)=4.673184e+001; krok(n+1)=1.673040e-005; ng(n+1)=6.456232e-005;
n=59; farx(n+1)=4.079006e+000; foe(n+1)=4.673184e+001; krok(n+1)=3.189865e-006; ng(n+1)=6.456124e-005;
n=60; farx(n+1)=4.079006e+000; foe(n+1)=4.673184e+001; krok(n+1)=6.971545e-007; ng(n+1)=6.456103e-005;
n=61; farx(n+1)=4.079006e+000; foe(n+1)=4.673184e+001; krok(n+1)=9.862309e-009; ng(n+1)=6.456100e-005;
n=62; farx(n+1)=4.079006e+000; foe(n+1)=4.673184e+001; krok(n+1)=4.278812e-008; ng(n+1)=6.456096e-005;
n=63; farx(n+1)=4.079006e+000; foe(n+1)=4.673184e+001; krok(n+1)=5.375054e-007; ng(n+1)=6.456096e-005;
n=64; farx(n+1)=4.079006e+000; foe(n+1)=4.673184e+001; krok(n+1)=1.634490e-007; ng(n+1)=6.456090e-005;
n=65; farx(n+1)=4.079006e+000; foe(n+1)=4.673184e+001; krok(n+1)=5.177565e-007; ng(n+1)=6.456088e-005;
n=66; farx(n+1)=4.079006e+000; foe(n+1)=4.673184e+001; krok(n+1)=9.960973e-006; ng(n+1)=6.456084e-005;
n=67; farx(n+1)=4.079006e+000; foe(n+1)=4.673184e+001; krok(n+1)=2.993538e-006; ng(n+1)=6.456029e-005;
n=68; farx(n+1)=4.079006e+000; foe(n+1)=4.673184e+001; krok(n+1)=2.705540e-007; ng(n+1)=6.456007e-005;
n=69; farx(n+1)=4.079006e+000; foe(n+1)=4.673184e+001; krok(n+1)=1.768318e-009; ng(n+1)=6.456003e-005;
n=70; farx(n+1)=4.079006e+000; foe(n+1)=4.673184e+001; krok(n+1)=2.920361e-006; ng(n+1)=6.456004e-005;
n=71; farx(n+1)=4.079006e+000; foe(n+1)=4.673184e+001; krok(n+1)=8.653455e-007; ng(n+1)=6.455615e-005;
n=72; farx(n+1)=4.079006e+000; foe(n+1)=4.673184e+001; krok(n+1)=1.117235e-007; ng(n+1)=6.455605e-005;
 % z�y kierunek w metodzie zm - odnowa 
n=73; farx(n+1)=4.079006e+000; foe(n+1)=4.673184e+001; krok(n+1)=1.069939e-005; ng(n+1)=6.455603e-005;
n=74; farx(n+1)=4.079006e+000; foe(n+1)=4.673184e+001; krok(n+1)=6.042165e-006; ng(n+1)=8.564353e-004;
n=75; farx(n+1)=4.079006e+000; foe(n+1)=4.673184e+001; krok(n+1)=1.430061e-005; ng(n+1)=8.327754e-004;
%odnowa zmiennej metryki
n=76; farx(n+1)=4.079006e+000; foe(n+1)=4.673184e+001; krok(n+1)=1.081003e-006; ng(n+1)=8.349972e-004;
n=77; farx(n+1)=4.079006e+000; foe(n+1)=4.673184e+001; krok(n+1)=1.788002e-005; ng(n+1)=6.018658e-004;
n=78; farx(n+1)=4.079006e+000; foe(n+1)=4.673184e+001; krok(n+1)=1.092153e-005; ng(n+1)=5.978621e-004;
n=79; farx(n+1)=4.079006e+000; foe(n+1)=4.673184e+001; krok(n+1)=4.976235e-006; ng(n+1)=5.976735e-004;
n=80; farx(n+1)=4.079006e+000; foe(n+1)=4.673184e+001; krok(n+1)=1.700749e-006; ng(n+1)=5.976719e-004;
n=81; farx(n+1)=4.079006e+000; foe(n+1)=4.673184e+001; krok(n+1)=2.194384e-011; ng(n+1)=5.976708e-004;
 % z�y kierunek w metodzie zm - odnowa 
 % z�y kierunek w metodzie zm po wykonaniu odnowy

figure; semilogy(farx,'b'); hold on; semilogy(foe,'r'); xlabel('Iteracje'); ylabel('Earx, Eoe'); legend('Earx','Eoe'); title('Uczenie predyktora OE');
figure; subplot(2,1,1); semilogy(krok); xlabel('Iteracje'); ylabel('Krok');
subplot(2,1,2); semilogy(ng); xlabel('Iteracje'); ylabel('Norma gradientu');
Earx=farx(n+1)
Eoe=foe(n+1)
