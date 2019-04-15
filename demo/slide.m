
function [ out_image,m,n ] = slide( net, image, rows, cols, step_r, step_c, m, n, model_dir)
% Slide the image using exhaustive search technique

out_image = zeros(size(image,1),size(image,2),3);
out_image = im2uint8(out_image);
out_image(:,:,:)=256;

% 1-st sliding
for i =1:step_r:(size(image,1)-rows+1)
    for j=1:step_c:(size(image,2)-cols+1)
        im=image(i:i+rows-1, j:j+cols-1,:);
        imshow(im);
        [~, maxlabel] = caffe_classification_part2(im ,net, model_dir); 
        switch maxlabel
        case 1
             m=m+1;

%              imwrite(im,['D:\caffe-master\matlab\demo\0\',num2str(m),'.jpg']);     % Save the little images
             out_image(i:i+rows-1,j:j+cols-1,:)=im;
        case 2
             n=n+1;
%              imwrite(im,['D:\caffe-master\matlab\demo\1\',num2str(n),'.jpg']);
        end
    end
end

% % 2-nd sliding
% for i =step_r/2:step_r:(size(image,1)-rows+1)
%     for j=step_c/2:step_c:(size(image,2)-cols+1)
%         im=image(i:i+rows-1, j:j+cols-1,:);
%         imshow(im);
%         [~, maxlabel] = caffe_classification_part2(im ,net, model_dir); 
%         switch maxlabel
%         case 1
%              m=m+1;
% %              imwrite(im,['D:\caffe-master\matlab\demo\0\',num2str(m),'.jpg']);
%              out_image(i:i+rows-1,j:j+cols-1,:)=im;
%         case 2
%              n=n+1;
% %              imwrite(im,['D:\caffe-master\matlab\demo\1\',num2str(n),'.jpg']);
%         end
%     end
% end