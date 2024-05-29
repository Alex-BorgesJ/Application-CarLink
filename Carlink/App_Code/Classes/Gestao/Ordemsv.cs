using System;

namespace CarLink.Classes.Gestao
{
    /// <summary>
    /// Summary description for Cliente
    /// </summary>
    public class Ordemsv
    {
        private DateTime dataEntrada,
                        dataFinalizacao;
        private String observacao;
        private int veicId;
        public DateTime DataEntrada
        {
            get
            {
                return dataEntrada;
            }
            set
            {
                string entrada = value.ToString();
                string formato = "dd/MM/yyyy";
                var opcoes = System.Globalization.DateTimeStyles.None;
                DateTime data;
                if (String.IsNullOrEmpty(entrada)) {
                    throw new ArgumentException("O campo não pode estar em branco. Formato de entrada dd/MM/yyyy");
                }


                if (DateTime.TryParseExact(entrada, formato, System.Globalization.CultureInfo.InvariantCulture, opcoes, out data))
                {             
                    if (data.Year < 2023 && data.Year > DateTime.Now.Year)
                    {
                        throw new ArgumentException("Ano inválido, valores devem estar entre 2023 e " + DateTime.Now.Year);
                    }
                    if (data.Month < 1 && data.Month > 12)
                    {
                        throw new ArgumentException("Mês inválido, valores devem estar entre 1 e 12");
                    }
                    if (data.Day < 1 && data.Day > 31)
                    {
                        throw new ArgumentException("Dia inválido, valores devem estar entre 1 e 31");
                    }

                    dataEntrada = data;
                }
            }
        }

        public DateTime DataFinalizacao
        {
            get
            {
                return dataFinalizacao;
            }
            set
            {
                string finalizacao = value.ToString();
                string formato = "dd/MM/yyyy";
                var opcoes = System.Globalization.DateTimeStyles.None;
                DateTime data;
                

                if (DateTime.TryParseExact(finalizacao, formato, System.Globalization.CultureInfo.InvariantCulture, opcoes, out data))
                {
                    if (data.Year < 2023 && data.Year > DateTime.Now.Year)
                    {
                        throw new ArgumentException("Ano inválido, valores devem estar entre 2023 e " + DateTime.Now.Year);
                    }
                    if (data.Month < 1 && data.Month > 12)
                    {
                        throw new ArgumentException("Mês inválido, valores devem estar entre 1 e 12");
                    }
                    if (data.Day < 1 && data.Day > 31)
                    {
                        throw new ArgumentException("Dia inválido, valores devem estar entre 1 e 31");
                    }

                    dataFinalizacao = data;
                }
            }
        }

        public String Observacao{
            get { 
                return observacao;
            }set {

                if (String.IsNullOrEmpty(value)) {
                    throw new ArgumentException("O campo não pode estar em branco. Insira alguma informação sobre o estado do veículo");
                }
                observacao = value;
            }
        }

        public int VeicId
        {
            get
            {
                return veicId;
            }
            set
            {
                veicId = value;
            }

        }
        public Ordemsv()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}
