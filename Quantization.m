
function o = Quantization(r,dctq,I_blocks)
t = r.*dctq;
%t=uint8(255 * mat2gray(t));
%t = im2double(t);
o = cellfun(@(x)round(x./t),I_blocks,'un',0);

end