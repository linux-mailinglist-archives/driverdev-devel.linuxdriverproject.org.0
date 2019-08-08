Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 876F485AEE
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Aug 2019 08:40:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D663C204B5;
	Thu,  8 Aug 2019 06:40:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eAKg6mADanHP; Thu,  8 Aug 2019 06:40:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 725D320452;
	Thu,  8 Aug 2019 06:40:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AFAFC1BF83A
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 06:40:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AA4E920452
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 06:40:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iOxlc598UpLf for <devel@linuxdriverproject.org>;
 Thu,  8 Aug 2019 06:40:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 2B83920446
 for <devel@driverdev.osuosl.org>; Thu,  8 Aug 2019 06:40:30 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id x15so33157845pgg.8
 for <devel@driverdev.osuosl.org>; Wed, 07 Aug 2019 23:40:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=W1CFx59IYJOVq1zbkjfg+1CyzPkO3w4y2x609JhtX8k=;
 b=JINPfDBHY7PN+gUSPYhvCXWyYn3EXelFxcMyZTrfwIBwxCjwscJFo/Hm/WOq8MpFDd
 1F+nGqqiNRQjPoA1/Bpyab/AWCJCwwOW+TKBQhbYed/Ksvc8stfDrQNFVWOkuHOh2wpm
 zaenRScdPtmz8Z7qWthhz+OBMP46c8aaKzfZ10lhH+OhgtufVeQWaLTBpj2rwm6iB35W
 iOGeeog+hsEpSKWCV2DWu+pwadRqVnDivMqZij0k/Jpk05fppzWUrLA+MSDfUxczrHCo
 X/X/KE1bp/RO6oIhhEv1LtNSQ5vgRR0Dm08ti9+VBT6uxGeRLHUKuC5m/yNVgMTGmqSQ
 10Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=W1CFx59IYJOVq1zbkjfg+1CyzPkO3w4y2x609JhtX8k=;
 b=emKOPI193jJjkMoOKiMHedztxMNY587gataoYLCWF9aduasF/bQZSFLvRKuxgLnxqb
 37iaia9VnnPZLphnQ4MjnzVIx4kamHHo0tlb4DwtVMBXkVMD8uVMJDbxi7JxkME94BOM
 RuaNpabYWg40aLruQ2+NsTKlBJTA/AjHK5iRcX8J9EUqeYe6qkFoJRfeFzy1A1yx35T4
 fjf53N5XyH+m3XPmeRTAKW8l9vssGLCl8wkYsVRyRBXjGiLNXqO+Ke1kDxsU3q0gNBeS
 dMNLUgMREAjxqHjipFY8sWQJreChcFrcHWvpiBKN0EhKMuMgqSFznQpQJI+iaVE+k7JX
 iVgw==
X-Gm-Message-State: APjAAAVTpgmYy0X8vmPaH/j1iGIjuID/CYcxW+k6iz/zBNR1MK8WNev6
 eX6hz6nqpUy2Rw3ESwSHCQs=
X-Google-Smtp-Source: APXvYqxiR1OvKoMYWvclyyRFNArahX2gpY7Mssdv4jhoPL1wqZJCr/OoRi88GqEqKD3ILGjPfEV93Q==
X-Received: by 2002:a17:90a:360b:: with SMTP id
 s11mr2376529pjb.51.1565246429704; 
 Wed, 07 Aug 2019 23:40:29 -0700 (PDT)
Received: from localhost.localdomain ([122.163.44.6])
 by smtp.gmail.com with ESMTPSA id m101sm1213950pjb.7.2019.08.07.23.40.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 07 Aug 2019 23:40:29 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 02/10] staging: rtl8712: recv_indicatepkt_reorder(): Change
 return values
Date: Thu,  8 Aug 2019 12:10:04 +0530
Message-Id: <20190808064012.12661-2-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190808064012.12661-1-nishkadg.linux@gmail.com>
References: <20190808064012.12661-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change return values of recv_indicatepkt_reorder from _SUCCESS/_FAIL to
0/-ENOMEM and -EINVAL.
Within recv_indicatepkt_reorder, modify comparison to true and use the
respective value directly.
Modify call site of recv_indicatepkt_reorder to check for the new return
values.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 42372e7e76ac..3950b2424b64 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -569,9 +569,9 @@ static int recv_indicatepkt_reorder(struct _adapter *padapter,
 			if (!padapter->driver_stopped &&
 			    !padapter->surprise_removed) {
 				r8712_recv_indicatepkt(padapter, prframe);
-				return _SUCCESS;
+				return 0;
 			} else {
-				return _FAIL;
+				return -EINVAL;
 			}
 		}
 	}
@@ -593,8 +593,7 @@ static int recv_indicatepkt_reorder(struct _adapter *padapter,
 	 * 2. All packets with SeqNum larger than or equal to
 	 * WinStart => Buffer it.
 	 */
-	if (r8712_recv_indicatepkts_in_order(padapter, preorder_ctrl, false) ==
-	    true) {
+	if (r8712_recv_indicatepkts_in_order(padapter, preorder_ctrl, false)) {
 		mod_timer(&preorder_ctrl->reordering_ctrl_timer,
 			  jiffies + msecs_to_jiffies(REORDER_WAIT_TIME));
 		spin_unlock_irqrestore(&ppending_recvframe_queue->lock, irql);
@@ -602,10 +601,10 @@ static int recv_indicatepkt_reorder(struct _adapter *padapter,
 		spin_unlock_irqrestore(&ppending_recvframe_queue->lock, irql);
 		del_timer(&preorder_ctrl->reordering_ctrl_timer);
 	}
-	return _SUCCESS;
+	return 0;
 _err_exit:
 	spin_unlock_irqrestore(&ppending_recvframe_queue->lock, irql);
-	return _FAIL;
+	return -ENOMEM;
 }
 
 void r8712_reordering_ctrl_timeout_handler(void *pcontext)
@@ -631,7 +630,7 @@ static int r8712_process_recv_indicatepkts(struct _adapter *padapter,
 	struct ht_priv	*phtpriv = &pmlmepriv->htpriv;
 
 	if (phtpriv->ht_option == 1) { /*B/G/N Mode*/
-		if (recv_indicatepkt_reorder(padapter, prframe) != _SUCCESS) {
+		if (recv_indicatepkt_reorder(padapter, prframe)) {
 			/* including perform A-MPDU Rx Ordering Buffer Control*/
 			if (!padapter->driver_stopped &&
 			    !padapter->surprise_removed)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
