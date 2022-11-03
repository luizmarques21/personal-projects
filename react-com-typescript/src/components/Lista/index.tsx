import Item from './Item';
import style from './Lista.module.scss';
import { ITarefa } from '../../types/tarefa';

function Lista({tarefas}: {tarefas: ITarefa[]}) {
    return (
        <aside className={style.listaTarefas}>
            <h2>Estudos do dia</h2>
            <ul>
                {tarefas.map((item, index) => (
                    <Item {...item} key={index} />
                ))}
            </ul>
        </aside>
    )
}

export default Lista;