<?php

use Botble\RealEstate\Models\Project;
use Botble\RealEstate\Models\Property;

Route::group(['namespace' => 'Theme\Revised\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(apply_filters(BASE_FILTER_GROUP_PUBLIC_ROUTE, []), function () {
        Route::get('contact', 'ReviseHomeController@contact')->name('public.contact');

        Route::get(SlugHelper::getPrefix(Project::class, 'projects') . '/city/{slug?}', 'RevisedHomeController@getProjectsByCity')
            ->name('public.project-by-city');

        Route::get(SlugHelper::getPrefix(Property::class, 'properties') . '/city/{slug?}', 'RevisedHomeController@getPropertiesByCity')
            ->name('public.properties-by-city');

        Route::get('agents/{username}', 'RevisedHomeController@getAgent')
            ->name('public.agent');

        Route::get('ajax/cities', 'RevisedHomeController@ajaxGetCities')
            ->name('public.ajax.cities');
    });

    Theme::routes();

    Route::group(apply_filters(BASE_FILTER_GROUP_PUBLIC_ROUTE, []), function () {

        Route::get('/', 'RevisedHomeController@getIndex')->name('public.index');

        Route::get('sitemap.xml', [
            'as'   => 'public.sitemap',
            'uses' => 'RevisedHomeController@getSiteMap',
        ]);

        Route::get('{slug?}' . config('core.base.general.public_single_ending_url'), [
            'as'   => 'public.single',
            'uses' => 'RevisedHomeController@getView',
        ]);

        Route::get('ajax/properties', 'RevisedHomeController@ajaxGetProperties')->name('public.ajax.properties');
        Route::get('ajax/posts', 'RevisedHomeController@ajaxGetPosts')->name('public.ajax.posts');

    });

});
