<body

<div class="articulos view large-9 medium-12 columns content">
      
    <div class="panel panel-default">
    <h3><?= h($articulo->titulo) ?></h3>
    <table class="vertical-table">
        <tr>
            <th scope="row"><?= __('Id') ?></th> 
        </tr>
        <td><?= h($articulo->id) ?></td>
        <tr>
            <th scope="row"><?= __('titulo') ?></th>
      
        </tr>
              <td><?= h($articulo->titulo) ?></td>
        <tr>
            <th scope="row"><?= __('Autor') ?></th>
        </tr>
        <td><?=$articulo->usuario->nombres?></td>
                <tr>
        <th scope="row"><?= __('tag') ?></th>
        </tr>
                    <td><?= h($articulo->tags) ?></td>
        <tr>
        <th scope="row"><?= __('Fecha') ?></th>
        </tr>
                    <td><?= h($articulo->fecha) ?></td>
        <tr>
                <th scope="rowgroup"><?= __('Contenido') ?></th>
        </tr>
                <tr>
    <td><?= h($articulo->contenido) ?></td>
            </tr>
    </table>
</div>
        <div class="panel-footer">
        <div class="btn-toolbar">
            <?= $this->Html->link('Atras', ['action' => 'index'], ['class' => 'btn btn-default'])?>
        </div>
    </div>
</body>