Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BF030E217
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Feb 2021 19:12:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6637223600;
	Wed,  3 Feb 2021 18:12:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V4jyWEV9GZzb; Wed,  3 Feb 2021 18:12:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D22942046C;
	Wed,  3 Feb 2021 18:12:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 30CCF1BF2F9
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 18:12:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2D7FE84E5E
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 18:12:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h9_CNPDeSkRA for <devel@linuxdriverproject.org>;
 Wed,  3 Feb 2021 18:12:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
 [209.85.166.42])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 197FF8610E
 for <devel@driverdev.osuosl.org>; Wed,  3 Feb 2021 18:12:21 +0000 (UTC)
Received: by mail-io1-f42.google.com with SMTP id n14so312172iog.3
 for <devel@driverdev.osuosl.org>; Wed, 03 Feb 2021 10:12:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=q/XjWOBQrwKZ3SFGSB0fATQ2ysDx1Jq6OdD33TEzEu4=;
 b=Ca53H6enHZi+n+88m0jGJsgev/5lnuLUGNk2voy5K3CkZmT9+uJF4YH8ETx+tL+2IO
 CsNamMChin+rVfByuLl3nBKMwXT+UjebNkNLPSpCDhm3jyBEi/GrkfSWDK+OBSvIqbuv
 KrhYy0sJv/lDXYjv+3sK05wxFYcwI/qdrikZ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=q/XjWOBQrwKZ3SFGSB0fATQ2ysDx1Jq6OdD33TEzEu4=;
 b=cv4flXze5r8QgMZi35Yp98mOMhpT8/Fz2xYR3hAxlEjnKpFHidLMhmrbfsXnLLlRKs
 xmRdRhpKah1hhJYuHCmdr4UHzFmrwWK7uobjERu3wSQy1BJnL9i7kXx09IWG6zYvJ1PQ
 Wf9aM8W3nk19tBud3ISKDIk4dvBgbGyo50pBpi7CVjhVGOeGrWUa8ujhX+CaicSck8E0
 8FHTqWwsXFfi3QxkENHH5O0U9g5j0wm1HVtleVLt8HRThw/sMEtZTgg59Kyufc/iriLy
 gzyw7H2aPvbv2cJ4Xrjx52PXBGjdtwPmYeUJyyEWNoP4CoYbZH53M9TYIezyqbpqwVRT
 iKjg==
X-Gm-Message-State: AOAM532aobIN6bhLMZSlGioGqd0uIrwhne2ujKS86mRKXXzqFOpWAeq8
 hx78nQOQKj5g+qV5cRrt9ISWQQ==
X-Google-Smtp-Source: ABdhPJw8iD9beaycWlURDEZl4vpUK/XlUZjR45GfkvhmxT8ZKEaI7qDG0lvzt7C8BSA2pY18tqX2mg==
X-Received: by 2002:a5d:968e:: with SMTP id m14mr3468449ion.26.1612375940544; 
 Wed, 03 Feb 2021 10:12:20 -0800 (PST)
Received: from shuah-t480s.internal (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id h21sm399684iob.30.2021.02.03.10.12.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Feb 2021 10:12:19 -0800 (PST)
From: Shuah Khan <skhan@linuxfoundation.org>
To: corbet@lwn.net, gregkh@linuxfoundation.org, peterz@infradead.org,
 keescook@chromium.org, rafael@kernel.org, lenb@kernel.org,
 james.morse@arm.com, tony.luck@intel.com, bp@alien8.de
Subject: [PATCH v3 4/7] drivers/acpi/apei: convert seqno to seqnum_ops
Date: Wed,  3 Feb 2021 11:12:00 -0700
Message-Id: <d0f4ecaf408f2ea1d8cbb719b4fcabf969749c04.1612314468.git.skhan@linuxfoundation.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1612314468.git.skhan@linuxfoundation.org>
References: <cover.1612314468.git.skhan@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-kselftest@vger.kernel.org, Shuah Khan <skhan@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Sequence Number api provides interfaces for unsigned atomic up counters
leveraging atomic_t and atomic64_t ops underneath.

Convert seqno atomic counter to use seqnum_ops.

Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>
---
 drivers/acpi/apei/ghes.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/acpi/apei/ghes.c b/drivers/acpi/apei/ghes.c
index fce7ade2aba9..103f67edee1a 100644
--- a/drivers/acpi/apei/ghes.c
+++ b/drivers/acpi/apei/ghes.c
@@ -41,6 +41,7 @@
 #include <linux/uuid.h>
 #include <linux/ras.h>
 #include <linux/task_work.h>
+#include <linux/seqnum_ops.h>
 
 #include <acpi/actbl1.h>
 #include <acpi/ghes.h>
@@ -625,8 +626,7 @@ static void __ghes_print_estatus(const char *pfx,
 				 const struct acpi_hest_generic *generic,
 				 const struct acpi_hest_generic_status *estatus)
 {
-	static atomic_t seqno;
-	unsigned int curr_seqno;
+	static struct seqnum32 seqno;
 	char pfx_seq[64];
 
 	if (pfx == NULL) {
@@ -636,8 +636,8 @@ static void __ghes_print_estatus(const char *pfx,
 		else
 			pfx = KERN_ERR;
 	}
-	curr_seqno = atomic_inc_return(&seqno);
-	snprintf(pfx_seq, sizeof(pfx_seq), "%s{%u}" HW_ERR, pfx, curr_seqno);
+	snprintf(pfx_seq, sizeof(pfx_seq), "%s{%u}" HW_ERR, pfx,
+		 seqnum32_inc(&seqno));
 	printk("%s""Hardware error from APEI Generic Hardware Error Source: %d\n",
 	       pfx_seq, generic->header.source_id);
 	cper_estatus_print(pfx_seq, estatus);
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
