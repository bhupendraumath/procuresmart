<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class CorsMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        
        if ($request->getMethod() === 'OPTIONS') {
            return response()->json([], 200)
                ->header('Access-Control-Allow-Origin', '*') // Allow all origins, adjust for your needs
                ->header('Access-Control-Allow-Methods', 'POST, GET, OPTIONS, PUT, DELETE')
                ->header('Access-Control-Allow-Headers', 'Authorization, Content-Type, X-Requested-With');
        }
          // Handle normal requests
        //   $response = $next($request);

        //   // Set CORS headers for non-OPTIONS requests
        //   $response->headers->set('Access-Control-Allow-Origin', '*');
        //   $response->headers->set('Access-Control-Allow-Methods', 'POST, GET, OPTIONS, PUT, DELETE');
        //   $response->headers->set('Access-Control-Allow-Headers', 'Authorization, Content-Type, X-Requested-With');
  
           return $next($request);
    }
}
