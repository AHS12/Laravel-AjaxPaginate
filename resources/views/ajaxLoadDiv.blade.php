
{{-- this will have page named page_b --}}

<!-- Image loader -->
<div id='loaderDiv' class="container h-100 justify-content-center" style="display: none;">
    <img src='{{asset('picture/loding.gif')}}'>
</div>
<!-- Image loader -->

<div class="row">


@foreach ($usersDiv as $user)
    <div class="card" style="width: 18rem;">
        <img class="card-img-top" src="{{ asset('picture/'.$user->picture) }}" alt="Card image cap" width="100" height="200">
        <div class="card-body">
            <h5 class="card-title">{{$user->name}}</h5>
            <p class="card-text">{{$user->email}}</p>
            <p class="card-text">{{$user->created_at->diffForHumans()}}</p>

        </div>
    </div>
@endforeach
</div>

{!! $usersDiv->render() !!}  {{-- page_b --}}
