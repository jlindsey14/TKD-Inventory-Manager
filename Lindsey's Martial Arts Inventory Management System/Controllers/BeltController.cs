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
        public IList<Belt> GetAllBelts()
        {
            return beltDao.GetAllBelts();
        }

        [HttpGet("{color}")]
        public IList<Belt> GetBeltByColor(string color)
        {
            return beltDao.GetBeltByColor(color);
        }

        [HttpGet("{size}")]
        public IList<Belt> GetBeltBySize(int size)
        {
            return beltDao.GetBeltBySize(size);
        }
    }
}
