Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB3D141945
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Jan 2020 20:55:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1C57920408;
	Sat, 18 Jan 2020 19:55:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y7jBROkeHjNh; Sat, 18 Jan 2020 19:55:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C03D120110;
	Sat, 18 Jan 2020 19:55:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 408441BF45A
 for <devel@linuxdriverproject.org>; Sat, 18 Jan 2020 19:55:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3DC6085569
 for <devel@linuxdriverproject.org>; Sat, 18 Jan 2020 19:55:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aCZFjUShEWZ5 for <devel@linuxdriverproject.org>;
 Sat, 18 Jan 2020 19:55:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8504185531
 for <devel@driverdev.osuosl.org>; Sat, 18 Jan 2020 19:55:15 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id m24so10596406wmc.3
 for <devel@driverdev.osuosl.org>; Sat, 18 Jan 2020 11:55:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XTmBENH79h2ojt7Bwsg0kO8vkaLLGDO2AWjzRPO7/iM=;
 b=SvbU/XnjCS2L/MMPXI2k41s/8qR7aSEaMvacV7TJmjxkMvtvbYRMeM0i4vhF4Xh9VQ
 CzAsNZt8U4IZ5KTUYXDfrirRkQBN4rljET9wSyRAMyhSqbses5hSOCz9Sci0ry8jngMS
 voN1+pkI4ImLI0jpGeYkdYi5/dGIRgtvPiPOWbh9R5EPndAdPa3sTQewSh97OzZPQE4g
 9vQjAh//7I/zVbO9YMjHqzdpEbTn+JfpSJKHr9sT/Umv1bwIFhJZz25HVlKTulL1NsEZ
 uUuZDEJralThfOiPlOTsa3U6A4EfrZNDpX54+M/f9LdYoXFA3lS0vyRXM4qBrdTEKQCc
 d/xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XTmBENH79h2ojt7Bwsg0kO8vkaLLGDO2AWjzRPO7/iM=;
 b=OMFpXo9854mTXbXRtwR4GxLAtA2CBH+WDr50d7ApDDbWrX04pb/3N0d2wpcjl8gRQi
 qgCQnStVjXvOdKeywgB8GcN1P5n2ACPCYf1h1fcXc4s3Men959UYTn4s2Od2ufepU5UD
 A1FcGH3mvIPJqcQ/GFwDK+aCLBJlrH3QiG3O/xtU4DHFo58d2zzSg9uMaJwzs2iJNxFA
 HVVb7fuHPDuynV0Po4NtxXgOavTjoTm5pd9kmiWSk5L78hdihBSPf4BeQrrQxwvwSip5
 PUmNU3XOXpsVU2BdyGqme7aa9DkARsJK9LyRBfSXIZppftkMUF+Zlx+jwhyWgpFrawh/
 174w==
X-Gm-Message-State: APjAAAUd7TBURPWD6CNJL2ZPueX+0tW0cUYlFZcCXiKwx+yTI8zIde5f
 mUnNmpn52W70Gm7VMKpT9yE=
X-Google-Smtp-Source: APXvYqw2wdUEcCd+jtgG9ImExu8CGRP3EFET8QPQSsCJX5Ax5/nPr+1Ft+NBguxNfrtVF/YYgaNd3A==
X-Received: by 2002:a1c:dc08:: with SMTP id t8mr11108286wmg.139.1579377313803; 
 Sat, 18 Jan 2020 11:55:13 -0800 (PST)
Received: from localhost.localdomain
 (dslb-002-204-143-199.002.204.pools.vodafone-ip.de. [2.204.143.199])
 by smtp.gmail.com with ESMTPSA id z3sm39877523wrs.94.2020.01.18.11.55.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Jan 2020 11:55:13 -0800 (PST)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/3] staging: rtl8712: simplify evm_db2percentage()
Date: Sat, 18 Jan 2020 20:53:05 +0100
Message-Id: <20200118195305.16685-3-straube.linux@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200118195305.16685-1-straube.linux@gmail.com>
References: <20200118195305.16685-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, florian.c.schilhabel@googlemail.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use clamp() to simplify function evm_db2percentage() and reduce object
file size.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 00ea0beb12c9..116773943a2e 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -663,17 +663,11 @@ static u8 evm_db2percentage(s8 value)
 	/*
 	 * -33dB~0dB to 0%~99%
 	 */
-	s8 ret_val;
+	s8 ret_val = clamp(-value, 0, 33) * 3;
 
-	ret_val = value;
-	if (ret_val >= 0)
-		ret_val = 0;
-	if (ret_val <= -33)
-		ret_val = -33;
-	ret_val = -ret_val;
-	ret_val *= 3;
 	if (ret_val == 99)
 		ret_val = 100;
+
 	return ret_val;
 }
 
-- 
2.24.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
