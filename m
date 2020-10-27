Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB48629CCA8
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Oct 2020 00:22:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1898A86B05;
	Tue, 27 Oct 2020 23:22:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j3n2mqWvAfWU; Tue, 27 Oct 2020 23:22:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 55F6886AE8;
	Tue, 27 Oct 2020 23:22:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F39F41BF681
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 23:22:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EC4E22E06F
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 23:22:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2Z7pECt5xKOp for <devel@linuxdriverproject.org>;
 Tue, 27 Oct 2020 23:22:43 +0000 (UTC)
X-Greylist: delayed 00:18:37 by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 32370207A8
 for <devel@driverdev.osuosl.org>; Tue, 27 Oct 2020 23:22:43 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id r186so1679978pgr.0
 for <devel@driverdev.osuosl.org>; Tue, 27 Oct 2020 16:22:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=slova-app.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1YV8MROSpGb4uIRuIbp2e8qdjDCIrO9UR20Wl1bahBU=;
 b=QolRcpXH0fnDC5FcWYDhXcoSAqlXNClCyvHajGdE+Zcva+3d09AfNhNyeVPSjagyJN
 P+yvJRWgszg9cEj+2K4Vffo5cYoGN/LFH5wyt6Wh16A8Yf3x9aIvVYmf13aettV5IudC
 sYZb1ZVPYIRwrTW9oNAbPXFBkwmg6GBpRRhDN8mAk4Wsrrd63Qtipt7Mk/U0smIPZ8VN
 0pC4gXDlbHamL4WGQ+ucaL+cWzh4czGwJY+duVX37wbGSibIUN389ujf0s8qcruXOXgS
 tfbUmg8Z251P4lw7E2bGbdTUOnQrC9M481oellv805RQjUm0bwNQGkFO9ZpZfBQ7e1k9
 3gRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1YV8MROSpGb4uIRuIbp2e8qdjDCIrO9UR20Wl1bahBU=;
 b=fNG69/OfCf0dj4So+K2dFOBISx8YLsDCxRH5lIj6tQlgcqnSeimbnp0kvpuF+Qacm4
 RlTjEdl7r3JQLy2NU9RXuNNmuIg2VOJ+oTWsu9fYFgv4qAk6zZT2i5SQeJhZ9wTXg8aJ
 VRA9RtkMl7ZD5PPKOWhpPMUTJCYmtF555WGDLemMgE8y2caiJ0mvu5G/C3Pi7i9rlm1p
 TsHDDPvBx8+XoA7XLw8KopCDE0wYcEb872w1b0WEGgYOqCkn17ffsMG8Cg1cYzEPASD+
 jaDo/5bxzlqhPK5EaKtNE7vsEqSArIXYs9wk/jW+H2WEO4pjAM1xicf8jnQOQ1BCZiI7
 B7nw==
X-Gm-Message-State: AOAM530COxyTktX8dHCteD8nESeRl4yT1teJoiJBINB5O9gOCyGqzpgh
 IZp7QdyMUlpbxn4pKe29nU5t0ugZQsWQVD3U
X-Google-Smtp-Source: ABdhPJxYlWRfefeNz2jreSZnVCq/gdTvQsGibrYuF8eGDHYJAT7NpJQsGLNfr6sBJrlaYflLThz5PA==
X-Received: by 2002:a6b:5915:: with SMTP id n21mr3944115iob.136.1603839442708; 
 Tue, 27 Oct 2020 15:57:22 -0700 (PDT)
Received: from colonel.domain (70-57-31-233.hlrn.qwest.net. [70.57.31.233])
 by smtp.gmail.com with ESMTPSA id e21sm1478445ioe.28.2020.10.27.15.57.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Oct 2020 15:57:22 -0700 (PDT)
From: Andrew Bridges <andrew@slova.app>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Android: binder: added a missing blank line after declaration
Date: Tue, 27 Oct 2020 22:56:55 +0000
Message-Id: <20201027225655.650922-1-andrew@slova.app>
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
Cc: devel@driverdev.osuosl.org, arve@android.com,
 Andrew Bridges <andrew@slova.app>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed a coding style issue.

Signed-off-by: Andrew Bridges <andrew@slova.app>
---
 drivers/android/binder.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index b5117576792b..3241d233a12d 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -3614,6 +3614,7 @@ static int binder_thread_write(struct binder_proc *proc,
 			ret = -1;
 			if (increment && !target) {
 				struct binder_node *ctx_mgr_node;
+
 				mutex_lock(&context->context_mgr_node_lock);
 				ctx_mgr_node = context->binder_context_mgr_node;
 				if (ctx_mgr_node) {
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
