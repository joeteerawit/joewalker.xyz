import React from 'react'

const CardImage = () => {
    return (
        <div className="max-w-sm rounded-lg shadow-lg shadow-gray-400">
            <a href="#">
                <img className="rounded-lg w-96 h-80" src="https://source.unsplash.com/random?orientation=landscape" alt="" />
            </a>
        </div>
    )
}

export default CardImage