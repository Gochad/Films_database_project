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
    public partial class LoginPanel : Form
    {
        List<User> users = new List<User>();

        public LoginPanel()
        {
            InitializeComponent();
            textBox2.UseSystemPasswordChar = true;
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            DataAccess db = new DataAccess();

            users = db.Login(textBox1.Text, textBox2.Text);
            if(users.Count == 1)
            {
                if (users[0].user_type == "ADMIN")
                {
                    ulog.type = "A";
                }
                else
                {
                   ulog.type = "U";
                }
                Dashboard dash = new Dashboard();
                dash.Show();
                this.Hide();
            }

        }
        private void button4_Click_1(object sender, EventArgs e)
        {
            DataAccess db = new DataAccess();
            db.CreateUser(textBox3.Text, textBox4.Text);
            textBox3.Text = "";
            textBox4.Text = "";
        }

        private void checkBox1_CheckedChanged_1(object sender, EventArgs e)
        {
            if (checkBox1.Checked)
            {
                textBox2.UseSystemPasswordChar = false;
            }
            else
            {
                textBox2.UseSystemPasswordChar = true;
            }
        }

        private void button2_Click_1(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}