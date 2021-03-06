<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<h4>1.选取最适用的字段属性。</h4>
<p>&nbsp;&nbsp;这一点很容易理解，数据库中的表越小，查询时的速度肯定就越快。因此，在建表的时候，为了获得更好的性能，我们可以将表中字段的宽度设置的尽可能小。
例如，在定义手机号字段时，没有必要将其设置为CHAR(100)，这显然增加了不必要的空间，一个手机号而已，长度最多也就15位，CHAR(15)是完全够用的。
</p>
<h4>2.在设计表时，尽量把某些字段设置为NOT NULL。</h4>
<p>&nbsp;&nbsp;这样，在将来查询时数据库不用再去比较NULL值。
</p>
<h4>3.使用连接(JOIN)来代替子查询(Sub-Queries)。</h4>
<p>&nbsp;&nbsp;使用子查询可以一次性的完成很多逻辑上需要多个步骤才能完成的SQL操作，同时也可以避免事务，写起来也很容易。但是，有些情况下，
子查询可以被有效的连接来替代。连接之所以更有效率，是因为查询时不需要在内存中创建临时表来完成逻辑上需要多个步骤的查询。
</p>
<h4>4.使用联合(UNION)来代替手动创建的临时表。</h4>
<p>&nbsp;&nbsp;一、与第三条差不多的道理，使用UNION来将查询结果直接连接起来，避免了产生多余的临时表，提高了效率。
</p>
<h4>5.使用索引。</h4>
<p>&nbsp;&nbsp;索引是提高数据库性能的常用方法，它可以令数据库以比没有索引时快得多的速度去检索特定的字段，在查询语句中涉及到排序的
时候性能提高最为明显。一般来说，索引应建立在那些将用于JOIN,WHERE判断和ORDER BY排序的字段上。
</p>
<h4>6.优化的SQL语句。</h4>
<p>&nbsp;&nbsp;绝大多数情况下，使用索引可以提高查询的速度，但是SQL语句使用不当的话，索引将会无法发挥出它应有的作用。<br>
首先，最好是在相同类型的字段间进行比较操作，数据库在进行比较时会自动转换类型，消耗了时间。<br>
其次，在建有索引的字段上尽量不要使用函数进行操作，因为这样会使索引失效。<br>
第三，尽量避免使用SELECT * 去查询，因为这样也会使索引失效。
</p>