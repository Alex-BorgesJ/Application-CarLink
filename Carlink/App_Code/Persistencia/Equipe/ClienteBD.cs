using FATEC;
using System;
//para acesso a classe Mapped
using CarLink.Classes.Equipe; //para acesso a classe de modelagem
using System.Data; // para acesso ao DataSet
namespace CarLink.Persistencia.Equipe
{
    /// <summary>
    /// Summary description for ClienteBD
    /// </summary>
    public class ClienteBD
    {
        //métodos
        //insert
        public int Insert(Cliente cliente)
        {
            int retorno = 0;
            try
            {
                IDbConnection objConexao;//recebe a conexão com o mapped
                IDbCommand objCommand;//recebe o comando 
                string sql = "INSERT INTO CLI_CLIENTE(CLI_NOME, CLI_EMAIL, CLI_TELEFONE, CLI_CPF) VALUES(?nome, ?email, ?telefone, ?cpf)";
                objConexao = Mapped.Connection();// manda a conexeção para o mapped
                objCommand = Mapped.Command(sql, objConexao);// manda o comando 
                objCommand.Parameters.Add(Mapped.Parameter("?nome", cliente.Nome));
                objCommand.Parameters.Add(Mapped.Parameter("?email", cliente.Email));
                objCommand.Parameters.Add(Mapped.Parameter("?telefone", cliente.Telefone));
                objCommand.Parameters.Add(Mapped.Parameter("?cpf", cliente.Cpf));
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
            objCommand = Mapped.Command("SELECT * FROM CLI_CLIENTE", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }
        //select
        public Cliente Select(string email)
        {
            Cliente obj = null;
            IDbConnection objConexao;
            IDbCommand objCommand;
            IDataReader objDataReader;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM CLI_CLIENTE WHERE CLI_EMAIL = ?email", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?email", email));
            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                obj = new Cliente();
                obj.Codigo = Convert.ToInt32(objDataReader["CLI_ID"]);
                obj.Nome = Convert.ToString(objDataReader["CLI_NOME"]);
                obj.Email = Convert.ToString(objDataReader["CLI_EMAIL"]);
                obj.Telefone = Convert.ToString(objDataReader["CLI_TELEFONE"]);
                obj.Cpf = Convert.ToString(objDataReader["CLI_CPF"]);
            }
            objDataReader.Close();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();
            return obj;
        }
        //update
        public bool Update(Cliente cliente)
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "UPDATE CLI_CLIENTE SET CLI_NOME=?nome, CLI_EMAIL=?email, CLI_TELEFONE=?telefone, CLI_CPF =?cpf WHERE CLI_ID=?codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?nome", cliente.Nome));
            objCommand.Parameters.Add(Mapped.Parameter("?email", cliente.Email));
            objCommand.Parameters.Add(Mapped.Parameter("?telefone", cliente.Telefone));
            objCommand.Parameters.Add(Mapped.Parameter("?cpf", cliente.Cpf));
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", cliente.Codigo));
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
            string sql = "DELETE FROM CLI_CLIENTE WHERE CLI_ID=?codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", id));

            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return true;
        }
        //construtor
        public ClienteBD()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}
