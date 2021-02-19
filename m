Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B9B31F359
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 01:30:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 56A7687453;
	Fri, 19 Feb 2021 00:30:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7rjK2Bxy9Lwd; Fri, 19 Feb 2021 00:30:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A8F078743B;
	Fri, 19 Feb 2021 00:30:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AA9AC1C113E
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 00:30:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A74FB86AFD
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 00:30:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8McQr0JywCRZ for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 00:30:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com
 [209.85.214.180])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 083F086AC9
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 00:30:53 +0000 (UTC)
Received: by mail-pl1-f180.google.com with SMTP id d15so2344001plh.4
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 16:30:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=Fi3lkWmDbfwcEUbMyKdDvWBwmJ2EybxjUw9j5c75a9o=;
 b=CormmXPrFceE23mpfIARArY4PoGBixvejur+/IYNOZPpKF12Zvf2QRWFgcjRXiql9b
 Ci6CTjtSomf5d9L81QzX81ZYBP/dBmsKsomchZh81PqfSr2hf0SeeQByIHmqiv9kJ6Ag
 8WCkSflR5PJGNB1SLDJvZ8Qg7zEpxv9CTG8BHvXfdB5jB6VAEIms0jntVldByW0+/AwZ
 jJcMNF3cFJyDyFK08ic/xvzfJ2vkE7GRbGx825yIeo8GYmki6O//H3wDc67l3gO7+v66
 NC8jD5jONuWImnuJW/W7BSP6v4CIlJz78TmAZeebsD2O2oPOSal1/RXfZDbQ7tGelmxO
 8vuQ==
X-Gm-Message-State: AOAM53119rP/fs2FanVaW3i8gf+lm2G/K3bRdGD+IdItrAIGaQS5052G
 +nP38qisctM7gAkTIhxYFkw=
X-Google-Smtp-Source: ABdhPJwfaO7wyk2x33cAYQilsTacbXLBVLzhAUmAcZS0JFW5RAsac8zjL2P5ggEQg9fMfYzh+Pn4nA==
X-Received: by 2002:a17:90a:1109:: with SMTP id
 d9mr6309805pja.94.1613694652586; 
 Thu, 18 Feb 2021 16:30:52 -0800 (PST)
Received: from karthik-strix-linux.karthek.com ([192.140.154.17])
 by smtp.gmail.com with ESMTPSA id c26sm8485162pfj.183.2021.02.18.16.30.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Feb 2021 16:30:52 -0800 (PST)
Date: Fri, 19 Feb 2021 06:00:47 +0530
From: karthik alapati <mail@karthek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>,
 Johannes Berg <johannes@sipsolutions.net>, Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH] staging: i2400m: use explicit host byte-order types in
 comparison
Message-ID: <YC8Gt4sawUiuTTE3@karthik-strix-linux.karthek.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

convert le32 types to host byte-order types before
comparison

Signed-off-by: karthik alapati <mail@karthek.com>
---
i wonder how these could be false-positives
 drivers/staging/wimax/i2400m/fw.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wimax/i2400m/fw.c b/drivers/staging/wimax/i2400m/fw.c
index edb5eba0898b..13207c985a87 100644
--- a/drivers/staging/wimax/i2400m/fw.c
+++ b/drivers/staging/wimax/i2400m/fw.c
@@ -191,7 +191,7 @@ void i2400m_bm_cmd_prepare(struct i2400m_bootrom_header *cmd)
 		int i;
 		u32 checksum = 0;
 		const u32 *checksum_ptr = (void *) cmd->payload;
-		for (i = 0; i < cmd->data_size / 4; i++)
+		for (i = 0; i < le32_to_cpu(cmd->data_size) / 4; i++)
 			checksum += cpu_to_le32(*checksum_ptr++);
 		checksum += cmd->command + cmd->target_addr + cmd->data_size;
 		cmd->block_checksum = cpu_to_le32(checksum);
@@ -506,7 +506,7 @@ ssize_t __i2400m_bm_ack_verify(struct i2400m *i2400m, int opcode,
 			opcode, i2400m_brh_get_response(ack));
 		goto error_ack_failed;
 	}
-	if (ack_size < ack->data_size + sizeof(*ack)) {
+	if (ack_size < le32_to_cpu(ack->data_size) + sizeof(*ack)) {
 		dev_err(dev, "boot-mode cmd %d: SW BUG "
 			"driver provided only %zu bytes for %zu bytes "
 			"of data\n", opcode, ack_size,
-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
