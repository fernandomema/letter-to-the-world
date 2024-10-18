<script lang="ts">
    import { onMount } from 'svelte';
    import { BlockNoteEditor } from "@blocknote/core";
    
    onMount(() => {
        const editor = BlockNoteEditor.create();
        editor.mount(document.getElementById("root"));
    }); 
</script>

<div class="p-4">
    <div class="p-4 bg-secondary-200 rounded-md container mx-auto" id="root">
        asd
    </div>
</div>