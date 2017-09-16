<div class="page-header">
    <h2>Mantenimiento de Articulos</h2>
</div>
<?=$this->Form->create($articulo, ['type' => 'file']); ?>
<div class="panel panel-default">
    <div class="panel-heading">
        <h2 class="panel-title">Registro de Articulo</h2>
    </div>
    <div class="panel-body">
        
        <div class="form-group">
            <?= $this->Form->control('usuario_id', ['class' => 'form-control']) ?>
        </div>
        
        <div class="form-group">
            <?=$this->Form->control('titulo', ['class' => 'form-control'])?>
        </div>
        
        <div class="form-group">
            <?=$this->Form->control('contenido', ['class' => 'form-control'])?>
        </div>
        
        <div class="form-group">
            <?=$this->Form->control('fecha', ['class' => 'form-control'])?>
        </div>
        
        <div class="form-group">
            <?=$this->Form->control('tags', ['class' => 'form-control'])?>
        </div>
        
    </div>
    <div class="panel-footer">
        <div class="btn-toolbar">
            <?= $this->Form->submit('Guardar', ['class' => 'btn btn-primary']); ?>
            <?= $this->Html->link('Cancelar', ['action' => 'mantenimiento'], ['class' => 'btn btn-default'])?>
        </div>
    </div>
    
</div>
<?=$this->Form->end()?>