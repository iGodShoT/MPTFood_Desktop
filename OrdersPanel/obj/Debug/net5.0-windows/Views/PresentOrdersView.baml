   M S B A M L   `   `   `  ����F  BOrdersPanel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:OrdersPanel.ViewModelsOrdersPanel.ViewModels  5      M+clr-namespace:OrdersPanel.Models.ItemModelsOrdersPanel.Models.ItemModels  5	      F BCalcBinding, Version=2.5.2.0, Culture=neutral, PublicKeyToken=null>.clr-namespace:CalcBinding;assembly=CalcBindingCalcBinding 5
      ?$clr-namespace:OrdersPanel.ConvertersOrdersPanel.Converters  5      %    OrdersPanel.Views.NowOrdersView   5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3b+http://schemas.microsoft.com/xaml/behaviors  5      5
viewModels$clr-namespace:OrdersPanel.ViewModels  5      _	 [MaterialDesignThemes.Wpf, Version=4.5.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes 	 5      <
itemModels+clr-namespace:OrdersPanel.Models.ItemModels 	 5	      @calcBinding.clr-namespace:CalcBinding;assembly=CalcBinding 	 5
      5
converters$clr-namespace:OrdersPanel.Converters 	 5      -   5          N�Name$
  This��5       N� Title$! Текущие заказы��5      $��Stretch=�6   $��Stretch=�6:   *  $Microsoft.Xaml.Behaviors.Interaction   Triggers 5      +  %Microsoft.Xaml.Behaviors.EventTrigger  5   
      	EventName$ Loaded��6   *  $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 5      2  ,Microsoft.Xaml.Behaviors.InvokeCommandAction     Command 6$   �� *LoadedCommand+5       � 	Resources 5      3   -OrdersPanel.Converters.PresentOrdersConverter   NowOrdersConverter��%   &	          5   
   6,   5       � DataContext 5      3   -OrdersPanel.ViewModels.PresentOrdersViewModel  5   
   .��5      � .+�5   
   �� $��0��6   $��Stretch=�6$   $��Stretch=�6@   $
��Auto=�5       $��Hidden=�6:   .��5!      �� $��4,0,0,0q�5$      ��5"      �� *Orders+ �� UpdateSourceTrigger$ PropertyChanged=�	 �� 	Converter#	 [  ��5#        CalcBinding.Binding  
   ElementName$

 This��   Path$ ActualWidth-15����5%      �� 5&       �� DataType$ itemModels:Order��6#   .R�5'      # 	 MaterialDesignThemes.Wpf.Card  $	��300��6.   $
��Auto��6:   $��20q�6H   $��3q�6T    � ContextMenu 5(      �� 5)   "   .@�5*   &   m� $��Статус��6/    m� Icon 6?   0	 	 *MaterialDesignThemes.Wpf.PackIconExtension	  *
ListStatus+.@�5+   *   m�  m� CommandParameter$ 1��5,   3   $��Создан��5-   3    m� IsCheckable$
 True��5.   3    m� Command 5+   3   �� *ChangeStatusCommand+��5/   .   �� 50   2    �� 
TargetType" m�68     MaterialDesignMenuItem �� BasedOn# [ 51   8   .�52   6   ��  �� Property �@m�	IsChecked �� Value$ False��6R    �� Triggers 53   6   �� 54   :    �� Binding 55   =   �� *Status+ �� Value 156   =   .a�57   >   ��  �@m�	IsChecked$
 True��6Z   58   ;   5:   3   5<   +   m� 5=   *   $ 2��5>   3   $��Подтверждён��5?   3   $
 True��5@   3    5=   3   �� *ChangeStatusCommand+��5A   .   �� 5B   2   " m�68   # [ 5C   8   .�5D   6   ��  �@m�	IsChecked$ False��6R    5E   6   �� 5F   :    5G   =   �� *Status+ 25H   =   .a�5I   >   ��  �@m�	IsChecked$
 True��6Z   5J   ;   5L   3   5N   +   m� 5O   *   $ 3��5P   3   $��Формируется��5Q   3   $
 True��5R   3    5O   3   �� *ChangeStatusCommand+��5S   .   �� 5T   2   " m�68   # [ 5U   8   .�5V   6   ��  �@m�	IsChecked$ False��6R    5W   6   �� 5X   :    5Y   =   �� *Status+ 35Z   =   .a�5[   >   ��  �@m�	IsChecked$
 True��6Z   5\   ;   5^   3   5`   +   m� 5a   *   $ 4��5b   3   $��
Готов��5c   3   $
 True��5d   3    5a   3   �� *ChangeStatusCommand+��5e   .   �� 5f   2   " m�68   # [ 5g   8   .�5h   6   ��  �@m�	IsChecked$ False��6R    5i   6   �� 5j   :    5k   =   �� *Status+ 45l   =   .a�5m   >   ��  �@m�	IsChecked$
 True��6Z   5n   ;   5p   3   5r   +   m� 5s   *   $ 5��5t   3   $��Завершен��5u   3   $
 True��5v   3    5s   3   �� *ChangeStatusCommand+��5w   .   �� 5x   2   " m�68   # [ 5y   8   .�5z   6   ��  �@m�	IsChecked$ False��6R    5{   6   �� 5|   :    5}   =   �� *Status+ 55~   =   .a�5   >   ��  �@m�	IsChecked$
 True��6Z   5�   ;   5�   3   5�   +   5�   '   5�   #   .��5�      �  � RowDefinitions 5�   "   �� 5�   &   $
��Auto �64   �� 5�   &   $��* �64    � ColumnDefinitions 5�   "   �� 5�   &   $
��Auto �67   �� 5�   &   $��* �67   �� 5�   &   $
��Auto �67   .+�5�   "   �� $��0��6,   $��0��69   $
��Bold"�5�   ,   $
��Left=�5�   ,    �� TextAlignment$
 Left=�5�   ,   ��5�   ,   �� *Id+5�   ,   �� 5�   "   $��0��6,   $��1��69   $
��Bold"�5�   ,   $��Stretch=�5�   ,   $ Center=�5�   ,   ��5�   ,   �� *Fio+5�   ,   �� 5�   "   $��0��6,   $��2��69   $
��Bold"�5�   ,   $��Right=�5�   ,   $ Right=�5�   ,   ��5�   ,   �� *Status+5�   ,   9� 5�   "   $��1��6+   $��0��68   $��3��6H   $��Stretch=�5�   +   $'��!Содержание заказа��5�   +   .��5�   &   &
   System.Windows.Controls.DataGrid
  $��Stretch=�5�   )   $��Stretch=�6E    
  AutoGenerateColumns$ False��5�   )    
  CanUserAddRows$ False��5�   )    
  CanUserDeleteRows$
 True��6@    
  CanUserSortColumns$
 True��6Y     
  CanUserReorderColumns$
  True��5�   )     MaterialDesignBody#���  5�   )     MaterialDesignDataGrid#���  5�   )   ! 
  HeadersVisibility$
! None=�5�   )   ��5�   )   �� *OrderContents+" 
  Columns" 5�   *   0  *System.Windows.Controls.DataGridTextColumn  5�   .   ,  &System.Windows.Controls.DataGridColumn#   Header$# Имя товара��6A   $   Width5  /System.Windows.Controls.DataGridLengthConverter$$ * 5�   A   %   
IsReadOnly$
% True��5�   A     MaterialDesignDataGridCell&   	CellStyle#& �  5�   A   1  +System.Windows.Controls.DataGridBoundColumn'   Binding' 5�   A   �� *ProductName+5�   A     5�   .   $# Количество��6A   $
% True��5�   A   #& �  5�   A   ' 5�   A   �� *
Quantity+5�   A   5�   '   5�   #   5�      5�      5�      ��5�      �� 5�      .R�5�      � 5�      5�      5�      5�      5�      