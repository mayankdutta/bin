#!/usr/bin/env bash

npm install @material-ui/core
npm install @material-ui/icons
npm install -D tailwindcss@npm:@tailwindcss/postcss7-compat postcss autoprefixer
npm install @craco/craco

echo '


⚠️  Do some changes ⚠️
 "scripts": {
-     "start": "react-scripts start",
-     "build": "react-scripts build",
-     "test": "react-scripts test",
+     "start": "craco start",
+     "build": "craco build",
+     "test": "craco test",
      "eject": "react-scripts eject"
    }, '

> craco.config.js
touch craco.config.js

# For moving content in the file
cat << EOF >> craco.config.js

// craco.config.js
module.exports = {
  style: {
    postcss: {
      plugins: [
        require('tailwindcss'),
        require('autoprefixer'),
      ],
    },
  },
}

EOF

npx tailwindcss init
> tailwind.config.js
cat << EOF >> tailwind.config.js
// tailwind.config.js
  module.exports = {
    purge: ['./src/**/*.{js,jsx,ts,tsx}', './public/index.html'],
    darkMode: false, // or 'media' or 'class'
    theme: {
      extend: {},
    },
    variants: {
      extend: {},
    },
    plugins: [],
  }
EOF

> ./src/index.css  #for emptying the file

cat << EOF >> ./src/index.css
/* ./src/index.css */
@tailwind base;
@tailwind components;
@tailwind utilities;
EOF

echo "all done"
