   M S B A M L   `   `   `  ����F  BOrdersPanel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:OrdersPanel.ViewModelsOrdersPanel.ViewModels  5      M+clr-namespace:OrdersPanel.Models.ItemModelsOrdersPanel.Models.ItemModels  5      =#clr-namespace:OrdersPanel.BehaviorsOrdersPanel.Behaviors  5
      U QSystem.Runtime, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a7,clr-namespace:System;assembly=System.RuntimeSystem 5      F BCalcBinding, Version=2.5.2.0, Culture=neutral, PublicKeyToken=null>.clr-namespace:CalcBinding;assembly=CalcBindingCalcBinding 5      %    OrdersPanel.Views.AllOrdersView   5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ;
viewModels$clr-namespace:OrdersPanel.ViewModels     5      B
itemModels+clr-namespace:OrdersPanel.Models.ItemModels     5      _	 [MaterialDesignThemes.Wpf, Version=4.5.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes 	 5      _
 [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3b+http://schemas.microsoft.com/xaml/behaviors 
 5	      3	behaviors#clr-namespace:OrdersPanel.Behaviors 
 5
      9System,clr-namespace:System;assembly=System.Runtime 
 5      @calcBinding.clr-namespace:CalcBinding;assembly=CalcBinding 
 5      -   5          N�Name$
  This��5       N� Title$ AllOrdersView��5      * 
 $Microsoft.Xaml.Behaviors.Interaction   Triggers 5      + 
 %Microsoft.Xaml.Behaviors.EventTrigger  5   
      	EventName$ Loaded��6   * 
 $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 5      2 
 ,Microsoft.Xaml.Behaviors.InvokeCommandAction     Command 6$   �� *LoadedCommand+5       � 	Resources 5         Statuses S� 
ObjectType  System.Enum S� 
MethodName	 S� MethodParameters
 M� TypeName��%x   &	        S� 5   
   "  6.   $ 	GetValues��6P   	 5      M� 5      $
 itemModels:Status��6   5      5       � DataContext 5      /   )OrdersPanel.ViewModels.AllOrdersViewModel  5    
   .��5#      �  � RowDefinitions 5$   
   �� 5%      $��* �6   �� 5&      $
��Auto �6   .+�5)   
   �� $��0��6   $��Stretch=�6$   $��Stretch=�6@   $
��Auto=�5*      $��Hidden=�6:   .��5+      &   System.Windows.Controls.DataGrid  $��Stretch=�5,      $��Stretch=�6-      AutoGenerateColumns$ False��5.         CanUserAddRows$ False��5/         CanUserDeleteRows$
 True��6(      CanUserSortColumns$
 True��6A      CanUserReorderColumns$
 True��6[     MaterialDesignDataGrid#��[ 52      $��4,0,0,0q�53      ��5-        CalcBinding.Binding     ElementName$
 This��   Path$ ActualWidth-15����50      �� *Orders+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� �� SelectedItem 51      �� *SelectedOrder+$ TwoWay=�$ PropertyChanged=�   	Behaviors 54      .	   (OrdersPanel.Behaviors.MouseWheelBehavior	  55         Columns 57      0
  *System.Windows.Controls.DataGridTextColumn
  58      ,  &System.Windows.Controls.DataGridColumn   Header$ Номер заказа��6)      
IsReadOnly$
 True��59   e   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6)   �� *Id+$ PropertyChanged=�6e   
  5:      $ Заказчик��6)   $
 True��5;   )    5:   ;   �� *Fio+$ PropertyChanged=�5;   )   4  .System.Windows.Controls.DataGridTemplateColumn  5<      -   5        OrdersColumn��$' !Содержание заказа��5<   C      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6^   $
 True��5=   -      CellTemplate 5>      �� 5?       �� DataType$ itemModels:Order��6+   .R�5@   "   9� $��Stretch=�5A   %   $'��!Содержание заказа��5B   %   .��5C   &     $��Stretch=�5D   )   $��Stretch=�6E   $ False��5E   )   $ False��5F   )   $
 True��6@   $
 True��6Y   $
 True��5G   )     MaterialDesignBody#���  5I   )   #���  5J   )      HeadersVisibility$
 None=�5K   )   ��5H   )   �� *OrderContents+ 5L   *   
  5M   .   $ Имя товара��6A   $ * 5O   A   $
 True��5P   A     MaterialDesignDataGridCell    	CellStyle#  �  5Q   A    5N   A   �� *ProductName+5Q   A   
  5R   .   $ Количество��6A   $
 True��5T   A   #  �  5U   A    5S   A   �� *
Quantity+5U   A   5W   '   5X   #   5Y      5[      4  .System.Windows.Controls.DataGridComboBoxColumn  5\      $ Статус��6-    " MaterialDesignOutlinedComboBox!   ElementStyle#! [ 5_   -   ) 	 #MaterialDesignThemes.Wpf.HintAssist"   Hint$" Статус:��5`   -   #   ItemsSource# 5]   -   �� $ �� Source#$ [  %   SelectedItemBinding% 5^   -   �� *Status+$ TwoWay=�$ PropertyChanged=�5`   -   5b      5c      �� 5e   
   $��1��6   $��Bottom=�5f      $��Right=�6,   $��7, 11, 7, 7q�5g      $��
7, 3, 7, 3q�6&    ) %MaterialDesignOutlinedSecondaryButton#��[ 5h      ��5i      �� *ExcelExportCommand+.��5j      � & � ColumnDefinitions& 5k      �� 5l      $��* �6'   �� 5m      $
��Auto �6'   .+�5o      �� $��0��6   ' �� TextAlignment$
' Left=�6,   $��Center=�6A   $��13(�5p      Экспорт5r      ' 	 !MaterialDesignThemes.Wpf.PackIcon  5s      $��1��6*   (   Kind$( TableExport=�6:   $��25��5t   *   $��25��65   $��10,0,0,0q�5u   *   5v      5w      5x      5y      