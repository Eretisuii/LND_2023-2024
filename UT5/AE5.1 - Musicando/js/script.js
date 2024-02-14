// Function to open the popup
function openPopup() {
    document.getElementById('popup').style.display = 'block';
}

// Function to close the popup
function closePopup() {
    document.getElementById('popup').style.display = 'none';
}

// Add event listener to the link to open the popup
document.getElementById('popup-link').addEventListener('click', function(event) {
    event.preventDefault(); // Prevent default link behavior
    openPopup();
});

// Add event listener to the close button to close the popup
document.getElementById('close-btn').addEventListener('click', function(event) {
    closePopup();
});