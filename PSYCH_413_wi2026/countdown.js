// Array of target dates, labels, and their respective timezones
const countdownData = [
  // { label: "Homework 1 Countdown", date: "2025-01-24T23:59:59", timezone: "America/Edmonton", containerId: "HW_1" },
  {
    label: "Midterm_due",
    date: "2026-02-25T09:30:00",
    timezone: "America/Edmonton",
    containerId: "Midterm",
  },
  {
    label: "Plotting Assignment",
    date: "2026-04-03T23:59:00",
    timezone: "America/Edmonton",
    containerId: "plot_assign",
  },
  {
    label: "Final",
    date: "2026-04-17T17:30:00",
    timezone: "America/Edmonton",
    containerId: "Final",
  },
  {
    label: "Final Submission",
    date: "2026-04-18T17:30:00",
    timezone: "America/Edmonton",
    containerId: "Final2",
  },
  {
    label: "Homework 1",
    date: "2026-01-16T23:59:00",
    timezone: "America/Edmonton",
    containerId: "HW1",
  },

  {
    label: "Homework 2",
    date: "2026-01-23T23:59:00",
    timezone: "America/Edmonton",
    containerId: "HW2",
  },

  {
    label: "Homework 3",
    date: "2026-01-30T23:59:00",
    timezone: "America/Edmonton",
    containerId: "HW3",
  },

  {
    label: "Homework 4",
    date: "2026-02-06T23:59:00",
    timezone: "America/Edmonton",
    containerId: "HW4",
  },

    {
    label: "Homework 5",
    date: "2026-02-13T23:59:00",
    timezone: "America/Edmonton",
    containerId: "HW5",
  },

  {
    label: "Homework 6",
    date: "2026-02-27T23:59:00",
    timezone: "America/Edmonton",
    containerId: "HW6",
  },
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
