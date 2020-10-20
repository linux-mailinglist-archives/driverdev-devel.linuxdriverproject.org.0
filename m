Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB265294227
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Oct 2020 20:32:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6B97B2E1BB;
	Tue, 20 Oct 2020 18:32:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nf0050zNQAQa; Tue, 20 Oct 2020 18:32:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9C1AA2E225;
	Tue, 20 Oct 2020 18:32:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 382DC1BF33A
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 18:32:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3549686BE1
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 18:32:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cxioAZLoG_fY for <devel@linuxdriverproject.org>;
 Tue, 20 Oct 2020 18:32:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7BA3686BBC
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 18:32:25 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id c141so3339874lfg.5
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 11:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=C5c6TOLuHgN1li2zzxjR/O0B1g1KLxk/XN5c05Bsizg=;
 b=dv5L5JFBuDA4kGWaoU3C+crvHENhZcOVETdV6+LxeM+jDiOuDK6aZTi8oySqA2F9fT
 xiguwkca1+1owt+mPEe2WfLaipq9/g1oUA7VK7QwkezR3Fef/qN6clQxEma87W07QY9A
 nSWqV6ecgmHoJ6X6G1RbAOkmyZyrRoG7raxs2HhFwcK8vHRH9E8v1K4F3jtdXDQeOKvb
 alh6cAhtGwnDcbN/B7godiAF0nYkiN1uv+ylYWcr0hE1gbQ+I8X+HZkw+SKXAuzVhPnX
 eQChpOnuIOePbRcU8LXjQXpO7tPYkLIhM4h6whSsNOCDth/yujW2lALLGPklTTLjv8VN
 HVGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=C5c6TOLuHgN1li2zzxjR/O0B1g1KLxk/XN5c05Bsizg=;
 b=J+1wv5oOj2YGAZRWUrxYyfNZ+qCrIZXbO2C03WK6uBGgltATbXUmdOdVYNXJfJW7YF
 CglxSUhI5yzUTSrjPJpx6Q1e9ekNqzmf+nrZz4cqsxSMk9OQ6lEvTrshlrzo1Xnv9Tpp
 cp+iKEC6hId0z8f8k6i2dqs48+eLuScPQ46fX4ndvn81uebjo5VVJKzGpeVbsuW8CBLr
 X+I0HHzLnWVzZ8MeiUeyRIsQjq5Wq1zC5Ame+PxsZtMQkltAGV+ZzbUG7ia4ko48RTLx
 wFEP7Bq05nVQqmlcM1c1C6+YBKrtctAeQzcmb972f4JwhBKL676b1c0InCfwmV3o5Ks0
 LAKA==
X-Gm-Message-State: AOAM531Wt8LXOEz/itL7HxUoVqXh6k70M0G8DEW5YyNkCFNiWiZAItYp
 ioj6quVKBEdG9SelBvk3kjo=
X-Google-Smtp-Source: ABdhPJyW01epwMVBg1+ePl5ku6Bo+S6wIoNVZ7J9ra3STDLSMDfb2M5B6MHYx4SZ+LqXXV9GoWcIkA==
X-Received: by 2002:a05:6512:3143:: with SMTP id
 s3mr1585558lfi.2.1603218743749; 
 Tue, 20 Oct 2020 11:32:23 -0700 (PDT)
Received: from localhost.localdomain (37-145-186-126.broadband.corbina.ru.
 [37.145.186.126])
 by smtp.gmail.com with ESMTPSA id a24sm424497lfg.282.2020.10.20.11.32.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Oct 2020 11:32:23 -0700 (PDT)
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/3] staging/rtl8712: use BIT macro
Date: Tue, 20 Oct 2020 11:24:39 -0700
Message-Id: <20201020182439.43314-3-eafanasova@gmail.com>
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
 drivers/staging/rtl8712/rtl871x_recv.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl871x_recv.h b/drivers/staging/rtl8712/rtl871x_recv.h
index d03859ca1697..2ed2d3edb312 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.h
+++ b/drivers/staging/rtl8712/rtl871x_recv.h
@@ -8,7 +8,7 @@
 #define NR_RECVFRAME 256
 
 #define RXFRAME_ALIGN	8
-#define RXFRAME_ALIGN_SZ	(1 << RXFRAME_ALIGN)
+#define RXFRAME_ALIGN_SZ	BIT(RXFRAME_ALIGN)
 
 #define MAX_SUBFRAME_COUNT	64
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
