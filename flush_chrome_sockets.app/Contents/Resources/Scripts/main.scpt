FasdUAS 1.101.10   ��   ��    k             l     ��  ��     !/usr/bin/osascript     � 	 	 & ! / u s r / b i n / o s a s c r i p t   
  
 l     ��������  ��  ��        l     ��  ��    � �This script is to resolve the problem that Chrome can't use the correct hosts after modifying hosts file  because of  Chrome using socket pools.     �    T h i s   s c r i p t   i s   t o   r e s o l v e   t h e   p r o b l e m   t h a t   C h r o m e   c a n ' t   u s e   t h e   c o r r e c t   h o s t s   a f t e r   m o d i f y i n g   h o s t s   f i l e     b e c a u s e   o f     C h r o m e   u s i n g   s o c k e t   p o o l s .      l     ��  ��     yThis script just simulates the click event on the button of "Flush socket pool"  on chrome://net-internals/#sockets page.     �   � T h i s   s c r i p t   j u s t   s i m u l a t e s   t h e   c l i c k   e v e n t   o n   t h e   b u t t o n   o f   " F l u s h   s o c k e t   p o o l "     o n   c h r o m e : / / n e t - i n t e r n a l s / # s o c k e t s   p a g e .      l     ��  ��    ' !created by Boreas320 on 2015-3-28     �   B c r e a t e d   b y   B o r e a s 3 2 0   o n   2 0 1 5 - 3 - 2 8      l    f ����  O     f    O    e   !   k    d " "  # $ # l   ��������  ��  ��   $  % & % l   �� ' (��   ' . (record current active tab and its index.    ( � ) ) P r e c o r d   c u r r e n t   a c t i v e   t a b   a n d   i t s   i n d e x . &  * + * r     , - , 1    ��
�� 
acTa - o      ���� 0 origtab origTab +  . / . r     0 1 0 1    ��
�� 
acTI 1 o      ���� 0 origtabindex origTabIndex /  2 3 2 l   ��������  ��  ��   3  4 5 4 l   �� 6 7��   6  open Chrome sockets page.    7 � 8 8 2 o p e n   C h r o m e   s o c k e t s   p a g e . 5  9 : 9 r    % ; < ; I   #���� =
�� .corecrel****      � null��   = �� > ?
�� 
kocl > m    ��
�� 
CrTb ? �� @��
�� 
prdt @ K     A A �� B��
�� 
URL  B m     C C � D D > c h r o m e : / / n e t - i n t e r n a l s / # s o c k e t s��  ��   < o      ���� 0 thetab theTab :  E F E l  & &��������  ��  ��   F  G H G l  & &�� I J��   I ' !waiting for loading html document    J � K K B w a i t i n g   f o r   l o a d i n g   h t m l   d o c u m e n t H  L M L r   & , N O N H   & * P P n   & ) Q R Q 1   ' )��
�� 
ldng R o   & '���� 0 thetab theTab O o      ���� 0 
isloaddone 
isLoadDone M  S T S W   - > U V U r   3 9 W X W H   3 7 Y Y n   3 6 Z [ Z 1   4 6��
�� 
ldng [ o   3 4���� 0 thetab theTab X o      ���� 0 
isloaddone 
isLoadDone V o   1 2���� 0 
isloaddone 
isLoadDone T  \ ] \ l  ? ?��������  ��  ��   ]  ^ _ ^ l  ? ?��������  ��  ��   _  ` a ` l  ? ?�� b c��   b � ~Chrome has to spend some time to execute init javascript,or the javascript statements in the below execute commond won't work.    c � d d � C h r o m e   h a s   t o   s p e n d   s o m e   t i m e   t o   e x e c u t e   i n i t   j a v a s c r i p t , o r   t h e   j a v a s c r i p t   s t a t e m e n t s   i n   t h e   b e l o w   e x e c u t e   c o m m o n d   w o n ' t   w o r k . a  e f e l  ? ?�� g h��   g G AHow long you should delay depends on the performance of your mac.    h � i i � H o w   l o n g   y o u   s h o u l d   d e l a y   d e p e n d s   o n   t h e   p e r f o r m a n c e   o f   y o u r   m a c . f  j k j I  ? D�� l��
�� .sysodelanull��� ��� nmbr l m   ? @���� ��   k  m n m l  E E��������  ��  ��   n  o p o l  E E�� q r��   q  flush Chrome sockets    r � s s ( f l u s h   C h r o m e   s o c k e t s p  t u t l  E E�� v w��   v f `you can find below javascript statements in Chrome's net-internal index.js on line 9860 and 9861    w � x x � y o u   c a n   f i n d   b e l o w   j a v a s c r i p t   s t a t e m e n t s   i n   C h r o m e ' s   n e t - i n t e r n a l   i n d e x . j s   o n   l i n e   9 8 6 0   a n d   9 8 6 1 u  y z y I  E P�� { |
�� .CrSuExJanull���     obj  { o   E F���� 0 thetab theTab | �� }��
�� 
JvSc } m   I L ~ ~ �   � g _ b r o w s e r . s e n d F l u s h S o c k e t P o o l s ( ) ; g _ b r o w s e r . c h e c k F o r U p d a t e d I n f o ( f a l s e ) ;��   z  � � � l  Q Q��������  ��  ��   �  � � � l  Q Q�� � ���   �  close Chrome sockets page    � � � � 2 c l o s e   C h r o m e   s o c k e t s   p a g e �  � � � I  Q V�� ���
�� .coreclosnull���     obj  � o   Q R���� 0 thetab theTab��   �  � � � l  W W��������  ��  ��   �  � � � l  W W�� � ���   �  reactive the previous tab    � � � � 2 r e a c t i v e   t h e   p r e v i o u s   t a b �  � � � r   W \ � � � o   W X���� 0 origtabindex origTabIndex � 1   X [��
�� 
acTI �  � � � l  ] ]��������  ��  ��   �  � � � l  ] ]�� � ���   �  reload the previous tab    � � � � . r e l o a d   t h e   p r e v i o u s   t a b �  � � � I  ] b�� ���
�� .CrSuRlodnull���     obj  � o   ] ^���� 0 origtab origTab��   �  ��� � l  c c��������  ��  ��  ��   ! 4   �� �
�� 
cwin � m    ����   m      � ��                                                                                  rimZ  alis    h  Macintosh HD               ϔ)�H+   y�Google Chrome.app                                               	� ϵʒ        ����  	                Applications    ϓ�;      ϵZ     y�  ,Macintosh HD:Applications: Google Chrome.app  $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  Applications/Google Chrome.app  / ��  ��  ��     � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  ��� � l     ��������  ��  ��  ��       
�� � � ��� �����������   � ����������������
�� .aevtoappnull  �   � ****�� 0 origtab origTab�� 0 origtabindex origTabIndex�� 0 thetab theTab�� 0 
isloaddone 
isLoadDone��  ��  ��   � �� ����� � ���
�� .aevtoappnull  �   � **** � k     f � �  ����  ��  ��   �   �  ������������������� C������~�}�|�{ ~�z�y�x
�� 
cwin
�� 
acTa�� 0 origtab origTab
�� 
acTI�� 0 origtabindex origTabIndex
�� 
kocl
�� 
CrTb
�� 
prdt
�� 
URL �� 
�� .corecrel****      � null� 0 thetab theTab
�~ 
ldng�} 0 
isloaddone 
isLoadDone
�| .sysodelanull��� ��� nmbr
�{ 
JvSc
�z .CrSuExJanull���     obj 
�y .coreclosnull���     obj 
�x .CrSuRlodnull���     obj �� g� c*�k/ [*�,E�O*�,E�O*�����l� E�O��,E�O h���,E�[OY��Okj O�a a l O�j O�*�,FO�j OPUU �  � �  ��w�v�u �  ��t�s�r
�t 
cwin�s 
�r kfrmID  
�w 
CrTb�v�
�u kfrmID  ��  �  � �  ��q�p�o �  ��n�m�l
�n 
cwin�m 
�l kfrmID  
�q 
CrTb�p�
�o kfrmID  
�� boovtrue��  ��  ��   ascr  ��ޭ