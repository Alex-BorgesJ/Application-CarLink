using FATEC;
using System;
//para acesso a classe Mapped
using CarLink.Classes.Gestao; //para acesso a classe de modelagem
using CarLink.Persistencia.Automotivo;
using System.Data; // para acesso ao DataSet
namespace CarLink.Persistencia.Gestão
{
    /// <summary>
    /// Summary description for ClienteBD
    /// </summary>
    public class OrdemsvBD
    {
        //métodos
        //insert
        public int Insert(Ordemsv os)
        {
            int retorno = 0;
            try
            {
                IDbConnection objConexao;
                IDbCommand objCommand;
                string sql = "INSERT INTO ODS_ORDEM_SERVICO(ODS_DATACRIACAO, ODS_DATAFINALIZAR, ODS_OBSERVACAO) VALUES(?DataE, ?DataF, ?Obs)";
                objConexao = Mapped.Connection();
                objCommand = Mapped.Command(sql, objConexao);
                objCommand.Parameters.Add(Mapped.Parameter("?DataE", os.DataEntrada));
                objCommand.Parameters.Add(Mapped.Parameter("?DataF", os.DataFinalizacao));
                objCommand.Parameters.Add(Mapped.Parameter("?Obs", os.Observacao));
                objCommand.ExecuteNonQuery();
                objConexao.Close();
                objCommand.Dispose();
                objConexao.Dispose();
            }
            catch (MySql.Data.MySqlClient.MySqlException)
            {
                retorno = 1;
            }
            catch (Exception)
            {
                retorno = 2;
            }

            return retorno;
        }

        VeiculoBD bdVeiculo = new VeiculoBD();
        private string veicMarca;

        public string VeicModel { get; private set; }

        //selectAll
        public DataSet SelectAll()
        {
            DataSet ds = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM ODS_ORDEM_SERVICO", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }

        public DataSet SelectAllVeic(string marcaFiltro)
        {
            DataSet ds = new DataSet();
            IDbConnection objConexao;
            IDbCommand objCommand;
            IDataAdapter objDataAdapter;
            objConexao = Mapped.Connection();
            string query = "SELECT VEI_VEICULO.*, CLI_CLIENTE.CLI_NOME FROM VEI_VEICULO LEFT JOIN CLI_CLIENTE ON VEI_VEICULO.CLI_ID = CLI_CLIENTE.CLI_ID WHERE VEI_MARCA LIKE ?veicMarca OR VEI_MODELO LIKE ?veicModel ORDER BY VEI_MARCA, VEI_MODELO";

            objCommand = Mapped.Command(query, objConexao);

            objCommand.Parameters.Add(Mapped.Parameter("?veicMarca", "%" + marcaFiltro + "%"));
            objCommand.Parameters.Add(Mapped.Parameter("?veicModel", "%" + marcaFiltro + "%"));

            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }

        //select
        public Ordemsv Select(int OdsID)
        {
            Ordemsv obj = null;
            IDbConnection objConexao;
            IDbCommand objCommand;
            IDataReader objDataReader;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM ODS_ORDEM_SERVICO WHERE ODS_ID = ?OdsID", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?OdsID", OdsID));
            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                obj = new Ordemsv();
                obj.DataEntrada = Convert.ToDateTime(objDataReader["ODS_DATACRIACAO"]);
                obj.DataFinalizacao = Convert.ToDateTime(objDataReader["ODS_DATAFINALIZACAO"]);
                obj.Observacao = Convert.ToString(objDataReader["ODS_OBSERVACAO"]);
            }
            objDataReader.Close();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();
            return obj;
        }
        //update
        public bool Update(Ordemsv sv)
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "UPDATE ODS_ORDEM_SERVICO SET ODS_DATACRIACAO=?DataE, ODS_DATAFINALIZACAO=?DataF, ODS_OBSERVACAO=?OBS WHERE ODS_ID=?OdsID";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?DataE", sv.DataEntrada));
            objCommand.Parameters.Add(Mapped.Parameter("?DataF", sv.DataFinalizacao));
            objCommand.Parameters.Add(Mapped.Parameter("?Obs", sv.Observacao));
            //objCommand.Parameters.Add(Mapped.Parameter("?OdsID", sv.Codigo));
            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return true;
        }
        //delete
        public bool Delete(int id)
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "DELETE FROM ODS_ORDEM_SERVICO WHERE ODS_ID=?OdsID";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?OdsID", id));

            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return true;
        }
        //construtor
        public OrdemsvBD()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}
