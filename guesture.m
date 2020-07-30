import java.awt.Robot;
import java.awt.event.*
mouse  = Robot;
vid = videoinput('winvideo',1,'YUY2_640x480');
set(vid,'returnedcolorspace','RGB');
preview(vid);
screen = get(0,'ScreenSize');
for i = 1:1000
im = getsnapshot(vid);
im=flipdim(im,2);
[ys xs]= size(im);
r = im(:,:,1);
gr = rgb2gray(im);
red = imsubtract(r,gr);
bw = im2bw(red,0.20);
%imshow(bw);
bw = bwareaopen(bw,60);
%imshow(bw);
[B,L,N] = bwboundaries(bw);

N
s = regionprops(bw,'Centroid');

if (N == 1)
    x = s(1).Centroid(1);
y = s(1).Centroid(2);
%x = x * (screen(3) / xs) ;
%y = y * (screen(4) / ys) ;
x = x*(1360/640)
y = y *(768/480)
%x = x * (1366 / xs) ;
%y = y * (768 / ys) ;
'after'
x
y

%x = screen(3)-x;
x
y
    mouse.mouseMove(x,y);
elseif (N == 2)
    mouse.mousePress(InputEvent.BUTTON1_MASK);
    mouse.mouseRelease(InputEvent.BUTTON1_MASK);
end
end