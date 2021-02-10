const btn = document.getElementById('btn');
const api = "http://localhost:3000";

btn.addEventListener('click', () => {
    loadData();
})

function loadData() {
    fetch(api + '/role')
        .then(res => res.json())
        .then(res => {
            console.log(res)
        })
}