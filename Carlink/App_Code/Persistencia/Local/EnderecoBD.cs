using FATEC;
using System;
//para acesso a classe Mapped
using CarLink.Classes.Local; //para acesso a classe de modelagem
using System.Data; // para acesso ao DataSet
namespace CarLink.Persistencia.Local
{
    /// <summary>
    /// Summary description for EnderecoBD
    /// </summary>
    public class EnderecoBD
    {
        //métodos
        //insert
        public int Insert(Endereco endereco)
        {
            int retorno = 0;
            try
            {
                IDbConnection objConexao;
                IDbCommand objCommand;
                string sql = "INSERT INTO END_ENDERECO(END_ESTADO, END_CIDADE, END_BAIRRO, END_RUA, END_NUMERO,END_CEP, CLI_ID) VALUES(?estado, ?cidade, ?bairro, ?rua, ?numero, ?cpf, ?cli_cliente)";
                objConexao = Mapped.Connection();
                objCommand = Mapped.Command(sql, objConexao);
                objCommand.Parameters.Add(Mapped.Parameter("?estado", endereco.Estado));
                objCommand.Parameters.Add(Mapped.Parameter("?cidade", endereco.Cidade));
                objCommand.Parameters.Add(Mapped.Parameter("?bairro", endereco.Bairro));
                objCommand.Parameters.Add(Mapped.Parameter("?rua", endereco.Rua));
                objCommand.Parameters.Add(Mapped.Parameter("?numero", endereco.Numero));
                objCommand.Parameters.Add(Mapped.Parameter("?cpf", endereco.Cep));
                objCommand.Parameters.Add(Mapped.Parameter("?cli_cliente", endereco.CLI_codigo));
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
            objCommand = Mapped.Command("SELECT * FROM END_ENDERECO", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }
        //select
        public Endereco Select(int id)
        {
            Endereco obj = null;
            IDbConnection objConexao;
            IDbCommand objCommand;
            IDataReader objDataReader;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM END_ENDERECO WHERE END_ID = ?codigo", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", id));
            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                obj = new Endereco();
                obj.Codigo = Convert.ToInt32(objDataReader["END_ID"]);
                obj.Estado = Convert.ToString(objDataReader["END_ESTADO"]);
                obj.Cidade = Convert.ToString(objDataReader["END_CIDADE"]);
                obj.Bairro = Convert.ToString(objDataReader["END_BAIRRO"]);
                obj.Rua = Convert.ToString(objDataReader["END_RUA"]);
                obj.Numero = Convert.ToString(objDataReader["END_NUMERO"]);
            }
            objDataReader.Close();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();
            return obj;
        }
        //update
        public bool Update(Endereco endereco)
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "UPDATE END_ENDERECO SET END_ESTADO=?estado, END_CIDADE=?cidade, END_BAIRRO=?bairro, END_RUA =?rua, END_NUMERO =?numero WHERE END_ID=?codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?estado", endereco.Estado));
            objCommand.Parameters.Add(Mapped.Parameter("?cidade", endereco.Cidade));
            objCommand.Parameters.Add(Mapped.Parameter("?bairro", endereco.Bairro));
            objCommand.Parameters.Add(Mapped.Parameter("?rua", endereco.Rua));
            objCommand.Parameters.Add(Mapped.Parameter("?numero", endereco.Numero));
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", endereco.Codigo));
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
            string sql = "DELETE FROM END_ENDERECO WHERE END_ID=?codigo";
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
        public EnderecoBD()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}
