Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A7E1989DD
	for <lists+driverdev-devel@lfdr.de>; Tue, 31 Mar 2020 04:17:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 90FAD85F11;
	Tue, 31 Mar 2020 02:17:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L70pqb9j7mvA; Tue, 31 Mar 2020 02:17:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 10B6D85EBB;
	Tue, 31 Mar 2020 02:17:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 60CEC1BF2C2
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 02:17:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 57F6D88350
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 02:17:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7cKBUL2ZJxSg for <devel@linuxdriverproject.org>;
 Tue, 31 Mar 2020 02:17:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DBDC38834C
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 02:17:42 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id o26so9620115pgc.12
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 19:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=AZ668oVqEFRu4Fk1JpLECbYmbDQ0SxQ3edw/nd3Wu+g=;
 b=FtaY57UNUpqbeniH+KDHAxFYnGuB4A2Bywh3P7VYBRJELFGKmxWzyhKAf7UgG4E1FF
 vP/M7n/qBfL7v96lqFcEET8HVTCvlft9vfFfaJCv+zTaNdBfJBRX7y48Jn7CSuB+KAKq
 p02drUOZG0z8OC5RcHVvnwIJrv1MfZNE+1h9NBS+2Z7EiMLV4IIrUvjpdcLpzZWt0Gob
 ylunaJ9xsisL5zA28hsHpHrcJwMmpbroF11TkXQSEApTxOBN1x5TWa0abp2nwS9cbdOQ
 2xpoxGAsPUPWv2PEwyil3UU1jbZceLCfd3HbgNwSjs55374McwoLk7CjgsO8oJhcD3Ca
 ZFNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=AZ668oVqEFRu4Fk1JpLECbYmbDQ0SxQ3edw/nd3Wu+g=;
 b=RFn8xV7VcBhAQxXGg8JXKoP6KgWb83ZcH9g1fcr51myH9oZeXKRstbFOHgjumq1nJv
 fXO6DgLId+tVhxOKRS2ReFZuxnkhs1E8t7G1BcVaBAh1MPRHPph/4ZnSLI9JTsM8E0sS
 frae6WM/fSBtcUwZN3mYEGBRrfP8wJoBuDDvTC4g89OqBpUQF4qLL2rlDApQC+MDmkUx
 VBp9NURFS1DysvMha6VT+VCFlcBGqUpW5Bjk8abb1w5W2U4wiPHjXCsTM7L46I+XoFrH
 wUeoB/T0VE2j4TnzP60on0Yqmg/Xh4mb3wnhgXl55L9H6PrQxuwr7ZhVvVm+A+ITVkeV
 0Z3g==
X-Gm-Message-State: AGi0PubAwrbTPxuC2q3cD4YnusaT0CLB8kzZAzqjSiQCNwBFZ4a6Snd9
 n5ry7lWMLm07MLrQa1OLXkE=
X-Google-Smtp-Source: APiQypKmIiIqiveId8iQcajfYjUw2rMhUF2Y6ltDELRjTQYJulpXfFyNyOrNo+BLv+4pp4p2IjEcRw==
X-Received: by 2002:a63:5e44:: with SMTP id s65mr2094326pgb.112.1585621062431; 
 Mon, 30 Mar 2020 19:17:42 -0700 (PDT)
Received: from localhost.net ([131.107.160.147])
 by smtp.googlemail.com with ESMTPSA id m68sm1616602pjb.0.2020.03.30.19.17.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Mar 2020 19:17:42 -0700 (PDT)
From: ltykernel@gmail.com
X-Google-Original-From: Tianyu.Lan@microsoft.com
To: kys@microsoft.com, haiyangz@microsoft.com, sthemmin@microsoft.com,
 tglx@linutronix.de, mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 x86@kernel.org, michael.h.kelley@microsoft.com, wei.liu@kernel.org
Subject: [PATCH V2] x86/Hyper-V: don't allocate clockevent device when
 synthetic timer is unavailable
Date: Mon, 30 Mar 2020 19:17:38 -0700
Message-Id: <20200331021738.2572-1-Tianyu.Lan@microsoft.com>
X-Mailer: git-send-email 2.14.5
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
Cc: devel@linuxdriverproject.org, vkuznets@redhat.com,
 Tianyu Lan <Tianyu.Lan@microsoft.com>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Tianyu Lan <Tianyu.Lan@microsoft.com>

Current code initializes clock event data structure for syn timer
even when it's unavailable. Fix it.

Signed-off-by: Tianyu Lan <Tianyu.Lan@microsoft.com>
---
Change since v1:
	Update title and commit log. 

 drivers/hv/hv.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/hv/hv.c b/drivers/hv/hv.c
index 632d25674e7f..2e893768fc76 100644
--- a/drivers/hv/hv.c
+++ b/drivers/hv/hv.c
@@ -212,13 +212,16 @@ int hv_synic_alloc(void)
 		tasklet_init(&hv_cpu->msg_dpc,
 			     vmbus_on_msg_dpc, (unsigned long) hv_cpu);
 
-		hv_cpu->clk_evt = kzalloc(sizeof(struct clock_event_device),
-					  GFP_KERNEL);
-		if (hv_cpu->clk_evt == NULL) {
-			pr_err("Unable to allocate clock event device\n");
-			goto err;
+		if (ms_hyperv.features & HV_MSR_SYNTIMER_AVAILABLE) {
+			hv_cpu->clk_evt =
+				kzalloc(sizeof(struct clock_event_device),
+						  GFP_KERNEL);
+			if (hv_cpu->clk_evt == NULL) {
+				pr_err("Unable to allocate clock event device\n");
+				goto err;
+			}
+			hv_init_clockevent_device(hv_cpu->clk_evt, cpu);
 		}
-		hv_init_clockevent_device(hv_cpu->clk_evt, cpu);
 
 		hv_cpu->synic_message_page =
 			(void *)get_zeroed_page(GFP_ATOMIC);
-- 
2.14.5

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
