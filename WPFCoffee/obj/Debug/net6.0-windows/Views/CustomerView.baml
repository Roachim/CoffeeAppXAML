   M S B A M L   `   `   `  ����D  @WPFCoffee, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:WPFCoffee.ViewsWPFCoffee.Views  5      "    WPFCoffee.Views.CustomerView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      /localclr-namespace:WPFCoffee.Views     5      .��5	      �   � ColumnDefinitions  5
   
   �� 5      $
��auto �6   �� 5      �� 5      $
��auto �6   .+�5   
   � -   5         �Name$ customerListGrid��5   !   ���#777 � RowDefinitions 5      �� 5      $
��auto �6    �� 5      $��* �6    .+�5      ��  �� Orientation$ 
Horizontal=�6   .+�5      �� -   5        $��10q�5      $��75��6%   .��5      �� $ 
Horizontal=�6!   .+�5      �� $��../Images/Add.png��6    $��18��6;   $��0 0 5 0q�5      �� 5      $	��Add��6$   5      5      �� 5      $��Delete��6   $��75��6*   $��
0 10 10 10q�65   �� 5      -   5        $��
0 10 10 10q�5      .��5       �� $��../Images/Move.png��6   $��18��68   5!      5"      �� 5#      -   5         ��Name$ customerListView��5#       �� DisplayMemberPath$ 	FirstName��5&      $��1��5'      $��
10 0 10 10q�6$   ��5$      ��  �� Path$ 	Customers� �� SelectedItem 5%      �� *SelectedCustomer+ �� Mode$ TwoWay=�5'   $   5(      �� 5+   
   $��10q�6   $��1��6!   .+�5,      �� .��6   
First Name6    �� 5-      ��6   �� *SelectedCustomer.FirstName+$ TwoWay=�	 �� UpdateSourceTrigger$	 PropertyChanged=��� 5/      .��6   	Last Name6   �� 50      ��6   �� *SelectedCustomer.LastName+$ TwoWay=�$	 PropertyChanged=��� 52      $��0 10 0 0q�6   
 d� 	IsChecked
 53      �� *SelectedCustomer.IsDeveloper+$ TwoWay=�$	 PropertyChanged=�.��54   D   IsDeveloper56      57      58      59      