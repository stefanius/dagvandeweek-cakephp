<?php if(authUser==false): ?>
    <form class="navbar-form pull-right" method="post" id="login" action="/users/login">
        <input class="span2" type="text" name="username" placeholder="Username">
        <input class="span2" type="password" name='password' placeholder="Password">
        <button type="submit" class="btn">Sign in</button>
    </form> 
<?php else: ?>
    <a href="/users/logout">Uitloggen</a>
<?php endif; ?>
