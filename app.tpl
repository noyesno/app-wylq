<!DOCTYPE html>
{config_load 'smarty.cfg'}
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>五运六气计算器 - 非是非</title>
<meta name="keywords" content="五运六气,五运六气软件,五运六气推算"/>
<meta name="description" content="用于计算指定年份或出生年份的五运六气"/>
<base href="/pinyin/"/>
<link rel="shortcut icon" href="{#favicon#}"/>

<style type="text/css">
body {
  max-width:48em;
  margin:auto;
}

table.wylq {
  width: 100%;
}

table.wylq td {
  border:1px solid silver;
  padding:1px 0.2em;
  text-align:center;
}
table.wylq th {
  border:1px solid black;
  background:#cccccc;
  padding:1px 0.2em;

}

#ft {
  border-top:1px dashed silver;
  padding:1em 1em;
  margin:1.5em 0;
  text-align:center;
  font-size:small;
  color:gray;
}
#ft a {
  color:gray;
  margin:1px 6px;
}
</style>         
</head>
<body>
<h1>五运六气计算器</h1>
<form>
    <label>年份:</label>
    <input type="text" name="year" size="4" value="2010"/>
    <button type="button" onclick="GAN2ZhongYun(this.form.year.value, 'wylq')">五运六气</button>
</form>

<table id="wylq" class="wylq" cellspacing="0">
    <tbody><tr>
	<th>干支</th>
	<td colspan="6" style="text-align: center; font-weight: bold; background: none repeat scroll 0% 0% yellow;">庚寅(2010)</td>
    </tr>
    <tr>
	<th>季节</th>
	<td>春</td>

	<td>夏</td>
	<td colspan="2">长夏</td>
	<td>秋</td>
	<td>冬</td>
    </tr>
    <tr>
	<th>气候</th>

	<td>风温</td>
	<td>火热</td>
	<td colspan="2">暑湿</td>
	<td>凉燥</td>
	<td>寒冷</td>
    </tr>

    <tr>
	<th>五脏</th>
	<td>肝</td>
	<td>心</td>
	<td colspan="2">脾</td>
	<td>肺</td>

	<td>肾</td>
    </tr>
    <tr>
	<th>五运</th>
	<th class="center">初运<br>01.21 ~ 04.04</th>
	<th class="center">二运<br>04.04 ~ 06.16</th>

	<th class="center" colspan="2">三运<br>06.16 ~ 08.28</th>
	<th class="center">四运<br>08.28 ~ 11.09</th>
	<th class="center">终运<br>11.09 ~ 01.21</th>
    </tr>
    <tr>
	<th>客运</th>

	<td style="background: none repeat scroll 0% 0% cyan;">太金</td>
	<td>少水</td>
	<td colspan="2">太木</td>
	<td>少火</td>
	<td>太土</td>
    </tr>

    <tr>
	<th>主运 #</th>
	<td>少木</td>
	<td>太火</td>
	<td colspan="2">少土</td>
	<td style="background: none repeat scroll 0% 0% cyan;">太金</td>

	<td>少水</td>
    </tr>
    <tr>
	<th>五音 #</th>
	<td>角</td>
	<td>徵</td>
	<td colspan="2">宫</td>

	<td>商</td>
	<td>羽</td>
    </tr>
    <tr>
	<th>中运</th>
	<td colspan="6" style="text-align: center; color: red;">金运&amp;太过</td>

    </tr>
    <tr>
	<th>六气</th>
	<th class="center">初之气<br>01.21 ~ 03.21</th>
	<th class="center">二之气<br>03.21 ~ 05.21</th>
	<th class="center">三之气<br>05.21 ~ 07.23</th>

	<th class="center">四之气<br>07.23 ~ 09.23</th>
	<th class="center">五之气<br>09.23 ~ 11.23</th>
	<th class="center">终之气<br>11.23 ~ 01.21</th>
    </tr>
    <tr>
	<th>司天</th>

	<td colspan="6" style="text-align: center; background: none repeat scroll 0% 0% cyan;">少阳相火</td>
    </tr>
    <tr>
	<th>客气</th>
	<td>少阴君火</td>
	<td>太阴湿土</td>
	<td style="background: none repeat scroll 0% 0% cyan;">少阳相火</td>

	<td>阳明燥金</td>
	<td>太阳寒水</td>
	<td style="background: none repeat scroll 0% 0% yellow;">厥阴风木</td>
    </tr>
    <tr>
	<th>主气 #</th>
	<td>厥阴风木</td>

	<td>少阴君火</td>
	<td>少阳相火</td>
	<td>太阴湿土</td>
	<td>阳明燥金</td>
	<td>太阳寒水</td>
    </tr>

    <tr>
	<th>在泉</th>
	<td colspan="6" style="text-align: center; background: none repeat scroll 0% 0% yellow;">厥阴风木</td>
    </tr>
</tbody></table>

<hr/>
<form>
    <label>出生:</label>
    <input type="text" name="b_year" size="4" value="1949"/>年
    <input type="text" name="b_month" size="2" value="10"/>月
    <input type="text" name="b_day" size="2" value="01"/>日
    <button type="button" onclick="GAN2ZhongYun(this.form.b_year.value, 'b_wylq')">出生运气</button>
</form>

<table id="b_wylq" class="wylq" cellspacing="0">
    <tbody><tr>

	<th>干支</th>
	<td colspan="6" style="text-align: center; font-weight: bold; background: none repeat scroll 0% 0% yellow;">己丑(1949)</td>
    </tr>
    <tr>
	<th>季节</th>
	<td>春</td>
	<td>夏</td>

	<td colspan="2">长夏</td>
	<td>秋</td>
	<td>冬</td>
    </tr>
    <tr>
	<th>气候</th>
	<td>风温</td>

	<td>火热</td>
	<td colspan="2">暑湿</td>
	<td>凉燥</td>
	<td>寒冷</td>
    </tr>
    <tr>
	<th>五脏</th>

	<td>肝</td>
	<td>心</td>
	<td colspan="2">脾</td>
	<td>肺</td>
	<td>肾</td>
    </tr>

    <tr>
	<th>五运</th>
	<th class="center">初运<br>01.21 ~ 04.04</th>
	<th class="center">二运<br>04.04 ~ 06.16</th>
	<th class="center" colspan="2">三运<br>06.16 ~ 08.28</th>

	<th class="center">四运<br>08.28 ~ 11.09</th>
	<th class="center">终运<br>11.09 ~ 01.21</th>
    </tr>
    <tr>
	<th>客运</th>
	<td style="background: none repeat scroll 0% 0% cyan;">少土</td>

	<td>太金</td>
	<td colspan="2">少水</td>
	<td>太木</td>
	<td>少火</td>
    </tr>
    <tr>
	<th>主运 #</th>

	<td>少木</td>
	<td>太火</td>
	<td style="background: none repeat scroll 0% 0% cyan;" colspan="2">少土</td>
	<td>太金</td>
	<td>少水</td>
    </tr>

    <tr>
	<th>五音 #</th>
	<td>角</td>
	<td>徵</td>
	<td colspan="2">宫</td>
	<td>商</td>

	<td>羽</td>
    </tr>
    <tr>
	<th>中运</th>
	<td colspan="6" style="text-align: center; color: red;">土运&amp;不及</td>
    </tr>
    <tr>

	<th>六气</th>
	<th class="center">初之气<br>01.21 ~ 03.21</th>
	<th class="center">二之气<br>03.21 ~ 05.21</th>
	<th class="center">三之气<br>05.21 ~ 07.23</th>
	<th class="center">四之气<br>07.23 ~ 09.23</th>

	<th class="center">五之气<br>09.23 ~ 11.23</th>
	<th class="center">终之气<br>11.23 ~ 01.21</th>
    </tr>
    <tr>
	<th>司天</th>
	<td colspan="6" style="text-align: center; background: none repeat scroll 0% 0% cyan;">太阴湿土</td>

    </tr>
    <tr>
	<th>客气</th>
	<td>厥阴风木</td>
	<td>少阴君火</td>
	<td style="background: none repeat scroll 0% 0% cyan;">太阴湿土</td>
	<td>少阳相火</td>

	<td>阳明燥金</td>
	<td style="background: none repeat scroll 0% 0% yellow;">太阳寒水</td>
    </tr>
    <tr>
	<th>主气 #</th>
	<td>厥阴风木</td>
	<td>少阴君火</td>

	<td>少阳相火</td>
	<td>太阴湿土</td>
	<td>阳明燥金</td>
	<td>太阳寒水</td>
    </tr>
    <tr>
	<th>在泉</th>

	<td colspan="6" style="text-align: center; background: none repeat scroll 0% 0% yellow;">太阳寒水</td>
    </tr>
</tbody></table>      
   
<div id="ft">
  <a href="http://noyesno.net/">非是非</a>
 | <a href="http://noyesno.net/about">关于</a>
 | <a href="mailto:%6e%6f%79%65%73%6e%6f%2e%6e%65%74%40%67%6d%61%69%6c%2e%63%6f%6d" rel="nofollow">联系</a>
 | 版权所有 &copy; 非是非 2012
 | <a class="donate" href='http://me.alipay.com/noyesno'>向开发者捐款</a>
</div>


<script type="text/javascript">
//<![CDATA[
{literal}
var noyesno = {
  GAN: ['甲','乙','丙','丁','戊','己','庚','辛','壬','癸'],
  WX:  ['木','火','土','金','水'],
  YIN: ['角','徵','宫','商','羽'],
  ZHI: ['子','丑','寅','卯','辰','已','午','未','申','酉','戌','亥'],
  SITIAN: ['少阴君火', '太阴湿土', '少阳相火', '阳明燥金', '太阳寒水', '厥阴风木'],
  LIUQI:  ['厥阴风木','少阴君火','少阳相火','太阴湿土','阳明燥金', '太阳寒水']

/*
主运和客运
六气: 1/21~3/21 二之气 3/21~5/21 三之气 5/21~7/23 四之气 7/23~9/23 五之气 9/23~11/23 终之气 11/23~1/21
客气: 少阴君火 太阴湿土 少阳相火 阳明燥金 太阳寒水 厥阴风木
主气: 厥阴风木 少阴君火 少阳相火 太阴湿土 阳明燥金 太阳寒水

第一，客气的排列是以三阴三阳的次第为序，首尾相接，如环无端。三阴三阳的次第就是一阴二阴三阴，一阳二阳三阳，一阴为厥阴，二阴为少阴，三月为太阴，一阳为少阳，二阳为阳明，三阳为太阳。
第二，每年的第三步客气始终都与司天相同，每年的第六步客气始终都与在泉相同。

*/
      
      
      
};


function GAN2ZhongYun(year, eId){
    // 2010 = 庚寅, 1984 = 甲子

    var year = parseInt(year);
    var i_gan = (year-1984 + 6000)%10;
    var i_zhi = (year-1984 + 6000)%12;
    //var i_gan = parseInt(gan);
    //var i_zhi = parseInt(zhi);
    var gan_offset = 2, zhi_offset = 0;
    var idx_gan = (i_gan + gan_offset)%5;
    var idx_zhi = i_zhi%6;

    var wuxing = noyesno.WX[idx_gan];
    var sitian  = noyesno.SITIAN[idx_zhi]
    var zaiquan = noyesno.SITIAN[(idx_zhi+3)%6]

    var guoji   = i_gan%2==0?'太过':'不及';

    var eRows = document.getElementById(eId).getElementsByTagName('tr');
    var eCells;

    // 干支
    eCells = eRows[0].getElementsByTagName('td');
    eCells[0].innerHTML =  noyesno.GAN[i_gan]+noyesno.ZHI[i_zhi] + '('+ year + ')';


    var ridx = 4;
    // 客运
    eCells = eRows[++ridx].getElementsByTagName('td');
    for(var i=0; i<5; i++){
	var taishao = (i_gan + i )%2==0?'太':'少';
	eCells[i].innerHTML = taishao + noyesno.WX[(i+idx_gan)%5];
        eCells[i].removeAttribute('style');
    }
    eCells[0].setAttribute('style','background:cyan');

    // 主运
    eCells = eRows[++ridx].getElementsByTagName('td');
    for(var i=0; i<5; i++){
	var taishao = (i_gan - idx_gan -1 + i + 5)%2==0?'太':'少';
	eCells[i].innerHTML = taishao + noyesno.WX[i];
        eCells[i].removeAttribute('style');
    }
    eCells[idx_gan].setAttribute('style','background:cyan');

    // 五音
    eCells = eRows[++ridx].getElementsByTagName('td');
    for(var i=0; i<5; i++){
	eCells[i].innerHTML = noyesno.YIN[i];
    }

    eCells = eRows[++ridx].getElementsByTagName('td');
    eCells[0].innerHTML =  wuxing + '运&' + guoji;


    ridx += 1;
    // 司天
    eCells = eRows[++ridx].getElementsByTagName('td');
    eCells[0].innerHTML =  sitian;

    // 客气
    eCells = eRows[++ridx].getElementsByTagName('td');
    for(var i=0; i<6; i++){
	eCells[i].innerHTML = noyesno.SITIAN[(idx_zhi-2+6+i)%6];
    }

    // 主气
    eCells = eRows[++ridx].getElementsByTagName('td');
    for(var i=0; i<6; i++){
	eCells[i].innerHTML = noyesno.LIUQI[i];
    }

    // 在泉
    eCells = eRows[++ridx].getElementsByTagName('td');
    eCells[0].innerHTML =  zaiquan;

    return;
}
{/literal}
//]]>
</script>
                       
<script src="{#site_static#}/asset/site.js"></script>
</body></html>
