<!DOCTYPE html>
<!-- Designed and Developed by Minor Toms -->
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="description" content="">
<meta name="author" content="">

<link rel="icon" href="${resource(dir: '/images', file: 'favicon.ico')}">
<title>Apply For Loan - NeoGrowth</title>

<link
	href='https://fonts.googleapis.com/css?family=Lato:400,100,300,700,700italic'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${resource(dir: '/css', file: 'normalize.css')}" type="text/css">
<link rel="stylesheet"
	href="${resource(dir: '/css', file: 'bootstrap.min.css')}"
	type="text/css">
<link rel="stylesheet"
	href="${resource(dir: '/css', file: 'offcanvas.css')}" type="text/css">
<link rel="stylesheet"
	href="${resource(dir: '/css', file: 'inside.css')}" type="text/css">
<link rel="stylesheet"
	href="${resource(dir: '/css', file: 'ion.rangeSlider.css')}"
	type="text/css">
<link rel="stylesheet"
	href="${resource(dir: '/css', file: 'ion.rangeSlider.skinFlat.css')}"
	type="text/css">
<link rel="stylesheet" href="${resource(dir: '/css', file: 'main.css')}"
	type="text/css">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link rel="stylesheet"
	href="${resource(dir: '/css', file: 'ie10-viewport-bug-workaround.css')}"
	type="text/css">
<script
	src="${resource(dir: '/js', file: 'ie-emulation-modes-warning.js')}"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<!-- Google Analytics -->
<script>
	(function(i, s, o, g, r, a, m) {
		i['GoogleAnalyticsObject'] = r;
		i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o), m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, 'script',
			'https://www.google-analytics.com/analytics.js', 'ga');

	ga('create', 'UA-71642067-1', 'auto');
	ga('send', 'pageview');
</script>
<!-- End Google Analytics -->

</head>

<body class="body-apply">

	<!-- Hamburger Menu -->
	<nav class="navbar navbar-fixed-top">
		<div id="navbox" class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="http://prelaunch.neogrowth.in"><img
					class="logo" alt="NeoGrowth Credit Pvt. Ltd."
					src="${resource(dir: '/images', file: 'logo.png')}"></a>
			</div>
			<ul class="nav navbar-nav navbar-right">
				<li><p class="nbfc-text">NBFC registered with RBI and a
						member of CIBIL</p></li>
			</ul>

		</div>
	</nav>
	<!-- Hamburger Menu end -->

	<!-- Wrapper -->
	<div id="wrappers" class="container-fluid">
		<div class="row">
			<div id="woman-apply" class="jumbotron">
				<div class="container fifty">
					<h1 class="h1-small">Small Business Loans</h1>
					<a class="call-me" href="tel:+9108080861166"><i
						class="fa fa-phone"></i>08080861166</a>
					<p>Give a missed call</p>
				</div>
			</div>
		</div>
	</div>

	<div class="loans">
		<div id="loan-form-container" class="container-fluid">
			<div class="row small-apply">
				<div
					class="hidden-lg hidden-md hidden-sm visible-xs col-xs-12 center">
					<h1>Small Business Loans</h1>
					<a class="small-call-me" href="tel:+9108080861166"><i
						class="fa fa-phone"></i>08080861166</a>
					<p>Give a missed call</p>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<h2 class="center">
						<strong>Select your business type</strong>
					</h2>
				</div>
			</div>

			<div class="row  radios-holder">
				<div class="col-lg-12 col-sm-12 center">
					<label class="radio-inline"> <input type="radio"
						class="rad-button" name="formcheck" id="formRadio1" value="1">I
						sell through EDC/POS card swipe machine
					</label> <label class="radio-inline"> <input type="radio"
						class="rad-button" name="formcheck" id="formRadio2" value="2">I
						am an online/e- Commerce seller
					</label>
				</div>
			</div>
		</div>

		<div id="formstyle" class="container">

			<g:if test="${errorMsg}">
				<div id="form-error" class="row form-line center">
					<!-- form error if any -->
					<div class="col-lg-12 col-md-12 col-sm-12 ">
						<div class="alert alert-error" style="display: block; color: red;">
							${flash.error}
						</div>
					</div>
				</div>
			</g:if>

			<g:form controller="restHandler" action="applyNowForm">
				<div id="form-avg-sale-cont" class="row form-line center">
					<input type="hidden" id="hidden" value="${seller_type}"
						name="seller_type" />
					<!-- Average sales per month -->
					<div class="col-lg-12 col-md-12 col-sm-12 ">
						<label class="apply-now-label" for="avg-sales">Average
							sales per month</label> <select name="avg_sales" class="formOption"
							id="form-avg-sale" disabled="disabled">
							<option value="">Select</option>
							<option value="1">Less than 1 Lac</option>
							<option value="2">1-5 Lacs</option>
							<option value="4">5-10 Lacs</option>
							<option value="5">10-20 Lacs</option>
							<option value="6">20-50 Lacs</option>
							<option value="7">50 Lacs and above</option>
						</select>
					</div>
				</div>

				<!-- Average online sales per month -->
				<div id="form-online-sale-cont" class="row form-line center">
					<label class="apply-now-label" for="online-sales">Average
						online sales per month</label> <select name="online_sales"
						class="formOption" id="form-online-sale" disabled="disabled">
						<option value="">Select</option>
						<option value="1">Less than 1 Lac</option>
						<option value="2">1-5 Lacs</option>
						<option value="4">5-10 Lacs</option>
						<option value="5">10-20 Lacs</option>
						<option value="6">20-50 Lacs</option>
						<option value="7">50 Lacs and above</option>
					</select>
				</div>

				<div class="row form-line center-form">

					<!-- Name -->
					<div
						class="col-lg-4 col-offset-2 col-md-4 col-md-offset-2 col-sm-6">
						<label class="apply-now-label" for="full-name">Name</label> <input
							type="text" name="full_name" id="form-name" disabled="disabled"
							value="${full_name}">
					</div>

					<!-- Phone -->
					<div class="col-lg-6 col-md-6 col-sm-12 col-sm-6">
						<label class="apply-now-label" for="phone-number">Phone</label> <input
							type="text" name="phone_number" id="form-phone"
							disabled="disabled" value="${phone_number}">
					</div>
				</div>

				<div class="row form-line center-form">

					<div
						class="col-lg-4 col-lg-offset-2 col-md-4 col-md-offset-2 col-sm-6">
						<label class="apply-now-label" for="email">Email</label> <input
							type="email" name="email" id="form-email" disabled="disabled"
							value="${email}">
					</div>

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label class="apply-now-label" for="city">City</label> <select
							name="city" class="formOption" id="form-city" disabled="disabled">
							<option value="">Select</option>
							<option value="1">Ahmedabad</option>
							<option value="2">Bangaluru</option>
							<option value="3">Chandigargh</option>
							<option value="4">Chennai</option>
							<option value="5">Delhi</option>
							<option value="6">Hyderabad</option>
							<option value="7">Jaipur</option>
							<option value="8">Kolkata</option>
							<option value="9">Mumbai</option>
							<option value="10">Pune</option>
						</select>
					</div>
				</div>

				<div class="row form-line center-form">

					<div
						class="col-lg-4 col-lg-offset-2 col-md-4 col-md-offset-2 col-sm-6 col-xs-12">
						<label class="apply-now-label" for="business-years">Business
							Years</label> <select name="business_years" class="formOption"
							id="form-bus-years" disabled="disabled">
							<option value="">Select</option>
							<option value="1">1 Year</option>
							<option value="2">2-5 Years</option>
							<option value="4">6-10 Years</option>
							<option value="5">10-15 Years</option>
							<option value="6">15+ Years</option>
						</select>
					</div>

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label class="apply-now-label" for="loan-amount">Loan
							Amount</label> <select name="loan_amount" class="formOption"
							id="form-loan-amt" disabled="disabled">
							<option value="">Select</option>
							<option value="1">1-5 Lacs</option>
							<option value="2">5-10 Lacs</option>
							<option value="4">10-20 Lacs</option>
							<option value="5">20-50 Lacs</option>
							<option value="6">20-50 Lacs</option>
							<option value="7">50-75 Lacs</option>
							<option value="8">75 Lacs and above</option>
						</select>
					</div>
				</div>
				<div class="row form-line center-form captcha-holder">
					<div
						class="col-lg-4 col-lg-offset-2 col-md-4 col-md-offset-2 col-sm-6 col-xs-12 center">
						<img
							src="${createLink(controller: 'simpleCaptcha', action: 'captcha')}" />
					</div>

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label class="apply-now-label" for="captcha">Captcha</label> <input
							type="text" name="captcha" id="captcha">
					</div>
				</div>


				<div class="row form-line center">
					<div class="col-lg-12 col-xs-12">
						<input type="checkbox" name="auth" value="authorized"
							class="apply-now-label"> I authorize NeoGrowth Credit Pvt
						Ltd to call on the above mentioned number to explain the features
						of the product and marketing<br>
					</div>
				</div>

				<div class="row center form-line">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<input style="display: none;" type="button" id="applyNow"
							value="Apply for Loan"> <input type="button"
							style="opacity: 0.6;" id="applyNowDummy" value="Apply for Loan" />
					</div>
				</div>

			</g:form>
		</div>
	</div>

	<div id="business-loan-types">
		<div class="row titles">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<h2 class="title-space center">Our business loans are specially
					created for</h2>
			</div>
		</div>
	</div>

	<!-- POS and Online section -->
	<div class="row titles">
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 img-link-container">
			<div class="img-center">
				<a href="retail-business-loans-features-and-benefits.html"><img
					class="typ-img" src="${resource(dir: '/images', file: 'pos1.png')}"
					alt="POS/EDC Machine"></a>
			</div>
			<a href="retail-business-loans-features-and-benefits.html"
				class="img-title center">Retailers with EDC/POS machines</a>
		</div>

		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 img-link-container">
			<div class="img-center">
				<a href="online-business-loans-features-and-benefits.html"><img
					class="typ-img"
					src="${resource(dir: '/images', file: 'phone1.png')}"
					alt="POS/EDC Machine"></a>
			</div>
			<a href="online-business-loans-features-and-benefits.html"
				class="img-title center">Online Sellers</a>

		</div>

	</div>
	<div class="row">
		<hr id="section-separator">
	</div>
	<!-- POS and Online section End-->

	<!-- Check eligibility -->
	<div id="eligibility-section" class="container">
		<div class="row center">
			<div class="col-lg-12 col-xs-12">
				<h2>Check Eligibility</h2>
				<h3>See how we can help you multiply your business. Start by
					checking if you are eligible.</h3>

				<p class="heading-bold">Choose the one applicable to your
					business:</p>
			</div>
		</div>

		<!-- Loan Calculator -->
		<div class="section-inside-holder">

			<!-- Radio buttons -->
			<div class="row">
				<div class="col-lg-12 col-xs-12 center">
					<label class="radio-inline"> <input type="radio"
						class="rad-button" name="inlineRadioOptions" id="inlineRadio1"
						value="1" checked="checked">I sell through EDC/POS card
						swipe machine
					</label> <label class="radio-inline"> <input type="radio"
						class="rad-button" name="inlineRadioOptions" id="inlineRadio2"
						value="2">I am an online/e-Commerce seller
					</label>
				</div>
			</div>
			<!-- Radio buttons end -->

			<div class="row">
				<div class="col-lg-12 col-xs-12">

					<!-- Retail Sellers range slider -->
					<div id="slide-container-1">
						<div class="col-lg-12 slide-holder">
							<p class="phead">Average monthly credit/debit sales</p>
							<input type="text" id="range" value="" name="range" />
						</div>

						<div class="col-lg-12 slide-holder">
							<p class="phead">No of years in business</p>
							<input type="text" id="range2" value="" name="range" />
						</div>
					</div>
					<!-- Retail sellers range slider end -->

					<!-- Online sellers range slider -->
					<div id="slide-container-2">
						<div class="col-lg-12 slide-holder">
							<p class="phead">Average monthly online sales</p>
							<input type="text" id="rangeo" value="" name="range" />
						</div>

						<div class="col-lg-12 slide-holder">
							<p class="phead">No of years in business</p>
							<input type="text" id="range2o" value="" name="range" />
						</div>
					</div>
					<!-- Online sellers range slider end -->

				</div>
			</div>

			<!-- Retail range slider response -->
			<div class="row center" id="choice-button1">
				<div class="col-lg-12 col-xs-12">
					<button id="eligbutton" onclick="estimate1()" class="check-button">Check</button>
					<p id="eliglink" class="elig-show">
						Congratulations! You are eligible for a loan <br> <a
							href="apply-now.html" class="bottom-link">Apply now</a>
					</p>
					<p id="eliglinkno" class="elig-show">
						Sorry, You are not eligible.<br>
						<button class="check-button" onclick="estimateR0()">Reset
							Calculator</button>
					</p>
				</div>
			</div>
			<!-- Retail range slider response end -->

			<!-- Online range slider response -->
			<div class="row center" id="choice-button2">
				<div class="col-lg-12 col-xs-12">
					<button id="eligbutton1" onclick="estimate2()" class="check-button">Check</button>
					<p id="eliglink1" class="elig-show">
						Congratulations! You are eligible for a loan <br> <a
							href="apply-now.html" class="bottom-link">Apply now</a>
					</p>
					<p id="eliglinkno1" class="elig-show">
						Sorry, You are not eligible.<br>
						<button class="check-button" onclick="estimateR1()">Reset
							Calculator</button>
					</p>
				</div>
			</div>
			<!-- Online range slider response -->
		</div>
		<!-- Loan calculator end -->

	</div>
	<!-- Check eligibility end -->

	<!-- How to apply section -->
	<div class="section-holder bg-section">
		<div id="apply-text-section" class="container"></div>
		<!-- Apply text section end -->

		<!-- Apply Section -->
		<div class="row fadeInBlock section-top">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 center">
				<h2>How To Apply</h2>
			</div>
		</div>
		<div class="row section-holder" id="apply-section">
			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
				<div class="apply-process fadeInBlock">
					<img class="img-responsive feature-img" src="${resource(dir: '/images', file: 'apply.svg')}"
						alt="Online registration">
					<p class="apply-text">Register online</p>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
				<div class="apply-process fadeInBlock">
					<img class="img-responsive feature-img"
						src="${resource(dir: '/images', file: 'documentation.svg')}" alt="Doorstep Documentation">
					<p class="apply-text">Doorstep documentation</p>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
				<div class="apply-process fadeInBlock">
					<img class="img-responsive feature-img" src="${resource(dir: '/images', file: 'assess.svg')}"
						alt="Credit assessment">
					<p class="apply-text">Credit assessment</p>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
				<div class="apply-process fadeInBlock">
					<img class="img-responsive feature-img" src="${resource(dir: '/images', file: 'goal.svg')}"
						alt="Loan sanctioned">
					<p class="apply-text">Loan sanctioned</p>
				</div>
			</div>
		</div>
		<!-- How to apply end -->
	</div>

	<!-- How to apply section -->
	<div id="apply-text-section" class="container">
		<div class="row fadeInBlock section-holder">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 center">
				<h2>Features and Benefits</h2>
			</div>
		</div>
	</div>
	<!-- Apply text section end -->

	<!-- Apply Section -->
	<div class="row section-holder center" id="apply-section">
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
			<div class="apply-process fadeInBlock">
				<img class="img-responsive feature-img" src="${resource(dir: '/images', file: 'flexibility.svg')}"
					alt="Loan Flexibility">
				<p class="apply-text">Loan flexibility like never before</p>
				<p>We have made the EMI concept irrelevant. Flexible repayment
					as a % of your card/online sales. On days when you do more sales
					you repay more and on days when business is low the repayment is
					lower.</p>
			</div>
		</div>
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
			<div class="apply-process fadeInBlock">
				<img class="img-responsive feature-img" src="${resource(dir: '/images', file: 'performance.svg')}"
					alt="Current Business Performance">
				<p class="apply-text">Current business performance, NOT history
					financials</p>
				<p>We have made it easier for you! Loan approvals are based on
					current & future cash flows and not financial statements of the
					business.</p>
			</div>
		</div>
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
			<div class="apply-process fadeInBlock">
				<img class="img-responsive feature-img" src="${resource(dir: '/images', file: 'disbursment.svg')}"
					alt="Loan Disbursement">
				<p class="apply-text">Hassle free loan disbursement and
					pre-closure facility</p>
				<p>The merchant would never need to visit NeoGrowth office.
					NeoGrowth's sales team comes to the merchant's assistance at his
					doorstep. Merchant has the option of pre-closure at any stage
					without any penal charges.</p>
			</div>
		</div>
		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
			<div class="apply-process fadeInBlock">
				<img class="img-responsive feature-img" src="${resource(dir: '/images', file: 'automatic.svg')}"
					alt="No collateral & simple business loans">
				<p class="apply-text">No collateral & simple business loans</p>
				<p>NeoGrowth Business loans are without any collateral. We
					believe in minimum documentation only to oversee the current state
					of business. Hence, it will minimise the effort of merchant in
					accumulating lot of paper.</p>
			</div>
		</div>
	</div>
	<!-- How to apply end -->

	</div>


	<!-- Check eligibility end -->

	<!-- Footer -->
	<footer>
		<div class="container-fluid">
			<div class="row">

				<!-- Footer product -->
				<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
					<p class="footer-title">Business Loans</p>
					<ul class="footer-links">
						<li><a
							href="retail-business-loans-features-and-benefits.html"
							class="footer-small">For retailers using credit/debit swipe
								machine (POS)</a></li>
						<li><a
							href="online-business-loans-features-and-benefits.html"
							class="footer-small">For online sellers</a></li>
					</ul>
				</div>
				<!-- Footer product end-->

				<!-- Footer about us-->
				<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
					<p class="footer-title">About Us</p>
					<ul class="footer-links">
						<li><a href="about-neogrowth.html" class="footer-small">About
								NeoGrowth</a></li>
						<li><a href="founders.html" class="footer-small">Founders</a></li>
						<li><a href="senior-management.html" class="footer-small">Senior
								Management</a></li>
						<li><a href="board-of-directors.html" class="footer-small">Board
								Of Directors</a></li>
					</ul>
				</div>
				<!-- Footer About us end -->

				<!-- Contact us -->
				<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
					<p class="footer-title">Contact Us</p>
					<ul class="footer-links">
						<li><a href="contact-us.html" class="footer-small">For
								sales enquiries</a></li>
						<li><a href="contact-us.html" class="footer-small">For
								complaint</a></li>
						<li><a href="careers.html" class="footer-small">For
								Careers</a></li>
					</ul>
				</div>
				<!-- Contact us end -->

				<!-- Footer quick links -->
				<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
					<p class="footer-title">Quick Links</p>
					<ul class="footer-links">
						<li><a href="blog/" class="footer-small">Blog</a></li>
						<li><a href="news/" class="footer-small">News</a></li>
						<li><a href="client-stories-eon.html" class="footer-small">Client
								Stories</a></li>
						<li><a href="sme-business-loan-guide.html"
							class="footer-small">SME business loan guide</a></li>
					</ul>
				</div>
				<!-- Footer quick links end -->

				<!-- Footer social links -->
				<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
					<p class="footer-title">Follow Us On</p>
					<ul class="footer-links">
						<li class="social-links"><a class="footer-small"
							href="https://www.facebook.com/NeoGrowth-Credit-1663092290644997/"><i
								class="fa fa-facebook fa-2x"></i></a></li>
						<li class="social-links"><a
							href="https://twitter.com/NeoGrowth_Loans" class="footer-small"><i
								class="fa fa-twitter fa-2x"></i></a></li>
						<li class="social-links fa-2x"><a
							href="https://www.linkedin.com/company/2675597?trk=tyah&trkInfo=clickedVertical%3Acompany%2CclickedEntityId%3A2675597%2Cidx%3A2-2-5%2CtarId%3A1458025396354%2Ctas%3Aneogro"
							class="footer-small"><i class="fa fa-linkedin"></i></a></li>
					</ul>
				</div>
				<!-- footer social links end -->

				<!-- Footer logo -->
				<div class="col-lg-2 col-md-2 col-sm-2 col-xs-6 center">
					<a href="apply-now.html"><img class="footer-img"
						src="${resource(dir: '/images', file: 'apply-now-footer.png')}" alt="Apply For Business Loan"></a><br>
					<a href="apply-now.html" class="footer-small">Apply now for
						business loan</a>


				</div>
				<!-- Footer logo end -->
				<div class="row center">
					<div class="col-lg-12 col-xs-12">
						<hr>
						<ul class="footer-info-list">
							<li><p class="minortoms">© 2016 NeoGrowth Credit Pvt.
									Ltd.</p></li>
							<li><a href="privacy-policy.html" class="minortoms">Privacy
									Policy</a></li>
							<li><a href="disclaimer.html" class="minortoms">Disclaimer</a></li>
							<li><a href="fair-practice-code.html" class="minortoms">Fair
									Practice Code</a></li>
							<li><a href="" class="minortoms">Sitemap</a></li>
						</ul>
						<p class="minortoms">
							Designed and Developed by <a href="http://www.minortoms.com">Minor
								Toms</a>
						</p>
					</div>
				</div>
			</div>

		</div>
	</footer>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')
	</script>
	<script src="${resource(dir: '/js', file: 'bootstrap.min.js')}"></script>
	<script src="${resource(dir: '/js', file: 'ion.rangeSlider.js')}"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="${resource(dir: '/js', file: 'ie10-viewport-bug-workaround.js')}"></script>

	<script>
		$('input[name="formcheck"]')
				.on(
						'change',
						function() {
							if ($(this).val() == '1') {

								//change to "show update"
								document.getElementById('formstyle').style.opacity = '1';
								document
										.getElementById('form-online-sale-cont').style.display = 'none';
								document.getElementById('form-avg-sale-cont').style.display = 'block';
								document.getElementById('form-avg-sale').disabled = false;
								document.getElementById('form-name').disabled = false;
								document.getElementById('form-phone').disabled = false;
								document.getElementById('form-email').disabled = false;
								document.getElementById('form-email').disabled = false;
								document.getElementById('form-city').disabled = false;
								document.getElementById('form-bus-years').disabled = false;
								document.getElementById('form-loan-amt').disabled = false;

							}

							else if ($(this).val() == '2') {
								document.getElementById('formstyle').style.opacity = '1';
								document
										.getElementById('form-online-sale-cont').style.display = 'block';
								document.getElementById('form-avg-sale-cont').style.display = 'none';
								document.getElementById('form-online-sale').disabled = false;
								document.getElementById('form-name').disabled = false;
								document.getElementById('form-phone').disabled = false;
								document.getElementById('form-email').disabled = false;
								document.getElementById('form-email').disabled = false;
								document.getElementById('form-city').disabled = false;
								document.getElementById('form-bus-years').disabled = false;
								document.getElementById('form-loan-amt').disabled = false;

							}

							else {

							}
						});

		$('input[name="auth"]').on('change', function() {
			console.log($(this).is(':checked'))
			if ($(this).is(':checked')) {
				$("#applyNow").show();
				$("#applyNow").attr("type", "submit");
				$("#applyNowDummy").hide();
			} else {
				$("#applyNowDummy").show();
				$("#applyNow").attr("type", "button");
				$("#applyNow").hide();
			}
		});
	</script>

	<!-- Radio functions -->
	<script>
		$('input[name="inlineRadioOptions"]')
				.on(
						'change',
						function() {
							if ($(this).val() == '1') {

								//change to "show update"
								document.getElementById('slide-container-2').style.display = 'none';
								document.getElementById('choice-button2').style.display = 'none';

								document.getElementById('slide-container-1').style.display = 'block';
								document.getElementById('choice-button1').style.display = 'block';
							}

							else if ($(this).val() == '2') {

								document.getElementById('slide-container-1').style.display = 'none';
								document.getElementById('choice-button1').style.display = 'none';

								document.getElementById('slide-container-2').style.display = 'block';
								document.getElementById('choice-button2').style.display = 'block';
							}

							else {

							}
						});
	</script>

	<!-- Slider functions and response-->
	<script>
		var val1, val2;

		$(function() {

			var $range = $("#range");
			$range.ionRangeSlider({
				type : "single",
				grid : true,
				min : 1,
				max : 10,
				from : 0,
				prefix : "Rs. ",
				postfix : " Lacs",
				max_postfix : "+",
				step : 1,
				values : [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]
			});

			$range.on("change", function() {
				var $this = $(this), value = $this.prop("value");
				val1 = value;
				console.log("Value: " + value);
				$("#range").data("ionRangeSlider");
			});
		});

		$(function() {
			var $range2 = $("#range2");
			$range2.ionRangeSlider({
				type : "single",
				min : 0,
				max : 10,
				from : 0,
				max_postfix : "+",
				postfix : " years"
			});

			$range2.on("change", function() {
				var $this = $(this), value = $this.prop("value");
				val2 = value;
				console.log("Value: " + value);
				$("#range2").data("ionRangeSlider");
			});
		});

		$(function() {
			var $rangeo = $("#rangeo");
			$rangeo.ionRangeSlider({
				type : "single",
				grid : true,
				min : 1,
				max : 10,
				from : 0,
				prefix : "Rs. ",
				postfix : " Lacs",
				max_postfix : "+",
				step : 1,
				values : [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]
			});

			$rangeo.on("change", function() {
				var $this = $(this), value = $this.prop("value");
				val1 = value;
				console.log("Value: " + value);
				$("#rangeo").data("ionRangeSlider");
			});
		});

		$(function() {
			var $range2o = $("#range2o");
			$range2o.ionRangeSlider({
				type : "single",
				min : 0,
				max : 42,
				from : 0,
				step : 6,
				max_postfix : "+",
				postfix : " months"
			});

			$range2o.on("change", function() {
				var $this = $(this), value = $this.prop("value");
				val2 = value;
				console.log("Value: " + value);
				$("#range2o").data("ionRangeSlider");
			});
		});

		$(function() {
			var $range0 = $("#range0");
			$range0.ionRangeSlider({
				type : "single",
				grid : true,
				min : 1,
				max : 10,
				from : 0,
				prefix : "Rs. ",
				postfix : " Lacs",
				max_postfix : "+",
				step : 1,
				values : [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ],
				disable : true
			});

			$range0.on("change", function() {
				var $this = $(this), value = $this.prop("value");
				val1 = value;
				console.log("Value: " + value);
				$("#range0").data("ionRangeSlider");
			});
		});

		$(function() {
			var $range20 = $("#range20");
			$range20.ionRangeSlider({
				type : "single",
				min : 0,
				max : 10,
				from : 0,
				max_postfix : "+",
				postfix : " years",
				disable : true
			});

			$range20.on("change", function() {
				var $this = $(this), value = $this.prop("value");
				val2 = value;
				console.log("Value: " + value);
				$("#range20").data("ionRangeSlider");
			});
		});

		function estimate1() {
			if (val1 > 1 && val2 > 1) {
				document.getElementById('eligbutton').style.display = 'none';
				document.getElementById('eliglink').style.display = 'block';
			}

			else {
				document.getElementById("eligbutton").style.display = "none";
				document.getElementById("eliglinkno").style.display = "block";
			}
		}

		function estimate2() {
			if (val1 > 1 && val2 > 5) {
				document.getElementById("eligbutton1").style.display = "none";
				document.getElementById("eliglink1").style.display = "block";
			}

			else {
				document.getElementById("eligbutton1").style.display = "none";
				document.getElementById("eliglinkno1").style.display = "block";
			}
		}

		function estimateR0() {
			document.getElementById("eligbutton").style.display = "block";
			document.getElementById("eliglinkno").style.display = "none";
		}
		function estimateR1() {
			document.getElementById("eligbutton1").style.display = "block";
			document.getElementById("eliglinkno1").style.display = "none";
		}
	</script>

	<script>
		$("input[name=formcheck]").change(function() {
			$("#hidden").val($(this).val());
		})
		$("input[name='formcheck'][value='${seller_type}']").click();
	</script>


</body>
</html>
