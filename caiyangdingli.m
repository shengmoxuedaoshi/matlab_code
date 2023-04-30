clear;clc
pushbuttonPlot
function pushbuttonPlot
f = figure;
slider1_min=0;
slider1_max=6;
slider1_position=[20 75 150 30];
c1=uicontrol(f,"style","slider","Min",slider1_min,"Max",slider1_max,"Position",slider1_position,...
    "Value",(slider1_min+slider1_max)/2,"Callback",@plotButtonPushed,"Tag",'slider1');

c1textStatic=uicontrol(f,"Style","text","String",'Slider_1',"Position",...
    [slider1_position(1) slider1_position(2)+slider1_position(4) slider1_position(3) 20],...
    "FontName",'Times new roman',"FontSize",13);
c1textDynamic=uicontrol(f,"Style","text","String",c1.Value,"Position",...
    [slider1_position(1) slider1_position(2)-20 slider1_position(3) 20],...
    "FontName",'Times new roman',"FontSize",13);

    function plotButtonPushed(src,event)
        fmax=10;
        t=0:0.1:10;
        y1=sin(t);
        fs =c1.Value;
        m=1/fs;
        t1 = 0:0.01:10;
        y2=sin(t1*fs);
        plot(t,y1,'-')
        hold on
        z=sin(2*t);
       % plot(t,z)
        plot(t1,y2,'-')
        hold off
        c1textDynamic.String=c1.Value;
    end
end