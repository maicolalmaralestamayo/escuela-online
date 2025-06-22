<div class="form-group" wire:ignore>
    <label for="input-picker-date-time">Fecha y Hora</label>
    <div class="input-group date ok" id="picker-date-time" data-target-input="nearest">
        <input 
            type="text" 
            class="form-control datetimepicker-input"
            id="input-picker-date-time"
            data-target="#picker-date-time"
            data-toggle="datetimepicker"
            value={{$valor}}
        />
        <div class="input-group-append" data-target="#picker-date-time" data-toggle="datetimepicker">
            <div class="input-group-text"><i class="fa fa-calendar"></i></div>
        </div>
    </div>
  </div>