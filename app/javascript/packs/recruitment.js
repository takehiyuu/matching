if (document.URL.match( /recruitments/ )) {
     if (document.URL.match( /new/ ) || document.URL.match( /edit/ )) {
          document.addEventListener('DOMContentLoaded', function() {
               const ImageList = document.getElementById('image-list')

               const createImageHTML = (blob) => {

                    const imageElement = document.createElement('div')
                    imageElement.setAttribute('class', "image-element")
                    let imageElementNum = document.querySelectorAll('.image-element').length

                    const blobImage = document.createElement('img')
                    blobImage.setAttribute('src', blob)
                    blobImage.setAttribute('class', 'recruit-img')

                    const inputHTML = document.createElement('input')
                    inputHTML.setAttribute('id', `company_image_${imageElementNum}`)
                    inputHTML.setAttribute('name', 'recruitment[images][]')
                    inputHTML.setAttribute('type', 'file')

                    imageElement.appendChild(blobImage)
                    imageElement.appendChild(inputHTML)
                    ImageList.appendChild(imageElement)
                    inputHTML.addEventListener('change', (e) => {
                         file = e.target.files[0];
                         blob = window.URL.createObjectURL(file);
                 
                         createImageHTML(blob)
                    })
               }

                    document.getElementById('company_image').addEventListener('change', (e) => {
                         const file = e.target.files[0];
                         const blob = window.URL.createObjectURL(file);

                         createImageHTML(blob)

               });
          });
     }
}