import React from 'react'

const Card = () => {
    return (
        <div class="relative max-w-xs mx-auto mt-20">
            <img class="h-64 w-full object-cover rounded-md" src="https://source.unsplash.com/random" alt="Random image" />
            <div class="absolute inset-0 rounded-md"></div>
            <div class="absolute inset-0 flex items-end">
                <h2 class="text-white text-xl m-4">Get Lost in Mountains</h2>
            </div>
        </div>
    )
}

export default Card