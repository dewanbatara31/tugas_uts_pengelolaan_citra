function varargout = UTSDEWAN(varargin)
% UTSDEWAN MATLAB code for UTSDEWAN.fig
%      UTSDEWAN, by itself, creates a new UTSDEWAN or raises the existing
%      singleton*.
%
%      H = UTSDEWAN returns the handle to a new UTSDEWAN or the handle to
%      the existing singleton*.
%
%      UTSDEWAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UTSDEWAN.M with the given input arguments.
%
%      UTSDEWAN('Property','Value',...) creates a new UTSDEWAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before UTSDEWAN_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to UTSDEWAN_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help UTSDEWAN

% Last Modified by GUIDE v2.5 02-May-2021 14:40:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @UTSDEWAN_OpeningFcn, ...
                   'gui_OutputFcn',  @UTSDEWAN_OutputFcn, ...
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


% --- Executes just before UTSDEWAN is made visible.
function UTSDEWAN_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to UTSDEWAN (see VARARGIN)

% Choose default command line output for UTSDEWAN
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes UTSDEWAN wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = UTSDEWAN_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname] = uigetfile({'*.png','*.jpg'});
citra1 = imread([pathname,filename]);
%Menampilkan di axes 

igray = rgb2gray(citra1);
axes(handles.axes1);
imshow(igray);
axes(handles.axes2);imhist(igray)
