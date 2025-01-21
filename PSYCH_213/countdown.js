// Array of target dates, labels, and their respective timezones
const countdownData = [
  { label: "Midterm", date: "2025-03-04T15:30:00", timezone: "America/Edmonton", containerId: "Midterm" },
  { label: "Final", date: "2025-04-22T13:00:00", timezone: "America/Edmonton", containerId: "Final" },
  { label: "Achieve Countdown", date: "2025-03-04T15:30:00", timezone: "America/Edmonton", containerId: "Achieve_1" },
  { label: "Achieve Countdown", date: "2025-04-09T11:59:00", timezone: "America/Edmonton", containerId: "Achieve_2" },
  { label: "Homework Countdown", date: "2025-02-04T11:59:00", timezone: "America/Edmonton", containerId: "HW_1" }
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
        timerElement.innerText = "Time's up!";
      }
    }
  });
};

// Update all timers every second
setInterval(updateTimers, 1000);
