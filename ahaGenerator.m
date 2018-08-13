function ahaGenerator(data)

basal = data.patient_data{1}.sector_analysis.T2mean;
mid = data.patient_data{2}.sector_analysis.T2mean;
apical = data.patient_data{3}.sector_analysis.T2mean;

AHAdata = [basal mid apical];

figure(); bullseye2(AHAdata', 'aha', 1, 'n', 10000, 'label', 1); colorbar;

name = strcat(num2str(data.exam_number), ' AHA');
% title(name);
saveas(gcf, name, 'png');

end