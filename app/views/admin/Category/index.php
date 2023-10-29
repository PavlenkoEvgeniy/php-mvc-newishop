<!-- Default box -->
<div class="card">

    <div class="card-header">
        <a class="btn btn-default btn-flat" href="<?= ADMIN ?>/category/add"><i class="fas fa-plus"></i> Добавить категорию</a>
    </div>

    <div class="card-body">
        <div class="table-responsive">
            <?php new \app\widgets\menu\Menu(['cache' => 0, 'cacheKey' => 'admin_menu', 'class' => 'table table-bordered', 'tpl' => APP . '/widgets/menu/admin_table_tpl.php', 'container' => 'table']) ?>
        </div>
    </div>
</div>
<!-- /.card -->