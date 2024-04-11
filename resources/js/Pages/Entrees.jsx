
import iconsearch from './image/iconsearch.png'

import Carteentree from './Carteentree'
import Carteentreeconfirm from './Carteentreeconfirm';

import { useState } from 'react';

const Entrees = () => {
    const [selectedCategory,setSelectedCategory] = useState('Tous les catégories')

    const categories = ['Tous les catégories', 'Fruits', 'Cat1', 'Cat2', 'Cat3', 'Cat4'];

    const scrollcarte = {
        maxHeight:'450px',
        overflowY:'auto'
    }

    const scrollcarteentree = {
        maxHeight:'450px',
        overflowY:'auto'
    }

    const mymargin = {
        marginRight:'40px'
    }

    const handleOnClickCategory = (category) => {
        setSelectedCategory(category)
    }

    return (
    <div className="d-flex flex-row justify-content-around mt-3">
        <div className='' style={{width:'100%'}}>
           
                <div className="d-flex flex-row justify-content-start align-items-center mb-3">
                    <div style={mymargin}>
                        <h3>Entrées</h3>
                    </div>
                    
                    <div className='form-group' style={mymargin}>
                        <div class="input-group input-group-sm" >
                            <span class="input-group-text"><img src={iconsearch} alt=''/></span>
                            <input id="email" class="form-control" placeholder="Rechercher un produit" />
                        </div>
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

                <div className='d-flex flex-row justify-content-start'>
                    <div className='d-flex flex-column p-3' style = {{...scrollcarte,border:'1px solid black',marginRight:'35px'}}>
                        <Carteentree type="entrer"/>
                        <Carteentree type="entrer"/>
                        <Carteentree type="entrer"/>    
                        <Carteentree type="entrer"/>
                    </div>
                    <div className='d-flex flex-column p-4' style={{...scrollcarteentree,border:'1px solid black'}}>
                        <div style={{fontWeight:'bold',textAlign:'center'}} className='mb-3'>Les produits à entrer</div>
                        <div className='d-flex flex-row justify-content-between'>
                            <div style={{marginRight:'100px'}}>Destination</div>
                            <div>
                                <select>
                                    <option value="Ambatondrazaka">Ambatondrazaka</option>
                                    <option value="Sambava">Sambava</option>
                                    <option value="Ihosy">Ihosy</option>
                                </select>
                            </div>
                            </div>
                        <div className='d-flex flex-row justify-content-between'>
                            <div>Unité de stock</div>
                            <div style={{fontWeight:'bold'}}>12 t</div>
                        </div>
                        <div className='d-flex flex-row justify-content-between'>
                            <div>Nombre d'unité total</div>
                            <div style={{fontWeight:'bold'}}>12</div>
                        </div>
                        <div className='d-flex flex-row justify-content-between mb-5'>
                            <div>Poids total</div>
                            <div style={{fontWeight:'bold'}}>36 kg</div>
                        </div>
                        <div className='d-flex flex-column justify-content-around mb-3' >
                                <Carteentreeconfirm />
                                <Carteentreeconfirm />
                                <Carteentreeconfirm />
                        </div>
                        <div className='d-flex flex-row justify-content-end'>
                            <div><button type='button' className="btn btn-md" style={{marginRight:'20px',backgroundColor:'#D4CBE5',color:'white'}}>Annuler</button></div>
                            <div><button type="button" className="btn btn-md" style={{backgroundColor:'#1C822C',color:'white'}}>Confirmer</button></div>
                        </div>
                    </div>
                </div>
            
        </div>
    </div>

        
    )
  };
  
  export default Entrees;