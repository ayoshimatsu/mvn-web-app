<!DOCTYPE html>
<html>
    <head>
        <title>Tomcat test</title>
        <link href="common/css/style.css" rel="stylesheet">
    </head>
    <body>
        <header>
            <div class="container">
            <h1>Tomcat Test</h1>
            <h2>localhos:8400&emsp;&emsp;&emsp;java1.8</h2>
            </div><!-- /.container -->
        </header>
        <main>
            <div class="container">
            <section>
                <h2>Until VCS server will be introduced</h2>
                <p class="timer">
                    <span id="day"></span>day
                    <span id="hour"></span>hour
                    <span id="min"></span>minute
                    <span id="sec"></span>second</p>
            </section>
            </div><!-- /.container -->
        </main>

        <!-- javaScript -->
        <script>
            'use strict';
            
            function countdown(due) {
                const now = new Date();
            
                const rest = due.getTime() - now.getTime();
                const sec = Math.floor(rest / 1000) % 60;
                const min = Math.floor(rest / 1000 / 60) % 60;
                const hours = Math.floor(rest / 1000 / 60 / 60) % 24;
                const days = Math.floor(rest / 1000 / 60 / 60 / 24);
                const count = [days, hours, min, sec];
            
                return count;
            }
            
            const goal = new Date(2020, 3, 1);
            
            function recalc() {
                const counter = countdown(goal);
                document.getElementById('day').textContent = counter[0];
                document.getElementById('hour').textContent = counter[1];
                document.getElementById('min').textContent = String(counter[2]).padStart(2, '0');
                document.getElementById('sec').textContent = String(counter[3]).padStart(2, '0');
                refresh();
            }
            
            function refresh() {
                setTimeout(recalc, 1000);
            }
            recalc();
        </script>
    </body>
</html>