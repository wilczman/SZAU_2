%uczenie predyktora oe
clear all;
n=0; farx(n+1)=2.655708e+003; foe(n+1)=2.679512e+003; wspucz(n+1)=0.000000e+000; ng(n+1)=0.000000e+000;
%odnowa zmiennej metryki
n=1; farx(n+1)=1.711604e+003; foe(n+1)=1.745536e+003; krok(n+1)=4.981850e-004; ng(n+1)=3.422117e+003;
n=2; farx(n+1)=5.997364e+002; foe(n+1)=6.663921e+002; krok(n+1)=3.036370e-003; ng(n+1)=1.455221e+003;
n=3; farx(n+1)=6.445499e+002; foe(n+1)=5.360629e+002; krok(n+1)=1.915864e-004; ng(n+1)=4.039308e+003;
n=4; farx(n+1)=8.342084e+002; foe(n+1)=5.061417e+002; krok(n+1)=7.068748e-004; ng(n+1)=3.441046e+003;
n=5; farx(n+1)=5.372096e+002; foe(n+1)=4.487395e+002; krok(n+1)=8.184069e-003; ng(n+1)=6.558776e+002;
n=6; farx(n+1)=4.680808e+002; foe(n+1)=4.362735e+002; krok(n+1)=4.035733e-004; ng(n+1)=2.500183e+003;
n=7; farx(n+1)=4.204175e+001; foe(n+1)=2.282719e+002; krok(n+1)=5.282995e-003; ng(n+1)=3.154931e+003;
n=8; farx(n+1)=4.075228e+001; foe(n+1)=2.278036e+002; krok(n+1)=5.806443e-007; ng(n+1)=2.004880e+004;
n=9; farx(n+1)=4.314440e+001; foe(n+1)=2.270195e+002; krok(n+1)=4.079127e-004; ng(n+1)=2.057411e+004;
n=10; farx(n+1)=4.198556e+001; foe(n+1)=2.256647e+002; krok(n+1)=6.731903e-004; ng(n+1)=2.037554e+004;
n=11; farx(n+1)=4.039224e+001; foe(n+1)=2.010410e+002; krok(n+1)=1.486749e-003; ng(n+1)=2.009631e+004;
n=12; farx(n+1)=3.945071e+001; foe(n+1)=1.993393e+002; krok(n+1)=1.314970e-004; ng(n+1)=8.573338e+003;
n=13; farx(n+1)=3.916625e+001; foe(n+1)=1.971283e+002; krok(n+1)=1.078226e-003; ng(n+1)=6.867546e+003;
n=14; farx(n+1)=4.345498e+001; foe(n+1)=1.702118e+002; krok(n+1)=1.758026e-003; ng(n+1)=6.869813e+003;
n=15; farx(n+1)=4.325489e+001; foe(n+1)=1.651913e+002; krok(n+1)=1.078226e-003; ng(n+1)=1.887327e+003;
n=16; farx(n+1)=4.345556e+001; foe(n+1)=1.610317e+002; krok(n+1)=1.573435e-003; ng(n+1)=4.401862e+003;
n=17; farx(n+1)=4.035960e+001; foe(n+1)=1.554859e+002; krok(n+1)=3.059399e-003; ng(n+1)=1.802421e+003;
n=18; farx(n+1)=3.684758e+001; foe(n+1)=1.476694e+002; krok(n+1)=5.557598e-003; ng(n+1)=2.410909e+003;
n=19; farx(n+1)=3.643850e+001; foe(n+1)=1.435607e+002; krok(n+1)=1.573799e-004; ng(n+1)=4.851540e+003;
n=20; farx(n+1)=3.007053e+001; foe(n+1)=1.384675e+002; krok(n+1)=4.606611e-003; ng(n+1)=2.869812e+003;
n=21; farx(n+1)=2.513003e+001; foe(n+1)=1.327900e+002; krok(n+1)=2.444561e-003; ng(n+1)=2.629105e+003;
n=22; farx(n+1)=2.076044e+001; foe(n+1)=1.267995e+002; krok(n+1)=3.096185e-003; ng(n+1)=4.518305e+003;
n=23; farx(n+1)=1.910009e+001; foe(n+1)=1.215156e+002; krok(n+1)=3.514634e-003; ng(n+1)=4.478356e+003;
n=24; farx(n+1)=1.802730e+001; foe(n+1)=1.181650e+002; krok(n+1)=2.841023e-003; ng(n+1)=2.701985e+003;
n=25; farx(n+1)=1.808955e+001; foe(n+1)=1.158808e+002; krok(n+1)=1.958383e-003; ng(n+1)=2.438673e+003;
%odnowa zmiennej metryki
n=26; farx(n+1)=1.811832e+001; foe(n+1)=1.133458e+002; krok(n+1)=2.621559e-006; ng(n+1)=4.590054e+003;
n=27; farx(n+1)=1.904458e+001; foe(n+1)=1.054339e+002; krok(n+1)=9.479621e-006; ng(n+1)=3.784401e+003;
n=28; farx(n+1)=1.964679e+001; foe(n+1)=9.579370e+001; krok(n+1)=8.683747e-005; ng(n+1)=1.759261e+003;
n=29; farx(n+1)=1.901627e+001; foe(n+1)=8.570188e+001; krok(n+1)=1.891762e-004; ng(n+1)=1.160041e+003;
n=30; farx(n+1)=1.739873e+001; foe(n+1)=7.739212e+001; krok(n+1)=1.874208e-004; ng(n+1)=1.491299e+003;
n=31; farx(n+1)=1.289681e+001; foe(n+1)=5.633373e+001; krok(n+1)=3.516052e-003; ng(n+1)=4.918356e+002;
n=32; farx(n+1)=1.187461e+001; foe(n+1)=5.214671e+001; krok(n+1)=7.101242e-004; ng(n+1)=5.139726e+003;
n=33; farx(n+1)=9.297848e+000; foe(n+1)=4.437735e+001; krok(n+1)=1.564230e-003; ng(n+1)=2.844647e+003;
n=34; farx(n+1)=7.757235e+000; foe(n+1)=3.796210e+001; krok(n+1)=9.589643e-004; ng(n+1)=4.585603e+003;
n=35; farx(n+1)=6.189281e+000; foe(n+1)=3.367323e+001; krok(n+1)=2.840497e-003; ng(n+1)=2.333840e+003;
n=36; farx(n+1)=5.579610e+000; foe(n+1)=3.186710e+001; krok(n+1)=1.564230e-003; ng(n+1)=4.465083e+003;
n=37; farx(n+1)=4.512329e+000; foe(n+1)=2.855889e+001; krok(n+1)=1.742666e-003; ng(n+1)=1.781849e+003;
n=38; farx(n+1)=4.112177e+000; foe(n+1)=2.747910e+001; krok(n+1)=2.144917e-003; ng(n+1)=2.137040e+003;
n=39; farx(n+1)=2.578870e+000; foe(n+1)=2.282131e+001; krok(n+1)=8.166461e-003; ng(n+1)=1.476210e+003;
n=40; farx(n+1)=2.470426e+000; foe(n+1)=2.168782e+001; krok(n+1)=2.063134e-003; ng(n+1)=1.687098e+003;
n=41; farx(n+1)=2.260550e+000; foe(n+1)=1.977441e+001; krok(n+1)=5.173682e-003; ng(n+1)=2.128825e+003;
n=42; farx(n+1)=2.131675e+000; foe(n+1)=1.843553e+001; krok(n+1)=3.621201e-003; ng(n+1)=1.288081e+003;
n=43; farx(n+1)=2.071741e+000; foe(n+1)=1.639790e+001; krok(n+1)=1.033570e-002; ng(n+1)=1.783664e+003;
n=44; farx(n+1)=1.871314e+000; foe(n+1)=1.454238e+001; krok(n+1)=7.931784e-003; ng(n+1)=6.002950e+002;
n=45; farx(n+1)=1.820491e+000; foe(n+1)=1.266944e+001; krok(n+1)=2.359135e-003; ng(n+1)=9.781166e+002;
n=46; farx(n+1)=1.905593e+000; foe(n+1)=1.218257e+001; krok(n+1)=1.231621e-003; ng(n+1)=7.615144e+002;
n=47; farx(n+1)=2.149438e+000; foe(n+1)=1.117160e+001; krok(n+1)=1.165911e-002; ng(n+1)=1.666602e+003;
n=48; farx(n+1)=2.477961e+000; foe(n+1)=9.980574e+000; krok(n+1)=1.193441e-002; ng(n+1)=1.591477e+003;
n=49; farx(n+1)=2.587421e+000; foe(n+1)=9.870512e+000; krok(n+1)=2.722891e-003; ng(n+1)=1.095138e+003;
n=50; farx(n+1)=2.789327e+000; foe(n+1)=8.998938e+000; krok(n+1)=3.598781e-002; ng(n+1)=8.173348e+002;
%odnowa zmiennej metryki
n=51; farx(n+1)=2.785582e+000; foe(n+1)=8.875856e+000; krok(n+1)=1.343288e-006; ng(n+1)=1.440462e+003;
n=52; farx(n+1)=2.802438e+000; foe(n+1)=8.557026e+000; krok(n+1)=2.322634e-005; ng(n+1)=5.540234e+002;
n=53; farx(n+1)=2.803629e+000; foe(n+1)=8.465617e+000; krok(n+1)=7.901973e-006; ng(n+1)=4.513723e+002;
n=54; farx(n+1)=2.761621e+000; foe(n+1)=8.395356e+000; krok(n+1)=6.079792e-005; ng(n+1)=1.701734e+002;
n=55; farx(n+1)=2.625501e+000; foe(n+1)=8.045939e+000; krok(n+1)=7.590926e-004; ng(n+1)=1.112651e+002;
n=56; farx(n+1)=2.304574e+000; foe(n+1)=6.908553e+000; krok(n+1)=4.290347e-003; ng(n+1)=1.598746e+002;
n=57; farx(n+1)=1.913630e+000; foe(n+1)=5.998376e+000; krok(n+1)=8.336543e-004; ng(n+1)=7.443105e+002;
n=58; farx(n+1)=1.668316e+000; foe(n+1)=5.276342e+000; krok(n+1)=1.700059e-003; ng(n+1)=2.310910e+003;
n=59; farx(n+1)=1.607735e+000; foe(n+1)=5.039345e+000; krok(n+1)=2.778799e-003; ng(n+1)=1.552019e+002;
n=60; farx(n+1)=1.490224e+000; foe(n+1)=4.669275e+000; krok(n+1)=4.266621e-003; ng(n+1)=1.115796e+003;
n=61; farx(n+1)=1.230818e+000; foe(n+1)=4.108405e+000; krok(n+1)=1.109636e-002; ng(n+1)=1.232045e+003;
n=62; farx(n+1)=8.055025e-001; foe(n+1)=3.179212e+000; krok(n+1)=4.795168e-003; ng(n+1)=6.333507e+002;
n=63; farx(n+1)=6.596236e-001; foe(n+1)=2.881620e+000; krok(n+1)=1.002892e-003; ng(n+1)=2.067033e+003;
n=64; farx(n+1)=6.390613e-001; foe(n+1)=2.763828e+000; krok(n+1)=4.247228e-003; ng(n+1)=6.960449e+002;
n=65; farx(n+1)=6.375912e-001; foe(n+1)=2.561896e+000; krok(n+1)=3.503934e-003; ng(n+1)=5.757118e+002;
n=66; farx(n+1)=6.365305e-001; foe(n+1)=2.190846e+000; krok(n+1)=3.303815e-003; ng(n+1)=1.805770e+003;
n=67; farx(n+1)=5.847187e-001; foe(n+1)=1.968891e+000; krok(n+1)=5.770731e-003; ng(n+1)=4.591254e+002;
n=68; farx(n+1)=5.624304e-001; foe(n+1)=1.867363e+000; krok(n+1)=4.080593e-003; ng(n+1)=6.708412e+002;
n=69; farx(n+1)=5.003937e-001; foe(n+1)=1.652597e+000; krok(n+1)=1.417782e-002; ng(n+1)=1.585838e+003;
n=70; farx(n+1)=4.983276e-001; foe(n+1)=1.626913e+000; krok(n+1)=5.945944e-003; ng(n+1)=5.664480e+002;
n=71; farx(n+1)=4.793493e-001; foe(n+1)=1.530126e+000; krok(n+1)=3.595838e-003; ng(n+1)=6.416512e+002;
n=72; farx(n+1)=4.201263e-001; foe(n+1)=1.396641e+000; krok(n+1)=2.085765e-002; ng(n+1)=1.202813e+003;
n=73; farx(n+1)=4.259750e-001; foe(n+1)=1.301563e+000; krok(n+1)=1.563153e-002; ng(n+1)=1.495016e+003;
n=74; farx(n+1)=3.444011e-001; foe(n+1)=1.045020e+000; krok(n+1)=2.107682e-002; ng(n+1)=2.040448e+003;
n=75; farx(n+1)=3.183385e-001; foe(n+1)=1.001705e+000; krok(n+1)=1.775074e-002; ng(n+1)=5.472652e+002;
%odnowa zmiennej metryki
n=76; farx(n+1)=3.189023e-001; foe(n+1)=9.802754e-001; krok(n+1)=1.661570e-006; ng(n+1)=4.477003e+002;
n=77; farx(n+1)=3.189617e-001; foe(n+1)=9.744433e-001; krok(n+1)=5.168497e-007; ng(n+1)=4.722146e+002;
n=78; farx(n+1)=3.144219e-001; foe(n+1)=9.232790e-001; krok(n+1)=5.823171e-005; ng(n+1)=1.418174e+002;
n=79; farx(n+1)=3.108183e-001; foe(n+1)=8.882653e-001; krok(n+1)=4.037383e-005; ng(n+1)=1.347719e+002;
n=80; farx(n+1)=3.056679e-001; foe(n+1)=8.383754e-001; krok(n+1)=3.176034e-005; ng(n+1)=1.951087e+002;
n=81; farx(n+1)=3.025967e-001; foe(n+1)=8.230196e-001; krok(n+1)=3.071657e-004; ng(n+1)=3.355907e+001;
n=82; farx(n+1)=2.562202e-001; foe(n+1)=7.579094e-001; krok(n+1)=3.050294e-003; ng(n+1)=3.057251e+001;
n=83; farx(n+1)=2.118495e-001; foe(n+1)=7.038194e-001; krok(n+1)=5.173682e-003; ng(n+1)=6.859451e+001;
n=84; farx(n+1)=2.148102e-001; foe(n+1)=6.866491e-001; krok(n+1)=5.557598e-003; ng(n+1)=2.733646e+002;
n=85; farx(n+1)=2.148042e-001; foe(n+1)=6.358184e-001; krok(n+1)=4.494346e-003; ng(n+1)=3.698233e+002;
n=86; farx(n+1)=2.098495e-001; foe(n+1)=6.082620e-001; krok(n+1)=7.876901e-003; ng(n+1)=3.467095e+002;
n=87; farx(n+1)=1.937927e-001; foe(n+1)=5.692779e-001; krok(n+1)=3.021288e-003; ng(n+1)=7.371535e+002;
n=88; farx(n+1)=1.783791e-001; foe(n+1)=5.412095e-001; krok(n+1)=1.392711e-002; ng(n+1)=5.261222e+002;
n=89; farx(n+1)=1.558539e-001; foe(n+1)=5.200353e-001; krok(n+1)=1.949868e-002; ng(n+1)=2.039963e+002;
n=90; farx(n+1)=1.358804e-001; foe(n+1)=5.010108e-001; krok(n+1)=2.490870e-002; ng(n+1)=3.001415e+002;
n=91; farx(n+1)=1.282728e-001; foe(n+1)=4.913255e-001; krok(n+1)=3.323730e-002; ng(n+1)=2.613235e+002;
n=92; farx(n+1)=1.273147e-001; foe(n+1)=4.728120e-001; krok(n+1)=2.284436e-002; ng(n+1)=1.331950e+002;
n=93; farx(n+1)=1.264528e-001; foe(n+1)=4.644438e-001; krok(n+1)=4.382471e-002; ng(n+1)=1.013752e+002;
n=94; farx(n+1)=1.213390e-001; foe(n+1)=4.458483e-001; krok(n+1)=1.238474e-002; ng(n+1)=2.118588e+002;
n=95; farx(n+1)=1.155987e-001; foe(n+1)=4.374422e-001; krok(n+1)=1.633292e-002; ng(n+1)=2.758459e+002;
n=96; farx(n+1)=9.176056e-002; foe(n+1)=4.141777e-001; krok(n+1)=5.082412e-002; ng(n+1)=1.932592e+002;
n=97; farx(n+1)=8.229214e-002; foe(n+1)=4.056687e-001; krok(n+1)=1.640862e-002; ng(n+1)=1.491445e+002;
n=98; farx(n+1)=7.748555e-002; foe(n+1)=3.983251e-001; krok(n+1)=1.251384e-002; ng(n+1)=2.852075e+002;
n=99; farx(n+1)=7.180335e-002; foe(n+1)=3.855013e-001; krok(n+1)=7.301859e-002; ng(n+1)=3.170414e+002;
n=100; farx(n+1)=7.197688e-002; foe(n+1)=3.717503e-001; krok(n+1)=7.835091e-002; ng(n+1)=2.051770e+002;

figure; semilogy(farx,'b'); hold on; semilogy(foe,'r'); xlabel('Iteracje'); ylabel('Earx, Eoe'); legend('Earx','Eoe'); title('Uczenie predyktora OE');
figure; subplot(2,1,1); semilogy(krok); xlabel('Iteracje'); ylabel('Krok');
subplot(2,1,2); semilogy(ng); xlabel('Iteracje'); ylabel('Norma gradientu');
Earx=farx(n+1)
Eoe=foe(n+1)
