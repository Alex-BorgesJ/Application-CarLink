﻿using System;

namespace CarLink.Classes.Local
{
    /// <summary>
    /// Summary description for Endereco
    /// </summary>
    public class Endereco
    {
        private int codigo;
        private string estado;
        private string cidade;
        private string bairro;
        private string rua;
        private string numero;
        private int cep;
        private int cli_codigo;

        public int Codigo { get; set; }
        public int CLI_codigo { get; set; }

        public string Estado
        {
            get { return estado; }
            set
            {
                if (string.IsNullOrEmpty(value))
                {
                    throw new ArgumentException("Estado nao pode estar em branco.");
                }
                estado = value;
            }
        }

        public string Cidade
        {
            get { return cidade; }
            set
            {
                if (string.IsNullOrEmpty(value))
                {
                    throw new ArgumentException("Cidade nao pode estar em branco.");
                }
                cidade = value;
            }
        }

        public string Bairro
        {
            get { return bairro; }
            set
            {
                if (string.IsNullOrEmpty(value))
                {
                    throw new ArgumentException("Bairro nao pode estar em branco.");
                }
                bairro = value;
            }
        }

        public string Rua
        {
            get { return rua; }
            set
            {
                if (string.IsNullOrEmpty(value))
                {
                    throw new ArgumentException("Rua nao pode estar em branco.");
                }
                rua = value;
            }
        }

        public string Numero
        {
            get { return numero; }
            set
            {
                if (string.IsNullOrEmpty(value))
                {
                    throw new ArgumentException("Numero nao pode estar em branco.");
                }
                numero = value;
            }
        }

        public int Cep
        {
            get { return cep; }
            set 
            {
                if (value < 0 || value > 99999999)
                    throw new ArgumentException("CEP inválido");
                    cep = value; 
            }
        }




        public Endereco()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}

