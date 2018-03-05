<h1>Awesome-hammerspoon, as advertised.</h1>

<p><img src="https://github.com/ashfinal/bindata/raw/master/screenshots/awesome-hammerspoon-modes.png" alt="modes"/></p>

<p>Awesome-hammerspoon is my collection of lua scripts for <a href="http://www.hammerspoon.org/">Hammerspoon</a>. It has highly modal-based, vim-styled key bindings, provides some functionality like desktop widgets, window management, application launcher, dictionary translation, cheatsheets... etc.</p>

<h2>Get started</h2>

<ol>
<li>Install <a href="http://www.hammerspoon.org/">Hammerspoon</a> first.</li>
<li><code>git clone --depth 1 https://github.com/ashfinal/awesome-hammerspoon.git ~/.hammerspoon</code></li>
<li>Reload the configutation.</li>
</ol>

<p>and you&#39;re set.</p>

<h2>Keep update</h2>

<p><code>cd ~/.hammerspoon &amp;&amp; git pull</code></p>

<h2>What's modal-based key bindings?</h2>

<details>
<summary>More details</summary>

<p>Well... simply to say, it allows you using <kbd>S</kbd> key to resize windows in <code>resize</code> mode, but in <code>app</code> mode, to launch Safari, in <code>timer</code> mode, to set a 10-mins timer... something like that. During all progress, you don&#39;t have to press extra keys.</p></p>

<p>And this means a lot.</p>

<ul>
<li>It&#39;s scene-wise, you can use same key bindings to do different jobs in different scenes. You don&#39;t worry to run out of your hotkey bindings, and twist your fingers to press <kbd>⌘</kbd> + <kbd>⌃</kbd> + <kbd>⌥</kbd> + <kbd>⇧</kbd> + <kbd>C</kbd> in the end.</li>

<li>Less keystrokes, less memory pressure. You can press <kbd>⌥</kbd> + <kbd>A</kbd> to enter <code>app</code> mode, release, then press single key <kbd>S</kbd> to launch Safari, or <kbd>C</kbd> to lauch Chrome. Sounds good? You keep your pace, no rush.</li>

<li>Easy to extend, you can create your own modals if you like. For example, <code>Finder</code> mode, in which you press <kbd>T</kbd> to open Terminal here, press <kbd>S</kbd> to send files to predefined path, press <kbd>C</kbd> to upload images to cloud storage.</li>
</ul>

<p><strong>NOTICE:</strong> After your work you&#39;d better quit current mode back to normal. Or, you carefully pick your key bindings to avoid conflict with other hotkeys.</p>

</details>

<h2>How to use?</h2>

<p>So, following above procedures, you have reloaded Hammerspoon&#39;s configutation. Let&#39;s see what we&#39;ve got here.</p>

<ol>
<h3><li>Desktop Widgets</li></h3>

<details>
<summary>More details</summary>

<p>As you may have noticed, there are two clean, nice-looking desktop widgets, analogclock and calendar. Usually we don&#39;t interact with them, but I do hope you like them.</p>

<p><img src="https://github.com/ashfinal/bindata/raw/master/screenshots/awesome-hammerspoon-deskwidgets.png" alt="widgets"/></p>

<p><strong>UPDATE:</strong> Add new widget <code>hcalendar</code>. The design comes from <a href="https://github.com/ashikahmad/horizontal-calendar-widget">here</a>.</p>

<p><img src="https://github.com/ashfinal/bindata/raw/master/screenshots/awesome-hammerspoon-hcal.png" alt="hcal"/></p>

<p><em>Default off. To add this module to your config, please refer to the <code>Customization</code> section.</em></p>

</details>

<h3><li>Mode Block</li></h3>

<details>
<summary>More details</summary>

<p>There is also a small gray block in the bottom right corner, maybe displaying current netspeed. Well, it&#39;s actually <strong>mode block</strong>. Want to know in which mode you are? Give it a glance. When Hammerspoon starts, or there&#39;s no work to do, it shows <code>DOCK MODE</code> in black background. But alway displaying the black block is a little boring, so we use it for netspeed monitor if there&#39;s no activity for 5 secs.</p>

<p><strong>Mode block</strong> holds the entrance to other modes, you can use <kbd>⌥</kbd> + <kbd>space</kbd> to toggle its display. Then use <kbd>⌥</kbd> + <kbd>R</kbd> to enter <code>resize</code> mode, or use <kbd>⌥</kbd> + <kbd>A</kbd> to enter <code>app</code> mode... etc.</p>

<p>Key bindings available:</p>

<table data-anchor-id="lfo3" class="table table-striped-white table-bordered">
    <thead>
        <tr>
            <th style="text-align:left;">Key bindings</th>
            <th style="text-align:left;">Movement</th>
        </tr>
    </thead>
    <tbody><tr>
            <td style="text-align:left;"><kbd>⌥</kbd> + <kbd>A</kbd></td>
            <td style="text-align:left;">Enter <code>app</code> mode</td>
        </tr>
        <tr>
            <td style="text-align:left;"><kbd>⌥</kbd> + <kbd>C</kbd></td>
            <td style="text-align:left;">Enter <code>clipboard</code> mode</td>
        </tr>
        <tr>
            <td style="text-align:left;"><kbd>⌥</kbd> + <kbd>D</kbd></td>
            <td style="text-align:left;">Enter <code>download</code> mode</td>
        </tr>
        <tr>
            <td style="text-align:left;"><kbd>⌥</kbd> + <kbd>G</kbd></td>
            <td style="text-align:left;">Launch hammer search</td>
        </tr>
        <tr>
            <td style="text-align:left;"><kbd>⌥</kbd> + <kbd>I</kbd></td>
            <td style="text-align:left;">Enter <code>timer</code> mode</td>
        </tr>
        <tr>
            <td style="text-align:left;"><kbd>⌥</kbd> + <kbd>R</kbd></td>
            <td style="text-align:left;">Enter <code>resize</code> mode</td>
        </tr>
        <tr>
            <td style="text-align:left;"><kbd>⌥</kbd> + <kbd>S</kbd></td>
            <td style="text-align:left;">Enter <code>cheatsheet</code> mode</td>
        </tr>
        <tr>
            <td style="text-align:left;"><kbd>⌥</kbd> + <kbd>T</kbd></td>
            <td style="text-align:left;">Show current time</td>
        </tr>
        <tr>
            <td style="text-align:left;"><kbd>⌥</kbd> + <kbd>v</kbd></td>
            <td style="text-align:left;">Enter <code>view</code> mode</td>
        </tr>
        <tr>
            <td style="text-align:left;"><kbd>⌥</kbd> + <kbd>Z</kbd></td>
            <td style="text-align:left;">Toggle Hammerspoon console</td>
        </tr>
        <tr>
            <td style="text-align:left;"><kbd>⌥</kbd> + <kbd>⇥</kbd></td>
            <td style="text-align:left;">Show window hints</td>
        </tr>
    </tbody>
</table>

<p><em>In most modes, you can use <kbd>Q</kbd>, or <kbd>⎋</kbd> to quit back to DOCK mode. And switch from one mode to another directly.</em></p>

</details>

<h3><li>Window Management(resize mode) <kbd>⌥</kbd> + <kbd>R</kbd></li></h3>

<details>
<summary>More details</summary>

<p><img src="https://github.com/ashfinal/bindata/raw/master/screenshots/awesome-hammerspoon-winresize.gif" alt="winresize"/></p>

<p>Use <kbd>H</kbd>, <kbd>L</kbd>, <kbd>J</kbd>, <kbd>K</kbd> to <strong>resize</strong> windows.</p>

<p>Use <kbd>=</kbd>, <kbd>-</kbd> to expand/shrink the window size.</p>

<p>Use <kbd>⌘</kbd> + <kbd>H/L</kbd> to cycle through active windows.</p>

<p>Use <kbd>⇧</kbd> + <kbd>H/J/K/L</kbd> to <strong>move</strong> windows around.</p>

<p>Use <kbd>⌃</kbd> + <kbd>H/J/K/L</kbd> to resize windows to 1/2 of screen.</p>

<p>Use <kbd>⌃</kbd> + <kbd>Y/U/I/O</kbd> to resize windows to 1/4 of screen.</p>

<p>Use <kbd>F</kbd> to put windows to fullscreen, use <kbd>C</kbd> to put windows to center of screen, use <kbd>⌃</kbd> + <kbd>C</kbd> to resize windows to predefined size and center them.</p>

</details>

<h3><li>App Launcher(app mode) <kbd>⌥</kbd> + <kbd>A</kbd></li></h3>

<details>
<summary>More details</summary>

<p>Use <kbd>F</kbd> to launch Finder or focus the existing window; <kbd>S</kbd> for Safari; <kbd>T</kbd> for Terminal; <kbd>V</kbd> for Activity Monitor; <kbd>Y</kbd> for System Preferences... etc.</p>

<p>If you want to define your own hotkeys, please create <code>~/.hammerspoon/private/awesomeconfig.lua</code> file, then add something like below:</p>

<pre><code class="language-lua">applist = {
    {shortcut = &#39;i&#39;,appname = &#39;iTerm&#39;},
    {shortcut = &#39;l&#39;,appname = &#39;Sublime Text&#39;},
    {shortcut = &#39;m&#39;,appname = &#39;MacVim&#39;},
    {shortcut = &#39;o&#39;,appname = &#39;LibreOffice&#39;},
    {shortcut = &#39;r&#39;,appname = &#39;Firefox&#39;},
}

</code></pre>

<p><strong>UPDATE:</strong> Now you can press <kbd>⇥</kbd> to show key bindings, also available in <code>resize</code>, <code>view</code>, <code>timer</code> mode.</p>

<p><img src="https://github.com/ashfinal/bindata/raw/master/screenshots/awesome-hammerspoon-tips.png" alt="tips"/></p>

</details>

<h3><li>Hammer Search(search mode) <kbd>⌥</kbd> + <kbd>G</kbd></li></h3>

<details>
<summary>More details</summary>

<p>Now you can search Safari tabs and online dictionary(use <kbd>⌃</kbd> + <kbd>⇥</kbd> to switch between them).</p>

<p><img src="https://github.com/ashfinal/bindata/raw/master/screenshots/awesome-hammerspoon-hsearch.gif" alt="hsearch"/></p>

<p>Dictionary search supports <code>word suggestion</code>(see the above gif) and English thesaurus(use <kbd>⌃</kbd> + <kbd>D</kbd> to request). And did you notice that the translation is instant?</p>

<p><em>Due to the uncertainty of asynchronous request, usually you need to append a space to end of the word to fully translate it.</em></p>

<p><strong>NOTICE:</strong> If you heavily rely on instant translation(youdao dict), please consider applying for your own API key at here:</p>

<p><a href="http://fanyi.youdao.com/openapi?path=data-mode">http://fanyi.youdao.com/openapi?path=data-mode</a></p>

<p>Then add them to <code>~/.hammerspoon/private/awesomeconfig.lua</code>:</p>

<pre><code>youdaokeyfrom = &#39;hsearch&#39;  -- keyfrom
youdaoapikey = &#39;1199732752&#39;  -- API key
</code></pre>

</details>

<h3><li>Timer Indicator(timer mode) <kbd>⌥</kbd> + <kbd>I</kbd></li></h3>

<details>
<summary>More details</summary>

<p>Have you noticed this issue on macos? There is 5 pixel tall blank at the bottom of the screen for non-native fullscreen window, which is sometimes disturbing. Let&#39;s make the blank more useful. When you set a timer, this will draw a colored line to fill that blank, meanwhile, show progress of the timer.</p>

<p><img src="https://github.com/ashfinal/bindata/raw/master/screenshots/awesome-hammerspoon-timeralert.png" alt="timeralert"/></p>

<p>Press <kbd>0</kbd> to set a 5-mins timer, <kbd>↩︎</kbd> to set a 25-mins timer.</p>

<p>Press <kbd>1</kbd> to set a 10-mins timer;</p>

<p>Press <kbd>2</kbd> to set a 20-mins timer;</p>

<p>...</p>

<p>Press <kbd>9</kbd> to set a 90-mins timer.</p>

</details>

<h3><li>Cheatsheet(cheatsheet mode) <kbd>⌥</kbd> + <kbd>S</kbd></li></h3>

<details>
<summary>More details</summary>

<p>It shows the cheatsheet of current application&#39;s hotkeys. Code comes from <a href="https://github.com/dharmapoudel/hammerspoon-config">here</a>.</p>

<p>Let the picture talk:</p>

<p><img src="https://github.com/ashfinal/bindata/raw/master/screenshots/awesome-hammerspoon-cheatsheet.png" alt="cheatsheet"/></p>

</details>

<h3><li>Clipboard Show(clipboard mode) <kbd>⌥</kbd> + <kbd>C</kbd></li></h3>

<details>
<summary>More details</summary>

<p>It shows the content of your clipboard. If text or image type then display it with proper size, if hyperlink type then use default browser to open it. Click the display block it will destory itself.</p>

<p>I usually use this to display QR image for cellphone&#39;s faster scanning, or display some text for better reading.</p>

</details>

<h3><li>Other Stuff</li></h3>

<details>
<summary>Tmux-styled Clock <kbd>⌥</kbd> + <kbd>T</kbd></summary>

<p>Works even when you&#39;re watching video in fullscreen.</p>

<p><img src="https://github.com/ashfinal/bindata/raw/master/screenshots/awesome-hammerspoon-tmuxtime.png" alt="tmuxtime"/></p>

</details>

<details>
<summary>Windows Hint <kbd>⌥</kbd> + <kbd>⇥</kbd> </summary>

<p>Focus to your windows easier.</p>

<p><img src="https://github.com/ashfinal/bindata/raw/master/screenshots/awesome-hammerspoon-windowshint.png" alt="windowshint"/></p>

</details>

<details>
<summary>View Mode <kbd>⌥</kbd> + <kbd>V</kbd></summary>

<p>Use <kbd>H/J/K/L</kbd> to scroll around.</p>

<p>Use <kbd>⌃</kbd>/<kbd>⇧</kbd> + <kbd>H/J/K/L</kbd> to move mouse around.</p>

<p>Use <kbd>,</kbd>/<kbd>.</kbd> for mouse left/right click.</p>

</details>

<details>
<summary>Download Mode(aria2 frontend) <kbd>⌥</kbd> + <kbd>D</kbd></summary>

<p>I use <a href="https://github.com/NemoAlex/glutton">glutton</a>(a tiny webclient for aria2) to manage aria2&#39;s download queue. This mode creates an interface for glutton, so I can handle aria2 more convenient.</p>

<p>Default off. To add this module to your config, please refer to the <code>Customization</code> section.</p>

<p><em>To speed up the display of webclient, by default when you press <code>⎋</code> the interface is hiden(instead destroyed). This may increase resource occupation. If you don&#39;t use <code>download</code> mode for a long time, when quitting use <kbd>⌃</kbd> + <kbd>⎋</kbd> to completely destory the webclient.</em></p>

</details>

<details>
<summary>Lock Screen <kbd>⌘</kbd> + <kbd>⌃</kbd> + <kbd>⇧</kbd> + <kbd>L</kbd></summary>

<p>No description.</p>

</details>

<details>
<summary>And More...</summary>

<p>For whatever mode, you can always use:</p>

<p><kbd>⌘</kbd> + <kbd>⌥</kbd> + <kbd>⇠</kbd> to resize windows to left-half of screen</p>

<p><kbd>⌘</kbd>  + <kbd>⌥</kbd> + <kbd>⇢</kbd> to resize windows to right-half of screen</p>

<p><kbd>⌘</kbd>  + <kbd>⌥</kbd> +  <kbd>⇡</kbd> to resize windows to fullscreen</p>

<p><kbd>⌘</kbd>  + <kbd>⌥</kbd> +  <kbd>⇣</kbd> to put windows to predefined size</p>

<p><kbd>⌘</kbd>  + <kbd>⌥</kbd> +  <kbd>↩︎</kbd> to put windows to center of screen</p>

<hr>

<p>For those who care about system resource:</p>

<p><img src="https://github.com/ashfinal/bindata/raw/master/screenshots/awesome-hammerspoon-memusage.png" alt="memusage"/></p>

<hr/>

</details>
</ol>

<h2>Customization</h2>

<details>
<summary>More details</summary>

<p>Modify the file <code>~/.hammerspoon/private/awesomeconfig.lua</code>, you should create it before doing below things.</p>

<ol>
<li><p>Add application launching hotkey</p>

<p>See the section <code>App launcher(app mode)</code> above.</p></li>
<li><p>Add/Remove the plugin modules</p>

<p>default modules:</p>

<pre><code class="language-lua">module_list = {
    &quot;basicmode&quot;,
    &quot;widgets/netspeed&quot;,
    &quot;widgets/calendar&quot;,
    &quot;widgets/analogclock&quot;,
    &quot;modes/indicator&quot;,
    &quot;modes/clipshow&quot;,
    &quot;modes/cheatsheet&quot;,
    &quot;modes/hsearch&quot;,
}
</code></pre>

<p>For example, remove <code>hsearch</code> module, add your own module <code>mymodule</code>:</p>

<pre><code class="language-lua">module_list = {
    &quot;basicmode&quot;,
    &quot;widgets/netspeed&quot;,
    &quot;widgets/calendar&quot;,
    &quot;widgets/analogclock&quot;,
    &quot;modes/indicator&quot;,
    &quot;modes/clipshow&quot;,
    &quot;modes/cheatsheet&quot;,
    &quot;private/mymodule&quot;,
}
</code></pre></li>

<li><p>Modify/Remove the default key bindings</p>

<p>Available key binding variables:</p>
<table data-anchor-id="79xg" class="table table-striped-white table-bordered">
<thead>
<tr>
 <th style="text-align:left;">Action</th>
 <th style="text-align:left;">Variable</th>
 <th style="text-align:left;">Default value</th>
</tr>
</thead>
<tbody><tr>
 <td style="text-align:left;">Reload Configuration</td>
 <td style="text-align:left;">hsreload_keys</td>
 <td style="text-align:left;">{{&quot;cmd&quot;, &quot;shift&quot;, &quot;ctrl&quot;}, &quot;R&quot;}</td>
</tr>
<tr>
 <td style="text-align:left;">Toggle Modal Supervisor</td>
 <td style="text-align:left;">modalmgr_keys</td>
 <td style="text-align:left;">{{&quot;alt&quot;}, &quot;space&quot;}</td>
</tr>
<tr>
 <td style="text-align:left;">Toggle Hammerspoon Console</td>
 <td style="text-align:left;">toggleconsole_keys</td>
 <td style="text-align:left;">{{&quot;alt&quot;}, &quot;Z&quot;}</td>
</tr>
<tr>
 <td style="text-align:left;">Lock Screen</td>
 <td style="text-align:left;">lockscreen_keys</td>
 <td style="text-align:left;">{{&quot;cmd&quot;, &quot;shift&quot;, &quot;ctrl&quot;}, &quot;L&quot;}</td>
</tr>
<tr>
 <td style="text-align:left;">Enter Application Mode</td>
 <td style="text-align:left;">appM_keys</td>
 <td style="text-align:left;">{{&quot;alt&quot;}, &quot;A&quot;}</td>
</tr>
<tr>
 <td style="text-align:left;">Enter Clipboard Mode</td>
 <td style="text-align:left;">clipboardM_keys</td>
 <td style="text-align:left;">{&quot;alt&quot;}, &quot;C&quot;}</td>
</tr>
<tr>
 <td style="text-align:left;">Launch Hammer Search</td>
 <td style="text-align:left;">hsearch_keys</td>
 <td style="text-align:left;">{{&quot;alt&quot;}, &quot;G&quot;}</td>
</tr>
<tr>
 <td style="text-align:left;">Enter Timer Mode</td>
 <td style="text-align:left;">timerM_keys</td>
 <td style="text-align:left;">{{&quot;alt&quot;}, &quot;T&quot;}</td>
</tr>
<tr>
 <td style="text-align:left;">Enter Resize Mode</td>
 <td style="text-align:left;">resizeM_keys</td>
 <td style="text-align:left;">{{&quot;alt&quot;}, &quot;R&quot;}</td>
</tr>
<tr>
 <td style="text-align:left;">Enter Cheatsheet Mode</td>
 <td style="text-align:left;">cheatsheetM_keys</td>
 <td style="text-align:left;">{{&quot;alt&quot;}, &quot;S&quot;}</td>
</tr>
<tr>
 <td style="text-align:left;">Show Digital Clock</td>
 <td style="text-align:left;">showtime_keys</td>
 <td style="text-align:left;">{{&quot;alt&quot;}, &quot;T&quot;}</td>
</tr>
<tr>
 <td style="text-align:left;">Enter View Mode</td>
 <td style="text-align:left;">viewM_keys</td>
 <td style="text-align:left;">{{&quot;alt&quot;}, &quot;V&quot;}</td>
</tr>
<tr>
 <td style="text-align:left;">Show Window hints</td>
 <td style="text-align:left;">winhints_keys</td>
 <td style="text-align:left;">{{&quot;alt&quot;}, &quot;tab&quot;}</td>
</tr>
<tr>
 <td style="text-align:left;">Lefthalf of Screen</td>
 <td style="text-align:left;">resizeextra_lefthalf_keys</td>
 <td style="text-align:left;">{{&quot;cmd&quot;, &quot;alt&quot;}, &quot;left&quot;}</td>
</tr>
<tr>
 <td style="text-align:left;">Righthalf of Screen</td>
 <td style="text-align:left;">resizeextra_righthalf_keys</td>
 <td style="text-align:left;">{{&quot;cmd&quot;, &quot;alt&quot;}, &quot;right&quot;}</td>
</tr>
</tr>
<tr>
 <td style="text-align:left;">Fullscreen</td>
 <td style="text-align:left;">resizeextra_fullscreen_keys</td>
 <td style="text-align:left;">{{&quot;cmd&quot;, &quot;alt&quot;}, &quot;up&quot;}</td>
</tr>
</tr>
<tr>
 <td style="text-align:left;">Resize &amp; Center</td>
 <td style="text-align:left;">resizeextra_fcenter_keys</td>
 <td style="text-align:left;">{{&quot;cmd&quot;, &quot;alt&quot;}, &quot;down&quot;}</td>
</tr>
</tr>
<tr>
 <td style="text-align:left;">Center Window</td>
 <td style="text-align:left;">resizeextra_center_keys</td>
 <td style="text-align:left;">{{&quot;cmd&quot;, &quot;alt&quot;}, &quot;return&quot;}</td>
</tr>
</tr>
</tbody></table>

<p>For example, to modify <code>Toggle Modal Supervisor</code> key binding:</p>
<pre><code class="language-lua">modalmgr_keys = {{&quot;cmd&quot;, &quot;shift&quot;, &quot;ctrl&quot;}, &quot;F&quot;}
</code></pre>
<p>To completely remove <code>Lock Screen</code> key binding:</p>
<pre><code class="language-lua">lockscreen_keys = {{}, &quot;&quot;}
</code></pre> </li>

<li><p>Create your own modal key bindings</p>

<p>See <a href="http://www.hammerspoon.org/docs/hs.hotkey.modal.html">http://www.hammerspoon.org/docs/hs.hotkey.modal.html</a>, also you can refer to my scripts.</p></li>
<li><p>Global options</p>

<p>These options should be put into <code>~/.hammerspoon/private/awesomeconfig.lua</code> file.<br/>

<pre><code class="language-lua">
     -- You may want to use your own aria2 webclient.
     aria2URL = &quot;http://www.myaria2.com/&quot;

     -- Local files also are supported, like this:
     aria2URL = &quot;file:///Users/ashfinal/Downloads/glutton/index.html&quot;

     -- Make mode block idle to netspeed or just hide.
     idle_to_which = &quot;netspeed/hide/never&quot;

     -- When enter `app` mode show or hide applauncher tips automatically.
     show_applauncher_tips = true/false

     -- Put analogclock to somewhere by defining center point.
     aclockcenter = {x=200,y=200}

     -- Put calendar to somewhere by defining topleft point.
     caltopleft = {200,200}
     ```
</code></pre></li>

</ol>

</details>

<h2>Thanks to</h2>

<details>
<summary>More details</summary>

<p><a href="http://www.hammerspoon.org/">http://www.hammerspoon.org/</a></p>

<p><a href="https://github.com/zzamboni/oh-my-hammerspoon">https://github.com/zzamboni/oh-my-hammerspoon</a></p>

<p><a href="https://github.com/scottcs/dot_hammerspoon">https://github.com/scottcs/dot_hammerspoon</a></p>

<p><a href="https://github.com/dharmapoudel/hammerspoon-config">https://github.com/dharmapoudel/hammerspoon-config</a></p>

<p><a href="http://tracesof.net/uebersicht/">http://tracesof.net/uebersicht/</a></p>

</details>

<h2>Welcome to</h2>

<p>Share your scripts and thoughts.</p>

<p>: )</p>
