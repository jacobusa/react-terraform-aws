import * as React from 'react'


export const Initial: React.FC = () => {
    const mode = import.meta.env.MODE ?? ""
    return (
        <h1>Initial page. Bonjourno TERRAFORM WORKS. Mode: {mode}</h1>
        );
}