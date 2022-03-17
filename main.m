% Main
figure;
imshow('a.jpg'); title('Before')
I_blocks = divide('a.jpg'); %double value

i_dct = blockDCT(I_blocks,c8);

dctq = [[16,  11,  10,  16,  24,  40,  51,  61],
  [12,  12,  14,  19,  26,  58,  60,  55],
  [14,  13,  16,  24,  40,  57,  69,  56],
  [14,  17,  22,  29,  51,  87,  80,  62],
  [18,  22,  37,  56,  68, 109, 103,  77],
  [24,  35,  55,  64,  81, 104, 113,  92],
  [49,  64,  78,  87, 103, 121, 120, 101],
  [72,  92,  95,  98, 112, 100, 103,  99]];
        
q = Quantization(7,dctq,i_dct);
q= Rescaling(7,dctq,q);
out = blockDCT(q,c8');
out = Merge(out); %uinte8 values
figure
imshow(out);title('After')