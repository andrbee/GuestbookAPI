<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Model\Role::class,1)->create()->each(function ($role){
            $role->name = 'admin';
            $role->save();
        });
        factory(App\Model\Role::class,1)->create()->each(function ($role){
            $role->name = 'user';
            $role->save();
        });

        factory(App\Model\User::class,5)->create();
        factory(App\Model\Review::class,50)->create();
        factory(App\Model\Comment::class,300)->create();
//
    }
}
