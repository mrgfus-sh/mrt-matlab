function [ ] = UIFigureCore()
%UIFigureCore Create the main uifigure for the tool
%   ...

%UIFigureCore design based on screen information
ScreenProperty  = get(groot);
ScreenWidth     = ScreenProperty.MonitorPositions(end,3);
ScreenHeight    = ScreenProperty.MonitorPositions(end,4);

UIFigureCoreWidth   = 1200;
UIFigureCoreHeight  = 800;
UIFigureCoreLeft    = round( (ScreenWidth-UIFigureCoreWidth)/2 );
UIFigureCoreBottom  = round( (ScreenHeight-UIFigureCoreHeight)/2 );

%uifigure
hUIFigureCore = uifigure();

hUIFigureCore.Name       = "MR Thermometry";
hUIFigureCore.Position   = [UIFigureCoreLeft UIFigureCoreBottom UIFigureCoreWidth UIFigureCoreHeight];

handles.UIFigureCore = hUIFigureCore;
guidata(hUIFigureCore,handles);

%Children GUI widgets
UIMenuTop(hUIFigureCore);
UIMenuView(hUIFigureCore);

end