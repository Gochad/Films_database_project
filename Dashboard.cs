using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Film_Project
{
    public partial class Dashboard : Form
    {
        List<Person> people = new List<Person>();
        List<Production> productions = new List<Production>();
        public Dashboard()
        {
            InitializeComponent();
            UpdateBinding();
            UpdateBinding_2();
        }

        private void UpdateBinding()
        {
            listBox1.DataSource = people;
            listBox1.DisplayMember = "FullInfo";
        }
        private void UpdateBinding_2()
        {
            listBox2.DataSource = productions;
            listBox2.DisplayMember = "InfoFull";
        }

        public void button1_Click_1(object sender, EventArgs e)
        {

            DataAccess db = new DataAccess();

            people = db.GetPeople(textBox1.Text);
            UpdateBinding();

        }

        private void button2_Click(object sender, EventArgs e)
        {
            DataAccess db = new DataAccess();

            db.InsertPerson(textBox2.Text, textBox3.Text, textBox4.Text, textBox5.Text, textBox6.Text, textBox7.Text);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            DataAccess db = new DataAccess();

            db.InsertProduction(textBox8.Text, checkBox1.Checked, checkBox2.Checked);
        }

        private void button4_Click(object sender, EventArgs e)
        {
            DataAccess db = new DataAccess();
            db.DeletePerson(textBox9.Text, textBox10.Text);
        }

        private void button5_Click(object sender, EventArgs e)
        {
            DataAccess db = new DataAccess();
            db.DeleteProduction(textBox11.Text);
        }

        private void button6_Click(object sender, EventArgs e)
        {
            DataAccess db = new DataAccess();

            productions = db.GetProductions(textBox12.Text);
            UpdateBinding_2();
        }

        private void button7_Click(object sender, EventArgs e)
        {
            LoginPanel lp = new LoginPanel();
            lp.Show();
            this.Hide();
        }

        private void Dashboard_Load(object sender, EventArgs e)
        {
            if(ulog.type == "U")
            {
                label12.Visible = false;
                label13.Visible = false;
                label14.Visible = false;
                label15.Visible = false;
                label16.Visible = false;
                textBox9.Visible = false;
                textBox10.Visible = false;
                textBox11.Visible = false;
                button4.Visible = false;
                button5.Visible = false;
            }

        }
    }
}