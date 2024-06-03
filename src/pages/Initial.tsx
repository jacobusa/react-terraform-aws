import * as React from 'react';

export const Initial: React.FC = () => {
  const mode = import.meta.env.MODE ?? '';
  const version = import.meta.env.VITE_VERSION ?? '';
  const fake = import.meta.env.VITE_FAKE ?? '';
  return (
    <h1>
      Initial page. Bonjourno TERRAFORM WORKS. Mode: {mode} final product?
      version:{version}
      <br />
      mode:{mode}
      <br />
      fake:{fake}
    </h1>
  );
};
