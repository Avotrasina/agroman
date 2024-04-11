import iconerror from './image/iconerror.png'


function Modalerror() {

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
       <div className='d-flex justify-content-center align-items-center' style={stylecontainer}>
            <div style={stylediv} className="d-flex flex-row justify-content-around align-items-start">
                <div>
                    <img src={iconerror} alt="icon d'erreur"/>
                </div>
                <div className='d-flex flex-column justify-content-center align-items-center'>
                    <div className='d-flex flex-row justify-content-center align-items-center mb-4'>Opération terminée avec des erreurs !</div>
                    <div className='d-flex flex-row justify-content-center align-items-center'>
                        <div><button type='button' className="btn btn-md" style={{backgroundColor:'#ED474A',color:'white'}}>Fermer</button></div>
                    </div>
                </div>
            </div>
       </div>
    )

}

export default Modalerror;