import { ReactNode } from 'react';
import style from './Botao.module.scss';

interface Props {
    children: ReactNode, 
    type?: "button" | "submit" | "reset" | undefined
    onClick?: () => void
}

export default function Botao({onClick, type, children}: Props) {
    return (
        <button className={style.botao} type={type} onClick={onClick}>
            {children}
        </button>
    );
}