Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EE64E13FAB
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 May 2019 15:22:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A0B3085C0B;
	Sun,  5 May 2019 13:22:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fOX7sRRivkbF; Sun,  5 May 2019 13:22:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 572BB84F4C;
	Sun,  5 May 2019 13:22:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7100C1BF3B8
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 13:22:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6E25C226A2
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 13:22:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R2RYWumzAeWq for <devel@linuxdriverproject.org>;
 Sun,  5 May 2019 13:22:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 4E59920791
 for <devel@driverdev.osuosl.org>; Sun,  5 May 2019 13:22:32 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id h1so5097058pgs.2
 for <devel@driverdev.osuosl.org>; Sun, 05 May 2019 06:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=TdBBbUZ0RxPdEUkWNKneikj6T2F+pAawD9gH2hw+dsY=;
 b=FuSnj//f/UTrafYQ3ex+zWM9aPxdrU3RgOaAtbF1TaXWKUnHy+4Kx/8pVAPs3/pDao
 2OAKtKa2Uze4wAJpHKqgGy0l0o7EULWM32NuCN9B2RQ+ZZpdbu58Yb8ZRJ+HV6Grm1uj
 uZ28vvmQDhV42QBbLW27Eevi3Rbg+inztCZHPX3QdtqE+fMJYqLAh8QNzO26/rNGgcNa
 2p11Gjb0q1xL0NDg+zIjYHU6GMFQDTgXctGr5QCYc6S9A4AI/855Tf8kiaK4kGVBI+xZ
 UgLW3LqlCoogn6TZH5gXm7PKO1ZLd/ANs5t5Nxie0LLQ2gwyIPZS1gFeoBLL9fmDMQmn
 2cgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=TdBBbUZ0RxPdEUkWNKneikj6T2F+pAawD9gH2hw+dsY=;
 b=FTbqnTYB6ieM3Yn+akDmK1l3ZNE7cxFEKNe6h763FzTSLRNowmkRBUrjyezXIsRIdq
 bNKrQQ5/6DuutliyjXd0/yn5QrB8KWa2Gkaf+39Lsayk8OQKbghnYuRrpL8iu9Pvo0DU
 9Nt2lKLN8Wh/JCO+gxcM16Qf1XSGJU+c6a5mJNg8N8AHdf/PWG1rMpxO2j8Dgj3R12BD
 +mOxbBmQwAj2YfgWywt29il+C5KsUp7YuAKgE/PjB8tNxPr0eVnz3jHp8kpKTp/gI0AD
 5P/DKCKFjr6J9EMvT9mtqsb9qPnml9NVOP8DXPfQCjz4W5/+eNOZXXLYXeFbipIolUMj
 nxMw==
X-Gm-Message-State: APjAAAVvm0ik5kPTrstffed6zvtbbDQaQTXHmG/mU/Qz6ACso6NdzJwS
 u9JFihQvg3Kw4TDW1fW9pBE=
X-Google-Smtp-Source: APXvYqyiHDaKTbuRvF2+8D6TYGwy7w+BRqstD1lqEVH3ao6IO8qV8Avl+NZ0nUC14CrQ2z9STXjZzA==
X-Received: by 2002:a63:da14:: with SMTP id c20mr9828991pgh.191.1557062551816; 
 Sun, 05 May 2019 06:22:31 -0700 (PDT)
Received: from localhost.localdomain ([103.87.56.229])
 by smtp.gmail.com with ESMTPSA id z7sm9206851pgh.81.2019.05.05.06.22.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 May 2019 06:22:31 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 5/6] staging: rtl8723bs: core: Fix variable constant
 comparisons.
Date: Sun,  5 May 2019 18:52:12 +0530
Message-Id: <20190505132212.4458-1-vatsalanarang@gmail.com>
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
Cc: devel@driverdev.osuosl.org, julia.lawall@lip6.fr,
 linux-kernel@vger.kernel.org, hdegoede@redhat.com, hadess@hadess.net,
 Vatsala Narang <vatsalanarang@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Swap the terms of comparisons whenever the constant comes first to get
rid of checkpatch warning.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index a8ceaa9f8718..0b5bd047a552 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -1276,7 +1276,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 			status = _STATS_FAILURE_;
 	}
 
-	if (_STATS_SUCCESSFUL_ != status)
+	if (status != _STATS_SUCCESSFUL_)
 		goto OnAssocReqFail;
 
 	/*  check if the supported rate is ok */
@@ -1372,7 +1372,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 		wpa_ie_len = 0;
 	}
 
-	if (_STATS_SUCCESSFUL_ != status)
+	if (status != _STATS_SUCCESSFUL_)
 		goto OnAssocReqFail;
 
 	pstat->flags &= ~(WLAN_STA_WPS | WLAN_STA_MAYBE_WPS);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
