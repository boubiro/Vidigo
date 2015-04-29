using System;
using System.Collections.Generic;
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
    /// Interaction logic for showResults.xaml
    /// </summary>
    public partial class showResults : Window
    {
        public showResults()
        {
            InitializeComponent();
        }

        public showResults(string title, string releaseDate, string genre, string actors, string length, string description, string prices, string subscriable)
        {
            InitializeComponent();
            results.Content = title+"/n"+releaseDate+"/n"+genre+"/n"+actors+"/n"+length+"/n"+description+"/n"+prices+"/n"+subscriable;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.Hide();
            searchPage searchPage = new searchPage();
            searchPage.Show();
        }
    }
}
