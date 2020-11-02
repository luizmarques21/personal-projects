delete from eve_evento_sindicato_participante where evo_id = 22;

delete from dvo_divida_cobranca where dvo_id between 46 and 46;

delete from dva_divida where dvp_id = 32;

delete from cba_cobranca where cba_id between 46 and 46

delete from pgo_pagamento where pgo_id between 14 and 15;

delete from pga_pagamento_divida where pga_id between 14 and 15;

delete from dvt_divida_desconto where dvt_id between 3 and 8;

delete from cbn_cobranca_evento_sindicato where evo_id = 22;

delete from eva_evento_sindicato_presenca where eva_id between 130 and 159



select dvo_id from dvo_divida_cobranca dvo inner join cba_cobranca cc on dvo.cba_id = cc.cba_id inner join dva_divida dva on dvo.dva_id = dva.dva_id and dvp_id = 32

select dvt_id from dvt_divida_desconto dvt inner join dva_divida dva on dvt.dva_id = dva.dva_id where dvp_id = 32

select pga_id from pga_pagamento_divida pga inner join dva_divida dva on pga.dva_id = dva.dva_id where dvp_id = 32

select pgo_id from pgo_pagamento pgo left join cba_cobranca cba on pgo.cba_id = cba.cba_id left join dva_divida dva on dva.psa_id_pagador = cba.psa_id where dva.dvp_id = 32

select cba_id from cba_cobranca cba inner join dva_divida dva on dva.psa_id_pagador = cba.psa_id where dva.dvp_id = 32 order by cba_id

select * from eva_evento_sindicato_presenca eva inner join eve_evento_sindicato_participante eve on eva.eve_id = eve.eve_id where evo_id = 22 order by eva_id

select * from dva_divida dd where dvp_id = 32

select * from eve_evento_sindicato_participante where evo_id = 22