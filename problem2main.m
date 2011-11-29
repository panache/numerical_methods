[x1 y1] = fdODE (4);
plot(x1,y1, '-r')
xy1 (:,1) = x1';
xy1 (:,2) = y1'
hold on
[x2 y2] = fdODE (8);
plot(x2,y2, 'b')
xy2 (:,1) = x2';
xy2 (:,2) = y2'
[x3 y3] = fdODE (16);
plot(x3,y3, 'g')
xy3 (:,1) = x3';
xy3 (:,2) = y3'
hold off