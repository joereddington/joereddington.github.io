---
layout: post
title: "How long does marking take?"
date: "Fri Jan 10 16:40:51 +0000 2025"
---

It's an interactive one! 

    <style>
        body {
            font-family: system-ui, -apple-system, sans-serif;
            line-height: 1.5;
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f5f5f5;
        }
        .card {
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            padding: 20px;
            margin-top: 20px;
        }
        .form-group {
            margin-bottom: 1rem;
        }
        label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: 500;
        }
        input[type="date"],
        input[type="number"] {
            width: 100%;
            padding: 0.5rem;
            border: 1px solid #ddd;
            border-radius: 4px;
            margin-bottom: 0.5rem;
        }
        .checkbox-label {
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }
        .help-text {
            font-size: 0.875rem;
            color: #666;
            margin-left: 1.5rem;
        }
        .results {
            margin-top: 1.5rem;
            padding-top: 1.5rem;
            border-top: 1px solid #eee;
        }
        .alert {
            padding: 1rem;
            border-radius: 4px;
            margin: 1rem 0;
        }
        .alert-warning {
            background-color: #fee2e2;
            border: 1px solid #fecaca;
            color: #991b1b;
        }
        .alert-info {
            background-color: #dbeafe;
            border: 1px solid #bfdbfe;
            color: #1e40af;
        }
    </style>
    <div class="card">
        <h1>Coursework Marking Time Calculator</h1>
        
        <div class="form-group">
            <label>Original coursework deadline</label>
            <input type="date" id="submissionDate">
        </div>

        <script>
            // Set today's date as default for submission date
            const today = new Date();
            const formattedDate = today.toISOString().split('T')[0];
            document.getElementById('submissionDate').value = formattedDate;
        </script>

        <div class="form-group">
            <label class="checkbox-label">
                <input type="checkbox" id="anonymousMarking" checked>
                Is this coursework to be marked anonymously?
            </label>
            <p class="help-text">Note: For anonymous marking, we must wait 8 days after the submission date (this accounts for five working days plus 24 hours for official late submissions) before marking can begin.</p>
        </div>

        <div class="form-group">
            <label class="checkbox-label">
                <input type="checkbox" id="needsReview" checked>
                Is this coursework subject to 'marking with moderation'?
            </label>
            <p class="help-text">Note: Moderation takes 3 additional days after first marking is complete.</p>
        </div>

        <div class="form-group">
            <label>Minutes to read 1,000 words thoroughly</label>
            <input type="number" id="readingSpeed" value="18">
        </div>

        <div class="form-group">
            <label>Coursework word count</label>
            <input type="number" id="wordCount" value="2500">
        </div>

        <div class="form-group">
            <label>Minutes for personal feedback (we write ~35 words/min)</label>
            <input type="number" id="feedbackTime" value="1">
        </div>

        <div id="minutesPerSubmission" class="alert alert-info" style="display: none;">
            <!-- Minutes per submission will be inserted here -->
        </div>

        <div class="form-group">
            <label>Number of students</label>
            <input type="number" id="numStudents" value="120">
        </div>

        <div id="totalTimeNeeded" class="alert alert-info" style="display: none;">
            <!-- Total time will be inserted here -->
        </div>

        <div class="form-group">
            <label>Hours a lecturer can safely mark per day without making mistakes</label>
            <input type="number" id="hoursPerDay" value="2">
        </div>

        <div id="daysNeededMessage" class="alert alert-info" style="display: none;">
            <!-- Days needed message will be inserted here -->
        </div>

        <div class="form-group">
            <label>Days per week the lecturer works</label>
            <input type="number" id="daysPerWeek" value="3" min="1" max="7">
        </div>

        <div id="results" class="results" style="display: none;">
            <!-- Results will be inserted here -->
        </div>
    </div>

    <script>
        function addDays(date, days) {
            const result = new Date(date);
            result.setDate(result.getDate() + days);
            return result;
        }

        function formatDate(date) {
            return new Intl.DateTimeFormat('en-GB').format(date);
        }

        function calculateMarkingTime() {
            const submissionDate = document.getElementById('submissionDate').value;
            const anonymousMarking = document.getElementById('anonymousMarking').checked;
            const needsReview = document.getElementById('needsReview').checked;
            const numStudents = parseInt(document.getElementById('numStudents').value) || 0;
            const readingSpeed = parseInt(document.getElementById('readingSpeed').value) || 0;
            const wordCount = parseInt(document.getElementById('wordCount').value) || 0;
            const feedbackTime = parseInt(document.getElementById('feedbackTime').value) || 0;
            const hoursPerDay = parseInt(document.getElementById('hoursPerDay').value) || 0;
            const daysPerWeek = parseInt(document.getElementById('daysPerWeek').value) || 0;

            // Calculate minutes per submission first
            const minutesPerSubmission = (wordCount / 1000) * readingSpeed + feedbackTime;

            // Update all the displays even if some values are missing
            updateDisplays({
                minutesPerSubmission,
                wordCount,
                readingSpeed,
                feedbackTime,
                numStudents,
                hoursPerDay,
                daysPerWeek,
                submissionDate,
                anonymousMarking,
                needsReview
            });
        }

        function updateDisplays(params) {
            // Display minutes per submission
            const minutesPerSubmissionDiv = document.getElementById('minutesPerSubmission');
            if (params.wordCount && params.readingSpeed && params.feedbackTime && minutesPerSubmissionDiv) {
                minutesPerSubmissionDiv.style.display = 'block';
                minutesPerSubmissionDiv.innerHTML = `Minutes needed per submission: ${Math.round(params.minutesPerSubmission * 10) / 10} minutes`;
            } else if (minutesPerSubmissionDiv) {
                minutesPerSubmissionDiv.style.display = 'none';
            }

            // Only proceed with total calculations if we have all required values
            if (!params.wordCount || !params.readingSpeed || !params.feedbackTime || !params.numStudents) return;

            const totalMinutes = params.minutesPerSubmission * params.numStudents;
            const totalHours = totalMinutes / 60;

            // Display total time needed
            const totalTimeDiv = document.getElementById('totalTimeNeeded');
            if (totalTimeDiv) {
                totalTimeDiv.style.display = 'block';
                totalTimeDiv.innerHTML = `Total marking time needed: ${Math.round(totalHours * 10) / 10} hours (${Math.round(totalMinutes)} minutes)`;
            }

            // Only proceed with days calculations if we have hours per day
            if (!params.hoursPerDay || !params.daysPerWeek) return;

            // Display days needed message
            const daysNeededDiv = document.getElementById('daysNeededMessage');
            if (daysNeededDiv) {
                const rawDaysNeeded = totalHours / params.hoursPerDay;
                const adjustedDaysNeeded = Math.ceil((rawDaysNeeded * 7) / params.daysPerWeek);
                daysNeededDiv.style.display = 'block';
                daysNeededDiv.innerHTML = `At ${params.hoursPerDay} hours per day, marking will take ${adjustedDaysNeeded} calendar days (when working ${params.daysPerWeek} days per week)`;
            }

            // Only proceed with final deadline if we have a submission date
            if (!params.submissionDate) return;

            const daysNeeded = Math.ceil((totalHours / params.hoursPerDay) * (7 / params.daysPerWeek));
            const deadlineDate = new Date(params.submissionDate);
            const firstMarkingDate = addDays(deadlineDate, (params.anonymousMarking ? daysNeeded + 8 : daysNeeded));
            const secondMarkingDate = params.needsReview ? addDays(firstMarkingDate, 3) : null;
            const threeWeekDeadline = addDays(deadlineDate, 21);

            const isOverThreeWeeks = params.needsReview ? 
                (secondMarkingDate > threeWeekDeadline) : 
                (firstMarkingDate > threeWeekDeadline);

            // Display final results
            const resultsDiv = document.getElementById('results');
            if (resultsDiv) {
                resultsDiv.style.display = 'block';
                resultsDiv.innerHTML = `
                    <div>
                        <strong>Date first marking completed:</strong> ${formatDate(firstMarkingDate)}
                        ${params.anonymousMarking ? ' (after 8-day anonymous marking period)' : ''}
                    </div>
                    ${params.needsReview ? `
                        <div>
                            <strong>Date second marker review completed:</strong> ${formatDate(secondMarkingDate)}
                        </div>
                    ` : ''}
                    ${isOverThreeWeeks ? `
                        <div class="alert alert-warning">
                            ⚠ Warning: College policies require marks to be returned to students within three weeks of submission 
                            (by ${formatDate(threeWeekDeadline)}). 
                            The current schedule exceeds this deadline.
                        </div>
                    ` : ''}
                    <div class="alert alert-info">
                        Calendar weeks needed: ${Math.ceil(daysNeeded / 7)} weeks (working ${params.daysPerWeek} days per week)
                    </div>
                `;
            }
        }

        // Add event listeners to all inputs
        document.querySelectorAll('input').forEach(input => {
            input.addEventListener('change', calculateMarkingTime);
            input.addEventListener('input', calculateMarkingTime);
        });

        // Calculate on page load
        window.addEventListener('load', calculateMarkingTime);
    </script>

