#N canvas -8 -8 1600 818 12;
#X obj 109 325 mtof;
#N canvas 512 287 1078 523 env 0;
#X obj 58 115 line~;
#X obj 49 41 bng 15 250 50 0 empty empty empty 17 7 0 10 -262144 -1
-1;
#X obj 88 78 pack 0 500;
#X floatatom 185 46 5 0 0 0 - - -;
#X obj 59 137 *~;
#X text 91 137 square the output;
#X obj 59 156 *~;
#X text 221 45 decay time;
#X msg 42 86 1 3;
#X obj 44 7 inlet;
#X obj 57 191 outlet~;
#X text 111 191 note the ~ !!;
#X obj 189 8 inlet;
#X obj 88 60 del 10;
#X connect 0 0 4 0;
#X connect 0 0 4 1;
#X connect 1 0 8 0;
#X connect 1 0 13 0;
#X connect 2 0 0 0;
#X connect 3 0 2 1;
#X connect 4 0 6 0;
#X connect 4 0 6 1;
#X connect 6 0 10 0;
#X connect 8 0 0 0;
#X connect 9 0 1 0;
#X connect 12 0 3 0;
#X connect 13 0 2 0;
#X restore 757 343 pd env;
#X floatatom 789 319 5 0 0 0 - - -;
#X text 833 319 decay time;
#N canvas 512 287 1078 523 env 0;
#X obj 58 115 line~;
#X obj 49 41 bng 15 250 50 0 empty empty empty 17 7 0 10 -262144 -1
-1;
#X obj 88 78 pack 0 500;
#X floatatom 185 46 5 0 0 0 - - -;
#X obj 59 137 *~;
#X text 91 137 square the output;
#X text 221 45 decay time;
#X obj 44 7 inlet;
#X obj 57 191 outlet~;
#X text 111 191 note the ~ !!;
#X obj 189 8 inlet;
#X msg 42 86 1;
#X obj 87 54 del 10;
#X connect 0 0 4 0;
#X connect 0 0 4 1;
#X connect 1 0 11 0;
#X connect 1 0 12 0;
#X connect 2 0 0 0;
#X connect 3 0 2 1;
#X connect 4 0 8 0;
#X connect 7 0 1 0;
#X connect 10 0 3 0;
#X connect 11 0 0 0;
#X connect 12 0 2 0;
#X restore 454 345 pd env;
#X floatatom 516 307 5 0 0 0 - - -;
#X text 557 335 decay time;
#X floatatom 497 375 5 0 0 0 - - -;
#X obj 111 236 t f b b, f 108;
#X obj 514 441 * 2;
#X obj 537 392 r filterOffset;
#X obj 789 287 r decayTime;
#X obj 521 282 r filterTime;
#X obj 605 509 r filterResonance;
#X obj 297 361 * 8;
#X obj 597 594 *~;
#X obj 314 318 r filterScale;
#X obj 115 556 *~;
#X floatatom 115 414 5 0 0 0 - - -;
#X obj 115 445 phasor~;
#X msg 210 479 \$1 20;
#X obj 210 508 line~;
#X text 165 271 Multiplicamos por \; 3 para obtener un \; intervalo
de 5a;
#X obj 115 474 -~ 0.5;
#X obj 442 397 *~ 4000;
#X floatatom 578 443 5 0 0 0 - - -;
#X obj 460 460 +~ 50;
#X obj 457 520 vcf~ 1, f 12;
#X obj 216 419 r volumen;
#X obj 112 152 inlet;
#X obj 999 350 cnv 15 300 200 empty empty empty 20 12 0 14 -233017
-66577 0;
#X obj 1092 376 hsl 128 15 2 500 0 0 filterScale ESCALA ESCALA -2 -8
0 12 -262144 -1 -1 0 1;
#X obj 1097 413 hsl 128 15 2 30 0 0 filterResonance RESONANCIA empty
-2 -8 0 10 -262144 -1 -1 0 1;
#X obj 1098 447 hsl 128 15 50 2000 0 0 decayTime DECAY empty -2 -8
0 10 -262144 -1 -1 0 1;
#X obj 1094 477 hsl 128 15 20 300 0 0 filterTime TIEMPOFILTRO empty
-2 -8 0 10 -262144 -1 -1 0 1;
#X obj 1102 508 hsl 128 15 0 1 0 0 volumen VOLUME empty -2 -8 0 10
-262144 -1 -1 0 1;
#X obj 1102 534 hsl 128 15 127 0 0 0 lfil LPS empty -2 -8 0 10 -262144
-1 -1 0 1;
#X obj 677 743 outlet~;
#X obj 784 619 mtof;
#X obj 790 578 r lfil;
#X obj 758 658 lop~;
#X floatatom 833 663 5 0 0 0 - - -;
#X obj 878 567 loadbang;
#X obj 897 611 bng 15 250 50 0 empty empty empty 17 7 0 10 -262144
-1 -1;
#X msg 892 643 127;
#X connect 0 0 9 0;
#X connect 0 0 14 0;
#X connect 0 0 18 0;
#X connect 1 0 15 1;
#X connect 2 0 1 1;
#X connect 4 0 24 0;
#X connect 5 0 4 1;
#X connect 7 0 24 1;
#X connect 8 0 0 0;
#X connect 8 1 4 0;
#X connect 8 2 1 0;
#X connect 9 0 26 0;
#X connect 10 0 9 1;
#X connect 11 0 2 0;
#X connect 12 0 5 0;
#X connect 13 0 27 2;
#X connect 14 0 7 0;
#X connect 15 0 40 0;
#X connect 16 0 14 1;
#X connect 17 0 27 0;
#X connect 18 0 19 0;
#X connect 19 0 23 0;
#X connect 20 0 21 0;
#X connect 21 0 17 1;
#X connect 23 0 17 0;
#X connect 24 0 26 0;
#X connect 26 0 27 1;
#X connect 27 1 15 0;
#X connect 28 0 20 0;
#X connect 29 0 8 0;
#X connect 38 0 40 1;
#X connect 38 0 41 0;
#X connect 39 0 38 0;
#X connect 40 0 37 0;
#X connect 42 0 43 0;
#X connect 43 0 44 0;
#X connect 44 0 38 0;
#X coords 0 818 1 817 400 400 0;
