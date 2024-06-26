﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text.RegularExpressions;


namespace CarLink.Classes.Automotivo
{
    /// Summary description for Veiculo
    public class Veiculo
    {
        private int codigo;
        private int ano;
        private string marca;
        private string modelo;
        private string placa;
        private string chassi;
        private string quilometragem;

        public int Codigo { get; set; }

        public int Ano
        {
            get { return ano; }
            set
            {
                if (value < 1886 || value > DateTime.Now.Year)
                {
                    throw new ArgumentException("Ano inválido. Informe um ano válido entre 1886 e o ano atual.");
                }
                ano = value;
            }
        }

        public string Marca
        {
            get { return marca; }
            set
            {
                if (string.IsNullOrEmpty(value) || value.Length < 2)
                {
                    throw new ArgumentException("Marca tem que possuir no mínimo 2 caracteres");
                }
                marca = value;
            }
        }

        public string Modelo
        {
            get { return modelo; }
            set
            {
                if (string.IsNullOrEmpty(value) || value.Length < 2)
                {
                    throw new ArgumentException("Modelo tem que possuir no mínimo 2 caracteres");
                }
                modelo = value;
            }
        }

        public string Placa
        {
            get { return placa; }
            set
            {
                // Brazilian license plate pattern (Mercosur standard)
                var pattern = @"^[A-Z]{3}[0-9][A-Z0-9][0-9]{2}$";
                var regex = new Regex(pattern);

                if (!regex.IsMatch(value))
                {
                    throw new ArgumentException("Placa tem que ser valida.");
                }
                placa = value;
            }
        }

        public string Chassi
        {
            get { return chassi; }
            set
            {
                if (string.IsNullOrEmpty(value))
                {
                    throw new ArgumentException("Chassi nao pode estar em branco.");
                }
                chassi = value;
            }
        }

        public string Quilometragem
        {
            get { return quilometragem; }
            set
            {
                if (string.IsNullOrEmpty(value) || value.Length < 1)
                {
                    throw new ArgumentException("Quilometraem tem que possuir um valor valido.");
                }
                quilometragem = value;
            }
        }

        public Veiculo()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}