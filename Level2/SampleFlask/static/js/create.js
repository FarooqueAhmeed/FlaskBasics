// --------- To  disable and fill the Actually done values ---------

let custom_inputs_config = {
  "#TLPDCAForm #ta8": {
    readOnly: true,
  },
  "#TLPDCAForm #ta11": {
    readOnly: true,
  },
  "#TLPDCA2Form #ta8": {
    readOnly: true,
  },
  "#TLPDCA2Form #ta11": {
    readOnly: true,
  },
  "#GLPDCAForm #in52": {
    readOnly: true,
  },
  "#GLPDCAForm #ta4": {
    readOnly: true,
  },
};

for (let config_key in custom_inputs_config) {
  let config_value = custom_inputs_config[config_key];

  for (let sub_config_key in config_value) {
    let sub_config_value = config_value[sub_config_key];
    $(config_key).prop(sub_config_key, sub_config_value);
  }
}

// total check boxes
$("#GLPDCAForm #in52").val($("#GLPDCAForm input[type=checkbox]").length);
$("#TLPDCA2Form #ta8").val($("#TLPDCA2Form input[type=checkbox]").length);
$("#TLPDCAForm #ta8").val($("#TLPDCAForm input[type=checkbox]").length);

function fillCheckedCheckboxValues() {
  $("#GLPDCAForm #ta4").val(
    $("#GLPDCAForm input[type=checkbox]:checked").length
  );
  $("#TLPDCA2Form #ta11").val(
    $("#TLPDCA2Form input[type=checkbox]:checked").length
  );
  $("#TLPDCAForm #ta11").val(
    $("#TLPDCAForm input[type=checkbox]:checked").length
  );
}

// total checked check boxes | actually done
$("input[type=checkbox]").change(function () {
  // on checkbox state changed, reinit the input screen
  fillCheckedCheckboxValues();
});

window.onload = function () {
  // check the checkbox values on load
  fillCheckedCheckboxValues();
};

// --------- To validate and send data to the server ---------

let TLPDCAForm_valid = false;
let GLPDCAForm_valid = false;
let TLPDCA2Form_valid = false;
let form_ids = ["TLPDCAForm", "GLPDCAForm", "TLPDCA2Form"];

$("#page_submit_button").click(function () {
  $("#TLPDCAForm_submit").click();
  $("#GLPDCAForm_submit").click();
  $("#TLPDCA2Form_submit").click();
});

$("#TLPDCAForm").submit(function (e) {
  TLPDCAForm_valid = true;
  check_and_send_data();
  return false;
});

$("#GLPDCAForm").submit(function (e) {
  GLPDCAForm_valid = true;
  check_and_send_data();
  return false;
});

$("#TLPDCA2Form").submit(function (e) {
  TLPDCA2Form_valid = true;
  check_and_send_data();
  return false;
});

function check_and_send_data() {
  if (TLPDCAForm_valid && GLPDCAForm_valid && TLPDCA2Form_valid) {
    send_data_to_server();
  }
}

function send_data_to_server() {
  let data_to_be_sent = {
    TLPDCAForm: {},
    GLPDCAForm: {},
    TLPDCA2Form: {},
  };

  for (let form_id_index in form_ids) {
    let form_id = form_ids[form_id_index];
    let form_data = $(`#${form_id}`).serializeArray();
    $.each(form_data, function (i, field) {
      data_to_be_sent[form_id][field.name] = field.value;
    });
  }

  $.ajax("/create-handler", {
    contentType: "application/json",
    type: "POST",
    data: JSON.stringify(data_to_be_sent),
    success: function (data, status, xhr) {
      if (data == "success") {
        alert(data);
        window.location.reload();
      } else alert("error");

      TLPDCAForm_valid = false;
      GLPDCAForm_valid = false;
      TLPDCA2Form_valid = false;
    },
    error: function (jqXhr, textStatus, errorMessage) {
      alert(errorMessage, "error");
      console.log(errorMessage, "error");
    },
  });
}
