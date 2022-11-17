using Dapper.Contrib.Extensions;
using MySql.Data.MySqlClient;

namespace BootCampStudyBuddyBackEnd.Models
{
    [Table("studyqa")]
    public class studyqa
    {
        [Key]
        public int id { get; set; } 
        public string question { get; set; }
        public string answer { get; set; }


        public static MySqlConnection DB; 

        public static List<studyqa> GetAll()
        {
            return DB.GetAll<studyqa>().ToList(); 
        }  

        public static studyqa Get(int id)
        {
            return DB.Get<studyqa>(id); 
        }

        public static studyqa Create (studyqa study)
        {
            DB.Insert(study);
            return study; 
        }

        public static void Delete(int id)
        {
            studyqa study = new studyqa() { id = id }; 
            DB.Delete(study);   
        }

        public static void Update(studyqa study)
        {
            DB.Update(study); 
        }
    }
}
