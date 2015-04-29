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
    /// Interaction logic for billingWindow.xaml
    /// </summary>
    public partial class billingWindow : Window
    {
        string inputUserName;
        string inputPassord;

        public billingWindow(string username, string password)
        {
            InitializeComponent();
            inputUserName = username;
            inputPassord = password;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Boolean cardCanInsert = false;
            using (SqlConnection connection = new SqlConnection("Data Source=localhost;Initial Catalog=vidigo;User ID=SYSTEM;Password=school10;"))
            using (SqlCommand checkCardNumber = new SqlCommand("Select CARDNUMBER FROM VIGIBILLING WHERE " + cardNumber.Text.ToString() + "=CARDNUMBER", connection))
            {
                connection.Open();
                using (SqlDataReader reader = checkCardNumber.ExecuteReader())
                {
                    if (!reader.HasRows)
                    {
                        connection.Close();
                        cardCanInsert = true;
                    }

                    else
                    {
                        signInError();
                        connection.Close();
                        cardCanInsert = false;
                    }

                }
            }

            if(cardCanInsert)
            {
                Boolean customerIDOkay = false;
                int customerID = 0;
                
                while(!customerIDOkay)
                {
                using (SqlConnection connection = new SqlConnection("Data Source=localhost;Initial Catalog=vidigo;User ID=SYSTEM;Password=school10;"))
                using (SqlCommand insertBilling = new SqlCommand("Select CUSTOMERID FROM VIGIBILLING WHERE CID"+customerID, connection))
                {
                    connection.Open();
                    using(SqlDataReader reader = insertBilling.ExecuteReader())
                    if(!reader.HasRows)
                    {
                        customerID++;
                    }
                    else{
                        customerIDOkay = true;
                    }
                    connection.Close();
                }
            }

                using (SqlConnection connection = new SqlConnection("Data Source=localhost;Initial Catalog=vidigo;User ID=SYSTEM;Password=school10;"))
                using (SqlCommand insertBilling = new SqlCommand("INSERT INTO VIGIBILLING VALUES ("+cardNumber.Text.ToString()+","+cardType.Text.ToString()+","+experationDate.Text.ToString()+","+cvn.Text.ToString()+","+nameOnCard.Text.ToString()+","+address.Text.ToString()+",CID"+customerID, connection))
                {
                    connection.Open();
                    insertBilling.ExecuteNonQuery();
                    connection.Close();
                    MainWindow mainWindow = new MainWindow();
                    mainWindow.Show();
                    this.Hide();
                }

            }
            else{
                System.Windows.Forms.MessageBox.Show("Card Number in already in our database try again.");
            }
        }

        private void cardNumber_TextChanged(object sender, TextChangedEventArgs e)
        {
            if(int.Parse(cardNumber.Text) != 12)
            {
                cardNumber.Background = new SolidColorBrush(Color.FromRgb(239, 83, 80));
            }
            else
            {
                cardNumber.Background = Brushes.White;
            }
        }

        private void signInError()
        {
            System.Windows.Forms.MessageBox.Show("You either entered a blank entry or entered a non registered user try again or signup.");
        }

        private void experationDate_TextChanged_1(object sender, TextChangedEventArgs e)
        {
            if(experationDate.Text.Length != 6)
            {
                experationDate.Background = new SolidColorBrush(Color.FromRgb(239, 83, 80));
            }
            else
            {
                experationDate.Background = Brushes.White;
            }
        }

        private void nameOnCard_TextChanged(object sender, TextChangedEventArgs e)
        {
            if(nameOnCard.Text.Length > 40)
            {
                nameOnCard.Background = new SolidColorBrush(Color.FromRgb(239, 83, 80));
            }
            else
            {
                nameOnCard.Background = Brushes.White;
            }
        }

        private void cvn_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (cvn.Text.Length != 3)
            {
                cvn.Background = new SolidColorBrush(Color.FromRgb(239, 83, 80));
            }
            else
            {
                cvn.Background = Brushes.White;
            }
        }

        private void address_TextChanged(object sender, TextChangedEventArgs e)
        {
            if(address.Text.Length > 75)
            {
                address.Background = new SolidColorBrush(Color.FromRgb(239, 83, 80));
            }
            else
            {
                address.Background = Brushes.White;
            }
        }


    }
}
