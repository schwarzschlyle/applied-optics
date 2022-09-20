
%Import images
imageA = imread('hexagon','jpg');


%Display images
figure, imshow(imageA)
title('Image A - Greek Church')

%Perform 2D FFTs
fftA = fft2(double(imageA));


%Display magnitude and phase of 2D FFTs
figure, imshow(abs(fftshift(fftA)),[24 100000]), colormap gray
title('Image A FFT2 Magnitude')

figure, imshow(angle(fftshift(fftA)),[-pi pi]), colormap gray
title('Image A FFT2 Phase')



fftC = abs(fftA).*exp(i*angle(fftA));
imageC = ifft2(fftC);
figure, imshow(imageC)


cmin = min(min(abs(imageC)))
cmax = max(max(abs(imageC)))


figure, imshow(abs(imageC), [0 5]), colormap gray
title('Image C  Magnitude')

