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
                string sql = "INSERT INTO ODS_ORDEM_SERVICO (ODS_DESCRICAO, ODS_STATUS, ODS_DATAEMISSAO, VEI_ID) VALUES(?Obs, ?status, ?data, ?Id)";
                objConexao = Mapped.Connection();
                objCommand = Mapped.Command(sql, objConexao);
                objCommand.Parameters.Add(Mapped.Parameter("?Obs", os.Observacao));
                objCommand.Parameters.Add(Mapped.Parameter("?Id", os.Codigo));
                objCommand.Parameters.Add(Mapped.Parameter("?data", os.Data));
                objCommand.Parameters.Add(Mapped.Parameter("?status", os.Status));
                
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

        //Select osv
        public DataSet SelectAllOsv(string marcaFiltro)
        {
            DataSet ds = new DataSet();
            IDbConnection objConexao;
            IDbCommand objCommand;
            IDataAdapter objDataAdapter;
            objConexao = Mapped.Connection();
            string query = "SELECT ODS_ORDEM_SERVICO.ODS_ID, ODS_ORDEM_SERVICO.ODS_DESCRICAO, ODS_ORDEM_SERVICO.ODS_DATAEMISSAO, ODS_ORDEM_SERVICO.ODS_STATUS,ODS_ORDEM_SERVICO.VEI_ID, VEI_VEICULO.VEI_MARCA, VEI_VEICULO.VEI_MODELO, CLI_CLIENTE.CLI_NOME FROM ODS_ORDEM_SERVICO LEFT JOIN VEI_VEICULO ON ODS_ORDEM_SERVICO.VEI_ID = VEI_VEICULO.VEI_ID INNER JOIN CLI_CLIENTE ON VEI_VEICULO.CLI_ID = CLI_CLIENTE.CLI_ID WHERE VEI_MARCA LIKE ?veicMarca OR VEI_MODELO LIKE ?veicModel ORDER BY VEI_MARCA, VEI_MODELO";

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

        //select descricao
        public Ordemsv SelectVei(int veiID)
        {
            Ordemsv obj = null;
            IDbConnection objConexao;
            IDbCommand objCommand;
            IDataReader objDataReader;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM ODS_ORDEM_SERVICO WHERE VEI_ID = ?veiID", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?veiID", veiID));
            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                obj = new Ordemsv();
                obj.Observacao = Convert.ToString(objDataReader["ODS_DESCRICAO"]);
                obj.Status = Convert.ToString(objDataReader["ODS_STATUS"]);
            }
            objDataReader.Close();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();
            return obj;
        }
        //Select data
        public DataSet SelectAllDataOrdens()
        {
            DataSet ds = new DataSet();
            IDbConnection objConexao;
            IDbCommand objCommand;
            IDataAdapter objDataAdapter;
            objConexao = Mapped.Connection();
            string query = "select date_format(o.ods_dataemissao, '%Y-%m') as mes, o.ods_status as status, count(o.ods_id) as total from ods_ordem_servico o group by date_format(o.ods_dataemissao, '%Y-%m'), status order by mes, status";

            objCommand = Mapped.Command(query, objConexao);



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
                obj.Observacao = Convert.ToString(objDataReader["ODS_DESCRICAO"]);
                obj.Status = Convert.ToString(objDataReader["ODS_STATUS"]);
                obj.Codigo = Convert.ToInt32(objDataReader["ODS_ID"]);
            }
            objDataReader.Close();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();
            return obj;
        }
        //update
        public int Update(Ordemsv sv)
        {
            int retorno = 0;
            try { 
                IDbConnection objConexao;
                IDbCommand objCommand;
                string sql = "UPDATE ODS_ORDEM_SERVICO SET ODS_DESCRICAO = ?obs, ODS_STATUS = ?status WHERE ODS_ID=?OdsID";
                objConexao = Mapped.Connection();
                objCommand = Mapped.Command(sql, objConexao);
                objCommand.Parameters.Add(Mapped.Parameter("?OdsID", sv.Codigo));
                objCommand.Parameters.Add(Mapped.Parameter("?Obs", sv.Observacao));
                objCommand.Parameters.Add(Mapped.Parameter("?status", sv.Status));
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
