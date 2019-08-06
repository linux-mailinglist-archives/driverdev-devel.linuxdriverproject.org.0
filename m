Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F188293D
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 03:33:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AC69F86256;
	Tue,  6 Aug 2019 01:33:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Htlum-NlvSKY; Tue,  6 Aug 2019 01:33:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8C67785B6F;
	Tue,  6 Aug 2019 01:33:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C4A831BF328
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 01:33:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B460485BD3
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 01:33:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FnBNmGVMy4JJ for <devel@linuxdriverproject.org>;
 Tue,  6 Aug 2019 01:33:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EC73685B6F
 for <devel@driverdev.osuosl.org>; Tue,  6 Aug 2019 01:33:35 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id x22so9581238qtp.12
 for <devel@driverdev.osuosl.org>; Mon, 05 Aug 2019 18:33:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=3Q58zsuke6wL53H4L04d0Bb7ddU3CfSaVopOCua6A/0=;
 b=I6z6O7r3bTflfnCWcqkpvE2mqzgQuHYLFT6MkZp0mZMZMQY8RyQ+feZCfoS9hi3Xqy
 TP8h6xHhaLdVoXbxc2okS54YaAbAltMFH8zPZq3Ag5qF/VYe8cPESBjzbU2lJOgLsjZ+
 +gNqKtoMHFU7pT188vUoWhF2H2j4niN/M61rt+rGI/+x4MEaNAoiagXLhdWm+lYZXV7c
 x6udGDlR3vLoKsZN5GOD0cS9qjZoMpt16TPV0TKjD2BkWCS5tqOfwwwItNc1U8j5pO6w
 +tq9kNvuMw73Yagz6yl3Y8W7xC1w6CxaPEf2qJXZu1ni+JvZ9yhtpklqEUFl4TsmfpsR
 Ug5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=3Q58zsuke6wL53H4L04d0Bb7ddU3CfSaVopOCua6A/0=;
 b=PDTf1Gapmr22oDH5V6GCW33f8Uju17/7wogHVxOgXSg4dtMOQG6zvUuY6kncF+g7Wh
 hV6u2RS8+/qUegv76V0i+0U+7TRzYgUUHi89ZYNWFRMfu36RLac6iBK0+M7GyyoddvnA
 2hoNyYFaIl0izT6mmcI/D/jSvsgFX/1j9St3WCxOid+HR4XlC+gOJsTBxesyuWteJwtG
 f1R49SQffteSYT2hnoA66uo7ZcQFgIGAbJ4IrItu6c28zOO+QYsk6pLJB7+LdNMgZDEH
 Iu5t2oTfkfS43JKCyIHrdfyE03W8fhJ0wQLr7Qpmu6sSpyfSuslwyMnbmrJxaoWvijiG
 uloA==
X-Gm-Message-State: APjAAAWRA4BX9HFg9+ImgFYq6+BlNXG0HCTsQ97gO/F93j6b8DKn1jlp
 HzsGU2p4b37zjdAz2P6Ndk0=
X-Google-Smtp-Source: APXvYqzgRzdHJOOQyzxpSYifLO5Qk5rHQG71pSzz//XeqGOwQ18oRylnPv1yxUlNr/5FHtW0umMFUA==
X-Received: by 2002:ac8:2774:: with SMTP id h49mr855184qth.97.1565055214743;
 Mon, 05 Aug 2019 18:33:34 -0700 (PDT)
Received: from localhost.localdomain ([2804:431:c7f0:2195:b8bc:4baa:a575:e6c8])
 by smtp.gmail.com with ESMTPSA id k123sm34789574qkf.13.2019.08.05.18.33.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 18:33:33 -0700 (PDT)
From: Jose Carlos Cazarin Filho <joseespiriki@gmail.com>
To: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org
Subject: [PATCH] rtl8712: rtl871x_ioctl_linux.c: fix unnecessary typecast
Date: Mon,  5 Aug 2019 22:33:29 -0300
Message-Id: <20190806013329.28574-1-joseespiriki@gmail.com>
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix checkpath warning:
WARNING: Unnecessary typecast of c90 int constant

Signed-off-by: Jose Carlos Cazarin Filho <joseespiriki@gmail.com>
---
 Hello all!
 This is my first commit to the Linux Kernel, I'm doing this to learn and be able
 to contribute more in the future
 Peace all! 
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index 944336e0d..da371072e 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -665,8 +665,8 @@ static int r8711_wx_set_freq(struct net_device *dev,
 
 /* If setting by frequency, convert to a channel */
 	if ((fwrq->e == 1) &&
-	  (fwrq->m >= (int) 2.412e8) &&
-	  (fwrq->m <= (int) 2.487e8)) {
+	  (fwrq->m >= 2.412e8) &&
+	  (fwrq->m <= 2.487e8)) {
 		int f = fwrq->m / 100000;
 		int c = 0;
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
