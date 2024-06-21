using FATEC;
using System;
//para acesso a classe Mapped
using CarLink.Classes.Auth; //para acesso a classe de modelagem
using System.Data; // para acesso ao DataSet
namespace CarLink.Persistencia.Auth
{
    /// <summary>
    /// Summary description for ClienteBD
    /// </summary>
    public class RegistroBD
    {
        public int Insert(Registro usu)
        {
            int retorno = 0;
            try
            {
                IDbConnection objConexao;
                IDbCommand objCommand;
                string sql = "INSERT INTO USU_USUARIO(USU_NOME, USU_SOBRENOME, USU_CPF, USU_CNPJ,USU_EMPRESA, USU_EMAIL, USU_TEL, USU_SENHA, USU_ATIVIDADE, PLN_ID) VALUES(?Nome, ?Sobrenome, ?Cpf, ?Cnpj,?Empresa, ?Email, ?Tel, ?Senha, ?atv, ?pln)";
                objConexao = Mapped.Connection();
                objCommand = Mapped.Command(sql, objConexao);
                objCommand.Parameters.Add(Mapped.Parameter("?Nome", usu.Nome));
                objCommand.Parameters.Add(Mapped.Parameter("?Sobrenome", usu.Sobrenome));
                objCommand.Parameters.Add(Mapped.Parameter("?Cpf", usu.Cpf));
                objCommand.Parameters.Add(Mapped.Parameter("?Cnpj", usu.Cnpj));
                objCommand.Parameters.Add(Mapped.Parameter("?Empresa", usu.Empresa));
                objCommand.Parameters.Add(Mapped.Parameter("?Email", usu.Email));
                objCommand.Parameters.Add(Mapped.Parameter("?Tel", usu.Tel));
                objCommand.Parameters.Add(Mapped.Parameter("?Senha", usu.Senha));
                objCommand.Parameters.Add(Mapped.Parameter("?atv", usu.Atividade));
                objCommand.Parameters.Add(Mapped.Parameter("?pln", usu.Plano));
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
            DataSet dsReg = new DataSet();
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM USU_USUARIO", objConexao);
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(dsReg);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return dsReg;
        }

        public DataSet VerifyLogin(string email)
        {
            DataSet ds = new DataSet();
            IDbConnection objConexao;
            IDbCommand objCommand;
            IDataAdapter objDataAdapter;
            objConexao = Mapped.Connection();
            string query = "SELECT USU_USUARIO.USU_EMAIL, USU_USUARIO.USU_SENHA FROM USU_USUARIO WHERE USU_EMAIL LIKE ?usuEmail AND USU_ATIVIDADE = 'ATIVO'";
            objCommand = Mapped.Command(query, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?usuEmail", "%" + email + "%"));
            objDataAdapter = Mapped.Adapter(objCommand);
            objDataAdapter.Fill(ds);
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return ds;
        }

        //select
        public Registro Select(int UsuID)
        {
            Registro obj = null;
            IDbConnection objConexao;
            IDbCommand objCommand;
            IDataReader objDataReader;
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command("SELECT * FROM USU_USUARIO WHERE USU_ID = ?UsuID", objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?UsuID", UsuID));
            objDataReader = objCommand.ExecuteReader();
            while (objDataReader.Read())
            {
                obj = new Registro();
                
            }
            objDataReader.Close();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            objDataReader.Dispose();
            return obj;
        }
        //update
        public bool Update(Registro reg)
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "UPDATE USU_USUARIO SET USU_SENHA=?Senha WHERE USU_ID=?UsuID";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?Senha", reg.Senha));
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
            string sql = "DELETE FROM USU_USUARIO WHERE USU_ID=?UsuID";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);
            objCommand.Parameters.Add(Mapped.Parameter("?UsuID", id));

            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
            return true;
        }
        //construtor
        public RegistroBD()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}