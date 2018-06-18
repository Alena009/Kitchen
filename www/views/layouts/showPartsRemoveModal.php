<!--Модальное окно показа части требования в списании -->
<div class="modal fade" id="showPartsRemoveModal-<?php echo $listRequests[$i]['id']; ?>" tabindex="-1" role="dialog" 
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width: 800px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Выдача</h4>
                <h5>Требование № <?php echo $listRequests[$i]['id']; ?></h5>
                <h5>Дата <?php echo $listRequests[$i]['date_request']; ?></h5>
                <h5>Счет 
                    <select id="list-score-<?php echo $listRequests[$i]['id']; ?>" 
                            name="list-score">
                        <?php foreach ($score as $key => $value): ?>
                            <option value="<?php echo $value['id_dir_score']; ?>"><?php echo $value['num_score']; ?></option>
                        <?php endforeach; ?>
                    </select> 
                </h5>
            </div>   
            <div class="modal-body">

            </div>
            <div class="modal-footer">
                <input type="button" class="btn btn-success" value="Выдать" 
                       data-id="<?php echo $listRequests[$i]['id']; ?>"
                       data-score=""
                       onclick="saveRemoveProd($(this));">                
            </div>
        </div>
    </div>
</div>