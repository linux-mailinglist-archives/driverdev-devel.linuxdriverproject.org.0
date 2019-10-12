Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FA1D50A3
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Oct 2019 17:18:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EE47E87CAE;
	Sat, 12 Oct 2019 15:18:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KAJh+7Of7FBy; Sat, 12 Oct 2019 15:18:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 954E0874CD;
	Sat, 12 Oct 2019 15:18:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7EFE41BF339
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 15:18:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 76BA0874CD
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 15:18:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jV04ea2dp0N6 for <devel@linuxdriverproject.org>;
 Sat, 12 Oct 2019 15:18:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 694D887475
 for <devel@driverdev.osuosl.org>; Sat, 12 Oct 2019 15:18:31 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id p7so13057654wmp.4
 for <devel@driverdev.osuosl.org>; Sat, 12 Oct 2019 08:18:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=00wbDsxYMw5kLcHoK10nqGz2XPnCpxBhd7bVGwk+FAw=;
 b=Waq0KdUP+gUillAGvOrqIDV7D5eG2F9ALA4QqXAzfIOgYzTT56gi3H2MpNWLS/L+SM
 oOuw+//6TfcIPR8s3qgncPPOF+LCmyAP8DjyoVmVFrqocGMgZhcCBhnTAqtYxy465J3M
 7AFMTO8KgBXIjw4NxeolNqSmoUamAFYABqIfno1lzjodIxUvpMz2Dnu4wgonaBEWeoEF
 zd116TwtaRxUIkE6ens1iMVMs0m9HfGR9qy7EC9mBihL5cO9040fojglCebTZ5AnElyx
 QeYHcf+EZUiFEcSJsN+EYAOOfvL/rBXKD/0JsM1BgAdNMuksdQSKn8eja89736elYizz
 24FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=00wbDsxYMw5kLcHoK10nqGz2XPnCpxBhd7bVGwk+FAw=;
 b=jwipy0dF6rFqNdTb8bWTftUmCy40W/ddWFHIQVUF+IiJ5uG0lVM0DOHUl9M0i8cPlR
 e61eV6wmzexn/I/XbgoGxj400G6g2a2vTseluuCX9rDt2xEt5ysv6sfgyVBUqE7nyPiA
 YmFo8hsdlT9zZWg6cD1/W26TTvtGccz/1U/gvjMqcqokN9vVFMxU06VgUrXOsO1OxLBq
 s1hSPkS7WN/vgnU4fVMxpn8rG/KlPVQB0dIpcKakkffNxgPieQADRjtygsq+Z4XAInj0
 f2Mi3aUw8Yzn2aI4MLKKkn/hGjxiYCEsAlcNd6KUHYdNKns+BMUy1BY0UpDKBp/VSuO/
 RrsA==
X-Gm-Message-State: APjAAAVRi3hY8QOphhiI/nz33jf4Muf6KmbpDMlEKOinsCOeN5GQaPfP
 KRWP68Q4E3sfkFq9PNvnsA==
X-Google-Smtp-Source: APXvYqxdj2hI3aRsv91CVNxyxSaFgMHBIQAShwl9NmW/jf+ZJ/6OMqamZpcspf8MkIU6rGhvDZebHA==
X-Received: by 2002:a05:600c:2185:: with SMTP id
 e5mr7887447wme.78.1570893509733; 
 Sat, 12 Oct 2019 08:18:29 -0700 (PDT)
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
 by smtp.googlemail.com with ESMTPSA id r6sm13905017wmh.38.2019.10.12.08.18.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 08:18:29 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: vc04_services: place the AND operator at the end
 of the previous line
Date: Sat, 12 Oct 2019 16:18:05 +0100
Message-Id: <20191012151805.17988-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Jules Irenge <jbi.octave@gmail.com>,
 f.fainelli@gmail.com, sbranden@broadcom.com, mchehab+samsung@kernel.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, eric@anholt.net,
 daniela.mormocea@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 wahrenst@gmx.net, dave.stevenson@raspberrypi.org, rjui@broadcom.com,
 hverkuil-cisco@xs4all.nl, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Place the AND logical operator at the end of the previous line;
to fix warning of "Logical continuations should be on the previous line".
 Issue detected by checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index d4d1e44b16b2..beb6a0063bb8 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -1090,8 +1090,8 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 
 	ret = vchiq_mmal_port_set_format(dev->instance, camera_port);
 
-	if (!ret
-	    && camera_port ==
+	if (!ret &&
+	    camera_port ==
 	    &dev->component[COMP_CAMERA]->output[CAM_PORT_VIDEO]) {
 		bool overlay_enabled =
 		    !!dev->component[COMP_PREVIEW]->enabled;
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
