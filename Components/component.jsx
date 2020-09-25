import React from 'react';
import { withComponentFeatures } from 'universal-dashboard'

const UDComponent = props => {
  return <div key={props.id}>{props.text}</div>;
}

export default withComponentFeatures(UDComponent)