using System;

namespace CarLink.Classes.Equipe
{
    /// <summary>
    /// Summary description for Cliente
    /// </summary>
    public class Cliente : Pessoa
    {
        private string cpf;
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
        public Cliente()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}