% X={'H1'	'H2'	'N1'	'N2'	'N3'	'N4'	'N5'	'N6'	'N7'	'N8'	'N9'	'N10'	'N11'	'N12'};
X=1:14;
Y_dis=[0.0257051318	0.0260940423	0.0246680371	0.0227790433	0.0188899383	0.0209826472	0.0274459692	0.0318536215	0.0340574476	0.0376132007	0.0299646277	0.0469840917	0.0468174158	0.0408911606;
2.64237177800916E-05	0.000607266	6.04079463754994E-06	0.0002142584	5.19594768185374E-05	0.0001798543	0.0001428307	0.0001501412	1.200442020717E-05	3.90537218979466E-05	7.29134510637602E-05	0.0013625043	0.0004710287	0.0001294804;
0.0180935978	0.0150934311	0.1380076671	0.0737818768	0.096523881	0.1142285683	0.1165805508	0.0731336926	0.0858751412	0.1058021742	0.0786154786	0.0833935219	0.057651351	0.0786339982;
5.43681806588556E-06	6.7514703071386E-05	0.0047663197	0.0001471676	0.0001955289	0.0034379777	0.0040042114	0.001811869	0.0011029507	0.0027251958	0.0017564822	0.0001363577	1.9830392616164E-05	0.0004254341];

Y_ang=[0.0457247625	0.0520584477	0.1224512473	0.0780969313	0.0665592533	0.063910958	0.0573920773	0.0548919384	0.0731707317	0.0836157564	0.0600403726	0.0678741412	0.088338241	0.0622071597;
0.0002998234	0.0007648103	0.0016974509	0.0001197489	0.0020559815	0.0013016024	0.0001307769	0.0001757726	0.0002139157	0.0007376221	9.38200949473194E-05	0.0005296031	0.0015829629	0.0001591422;
0.0359094024	0.0479656277	0.0984499139	0.0714484138	0.0697075763	0.0817452821	0.0825045836	0.0715965702	0.0900235198	0.0724855085	0.0860418171	0.0956349427	0.0711706206	0.0826897791;
8.24268537581556E-06	8.04081109411084E-05	0.0001460286	0.0006978275	0.0001400444	0.0002713954	0.0015943006	0.0010357457	0.0001614758	0.0006438411	0.0004964574	7.03915659238109E-05	0.0012906527	0.001094743];

disfig=figure(1)
errorbar(X,Y_dis(1,:),sqrt(Y_dis(2,:)))
hold on
errorbar(X,Y_dis(3,:),sqrt(Y_dis(4,:)))
title('Time spent at obj percentage Radius=50')
xlabel('Number of days')
ylabel('Percentage')
legend('Stimulus','Contextual')


angfig=figure(2)
errorbar(X,Y_ang(1,:),sqrt(Y_ang(2,:)))
hold on
errorbar(X,Y_ang(3,:),sqrt(Y_ang(4,:)))
title('Orientation at obj percentage Radius=+-15 degree')
xlabel('Number of days')
ylabel('Percentage')
legend('Stimulus','Contextual')


saveas(disfig,'Distance_compare.png')
saveas(angfig,'Angle_compare.png')