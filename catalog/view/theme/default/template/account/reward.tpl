<?php echo $header; ?>
<ul class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <li> <a href="<?php echo $breadcrumb['href']; ?>"> <?php echo $breadcrumb['text']; ?> </a> </li>
  <?php } ?>
</ul>
<div class="row"><?php echo $column_left; ?>
  <div id="content" class="span9"><?php echo $content_top; ?>
    <h1><?php echo $heading_title; ?></h1>
    <p><?php echo $text_total; ?> <b><?php echo $total; ?></b>.</p>
    <table class="table table-bordered table-hover">
      <thead>
        <tr>
          <td class="left"><?php echo $column_date_added; ?></td>
          <td class="left"><?php echo $column_description; ?></td>
          <td class="right"><?php echo $column_points; ?></td>
        </tr>
      </thead>
      <tbody>
        <?php if ($rewards) { ?>
        <?php foreach ($rewards  as $reward) { ?>
        <tr>
          <td class="left"><?php echo $reward['date_added']; ?></td>
          <td class="left"><?php if ($reward['order_id']) { ?>
            <a href="<?php echo $reward['href']; ?>"><?php echo $reward['description']; ?></a>
            <?php } else { ?>
            <?php echo $reward['description']; ?>
            <?php } ?></td>
          <td class="right"><?php echo $reward['points']; ?></td>
        </tr>
        <?php } ?>
        <?php } else { ?>
        <tr>
          <td class="center" colspan="3"><?php echo $text_empty; ?></td>
        </tr>
        <?php } ?>
      </tbody>
    </table>
    <div class="pagination"><?php echo $pagination; ?></div>
    <div class="buttons clearfix">
      <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
    </div>
    <?php echo $content_bottom; ?></div>
  <?php echo $column_right; ?></div>
<?php echo $footer; ?>