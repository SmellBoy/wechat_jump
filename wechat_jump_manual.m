% ÌøÒ»Ìø
for n = 1:100
    system(' adb shell screencap -p /sdcard/autojump.png ');
    system(' adb pull /sdcard/autojump.png  autojump.png ');
    A = imread('autojump.png');
    image(A);
    grid minor;
    [x, y, button] = ginput(2);
    distance = sqrt(diff(x)^2+diff(y)^2);
    duration = num2str(floor( 1.4*distance ));
    xy = num2str(floor( 100+rand(1,4)*800 ));
    cmd = ['adb shell input swipe ' xy ' ' duration ];
    fprintf('xy = %s\t duration = %s\n', xy, duration );
    system( cmd );
    pause(rand*10+0.2);
end