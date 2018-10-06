function Hsuan()
 global A B C D E p1 q1 p2 q2 p3 q3 s1 s2 s3 s4 s5 s6 z1 z2 z3 z4 z5 x1 x2 x3 x4 x5 aa desktop1 desktop2 desktop3
figure('Name','多選猜題','NumberTitle','off','position',[300,50,800,600]);

desktop1=imread('desktop1.jpg');
desktop2=imread('desktop2.jpg');
desktop3=imread('desktop3.jpg');

image(desktop1)  
axis off
pause(0.4)
image(desktop2)  
axis off
pause(0.2)
image(desktop3)  
axis off
pause(0.6)
image(desktop2)  
axis off
pause(0.4)
image(desktop1)  
axis off
pause(0.4)
image(desktop2)  
axis off
pause(0.2)
image(desktop3)  
axis off
pause(0.6)
image(desktop2)  
axis off
pause(0.4)
image(desktop1)  
axis off
pause(0.4)

z1=uicontrol('style','frame','position',[160,428,121,33]);
z2=uicontrol('style','frame','position',[160,378,121,33]);
z3=uicontrol('style','frame','position',[160,328,121,33]);
z4=uicontrol('style','frame','position',[160,278,121,33]);
z5=uicontrol('style','frame','position',[160,228,121,33]);

x1=uicontrol('style','text','position',[161,430,30,30],'string',' A','fontsize',17);
x2=uicontrol('style','text','position',[161,380,30,30],'string',' B','fontsize',17);
x3=uicontrol('style','text','position',[161,330,30,30],'string',' C','fontsize',17);
x4=uicontrol('style','text','position',[161,280,30,30],'string',' D','fontsize',17);
x5=uicontrol('style','text','position',[161,230,30,30],'string',' E','fontsize',17);

A=uicontrol('style','popup','position',[200,400,80,60],'string',' |True|False','fontsize',12);
B=uicontrol('style','popup','position',[200,350,80,60],'string',' |True|False','fontsize',12);
C=uicontrol('style','popup','position',[200,300,80,60],'string',' |True|False','fontsize',12);
D=uicontrol('style','popup','position',[200,250,80,60],'string',' |True|False','fontsize',12);
E=uicontrol('style','popup','position',[200,200,80,60],'string',' |True|False','fontsize',12);

s1=uicontrol('style','frame','position',[449,349,102,32],'visible','off');
s2=uicontrol('style','frame','position',[550,349,103,32],'visible','off');
s3=uicontrol('style','frame','position',[449,318,102,32],'visible','off');
s4=uicontrol('style','frame','position',[550,318,103,32],'visible','off');
s5=uicontrol('style','frame','position',[449,287,102,32],'visible','off');
s6=uicontrol('style','frame','position',[550,287,103,32],'visible','off');

p1=uicontrol('style','text','position',[450,350,100,30],'string','','fontsize',17,'visible','off');
q1=uicontrol('style','text','position',[552,350,100,30],'string','','fontsize',17,'visible','off');
p2=uicontrol('style','text','position',[450,319,100,30],'string','','fontsize',17,'visible','off');
q2=uicontrol('style','text','position',[552,319,100,30],'string','','fontsize',17,'visible','off');
p3=uicontrol('style','text','position',[450,288,100,30],'string','','fontsize',17,'visible','off');
q3=uicontrol('style','text','position',[552,288,100,30],'string','','fontsize',17,'visible','off');

aa=uicontrol('style','push','position', [160,140,120,60],'string','計算答案','background',[0.9 0.45 0.1],'fontsize',18,'fontname','標楷體','callback',{@test});


function test(~,~)
global A B C D E p1 q1 p2 q2 p3 q3 s1 s2 s3 s4 s5 s6 z1 z2 z3 z4 z5 x1 x2 x3 x4 x5 aa desktop1 desktop2 desktop3
map1=imread('map1.jpg');
map2=imread('map2.jpg');
map3=imread('map3.jpg');
map4=imread('map4.jpg');
map5=imread('map5.jpg');
map6=imread('map6.jpg');
map7=imread('map7.jpg');

set([A B C D E p1 q1 p2 q2 p3 q3 s1 s2 s3 s4 s5 s6 z1 z2 z3 z4 z5 x1 x2 x3 x4 x5 aa],'visible','off')

image(map1)
axis off
pause(0.1)
image(map2)
axis off
pause(0.1)
image(map3)
axis off
pause(0.1)
image(map4)
axis off
pause(0.1)
image(map5)
axis off
pause(0.1)
image(map6)
axis off
pause(0.1)
image(map7)
axis off
pause(0.1)
image(desktop1)
axis off

Z1=zeros(26,1);
Z2=zeros(26,1);
Z3=zeros(26,1);
Z4=zeros(26,1);
Z5=zeros(26,1);

switch get(A,'value')
    case 1
        a = 2;
    case 2
        a = 1;
    case 3
        a = 0;
end
switch get(B,'value')
    case 1
        b = 2;
    case 2
        b = 1;
    case 3
        b = 0;
end
switch get(C,'value')
    case 1
        c = 2;
    case 2 
        c = 1;
    case 3
        c = 0;
end
    
switch get(D,'value')
    case 1
        d = 2;
    case 2
        d = 1;
    case 3
        d = 0;
end
switch get(E,'value')
    case 1
        e = 2;
    case 2
        e = 1;
    case 3
        e = 0;
end

if a==1   
    Z1([1 2 3 4 11 12 13 14 15 16 21 22 23 24 26]) = 1;
end
if b==1
    Z2([1 5 6 7 11 12 13 17 18 19 21 22 23 25 26]) = 1;
end
if c==1
    Z3([2 5 8 9 11 14 15 17 18 20 21 22 24 25 26]) = 1;
end
if d==1
    Z4([3 6 8 10 12 14 16 17 19 20 21 23 24 25 26]) = 1;
end
if e==1
    Z5([4 7 9 10 13 15 16 18 19 20 22 23 24 25 26]) = 1;
end

 if a == 0
     Z1 = ones(26,1);
     Z1([1 2 3 4 11 12 13 14 15 16 21 22 23 24 26]) = 0;
 end
 if b == 0
     Z2 = ones(26,1);
     Z2([1 5 6 7 11 12 13 17 18 19 21 22 23 25 26]) = 0;
 end
 if c == 0
     Z3 = ones(26,1);
     Z3([2 5 8 9 11 14 15 17 18 20 21 22 24 25 26]) = 0;
 end
 if d == 0
     Z4 = ones(26,1);
     Z4([3 6 8 10 12 14 16 17 19 20 21 23 24 25 26]) = 0;
 end
 if e == 0
     Z5 = ones(26,1);
     Z5([4 7 9 10 13 15 16 18 19 20 22 23 24 25 26]) = 0;
 end
 
 if a==2
     Z1 = ones(26,1);
 end
 if b==2
     Z2 = ones(26,1);
 end
 if c==2
     Z3 = ones(26,1);
 end
 if d==2
     Z4 = ones(26,1);
 end
 if e==2
     Z5 = ones(26,1);
 end

NAME={'AB';'AC';'AD';'AE';'BC';'BD';'BE';'CD';'CE';'DE';'ABC';'ABD';'ABE';'ACD';'ACE';'ADE';...
    'BCD';'BCE';'BDE';'CDE';'ABCD';'ABCE';'ABDE';'ACDE';'BCDE';'ABCDE'};
Z=(Z1&Z2&Z3&Z4&Z5);
P=[14;18;24;22;12;31;22;18;18;23;8;14;13;7;17;15;7;11;11;9;1;6;7;3;6;3];
T=Z.*P;
[M,N]=sort(T);
H1=M(26)/sum(T);
G1=NAME(N(26));
H2=M(25)/sum(T);
G2=NAME(N(25));
H3=M(24)/sum(T);
G3=NAME(N(24));

set([A B C D E p1 q1 p2 q2 p3 q3 s1 s2 s3 s4 s5 s6 z1 z2 z3 z4 z5 x1 x2 x3 x4 x5 aa],'visible','on')

set(q1,'string',sprintf('%6.3g%%',100*H1))
set(p1,'string',sprintf('%c',G1{:}))
set(q2,'string',sprintf('%6.3g%%',100*H2))
set(p2,'string',sprintf('%c',G2{:}))
set(q3,'string',sprintf('%6.3g%%',100*H3))
set(p3,'string',sprintf('%c',G3{:}))

if M(25)==0
    set(q2,'string',sprintf('-----'))
    set(p2,'string',sprintf('-----'))
end
if M(24)==0
    set(q3,'string',sprintf('-----'))
    set(p3,'string',sprintf('-----'))
end

image(desktop2)
axis off
pause(0.3)
image(desktop3)  
axis off
pause(0.7)
image(desktop2)  
axis off
pause(0.5)
image(desktop1)  
axis off




































% if a == 1
%     Z([1 2 3 4 11 12 13 14 15 16 21 22 23 24 26]) = [14 18 24 22 8 14 13 7 11 9 1 6 7 3 3];
% end
% if b == 1
%     Z([1 5 6 7 11 12 13 17 18 19 21 22 23 25 26]) = [14 12 31 22 8 14 13 17 7 11 1 6 7 6 3];
% end
% if c == 1
%     Z([2 5 8 9 11 14 15 17 18 20 21 23 24 25 26]) = [18 12 18 18 8 7 11 17 7 15 1 7 3 6 3];
% end
% if d == 1
%     Z([3 6 8 10 12 14 16 17 17 20 21 22 24 25 26]) = [24 31 18 23 14 7 9 17 11 15 1 6 3 6 3];
% end
% if e == 1
%     Z([4 7 9 10 13 15 16 18 19 20 22 23 24 25 26]) = [22 22 18 23 13 11 9 7 11 15 6 7 3 6 3];
% end
% 
% if a == 0
%     Z([1 2 3 4 11 12 13 14 15 16 21 22 23 24 26]) = 0;
% end
% if b == 0
%     Z([1,5,6,7,11,12,13,17,18,19,21,22,23,25,26]) = 0;
% end
% if c == 0
%     Z([2 5 8 9 11 14 15 17 18 20 21 23 24 25 26]) = 0;
% end
% if d == 0
%     Z([3 6 8 10 12 14 16 17 19 20 21 22 24 25 26]) = 0;
% end
% if e == 0
%     Z([4 7 9 10 13 15 16 18 19 20 22 23 24 25 26]) = 0;
% end
%     

% S=[a;b;c;d;e];
% Z=ones(26,5)
% M=...
% [14 14 0 0 0;
% 18 0 18 0 0;
% 24 0 0 24 0;
% 22 0 0 0 22;
% 0 12 12 0 0;
% 0 31 0 31 0;
% 0 22 0 0 22;
% 0 0 18 18 0;
% 0 0 18 0 18;
% 0 0 0 23 23;
% 8 8 8 0 0;
% 14 14 0 14 0;
% 13 13 0 0 13;
% 7 0 7 7 0;
% 11 0 11 0 11;
% 9 0 0 9 9;
% 0 17 17 17 0;
% 0 7 7 0 7;
% 0 11 0 11 11;
% 0 0 15 15 15;
% 1 1 1 1 0;
% 6 6 6 0 6;
% 7 7 0 7 7;
% 3 0 3 3 3;
% 0 6 6 6 6;
% 3 3 3 3 3];
% 
% M * S
% 
% [1 2 3 4 11 12 13 14 15 16 21 22 23 24 26]
% 
% [1 5 6 7 11 12 13 17 18 19 21 22 23 25 26]
% 
% [2 5 8 9 11 14 15 17 18 20 21 23 24 25 26]
% 
% [3 6 8 10 12 14 16 17 17 20 21 22 24 25 26]
% 
% [4 7 9 10 13 15 16 18 19 20 22 23 24 25 26]
% 
% Z=[14;18;24;22;12;31;22;18;18;23;8;14;13;7;11;9;17;7;11;15;1;6;7;3;6;3];

