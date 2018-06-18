    <div class="tabbable">
        <?php if(count($listProdCateg) > 0): if (count($prods) > 0):  ?>
            <div class="col-lg-2 col-md-2 col-sm-4 col-xs-4">
                <ul class="nav nav-pills nav-stacked">
                    <?php for ($k = 0; $k < count($listProdCateg); $k++): ?>
                        <li <?php if ($listProdCateg[$k]['id'] == $idDefCatProd): echo 'class="active"'; endif; ?>>
                            <a href="#add-prod-<?php echo $listProdCateg[$k]['id']; ?>" 
                               data-toggle="tab">
                                <?php echo $listProdCateg[$k]['name_category']; ?>
                            </a>
                        </li> 
                    <?php endfor; ?>
                </ul>
            </div>   
        
            <div class="tab-content col-lg-10 col-md-10 col-sm-8 col-xs-8">
                <?php for ($t = 0; $t < count($listProdCateg); $t++): ?>  
                    <div id="add-prod-<?php echo $listProdCateg[$t]['id']; ?>" 
                         class="tab-pane <?php if ($listProdCateg[$t]['id'] == $idDefCatProd): echo 'active'; endif; ?>">
                        <?php for ($q = 0; $q < count($prods); $q++): ?>
                            <?php if ($prods[$q]['id_category_prod'] == $listProdCateg[$t]['id']): ?>
                                <div class="row mini-prods" 
                                     data-id="<?php echo $prods[$q]["iddir_prod"]; ?>"                                     
                                     data-prod-name="<?php echo $prods[$q]["name_prod"]; ?>">
                                    <div class="col-lg-5">
                                        <div contenteditable="true" class="name-prod">
                                            <?php echo $prods[$q]["name_prod"]; ?>
                                        </div>
                                        <p>Ед. измерения: 
                                            <select class="edizm-prod">
                                                <?php for($ed = 0; $ed < count($listEdizm); $ed++): ?>
                                                    <?php if ($listEdizm[$ed]['id_edizm'] == $prods[$q]["id_edizm"]): ?>
                                                        <option selected value="<?php echo $listEdizm[$ed]['id_edizm']; ?>">
                                                            <?php echo $listEdizm[$ed]['name_edizm']; ?>
                                                        </option>
                                                    <?php else: ?>
                                                        <option value="<?php echo $listEdizm[$ed]['id_edizm']; ?>">
                                                            <?php echo $listEdizm[$ed]['name_edizm']; ?>
                                                        </option>
                                                    <?php endif; ?>
                                                <?php endfor; ?>  
                                            </select>
                                        </p>
                                        <p>Категория: 
                                            <select class="cat-prod">
                                                <?php for($ed = 0; $ed < count($listProdCateg); $ed++): ?>
                                                    <?php if ($listProdCateg[$ed]['id'] == $prods[$q]["id_category_prod"]): ?>
                                                        <option selected value="<?php echo $listProdCateg[$ed]['id']; ?>">
                                                            <?php echo $listProdCateg[$ed]['name_category']; ?>
                                                        </option>
                                                    <?php else: ?>
                                                        <option value="<?php echo $listProdCateg[$ed]['id']; ?>">
                                                            <?php echo $listProdCateg[$ed]['name_category']; ?>
                                                        </option>
                                                    <?php endif; ?>
                                                <?php endfor; ?>  
                                            </select>
                                        </p>                                          
                                    </div>
                                    <div class="col-lg-4">
                                        <img src="<?php echo $prods[$q]["img_prod"]; ?>" class="img-prod" alt="product"><br> 
                                        <?php if (User::isAdmin()): if(empty($prods[$q]["img_prod"])): ?>
                                            <a href="#" onclick="hideShowElem($(this).next());">Добавить картинку</a>
                                            <div class="hidden">                                            
                                                <input type="file" name="uploadfile" data-id="<?php echo $prods[$q]["iddir_prod"]; ?>">
                                            </div>   
                                        <?php else: ?>
                                            <a href="#" data-id="<?php echo $prods[$q]["iddir_prod"]; ?>"                                               
                                               data-img="<?php echo $prods[$q]["img_prod"]; ?>"
                                               onclick="deletePicture($(this)); $(this).prevAll('img').removeAttr('ng-src');">
                                                Удалить картинку
                                            </a>
                                        <?php endif; endif; ?>    
                                    </div>
                                    <div class="col-lg-3">
                                        <a href="#" data-id="<?php echo $prods[$q]["iddir_prod"]; ?>" 
                                           class="glyphicon glyphicon-ok" 
                                           onclick="updDirRec(this);" 
                                           title="Сохранить изменения">Сохранить изменения</a>
                                        <?php if (!$prods[$q]["blocked1"] && !$prods[$q]["blocked2"]): ?>
                                            <a href="#" data-id="<?php echo $prods[$q]["iddir_prod"]; ?>" 
                                               data-table="kt_dir_prod" 
                                               class="glyphicon glyphicon-remove" 
                                               onclick="delDirRec(this);" 
                                               title="Удалить запись">Удалить</a>
                                        <?php endif;?>
                                    </div>
                                </div>   
                            <?php endif; ?>
                        <?php endfor; ?> 
                    </div>
                <?php endfor; ?> 
            </div>    
        <?php else: "Нет ни одной записи"; endif; 
              else: echo "Нет ни одной категории продукта. Заполните сначала категории продуктов в справочнике категорий. "; 
              endif; ?>     
    </div>
