using System;

namespace CarLink.Classes.Auth
{
    /// Summary description for Veiculo
    public class Registro
    {
        private string
                      nome,
                      sobrenome,
                      email,
                      senha,
                      empresa,
                      cpf,
                      cnpj,
                      tel,
                      atividade;
        private int plano;

        public string Nome {
            get { return nome; }
            set
            {
                if (string.IsNullOrEmpty(value) || value.Length < 2)
                {
                    throw new ArgumentException("Nome tem que possuir no mínimo 2 caracteres");
                }
                nome = value;
            }
        }

        public string Sobrenome {
            get { return sobrenome; }
            set
            {
                if (string.IsNullOrEmpty(value) || value.Length < 2)
                {
                    throw new ArgumentException("Sobrenome tem que possuir no mínimo 2 caracteres");
                }
                sobrenome = value;
            }
        }

        public string Email {
            get { return email; }
            set
            {
                if (string.IsNullOrEmpty(value) || value.Length < 5)
                {
                    throw new ArgumentException("Email tem que possuir no mínimo 5 caracteres");
                }
                email = value;
            }
        }

        public string Cpf {
            get { return cpf; }
            set
            {
                string cpfString = value.ToString();
                if (cpfString.Length < 11)
                {
                    throw new ArgumentException("CPF deve possuir no mínimo 11 dígitos.");
                }
                cpf = value;
            }
        }

        public string Cnpj {
            get { return cnpj; }
            set
            {
                string cnpjString = value.ToString();
                if (cnpjString.Length < 11)
                {
                    throw new ArgumentException("CNPJ deve possuir no mínimo 11 dígitos.");
                }
                cnpj = value;
            }
        }

        public string Tel {
            get { return tel; }
            set
            {
                string cpfString = value.ToString();
                if (cpfString.Length < 8)
                {
                    throw new ArgumentException("Telefone deve possuir no mínimo 8 dígitos.");
                }
                tel = value;
            }
        }

        public string Senha
        {
            get { return senha; }
            set
            {
                if (string.IsNullOrEmpty(value) || value.Length < 8)
                {
                    throw new ArgumentException("Senha tem que possuir no mínimo 8 Digitos");
                }
                senha = value;
            }

        }

        public string Empresa
        {
            get { return empresa; }
            set
            {
                if (string.IsNullOrEmpty(value) || value.Length < 2)
                {
                    throw new ArgumentException("Empresa tem que possuir no mínimo 2 Digitos");
                }
                empresa = value;
            }

        }

        public string Atividade { get { return atividade; } set {atividade = value;} }

        public int Plano { get { return plano; }set { plano = value; } }

        public Registro() { 
        
        }
        
    }
}