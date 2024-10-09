# Tutorial on Bayesian demographic estimation

Materials for tutorial as part of [BMSS2](https://bayesforshs2.sciencesconf.org/), held on 16 October 2024.

## Packages to install

If you would like to follow along with the coded examples, you will need to install the following packages:

- `tidyverse`
- `rstan`
- `rstanarm`
- `tidybayes`
- `janitor`
- `rcbayes`

The `rstan` package is probably the most important but also may prove to be finicky to install. See detailed instructions here: https://github.com/stan-dev/rstan/wiki/RStan-Getting-Started


## Materials

- [Intro slides](https://github.com/MJAlexander/bayesian-demographic-estimation-tutorial/blob/main/slides/intro.key)
- [Labs](https://github.com/MJAlexander/bayesian-demographic-estimation-tutorial/tree/main/labs)
    + Mortality estimation with Gompertz models: [quarto doc](https://github.com/MJAlexander/bayesian-demographic-estimation-tutorial/blob/main/labs/gompertz.qmd); [pdf](https://github.com/MJAlexander/bayesian-demographic-estimation-tutorial/blob/main/labs/gompertz.pdf)
    + Mortality estimation with hierarchical principal component models: [quarto doc](https://github.com/MJAlexander/bayesian-demographic-estimation-tutorial/blob/main/labs/svd.qmd); [pdf](https://github.com/MJAlexander/bayesian-demographic-estimation-tutorial/blob/main/labs/svd.pdf)
    + Migration estimation with Rogers Castro models: [quarto doc](https://github.com/MJAlexander/bayesian-demographic-estimation-tutorial/blob/main/labs/rogers_castro.qmd); [pdf](https://github.com/MJAlexander/bayesian-demographic-estimation-tutorial/blob/main/labs/rogers_castro.pdf)
