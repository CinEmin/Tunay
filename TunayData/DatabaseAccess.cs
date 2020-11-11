using System;
using System.Collections.Generic;
using System.Configuration;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using Microsoft.Extensions.Logging;

namespace TunayData
{
   public class DatabaseAccess
    {
        public void GetConnection(string queryString)
        {
            var connectionString = ConfigurationManager.ConnectionStrings["LocalDB"].ConnectionString;
            using (var connection = new SqlConnection(connectionString))
            {
                var command = new SqlCommand(queryString, connection);
                connection.Open();

            }
        }
    }


}
