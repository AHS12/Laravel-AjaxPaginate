<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    {{-- <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous">
    </script> --}}
    {{-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script> --}}
    {{-- <script src="https://code.jquery.com/jquery-1.12.4.min.js"
        integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script> --}}
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"
        integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>

    <title>Hello, world!</title>

    <style>

        /* loder gif style */
        #loader {

            position: absolute;
            top: 0;
            width: 100%;
            color: #333333;
            height: 150px;
            overflow: hidden;
            padding: 10px 0;
            align-items: center;
            justify-content: space-around;
            display: flex;
            float: none;
        }

        #loaderDiv {


            position: absolute;
            top: 0;
            width: 100%;
            color: #333333;
            height: 150px;
            overflow: hidden;
            padding: 10px 0;
            align-items: center;
            justify-content: space-around;
            display: flex;
            float: none;

        }
    </style>
</head>

<body>
    <div class="container">
        <h4>Pagination Useing Ajax</h4>
        <div id="table_data">
            @include('ajaxLoadTable')
        </div>
        <div id="div_data">
            @include('ajaxLoadDiv')
        </div>

    </div>




    <script>
        $(document).ready(function () {
            //alert("hello");
            $(document).on('click', '.pagination a', function (event) {
                event.preventDefault();


                var page_a = $(this).attr('href').split('page_a=')[1];
                var page_b = $(this).attr('href').split('page_b=')[1];
                console.log(page_a);
                console.log(page_b);


                // since gonna use multiple ajax pagination
                if (page_a) {
                    fetch_data_a(page_a);
                }

                if (page_b) {
                    fetch_data_b(page_b);
                }


            });

            function fetch_data_a(page) {
                $.ajax({
                    url: "/GetAllUser/?page_a=" + page,
                    cache: false,
                    beforeSend: function () {
                        $('#loader').show();
                    },
                    success: function (data) {
                        $('#table_data').html(data);
                    },
                    complete: function () {
                        $('#loader').hide();
                    },
                });
            }

            function fetch_data_b(page) {
                $.ajax({
                    url: "/GetAllUserDiv/?page_b=" + page,
                    cache: false,
                    beforeSend: function () {
                        $('#loaderDiv').show();
                    },
                    success: function (data) {
                        $('#div_data').html(data);
                    },
                    complete: function () {
                        $('#loaderDiv').hide();
                    },
                });
            }

        });

    </script>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->


    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous">
    </script>

</body>

</html>
