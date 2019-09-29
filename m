Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 390B4C14A6
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Sep 2019 15:57:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 39EA1853E5;
	Sun, 29 Sep 2019 13:57:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fVK5t_bSfU26; Sun, 29 Sep 2019 13:57:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DBED28535F;
	Sun, 29 Sep 2019 13:57:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 81EC61BF2FC
 for <devel@linuxdriverproject.org>; Sun, 29 Sep 2019 13:57:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7EE158535F
 for <devel@linuxdriverproject.org>; Sun, 29 Sep 2019 13:57:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8QDIM8JKdFeH for <devel@linuxdriverproject.org>;
 Sun, 29 Sep 2019 13:57:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 81B528532E
 for <devel@driverdev.osuosl.org>; Sun, 29 Sep 2019 13:57:01 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id u12so2807272pls.12
 for <devel@driverdev.osuosl.org>; Sun, 29 Sep 2019 06:57:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=sqiQlC/JcSBFnMM2msWbIXxT+/YDAu1aTFAsRz/Kcs0=;
 b=qoVIBSNiu78ICPNnQNFK6ZPBk/MLLMd082Qwn2hpHnJiqfZ39Hsny90V4dZIWVwnAd
 5OwNBFqvA/m0pI1IryVmfJ0WadEdF9FwdQORC7kxR1bpDQYxFQAHpf4I60lpncDUZzHM
 Gc87UTjUiffogY/9BtEUvXFsBPNBaWNv2SG6RWRfphWJYHexvSoIUZK9893kyoKiNa8G
 WOQJuKvJrb1PUEWgBPcpNp6vNT1T/W9JVEG5HDD9I7iZZtWZi7QP3qO+sp/uw7YW+OEr
 kZQFJMQh+9dj+/Z+8qGeCytY0zARUQGBXaRDJt2qLuK8oN2g2SLiq4pgZBbBammBwUYW
 yfkA==
X-Gm-Message-State: APjAAAV3tpRPPwPwifUOJDWgKv0jwoy8TMyo3Vqi9TyFn3AGKXvabBb0
 gjGITJaBAQr1hvw8cYliHSk=
X-Google-Smtp-Source: APXvYqwRxUzhY6JjCGdm7UyFt138PnjAoGyKnzlwTP4M6iVzjvd8Wd88OkPeg+iuy9sgI67dB2mchw==
X-Received: by 2002:a17:902:6bcc:: with SMTP id
 m12mr15498850plt.280.1569765420757; 
 Sun, 29 Sep 2019 06:57:00 -0700 (PDT)
Received: from localhost.localdomain ([183.83.93.91])
 by smtp.gmail.com with ESMTPSA id b5sm9993348pgb.68.2019.09.29.06.56.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 29 Sep 2019 06:56:59 -0700 (PDT)
From: hariprasad@osuosl.org, Kelam@osuosl.org,
	hariprasad.kelam@gmail.com
To: 
Subject: [PATCH] rtl8723bs: core: Remove code valid only for 5GHZ
Date: Sun, 29 Sep 2019 19:24:57 +0530
Message-Id: <1569765348-20417-1-git-send-email-hariprasad.kelam@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: devel@driverdev.osuosl.org, Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Hariprasad Kelam <hariprasad.kelam@gmail.com>

As per TODO ,remove code valid only for 5 GHz(channel > 14).

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ieee80211.c | 19 ++++++-------------
 1 file changed, 6 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
index 6018d87..679f98b 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
@@ -94,19 +94,12 @@ bool rtw_is_cckratesonly_included(u8 *rate)
 
 int rtw_check_network_type(unsigned char *rate, int ratelen, int channel)
 {
-	if (channel > 14) {
-		if (rtw_is_cckrates_included(rate))
-			return WIRELESS_INVALID;
-		else
-			return WIRELESS_11A;
-	} else { /*  could be pure B, pure G, or B/G */
-		if (rtw_is_cckratesonly_included(rate))
-			return WIRELESS_11B;
-		else if (rtw_is_cckrates_included(rate))
-			return	WIRELESS_11BG;
-		else
-			return WIRELESS_11G;
-	}
+	if (rtw_is_cckratesonly_included(rate))
+		return WIRELESS_11B;
+	else if (rtw_is_cckrates_included(rate))
+		return	WIRELESS_11BG;
+	else
+		return WIRELESS_11G;
 }
 
 u8 *rtw_set_fixed_ie(unsigned char *pbuf, unsigned int len, unsigned char *source,
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
