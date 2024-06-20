using System;
using System.Collections.Generic;
using MySql.Data.MySqlClient; // Adiciona para conexão com o banco de dados
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Text;
using CarLink.Persistencia.Gestão;
using CarLink.Classes.Auth;

public partial class Paginas_CarLink_Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["REG"] == null)
        {
            Response.Redirect("CarLink_Login.aspx");
            return; // Adiciona um return após o redirecionamento para garantir que a execução pare aqui
        }

        Registro reg = (Registro)Session["REG"];
        // Use 'reg' conforme necessário.
        if (!IsPostBack)
        {
            GerarGraficos();
        }
    }

    private void GerarGraficos()
    {
        // Instância de seu método que obtém os dados
        OrdemsvBD odsBD = new OrdemsvBD();
        DataSet ds = odsBD.SelectAllDataOrdens();

        // Cria dicionários para armazenar contagens separadas
        Dictionary<string, int> esperaCounts = new Dictionary<string, int>();
        Dictionary<string, int> analiseCounts = new Dictionary<string, int>();
        Dictionary<string, int> prontoCounts = new Dictionary<string, int>();
        Dictionary<string, int> processoCounts = new Dictionary<string, int>();
        Dictionary<string, int> serviceMonthCounts = new Dictionary<string, int>();

        // Itera pelas linhas do DataSet e preenche os dicionários
        foreach (DataRow row in ds.Tables[0].Rows)
        {
            string mes = row["mes"].ToString();
            string status = row["status"].ToString();
            int total = Convert.ToInt32(row["total"]);

            if (status == "EM ESPERA")
            {
                if (esperaCounts.ContainsKey(mes))
                    esperaCounts[mes] += total;
                else
                    esperaCounts[mes] = total;
            }
            else if (status == "EM ANALISE")
            {
                if (analiseCounts.ContainsKey(mes))
                    analiseCounts[mes] += total;
                else
                    analiseCounts[mes] = total;
            }
            else if (status == "PRONTO")
            {
                if (prontoCounts.ContainsKey(mes))
                    prontoCounts[mes] += total;
                else
                    prontoCounts[mes] = total;

                // Preenche também o serviceMonthCounts para serviços "PRONTO"
                if (serviceMonthCounts.ContainsKey(mes))
                    serviceMonthCounts[mes] += total;
                else
                    serviceMonthCounts[mes] = total;
            }
            else if (status == "EM PROCESSO")
            {
                if (processoCounts.ContainsKey(mes))
                    processoCounts[mes] += total;
                else
                    processoCounts[mes] = total;
            }
        }

        // Extrai as contagens para arrays
        int[] esperaData = esperaCounts.Values.ToArray();
        int[] analiseData = analiseCounts.Values.ToArray();
        int[] prontoData = prontoCounts.Values.ToArray();
        int[] processoData = processoCounts.Values.ToArray();

        // Extrai labels (meses) e dados (contagens) do dicionário
        List<string> serviceMonthLabels = new List<string>();
        List<int> serviceMonthData = new List<int>();

        foreach (var pair in serviceMonthCounts.OrderBy(p => DateTime.ParseExact(p.Key, "yyyy-MM", null)))
        {
            serviceMonthLabels.Add(pair.Key);
            serviceMonthData.Add(pair.Value);
        }

        // Converte listas para arrays para geração de script
        string[] serviceMonthLabelsJson = new string[] { "Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro" };
        int[] serviceMonthDataJson = serviceMonthData.ToArray();

        // Exemplo de dados dinâmicos
        var labels = new[] { "EM ESPERA", "EM ANÁLISE", "PRONTO", "EM PROCESSO" };
        var data = new[] { esperaData.Sum(), analiseData.Sum(), prontoData.Sum(), processoData.Sum() }; // Sum dos dados para o gráfico principal
        var barColors = new[] { "#06184D", "#243B80", "#9CAEE6", "#E0E8FF" };

        // Converta os dados para JSON
        var labelsJson = new System.Web.Script.Serialization.JavaScriptSerializer().Serialize(labels);
        var dataJson = new System.Web.Script.Serialization.JavaScriptSerializer().Serialize(data);
        var colorsJson = new System.Web.Script.Serialization.JavaScriptSerializer().Serialize(barColors);

        // Exemplo de dados dinâmicos para gráfico de barras por mês
        var labels3Json = new System.Web.Script.Serialization.JavaScriptSerializer().Serialize(serviceMonthLabelsJson);
        var data3Json = new System.Web.Script.Serialization.JavaScriptSerializer().Serialize(serviceMonthDataJson);
        var colors3Json = new System.Web.Script.Serialization.JavaScriptSerializer().Serialize(new[] { "#06184D", "#566DB3", "#9CAEE6", "#243B80", "#E0E8FF" });

        // Gera o script para o Chart.js
        var script = String.Format(@"
        <script>
            var ctx = document.getElementById('myChartDoughnut').getContext('2d');
            var myChartDoughnut = new Chart(ctx, {{
                type: 'doughnut',
                data: {{
                    labels: {0},
                    datasets: [{{
                        backgroundColor: {2},
                        data: {1}
                    }}]
                }},
                options: {{
                    title: {{
                        display: true,
                        text: 'World Wide Wine Production 2018'
                    }}
                }}
            }});
        </script>", labelsJson, dataJson, colorsJson);

        // Use serviceMonthLabels e serviceMonthData em vez de labelsJson e dataJson
        var script2 = String.Format(@"
        <script>
            var ctx = document.getElementById('myChartBar').getContext('2d');
            var myChartBar = new Chart(ctx, {{
                type: 'bar',
                data: {{
                    labels: {0},
                    datasets: [{{
                        label: 'Serviços Concluídos', 
                        data: {1}, 
                        backgroundColor: {2},
                        borderColor: 'black',
                        borderWidth: 1
                    }}]
                }},
                options: {{
                    scales: {{
                        y: {{
                            beginAtZero: true
                        }}
                    }}
                }}
            }});
        </script>", labels3Json, data3Json, colors3Json);

        // Registra o script na página (mesmo que antes)
        ClientScript.RegisterStartupScript(this.GetType(), "chartScript", script, false);
        ClientScript.RegisterStartupScript(this.GetType(), "chartScript2", script2, false);
        ClientScript.RegisterStartupScript(this.GetType(), "chartScript2", script2, false);
        ClientScript.RegisterStartupScript(this.GetType(), "chartScript2", script2, false);
    }

    protected string UrlNav(string url)
    {
        return ResolveUrl("~/Pages/" + url);
    }
}
