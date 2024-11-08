document.getElementById('uploadForm').addEventListener('submit', function(event) {
  event.preventDefault();  // Prevent default form submission
  process.env.NODE_TLS_REJECT_UNAUTHORIZED = '0';
  const fileInput = document.getElementById('artwork');
  const formData = new FormData();  // Create a FormData object

  // Check if a file is selected
  if (fileInput.files.length === 0) {
      alert('Please select an image to upload.');
      return;
  }

  formData.append('file', fileInput.files[0]);  // Append the file to the FormData object

  // Define the API endpoint
  const url = "http://3.129.52.177:5000/api/upload";

  // Send a POST request with the form data
  fetch(url, {
      method: 'POST',
      body: formData
  })
  .then(response => response.json())
  .then(data => {
      console.log(data);  // Handle success - log the response to the console
      document.getElementById('results').innerText = JSON.stringify(data, null, 2);  // Display the result in the 'results' section
  })
  .catch(error => {
      console.error('Error:', error);  // Handle any errors
      document.getElementById('results').innerText = 'An error occurred while uploading the image.';
  });
});
