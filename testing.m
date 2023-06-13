img = imread('Cars29.png');
load 'detectorWhites.mat'
[bboxes, scores] = detect(detectorYOLOv2,img);
if(~isempty(bboxes))
    img = insertObjectAnnotation(img,'rectangle',bboxes,scores,'Color','green');
end
figure
imshow(img)