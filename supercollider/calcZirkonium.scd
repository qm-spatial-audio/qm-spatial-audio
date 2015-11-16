~phi = [90.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 28.3, 27.2, 26.7, 27.5, -29, -30, -25.9, -27.8];

~theta = [0.0, 0.0, 41.9, 94.6, 150.6, -152.4, -94.5, -44, 0.0, 90.0, 180.0, -90.0, -45.0, 45.0, 135.0, -135.0];

~rho = [0.85, 2.46, 2.64, 1.78, 2.31, 2.22, 1.82, 2.6, 1.86, 1.93, 1.95, 1.97, 3.18, 3.03, 3.58, 3.38];

~maxRho = ~rho.maxItem;

~xyz = ~rho.collect({|rho, i|
	var sp = Spherical(rho.linlin(0, ~maxRho, 0, 1.0), ~theta[i]*(pi/180), ~phi[i]*(pi/180));
	[sp.x, sp.y, sp.z]
})

~xyz.do(_.postln)


[ 1.4538404738481e-17, 0, 0.23743016759777 ]

[ 0.68715083798883, 0, 0 ]
[ 0.54887778828219, 0.49247987330826, 0 ]
[ -0.039875442822729, 0.49560514068495, 0 ]
[ -0.56215192840437, 0.31675633263994, 0 ]
[ -0.54954523628304, -0.28729530669444, 0 ]
[ -0.039887026319742, -0.50681272273584, 0 ]
[ 0.52242555331857, -0.50450049251212, 0 ]

[ 0.45745471439303, 0, 0.24631398570604 ]
[ 2.9360284431489e-17, 0.47948983252855, 0.24642430145902 ]
[ -0.48661290705008, 5.9592893904267e-17, 0.24474079533547 ]
[ 2.9887733323906e-17, -0.48810372663718, 0.25409071733883 ]

[ 0.549349020193, -0.549349020193, -0.43064094759312 ]
[ 0.51829287155259, 0.51829287155259, -0.4231843575419 ]
[ -0.63608340556832, 0.63608340556832, -0.4368017883677 ]
[ -0.59054945155341, -0.59054945155341, -0.44033152076783 ]