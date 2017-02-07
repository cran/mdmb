

logistic_regression <- function( formula , data , weights = NULL,
	beta_init = NULL, beta_prior = NULL , control = NULL )
{
	CALL <- match.call()
	type <- "logistic"
	#--- wrapping general regression function in miceadds
	res <- mdmb_regression( formula=formula , data=data , type=type , 
				weights = weights,	beta_init = beta_init, 
				beta_prior = beta_prior , control = control )
	res$CALL <- CALL
	#--- additional informations about model type
	class(res) <- "logistic_regression"
	return(res)
}