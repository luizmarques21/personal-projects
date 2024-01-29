module.exports = {
    purge: [
        './resources/js/**/*.tsx',
        './resources/js/**/*.ts',
        './resources/views/**/*.php',
    ],
    darkMode: false, // or 'media' or 'class'
    theme: {
        extend: {
            fontFamily: {
                sans: ['Inter', 'sans-serif'],
            },
        },
    },
    variants: {
        extend: {},
    },
    plugins: [],
};
