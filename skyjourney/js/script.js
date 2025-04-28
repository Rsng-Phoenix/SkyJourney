document.addEventListener('DOMContentLoaded', function() {
    // Toggle return date input based on trip type
    const tripTypeRadios = document.querySelectorAll('input[name="trip_type"]');
    const returnDateInput = document.getElementById('return-date');
    const returnDateGroup = document.getElementById('return-date-group');
    tripTypeRadios.forEach(radio => {
        radio.addEventListener('change', function() {
            if (this.value === 'round-trip') {
                returnDateInput.disabled = false;
                returnDateGroup.style.opacity = '1';
            } else {
                returnDateInput.disabled = true;
                returnDateGroup.style.opacity = '0.5';
                }
            });
        });
    });
    // Set min date for departure date input
    const today = new Date().toISOString().split('T')[0];
    const departureDate = document.getElementById('departure-date');
    departureDate.min = today;
    departureDate.value = today;
    departureDate.addEventListener('change', function() {
        returnDateInput.min = this.value;
        if (returnDateInput.value && returnDateInput.value < this.value) {
            returnDateInput.value = this.value;
        }
    });
    // Autocomplete for "From" and "To" city inputs
    const fromInput = document.getElementById('from');
    const toInput = document.getElementById('to');
    const fromDropdown = document.getElementById('fromCityDropdown');
    const toDropdown = document.getElementById('toCityDropdown');
    fromInput.addEventListener('input', function() {
        fetchCities(this.value, fromDropdown);
    });
    toInput.addEventListener('input', function() {
        fetchCities(this.value, toDropdown);
    });
    function fetchCities(query, dropdown) {
        if (query.length < 1) {
            dropdown.style.display = 'none';
            return;
        }
        fetch('get-cities-php.php?q=' + query)
            .then(response => response.json())
            .then(data => {
                dropdown.innerHTML = '';
                if (data.length > 0) {
                    data.forEach(city => {
                        const div = document.createElement('div');
                        div.textContent = city;
                        div.addEventListener('click', function() {
                            if (dropdown === fromDropdown) {
                                fromInput.value = this.textContent;
                            } else {
                                toInput.value = this.textContent;
                            }
                            dropdown.style.display = 'none';
                        });
                        dropdown.appendChild(div);
                    });
                    dropdown.style.display = 'block';
                } else {
                    dropdown.style.display = 'none';
                }
            });
    }
    // Close dropdown if clicked outside
    document.addEventListener('click', function(e) {
        if (!fromInput.contains(e.target) && !fromDropdown.contains(e.target)) {
            fromDropdown.style.display = 'none';
        }
        if (!toInput.contains(e.target) && !toDropdown.contains(e.target)) {
            toDropdown.style.display = 'none';
        }
    });

// Auto-format Card Number input: XXXX XXXX XXXX XXXX
const cardNumberInput = document.getElementById("card-number");
if (cardNumberInput) {
    cardNumberInput.addEventListener("input", function (e) {
        let value = e.target.value.replace(/\D/g, '').substring(0, 16);
        let sections = [];
        for (let i = 0; i < value.length; i += 4) {
            sections.push(value.substring(i, i + 4));
        }
        e.target.value = sections.join(' ');
    });
}

// Auto-format Expiry Date input: MM / YY
const expiryInput = document.getElementById("expiry-date");
if (expiryInput) {
    expiryInput.addEventListener("input", function (e) {
        let value = e.target.value.replace(/\D/g, '').substring(0, 4);
        if (value.length >= 3) {
            e.target.value = value.substring(0, 2) + " / " + value.substring(2);
        } else if (value.length >= 1) {
            e.target.value = value;
        }
    });
}
