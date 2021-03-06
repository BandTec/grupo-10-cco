alter view vwListaComponentes as
    select distinct idComponente as idComponente, nomeComponente as nomeComponente,
     totalComponente as totalComponente, metricaComponente as metricaComponente, 
     medidaAlertaComponente as medidaAlertaComponente, Maquina.idMaquina as idMaquina from Componente 
        inner join MaquinaComponente
        on MaquinaComponente.fkComponente = Componente.idComponente
            inner join Maquina 
            on Maquina.idMaquina = MaquinaComponente.fkMaquina
                inner join Filial 
                on Filial.idFilial = Maquina.fkFilial
                    inner join Usuario 
                    on Usuario.fkIdFilial = Filial.idFilial