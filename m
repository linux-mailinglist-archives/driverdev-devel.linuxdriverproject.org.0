Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 433C2CD96F
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Oct 2019 00:20:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A11C3204FA;
	Sun,  6 Oct 2019 22:20:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qbbemqoy7fQD; Sun,  6 Oct 2019 22:20:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3B428204D6;
	Sun,  6 Oct 2019 22:20:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3F3291BF359
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 22:20:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3B4BF878D1
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 22:20:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NofiiU--mAeG for <devel@linuxdriverproject.org>;
 Sun,  6 Oct 2019 22:20:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A070E877E2
 for <devel@driverdev.osuosl.org>; Sun,  6 Oct 2019 22:20:23 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id m15so16627335qtq.2
 for <devel@driverdev.osuosl.org>; Sun, 06 Oct 2019 15:20:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QzFy/qe/W6+KNTUy6cPF6kcqmu24zi4GEoWy9Ld7gCI=;
 b=g+KWz7a8v+RDS/wWotdD0ZdmKAGZP/xA1B6YyHFsjbwCPk0laQRqc8e45bHuOMLVmy
 qsvoAuhX7RhHg+jwP5emR2LQdXBmgW0xAk+Tt3QEJLNOmsCjD94jHem92cY5pJUrW3LO
 wx48yLjHOp9SOXrqVstEnJeJ0lopVENiz/ZR3eWyO3NnulTzAMeLJG4ketEXUzI8mXF2
 nJRzb/LXftVtMWSMzFgUepx2Nnw9TRRvavPH8nem3LpxfY4QqgxV3jcxvkMjHCx3oaMk
 /AccPJW6gkvUW2WdQLjc3EnIq8UYT0g1FnClm0CGuNzw3DXbLr0uBSX2vRZ6/SSQQtPT
 aGGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QzFy/qe/W6+KNTUy6cPF6kcqmu24zi4GEoWy9Ld7gCI=;
 b=kK/F2pg9lvQlr4RoiB8OnrMugoBDgIZoXEDsPvbFOLwgs1RorXFCUCnzm4c0NfgI2w
 hfSfKLaDfJ+6IWAwu39pFXHOci17FcydnrucL4pKICcQ2hiORztqg8YC2bzsAqko1on2
 ipq5rFO/DfJVzTW5wdapvqrmomJa0L2ghSY5GqMx3r8WW/Yt2ZCxwzx8Nx4jBC3VLieW
 U8uskvTlXJXIUYWzLCH3GR7/IkASX8U6D+Vr+MezdtxzQuOwOOC57ouapOIfxWugNlei
 sOOSBGWi+d1GiCAFGPW3sgAhK4nimphoeaa3NZA6A2Y4RbYg8rqXbQc8R2QbEOUQGYzC
 3vow==
X-Gm-Message-State: APjAAAVRALOKdXJ9CP5oDbFTR5QmzyGO+fGq5R43WIEzO7didRyrBcCD
 Z5wFih5krgft8KO2FTwydiY=
X-Google-Smtp-Source: APXvYqwxKSLO+U+Sk5n+LcwBwktVVJnlgZtIZNnqSVWa7n1c4lpuB/fsdRhfRSIMWZ8BeREziax7pw==
X-Received: by 2002:ac8:2b82:: with SMTP id m2mr27648660qtm.35.1570400422628; 
 Sun, 06 Oct 2019 15:20:22 -0700 (PDT)
Received: from GBdebian.terracota.local ([177.103.155.130])
 by smtp.gmail.com with ESMTPSA id u123sm6585124qkh.120.2019.10.06.15.20.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Oct 2019 15:20:21 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org, trivial@kernel.org
Subject: [PATCH] staging: rtl8712: align arguments with open parenthesis
Date: Sun,  6 Oct 2019 19:20:15 -0300
Message-Id: <20191006222015.15937-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleans up checks of: "Alignment should match open parenthesis"

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/rtl8712/osdep_service.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/osdep_service.h b/drivers/staging/rtl8712/osdep_service.h
index e939c4a954b3..d33ddffb7ad9 100644
--- a/drivers/staging/rtl8712/osdep_service.h
+++ b/drivers/staging/rtl8712/osdep_service.h
@@ -46,7 +46,7 @@ struct	__queue	{
 	} while (0)
 
 static inline u32 end_of_queue_search(struct list_head *head,
-		struct list_head *plist)
+				      struct list_head *plist)
 {
 	return (head == plist);
 }
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
