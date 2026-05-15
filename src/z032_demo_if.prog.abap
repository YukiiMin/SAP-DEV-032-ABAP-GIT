*&---------------------------------------------------------------------*
*& Report Z032_DEMO_IF
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z032_demo_if.
DATA gv_gpa TYPE p DECIMALS 2 VALUE '7.8'.

"DATA gv_yob TYPE i VALUE IS INITIAL."

DATA gv_yob TYPE i VALUE 2000.

CLEAR gv_yob. "BIẾN TRỞ THÀNH MANG INITIAL"

*======== KHAI BÁO INLINE DÙNG DATA() ===============
DATA(gv_name) = 'AN NGUYỄN'.
WRITE / |NAME: { gv_name }|.

WRITE  AT 80 gv_name. "In nhảy hàng ở cột thứ 80 (màn hình in ra mặc định của Programing Execulte là 80x25"




IF gv_yob IS INITIAL.
  WRITE / 'Yob is empty. Please input or assign' .
ELSE.

  WRITE / |Yob: { gv_yob } |. "điền vào chỗ trống"
ENDIF.

IF gv_gpa >= 8.
  WRITE / 'RANK GOOD+'.
ELSEIF
   gv_gpa >= 7.
  WRITE / 'Fair'.
ELSE.
  WRITE / 'AGV or poor!'.
ENDIF.
