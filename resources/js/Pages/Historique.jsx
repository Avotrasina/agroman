
import iconsearch from './image/iconsearch.png'


import { useState } from 'react';

const Historique = () => {
    const [selectedCategory,setSelectedCategory] = useState('Tout')

    const categories = ['Tout', 'Entrées', 'Sorties'];

    const scrollcarte = {
        maxHeight:'290px',
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
                        <h3>Historique</h3>
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

                <div className='mb-2'>Filtre</div>

                <div className="d-flex flex-row justify-content-start mb-4">
                    <div style={mymargin}>
                        <label class="d-block">Catégorie</label>
                        <select>
                            <option value="Fruit">Fruit</option>
                            <option value="Légume">Légume</option>
                            <option value="Autre">Autre</option>
                        </select>
                    </div>
                    <div className='form-group' style={mymargin}>
                        <label class="d-block">Date d'arrivée</label>
                        <input type="date" className='form-control-sm'></input>                
                    </div>
                    <div style={mymargin}>
                        <label class="d-block">Conteneur</label>
                        <select>
                            <option value="Congélateur">Congélateur</option>
                            <option value="Réfrigerateur">Réfrigerateur</option>
                            <option value="Chambre">Chambre de stockage</option>
                        </select>
                    </div>

                </div>

                <div className="d-flex flex-row justify-content-start mb-4">
                  <div className='form-group' style={mymargin}>
                        <label class="d-block">Destination/Provenance</label>
                        <select>
                            <option>Ambatondrazaka</option>
                            <option>Sambava</option>
                            <option>Ihosy</option>
                        </select>
                  </div>
                  <div style={mymargin}>
                        <label class="d-block">Utilisateur</label>
                        <select>
                            <option value="Rabe">Rabe</option>
                            <option value="Rakoto">Rakoto</option>
                            <option value="Rasoa">Rasoa</option>
                        </select>
                  </div>
                </div>
                
                <div className='d-flex flex-row flex-wrap' style = {scrollcarte}>
                    <table className='table table-bordered'>
                      <tr>
                        <th>Type</th>
                        <th>Date</th>
                        <th>Produit</th>
                        <th>Catégorie</th>
                        <th>Unité</th>
                        <th>Quantité</th>
                        <th>Conteneur</th>
                        <th>Destination/Provenance</th>
                        <th>Utilisateur</th>
                      </tr>
                      <tr>
                        <td>Entrée</td>
                        <td>25/02/2024</td>
                        <td>Fruit</td>
                        <td>Fraise</td>
                        <td>4</td>
                        <td>12 kg</td>
                        <td>Congélateur C1</td>
                        <td>Ambatondrazaka</td>
                        <td>Rakoto</td>
                      </tr>
                      <tr>
                        <td>Entrée</td>
                        <td>25/02/2024</td>
                        <td>Fruit</td>
                        <td>Fraise</td>
                        <td>4</td>
                        <td>12 kg</td>
                        <td>Congélateur C1</td>
                        <td>Ambatondrazaka</td>
                        <td>Rakoto</td>
                      </tr>
                    </table>
                </div>
            
        </div>
    </div>

        
    )
  };
  
  export default Historique;