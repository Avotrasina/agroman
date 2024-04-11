
import iconsearch from './image/iconsearch.png';

import Carte from './Carte';
import { useState } from 'react';

import Modalajout from './Modalajout';

const Produits = () => {
    //partie css
    const scrollcarte = {
        maxHeight:'290px',
        overflowY:'auto'
    }

    const mymargin = {
        marginRight:'40px'
    }

    const hideAjoutProduit = () => {
        setAjoutProduit(false)
    }

    //pour gérer la fenêtre modale de l'ajout de produit
    const [ajoutProduit,setAjoutProduit] = useState(false)
    
    const [selectedCategory,setSelectedCategory] = useState('Tous les catégories')

    const categories = ['Tous les catégories', 'Fruits', 'Cat1', 'Cat2', 'Cat3', 'Cat4'];


    const handleOnClickCategory = (category) => {
        setSelectedCategory(category)
    }

    return (
    <div className="d-flex flex-row justify-content-around mt-3">
        <div className='' style={{width:'100%'}}>
           
                <div className="d-flex flex-row justify-content-start align-items-center mb-3">
                    <div style={mymargin}>
                        <h3>Produits</h3>
                    </div>
                    
                    <div className='form-group' style={mymargin}>
                        <div class="input-group input-group-sm" >
                            <span class="input-group-text"><img src={iconsearch} alt=''/></span>
                            <input id="email" class="form-control" placeholder="Rechercher un produit" />
                        </div>
                    </div>

                    <div>
                        <button type="button" className="btn btn-sm" style={{backgroundColor:'#1C822C',color:'white'}} onClick={()=>setAjoutProduit(true)}>+ Produit</button>
                        { ajoutProduit && <Modalajout hideAjoutProduit={hideAjoutProduit}/>}
                    </div>
                </div>
                

                <div className="d-flex flex-row justify-content-start mb-3">
                    {categories.map(category => (
                            <div
                                key={category}
                                style={{
                                    ...mymargin,
                                    color: selectedCategory === category ? '#863718' : 'normal',
                                    textDecoration: selectedCategory === category ? 'underline' : 'none',
                                    fontWeight: selectedCategory === category ? 'bold' : 'normal',
                                    cursor: 'pointer'
                                }}
                                onClick={()=> handleOnClickCategory(category)}
                            >
                                {category}
                            </div>
                    ))}
                </div>

                <div className='mb-2'>Filtre</div>

                <div className="d-flex flex-row justify-content-start mb-4">
                    <div style={mymargin}>
                        <label class="d-block">Conteneur</label>
                        <select>
                            <option value="Réfrigerateur">Réfrigerateur</option>
                            <option value="Congélateur">Congélateur</option>
                            <option value="Chambre">Chambre de stockage</option>
                        </select>
                    </div>
                    <div className='form-group' style={mymargin}>
                        <label class="d-block">Date d'arrivée</label>
                        <input type="date" className='form-control-sm'></input>                
                    </div>
                    <div className='form-group' style={mymargin}>
                        <label class="d-block">Arrivée dans les</label>
                        <input type="text" value="3j" className='form-control-sm'/>
                    </div>
                    <div className='form-group' style={mymargin}>
                        <label class="d-block">Provenance</label>
                        <select>
                            <option>Ambatondrazaka</option>
                            <option>Sambava</option>
                            <option>Ihosy</option>
                        </select>
                    </div>
                </div>
                
                <div className='d-flex flex-row flex-wrap' style = {scrollcarte}>
                    <Carte/>
                    <Carte/>
                    <Carte/>
                    <Carte/>
                    <Carte/>
                    <Carte/>
                    <Carte/>
                    <Carte/>
                    <Carte/>
                    <Carte/>
                    <Carte/>
                </div>
            
        </div>
    </div>

        
    )
  };
  
  export default Produits;