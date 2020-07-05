Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FD5214946
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Jul 2020 02:22:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7D10F86CB2;
	Sun,  5 Jul 2020 00:22:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n1h1OWxP1R14; Sun,  5 Jul 2020 00:22:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7DAD786C34;
	Sun,  5 Jul 2020 00:22:35 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 56AA01BF8C7
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 00:22:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 52EDF8918B
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 00:22:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V-VDAQ2jdINt
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 00:22:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9D15D89128
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 00:22:32 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id 6so1181230qtt.0
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 04 Jul 2020 17:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DkzjwPbsfeKhMi5QxxfbRe9NdzcReAbrYkuMUC8TAWw=;
 b=eVheaTYFsvujYH/wTEdbJ0fOZty+xXeWBytTGzWGF0FEk5zGm7VUDPVNSUNXGPw5Bi
 2ByinPi65xxhKXoVQJs3dvnCG+04GhzX2rrlUqRW+74eACjvf+bbHs78BSHm4pcVDkZp
 xBy4QIho6Z6V3a6lMbBNTRki38sZ6w+9y02L3CO0KL41Mk+vxYThLQ51Tfl3v5M86gXN
 0fC+djyw/MXtfdCkCex5ZcRtzRDL/2yOQWuPUqEFoh7dpQbD2zXCGD9sNW14FmqLe6LE
 YkV0xvht9VanVHSaDSSzNwSrtqz8UPzXAb2k9dugE3Psoqt8ji6fNLVe5f3Y4G0Cztvn
 AWTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DkzjwPbsfeKhMi5QxxfbRe9NdzcReAbrYkuMUC8TAWw=;
 b=azlJ62N6os8zuR38SPmr9vyDYEtcLPyZ1ytFl56A6dgLGGkE3yq1oJjc40cyqo3Det
 GVoUjhXrr55Jd0LsYxJb/rVqA7zxxJ7SRss8W/QH74xZkzJ3Y7scywNdJ/1AlphpSPX7
 bkWpc5JOAxJ7ukR1LTKjlyU9pLDBx+6WsZTEm3FctYm1E6BrZ+1gyUs32WABve86uMyk
 NIZ76bIKUm1HxXWgsXMxnGJh/l+4ozWW45lQv27kvsZ8AE9ls9LEUdKwemyiCKCvzx0V
 btYgDTWG1NK7n6eVr9/N4A7Oz1it+czPanUg0CxB5ORlzr9OZr4jAX2agtb1C6T/jKzs
 Kzkg==
X-Gm-Message-State: AOAM530ZwINPwKvTs5R7TlyRInT0E3AZ1Z9MPhkPpAI1u8SSquZa7Q23
 EcwjbeZ16Q72z8p9yqdlTxA=
X-Google-Smtp-Source: ABdhPJzrDpv9/dqbsKRdqj4S7TS3/RVqLQgCY+JbM4jeRTDBuLZS1UrrI2zk65YF7QY+tuODW23S4A==
X-Received: by 2002:ac8:3637:: with SMTP id m52mr43987798qtb.53.1593908551691; 
 Sat, 04 Jul 2020 17:22:31 -0700 (PDT)
Received: from localhost.localdomain ([2804:14d:7481:1475:1a4c:230b:91f2:972d])
 by smtp.gmail.com with ESMTPSA id v62sm10254072qkb.81.2020.07.04.17.22.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jul 2020 17:22:31 -0700 (PDT)
From: Mauro Dreissig <mukadr@gmail.com>
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, driverdev-devel@linuxdriverproject.org
Subject: [PATCH 1/5] staging: rtl8712: Replace constant 49152 with expression
 48 * 1024
Date: Sat,  4 Jul 2020 21:22:11 -0300
Message-Id: <20200705002215.17968-2-mukadr@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200705002215.17968-1-mukadr@gmail.com>
References: <20200705002215.17968-1-mukadr@gmail.com>
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
