<div class="page-header">
    <h2>Mantenimiento de Usuarios</h2>
</div>

<div class="panel panel-default">
    <div class="panel-heading">
        <h2 class="panel-title">Lista de Usuarios</h2>
    </div>
    
    <table class="table">
        <thead>
            <th width="80">ID</th>
            <th>Username</th>
            <th>Nombres</th>
            <th>correo</th>
            <th>Imagen</th>
            <th width="80">&nbsp;</th>
            <th width="80">&nbsp;</th>
        </thead>
        <tbody>
            <?php foreach($usuario as $usu){ ?>
            <tr>
                <td><?=$usu->id?></td>
                <td><?=$usu->username?></td>
                <td><?=$usu->nombres?></td>
                <td><?=$usu->correo?></td>
                 <td><?= $this->Html->link( $this->Html->image(['controller' => 'Usuarios', 'action' => 'imagen', $usu->id], ['height' => 50]) , ['controller' => 'Usuarios', 'action' => 'imagen', $usu->id], ['class' => 'colorbox', 'escape' => false])?></td>
            </tr>
            <?php } ?>
        </tbody>
    </table>
             
    <div class="panel-footer">
        <?= $this->Html->link('Nuevo', ['controller' => 'Usuarios', 'action' => 'registrar'], ['class' => 'btn btn-primary'])?>
    </div>
</div>
