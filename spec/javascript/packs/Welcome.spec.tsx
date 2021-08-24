import React from 'react';
import renderer from 'react-test-renderer';
import Welcome from '../../../app/javascript/packs/Welcome';

it('renders correctly', () => {
  const tree = renderer
    .create(<Welcome message="Hello World!" />)
    .toJSON();
  expect(tree).toMatchSnapshot();
});