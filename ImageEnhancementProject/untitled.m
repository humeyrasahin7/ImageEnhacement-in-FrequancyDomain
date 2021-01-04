function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 30-Apr-2020 23:11:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
    global len
    global file
    global folder
    global im
    axes(handles.axes1);
    set(handles.slider1,'Min',0);
    set(handles.slider1,'Max',len-1);
    a = round(get(handles.slider1,'Value'));
    img(:,:,a+1) = dicomread(fullfile(folder,file(a+1).name));
    im = img(:,:,a+1);
    imshow(img(:,:,a+1),[]);


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in btn_read.
function btn_read_Callback(hObject, eventdata, handles)
% hObject    handle to btn_read (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filename
global folder
global im
[filename, folder] =  uigetfile('*.*', 'Multiselect', 'on');
fullFileName = fullfile(folder, filename);
[x,b] = split(filename,".")
C = size(x)
% y = cell2mat(x); [m,n] = size(y);
a = x{C(1)}
if (strcmp(a,'dcm')||strcmp(a,'DCM'))
    q=questdlg('Please Choose What Do You Want to Contiune','Dicom Options','Single Dicom','Multiple Dicom','')
    switch q
        case 'Single Dicom'
        im = dicomread(fullFileName);
        axes(handles.axes1);
        imshow(im,[])
        case 'Multiple Dicom'
        global file
        file = dir(strcat(folder,'/*.dcm'));
        global len
        len = length(file);
        axes(handles.axes1);
        imshow(im(:,:,1),[])
        set(handles.slider1,'visible','on')
        
    end
 

   
else 
    
    im = imread(fullFileName); 
    axes(handles.axes1);
    imshow(im)
    
end
% --- Executes on button press in btn_reset.
function btn_reset_Callback(hObject, eventdata, handles)
% hObject    handle to btn_reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 axes(handles.axes1);
    imshow(ones(256))
axes(handles.axes2);
    imshow(ones(256))
set(handles.text2,'visible','off')
set(handles.grp_filters,'visible','off')
set(handles.grp_fourier,'visible','off')
set(handles.grp_sys,'visible','off')
set(handles.grp_sampling,'visible','off')
set(handles.grp_cor,'visible','off')
set(handles.grp_tomog,'visible','off')
set(handles.grp_noise,'visible','off')
set(handles.slider1,'visible','off')


% --- Executes on button press in btn_lpf.
function btn_lpf_Callback(hObject, eventdata, handles)
% hObject    handle to btn_lpf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of btn_lpf


% --------------------------------------------------------------------
function pen_1_Callback(hObject, eventdata, handles)
% hObject    handle to pen_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_4_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function fourier_pen_Callback(hObject, eventdata, handles)
% hObject    handle to fourier_pen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
  
set(handles.text2,'visible','off')
set(handles.grp_cor,'visible','off')
set(handles.grp_sys,'visible','off')
set(handles.grp_sampling,'visible','off')
set(handles.grp_tomog,'visible','off')
set(handles.grp_filters,'visible','off')
set(handles.grp_noise,'visible','off')
set(handles.grp_fourier,'visible','on')


% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function sampling_pen_Callback(hObject, eventdata, handles)
% hObject    handle to sampling_pen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
  
set(handles.text2,'visible','off')
set(handles.grp_fourier,'visible','off')
set(handles.grp_sys,'visible','off')
set(handles.grp_tomog,'visible','off')
set(handles.grp_filters,'visible','off')
set(handles.grp_cor,'visible','off')
set(handles.grp_noise,'visible','off')
set(handles.grp_sampling,'visible','on')

% --------------------------------------------------------------------
function cross_pen_Callback(hObject, eventdata, handles)
% hObject    handle to cross_pen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
  
set(handles.text2,'visible','off')
set(handles.grp_fourier,'visible','off')
set(handles.grp_sys,'visible','off')
set(handles.grp_sampling,'visible','off')
set(handles.grp_tomog,'visible','off')
set(handles.grp_filters,'visible','off')
set(handles.grp_noise,'visible','off')
set(handles.grp_cor,'visible','on')

% --------------------------------------------------------------------
function imaging_pen_Callback(hObject, eventdata, handles)
% hObject    handle to imaging_pen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
  
set(handles.text2,'visible','off')
set(handles.grp_fourier,'visible','off')
set(handles.grp_sampling,'visible','off')
set(handles.grp_cor,'visible','off')
set(handles.grp_tomog,'visible','off')
set(handles.grp_filters,'visible','off')
set(handles.grp_noise,'visible','off')
set(handles.grp_sys,'visible','on')

% --------------------------------------------------------------------
function filter_pen_Callback(hObject, eventdata, handles)
% hObject    handle to filter_pen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
  
set(handles.text2,'visible','off')
set(handles.grp_fourier,'visible','off')
set(handles.grp_sys,'visible','off')
set(handles.grp_sampling,'visible','off')
set(handles.grp_cor,'visible','off')
set(handles.grp_tomog,'visible','off')
set(handles.grp_filters,'visible','on')
set(handles.grp_noise,'visible','on')





% --------------------------------------------------------------------
function tom_pen_Callback(hObject, eventdata, handles)
% hObject    handle to tom_pen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
  
set(handles.text2,'visible','off')
set(handles.grp_filters,'visible','off')
set(handles.grp_fourier,'visible','off')
set(handles.grp_sys,'visible','off')
set(handles.grp_sampling,'visible','off')
set(handles.grp_cor,'visible','off')
set(handles.grp_noise,'visible','off')
set(handles.grp_tomog,'visible','on')



% --------------------------------------------------------------------
function Untitled_9_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when selected object is changed in grp_fourier.
function grp_fourier_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in grp_fourier 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles = guidata(hObject);
global im
if size(im,3)==3
     im=rgb2gray(im);
end
switch get(eventdata.NewValue,'Tag')
    case 'btn_ft'
    res_db = im2double(im);
    ft = fft2(res_db);
    abs_ = abs(ft);
    log_ = log(1+abs_);
    fft_s = fftshift(log_);
    axes(handles.axes2);
    imshow(fft_s,[]);   
    otherwise
end


% --- Executes when selected object is changed in grp_sampling.
function grp_sampling_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in grp_sampling 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles = guidata(hObject);
global im
global fft_ssub
if size(im,3)==3
     im=rgb2gray(im);
end
 img=double(im);      
[m n]=size(img);
img_fft=log(1+abs(fftshift(fft2(img))));    
switch get(eventdata.NewValue,'Tag')
    
    case 'btn_window'
        warndlg('Lütfen uygulamak istediðiniz pencere türünü seçiniz.','Warning')
    case 'hann_window'
        hannWindow=hann(m)*hann(n)';
        hannWindow=double(hannWindow);
        newImg=img.*hannWindow;
        newImg=double(newImg);
        axes(handles.axes2);
        imshow(newImg,[])
    case'blackman_window'
        blackmanHarrisWindow=blackmanharris(m)*blackmanharris(n)';
        blackmanHarrisWindow=double(blackmanHarrisWindow);
        newImg=img.*blackmanHarrisWindow;
        newImg=double(newImg);
       
        axes(handles.axes2);
        imshow(newImg,[])
%**ARKADAÞLAR BURADAN SORUMLU DEÐÝLLER** 
%      case 'btn_alis'    
%             prompt = {'Örnekleme oraný giriniz:'};
%             dlg_title = 'Input';
%             num_lines = 1;
%             defaultans = {''};
%             answer = inputdlg(prompt,dlg_title,num_lines,defaultans)
%             oran  = str2num(answer{:});
%             
%             imgRow=round(size(img,2)*(oran-1)/2); %Upsampling - her satýr
%             rowFft=fft(img,[],2);
%             paddingRow=padarray(fftshift(rowFft,2),[0 imgRow]);
%             imgCol = round(size(img,1)*(oran-1)/2);
%             colFft = fft(paddingRow,[],1);
%             paddingCol = padarray(fftshift(colFft,1),[imgRow 0]);
%             ifftCol = ifft(ifftshift(paddingCol,1),[],1);
%             ifftColRow = ifft(ifftshift(ifftCol,2),[],2);
%             newImg = abs(ifftColRow);
%             newImg = uint8(newImg*(numel(newImg)/numel(img)));
%             axes(handles.axes2);
%             imshow(newImg,[])
    case 'btn_sub'
        
         
          i_db = imresize(im2double(im),[256 256]);
          size(i_db)
          ft = fft2(i_db);
          
          [m n] = size(i_db);
          a = zeros(m,n);
            for i=1:8:m
                for j=1:8:n
                    a(i,j)=1;
                end
            end
          
          global sub_samp  
          sub_samp = i_db.*a;
          axes(handles.axes2);
          imshow(sub_samp,[])
          
          
          
    case 'btn_rec'
        if size(im,3)==3
            im=rgb2gray(im);
        end
          
          i_db = imresize(im2double(im),[256 256]);
          
          [M N] = size(i_db);
            filter = zeros(M,N);
            
            for u=1:M
                for v=1:N
                   uzunluk = sqrt((u-M./2).^2 + ((v-N./2).^2));
                  if uzunluk <= 200;
                    filter(u,v)=1;
                 else
                    filter(u,v)=0;
                 end
                end
            end
            i_db = img_fft.*filter;
          
          
          [m n] = size(i_db);
          a = zeros(m,n);
            for i=1:8:m
                for j=1:8:n
                    a(i,j)=1;
                end
            end
            
          sub_samp = i_db.*a;
          axes(handles.axes2);
          
          ft_sub = fft2(sub_samp);
          im_abssub = abs(ft_sub);
          log_abssub = log(1+im_abssub);
          fft_ssub = fftshift(log_abssub);
          b=ft_sub(1:32,1:32);
          global inv_sub
          inv_sub = ifft2(b);
          imres=imresize((inv_sub),[256 256],'bicubic');
          axes(handles.axes2)
          imshow((imres),[])
        
    
    otherwise
end


% --- Executes when selected object is changed in grp_cor.
function grp_cor_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in grp_cor 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles = guidata(hObject);
global im
if size(im,3)==3
     
im=rgb2gray(im);
end
im_gray=im;
[m n]=size(im_gray);

switch get(eventdata.NewValue,'Tag')
    case 'btn_cross'
            x = inputdlg({'Satýr baþlangýç','Satýr bitiþ','Sütun baþlangýç','Sütun bitiþ'},...
              'Cross Correlation', [1 30; 1 30;1 30; 1 30]); 
          
        im_db=im2double(im_gray);
        cim=ones(m,n);
        
        satir1=str2double(x{1});
        satir2=str2double(x{2});
        sutun1=str2double(x{3});
        sutun2=str2double(x{4});
        
        temp = im_db(satir1:satir2,sutun1:sutun2);
        cim(satir1:satir2,sutun1:sutun2)=temp;
        ccr=normxcorr2(im_db,cim);
        
        axes(handles.axes2);
        mesh(ccr)
    case 'btn_auto'  
        
         im_db=im2double(im_gray);
         acr = normxcorr2(im_db,im_db);
         axes(handles.axes2);
         mesh(acr)
         
    otherwise
end


%**ARKADAÞLAR BURADAN SORUMLU DEÐÝLLER** 
% --- Executes when selected object is changed in grp_sys.
% function grp_sys_SelectionChangedFcn(hObject, eventdata, handles)
% % hObject    handle to the selected object in grp_sys 
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% handles = guidata(hObject);
% global im
% if size(im,3)==3     
% im=rgb2gray(im);
% end
% im_gray=im;
% global ps
% switch get(eventdata.NewValue,'Tag')
%     case 'btn_point'
%        
%     psf = fspecial('gaussian',13,1);
%     ps = imfilter(im_gray,psf);      
%     axes(handles.axes2);
%     mesh(ps)
%     
%     case 'btn_optic'    
%         otf = psf2otf(ps);
%         axes(handles.axes2);
%         mesh(abs(otf))
%     otherwise
% end


% --- Executes when selected object is changed in grp_filters.
function grp_filters_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in grp_filters 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles = guidata(hObject);
global im
if size(im,3)==3     
im=rgb2gray(im);
end
im_gray=im;
switch get(eventdata.NewValue,'Tag')
    case 'btn_ilpf'
            i_db = im2double(im);
            ft = fft2(i_db);
            fft_s = fftshift(ft);
            
            prompt = {'Lütfen filtre yarýçapýný giriniz:'};
            dlg_title = 'Ideal Low-Pass Filter';
            num_lines = 1;
            defaultans = {''};
            answer = inputdlg(prompt,dlg_title,num_lines,defaultans)
            yaricap  = str2num(answer{:});
    
             if yaricap<=0
                warndlg('Filtre yarýçapý 0 dan büyük olmalýdýr!','Warning');
             else
            
            [M N] = size(i_db);
            filter = zeros(M,N);
            for u=1:M
             for v=1:N
                uzunluk = sqrt((u-M./2).^2 + ((v-N./2).^2));
                 if uzunluk <= yaricap
                    filter(u,v)=1;
                 else
                    filter(u,v)=0;
                 end
             end
            end
    
            filtered_fd = fft_s.*filter;
            inv_fd = ifft2(filtered_fd);
            filtered = abs(inv_fd);
    
            axes(handles.axes2)
            imshow(filtered,[])
             end
    case 'btn_blpf'
        
            i_db = im2double(im);
            ft = fft2(i_db);
            fft_s = fftshift(ft);    
        
            prompt = {'Lütfen filtre yarýçapýný giriniz:'};
            dlg_title = 'Butterworth Low-Pass Filter';
            num_lines = 1;
            defaultans = {''};
            answer = inputdlg(prompt,dlg_title,num_lines,defaultans)
            yaricap  = str2num(answer{:});
            
            if yaricap<=0
                warndlg('Filtre yarýçapý 0 dan büyük olmalýdýr!','Warning');
            else
           
            [M N] = size(i_db);
            filter_btw_lp = zeros(M,N);
            n=1;
            for u=1:M
                for v=1:N
                   uzunluk = sqrt((u-M./2).^2 + ((v-N./2).^2));
                   filter_btw_lp(u,v)= 1/(1+(uzunluk/yaricap)^2*n);
                end
            end
    
          filtered_fd = fft_s.*filter_btw_lp;
          inv_fd = ifft2(filtered_fd);
          filtered = abs(inv_fd);
    
          axes(handles.axes2)
          imshow(filtered,[])
            end
    case 'btn_glpf'
        
            i_db = im2double(im);
            ft = fft2(i_db);
            fft_s = fftshift(ft);       
        
            prompt = {'Lütfen filtre yarýçapýný giriniz:'};
            dlg_title = 'Gaussian Low-Pass Filter';
            num_lines = 1;
            defaultans = {''};
            answer = inputdlg(prompt,dlg_title,num_lines,defaultans)
            yaricap  = str2num(answer{:});
    
             if yaricap<=0
                warndlg('Filtre yarýçapý 0 dan büyük olmalýdýr!','Warning');
             else
            
            [M N] = size(i_db);
            filter = zeros(M,N);
            for u=1:M
                for v=1:N
                   uzunluk = sqrt((u-M./2).^2 + ((v-N./2).^2));
                   filter(u,v)=exp(-(uzunluk^2)/(2*(yaricap^2)));
                end
            end
    
          filtered_fd = fft_s.*filter;
          inv_fd = ifft2(filtered_fd);
          filtered = abs(inv_fd);
    
          axes(handles.axes2)
          imshow(filtered,[])
       end
    case 'btn_ihpf'
        i_db = im2double(im);
            ft = fft2(i_db);
            fft_s = fftshift(ft);
        
            prompt = {'Lütfen filtre yarýçapýný giriniz:'};
            dlg_title = 'Ideal High-Pass Filter';
            num_lines = 1;
            defaultans = {''};
            answer = inputdlg(prompt,dlg_title,num_lines,defaultans)
            yaricap  = str2num(answer{:});
    
             if yaricap<=0
                warndlg('Filtre yarýçapý 0 dan büyük olmalýdýr!','Warning');
             else
         
            [M N] = size(i_db);
            filter = zeros(M,N);
            for u=1:M;
                for v=1:N;
                   uzunluk = sqrt((u-M./2).^2 + ((v-N./2).^2));
                if uzunluk <= yaricap
                    filter(u,v)=0;
                else
                    filter(u,v)=1;
                end
                end
            end
    
            filtered_fd = fft_s.*filter;
            inv_fd = ifft2(filtered_fd);
            filtered = abs(inv_fd);
    
            axes(handles.axes2)
            imshow(filtered,[])
      end
    case 'btn_bhpf'
        
            i_db = im2double(im);
            ft = fft2(i_db);
            fft_s = fftshift(ft);
        
            prompt = {'Lütfen filtre yarýçapýný giriniz:'};
            dlg_title = 'Butterworth High-Pass Filter';
            num_lines = 1;
            defaultans = {''};
            answer = inputdlg(prompt,dlg_title,num_lines,defaultans)
            yaricap  = str2num(answer{:});
    
             if yaricap<=0
                warndlg('Filtre yarýçapý 0 dan büyük olmalýdýr!','Warning');
             else
            
            [M N] = size(i_db);
            filter_btw_hp = zeros(M,N);
            for u=1:M
                for v=1:N
                 uzunluk = sqrt((u-M./2).^2 + ((v-N./2).^2));
                 filter_btw_hp(u,v)= 1/(1+(yaricap/uzunluk)^2);
                end
            end
    
            filtered_fd = fft_s.*filter_btw_hp;
            inv_fd = ifft2(filtered_fd);
            filtered = abs(inv_fd);
    
            axes(handles.axes2)
            imshow(filtered,[])
          end
    case 'btn_ghpf'
            i_db = im2double(im);
            ft = fft2(i_db);
            fft_s = fftshift(ft);
        
            prompt = {'Lütfen filtre yarýçapýný giriniz:'};
            dlg_title = 'Gaussian High-Pass Filter';
            num_lines = 1;
            defaultans = {''};
            answer = inputdlg(prompt,dlg_title,num_lines,defaultans)
            yaricap  = str2num(answer{:});
    
            if yaricap<=0
                warndlg('Filtre yarýçapý 0 dan büyük olmalýdýr!','Warning');
            else
            
            [M N] = size(i_db);
            filter = zeros(M,N);
            for u=1:M
                for v=1:N
                   uzunluk = sqrt((u-M./2).^2 + ((v-N./2).^2));
                   filter(u,v)=1-exp(-(uzunluk^2)/(2*(yaricap^2)));
                end
            end
    
          filtered_fd = fft_s.*filter;
          inv_fd = ifft2(filtered_fd);
          filtered = abs(inv_fd);
    
          axes(handles.axes2)
          imshow(filtered,[])
       end
    case 'btn_ibpf'
            i_db = im2double(im);
            ft = fft2(i_db);
            fft_s = fftshift(ft);   
        
            prompt = {'Lütfen küçük yarýçapý giriniz:','Lütfen büyük yarýçapý giriniz:'};
            dlg_title = 'Ideal Band-Pass Filter';
            num_lines = 1;
            defaultans = {'',''};
            answer = inputdlg(prompt,dlg_title,num_lines,defaultans)
            yaricap1 = str2num(char(answer(1)));
            yaricap2 = str2num(char(answer(2)));
            
            if yaricap1>=yaricap2
                warndlg('2.yarýçap 1.yarýçaptan büyük olmalýdýr!','Warning')
            else
            
            [M N] = size(i_db);
            filter=zeros(M,N);
            for u=1:M
             for v=1:N
                 uzunluk = sqrt((u-M./2).^2 + ((v-N./2).^2));
                 if yaricap1>=uzunluk;
                    filter(u,v)=0;
                    else if uzunluk>=yaricap2
                     filter(u,v)=0;
                       else 
                        filter(u,v)=1;
                    end
                 end
             end
            end
    
            filtered_fd = fft_s.*filter;
            inv_fd = ifft2(filtered_fd);
            filtered = abs(inv_fd);
    
            axes(handles.axes2)
            imshow(filtered,[])
            end
    case 'btn_bbpf'
            i_db = im2double(im);
            ft = fft2(i_db);
            fft_s = fftshift(ft);
        
            prompt = {'Lütfen küçük yarýçapý giriniz:','Lütfen büyük yarýçapý giriniz:'};
            dlg_title = 'Butterworth Band-Pass Filter';
            num_lines = 1;
            defaultans = {'',''};
            answer = inputdlg(prompt,dlg_title,num_lines,defaultans)
            yaricap1 = str2num(char(answer(1)));
            yaricap2 = str2num(char(answer(2)));
            
            if yaricap1>=yaricap2
                warndlg('2.yarýçap 1.yarýçaptan büyük olmalýdýr!','Warning')
            else
            
            [M N] = size(i_db);
            filter1=zeros(M,N);
            filter2=zeros(M,N);
            filter3=zeros(M,N);
            n=4;
            for u=1:M
             for v=1:N
                 uzunluk = sqrt((u-M./2).^2 + ((v-N./2).^2));
                 filter1(u,v)=1/(1+(uzunluk/yaricap2)^(2*n));
                 filter2(u,v)=1/(1+(uzunluk/yaricap1)^(2*n));  
                 filter3(u,v)=1.0-filter2(u,v);
                 filter3(u,v)=filter1(u,v)*filter3(u,v);
                 
             end
            end
    
            filtered_fd = fft_s.*filter3;
            inv_fd = ifft2(filtered_fd);
            filtered = abs(inv_fd);
    
            axes(handles.axes2)
            imshow(filtered,[])
         end
    case 'btn_gbpf'
            i_db = im2double(im);
            ft = fft2(i_db);
            fft_s = fftshift(ft);
        
            prompt = {'Lütfen küçük yarýçapý giriniz:','Lütfen büyük yarýçapý giriniz:'};
            dlg_title = 'Gaussian Band-Pass Filter';
            num_lines = 1;
            defaultans = {'',''};
            answer = inputdlg(prompt,dlg_title,num_lines,defaultans)
            yaricap1 = str2num(char(answer(1)));
            yaricap2 = str2num(char(answer(2)));
            
            if yaricap1>=yaricap2
                warndlg('2.yarýçap 1.yarýçaptan büyük olmalýdýr!','Warning')
            else
            
            [M N] = size(i_db);
            filter1=zeros(M,N);
            filter2=zeros(M,N);
            filter3=zeros(M,N);
            
            for u=1:M
             for v=1:N
                 uzunluk = sqrt((u-M./2).^2 + ((v-N./2).^2));
                 filter1(u,v)=exp(-uzunluk^2/(2*yaricap2^2));
                 filter2(u,v)=exp(-uzunluk^2/(2*yaricap1^2)); 
                 filter3(u,v)=imcomplement(filter2(u,v));
                 filter3(u,v)=filter1(u,v)*filter3(u,v);
                                           
             end
            end
    
            filtered_fd = fft_s.*filter3;
            inv_fd = ifft2(filtered_fd);
            filtered = abs(inv_fd);
    
            axes(handles.axes2)
            imshow(filtered,[])
            end
    case 'btn_ibrf'   
        
            i_db = im2double(im);
            ft = fft2(i_db);
            fft_s = fftshift(ft);
        
            prompt = {'Lütfen küçük yarýçapý giriniz.:','Lütfen büyük yarýçapý giriniz.'};
            dlg_title = 'Ideal Band-Reject Filter';
            num_lines = 1;
            defaultans = {'',''};
            answer = inputdlg(prompt,dlg_title,num_lines,defaultans)
            yaricap1 = str2num(char(answer(1)));
            yaricap2 = str2num(char(answer(2)));
            
            if yaricap1>=yaricap2
                warndlg('2.yarýçap 1.yarýçaptan büyük olmalýdýr!','Warning')
            else
            
            w=yaricap2-yaricap1;
            [M N] = size(i_db);
            filter = zeros(M,N);
            for u=1:M
             for v=1:N
                 uzunluk = sqrt((u-M./2).^2 + ((v-N./2).^2));
                  if yaricap1>=uzunluk
                    filter(u,v)=1;
                    else if uzunluk>=yaricap2
                      filter(u,v)=1;
                       else 
                        filter(u,v)=0;
                    end
                 end
             end
            end
    
            filtered_fd = fft_s.*filter;
            inv_fd = ifft2(filtered_fd);
            filtered = abs(inv_fd);
    
            axes(handles.axes2)
            imshow(filtered,[])
            end
    case 'btn_bbrf'
            i_db = im2double(im);
            ft = fft2(i_db);
            fft_s = fftshift(ft);
        
            prompt = {'Lütfen küçük yarýçapý giriniz:','Lütfen büyük yarýçapý giriniz:'};
            dlg_title = 'Butterworth-Band Reject Filter';
            num_lines = 1;
            defaultans = {'',''};
            answer = inputdlg(prompt,dlg_title,num_lines,defaultans)
            yaricap1 = str2num(char(answer(1)));
            yaricap2 = str2num(char(answer(2)));
            
            if yaricap1>=yaricap2
                warndlg('2.yarýçap 1.yarýçaptan büyük olmalýdýr!','Warning')
            else
            
            [M N] = size(i_db);
            filter1=zeros(M,N);
            filter2=zeros(M,N);
            filter3=zeros(M,N);
            n=4;
            for u=1:M
             for v=1:N
                 uzunluk = sqrt((u-M./2).^2 + ((v-N./2).^2));
                 filter1(u,v)=1/(1+(uzunluk/yaricap2)^(2*n));
                 filter2(u,v)=1/(1+(uzunluk/yaricap1)^(2*n));  
                 filter3(u,v)=1.0-filter1(u,v);
                 filter3(u,v)=filter2(u,v)*filter3(u,v);
                 filter4(u,v)=1-filter3(u,v);
             end
            end
            
            filtered_fd = fft_s.*filter4;
            inv_fd = ifft2(filtered_fd);
            filtered = abs(inv_fd);
    
            axes(handles.axes2)
            imshow(filtered,[])
            end
    case 'btn_gbrf'
            i_db = im2double(im);
            ft = fft2(i_db);
            fft_s = fftshift(ft);
         
            prompt = {'Lütfen küçük yarýçapý giriniz:','Lütfen büyük yarýçapý giriniz:'};
            dlg_title = 'Gaussian Band-Reject Filter';
            num_lines = 1;
            defaultans = {'',''};
            answer = inputdlg(prompt,dlg_title,num_lines,defaultans)
            yaricap1 = str2num(char(answer(1)));
            yaricap2 = str2num(char(answer(2)));
            
            if yaricap1>=yaricap2
                warndlg('2.yarýçap 1.yarýçaptan büyük olmalýdýr!','Warning')
            else
            
            [M N] = size(i_db);
            filter1=zeros(M,N);
            filter2=zeros(M,N);
            filter3=zeros(M,N);
            
            for u=1:M
             for v=1:N
                 uzunluk = sqrt((u-M./2).^2 + ((v-N./2).^2));
                 filter1(u,v)=exp(-uzunluk^2/(2*yaricap2^2));
                 filter2(u,v)=exp(-uzunluk^2/(2*yaricap1^2)); 
                 filter3(u,v)=imcomplement(filter2(u,v));
                 filter3(u,v)=filter1(u,v)*filter3(u,v);
                 filter4(u,v)=1-filter3(u,v);                          
             end
            end
    
            filtered_fd = fft_s.*filter4;
            inv_fd = ifft2(filtered_fd);
            filtered = abs(inv_fd);
    
            axes(handles.axes2)
            imshow(filtered,[])
        end
    case 'btn_homo'    
        
            i_db = im2double(im);
        
            log_db = log(i_db+0.1);
            fft_domain = fft2(log_db);
        
            prompt = {'Lütfen filtre yarýçapýný giriniz:'};
            dlg_title = 'Homomorphic Filter';
            num_lines = 1;
            defaultans = {''};
            answer = inputdlg(prompt,dlg_title,num_lines,defaultans)
            yaricap  = str2num(answer{:});
    
         
            [M N] = size(i_db);
            filter = zeros(M,N);
            for u=1:M
                for v=1:N
                   uzunluk = sqrt((u-M./2).^2 + ((v-N./2).^2));
                   filter(u,v)=1-exp(-(uzunluk^2)/(2*(yaricap^2)));
                end
            end
            
          
          filtered_fd = fft_domain.*filter;
          inv_fd = ifft2(filtered_fd);
          filtered_exp = exp(inv_fd);
          filtered = abs(filtered_exp);
          
          axes(handles.axes2)
          imshow(filtered,[])  
    
end


% --- Executes when selected object is changed in grp_noise.
function grp_noise_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in grp_noise 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im
if size(im,3)==3     
im=rgb2gray(im);
end
im_db = im2double(im);
switch(get(eventdata.NewValue,'Tag'))
  
    case 'button_saltpepper_n'
       
         prompt = {'Lütfen gürültü þiddetini giriniz.(0-1):'};
         dlg_title = 'Salt&Pepper Noise';
         num_lines = 1;
         defaultans = {''};
         answer = inputdlg(prompt,dlg_title,num_lines,defaultans)
         siddet  = str2num(answer{:});
       
       if siddet<=0
           warndlg('Gürültü þiddeti 0-1 aralýðýnda olmalýdýr.','Warning')
       
       else if siddet>1
           warndlg('Gürültü þiddeti 0-1 aralýðýnda olmalýdýr.','Warning')
       
       else
          image_noise = imnoise(im_db,'salt & pepper',siddet);
       
         axes(handles.axes1)
         imshow(image_noise)
         im = image_noise;
       end
      end
        
     case 'button_speckle_n'
       
         prompt = {'Lütfen gürültü þiddetini giriniz.(0-1):'};
         dlg_title = 'Speckle Noise';
         num_lines = 1;
         defaultans = {''};
         answer = inputdlg(prompt,dlg_title,num_lines,defaultans)
         siddet  = str2num(answer{:});
       
       if siddet<=0
           warndlg('Gürültü þiddeti 0-1 aralýðýnda olmalýdýr.','Warning')
       else if siddet>1
           warndlg('Gürültü þiddeti 0-1 aralýðýnda olmalýdýr.','Warning')
       
       else
           
         image_noise = imnoise(im_db,'speckle',siddet);
       
         axes(handles.axes1)
         imshow(image_noise) 
         im = image_noise;
       end 
     end
       
    case 'button_gaussian_n'
       
         prompt = {'Lütfen gürültü þiddetini giriniz.(0-1):'};
         dlg_title = 'Gaussian Noise';
         num_lines = 1;
         defaultans = {''};
         answer = inputdlg(prompt,dlg_title,num_lines,defaultans)
         siddet  = str2num(answer{:});
       
       if siddet<=0 & siddet>1
           warndlg('Gürültü þiddeti 0-1 aralýðýnda olmalýdýr.','Warning')
       else if siddet>1
           warndlg('Gürültü þiddeti 0-1 aralýðýnda olmalýdýr.','Warning')
       
       else
         
         image_noise = imnoise(im_db,'gaussian',siddet);
       
         axes(handles.axes1)
         imshow(image_noise) 
         
       end 
     end
end


% --- Executes when grp_tomog is resized.



% --- Executes when selected object is changed in grp_tomog.
%**ARKADAÞLAR BURADAN SORUMLU DEÐÝLLER** 
% function grp_tomog_SelectionChangedFcn(hObject, eventdata, handles)
% % hObject    handle to the selected object in grp_tomog 
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% global im
% if size(im,3)==3     
% im=rgb2gray(im);
% end
% P = im2double(im);
% switch(get(eventdata.NewValue,'Tag'))
%     case 'btn_back'
%     prompt = {'Projection Açý deðerini Giriniz'};
%     dlg_title = 'Back Projection';
%     num_lines = 1;
%     defaultans = {''};
%     answer = inputdlg(prompt,dlg_title,num_lines,defaultans)
%     aci  = str2num(answer{:});
%     theta3 = 0:(180/aci):180;  
%     [R3,xp] = radon(P,theta3); 
%     num_angles_R3 = size(R3,2)
%     output_size = max(size(P));
%     dtheta3 = theta3(2) - theta3(1);
%     I3 = iradon(R3,dtheta3,output_size);
%     axes(handles.axes2)
%     imshow(I3,[])
%     case 'btn_direct'
% %     prompt = {'Projection Açý deðerini Giriniz'};
% %     dlg_title = 'Direct Fourier Reconstruction';
% %     num_lines = 1;
% %     defaultans = {''};
% %     answer = inputdlg(prompt,dlg_title,num_lines,defaultans)
% %     aci  = str2num(answer{:});
% %     theta3 = 0:(180/aci):180;  
% %     [R3,xp] = radon(P,theta3); 
% %     fftr = fft(R3);
% %      a = ones(size(fftr));
% %       a = pol2cart(theta3,fftr);
% %     inv = ifft2(a)
% %     figure,imshow(abs(inv),[])
% end
