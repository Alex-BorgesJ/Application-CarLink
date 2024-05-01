using System;

namespace CarLink.Classes.Equipe
{
    /// <summary>
    /// Summary description for Mecanico
    /// </summary>
    public class Mecanico : Pessoa
    {
        private string funcao;
        private string senha;

        public string Funcao
        {
            get { return funcao; }
            set
            {
                if (string.IsNullOrEmpty(value))
                {
                    throw new ArgumentException("Funcao nao pode estar em branco.");
                }
                funcao = value;
            }
        }
        public string Senha
        {
            get { return senha; }
            set
            {
                if (string.IsNullOrEmpty(value) || value.Length >= 8)
                {
                    throw new ArgumentException("Senha precisa possuir no minimo 8 caracteres.");
                }
                senha = value;
            }
        }
        public Mecanico()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}