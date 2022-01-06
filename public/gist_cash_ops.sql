create operator family public.gist_cash_ops using gist;

alter operator family public.gist_cash_ops using gist add
	operator 6 <>(money,money),
	operator 15 public.<->(money, money) for order by money_ops,
	function 1(money, money) public.gbt_cash_consistent(internal, money, smallint, oid, internal),
	function 2(money, money) public.gbt_cash_union(internal, internal),
	function 3(money, money) public.gbt_cash_compress(internal),
	function 4(money, money) public.gbt_decompress(internal),
	function 5(money, money) public.gbt_cash_penalty(internal, internal, internal),
	function 6(money, money) public.gbt_cash_picksplit(internal, internal),
	function 7(money, money) public.gbt_cash_same(gbtreekey16, gbtreekey16, internal),
	function 8(money, money) public.gbt_cash_distance(internal, money, smallint, oid, internal),
	function 9(money, money) public.gbt_cash_fetch(internal);

alter operator family public.gist_cash_ops using gist owner to streaming_user;

create operator class public.gist_cash_ops default for type money using gist as storage gbtreekey16
	operator 1 <(money,money),
	operator 2 <=(money,money),
	operator 3 =(money,money),
	operator 4 >=(money,money),
	operator 5 >(money,money),
	function 1(money, money) public.gbt_cash_consistent(internal, money, smallint, oid, internal),
	function 2(money, money) public.gbt_cash_union(internal, internal),
	function 3(money, money) public.gbt_cash_compress(internal),
	function 4(money, money) public.gbt_decompress(internal),
	function 5(money, money) public.gbt_cash_penalty(internal, internal, internal),
	function 6(money, money) public.gbt_cash_picksplit(internal, internal),
	function 7(money, money) public.gbt_cash_same(gbtreekey16, gbtreekey16, internal);

alter operator class public.gist_cash_ops using gist owner to streaming_user;

