using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Film_Project
{
    public class Production
    {
        public int id_production { get; set; }
        public string? production_name { get; set; }
        public string? production_type { get; set; }

        public string? InfoFull
        {
            get
            {
                return $"{id_production}: {production_name} {production_type}";
            }
        }
    }
}