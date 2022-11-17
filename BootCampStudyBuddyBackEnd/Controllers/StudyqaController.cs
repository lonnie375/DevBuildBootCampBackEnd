using BootCampStudyBuddyBackEnd.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace BootCampStudyBuddyBackEnd.Controllers
{
    [Route("study")]
    [ApiController]
    public class StudyqaController : ControllerBase
    {
        [HttpGet]
        public List<studyqa> GetAll()
        {
            return studyqa.GetAll();
        }

        [HttpGet("{id}")]
        public studyqa Get(int id)
        {
            return studyqa.Get(id);
        }

        [HttpPost]
        public studyqa Save(studyqa study)
        {
            return studyqa.Create(study);
        }

        [HttpDelete("{id}")]
        public APIResponse Delete(int id)
        {
            studyqa.Delete(id);
            return new APIResponse() { status = "alright" };
        }

        [HttpPut]
        public APIResponse Update(studyqa study)
        {
            studyqa.Update(study);
            return new APIResponse() { status = "alright" };
        }
    }
}
