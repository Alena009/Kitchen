<!--Модальное окно для продуктов в справочник-->
<div class="modal fade" id="addNewProdToDir" tabindex="-1" role="dialog" 
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width: 800px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Новый продукт</h4>
            </div>
            <div class="modal-body" id="add-new-prod">               
                <p><b>Новая запись</b></p>
                <hr>
                <p>
                    <i>Категория продукта: </i>
                    <select id="prod-categ">
                        <?php for($cp = 0; $cp < count($listProdCateg); $cp++): ?>                                
                            <option value="<?php echo $listProdCateg[$cp]['id'];?>">
                                <?php echo $listProdCateg[$cp]['name_category'];?>
                            </option>
                        <?php endfor; ?>
                    </select>
                </p>
                <p>
                    <i>Название продукта: </i>
                    <input type="text" id="name-prod">
                </p>
                <p>
                    <i>Единицы измерения: </i>
                    <select id="edizm">
                        <?php for($ed = 0; $ed < count($listEdizm); $ed++): ?>
                        <option value="<?php echo $listEdizm[$ed]['id_edizm']; ?>">
                            <?php echo $listEdizm[$ed]['name_edizm']; ?>
                        </option>
                        <?php endfor; ?>
                    </select>
                </p>
                <p>
                    <i>Иконка продукта: </i>
                    <input type="file" name="uploadfile" id="uploadfile">
                </p>             
            </div>
            <div class="modal-footer">
                <input type="button" class="btn btn-success" onclick="saveNewProd(event); $('#addNewProdToDir').modal('hide');" value="Сохранить">                  
            </div>
        </div>
    </div>
</div>
