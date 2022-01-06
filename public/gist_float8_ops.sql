create operator family public.gist_float8_ops using gist;

alter operator family public.gist_float8_ops using gist add
	operator 6 <>(double precision,double precision),
	operator 15 public.<->(double precision, double precision) for order by float_ops,
	function 1(double precision, double precision) public.gbt_float8_consistent(internal, double precision, smallint, oid, internal),
	function 2(double precision, double precision) public.gbt_float8_union(internal, internal),
	function 3(double precision, double precision) public.gbt_float8_compress(internal),
	function 4(double precision, double precision) public.gbt_decompress(internal),
	function 5(double precision, double precision) public.gbt_float8_penalty(internal, internal, internal),
	function 6(double precision, double precision) public.gbt_float8_picksplit(internal, internal),
	function 7(double precision, double precision) public.gbt_float8_same(gbtreekey16, gbtreekey16, internal),
	function 8(double precision, double precision) public.gbt_float8_distance(internal, double precision, smallint, oid, internal),
	function 9(double precision, double precision) public.gbt_float8_fetch(internal);

alter operator family public.gist_float8_ops using gist owner to streaming_user;

create operator class public.gist_float8_ops default for type double precision using gist as storage gbtreekey16
	operator 1 <(double precision,double precision),
	operator 2 <=(double precision,double precision),
	operator 3 =(double precision,double precision),
	operator 4 >=(double precision,double precision),
	operator 5 >(double precision,double precision),
	function 1(double precision, double precision) public.gbt_float8_consistent(internal, double precision, smallint, oid, internal),
	function 2(double precision, double precision) public.gbt_float8_union(internal, internal),
	function 3(double precision, double precision) public.gbt_float8_compress(internal),
	function 4(double precision, double precision) public.gbt_decompress(internal),
	function 5(double precision, double precision) public.gbt_float8_penalty(internal, internal, internal),
	function 6(double precision, double precision) public.gbt_float8_picksplit(internal, internal),
	function 7(double precision, double precision) public.gbt_float8_same(gbtreekey16, gbtreekey16, internal);

alter operator class public.gist_float8_ops using gist owner to streaming_user;

