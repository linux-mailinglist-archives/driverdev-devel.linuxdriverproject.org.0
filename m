Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3645A58AAE
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 21:07:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AA0AF87582;
	Thu, 27 Jun 2019 19:07:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J6FTHXJ2naHU; Thu, 27 Jun 2019 19:07:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 846298759C;
	Thu, 27 Jun 2019 19:07:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2E8861BF41B
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 19:07:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2B5A68757D
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 19:07:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oCLqbq8AkuUq for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 19:07:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5400A87583
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 19:07:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561662413;
 bh=KPoMqiu38WlQMmOQWFYe9adp8jz5h/iuig80LINOB4k=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=IT2VK/5EObt3ez4g9KdsSOUWQ8xTMpZxWED6ztqOEDmLW2yqEepu/kWCNpoxUEkfk
 jbBftQCjzmkGk498+Q1GYYOjej4AC7riOjildD5M+E9r1t8ownxfNbIOJ5iahjZOtV
 0Jgj19okACJzUJuwCTx2afBliy05XQq8DFVkFgaw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx101 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0LgMCe-1iJEPh2fCu-00njBV; Thu, 27 Jun 2019 21:06:53 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 24/31] staging: bcm2835-camera: Use enums for max value in
 controls
Date: Thu, 27 Jun 2019 21:06:19 +0200
Message-Id: <1561662386-23045-5-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561662386-23045-1-git-send-email-wahrenst@gmx.net>
References: <1561662386-23045-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:3XP1iFPzKjcE3p+U1Ak2b6SJhsYxTarneZ55FwTTURUP+SRzUf2
 FDw/bHz/dvpgjhwJcEowKra52RKq+zYcmHrtzd+LAoR7uxGjw9ThkOKOxd7MiQAPzK8NfnV
 YgEVVlGlpY0JHBe96GZFBzNWgLsBE6BspnUiGqu3d47YE8meQ6Bdm+rJxI9Of5yFwxJ8c0p
 /VgwTWf3XmfaVDyI+C/yw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:1OKiNi5XAjA=:0DfKaAE4FOi3ZmL7jnR1Zb
 c/NxKVdz0J2U3n/i1fwt89swsJknmF8aShGJSuDJfn7fVxPGdfQ4pL4qmx4cyWDfH3ts4q9Hj
 N4z9kNckmm5Y0+bNWp9y/1yAFLny75zgbT05sjzixAQeqHA1TgNl2TrQLBaSitFzBeEkVgSIu
 4hZBn+gs3WDT8MGmkcic8MT1eBEUXXSrDT8TavAiZVJqBgb2w7IctHsUcJE66Oo3fS1F67iu4
 YWPDtAVsVn45Qoqcwe2y1z99mU4QGWNaB1k2HzgIHJkvlvVbVSgf3yG5QGP7L7fmFRco8U1mH
 b03vJ/VnPiBR7fePexnZ6sLBAehrRoZEojEJEom/Z/z/m8icRyR9VWymIqXvDVj63B4pMStzR
 YWfCQ+lAFV8TpiiyrmtkDSN7fO6/MpOEO20VaAqRAEQ4zHPfn6Oz2pTCg0RzExnlnfgkPiemK
 hXq3IWkS10sj8qS/NmL+puiXr2w7jhFdBWM8TwoTn454dfLspziK61jJVfrJirbI7xFW2UsFb
 BeFrUiv1US+KjUX1Sb6qH5JTtATSS9LtDCfB5IWxFrNf+djrg9OyvVJJOruhawBl23k0sWRzq
 5J8ZR0gNzDcP0LWKoj+fYmPxW/irWrRM+ByHwKvZPdqAF/SEbqb9VtR+XDCC7lIIe//CnZSWb
 tzDYXZqjGVg3Wrq+fVO+8SfuTejRMb/5xUwptLyLnsLvJjWuKGvaj67isyQ7SBXEnyclEz5W0
 pl1q7SVVsV6Q6bMTHBio33/6KSzfXN6RLNBQsTeYwPO0xmx7ne0NnaYWlr3mAHl2yPWLueeTf
 Hje1gRcADLELw85dUz0mTZl8zgKpWkFTzoZMjL6grWKyxvPMpedVBt1rzL4OmRkJC5MmpOI1h
 GPOm0aoSm6ESqWMWcyMttSphqNmpCkUJPBJwGhuCsOFHBno+e/pLxLDa842X1KAiUsLTBRaWF
 SpeL0cwFh0+0s/4pIJc4aBS4tTDB73EIL9xJYt3Ib3cFUNC1bFoJXWtCURtxy8qOD+/jvXJre
 xbxai6myvGdQt357eJRObvbqMdwwsiAVfKGgIH/kNkRIVETLNTwXH2Tt/0SFUICUDV78ia/sP
 sAfQvGM7sDzrFU=
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dave Stevenson <dave.stevenson@raspberrypi.org>

Controls of type MMAL_CONTROL_TYPE_STD_MENU call v4l2_ctrl_new_std_menu
with a max value and a mask. The max value is one of the defined
values for the control, however in the config array there are several
entries where raw numbers have been used instead. Replace these
with the appropriate enum.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
---
 .../vc04_services/bcm2835-camera/controls.c        | 37 ++++++++--------------
 1 file changed, 13 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index bc2f3f4..038b9b9 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -58,19 +58,6 @@ static const u32 iso_values[] = {
 	0, 100, 200, 400, 800,
 };

-static const s64 mains_freq_qmenu[] = {
-	V4L2_CID_POWER_LINE_FREQUENCY_DISABLED,
-	V4L2_CID_POWER_LINE_FREQUENCY_50HZ,
-	V4L2_CID_POWER_LINE_FREQUENCY_60HZ,
-	V4L2_CID_POWER_LINE_FREQUENCY_AUTO
-};
-
-/* Supported video encode modes */
-static const s64 bitrate_mode_qmenu[] = {
-	(s64)V4L2_MPEG_VIDEO_BITRATE_MODE_VBR,
-	(s64)V4L2_MPEG_VIDEO_BITRATE_MODE_CBR,
-};
-
 enum bm2835_mmal_ctrl_type {
 	MMAL_CONTROL_TYPE_STD,
 	MMAL_CONTROL_TYPE_STD_MENU,
@@ -972,8 +959,8 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 	},
 	{
 		V4L2_CID_ISO_SENSITIVITY_AUTO, MMAL_CONTROL_TYPE_STD_MENU,
-		0, 1, V4L2_ISO_SENSITIVITY_AUTO, 1, NULL,
-		MMAL_PARAMETER_ISO,
+		0, V4L2_ISO_SENSITIVITY_AUTO, V4L2_ISO_SENSITIVITY_AUTO, 1,
+		NULL, MMAL_PARAMETER_ISO,
 		ctrl_set_iso,
 		false
 	},
@@ -990,8 +977,8 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
  */
 	{
 		V4L2_CID_EXPOSURE_AUTO, MMAL_CONTROL_TYPE_STD_MENU,
-		~0x03, 3, V4L2_EXPOSURE_AUTO, 0, NULL,
-		MMAL_PARAMETER_EXPOSURE_MODE,
+		~0x03, V4L2_EXPOSURE_APERTURE_PRIORITY, V4L2_EXPOSURE_AUTO, 0,
+		NULL, MMAL_PARAMETER_EXPOSURE_MODE,
 		ctrl_set_exposure,
 		false
 	},
@@ -1027,7 +1014,8 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 	{
 		V4L2_CID_EXPOSURE_METERING,
 		MMAL_CONTROL_TYPE_STD_MENU,
-		~0x7, 2, V4L2_EXPOSURE_METERING_AVERAGE, 0, NULL,
+		~0x7, V4L2_EXPOSURE_METERING_SPOT,
+		V4L2_EXPOSURE_METERING_AVERAGE, 0, NULL,
 		MMAL_PARAMETER_EXP_METERING_MODE,
 		ctrl_set_metering_mode,
 		false
@@ -1035,7 +1023,8 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 	{
 		V4L2_CID_AUTO_N_PRESET_WHITE_BALANCE,
 		MMAL_CONTROL_TYPE_STD_MENU,
-		~0x3ff, 9, V4L2_WHITE_BALANCE_AUTO, 0, NULL,
+		~0x3ff, V4L2_WHITE_BALANCE_SHADE, V4L2_WHITE_BALANCE_AUTO, 0,
+		NULL,
 		MMAL_PARAMETER_AWB_MODE,
 		ctrl_set_awb_mode,
 		false
@@ -1056,7 +1045,7 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 	},
 	{
 		V4L2_CID_COLORFX, MMAL_CONTROL_TYPE_STD_MENU,
-		0, 15, V4L2_COLORFX_NONE, 0, NULL,
+		0, V4L2_COLORFX_SET_CBCR, V4L2_COLORFX_NONE, 0, NULL,
 		MMAL_PARAMETER_IMAGE_EFFECT,
 		ctrl_set_image_effect,
 		false
@@ -1091,8 +1080,8 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 	},
 	{
 		V4L2_CID_MPEG_VIDEO_BITRATE_MODE, MMAL_CONTROL_TYPE_STD_MENU,
-		0, ARRAY_SIZE(bitrate_mode_qmenu) - 1,
-		0, 0, bitrate_mode_qmenu,
+		0, V4L2_MPEG_VIDEO_BITRATE_MODE_CBR,
+		0, 0, NULL,
 		MMAL_PARAMETER_RATECONTROL,
 		ctrl_set_bitrate_mode,
 		false
@@ -1114,8 +1103,8 @@ static const struct bm2835_mmal_v4l2_ctrl v4l2_ctrls[V4L2_CTRL_COUNT] = {
 	},
 	{
 		V4L2_CID_POWER_LINE_FREQUENCY, MMAL_CONTROL_TYPE_STD_MENU,
-		0, ARRAY_SIZE(mains_freq_qmenu) - 1,
-		1, 1, mains_freq_qmenu,
+		0, V4L2_CID_POWER_LINE_FREQUENCY_AUTO,
+		1, 1, NULL,
 		MMAL_PARAMETER_FLICKER_AVOID,
 		ctrl_set_flicker_avoidance,
 		false
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
