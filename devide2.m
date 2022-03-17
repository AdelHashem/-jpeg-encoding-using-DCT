%    2.1.1           Block divide

function Image_Blocks = divide2()


image = rgb2gray(imread('a.jpg'));
image = im2double(image);
[i_hight,i_width] = size(image);
block_size = 8;
n_vert = i_hight / block_size;
n_hore = i_width / block_size;

Image_Blocks = struct('Blocks',[]);
Index = 1;
for row = 1: +block_size: i_hight
    
    for column = 1: +block_size: i_width
    Row_End = row + block_size - 1;
    Column_End = column + block_size - 1;
    
    Temp = image(row:Row_End,column:Column_End,:);
    
    %Storing blocks/tiles in structure for later use%
    Image_Blocks(Index).Blocks = Temp;
    Index = Index + 1;
    
    end    
end

end
