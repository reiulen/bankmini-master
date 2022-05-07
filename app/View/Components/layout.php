<?php

namespace App\View\Components;

use App\Models\Setting;
use Illuminate\View\Component;

class layout extends Component
{
    public $title;
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public function __construct($title = '')
    {
        $this->title = $title;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        $setting = Setting::first();
        return view('components.layout', compact('setting'));
    }
}
