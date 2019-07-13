Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 63CED67C31
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Jul 2019 23:58:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F284F86477;
	Sat, 13 Jul 2019 21:57:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id avXnrXY-dqz5; Sat, 13 Jul 2019 21:57:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9F3248573E;
	Sat, 13 Jul 2019 21:57:57 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 88E051BF2F0
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 13 Jul 2019 21:57:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 828BC8562A
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 13 Jul 2019 21:57:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ppkwpG-Ui8MU
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 13 Jul 2019 21:57:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F1023854AD
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 13 Jul 2019 21:57:54 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id w190so9038348qkc.6
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 13 Jul 2019 14:57:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VK1ccb2y/uLRwIAnJSB19HFndT15wmtylFbgup9JDEY=;
 b=axDQ/dbbNLkWUzeKc0hK4hlSXX61ayITZX0YmJMYIJ8OUmqsRt/Y+bmoawDvkE2E9R
 394PYle2i+LETgS61kuTfvRNFVMVfWFJPbLsnST6NZ+qe83fTkxwCw9OqZQAuphSWwYs
 jyHvyWVM+5gDjXX7HQ8p/LpEEFulIuXccKI51Drk/tWi/XbNHwKsqvGGvLGLPJOiqi6J
 zp/nsjkfipo/1E5rLXpz8oSYdSr+lslwGIT1b3Zy267Pew5rCNYc81bDpcm9XlIqTKMc
 yCcca5W1R9Aw2hAIiU16CY5pq63C4osf39PX5E7VjSV0VhNhK0uV9u4FJ+uWGGiI4nwT
 T3iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VK1ccb2y/uLRwIAnJSB19HFndT15wmtylFbgup9JDEY=;
 b=KBNTHOCFmC+IEsz6cLPow5e2zZuxeM6Eyjhp813D4FsbdtXv/P5BTGROK77/bTGkIA
 4Yatjv1fn6w8FpkJUauRYfDhhm1noV2Yk5JGptoZqF0F51aR0rHmOAfc5jSRl6donoqQ
 ZkYjEnkZWWisIXcO5bweF/hZZoYT3YJM7P5060FAqSUGys6UVtOsJgzLmkRNLUrDG1a8
 Jpde6UGXlfrTpk+c7u7DgS3tGtYvlpL1Xh5wJunNIn/vu/kWPe/S6ygBJSGRGbpP6Ylp
 B30q5tIPEscXl0wUK4FoLY/DEWDr2xPmE8jCKjWMdm7WkjDRhM+ITW54SebhtQcpKGrw
 6qXA==
X-Gm-Message-State: APjAAAVu6aMkkyB4KAg6qIJ8k0KwbQVLKwtJt37AOcDteFhLEXgPxrbA
 Ej8RroVa8wYJqkPz/qRXqHw+ZYC1axFQ5Q==
X-Google-Smtp-Source: APXvYqzbr+gtwEyr6AHA8T6i6yPAzEGxbLt66k6emC3LLdXOXQVKDYxrGt1vNezrxTRAL/FP6JkfnA==
X-Received: by 2002:a37:6243:: with SMTP id w64mr10766852qkb.444.1563055074163; 
 Sat, 13 Jul 2019 14:57:54 -0700 (PDT)
Received: from localhost.localdomain ([181.31.106.136])
 by smtp.gmail.com with ESMTPSA id g35sm7194291qtg.92.2019.07.13.14.57.52
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 13 Jul 2019 14:57:53 -0700 (PDT)
From: christianluciano.m@gmail.com
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com,
 driverdev-devel@linuxdriverproject.org, christianluciano.m@gmail.com
Subject: [PATCH] staging: rtl8712: Delete multiple blank line.
Date: Sat, 13 Jul 2019 18:57:43 -0300
Message-Id: <20190713215743.12012-1-christianluciano.m@gmail.com>
X-Mailer: git-send-email 2.22.0
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

From: Christian Luciano Moreno <christianluciano.m@gmail.com>

Signed-off-by: Christian Luciano Moreno <christianluciano.m@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_cmdctrl_bitdef.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl8712_cmdctrl_bitdef.h b/drivers/staging/rtl8712/rtl8712_cmdctrl_bitdef.h
index e125c7222ab5..68bdec07f51e 100644
--- a/drivers/staging/rtl8712/rtl8712_cmdctrl_bitdef.h
+++ b/drivers/staging/rtl8712/rtl8712_cmdctrl_bitdef.h
@@ -91,6 +91,5 @@
 #define	_BCNSPACE_MSK			0x0FFF
 #define	_BCNSPACE_SHT			0
 
-
 #endif /* __RTL8712_CMDCTRL_BITDEF_H__*/
 
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
