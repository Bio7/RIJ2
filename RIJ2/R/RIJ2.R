# Load the R library!
ij<-NULL

RIJ2 <- function() {
    require(rJava)
    # Initialize Java!
    .jinit()
    #####only for testing!
    .jaddClassPath(dir("C:/Users/elk/git/RIJ2/RIJ2/inst/java", full.names = TRUE))  #C:/Users/elk/git/RIJ2/RIJ2/inst/java/IntroToImageJAPI.class
    .jclassPath()
    #####
    if (is.null(ij)) {
        ij <<- new(J("net.imagej.ImageJ"))#make this var global!
    }
    
}



loadImage <- function(path) {
    
    url <- .jnew("java/net/URL", path) 
    platformService <- .jcall(ij, "Lorg/scijava/platform/PlatformService;", "platform")
    .jcall(platformService, , 'open', url) 
    #J(platformService)$open(url)
    
}

displayDataset <- function() {
    
    
    
 
} 
