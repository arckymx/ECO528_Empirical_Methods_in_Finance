*ECO 528
Project 3

Fama-French Three Factor Model;

*load data;
data ffm;
infile "capm.txt";
input date MRF SMB HML RF;
run;

data portfolio;
infile "portfolio.txt";
input date p1 p2 p3 p4 p5 p6 p7 p8 p9 p10;
run;




*Running time-series regression on CAPM;
data tmp;
set ffm;
set portfolio;
A = p1-RF;
B = p2-RF;
C = p3-RF;
D = p4-RF;
E = p5-RF;
F = p6-RF;
G = p7-RF;
H = p8-RF;
I = p9-RF;
J = p10-RF;
run;

model A = MRF;
model B = MRF;
model C = MRF;
model D = MRF;
model E = MRF;
model F = MRF;
model G = MRF;
model H = MRF;
model I = MRF;
model J = MRF;
run;

