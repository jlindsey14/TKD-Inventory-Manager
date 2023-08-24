namespace Lindsey_s_Martial_Arts_Inventory_Management_System.Models
{
    public class Board
    { 
        public int Id { get; set; }
        public string Thickness { get; set; }
        public int NumAvailable { get; set; }

        public Board() { }
        public Board(int id, string thickness, int numAvailable)
        {
            Id = id;
            Thickness = thickness;
            NumAvailable = numAvailable;
        }
    }
}
