Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B85322605
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Feb 2021 07:44:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AEC0C60602;
	Tue, 23 Feb 2021 06:43:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FbEvqNelALxZ; Tue, 23 Feb 2021 06:43:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5BE06605C3;
	Tue, 23 Feb 2021 06:43:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 06ED41BF85D
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 06:43:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 035FB87146
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 06:43:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xmNHrSrZq7FF for <devel@linuxdriverproject.org>;
 Tue, 23 Feb 2021 06:43:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E324C87144
 for <devel@driverdev.osuosl.org>; Tue, 23 Feb 2021 06:43:43 +0000 (UTC)
Received: by mail-lf1-f50.google.com with SMTP id d24so9564607lfs.8
 for <devel@driverdev.osuosl.org>; Mon, 22 Feb 2021 22:43:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+TzOCAdEwWA3QxxBM+Z2WR+5WQ3jj+pgReYpklWmgk8=;
 b=Y0S3XTcLq+EFh5ihi+XrK4RzccttbfIVXNtXH/2cxLWWxX6JpdP62cyzgo4NDBI1E+
 58mqgj/22I7yzUH3M4/Z4lymlgR22mPNuDBvMtkD+EIqIyGRMJeDRt0nQyf4fS9BEnPJ
 CySFJ9c1XQIj+7PO/kMs6e8ul6aUk7VehpObnTmrJ0dIEr6hSr18Z6+Ytlizsk81cFiX
 cB7ICQmvNZBVzSz5h6zqGr285kRnxdfkH6KaIuogx2jDKV13xqK2/viZlE830pyQAi5e
 IdlUd87XKYE9j7U0aiJF9qMkTk4IqnuM2ToiyQXucAKrSMfWuCZax4gsml9qgX6JykpS
 m0nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+TzOCAdEwWA3QxxBM+Z2WR+5WQ3jj+pgReYpklWmgk8=;
 b=ZgE9T70HENkjj4zDRgVUZrIrUW2K4Os9ylQAPuiEu8jwByfBAUMTTYRUaE3AM8YGog
 BNLLiPv+ILCSSUKCa+juEEHbDv2OJIgy3v3TEg5mQM2s51RV073H6ISRR4Qc+a0mrURB
 JE+l8zkMJHXcT+eVggx+0XmAUmpKZCh7gRau7gH3u/MCVjSNI8aJUvsmN0E+gmjdGPu5
 ZgEeBAckJr/DtziFpjkHJBGibzVc9GwA5yVLmFaWF9JDUp24q1mLqHB2tUdy3QIwki8m
 t9Wsy1wxOB4sVg1G5KfSjtOVKhzQWWTyLrfuFyc2FGiF/hX0GdeCkJTTLiVxsMtMNjHd
 pHNg==
X-Gm-Message-State: AOAM532Wy/NdWgpGvWMJa8Y/ccEDS1+jR1bNiBiLFAQr6T4Z5qB1ffPN
 OqgmrFsOwQWUakmzRhbhm4M=
X-Google-Smtp-Source: ABdhPJxRL1hRSxTPI+v0Fvh2bhJ9gzXMjm4xZjdZj02NMNox916xjKwB5LSZz0dgxfIjYZK5/PSaMg==
X-Received: by 2002:ac2:4561:: with SMTP id k1mr701601lfm.544.1614062621805;
 Mon, 22 Feb 2021 22:43:41 -0800 (PST)
Received: from localhost.localdomain (cable-hki-50dc98-67.dhcp.inet.fi.
 [80.220.152.67])
 by smtp.gmail.com with ESMTPSA id c9sm1574876lfc.208.2021.02.22.22.43.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Feb 2021 22:43:41 -0800 (PST)
From: Hassan Shahbazi <h.shahbazi.git@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] drivers: staging: wimax: fix code style issues
Date: Tue, 23 Feb 2021 08:42:29 +0200
Message-Id: <20210223064227.62631-1-h.shahbazi.git@gmail.com>
X-Mailer: git-send-email 2.26.2
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
Cc: devel@driverdev.osuosl.org, Hassan Shahbazi <h.shahbazi.git@gmail.com>,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
 skhan@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes 'WARNING: Missing a blank line after declarations' generated by
checkpatch.pl script.

Signed-off-by: Hassan Shahbazi <h.shahbazi.git@gmail.com>
---
 drivers/staging/wimax/stack.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/wimax/stack.c b/drivers/staging/wimax/stack.c
index ace24a6dfd2d..0d0f6ab79bf5 100644
--- a/drivers/staging/wimax/stack.c
+++ b/drivers/staging/wimax/stack.c
@@ -156,6 +156,7 @@ int wimax_gnl_re_state_change_send(
 {
 	int result = 0;
 	struct device *dev = wimax_dev_to_dev(wimax_dev);
+
 	d_fnstart(3, dev, "(wimax_dev %p report_skb %p)\n",
 		  wimax_dev, report_skb);
 	if (report_skb == NULL) {
@@ -362,6 +363,7 @@ EXPORT_SYMBOL_GPL(wimax_state_change);
 enum wimax_st wimax_state_get(struct wimax_dev *wimax_dev)
 {
 	enum wimax_st state;
+
 	mutex_lock(&wimax_dev->mutex);
 	state = wimax_dev->state;
 	mutex_unlock(&wimax_dev->mutex);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
