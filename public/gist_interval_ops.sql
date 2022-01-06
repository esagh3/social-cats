create operator family public.gist_interval_ops using gist;

alter operator family public.gist_interval_ops using gist add
	operator 6 <>(interval,interval),
	operator 15 public.<->(interval, interval) for order by interval_ops,
	function 1(interval, interval) public.gbt_intv_consistent(internal, interval, smallint, oid, internal),
	function 2(interval, interval) public.gbt_intv_union(internal, internal),
	function 3(interval, interval) public.gbt_intv_compress(internal),
	function 4(interval, interval) public.gbt_intv_decompress(internal),
	function 5(interval, interval) public.gbt_intv_penalty(internal, internal, internal),
	function 6(interval, interval) public.gbt_intv_picksplit(internal, internal),
	function 7(interval, interval) public.gbt_intv_same(gbtreekey32, gbtreekey32, internal),
	function 8(interval, interval) public.gbt_intv_distance(internal, interval, smallint, oid, internal),
	function 9(interval, interval) public.gbt_intv_fetch(internal);

alter operator family public.gist_interval_ops using gist owner to streaming_user;

create operator class public.gist_interval_ops default for type interval using gist as storage gbtreekey32
	operator 1 <(interval,interval),
	operator 2 <=(interval,interval),
	operator 3 =(interval,interval),
	operator 4 >=(interval,interval),
	operator 5 >(interval,interval),
	function 1(interval, interval) public.gbt_intv_consistent(internal, interval, smallint, oid, internal),
	function 2(interval, interval) public.gbt_intv_union(internal, internal),
	function 3(interval, interval) public.gbt_intv_compress(internal),
	function 4(interval, interval) public.gbt_intv_decompress(internal),
	function 5(interval, interval) public.gbt_intv_penalty(internal, internal, internal),
	function 6(interval, interval) public.gbt_intv_picksplit(internal, internal),
	function 7(interval, interval) public.gbt_intv_same(gbtreekey32, gbtreekey32, internal);

alter operator class public.gist_interval_ops using gist owner to streaming_user;

