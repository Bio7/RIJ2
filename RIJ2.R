# Load the R library!

RIJ2 <- function() {
    require(rJava)
    # Initialize Java!
    .jinit()   
}

loadImage <- function(path) {
    # Create a new object!
    IJ <- .jnew("net/imagej/ImageJ/ImageJ")
    # Open the image! im$show()
    #ij.platform().open(new URL("http://imagej.nih.gov/ij/images/blobs.gif"));
    .jcall(IJ, "open", path)
   
    
}