using System;
using System.Activities.Expressions;
using System.Numerics;
using System.Reflection;
using System.Text.RegularExpressions;

namespace CarLink.Classes.Gestao
{
    /// <summary>
    /// Summary description for Cliente
    /// </summary>
    public class Ordemsv
    {
        private String observacao, status;
        private int codigo;
        private DateTime data;
        public String Observacao
        {
            get
            {
                return observacao;
            }
            set
            {

                if (String.IsNullOrEmpty(value))
                {
                    throw new ArgumentException("O campo não pode estar em branco. Insira alguma informação sobre o estado do veículo");
                }
                observacao = value;
            }
        }
        public int Codigo { get { return codigo; } set { codigo = value; } }

        public DateTime Data { get; set; }

        public String Status { get { return status; } set { status = value; } }
        public Ordemsv()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}
