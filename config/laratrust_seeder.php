<?php


return [
    /**
     * Control if the seeder should create a user per role while seeding the data.
     */
    'create_users' => false,

    /**
     * Control if all the laratrust tables should be truncated before running the seeder.
     */
    'truncate_tables' => true,

    'roles_structure' => [
        'administrator' => [
            'users' => 'c,r,u,d',
            'capstone' => 'c,r,u,d',
        ],
        'adviser' => [
            'users' => 'c,r,u',
            'capstone' => 'c,r,u,d',
        ],
        'instructor' => [
            'users' => 'c,r,u',
            'capstone' => 'c,r,u,d',
        ],
        'panel' => [
            'users' => 'c,r,u',
            'capstone' => 'c,r,u,d',
        ],
        'secretary' => [
            'users' => 'c,r,u',
            'capstone' => 'c,r,u,d',
        ],
        'student' => [
            'users' => 'c,r,u,d',
            'capstone' => 'c,r,u,d'

        ],
        'archiver' => [
            'users' => 'c,r,u',
            'capstone' => 'c,r,u,d',
        ],
        'faculty' => [
            'users' => 'c,r,u',
            'capstone' => 'c,r,u,d',
        ],


    ],

    'permissions_map' => [
        'c' => 'create',
        'r' => 'read',
        'u' => 'update',
        'd' => 'delete'
    ]
];
