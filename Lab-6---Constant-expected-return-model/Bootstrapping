library("boot")
# Function for bootstrapping sample mean: 
mean_boot <- function(x, idx) {
  ans <- mean(x[idx])
  ans 
} 
# Construct VBLTX_mean_boot:
VBLTX_mean_boot <- boot(return_matrix[,"VBLTX"], statistic = mean_boot, R=999)
# Print the class of VBLTX_mean_boot
class(VBLTX_mean_boot)

# Print VBLTX_mean_boot
VBLTX_mean_boot

# Plot bootstrap distribution and qq-plot against normal
plot(VBLTX_mean_boot)
