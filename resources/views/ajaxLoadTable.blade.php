{{-- This Will have Page Named page_a --}}


<table class="table">
    <thead class="thead-dark">
        <tr>
            <th scope="col">#</th>
            <th scope="col">Picture</th>
            <th scope="col">Name</th>
            <th scope="col">Email</th>
            <th scope="col">Creation Time</th>
        </tr>
    </thead>
    <tbody id="table_load">
        <!-- Image loader -->
        <div id='loader' class="container h-50 justify-content-center" style="display: none;">
            <img src='{{asset('picture/loding.gif')}}'>
        </div>
        <!-- Image loader -->
        @foreach ($users as $user)
        <tr>
            <td>{{$loop->iteration}}</td>
            <td><img src={{ asset('picture/'.$user->picture) }} alt="picture" height="50" width="50"></td>
            <td>{{$user->name}}</td>
            <td>{{$user->email}}</td>
            <td>{{$user->created_at->diffForHumans()}}</td>

        </tr>
        @endforeach

    </tbody>
</table>

{!! $users->render() !!} {{-- page_a --}}

