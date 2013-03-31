<?php echo $header; ?>
<div id="content">
<ul class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
  <?php } ?>
</ul>
<div class="box">
  <div class="box-heading">
    <h1><i class=""></i> <?php echo $heading_title; ?></h1>
  </div>
  <div class="box-content">
    <div class="buttons"><a href="<?php echo $cancel; ?>" class="btn"><i class="icon-remove"></i> <?php echo $button_cancel; ?></a></div>
    <div class="tabbable tabs-left">
      <ul class="nav nav-tabs">
        <li class="active"><a href="#tab-return" data-toggle="tab"><?php echo $tab_return; ?></a></li>
        <li><a href="#tab-product" data-toggle="tab"><?php echo $tab_product; ?></a></li>
        <li><a href="#tab-history" data-toggle="tab"><?php echo $tab_history; ?></a></li>
      </ul>
      <div class="tab-content">
        <div class="tab-pane active" id="tab-return">
          <table class="form">
            <tr>
              <td><?php echo $text_return_id; ?></td>
              <td><?php echo $return_id; ?></td>
            </tr>
            <?php if ($order) { ?>
            <tr>
              <td><?php echo $text_order_id; ?></td>
              <td><a href="<?php echo $order; ?>"><?php echo $order_id; ?></a></td>
            </tr>
            <?php } else { ?>
            <tr>
              <td><?php echo $text_order_id; ?></td>
              <td><?php echo $order_id; ?></td>
            </tr>
            <?php } ?>
            <tr>
              <td><?php echo $text_date_ordered; ?></td>
              <td><?php echo $date_ordered; ?></td>
            </tr>
            <?php if ($customer) { ?>
            <tr>
              <td><?php echo $text_customer; ?></td>
              <td><a href="<?php echo $customer; ?>"><?php echo $firstname; ?> <?php echo $lastname; ?></a></td>
            </tr>
            <?php } else { ?>
            <tr>
              <td><?php echo $text_customer; ?></td>
              <td><?php echo $firstname; ?> <?php echo $lastname; ?></td>
            </tr>
            <?php } ?>
            <tr>
              <td><?php echo $text_email; ?></td>
              <td><?php echo $email; ?></td>
            </tr>
            <tr>
              <td><?php echo $text_telephone; ?></td>
              <td><?php echo $telephone; ?></td>
            </tr>
            <?php if ($return_status) { ?>
            <tr>
              <td><?php echo $text_return_status; ?></td>
              <td id="return-status"><?php echo $return_status; ?></td>
            </tr>
            <?php } ?>
            <tr>
              <td><?php echo $text_date_added; ?></td>
              <td><?php echo $date_added; ?></td>
            </tr>
            <tr>
              <td><?php echo $text_date_modified; ?></td>
              <td><?php echo $date_modified; ?></td>
            </tr>
          </table>
        </div>
        <div class="tab-pane" id="tab-product">
          <table class="form">
            <tr>
              <td><?php echo $text_product; ?></td>
              <td><?php echo $product; ?></td>
            </tr>
            <tr>
              <td><?php echo $text_model; ?></td>
              <td><?php echo $model; ?></td>
            </tr>
            <tr>
              <td><?php echo $text_quantity; ?></td>
              <td><?php echo $quantity; ?></td>
            </tr>
            <tr>
              <td><?php echo $text_return_reason; ?></td>
              <td><?php echo $return_reason; ?></td>
            </tr>
            <tr>
              <td><?php echo $text_opened; ?></td>
              <td><?php echo $opened; ?></td>
            </tr>
            <tr>
              <td><?php echo $text_return_action; ?></td>
              <td><select name="return_action_id">
                  <option value="0"></option>
                  <?php foreach ($return_actions as $return_action) { ?>
                  <?php if ($return_action['return_action_id'] == $return_action_id) { ?>
                  <option value="<?php echo $return_action['return_action_id']; ?>" selected="selected"><?php echo $return_action['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $return_action['return_action_id']; ?>"><?php echo $return_action['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select></td>
            </tr>
            <?php if ($comment) { ?>
            <tr>
              <td><?php echo $text_comment; ?></td>
              <td><?php echo $comment; ?></td>
            </tr>
            <?php } ?>
          </table>
        </div>
        <div class="tab-pane" id="tab-history">
          <div id="history"></div>
          <table class="form">
            <tr>
              <td><?php echo $entry_return_status; ?></td>
              <td><select name="return_status_id">
                  <?php foreach ($return_statuses as $return_status) { ?>
                  <?php if ($return_status['return_status_id'] == $return_status_id) { ?>
                  <option value="<?php echo $return_status['return_status_id']; ?>" selected="selected"><?php echo $return_status['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $return_status['return_status_id']; ?>"><?php echo $return_status['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_notify; ?></td>
              <td><input type="checkbox" name="notify" value="1" /></td>
            </tr>
            <tr>
              <td><?php echo $entry_comment; ?></td>
              <td><textarea name="comment" cols="40" rows="8" style="width: 99%"></textarea>
                <div style="margin-top: 10px; text-align: right;"><a onclick="history();" id="button-history" class="btn"><i class="icon-plus-sign"></i> <?php echo $button_add_history; ?></a></div></td>
            </tr>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
$('select[name=\'return_action_id\']').on('change', function() {
	$.ajax({
		url: 'index.php?route=sale/return/action&token=<?php echo $token; ?>&return_id=<?php echo $return_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'return_action_id=' + this.value,
		beforeSend: function() {
			$('.success, .warning, .attention').remove();

			$('.box').before('<div class="attention"><img src="view/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		success: function(json) {
			$('.success, .warning, .attention').remove();

			if (json['error']) {
				$('.box').before('<div class="alert alert-error" style="display: none;">' + json['error'] + '</div>');

				$('.warning').fadeIn('slow');
			}

			if (json['success']) {
				$('.box').before('<div class="alert alert-success" style="display: none;">' + json['success'] + '</div>');

				$('.success').fadeIn('slow');
			}
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('#history .pagination a').on('click', function() {
	$('#history').load(this.href);

	return false;
});

$('#history').load('index.php?route=sale/return/history&token=<?php echo $token; ?>&return_id=<?php echo $return_id; ?>');

function history() {
	$.ajax({
		url: 'index.php?route=sale/return/history&token=<?php echo $token; ?>&return_id=<?php echo $return_id; ?>',
		type: 'post',
		dataType: 'html',
		data: 'return_status_id=' + encodeURIComponent($('select[name=\'return_status_id\']').val()) + '&notify=' + encodeURIComponent($('input[name=\'notify\']').attr('checked') ? 1 : 0) + '&append=' + encodeURIComponent($('input[name=\'append\']').attr('checked') ? 1 : 0) + '&comment=' + encodeURIComponent($('textarea[name=\'comment\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-history').attr('disabled', true);
			$('#history').prepend('<div class="attention"><img src="view/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#button-history').attr('disabled', false);
			$('.attention').remove();
		},
		success: function(html) {
			$('#history').html(html);

			$('textarea[name=\'comment\']').val('');

			$('#return-status').html($('select[name=\'return_status_id\'] option:selected').text());
		}
	});
}
//--></script>
<?php echo $footer; ?>