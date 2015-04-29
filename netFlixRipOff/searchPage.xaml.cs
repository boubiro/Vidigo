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
    /// Interaction logic for searchPage.xaml
    /// </summary>
    public partial class searchPage : Window
    {
        public searchPage()
        {
            InitializeComponent();
        }

        private void searchBox_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            this.searchBox.FontWeight = FontWeights.Normal;
            this.searchBox.Text = "";
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            string title, releaseDate, genre, actors, length, description, prices, subscriable;
            using (SqlConnection connection = new SqlConnection("Data Source=localhost:1521:xe;Initial Catalog=vidigo;User ID=SYSTEM;Password=school10;"))
            using (SqlCommand searchMovies = new SqlCommand("Select TITLE, RELEASEDATE, GENRE, ACTORS, LENGTH, DESCRIPTION, PRICES, SUBSCRIABLE FROM VIGIMOVIE WHERE TITLE LIKE '%"+searchBox.Text.ToString()+"%;'", connection))
            {
                connection.Open();
                using(SqlDataReader reader = searchMovies.ExecuteReader())
                {
                    if(reader.HasRows)
                    {
                        title = reader.GetString(reader.GetOrdinal("TITLE"));
                        releaseDate = reader.GetString(reader.GetOrdinal("RELEASEDATE"));
                        genre = reader.GetString(reader.GetOrdinal("GENRE"));
                        actors = reader.GetString(reader.GetOrdinal("ACTORS"));
                        length = reader.GetString(reader.GetOrdinal("LENGTH"));
                        description = reader.GetString(reader.GetOrdinal("DESCRIPTION"));
                        prices = reader.GetString(reader.GetOrdinal("PRICES"));
                        subscriable = reader.GetString(reader.GetOrdinal("SUBSCRIABLE"));
                    }
                    connection.Close();
                }
            }
        }
    }
}
