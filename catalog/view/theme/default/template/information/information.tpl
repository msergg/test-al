<?php echo $header; ?>

<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  
  <?php /*echo $content_top;*/ ?>
  <div style="width:1000px; margin:0 auto;">
  <!--  <h1><?php echo $heading_title; ?></h1>-->
  <?php echo $description; ?>
 
<!-- <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>-->
  <?php /*echo $content_bottom;*/ ?></div>
  
  </div>
<?php echo $footer; ?>