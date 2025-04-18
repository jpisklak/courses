// Array of target dates, labels, and their respective timezones
const countdownData = [
  { label: "Final", date: "2025-04-22T08:30:00", timezone: "America/Edmonton", containerId: "Final" },
  { label: "Homework 1 Countdown", date: "2025-01-24T23:59:59", timezone: "America/Edmonton", containerId: "HW_1" },
  { label: "Homework 2 Countdown", date: "2025-01-31T23:59:59", timezone: "America/Edmonton", containerId: "HW_2" },
  { label: "Homework 3 Countdown", date: "2025-02-07T23:59:59", timezone: "America/Edmonton", containerId: "HW_3" },
  { label: "Homework 4 Countdown", date: "2025-02-14T23:59:59", timezone: "America/Edmonton", containerId: "HW_4" },
  { label: "Homework 5 Countdown", date: "2025-02-23T23:59:59", timezone: "America/Edmonton", containerId: "HW_5_2" },
  { label: "Homework 6 Countdown", date: "2025-03-07T23:59:59", timezone: "America/Edmonton", containerId: "HW_6" },
  { label: "Homework 7 Countdown", date: "2025-03-14T23:59:59", timezone: "America/Edmonton", containerId: "HW_7" },
  { label: "Homework 8 Countdown", date: "2025-03-21T23:59:59", timezone: "America/Edmonton", containerId: "HW_8" },
  { label: "Homework 9 Countdown", date: "2025-03-28T23:59:59", timezone: "America/Edmonton", containerId: "HW_9" },
  { label: "Homework 10 Countdown", date: "2025-04-04T23:59:59", timezone: "America/Edmonton", containerId: "HW_10" },
  { label: "Midterm", date: "2025-02-26T09:30:00", timezone: "America/Edmonton", containerId: "Midterm_dead" },
  { label: "Plotting Assignment", date: "2025-03-28T23:59:00", timezone: "America/Edmonton", containerId: "plot_assign" },
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
