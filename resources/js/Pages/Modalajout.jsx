import { useRef, useState } from "react";

function Modalajout( {hideAjoutProduit} ) {
    const inputRef = useRef()

    const [selectedFile,setSelectedFile] = useState(null)

    //l'event quand un fichier est selectionné
    const handleOnChange = (event) => {
        if (event.target.files && event.target.files.length > 0) {
            setSelectedFile(event.target.files[0]);
        }
    };

    const onChooseFile = () => {
        inputRef.current.click();
    };

    const stylecontainer = {
        position:'absolute',
        top:'0',
        bottom:'0',
        right:'0',
        left:'0'
    }

    const stylediv = {
        width:'600px',
        borderRadius: '10px',
        boxShadow: '0px 3px 3px 1px rgba(128, 128, 128, 0.75)'
    }

    return (
       <div className='d-flex flex-column justify-content-center align-items-center' style={stylecontainer}>
            <form style={stylediv} className='bg-white'>
                <div className='d-flex flex-row justify-content-center mt-3 mb-3'>
                    <div style={{fontWeight:'bold'}}><h3>Ajouter un nouveau produit</h3></div>
                </div>

                <div className='d-flex flex-row justify-content-center align-items-start mb-4'>
                    <div className='d-flex flex-row justify-content-center align-items-end' >
                        <div className='d-flex flex-column justify-content-around' style={{marginRight:'30px'}}>
                            <div className='d-flex flex-column justify-content-start'>
                                <label class="d-block">Catégorie</label>
                                <select>
                                    <option>Fruit</option>
                                    <option>Légume</option>
                                    <option>Autre</option>
                                </select>
                            </div>

                            <div  className='form-group'>
                                <label class="d-block">Libellé</label>
                                <input type="text" className='form-control-sm' value='banane'/>
                            </div>

                            <div>
                                <label class="d-block">Type de conteneur</label>
                                <select>
                                    <option value="Réfrigerateur">Réfrigerateur</option>
                                    <option value="Congélateur">Congélateur</option>
                                    <option value="Chambre">Chambre de stockage</option>
                                </select>
                            </div>
                        </div>
                        <div style={{marginRight:'30px'}}>
                            <div  className='form-group'>
                                <label class="d-block">Valeur d'une unité en kg</label>
                                <input type="number" className='form-control-sm' value='4' min="0"/>
                            </div>
                            <div  className='form-group'>
                                <label class="d-block">Durée de vie à l'arrivée</label>
                                <input type="number" className='form-control-sm' value='4' min="0"/>
                            </div>
                        </div>
                    </div>
                    <div className='d-flex flex-column justify-content-start'>
                        <div className='mb-4 mt-1' style={{width:'146px',height:'100px',textAlign:'center',backgroundColor: selectedFile ? 'transparent' : '#D4CBE5'}}>
                        {selectedFile && <img src={URL.createObjectURL(selectedFile)} alt='profil' style={{ maxWidth: '100%', maxHeight: '100%'}}/>}
                        </div>
                        
                        <div style={{color:'#863718',fontWeight:'bold',maxWidth:'150px'}}>
                            <input type="file" accept="image/*" ref={inputRef} style={{display:'none'}} onChange={handleOnChange}/>
                            <span onClick={onChooseFile} style={{cursor:'pointer'}}>{ selectedFile ? selectedFile.name : 'Choisir une image...'}</span>
                        </div>
                    </div>
                </div>

                <div className='d-flex flex-row justify-content-start mb-4' >
                    <div style={{marginRight:'20px',marginLeft:'18px'}}><button type="button" className="btn btn-sm" style={{backgroundColor:'#D4CBE5',color:'white'}} onClick={hideAjoutProduit}>Annuler</button></div>
                    <div><button type="submit" className="btn btn-success btn-sm">Confirmer</button></div>
                </div>
            </form>
       </div>
    )

}

export default Modalajout;