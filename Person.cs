using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Film_Project
{
    public class Person
    {
        public int id_person { get; set;  }
        public string? person_name { get; set; }

        public string? person_surname { get; set; }

        public char sex { get; set; }

        public int age { get; set; }

        public string? origin_country { get; set; }

        public int height { get; set; }

        public string FullInfo
        {
            get 
            { 
                return $"id:{ id_person} {person_name} {person_surname} age:{age} sex:{sex} country:{origin_country} height: {height}"; 
            }
        }

     }
}