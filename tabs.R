library(knitr)
library(tidyverse)
library(kableExtra)


data <- data.frame(
  Statistic = c(
    "$E(\\alpha)$", "$\\text{Var}(\\alpha)$",
    "$E(\\delta)$", "$\\text{Var}(\\delta)$"
  ),
  `Ours` = c(1.1373, 0.0036, 1.0829, 0.0036),
  `ABC-SMC-DRF` = c(1.1215, 0.0333, 0.9704, 0.0313),
  `ABC-DRF` = c(0.7562, 0.5953, 1.3092, 0.3593),
  `ABC-SMC` = c(1.2912, 0.1104, 1.0269, 0.1049)
)

## remove the column names
colnames(data) <- c(
  "Statistic", "Ours (RNN-VAE)",
  "ABC-SMC-DRF", "ABC-DRF", "ABC-SMC"
)


data %>%
  # mutate()
  kbl(format = "html", escape = F) %>%
  kableExtra::kable_styling(
    bootstrap_options = c(
      "striped", "hover",
      "condensed", "responsive"
    )
  )


ggplot(data) +
  geom_
