%uczenie predyktora oe
clear all;
n=0; farx(n+1)=2.808763e+003; foe(n+1)=2.758662e+003; wspucz(n+1)=0.000000e+000; ng(n+1)=0.000000e+000;
%odnowa zmiennej metryki
n=1; farx(n+1)=1.836058e+003; foe(n+1)=1.738645e+003; krok(n+1)=5.236811e-004; ng(n+1)=2.222706e+003;
n=2; farx(n+1)=7.373545e+002; foe(n+1)=6.177465e+002; krok(n+1)=3.739948e-003; ng(n+1)=9.178534e+002;
n=3; farx(n+1)=8.191679e+002; foe(n+1)=4.979512e+002; krok(n+1)=4.658537e-004; ng(n+1)=1.794937e+003;
n=4; farx(n+1)=6.464085e+002; foe(n+1)=4.482484e+002; krok(n+1)=1.095618e-002; ng(n+1)=7.060743e+002;
n=5; farx(n+1)=4.428285e+002; foe(n+1)=4.161712e+002; krok(n+1)=3.127663e-003; ng(n+1)=4.203764e+002;
n=6; farx(n+1)=2.710849e+002; foe(n+1)=3.571428e+002; krok(n+1)=3.750453e-003; ng(n+1)=7.627647e+002;
n=7; farx(n+1)=2.486247e+002; foe(n+1)=3.537382e+002; krok(n+1)=1.526551e-004; ng(n+1)=8.520798e+002;
n=8; farx(n+1)=2.458188e+002; foe(n+1)=3.531087e+002; krok(n+1)=8.100612e-004; ng(n+1)=6.142644e+002;
n=9; farx(n+1)=2.612712e+002; foe(n+1)=3.441328e+002; krok(n+1)=2.432476e-002; ng(n+1)=5.821580e+002;
n=10; farx(n+1)=2.553778e+002; foe(n+1)=3.382507e+002; krok(n+1)=2.147336e-002; ng(n+1)=4.679929e+002;
n=11; farx(n+1)=2.560053e+002; foe(n+1)=3.228717e+002; krok(n+1)=7.045190e-002; ng(n+1)=4.722657e+002;
n=12; farx(n+1)=2.546192e+002; foe(n+1)=3.137239e+002; krok(n+1)=3.556863e-001; ng(n+1)=3.037737e+002;
n=13; farx(n+1)=1.083567e+002; foe(n+1)=2.519429e+002; krok(n+1)=3.772555e-001; ng(n+1)=2.346933e+002;
n=14; farx(n+1)=1.044774e+002; foe(n+1)=2.515329e+002; krok(n+1)=1.462416e-003; ng(n+1)=2.554484e+003;
n=15; farx(n+1)=9.786076e+001; foe(n+1)=2.450178e+002; krok(n+1)=1.927395e-001; ng(n+1)=2.910027e+003;
n=16; farx(n+1)=8.086961e+001; foe(n+1)=2.180539e+002; krok(n+1)=3.103642e-001; ng(n+1)=1.041952e+003;
n=17; farx(n+1)=7.090705e+001; foe(n+1)=2.033388e+002; krok(n+1)=2.031949e-001; ng(n+1)=3.171125e+003;
n=18; farx(n+1)=5.106061e+001; foe(n+1)=1.762450e+002; krok(n+1)=5.962886e-001; ng(n+1)=3.155307e+003;
n=19; farx(n+1)=3.300046e+001; foe(n+1)=1.374877e+002; krok(n+1)=6.236064e-001; ng(n+1)=3.827830e+003;
n=20; farx(n+1)=2.202416e+001; foe(n+1)=1.146722e+002; krok(n+1)=2.730638e-001; ng(n+1)=1.172863e+003;
n=21; farx(n+1)=1.390290e+001; foe(n+1)=9.510785e+001; krok(n+1)=1.051652e-001; ng(n+1)=2.039717e+003;
n=22; farx(n+1)=1.141874e+001; foe(n+1)=8.323668e+001; krok(n+1)=1.134226e-001; ng(n+1)=1.702086e+003;
n=23; farx(n+1)=1.102100e+001; foe(n+1)=6.694191e+001; krok(n+1)=4.065930e-001; ng(n+1)=3.112783e+003;
n=24; farx(n+1)=1.149719e+001; foe(n+1)=5.993092e+001; krok(n+1)=1.082372e-001; ng(n+1)=1.842008e+003;
n=25; farx(n+1)=1.134458e+001; foe(n+1)=4.967297e+001; krok(n+1)=3.739988e-001; ng(n+1)=9.390697e+002;
%odnowa zmiennej metryki
n=26; farx(n+1)=1.159884e+001; foe(n+1)=4.748530e+001; krok(n+1)=3.434616e-006; ng(n+1)=1.922653e+003;
n=27; farx(n+1)=1.064448e+001; foe(n+1)=4.585554e+001; krok(n+1)=5.745483e-005; ng(n+1)=5.289109e+002;
n=28; farx(n+1)=1.097057e+001; foe(n+1)=4.483681e+001; krok(n+1)=7.226122e-005; ng(n+1)=3.478122e+002;
n=29; farx(n+1)=1.094308e+001; foe(n+1)=3.917401e+001; krok(n+1)=1.934289e-003; ng(n+1)=1.869975e+002;
n=30; farx(n+1)=8.661948e+000; foe(n+1)=3.550172e+001; krok(n+1)=1.870456e-003; ng(n+1)=8.905651e+002;
n=31; farx(n+1)=8.267534e+000; foe(n+1)=3.489431e+001; krok(n+1)=2.827577e-003; ng(n+1)=9.623134e+002;
n=32; farx(n+1)=7.206450e+000; foe(n+1)=3.327692e+001; krok(n+1)=1.871346e-002; ng(n+1)=1.257705e+003;
n=33; farx(n+1)=6.403236e+000; foe(n+1)=3.163216e+001; krok(n+1)=8.402186e-003; ng(n+1)=2.222022e+003;
n=34; farx(n+1)=6.096665e+000; foe(n+1)=3.095392e+001; krok(n+1)=4.438543e-002; ng(n+1)=1.858144e+003;
n=35; farx(n+1)=5.807046e+000; foe(n+1)=3.049431e+001; krok(n+1)=6.247411e-002; ng(n+1)=1.698526e+003;
n=36; farx(n+1)=6.493371e+000; foe(n+1)=2.985839e+001; krok(n+1)=5.908701e-002; ng(n+1)=1.660786e+003;
n=37; farx(n+1)=5.802624e+000; foe(n+1)=2.773986e+001; krok(n+1)=4.810883e-001; ng(n+1)=9.726821e+002;
n=38; farx(n+1)=5.797777e+000; foe(n+1)=2.676556e+001; krok(n+1)=1.002692e+000; ng(n+1)=1.099393e+002;
n=39; farx(n+1)=5.770579e+000; foe(n+1)=2.638862e+001; krok(n+1)=6.749097e-001; ng(n+1)=6.706905e+002;
n=40; farx(n+1)=5.592688e+000; foe(n+1)=2.588108e+001; krok(n+1)=5.312625e-001; ng(n+1)=4.712291e+002;
n=41; farx(n+1)=5.185623e+000; foe(n+1)=2.512538e+001; krok(n+1)=1.119298e+000; ng(n+1)=2.138789e+002;
n=42; farx(n+1)=4.508258e+000; foe(n+1)=2.351213e+001; krok(n+1)=1.617795e+000; ng(n+1)=5.093233e+002;
n=43; farx(n+1)=4.208754e+000; foe(n+1)=2.318292e+001; krok(n+1)=3.332754e-001; ng(n+1)=6.167371e+002;
n=44; farx(n+1)=4.253651e+000; foe(n+1)=2.291929e+001; krok(n+1)=4.801921e-001; ng(n+1)=2.131057e+002;
n=45; farx(n+1)=4.182417e+000; foe(n+1)=2.275887e+001; krok(n+1)=5.317968e-001; ng(n+1)=1.642932e+002;
n=46; farx(n+1)=4.068848e+000; foe(n+1)=2.235022e+001; krok(n+1)=2.995027e+000; ng(n+1)=3.560996e+002;
n=47; farx(n+1)=3.019357e+000; foe(n+1)=2.123320e+001; krok(n+1)=1.762494e+000; ng(n+1)=3.456176e+002;
n=48; farx(n+1)=2.895128e+000; foe(n+1)=2.102874e+001; krok(n+1)=3.160606e-001; ng(n+1)=2.658790e+002;
n=49; farx(n+1)=2.590486e+000; foe(n+1)=2.080606e+001; krok(n+1)=8.551844e-001; ng(n+1)=8.126225e+001;
n=50; farx(n+1)=2.508992e+000; foe(n+1)=2.069012e+001; krok(n+1)=4.980566e-001; ng(n+1)=2.560958e+002;
%odnowa zmiennej metryki
n=51; farx(n+1)=2.500134e+000; foe(n+1)=2.065953e+001; krok(n+1)=1.539351e-006; ng(n+1)=3.237078e+002;
n=52; farx(n+1)=2.475987e+000; foe(n+1)=2.060952e+001; krok(n+1)=1.539716e-005; ng(n+1)=1.548198e+002;
n=53; farx(n+1)=2.512716e+000; foe(n+1)=2.059401e+001; krok(n+1)=1.697983e-004; ng(n+1)=2.049780e+001;
n=54; farx(n+1)=2.521204e+000; foe(n+1)=2.058250e+001; krok(n+1)=6.235827e-005; ng(n+1)=3.178111e+001;
n=55; farx(n+1)=2.462762e+000; foe(n+1)=2.041297e+001; krok(n+1)=9.457647e-003; ng(n+1)=1.498972e+001;
n=56; farx(n+1)=2.438288e+000; foe(n+1)=2.025094e+001; krok(n+1)=5.414124e-003; ng(n+1)=1.291649e+002;
n=57; farx(n+1)=2.460253e+000; foe(n+1)=2.020584e+001; krok(n+1)=1.025657e-002; ng(n+1)=9.947940e+001;
n=58; farx(n+1)=2.586707e+000; foe(n+1)=2.017095e+001; krok(n+1)=8.973318e-002; ng(n+1)=2.229707e+002;
n=59; farx(n+1)=2.511436e+000; foe(n+1)=2.014128e+001; krok(n+1)=1.606640e-001; ng(n+1)=2.560122e+002;
n=60; farx(n+1)=2.443143e+000; foe(n+1)=2.011589e+001; krok(n+1)=1.827549e-001; ng(n+1)=2.657838e+002;
n=61; farx(n+1)=2.184086e+000; foe(n+1)=1.986908e+001; krok(n+1)=2.401907e-001; ng(n+1)=3.071267e+002;
n=62; farx(n+1)=2.212000e+000; foe(n+1)=1.975071e+001; krok(n+1)=9.372047e-001; ng(n+1)=2.795381e+002;
n=63; farx(n+1)=2.041743e+000; foe(n+1)=1.962413e+001; krok(n+1)=8.658973e-001; ng(n+1)=1.218988e+002;
n=64; farx(n+1)=1.855353e+000; foe(n+1)=1.946952e+001; krok(n+1)=3.083795e-001; ng(n+1)=4.218103e+002;
n=65; farx(n+1)=1.671045e+000; foe(n+1)=1.919826e+001; krok(n+1)=7.713740e-001; ng(n+1)=2.684045e+002;
n=66; farx(n+1)=1.583157e+000; foe(n+1)=1.892976e+001; krok(n+1)=6.930078e-001; ng(n+1)=4.330452e+002;
n=67; farx(n+1)=1.465277e+000; foe(n+1)=1.872161e+001; krok(n+1)=2.507212e-001; ng(n+1)=3.130192e+002;
n=68; farx(n+1)=1.476794e+000; foe(n+1)=1.858644e+001; krok(n+1)=2.857373e-001; ng(n+1)=5.168212e+002;
n=69; farx(n+1)=1.438605e+000; foe(n+1)=1.836733e+001; krok(n+1)=4.352152e-001; ng(n+1)=1.689662e+002;
n=70; farx(n+1)=1.490291e+000; foe(n+1)=1.807850e+001; krok(n+1)=5.813025e-001; ng(n+1)=7.084129e+002;
n=71; farx(n+1)=1.536617e+000; foe(n+1)=1.795415e+001; krok(n+1)=3.337297e-001; ng(n+1)=6.556296e+002;
n=72; farx(n+1)=1.465358e+000; foe(n+1)=1.782872e+001; krok(n+1)=5.520515e-001; ng(n+1)=6.091845e+002;
n=73; farx(n+1)=1.483279e+000; foe(n+1)=1.765271e+001; krok(n+1)=9.372047e-001; ng(n+1)=2.212773e+002;
n=74; farx(n+1)=1.465221e+000; foe(n+1)=1.756029e+001; krok(n+1)=5.431439e-001; ng(n+1)=1.189698e+002;
n=75; farx(n+1)=1.449621e+000; foe(n+1)=1.741891e+001; krok(n+1)=1.083912e+000; ng(n+1)=1.700899e+002;
%odnowa zmiennej metryki
n=76; farx(n+1)=1.449447e+000; foe(n+1)=1.741617e+001; krok(n+1)=6.820257e-007; ng(n+1)=1.399829e+002;
n=77; farx(n+1)=1.447719e+000; foe(n+1)=1.740705e+001; krok(n+1)=5.445135e-006; ng(n+1)=9.350544e+001;
n=78; farx(n+1)=1.443237e+000; foe(n+1)=1.740476e+001; krok(n+1)=1.240203e-005; ng(n+1)=3.067177e+001;
n=79; farx(n+1)=1.419070e+000; foe(n+1)=1.738641e+001; krok(n+1)=1.813010e-004; ng(n+1)=2.409267e+001;
n=80; farx(n+1)=1.413639e+000; foe(n+1)=1.736665e+001; krok(n+1)=2.957764e-003; ng(n+1)=1.891720e+001;
n=81; farx(n+1)=1.412273e+000; foe(n+1)=1.735703e+001; krok(n+1)=6.970444e-003; ng(n+1)=1.092147e+001;
n=82; farx(n+1)=1.415854e+000; foe(n+1)=1.734828e+001; krok(n+1)=8.751130e-003; ng(n+1)=2.736015e+001;
n=83; farx(n+1)=1.369279e+000; foe(n+1)=1.731340e+001; krok(n+1)=3.040838e-002; ng(n+1)=7.508238e+001;
n=84; farx(n+1)=1.381908e+000; foe(n+1)=1.730435e+001; krok(n+1)=1.843937e-002; ng(n+1)=8.780918e+001;
n=85; farx(n+1)=1.359302e+000; foe(n+1)=1.727997e+001; krok(n+1)=8.172294e-002; ng(n+1)=1.088444e+002;
n=86; farx(n+1)=1.363464e+000; foe(n+1)=1.726039e+001; krok(n+1)=7.897489e-002; ng(n+1)=1.392415e+002;
n=87; farx(n+1)=1.353526e+000; foe(n+1)=1.722864e+001; krok(n+1)=2.954614e+000; ng(n+1)=1.907871e+002;
n=88; farx(n+1)=1.320675e+000; foe(n+1)=1.719644e+001; krok(n+1)=1.139125e+000; ng(n+1)=2.875820e+002;
n=89; farx(n+1)=1.241020e+000; foe(n+1)=1.708808e+001; krok(n+1)=2.308897e+000; ng(n+1)=1.268855e+002;
n=90; farx(n+1)=1.224604e+000; foe(n+1)=1.702865e+001; krok(n+1)=4.536903e-001; ng(n+1)=4.502999e+002;
n=91; farx(n+1)=1.177400e+000; foe(n+1)=1.693244e+001; krok(n+1)=7.296149e-001; ng(n+1)=2.062318e+002;
n=92; farx(n+1)=1.146570e+000; foe(n+1)=1.682066e+001; krok(n+1)=5.045340e-001; ng(n+1)=6.888484e+002;
n=93; farx(n+1)=1.176691e+000; foe(n+1)=1.672646e+001; krok(n+1)=9.001093e-001; ng(n+1)=1.911394e+002;
n=94; farx(n+1)=1.119999e+000; foe(n+1)=1.661114e+001; krok(n+1)=8.067975e-001; ng(n+1)=2.318778e+002;
n=95; farx(n+1)=1.080780e+000; foe(n+1)=1.655844e+001; krok(n+1)=1.112649e+000; ng(n+1)=3.951668e+002;
n=96; farx(n+1)=1.066482e+000; foe(n+1)=1.651186e+001; krok(n+1)=9.001093e-001; ng(n+1)=1.646281e+002;
n=97; farx(n+1)=1.060432e+000; foe(n+1)=1.646202e+001; krok(n+1)=1.096368e+000; ng(n+1)=4.145432e+002;
n=98; farx(n+1)=1.082013e+000; foe(n+1)=1.644945e+001; krok(n+1)=3.035584e-001; ng(n+1)=3.571338e+002;
n=99; farx(n+1)=1.081136e+000; foe(n+1)=1.644073e+001; krok(n+1)=7.571530e-001; ng(n+1)=9.682081e+001;
n=100; farx(n+1)=1.065644e+000; foe(n+1)=1.643458e+001; krok(n+1)=6.698571e-001; ng(n+1)=2.367639e+002;

figure; semilogy(farx,'b'); hold on; semilogy(foe,'r'); xlabel('Iteracje'); ylabel('Earx, Eoe'); legend('Earx','Eoe'); title('Uczenie predyktora OE');
figure; subplot(2,1,1); semilogy(krok); xlabel('Iteracje'); ylabel('Krok');
subplot(2,1,2); semilogy(ng); xlabel('Iteracje'); ylabel('Norma gradientu');
Earx=farx(n+1)
Eoe=foe(n+1)