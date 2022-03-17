%      Rescaling
function o = Rescaling(r,dctq,I_blocks)
t = r.*dctq;
o = cellfun(@(x)x.*t,I_blocks,'un',0);

end