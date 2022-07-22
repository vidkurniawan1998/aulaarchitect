<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo $page->meta_title ?></title>
    <meta name="keywords" content="<?php echo $page->meta_keywords ?>"/>
    <meta name="description" content="<?php echo $page->meta_description ?>">
    <meta name="author" content="<?php echo $author ?>">
    <meta name="revisit-after" content="2 days"/>
    <meta name="robots" content="index, follow"/>
    <meta name="rating" content="General"/>
    <meta http-equiv="charset" content="ISO-8859-1"/>
    <meta http-equiv="content-language" content="en"/>
    <meta name="MSSmartTagsPreventParsing" content="true"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="reply-to" content="info@redsystem.id">
    <meta http-equiv="expires" content="Mon, 28 Jul <?php echo date('Y')+1;?> 11:12:01 GMT">
    <link href="<?php echo base_url() ?>assets/template_front/img/favicons/favicon.ico" rel="shortcut icon" type="image/x-icon"/>
    <link href="<?php echo base_url() ?>assets/template_front/img/favicons/apple-icon.png" rel="apple-touch-icon" type="image/x-icon"/>
    <link href="<?php echo base_url() ?>assets/template_front/css/styles.min.css" rel="stylesheet">
</head>
<body>
    <div id="overlay"></div>
    <div id="top">
        <a href="#" id="sidebar-button"></a>
        <header id="logo">
            <a href="<?php echo site_url() ?>">
                <img height="80" src="<?php echo site_url() ?>assets/template_front/img/new_logo_stretch.png" alt="">
            </a>
        </header>
    </div>
    <div id="main-wrapper">
        <div id="content">
            <?php echo $content ?>
        </div>
        <div id="sidebar">
            <div id="widgets">
                <?php echo $menu ?>
            </div>
            <?php echo $footer ?>
        </div>
    </div>
    <div class='container-loading hide'>
        <div class='loader'>
            <div class='loader--dot'></div>
            <div class='loader--dot'></div>
            <div class='loader--dot'></div>
            <div class='loader--dot'></div>
            <div class='loader--dot'></div>
            <div class='loader--dot'></div>
            <div class='loader--text'></div>
            <div class='loader--desc'></div>
        </div>
    </div>
<script src="<?php echo base_url() ?>assets/template_front/js/scripts.min.js"></script>
</body>
</html>