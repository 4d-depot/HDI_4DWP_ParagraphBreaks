C_LONGINT:C283($page)
C_BOOLEAN:C305($result)

Case of 
	: (Form event code:C388=On Load:K2:1)
		
		Form:C1466.trace:=False:C215
		
		OBJECT SET VISIBLE:C603(*;"btnTrace";False:C215)
		OBJECT SET VISIBLE:C603(*;"btnHtml";False:C215)
		OBJECT SET VISIBLE:C603(*;"rb@";False:C215)
		OBJECT SET VISIBLE:C603(*;"gb@";False:C215)
		OBJECT SET VISIBLE:C603(*;"cb@";False:C215)
		OBJECT SET VISIBLE:C603(*;"WParea";False:C215)
		
		Form:C1466.displayExpressions:=1
		Form:C1466.displayValues:=0
		
		OBJECT SET ENABLED:C1123(*;"rb3";False:C215)
		OBJECT SET ENABLED:C1123(*;"rb4";False:C215)
		
		
		WP SET VIEW PROPERTIES:C1648(*;"WParea";New object:C1471(wk visible references:K81:286;(Form:C1466.displayExpressions=1)))
		
		Form:C1466.useParagraphBreaks:=1
		Form:C1466.useLineBreaks:=0
		Form:C1466.displayInvisibleChars:=True:C214
		
		vName:="Alex Smith"
		vAddress:="12, rue de la paix"+Char:C90(13)+"75008 Paris"+Char:C90(13)+"France"
		vPhones:="01 40 41 42 43"+Char:C90(13)+"06 07 08 09 10'"
		
		vExpression:=""
		vExpression:=vExpression+"Aliquam imperdiet odio quis vehicula"+Char:C90(13)
		vExpression:=vExpression+"Proin convallis sapien in ullamcorper varius LF."+Char:C90(10)
		vExpression:=vExpression+"Ut ac feugiat risus."+Char:C90(13)
		vExpression:=vExpression+"Nam tincidunt sapien ut diam."+Char:C90(13)
		vExpression:=vExpression+"Pellentesque enim lectus."
		
	: (Form event code:C388=On Page Change:K2:54)
		
		$page:=FORM Get current page:C276
		
		If ($page=1)
			OBJECT SET VISIBLE:C603(*;"btnTrace";False:C215)
			OBJECT SET VISIBLE:C603(*;"btnHtml";False:C215)
			OBJECT SET VISIBLE:C603(*;"rb@";False:C215)
			OBJECT SET VISIBLE:C603(*;"gb@";False:C215)
			OBJECT SET VISIBLE:C603(*;"cb@";False:C215)
			OBJECT SET VISIBLE:C603(*;"WParea";False:C215)
		Else 
			OBJECT SET VISIBLE:C603(*;"btnTrace";True:C214)
			OBJECT SET VISIBLE:C603(*;"btnHtml";True:C214)
			OBJECT SET VISIBLE:C603(*;"rb@";True:C214)
			OBJECT SET VISIBLE:C603(*;"gb@";True:C214)
			OBJECT SET VISIBLE:C603(*;"cb@";True:C214)
			OBJECT SET VISIBLE:C603(*;"WParea";True:C214)
		End if 
		
		If ($page>1)
			QUERY:C277([SAMPLES:3];[SAMPLES:3]page:3=$page)
			
			WParea:=WP New:C1317([SAMPLES:3]wp:2)
			
			
			WP GET ATTRIBUTES:C1345(WParea;"breakParagraphsInFormulas";$result)
			
			If ($result)
				Form:C1466.useParagraphBreaks:=True:C214
				Form:C1466.useLineBreaks:=False:C215
			Else 
				Form:C1466.useParagraphBreaks:=False:C215
				Form:C1466.useLineBreaks:=True:C214
			End if 
			
			
			
			
			
			
		End if 
		
End case 

