 using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace netFlixRipOff
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Sign_In(object sender, RoutedEventArgs e)
        {
            if (userName.Text.ToString() != "" || userPassword.Text.ToString() !="")
            {
                string emailToCheck = userName.Text.ToString();
                string passwordToCheck = userPassword.Text.ToString();

                using (SqlConnection connection = new SqlConnection("Data Source=localhost:1521:xe;Initial Catalog=vidigo;User ID=SYSTEM;Password=school10;"))
                using (SqlCommand signInCheck = new SqlCommand("Select USERNAME, PASSWORD FROM VIGICLIENT WHERE "+emailToCheck+"=USERNAME and "+passwordToCheck+"=PASSWORD",connection))
                {
                    connection.Open();
                    using(SqlDataReader reader = signInCheck.ExecuteReader())
                    {
                        if(reader.HasRows)
                        {
                            connection.Close();
                            this.Hide();
                            searchPage searchPage = new searchPage();
                            searchPage.Show();
                        }

                        else{signInError();
                        connection.Close();
                        }

                    }
                }
            }
}

        private void invalidUser()
        {
            System.Windows.Forms.MessageBox.Show("The user creditals you entered are not correct try again please.");
        }

        private void signInError()
        {
            System.Windows.Forms.MessageBox.Show("You either entered a blank entry or entered a non registered user try again or signup.");
        }

        private void signUp_Click(object sender, RoutedEventArgs e)
        {
            this.Hide();
            signUpPage signUpPage = new signUpPage();
            signUpPage.ShowDialog();

        }
    }
}