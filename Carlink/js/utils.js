const handlePhone = (event) => {
    let input = event.target
    input.value = phoneMask(input.value)
}

const phoneMask = (value) => {
    if (!value) return ""
    value = value.replace(/\D/g, '')
    value = value.replace(/(\d{2})(\d)/, "($1) $2")
    value = value.replace(/(\d)(\d{4})$/, "$1-$2")
    return value
}

const handleDate = (event) => {
    let input = event.target;
    input.value = dateMask(input.value);
}

const dateMask = (value) => {
    if (!value) return "";
    value = value.replace(/\D/g, ""); // Remove qualquer caractere não numérico
    value = value.replace(/(\d{2})(\d)/, "$1/$2"); // Adiciona a primeira barra após o dia
    value = value.replace(/(\d{2})(\d)/, "$1/$2"); // Adiciona a segunda barra após o mês
    value = value.replace(/(\d{4})(\d)/, "$1"); // Limita o ano a 4 dígitos
    return value;
}

const handleCep = async (event) => {
    try {
        const result = await fetch(`https://viacep.com.br/ws/${event.target.value}/json/`);
        const data = await result.json();
        console.log(data);
    }
    catch(error){
        console.log(error);
    }
}

