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
using System.Windows.Navigation;
using System.Windows.Shapes;
using WPFCoffee.Data;
using WPFCoffee.ViewModel;

namespace WPFCoffee.Views
{
    /// <summary>
    /// Interaction logic for CustomerView.xaml
    /// </summary>
    public partial class CustomerView : UserControl
    {
        private CustomerViewModel _viewModel;
        public CustomerView()
        {
            InitializeComponent();
            _viewModel = new CustomerViewModel(new CustomerDataProvider());
            DataContext = _viewModel;
            Loaded += CustomersView_Loaded;
        }
        private async void CustomersView_Loaded(object sender, RoutedEventArgs e)
        {
            await _viewModel.LoadAsync();
        }
        private void ButtonMoveNavigation_Click(object sender, RoutedEventArgs e)
        {
            //var column = (int)customerListGrid.GetValue(Grid.ColumnProperty);
            ////short if-statement. if column == 0 return 2, otherwise return 0:
            //var newColumn = column == 0 ? 2 : 0;
            ////first give the property of which you want to change the value of, next give the value
            //customerListGrid.SetValue(Grid.ColumnProperty, newColumn);

            var column = Grid.GetColumn(customerListGrid);  //better way of getting the column value of a UI element
            var newColumn = column == 0 ? 2 : 0;

            Grid.SetColumn(customerListGrid, column);
            customerListGrid.SetValue(Grid.ColumnProperty, newColumn);
        }

        private void AddCustomer_Click(object sender, RoutedEventArgs e)
        {
            _viewModel.Add();
        }
    }
}
