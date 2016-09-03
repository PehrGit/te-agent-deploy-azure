<?php

$urlRaw = "https://www.a2o.si/tmp/te/ea-azure/azuredeploy.json";
$urlEnc = urlencode($urlRaw);

?>
<html>

    <body>
        <a href="https://portal.azure.com/#create/Microsoft.Template/uri/<?= $urlEnc ?>" target="_blank">Deploy!</a>
    </body>
</html>
