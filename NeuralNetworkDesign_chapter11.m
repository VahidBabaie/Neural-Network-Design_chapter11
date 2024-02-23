%Neural Network Design , 2nd edition
%chapter 11:Backpropagation , page:362-363 , figure 11.6
clc; clear; close all;
net = network(1,2,[1 ; 1],[1 ; 0],[0 0; 1 0],[0 1]);
net.inputs{1}.size=1;
net.layers{1}.size=2;
net.layers{2}.size=1;
net.layers{1}.transferFcn = 'logsig';
net.layers{2}.transferFcn = 'purelin';
net.IW={[10 ; 10];[]};
net.LW={[] [];[1 1]  []};
net.b={[-10;10];0};
p=-2:0.1:2;
for i=-1:0.5:1
net.LW={[] [];[i 1]  []};
f=sim(net,p);
subplot(2,2,1)
figure(1);
plot(p,f);
title('variations of w21');
hold on
end
for i=-1:0.5:1
net.LW={[] [];[i 1]  []};
f=sim(net,p);
subplot(2,2,1)
figure(1);
plot(p,f);
title('variations of w21');
hold on
end
for i=-1:0.5:1
net.LW={[] [];[1 i]  []};
f=sim(net,p);
subplot(2,2,2)
figure(1);
plot(p,f);
title('variations of w22');
hold on
end
for i=0:5:20
net.b={[-10;i];0};
f=sim(net,p);
subplot(2,2,3)
figure(1);
plot(p,f);
title('variations of b12');
hold on
end
for i=-1:0.5:1
net.b={[-10;10];i};
f=sim(net,p);
subplot(2,2,4)
figure(1);
plot(p,f);
title('variations of b2');
hold on
end
