Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD1830E214
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Feb 2021 19:12:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7D72586132;
	Wed,  3 Feb 2021 18:12:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i5PKsP8rmoof; Wed,  3 Feb 2021 18:12:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A8E2684E5E;
	Wed,  3 Feb 2021 18:12:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 40B0C1BF2F9
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 18:12:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3D2D187164
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 18:12:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bNpYujDhxQ4F for <devel@linuxdriverproject.org>;
 Wed,  3 Feb 2021 18:12:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com
 [209.85.166.181])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A446F87158
 for <devel@driverdev.osuosl.org>; Wed,  3 Feb 2021 18:12:18 +0000 (UTC)
Received: by mail-il1-f181.google.com with SMTP id q9so145195ilo.1
 for <devel@driverdev.osuosl.org>; Wed, 03 Feb 2021 10:12:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bjC27Eb9w9mM2SAEoXcwuyGIikNJU3zdPVeVR9rKt0c=;
 b=KqWrrH2txCq4lO2ex6WKtRqHlkaLYMNP/cM5ExESO2VMWv16ydv9eW4RUqwDSNgULE
 cV9HAU5u2bk8h6Bdl11d/CiQYi/VeWsJsIfOQozly7zbb8GrHUOoPQ1x+sx+Tu2iCRKE
 N+71OcIyUcMeVWPZhq9WGSvc962kn3oWzcHPo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bjC27Eb9w9mM2SAEoXcwuyGIikNJU3zdPVeVR9rKt0c=;
 b=Macw4GPwAA50SCsrOiIjbA5JgJ6xvEJF0fs0O3IMhU0m1roAEN7UEZwxZaoZeQl1Ge
 tboHIYL5V7jwsB3WH2H99gb8RAF9fhrPiJICZEcYGaOCmYL9XOyjMWV0Q8B3qFa7ey4F
 SZGw9PzxtFtaCn3Be+TXd57liA3vak+5L1AATvzzT3/UOqZBDsB4Pb3oH+24khHOMLA7
 YzaJXfqnH8eZVqyFqqIjZdFaqZQOJAGNLUoYrMfoSwX1pkeymGX+z3Q6nC4COPySkP75
 2rNLk1clz1BG9/fDwy417U+MW95OtbDafR4Xh4IiBvp1Uo+1pzcNVSkT0YpfKUoySqEE
 N76g==
X-Gm-Message-State: AOAM531ZNouYH+ermE9rW2V4vZSN44bvJk+Vv8+7t/NCwhoVqZtA345H
 nL1ZbMELYOYobt4U3TSb66PlKQ==
X-Google-Smtp-Source: ABdhPJx8Qrp2K4WoCsSpLgc8CZBOB6oPCmpJqO+WHXB9WoPN+cz8O0USgJa4+n4x2TYfDLXOVcxczA==
X-Received: by 2002:a92:d845:: with SMTP id h5mr3474042ilq.34.1612375937986;
 Wed, 03 Feb 2021 10:12:17 -0800 (PST)
Received: from shuah-t480s.internal (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id h21sm399684iob.30.2021.02.03.10.12.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Feb 2021 10:12:17 -0800 (PST)
From: Shuah Khan <skhan@linuxfoundation.org>
To: corbet@lwn.net, gregkh@linuxfoundation.org, peterz@infradead.org,
 keescook@chromium.org, rafael@kernel.org, lenb@kernel.org,
 james.morse@arm.com, tony.luck@intel.com, bp@alien8.de
Subject: [PATCH v3 3/7] drivers/acpi: convert seqno to use seqnum_ops
Date: Wed,  3 Feb 2021 11:11:59 -0700
Message-Id: <8d11eec80d6668065fb35a0b025c3614b67bf798.1612314468.git.skhan@linuxfoundation.org>
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
 drivers/acpi/acpi_extlog.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/acpi/acpi_extlog.c b/drivers/acpi/acpi_extlog.c
index 72f1fb77abcd..16a4928645a1 100644
--- a/drivers/acpi/acpi_extlog.c
+++ b/drivers/acpi/acpi_extlog.c
@@ -12,6 +12,7 @@
 #include <linux/ratelimit.h>
 #include <linux/edac.h>
 #include <linux/ras.h>
+#include <linux/seqnum_ops.h>
 #include <asm/cpu.h>
 #include <asm/mce.h>
 
@@ -93,8 +94,7 @@ static struct acpi_hest_generic_status *extlog_elog_entry_check(int cpu, int ban
 static void __print_extlog_rcd(const char *pfx,
 			       struct acpi_hest_generic_status *estatus, int cpu)
 {
-	static atomic_t seqno;
-	unsigned int curr_seqno;
+	static struct seqnum32 seqno;
 	char pfx_seq[64];
 
 	if (!pfx) {
@@ -103,8 +103,8 @@ static void __print_extlog_rcd(const char *pfx,
 		else
 			pfx = KERN_ERR;
 	}
-	curr_seqno = atomic_inc_return(&seqno);
-	snprintf(pfx_seq, sizeof(pfx_seq), "%s{%u}", pfx, curr_seqno);
+	snprintf(pfx_seq, sizeof(pfx_seq), "%s{%u}", pfx,
+		 seqnum32_inc(&seqno));
 	printk("%s""Hardware error detected on CPU%d\n", pfx_seq, cpu);
 	cper_estatus_print(pfx_seq, estatus);
 }
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
