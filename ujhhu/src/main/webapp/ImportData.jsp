<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
        <style>
        .card-0 {
            min-height: 110vh;
            background: linear-gradient(-20deg, rgb(255, 255, 255) 50%, #4723d9 50%);
            color: white;
            border: 0px;
        }

        p {
            font-size: 15px;
            line-height: 25px !important;
            font-weight: 500;


        }

        .container {
            padding-top: 29px !important;
            border-radius: 20px;
        }



        .btn {
            letter-spacing: 1px;
        }

        select:active{
            box-shadow: none !important;
            outline-width: 0 !important;

        }
        select:after{
            box-shadow: none !important;
            outline-width: 0 !important;

        }
        input,
        textarea {
            padding: 10px 12px 10px 12px;
            border: 1px solid lightgrey;
            border-radius: 0px !important;
            margin-bottom: 5px;
            margin-top: 2px;
            width: 100%;
            box-sizing: border-box;
            color: #2C3E50;
            font-size: 14px;
            letter-spacing: 1px;
            resize: none;

        }

        select:focus,
        input:focus {
            box-shadow: none !important;
            border: 1px solid #2196F3 !important;
            outline-width: 0 !important;
            font-weight: 400
        }

        label {
            margin-bottom: 2px;
            font-weight: bolder;
            font-size: 14px;
        }

        input:focus,
        textarea:focus {
            -moz-box-shadow: none !important;
            -webkit-box-shadow: none !important;
            box-shadow: none !important;
            border: 1px solid #304FFE;
            outline-width: 0
        }

        button:focus {
            -moz-box-shadow: none !important;
            -webkit-box-shadow: none !important;
            box-shadow: none !important;
            outline-width: 0
        }

        .form-control {
            height: calc(2em + .75rem + 3px);
        }

        .inner-card {
            margin: 0px 0px -40px 0px;
        }

        .card-0 {
            margin-top: 14px;
        }

        .card-1 {
            border-radius: 17px;
            color: black;
            box-shadow: 2px 4px 15px 0px rgb(0, 0, 0 , 0.5) !important;
        }

        #file {
            border: 2px dashed #92b0b3 !important;

        }

        .color input {
            background-color: #f1f1f1;
        }

        .files:before {
            position: absolute;
            bottom: 38px;
            left: 0;
            width: 100%;
            content: attr(data-before);
            color: #333;
            font-size: 12px;
            font-weight: 800;
            text-align: center;
        }


        #file {
            display: inline-block;
            width: 100%;
            padding: 95px 0 0 100%;
            background: url('https://i.imgur.com/VXWKoBD.png') top center no-repeat #fff;
            background-size: 55px 55px;
        }
        </style>

    </head>

    <body>

<%@ include file="Portal.jsp" %>

        <div class="container card-0 justify-content-center ">
                <div class="card-body px-sm-4 px-0">
                    <div class="row justify-content-center mb-5">
                        <div class="col-md-10 col"><h3 class="font-weight-bold ml-md-0 mx-auto text-center text-sm-left"> Upload File </h3><p class="mt-md-4  ml-md-0 ml-2 text-center text-sm-left"> Upload File (in CSV format only) *</p></div>
                    </div>
                    <div class="row justify-content-center round">
                        <div class="col-lg-10 col-md-12 ">
                            <div class="card shadow-lg card-1">
                                <div class="card-body inner-card">
                                    <form action="upload" method="post" enctype="multipart/form-data">
                                        <div class="row justify-content-center">
                                            <div class="col-md-12 col-lg-10 col-12"> <div class="form-group files"><label class="my-auto">Upload Your File </label> <input id="file" type="file" name="file" class="form-control" /></div></div>
                                        </div>
                                        <div class="row justify-content-center">
                                            <div class="col-md-12 col-lg-10 col-12">
                                                <div class="row justify-content-end mb-5">
                                                    <div class="col-lg-4 col-auto "><input type="submit" class="btn btn-primary btn-block" value="upload" /> </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <script>
            $(document).ready(function(){
                    $(".files").attr('data-before',"Drag file here or click the above button");
                    $('input[type="file"]').change(function(e){
                        var fileName = e.target.files[0].name;
                        $(".files").attr('data-before',fileName);
                    });
                });
            </script>
    </body>
</html>
