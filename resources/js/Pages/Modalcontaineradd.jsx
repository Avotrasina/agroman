

function Modalcontaineradd() {

    const stylecontainer = {
        position:'absolute',
        top:'0',
        bottom:'0',
        right:'0',
        left:'0'
    }

    const stylediv = {
        width:'500px',
        borderRadius: '10px',
        boxShadow: '0px 3px 3px 1px rgba(128, 128, 128, 0.75)',
        padding:'40px'
    }


    return (
       <div className='d-flex flex-column justify-content-center align-items-center' style={stylecontainer}>
            <form style={stylediv} className='d-flex flex-column justify-content-start'>
                <div className='d-flex flex-row justify-content-center mt-3 mb-3'>
                    <div style={{fontWeight:'bold'}}><h3>Ajouter un nouveau conteneur</h3></div>
                </div>

                <div className='d-flex flex-row justify-content-start align-items-start mb-4'>
                    <div className='d-flex flex-row justify-content-center align-items-end' >
                        <div className='d-flex flex-column justify-content-center' style={{marginRight:'30px'}}>
                            <div>
                                <label class="d-block">Conteneur</label>
                                <select>
                                    <option value="Réfrigerateur">Réfrigerateur</option>
                                    <option value="Congélateur">Congélateur</option>
                                    <option value="Chambre">Chambre de stockage</option>
                                </select>
                            </div>

                            <div  className='form-group'>
                                <label class="d-block">Nom</label>
                                <input type="text" className='form-control-sm' value='C24'/>
                            </div>

                            <div  className='form-group'>
                                <label class="d-block">Capacité en unité</label>
                                <input type="number" className='form-control-sm' min='0' value='2'/>
                            </div>
                        </div>

                    </div>

                </div>

                <div className='d-flex flex-row justify-content-start mb-4' >
                    <div style={{marginRight:'20px'}}><button type="button" className="btn btn-sm" style={{backgroundColor:'#D4CBE5',color:'white'}}>Annuler</button></div>
                    <div><button type="submit" className="btn btn-sm" style={{backgroundColor:'#1C822C',color:'white'}}>Confirmer</button></div>
                </div>
            </form>
       </div>
    )

}

export default Modalcontaineradd;