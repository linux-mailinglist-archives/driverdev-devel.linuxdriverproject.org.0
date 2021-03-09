Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 025FE332887
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Mar 2021 15:26:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33D2C6F605;
	Tue,  9 Mar 2021 14:26:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vJXcjgBNIm57; Tue,  9 Mar 2021 14:26:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B4E26F5B8;
	Tue,  9 Mar 2021 14:26:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4F6041BF288
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 14:25:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3F2B783696
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 14:25:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D_OtpnntnF8z for <devel@linuxdriverproject.org>;
 Tue,  9 Mar 2021 14:25:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com
 [IPv6:2607:f8b0:4864:20::631])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 281B083673
 for <devel@driverdev.osuosl.org>; Tue,  9 Mar 2021 14:25:52 +0000 (UTC)
Received: by mail-pl1-x631.google.com with SMTP id d23so3430491plq.2
 for <devel@driverdev.osuosl.org>; Tue, 09 Mar 2021 06:25:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=aCxMTT4chOlmnZ2LoZCszcaK4fN4jjyi9EzefP1rzW8=;
 b=YlZUGxEUx5XSJAPnzSpR/LsttTG3jRuDhGrXT2dlU+EhSIf5rcfO2tJ4eu7TnyDa95
 moFgzbSr+PZivJVGEOJ5X5Iljv/mjnveL4YDbpQak8o82d80SgjcgAtgDFvVQjfiiWRl
 6UyeiN4bNw8j1EqB8oZBNFtpmbnXJ9eZbVRu2cD88XH4VI/Cyb9tFF3+D0qljqkjdjtz
 YlUKqQYm1Z/cXSWATxKrRHyBbWXKvxEZMXcP817QxqONW5wlijyMpNTBKXfkvZM6iacZ
 EtVJejYfiGVWdNPpTVLXxIbf1oju9A3Vi2RIS+Qzv4ynxT/EmnN/rvf3/7jw+FPEsxg/
 tfcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=aCxMTT4chOlmnZ2LoZCszcaK4fN4jjyi9EzefP1rzW8=;
 b=s7s9n0X3irSzzZW3Jw/8v/0pi1zmd110QcLSzJRopT4EJr6vi64Umtw+C7sBZEBMAR
 eFCfIX7t5fZHuaSNriuT03mzqg/TUEHVLYJZwsV+4wKYQCyWE+dBisupHxTkGHeHnASC
 oOflXQ2FFci0nC+b9Ij20LtvD/qa5CG2Jp7DTegU7BreTr3GPgUbw/aObeX54oS0OYvX
 e+mCYAyjuULSS4UqKhfbyZJ8s3eFLicN/8Ac+qyUqauaZlZqopsdR54pxQBcZ6xYcR4G
 7oXYEK5ncU8quPGNzPclsFh9LePTXa9FJ8M1zqfxXcuRpMxGSs04iXCzHJa7Dxf+jNd0
 I/zQ==
X-Gm-Message-State: AOAM533J0QYavYr9zmol7lL9RDXa77uB5ZtDzb22JRSaW0AheWjLSwPB
 9e8toym3QrvbCNzHsDRQo1g=
X-Google-Smtp-Source: ABdhPJxVtbJzhq09uTZN1UZbOKBzvkEY8DMMWG14426nWl4oHwSNqe/Agi+9IFZ3ELVZEV2q504uWA==
X-Received: by 2002:a17:90a:6089:: with SMTP id
 z9mr5043669pji.211.1615299951512; 
 Tue, 09 Mar 2021 06:25:51 -0800 (PST)
Received: from localhost.localdomain ([116.73.168.170])
 by smtp.gmail.com with ESMTPSA id j4sm13371831pfa.131.2021.03.09.06.25.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Mar 2021 06:25:51 -0800 (PST)
From: Selvakumar Elangovan <selvakumar16197@gmail.com>
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com
Subject: [PATCH] staging: rtl8712: fixed no space coding style issue
Date: Tue,  9 Mar 2021 19:55:47 +0530
Message-Id: <20210309142547.16974-1-selvakumar16197@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Added space around the binary operator for readability in
rtl8712_xmit.h file

Signed-off-by: Selvakumar Elangovan <selvakumar16197@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_xmit.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl8712_xmit.h b/drivers/staging/rtl8712/rtl8712_xmit.h
index e4c0a4bf8388..5cd651a0de75 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.h
+++ b/drivers/staging/rtl8712/rtl8712_xmit.h
@@ -89,7 +89,7 @@ struct tx_desc {
 
 union txdesc {
 	struct tx_desc txdesc;
-	unsigned int value[TXDESC_SIZE>>2];
+	unsigned int value[TXDESC_SIZE >> 2];
 };
 
 int r8712_xmitframe_complete(struct _adapter *padapter,
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
