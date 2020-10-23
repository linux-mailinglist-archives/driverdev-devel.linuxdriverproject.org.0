Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B41C2976DF
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Oct 2020 20:24:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 349A2221C6;
	Fri, 23 Oct 2020 18:24:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H-o9HL2sPCTq; Fri, 23 Oct 2020 18:24:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1F68F2152A;
	Fri, 23 Oct 2020 18:24:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 045EA1BF39F
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 18:24:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ED3162152A
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 18:24:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rBRW570fwje5 for <devel@linuxdriverproject.org>;
 Fri, 23 Oct 2020 18:24:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 5BD0C2151E
 for <devel@driverdev.osuosl.org>; Fri, 23 Oct 2020 18:24:14 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id v6so3175724lfa.13
 for <devel@driverdev.osuosl.org>; Fri, 23 Oct 2020 11:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:user-agent:mime-version
 :content-transfer-encoding;
 bh=BKCKwmKkZDMRVwm+LJLI0T0g3sR43/Q0IGPNyvuspeM=;
 b=pExkK/6T81YSs+OenXupZovdpoFbz4r/cuNfHra/6rK0JKKoGlSpXM8xCQ0YwDtPw7
 cOz0mGYw0tsiFVE/8izY72ziIfmuoM8wYBsDGxNj2/At9fbHBYV+apK+ALW+t7UKcsmQ
 LIZwRRTKV8FZqNDOoaxngjiocJmaofxOTzER5OGIa53kEPkHiOuvBpRV5/kr5MF0z/1O
 K6jkofhKKxPO2yBgdkNW5T1nnymVTeAbCgk5B9akVGM/5aX4HZRXnukKKopsXn8hw5Pv
 JrbYyNaFiTy4VDmpCYSGYITvfKzKnIqWs+g+ax3DE0Ok0Z+mCeJ/1zSRnXyoiENe6zSc
 oHWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
 :mime-version:content-transfer-encoding;
 bh=BKCKwmKkZDMRVwm+LJLI0T0g3sR43/Q0IGPNyvuspeM=;
 b=Zw+DLEK37GHDYWlLPzoaqqoZ6fy68CRGNMgHVSf7zagAfwkqjuCHRqipmZDlZsOE16
 WL2HKMcQHBuhQKk5O3E05HW+qubns4x6c+Tc250aWtbWpTdxf8dhHVOCfcQ/7sOcBvMO
 KFxT3wYCNRBouOmnhSLxynnuIxnXCUiAcqutKrNP1WvUa21sE8xT2jSwb6h0E8PzmLN7
 nKZplTNPpKKCydX/4gMw7DaavZRDjSihVK8DZ/lye/PwKty+37uZTouWc7B8QErwMC3s
 ZeLFvqFmT6hXoebuBh+pSQmZQcWhTzAaEO00HNIQxUYWmw3jZqHsUAqPoGXjTNMngDbm
 m5YA==
X-Gm-Message-State: AOAM530IXDCMQYKVOyP1XrTaoeqdmClnYhxySoOYTwZkuF2NF0qsSGVV
 8xy+Nxa6bM8T1i+mdP934G8=
X-Google-Smtp-Source: ABdhPJzdOqqUlp7ExSm22l3ZOQMoNRjMjPab2G+ygrSKsgcmv4fgW829n7oQSDuMdI1XMipUAyVDkA==
X-Received: by 2002:ac2:4903:: with SMTP id n3mr1120962lfi.490.1603477452460; 
 Fri, 23 Oct 2020 11:24:12 -0700 (PDT)
Received: from [192.168.167.128] (37-145-186-126.broadband.corbina.ru.
 [37.145.186.126])
 by smtp.gmail.com with ESMTPSA id x69sm206809lff.54.2020.10.23.11.24.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 11:24:11 -0700 (PDT)
Message-ID: <afff1ded817cb27631f87146ae198e2915ad61fe.camel@gmail.com>
Subject: [PATCH v2] staging : rtl8712: correct the code style for comparison
 to NULL
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Date: Fri, 23 Oct 2020 11:23:57 -0700
User-Agent: Evolution 3.36.4-0ubuntu1 
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The coding style (!bar) is more common than (bar == NULL). Reported by checkpatch.pl.

Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
---
Changes in v2:
	- correct the subject line
	- correct the commit message

 drivers/staging/rtl8712/rtl871x_recv.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_recv.h b/drivers/staging/rtl8712/rtl871x_recv.h
index e83c256e1474..ea1aad4a5561 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.h
+++ b/drivers/staging/rtl8712/rtl871x_recv.h
@@ -136,7 +136,7 @@ int recv_func(struct _adapter *padapter, void *pcontext);
 static inline u8 *get_rxmem(union recv_frame *precvframe)
 {
 	/* always return rx_head... */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	return precvframe->u.hdr.rx_head;
 }
@@ -144,7 +144,7 @@ static inline u8 *get_rxmem(union recv_frame *precvframe)
 static inline u8 *get_recvframe_data(union recv_frame *precvframe)
 {
 	/* always return rx_data */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	return precvframe->u.hdr.rx_data;
 }
@@ -154,7 +154,7 @@ static inline u8 *recvframe_pull(union recv_frame *precvframe, sint sz)
 	/* used for extract sz bytes from rx_data, update rx_data and return
 	 * the updated rx_data to the caller
 	 */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	precvframe->u.hdr.rx_data += sz;
 	if (precvframe->u.hdr.rx_data > precvframe->u.hdr.rx_tail) {
@@ -171,7 +171,7 @@ static inline u8 *recvframe_put(union recv_frame *precvframe, sint sz)
 	 * return the updated rx_tail to the caller
 	 * after putting, rx_tail must be still larger than rx_end.
 	 */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	precvframe->u.hdr.rx_tail += sz;
 	if (precvframe->u.hdr.rx_tail > precvframe->u.hdr.rx_end) {
@@ -189,7 +189,7 @@ static inline u8 *recvframe_pull_tail(union recv_frame *precvframe, sint sz)
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
