Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E6F1274F6
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Dec 2019 06:14:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EFB1D8819C;
	Fri, 20 Dec 2019 05:13:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 253js2U9FzTl; Fri, 20 Dec 2019 05:13:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6117688155;
	Fri, 20 Dec 2019 05:13:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4AE411BF2CB
 for <devel@linuxdriverproject.org>; Fri, 20 Dec 2019 05:13:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 47C56870F8
 for <devel@linuxdriverproject.org>; Fri, 20 Dec 2019 05:13:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PViNWVljderB for <devel@linuxdriverproject.org>;
 Fri, 20 Dec 2019 05:13:52 +0000 (UTC)
X-Greylist: delayed 20:08:16 by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F0ACA87063
 for <devel@driverdev.osuosl.org>; Fri, 20 Dec 2019 05:13:50 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id r11so4360600pgf.1
 for <devel@driverdev.osuosl.org>; Thu, 19 Dec 2019 21:13:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hyderabad.bits-pilani.ac.in; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=AN2HMEtlZTloepEi5WkVWopj4fyZSohv3ayMSlIeay4=;
 b=I37Cxop3XVLom5KaUjtRT9nkiC3GmgyAAzNglVIapUz6MdJhlDwYh21m/P3IqS+4rE
 iSPINhKy9V3y8EL7JU/eNypehC+3SkBUzQiB5mIQ9Iis+wTH8oh9kQ3YkYXDfE6/sPMn
 FiOF1HYBfjiUtYMY7Xe8d127uBPBTCK57TE2o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=AN2HMEtlZTloepEi5WkVWopj4fyZSohv3ayMSlIeay4=;
 b=N2MTXPRfRLlKedITXFzG38nHXLE+ooFQi6FUFsgKjvNzvpoQFEUZNrpG6xWRyDXzp8
 Wdw6P3cXIuu2vadfXmEvA/KEHDQ/EbY7RKGoomZcyTPEoaYS50ZGIPUhPcmy3nMFYfaa
 FTizAbeOTL6e9fJT2gay/OwFlWhESuuADM50sr00SiHgoKmycuXtvkdPPtfHTzWWBVW4
 YKw/27u8eG7F24Rw+0x7svSslLQUxQyJiECTEsHAOlUGsF7sD5KfgZlW1BYp02Gep3+7
 ymATilKfPOYM/jbztO/LdJbjTtoMbmchUmqW2ZyANIp0miaUwqj1iuXyn5AK4292g3SJ
 xZTA==
X-Gm-Message-State: APjAAAUOvccYyjYMrJjTjksuam6OX3IVZaMY5y6GdgxpvjIAjRDWuWUK
 3wdQVQG2G13bg/WJyqSnoJf/7w==
X-Google-Smtp-Source: APXvYqyFC7v9pOL0HKiSr0GhKQ8OZP5IbpItcaRPoMZU59n7C9qkC0YYaTU1HZuHWXyxOQNOHwUSrA==
X-Received: by 2002:aa7:81cc:: with SMTP id c12mr14012804pfn.143.1576818830384; 
 Thu, 19 Dec 2019 21:13:50 -0800 (PST)
Received: from localhost.localdomain ([106.210.66.249])
 by smtp.googlemail.com with ESMTPSA id r37sm7409264pjb.7.2019.12.19.21.13.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 21:13:49 -0800 (PST)
From: Simran Sandhu <f20171454@hyderabad.bits-pilani.ac.in>
To: nsaenzjulienne@suse.de
Subject: [PATCH 4/4] Staging: vc04_services: Fix checkpatch.pl error
Date: Fri, 20 Dec 2019 10:44:14 +0530
Message-Id: <20191220051414.6484-1-f20171454@hyderabad.bits-pilani.ac.in>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, f.fainelli@gmail.com, sbranden@broadcom.com,
 tiwai@suse.de, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net, rjui@broadcom.com,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CHECKPATH ERROR: Alignment should match open parenthesis was fixed by entroducing tabs and spaces on the location
drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c:349

Signed-off-by: Simran Sandhu <f20171454@hyderabad.bits-pilani.ac.in>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
index 33485184a98a..c3ce6796abce 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
@@ -346,7 +346,7 @@ int snd_bcm2835_new_pcm(struct bcm2835_chip *chip, const char *name,
 			&snd_bcm2835_playback_ops);
 
 	snd_pcm_set_managed_buffer_all(pcm, SNDRV_DMA_TYPE_DEV,
-		chip->card->dev, 128 * 1024, 128 * 1024);
+				       chip->card->dev, 128 * 1024, 128 * 1024);
 
 	if (spdif)
 		chip->pcm_spdif = pcm;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
