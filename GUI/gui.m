function varargout = gui(varargin)
% GUI MATLAB code for gui.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui

% Last Modified by GUIDE v2.5 09-May-2015 15:08:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before gui is made visible.
function gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui (see VARARGIN)

% Choose default command line output for gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pbPreview.
function pbPreview_Callback(hObject, eventdata, handles)
% hObject    handle to pbPreview (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% choose which webcam (winvideo-1) and which  mode (YUY2_176x144)
global vid;
global hImage;
preview(vid, hImage);

% --- Executes on button press in pbCapture.
function pbCapture_Callback(hObject, eventdata, handles)
% hObject    handle to pbCapture (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% prepare for capturing the image preview
global vid;
global TrainingImages;
global TrainingLabels;

% pause for 1 seconds to give our webcam a "warm-up" time 
pause(1);

% prepare for capturing the image preview 
start(vid); 

% do capture! 
trigger(vid);

% stop the preview 
% get the captured image data and save it on capt1 variable
capt1 = getdata(vid);
pause(0.5);
start(vid); 
trigger(vid);
capt2 = getdata(vid);

% now write capt1 into file named captured.jpg 
imwrite(capt1, 'captured1.jpg');
imwrite(capt2, 'captured2.jpg');

%doing gesture detection of these two images
TestImage=findGesture('captured1.jpg','captured2.jpg');

% K-NN algorithm to recognize the meaning
Preds=K_nn(TestImage, TrainingImages,TrainingLabels,5,10);

%Response from axes2 and static text by predictions
switch Preds
    case 1
        set(handles.text5,'String','Nice! I am correct, right?');
        ImageShowGIF('correct.gif');
    case 2
        set(handles.text5,'String','Fight! Fight! Fight!');
        ImageShowGIF('fight.gif');
    case 3
        set(handles.text5,'String','Good job!!!');
        ImageShowGIF('good.gif');
    case 4
        set(handles.text5,'String','I love you too my friend!');
        ImageShowGIF('love.gif');
    case 5
        set(handles.text5,'String','Money! I love money!!!');
        ImageShowGIF('money.gif');
    case 6
        set(handles.text5,'String','Oh no!!!');
        ImageShowGIF('no.gif');
    case 7
        set(handles.text5,'String','OK, I Will Stop...');
        ImageShowGIF('stop.gif');
    case 8
        set(handles.text5,'String','Victory!!! So easy~');
        ImageShowGIF('victory.gif');
    case 9
        set(handles.text5,'String','I am wrong!!!');
        ImageShowGIF('wrong.gif');
    otherwise
        set(handles.text5,'String','No! No date!!');
        ImageShowGIF('nodate.gif');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global vid;
global hImage;
global TrainingImages;
global TrainingLabels;

% initializing camera
vid = videoinput('winvideo', 1, 'MJPG_1280x720');
vid.FramesPerTrigger = 1;
vid.ReturnedColorspace = 'rgb';
triggerconfig(vid, 'manual');
vidRes = get(vid, 'VideoResolution');
imWidth = vidRes(1);
imHeight = vidRes(2);
nBands = get(vid, 'NumberOfBands');
hImage = image(zeros(imHeight, imWidth, nBands), 'parent', handles.axPreview);
axes(handles.axPreview);
preview(vid, hImage);

% initializing foxey
set(handles.text5,'String','Hello I am Foxey! I am smart enough to understand your gesture!');
axes(handles.axes2);
ImageShowGIF('welcome.gif');

%loading training data
train=load('TrainingData.mat');
TrainingImages=train.TrainingImages;
TrainingLabels=train.TrainingLabels;
