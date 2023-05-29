~~~

import { useState } from 'react';
import useStyles from './styles';

const Component = () => {
  const [isDisabled, setDisabled] = useState(false);
  const s = useStyles([isDisabled]);
  
  return (
    <View style={s`.content`}>
      <Text style={s`.contentText &disabled`}>Hello World!</Text>
      <Button 
        style={s`.button bg:color:$white color:$black`} 
        onCLick={() => setDisabled(current => !current)}
        title="Toggle Disable"
      />
    </View>
  );
};

~~~

[Source](https://dev.to/rootstrap/como-manejar-estilos-con-nuestro-hook-usestyles-1o0p)
