namespace Lindsey_s_Martial_Arts_Inventory_Management_System.Models
{
    public class Belt
    {
        public int Id { get; set; }
        public int Size { get; set; }
        public string Color { get; set; }
        public bool IsLittleTiger { get; set; }
        public int NumAvailable { get; set; }

        public Belt() { }
        public Belt(int size, string color, bool isLittleTiger, int numAvailable)
        {
            Size = size;
            Color = color;
            IsLittleTiger = isLittleTiger;
            NumAvailable = numAvailable;
        }
    }
}
