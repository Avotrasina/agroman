import iconedituser from './image/iconedituser.png'
import icondeleteuser from './image/icondeleteuser.png'


import { useState } from 'react';

const Modification = () => {
    const [selectedCategory,setSelectedCategory] = useState('Conteneur')

    const categories = ['Conteneur', 'Catégorie', 'Destination', 'Provenance'];

    // const scrollcarte = {
    //     maxHeight:'290px',
    //     overflowY:'auto'
    // }

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
                        <h3>Modification</h3>
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

                {selectedCategory === 'Conteneur' && (
                <div className="d-flex flex-row justify-content-start align-items-end mb-4">
                      <div className='form-group' style={mymargin}>
                          <label class="d-block">Nouveau type de conteneur</label>
                          <input type="text" value="Entrepôt" className='form-control-sm'/>
                      </div>
                      <div>
                          <button type="button" className="btn btn-sm" style={{backgroundColor:'#863718',color:'white'}}>+ Ajouter</button>
                      </div>
                </div>
                )}

                {selectedCategory === 'Catégorie' && (
                <div className="d-flex flex-row justify-content-start align-items-end mb-4">
                      <div className='form-group' style={mymargin}>
                          <label class="d-block">Nouvelle catégorie</label>
                          <input type="text" value="Epices" className='form-control-sm'/>
                      </div>
                      <div>
                          <button type="button" className="btn btn-sm" style={{backgroundColor:'#863718',color:'white'}}>+ Ajouter</button>
                      </div>
                </div>
                )}

                {selectedCategory === 'Destination' && (
                <div className="d-flex flex-row justify-content-start align-items-end mb-4">
                      <div className='form-group' style={mymargin}>
                          <label class="d-block">Nouvelle destination</label>
                          <input type="text" value="Ankofafa" className='form-control-sm'/>
                      </div>
                      <div>
                          <button type="button" className="btn btn-sm" style={{backgroundColor:'#863718',color:'white'}}>+ Ajouter</button>
                      </div>
                </div>
                )}

                {selectedCategory === 'Provenance' && (
                <div className="d-flex flex-row justify-content-start align-items-end mb-4">
                      <div className='form-group' style={mymargin}>
                          <label class="d-block">Nouvelle provenance</label>
                          <input type="text" value="Tanambao" className='form-control-sm'/>
                      </div>
                      <div>
                          <button type="button" className="btn btn-sm" style={{backgroundColor:'#863718',color:'white'}}>+ Ajouter</button>
                      </div>
                </div>
                )}
                
                <div>
                  { selectedCategory==='Conteneur' && (
                    <table className='table table-bordered' style={{width:'50%'}}>
                      <tr>
                        <th>Type</th>
                        <th>Nom</th>
                        <th>Capacité(en unités)</th>
                        <th colSpan='2'>Actions</th>
                      </tr>
                      <tr>
                        <td>Congélateur</td>
                        <td>C1</td>
                        <td>1</td>
                        <td>
                          <button type='button' className="btn btn-md" style={{backgroundColor:'#1C822C',color:'white'}}>
                            <img src={iconedituser} alt="icon pour editer l'user"/>
                          </button>
                        </td>
                        <td>
                          <button type='button' className="btn btn-md" style={{backgroundColor:'#ED474A',color:'white'}}>
                            <img src={icondeleteuser} alt="icon pour editer l'user"/>
                          </button>
                        </td>
                      </tr>
                      <tr>
                        <td>Réfrigérateur</td>
                        <td>R1</td>
                        <td>5</td>
                        <td>
                          <button type='button' className="btn btn-md" style={{backgroundColor:'#1C822C',color:'white'}}>
                            <img src={iconedituser} alt="icon pour editer l'user"/>
                          </button>
                        </td>
                        <td>
                          <button type='button' className="btn btn-md" style={{backgroundColor:'#ED474A',color:'white'}}>
                            <img src={icondeleteuser} alt="icon pour editer l'user"/>
                          </button>
                        </td>
                      </tr>

                    </table>
                    )
                  }

                  { selectedCategory==='Catégorie' && (
                    <table className='table table-bordered' style={{width:'20%'}}>
                      
                      <tr>
                        <th>Nom</th>
                        <th colSpan='2'>Actions</th>
                      </tr>

                      <tr>
                        <td>Fruits</td>
                        <td>
                          <button type='button' className="btn btn-md" style={{backgroundColor:'#1C822C',color:'white'}}>
                            <img src={iconedituser} alt="icon pour editer l'user"/>
                          </button>
                        </td>
                        <td>
                          <button type='button' className="btn btn-md" style={{backgroundColor:'#ED474A',color:'white'}}>
                            <img src={icondeleteuser} alt="icon pour editer l'user"/>
                          </button>
                        </td>
                      </tr>

                      <tr>
                        <td>Agrumes</td>
                        <td>
                          <button type='button' className="btn btn-md" style={{backgroundColor:'#1C822C',color:'white'}}>
                            <img src={iconedituser} alt="icon pour editer l'user"/>
                          </button>
                        </td>
                        <td>
                          <button type='button' className="btn btn-md" style={{backgroundColor:'#ED474A',color:'white'}}>
                            <img src={icondeleteuser} alt="icon pour editer l'user"/>
                          </button>
                        </td>
                      </tr>
                     

                    </table>
                    )
                  }

                  { (selectedCategory==='Destination' || selectedCategory==='Provenance') && (
                    <table className='table table-bordered' style={{width:'25%'}}>
                      
                      <tr>
                        <th>Nom</th>
                        <th colSpan='2'>Actions</th>
                      </tr>

                      <tr>
                        <td>Antarandolo</td>
                        <td>
                          <button type='button' className="btn btn-md" style={{backgroundColor:'#1C822C',color:'white'}}>
                            <img src={iconedituser} alt="icon pour editer l'user"/>
                          </button>
                        </td>
                        <td>
                          <button type='button' className="btn btn-md" style={{backgroundColor:'#ED474A',color:'white'}}>
                            <img src={icondeleteuser} alt="icon pour editer l'user"/>
                          </button>
                        </td>
                      </tr>

                      <tr>
                        <td>Andrainjato</td>
                        <td>
                          <button type='button' className="btn btn-md" style={{backgroundColor:'#1C822C',color:'white'}}>
                            <img src={iconedituser} alt="icon pour editer l'user"/>
                          </button>
                        </td>
                        <td>
                          <button type='button' className="btn btn-md" style={{backgroundColor:'#ED474A',color:'white'}}>
                            <img src={icondeleteuser} alt="icon pour editer l'user"/>
                          </button>
                        </td>
                      </tr>
                     

                    </table>
                    )
                  }
                </div>
            
        </div>
    </div>

        
    )
  };
  
  export default Modification;