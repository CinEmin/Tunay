using System;
using System.Collections.Generic;
using System.Configuration;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using Microsoft.Extensions.Logging;
using Dapper;
using System.Linq;
using TunayEntity;

namespace TunayData
{
   public class ProductDataAccess
    {
        private DataBaseAccess dbAcess = new DataBaseAccess();

        public List<Product> GetProducts()
        {
            string connectionString = dbAcess.GetConnectionString("LocalDB");
            using (IDbConnection connection = new SqlConnection(connectionString))
            {
                List<Product> products = connection.Query<Product>("Select * from [dbo].[Product];").ToList();
                return products;
            }

        }

        public List<Object> GetList()
        {
            string connectionString = dbAcess.GetConnectionString("LocalDB");
            using (IDbConnection connection = new SqlConnection(connectionString))
            {
                List<Object> products = connection.Query<Object>("Select * from [dbo].[AcidityType];").ToList();
                return products;
            }
        }



        //public string GetConnectionString(string DatabaseName)
        //{
        //    return ConfigurationManager.ConnectionStrings[DatabaseName].ConnectionString;
        //}

        //public List<T> LoadData<T,U>(string storedProcedure, U parameters, string connectionStringName)
        //{
        //    string connectionString = GetConnectionString(connectionStringName);

        //    using(IDbConnection connection = new SqlConnection(connectionString))
        //    {
        //        List<T> rows = connection.Query<T>(storedProcedure, parameters, commandType: CommandType.StoredProcedure).ToList();
        //        return rows;
        //    }
        //}

        //public void SaveData<T>(string storedProcedure, T parameters, string connectionStringName)
        //{
        //    string connectionString = GetConnectionString(connectionStringName);

        //    using (IDbConnection connection = new SqlConnection(connectionString))
        //    {
        //        connection.Execute(storedProcedure, parameters, commandType: CommandType.StoredProcedure);
        //    }
        //}

        //private IDbConnection _connection;
        //private IDbTransaction _transaction;

        //public void StartTransaction(string connectionStringName)
        //{
        //    string connectionString = GetConnectionString(connectionStringName);

        //    _connection = new SqlConnection(connectionString);
        //    _transaction = _connection.BeginTransaction();
        //}


        //public List<T> LoadDataInTransaction<T, U>(string storedProcedure, U parameters)
        //{
        //    List<T> rows = _connection.Query<T>(storedProcedure, parameters,
        //        commandType: CommandType.StoredProcedure,
        //        transaction: _transaction).ToList();
        //        return rows;
        //}
        //public void SaveDataInTransaction<T>(string storedProcedure, T parameters)
        //{
        //    _connection.Execute(storedProcedure, parameters,
        //        commandType: CommandType.StoredProcedure,
        //        transaction: _transaction);
        //}
        //public void CommitTransaction()
        //{
        //    _transaction?.Commit();
        //    _connection?.Close();
        //}

        //public void RollbackTransaction()
        //{
        //    _transaction?.Rollback();
        //    _connection?.Close();
        //}

        //public void Dispose()
        //{
        //    CommitTransaction();
        //}
    }


}
