---
title: References
---

At the end of an academic year, students often ask me to write them a reference. Sometimes I have never met them.  

Here is the Javascript I used to generate a template. 


{% raw %}
<style>
  .reference-form {
    font-family: Arial, sans-serif;
    max-width: 800px;
    margin: 20px auto;
    padding: 20px;
    background: #f9f9f9;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0,0,0,0.1);
  }
  .form-group {
    margin-bottom: 15px;
  }
  label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
  }
  input[type="text"], input[type="number"] {
    width: 100%;
    padding: 8px;
    border: 1px solid #ddd;
    border-radius: 4px;
    box-sizing: border-box;
  }
  .radio-group {
    display: flex;
    justify-content: space-between;
  }
  button {
    display: block;
    width: 100%;
    padding: 10px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin-top: 20px;
  }
  button:hover {
    background-color: #45a049;
  }
  #generatedReference {
    background-color: #fff;
    border: 1px solid #ddd;
    padding: 15px;
    border-radius: 5px;
    white-space: pre-wrap;
    margin-top: 20px;
  }
  .marks-section {
    border: 1px solid #ddd;
    padding: 15px;
    margin-top: 15px;
    border-radius: 5px;
  }
</style>

<div class="reference-form">
  <h2>Academic Reference Generator</h2>
  <form id="referenceForm">
    <div class="form-group">
      <label for="studentName">Student Name:</label>
      <input type="text" id="studentName" required>
    </div>
    <div class="form-group">
      <label for="courseName">Course Name:</label>
      <input type="text" id="courseName" required>
    </div>
    <div class="form-group">
      <label for="academicYear">Academic Year:</label>
      <input type="text" id="academicYear" required>
    </div>
    <div class="form-group">
      <label>Asked for reference in advance?</label>
      <div class="radio-group">
        <label><input type="radio" name="askedInAdvance" value="yes" required> Yes</label>
        <label><input type="radio" name="askedInAdvance" value="NO"> No</label>
      </div>
    </div>
    <div class="form-group">
      <label>Permission to share marks?</label>
      <div class="radio-group">
        <label><input type="radio" name="shareMarks" value="yes" required onchange="toggleMarksSection()"> Yes</label>
        <label><input type="radio" name="shareMarks" value="NO" onchange="toggleMarksSection()"> No</label>
      </div>
    </div>
    <div id="marksSection" class="marks-section" style="display: none;">
      <div class="form-group">
        <label for="courseMark">Course Mark:</label>
        <input type="number" id="courseMark" min="0" max="100">
      </div>
      <div class="form-group">
        <label for="yearAverage">Year Average:</label>
        <input type="number" id="yearAverage" min="0" max="100">
      </div>
      <div class="form-group">
        <label for="finalProject">Final Project Mark:</label>
        <input type="number" id="finalProject" min="0" max="100">
      </div>
    </div>
    <div class="form-group">
      <label for="attendance">Attendance Percentage:</label>
      <input type="number" id="attendance" min="0" max="100" required>
    </div>
    <div class="form-group">
      <label>Student Memorability:</label>
      <div class="radio-group">
        <label><input type="radio" name="memorability" value="forgettable" required> Cannot easily bring to mind</label>
        <label><input type="radio" name="memorability" value="memorable"> Can easily bring to mind</label>
      </div>
    </div>
    <div class="form-group">
      <label for="specificSkills">Specific Skills to Mention:</label>
      <input type="text" id="specificSkills">
    </div>
    <div class="form-group">
      <label>Recommend for Master's Degree?</label>
      <div class="radio-group">
        <label><input type="radio" name="recommendMasters" value="yes" required> Yes</label>
        <label><input type="radio" name="recommendMasters" value="NO"> No</label>
      </div>
    </div>
    <button type="button" onclick="generateReference()">Generate Reference</button>
  </form>
  <div id="generatedReference"></div>
</div>

<script>
  function toggleMarksSection() {
    const marksSection = document.getElementById('marksSection');
    const shareMarks = document.querySelector('input[name="shareMarks"]:checked').value;
    marksSection.style.display = shareMarks === 'yes' ? 'block' : 'none';
  }

  function generateReference() {
    const form = document.getElementById('referenceForm');
    const reference = document.getElementById('generatedReference');
    
    const studentName = document.getElementById('studentName').value;
    const courseName = document.getElementById('courseName').value;
    const academicYear = document.getElementById('academicYear').value;
    const askedInAdvance = form.askedInAdvance.value;
    const shareMarks = form.shareMarks.value;
    const courseMark = document.getElementById('courseMark').value;
    const yearAverage = document.getElementById('yearAverage').value;
    const finalProject = document.getElementById('finalProject').value;
    const attendance = document.getElementById('attendance').value;
    const memorability = form.memorability.value;
    const specificSkills = document.getElementById('specificSkills').value;
    const recommendMasters = form.recommendMasters.value;

    if (!studentName || !courseName || !academicYear || !askedInAdvance || !shareMarks || !attendance || !memorability || !recommendMasters) {
      alert('Please fill in all required fields.');
      return;
    }

    let referenceText = `${studentName} attended my course on ${courseName} in the academic year ${academicYear}. They ${askedInAdvance === 'yes' ? 'did' : 'did not'} ask me in advance if I would provide a reference. They ${shareMarks === 'yes' ? 'have' : 'have not'} given me permission to share their marks`;

    if (shareMarks === 'yes' && courseMark && yearAverage && finalProject) {
      referenceText += ` for the course (${courseMark}), their average for the year (${yearAverage}), and their final project (${finalProject}).`;
    } else {
      referenceText += '.';
    }

    referenceText += `\n\nTheir (actual, measured by a secure system) attendance was ${attendance}%.`;

    referenceText += `\n\nThe course I teach has around 180 students and I`;

    if (memorability === 'forgettable') {
      referenceText += ` cannot easily bring ${studentName} to mind, which suggests that they pay their fees, submit work on time, and don't cause any trouble.`;
    } else {
      referenceText += ` can easily bring ${studentName} to mind. They were engaged, sensible and produced good work.`;
    }

    if (specificSkills) {
      referenceText += `\n\nThey have asked me to specifically talk about their skills in ${specificSkills}, and I am happy to do so…`;
    }

    if (recommendMasters === 'yes') {
      referenceText += `\n\nI have no hesitation in recommending ${studentName} to a Master's Degree.`;
    }

    reference.textContent = referenceText;
  }
</script>
{% endraw %}
