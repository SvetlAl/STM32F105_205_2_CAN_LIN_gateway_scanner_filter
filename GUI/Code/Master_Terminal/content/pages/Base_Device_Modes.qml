import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import CoreImport;
import "BaseItems";
import "SimpleItems";

Base {
    id: root

    /********* size settings ********/
    property real buttons_width_mlt: 3.5
    property int width_grid_sz: width*st_side_crop / 10
    /********* colors settings ********/
    property string st_font_color: CoreImport._Base_Color_BaseFont

    /********* values ********/
    //========= CAN 1 ==================
    property int st_BTR_PSC: st_val_BTR_PSC
    function set_BTR_PSC(val){
        st_BTR_PSC = val;
        i_PSC._value = st_BTR_PSC.toString(10);
        device_manager.val_BTR_PSC = val;
    }
    function refresh_BTR(){
        i_PSC._value = st_BTR_PSC.toString(10);
    }
    property int st_BTR_BS1: st_val_BTR_BS1
    function set_BTR_BS1(val){
        st_BTR_BS1 = val;
        i_BS1._value = st_BTR_BS1.toString(10);
        device_manager.val_BTR_BS1 = val;
    }
    function refresh_BS1(){
        i_BS1._value = st_BTR_BS1.toString(10);
    }
    property int st_BTR_BS2: st_val_BTR_BS2
    function set_BTR_BS2(val){
        st_BTR_BS2 = val;
        i_BS2._value = st_BTR_BS2.toString(10);
        device_manager.val_BTR_BS2 = val;
    }
    function refresh_BS2(){
        i_BS2._value = st_BTR_BS2.toString(10);
    }
    property int st_BTR_SJW: st_val_BTR_SJW
    function set_BTR_SJW(val){
        st_BTR_SJW = val;
        i_SJW._value = st_BTR_SJW.toString(10);
        device_manager.val_BTR_SJW = val;
    }
    function refresh_SJW(){
        i_SJW._value = st_BTR_SJW.toString(10);
    }

    //========= CAN 2 ==================
    property int st_BTR_PSC_2: st_val_BTR_PSC_2
    function set_BTR_PSC_2(val){
        st_BTR_PSC_2 = val;
        i_PSC_2._value = st_BTR_PSC_2.toString(10);
        device_manager.val_BTR_PSC_2 = val;
    }
    function refresh_BTR_2(){
        i_PSC_2._value = st_BTR_PSC_2.toString(10);
    }
    property int st_BTR_BS1_2: st_val_BTR_BS1_2
    function set_BTR_BS1_2(val){
        st_BTR_BS1_2 = val;
        i_BS1_2._value = st_BTR_BS1_2.toString(10);
        device_manager.val_BTR_BS1_2 = val;
    }
    function refresh_BS1_2(){
        i_BS1_2._value = st_BTR_BS1_2.toString(10);
    }
    property int st_BTR_BS2_2: st_val_BTR_BS2_2
    function set_BTR_BS2_2(val){
        st_BTR_BS2_2 = val;
        i_BS2_2._value = st_BTR_BS2_2.toString(10);
        device_manager.val_BTR_BS2_2 = val;
    }
    function refresh_BS2_2(){
        i_BS2_2._value = st_BTR_BS2_2.toString(10);
    }
    property int st_BTR_SJW_2: st_val_BTR_SJW_2
    function set_BTR_SJW_2(val){
        st_BTR_SJW_2 = val;
        i_SJW_2._value = st_BTR_SJW_2.toString(10);
        device_manager.val_BTR_SJW_2 = val;
    }
    function refresh_SJW_2(){
        i_SJW_2._value = st_BTR_SJW_2.toString(10);
    }

    property int st_cdc_threshold_value: st_val_cdc_threshold_value

    function set_cdc_threshold_value(val){
        if(val > 255 || val < 0) return;
        st_cdc_threshold_value = val;
        i_cdc_thresh_value.a_slider._value = st_val_cdc_threshold_value;
        device_manager.cdc_injection_threshold_value = val;
    }
    function refresh_cdc_threshold_value(){
        i_cdc_thresh_value.a_slider._value = st_val_cdc_threshold_value;
    }



    property int composition_side_crop: (width - (width * st_side_crop))/2
    property int vertical_gap: st_initial_item_height/2

    /********* alias ********/
    readonly property int _DEVICE_OPERATION_MODE_DEFAULT: 255
    readonly property int _DEVICE_OPERATION_MODE_ON: 1
    readonly property int _DEVICE_OPERATION_MODE_OFF: 2
    readonly property int _DEVICE_OPERATION_MODE_REV: 3
    readonly property int _DEVICE_OPERATION_MODE_CIRCULAR_REV: 4
    readonly property int _DEVICE_OPERATION_MODE_CIRCULAR: 5
    readonly property int _DEVICE_OPERATION_MODE_FILTR_UPD: 6
    readonly property int _DEVICE_OPERATION_MODE_CDC_TRACE_AUTO_THRESHOLD: 7
    readonly property int _DEVICE_OPERATION_MODE_CDC_TRACE_FIXED_THRESHOLD: 8


    property int st_canGateway_Mode: device_manager.canGateway_Mode
    property int st_calibratorFilter_Mode: device_manager.calibratorFilter_Mode
    property int st_canOverride_Mode: device_manager.canOverride_Mode
    property int st_canScanner_Mode: device_manager.canScanner_Mode
    property int st_can2Scanner_Mode: device_manager.can2Scanner_Mode
    property int st_memoryPrograming_Mode: device_manager.memoryPrograming_Mode
    property int st_canInjection_Mode: device_manager.canInjection_Mode

    property int st_customBTR_Mode: device_manager.customBTR_Mode
    property int st_val_BTR_PSC: device_manager.val_BTR_PSC
    property int st_val_BTR_BS1: device_manager.val_BTR_BS1
    property int st_val_BTR_BS2: device_manager.val_BTR_BS2
    property int st_val_BTR_SJW: device_manager.val_BTR_SJW

    property int st_customBTR_Mode_2: device_manager.customBTR_Mode_2
    property int st_val_BTR_PSC_2: device_manager.val_BTR_PSC_2
    property int st_val_BTR_BS1_2: device_manager.val_BTR_BS1_2
    property int st_val_BTR_BS2_2: device_manager.val_BTR_BS2_2
    property int st_val_BTR_SJW_2: device_manager.val_BTR_SJW_2

    property int st_cdc_threshold_mode: device_manager.cdc_injection_threshold_mode
    property int st_val_cdc_threshold_value: device_manager.cdc_injection_threshold_value

    property int st_scanner_hardware_filter: device_manager.scanner_hardware_filter

    property string st_memchip_name: device_manager.memchip_name


    property bool circular_injection_mode: false
    property bool can_reverse_injection_mode:  false


    Connections {
        target: device_manager  /* registered in root context */
        function onChanged(){
            st_canGateway_Mode = device_manager.canGateway_Mode;
            st_calibratorFilter_Mode = device_manager.calibratorFilter_Mode;
            st_canOverride_Mode = device_manager.canOverride_Mode;
            st_canScanner_Mode = device_manager.canScanner_Mode;
            st_can2Scanner_Mode = device_manager.can2Scanner_Mode;
            st_memoryPrograming_Mode = device_manager.memoryPrograming_Mode
            st_customBTR_Mode = device_manager.customBTR_Mode
            st_val_BTR_PSC = device_manager.val_BTR_PSC
            st_val_BTR_BS1 = device_manager.val_BTR_BS1
            st_val_BTR_BS2 = device_manager.val_BTR_BS2
            st_val_BTR_SJW = device_manager.val_BTR_SJW

            st_customBTR_Mode_2 = device_manager.customBTR_Mode_2
            st_val_BTR_PSC_2 = device_manager.val_BTR_PSC_2
            st_val_BTR_BS1_2 = device_manager.val_BTR_BS1_2
            st_val_BTR_BS2_2 = device_manager.val_BTR_BS2_2
            st_val_BTR_SJW_2 = device_manager.val_BTR_SJW_2

            st_cdc_threshold_mode = device_manager.cdc_injection_threshold_mode
            st_cdc_threshold_value = device_manager.cdc_injection_threshold_value

            st_scanner_hardware_filter = device_manager.scanner_hardware_filter

            st_memchip_name = device_manager.memchip_name
            i_id_start.a_txt_input.text = "0x" + device_manager.str_scanner_hardware_filter_lwr;
            i_id_start._value = device_manager.str_scanner_hardware_filter_lwr.toUpperCase();
            i_id_end.a_txt_input.text = "0x" + device_manager.str_scanner_hardware_filter_hgr;
            i_id_end._value = device_manager.str_scanner_hardware_filter_hgr.toUpperCase();
        }
    }
    Connections {
        target: device_manager  /* registered in root context */
        function onMemchip_changed(){
            st_memchip_name = device_manager.memchip_name;
        }
    }
    Component.onCompleted: {
        cmd_manager.updateDeviceStatus();
        refresh_BTR();
        refresh_BS1();
        refresh_BS2();
        refresh_SJW();
        refresh_BTR_2();
        refresh_BS1_2();
        refresh_BS2_2();
        refresh_SJW_2();
        refresh_cdc_threshold_value();

        i_id_start.a_txt_input.text = "0x" + device_manager.str_scanner_hardware_filter_lwr;
        i_id_start._value = device_manager.str_scanner_hardware_filter_lwr.toUpperCase();
        i_id_end.a_txt_input.text = "0x" + device_manager.str_scanner_hardware_filter_hgr;
        i_id_end._value = device_manager.str_scanner_hardware_filter_hgr.toUpperCase();
    }

    /********* translated ********/
    property string st_memchip_name_anno: qsTr("Memory chip")
    property string st_save_button_text: qsTr("Save")
    property string st_calibrator_button_text: qsTr("Calibrator")
    property string st_can_gateway_button_text: qsTr("CAN gateway")
    property string st_1can_scanner_button_text: qsTr("1CAN scanner")
    property string st_2can_scanner_button_text: qsTr("2CAN scanner")
    property string st_can_override_button_text: qsTr("CAN override")
    property string st_memory_programm_button_text: qsTr("MemProgramm Mode")

    property string st_trace_injection_button_text: qsTr("Trace injection")
    property string st_reverse_button_text: qsTr("Reverse CAN1/CAN2")
    property string st_circular_button_text: qsTr("Circular")

    property string st_custom_btr_anno: qsTr("Сustom BTR. Save and restart needed")
    property string st_custom_anno: qsTr("set CAN1")
    property string st_custom2_anno: qsTr("set CAN2")

    property string st_custom_cdc_threshold_anno: qsTr("Trace injection delay threshold.")
    property string st_custom_cdc_threshold_value_anno: qsTr("Increase the value to slow down transmission.")

    property string st_fixed_cdc_threshold: qsTr("Fixed threshold")
    property string st_auto_cdc_threshold: qsTr("Auto adjust")
    property string st_enable_anno: qsTr("Enable")
    property string st_disable_anno: qsTr("Disable")
    property string st_hardware_scanner_filter_anno: qsTr("Scanner hardware filter")



    function retranslateUi(){
        st_memchip_name_anno = qsTr("Memory chip")
        st_save_button_text = qsTr("Save")
        st_calibrator_button_text = qsTr("Calibrator")
        st_can_gateway_button_text = qsTr("CAN gateway")
        st_1can_scanner_button_text = qsTr("1CAN scanner")
        st_2can_scanner_button_text = qsTr("2CAN scanner")
        st_can_override_button_text = qsTr("CAN override")
        st_memory_programm_button_text = qsTr("MemProgramm Mode")

        st_trace_injection_button_text = qsTr("Trace injection")
        st_reverse_button_text = qsTr("Reverse CAN1/CAN2")
        st_circular_button_text = qsTr("Circular")
        st_custom_btr_anno = qsTr("Сustom BTR. Save and restart needed")
        st_custom_anno = qsTr("set CAN1")
        st_custom2_anno: qsTr("set CAN2")
        st_custom_cdc_threshold_anno = qsTr("Trace injection delay threshold.")
        st_custom_cdc_threshold_value_anno = qsTr("Increase the value to slow down transmission.")
        st_fixed_cdc_threshold = qsTr("Fixed threshold")
        st_auto_cdc_threshold = qsTr("Auto adjust")

        st_enable_anno = qsTr("Enable")
        st_disable_anno = qsTr("Disable")
        st_hardware_scanner_filter_anno = qsTr("Scanner hardware filter")
    }

    MltButton{
        id: i_save_button
        x: composition_side_crop
        anchors.bottom: i_memchip_name.bottom

        height: st_initial_item_height
        width: ((root.width * st_side_crop)/2) - vertical_gap

        st_button_mode: (interface_console.connection_status_description[0] === "Connected" && st_memchip_name != "no memchip info") ? true : false
        st_text: st_save_button_text
        st_normal_color: st_button_mode ? st_G_color : st_N_color
        function cmd(){
            root.forceActiveFocus();
            cmd_manager.saveDeviceStatus();
        }
    }

    RoundedTextInput{
        id: i_memchip_name
        y: root.y + vertical_gap
        x: root.width - width - composition_side_crop
        width: ((root.width * st_side_crop)/2)
        _anno: st_memchip_name_anno
        _enabled: false
        _value: st_memchip_name
        a_txt_input.font.capitalization: Font.AllUppercase
        function update_initial_value(){
        }
    }

    MltButton{
        id: i_can_gateway_button
        x: composition_side_crop
        y: i_save_button.y + i_save_button.height + vertical_gap
        height: st_initial_item_height
        width: ((root.width * st_side_crop)/3) - composition_side_crop
        st_button_mode: (st_canGateway_Mode == _DEVICE_OPERATION_MODE_DEFAULT) ? false : true
        st_text: st_can_gateway_button_text
        st_normal_color: (st_canGateway_Mode == _DEVICE_OPERATION_MODE_ON) ? st_G_color : st_N_color
        function cmd(){
            if(st_canGateway_Mode == _DEVICE_OPERATION_MODE_ON)
                cmd_manager.setDeviceValue(1, _DEVICE_OPERATION_MODE_OFF);
            else cmd_manager.setDeviceValue(1, _DEVICE_OPERATION_MODE_ON);
        }
    }

    MltButton{
        id: i_calibrator_button
        x: i_can_gateway_button.x + i_can_gateway_button.width + composition_side_crop
        y: i_can_gateway_button.y
        height: st_initial_item_height
        width: ((root.width * st_side_crop)/3) - composition_side_crop
        st_button_mode: (st_calibratorFilter_Mode == _DEVICE_OPERATION_MODE_DEFAULT) ? false : true
        st_normal_color: (st_calibratorFilter_Mode == _DEVICE_OPERATION_MODE_ON) ? st_G_color : st_N_color
        st_text: st_calibrator_button_text
        function cmd(){
            if(st_calibratorFilter_Mode == _DEVICE_OPERATION_MODE_ON)
                cmd_manager.setDeviceValue(3, _DEVICE_OPERATION_MODE_OFF);
            else cmd_manager.setDeviceValue(3, _DEVICE_OPERATION_MODE_ON);
        }
    }

    MltButton{
        id: i_1can_scanner_button
        x: i_calibrator_button.x + i_calibrator_button.width + composition_side_crop
        y: i_can_gateway_button.y // + i_can_gateway_button.height + vertical_gap
        height: st_initial_item_height
        width: ((root.width * st_side_crop)/3) - composition_side_crop
        st_button_mode: (st_canScanner_Mode == _DEVICE_OPERATION_MODE_DEFAULT) ? false : true
        st_normal_color: (st_canScanner_Mode == _DEVICE_OPERATION_MODE_ON) ? st_G_color : st_N_color
        st_text: st_1can_scanner_button_text
        function cmd(){
            if(st_canScanner_Mode == _DEVICE_OPERATION_MODE_ON)
                cmd_manager.setDeviceValue(5, _DEVICE_OPERATION_MODE_OFF);
            else cmd_manager.setDeviceValue(5, _DEVICE_OPERATION_MODE_ON);
        }
    }

    MltButton{
        id: i_2can_scanner_button
        x: composition_side_crop
        y: i_can_gateway_button.y + i_can_gateway_button.height + vertical_gap
        height: st_initial_item_height
        width: ((root.width * st_side_crop)/3) - composition_side_crop
        st_button_mode: (st_can2Scanner_Mode == _DEVICE_OPERATION_MODE_DEFAULT) ? false : true
        st_normal_color: (st_can2Scanner_Mode == _DEVICE_OPERATION_MODE_ON) ? st_G_color : st_N_color
        st_text: st_2can_scanner_button_text
        function cmd(){
            if(st_can2Scanner_Mode == _DEVICE_OPERATION_MODE_ON)
                cmd_manager.setDeviceValue(6, _DEVICE_OPERATION_MODE_OFF);
            else cmd_manager.setDeviceValue(6, _DEVICE_OPERATION_MODE_ON);
        }
    }

    MltButton{
        id: i_can_override_button
        x: i_2can_scanner_button.x + i_2can_scanner_button.width + composition_side_crop
        y: i_2can_scanner_button.y
        height: st_initial_item_height
        width: ((root.width * st_side_crop)/3) - composition_side_crop
        st_button_mode: (st_canOverride_Mode == _DEVICE_OPERATION_MODE_DEFAULT) ? false : true
        st_normal_color: (st_canOverride_Mode == _DEVICE_OPERATION_MODE_ON) ? st_G_color : st_N_color
        st_text: st_can_override_button_text
        function cmd(){
            if(st_canOverride_Mode == _DEVICE_OPERATION_MODE_ON)
                cmd_manager.setDeviceValue(4, _DEVICE_OPERATION_MODE_OFF);
            else cmd_manager.setDeviceValue(4, _DEVICE_OPERATION_MODE_ON);
        }
    }

    MltButton{
        id: i_memprogramm_button
        x: i_can_override_button.x + i_can_override_button.width + composition_side_crop
        y: i_can_override_button.y
        height: st_initial_item_height
        width: ((root.width * st_side_crop)/3) - composition_side_crop
        visible: true
        st_button_mode: false
        st_text: st_memory_programm_button_text
        st_normal_color: (st_memoryPrograming_Mode == _DEVICE_OPERATION_MODE_ON) ? st_Y_color : st_N_color
        function cmd(){
        }
    }

    MltButton{
        id: i_trace_injection_button
        x: composition_side_crop
        y: i_2can_scanner_button.y + i_2can_scanner_button.height + vertical_gap
        height: st_initial_item_height
        width: ((root.width * st_side_crop)/3) - composition_side_crop
        st_button_mode: (st_canInjection_Mode == _DEVICE_OPERATION_MODE_DEFAULT) ? false : true
        st_normal_color: ((st_canInjection_Mode != _DEVICE_OPERATION_MODE_OFF) && (st_canInjection_Mode != _DEVICE_OPERATION_MODE_DEFAULT)) ? st_G_color : st_N_color
        st_text: st_trace_injection_button_text
        function cmd(){
            if((st_canInjection_Mode != _DEVICE_OPERATION_MODE_OFF) && (st_canInjection_Mode != _DEVICE_OPERATION_MODE_DEFAULT))
                cmd_manager.setDeviceValue(8, _DEVICE_OPERATION_MODE_OFF);
            else if(circular_injection_mode & !can_reverse_injection_mode) cmd_manager.setDeviceValue(8, _DEVICE_OPERATION_MODE_CIRCULAR);
            else if(!circular_injection_mode & can_reverse_injection_mode) cmd_manager.setDeviceValue(8, _DEVICE_OPERATION_MODE_REV);
            else if(!circular_injection_mode & !can_reverse_injection_mode) cmd_manager.setDeviceValue(8, _DEVICE_OPERATION_MODE_ON);
            else if(circular_injection_mode & can_reverse_injection_mode) cmd_manager.setDeviceValue(8, _DEVICE_OPERATION_MODE_CIRCULAR_REV)
        }
    }

    MltButton{
        id: i_circular_injection_button
        x: i_trace_injection_button.x + i_trace_injection_button.width + composition_side_crop
        y: i_trace_injection_button.y
        height: st_initial_item_height
        width: ((root.width * st_side_crop)/3) - composition_side_crop
        st_button_mode: i_trace_injection_button.st_button_mode
        st_normal_color: circular_injection_mode ? st_Y_color : st_N_color
        st_text: st_circular_button_text
        function cmd(){
            circular_injection_mode = !circular_injection_mode
        }
    }

    MltButton{
        id: i_can_reverse_button
        x: i_circular_injection_button.x + i_circular_injection_button.width + composition_side_crop
        y: i_trace_injection_button.y
        height: st_initial_item_height
        width: ((root.width * st_side_crop)/3) - composition_side_crop
        st_button_mode: i_trace_injection_button.st_button_mode
        st_normal_color: can_reverse_injection_mode ? st_Y_color : st_N_color
        st_text: st_reverse_button_text
        function cmd(){
            can_reverse_injection_mode = !can_reverse_injection_mode
        }
    }



    Flickable {
        id: i_flickable
        x: 0
        y: i_trace_injection_button.y + i_trace_injection_button.height + vertical_gap

        width: root.width // * st_side_crop
        height: root.height - y
        contentHeight: i_custom_btr_section.height + i_custom_cdc_threshold_section.height + i_hardware_scanner_filter_section.height
        clip: true
        flickDeceleration  : 1500.00
        maximumFlickVelocity : 1500.00
        ScrollBar.vertical:
            ScrollBar {
                policy: ScrollBar.AlwaysOn
        }

        Rectangle{
            id: i_custom_btr_section
            y: 0
            x: composition_side_crop
            height: st_initial_item_height*3 + vertical_gap
            width: root.width * st_side_crop
            color: "transparent"
            border.color: st_font_color
            radius: 20

            Text{
                id: i_custom_btr_label
                y: 0
                x: i_custom_btr_section.radius
                width: i_custom_btr_section.width
                //height: st_initial_item_height
                color: st_font_color
                text: st_custom_btr_anno
                font.pixelSize: st_initial_item_height/2
            }
            //============= PSC ===============
            RoundedTextInput{
                id: i_PSC
                x: i_custom_btr_section.radius
                y: i_custom_btr_label.y + i_custom_btr_label.height
                width: (i_custom_btr_section.width- composition_side_crop)/5 - composition_side_crop
                _anno: "PSC  "
                _enabled: true
                _value: "0"
                a_txt_input.font.capitalization: Font.AllUppercase
                function update_initial_value(){
                    var _intvalue = a_txt_input.text;
                    // Convert hex string to integer
                    var _id = parseInt(_intvalue, 10);
                    if(st_BTR_PSC !== _id)
                        set_BTR_PSC(_id);
                    else refresh_BTR();

                    if((st_BTR_PSC <= 255) & (st_BTR_PSC > 0))
                        cmd_manager.setDeviceValue(9, st_BTR_PSC);
                }
            }
            //============= BS1 ===============
            RoundedTextInput{
                id: i_BS1
                x: i_PSC.x + i_PSC.width + composition_side_crop
                y: i_PSC.y
                width: i_PSC.width
                _anno: "BS1  "
                _enabled: true
                _value: "0"
                a_txt_input.font.capitalization: Font.AllUppercase
                function update_initial_value(){
                    var _intvalue = a_txt_input.text;
                    // Convert hex string to integer
                    var _id = parseInt(_intvalue, 10);
                    if(st_BTR_BS1 !== _id)
                        set_BTR_BS1(_id);
                    else refresh_BS1();

                    if((st_BTR_BS1 <= 16) & (st_BTR_BS1 > 0))
                        cmd_manager.setDeviceValue(10, st_BTR_BS1);
                }
            }
            //============= BS2 ===============
            RoundedTextInput{
                id: i_BS2
                x: i_BS1.x + i_BS1.width + composition_side_crop
                y: i_PSC.y
                width: i_PSC.width
                _anno: "BS2  "
                _enabled: true
                _value: "0"
                a_txt_input.font.capitalization: Font.AllUppercase
                function update_initial_value(){
                    var _intvalue = a_txt_input.text;
                    // Convert hex string to integer
                    var _id = parseInt(_intvalue, 10);
                    if(st_BTR_BS2 !== _id)
                        set_BTR_BS2(_id);
                    else refresh_BS2();

                    if((st_BTR_BS2 <= 8) & (st_BTR_BS2 > 0))
                        cmd_manager.setDeviceValue(11, st_BTR_BS2);
                }
            }
            //============= SJW ===============
            RoundedTextInput{
                id: i_SJW
                x: i_BS2.x + i_BS2.width + composition_side_crop
                y: i_PSC.y
                width: i_PSC.width
                _anno: "SJW  "
                _enabled: true
                _value: "0"
                a_txt_input.font.capitalization: Font.AllUppercase
                function update_initial_value(){
                    var _intvalue = a_txt_input.text;
                    // Convert hex string to integer
                    var _id = parseInt(_intvalue, 10);
                    if(st_BTR_SJW !== _id)
                        set_BTR_SJW(_id);
                    else refresh_SJW();

                    if((st_BTR_SJW <= 4) & (st_BTR_SJW > 0))
                        cmd_manager.setDeviceValue(12, st_BTR_SJW);
                }
            }

            //============= Apply ===============
            MltButton{
                id: i_apply_custom_btr_button
                x: i_SJW.x + i_SJW.width + composition_side_crop
                anchors.bottom: i_PSC.bottom
                height: st_initial_item_height
                width: i_PSC.width
                st_button_mode: (st_customBTR_Mode == _DEVICE_OPERATION_MODE_DEFAULT) ? false : true
                st_normal_color: (st_customBTR_Mode == _DEVICE_OPERATION_MODE_ON) ? st_G_color : st_N_color
                st_text: st_custom_anno
                function cmd(){
                    root.forceActiveFocus();
                    if(st_customBTR_Mode == _DEVICE_OPERATION_MODE_ON)
                        cmd_manager.setDeviceValue(13, _DEVICE_OPERATION_MODE_OFF);
                    else cmd_manager.setDeviceValue(13, _DEVICE_OPERATION_MODE_ON);
                }
            }



            //============= PSC ===============
            RoundedTextInput{
                id: i_PSC_2
                x: i_PSC.x
                y: i_PSC.y + i_PSC.height + vertical_gap
                width: i_PSC.width
                _anno: "PSC  "
                _enabled: true
                _value: "0"
                a_txt_input.font.capitalization: Font.AllUppercase
                function update_initial_value(){
                    var _intvalue = a_txt_input.text;
                    // Convert hex string to integer
                    var _id = parseInt(_intvalue, 10);
                    if(st_BTR_PSC_2 !== _id)
                        set_BTR_PSC_2(_id);
                    else refresh_BTR_2();

                    if((st_BTR_PSC_2 <= 255) & (st_BTR_PSC_2 > 0))
                        cmd_manager.setDeviceValue(14, st_BTR_PSC_2);
                }
            }
            //============= BS1 ===============
            RoundedTextInput{
                id: i_BS1_2
                x: i_BS1.x
                y: i_PSC_2.y
                width: i_BS1.width
                _anno: "BS1  "
                _enabled: true
                _value: "0"
                a_txt_input.font.capitalization: Font.AllUppercase
                function update_initial_value(){
                    var _intvalue = a_txt_input.text;
                    // Convert hex string to integer
                    var _id = parseInt(_intvalue, 10);
                    if(st_BTR_BS1_2 !== _id)
                        set_BTR_BS1_2(_id);
                    else refresh_BS1_2();

                    if((st_BTR_BS1_2 <= 16) & (st_BTR_BS1_2 > 0))
                        cmd_manager.setDeviceValue(15, st_BTR_BS1_2);
                }
            }
            //============= BS2 ===============
            RoundedTextInput{
                id: i_BS2_2
                x: i_BS2.x
                y: i_PSC_2.y
                width: i_BS2.width
                _anno: "BS2  "
                _enabled: true
                _value: "0"
                a_txt_input.font.capitalization: Font.AllUppercase
                function update_initial_value(){
                    var _intvalue = a_txt_input.text;
                    // Convert hex string to integer
                    var _id = parseInt(_intvalue, 10);
                    if(st_BTR_BS2_2 !== _id)
                        set_BTR_BS2_2(_id);
                    else refresh_BS2_2();

                    if((st_BTR_BS2_2 <= 8) & (st_BTR_BS2_2 > 0))
                        cmd_manager.setDeviceValue(16, st_BTR_BS2_2);
                }
            }
            //============= SJW ===============
            RoundedTextInput{
                id: i_SJW_2
                x: i_SJW.x
                y: i_PSC_2.y
                width: i_PSC.width
                _anno: "SJW  "
                _enabled: true
                _value: "0"
                a_txt_input.font.capitalization: Font.AllUppercase
                function update_initial_value(){
                    var _intvalue = a_txt_input.text;
                    // Convert hex string to integer
                    var _id = parseInt(_intvalue, 10);
                    if(st_BTR_SJW_2 !== _id)
                        set_BTR_SJW_2(_id);
                    else refresh_SJW_2();

                    if((st_BTR_SJW_2 <= 4) & (st_BTR_SJW_2 > 0))
                        cmd_manager.setDeviceValue(17, st_BTR_SJW_2);
                }
            }

            //============= Apply ===============
            MltButton{
                id: i_apply_custom_btr_button_2
                x: i_apply_custom_btr_button.x
                anchors.bottom: i_PSC_2.bottom
                height: st_initial_item_height
                width: i_PSC.width
                st_button_mode: (st_customBTR_Mode_2 == _DEVICE_OPERATION_MODE_DEFAULT) ? false : true
                st_normal_color: (st_customBTR_Mode_2 == _DEVICE_OPERATION_MODE_ON) ? st_G_color : st_N_color
                st_text: st_custom2_anno
                function cmd(){
                    root.forceActiveFocus();
                    if(st_customBTR_Mode_2 == _DEVICE_OPERATION_MODE_ON)
                        cmd_manager.setDeviceValue(18, _DEVICE_OPERATION_MODE_OFF);
                    else cmd_manager.setDeviceValue(18, _DEVICE_OPERATION_MODE_ON);
                }
            }
        } // custom BTR section


        Rectangle{
            id: i_custom_cdc_threshold_section
            y: i_custom_btr_section.y + i_custom_btr_section.height + vertical_gap
            x: composition_side_crop
            height: st_initial_item_height*5 + vertical_gap
            width: root.width * st_side_crop
            color: "transparent"
            border.color: st_font_color
            radius: 20

            Text{
                id: i_custom_cdc_threshold_label
                y: 0
                x: i_custom_btr_section.radius
                width: i_custom_btr_section.width
                color: st_font_color
                text: st_custom_cdc_threshold_anno
                font.pixelSize: st_initial_item_height/2
            }

            MltButton{
                id: i_cdc_thresh_auto_button
                x: i_custom_btr_section.radius
                y: i_custom_cdc_threshold_label.y + i_custom_cdc_threshold_label.height
                height: st_initial_item_height
                width: ((root.width * st_side_crop)/3) - composition_side_crop
                st_button_mode: i_cdc_thresh_value.enabled
                st_normal_color: (st_cdc_threshold_mode == _DEVICE_OPERATION_MODE_CDC_TRACE_AUTO_THRESHOLD) ? st_G_color : st_N_color
                st_text: st_auto_cdc_threshold
                function cmd(){
                    if(st_cdc_threshold_mode == _DEVICE_OPERATION_MODE_CDC_TRACE_FIXED_THRESHOLD)
                        cmd_manager.setDeviceValue(20, _DEVICE_OPERATION_MODE_CDC_TRACE_AUTO_THRESHOLD);
                }
            }

            MltButton{
                id: i_cdc_thresh_fixed_button
                x: i_cdc_thresh_auto_button.x + i_cdc_thresh_auto_button.width + composition_side_crop
                y: i_custom_cdc_threshold_label.y + i_custom_cdc_threshold_label.height
                height: st_initial_item_height
                width: ((root.width * st_side_crop)/3) - composition_side_crop
                st_button_mode: i_cdc_thresh_value.enabled
                st_normal_color: (st_cdc_threshold_mode == _DEVICE_OPERATION_MODE_CDC_TRACE_FIXED_THRESHOLD) ? st_G_color : st_N_color
                st_text: st_fixed_cdc_threshold
                function cmd(){
                    if(st_cdc_threshold_mode == _DEVICE_OPERATION_MODE_CDC_TRACE_AUTO_THRESHOLD)
                        cmd_manager.setDeviceValue(20, _DEVICE_OPERATION_MODE_CDC_TRACE_FIXED_THRESHOLD);
                }
            }

            RoundedSliderAnnotated{
                id: i_cdc_thresh_value

                x: i_custom_btr_section.radius
                y: i_cdc_thresh_auto_button.y + i_cdc_thresh_auto_button.height + vertical_gap
                height: st_initial_item_height*2
                width: i_custom_cdc_threshold_section.width - (i_custom_btr_section.radius*2)
                enabled: (interface_console.connection_status_description[0] === "Connected" && st_memchip_name != "no memchip info") ? true : false
                _anno: st_custom_cdc_threshold_value_anno
                value_display_offset: false
                a_slider._value: st_val_cdc_threshold_value
                a_slider.st_labelTxt: "0x" + a_slider._value.toString(16).toUpperCase().padStart(2, "0")
                a_slider._from: 0
                a_slider._to: 255
                a_slider._step: 1
                function a_update_initial_value() {
                    set_cdc_threshold_value(a_slider._value)
                    cmd_manager.setDeviceValue(21, st_val_cdc_threshold_value);
                }
            }

        }    // custom CDC threshold section
        Rectangle{
            id: i_hardware_scanner_filter_section
            y: i_custom_cdc_threshold_section.y + i_custom_cdc_threshold_section.height + vertical_gap
            x: composition_side_crop
            height: st_initial_item_height*5 + vertical_gap
            width: root.width * st_side_crop
            color: "transparent"
            border.color: st_font_color
            radius: 20

            Text{
                id: i_hardware_scanner_filter_label
                y: 0
                x: i_hardware_scanner_filter_section.radius
                width: i_hardware_scanner_filter_section.width
                color: st_font_color
                text: st_hardware_scanner_filter_anno
                font.pixelSize: st_initial_item_height/2
            }

            RoundedTextInput{
                id: i_id_start
                x: i_hardware_scanner_filter_section.radius
                y: i_hardware_scanner_filter_label.y + i_hardware_scanner_filter_label.height + vertical_gap
                width: ((root.width * st_side_crop)/3.0) - composition_side_crop
                _anno: "start id"
                _enabled: (interface_console.connection_status_description[0] === "Connected" && st_memchip_name != "no memchip info") ? true : false
                _value: device_manager.str_scanner_hardware_filter_lwr.toUpperCase()

                a_txt_input.font.capitalization: Font.AllUppercase

                function update_initial_value(){

                    if((_value != a_txt_input.text) && (("0x" + _value) != (a_txt_input.text))){
                        var input_string = a_txt_input.text;
                        if (input_string.startsWith("0x")){
                            input_string = input_string.substring(2);
                        }
                        device_manager.str_scanner_hardware_filter_lwr = input_string;
                        _value = device_manager.str_scanner_hardware_filter_lwr.toUpperCase();
                        cmd_manager.refresh_hardware_scanner_filters(true);
                    }
                }
            }


            RoundedTextInput{
                id: i_id_end
                y: i_id_start.y
                x: i_id_start.x + i_id_start.width + composition_side_crop
                width: ((root.width * st_side_crop)/3.0) - composition_side_crop
                _anno: "end id"
                _enabled: (interface_console.connection_status_description[0] === "Connected" && st_memchip_name != "no memchip info") ? true : false
                _value: device_manager.str_scanner_hardware_filter_hgr.toUpperCase()
                a_txt_input.font.capitalization: Font.AllUppercase
                function update_initial_value(){

                    if((_value != a_txt_input.text) && (("0x" + _value) != (a_txt_input.text))){
                        var input_string = a_txt_input.text;
                        if (input_string.startsWith("0x")){
                            input_string = input_string.substring(2);
                        }
                        device_manager.str_scanner_hardware_filter_hgr = input_string;
                        _value = device_manager.str_scanner_hardware_filter_hgr.toUpperCase();
                        cmd_manager.refresh_hardware_scanner_filters(false);
                    }
                }
            }

            MltButton{
                id: i_range_button
                x: i_id_end.x + i_id_end.width + composition_side_crop
                height: st_initial_item_height
                width: (width_grid_sz * buttons_width_mlt) /1.3
                anchors.bottom: i_id_start.bottom
                st_button_mode: (interface_console.connection_status_description[0] === "Connected" && st_memchip_name != "no memchip info") ? true : false

                st_text: st_scanner_hardware_filter === _DEVICE_OPERATION_MODE_ON ?  st_disable_anno : st_enable_anno
                st_normal_color: st_scanner_hardware_filter === _DEVICE_OPERATION_MODE_ON ?  st_G_color : st_N_color
                function cmd(){
                    root.forceActiveFocus();

                    if(st_scanner_hardware_filter === _DEVICE_OPERATION_MODE_ON)
                        cmd_manager.setDeviceValue(22, _DEVICE_OPERATION_MODE_OFF);
                    else
                        cmd_manager.setDeviceValue(22, _DEVICE_OPERATION_MODE_ON);
                }
            }

        }    // hardware id filter
    } // flick
}