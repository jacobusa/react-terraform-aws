import * as React from 'react';

export const Initial: React.FC = () => {
  const mode = import.meta.env.MODE ?? '';
  const version = import.meta.env.VERSION ?? '';
  return (
    <h1>
      Initial page. Bonjourno TERRAFORM WORKS. Mode: {mode} final product?
      {version}
    </h1>
  );
};
