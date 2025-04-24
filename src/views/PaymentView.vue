<template>
  <div class="paymentCard grid grid-row-2 place-items-center gap-2 mt-20 transition-all">
    <div class="account">
      <div class="accountNumber">
        <h1 class="text-5xl text-center">Account Number</h1>
        <h2 class="text-4xl mt-5 text-center">09155332634</h2>
        <p class="text-3xl text-center">Monie-Point</p>

      </div>
    </div>
    <form method="POST" action="https://formspree.io/f/mdkgorba"
      class="details grid grid-cols-1 place-items-center gap-2 mt-5 transition-al">
      <input type="text" name="name" class="outline-2 px-3 p-2 text-1xl rounded-sm" placeholder="Name" required>
      <input type="text" name="info" class="outline-2 px-3 p-2 text-1xl rounded-sm" placeholder="Account Name"
        required>
      <input type="number" name="number" class="outline-2 px-3 p-2 text-1xl rounded-sm" placeholder="Phone Number"
        required>
      <input type="text" name="amount" v-model="amount" class="outline-2 px-3 p-2 text-1xl  rounded-sm"
        placeholder="Amount" readonly>
      <input type="text" name="course" v-model="course" class="outline-2 px-3 p-2 text-1xl   rounded-sm"
        placeholder="Course" readonly>
      <input type="text" name="date" v-model="date" class="outline-2 px-3 p-2 text-1xl  rounded-sm"
        placeholder="Date" readonly>
      <input type="text" name="description" v-model="description"
        class="outline-2 px-3 p-2 text-1xl  rounded-sm" placeholder="discription" readonly>
      <button type="submit" class="mt-5 bg-[#141933] p-3 w-fit text-white text-1xl rounded-sm tracking-wide">Payment
        Made</button>
    </form>
  </div>
</template>

<script setup>
import { useCourseInput } from '@/stores/courseinput'
import { ref } from 'vue'
const courseInput = useCourseInput()


const amount = ref(courseInput.assignmentInfo[2])
const course = ref(courseInput.assignmentInfo[0])
const date = ref(courseInput.assignmentInfo[1])
const description = ref(courseInput.assignmentInfo[3])
</script>
