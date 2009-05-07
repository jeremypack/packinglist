countries_json = {'Afghanistan':'Afghanistan', 'Aland Islands':'Aland Islands', 'Albania':'Albania', 'Algeria':'Algeria', 'American Samoa':'American Samoa', 'Andorra':'Andorra', 'Angola':'Angola', 'Anguilla':'Anguilla', 'Antarctica':'Antarctica', 'Antigua And Barbuda':'Antigua And Barbuda', 'Argentina':'Argentina', 'Armenia':'Armenia', 'Aruba':'Aruba', 'Australia':'Australia', 'Austria':'Austria', 'Azerbaijan':'Azerbaijan', 'Bahamas':'Bahamas', 'Bahrain':'Bahrain', 'Bangladesh':'Bangladesh', 'Barbados':'Barbados', 'Belarus':'Belarus', 'Belgium':'Belgium', 'Belize':'Belize', 'Benin':'Benin', 'Bermuda':'Bermuda', 'Bhutan':'Bhutan', 'Bolivia':'Bolivia', 'Bosnia and Herzegowina':'Bosnia and Herzegowina', 'Botswana':'Botswana', 'Bouvet Island':'Bouvet Island', 'Brazil':'Brazil', 'British Indian Ocean Territory':'British Indian Ocean Territory', 'Brunei Darussalam':'Brunei Darussalam', 'Bulgaria':'Bulgaria', 'Burkina Faso':'Burkina Faso', 'Burundi':'Burundi', 'Cambodia':'Cambodia', 'Cameroon':'Cameroon', 'Canada':'Canada', 'Cape Verde':'Cape Verde', 'Cayman Islands':'Cayman Islands', 'Central African Republic':'Central African Republic', 'Chad':'Chad', 'Chile':'Chile', 'China':'China', 'Christmas Island':'Christmas Island', 'Cocos (Keeling) Islands':'Cocos (Keeling) Islands', 'Colombia':'Colombia', 'Comoros':'Comoros', 'Congo':'Congo', 'Congo, the Democratic Republic of the':'Congo, the Democratic Republic of the', 'Cook Islands':'Cook Islands', 'Costa Rica':'Costa Rica', 'Cote d\'Ivoire':'Cote d\'Ivoire', 'Croatia':'Croatia', 'Cuba':'Cuba', 'Cyprus':'Cyprus', 'Czech Republic':'Czech Republic', 'Denmark':'Denmark', 'Djibouti':'Djibouti', 'Dominica':'Dominica', 'Dominican Republic':'Dominican Republic', 'Ecuador':'Ecuador', 'Egypt':'Egypt', 'El Salvador':'El Salvador', 'Equatorial Guinea':'Equatorial Guinea', 'Eritrea':'Eritrea', 'Estonia':'Estonia', 'Ethiopia':'Ethiopia', 'Falkland Islands (Malvinas)':'Falkland Islands (Malvinas)', 'Faroe Islands':'Faroe Islands', 'Fiji':'Fiji', 'Finland':'Finland', 'France':'France', 'French Guiana':'French Guiana', 'French Polynesia':'French Polynesia', 'French Southern Territories':'French Southern Territories', 'Gabon':'Gabon', 'Gambia':'Gambia', 'Georgia':'Georgia', 'Germany':'Germany', 'Ghana':'Ghana', 'Gibraltar':'Gibraltar', 'Greece':'Greece', 'Greenland':'Greenland', 'Grenada':'Grenada', 'Guadeloupe':'Guadeloupe', 'Guam':'Guam', 'Guatemala':'Guatemala', 'Guernsey':'Guernsey', 'Guinea':'Guinea', 'Guinea-Bissau':'Guinea-Bissau', 'Guyana':'Guyana', 'Haiti':'Haiti', 'Heard and McDonald Islands':'Heard and McDonald Islands', 'Holy See (Vatican City State)':'Holy See (Vatican City State)', 'Honduras':'Honduras', 'Hong Kong':'Hong Kong', 'Hungary':'Hungary', 'Iceland':'Iceland', 'India':'India', 'Indonesia':'Indonesia', 'Iran, Islamic Republic of':'Iran, Islamic Republic of', 'Iraq':'Iraq', 'Ireland':'Ireland', 'Isle of Man':'Isle of Man', 'Israel':'Israel', 'Italy':'Italy', 'Jamaica':'Jamaica', 'Japan':'Japan', 'Jersey':'Jersey', 'Jordan':'Jordan', 'Kazakhstan':'Kazakhstan', 'Kenya':'Kenya', 'Kiribati':'Kiribati', 'Korea, Democratic People\'s Republic of':'Korea, Democratic People\'s Republic of', 'Korea, Republic of':'Korea, Republic of', 'Kuwait':'Kuwait', 'Kyrgyzstan':'Kyrgyzstan', 'Lao People\'s Democratic Republic':'Lao People\'s Democratic Republic', 'Latvia':'Latvia', 'Lebanon':'Lebanon', 'Lesotho':'Lesotho', 'Liberia':'Liberia', 'Libyan Arab Jamahiriya':'Libyan Arab Jamahiriya', 'Liechtenstein':'Liechtenstein', 'Lithuania':'Lithuania', 'Luxembourg':'Luxembourg', 'Macao':'Macao', 'Macedonia, The Former Yugoslav Republic Of':'Macedonia, The Former Yugoslav Republic Of', 'Madagascar':'Madagascar', 'Malawi':'Malawi', 'Malaysia':'Malaysia', 'Maldives':'Maldives', 'Mali':'Mali', 'Malta':'Malta', 'Marshall Islands':'Marshall Islands', 'Martinique':'Martinique', 'Mauritania':'Mauritania', 'Mauritius':'Mauritius', 'Mayotte':'Mayotte', 'Mexico':'Mexico', 'Micronesia, Federated States of':'Micronesia, Federated States of', 'Moldova, Republic of':'Moldova, Republic of', 'Monaco':'Monaco', 'Mongolia':'Mongolia', 'Montenegro':'Montenegro', 'Montserrat':'Montserrat', 'Morocco':'Morocco', 'Mozambique':'Mozambique', 'Myanmar':'Myanmar', 'Namibia':'Namibia', 'Nauru':'Nauru', 'Nepal':'Nepal', 'Netherlands':'Netherlands', 'Netherlands Antilles':'Netherlands Antilles', 'New Caledonia':'New Caledonia', 'New Zealand':'New Zealand', 'Nicaragua':'Nicaragua', 'Niger':'Niger', 'Nigeria':'Nigeria', 'Niue':'Niue', 'Norfolk Island':'Norfolk Island', 'Northern Mariana Islands':'Northern Mariana Islands', 'Norway':'Norway', 'Oman':'Oman', 'Pakistan':'Pakistan', 'Palau':'Palau', 'Palestinian Territory, Occupied':'Palestinian Territory, Occupied', 'Panama':'Panama', 'Papua New Guinea':'Papua New Guinea', 'Paraguay':'Paraguay', 'Peru':'Peru', 'Philippines':'Philippines', 'Pitcairn':'Pitcairn', 'Poland':'Poland', 'Portugal':'Portugal', 'Puerto Rico':'Puerto Rico', 'Qatar':'Qatar', 'Reunion':'Reunion', 'Romania':'Romania', 'Russian Federation':'Russian Federation', 'Rwanda':'Rwanda', 'Saint Barthelemy':'Saint Barthelemy', 'Saint Helena':'Saint Helena', 'Saint Kitts and Nevis':'Saint Kitts and Nevis', 'Saint Lucia':'Saint Lucia', 'Saint Pierre and Miquelon':'Saint Pierre and Miquelon', 'Saint Vincent and the Grenadines':'Saint Vincent and the Grenadines', 'Samoa':'Samoa', 'San Marino':'San Marino', 'Sao Tome and Principe':'Sao Tome and Principe', 'Saudi Arabia':'Saudi Arabia', 'Senegal':'Senegal', 'Serbia':'Serbia', 'Seychelles':'Seychelles', 'Sierra Leone':'Sierra Leone', 'Singapore':'Singapore', 'Slovakia':'Slovakia', 'Slovenia':'Slovenia', 'Solomon Islands':'Solomon Islands', 'Somalia':'Somalia', 'South Africa':'South Africa', 'South Georgia and the South Sandwich Islands':'South Georgia and the South Sandwich Islands', 'Spain':'Spain', 'Sri Lanka':'Sri Lanka', 'Sudan':'Sudan', 'Suriname':'Suriname', 'Svalbard and Jan Mayen':'Svalbard and Jan Mayen', 'Swaziland':'Swaziland', 'Sweden':'Sweden', 'Switzerland':'Switzerland', 'Syrian Arab Republic':'Syrian Arab Republic', 'Taiwan, Province of China':'Taiwan, Province of China', 'Tajikistan':'Tajikistan', 'Tanzania, United Republic of':'Tanzania, United Republic of', 'Thailand':'Thailand', 'Timor-Leste':'Timor-Leste', 'Togo':'Togo', 'Tokelau':'Tokelau', 'Tonga':'Tonga', 'Trinidad and Tobago':'Trinidad and Tobago', 'Tunisia':'Tunisia', 'Turkey':'Turkey', 'Turkmenistan':'Turkmenistan', 'Turks and Caicos Islands':'Turks and Caicos Islands', 'Tuvalu':'Tuvalu', 'Uganda':'Uganda', 'Ukraine':'Ukraine', 'United Arab Emirates':'United Arab Emirates', 'United Kingdom':'United Kingdom', 'United States':'United States', 'United States Minor Outlying Islands':'United States Minor Outlying Islands', 'Uruguay':'Uruguay', 'Uzbekistan':'Uzbekistan', 'Vanuatu':'Vanuatu', 'Venezuela':'Venezuela', 'Viet Nam':'Viet Nam', 'Virgin Islands, British':'Virgin Islands, British', 'Virgin Islands, U.S.':'Virgin Islands, U.S.', 'Wallis and Futuna':'Wallis and Futuna', 'Western Sahara':'Western Sahara', 'Yemen':'Yemen', 'Zambia':'Zambia', 'Zimbabwe':'Zimbabwe'}
edit_bag_url = '';

$(document).ready(function() {

	// Rollover Wardrobe
	$(".item_to_pack").hover(function() {
		$(this).addClass("overState");
	}, function() {
		$(this).removeClass("overState");	
	});


	// Rollover Bag
	$(".bag_category_title").hover(function() {
		$(this).next().andSelf().addClass("overState");
	}, function() {
		$(this).next().andSelf().removeClass("overState");
	});

	// Flash Slides Up
	setTimeout (function() { jQuery("div[id=check]").slideUp('normal'); }, 4000);

	// Sliding Bag View
	$('.bag_category_title').click(function() {
		$(this).next().next().slideToggle('normal');
	})


	// Autocomplete function not working
	//	$("input#new_user_item_form").autocomplete("auto_complete_for_item_search")

	// Add to Bag
	$(".add_to_my_bag").click(function() {
		$.post($(this).attr("action"), $(this).serialize(), null, "script");
		return false;
	})	
	
	// Packing tick boxes
	setupBagList();
		
	$('#packing_container .editable').editable(edit_bag_url, {
		submit : 'OK',
		method: 'PUT',
		id: 'elementid'
	});
	$('#packing_container #country').editable(edit_bag_url, {
		submit : 'OK',
		method: 'PUT',
		id: 'elementid',
		type: 'select',
		data: countries_json
	});		

});


// Packing tick boxes
function setupBagList()
{
	$("#bag_list input[type='submit']").hide();
	$('#bag_list input').click( function(){
		var f = $(this).parent().parent();
		var url = f.attr('action');
		var data = f.serialize();
		$.post(url, data, null, 'script');
	});
}

