%EJERCICIO 8
clear, clc, close all

A = [4 1; 12 2];
B = [0 3; -5 4];
C = [0 1 1; -1 2 -4; 2 -5 1];
D = [2 -2 1; -8 11 5; 4 -13 3];
E = [eps 1; 0 1];
H5 = hilb(5);

% a) 
    ba = ones(size(A,1),1);
    bb = ones(size(B,1),1);
    bc = ones(size(C,1),1);
    bd = ones(size(D,1),1);
    be = ones(size(E,1),1);
    bh5 = ones(size(H5,1),1);
    
    xa = Gauss(A, ba);
    xb = Gauss(B, bb);
    xc = Gauss(C, bc);
    xd = Gauss(D, bd);
    xe = Gauss(E, be);
    xh5 = Gauss(H5, bh5);
    
% b)
    ra = ba - A.*xa;
    rb = bb - B.*xb;
    rc = bc - C.*xc;
    rd = bd - D.*xd;
    re = be - E.*xe;
    rh5 = bh5 - H5.*xh5;
    
    fprintf(' norm1       norm2       normInf \n');
    nra1 = norm(ra,1);
    nra2 = norm(ra,2);
    nraI = norm(ra,Inf);
    fprintf(' %.4f     %.4f     %.4f\n', nra1, nra2, nraI);
    
    nrb1 = norm(rb,1);
    nrb2 = norm(rb,2);
    nrbI = norm(rb,Inf);
    fprintf(' %.4f      %.4f      %.4f\n', nrb1, nrb2, nrbI);
    
    nrc1 = norm(rc,1);
    nrc2 = norm(rc,2);
    nrcI = norm(rc,Inf);
    fprintf(' %.4f     %.4f      %.4f\n', nrc1, nrc2, nrcI);