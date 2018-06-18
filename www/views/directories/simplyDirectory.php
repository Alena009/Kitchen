<div class="row" style="background: lightgrey;">
    <p><i>Добавить новую запись</i></p>    
    <?php for($t = 0; $t < $countDirectoryFields; $t++): ?>
        <?php if($directoryFields[$t]["visibility"]): ?>
            <input type="text" placeholder="<?php echo $directoryFields[$t]["description_field"]; ?>" 
                   data-id="<?php echo $directoryFields[$t]["name_field"]; ?>" 
                   class="dir-fields-<?php echo $directoryName; ?>">
        <?php endif; ?>
    <?php endfor; ?>    
    <input type="button" class="btn btn-success" value="Сохранить" 
           data-name-dir="<?php echo $directoryName; ?>" 
           data-id-dir="<?php echo $idDirectory; ?>" 
           onclick="insertRecordSimplyDir(this)">    
</div>
<hr>
<div class="row">
    <table class="table table-bordered" id="<?php echo $directoryName; ?>">
        <tr>
            <?php for($i = 0; $i < $countDirectoryFields; $i++): ?>
                <th><?php echo $directoryFields[$i]["description_field"]; ?></th>
            <?php endfor; ?>
                <th>Редактировать</th>
                <?php if (User::isAdmin()): ?>
                <th>Удалить</th>
                <?php endif; ?>
        </tr>
        <?php for ($j = 0; $j < count($records); $j++): ?>
        <tr>
            <?php for ($k = 0; $k < $countDirectoryFields; $k++): ?>
                <td class="<?php echo $directoryFields[$k]["name_field"]; ?>"
                    data-id="<?php echo $records[$j][$directoryFields[$k]["name_field"]]; ?>">
                    <?php echo $records[$j][$directoryFields[$k]["name_field"]]; ?>
                </td>
            <?php endfor; ?>
            <td class="non-updated"><a href="#" class="glyphicon glyphicon-pencil"
                   onclick="simplyUpd(event)"
                   data-id=""
                   title="Редактировать"></a></td>      
            <?php if (User::isAdmin()): ?>
            <td class="non-updated"><a href="#" class="glyphicon glyphicon-remove"
                   onclick="simplyDel(event)"
                   title="Удалить из списка"></a></td>
            <?php endif; ?>
        </tr>
        <?php endfor; ?>        
    </table>
</div>