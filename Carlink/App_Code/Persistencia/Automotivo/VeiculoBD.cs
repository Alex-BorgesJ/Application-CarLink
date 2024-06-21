using FATEC;
using System;
//para acesso a classe Mapped
using CarLink.Classes.Automotivo; //para acesso a classe de modelagem
using System.Data; // para acesso ao DataSet
namespace CarLink.Persistencia.Automotivo
{
    //manipulação de dados com o banco 
    /// Classe responsável por gerenciar as operações de banco de dados relacionadas a veículos.
    public class VeiculoBD
    {
        //métodos
        //insert
        /// Insere um novo veículo no banco de dados.
        /// <param> O objeto Veiculo a ser inserido. </param>
        /// <returns> O ID do veículo inserido, ou 1 em caso de erro no MySQL, 2 em caso de outro erro. </returns>
        public int Insert(Veiculo veiculo)
        {
            int retorno = 0; // Inicializa a variável de retorno com 0, indicando sucesso inicialmente.
            try
            {
                IDbConnection objConexao;
                IDbCommand objCommand;
                string sql = "INSERT INTO VEI_VEICULO(VEI_ANO, VEI_MODELO, VEI_MARCA, VEI_PLACA, VEI_CHASSI, VEI_QUILOMETRAGEM) VALUES(?ano, ?modelo, ?marca, ?placa, ?chassi, ?quilometragem)";
                objConexao = Mapped.Connection(); // Cria uma conexão com o banco de dados usando a classe Mapped
                objCommand = Mapped.Command(sql, objConexao); // Cria um comando SQL usando a classe Mapped
                objCommand.Parameters.Add(Mapped.Parameter("?ano", veiculo.Ano)); // Adiciona um parâmetro para o ano
                objCommand.Parameters.Add(Mapped.Parameter("?modelo", veiculo.Modelo)); // Adiciona um parâmetro para o modelo
                objCommand.Parameters.Add(Mapped.Parameter("?marca", veiculo.Marca)); 
                objCommand.Parameters.Add(Mapped.Parameter("?placa", veiculo.Placa)); 
                objCommand.Parameters.Add(Mapped.Parameter("?chassi", veiculo.Chassi)); 
                objCommand.Parameters.Add(Mapped.Parameter("?quilometragem", veiculo.Quilometragem));
                
                objCommand.ExecuteNonQuery(); // Executa o comando SQL
                objConexao.Close(); // Fecha a conexão com o banco de dados
                objCommand.Dispose(); // Libera os recursos do comando SQL
                objConexao.Dispose(); // Libera os recursos da conexão
            }
            catch (MySql.Data.MySqlClient.MySqlException) // Captura exceções específicas do MySQL
            {
                retorno = 1; // Define o retorno como 1 em caso de erro no MySQL
            }
            catch (Exception) // Captura outras exceções
            {
                retorno = 2; // Define o retorno como 2 em caso de outro erro
            }

            return retorno; // Retorna o código de retorno, indicando sucesso ou erro
        }
        //selectAll
        /// Seleciona todos os veículos do banco de dados.
        /// <returns>Um DataSet com os veículos selecionados.</returns>
        public DataSet SelectAll()
        {
            DataSet ds = new DataSet(); // Cria um novo DataSet para armazenar os dados
            System.Data.IDbConnection objConexao;
            System.Data.IDbCommand objCommand;
            System.Data.IDataAdapter objDataAdapter;
            objConexao = Mapped.Connection(); // Cria uma conexão com o banco de dados usando a classe Mapped
            objCommand = Mapped.Command("SELECT * FROM VEI_VEICULO", objConexao); // Cria um comando SQL usando a classe Mapped
            objDataAdapter = Mapped.Adapter(objCommand); // Cria um DataAdapter para preencher o DataSet
            objDataAdapter.Fill(ds); // Preenche o DataSet com os dados
            objConexao.Close(); // Fecha a conexão com o banco de dados
            objCommand.Dispose(); // Libera os recursos do comando SQL
            objConexao.Dispose(); // Libera os recursos da conexão
            return ds; // Retorna o DataSet com os veículos selecionados
        }
        //select
        /// Seleciona um veículo específico do banco de dados pelo seu ID.
        /// <param >O ID do veículo a ser selecionado.</param>
        /// <returns>O objeto Veiculo correspondente ao ID, ou null se não encontrado.</returns>
        public Veiculo Select(int id)
        {
            Veiculo obj = null; // Inicializa a variável com null, indicando que o veículo não foi encontrado
            IDbConnection objConexao;
            IDbCommand objCommand;
            IDataReader objDataReader;
            objConexao = Mapped.Connection(); // Cria uma conexão com o banco de dados usando a classe Mapped
            objCommand = Mapped.Command("SELECT * FROM VEI_VEICULO WHERE VEI_ID = ?codigo", objConexao); // Cria um comando SQL usando a classe Mapped
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", id)); // Adiciona um parâmetro para o ID do veículo
            objDataReader = objCommand.ExecuteReader(); // Executa o comando SQL e retorna um DataReader
            while (objDataReader.Read()) // Loop para ler os dados do DataReader
            {
                obj = new Veiculo(); // Cria um novo objeto Veiculo
                obj.Ano = Convert.ToInt32(objDataReader["VEI_ANO"]); // Atribui o ano ao objeto Veiculo
                obj.Modelo = Convert.ToString(objDataReader["VEI_MODELO"]); // Atribui o modelo ao objeto Veiculo
                obj.Marca = Convert.ToString(objDataReader["VEI_MARCA"]); // Atribui a marca ao objeto Veiculo
                obj.Placa = Convert.ToString(objDataReader["VEI_PLACA"]); // Atribui a placa ao objeto Veiculo
                obj.Chassi = Convert.ToString(objDataReader["VEI_CHASSI"]); // Atribui o chassi ao objeto Veiculo
                obj.Quilometragem = Convert.ToString(objDataReader["VEI_QUILOMETRAGEM"]); // Atribui a quilometragem ao objeto Veiculo
            }
            objDataReader.Close(); // Fecha o DataReader
            objConexao.Close(); // Fecha a conexão com o banco de dados
            objCommand.Dispose(); // Libera os recursos do comando SQL
            objConexao.Dispose(); // Libera os recursos da conexão
            objDataReader.Dispose(); // Libera os recursos do DataReader
            return obj; // Retorna o objeto Veiculo ou null se não encontrado
        }

        //update
        /// Atualiza as informações de um veículo no banco de dados.
        /// <param> O objeto Veiculo com as informações atualizadas.</param>
        /// <returns>True se a atualização foi bem-sucedida, ou False em caso de erro.</returns>
        public int Update(Veiculo veiculo)
        {
            int retorno = 0;
            try { 
                IDbConnection objConexao;
                IDbCommand objCommand;
                string sql = "UPDATE VEI_VEICULO SET VEI_ANO=?ano, VEI_MODELO=?modelo, VEI_MARCA=?marca, VEI_PLACA=?placa, VEI_CHASSI=?chassi, VEI_QUILOMETRAGEM=?quilometragem WHERE VEI_ID=?codigo";
                objConexao = Mapped.Connection(); // Cria uma conexão com o banco de dados usando a classe Mapped
                objCommand = Mapped.Command(sql, objConexao); // Cria um comando SQL usando a classe Mapped
                objCommand.Parameters.Add(Mapped.Parameter("?ano", veiculo.Ano)); // Adiciona um parâmetro para o ano
                objCommand.Parameters.Add(Mapped.Parameter("?modelo", veiculo.Modelo)); // Adiciona um parâmetro para o modelo
                objCommand.Parameters.Add(Mapped.Parameter("?marca", veiculo.Marca)); // Adiciona um parâmetro para a marca
                objCommand.Parameters.Add(Mapped.Parameter("?placa", veiculo.Placa)); // Adiciona um parâmetro para a placa
                objCommand.Parameters.Add(Mapped.Parameter("?chassi", veiculo.Chassi)); // Adiciona um parâmetro para o chassi
                objCommand.Parameters.Add(Mapped.Parameter("?quilometragem", veiculo.Quilometragem)); // Adiciona um parâmetro para a quilometragem
                objCommand.Parameters.Add(Mapped.Parameter("?codigo", veiculo.Codigo));
                objCommand.ExecuteNonQuery(); // Executa o comando SQL
                objConexao.Close(); // Fecha a conexão com o banco de dados
                objCommand.Dispose(); // Libera os recursos do comando SQL
                objConexao.Dispose(); // Libera os recursos da conexão
                return retorno; // Retorna true, indicando que a atualização foi bem-sucedida
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
        /// Exclui um veículo do banco de dados pelo seu ID.
        /// <param >O ID do veículo a ser excluído.</param>
        /// <returns>True se a exclusão foi bem-sucedida, ou False em caso de erro.</returns>
        public bool Delete(int id)
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "DELETE FROM VEI_VEICULO WHERE VEI_ID=?codigo";
            objConexao = Mapped.Connection(); // Cria uma conexão com o banco de dados usando a classe Mapped
            objCommand = Mapped.Command(sql, objConexao); // Cria um comando SQL usando a classe Mapped
            objCommand.Parameters.Add(Mapped.Parameter("?codigo", id)); // Adiciona um parâmetro para o ID do veículo
            objCommand.ExecuteNonQuery(); // Executa o comando SQL
            objConexao.Close(); // Fecha a conexão com o banco de dados
            objCommand.Dispose(); // Libera os recursos do comando SQL
            objConexao.Dispose(); // Libera os recursos da conexão
            return true; // Retorna true, indicando que a exclusão foi bem-sucedida
        }
        //construtor
        public VeiculoBD()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }
}