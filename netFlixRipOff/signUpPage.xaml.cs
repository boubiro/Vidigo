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
using System.Windows.Shapes;

namespace netFlixRipOff
{
    /// <summary>
    /// Interaction logic for signUpPage.xaml
    /// </summary>
    public partial class signUpPage : Window
    {
        public signUpPage()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if (email.Text.ToString() != "" || confirmEmail.Text.ToString() != "" || password.Text.ToString() != "" || confirmPassword.Text.ToString() != "")
            {
                string inputEmail = email.Text.ToString();
                string inputConfrimEmail = confirmEmail.Text.ToString();
                string inputPassword = password.Text.ToString();
                string inputConfrimPassword = confirmPassword.Text.ToString();
                Boolean alreadyExist = true;

                using (SqlConnection connection = new SqlConnection("Data Source=localhost;Initial Catalog=vidigo;User ID=SYSTEM;Password=school10;"))
                using (SqlCommand checkOkay = new SqlCommand("Select USERNAME FROM VIGICLIENT WHERE " + email + "=USERNAME", connection))
                {
                    connection.Open();
                    using (SqlDataReader reader = checkOkay.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            emailAlreadyExist();
                            alreadyExist = true;
                        }
                        else
                        {
                            alreadyExist = false;
                        }
                    }
                    connection.Close();
                }

                if (!alreadyExist)
                {
                        billingWindow billingWindow = new billingWindow(inputEmail, inputPassword);
                        billingWindow.Show();
                        this.Close();
                }
            }
        }

        private void emailAlreadyExist()
        {
            System.Windows.Forms.MessageBox.Show("Email already exist. Please choose another one");
        }

        private void email_TextChanged(object sender, TextChangedEventArgs e)
        {
            if(email.Text.ToString() != confirmEmail.Text.ToString())
            {
                email.Background = new SolidColorBrush(Color.FromRgb(239, 83, 80));
                confirmEmail.Background = new SolidColorBrush(Color.FromRgb(239, 83, 80));
            }
            else
            {
                email.Background = Brushes.White;
                confirmEmail.Background = Brushes.White;
            }
        }

        private void confirmEmail_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (email.Text.ToString() != confirmEmail.Text.ToString())
            {
                email.Background = new SolidColorBrush(Color.FromRgb(239, 83, 80));
                confirmEmail.Background = new SolidColorBrush(Color.FromRgb(239, 83, 80));
            }
            else
            {
                email.Background = Brushes.White;
                confirmEmail.Background = Brushes.White;
            }
        }

        private void password_TextChanged(object sender, TextChangedEventArgs e)
        {
            if(password.Text.ToString() != confirmPassword.Text.ToString())
            {
                password.Background = new SolidColorBrush(Color.FromRgb(239, 83, 80));
                confirmPassword.Background = new SolidColorBrush(Color.FromRgb(239, 83, 80));
            }
            else
            {
                password.Background = Brushes.White;
                confirmPassword.Background = Brushes.White;
            }
        }

        private void confirmPassword_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (password.Text.ToString() != confirmPassword.Text.ToString())
            {
                password.Background = new SolidColorBrush(Color.FromRgb(239, 83, 80));
                confirmPassword.Background = new SolidColorBrush(Color.FromRgb(239, 83, 80));
            }
            else
            {
                password.Background = Brushes.White;
                confirmPassword.Background = Brushes.White;
            }
        }
    }
}
