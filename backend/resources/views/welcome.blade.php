<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Velo-Tick API Docs (v1)</title>
    <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
    <style>
        /* hide default triangle on summary */
        details summary::-webkit-details-marker { display: none; }
    </style>
</head>
<body class="bg-gray-100 text-gray-800 p-6">
<div class="max-w-4xl mx-auto space-y-4">
    <h1 class="text-3xl font-bold">Velo-Tick API Documentation (v1)</h1>

    @foreach($grouped as $tag => $routes)
        <details class="bg-white shadow rounded-lg overflow-hidden">
            <summary class="cursor-pointer px-4 py-3 bg-gray-200 hover:bg-gray-300 flex justify-between items-center">
                <span class="font-medium uppercase">{{ $tag }}</span>
                <span class="text-sm text-gray-600">{{ $routes->count() }} endpoint{{ $routes->count() > 1 ? 's' : '' }}</span>
            </summary>
            <div class="px-4 py-3">
                <table class="w-full text-left">
                    <thead class="border-b">
                    <tr>
                        <th class="py-2">Method</th>
                        <th class="py-2">URI</th>
                        <th class="py-2">Action</th>
                        <th class="py-2">Name</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($routes as $r)
                        <tr class="hover:bg-gray-50">
                            <td class="py-2">
                                @foreach ($r['methods'] as $m)
                                    <span class="inline-block px-2 py-1 mr-1 text-xs font-semibold text-white
                        {{ $m==='GET' ? 'bg-blue-500'
                         : ($m==='POST' ? 'bg-green-500'
                         : ($m==='PATCH' ? 'bg-yellow-500' : 'bg-gray-500')) }}
                        rounded">
                        {{ $m }}
                      </span>
                                @endforeach
                            </td>
                            <td class="py-2"><code>/{{ $r['uri'] }}</code></td>
                            <td class="py-2"><small>{{ class_basename($r['action']) }}</small></td>
                            <td class="py-2"><small>{{ $r['name'] ?? '–' }}</small></td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </details>
    @endforeach

</div>
</body>
</html>
