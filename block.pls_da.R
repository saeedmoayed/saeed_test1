#pls_da
require(mixOmics)
da_ans <- block.plsda(list(x_class = x_class), Y = as.vector(y_class),ncomp = 8)
plotIndiv(da_ans, ind_names = FALSE,legend = TRUE)
plotVar(da_ans)
da_ans$variates
plotLoadings(da_ans, ncomp = 4, contrib = 'max')
pls_vip <- vip(da_ans)