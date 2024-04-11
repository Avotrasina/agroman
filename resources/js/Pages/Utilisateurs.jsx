

import Carteuser from './Carteuser'
import { useState } from 'react';
import Modaluseradd from './Modaluseradd';

const Utilisateur = () => {
    //css
    const scrollcarte = {
        maxHeight:'290px',
        overflowY:'auto'
    }

    const mymargin = {
        marginRight:'40px'
    }


    const [selectedCategory,setSelectedCategory] = useState('Tous les utilisateurs')
    const [adduser,setAddUser] = useState(false)

    const categories = ['Tous les utilisateurs', 'Administrateur', 'Utilisateur'];
    
    const handleOnClickCategory = (category) => {
        setSelectedCategory(category)
    }

    const hideAddUser = () => {
        setAddUser(false)
    }


    return (
    <div className="d-flex flex-row justify-content-around mt-3">
        <div className='' style={{width:'100%'}}>
           
                <div className="d-flex flex-row justify-content-start align-items-center mb-3">
                    <div style={mymargin}>
                        <h3>Utilisateurs</h3>
                    </div>
                    
                    <div>
                        <button type="button" className="btn btn-sm" style={{backgroundColor:'#1C822C',color:'white'}} onClick={()=>setAddUser(true)}>+ Utilisateurs</button>
                        {adduser && <Modaluseradd hideAddUser={hideAddUser}/>}
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


                
                <div className='d-flex flex-row flex-wrap' style = {scrollcarte}>
                    <Carteuser/>
                    <Carteuser/>
                    <Carteuser/>
                </div>
            
        </div>
    </div>

        
    )
  };
  
  export default Utilisateur;