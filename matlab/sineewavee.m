




% % Define parameters
% fs = 1000; % Sampling frequency (Hz)
% t = 0:1/fs:0.2; % Time vector from 0 to 1 second with one wave cycle
% f=50;w=2*pi*f; %constant frequency
% a1=150;a2=25;a3=3; %amplitude values
% 
% % Generate the signals
% signal = a1 * sin(w*t) + a2 * sin(3*w*t) + a3 * sin(5*w*t); %required signal
% % Plot the signal
% 
% %subplot(1,3,3)
% plot(t, signal);
% xlabel('Time (s)');
% ylabel('Amplitude');
% title('Signal: 150 sin(w*t) + 20 sin(3*w*t) + 3 sin(5*w*t)');
% grid on;

% 
% 
% 
% fs = 1000; % Sampling frequency (Hz)
% t = 0:1/fs:0.2; 
% f = 50; % Frequency of the sine wave (50 Hz)
% w = 2 * pi * f;
% a1 = 150; 
% a2 = 20; 
% a3 = 3;   
% noise_amplitude = 10; 
% 
% %Generate the signals
% signal = a1 * sin(w * t) + a2 * sin(3 * w * t) + a3 * sin(5 * w * t);
% 
% % Add noise to the signal
% noisy_signal = signal + noise_amplitude * randn(size(t));
% 
% %Plot the noisy signal
% subplot(1,2,1);
% plot(t,signal);
% xlabel('Time (s)');
% ylabel('Amplitude');
% title('Signal without Noise');
% grid on;
% subplot(1,2,2);
% plot(t, noisy_signal);
% xlabel('Time (s)');
% ylabel('Amplitude');
% title('Signal with Noise');
% grid on;


% Define parameters
% fs = 500; % Sampling frequency (Hz)
% t = 0:1/fs:0.2; % Time vector from 0 to 0.2 seconds
% f = 50; % Frequency of the sine wave (50 Hz)
% w = 2 * pi * f;
% a1 = 100; % Amplitude of the first sine wave
% a2 = 20;  % Amplitude of the third harmonic
% a3 = 3;   % Amplitude of the fifth harmonic
% noise_amplitude = 10; % Adjust the noise amplitude as needed
% 
% Generate the signals
% signal = a1 * sin(w * t) + a2 * sin(3 * w * t) + a3 * sin(5 * w * t);
% 
% Add noise to the signal
% noisy_signal = signal + noise_amplitude * randn(size(t));
% 
% Perform FFT on the signals
% n = length(t);
% frequencies = (-fs/2):(fs/n):(fs/2) - fs/n; % Frequency axis for plotting
% signal_fft = fftshift(fft(noisy_signal));%fft for noise applied signal
% noise_fft = fftshift(fft(noise_amplitude * randn(size(t))));
% 
% 
% fft for complete noisy signal and for noise signal
% Plot the time-domain signal
% subplot(2, 1, 1);
% plot(t, noisy_signal);
% xlabel('Time (s)');
% ylabel('Amplitude');
% title('Noisy Signal');
% grid on;
% 
% Plot the frequency domain signal and noise
% subplot(2, 1, 2);
% plot(frequencies, abs(signal_fft), 'b', 'LineWidth', 1.5);
% hold on;
% plot(frequencies, abs(noise_fft), 'r', 'LineWidth', 1.5);
% xlabel('Frequency (Hz)');
% ylabel('Amplitude');
% title('Frequency Response (Signal and Noise)');
% legend('Signal', 'Noise');
% grid on;
% 
% % Define parameters
% fs = 500; % Sampling frequency (Hz)
% t = 0:1/fs:0.2; % Time vector from 0 to 0.2 seconds
% f = 50; % Frequency of the sine wave (50 Hz)
% w = 2 * pi * f;
% a1 = 100; % Amplitude of the first sine wave
% a2 = 20;  % Amplitude of the third harmonic
% a3 = 3;   % Amplitude of the fifth harmonic
% noise_amplitude = 10; % Adjust the noise amplitude as needed
% 
% %Generate the signals
% signal = a1 * sin(w * t) + a2 * sin(3 * w * t) + a3 * sin(5 * w * t);
% 
% %Add noise to the signal
% noisy_signal = signal + noise_amplitude * randn(size(t));
% 
% %Perform FFT on the signals
% n = length(t);
% frequencies = (0:fs/n:250); % Frequency axis from 0 to 250 Hz
% signal_fft = fft(noisy_signal);% fft for noise applied sine signal
% noise_fft = fft(noise_amplitude * randn(size(t)));%fft for only noise signal
% 
% Plot the frequency domain signal and noise
% subplot(2,1,1)
% plot(frequencies, abs(signal_fft(1:length(frequencies))), 'b', 'LineWidth', 1.5);
% hold on;
% plot(frequencies, abs(noise_fft(1:length(frequencies))), 'r', 'LineWidth', 1.5);
% xlabel('Frequency (Hz)');
% ylabel('Amplitude');
% title('Frequency Response (Signal and Noise)');
% legend('Signal', 'Noise');
% grid on;
% 
% subplot(2,1,1)
% plot(frequencies, abs(signal_fft(1:length(frequencies))), 'b', 'LineWidth', 1.5);
% xlabel('Frequency (Hz)');
% ylabel('Amplitude');
% title('Frequency Response (Signal)');
% subplot(2,1,2)
% plot(frequencies, abs(noise_fft(1:length(frequencies))), 'r', 'LineWidth', 1.5);
% xlabel('Frequency (Hz)');
% ylabel('Amplitude');
% title('Frequency Response (Noise)');
% legend('Signal', 'Noise');
% 
% 
% grid on;



%Define parameters
fs = 1000; % Sampling frequency (Hz)
t = 0:1/fs:0.2; % Time vector from 0 to 0.2 seconds
f = 50; % Frequency of the sine wave (50 Hz)
w = 2 * pi * f;
a1 = 150; % Amplitude of the first sine wave
a2 = 20;  % Amplitude of the third harmonic
a3 = 3;   % Amplitude of the fifth harmonic
noise_amplitude = 10; % Adjust the noise amplitude as needed

% Generate the signals
signal = a1 * sin(w * t) + a2 * sin(3 * w * t) + a3 * sin(5 * w * t);

% Add noise to the signal
noisy_signal = signal + noise_amplitude * randn(size(t));


% %subplot(2, 2, [1, 3]);
% plot(t, noisy_signal, 'b');
% hold on;
% plot(t, signal, 'm', 'LineWidth', 1.5);
% xlabel('Time (s)');
% ylabel('Amplitude');
% title('Noisy and Normal Signals');
% legend('Noisy', 'Normal');
% grid on;


% Design a low-pass Butterworth filter
cutoff_freq = 100; % Cutoff frequency for the low-pass filter (adjust as needed)
order = 6; % Filter order (adjust as needed)
[b, a] = butter(order, cutoff_freq / (fs / 2), 'low');

% Apply the filter to remove noise
denoised_signal = filtfilt(b, a, noisy_signal);

% Perform FFT on the denoised signal
n = length(t);
frequencies = (-fs/2):(fs/n):(fs/2) - fs/n; % Frequency axis for plotting
denoised_signal_fft = fftshift(fft(denoised_signal));

%Plot the time-domain signal (noisy and denoised)
% %subplot(2, 2, [1, 3]);
% plot(t, noisy_signal, 'b');
% hold on;
% plot(t, denoised_signal, 'r', 'LineWidth', 1.5);
% xlabel('Time (s)');
% ylabel('Amplitude');
% title('Noisy and Normal Signals');
% legend('Noisy Signal', 'Normal Signal');
% grid on;

%Plot the frequency domain signal
%subplot(2, 2, [2, 4]);
%plot(frequencies, abs(denoised_signal_fft), 'm', 'LineWidth', 1.5);
xlabel('Frequency (Hz)');
ylabel('Amplitude');
title('Frequency Response of Denoised Signal');
grid on;
 n = length(t);
frequencies = (-fs/2):(fs/n):(fs/2) - fs/n; % Frequency axis for plotting
denoised_signal_fft = fftshift(fft(denoised_signal));
%subplot(1,2,1);
%plot(frequencies, abs(denoised_signal_fft), 'g', 'LineWidth', 1.5);
n = length(t);
frequencies = (-fs/2):(fs/n):(fs/2) - fs/n; % Frequency axis for plotting
%subplot(1,2,2);
denoised_signal_fft1 = fftshift(fft(noisy_signal));
plot(frequencies, abs(denoised_signal_fft1), 'm', 'LineWidth', 1.5);




