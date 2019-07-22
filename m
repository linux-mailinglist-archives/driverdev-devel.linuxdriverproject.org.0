Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D35486FC15
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 11:24:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7EC1B876F2;
	Mon, 22 Jul 2019 09:24:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W0BRmveojLYs; Mon, 22 Jul 2019 09:24:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 05FF18735C;
	Mon, 22 Jul 2019 09:24:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 178C41BF302
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 09:24:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0C3C48735C
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 09:24:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id adfczJNHj45j for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 09:24:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8027786F12
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 09:24:14 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id f5so8553662pgu.5
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 02:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=z6T5b116rmPxozBgPMrCcr5eC7zr/jWOiBDvKXTDKsw=;
 b=cXJxvXC9MLcu8Gfm+T16K5NOi0Pl39XV/3HJpiws6O07sIRWpE9AyfH8eqlgf0BxAX
 i2PsEo7sG86OoNG8vy50xx17lpJq8KZ2/4Xk4DbEJ6wG4wYrFnr7ig/SeJgdHUCz8IVp
 TpCDTB0NP6qrZ3PB/0ofMTZlxt0ZK1eQXJwfsm5DPKkubSHcQ3gzf9ZglEowdxIvjhST
 S6w2R6ZKVmPa3O93Izww6xzXw2ZBoIIaln2Ogp98YAvEN8HX7fyr9fAoXue6F5UJN9x2
 C4F2XEW4C1H0g7gh1LkDH03rtqtkur2Tu1SgdBh2xjY9m8i0RfL7f0Nto62nqoo0/CNG
 KVmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=z6T5b116rmPxozBgPMrCcr5eC7zr/jWOiBDvKXTDKsw=;
 b=sg5FtgVV+LLnQaNLUd0zsrQwSTOEGw8KshG4mnbHJ5Int4/tD+tUEVPlGBVM/fo5xk
 9voHHoSx53sfMhDogB1qdnOSZBdgPEsDgSI9AvNZeNT7xYMhpQHHdAQB1RQDoqo8gdIe
 4sLz7YXtSCqaCPwkgTsC5COYegaxX0SBS0khZoUn+1+LKyN4txagP84YpOWG2KOOmGjt
 h4WR56nqSNP7wSU2C+L8YkrwQrWFm7H8pTejyOnxpLNpE328+a7uYor4tWIipyBTzPxV
 1lGgwXfNJfegup41O460LJWp9g7OD8W3KvJG64ktScSBs/t92LePMoIYItP3sEaueUJA
 +2IQ==
X-Gm-Message-State: APjAAAVPSfVol4EAUpKkaqeU/RGk7mFmIhj9hgoKU8Ct3G39rs8u5K0q
 3w4ODNf8OnmR8rwE9eizlWE=
X-Google-Smtp-Source: APXvYqyn6N0WzOafxLESyHADA6rDL+07E4fhJCC5zhFw/9p2WzMV/MPx1ugmefFvV0cxyPece9jFbg==
X-Received: by 2002:a63:6c46:: with SMTP id h67mr61962998pgc.248.1563787454154; 
 Mon, 22 Jul 2019 02:24:14 -0700 (PDT)
Received: from localhost.localdomain ([122.163.0.39])
 by smtp.gmail.com with ESMTPSA id f19sm52010125pfk.180.2019.07.22.02.24.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 02:24:13 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 8/8] staging: rtl8712: r8712_free_recvframe(): Change return
 type
Date: Mon, 22 Jul 2019 14:53:41 +0530
Message-Id: <20190722092341.21030-8-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190722092341.21030-1-nishkadg.linux@gmail.com>
References: <20190722092341.21030-1-nishkadg.linux@gmail.com>
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

Change return type of r8712_free_recvframe from int to void as it always
returns _SUCCESS and its return value is never used.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 3 +--
 drivers/staging/rtl8712/rtl871x_recv.h | 2 +-
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 892ea71c3718..d9574ea3ffb2 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -120,7 +120,7 @@ void r8712_init_recvbuf(struct _adapter *padapter, struct recv_buf *precvbuf)
 	}
 }
 
-int r8712_free_recvframe(union recv_frame *precvframe,
+void r8712_free_recvframe(union recv_frame *precvframe,
 		   struct  __queue *pfree_recv_queue)
 {
 	unsigned long irqL;
@@ -139,7 +139,6 @@ int r8712_free_recvframe(union recv_frame *precvframe,
 			precvpriv->free_recvframe_cnt++;
 	}
 	spin_unlock_irqrestore(&pfree_recv_queue->lock, irqL);
-	return _SUCCESS;
 }
 
 static void update_recvframe_attrib_from_recvstat(struct rx_pkt_attrib *pattrib,
diff --git a/drivers/staging/rtl8712/rtl871x_recv.h b/drivers/staging/rtl8712/rtl871x_recv.h
index f87b2ff5de1c..0146a774e19d 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.h
+++ b/drivers/staging/rtl8712/rtl871x_recv.h
@@ -128,7 +128,7 @@ struct sta_recv_priv {
 
 /* get a free recv_frame from pfree_recv_queue */
 union recv_frame *r8712_alloc_recvframe(struct  __queue *pfree_recv_queue);
-int r8712_free_recvframe(union recv_frame *precvframe,
+void r8712_free_recvframe(union recv_frame *precvframe,
 			  struct  __queue *pfree_recv_queue);
 void r8712_free_recvframe_queue(struct  __queue *pframequeue,
 				 struct  __queue *pfree_recv_queue);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
