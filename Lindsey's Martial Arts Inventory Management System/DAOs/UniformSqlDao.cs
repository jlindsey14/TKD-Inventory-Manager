using Lindsey_s_Martial_Arts_Inventory_Management_System.Models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace Lindsey_s_Martial_Arts_Inventory_Management_System.DAOs
{
    public class UniformSqlDao : IUniformDao
    {
        private readonly string connectionString;

        public UniformSqlDao(string dbConnectionString)
        {
            connectionString = dbConnectionString;
        }

        public IList<Uniform> GetAllUniforms()
        {
            IList<Uniform> uniforms = new List<Uniform>();

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand(@"SELECT * FROM uniforms;", conn);

                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        Uniform uniform = CreateUniformFromReader(reader);
                        uniforms.Add(uniform);
                    }
                    return uniforms;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return new List<Uniform>();
            }
        }

        public IList<Uniform> GetUniformBySize(int size)
        {
            IList<Uniform> uniforms = new List<Uniform>();

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand(@"SELECT * FROM uniforms WHERE size = @size;", conn);
                    cmd.Parameters.AddWithValue("@size", size);

                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        Uniform uniform = new Uniform();
                        uniform = CreateUniformFromReader(reader);
                        uniforms.Add(uniform);
                    }
                    return uniforms;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return uniforms;
            }
        }

        private Uniform CreateUniformFromReader(SqlDataReader reader)
        {
            Uniform u = new Uniform()
            {
                Id = Convert.ToInt32(reader["uniform_id"]),
                Size = Convert.ToInt32(reader["size"]),
                IsBlackBeltClubUniform = Convert.ToBoolean(reader["is_black_belt"]),
                NumAvailable = Convert.ToInt32(reader["number_available"]),
            };
            return u;
        }
    }
}
