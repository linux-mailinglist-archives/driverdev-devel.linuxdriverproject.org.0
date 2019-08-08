Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE9C85AF4
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Aug 2019 08:40:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BA7868821B;
	Thu,  8 Aug 2019 06:40:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sELUK06DBL2W; Thu,  8 Aug 2019 06:40:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3BDA088185;
	Thu,  8 Aug 2019 06:40:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BDD681BF83A
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 06:40:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BA0E786214
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 06:40:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gVeef_XM1fFn for <devel@linuxdriverproject.org>;
 Thu,  8 Aug 2019 06:40:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F2D2186204
 for <devel@driverdev.osuosl.org>; Thu,  8 Aug 2019 06:40:51 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id w10so43506278pgj.7
 for <devel@driverdev.osuosl.org>; Wed, 07 Aug 2019 23:40:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UZdwQs1jwrbyvUiK3WQaBN0Vc/FcU5/dwHX4ZOezLKc=;
 b=Cw21ILhkrNGZBbgx5ArN3c5c85hxlydZAAL85dq9FD6IYmJHksNfPNzKPo7cJBIiQb
 t8OWAFcPVo0XZZMXN0RvdZLXDUIqVB+QctIP7jmYW4kwh351wL8PoGquXc6UyZp0Eswb
 n14A8/I647kguGOs+hyeJPrOXLs/CXVHWUY7plUlQDerItjrFkSYTUgANkqpEZn7KdYh
 3uQRfXeTG81tPyHRCqFA4AizvJ/mmqt3wnJLAAvwKJljlCjq3PHdiR98VEieluvcC1mc
 QPK0wz5pUfymzOD9bAS7bIuBoV1zz747L1MWwOGMtFRVOznVna6n5Q2OwcrwAuLah3BX
 J8IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UZdwQs1jwrbyvUiK3WQaBN0Vc/FcU5/dwHX4ZOezLKc=;
 b=r/v5iNIrxobH8AVaHedqym3NBbIia3kJvV32ZH1Ixem25cq4O9ES+XMot4s06RkmtX
 Wk8rCUmOBEFxTRHhs9mE6oed6bIrhNRgn0nzgWk7EnLKTneRdxf6ctoMFOjX3kMyG/dr
 ZgcxSceK0mByhXlEVo6dhwj18Um7t28LrD+4DLldzmNI1xk1i/HNHN4EKDLrtDJTUPs2
 IhK6Xwq6/67biRjGTWG/m3NDw9n1kwvvIxtbpfAOFk6onBZbZsgXmM7/rsKHxA4rOT0z
 9tUCyYjHN/HIy9JAUYoh0zPh84RHymEkd7Hjpb7KlCD0HrCNd4R/USaNxNh6MPDFrP9u
 4Bwg==
X-Gm-Message-State: APjAAAW4TbgESlblbQ9mNnITqbIRWouA5137joO6TQb0w6bx3zB6p/er
 dCQR55iSq1YiFYLArqHO6TI=
X-Google-Smtp-Source: APXvYqxkYRAletNHEjt51A7Op+UK73Wj3TnzZ4BHGgeEPKYJKALDsFubvyjZxR/YMzCgHutEJCYEKg==
X-Received: by 2002:aa7:90d4:: with SMTP id k20mr13298031pfk.78.1565246451644; 
 Wed, 07 Aug 2019 23:40:51 -0700 (PDT)
Received: from localhost.localdomain ([122.163.44.6])
 by smtp.gmail.com with ESMTPSA id m101sm1213950pjb.7.2019.08.07.23.40.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 07 Aug 2019 23:40:51 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 10/10] staging: rtl8712: r8712_xmit_classifier(): Change
 return values and type
Date: Thu,  8 Aug 2019 12:10:12 +0530
Message-Id: <20190808064012.12661-10-nishkadg.linux@gmail.com>
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

Change return values of r8712_xmit_classifier from _SUCCESS and _FAIL to
0 and -EINVAL respectively.
Modify call site to check for non-zero return values instead of _FAIL.
Change return type from sint to int.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_xmit.c | 2 +-
 drivers/staging/rtl8712/rtl871x_xmit.c | 8 ++++----
 drivers/staging/rtl8712/rtl871x_xmit.h | 4 ++--
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
index dac79e6dcdcb..3334b03c2548 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.c
+++ b/drivers/staging/rtl8712/rtl8712_xmit.c
@@ -750,7 +750,7 @@ int r8712_xmit_direct(struct _adapter *padapter, struct xmit_frame *pxmitframe)
 
 int r8712_xmit_enqueue(struct _adapter *padapter, struct xmit_frame *pxmitframe)
 {
-	if (r8712_xmit_classifier(padapter, pxmitframe) == _FAIL) {
+	if (r8712_xmit_classifier(padapter, pxmitframe)) {
 		pxmitframe->pkt = NULL;
 		return _FAIL;
 	}
diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
index 0a26d71e5340..f625fd5b9eb3 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.c
+++ b/drivers/staging/rtl8712/rtl871x_xmit.c
@@ -894,8 +894,8 @@ static inline struct tx_servq *get_sta_pending(struct _adapter *padapter,
  * Will enqueue pxmitframe to the proper queue, and indicate it
  * to xx_pending list.....
  */
-sint r8712_xmit_classifier(struct _adapter *padapter,
-			   struct xmit_frame *pxmitframe)
+int r8712_xmit_classifier(struct _adapter *padapter,
+			  struct xmit_frame *pxmitframe)
 {
 	unsigned long irqL0;
 	struct  __queue *pstapending;
@@ -920,7 +920,7 @@ sint r8712_xmit_classifier(struct _adapter *padapter,
 		}
 	}
 	if (psta == NULL)
-		return _FAIL;
+		return -EINVAL;
 	ptxservq = get_sta_pending(padapter, &pstapending,
 		   psta, pattrib->priority);
 	spin_lock_irqsave(&pstapending->lock, irqL0);
@@ -929,7 +929,7 @@ sint r8712_xmit_classifier(struct _adapter *padapter,
 	list_add_tail(&pxmitframe->list, &ptxservq->sta_pending.queue);
 	ptxservq->qcnt++;
 	spin_unlock_irqrestore(&pstapending->lock, irqL0);
-	return _SUCCESS;
+	return 0;
 }
 
 static void alloc_hwxmits(struct _adapter *padapter)
diff --git a/drivers/staging/rtl8712/rtl871x_xmit.h b/drivers/staging/rtl8712/rtl871x_xmit.h
index c5c55967164b..d4bc059e6a42 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.h
+++ b/drivers/staging/rtl8712/rtl871x_xmit.h
@@ -258,8 +258,8 @@ void r8712_free_xmitframe(struct xmit_priv *pxmitpriv,
 			  struct xmit_frame *pxmitframe);
 void r8712_free_xmitframe_queue(struct xmit_priv *pxmitpriv,
 				struct  __queue *pframequeue);
-sint r8712_xmit_classifier(struct _adapter *padapter,
-			    struct xmit_frame *pxmitframe);
+int r8712_xmit_classifier(struct _adapter *padapter,
+			  struct xmit_frame *pxmitframe);
 sint r8712_xmitframe_coalesce(struct _adapter *padapter, _pkt *pkt,
 			      struct xmit_frame *pxmitframe);
 sint _r8712_init_hw_txqueue(struct hw_txqueue *phw_txqueue, u8 ac_tag);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
