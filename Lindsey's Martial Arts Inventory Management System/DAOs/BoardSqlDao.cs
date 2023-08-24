using Lindsey_s_Martial_Arts_Inventory_Management_System.Models;
using System.Collections.Generic;
using System.Data.SqlClient;
using System;

namespace Lindsey_s_Martial_Arts_Inventory_Management_System.DAOs
{
    public class BoardSqlDao : IBoardDao
    {
        private readonly string connectionString;

        public BoardSqlDao(string dbConnectionString)
        {
            connectionString = dbConnectionString;
        }

        public IList<Board> GetAllBoards()
        {
            IList<Board> boards = new List<Board>();

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand("SELECT * FROM boards;", conn);

                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        Board board = CreateBoardFromReader(reader);
                        boards.Add(board);
                    }
                    return boards;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return new List<Board>();
            }
        }

        public Board GetBoardByThickness(string thickness)
        {
            Board board = new Board();

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand("SELECT * FROM boards WHERE thickness = @thickness;", conn);
                    cmd.Parameters.AddWithValue("@thickness", thickness);

                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        board = CreateBoardFromReader(reader);
                    }
                    return board;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return board;
            }
        }

        private Board CreateBoardFromReader(SqlDataReader reader)
        {
            Board b = new Board()
            {
                Id = Convert.ToInt32(reader["id"]),
                Thickness = Convert.ToString(reader["thickness"]),
                NumAvailable = Convert.ToInt32(reader["num_available"]),
            };
            return b;
        }
    }
}
