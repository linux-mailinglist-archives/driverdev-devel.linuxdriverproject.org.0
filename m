Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9665DF5C
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Jul 2019 10:13:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CDE1186B2B;
	Wed,  3 Jul 2019 08:13:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ymsSjShvs+ot; Wed,  3 Jul 2019 08:13:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BF2BC86689;
	Wed,  3 Jul 2019 08:13:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 698651BF5A4
 for <devel@linuxdriverproject.org>; Wed,  3 Jul 2019 08:13:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5FE2886742
 for <devel@linuxdriverproject.org>; Wed,  3 Jul 2019 08:13:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7V+1jLjaG9Nb for <devel@linuxdriverproject.org>;
 Wed,  3 Jul 2019 08:13:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AA17E86AF9
 for <devel@driverdev.osuosl.org>; Wed,  3 Jul 2019 08:13:34 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id p184so850423pfp.7
 for <devel@driverdev.osuosl.org>; Wed, 03 Jul 2019 01:13:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jpedf64g2nGaIs7kgKn6od/wbXCzG2Hoh0kidvPp7dk=;
 b=tOprpnLAEEu6fBkdjXEIJ34BuvWtKBDm5oEf54+Da+m50nWfaYSHHYYdb5/6Vg0El4
 GJXh6N9s/2RFeP58PZSTqgYb2ZdhyQS2yTWrNvpC6u1D9qtX1/Qlc4cRYCxvCgbG0De5
 jguuTe0m9jiGaF+yO+h2AMOilbpq1WM7maY29R5L9CrC/EYcCkNr9OWivOSCFOjuq69D
 EczBnsIA5UnKpZuB9Ia+uJvA+97afMhGs5Rm1HCuUAZfMqJdl+6ll0oGKFfn9b2dITd7
 BNZ2sm9qhOeUAIBRDu9q74BmWc5/WvUNz0KwH+MVw2Lb26Xh5Rqc3UaLLh7sTs8/xFit
 RP8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jpedf64g2nGaIs7kgKn6od/wbXCzG2Hoh0kidvPp7dk=;
 b=WWVx7mvM8+1urBInss/WrhqDiJir6WECXpldeglFbeGF46d1FtMMGrqxLf3wzTOqfh
 CXBTk1UcYQRzzdLmWtG4FiwukuZEN97xmByNmK1+Es5KiblcvU+kP/mkcxnlu8wuJwre
 lGM0iDdiSMYW6F8onp3INJ0wD7YNPIU566NCI4PpiFSp7VZ3/HP8v8AwS2HrrbK50MmD
 4QCR30NmuPnulT2r2dN0WRYbqDEIUR1ifitbjVZ/wq3DeE04Brlw+jPeVzKWRRWO6SEe
 6Rh/xbxzhNv4vApUHZ8O0zlk9EBaZLpUOBGPLcUZq/LaqDJEEbjcFCC3Mfk81xnXVJSg
 m0TQ==
X-Gm-Message-State: APjAAAUQzsTG+VUohXOlkvQFU+/2fnEmiYsN+AzC66ywFMJm759rqxde
 riMnYi+VV0AlETJl3SOCvds=
X-Google-Smtp-Source: APXvYqzNOnUDpfrEJM1ib6cYQUAiqJDL28YiIUT8L7BJ5nYJWLkdmVuLfk19mXffx4aXSbV1sHUrBQ==
X-Received: by 2002:a17:90a:a116:: with SMTP id
 s22mr11066464pjp.47.1562141614267; 
 Wed, 03 Jul 2019 01:13:34 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id m6sm1176450pjl.18.2019.07.03.01.13.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 03 Jul 2019 01:13:33 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: maxime.ripard@bootlin.com, paul.kocialkowski@bootlin.com,
 mchehab@kernel.org, gregkh@linuxfoundation.org, wens@csie.org,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] staging: media: sunxi: Replace function
 cedrus_check_format()
Date: Wed,  3 Jul 2019 13:43:17 +0530
Message-Id: <20190703081317.22795-2-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190703081317.22795-1-nishkadg.linux@gmail.com>
References: <20190703081317.22795-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove function cedrus_check_format as all it does is call
cedrus_find_format.
Rename cedrus_find_format to cedrus_check_format to maintain
compatibility with call sites.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/media/sunxi/cedrus/cedrus_video.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index 0ec31b9e0aea..d5cc9ed04fd2 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -55,8 +55,8 @@ static inline struct cedrus_ctx *cedrus_file2ctx(struct file *file)
 	return container_of(file->private_data, struct cedrus_ctx, fh);
 }
 
-static bool cedrus_find_format(u32 pixelformat, u32 directions,
-			       unsigned int capabilities)
+static bool cedrus_check_format(u32 pixelformat, u32 directions,
+				unsigned int capabilities)
 {
 	struct cedrus_format *fmt;
 	unsigned int i;
@@ -76,12 +76,6 @@ static bool cedrus_find_format(u32 pixelformat, u32 directions,
 	return false;
 }
 
-static bool cedrus_check_format(u32 pixelformat, u32 directions,
-				unsigned int capabilities)
-{
-	return cedrus_find_format(pixelformat, directions, capabilities);
-}
-
 static void cedrus_prepare_format(struct v4l2_pix_format *pix_fmt)
 {
 	unsigned int width = pix_fmt->width;
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
