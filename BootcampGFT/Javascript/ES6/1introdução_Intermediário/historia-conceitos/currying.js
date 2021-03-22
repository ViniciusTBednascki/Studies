(() => {
  /**
    const soma = (a, b) => a + b;

    soma(2, 2);
    soma(2, 3);
    soma(2, 4);
    soma(2, 5);
     */

  const soma = a => b => a + b;
  const soma2 = soma(2);
  const soma3 = soma(3);

  console.log(soma3(2));
  console.log(soma3(3));
  console.log(soma3(4));
  console.log(soma3(5));
})();
