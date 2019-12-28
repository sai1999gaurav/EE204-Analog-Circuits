*            d g s b 
.subckt ald1106 1 2 3 4 
m1 1 2 3 4 ncg l=7.8e-6 w=0.138e-3 as=0.603e-8 ps=0.478e-3 ad=0.161e-8
*+                                  nrd=.3 nrs=1 nrg=25 nrb=35
.ends

*  Four terminal integrated N-channel (.040 vos dist).
*

.param vtn=0.0
*.param cox=1.0
*.param pox=1.0
*.param ires=1.0

.model ncg  nmos  (level=2
+	gamma=1.09 
*+	vto={.750+vtn}    
+	vto=.750    
+             Uo=650     
+             Ucrit=0.7e4 Uexp=.1 Vmax=1.6e5
+             phi=.70 tpg=+1
*+             nsub={1e16*ires} neff={10*ires} nss=.7e11 nfs=1.17e11
*+             nsub=1e16*ires neff=10*ires nss=.7e11 nfs=1.17e11
+             nsub=1e16 neff=10 nss=.7e11 nfs=1.17e11
*+             tox={.055u*cox} 
+             tox=.055u
*+             Cgso={.94n*cox} Cgdo={.59n*cox} Cgbo={.138n*pox} Xqc=.42
+             Cgso=.94n Cgdo=.59n Cgbo=.138n Xqc=.42
+             cj=.39m cjsw=264p
+             xj=2.0u 
+	ld=1.6u 
+	wd=1.05u 
+            	pb=.9 js=20e-6  mj=.5 mjsw=0.18
+             kf=.75e-28 rsh=10 )
*--------------------------------------------------------
