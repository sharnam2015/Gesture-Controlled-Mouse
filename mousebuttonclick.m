import java.awt.Robot;
import java.awt.event.*;
robo2=Robot;
robo2.mouseMove(30,100);
pause(1.5);
robo2.mousePress(InputEvent.BUTTON1_MASK);
robo2.mouseRelease(InputEvent.BUTTON1_MASK);
robo2.keyPress(KeyEvent.VK_CAPS_LOCK);
robo2.keyPress(KeyEvent.VK_A);
robo2.keyRelease(KeyEvent.VK_A);
robo2.keyRelease(KeyEvent.VK_CAPS_LOCK);
robo2.keyPress(KeyEvent.VK_CAPS_LOCK);
robo2.keyPress(KeyEvent.VK_B);
robo2.keyRelease(KeyEvent.VK_B);



