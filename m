Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCC917D619
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Mar 2020 21:17:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7996D87008;
	Sun,  8 Mar 2020 20:17:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OjD_nINut5e0; Sun,  8 Mar 2020 20:17:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3F8DE86942;
	Sun,  8 Mar 2020 20:17:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1C0BB1BF2B0
 for <devel@linuxdriverproject.org>; Sun,  8 Mar 2020 20:17:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1380F8815C
 for <devel@linuxdriverproject.org>; Sun,  8 Mar 2020 20:17:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jwCOPAAMH4GO for <devel@linuxdriverproject.org>;
 Sun,  8 Mar 2020 20:17:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4C1D988162
 for <devel@driverdev.osuosl.org>; Sun,  8 Mar 2020 20:17:11 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id y7so33837pjn.1
 for <devel@driverdev.osuosl.org>; Sun, 08 Mar 2020 13:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=gCmJ+G7TCrvBbeETOpvYyLbw+i9yV7qmAncCZUfBuCM=;
 b=d6px74uVt1+SFm603mg3MlgNgNOBAcMTO19U7/2hWVGFyedLMM5yckn/R+48b5etZx
 3Xb6/0DVjti8txu9xDFY7uv4U2qU1VbJechlphDAV96GpJWz04TopcYoYWmfeo7sKKZi
 wmSIWW/htWhHjxMJF8PZiwlqEIloDcBMCQmrbQsnZarhT4qzoq6VIwBqk6FRLPEq1Sm5
 CZmAYHnSDFvBTZIUVzZqLM4u4wkfu9WIMUvMliljoVJDrXC048pFPjcFrJhT+1NnvDrr
 0SXIhBbFzV638h0TwcNZ1ZbL6AB1E+U3vNYUnPuZbqaqJmjJqUHZwU1cHHTi1AZH1Gka
 KRCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=gCmJ+G7TCrvBbeETOpvYyLbw+i9yV7qmAncCZUfBuCM=;
 b=lB2ziBRgnrkrK8bHw6wNdmTQFY20wK9BivxZl8m0abWpkx6AUCZQXYyBkJ/hBgPglR
 1nNTscLSNli2U4Dy4Q89emNx8pU+hGFRVu28QDnj7CrCYNWC1KoluJe3z2y/dLYfhXQL
 Gr6o2c8oxPl6PvN2if+DDg1hsMt/qh/4xfaeIuzi8DxgFXy/VTMtaaynp4k9RiM17KOA
 dV5SLWTP/XpFwKpl53VdqB5lUMGQLcftwoYlnVhFgaViULY7cmi6wOfv4e3MC4GjLpkJ
 0olKfKs+PTJu+B84QSh2mIrpfCYIugaxnPO90u++E5sRTeazRIT+M94Y9WAfliBzatcD
 1C3A==
X-Gm-Message-State: ANhLgQ206njPUg+XG0gWMv6YBbvIDUV2baQXYnrekbadQwuiBCq2RRf1
 RWGWO/BLYbBaE2PxyOkYRpI=
X-Google-Smtp-Source: ADFU+vsTUpY7jCDZfW0/R+WkfqwvdKUgKOITOsCqpTYhd1ubT+1xw1/oODsZ6ZKNY36UXwic9p/FRw==
X-Received: by 2002:a17:90a:17e3:: with SMTP id
 q90mr15491962pja.12.1583698630751; 
 Sun, 08 Mar 2020 13:17:10 -0700 (PDT)
Received: from localhost.localdomain ([1.23.250.201])
 by smtp.gmail.com with ESMTPSA id x197sm27062658pfd.74.2020.03.08.13.17.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Mar 2020 13:17:10 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 sbrivio@redhat.com, daniel.baluta@gmail.com, nramas@linux.microsoft.com,
 hverkuil@xs4all.nl
Subject: [Outreachy kernel] [PATCH] Staging: rtl8723bs: Remove comparison to
 true
Date: Mon,  9 Mar 2020 01:47:03 +0530
Message-Id: <20200308201703.31709-1-shreeya.patel23498@gmail.com>
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
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove comparison to "true" from if statement to
maintain the kernel coding style.

Reported by checkpatch.pl

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 7117d16a30f9..a76e81330756 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -2417,7 +2417,7 @@ void stop_ap_mode(struct adapter *padapter)
 		paclnode = LIST_CONTAINOR(plist, struct rtw_wlan_acl_node, list);
 		plist = get_next(plist);
 
-		if (paclnode->valid == true) {
+		if (paclnode->valid) {
 			paclnode->valid = false;
 
 			list_del_init(&paclnode->list);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
