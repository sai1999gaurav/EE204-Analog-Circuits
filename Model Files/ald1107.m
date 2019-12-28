*             d g s b/v+
.subckt ald1107 1 2 3 4 
mt 1 2 3 4 pcg l=7.8e-6 w=0.138e-3 as=0.603e-8 ps=0.478e-6 ad=0.161e-8
*+                                  nrd=.3 nrs=1 nrg=25 nrb=35
.ends

.param vtp=0.0
*.param cox=1.0
*.param pox=1.0
*.param ires=1.0

*  Four terminal integrated P-channel ( 40mv. vos dist)
*
.model pcg pmos (level=2
*+	vto={-.74+vtp} 
+	vto=-.74 
+             gamma=.58  
+             Uo=260  
+             Ucrit=1.0e4 Uexp=.16 Vmax=3.0e5
+             phi=.70 tpg=-1
+             nsub=1e16 Neff=1 nss=1e11 nfs=1.06e11
*+             tox={.055u*cox} 
+             tox=.055u 
*+             Cgso={.31n*cox} Cgdo={.39n*cox} Cgbo=.138n Xqc=.42
+             Cgso=.31n Cgdo=.39n Cgbo=.138n Xqc=.42
+             cj=.18m cjsw=322p
+             xj=1.2u ld=.96u wd=.5u pb=.9 js=20e-6 mj=.57 mjsw=0.33
+             kf=.75e-28  rsh=90 
*
*============================================================================







