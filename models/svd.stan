data {
  int<lower=1> N; // number of observations
  int<lower=1> J; // number of counties
  int<lower=1> A; // number of age groups
  int<lower=1,upper=J> county[N];
  int<lower=1,upper=A> age[N];
  vector[N] pop;
  int y[N];
  vector[A] X1;
  vector[A] X2;
  vector[A] X3;
}
parameters {
  vector[J] beta1;
  vector[J] beta2;
  vector[J] beta3;
  real mu_beta1;
  real mu_beta2;
  real mu_beta3;
  real<lower=0> sigma_beta1;
  real<lower=0> sigma_beta2;
  real<lower=0> sigma_beta3;
  real<lower=0> sigma_eps[A];
  real eps[A,J];
}

transformed parameters{
  real log_mu[A,J];
  for(i in 1:A){
    for(j in 1:J){
      log_mu[i,j] = beta1[j]*X1[i]+beta2[j]*X2[i]+beta3[j]*X3[i]+eps[i,j];
    }
  }
}

model {
  vector[N] y_hat;
  for (i in 1:N)
    y_hat[i] = beta1[county[i]]*X1[age[i]]+beta2[county[i]]*X2[age[i]]+beta3[county[i]]*X3[age[i]]+eps[age[i],county[i]]+log(pop[i]);

  beta1 ~ normal(mu_beta1, sigma_beta1);
  beta2 ~ normal(mu_beta2, sigma_beta2);
  beta3 ~ normal(mu_beta3, sigma_beta3);
  mu_beta1 ~ normal(0,1);
  sigma_beta1 ~ normal(0,1);
  mu_beta2 ~ normal(0,1);
  sigma_beta2 ~ normal(0,1);
  mu_beta3 ~ normal(0,1);
  sigma_beta3 ~ normal(0,1);
  for(i in 1:A){
    eps[i,] ~ normal(0, sigma_eps[i]);
  }
  sigma_eps ~ normal(0,1);

  y ~ poisson_log(y_hat);
}