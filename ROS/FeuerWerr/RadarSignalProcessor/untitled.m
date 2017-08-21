    figure(100);
    hold on;
    contourf(radParam.rangeAxis,radParam.velAxis,log(abs(fftshift(fft2(winData'),1))));
    ylabel('velocity $$\frac{m}{s}$$');
    xlim([0 40]);
    ylim([-4 4]);
    colorbar;
    xlabel('range [m]');
    title('2D (range,velocity) FFT');