create operator family public.gist_time_ops using gist;

alter operator family public.gist_time_ops using gist add
	operator 6 <>(time without time zone,time without time zone),
	operator 15 public.<->(time, time) for order by interval_ops,
	function 1(time without time zone, time without time zone) public.gbt_time_consistent(internal, time, smallint, oid, internal),
	function 2(time without time zone, time without time zone) public.gbt_time_union(internal, internal),
	function 3(time without time zone, time without time zone) public.gbt_time_compress(internal),
	function 4(time without time zone, time without time zone) public.gbt_decompress(internal),
	function 5(time without time zone, time without time zone) public.gbt_time_penalty(internal, internal, internal),
	function 6(time without time zone, time without time zone) public.gbt_time_picksplit(internal, internal),
	function 7(time without time zone, time without time zone) public.gbt_time_same(gbtreekey16, gbtreekey16, internal),
	function 8(time without time zone, time without time zone) public.gbt_time_distance(internal, time, smallint, oid, internal),
	function 9(time without time zone, time without time zone) public.gbt_time_fetch(internal);

alter operator family public.gist_time_ops using gist owner to streaming_user;

create operator class public.gist_time_ops default for type time without time zone using gist as storage gbtreekey16
	operator 1 <(time without time zone,time without time zone),
	operator 2 <=(time without time zone,time without time zone),
	operator 3 =(time without time zone,time without time zone),
	operator 4 >=(time without time zone,time without time zone),
	operator 5 >(time without time zone,time without time zone),
	function 1(time without time zone, time without time zone) public.gbt_time_consistent(internal, time, smallint, oid, internal),
	function 2(time without time zone, time without time zone) public.gbt_time_union(internal, internal),
	function 3(time without time zone, time without time zone) public.gbt_time_compress(internal),
	function 4(time without time zone, time without time zone) public.gbt_decompress(internal),
	function 5(time without time zone, time without time zone) public.gbt_time_penalty(internal, internal, internal),
	function 6(time without time zone, time without time zone) public.gbt_time_picksplit(internal, internal),
	function 7(time without time zone, time without time zone) public.gbt_time_same(gbtreekey16, gbtreekey16, internal);

alter operator class public.gist_time_ops using gist owner to streaming_user;

