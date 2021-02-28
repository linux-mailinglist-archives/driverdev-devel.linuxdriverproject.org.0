Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E85E4326FDC
	for <lists+driverdev-devel@lfdr.de>; Sun, 28 Feb 2021 02:06:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 19784434B3;
	Sun, 28 Feb 2021 01:06:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ktZMwlwbK7St; Sun, 28 Feb 2021 01:06:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 662F94346A;
	Sun, 28 Feb 2021 01:06:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2B99A1BF403
 for <devel@linuxdriverproject.org>; Sun, 28 Feb 2021 01:06:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 245794F01D
 for <devel@linuxdriverproject.org>; Sun, 28 Feb 2021 01:06:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bg1ZYKCyJps2 for <devel@linuxdriverproject.org>;
 Sun, 28 Feb 2021 01:06:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com
 [209.85.210.45])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6AD004EF12
 for <devel@driverdev.osuosl.org>; Sun, 28 Feb 2021 01:06:19 +0000 (UTC)
Received: by mail-ot1-f45.google.com with SMTP id b8so12923035oti.7
 for <devel@driverdev.osuosl.org>; Sat, 27 Feb 2021 17:06:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NNDK31GfhaZ5nts0uVy+F5CRFC//iVXkXv+G42hpuP8=;
 b=Ac80NqiiAcpgSuoKUgfjMVQuUa8+QgeTvAwGg5NsOzb4iI/OhPBzXCFRWfgQa/XZkZ
 Q1/C0iK2q9t7xcN9xiGEqVe9h+a4RYGYnqkD2NyGc6WkxMcJaWg0bG2mmJrps6bnMnCQ
 qQe3H8wzHGzbbdbEtPbqHCSDPzHMbOX6LKE0lN5RYq9e5aySt0SB66t0LVRRDoAZ6VTY
 L98YdbdEPsaCOi5Ido+w62EK2Q5DEsMpU6CxSsmibxmGEj8tFSeU+Am1KXtAcqd15p3y
 6ll0o9CtjEl4qNOULsXnLvhzlul5e3LuOJG6zkYNHrYLDfgdPLc53MPlXVHqMBAMUxgf
 nuOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NNDK31GfhaZ5nts0uVy+F5CRFC//iVXkXv+G42hpuP8=;
 b=DAGw0Yyteu3eIoZZvIXpWYbAqfeJiE+eCPRnDbH9cYYuey+jxzWwzfOp6epJ9ue1bT
 ChNvT4lyQ5BDzWvZ6Xz2/OBILksj9gmNlvT1RpvA5CalXMay16qTOVDRGnohCl2MoNk8
 R/y8PAkyxc7xvrw6+sgc4CqOBy1oVj7ehv9UGyivyoS4IKBY2sRoBSmGQDN13sFVywsA
 +99JL//9cE03iRz+MWD/ETsITYI9B5uzA8v/0Hbzk85otnB/fHXOGXs1TNODHYLSFjby
 cPhg0fmKRFb57RYv0ISRJcksF1yg9oOa+rGAp9Z2SwsiUq31VIAQ5tAPrIbJvd0boemy
 JzwQ==
X-Gm-Message-State: AOAM533/bJjfFtzP6HJvDRr/uMoMCHZMFFA7JsUjlbBXRcXuNw5q4d8N
 XnF5V67JN8jLwbw99pVDg5tPlT6hqcDD4w==
X-Google-Smtp-Source: ABdhPJw24NON9FnAIXdf/3n8JglhXjh0L3cMsGVdSoxzZy197BpVCIbF9KwZOLjUlgeO7XzfeWNlnA==
X-Received: by 2002:a9d:6e8a:: with SMTP id a10mr7867664otr.356.1614474378004; 
 Sat, 27 Feb 2021 17:06:18 -0800 (PST)
Received: from elysium.agostinelli.home.saggio.net
 (2603-8080-4208-0193-f7c3-366a-30e3-d407.res6.spectrum.com.
 [2603:8080:4208:193:f7c3:366a:30e3:d407])
 by smtp.gmail.com with ESMTPSA id k18sm2870332ots.24.2021.02.27.17.06.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Feb 2021 17:06:17 -0800 (PST)
From: "Darryl T. Agostinelli" <dagostinelli@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH] staging: rtl8192u avoid flex array of flex array
Date: Sat, 27 Feb 2021 19:06:14 -0600
Message-Id: <20210228010614.162998-1-dagostinelli@gmail.com>
X-Mailer: git-send-email 2.29.2
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
Cc: gregkh@linuxfoundation.org,
 "Darryl T. Agostinelli" <dagostinelli@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Undo the flex array in struct ieee80211_info_element.  It is used as the flex
array type in other structs (creating a flex array of flex arrays) making
sparse unhappy.  This change maintains the intent of the code and satisfies
sparse.

Signed-off-by: Darryl T. Agostinelli <dagostinelli@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 39f4ddd86796..43bb7aeb35e3 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -951,7 +951,7 @@ struct rtl_80211_hdr_4addrqos {
 struct ieee80211_info_element {
 	u8 id;
 	u8 len;
-	u8 data[];
+	u8 data[0];
 } __packed;
 
 struct ieee80211_authentication {
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
