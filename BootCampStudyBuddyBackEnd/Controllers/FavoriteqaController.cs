
using BootCampStudyBuddyBackEnd.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace BootCampStudyBuddyBackEnd.Controllers
{
    [Route("favorite")]
    [ApiController]
    public class FavoriteqaController : ControllerBase
    {
        [HttpGet]
        public List<favoriteqa> GetAll()
        {
            return favoriteqa.GetAll(); 
        }

        [HttpGet("{id}")]
        public favoriteqa Get(int id)
        {
            return favoriteqa.Get(id); 
        }

        [HttpPost]
        public favoriteqa Save(favoriteqa fav)
        {
            return favoriteqa.Create(fav); 
        }

        [HttpDelete("{id}")]
        public APIResponse Delete(int id)
        {
            favoriteqa.Delete(id);
            return new APIResponse() { status = "alright" };
        }

        [HttpPut]
        public APIResponse Update (favoriteqa fav)
        {
            favoriteqa.Update(fav);
            return new APIResponse() { status = "alright" };
        }
    }
}
