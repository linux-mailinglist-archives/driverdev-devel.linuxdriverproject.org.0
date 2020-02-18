Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BB05F162A0C
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Feb 2020 17:07:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F422F85BE4;
	Tue, 18 Feb 2020 16:07:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lHAiPID_yM23; Tue, 18 Feb 2020 16:07:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9F67685B4A;
	Tue, 18 Feb 2020 16:07:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6B76E1BF420
 for <devel@linuxdriverproject.org>; Tue, 18 Feb 2020 16:07:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5EE438543A
 for <devel@linuxdriverproject.org>; Tue, 18 Feb 2020 16:07:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QKG77mvEj7hP for <devel@linuxdriverproject.org>;
 Tue, 18 Feb 2020 16:07:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6E6A9853C5
 for <devel@driverdev.osuosl.org>; Tue, 18 Feb 2020 16:07:36 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id m13so1193430pjb.2
 for <devel@driverdev.osuosl.org>; Tue, 18 Feb 2020 08:07:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=6IJPCaTEcBb2m8XkY4aRmJfNArzRhDFzGrCWNLyN7Ic=;
 b=nNQYMPFNJpNoZxtqF2phDv1wjXg0AOZ/bl4BaeHLoULkitFcLFvO3rs4v3tmN7E108
 tDWdJm31m3moyA169gHYrLc/puw5pYrowXS7G6CHHU23HSnEuG4+oX57a7ItNS9dBthQ
 FH63MQBYEqz4zkoxEXkPInytkpJrdBCRH6oERlUbX3RvNVqi+F8nI39WXY1X2aJjPcJK
 o0qLDJNkEtjRUJD3cwrd2M6y0rzsIRMkuBPaWdfRLaWiPyJgky/uEhnouXIPZWJsihld
 F1Gim6pg0v5ed3RKxw86kVFL0I9AHP/84LExdk5/9NVFpulFphpKCcEYKx8Z+lp7wxpS
 0wug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=6IJPCaTEcBb2m8XkY4aRmJfNArzRhDFzGrCWNLyN7Ic=;
 b=ooB8zOn6XD4/eBnEdQXYcCqzMb+/MGu6Y/uQ7JxfolaR5nfDLdCwRhwKDRXqTnTSHu
 osvVGkX4St1FFN4B/ma70tiNXJrRQIr3OEvLWeSB3umS1ap3YYW7GJU/J/Xnw3NbyPSM
 q3u7nHn3W+uvQ/FX4AUxBNcT41IGjOH3DFn1tSDUC8P95vuqitud7tgWZ2yacDOxGtsM
 TjghWfwB+sNAy7RkZKlqKtrrrktKBP8t2yimu5lJcAonAIBjXq29FpuqjUW5aWjrkbS9
 LWGADQayKa9kURt+jnDxU1quKLenvtAxTbJoz09SKt5gg0Mw8jnjzhJjMBIBhAaW4VTH
 J4JA==
X-Gm-Message-State: APjAAAXmfyaUGuAUUDKZSthZrLHx2RuqbH9lNRG0p2EZFLPZyVMlj1Xi
 gCxzORvr2NvayvOgMPZw71SqHQ==
X-Google-Smtp-Source: APXvYqy8JRIuOTKUkj1s0uIaQjKYrPfy6Q91GTwrh/k+Pt+nzWjZ0HbG7DxYrRNO5RCTUzT9wAwWBw==
X-Received: by 2002:a17:902:b583:: with SMTP id
 a3mr21124343pls.180.1582042056382; 
 Tue, 18 Feb 2020 08:07:36 -0800 (PST)
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.176])
 by smtp.gmail.com with ESMTPSA id g9sm4773300pfm.150.2020.02.18.08.07.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 18 Feb 2020 08:07:35 -0800 (PST)
Date: Tue, 18 Feb 2020 21:37:28 +0530
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: bcm2835-camera: call function instead of macro
Message-ID: <20200218160727.GA17010@kaaira-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix checkpatch.pl warning of 'macro argument reuse' in bcm2835-camera.h
by removing the macro and calling the function, written in macro in
bcm2835-camera.h, directly in bcm2835-camera.c

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 .../bcm2835-camera/bcm2835-camera.c           | 28 +++++++++++++++----
 .../bcm2835-camera/bcm2835-camera.h           | 10 -------
 2 files changed, 22 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 1ef31a984741..19b3ba80d0e7 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -919,9 +919,17 @@ static int vidioc_g_fmt_vid_cap(struct file *file, void *priv,
 	else
 		f->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;
 	f->fmt.pix.priv = 0;
-
-	v4l2_dump_pix_format(1, bcm2835_v4l2_debug, &dev->v4l2_dev, &f->fmt.pix,
-			     __func__);
+	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
+		 "%s: w %u h %u field %u pfmt 0x%x bpl %u sz_img %u colorspace 0x%x priv %u\n",
+		  __func__,
+		 (&f->fmt.pix)->width,
+		 (&f->fmt.pix)->height,
+		 (&f->fmt.pix)->field,
+		 (&f->fmt.pix)->pixelformat,
+		 (&f->fmt.pix)->bytesperline,
+		 (&f->fmt.pix)->sizeimage,
+		 (&f->fmt.pix)->colorspace,
+		 (&f->fmt.pix)->priv);
 	return 0;
 }
 
@@ -995,9 +1003,17 @@ static int vidioc_try_fmt_vid_cap(struct file *file, void *priv,
 	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
 		 "Now %dx%d format %08X\n",
 		f->fmt.pix.width, f->fmt.pix.height, f->fmt.pix.pixelformat);
-
-	v4l2_dump_pix_format(1, bcm2835_v4l2_debug, &dev->v4l2_dev, &f->fmt.pix,
-			     __func__);
+	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
+		 "%s: w %u h %u field %u pfmt 0x%x bpl %u sz_img %u colorspace 0x%x priv %u\n",
+		 __func__,
+		 (&f->fmt.pix)->width,
+		 (&f->fmt.pix)->height,
+		 (&f->fmt.pix)->field,
+		 (&f->fmt.pix)->pixelformat,
+		 (&f->fmt.pix)->bytesperline,
+		 (&f->fmt.pix)->sizeimage,
+		 (&f->fmt.pix)->colorspace,
+		 (&f->fmt.pix)->priv);
 	return 0;
 }
 
diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
index b5fce38de038..2e3e1954e3ce 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
@@ -121,16 +121,6 @@ int set_framerate_params(struct bm2835_mmal_dev *dev);
 
 /* Debug helpers */
 
-#define v4l2_dump_pix_format(level, debug, dev, pix_fmt, desc)	\
-{	\
-	v4l2_dbg(level, debug, dev,	\
-"%s: w %u h %u field %u pfmt 0x%x bpl %u sz_img %u colorspace 0x%x priv %u\n", \
-		desc,	\
-		(pix_fmt)->width, (pix_fmt)->height, (pix_fmt)->field,	\
-		(pix_fmt)->pixelformat, (pix_fmt)->bytesperline,	\
-		(pix_fmt)->sizeimage, (pix_fmt)->colorspace, (pix_fmt)->priv); \
-}
-
 #define v4l2_dump_win_format(level, debug, dev, win_fmt, desc)	\
 {	\
 	v4l2_dbg(level, debug, dev,	\
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
