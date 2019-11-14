export default {
  modalButton: {
    padding: ['0.7rem', '1.8rem'],
    width: '100%',
    backgroundColor: 'transparent',
    border: 0,
    fontSize: '1rem',
    color: '#fff',
    cursor: 'pointer',
    marginBottom: '0',
    display: 'flex',
    justifyContent: 'center',
    backgroundImage: 'linear-gradient(transparent, black)',
    '&:hover': {
      backgroundColor:'white'
    },
  },

  launcherWrapper: {
    bottom: '0px',
    position: 'absolute',
    backgroundColor: 'red',
    width: '100%',
    display: 'flex',
    justifyContent: 'center',
    'modalButton':{
      visibility: 'hidden'
    },
    ':hover .modalButton':{
      visibility: 'visible'
    }
  }

};
