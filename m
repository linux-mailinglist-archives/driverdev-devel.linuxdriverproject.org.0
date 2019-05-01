Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BA48D109C5
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 May 2019 17:04:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 21287863FF;
	Wed,  1 May 2019 15:04:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gqe5iiERuoha; Wed,  1 May 2019 15:04:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E628A863E2;
	Wed,  1 May 2019 15:04:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 788D81BF2BE
 for <devel@linuxdriverproject.org>; Wed,  1 May 2019 15:04:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 75EB92E3D5
 for <devel@linuxdriverproject.org>; Wed,  1 May 2019 15:04:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fFD1KPG77+q0 for <devel@linuxdriverproject.org>;
 Wed,  1 May 2019 15:04:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 4ADD0221F5
 for <devel@driverdev.osuosl.org>; Wed,  1 May 2019 15:04:03 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id v80so4130928pfa.3
 for <devel@driverdev.osuosl.org>; Wed, 01 May 2019 08:04:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Qd9vLN/uYtTHcvh53VYCk0sgdAPldYjSpxhnGE2v42I=;
 b=dohGZE1RAbaK2rNhOHij+TMgBLZsEgEHypTa1qct72G1R3/oU3+SWHfVMgYUjYuyTD
 RejCOVx1MRvdWw8GhOjnTWQ9b2KHL9voUau8p+9MEHXdfUVPYF5tWQl30SJnG3xOOcxN
 U5PXJZNELn2WM1GLK7QskyT4ncP6B4CPsy1tDwMDVkFtqiGp+DzqqWGp+MNKwP+45w2z
 jnIOK7BnR7PZDrbWIYIvsR/8zwwh15Q0dXQADiw5FkLJit1e2BTf6SEXQnpvywN6709+
 eu3v7HrfQhDzJj7hDWO0U5XI5HjQokXKRt28HgtPST+CdAClB+8ysuYNsjqPHm233nN+
 fL0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Qd9vLN/uYtTHcvh53VYCk0sgdAPldYjSpxhnGE2v42I=;
 b=BWAXW2iOXzdoFDePSnWrpanytPDYpaBMZGOkMdvcLPlSqt07kthYcQNam/W7MUWRms
 J0ybcjslxvi8u45Pym+YzBxL1O/0aB8I4IkTT7dLvgKLJOoXHBduGyTia7JvzaF20QX4
 4iH9ThRwzR1zsnRUv3OV+JpDEv9N82qGZTsYWVOelPh8e5ugOLvPSigQJa/SAV/F/3RQ
 0wlEkz0c1w9y2KMDZsVeS5oTtuhkVXn3czTGKs+TTtosUfWdfmM3kpWcFUK9y6dUMPbz
 ZGMFnDzOqAZ/sM+M9wdjE4M5MFsQOZdPuynVM1HPmQyQVF5wS9laWBxV/p8mvobwiKkA
 w2ow==
X-Gm-Message-State: APjAAAV5WETzuI0rX9NPJC2cQIQfGKCjCFYacvrk7UvhSwwcR4QPsNU+
 LAJIKIO9p72FGTpAharIuzE=
X-Google-Smtp-Source: APXvYqxbz6B01LF0q6KoohjXYDUIk4TtWpWF2BK/JBxzWt1/zcGCu1J4ScXMP5QJdWP88b4lfVDGZg==
X-Received: by 2002:a63:8449:: with SMTP id k70mr24144861pgd.53.1556723042639; 
 Wed, 01 May 2019 08:04:02 -0700 (PDT)
Received: from localhost.localdomain ([103.87.57.94])
 by smtp.gmail.com with ESMTPSA id m9sm6996701pfh.99.2019.05.01.08.03.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 08:04:01 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: core: Prefer using the BIT Macro.
Date: Wed,  1 May 2019 20:33:44 +0530
Message-Id: <20190501150344.14443-1-vatsalanarang@gmail.com>
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
 Vatsala Narang <vatsalanarang@gmail.com>, Larry.Finger@lwfinger.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace bit shifting on 1 with the BIT(x) macro.

Issue found using coccinelle.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index d4842ba64951..d110d4514771 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -1981,7 +1981,7 @@ unsigned int OnAction_back(struct adapter *padapter, union recv_frame *precv_fra
 			if (status == 0) {
 				/* successful */
 				DBG_871X("agg_enable for TID =%d\n", tid);
-				psta->htpriv.agg_enable_bitmap |= 1 << tid;
+				psta->htpriv.agg_enable_bitmap |= BIT(tid);
 				psta->htpriv.candidate_tid_bitmap &= ~BIT(tid);
 			} else {
 				psta->htpriv.agg_enable_bitmap &= ~BIT(tid);
@@ -1999,8 +1999,10 @@ unsigned int OnAction_back(struct adapter *padapter, union recv_frame *precv_fra
 
 		case RTW_WLAN_ACTION_DELBA: /* DELBA */
 			if ((frame_body[3] & BIT(3)) == 0) {
-				psta->htpriv.agg_enable_bitmap &= ~(1 << ((frame_body[3] >> 4) & 0xf));
-				psta->htpriv.candidate_tid_bitmap &= ~(1 << ((frame_body[3] >> 4) & 0xf));
+				psta->htpriv.agg_enable_bitmap &=
+					~BIT((frame_body[3] >> 4) & 0xf);
+				psta->htpriv.candidate_tid_bitmap &=
+					~BIT((frame_body[3] >> 4) & 0xf);
 
 				/* reason_code = frame_body[4] | (frame_body[5] << 8); */
 				reason_code = RTW_GET_LE16(&frame_body[4]);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
