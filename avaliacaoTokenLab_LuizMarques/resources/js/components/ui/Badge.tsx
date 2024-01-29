import React from 'react';
import {Icon} from "react-feather";

type Props = {
    icon?: Icon;
    title?: string;
}

export const Badge: React.FC<Props> = ({icon: Icon, title, children}) => {
    return <div
        title={title}
        className="group px-1 mr-1 relative flex items-center text-sm text-green-500 bg-green-100 border border-green-500 rounded"
    >
        {Icon && <Icon className="mr-1 flex-shrink-0" size={14}/>}
        {children}
    </div>
};
