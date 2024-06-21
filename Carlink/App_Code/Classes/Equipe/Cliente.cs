using System;

namespace CarLink.Classes.Equipe
{
    /// <summary>
    /// Summary description for Cliente
    /// </summary>
    public class Cliente : Pessoa
    {
        private string cpf,
                       atividade;
        public string Cpf
        {
            get { return cpf; }
            set
            {
                if (string.IsNullOrEmpty(value))
                {
                    throw new ArgumentException("CPF nao pode estar em branco.");
                }
                cpf = value;
            }
        }

        public string Atividade { get { return atividade; } set { atividade = value; } }

        public Cliente()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}