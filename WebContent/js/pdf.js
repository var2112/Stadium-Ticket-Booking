window.onload = function () {
    document.getElementById("download")
        .addEventListener("click", () => {
            const invoice = this.document.getElementById("ticket");
            console.log(invoice);
            console.log(window);
            var opt = {
                margin: 1,
                filename: 'Ticket.pdf',
                image: { type: 'jpeg', quality: 0.98 },
                js2canvas: { scale: 2 },
                jsPDF: { unit: 'in', format: 'letter', orientation: 'portrait' }
            };
            jsPDF().from(invoice).set(opt).save();
        })
}