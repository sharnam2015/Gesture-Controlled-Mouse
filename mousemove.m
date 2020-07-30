import java.awt.Robot;
import java.awt.event.*
mouse = Robot;
vid=videoinput('winvideo',1,'MJPG_320x240')
vid.ReturnedColorSpace='RGB';
preview(vid);
for i = 1:1000
im = getsnapshot(vid);
im = flipdim(im,2);
r = im(:,:,1);
gr = rgb2gray(im);
red = imsubtract(r,gr);
bw = im2bw(red,0.25);
bw = bwareaopen(bw,10);
%subplot(1,2,1)
%imshow(im);
%subplot(1,2,2)
%imshow(bw);
[B,L,N] = bwboundaries(bw);
N
if(N==1)
s = regionprops(bw,'Centroid');

x = s(1).Centroid(1);
y = s(1).Centroid(2);

x = x*(1366/320)
y = y *(768/240)

mouse.mouseMove(x,y);
end
if(N==2)
    
mouse.mousePress(InputEvent.BUTTON1_MASK);
mouse.mouseRelease(InputEvent.BUTTON1_MASK);
end
end