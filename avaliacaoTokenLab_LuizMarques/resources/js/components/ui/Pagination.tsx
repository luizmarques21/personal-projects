import React, {useMemo} from 'react';
import {ChevronLeft, ChevronRight} from "react-feather";
import clsx from "clsx";

type Props = {
    current: number;
    counts?: number;
    max: number;
    onPagination: (page: number) => void;
}

export const Pagination: React.FC<Props> = ({current, counts = 5, max, onPagination}) => {
    const pages = useMemo(() => {
        const pages = [];
        let offset = 1;

        while (pages.length < counts) {
            if (pages.length < counts && current + offset <= max) {
                pages.push(current + offset);
            }

            if (pages.length < counts && current - offset >= 1) {
                pages.push(current - offset)
            }

            if (current + offset > max && current - offset < 1) {
                break;
            }

            offset++;
        }

        pages.push(current);
        pages.sort((a, b) => a - b);

        return pages;
    }, [current, max]);

    return <div className="flex justify-center">
        <div
            onClick={() => onPagination(Math.max(1, current - 1))}
            className="duration-150 flex items-center px-4 py-3 bg-blue-500 hover:bg-blue-600 text-white text-center cursor-pointer rounded-l-lg"
        >
            <ChevronLeft/>
        </div>

        {pages.map(page =>
            <div
                key={page}
                onClick={() => onPagination(page)}
                className={clsx(
                    'duration-150 px-5 py-4 text-center text-white', {
                        'bg-blue-500 hover:bg-blue-600 cursor-pointer': page !== current,
                        'bg-blue-400': page === current,
                    }
                )}
            >
                {page}
            </div>
        )}

        <div
            onClick={() => onPagination(Math.min(max, current + 1))}
            className="duration-150 flex items-center px-4 py-3 bg-blue-500 hover:bg-blue-600 text-white text-center cursor-pointer rounded-r-lg"
        >
            <ChevronRight/>
        </div>
    </div>
};
