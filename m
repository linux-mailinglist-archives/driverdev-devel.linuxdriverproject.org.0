Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 85BEC196D76
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Mar 2020 14:45:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3117F86398;
	Sun, 29 Mar 2020 12:45:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6hPMTu5tjJBq; Sun, 29 Mar 2020 12:45:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4B48986407;
	Sun, 29 Mar 2020 12:45:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CB2AE1BF909
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 12:45:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C7763875A9
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 12:45:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XCZbUzcgnErf for <devel@linuxdriverproject.org>;
 Sun, 29 Mar 2020 12:45:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BA5788759C
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 12:45:47 +0000 (UTC)
Received: from localhost.localdomain ([37.4.249.171]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MRTAj-1jfxzV1gqT-00NV3q; Sun, 29 Mar 2020 14:45:32 +0200
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>
Subject: [PATCH 9/9] staging: bcm2835-camera: reduce indentation in
 ctrl_set_image_effect
Date: Sun, 29 Mar 2020 14:45:01 +0200
Message-Id: <1585485901-10172-10-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
References: <1585485901-10172-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:fSjMU+03CqpgmXCTuLpBxjY0rmtg18kPTRx6bTNsEkSCRV12794
 KFIgccZOB/J1ScT3/S6sMgE8UirrRw5i+OiAWYyS61kHJweT8eJQAz5vTuqSlHkZaJLVFwt
 r04MR+y7wVCOhHcmUVmqG40IycTI5hYtKX98FeNpVQKIIzvE2PTJgk/a+/b/PlMxPkdWLY8
 59zHsP9mXOLaLgdcPARwA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:o2AHnmVI52g=:fFaKgeHTUjkdA6SgtuT1ly
 v4wqWkOeKEuc5ytAGxKEbZYjMNO+t+XAzJkOOK/uVdE6H5TfZvaLzpW0J/1EB57SVjB9sPP9F
 fMYCV1RMmbeCgk/7pTTJnVgwGQ9O1UB4p+KXZKsF9QTzqqRsWNlzUW1XXe9UN4xe6sQX/BBf5
 sm4siCd7jUr+SgmFkDDVKXadHYv+RgBPnRfU0H4vtYe/XwmSPsavV4FoRy0LIaylCKwbIz81P
 y6avcNnLQHsqwra8ZmN5JzBtc0lwsYejbuu2crrUuhm62S5M3Bxmd3ROVTU39R2MMHZvuYQhj
 Xn1KlQaSDG8tFu/DJcVTNTmjHfdUrxoDQ+2RZ0hWRql6waMgVQl1nlIaRpe90WvQfTkjuMwpn
 Lue2xJIakDfThPGlBvAMMN/Ykcgo8lVzfh9nyT7nGyPso4Al+hMDZarZmGzmUHhm9g7WoVSZ6
 x2mhRfPgi2mu1YYSKLda1iTQomtTL6DbF8OOLXba9J1OJGJzsjWImih2HvgKl8JcCEoL7btSM
 SjAzzUizq9nrIdzFux7209EJly3I2jq59PhLtW/+9XdINyFHmjhQglIMSvHzXq7CRoRKLuBBG
 tHdRGclue5cEHybjhApPNGflQD8p+0C5sWm4l3+6chN605j3VSa07Po/GS7I7isS9+qeHpHo5
 qqlCC99ORCs7a4bubCZ843FieQApKwKAxjkegGbLJKGFHCzBGshfG9ch6FgdpUfo4nAo7qTba
 R4Wf/H69GmSjjQuI6gVeRLhN/FvH1wwFhXNQdkIJhJLTctm9bAdfoTDzb6qhenNMsEsChZaDZ
 uXgEj/8eZwR2zrUQ77KX83xMsFie59B5x6q/T/stoaoDyTmsC2Xfk4HqLRRTI8BViXsfJ5l
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
Cc: devel@driverdev.osuosl.org, Stefan Wahren <stefan.wahren@i2se.com>,
 linux-rpi-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

We can reduce the indentation in the loop by using continue in case the
effect doesn't match.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 .../vc04_services/bcm2835-camera/controls.c        | 63 +++++++++++-----------
 1 file changed, 31 insertions(+), 32 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 8e10a66..b096a12 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -514,42 +514,41 @@ static int ctrl_set_image_effect(struct bm2835_mmal_dev *dev,
 	struct mmal_parameter_imagefx_parameters imagefx;
 
 	for (i = 0; i < ARRAY_SIZE(v4l2_to_mmal_effects_values); i++) {
-		if (ctrl->val == v4l2_to_mmal_effects_values[i].v4l2_effect) {
-			imagefx.effect =
-				v4l2_to_mmal_effects_values[i].mmal_effect;
-			imagefx.num_effect_params =
-				v4l2_to_mmal_effects_values[i].num_effect_params;
-
-			if (imagefx.num_effect_params > MMAL_MAX_IMAGEFX_PARAMETERS)
-				imagefx.num_effect_params = MMAL_MAX_IMAGEFX_PARAMETERS;
-
-			for (j = 0; j < imagefx.num_effect_params; j++)
-				imagefx.effect_parameter[j] =
-					v4l2_to_mmal_effects_values[i].effect_params[j];
-
-			dev->colourfx.enable =
-				v4l2_to_mmal_effects_values[i].col_fx_enable;
-			if (!v4l2_to_mmal_effects_values[i].col_fx_fixed_cbcr) {
-				dev->colourfx.u =
-					v4l2_to_mmal_effects_values[i].u;
-				dev->colourfx.v =
-					v4l2_to_mmal_effects_values[i].v;
-			}
+		if (ctrl->val != v4l2_to_mmal_effects_values[i].v4l2_effect)
+			continue;
+
+		imagefx.effect =
+			v4l2_to_mmal_effects_values[i].mmal_effect;
+		imagefx.num_effect_params =
+			v4l2_to_mmal_effects_values[i].num_effect_params;
 
-			control = &dev->component[COMP_CAMERA]->control;
+		if (imagefx.num_effect_params > MMAL_MAX_IMAGEFX_PARAMETERS)
+			imagefx.num_effect_params = MMAL_MAX_IMAGEFX_PARAMETERS;
 
-			ret = vchiq_mmal_port_parameter_set(
-					dev->instance, control,
-					MMAL_PARAMETER_IMAGE_EFFECT_PARAMETERS,
-					&imagefx, sizeof(imagefx));
-			if (ret)
-				goto exit;
+		for (j = 0; j < imagefx.num_effect_params; j++)
+			imagefx.effect_parameter[j] =
+				v4l2_to_mmal_effects_values[i].effect_params[j];
 
-			ret = vchiq_mmal_port_parameter_set(
-					dev->instance, control,
-					MMAL_PARAMETER_COLOUR_EFFECT,
-					&dev->colourfx, sizeof(dev->colourfx));
+		dev->colourfx.enable =
+			v4l2_to_mmal_effects_values[i].col_fx_enable;
+		if (!v4l2_to_mmal_effects_values[i].col_fx_fixed_cbcr) {
+			dev->colourfx.u = v4l2_to_mmal_effects_values[i].u;
+			dev->colourfx.v = v4l2_to_mmal_effects_values[i].v;
 		}
+
+		control = &dev->component[COMP_CAMERA]->control;
+
+		ret = vchiq_mmal_port_parameter_set(
+				dev->instance, control,
+				MMAL_PARAMETER_IMAGE_EFFECT_PARAMETERS,
+				&imagefx, sizeof(imagefx));
+		if (ret)
+			goto exit;
+
+		ret = vchiq_mmal_port_parameter_set(
+				dev->instance, control,
+				MMAL_PARAMETER_COLOUR_EFFECT,
+				&dev->colourfx, sizeof(dev->colourfx));
 	}
 
 exit:
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
