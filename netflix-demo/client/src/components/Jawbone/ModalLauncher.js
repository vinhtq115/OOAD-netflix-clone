import React, { Component } from 'react';
import injectSheet from 'react-jss';
import styles from './ModalLauncherStyles'; // Import styles
import JawboneContent from './JawboneContent';
import JawbonePlot from './JawbonePlot'
import JawboneTrailer from './JawboneTrailer'

// Declaration of the component as React Class Component
class ModalLauncher extends Component {

  // Init of the component before it is mounted.
  // Sets the modal visibility (showModal) to false.
  constructor(props) {
    super(props);
    this.state = {
      showModal: false,
    };
  }

  // Handle the visibility of the modal.
  // If `state.showModal` is false, sets it to true,
  // if is true, sets it to false.
  handleToggleModal() {
    this.setState({ showModal: !this.state.showModal });
  }

  render() {
    const { classes } = this.props;
    const { showModal } = this.state;

    return (
      <div className={classes.launcherWrapper}>
        <div
          className={classes.modalButton}
          onClick={() => this.handleToggleModal()}
        >
          Show Info
        </div>

        {showModal &&
          <JawboneContent onCloseRequest={() => this.handleToggleModal()}>
            <div className="jawbone-wrapper">
              <JawbonePlot/>
              <JawboneTrailer/>
            </div>
          </JawboneContent>}
      </div>
    );
  }
}

export default injectSheet(styles)(ModalLauncher);
