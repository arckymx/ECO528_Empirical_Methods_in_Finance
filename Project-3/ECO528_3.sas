*ECO 528
Project 3

Fama-French Three Factor Model;


*load data;
data ffm;
infile "capm.txt";
input date MRF SMB HML RF;
run;

data port;
infile "portfolio.txt";
input date p1 p2 p3 p4 p5 p6 p7 p8 p9 p10;
run;

data tmp;
set ffm;
set port;



