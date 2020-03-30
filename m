Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F8D197DF8
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 16:10:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D41DE88520;
	Mon, 30 Mar 2020 14:10:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 63yBwk9GRJ4I; Mon, 30 Mar 2020 14:10:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3B4EC884C5;
	Mon, 30 Mar 2020 14:10:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D7B051BF40A
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 14:10:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E534C88496
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 14:10:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gte3Mhq-ZJeU for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 14:10:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F292188468
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 14:10:07 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id kx8so7370603pjb.5
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 07:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=zEWrJ+S/cpn22b9RrUPtUgGvmx174MpZLt5rxEvwuts=;
 b=l4Edj5iwMkoHEC5DIJmIH93bYmo+EWfpjA5WBbbPGCxs6SKP89bs1dGc1DSY15vvVq
 X1tNNu1pZYPbobXpTXORQaAtGeQcqdwLGRhhgyP+7oS4wU86oM6K6fJbCm8OViw/XhKF
 zrR3KhRZ8UAJ+t8LhzoghgX6QvtV5KbhCMPjvHjbPn5TEppJ7hpu0a7oIJ08GOL7uVRi
 1KJvj6IfH3aaBd9Ru1j/cbPw2VsAw8DlJczt04Ffmyy698wBoB6idqlMDC06zibyZ8mQ
 dgtPS5YPRQV3kUMPosbaudSMQ8ayGKSBpKf97sQl0buP/lLcWUMW3YfgIyjZuHUXn1co
 D8iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=zEWrJ+S/cpn22b9RrUPtUgGvmx174MpZLt5rxEvwuts=;
 b=MXz/g8NlOjCD24WOaXguqc/6ES37/X+D1kTM2UtGfpbDdAtEsy/DWcHIG/WECLD9Lp
 csc/Cyw5GuNGw1lh42FQa7SPPHXhy06e6F66MWUoWwS2a3eqL+zBaBZku70THYFuiNGj
 AgqCPBG/o7hJFQT1OqZo4MXZaMSVhfmo/Ddz5vNiyA1EIs6xe3Gsk9NeIoYeSiPx8mnz
 kHuwVQFXU33VsJiPZuo9hAehsvD5LPG2mlso+FAzap8TPjL4gG9urAKoOFGh2IzUXLxs
 CW6vj469jKODDmZbZ15jHY5r4UF3/TKXANnpqgR7KK1jvVbE6HOrOOicNC+jkkD/O/7s
 BaeQ==
X-Gm-Message-State: ANhLgQ0kQN0I4FczhpmnszZScpt2FbJ8QiqXSAgKyhHrm8cn2amBjK9R
 zAEPhGEHBuaZFffuUlu/H44=
X-Google-Smtp-Source: ADFU+vsnDqAAIA47wGZ5Cj4Jv582EBSHe488ht2lQIzZ0lFO9vFuD78okV6J0CneK7OUo7sv2+H16w==
X-Received: by 2002:a17:90a:3acc:: with SMTP id
 b70mr15802936pjc.179.1585577407532; 
 Mon, 30 Mar 2020 07:10:07 -0700 (PDT)
Received: from localhost.net ([131.107.160.147])
 by smtp.googlemail.com with ESMTPSA id x4sm10257480pfi.202.2020.03.30.07.10.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 30 Mar 2020 07:10:06 -0700 (PDT)
From: ltykernel@gmail.com
X-Google-Original-From: Tianyu.Lan@microsoft.com
To: kys@microsoft.com, haiyangz@microsoft.com, sthemmin@microsoft.com,
 tglx@linutronix.de, mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 x86@kernel.org, michael.h.kelley@microsoft.com, wei.liu@kernel.org
Subject: [PATCH] x86/Hyper-V: Initialize Syn timer clock even when it's not
 available
Date: Mon, 30 Mar 2020 07:09:50 -0700
Message-Id: <20200330140950.12714-1-Tianyu.Lan@microsoft.com>
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
even when it's available or not. Fix it.

Signed-off-by: Tianyu Lan <Tianyu.Lan@microsoft.com>
---
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
