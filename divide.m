%    2.1.1           Block divide

function Image_Blocks = divide(name)
image = rgb2gray(imread(name));
image = double(image);
[i_hight,i_width] = size(image);
n_vert = i_hight / 8;
n_hore = i_width / 8;


Image_Blocks =  mat2cell(image,8*ones(n_vert,1),8*ones(n_hore,1));

end