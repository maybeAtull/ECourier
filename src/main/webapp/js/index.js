const sidebarLinks = document.querySelectorAll('.sidebar-link');

function showSection(sectionId) {
    //    Hide all sections
    const sections = document.querySelectorAll('.section');
    sections.forEach(section => {
        section.style.display = 'none';
    });

    // Show the selected section
    const selectedSection = document.getElementById(sectionId);
    if (selectedSection) {
        selectedSection.style.display = 'block';
    }
    console.log(`Showing section: ${sectionId}`);
}

sidebarLinks.forEach(link => {
    link.addEventListener('click', (event) => {
        // Prevent the default behavior of the link
        event.preventDefault();

        // Remove the 'active' class from all links
        sidebarLinks.forEach(link => link.classList.remove('active'));

        // Add the 'active' class to the clicked link
        link.classList.add('active');

        // Get the 'data-section' attribute value
        const sectionId = link.getAttribute('data-section');

        // Call your showSection function with the sectionId
        showSection(sectionId);
    });
});



function calculatePrice() {
    const parcelWeight = parseFloat(document.getElementById('parcelWeight').value);
    
    // Implement your price calculation logic here
    // Example: You can have a predefined price per kg and calculate the total price
    const pricePerKg = 5; // Replace with your actual price per kg
    const totalPrice = parcelWeight * pricePerKg;

    // Update the price field in the form
    document.getElementById('price').value = totalPrice.toFixed(2);
}