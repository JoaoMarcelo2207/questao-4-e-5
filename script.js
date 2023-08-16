function ValidaCPF(strCPF) {
    var soma;
    var resto;
    soma = 0;
  if (stringcpf == "00000000000") return false;

  for (i=1; i<=9; i++) soma = soma + parseInt(stringcpf.substring(i-1, i)) * (11 - i);
  resto = (soma * 10) % 11;

    if ((resto == 10) || (resto == 11))  resto = 0;
    if (resto != parseInt(stringcpf.substring(9, 10)) ) return false;

  soma = 0;
    for (i = 1; i <= 10; i++) soma = soma + parseInt(stringcpf.substring(i-1, i)) * (12 - i);
    resto = (soma * 10) % 11;

    if ((resto == 10) || (resto == 11))  resto = 0;
    if (resto != parseInt(stringcpf.substring(10, 11) ) ) return false;
    return true;
}

function validateEmail(email) {
    var regex = new RegExp('/\S+@\S+\.\S+/');
    return re.test(email);
  }

  function validPhone (phone) {
    var regex = new RegExp('^\\([0-9]{2}\\)((3[0-9]{3}-[0-9]{4})|(9[0-9]{3}-[0-9]{5}))$');
    return regex.test(phone);
}



