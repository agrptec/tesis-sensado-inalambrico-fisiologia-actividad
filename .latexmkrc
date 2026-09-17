# Compilación local: auxiliares aislados y PDF final en la raíz.
$out_dir = '.build';
$pdf_mode = 1;

add_cus_dep('acn', 'acr', 0, 'crear_acronimos');
sub crear_acronimos {
    my ($base) = @_;
    require Cwd;
    require File::Basename;
    my $anterior = Cwd::getcwd();
    my $carpeta = File::Basename::dirname($base);
    my $nombre = File::Basename::basename($base);
    chdir($carpeta) or return 1;
    my $resultado = system('makeindex', '-s', "$nombre.ist", '-t', "$nombre.alg",
                           '-o', "$nombre.acr", "$nombre.acn");
    chdir($anterior) or return 1;
    return $resultado;
}

# Publicar el PDF sólo al finalizar correctamente la compilación.
END {
    if ($? == 0 && -f '.build/main.pdf') {
        require File::Copy;
        File::Copy::copy('.build/main.pdf', 'main.pdf')
            or warn "No fue posible copiar el PDF final: $!\n";
    }
}
