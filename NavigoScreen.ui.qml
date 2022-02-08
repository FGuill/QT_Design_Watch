

/****************************************************************************
**
** Copyright (C) 2019 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the examples of the Qt Design Studio.
**
** $QT_BEGIN_LICENSE:BSD$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** BSD License Usage
** Alternatively, you may use this file under the terms of the BSD license
** as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of The Qt Company Ltd nor the names of its
**     contributors may be used to endorse or promote products derived
**     from this software without specific prior written permission.
**
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/
import QtQuick 2.10
import ebikeDesign 1.0
import QtQuick.Studio.Components 1.0
import QtQuick.Controls 2.3
import QtQuick.Timeline 1.0
import QtQuick.Layouts 1.3

Item {
    id: navigoScreen
    property alias currentFrame: timeline.currentFrame

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 1280
        height: 800
        color: "#000000"

        Rectangle {
            id: rectangle2
            color: "#ffffff"
            anchors.left: parent.left
            anchors.leftMargin: 320
            anchors.right: parent.right
            anchors.rightMargin: 320
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 200
            anchors.top: parent.top
            anchors.topMargin: 200

            Text {
                id: element
                color: "#000000"
                text: "TOOOOO"
                anchors.right: parent.right
                anchors.rightMargin: 199
                anchors.left: parent.left
                anchors.leftMargin: 199
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 166
                anchors.top: parent.top
                anchors.topMargin: 166
                scale: 0.41
                font.pixelSize: 82
            }
        }
    }

    Timeline {
        id: timeline
        currentFrame: 4000
        endFrame: 4000
        enabled: true
        startFrame: 0

        KeyframeGroup {
            target: element
            property: "x"
            Keyframe {
                frame: 0
                value: -24
            }

            Keyframe {
                frame: 3993
                value: 468
            }
        }

        KeyframeGroup {
            target: element
            property: "y"
            Keyframe {
                frame: 0
                value: 673
            }

            Keyframe {
                frame: 3993
                value: 352
            }
        }
    }
}






/*##^## Designer {
    D{i:0;autoSize:true;height:800;width:1280}D{i:3;anchors_x:142.22222222222223;anchors_y:160}
D{i:2;anchors_height:400;anchors_width:640;anchors_x:320;anchors_y:200}
}
 ##^##*/
