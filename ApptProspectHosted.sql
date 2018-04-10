declare @sqlselect varchar(max)
DECLARE @StartApptDate	datetime;
select @StartApptDate = '01/01/2017';

select @sqlselect = isnull(@sqlselect,'')+'Use ['+name+']'+ char(13) 
                 + 'exec SP_ApptUse @StartDate='''+convert(varchar(10),@StartApptDate,101)+''''+ char(13)

from master.sys.databases where --name like 'ASP%'
name in (  'ASP_VFS'   --CSI-SQL-01\SQL08
		 , 'ASP_EHD'   --CSI-SQL-03\SQL08
		 , 'ASP_KMHGC' --CSI-SQL-03\SQL08
		 , 'ASP_RMSLA' --CSI-SQL-03\SQL08
		 , 'ASP_TASCAZ'--CSI-SQL-03\SQL08
	     , 'ASP_WYFSN' --CSI-SQL-04\SQL08
		 , 'ASP_MHAKS' --CSI-SQLvn03
		 , 'ASP_HMHCKS'--CSI-SQLvn03
		 , 'ASP_PMHCKS'--CSI-SQLvn03
		 , 'ASP_FSAAZ' --CSI-SQL-05\SQL08
		 , 'ASP_CPLCAZ'--CSI-SQL-05\SQL08
		 , 'ASP_FSLAZ' --CSI-SQL-05\SQL08
		 )

--and name >'ASP_QOP'
print @sqlselect
