fMushroomShannonEntropy <- function(dat){
    # dat is expected to have been converted to numeric (?)
    iTotalLength <- length(dat)
    iNr <- max(unique(dat))
    
    # print(iNr)
    
    # according to http://stackoverflow.com/questions/2190756/ddg#2191824
    aLength <- array(dim = iNr)
    for (iterVal in 1:iNr) {
        aLength[iterVal] <- length(dat[ dat== iterVal])
    }
    afProbability <- (aLength/iTotalLength)
    
    # print(afProbability)
    
    # according to https://stats.stackexchange.com/questions/95261/why-am-i-getting-information-entropy-greater-than-1#96461
    # Entropy is scaled by log(number of levels) to scale it down to 0 to 1
    
    # print(afProbability*log2(afProbability))
    
    if (iNr > 1)
    {
        # fOutput <- sum(-afProbability*log2(afProbability))/log2(iNr)
        fOutput <- (-afProbability*log2(afProbability))/log2(iNr)
        # fOutput <- sum(-afProbability*log2(afProbability))
    }
    else
    {
        fOutput = 0
    }
    fOutput
}

# Old codes #####

# iNrEdible <- length(dat$Edible[ dat$Edible==1])
# 
# fPEdible <- iNrEdible/iNrCol
# 
# # Entropy according to Data Science for Business, p. 51 and 52
# -fPEdible*log2(fPEdible)
# 


# 
# iNrCapColor <- max(unique(dat$capcolor))
# aNrCapColor <- array(dim = iNrCapColor)
# for (iterVal in 1:iNrCapColor) {
#     aNrCapColor[iterVal] <- length(dat$capcolor[ dat$capcolor== iterVal])
# }
# pafCapColor <- (aNrCapColor/iNrColumn)
# # according to https://stats.stackexchange.com/questions/95261/why-am-i-getting-information-entropy-greater-than-1#96461
# # Entropy is scaled by log(number of levels) to scale it down to 0 to 1
# fEntropyCapColor <- sum(-pafCapColor*log2(pafCapColor))/log2(iNrCapColor)
# fEntropyCapColor