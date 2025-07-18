select 
coalesce (pf.nome, pj.nomefantasia) as nome_criador,
count(a.id) as quantidade_cavalos
from reganimal as a
    inner join regsolicitante as sol on sol.id = a.criadorid
    inner join gerpessoa as p on p.id = sol.pessoaid
    left join gerpessoafisica as pf on p.id = pf.id
    left join gerpessoajuridica as pj on p.id =  pj.id
        where a.datamorte is null and a.status = 0 and p.ativo = true
group by coalesce(pf.nome, pj.nomefantasia)
order by quantidade_cavalos desc
limit 10;
