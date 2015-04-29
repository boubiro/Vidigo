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
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace netFlixRipOff
{
    /// <summary>
    /// Interaction logic for closedSearched.xaml
    /// </summary>
    public partial class closedSearched : UserControl
    {
        public closedSearched()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.showSearchBox.Content = new showSearch();
        }

        private void searchBox_KeyDown(object sender, KeyEventArgs e)
        {

        }

    }
}
