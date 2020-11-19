Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BCA2B928E
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Nov 2020 13:29:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 37CB5273A9;
	Thu, 19 Nov 2020 12:29:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mF26r5onnukU; Thu, 19 Nov 2020 12:29:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A8029230E6;
	Thu, 19 Nov 2020 12:29:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4849E1BF362
 for <devel@linuxdriverproject.org>; Thu, 19 Nov 2020 12:28:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 452A086D08
 for <devel@linuxdriverproject.org>; Thu, 19 Nov 2020 12:28:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QigBbnIq7xdU for <devel@linuxdriverproject.org>;
 Thu, 19 Nov 2020 12:28:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5A19286CFB
 for <devel@driverdev.osuosl.org>; Thu, 19 Nov 2020 12:28:57 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id s8so6203661wrw.10
 for <devel@driverdev.osuosl.org>; Thu, 19 Nov 2020 04:28:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nk6ndwLNkHXR1KZ6KubRVDQdUjrvbsIwDbnpAbqsS8s=;
 b=joeY1dUKxoqThAjnOvu1ZdBc0EE1b739MQZOmwNt+Dfnn/bYA3HG7FN7RTJgMRh8nl
 ecd8korNIyRv3lI60/xa+AHlKRKGk2EElT4MUnxjsx533IOlO332ILTqsaqdnKda0kJV
 sqEuI0G92S8oKv7f4akqtVj5IcO6Od3TL2+ayDA8VFNfPeHqhWIAUCsGBGGC8mPerYTO
 rFEPJCjCgDgVL+3yRNNe57OEv0ChWPnotIeux8tELyouYYJx/HaBz8/CBtCZogY5qYiq
 gLBM4m3SyJwn8uRE8d1oyh+QGvyxKqfheT5QLjyROkYhzNorKzVCgXPW+8CpmoYSgk2m
 i8kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nk6ndwLNkHXR1KZ6KubRVDQdUjrvbsIwDbnpAbqsS8s=;
 b=RA/dj7IwfWqLkAhis6lciNTnLSkayiFYsQxQQIfYrU3w2nh9jE9subUD2kWYdhMPW2
 PipWFXamTsjQjVBVB8914r9Jxor1mP0kdqyuYCM3OsHzNVxJVWyV01aUWcvEWWXdxW/e
 KQEZXK38zZFmZC9+M9u1ioXvbaP8bHCUXjvVmcWlUZJC+cm/NGVTPxN11MBEn0LmcPhb
 7N/tbx90e8Swm2kQH49YqqdqjZjJ0UYuobA1q3MgfP05Uk8LQk9MhuyY3e8Rx2CqJb7h
 Y0TfOCXIWaKICOy1vPvjKqcUaxp2uU8aRH2FbZsHCjPeHmEDKh/KSvblUZPJZTSaI3QM
 VhDQ==
X-Gm-Message-State: AOAM5327YW5k1nNVjKJBCeKDBV+aSQHi9jH4FAIkPZ8ijr5dMlgmNor9
 Jp4jYhywYQA49xSZI7kyVnU=
X-Google-Smtp-Source: ABdhPJygB+5SOpdZQVy+Chngx4Pkoqd6FruYwpo+6Jet4HCmMCq9VkprgeVidnfSLEfqgVF0cLT0YQ==
X-Received: by 2002:a5d:4fc1:: with SMTP id h1mr10645955wrw.226.1605788935926; 
 Thu, 19 Nov 2020 04:28:55 -0800 (PST)
Received: from localhost.localdomain (59.red-81-32-35.dynamicip.rima-tde.net.
 [81.32.35.59])
 by smtp.gmail.com with ESMTPSA id h20sm9005590wmb.29.2020.11.19.04.28.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Nov 2020 04:28:55 -0800 (PST)
From: Juan Antonio Aldea-Armenteros <juant.aldea@gmail.com>
To: 
Subject: [PATCH v2] staging: trivial: hikey9xx: fix be32<->u32 casting warnings
Date: Thu, 19 Nov 2020 13:27:38 +0100
Message-Id: <20201119122737.189675-1-juant.aldea@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201119114029.183828-1-juant.aldea@gmail.com>
References: <20201119114029.183828-1-juant.aldea@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Jiri Kosina <trivial@kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Juan Antonio Aldea-Armenteros <juant.aldea@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the following warnings reported by sparse, by adding
missing __force annotations.

drivers/staging/hikey9xx/hisi-spmi-controller.c:164:24: warning: cast to restricted __be32
drivers/staging/hikey9xx/hisi-spmi-controller.c:164:24: warning: cast to restricted __be32
drivers/staging/hikey9xx/hisi-spmi-controller.c:164:24: warning: cast to restricted __be32
drivers/staging/hikey9xx/hisi-spmi-controller.c:164:24: warning: cast to restricted __be32
drivers/staging/hikey9xx/hisi-spmi-controller.c:164:24: warning: cast to restricted __be32
drivers/staging/hikey9xx/hisi-spmi-controller.c:164:24: warning: cast to restricted __be32

drivers/staging/hikey9xx/hisi-spmi-controller.c:239:25: warning: cast from restricted __be32

Rationale for #164:
data is declared as u32, and it is read and then converted by means of
be32_to_cpu(). Said function expects a __be32 but data is u32, therefore
there's a type missmatch here.

Rationale for #239:
Is the dual of #164. This time data going to be  written so it
needs to be converted from cpu to __be32, but writel() expects u32 and the
output of cpu_to_be32 returns a __be32.

Signed-off-by: Juan Antonio Aldea-Armenteros <juant.aldea@gmail.com>
---
 Changes in V2:
    - Fix typo in commit message.

 drivers/staging/hikey9xx/hisi-spmi-controller.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/hikey9xx/hisi-spmi-controller.c b/drivers/staging/hikey9xx/hisi-spmi-controller.c
index f831c43f4783..861aedd5de48 100644
--- a/drivers/staging/hikey9xx/hisi-spmi-controller.c
+++ b/drivers/staging/hikey9xx/hisi-spmi-controller.c
@@ -161,7 +161,7 @@ static int spmi_read_cmd(struct spmi_controller *ctrl,
 			     SPMI_SLAVE_OFFSET * slave_id +
 			     SPMI_APB_SPMI_RDATA0_BASE_ADDR +
 			     i * SPMI_PER_DATAREG_BYTE);
-		data = be32_to_cpu((__be32)data);
+		data = be32_to_cpu((__be32 __force)data);
 		if ((bc - i * SPMI_PER_DATAREG_BYTE) >> 2) {
 			memcpy(buf, &data, sizeof(data));
 			buf += sizeof(data);
@@ -236,7 +236,7 @@ static int spmi_write_cmd(struct spmi_controller *ctrl,
 			buf += (bc % SPMI_PER_DATAREG_BYTE);
 		}
 
-		writel((u32)cpu_to_be32(data),
+		writel((u32 __force)cpu_to_be32(data),
 		       spmi_controller->base + chnl_ofst +
 		       SPMI_APB_SPMI_WDATA0_BASE_ADDR +
 		       SPMI_PER_DATAREG_BYTE * i);
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
