Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 538046D3C6
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Jul 2019 20:23:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EF4568837F;
	Thu, 18 Jul 2019 18:23:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lCgHba5FAJuL; Thu, 18 Jul 2019 18:23:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6318887EE8;
	Thu, 18 Jul 2019 18:23:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 946DA1BF83C
 for <devel@linuxdriverproject.org>; Thu, 18 Jul 2019 18:23:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8F9FB86ACE
 for <devel@linuxdriverproject.org>; Thu, 18 Jul 2019 18:23:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZNbjKgYCPYxC for <devel@linuxdriverproject.org>;
 Thu, 18 Jul 2019 18:23:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 214D986ACC
 for <devel@driverdev.osuosl.org>; Thu, 18 Jul 2019 18:23:01 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id r7so12997047pfl.3
 for <devel@driverdev.osuosl.org>; Thu, 18 Jul 2019 11:23:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=NfeU7C+4cQYfAuh2am+KuzQ3c0bYfoeWeqp96pcMW98=;
 b=AOso9T90+nC8FC7UpIKhHVQNz/XM9XiXEx3kny7xcy3c0FhyOB/ZkcjLeiEC6QnMEy
 MQuSLHlhIpCTGc3NzkFU5FoqEsR5QGxFrKSygOfnkPDVgrot0bWeJKJbxO4xTKWpca/0
 srDMPgL6ACS+cNYSNeRph5lGocRvlP4LMfdbvpeXqzvriNg7XRSimJZf7ITwJnAtKRih
 pPOVo846YmHDQnttO5KHw46sfT2Q0FuO3K1q0luJ7JhLgEJb5x+6TcdVF3hLGzFCSUI+
 EMxTQYFPbn2kxYPW/dHBUjnutwYlKdvYA6ymcB6tdmNkNe7Gt6Ukmwz11nP5NZKbeD+k
 yr3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=NfeU7C+4cQYfAuh2am+KuzQ3c0bYfoeWeqp96pcMW98=;
 b=UdHSHXp3sWU4rLl1WPnZrk70ad5+c62Vxge1+8naLrb+vTLiJJA7On/CYfRVACB2pu
 FpCniMWEIZj3aUMM07yNzfQ9oRFmEYKRuBZWZ3RMrCD5ATM3hX65ebiyF1olLeUVdtU7
 zE89EJY/2Jfxqn3ePUDxPlkaY4/LhK3RwBfLDgGT8lB/d6RyEx8vEYkVFEY8hY+qbgRx
 gAKLCjIlaMAzyiW/BGm5WtBw+29lPiLAWeRHHClgRVRqOfvuNLwRv7JP3sn2FAk4SO/k
 QQaM+JMHpbC8AVzMHfZFbf8n8/+ce3fHZIC4nvpejJyA/m2jRzcns6vT+A5bBfH1TKP5
 lv4Q==
X-Gm-Message-State: APjAAAURxFhlHMzSPiJXC/skFxKtsc+U+07fs/lYz8r3Du0AD5MYDeLf
 UJIQkhyb0sY3XJl9u4OvIqw=
X-Google-Smtp-Source: APXvYqym0j3JZFUtP4NlY1qtgqBml4ehvMqrjvgbUNRrnZdAUGNjPrRAqaxDD+nNvbnD/zBvgEjw3w==
X-Received: by 2002:a65:5144:: with SMTP id g4mr49111581pgq.202.1563474180700; 
 Thu, 18 Jul 2019 11:23:00 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id k8sm28351747pgm.14.2019.07.18.11.22.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 11:22:57 -0700 (PDT)
Date: Thu, 18 Jul 2019 23:52:50 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Geordan Neukum <gneukum1@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Michael Scheiderer <michael.scheiderer@fau.de>,
 Fabian Krueger <fabian.krueger@fau.de>,
 Simon =?iso-8859-1?Q?Sandstr=F6m?= <simon@nikanor.nu>,
 Jeremy Sowden <jeremy@azazel.net>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: kpc2000: Remove null check before kfree
Message-ID: <20190718182250.GA3011@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

As kfree already has NULL check we may not need null check before
calling same.

Issue found with coccicheck

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 35ac1d7..c07d2fc 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -411,9 +411,7 @@ kp_spi_transfer_one_message(struct spi_master *master, struct spi_message *m)
 kp_spi_cleanup(struct spi_device *spidev)
 {
 	struct kp_spi_controller_state *cs = spidev->controller_state;
-
-	if (cs)
-		kfree(cs);
+	kfree(cs);
 }
 
 /******************
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
