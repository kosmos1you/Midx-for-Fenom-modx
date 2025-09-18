{*
Реализация правильного checkbox для форм

{'!AjaxForm' | snippet : [
    'validate' => 'politic:required',
*}

    <input type="hidden" name="politic[]" value="" />
    <div class="chek_wrap">
    	<input type="checkbox" name="politic[]" value="politic" [[!+fi.politic:FormItIsChecked=`politic`]]  id="modal-form-agree" required>
    	<label class="caption placeholder"  for="modal-form-agree">Я согласен с условиями </label> <a href="{$_modx->makeUrl(24338)}" class="rules-link">Обработки персональных данных</a>
	</div>

    {$fi.successMessage}
    {$fi.validation_error_message}


<style>

#callback-modal input[type="checkbox"] {
    appearance: none;
    position: relative;
    width: 30px;
    height: 30px;
    background:#F46036;
    box-shadow: inset 0 0 5px rgb(0 0 0 / 0.2);
    border-radius: 10px;
    border: 1px solid #F46036;
    transition: 500ms;
}

#callback-modal input[type="checkbox"]::after {
  content: "";
  position: absolute;
  width: 0px;
  height: 0px;
  background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' height='30' viewBox='0 -960 960 960' width='30' stroke='%23FFFFFF' stroke-width='30' fill='%23FFFFFF'%3E%3Cpath d='M382-240 154-468l57-57 171 171 367-367 57 57-424 424Z'/%3E%3C/svg%3E");
  background-repeat: no-repeat;
  transition: 500ms;
}

#callback-modal input[type="checkbox"]:checked::after {
  width: 30px;
  height: 30px;
  transition: 500ms;
}

#callback-modal .chek_wrap {
    margin-top: 5px;
    width: fit-content;
    display: flex;
    justify-content: center;
    align-items: center;
}

#callback-modal .chek_wrap label {
    padding-left: 5px;
}

</style>
