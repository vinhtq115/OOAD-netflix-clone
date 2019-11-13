import React,{useState} from 'react'
import JawboneContent from './Jawbone/JawboneContent'

const Collapsible = ({name, plot}) => {

  const [collapse, setCollapse] = useState(false)

  return (
    <div class="collapsible">
      <JawboneContent name={name} plot={plot}/>
    </div>
  )
}

export default Collapsible
