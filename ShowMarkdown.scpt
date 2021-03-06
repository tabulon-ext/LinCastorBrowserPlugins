FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
	WARNING: save this script to your Scripts folder
	for example /Users/fred/Library/Application Scripts/com.onflapp.LinCastor-Browser/MyScript.scpt

	the 'args' dictionary contains following variables:
	URL          => my-http://myhost.domain.com:8080/mysite/a.html?search=blah#myanchor
	URL_SCHEME   => my-http
	URL_HOST     => myhost.domain.com
	URL_PORT     => 8080
	URL_PATH     => /mysite/a.html
	URL_PATH_EXT  => html
    	URL_PATH_NAME => a.html
	URL_QUERY    => ?search=blah
	URL_FRAGMENT => #myanchor
	URL_VALUE    => everything that comes after the 'scheme:'
	URL_B64VALUE => the same as URL_VALUE but decoded using based64

	TEXT => the selected text used for a lookup
	ENCODED_TEXT => the selected text encoded using url encoding

	the url query parameters are parsed in following way:
	?search=blah&flag=2 would become
	
	URL_QUERY_SEARCH => blah
	URL_QUERY_FLAG => 2
	
	note the upper case of parameter's name

    ---

	returning 1 indicates the handler has finished successfully
     � 	 	� 
 	 W A R N I N G :   s a v e   t h i s   s c r i p t   t o   y o u r   S c r i p t s   f o l d e r 
 	 f o r   e x a m p l e   / U s e r s / f r e d / L i b r a r y / A p p l i c a t i o n   S c r i p t s / c o m . o n f l a p p . L i n C a s t o r - B r o w s e r / M y S c r i p t . s c p t 
 
 	 t h e   ' a r g s '   d i c t i o n a r y   c o n t a i n s   f o l l o w i n g   v a r i a b l e s : 
 	 U R L                     = >   m y - h t t p : / / m y h o s t . d o m a i n . c o m : 8 0 8 0 / m y s i t e / a . h t m l ? s e a r c h = b l a h # m y a n c h o r 
 	 U R L _ S C H E M E       = >   m y - h t t p 
 	 U R L _ H O S T           = >   m y h o s t . d o m a i n . c o m 
 	 U R L _ P O R T           = >   8 0 8 0 
 	 U R L _ P A T H           = >   / m y s i t e / a . h t m l 
 	 U R L _ P A T H _ E X T     = >   h t m l 
         	 U R L _ P A T H _ N A M E   = >   a . h t m l 
 	 U R L _ Q U E R Y         = >   ? s e a r c h = b l a h 
 	 U R L _ F R A G M E N T   = >   # m y a n c h o r 
 	 U R L _ V A L U E         = >   e v e r y t h i n g   t h a t   c o m e s   a f t e r   t h e   ' s c h e m e : ' 
 	 U R L _ B 6 4 V A L U E   = >   t h e   s a m e   a s   U R L _ V A L U E   b u t   d e c o d e d   u s i n g   b a s e d 6 4 
 
 	 T E X T   = >   t h e   s e l e c t e d   t e x t   u s e d   f o r   a   l o o k u p 
 	 E N C O D E D _ T E X T   = >   t h e   s e l e c t e d   t e x t   e n c o d e d   u s i n g   u r l   e n c o d i n g 
 
 	 t h e   u r l   q u e r y   p a r a m e t e r s   a r e   p a r s e d   i n   f o l l o w i n g   w a y : 
 	 ? s e a r c h = b l a h & f l a g = 2   w o u l d   b e c o m e 
 	 
 	 U R L _ Q U E R Y _ S E A R C H   = >   b l a h 
 	 U R L _ Q U E R Y _ F L A G   = >   2 
 	 
 	 n o t e   t h e   u p p e r   c a s e   o f   p a r a m e t e r ' s   n a m e 
 
         - - - 
 
 	 r e t u r n i n g   1   i n d i c a t e s   t h e   h a n d l e r   h a s   f i n i s h e d   s u c c e s s f u l l y 
   
  
 l     ��������  ��  ��        i         I      �� ���� 0 write_to_file        o      ���� 0 target_file        o      ���� 0 	this_data     ��  o      ���� 0 append_data  ��  ��    Q     V     k    7       r        l    ����  o    ���� 0 target_file  ��  ��    l      ����  o      ���� 0 target_file  ��  ��       !   r     " # " I   �� $ %
�� .rdwropenshor       file $ o    ���� 0 target_file   % �� &��
�� 
perm & m   	 
��
�� boovtrue��   # l      '���� ' o      ���� 0 open_target_file  ��  ��   !  ( ) ( Z   " * +���� * =    , - , o    ���� 0 append_data   - m    ��
�� boovfals + I   �� . /
�� .rdwrseofnull���     **** . l    0���� 0 o    ���� 0 open_target_file  ��  ��   / �� 1��
�� 
set2 1 m    ����  ��  ��  ��   )  2 3 2 l  # #��������  ��  ��   3  4 5 4 I  # .�� 6 7
�� .rdwrwritnull���     **** 6 o   # $���� 0 	this_data   7 �� 8 9
�� 
refn 8 l  % & :���� : o   % &���� 0 open_target_file  ��  ��   9 �� ; <
�� 
wrat ; m   ' (��
�� rdwreof  < �� =��
�� 
as   = m   ) *��
�� 
utf8��   5  > ? > I  / 4�� @��
�� .rdwrclosnull���     **** @ l  / 0 A���� A o   / 0���� 0 open_target_file  ��  ��  ��   ?  B C B l  5 5��������  ��  ��   C  D�� D L   5 7 E E m   5 6��
�� boovtrue��    R      ������
�� .ascrerr ****      � ****��  ��    k   ? V F F  G H G Q   ? S I J�� I I  B J�� K��
�� .rdwrclosnull���     **** K 4   B F�� L
�� 
file L o   D E���� 0 target_file  ��   J R      ������
�� .ascrerr ****      � ****��  ��  ��   H  M�� M L   T V N N m   T U��
�� boovfals��     O P O l     ��������  ��  ��   P  Q R Q i     S T S I      �� U���� 0 make_cache_filename   U  V�� V o      ���� 0 nm  ��  ��   T O      W X W L     Y Y b     Z [ Z b     \ ] \ l   	 ^���� ^ n    	 _ ` _ 1    	��
�� 
posx ` 1    ��
�� 
cusr��  ��   ] m   	 
 a a � b b � / L i b r a r y / C o n t a i n e r s / c o m . o n f l a p p . L i n C a s t o r - B r o w s e r / D a t a / L i b r a r y / C a c h e s / [ o    ���� 0 nm   X m      c c�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   R  d e d l     ��������  ��  ��   e  f g f i     h i h I      �� j���� 0 
handle_url   j  k�� k o      ���� 0 args  ��  ��   i k     a l l  m n m r     	 o p o 4     �� q
�� 
psxf q l    r���� r n     s t s o    ���� 0 URL_PATH   t o    ���� 0 args  ��  ��   p o      ���� 0 fl   n  u v u l  
 
��������  ��  ��   v  w x w O   
 & y z y k    % { {  | } | I   ���� ~
�� .TSxxprflnull��� ��� null��   ~ ��  �
�� 
ifll  o    ���� 0 fl   � �� ���
�� 
srct � m     � � � � �  M a r k d o w n��   }  ��� � r    % � � � b    # � � � b    ! � � � m     � � � � � � < ! D O C T Y P E   h t m l > 
 < h t m l   l a n g = " e n " > 
 < h e a d > 
     < m e t a   c h a r s e t = " u t f - 8 " > 
     < t i t l e > M D K   P r e v i e w < / t i t l e > 
 < / h e a d > 
 < b o d y > � l     ����� � I    ���� �
�� .TSxxcprenull��� ��� null��   � �� ���
�� 
dtnm � m     � � � � �  C o p y   H T M L��  ��  ��   � m   ! " � � � � �  < / b o d y > < / h t m l > � o      ���� 0 	html_code  ��   z m   
  � �D                                                                                      @ alis    �  Macintosh HD                   BD ����TextSer.app                                                    ����            ����  
 cu             Debug   {/:Users:oflorian:Library:Developer:Xcode:DerivedData:TextSer-asetaczforenssbiaauoawalclsm:Build:Products:Debug:TextSer.app/     T e x t S e r . a p p    M a c i n t o s h   H D  xUsers/oflorian/Library/Developer/Xcode/DerivedData/TextSer-asetaczforenssbiaauoawalclsm/Build/Products/Debug/TextSer.app  /    ��   x  � � � l  ' '��������  ��  ��   �  � � � r   ' / � � � n   ' - � � � I   ( -�� ����� 0 make_cache_filename   �  ��� � m   ( ) � � � � �  x . h t m l��  ��   �  f   ' ( � o      ���� 0 oo   �  � � � I   0 8�� ����� 0 write_to_file   �  � � � o   1 2���� 0 oo   �  � � � o   2 3���� 0 	html_code   �  ��� � m   3 4��
�� boovfals��  ��   �  � � � l  9 9��~�}�  �~  �}   �  � � � O   9 ^ � � � k   ? ] � �  � � � r   ? R � � � I  ? P�|�{ �
�| .LCxxldwpnull��� ��� null�{   � �z � �
�z 
murl � m   C F � � � � � 6 l c - i n t e r n a l - c a c h e : / / / x . h t m l � �y ��x
�y 
munm � m   I L � � � � �  m k d - p r e v i e w�x   � o      �w�w 0 p   �  ��v � O  S ] � � � I  W \�u�t�s
�u .LCxxactenull���     webp�t  �s   � o   S T�r�r 0 p  �v   � m   9 < � �~                                                                                      @ alis       Macintosh HD                   BD ����LinCastor Browser.app                                          ����            ����  
 cu             Debug   �/:Users:oflorian:Library:Developer:Xcode:DerivedData:LinCastorBrowser-etbpmuvbyeeqlgeungfruuzzwkzo:Build:Products:Debug:LinCastor Browser.app/  ,  L i n C a s t o r   B r o w s e r . a p p    M a c i n t o s h   H D  �Users/oflorian/Library/Developer/Xcode/DerivedData/LinCastorBrowser-etbpmuvbyeeqlgeungfruuzzwkzo/Build/Products/Debug/LinCastor Browser.app   /    ��   �  � � � l  _ _�q�p�o�q  �p  �o   �  ��n � L   _ a � � m   _ `�m�m �n   g  ��l � l     �k�j�i�k  �j  �i  �l       �h � � � ��h   � �g�f�e�g 0 write_to_file  �f 0 make_cache_filename  �e 0 
handle_url   � �d �c�b � ��a�d 0 write_to_file  �c �` ��`  �  �_�^�]�_ 0 target_file  �^ 0 	this_data  �] 0 append_data  �b   � �\�[�Z�Y�\ 0 target_file  �[ 0 	this_data  �Z 0 append_data  �Y 0 open_target_file   � �X�W�V�U�T�S�R�Q�P�O�N�M�L�K�J
�X 
perm
�W .rdwropenshor       file
�V 
set2
�U .rdwrseofnull���     ****
�T 
refn
�S 
wrat
�R rdwreof 
�Q 
as  
�P 
utf8�O 
�N .rdwrwritnull���     ****
�M .rdwrclosnull���     ****�L  �K  
�J 
file�a W 9�E�O��el E�O�f  ��jl Y hO������� 
O�j OeW X   *�/j W X  hOf � �I T�H�G � ��F�I 0 make_cache_filename  �H �E ��E  �  �D�D 0 nm  �G   � �C�C 0 nm   �  c�B�A a
�B 
cusr
�A 
posx�F � *�,�,�%�%U � �@ i�?�> � ��=�@ 0 
handle_url  �? �< ��<  �  �;�; 0 args  �>   � �:�9�8�7�6�: 0 args  �9 0 fl  �8 0 	html_code  �7 0 oo  �6 0 p   � �5�4 ��3�2 ��1�0 ��/ ��. � ��-�, ��+ ��* ��)�(
�5 
psxf�4 0 URL_PATH  
�3 
ifll
�2 
srct�1 
�0 .TSxxprflnull��� ��� null
�/ 
dtnm
�. .TSxxcprenull��� ��� null�- 0 make_cache_filename  �, 0 write_to_file  
�+ 
murl
�* 
munm
�) .LCxxldwpnull��� ��� null
�( .LCxxactenull���     webp�= b*��,E/E�O� *���� O�*��l %�%E�UO)�k+ E�O*��fm+ Oa   *a a a a � E�O� *j UUOkascr  ��ޭ