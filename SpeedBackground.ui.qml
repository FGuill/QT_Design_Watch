

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
import QtQuick.Timeline 1.0
import EbikeData 1.0

Item {
    id: element
    width: 454
    height: 440
    property alias currentFrame: timeline.currentFrame

    ArcItem {
        id: arcRight
        x: 36
        y: 37
        width: 360
        height: 360
        visible: true
        antialiasing: true
        end: 262
        capStyle: 32
        strokeColor: "#6d6d6d"
        strokeWidth: 6
        begin: 98
    }

    ArcItem {
        id: arc1
        x: 95
        y: 191
        width: 88
        height: 90
        end: 360
        strokeWidth: 1
        strokeColor: "#6d6d6d"
        strokeStyle: 1
        begin: 0
    }

    ArcItem {
        id: arcCalories
        x: 259
        y: 191
        width: 88
        height: 90
        strokeColor: "#6d6d6d"
        begin: 0
        strokeWidth: 1
        strokeStyle: 1
        end: 360
    }

    ArcItem {
        id: arcLeft
        x: 42
        y: 37
        width: 360
        height: 360
        antialiasing: true
        strokeColor: "#6d6d6d"
        strokeWidth: 6
        end: 82
        begin: -82
        capStyle: 32
    }

    Item {
        id: details
        anchors.fill: parent

        ArcItem {
            id: arc
            x: 29
            y: 27
            width: 380
            height: 380
            antialiasing: true
            strokeWidth: 2
            begin: 0.1
            strokeStyle: 2
            strokeColor: "#5d5d5d"
            dashPattern: [1, 4]
            end: 360

            Image {
                id: image
                x: 99
                y: 165
                width: 25
                height: 51
                source: "heart-2.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        Row {
            x: 176
            y: 345
            spacing: 8

            CircleIndicator {
                id: dot01
                checked: true
            }

            CircleIndicator {
                id: dot02
                y: 4
                checked: true
            }

            CircleIndicator {
                id: dot03
                y: 4
            }

            CircleIndicator {
                id: dot04
            }
        }

        Text {
            id: text0Percent
            x: 231
            y: 415
            color: "#6d6d6d"
            text: qsTr("0%")
            font.pixelSize: 14
        }

        Text {
            id: text0
            x: 194
            y: 415
            color: "#6d6d6d"
            text: qsTr("0")
            font.pixelSize: 14
        }

        Text {
            id: text50Percent
            x: 424
            y: 192
            color: "#6d6d6d"
            text: qsTr("50%")
            anchors.right: parent.right
            font.pixelSize: 14
        }

        Text {
            id: text30
            x: 0
            y: 192
            color: "#6d6d6d"
            text: qsTr("30")
            anchors.left: parent.left
            font.pixelSize: 14
        }

        Text {
            id: text100Percent
            x: 231
            y: 0
            color: "#6d6d6d"
            text: qsTr("100%")
            font.pixelSize: 14
        }

        Text {
            id: text60
            x: 194
            y: 0
            color: "#6d6d6d"
            text: qsTr("60")
            font.pixelSize: 14
        }

        CustomLabel {
            id: caloriesLabel
            x: 278
            y: 229
            text: Backend.caloriesString
            font.weight: Font.Light
            font.family: "roboto"
            renderType: Text.NativeRendering
            font.pixelSize: 32
        }

        CustomLabel {
            id: averageSpeedLabel
            x: 121
            y: 229
            text: Backend.heart
            font.weight: Font.Light
            font.family: "roboto"
            lineHeight: 0.8
            font.pixelSize: 32
        }

        Image {
            x: 161
            y: 294
            source: "images/speed.png"
        }

        Image {
            x: 243
            y: 294
            source: "images/battery.png"
        }

        Image {
            x: 207
            y: 299
            source: "images/assist.png"
        }

        Image {
            id: image1
            x: 258
            y: 204
            width: 93
            height: 26
            source: "calories-2.png"
            fillMode: Image.PreserveAspectFit
        }
    }

    Timeline {
        id: timeline
        endFrame: 1000
        enabled: true
        startFrame: 0

        KeyframeGroup {
            target: details
            property: "opacity"
            Keyframe {
                value: 1
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                value: 0
                frame: 1000
            }
        }

        KeyframeGroup {
            target: speed
            property: "x"
            Keyframe {
                value: 160
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 163
                frame: 1000
            }
        }

        KeyframeGroup {
            target: speed
            property: "y"
            Keyframe {
                value: 126
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 180
                frame: 1000
            }
        }

        KeyframeGroup {
            target: speed
            property: "scale"
            Keyframe {
                value: 1
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 1.6
                frame: 1000
            }
        }

        KeyframeGroup {
            target: speed
            property: "width"
            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 128
                frame: 1000
            }
        }

        KeyframeGroup {
            target: speed
            property: "height"
            Keyframe {
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                value: 160
                frame: 1000
            }
        }

        KeyframeGroup {
            target: mph
            property: "y"
            Keyframe {
                value: 88
                frame: 0
            }

            Keyframe {
                value: 71
                frame: 1000
            }
        }
    }

    Item {
        id: speed
        x: 160
        y: 126
        width: 128
        height: 135

        CustomLabel {
            id: mph
            x: 49
            y: 59
            width: 31
            height: 47
            color: "#6d6d6d"
            text: " mph"
            wrapMode: Text.WordWrap
            lineHeight: 0.8
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 20
        }

        CustomLabel {
            id: speedLabel
            x: 34
            y: -30
            text: Backend.speedString
            anchors.horizontalCenterOffset: 1
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 82
        }

        Image {
            id: image2
            x: -112
            y: -178
            width: 341
            height: 541
            fillMode: Image.PreserveAspectFit
            source: "images/blue_circle_gps_area.png"
        }
    }
}




/*##^## Designer {
    D{i:0;height:440;width:454}
}
 ##^##*/
