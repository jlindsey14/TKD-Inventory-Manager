using Lindsey_s_Martial_Arts_Inventory_Management_System.Models;
using System.Collections;
using System.Collections.Generic;

namespace Lindsey_s_Martial_Arts_Inventory_Management_System.DAOs
{
    public interface IBoardDao
    {
        IList<Board> GetAllBoards();
        Board GetBoardByThickness(string thickness);
    }
}
