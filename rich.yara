import "pe"

rule MASM
{
	meta:
		author="_pusher_"
		date = "2016-08"
		//linker: 5.12
	condition:
		pe.rich_signature.version(8078) and pe.rich_signature.version(8444) and pe.rich_signature.toolid(19) and
		((pe.linker_version.major == 5) and (pe.linker_version.minor == 12 ) or (pe.linker_version.major == 12) and (pe.linker_version.minor == 0 ) ) or
		pe.rich_signature.version(8078) and pe.rich_signature.version(30319) and pe.rich_signature.toolid(19) or
		pe.rich_signature.version(1735) and pe.rich_signature.version(8803) and pe.rich_signature.toolid(6) or
		pe.rich_signature.version(7274) and pe.rich_signature.version(9049) and pe.rich_signature.toolid(19)
}

rule MSVC6
{
	meta:
		author="_pusher_"
		date = "2016-08"
	condition:
		pe.rich_signature.version(9782) and pe.rich_signature.version(7299) and pe.rich_signature.toolid(10)  or
		pe.rich_signature.version(8168) and pe.rich_signature.version(7299) and pe.rich_signature.toolid(10) 
		and ((pe.linker_version.major == 6) and (pe.linker_version.minor == 0 )) or
		pe.rich_signature.version(8047) and pe.rich_signature.version(8034) and (pe.rich_signature.toolid(10) or pe.rich_signature.toolid(19)) or
		pe.rich_signature.version(8047) and pe.rich_signature.version(9044) and pe.rich_signature.toolid(10) or
		pe.rich_signature.version(8966) and pe.rich_signature.version(8047) and pe.rich_signature.toolid(10) or
		pe.rich_signature.version(8168) and pe.rich_signature.version(8034) and pe.rich_signature.toolid(11) or
		pe.rich_signature.version(8034) and pe.rich_signature.version(7299) and pe.rich_signature.toolid(19)
}

rule MSVC7
{
	meta:
		author="_pusher_"
		date = "2016-08"
		//linker: 7.00
	condition:
		pe.rich_signature.version(9210) and (pe.rich_signature.version(9178) or pe.rich_signature.version(9466)) and pe.rich_signature.toolid(25)
}


rule MSVC2003
{
	meta:
		author="_pusher_"
		date = "2016-08"
		//linker: 7.10
	condition:										//change 100 to something
		pe.rich_signature.version(4035) and pe.rich_signature.version(50727) and pe.rich_signature.toolid(100) or
		pe.rich_signature.version(6030) and pe.rich_signature.version(2179) and pe.rich_signature.toolid(100) or
		pe.rich_signature.version(3077) and pe.rich_signature.version(2179) and pe.rich_signature.toolid(95) or
		pe.rich_signature.version(4035) and pe.rich_signature.version(4031) and pe.rich_signature.toolid(95)
}


rule MSVC2005
{
	meta:
		author="_pusher_"
		date = "2016-08"
		//linker: 8.00
	condition:
		pe.rich_signature.version(40310) and (pe.rich_signature.version(21022) or pe.rich_signature.version(30729)) and pe.rich_signature.toolid(124) or
		pe.rich_signature.version(3094) and pe.rich_signature.version(50736) and pe.rich_signature.toolid(113) or
		(pe.rich_signature.version(50727) and ((pe.linker_version.major == 8) and (pe.linker_version.minor == 0 )))
}

rule MSVC2008
{
	meta:
		author="_pusher_"
		date = "2016-08"
		//linker: 9.00
	condition:
		(pe.rich_signature.version(30729) and pe.rich_signature.version(50727) and pe.rich_signature.version(8078) and pe.rich_signature.toolid(131)) 
		or ((pe.rich_signature.version(30729) or pe.rich_signature.version(21022)) and ((pe.linker_version.major == 9) and (pe.linker_version.minor == 0 )))
		
}

rule MSVC2010
{
	meta:
		author="_pusher_"
		date = "2016-08"
		//linker: 10.00
	condition:
		pe.rich_signature.version(40219) and ( pe.rich_signature.version(30729) or pe.rich_signature.version(40310)  ) and (pe.rich_signature.toolid(171) or pe.rich_signature.toolid(174) or pe.rich_signature.toolid(170)  )  or
		pe.rich_signature.version(20804) and pe.rich_signature.version(50727) and pe.rich_signature.toolid(170) or
		pe.rich_signature.version(30319) and (pe.linker_version.major == 10) and (pe.linker_version.minor == 0 )
}

rule MSVC2012
{
	meta:
		author="_pusher_"
		date = "2016-08"
		//linker: 11.00
	condition:
		pe.rich_signature.version(50929) and pe.rich_signature.version(61030) and pe.rich_signature.toolid(206) or
		pe.rich_signature.version(50929) and (pe.linker_version.major == 11) and (pe.linker_version.minor == 0 )
}

rule MSVC2013
{
	meta:
		author = "mrexodia & _pusher_"
		date = "2016-08"
		//linker: 12
	condition:
		pe.rich_signature.version(21005) and ( pe.rich_signature.version(40629) or pe.rich_signature.version(31101) or pe.rich_signature.version(30723) or pe.rich_signature.version(41118) ) and (pe.rich_signature.toolid(221) or pe.rich_signature.toolid(224) ) or
		pe.rich_signature.version(31101) and pe.rich_signature.version(20806) and (pe.rich_signature.toolid(221) or pe.rich_signature.toolid(225)) or
		pe.rich_signature.version(20806) and pe.rich_signature.version(21005) and pe.rich_signature.toolid(224) or
		pe.rich_signature.version(65501) and pe.rich_signature.version(20806) and pe.rich_signature.toolid(224)
}

rule MSVC2013sp1
{
	meta:
		author = "_pusher_"
		date = "2016-08"
		//linker: 12.1
	condition:
		pe.rich_signature.version(30102) and pe.rich_signature.version(30102) and pe.rich_signature.toolid(242) or
		pe.rich_signature.version(40116) and pe.rich_signature.toolid(240) and pe.rich_signature.toolid(237)
		
}


rule MSVC2015
{
	meta:
		author = "_pusher_"
		date = "2016-08"
		//linker: 14.00
	condition:
		(pe.rich_signature.version(24123) or pe.rich_signature.version(23907) ) and pe.rich_signature.version(40116) and (pe.rich_signature.toolid(239) or pe.rich_signature.toolid(243) ) or
		pe.rich_signature.version(24123) and pe.rich_signature.version(30729) and pe.rich_signature.toolid(147)
		
}

rule MSVB6
{
	meta:
		author="_pusher_"
		date = "2016-08"
		//linker: 6.00	
	condition:
		pe.rich_signature.version(8041) and pe.rich_signature.version(8169) and pe.rich_signature.toolid(9)
}
