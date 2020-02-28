class CurrencyService {

  getCurrencyString(currency) {
    if (currency == 'USD') return 'United States Dollar';
    if (currency == 'RUB') return 'Russian Ruble';
  }
}