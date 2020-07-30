import java.awt.Robot;
import java.awt.event.*;
robo=Robot;
detail=imaqhwinfo('winvideo',2);
vid=videoinput('winvideo',2,'RGB24_640x360');
centx=0;
centy=0;
preview(vid);
pause(5);
i=1;
bounder=0;
kx=0;
ky=0;
for i=1:2000

i=i+1;
kx=centx;
ky=centy;
selfie1=getsnapshot(vid);

%subplot(2,3,1)
%imshow(selfie1)
selfie1gr=rgb2gray(selfie1);
%subplot(2,3,2)
%imshow(selfie1gr)
selfie1r=selfie1(:,:,1);
%subplot(2,3,3)
%imshow(selfie1r)
selfiediff=selfie1r-selfie1gr;
%selfiediffbw=im2bw(self
%subplot(2,3,4)
%imshow(selfiediff)
%imtool(selfiediff)
selfiediffbw=im2bw(selfiediff,0.40);
%subplot(2,3,5)
%imshow(selfiediffbw)
selfiediffbw2=bwareaopen(selfiediffbw,8);

[l,n]=bwlabel(selfiediffbw2);

%imtool(selfiediffbw2)


if n==1
    cent=regionprops(l,'Centroid');
cent
centx=2.1*cent.Centroid(1);
centy=2.1*cent.Centroid(2);
robo.mouseMove(centx,centy);

if  (kx-centx)*(kx-centx)<2500&&(ky-centy)*(ky-centy)<2500&&bounder<=50
 
    bounder=bounder+1;
elseif bounder>50
    bounder
    
    robo.mousePress(InputEvent.BUTTON1_MASK);
    robo.mouseRelease(InputEvent.BUTTON1_MASK);
    
    robo.mousePress(InputEvent.BUTTON1_MASK);
    robo.mouseRelease(InputEvent.BUTTON1_MASK);
    %robo.keyPress(KeyEvent.VK_V);
    %robo.keyRelease(KeyEvent.VK_V);
    bounder=1;
    bounder
else 
    bounder=1;
    
    
end

end
end