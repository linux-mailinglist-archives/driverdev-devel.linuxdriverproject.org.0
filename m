Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E461055A
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 May 2019 07:54:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E234C86200;
	Wed,  1 May 2019 05:54:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sWeVXRe2jOaG; Wed,  1 May 2019 05:54:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 56FE386160;
	Wed,  1 May 2019 05:54:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 49EE41BF310
 for <devel@linuxdriverproject.org>; Wed,  1 May 2019 05:54:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 46C8286160
 for <devel@linuxdriverproject.org>; Wed,  1 May 2019 05:54:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NDk4nGDzLmQ8 for <devel@linuxdriverproject.org>;
 Wed,  1 May 2019 05:54:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com
 [209.85.210.174])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B751386130
 for <devel@driverdev.osuosl.org>; Wed,  1 May 2019 05:54:14 +0000 (UTC)
Received: by mail-pf1-f174.google.com with SMTP id e24so8177615pfi.12
 for <devel@driverdev.osuosl.org>; Tue, 30 Apr 2019 22:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=lGmhHTbrp62WjPCsadPfyC1/U+nVR+naFYtOSFn8Cmg=;
 b=tACyKVezHNTMlt1e1Q+CUmGgy0ZYjIaUL5MNsq7A69XdyYaigxSpiHPBYCt9WycK9i
 /tVwMrG0QX9+ieuRWi4UAK6qnAGs4XiOVkSMk73fj2kDKtP4WYeOOvzLlI90tGWJbGEj
 xCLKIAYWY/yPAuH01HaWsH6tp4mOsJ6vkYGmrV5pvRBa4EizH76aEssvW1Q1mZb7uXVx
 x15WlLbkg2sVZCfj23vBh08RFuRAlwyX/g02QCdVHjGuG9HGXcxq3NOki5+RreReVtaV
 P6UDP4WrYRvGl87qRSmwYEBi/XUpX2iK2OrTpDmk0BOw4bZQDWWtC0TBTAOivLL5PJKP
 n48w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=lGmhHTbrp62WjPCsadPfyC1/U+nVR+naFYtOSFn8Cmg=;
 b=Gl8XlI29ahujOGrHPUymS4DL3Fx4fjzTLecQYtcHffIjgN/fJTvm/jUPP56Esk6Al7
 S3ph9y7uc7WiIJyU9EwuVNlXpKzRssMBEf+MjtZTROxn8I7rB2rFL0uFTVeoFoHgQYZF
 jeg/gFH+TMwa9sz7xzOexQgDayU2meaDOm9mVutJmuxddt91QUMzGdovQn3zSUk7m8xd
 CKq0pWcYci5sMKNC+8HCQVp7hqRayd4+819moL3kmN1wPVrtS1dOZjPR7V+eSWOhGr75
 BZuVrqhN4tEFXQJqttGnAyDLbmzNQloqdkfosNzwWe/i8buTtbRnmVbBXe5R9591aBBa
 jxJg==
X-Gm-Message-State: APjAAAUYbOtZMNrh6SBFo5cCtYzROY5HJ8XgRRKtWDtpTtF4tTTyfX2U
 46mRkn4x39JOiIDFmEJGafE=
X-Google-Smtp-Source: APXvYqzVYhq/yVFaxE/scWgarPNMtyOGpYnl2Qtq6YhPzhFF/vh4UFOFc+MidadXbez8i4moztfRNw==
X-Received: by 2002:a62:1a0d:: with SMTP id a13mr76311287pfa.198.1556690053661; 
 Tue, 30 Apr 2019 22:54:13 -0700 (PDT)
Received: from localhost.localdomain ([103.87.57.94])
 by smtp.gmail.com with ESMTPSA id e184sm62816141pfc.102.2019.04.30.22.54.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Apr 2019 22:54:13 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: vc04_services: bcm2835-camera: Compress two lines
 into one line
Date: Wed,  1 May 2019 11:23:53 +0530
Message-Id: <20190501055353.1935-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: stefan.wahren@i2se.com, devel@driverdev.osuosl.org, f.fainelli@gmail.com,
 sbranden@broadcom.com, julia.lawall@lip6.fr, rjui@broadcom.com,
 linux-kernel@vger.kernel.org, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Vatsala Narang <vatsalanarang@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Return value directly without saving it in a variable and remove that
variable.

Issue suggested by Coccinelle.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
Changes in v2:
-Change subject line and log message
-Remove respective unused variable

 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index c9b6346111a5..68f08dc18da9 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -1491,7 +1491,6 @@ static int set_camera_parameters(struct vchiq_mmal_instance *instance,
 				 struct vchiq_mmal_component *camera,
 				 struct bm2835_mmal_dev *dev)
 {
-	int ret;
 	struct mmal_parameter_camera_config cam_config = {
 		.max_stills_w = dev->max_width,
 		.max_stills_h = dev->max_height,
@@ -1507,10 +1506,9 @@ static int set_camera_parameters(struct vchiq_mmal_instance *instance,
 		.use_stc_timestamp = MMAL_PARAM_TIMESTAMP_MODE_RAW_STC
 	};
 
-	ret = vchiq_mmal_port_parameter_set(instance, &camera->control,
+	return vchiq_mmal_port_parameter_set(instance, &camera->control,
 					    MMAL_PARAMETER_CAMERA_CONFIG,
 					    &cam_config, sizeof(cam_config));
-	return ret;
 }
 
 #define MAX_SUPPORTED_ENCODINGS 20
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
