namespace Lindsey_s_Martial_Arts_Inventory_Management_System.Models
{
    public class Uniform
    {
        public int Id { get; set; }
        public int Size { get; set; }
        public bool IsBlackBeltClubUniform { get; set; }
        public int NumAvailable { get; set; }

        public Uniform() { }
        public Uniform(int size, bool isBlackBeltClubUniform, int numAvailable) 
        {
            Size = size;
            IsBlackBeltClubUniform = isBlackBeltClubUniform;
            NumAvailable = numAvailable;
        }
    }
}
