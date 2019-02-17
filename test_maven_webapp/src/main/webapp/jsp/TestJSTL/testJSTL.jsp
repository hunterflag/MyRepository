<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.*"
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="testJSTL.css" />
<title>EL &amp; JSTL</title>
</head>
<body>
	<table>
		<tr>
			<td>前置設定</td>
			<td colspan="3">不需要？<br/>
			</td>
		</tr>
		<tr>
			<th>項目</th>
			<th>
				設值<br/>
				&lt;% request.setAttribute("自訂名稱", Object物件); %><br/>
			</th>
			<th>
				取值<br/>
				\${自訂名稱}
			</th>
			<th>
				備註<br/>
			</th>
		</tr>
		<tr>
			<td>數值運算</td>
			<td>不需要</td>
			<td>
				例如：3+2=<span class="hint">\${3+2}</span><br/>
				結果：3+2=${3+2}<br/>
			</td>
			<td>
				\${expression}<br/>
				直接使用運算式
			</td>
		</tr>
		<tr>
			<td>String 物件</td>
			<td>
				&lt;% request.setAttribute("title", "This is EL!"); %><br/>
				<% request.setAttribute("title", "This is EL!"); %>
			</td>
			<td>
				例如：title: \${title}<br/>
				結果：title: ${title}<br/>
			</td>
			<td>
				<span class="hint">自訂名稱之雙引號&quot;</span>的使用時機
			</td>
		</tr>
		<tr>
			<td>數值</td>
			<td>
				&lt;% request.setAttribute("price", 100); %><br/>
				<% request.setAttribute("price", 100); %>
			</td>
			<td>
				例如：price: \${price}<br/>
				結果：price: ${price}<br/>
				例如：price: \${<span class="hint">price</span>+50}<br/>
				結果：price: ${price+50}<br/>
			</td>
			<td>
				在\${...}內部, <span class="hint">price</span> 就是屬性名稱的用法
			</td>
		</tr>
		<tr>
			<td>Array 物件</td>
			<td>
				&lt;%<br/>
					String[] <span style="color:blue;">fruit</span>={"Apple", "Banana", "Orange"};<br/>
					request.setAttribute(<span style="color:green;">"fruit"</span>, <span style="color:blue;">fruit</span>);<br/>
				%>
				<%
					String[] fruit = { "Apple", "Banana", "Orange" };
					request.setAttribute("fruit", fruit);
				%>
			</td>
			<td>
				\${<span style="color:green;">fruit</span>[0]}:${fruit[0]}<br /> 
				\${<span style="color:green;">fruit</span>[1]}:${fruit[1]}<br /> 
				\${<span style="color:green;">fruit</span>[2]}:${fruit[2]}<br /> 
			</td>
			<td>
				<span style="color:green;">fruit</span> 是屬性名稱<br/>
				<span style="color:blue;">fruit</span> 是物件名稱<br/>
				<span class="hint">兩個 fruit 不一樣！</span>要分清楚！
			</td>
		</tr>
		<tr>
			<td>Map 物件</td>
			<td>
				&lt;%<br/>
					Map map = new HashMap();<br/>
					map.put("username", "John");<br/>
					map.put("password", "1234");<br/>
					request.setAttribute("login", map);<br/>
				%>
				<%
					Map map = new HashMap();
					map.put("username", "John");
					map.put("password", "1234");
					request.setAttribute("login", map);
				%>
			</td>
			<td>
				\${login.username}: ${login.username }<br/>
				\${login.password}:	${login.password }<br/>
			</td>
			<td>
				記得為 Map、HashMap 匯入jar檔（import="java.util.*"<br/>
				屬性名稱 就是 物件變數名稱
			</td>
		</tr>
		<tr>
			<td>保留字</td>
			<td colspan="3"> 
				<ul type="square">
					<li>boolean: true false</li>
					<li>logic: and or not </li>
					<li>compare: eq ne gt ge le lt</li>
					<li> others: mod div null empty instanceof
				</ul>
			</td>
			
		</tr>
		<tr>
			<td>注意事項</td>
			<td colspan="3">
				<ol type="1">
					<li>
						關閉EL運算功能,<br/> 將EL直接輸出(不做運算)的表示法x2：
						<ul type="square">
							<li>全體一律：&lt;%@ page isELIgnored="true"%>
							</li>
							<li>個別臨時：<span class="hint">\</span>\${expression }</li>
						</ul>
					</li>
				</ol>
			</td>
		</tr>
		<tr>
			<td>參考資料</td>
			<td colspan="3">
				<ul>
					<li>Escape character
						/ <a href="https://www.google.com.tw/search?q=%E8%B7%B3%E8%84%AB%E5%AD%97%E5%85%83&oq=%E8%B7%B3%E8%84%AB%E5%AD%97%E5%85%83&aqs=chrome..69i57&sourceid=chrome&ie=UTF-8" target="blank">跳脫字元</a>
						/ <a href="https://baike.baidu.com/item/%E8%BD%AC%E4%B9%89%E5%AD%97%E7%AC%A6" target="blank">转义字符</a>
						<ul>
							<li><a href="http://www.htmlhelp.com/reference/html40/entities/special.html" target="blank">Web Design Group</a></li>
						</ul>
					</li>
				</ul>
			</td>
		</tr>

	</table>

	<footer>
		Articl Code: jsp.el
	</footer>
</body>
</html>