<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="FinalAssignment.paymentaspx" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
            integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
            integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
            crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-7">
            <h1>Top-Up Payment</h1>
            <p>powered by Time Zone</p>
        </div>
    </div>
    <hr>
    <h6>Payment Method</h6>
    <div class="row">
        <div class="">
            <div class="radio"></div>
        </div>
        <div class="col-6">
            <label><input type="radio" name="optradio" checked><img class="mb-4"
                                                                    src="https://www.waveswifi.com/sites/default/files/visa-mastercard-amex_0.png"
                                                                    width="200px" height="100px"></label>
        </div>
    </div>

    <h6>Card Number</h6>
    <div class="row">
        <div class="col-8">
            <input type="number" required/>
        </div>
    </div>
    <br>
    <div class="row">
        <div class="col-4">
            <h6>First Name</h6>
        </div>
        <div class="col-6  ml-4">
            <h6>Last Name</h6>
        </div>
    </div>

    <div class="row">
        <div class="col-4">
            <input type="text" required/>
        </div>
        <div class="col-7 text-left  ml-4">
            <input type="text" required/>
        </div>
    </div>
    <br>
    <div class="row">
        <div class="col-4">
            <h6>Expiration Month</h6>
        </div>
        <div class="col-6">
            <h6>Expiration Year</h6>
        </div>
    </div>


    <div class="row">
        <div class="col-4">
            <select class="form-control" id="exampleFormControlSelect1" required>
                <option>Jan</option>
                <option>Feb</option>
                <option>Mar</option>
                <option>Apr</option>
                <option>May</option>
                <option>Jun</option>
                <option>Jul</option>
                <option>Aug</option>
                <option>Sep</option>
                <option>Oct</option>
                <option>Nov</option>
                <option>Dec</option>
            </select>
        </div>
        <div class="col-6 text-left">
            <select class="form-control" id="exampleFormControlSelect1" required>
                <option>2020</option>
                <option>2021</option>
                <option>2022</option>
                <option>2023</option>
                <option>2024</option>
            </select>
        </div>
    </div>
    <br>
    <div class="row">

        <label class="col-md-3 col-form-label">Amount</label>
        <div class="col-md-9 form-group ">
          
    

        </div>
        <div class="col text-right">
            <button type="submit" class="btn btn-fill btn-rose">Submit</button>
        </div>


    </div>
</div>

</body>
</html>

