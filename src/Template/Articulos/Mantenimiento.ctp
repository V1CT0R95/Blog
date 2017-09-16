<!DOCTYPE html>
<body>
<div class="panel panel-default">
    <div class="panel-heading">
        <h2 class="panel-title">Mantenimiento de Articulos</h2>
    </div>
    
    <table class="table">
        <thead>
            <th width="80">ID</th>
            <th>Autor</th>
            <th>Titulo</th>
            <th>Fecha de publicación</th>
            <th>Tags</th>
            <th width="80">&nbsp;</th>
            <th width="80">&nbsp;</th>
        </thead>
        <tbody>
            <?php foreach($articulo as $art){ ?>
            <tr>
                <td><?=$art->id?></td>
                <td><?=$art->usuario->nombres?></td>
                <td><?=$art->titulo?></td>
                <td><?=$art->fecha?></td>
                <td><?=$art->tags?></td>
                <td><?= $this->Html->link('Editar', ['controller' => 'Articulos', 'action' => 'editar', $art->id], ['class' => 'btn btn-warning']) ?></td>
                <td><?= $this->Html->link('Eliminar', '/Articulos/eliminar/'.$art->id, ['class' => 'btn btn-danger']) ?></td>
            </tr>
            <?php } ?>
        </tbody>
    </table>
             
    <div class="panel-footer">
        <?= $this->Html->link('Nuevo', ['controller' => 'Articulos', 'action' => 'registrar'], ['class' => 'btn btn-primary'])?>
    </div>
</div>