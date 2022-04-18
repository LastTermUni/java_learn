'use strict';
var notify = $.notify('<i class="fa fa-bell-o"></i><strong>Loading</strong> Đang cập nhật dữ liệu...', {
    type: 'theme',
    allow_dismiss: true,
    delay: 2000,
    showProgressbar: true,
    timer: 300,
    animate:{
        enter:'animated fadeInDown',
        exit:'animated fadeOutUp'
    }
});

setTimeout(function() {
    notify.update('message', '<i class="fa fa-bell-o"></i><strong>Loading</strong> Hoàn tất.');
}, 500);
