   M S B A M L   `   `   `  ����I  EComPortDraft01, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:ComPortDraft01ComPortDraft01  5   	       ComPortDraft01.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:ComPortDraft01     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      �  � RowDefinitions 5
   
   �� 5      $��50 �6   �� 5      $��* �6   �� 5      $	��100 �6    � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��0��6!   $��Available Ports��61   $��Bottom=�6H   $��Center=�6c   �� 5   
   $��0��6   $��2��6!   $��Added Ports��61   $��Bottom=�6D   $��Center=�6_   � 5   
   $��2��6   $��0��6    5      �� 5      $��25 �6    �� 5      $��* �6    .+�5      �� $��0��6   $��Virtual Ports��6%   $��Bottom=�6:   $��Center=�6U   �� 5      -   5         ��Name$ VirtualPort1ComboBox��5   V   $��1��6   $��20��6$   $	��Top=�60   $
��0,10q�6H   6V   �� 5      -   5        $ VirtualPort2ComboBox��5   Y   $��1��6   $��20��6$   $��Bottom=�60   $
��0,10q�6K   6Y   5      �� 5!   
   -   5         ��Name$ AvailablePortsListBox��5!   Z   $��1��6   $��0��6   
���W�.�$��3q�6F   6Z   �� 5"   
   -   5        $ AddedPortsListBox��5"   ]   $��1��6   $��2��6   
���� �$��3q�6I   6]   �� 5$   
   $��0��6   $��2��6   $��20��6.   $��20��69   $	��Top=�6E   $��Right=�6]   $��?��6y   
����ح�6�   �� 5%   
   -   5        $��1��5%      $��1��6   $��60��6.   $��30��69   $	��Top=�6E   $
��0,90q�6]   $	��ADD��6k   
�������6�   �� 5&   
   -   5        $��1��5&      $��1��6   $��60��6.   $��30��69   $��Bottom=�6E   $
��0,90q�6`   $��REMOVE��6n   
�����w�6�   �� 5'   
   $��2��6   $��1��6   $��
DISCONNECT��6.   
����p��6C   �� 5(   
   -   5        $��2��5(      $��2��6   $��CONNECT��6.   
���q�<�6\   5*      5+      