using Lindsey_s_Martial_Arts_Inventory_Management_System.DAOs;
using Lindsey_s_Martial_Arts_Inventory_Management_System.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Collections;
using System.Collections.Generic;

namespace Lindsey_s_Martial_Arts_Inventory_Management_System.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class UniformController : ControllerBase
    {
        private readonly IUniformDao uniformDao;

        public UniformController(IUniformDao _uniformDao)
        {
            uniformDao = _uniformDao;
        }

        [HttpGet]
        public IList<Uniform> GetAllUniforms()
        {
            return uniformDao.GetAllUniforms();
        }

        [HttpGet("{size}")]
        public ActionResult<Uniform> GetUniformBySize(int size)
        {
            Uniform uniform = uniformDao.GetUniformBySize(size);

            if (uniform == null)
            {
                return NotFound();
            }
            else
            {
                return Ok(uniform);
            }
        }
    }
}
