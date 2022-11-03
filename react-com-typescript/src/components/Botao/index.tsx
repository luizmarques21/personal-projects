import React, { ReactNode } from 'react';
import style from './Botao.module.scss';

class Botao extends React.Component<{children: ReactNode, type?: "button" | "submit" | "reset" | undefined}> {
    render () {
        const {children, type='button'} = this.props;
        return (
            <button className={style.botao} type={type}>
                {children}
            </button>
        )
    }
}

export default Botao;