   M S B A M L   `   `   `  ����D  @WPFCoffee, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:WPFCoffee	WPFCoffee  5   	   7 clr-namespace:WPFCoffee.ControlsWPFCoffee.Controls  6/   1clr-namespace:WPFCoffee.ViewsWPFCoffee.Views  6a       WPFCoffee.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:WPFCoffee     5   	   5controls clr-namespace:WPFCoffee.Controls     6/   /viewsclr-namespace:WPFCoffee.Views     6a     � Title$  
MainWindow��5   	   $	��450��5
   	   $	��800��6   $��20(�6"   .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      �� 5      $
��auto �6   .+�5   
   o� $��20(�6   .@�5      m� $��_View��6   .@�5      m� $��	_Customer��6   m� 5      $��	_Products��6   5      5      &    WPFCoffee.Controls.HeaderControl  5   
   $��1��6!   "   WPFCoffee.Views.CustomerView  5!   
   $��2��6   �� 5'   
   $��3��6   .@�5(      �� $��20(�6   $��(c) Yup, It's Coffee��6*   5)      53      54      