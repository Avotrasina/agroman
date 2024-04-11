import iconinterro from './image/iconinterro.png'


function Modalconfirm( {hideConfirm} ) {

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
            <div style={stylediv} className="d-flex flex-row justify-content-around align-items-start bg-white">
                <div>
                    <img src={iconinterro} alt="icon d'intérrogation"/>
                </div>
                <div className='d-flex flex-column justify-content-center align-items-center'>
                    <div className='d-flex flex-row justify-content-center align-items-center mb-4'>Voulez-vous vraiment supprimer l'élément?</div>
                    <div className='d-flex flex-row justify-content-center align-items-center'>
                        <button type="button" className="btn btn-md" style={{marginRight:'20px',backgroundColor:'#1C822C',color:'white'}}>Oui</button>
                        <div><button type='button' className="btn btn-md" style={{backgroundColor:'#D4CBE5',color:'white'}} onClick={hideConfirm}>Non</button></div>
                    </div>
                </div>
            </div>
       </div>
    )

}

export default Modalconfirm;