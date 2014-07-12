Category.delete_all

Category.create(name:'Портрет', id:1)
Category.create(name:'Природа', id:2)
Category.create(name:'Місто', id:3)



Pic.delete_all

Pic.create(title:'1', description:'...', :image => File.open("public/images/222.jpg"), category_id:1)
Pic.create(title:'2', description:'...', :image => File.open("public/images/222.jpg"), category_id:1)
Pic.create(title:'3', description:'...', :image => File.open("public/images/222.jpg"), category_id:1)
Pic.create(title:'4', description:'...', category_id:1)
Pic.create(title:'5', description:'...', category_id:1)
Pic.create(title:'6', description:'...', category_id:1)
Pic.create(title:'7', description:'...', category_id:1)
Pic.create(title:'8', description:'...', category_id:1)
Pic.create(title:'9', description:'...', category_id:1)
Pic.create(title:'10', description:'...', category_id:1)

Pic.create(title:'11', description:'...', category_id:2)
Pic.create(title:'12', description:'...', category_id:2)
Pic.create(title:'13', description:'...', category_id:2)
Pic.create(title:'14', description:'...', category_id:2)
Pic.create(title:'15', description:'...', category_id:2)
Pic.create(title:'16', description:'...', category_id:2)
Pic.create(title:'17', description:'...', category_id:2)
Pic.create(title:'18', description:'...', category_id:2)
Pic.create(title:'19', description:'...', category_id:2)
Pic.create(title:'20', description:'...', category_id:2)

Pic.create(title:'21', description:'...', category_id:3)
Pic.create(title:'22', description:'...', category_id:3)
Pic.create(title:'23', description:'...', category_id:3)
Pic.create(title:'24', description:'...', category_id:3)
Pic.create(title:'25', description:'...', category_id:3)
Pic.create(title:'26', description:'...', category_id:3)
Pic.create(title:'27', description:'...', category_id:3)
Pic.create(title:'28', description:'...', category_id:3)
Pic.create(title:'29', description:'...', category_id:3)
Pic.create(title:'30', description:'...', category_id:3)

