using System;
using System.Collections.Generic;
using System.Data;
using Microsoft.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using static System.Net.Mime.MediaTypeNames;
using System.Xml.Linq;
using static Azure.Core.HttpHeader;

namespace Film_Project
{
    public class DataAccess
    {
        public List<Person> GetPeople(string lastName)
        {

            using (IDbConnection connection = new SqlConnection(Helper.CnnVal("localhost")))
            {
                var output = connection.Query<Person>($"SELECT * FROM People WHERE person_surname = '{ lastName }'").ToList();

                return output;
            }
        }

        public void InsertPerson(string text1, string text2, string text3, string text4, string text5, string text6)
        {
            using (IDbConnection connection = new SqlConnection(Helper.CnnVal("localhost")))
            {
                Person newPerson = new Person
                {
                    person_name = text1,
                    person_surname = text2,
                    sex = text3[0],
                    age = Int32.Parse(text4),
                    origin_country = text5,
                    height = Int32.Parse(text6)
                };
                List<Person> people = new List<Person>();

                people.Add(newPerson);

                connection.Execute($"addperson @person_name, @person_surname, @sex, @age, @origin_country, @height", people);
            }
        }


        public void InsertProduction(string text, bool checked1, bool checked2)
        {
            string typeN = "";
            if(checked1)
            {
                typeN = "Movie";
            }
            if(checked2)
            {
                typeN = "Series";
            }
            using (IDbConnection connection = new SqlConnection(Helper.CnnVal("localhost")))
            {
                Production newProd = new Production
                {
                    production_name = text,
                    production_type = typeN
                };
                List<Production> productions = new List<Production>();

                productions.Add(newProd);

                connection.Execute($"addproduction @name, @type", productions);
            }

        }
        public void DeletePerson(string name, string surname)
        {
            using (IDbConnection connection = new SqlConnection(Helper.CnnVal("localhost")))
            {
                connection.Query($"DELETE FROM People WHERE person_name = '{name}' AND person_surname = '{surname}'");
            }
        }
        public void DeleteProduction(string name)
        {
            using (IDbConnection connection = new SqlConnection(Helper.CnnVal("localhost")))
            {
                connection.Query($"DELETE FROM Productions WHERE name = '{name}'");
            }
        }

        public List<Production> GetProductions(string text)
        {
            using (IDbConnection connection = new SqlConnection(Helper.CnnVal("localhost")))
            {
                var output = connection.Query<Production>($"SELECT * FROM Productions p WHERE p.production_name = '{ text }'").ToList();

                return output;
            }
        }

        internal List<User> Login(string username, string pwd)
        {
            using (IDbConnection connection = new SqlConnection(Helper.CnnVal("localhost")))
            {
                var output = connection.Query<User>($"SELECT * FROM User_table WHERE username = '{username}' AND userpassword = '{pwd}'").ToList();
                return output;


            }
        }

        internal void CreateUser(string username, string pwd)
        {
            using (IDbConnection connection = new SqlConnection(Helper.CnnVal("localhost")))
            {

                connection.Query($"INSERT INTO User_table VALUES ('{username}', '{pwd}', 'USER')");
            }
        }
    }
}