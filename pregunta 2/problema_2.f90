!autor: aldo
program numeros_primos
    implicit none
    integer :: numero, i, j
    logical :: es_primo

    ! Solicitar un número positivo menor o igual a 100
    do
        print *, "Ingrese un numero entero positivo (no mayor de 100):"
        read *, numero
        if (numero > 0 .AND. numero <= 100) exit
        print *, "Numero invalido, intente de nuevo."
    end do

    ! Imprimir números primos entre 1 y el número ingresado
    print *, "Numeros primos entre 1 y", numero, ":"
    do i = 2, numero
        es_primo = .true.
        do j = 2, i - 1
            if (mod(i, j) == 0) then
                es_primo = .false.
                exit
            endif
        end do
        if (es_primo) then
            print *, i
        endif
    end do

end program numeros_primos