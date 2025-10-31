// Array of target dates, labels, and their respective timezones
const countdownData = [
  { label: "Final", date: "2025-12-18T08:30:00", timezone: "America/Edmonton", containerId: "Final" },
  // { label: "Homework 1 Countdown", date: "2025-01-24T23:59:59", timezone: "America/Edmonton", containerId: "HW_1" },
  { label: "Midterm", date: "2025-10-22T15:30:00", timezone: "America/Edmonton", containerId: "Midterm3" },
  { label: "Plotting Assignment", date: "2025-11-28T23:59:00", timezone: "America/Edmonton", containerId: "plot_assign" },
  { label: "Final Submission", date: "2025-12-19T08:30:00", timezone: "America/Edmonton", containerId: "Final2" },

  { label: "Homework 1", date: "2025-09-12T23:59:00", timezone: "America/Edmonton", containerId: "HW1" },
  { label: "Homework 2", date: "2025-09-19T23:59:00", timezone: "America/Edmonton", containerId: "HW2" },
  { label: "Homework 3", date: "2025-09-26T23:59:00", timezone: "America/Edmonton", containerId: "HW3" },
  { label: "Homework 4", date: "2025-10-03T23:59:00", timezone: "America/Edmonton", containerId: "HW4" },
  { label: "Homework 5", date: "2025-10-10T23:59:00", timezone: "America/Edmonton", containerId: "HW5" },
  { label: "Homework 6", date: "2025-10-17T23:59:00", timezone: "America/Edmonton", containerId: "HW6" },
  { label: "Homework 7", date: "2025-10-24T23:59:00", timezone: "America/Edmonton", containerId: "HW7" },
  { label: "Homework 8", date: "2025-10-31T23:59:00", timezone: "America/Edmonton", containerId: "HW8" },
  { label: "Homework 9", date: "2025-11-07T23:59:00", timezone: "America/Edmonton", containerId: "HW9" },



];

// Function to create a timer in a specific container
const createTimerElement = (label, id, containerId) => {
  const container = document.getElementById(containerId);

  if (container) {
    const timerDiv = document.createElement("div");
    timerDiv.className = "timer";
    timerDiv.id = `timer-${id}`;
    timerDiv.innerText = `Loading ${label}...`;
    container.appendChild(timerDiv);
  }
};

// Create timer elements for each event
countdownData.forEach((item, index) => {
  createTimerElement(item.label, index, item.containerId);
});

// Function to update all timers
const updateTimers = () => {
  countdownData.forEach((item, index) => {
    const targetDate = moment.tz(item.date, item.timezone); // Parse date with timezone
    const now = moment(); // Current time in local timezone
    const timeLeft = targetDate - now; // Time difference in milliseconds

    const timerElement = document.getElementById(`timer-${index}`);
    if (timerElement) {
      if (timeLeft > 0) {
        const duration = moment.duration(timeLeft);
        const days = Math.floor(duration.asDays());
        const hours = duration.hours();
        const minutes = duration.minutes();
        const seconds = duration.seconds();

        timerElement.innerText = `${days}d ${hours}h ${minutes}m ${seconds}s`;
      } else {
        timerElement.innerText = "Deadline has passed";
      }
    }
  });
};

// Update all timers every second
setInterval(updateTimers, 1000);
