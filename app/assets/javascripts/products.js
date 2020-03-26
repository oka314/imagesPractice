$(document).on('turbolinks:load'), ()=> {
  const buildFileField = (index)=> {
    const html = `<div data-index="${index}" class="js-file_group">
      <input class="js-file" type="file"
      name="product[images_attributes][${index}][src]"
      id="product_images_attributes_${index}_src"><br>
      <div class="js-remove">削除</div>
      </div>`;
    return html;
  }
  let fileIndex = [1,2,3,4,5,6,7,8,9,10];
  $('#image-box').on('change','.js-file',function(e){
    $('#image-box').append(buildFileField(fileIndex[0]));
    fileIndex.shift();
    
  })
}