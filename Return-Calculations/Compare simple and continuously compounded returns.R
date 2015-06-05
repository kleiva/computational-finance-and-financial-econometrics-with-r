# The sbux_df data frame is already loaded in your work space
sbux_prices_df <- sbux_df[, "Adj.Close", drop=FALSE]

# Denote n the number of time periods:
n <- nrow(sbux_prices_df)
sbux_ret <- ((sbux_prices_df[2:n, 1] - sbux_prices_df[1:(n-1), 1])/sbux_prices_df[1:(n-1), 1])

# Compute continuously compounded 1-month returns
sbux_ccret <- log(sbux_prices_df[2:n,1]) - log(sbux_prices_df[1:(n-1),1])
names(sbux_ccret) <- sbux_df[2:n,1]
head(sbux_ccret)

# Compare the simple and cc returns
head(cbind(sbux_ret, sbux_ccret))
