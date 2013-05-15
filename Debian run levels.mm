<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1339619812041" ID="ID_694769791" MODIFIED="1339619824179" TEXT="Debian run levels">
<node CREATED="1339619841952" ID="ID_714801903" MODIFIED="1339619845620" POSITION="right" TEXT="0">
<node CREATED="1339619847481" ID="ID_433911380" MODIFIED="1339619968785" TEXT="System Halt">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      nearly all modern x86 systems will turn off when reached run level 0
    </p>
    <p>
      
    </p>
    <p>
      older computers will stay turned on with message on display
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1339620416073" ID="ID_1802497753" MODIFIED="1339620425744" TEXT="/etc/rc0.d"/>
</node>
</node>
<node CREATED="1339619971729" ID="ID_580012340" MODIFIED="1339619975897" POSITION="right" TEXT="1">
<node CREATED="1339619976449" ID="ID_1260339834" MODIFIED="1339620131142" TEXT="Single User">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      rescue or troubleshooting mode: no daemons (services) are run
    </p>
    <p>
      
    </p>
    <p>
      using boot loader (lilo, grub), you can boot into this run level with adding single to the end of the kernel command line
    </p>
  </body>
</html></richcontent>
<node CREATED="1339620430753" ID="ID_1156978569" MODIFIED="1339620438279" TEXT="/etc/rc1.d"/>
</node>
</node>
<node CREATED="1339620136065" ID="ID_1450662044" MODIFIED="1339620140664" POSITION="right" TEXT="2, 3, 4, 5">
<node CREATED="1339620155681" ID="ID_1084423326" MODIFIED="1339620252560" TEXT="Full Multi User Mode">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      In Debian they are equivalent
    </p>
    <p>
      
    </p>
    <p>
      In some other distributions level 3 is used to run text console and level 5 for graphical login
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1339620448481" ID="ID_1018050087" MODIFIED="1339620459113" TEXT="/etc/rc2 - 5.d"/>
</node>
</node>
<node CREATED="1339620254257" ID="ID_843902650" MODIFIED="1339620256745" POSITION="right" TEXT="6">
<node CREATED="1339620258025" ID="ID_1701803711" MODIFIED="1339620344063" TEXT="System reboot">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Same like level 0, but on the end of the sequence &quot;reboot&quot; is issued instead of power down
    </p>
  </body>
</html></richcontent>
<node CREATED="1339620464937" ID="ID_533038476" MODIFIED="1339620472689" TEXT="/etc/rc6.d"/>
</node>
</node>
<node CREATED="1339620345705" ID="ID_676927644" MODIFIED="1339620387191" POSITION="right" TEXT="S">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      special runlevel used by the system during skip to another run level
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1339620497673" ID="ID_1439147008" MODIFIED="1339620502129" POSITION="left" TEXT="commands">
<node CREATED="1339620503473" ID="ID_1637736540" MODIFIED="1339620535473" TEXT="init N">
<node CREATED="1339620539705" ID="ID_1811279985" MODIFIED="1339620581465" TEXT="switch to runlevel N"/>
</node>
<node CREATED="1339620519409" ID="ID_1163620023" MODIFIED="1339620523496" TEXT="runlevel">
<node CREATED="1339620550705" ID="ID_1902775046" MODIFIED="1339620562857" TEXT="returns last and current runlevel"/>
</node>
<node CREATED="1339620506761" ID="ID_1181700737" MODIFIED="1339620703923" TEXT="telinit N">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      It is not recommended to use telinit command to shutdown and reboot the system due to need of special processing during these operations.
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1339620566073" ID="ID_421483952" MODIFIED="1339620575505" TEXT="switch to runlevel N"/>
</node>
</node>
</node>
</map>
