using Lindsey_s_Martial_Arts_Inventory_Management_System.DAOs;
using Lindsey_s_Martial_Arts_Inventory_Management_System.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;

namespace Lindsey_s_Martial_Arts_Inventory_Management_System.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class BeltController : ControllerBase
    {
        private readonly IBeltDao beltDao;

        public BeltController(IBeltDao _beltDao)
        {
            beltDao = _beltDao;
        }

        [HttpGet]
        public ActionResult<IList<Belt>> GetAllBelts()
        {
            IList<Belt> belts = beltDao.GetAllBelts();

            if(belts.Count == 0)
            {
                return NoContent();
            }
            return Ok(belts);
        }

        [HttpGet("{color}")]
        public ActionResult<IList<Belt>> GetBeltByColor(string color)
        {
            IList<Belt> belts = beltDao.GetBeltByColor(color);

            if(belts.Count == 0)
            {
                return NoContent();
            }
            return Ok(belts);
        }

        [HttpGet("{size}")]
        public ActionResult<IList<Belt>> GetBeltBySize(int size)
        {
            IList<Belt> belts = beltDao.GetBeltBySize(size);

            if(belts.Count == 0)
            {
                return NoContent();
            }
            return Ok(belts);
        }
    }
}
