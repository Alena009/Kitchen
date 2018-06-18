<table class="table table-bordered" id="report">
    <tr>
        <?php for ($i = 0; $i < count($headers); $i++): ?>
        <th><?php echo $headers[$i]; ?></th>
        <?php endfor; ?>
    </tr>
    <?php for ($j = 0; $j < count($data); $j++): ?>
    <tr>
        <?php for ($k = 0; $k < count($headers); $k++): ?>
        <td><?php echo $data[$j][$k]; ?></td>
        <?php endfor; ?>
    </tr>
    <?php endfor; ?>
</table>