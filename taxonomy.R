#!/usr/local/bin/RScript

wd <- getwd()
message("Download Taxonomic data...")
tmp1     <- tempfile()
if(!all(file.exists(c("names.dmp", "nodes.dmp")))) {
  download.file("ftp://ftp.ncbi.nlm.nih.gov/pub/taxonomy/taxdump.tar.gz", tmp1, quiet = TRUE)
  res <- untar(tmp1, compressed = "gzip", exdir = wd)
}
