Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 16600294223
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Oct 2020 20:31:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C1A4486BF2;
	Tue, 20 Oct 2020 18:31:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h6mbqxdJMBm2; Tue, 20 Oct 2020 18:31:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5616E86BBC;
	Tue, 20 Oct 2020 18:31:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B2ABE1BF33A
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 18:31:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AEF0986BB2
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 18:31:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id njn3Poic3udE for <devel@linuxdriverproject.org>;
 Tue, 20 Oct 2020 18:31:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9C1E986BA0
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 18:31:46 +0000 (UTC)
Received: by mail-lf1-f48.google.com with SMTP id c141so3337459lfg.5
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 11:31:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8uZmMWoxJ+ESOx4QO8U31N91sDEtXFM9L3dNKelT0yI=;
 b=KtIM9Wy1lTzehPSYtqklxSeSWtKgEabSZyuf5GRRcqzedm1qDTWSPXM7lExb0kxZCo
 WN5oV+SUT9dxiDmntyU6W/sCaMuvOOvBCdKvn925Hc8+HTv3Ruz5by0B6BHC2o28uZr7
 DmMjTBujTcvuS4T+2Hk3MakN0lrKJR6WeXSyjn/qbrdl0ZnjNh9gFFiCFNgZmMhZX1ZX
 wmBFx+zjLh22r7D9xfUBEXIkW6m21O55cuexoEliqNa1Tk94UBYCSZ9HAdd1qZhPWvbA
 jpml1PwYWvc4ooFjZN5/XbxeyiR3FedTAZ/+rbN2YFrtNeN8sZ8yLzOOCqiOWywosXWY
 2FOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8uZmMWoxJ+ESOx4QO8U31N91sDEtXFM9L3dNKelT0yI=;
 b=bQ1EKtSHtlSBBBT50ftp30EYwxhVgVfzCKYZ4wLoysOv9wYXgXpfucAYLo5jJ5Q9JP
 0kKSoeqfgEeiWLDeAg41OZnHHJBmatpB3EHkQMSLxO5jqRN6FXpUpQAzNXiv4meknmeX
 T3ohLgOnqiTUrpEtFqbIqkvLFYmNGfThmgwMwoMlCUkIMnzsVy+nJ9IVlPrQIQC7kr79
 9CF//0zt2xJ2vkyMciMwGPzX68AEDwPLd6070tbD36/DGgcRafMayFwHgPmKg9hOc72s
 7YDYaJHJET7zQiH7Ul+eSiaDi0AvHK6be0ROSZvTVcc7JGukjfdprN+Xx0MkCuk959tP
 RAMw==
X-Gm-Message-State: AOAM533tSY23q3lLyqcg4kj7+xVJva0cPHwKDuOmLbwtxGmw4ACOHvAj
 ItbDq/lvDfOgdbd0/oK9UEc=
X-Google-Smtp-Source: ABdhPJzgY+GUaFxjQkSsuGRNGzhGtIsNC9exRdmPY90eUsTKFTQznBDZoo/4/4Ut7/V5ypUzFue8PQ==
X-Received: by 2002:ac2:505a:: with SMTP id a26mr1384781lfm.300.1603218704681; 
 Tue, 20 Oct 2020 11:31:44 -0700 (PDT)
Received: from localhost.localdomain (37-145-186-126.broadband.corbina.ru.
 [37.145.186.126])
 by smtp.gmail.com with ESMTPSA id a24sm424497lfg.282.2020.10.20.11.31.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Oct 2020 11:31:44 -0700 (PDT)
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/3] staging/rtl8712: remove extra blank lines;
 fix code alignment
Date: Tue, 20 Oct 2020 11:24:37 -0700
Message-Id: <20201020182439.43314-1-eafanasova@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Elena Afanasova <eafanasova@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Reported by checkpatch.pl

Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_recv.h | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_recv.h b/drivers/staging/rtl8712/rtl871x_recv.h
index e83c256e1474..57a965b9839b 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.h
+++ b/drivers/staging/rtl8712/rtl871x_recv.h
@@ -29,7 +29,6 @@ struct	stainfo_rxcache	{
 #define		PHY_RSSI_SLID_WIN_MAX			100
 #define		PHY_LINKQUALITY_SLID_WIN_MAX		20
 
-
 struct smooth_rssi_data {
 	u32	elements[100];	/* array to store values */
 	u32	index;		/* index to current array to store */
@@ -38,7 +37,6 @@ struct smooth_rssi_data {
 };
 
 struct rx_pkt_attrib {
-
 	u8	amsdu;
 	u8	order;
 	u8	qos;
@@ -129,7 +127,7 @@ union recv_frame *r8712_alloc_recvframe(struct  __queue *pfree_recv_queue);
 void r8712_free_recvframe(union recv_frame *precvframe,
 			  struct  __queue *pfree_recv_queue);
 void r8712_free_recvframe_queue(struct  __queue *pframequeue,
-				 struct  __queue *pfree_recv_queue);
+				struct  __queue *pfree_recv_queue);
 int r8712_wlanhdr_to_ethhdr(union recv_frame *precvframe);
 int recv_func(struct _adapter *padapter, void *pcontext);
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
