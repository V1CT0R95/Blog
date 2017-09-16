<!DOCTYPE html>
<body
<div class="page-header">
    <div class="jumbotron">
    <h1>Blog App</h1>
    <p>Bienvenido <?=$nombres?></p>
</div>
    <h2>Listado de Articulos</h2>

<div class="panel panel-default">
    <div class="panel-heading">
        <h2 class="panel-title">Listado</h2>
    </div>
    
    <table class="table">
        <thead>
            <th width="80">ID</th>
            <th>Autor</th>
            <th>Titulo</th>
            <th>Fecha de publicación</th>
            <th>Tags</th>
            <th>Mostrar</th>
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
               <td><?= $this->Html->link(__('Ver'), ['action' => 'Vista', $art->id]) ?></td>
                 <td><?= $this->Html->link( $this->Html->image(['controller' => 'Articulos', 'action' => 'imagen', $art->id], ['height' => 32]) , ['controller' => 'Articulos', 'action' => 'imagen', $art->id], ['class' => 'colorbox', 'escape' => false])?></td>
            </tr>
            <?php } ?>
        </tbody>
    </table>
             
    <div class="panel-footer">
     
    </div>
</div>
</body>