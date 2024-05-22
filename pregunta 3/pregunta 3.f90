program collatz
    implicit none
    integer :: valor

    print *, 'Ingrese valor: '
    read *, valor

    do while (valor /= 1)
        call operar(valor)
        print *, 'valor: ', valor
    end do
end program collatz

subroutine operar(valor)
    integer, intent(inout) :: valor

    if (valor /= 1) then
        if (mod(valor, 2) == 0) then
            valor = valor / 2
        else
            valor = valor * 3 + 1
        end if
    end if
end subroutine operar