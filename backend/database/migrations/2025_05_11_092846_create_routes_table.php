<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('routes', function (Blueprint $table) {
            $table->id();
            $table->string('origin', 100);
            $table->string('destination', 100);
            $table->decimal('price', 8, 2)->unsigned();
            $table->integer('distance_km')->unsigned(); // distance in kilometers
            $table->time('travel_time'); // duration formatted as HH:MM:SS
            $table->string('route_code')->unique()->nullable() // e.g., "KIG-GIT-001"
            ->comment('Unique route code for quick reference');
            $table->timestamps();

            $table->unique(['origin', 'destination'], 'routes_origin_destination_unique');
            $table->index('origin');
            $table->index('destination');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('routes');
    }
};
