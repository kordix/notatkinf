<script type="text/x-template" id="linki">
    <div>
            <p>Search: <input type="text" v-model="search"></p>
            <div>
                <table class="table table-bordered table-dark">
                    <thead>
                        <tr>
                            <th v-for="elem in heads" @click="sortBy(elem)">{{elem}}</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="elem in filtered">
                            <td v-for="k in heads">{{elem[k]}}</td>
                            <td>
                                <button type="button" class="btn btn-success editbtn" @click="edit(elem.id)"> EDIT </button>
                              </td>
                              <td>
                                <button type="button" class="btn btn-danger deletebtn" @click="deletem(elem.id)"> DELETE </button>
                            </td>
                        </tr>

                    </tbody>
                </table>
            </div>

            <div>    
            <p><b>Dodaj pozycję:</b></p>

            <label for="">Kod</label>
            <input type="text" v-model="editedone.link">
            <br>
            <label for="">Opis</label>
            <input type="text" v-model="editedone.opis">
            <br>
            <label for="">Kategoria</label>
            <input type="text" v-model="editedone.kategoria">
            <br>
            <br>
            <button @click="add" v-if="!editedone.id">Zatwierdź</button>

            <button @click="update" v-if="editedone.id">Zmień</button>

            </div>

            <!-- <div v-if="editedone.id">    
            <p><b>Edytuj pozycję {{editedone.id}}:</b></p>
            <input type="text" v-model="editedone.imie">
            <input type="text" v-model="editedone.nazwisko">
            <button @click="update">Zatwierdź</button>
            </div> -->
</div>
</script>


<script>
    Vue.component('linki', {
        template: '#linki',
        data() {
            return {
                heads: [],
                cruddata: [],
                cruddataadd:{},
                editedone: {},
                search: '',
                sortkey: ''
            }
        },
        created() {
            this.getData();
        },
        methods: {
            getData(){
                let self = this;
            axios.post('api/read.php', {
                tabela: 'linki'
            }).then((res) => {
                this.cruddata = res.data
            }).then((res) => self.getHeads());

            },
            edit(id) {
                this.editedone = this.cruddata.find((el) => el.id == id);
            },
            add(){
                let self = this;
                axios.post('api/add.php',{tabela:'linki',dane:this.editedone}).then((res)=>{self.editedone = {};self.getData()})
            },
            update() {
                axios.post('api/update.php', {
                    tabela: 'linki',
                    dane: this.editedone,
                    id: this.editedone.id
                }).then((res) => {
                    this.editedone = {}
                })

            },
            deletem(id) {
                axios.post('api/delete.php', {
                    tabela: 'linki',
                    id: id
                }).then((res) => console.log(res)).then((res) => location.reload());
            },
            getHeads() {
                if (this.cruddata[0]) {
                    this.heads = Object.keys(this.cruddata[0])
                }
            },
            sortBy(elem) {
                console.log('sortby');
                this.sortkey = elem;
            }
        },
        computed: {
            filtered: function() {
                let self = this;
                var filterKey = this.search && this.search.toLowerCase()
                var order = 1;
                var filtered = this.cruddata;
                if (filterKey) {
                    filtered = filtered.filter(function(row) {
                        return Object.keys(row).some(function(key) {
                            return String(row[key]).toLowerCase().indexOf(filterKey) > -1
                        })
                    })
                }
                if (this.sortkey) {

                    filtered = filtered.sort(function(a, b) {
                        console.log(self.sortkey);

                        var keyA = a[self.sortkey];
                        var keyB = b[self.sortkey];
                        // Compare the 2 dates
                        if (keyA < keyB) return -1;
                        if (keyA > keyB) return 1;
                        return 0;
                    })
                }
                return filtered
            }
        }
    });
</script>