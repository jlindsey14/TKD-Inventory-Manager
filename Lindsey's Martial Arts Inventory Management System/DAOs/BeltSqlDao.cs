using Lindsey_s_Martial_Arts_Inventory_Management_System.Models;
using System.Collections.Generic;
using System.Data.SqlClient;
using System;

namespace Lindsey_s_Martial_Arts_Inventory_Management_System.DAOs
{
    public class BeltSqlDao : IBeltDao
    {
        private readonly string connectionString;

        public BeltSqlDao(string dbConnectionString)
        {
            connectionString = dbConnectionString;
        }

        public IList<Belt> GetAllBelts()
        {
            IList<Belt> belts = new List<Belt>();

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand(@"SELECT * FROM belts;", conn);

                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        Belt belt = CreateBeltFromReader(reader);
                        belts.Add(belt);
                    }
                    return belts;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return new List<Belt>();
            }
        }

        public IList<Belt> GetBeltByColor(string color)
        {
            IList<Belt> belts = new List<Belt>();

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand(@"SELECT * FROM belts WHERE color = @color;", conn);
                    cmd.Parameters.AddWithValue("@color", color);

                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        Belt belt = CreateBeltFromReader(reader);
                        belts.Add(belt);
                    }
                    return belts;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return belts;
            }
        }

        public IList<Belt> GetBeltBySize(int size)
        {
            IList<Belt> belts = new List<Belt>();

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand(@"SELECT * FROM belts WHERE size = @size;", conn);
                    cmd.Parameters.AddWithValue("@size", size);

                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        Belt belt = CreateBeltFromReader(reader);
                        belts.Add(belt);
                    }
                    return belts;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return belts;
            }
        }

        private Belt CreateBeltFromReader(SqlDataReader reader)
        {
            Belt b = new Belt()
            {
                Id = Convert.ToInt32(reader["belt_id"]),
                Size = Convert.ToInt32(reader["size"]),
                Color = Convert.ToString(reader["color"]),
                IsLittleTiger = Convert.ToBoolean(reader["is_little_tiger"]),
                NumAvailable = Convert.ToInt32(reader["number_available"]),
            };
            return b;
        }
    }
}
