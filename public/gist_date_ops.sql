create operator family public.gist_date_ops using gist;

alter operator family public.gist_date_ops using gist add
	operator 6 <>(date,date),
	operator 15 public.<->(date, date) for order by integer_ops,
	function 1(date, date) public.gbt_date_consistent(internal, date, smallint, oid, internal),
	function 2(date, date) public.gbt_date_union(internal, internal),
	function 3(date, date) public.gbt_date_compress(internal),
	function 4(date, date) public.gbt_decompress(internal),
	function 5(date, date) public.gbt_date_penalty(internal, internal, internal),
	function 6(date, date) public.gbt_date_picksplit(internal, internal),
	function 7(date, date) public.gbt_date_same(gbtreekey8, gbtreekey8, internal),
	function 8(date, date) public.gbt_date_distance(internal, date, smallint, oid, internal),
	function 9(date, date) public.gbt_date_fetch(internal);

alter operator family public.gist_date_ops using gist owner to streaming_user;

create operator class public.gist_date_ops default for type date using gist as storage gbtreekey8
	operator 1 <(date,date),
	operator 2 <=(date,date),
	operator 3 =(date,date),
	operator 4 >=(date,date),
	operator 5 >(date,date),
	function 1(date, date) public.gbt_date_consistent(internal, date, smallint, oid, internal),
	function 2(date, date) public.gbt_date_union(internal, internal),
	function 3(date, date) public.gbt_date_compress(internal),
	function 4(date, date) public.gbt_decompress(internal),
	function 5(date, date) public.gbt_date_penalty(internal, internal, internal),
	function 6(date, date) public.gbt_date_picksplit(internal, internal),
	function 7(date, date) public.gbt_date_same(gbtreekey8, gbtreekey8, internal);

alter operator class public.gist_date_ops using gist owner to streaming_user;

