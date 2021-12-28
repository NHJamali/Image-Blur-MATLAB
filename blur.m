function output = blur(img,w)
[r,c]=size(img);
%avg=2*w+1;
output=img;
for ii=1:r
    for jj=1:c
        if ii==1 %For elements in first row
            if jj==1 % for first element of matrix
                av_mat=img(1:(1+w),1:(1+w));
                summat=sum(sum(av_mat));
                av=summat/((1+w)*(1+w));
                output(ii,jj)=av;
            elseif jj==c % for first row and last column
                av_mat=img(1:(1+w),end-w:end);
                summat=sum(sum(av_mat));
                av=summat/((1+w)*(1+w));
                output(ii,jj)=av;
            elseif jj<=w
                av_mat=img(1:w,1:ii+w);
                summat=sum(sum(av_mat));
                av=summat/(size(av_mat,1)*size(av_mat,2));
                output(ii,jj)=av;
            elseif (jj+w)>c
                av_mat=img(1:w,jj-w:c);
                summat=sum(sum(av_mat));
                av=summat/(size(av_mat,1)*size(av_mat,2));
                output(ii,jj)=av;
            else
                av_mat=img(1:(1+w),jj-w:jj+w);
                summat=sum(sum(av_mat));
                av=summat/(size(av_mat,1)*size(av_mat,2));
                output(ii,jj)=av;
            end
        elseif ii==r
            if jj==1
                av_mat=img(ii-w:r,1:(1+w));
                summat=sum(sum(av_mat));
                av=summat/(size(av_mat,1)*size(av_mat,2));
                output(ii,jj)=av;
            elseif jj==c
                av_mat=img(ii-w:r,c-w:c);
                summat=sum(sum(av_mat));
                av=summat/(size(av_mat,1)*size(av_mat,2));
                output(ii,jj)=av;
            elseif jj<=w
                av_mat=img(ii-w:r,1:jj+w);
                summat=sum(sum(av_mat));
                av=summat/(size(av_mat,1)*size(av_mat,2));
                output(ii,jj)=av;
            elseif (jj+w)>c
                av_mat=img(ii-w:r,(jj-w):c);
                summat=sum(sum(av_mat));
                av=summat/(size(av_mat,1)*size(av_mat,2));
                output(ii,jj)=av;
            else
                av_mat=img(ii-w:r,(jj-w):(jj+w));
                summat=sum(sum(av_mat));
                av=summat/(size(av_mat,1)*size(av_mat,2));
                output(ii,jj)=av;
            end
        elseif jj==1
            if ii<=w
                av_mat=img(1:(ii+w),jj:(jj+w));
                summat=sum(sum(av_mat));
                av=summat/(size(av_mat,1)*size(av_mat,2));
                output(ii,jj)=av;
            elseif (ii+w)>r
                av_mat=img((ii-w):r,jj:(jj+w));
                summat=sum(sum(av_mat));
                av=summat/(size(av_mat,1)*size(av_mat,2));
                output(ii,jj)=av;
            else
                av_mat=img((ii-w):(ii+w),jj:(jj+w));
                summat=sum(sum(av_mat));
                av=summat/(size(av_mat,1)*size(av_mat,2));
                output(ii,jj)=av;
            end
        elseif jj==c
            if ii<=w
                av_mat=img(1:(ii+w),(jj-w):c);
                summat=sum(sum(av_mat));
                av=summat/(size(av_mat,1)*size(av_mat,2));
                output(ii,jj)=av;
            elseif (ii+w)>r
                av_mat=img((ii-w):r,(jj-w):c);
                summat=sum(sum(av_mat));
                av=summat/(size(av_mat,1)*size(av_mat,2));
                output(ii,jj)=av;
            else
                av_mat=img((ii-w):(ii+w),(jj-w):c);
                summat=sum(sum(av_mat));
                av=summat/(size(av_mat,1)*size(av_mat,2));
                output(ii,jj)=av;
            end
        elseif ii<=w && jj>w && (jj+w)<c
            av_mat=img(1:(ii+w),(jj-w):(jj+w));
            summat=sum(sum(av_mat));
            av=summat/(size(av_mat,1)*size(av_mat,2));
            output(ii,jj)=av;
        elseif (ii+w)>r && jj>w && (jj+w)<c
            av_mat=img((ii-w):r,(jj-w):(jj+w));
            summat=sum(sum(av_mat));
            av=summat/(size(av_mat,1)*size(av_mat,2));
            output(ii,jj)=av;
        elseif jj<=w && ii>w && (ii+w)<r
            av_mat=img((ii-w):(ii+w),1:(jj+w));
            summat=sum(sum(av_mat));
            av=summat/(size(av_mat,1)*size(av_mat,2));
            output(ii,jj)=av;
        elseif (jj+w)>c && ii>w && (ii+w)<r
            av_mat=img((ii-w):(ii+w),(jj-w):c);
            summat=sum(sum(av_mat));
            av=summat/(size(av_mat,1)*size(av_mat,2));
            output(ii,jj)=av;
        elseif ii<=w && jj<=w
            av_mat=img(1:(ii+w),1:(jj+w));
            summat=sum(sum(av_mat));
            av=summat/(size(av_mat,1)*size(av_mat,2));
            output(ii,jj)=av;
        elseif (ii+w)>=r && (jj+w)>=c
            av_mat=img((ii-w):r,(jj-w):c);
            summat=sum(sum(av_mat));
            av=summat/(size(av_mat,1)*size(av_mat,2));
            output(ii,jj)=av;
        elseif (ii+w)>r && jj<=w
            av_mat=img((ii-w):end,1:(jj+w));
            summat=sum(sum(av_mat));
            av=summat/(size(av_mat,1)*size(av_mat,2));
            output(ii,jj)=av;
        elseif ii<=w && (jj+w)>c
            av_mat=img(1:(ii+w),(jj-w):c);
            summat=sum(sum(av_mat));
            av=summat/(size(av_mat,1)*size(av_mat,2));
            output(ii,jj)=av;
        elseif ii<=w
            av_mat=img(1:(ii+w),(jj-w):(jj+w));
            summat=sum(sum(av_mat));
            av=summat/(size(av_mat,1)*size(av_mat,2));
            output(ii,jj)=av;
        elseif (ii+w)>r
            av_mat=img((ii-w):r,(jj-w):(jj+w));
            summat=sum(sum(av_mat));
            av=summat/(size(av_mat,1)*size(av_mat,2));
            output(ii,jj)=av;
        elseif jj<=w
            av_mat=img((ii-w):(ii+w),1:(jj+w));
            summat=sum(sum(av_mat));
            av=summat/(size(av_mat,1)*size(av_mat,2));
            output(ii,jj)=av;
        elseif (jj+w)>c
            av_mat=img((ii-w):(ii+w),(jj-w):c);
            summat=sum(sum(av_mat));
            av=summat/(size(av_mat,1)*size(av_mat,2));
            output(ii,jj)=av;
        else
            av_mat=img((ii-w):(ii+w),(jj-w):(jj+w));
            summat=sum(sum(av_mat));
            av=summat/(size(av_mat,1)*size(av_mat,2));
            output(ii,jj)=av;
        end
    end
end
output=uint8(output);

end

