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
        public ActionResult<IList<Uniform>> GetAllUniforms()
        {
            IList<Uniform> uniforms = uniformDao.GetAllUniforms();

            if(uniforms.Count == 0)
            {
                return NoContent();
            }
            return Ok(uniforms);
        }

        [HttpGet("{size}")]
        public ActionResult<IList<Uniform>> GetUniformBySize(int size)
        {
            IList<Uniform> uniforms = uniformDao.GetUniformBySize(size);

            if (uniforms.Count == 0)
            {
                return NoContent();
            }
            return Ok(uniforms);
        }
    }
}
