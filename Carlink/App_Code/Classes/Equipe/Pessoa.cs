using System;
using System.Text.RegularExpressions;

namespace CarLink.Classes.Equipe
{
    public class Pessoa
    {
        private int codigo;
        private string nome;
        private string email;
        private string telefone;

        public int Codigo { get; set; }
        public string Nome
        {
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

        public string Email
        {
            get { return email; }
            set
            {
                // Standard email pattern
                var pattern = @"^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$";
                var regex = new Regex(pattern);

                if (!regex.IsMatch(value))
                {
                    throw new ArgumentException("Email precisa ser condizente com o padrão: example@example.com");
                }
                email = value;
            }
        }

        public string Telefone
        {
            get { return telefone; }
            set
            {
                // Brazilian phone number pattern
                var pattern = @"^\d{10,11}$";
                var regex = new Regex(pattern);

                if (!regex.IsMatch(value))
                {
                    throw new ArgumentException("Telefone precisa estar no formato brasileiro: (XX) XXXX-XXXX ou (XX) XXXXX-XXXX.");
                }
                telefone = value;
            }
        }

        public Pessoa()
        {
            // TODO: Add constructor logic here
        }
    }
}