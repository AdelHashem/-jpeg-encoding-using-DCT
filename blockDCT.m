%     Blocks ----> DCT
function i_dct = blockDCT(image,c8);
i_dct = cellfun(@(x)c8*x*c8',image,'un',0);
end