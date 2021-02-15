Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4092631C464
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 00:34:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2022F87031;
	Mon, 15 Feb 2021 23:34:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d2XpFmW74Sfp; Mon, 15 Feb 2021 23:34:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 96C5F8702F;
	Mon, 15 Feb 2021 23:34:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F1BF21BF362
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 23:34:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EEB158702A
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 23:34:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ioa9w6--oHWM for <devel@linuxdriverproject.org>;
 Mon, 15 Feb 2021 23:34:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
 [209.85.128.48])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6D66886B2C
 for <devel@driverdev.osuosl.org>; Mon, 15 Feb 2021 23:34:45 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id o15so7495974wmq.5
 for <devel@driverdev.osuosl.org>; Mon, 15 Feb 2021 15:34:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=philpotter-co-uk.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vI8JdaSS9zdDAWHOcspY9UNl4U9Js3cPyIJf1LWX3B8=;
 b=Us7HfrIoFHiDnL3ZEqru1GgLfPjfSBLpa4GVf1f3KViGAug0FIpahUGbsreEZyC8Jn
 v8t71R6n3nkzSk3LHlaDyhyFP/XAEhOqYusE74SzC2iv35V1uet9R+EhAKdKHbNcYwHK
 A6wTn4hiYImgF6Lz5AcOg0l54TxwK0zqguklk9AKMOD5hY7MLss+5CPZUuJ/Ssn6BR1a
 115fNDKR6jYiFjbA9IhOIPPYzF95YBP0vKD+nEpYCZNstii7IU9Nm5k0c4niWJRS5/Ve
 hkM9BOL0CbqI2q69Ik39VaqGYczxh0n4jBQ2ltZWGgETWKxEkr9KXCuj3ZHceJChkqvn
 y7Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vI8JdaSS9zdDAWHOcspY9UNl4U9Js3cPyIJf1LWX3B8=;
 b=Em/87lvFU6BB66+ihuFXS4aTOu4xRRTXZ23X2BKIooKJ7bbgO/t/fh8CxC2wekqxq7
 uhMhCGsn+03LJPqtoK5STl9HRX6QyiXyPapH3l/nnn3ME+XZddqyBKbWbKgorn54P0X5
 Su0j7CF+Llo5G8wX2SLXTLi4Kiu3L95y1EW1HhScOkUUXH+jZqy0DOQej+a9W9jCiIdt
 EzkeTNtarnJvXk8qs7NkXQIX/0f4h9B8xSHyH69dDfjgAGzb2BJMFdNnJ9nBHmC6oi/X
 HwCi4EYFDhbixv++jkw0O0HT676AsD+J6HY4GP1XGgUfH2oRiyyjQmU9+PSMMhut6UCn
 nHXQ==
X-Gm-Message-State: AOAM530xcPBOcqOWfqkgpcmVHnOJzTzIm6HF6pNc5vAa5qD8TLI+c62n
 2ROxC4AT43WSluvyuB5BSu5P/Q==
X-Google-Smtp-Source: ABdhPJyFcwiE8p+3EjGfOvsoLk878M0ieL1Ui8l2qy7QH41JsAQpkCNjeKN5JPdLUIClBGPd8BMWyg==
X-Received: by 2002:a05:600c:2056:: with SMTP id
 p22mr959984wmg.12.1613432083782; 
 Mon, 15 Feb 2021 15:34:43 -0800 (PST)
Received: from localhost.localdomain
 (2.0.5.1.1.6.3.8.5.c.c.3.f.b.d.3.0.0.0.0.6.1.f.d.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:df16:0:3dbf:3cc5:8361:1502])
 by smtp.gmail.com with ESMTPSA id y16sm21691445wrw.46.2021.02.15.15.34.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Feb 2021 15:34:43 -0800 (PST)
From: Phillip Potter <phil@philpotter.co.uk>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/6] staging: rtl8723bs: remove DBG_COUNTER calls from
 os_dep/recv_linux.c
Date: Mon, 15 Feb 2021 23:34:35 +0000
Message-Id: <20210215233440.80617-2-phil@philpotter.co.uk>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210215233440.80617-1-phil@philpotter.co.uk>
References: <20210215233440.80617-1-phil@philpotter.co.uk>
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
Cc: devel@driverdev.osuosl.org, vkor@vkten.in, insafonov@gmail.com,
 foxhlchen@gmail.com, linux-kernel@vger.kernel.org, yujian.wu1@gmail.com,
 matthew.v.deangelis@gmail.com, amarjargal16@gmail.com, pterjan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove all DBG_COUNTER macro calls from os_dep/recv_linux.c, as the
corresponding variables are only ever written to and not used. This
makes the code cleaner, and is necessary prior to removing the
DBG_COUNTER definition itself.

Signed-off-by: Phillip Potter <phil@philpotter.co.uk>
---
 drivers/staging/rtl8723bs/os_dep/recv_linux.c | 15 ++-------------
 1 file changed, 2 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index ac35277fbacd..f52802f24466 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -124,18 +124,14 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
 
 					_rtw_xmit_entry(pkt, pnetdev);
 
-					if (bmcast && pskb2) {
+					if (bmcast && pskb2)
 						pkt = pskb2;
-						DBG_COUNTER(padapter->rx_logs.os_indicate_ap_mcast);
-					} else {
-						DBG_COUNTER(padapter->rx_logs.os_indicate_ap_forward);
+					else
 						return;
-					}
 				}
 			} else {
 				/*  to APself */
 				/* DBG_871X("to APSelf\n"); */
-				DBG_COUNTER(padapter->rx_logs.os_indicate_ap_self);
 			}
 		}
 
@@ -153,10 +149,6 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
 #endif /* CONFIG_TCP_CSUM_OFFLOAD_RX */
 
 		ret = rtw_netif_rx(padapter->pnetdev, pkt);
-		if (ret == NET_RX_SUCCESS)
-			DBG_COUNTER(padapter->rx_logs.os_netif_ok);
-		else
-			DBG_COUNTER(padapter->rx_logs.os_netif_err);
 	}
 }
 
@@ -246,8 +238,6 @@ int rtw_recv_indicatepkt(struct adapter *padapter, union recv_frame *precv_frame
 	_pkt *skb;
 	struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
 
-	DBG_COUNTER(padapter->rx_logs.os_indicate);
-
 	precvpriv = &(padapter->recvpriv);
 	pfree_recv_queue = &(precvpriv->free_recv_queue);
 
@@ -293,7 +283,6 @@ int rtw_recv_indicatepkt(struct adapter *padapter, union recv_frame *precv_frame
 	/* enqueue back to free_recv_queue */
 	rtw_free_recvframe(precv_frame, pfree_recv_queue);
 
-	DBG_COUNTER(padapter->rx_logs.os_indicate_err);
 	return _FAIL;
 }
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
