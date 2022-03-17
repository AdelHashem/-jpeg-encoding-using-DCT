% Merge
function i = Merge(blocks)

temp = cell2mat(blocks);
i = uint8(255 * mat2gray(temp));
end