function varargout = imageEnhancement(varargin)
% IMAGEENHANCEMENT MATLAB code for imageEnhancement.fig
%      IMAGEENHANCEMENT, by itself, creates a new IMAGEENHANCEMENT or raises the existing
%      singleton*.
%
%      H = IMAGEENHANCEMENT returns the handle to a new IMAGEENHANCEMENT or the handle to
%      the existing singleton*.
%
%      IMAGEENHANCEMENT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IMAGEENHANCEMENT.M with the given input arguments.
%
%      IMAGEENHANCEMENT('Property','Value',...) creates a new IMAGEENHANCEMENT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before imageEnhancement_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to imageEnhancement_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help imageEnhancement

% Last Modified by GUIDE v2.5 23-Apr-2020 21:58:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @imageEnhancement_OpeningFcn, ...
                   'gui_OutputFcn',  @imageEnhancement_OutputFcn, ...
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


% --- Executes just before imageEnhancement is made visible.
function imageEnhancement_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to imageEnhancement (see VARARGIN)
set(handles.axes1, 'xtick', [], 'ytick', []);
set(handles.axes2, 'xtick', [], 'ytick', []);
set(handles.axes3, 'xtick', [], 'ytick', []);
% Choose default command line output for imageEnhancement
handles.output = hObject;
enter
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes imageEnhancement wait for user response (see UIRESUME)
% uiwait(handles.figure1);
set(handles.axes2,'visible', 'off');
set(handles.slider4,'visible', 'off');
set(handles.txt_sigma1,'visible', 'off');
set(handles.txt_sigma2,'visible', 'off');
set(handles.slider5,'visible', 'off');
set(handles.txt_alfa1,'visible', 'off');
set(handles.txt_alfa2,'visible', 'off');
set(handles.btn_dosya2,'visible', 'off');
set(handles.logic_popup,'visible', 'off');
set(handles.btn1,'visible', 'off');
set(handles.btn_aritmatic,'visible', 'off');
set(handles.aritmatic_popup,'visible', 'off');
set(handles.txt_orijinal1,'visible', 'off');
set(handles.txt_orijinal2,'visible', 'off');
set(handles.txt_islenmis1,'visible', 'off');
set(handles.txt_islenmis2,'visible', 'off');
set(handles.coklugoruntu2,'visible', 'off');
set(handles.coklugoruntu,'visible', 'off');
set(handles.txt_bit1,'visible', 'off');
set(handles.txt_bit2,'visible', 'off');
global bool
bool=1;

% --- Outputs from this function are returned to the command line.
function varargout = imageEnhancement_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function txt_sigma1_Callback(hObject, eventdata, handles)
% hObject    handle to txt_sigma1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_sigma1 as text
%        str2double(get(hObject,'String')) returns contents of txt_sigma1 as a double


% --- Executes during object creation, after setting all properties.
function txt_sigma1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_sigma1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function algebra_Callback(hObject, eventdata, handles)
% hObject    handle to algebra (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function open_Callback(hObject, eventdata, handles)
% hObject    handle to open (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --------------------------------------------------------------------
function print_Callback(hObject, eventdata, handles)
% hObject    handle to print (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 axes(handles.axes3);
 [filename, foldername]=imsave();
 y=helpdlg('Kaydedildi','Bilgilendirme')

% --------------------------------------------------------------------
function exit_Callback(hObject, eventdata, handles)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn1.
function btn1_Callback(hObject, eventdata, handles)
% hObject    handle to btn1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.logic_popup, 'Value');
switch(selectedIndex)
    case 1
       r1=getimage(handles.axes1);
       r2=getimage(handles.axes2);
       
                  if size(r2,3)==3
                 r2=im2bw(r2);
%            else                        % Bu kýsým medikal görüntülerin
%              level=graythresh(r2);     %binary görüntüye 
%              r2=im2bw(r2,level);       %dönüþtürüldüðü kýsýmdýr
                  end
                  
                  axes(handles.axes2);
                 imshow(r2,[]);
        r1=imresize(r1,[size(r2,1),size(r2,2)]);       
       g=bitand(r1,r2);
       set(handles.axes2, 'xtick', [], 'ytick', []);
       axes(handles.axes3);
       imshow(g,[]);
    case 2
        r1=getimage(handles.axes1);
        r2=getimage(handles.axes2);

        g=(r1.*r2);
      
        axes(handles.axes3);
        imshow(g,[]);
        
        
    case 3
      r1=getimage(handles.axes1);
     r2=getimage(handles.axes2);
     
              if size(r2,3)==3
                 r2=im2bw(r2);
%            else                        % Bu kýsým medikal görüntülerin
%              level=graythresh(r2);     %binary görüntüye 
%              r2=im2bw(r2,level);       %dönüþtürüldüðü kýsýmdýr
             end

                  axes(handles.axes2);
                 imshow(r2,[]);
        r1=imresize(r1,[size(r2,1),size(r2,2)]);
     
       g=bitor(r1,r2);
       set(handles.axes2, 'xtick', [], 'ytick', []);
       axes(handles.axes3);
       imshow(g,[]);
 
      
    case 4
        
        r1=getimage(handles.axes1);
        g=bitcmp(r1);
        
        axes(handles.axes3);
        imshow(g,[]);
        
    case 5
         r1=getimage(handles.axes1);
         r2=getimage(handles.axes2);
         
         if size(r2,3)==3
                 r2=im2bw(r2);
%            else                        % Bu kýsým medikal görüntülerin
%              level=graythresh(r2);     %binary görüntüye 
%              r2=im2bw(r2,level);       %dönüþtürüldüðü kýsýmdýr
         end
                        
          axes(handles.axes2);
                 imshow(r2,[]);
        r1=imresize(r1,[size(r2,1),size(r2,2)]);

          xor=bitxor(r1,r2);
          
          axes(handles.axes3);
          imshow(xor,[]);
        
    
end

% --------------------------------------------------------------------
function avg_Callback(hObject, eventdata, handles)
% hObject    handle to avg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function addition_substraction_Callback(hObject, eventdata, handles)
% hObject    handle to addition_substraction (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sorgu=questdlg('Lütfen Devam Etmek Ýstediðiniz Ýþlemi Seçiniz','Bilgi Penceresi','Toplama','Çýkarma','')

   switch sorgu
        case 'Toplama'
             sorgu2=questdlg('Lütfen Devam Etmek Ýstediðiniz Ýþlemi Seçiniz','Bilgi Penceresi','Resmi Bir Deðer Ýle Topla','Resmi Bir Resim Ýle Topla','')
          switch  sorgu2 
              case 'Resmi Bir Deðer Ýle Topla'
              r1=getimage(handles.axes1);
              [k l]=size(r1);
if k==0
        x = errordlg('Lütfen Bir Resim Seçiniz:',...
             'HATA'); 
else
            x = inputdlg('Lütfen Bir Deðer Giriniz:',...
                'Toplama', [1 50]);
            
            
             data = str2num(x{:});
             g=imadd(r1,data);
             axes(handles.axes3);
             imshow(g,[]);
end   
                  
              case 'Resmi Bir Resim Ýle Topla'
              set(handles.btn_aritmatic,'visible', 'on');
              set(handles.aritmatic_popup,'visible', 'on');
              set(handles.axes2,'visible', 'on');
              set(handles.btn_dosya2,'visible', 'on'); 
              
              x= errordlg('Lütfen Bir Resim Seçiniz:',...
             'HATA'); 
         
          end
         
          
        case 'Çýkarma'
           sorgu1=questdlg('Lütfen Devam Etmek Ýstediðiniz Ýþlemi Seçiniz','Bilgi Penceresi','Resimden Bir Deðer Çýkar','Resmi Bir Resimden Çýkar','')
          switch  sorgu1  
              case 'Resimden Bir Deðer Çýkar'
                  
                 r1=getimage(handles.axes1);
                 [k l]=size(r1);
if k==0
        x = errordlg('Lütfen Bir Resim Seçiniz:',...
             'HATA'); 
else
            x = inputdlg('Lütfen Bir Deðer Giriniz:',...
                'Çýkarma', [1 50]);
            
            
            data = str2num(x{:});
             g=imsubtract(r1,data);
             axes(handles.axes3);
             imshow(g,[]);
end     
            
             
        


              case 'Resmi Bir Resimden Çýkar'
                  
              set(handles.btn_aritmatic,'visible', 'on');
              set(handles.aritmatic_popup,'visible', 'on');
              set(handles.axes2,'visible', 'on');
              set(handles.btn_dosya2,'visible', 'on'); 
              
              x= errordlg('Lütfen Bir Resim Seçiniz:',...
             'HATA'); 
         
         
          
end

   end

% --------------------------------------------------------------------
function md_Callback(hObject, eventdata, handles)
% hObject    handle to md (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sorgu=questdlg('Lütfen Devam Etmek Ýstediðiniz Ýþlemi Seçiniz','Bilgi Penceresi','Çarpma','Bölme','')

   switch sorgu
        case 'Çarpma'
             sorgu3=questdlg('Lütfen Devam Etmek Ýstediðiniz Ýþlemi Seçiniz','Bilgi Penceresi','Resmi Bir Deðer Ýle Çarp','Resmi Bir Resim Ýle Çarp','')
          switch  sorgu3 
              case 'Resmi Bir Deðer Ýle Çarp'
              r1=getimage(handles.axes1);
              [k l]=size(r1);
if k==0
        x = errordlg('Lütfen Bir Resim Seçiniz:',...
             'HATA'); 
else
            x = inputdlg('Lütfen Bir Deðer Giriniz:',...
                'Çarpma', [1 50]);
            
            
             data = str2num(x{:});
%              r1=double(r1);
             g=immultiply(r1,data);
             axes(handles.axes3);
             imshow(g,[]);
end   
                  
              case 'Resmi Bir Resim Ýle Çarp'
              set(handles.btn_aritmatic,'visible', 'on');
              set(handles.aritmatic_popup,'visible', 'on');
              set(handles.axes2,'visible', 'on');
              set(handles.btn_dosya2,'visible', 'on'); 
              
              x= errordlg('Lütfen Bir Resim Seçiniz:',...
             'HATA'); 
         
          end
         
          
        case 'Bölme'
           sorgu1=questdlg('Lütfen Devam Etmek Ýstediðiniz Ýþlemi Seçiniz','Bilgi Penceresi','Resmi Bir Deðere Böl','Resmi Bir Resime Böl','')
          switch  sorgu1  
              case 'Resmi Bir Deðere Böl'
                  
                 r1=getimage(handles.axes1);
                 [k l]=size(r1);
if k==0
        x = errordlg('Lütfen Bir Resim Seçiniz:',...
             'HATA'); 
else
            x = inputdlg('Lütfen Bir Deðer Giriniz:',...
                'Bölme', [1 50]);
            
            
             data = str2num(x{:});
%              r1=double(r1);
             g=imdivide(r1,data);
             axes(handles.axes3);
             imshow(g,[]);
end     
            
             
        


              case 'Resmi Bir Resime Böl'
                  
              set(handles.btn_aritmatic,'visible', 'on');
              set(handles.aritmatic_popup,'visible', 'on');
              set(handles.axes2,'visible', 'on');
              set(handles.btn_dosya2,'visible', 'on'); 
              
              x= errordlg('Lütfen Bir Resim Seçiniz:',...
             'HATA'); 
         
         
          
end
   end

% --------------------------------------------------------------------
function add_Callback(hObject, eventdata, handles)
% hObject    handle to add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mul_Callback(hObject, eventdata, handles)
% hObject    handle to mul (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function div_Callback(hObject, eventdata, handles)
% hObject    handle to div (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function logical_Callback(hObject, eventdata, handles)
% hObject    handle to logical (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function and_Callback(hObject, eventdata, handles)
% hObject    handle to and (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

sorgu2=questdlg('Lütfen Devam Etmek Ýstediðiniz Ýþlemi Seçiniz','Bilgi Penceresi','Resmin Seçili Bölgesini Göster','Ýki Resme And iþlemi Uygula','')
          switch  sorgu2  
              case 'Resmin Seçili Bölgesini Göster'
                 r1=getimage(handles.axes1);
                
           set(handles.logic_popup,'visible', 'on');
           set(handles.btn1,'visible', 'on');
           set(handles.axes2,'visible', 'on');
           set(handles.btn_dosya2,'visible', 'off');
           
           
  
          x = inputdlg({'Satýr baþlangýç','Satýr bitiþ','Sütun baþlangýç','Sütun bitiþ'},...
              'Ýki Resme And iþlemi Uygula', [1 50; 1 50;1 50; 1 50]); 
          
          
        satir=str2double(x{1});
        satir2=str2double(x{2});
        sutun=str2double(x{3});
        sutun2=str2double(x{4});
        
             if size(r1,3)==3
                 r1=rgb2gray(r1);
                 axes(handles.axes1);
                 imshow(r1,[]);
                 
                  [a b]=size(r1);
        s=zeros(a,b);
        s(satir:satir2,sutun:sutun2)=1;
        s=uint8(s);
   
        axes(handles.axes2);
        imshow(s,[]);
                 
             else
        
        
        [a b]=size(r1);
        s=zeros(a,b);
        s(satir:satir2,sutun:sutun2)=1;
        s=uint16(s);
   
        axes(handles.axes2);
        imshow(s,[]);
        
          end
        
             case 'Ýki Resme And iþlemi Uygula'
           set(handles.logic_popup,'visible', 'on');
           set(handles.btn1,'visible', 'on');
            set(handles.axes2,'visible', 'on');
           set(handles.btn_dosya2,'visible', 'on');
            r1=getimage(handles.axes1);
           
           x= errordlg('Lütfen Bir Resim Seçiniz:',...
             'HATA'); 
                 pause(5);
        
            if size(r1,3)==3
                 r1=im2bw(r1);
%            else                        % Bu kýsým medikal görüntülerin
%              level=graythresh(r1);     %binary görüntüye 
%              r1=im2bw(r1,level);       %dönüþtürüldüðü kýsýmdýr
            end
         
       
            axes(handles.axes1);
           imshow(r1,[]);
 end              
% --------------------------------------------------------------------
function or_Callback(hObject, eventdata, handles)
% hObject    handle to or (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.logic_popup,'visible', 'on');
set(handles.btn1,'visible', 'on');
set(handles.axes2,'visible', 'on');
set(handles.btn_dosya2,'visible', 'on');

         r1=getimage(handles.axes1);
        x= errordlg('Lütfen Bir Resim Seçiniz:',...
             'HATA'); 
                 pause(5);
           if size(r1,3)==3
                 r1=im2bw(r1); 
%            else                        % Bu kýsým medikal görüntülerin
%              level=graythresh(r1);     %binary görüntüye 
%              r1=im2bw(r1,level);       %dönüþtürüldüðü kýsýmdýr
            end
               
        axes(handles.axes1);
        imshow(r1,[]);
  





% --------------------------------------------------------------------
function not_Callback(hObject, eventdata, handles)
% hObject    handle to not (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.logic_popup,'visible', 'on');
set(handles.btn1,'visible', 'on');



% --------------------------------------------------------------------
function xor_Callback(hObject, eventdata, handles)
% hObject    handle to xor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.logic_popup,'visible', 'on');
set(handles.btn1,'visible', 'on');
set(handles.axes2,'visible', 'on');
set(handles.btn_dosya2,'visible', 'on');

         r1=getimage(handles.axes1);
            x= errordlg('Lütfen Bir Resim Seçiniz:',...
             'HATA'); 
                 pause(5);
         
          if size(r1,3)==3
                 r1=im2bw(r1);
%            else                        % Bu kýsým medikal görüntülerin
%              level=graythresh(r1);     %binary görüntüye 
%              r1=im2bw(r1,level);       %dönüþtürüldüðü kýsýmdýr
            end
        axes(handles.axes1);
        imshow(r1,[]);
% --------------------------------------------------------------------
function geometric_Callback(hObject, eventdata, handles)
% hObject    handle to geometric (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function scale_Callback(hObject, eventdata, handles)
% hObject    handle to scale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function translation_Callback(hObject, eventdata, handles)
% hObject    handle to translation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
r1=getimage(handles.axes1);
x = inputdlg({'Bir Satýr Deðeri Giriniz','Bir Sütun Deðeri Giriniz'},...
              'Translation', [1 50; 1 50]); 
satir=str2double(x{1});
sutun=str2double(x{2});
g=imtranslate(r1,[satir sutun]);
axes(handles.axes3);
imshow(g,[]);



% --------------------------------------------------------------------
function reflection_Callback(hObject, eventdata, handles)
% hObject    handle to reflection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

r1=getimage(handles.axes1);
x = inputdlg('Lütfen Ýþlemi Yapmak Ýstediðiniz Merkez Sütun Numarasýný Seçiniz:',...
             'Reflection', [1 50]);
a = str2double(x{:});

   if size(r1,3)==3
                 
         [x y z]=size(r1);
         g=zeros(x,y,z);
         g(:,a+1:y,:)=r1(:,1:y-a,:);
         g(:,1:a,:)=r1(:,a:-1:1,:);
         g=uint8(g);
         axes(handles.axes3);
         imshow(g,[]);
                 
             else
        
        [x y ]=size(r1);
        g=zeros(x,y);
        g(:,a+1:y)=r1(:,1:y-a);
        g(:,1:a)=r1(:,a:-1:1);
        g=uint16(g);
        axes(handles.axes3);
        imshow(g,[]);
        
        
          end


% --------------------------------------------------------------------
function rotation_Callback(hObject, eventdata, handles)
% hObject    handle to rotation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


r1=getimage(handles.axes1);
x = inputdlg('Lütfen Derece Deðerini Giriniz:',...
             'Derece', [1 50]);
derece = str2double(x{:});
 if(derece<0 || derece>360)==1
  x = errordlg('Lütfen Geçerli Derece Deðerini Giriniz','HATA')
  n = 2;
  pause(n)
  y=helpdlg('Gireceðiniz Sayý Deðeri 0 ile 360 Derece Arasýnda Olmalýdýr','Bilgilendirme')
 else  
 g=imrotate(r1,derece,'loose');
axes(handles.axes3);
imshow(g,[]);
z=helpdlg('Döndürme Ýþlemi <loose> Metodu Ýle Yapýlmýþtýr');
 end
 
% --------------------------------------------------------------------
function shear_Callback(hObject, eventdata, handles)
% hObject    handle to shear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function shearVertical_Callback(hObject, eventdata, handles)
% hObject    handle to shearVertical (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

r1=getimage(handles.axes1);
x = inputdlg('Lütfen Bir Deðer Giriniz:',...
             'Verical', [1 50]);
data = str2num(x{:});

tform=affine2d([1 0 0; data 1 0; 0 0 1]);
J=imwarp(r1,tform);
axes(handles.axes3);
imshow(J,[]);
% --------------------------------------------------------------------
function shearHorizontal_Callback(hObject, eventdata, handles)
% hObject    handle to shearHorizontal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

r1=getimage(handles.axes1);
x = inputdlg('Lütfen Bir Deðer Giriniz:',...
             'Horizontal', [1 50]);
data = str2num(x{:});

tform=affine2d([1 data 0; 0 1 0; 0 0 1]);
J=imwarp(r1,tform);
axes(handles.axes3);
imshow(J,[]);


% --------------------------------------------------------------------
function nearestNeigbourInt_Callback(hObject, eventdata, handles)
% hObject    handle to nearestNeigbourInt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

r1=getimage(handles.axes1);
a=size(r1);

x = inputdlg('Lütfen Ölçeklendirmek Ýstediðiniz Deðeri Giriniz:',...
             'Scale', [1 50]);
         
set(handles.txt_orijinal1,'visible', 'on');
set(handles.txt_orijinal2,'visible', 'on');
set(handles.txt_islenmis1,'visible', 'on');
set(handles.txt_islenmis2,'visible', 'on');

olcek = str2double(x{:});

s=imresize(r1,olcek,'nearest');
b=size(s);

set(handles.txt_orijinal2,'String',num2str(a));
set(handles.txt_islenmis2,'String',num2str(b));
axes(handles.axes3);
imshow(s,[]);





% --------------------------------------------------------------------
function bilinear_Callback(hObject, eventdata, handles)
% hObject    handle to bilinear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

r1=getimage(handles.axes1);
a=size(r1);

x = inputdlg('Lütfen Ölçeklendirmek Ýstediðiniz Deðeri Giriniz:',...
             'Scale', [1 50]);
         
set(handles.txt_orijinal1,'visible', 'on');
set(handles.txt_orijinal2,'visible', 'on');
set(handles.txt_islenmis1,'visible', 'on');
set(handles.txt_islenmis2,'visible', 'on');

olcek = str2double(x{:});

s=imresize(r1,olcek,'bilinear');
b=size(s);

set(handles.txt_orijinal2,'String',num2str(a));
set(handles.txt_islenmis2,'String',num2str(b));
axes(handles.axes3);
imshow(s,[]);

% --------------------------------------------------------------------
function convolution_Callback(hObject, eventdata, handles)
% hObject    handle to convolution (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function smoothmasks_Callback(hObject, eventdata, handles)
% hObject    handle to smoothmasks (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function sharpMasks_Callback(hObject, eventdata, handles)
% hObject    handle to sharpMasks (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function edge_Callback(hObject, eventdata, handles)
% hObject    handle to edge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function OtherMasks_Callback(hObject, eventdata, handles)
% hObject    handle to OtherMasks (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function gaussianFilter_Callback(hObject, eventdata, handles)
% hObject    handle to gaussianFilter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.slider4,'visible', 'on');
set(handles.txt_sigma1,'visible', 'on');
set(handles.txt_sigma2,'visible', 'on');

value=get(handles.slider4, 'Value');
set(handles.txt_sigma2,'String',num2str(value));
set(handles.txt_sigma1,'String','Sigma:');

% --------------------------------------------------------------------
function LoGFilter_Callback(hObject, eventdata, handles)
% hObject    handle to LoGFilter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

img = (double(getimage(handles.axes1)));
Log_filter = fspecial('log', [5,5], 4.0); 
% bu filtre önce gaussianFilter filtresi sonra laplacianFilter uygulanýr.
img_LOG = imfilter(img, Log_filter, 'symmetric', 'conv');
axes(handles.axes3);
imshow(img_LOG, []);
% --------------------------------------------------------------------
function prewitt_Callback(hObject, eventdata, handles)
% hObject    handle to prewitt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
r1=getimage(handles.axes1);

if size(r1,3)==3
    r1=rgb2gray(r1);
    g=edge(r1,'prewitt');
    axes(handles.axes3);
    imshow(g);
else
    g=edge(r1,'prewitt');
    axes(handles.axes3);
    imshow(g);
end


% --------------------------------------------------------------------
function sobel_Callback(hObject, eventdata, handles)
% hObject    handle to sobel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
r1=getimage(handles.axes1);

if size(r1,3)==3
    r1=rgb2gray(r1);
    g=edge(r1,'sobel');
    axes(handles.axes3);
    imshow(g);
else
    g=edge(r1,'sobel');
    axes(handles.axes3);
    imshow(g);
end

% --------------------------------------------------------------------
function canny_Callback(hObject, eventdata, handles)
% hObject    handle to canny (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

r1=getimage(handles.axes1);

if size(r1,3)==3
    r1=rgb2gray(r1);
    g=edge(r1,'canny');
    axes(handles.axes3);
    imshow(g);
else
    g=edge(r1,'canny');
    axes(handles.axes3);
    imshow(g);
end
% --------------------------------------------------------------------
function roberts_Callback(hObject, eventdata, handles)
% hObject    handle to roberts (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

r1=getimage(handles.axes1);

if size(r1,3)==3
    g=rgb2gray(r1);
    g=edge(g,'roberts');
    axes(handles.axes3);
    imshow(g);
else
    g=edge(r1,'roberts');
    axes(handles.axes3);
    imshow(g);
end

% --------------------------------------------------------------------
function laplacianFilter_Callback(hObject, eventdata, handles)
% hObject    handle to laplacianFilter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.slider5,'visible', 'on');
set(handles.txt_alfa1,'visible', 'on');
set(handles.txt_alfa2,'visible', 'on');

value=get(handles.slider5, 'Value');
set(handles.txt_alfa2,'String',num2str(value));
set(handles.txt_alfa1,'String','Alfa:');
% --------------------------------------------------------------------
function sharpenFilter_Callback(hObject, eventdata, handles)
% hObject    handle to sharpenFilter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
r1=getimage(handles.axes1);
x = inputdlg('Lütfen Bir Deðer Giriniz:',...
             'Radius', [1 50]);
num = str2double(x{:});
g=imsharpen(r1,'Radius',num);
axes(handles.axes3);
imshow(g,[]);

% --------------------------------------------------------------------
function avgfilter_Callback(hObject, eventdata, handles)
% hObject    handle to avgfilter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
r1=getimage(handles.axes1);

x = inputdlg('Lütfe Bir Deðer Giriniz:',...
             'Kernel Boyutu', [1 50]);
size = str2num(x{:});
h =fspecial('average',size);
g=imfilter(r1,h,'replicate');
axes(handles.axes3);
imshow(g,[]);

% --------------------------------------------------------------------
function maxfilter_Callback(hObject, eventdata, handles)
% hObject    handle to maxfilter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

r1=getimage(handles.axes1);

    x = inputdlg('Lütfen Bir Deðer Giriniz:',...
             'Kernel Boyutu', [1 50]);
    kernel = str2double(x{:});
    m=kernel.^2;
    if size(r1,3)==3
          r1=rgb2gray(r1);
    axes(handles.axes1);
    imshow(r1,[]);
end
    g= ordfilt2(r1,m,true(kernel));
    axes(handles.axes3);
    imshow(g,[]);
% --------------------------------------------------------------------
function minfilter_Callback(hObject, eventdata, handles)
% hObject    handle to minfilter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
r1=getimage(handles.axes1);

    x = inputdlg('Lütfen Bir Deðer Giriniz:',...
             'Kernel Boyutu', [1 50]);
    kernel = str2double(x{:});
  if size(r1,3)==3
    r1=rgb2gray(r1);
    axes(handles.axes1);
    imshow(r1,[]);
end
    g= ordfilt2(r1,1,true(kernel));
    axes(handles.axes3);
    imshow(g,[]);

% --------------------------------------------------------------------
function medianfilter_Callback(hObject, eventdata, handles)
% hObject    handle to medianfilter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    r1=getimage(handles.axes1);

    x = inputdlg('Lütfen Bir Deðer Giriniz:',...
             'Kernel Boyutu', [1 50]);
    kernel = str2double(x{:});

    m=round((kernel.^2)/2);
    
    if size(r1,3)==3
         r1=rgb2gray(r1);
         axes(handles.axes1);
         imshow(r1,[]);
   end

    g= ordfilt2(r1,m,true(kernel));
    axes(handles.axes3);
    imshow(g,[]);
% --------------------------------------------------------------------
function weightAvgFilter_Callback(hObject, eventdata, handles)
% hObject    handle to weightAvgFilter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
img=getimage(handles.axes1);

   if size(img,3)==3
    img=rgb2gray(img);
    f=1/16*[1,2,1;2,4,2;1,2,1];    % Ders notu slayt8 den alýnmýþtýr.
    img2=filter2(f,img);
    axes(handles.axes3);
    imshow(uint8(img2));
   
else

   f=1/16*[1,2,1;2,4,2;1,2,1];
    img2=filter2(f,img);
    axes(handles.axes3);
    imshow(uint8(img2));
end




function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnreset.
function btnreset_Callback(hObject, eventdata, handles)
% hObject    handle to btnreset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

cla(handles.axes1,'reset');
cla(handles.axes2,'reset');
cla(handles.axes3,'reset');

set(handles.axes1, 'xtick', [], 'ytick', []);
set(handles.axes2, 'xtick', [], 'ytick', []);
set(handles.axes3, 'xtick', [], 'ytick', []);

set(handles.slider4,'visible', 'off');
set(handles.txt_sigma1,'visible', 'off');
set(handles.txt_sigma2,'visible', 'off');
set(handles.slider5,'visible', 'off');
set(handles.txt_alfa1,'visible', 'off');
set(handles.txt_alfa2,'visible', 'off');
set(handles.axes2,'visible', 'off');
set(handles.btn1,'visible', 'off');
set(handles.logic_popup,'visible', 'off');
set(handles.aritmatic_popup,'visible', 'off');
set(handles.btn_aritmatic,'visible', 'off');
set(handles.btn_dosya2,'visible', 'off');
set(handles.txt_orijinal1,'visible', 'off');
set(handles.txt_orijinal2,'visible', 'off');
set(handles.txt_islenmis1,'visible', 'off');
set(handles.txt_islenmis2,'visible', 'off');
set(handles.coklugoruntu2,'visible', 'off');
set(handles.txt_bit1,'visible', 'off');
set(handles.txt_bit2,'visible', 'off');



% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'minfilter') and get(hObject,'maxfilter') to determine range of slider
r1=getimage(handles.axes1);
value=get(handles.slider4, 'Value');
set(handles.txt_sigma2,'String',num2str(value));
a=imgaussfilt(im2double(r1),value);
axes(handles.axes3);
imshow(a,[]);

% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'minfilter') and get(hObject,'maxfilter') to determine range of slider
% minfilter=0;
% maxfilter=10;
% set(handles.slider5,minfilter);
% set(handles.slider5,maxfilter);
r1=getimage(handles.axes1);
alpha=get(handles.slider5, 'Value');
set(handles.txt_alfa2,'String',num2str(alpha));
w=fspecial('laplacian',alpha);
g1=imfilter(r1,w,'replicate');
a=r1-g1;
axes(handles.axes3)
imshow(a,[]);


% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in btn_dosya.
function btn_dosya_Callback(hObject, eventdata, handles)
% hObject    handle to btn_dosya (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[fileName, path] = uigetfile('*.*', 'Multiselect', 'on');
clear handles.imageObj
clear handles.imageFiles

if ~isequal(fileName, 0)
    filePath = fullfile(path, fileName);
    splittedFileName = split(fileName,'.');
    fileExt = cell2mat(splittedFileName(end));
    
    if ~isa(fileName, 'cell')
        if isequal(fileExt, 'dcm')
            image = dicomread(filePath);
        else
            image = imread(filePath);
        end
        [rows, cols, channel] = size(image);

        
        handles.imageObj = image;
        set(handles.coklugoruntu, 'Visible', 'off');
    else
        len = length(filePath);
        
        for i = 1:len
            file = cell2mat(filePath(i));
            handles.imageFiles(i) = convertCharsToStrings(file);
        end
        
        sliderStep = [1,1] / (len - 1);
        set(handles.coklugoruntu, 'Value', 1);
        set(handles.coklugoruntu, 'Min', 1);
        set(handles.coklugoruntu, 'Max', len);
        set(handles.coklugoruntu, 'SliderStep', sliderStep);
        set(handles.coklugoruntu, 'Visible', 'on');
        
        image = dicomread(handles.imageFiles(1));
    end
        axes(handles.axes1);
        imshow(image, []);

       guidata(hObject, handles);
        
end


% --- Executes on button press in btn_dosya2.
function btn_dosya2_Callback(hObject, eventdata, handles)
% hObject    handle to btn_dosya2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[fileName, path] = uigetfile('*.*', 'Multiselect', 'on');
clear handles.imageObj
clear handles.imageFiles

if ~isequal(fileName, 0)
    filePath = fullfile(path, fileName);
    splittedFileName = split(fileName,'.');
    fileExt = cell2mat(splittedFileName(end));
    
    if ~isa(fileName, 'cell')
        if isequal(fileExt, 'dcm')
            image = dicomread(filePath);
        else
            image = imread(filePath);
        end
        [rows, cols, channel] = size(image);

        
        handles.imageObj = image;
        set(handles.coklugoruntu2, 'Visible', 'off');
    else
        len = length(filePath);
        
        for i = 1:len
            file = cell2mat(filePath(i));
            handles.imageFiles(i) = convertCharsToStrings(file);
        end
        
        sliderStep = [1,1] / (len - 1);
        set(handles.coklugoruntu2, 'Value', 1);
        set(handles.coklugoruntu2, 'Min', 1);
        set(handles.coklugoruntu2, 'Max', len);
        set(handles.coklugoruntu2, 'SliderStep', sliderStep);
        set(handles.coklugoruntu2, 'Visible', 'on');
        
        image = dicomread(handles.imageFiles(1));
    end
        axes(handles.axes2);
        imshow(image, []);

        guidata(hObject, handles);
        
end


% --- Executes on button press in btn_cikis.
function btn_cikis_Callback(hObject, eventdata, handles)
% hObject    handle to btn_cikis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all

% --- Executes on button press in btn_geri.
function btn_geri_Callback(hObject, eventdata, handles)
% hObject    handle to btn_geri (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close();
enter




% --- Executes on selection change in logic_popup.
function logic_popup_Callback(hObject, eventdata, handles)
% hObject    handle to logic_popup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns logic_popup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from logic_popup


% --- Executes during object creation, after setting all properties.
function logic_popup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to logic_popup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in aritmatic_popup.
function aritmatic_popup_Callback(hObject, eventdata, handles)
% hObject    handle to aritmatic_popup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns aritmatic_popup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from aritmatic_popup


% --- Executes during object creation, after setting all properties.
function aritmatic_popup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to aritmatic_popup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btn_aritmatic.
function btn_aritmatic_Callback(hObject, eventdata, handles)
% hObject    handle to btn_aritmatic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selectedIndex = get(handles.aritmatic_popup, 'Value');
switch(selectedIndex)
    case 1 
           r1=getimage(handles.axes1);
           r2=getimage(handles.axes2);
             
  if size(r1,3)==size(r2,3)
           r1=imresize(r1,[size(r2,1),size(r2,2)]);  
             r1=double(r1);
             r2=double(r2);  
             a=imadd(r1,r2);
     
             axes(handles.axes3);
             imshow(a,[]);
        
  else
        
        if size(r1,3)==3
             r1=rgb2gray(r1);
        else 
        r2=rgb2gray(r2);
        end
        
     r1=imresize(r1,[size(r2,1),size(r2,2)]);
         r1=double(r1);
             r2=double(r2);
           
        axes(handles.axes1);
        imshow(r1,[]);
        
        axes(handles.axes2);
        imshow(r2,[]);
        
        b=imadd(r1,r2);
        axes(handles.axes3);
        imshow(b,[]);
   
  

  end  

    case 2
            r1=getimage(handles.axes1);
           r2=getimage(handles.axes2);
             r1=imresize(r1,[size(r2,1),size(r2,2)]);
  if size(r1,3)==size(r2,3)

                    r1=double(r1);
             r2=double(r2);
             a=imsubtract(r1,r2);
     
             axes(handles.axes3);
             imshow(a,[]);
        
  else
        r1=imresize(r1,[size(r2,1),size(r2,2)]);
        if size(r1,3)==3
             r1=rgb2gray(r1);
        else 
        r2=rgb2gray(r2);
        end
        
        r1=double(r1);
             r2=double(r2);
       
        axes(handles.axes1);
        imshow(r1,[]);
        
        axes(handles.axes2);
        imshow(r2,[]);
        
        b=imsubtract(r1,r2);
        axes(handles.axes3);
        imshow(b,[]);
   
  

end  
    case 3
         r1=getimage(handles.axes1);
           r2=getimage(handles.axes2);
             r1=imresize(r1,[size(r2,1),size(r2,2)]);
  if size(r1,3)==size(r2,3)
                    
                   
             r1=double(r1);
             r2=double(r2);
             

                    
             a=immultiply(r1,r2);
     
             axes(handles.axes3);
             imshow(a,[]);
        
  else
         r1=imresize(r1,[size(r2,1),size(r2,2)]);
        if size(r1,3)==3
             r1=rgb2gray(r1);
        else 
        r2=rgb2gray(r2);
        end
         r1=double(r1);
         r2=double(r2);
         
       
        axes(handles.axes1);
        imshow(r1,[]);
        
        axes(handles.axes2);
        imshow(r2,[]);
        
        
         b=immultiply(r1,r2);
        axes(handles.axes3);
        imshow(b,[]);
   
  

  end  
    case 4
                 r1=getimage(handles.axes1);
           r2=getimage(handles.axes2);
             r1=imresize(r1,[size(r2,1),size(r2,2)]);
  if size(r1,3)==size(r2,3)

             r1=double(r1);
             r2=double(r2);
             a=imdivide(r1,r2);
     
             axes(handles.axes3);
             imshow(a,[]);
        
  else
        r1=imresize(r1,[size(r2,1),size(r2,2)]);
        if size(r1,3)==3
             r1=rgb2gray(r1);
        else 
        r2=rgb2gray(r2);
        end
        
       
        axes(handles.axes1);
        imshow(r1,[]);
        
        axes(handles.axes2);
        imshow(r2,[]);
        
         r1=double(r1);
         r2=double(r2);
         b=imdivide(r1,r2);
        axes(handles.axes3);
        imshow(b,[]);
   
  

  end  
                           
end





% --- Executes on slider movement.
function coklugoruntu_Callback(hObject, eventdata, handles)
% hObject    handle to coklugoruntu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'minfilter') and get(hObject,'maxfilter') to determine range of slider
imageNumber = get(handles.coklugoruntu, 'Value');
imagePath = handles.imageFiles(floor(imageNumber));
image = dicomread(imagePath);
handles.imageObj = image;

axes(handles.axes1);
imshow(image, []);


guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function coklugoruntu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to coklugoruntu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes during object creation, after setting all properties.
function btn1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to btn1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on slider movement.
function coklugoruntu2_Callback(hObject, eventdata, handles)
% hObject    handle to coklugoruntu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'minfilter') and get(hObject,'maxfilter') to determine range of slider
imageNumber = get(handles.coklugoruntu2, 'Value');
imagePath = handles.imageFiles(floor(imageNumber));
image = dicomread(imagePath);
handles.imageObj = image;

axes(handles.axes2);
imshow(image, []);


guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function coklugoruntu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to coklugoruntu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --------------------------------------------------------------------
function grayLevelTransformations_Callback(hObject, eventdata, handles)
% hObject    handle to grayLevelTransformations (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function logaritmicTransformation_Callback(hObject, eventdata, handles)
% hObject    handle to logaritmicTransformation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 r1=getimage(handles.axes1);
 if size(r1,3)==3
   r1=rgb2gray(r1);
 end

 [m n]=size(r1);
 for x=1:m
     for y=1:n
         s=double(r1(x,y));
         z(x,y)=log10(1+s);
     end
 end
 
        axes(handles.axes3);
        imshow(z,[]);
 
 

% --------------------------------------------------------------------
function gammaTransformation_Callback(hObject, eventdata, handles)
% hObject    handle to gammaTransformation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
     r1=getimage(handles.axes1);
      x = inputdlg('Lütfen Bir Deðer Giriniz:',...
             'Gamma Deðeri', [1 50]);
         
      if size(r1,3)==3
     r1=rgb2gray(r1);
      end
 
    gamma = str2double(x{:});
    r1=im2double(r1);
    J = imadjust(r1,[],[],gamma);
    axes(handles.axes3);
    imshow(J,[]);
    


% --------------------------------------------------------------------
function bitplane_Callback(hObject, eventdata, handles)
% hObject    handle to bitplane (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
r1=getimage(handles.axes1);
set(handles.txt_bit1,'visible', 'on');
set(handles.txt_bit2,'visible', 'on');
x = inputdlg('Lütfen Bit Plane Numarasý Giriniz(0 15):',...
             'Bit Plane', [1 50]);
s = str2double(x{:});
if size(r1,3)==3
    r1=rgb2gray(r1);
    axes(handles.axes1);
    imshow(r1,[]);
end
    s=s+1;
    a=bitget(r1,s);
    set(handles.txt_bit2,'String',num2str(s));
    axes(handles.axes3);
    imshow(a,[]);
