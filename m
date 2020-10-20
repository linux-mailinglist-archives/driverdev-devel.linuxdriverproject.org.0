Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F30F8294226
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Oct 2020 20:32:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 78E92873A5;
	Tue, 20 Oct 2020 18:32:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vo3fSEYuMWgl; Tue, 20 Oct 2020 18:32:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3CDAE8738C;
	Tue, 20 Oct 2020 18:32:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 255131BF33A
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 18:32:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1D3C92E208
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 18:32:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cvR7L8E2Zx+t for <devel@linuxdriverproject.org>;
 Tue, 20 Oct 2020 18:32:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 0B53620434
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 18:32:10 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id c141so3338928lfg.5
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 11:32:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GfsUCd6Pp7LNqqCBQSp+uFAVmJ/CL5Y6n+X6yPdn1Kg=;
 b=X3X6QPb8YCK46GhOR61hCl0e2SprDaYr+PReCa0gnc8kERhx3VGM9zUNvVh15pPvzc
 fqlmtDXwSGvcy+nGdwcJBJW0Hb1YQ3bRkncHAVweodhv6xgAhkSNDMW7J5E+gk+BzNcY
 UmqOCLwLv7oIjRBp8BfXcPQaHWkji63VNzRjhjja6wFgfRhmuio3MomnQG6/27CNg5vx
 zy7EgAPCI22QKXqNfiLNgaDzSaVCSvcSxdgvKj/L8jnB/tslKARSWstbuWLxsLQfwPT7
 wuohT/U7MBuB7i7CZReqiWF7YZRk9WKQjouzEUmzwFimmLd37ZPxTuGhtMZ9m5HWDn1J
 ANGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GfsUCd6Pp7LNqqCBQSp+uFAVmJ/CL5Y6n+X6yPdn1Kg=;
 b=Gn+sIulFHqWUCMfUC8iXZwQgoLFM1ET/lZjTia60izEE86xoK9efUOMspr4FnM8lzD
 bSgxGcCIUXXNDwC1lkeo8WeINthc9743v96zQByzXakkBo354PKEMninHIme7fD4Ss+f
 eK0lRg993Z/kP5j5IdyKoHj4jM6WJfLFxTWhSgc3xCOyEb49H19r4iC7Sg3Glr9iGNb+
 rP0/BL1OdO4LHXc/Fy0FM5GTGKn1qM7A1LJzLb+qFshCFiScunAlUhDeXjwAORouWsjo
 U2A8tNPUTCTQ9X4BvBXiHqRorm7i0ptUPe3pYkGYZGvT1eD+OMHXuIgYFVKywzwy+uWN
 j5vQ==
X-Gm-Message-State: AOAM5330zJrZmxW87uJwM4zIFZMh0cWCJZ+S5kLWAF+HBYBlh/IVZAnU
 MgLiQihcY6q1ehQvlS6So/U=
X-Google-Smtp-Source: ABdhPJzvswpIFcluO5ZdHRen779e02ZF7WyTZ3PsJLXf2zkECEV1bInUTg7eHJuZWxj0uJc2/Gz2GA==
X-Received: by 2002:a19:e014:: with SMTP id x20mr1369788lfg.444.1603218729222; 
 Tue, 20 Oct 2020 11:32:09 -0700 (PDT)
Received: from localhost.localdomain (37-145-186-126.broadband.corbina.ru.
 [37.145.186.126])
 by smtp.gmail.com with ESMTPSA id a24sm424497lfg.282.2020.10.20.11.32.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Oct 2020 11:32:08 -0700 (PDT)
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/3] staging/rtl8712: fix code style for comparison to NULL
Date: Tue, 20 Oct 2020 11:24:38 -0700
Message-Id: <20201020182439.43314-2-eafanasova@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201020182439.43314-1-eafanasova@gmail.com>
References: <20201020182439.43314-1-eafanasova@gmail.com>
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
 drivers/staging/rtl8712/rtl871x_recv.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_recv.h b/drivers/staging/rtl8712/rtl871x_recv.h
index 57a965b9839b..d03859ca1697 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.h
+++ b/drivers/staging/rtl8712/rtl871x_recv.h
@@ -134,7 +134,7 @@ int recv_func(struct _adapter *padapter, void *pcontext);
 static inline u8 *get_rxmem(union recv_frame *precvframe)
 {
 	/* always return rx_head... */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	return precvframe->u.hdr.rx_head;
 }
@@ -142,7 +142,7 @@ static inline u8 *get_rxmem(union recv_frame *precvframe)
 static inline u8 *get_recvframe_data(union recv_frame *precvframe)
 {
 	/* always return rx_data */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	return precvframe->u.hdr.rx_data;
 }
@@ -152,7 +152,7 @@ static inline u8 *recvframe_pull(union recv_frame *precvframe, sint sz)
 	/* used for extract sz bytes from rx_data, update rx_data and return
 	 * the updated rx_data to the caller
 	 */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	precvframe->u.hdr.rx_data += sz;
 	if (precvframe->u.hdr.rx_data > precvframe->u.hdr.rx_tail) {
@@ -169,7 +169,7 @@ static inline u8 *recvframe_put(union recv_frame *precvframe, sint sz)
 	 * return the updated rx_tail to the caller
 	 * after putting, rx_tail must be still larger than rx_end.
 	 */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	precvframe->u.hdr.rx_tail += sz;
 	if (precvframe->u.hdr.rx_tail > precvframe->u.hdr.rx_end) {
@@ -187,7 +187,7 @@ static inline u8 *recvframe_pull_tail(union recv_frame *precvframe, sint sz)
 	 * updated rx_end to the caller
 	 * after pulling, rx_end must be still larger than rx_data.
 	 */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	precvframe->u.hdr.rx_tail -= sz;
 	if (precvframe->u.hdr.rx_tail < precvframe->u.hdr.rx_data) {
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
