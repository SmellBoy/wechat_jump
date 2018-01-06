# 跳一跳玩16行matlab代码

微信文章参考地址：[跳一跳玩16行matlab代码](https://mp.weixin.qq.com/s?__biz=MzA5MzYyMDAyOA==&mid=2649585245&idx=1&sn=cacb3ece33a3ff9cbba60e615cb4a3fc&chksm=8842c40ebf354d18c3187e461b5eeeb99ca94d406d8ab2095f206ed4db569adfd236b220ecdc#rd)


### （一）、运行环境(win+matlab+abd+andord)
软件环境：matlab，adb，安卓手机开发者模式
硬件环境：安卓手机，USB数据线


### （二）、程序代码(matlab)
代码图片：
![alt](https://github.com/SmellBoy/wechat_jump/blob/master/matlab.png)


文字版本：
```
% 跳一跳
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
```

### （三）、拓展应用

    电脑和手机通过这种模式互通，可以用在：
    1 获取手机截图； 
    2 操作手机拍照，用在远程监控，非接触拍照等；  
    3 手机控制电脑。
    
    不仅是微信跳一跳这个场景，触类旁通，
    在其他场景的使用需要结合自己的需求实际，做出有意义的价值输出。
    从操作可控角度，微信跳一跳手机操作具备一定难度。
    手指控制的精度不应成为意识的瓶颈。
    挑战身体能力是一种快乐，手指的控制可以通过训练得到提高。

认同产生价值 
<img src="https://github.com/SmellBoy/wechat_jump/blob/master/%E8%B5%9E%E8%B5%8F%E7%A0%81.png" width="50%" 
alt="认同产生价值" align=center />
