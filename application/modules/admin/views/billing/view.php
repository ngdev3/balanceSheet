
<style id="table_style" type="text/css">
    body
    {
        font-family: Arial;
        font-size: 10pt;
    }
    table
    {
        border: 4px solid #ccc;
        border-collapse: collapse;
    }
    table th
    {
        background-color: #F7F7F7;
        color: #333;
        font-weight: bold;
    }
    table th, table td
    {
        padding: 10px;
        border: 1px solid #ccc;
    }
</style>
            
			

<main class="main-content bgc-grey-100">
                <div id="mainContent">
                    <div class="container-fluid">
                        <h4 class="c-grey-900 mT-10 mB-30">View List</h4>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="bgc-white bd bdrs-3 p-20 mB-20">
                                <?php echo form_open_multipart('', array('class' => '', 'id' => 'ciatyform_id',)); ?>

                               <div class="form-row">
                                           
                               <div class="form-group col-md-6">
                                                    <label for="inputEmail4">Billing Date *</label>
                                                   <?php  
                                                        $name = @$result->date_of_bill;
                                                        $postvalue = @$_POST['date_of_bill'];
                                                        echo form_input(array('id'=>'datepicker','name' => 'date_of_bill', 'maxlength'=>'25', 'class' => 'form-control', 'placeholder' => 'Billing Date', 'value' => !empty($postvalue) ? $postvalue : $name )); ?>
                                                   <label  class="error"><div class="help-block" style="color:red"> <?php echo form_error('date_of_bill'); ?></div></label>
                                                </div>
                                              <div class="form-group col-md-6">
                                                  <label for="inputState2">Amount</label>
                                                  <?php  $name = @$result->amount;
                                                  $postvalue = @$_POST['amount'];
//                                                    $val = !empty($postvalue)? $postvalue:$name;
                                                  echo form_input(array('type' =>'number' , 'step'=>'0.01', 'min' =>'0', 'name' => 'amount','maxlength'=>'25', 'class' => 'form-control', 'id' => 'amount', 'placeholder' => 'Amount', 'value' => !empty($postvalue) ? $postvalue : $name ));
                                               ?>
                                                 <label  class="error"><div class="help-block" style="color:red"> <?php echo form_error('amount'); ?></div></label>
                                              </div>
                                          </div>
                                          <div class="form-row">
                                           
                                          <div class="form-group col-md-6">
                                                    <label for="inputState2">Quantity. *</label>
                                                    <?php  $name = @$result->quantity;
                                                    $postvalue = @$_POST['quantity'];
                                                    echo form_input(array('type' =>'number' , 'step'=>'0.01', 'min' =>'0', 'name' => 'quantity','maxlength'=>'25', 'class' => 'form-control', 'id' => 'quantity', 'placeholder' => 'Quantity', 'value' => !empty($postvalue) ? $postvalue : $name ));
                                                 ?>
                                                   <label  class="error"><div class="help-block" style="color:red"> <?php echo form_error('quantity'); ?></div></label>
                                                </div>
                                                          <div class="form-group col-md-6">
                                                              <label for="inputState2">Rate</label>
                                                              <?php  $name = @$result->rate;
                                                              $postvalue = @$_POST['rate'];
            //                                                    $val = !empty($postvalue)? $postvalue:$name;
                                                              echo form_input(array('type' =>'number' , 'step'=>'0.01', 'min' =>'0', 'name' => 'rate','maxlength'=>'25', 'class' => 'form-control', 'id' => 'rate', 'placeholder' => 'Rate', 'value' => !empty($postvalue) ? $postvalue : $name ));
                                                           ?>
                                                             <label  class="error"><div class="help-block" style="color:red"> <?php echo form_error('rate'); ?></div></label>
                                                          </div>
                                                      </div>
                                                      <button type="submit" class="btn btn-primary"> Submit </button>
                                                    </form>
                                                    <!-- <a href="<?=base_url()?>admin/campaign" id="back-btn" class="btn cur-p btn-primary pull-right">Back</a> -->
                                                    
                                                    <!--<h4 class="c-grey-900 mB-20">Simple Table</h4>-->
                                                    <table class="table" id="printTable" border="2" cellpadding="5">
                                <a onclick="printData()" id="back-btn" class="btn cur-p btn-primary pull-right" style="color:white">Print</a>

                                                        <thead>
                                                            <tr>
                                                                <th class="table_bg" scope="col">Serial No</th>
                                                <th class="table_bg" scope="col">Billing Date</th>
                                                <th class="table_bg" scope="col">Rate</th>
                                                <th class="table_bg" scope="col">Amount</th>
                                                <th class="table_bg" scope="col">Quantity</th>
                                            </tr>
                                        </thead>
                                        <tbody>    
                                            <?php if(!empty($finalarr)){ ?>
                                           <?php foreach($finalarr as $num=>$values) { ?>
                                            <tr>
                                                <td><?php echo $num+1;?></td>
                                               <td  class="table_bg" scope="row"><?php echo $_POST['date_of_bill']; ?></td>
                                               <td><?php echo $todays_rate;?></td>
                                               <td><?php echo $values['amount'];?></td>
                                               <td><?php echo $values['quant'];?></td>
                                            </tr>
                                            
                                            <?php }}?>
                                            <?php if(!empty($amount_sum)){ ?>
                                            <tr>
                                                <th  class="table_bg" scope="row"><?php echo ''; ?></th>
                                                <th  class="table_bg" scope="row"><?php echo ''; ?></th>
                                                <th  class="table_bg" scope="row"><?php echo 'Total'; ?></th>
                                               <th> <?php echo $amount_sum;?></th>
                                               <th><?php echo $quant_sum;?></th>
                                            </tr>
                                            <?php }?>
                                        </tbody>
                                    </table>
                                    <button type="button" class="btn btn-primary"> Store To DB </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
            
			<script>
                $( function() {
    $( "#datepicker" ).datepicker({ 
        
        dateFormat: "dd-mm-yy",
        setDate:new Date()
        
        });
  } );


  function printData()
{
    var abc = <?php $finalarr; ?>
    console.log(abc)
   var divToPrint=document.getElementById("printTable");
   newWin= window.open("");
   newWin.document.write(divToPrint.outerHTML);
   newWin.print();
  // newWin.close();
}

            </script>
            
 