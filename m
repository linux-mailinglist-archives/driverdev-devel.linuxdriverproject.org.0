Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F1E214D27
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Jul 2020 16:36:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 087612210F;
	Sun,  5 Jul 2020 14:36:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id siBDKfn0ulmb; Sun,  5 Jul 2020 14:36:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C53CC21FFB;
	Sun,  5 Jul 2020 14:36:10 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 09ABF1BF36F
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 14:36:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 019F521FFB
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 14:36:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rmvau6ay+JRf
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 14:36:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by silver.osuosl.org (Postfix) with ESMTPS id E42792151E
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 14:36:05 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id b4so32633476qkn.11
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 05 Jul 2020 07:36:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DkzjwPbsfeKhMi5QxxfbRe9NdzcReAbrYkuMUC8TAWw=;
 b=ro8dmdSgYMpoz5/ugolEbxI1hMohYYvg9TDaJp8QnUCzRwZWmCnZbAWDQnuLm+rv3W
 9UREc/oyaqdMilH3uEYU4+7npiD4h+gF3xhUYcznt1zYv7cpzAT20i4g2Y07j7O9qGe4
 EAD+V+YNQGZatVNphFS2P4oOJS49JMXbAleAKwCaMjPQSV3S81k99d+VuiCavS3qn2BJ
 nz8R/MI+pdP/fNqp6dVOaEZKLNx5dT1KX/Vc8iukowkEOW7qYrIeARJ4X75foLJfoSim
 P8J6MZXWUkXMr3JAofsXQLDGFb04GlsbiTjWtfuJxB+Y139W9a3md03q+wcuGXnOAmHo
 MkJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DkzjwPbsfeKhMi5QxxfbRe9NdzcReAbrYkuMUC8TAWw=;
 b=X3OcN5PnbWPN6Me5A8Tcud5zwvk5kmWaRYDk7IxDBeSX7cR3xw+t//37k4Z2iBdp8U
 HFGwdXLOkhcKU3tdNbcpM6TqW9uqSYruzO1qiBPSLYB933jmKab+7g1Ig44w9nepu4UI
 E/T+NSmpp7FL3ab0hiQ/DecoMPrnrRGz2vjh2uYnoBmoVffRCStLyXUJNVMv6Mi7U/ZP
 QS9lmoRXckp+3XJUuvGx+nJQyv8ZTTyaqqGcalu1xeSlCOWYQcjC4Q2PRiyI11b0hRQm
 Mf/h7NFV9GbXs7MKuENhM2Bt89QJhSoEUJM38O6HYwE4vQ4uU8fnWGLhxFnavITYZtdt
 PaOg==
X-Gm-Message-State: AOAM532IGJ9LdoO9r+yjlP76CgwDHbXNP8GJO8mNPnF9gJA2+KwbTxmz
 IPW85Nu+z10iTq+qk7fQP9CpqT8ygSxKGA==
X-Google-Smtp-Source: ABdhPJxcF78LYhEyIekv2ADaO355DVClBWVvcreUOdPlgtM8AGbksgShxucSpRXtTX6aQ8Kv/Utc/w==
X-Received: by 2002:ae9:ed8e:: with SMTP id
 c136mr43106208qkg.374.1593959764925; 
 Sun, 05 Jul 2020 07:36:04 -0700 (PDT)
Received: from localhost.localdomain ([2804:14d:7481:1475:569e:3621:89b:963e])
 by smtp.gmail.com with ESMTPSA id
 j198sm15903286qke.71.2020.07.05.07.36.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Jul 2020 07:36:04 -0700 (PDT)
From: Mauro Dreissig <mukadr@gmail.com>
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, driverdev-devel@linuxdriverproject.org
Subject: [PATCH v2 1/5] staging: rtl8712: Replace constant 49152 with
 expression 48 * 1024
Date: Sun,  5 Jul 2020 11:35:48 -0300
Message-Id: <20200705143552.9368-2-mukadr@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200705143552.9368-1-mukadr@gmail.com>
References: <20200705143552.9368-1-mukadr@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This way we don't need the comment stating that 49152 equals 48k.

Signed-off-by: Mauro Dreissig <mukadr@gmail.com>
---
 drivers/staging/rtl8712/hal_init.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
index 7293cdc3a43b..1f5ba9cbe951 100644
--- a/drivers/staging/rtl8712/hal_init.c
+++ b/drivers/staging/rtl8712/hal_init.c
@@ -27,7 +27,7 @@
 #include "usb_osintf.h"
 
 #define FWBUFF_ALIGN_SZ 512
-#define MAX_DUMP_FWSZ	49152 /*default = 49152 (48k)*/
+#define MAX_DUMP_FWSZ (48 * 1024)
 
 static void rtl871x_load_fw_cb(const struct firmware *firmware, void *context)
 {
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
