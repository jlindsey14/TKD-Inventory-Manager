using Lindsey_s_Martial_Arts_Inventory_Management_System.DAOs;
using Lindsey_s_Martial_Arts_Inventory_Management_System.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;

namespace Lindsey_s_Martial_Arts_Inventory_Management_System.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class BoardController : ControllerBase
    {
        private readonly IBoardDao boardDao;

        public BoardController(IBoardDao _boardDao)
        {
            boardDao = _boardDao;
        }

        [HttpGet]
        public IList<Board> GetAllBoards()
        {
            return boardDao.GetAllBoards();
        }

        [HttpGet("{thickness}")]
        public ActionResult<Board> GetBoardByThickness(string thickness)
        {
            Board board = boardDao.GetBoardByThickness(thickness);

            if (board == null)
            {
                return NotFound();
            }
            else
            {
                return Ok(board);
            }
        }
    }
}
