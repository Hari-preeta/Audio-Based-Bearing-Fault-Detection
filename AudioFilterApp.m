% tran=[100.24,-50.489,87,6483];
% x=length(tran);
% f=fopen("transs.txt","w");
% for i=1:x
%     fprintf(f,"%f\n",tran(i));
% end
clc
clear all
close all
% Load the audio file
[audio, sampleRate] = audioread('D:\3D Objects\5TH SEM\EDSP\audio\a1_fault2.5.wav');


% Total duration of the audio signal
totalDuration = length(audio) / sampleRate; % in seconds
disp('Sample rate of signal: ')
disp(sampleRate)

% Time vector for the complete signal
timeComplete = (0:length(audio)-1) / sampleRate;

% Plot the complete audio signal in the time domain
subplot(2, 1, 1);
plot(timeComplete, audio);
xlabel('Time (seconds)');
ylabel('Amplitude');
title('Complete Audio Signal in Time Domain');

% Extracting audio from 30 to 40 seconds
startSecond = 30;
endSecond = 30.2;

% Convert time to sample indices
startIndex = startSecond * sampleRate + 1; % +1 to avoid 0 indexing
endIndex = endSecond * sampleRate;

% Ensure endIndex does not exceed the length of the audio signal
if endIndex > length(audio)
    endIndex = length(audio);
end

% Extract the segment from 30 to 40 seconds
audioSegment = audio(startIndex:endIndex);

% Time vector for the extracted segment
timeSegment = (0:length(audioSegment)-1) / sampleRate;

% Plot the segment of the audio signal in the time domain
subplot(2, 1, 2);
plot(timeSegment, audioSegment);
xlabel('Time (seconds)');
ylabel('Amplitude');
title('Audio Signal from 30 to 31 Seconds in Time Domain');


% Define filter parameters (example values, adjust as needed)
cutoffFreq = 500; % Adjust the cutoff frequency based on noise characteristics
order = 10; % Filter order (higher orders provide steeper roll-offs)

% Design a low-pass Butterworth filter
[b, a] = butter(order, cutoffFreq / (sampleRate / 2), 'low');

% Apply the filter to the audio segment
filteredSegment = filter(b, a, audioSegment);

% Plot the original and filtered signals for comparison
figure;
subplot(2, 1, 1);
plot(timeSegment, audioSegment);
xlabel('Time (seconds)');
ylabel('Amplitude');
title('Original Audio Segment');

subplot(2, 1, 2);
plot(timeSegment, filteredSegment);
xlabel('Time (seconds)');
ylabel('Amplitude');
title('Filtered Audio Segment (Noise Removed)');