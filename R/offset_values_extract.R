## File Name: offset_values_extract.R
## File Version: 0.101

offset_values_extract <- function(formula, data )
{
    Xdes2 <- stats::model.frame( formula=formula, data=data )
    ind_offset <- attr( attr(Xdes2,'terms'), 'offset' )
    N <- nrow(Xdes2)
    if ( length(ind_offset) > 0 ){
        offset_values <- Xdes2[, ind_offset ]
    } else {
        offset_values <- rep(0,N)
    }
    return(offset_values)
}
