clear;
clc;

trs1=load('TRS1.txt');
trs2=load('TRS2.txt');
trs3=load('TRS3.txt');

size(trs1)
size(trs2)
size(trs3)

t1=zeros;
c=1123;
k=1;
while(c<1483)
    t1(k,1)=k;
    t1(k,2)=trs1(c,2);
    t1(k,3)=trs1(c,3);
    t1(k,4)=trs1(c,4);
    t1(k,5)=trs1(c,5);
    k=k+1;
    c=c+1;
end
t2=zeros;
c=1123;
k=1;
while(c<1483)
    t2(k,1)=k;
    t2(k,2)=trs2(c,2);
    t2(k,3)=trs2(c,3);
    t2(k,4)=trs2(c,4);
    t2(k,5)=trs2(c,5);
    k=k+1;
    c=c+1;
end
t3=zeros;
c=1483;
k=1;
while(c<1843)
    t3(k,1)=k;
    t3(k,2)=trs3(c,2);
    t3(k,3)=trs3(c,3);
    t3(k,4)=trs3(c,4);
    t3(k,5)=trs3(c,5);
    k=k+1;
    c=c+1;
end

s1=size(t1)
s2=size(t2)
s3=size(t3)

%plot cl
figure(1);
plot(t1(:,1),t1(:,2),'k');
hold on;
xlabel('Ângulo azimutal em graus');
ylabel('Cl');
plot(t2(:,1),t2(:,2),'b');
plot(t3(:,1),t3(:,2),'r');
legend('TRS1=1.44','TRS2=2.64','TRS3=5.00');
grid on;
hold off;

%plot cd
figure(2);
plot(t1(:,1),t1(:,3),'k');
hold on;
xlabel('Ângulo azimutal em graus');
ylabel('Cd');
plot(t2(:,1),t2(:,3),'b');
plot(t3(:,1),t3(:,3),'r');
legend('TRS1=1.44','TRS2=2.64','TRS3=5.00');
grid on;
hold off;

%plot cm
figure(3);
plot(t1(:,1),t1(:,4),'k');
hold on;
xlabel('Ângulo azimutal em graus');
ylabel('Cm');
plot(t2(:,1),t2(:,4),'b');
plot(t3(:,1),t3(:,4),'r');
legend('TRS1=1.44','TRS2=2.64','TRS3=5.00');
grid on;
hold off;

