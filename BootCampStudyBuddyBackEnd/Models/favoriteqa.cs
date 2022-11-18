using Dapper.Contrib.Extensions;
using MySql.Data.MySqlClient;

namespace BootCampStudyBuddyBackEnd.Models
{
    [Table("favoriteqa")]
    public class favoriteqa
    {
        [Key]
        public int id { get; set; }
        public string question { get; set; }
        public string answer { get; set; }
        public string userid { get; set; }

        public static MySqlConnection DB; 

        //CRUD will be below 

        public static List<favoriteqa> GetAll()
        {
            return DB.GetAll<favoriteqa>().ToList();
        }

        public static favoriteqa Get(int id)
        {
            return DB.Get<favoriteqa>(id);
        }

        public static favoriteqa Create(favoriteqa fav)
        {
            DB.Insert(fav);
            return fav; 
        }

        public static void Delete(int id)
        {
            favoriteqa fav = new favoriteqa() { id = id };  
            DB.Delete(fav);
        }

        public static void Update (favoriteqa fav)
        {
            DB.Update(fav); 
        }
    }
}
