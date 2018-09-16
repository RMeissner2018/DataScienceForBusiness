fMushroomPlotHist <- function(dat){
    # dat is expected to have been converted to numeric (?)
    
    
    # x values, just 1 to length
    # aXPlot = 1:length(dat[,1])
    
    # hist(aXPlot)
    
    
    # hist(dat$capshape)
    png(filename="Hist_Edible.png")
    # png(filename="your/file/location/name.png")
    # plot(fit)
    
    hist(dat$Edible)
    # dev.print(png, 'filename.png')
    dev.off()
    
    
    png(filename="Hist_capshape.png")
    hist(dat$capshape)
    dev.off()
    
    png(filename="Hist_capcolor.png")
    hist(dat$capcolor)
    dev.off()
    
    png(filename="Hist_odor.png")
    hist(dat$odor)
    dev.off()
    
    
    png(filename="Hist_habitat.png")
    hist(dat$habitat)
    dev.off()
    
    png(filename="Hist_population.png")
    hist(dat$population)
    dev.off()
    # worked well
    TRUE
}