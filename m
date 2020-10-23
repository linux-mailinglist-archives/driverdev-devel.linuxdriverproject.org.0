Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A53F296D12
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Oct 2020 12:53:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 28F2887847;
	Fri, 23 Oct 2020 10:53:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4XTN0f8mYcg5; Fri, 23 Oct 2020 10:53:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7F04B87808;
	Fri, 23 Oct 2020 10:53:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 574581BF3FC
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 10:53:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 53BA086FAE
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 10:53:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TxBNTNZM_hlk for <devel@linuxdriverproject.org>;
 Fri, 23 Oct 2020 10:53:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 85F15868DE
 for <devel@driverdev.osuosl.org>; Fri, 23 Oct 2020 10:53:18 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id 184so1542514lfd.6
 for <devel@driverdev.osuosl.org>; Fri, 23 Oct 2020 03:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DoY/1QDp8DLaQ+uV4dqJsjkJ0+4DB+nziz9sbkQeYL0=;
 b=GREEoH7WDTtOzxU+zPJKEppE3GayWYCrQsI+y8TUv9wqfTuauMpkBqQx7tqJGnYvcv
 HZePo9/ZKUtjnrwjR8HLIjc3dQR5Wfi9spx8s/zh6ICi+zffy80f7kBxc19qsTre+4iM
 6DEbuyDlHqr2fhBnBbg4pbiZmsH4wp/uotTtaRNU0SxOh4HalYpxwQW5AN4ZdRSxUbXC
 FD5RHuyvnHUYIfLjsiqNcUCbXqZ1AccXG+DPaXoG3hSxpB7LaK/XSqpTdM1kWZVl/YE5
 oseCZhANTj1t/DGvcBrwwnDcw/N5LmogYcUwCZ7FHL8eoa5k6BjCELyfyhWkLHRxy0BT
 s7JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DoY/1QDp8DLaQ+uV4dqJsjkJ0+4DB+nziz9sbkQeYL0=;
 b=mXpOmPaZp0AD2ScWBXkl48EhiLpnP7uqYztq/LF6HN/DrSsa9u7amL/eeveKJE2TT+
 KDBZvj9788fhHAJfmKiwzsT+z4nIDWJsFDKkn6dPiR5vPYepoIPjzqJ/uC1EarAab41r
 p97jtrY4A5XjP9aa3DFebgZqdk1I91nub8hns4nt3a08BUOH0W95gJ/FCrFjJVJ33N0F
 CoR0kn92AO670/k1gheo0Fg5ZGy7DT9M9J8zm5hlWP8t+Pyh/YUm79p/E87/FnwpWNYf
 Bs+QTFvat9QgyzFNfQ7BAxSiFDAmyc1dn0eeRwHTd5kuPQ7Sce6XbpSeRyPTiBAKF3t/
 sfDg==
X-Gm-Message-State: AOAM530iibxaRSTZ2tUKXKes3aOn5/NxdLqf+SKsKDlpzOazHG0vP5qE
 u6ZiXL4YtQRslpSQlfoU6I4=
X-Google-Smtp-Source: ABdhPJxql1NWeKnWxE2NYRqdjkGvz16OvywVPaIqQB2oKrvA2OV4QGZrvUEwMPX4kUhfe39Gm0ivGQ==
X-Received: by 2002:a19:2302:: with SMTP id j2mr511650lfj.78.1603450396732;
 Fri, 23 Oct 2020 03:53:16 -0700 (PDT)
Received: from localhost.localdomain (37-145-186-126.broadband.corbina.ru.
 [37.145.186.126])
 by smtp.gmail.com with ESMTPSA id f22sm102575lfm.172.2020.10.23.03.53.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 03:53:16 -0700 (PDT)
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging/rtl8712: replace (precvframe == NULL) with
 (!precvframe)
Date: Fri, 23 Oct 2020 03:51:09 -0700
Message-Id: <20201023105109.5905-1-eafanasova@gmail.com>
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

Correct the code style for comparison to NULL. Reported by checkpatch.pl.

Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
---
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
