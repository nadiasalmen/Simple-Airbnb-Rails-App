// app/javascript/plugins/flatpickr.js
import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const initFlatpickr = () => {
  flatpickr("#range_start", {
    altInput: true,
    minDate: "today",
    plugins: [new rangePlugin({ input: "#range_end"})]
  });
}

export { initFlatpickr };
