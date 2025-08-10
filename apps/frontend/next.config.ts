import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  /* config options here */
    async rewrites() {
    return [
      {
        source: '/api_be/:path*',
        destination: 'http://35.193.95.136:8000/:path*',
      },
    ];
  },
};

export default nextConfig;
