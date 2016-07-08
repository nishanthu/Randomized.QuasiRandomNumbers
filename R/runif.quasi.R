

set.seed.Randomized.QuasiRandomNumbers <- function(seed=0) {
  .Randomized.QuasiRandomNumbers.seed <<- seed
}


runif.Randomized.QuasiRandomNumbers <- function(n, dim=1) {
  if(!exists('.Randomized.QuasiRandomNumbers.seed'))
    return(sobol(n, dim, FALSE))
  else
    return(sobol(n, dim, FALSE, .Randomized.QuasiRandomNumbers.seed))
}

