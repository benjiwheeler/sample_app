<!doctype html>
<title>Flaskr</title>
<link rel=stylesheet type=text/css href="/static/style.css">
<div class=page>
  <h1><a href="/">Flaskr</a></h1>
  <div class=metanav>
  
    <a href="/login">log in</a>
  
  </div>
  
  
  <h2>Login</h2>
  
  <form action="/login" method=post>
    <dl>
      <dt>Username:
      <dd><input type=text name=username>
      <dt>Password:
      <dd><input type=password name=password>
      <dd><input type=submit value=Login>
    </dl>
  </form>

</div>