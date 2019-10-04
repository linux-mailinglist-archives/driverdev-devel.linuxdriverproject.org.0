Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B93A6CC3DE
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Oct 2019 22:03:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4E3A68851D;
	Fri,  4 Oct 2019 20:03:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eIPeRI1njDA9; Fri,  4 Oct 2019 20:03:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 79064884DC;
	Fri,  4 Oct 2019 20:03:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4883A1BF3F3
 for <devel@linuxdriverproject.org>; Fri,  4 Oct 2019 20:03:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 405DC87DF6
 for <devel@linuxdriverproject.org>; Fri,  4 Oct 2019 20:03:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WKyGrmGLYKs2 for <devel@linuxdriverproject.org>;
 Fri,  4 Oct 2019 20:03:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 97F7387DE4
 for <devel@driverdev.osuosl.org>; Fri,  4 Oct 2019 20:03:27 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id b19so16218992iob.4
 for <devel@driverdev.osuosl.org>; Fri, 04 Oct 2019 13:03:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=O+TCr5SG4kChCyM+zaHk2lgF+HdV26aL5mQf8M42AdE=;
 b=VSCRHQ56c4XhzYv7CLTfM3OnNPdD5OVtmS7+kY1Lw6oeHDfHshmI2nap1B80XFNMCn
 s4yaCW8Ww/ZssupTKdWYV6BNP4fZwnBPRmT+XhDDEPNVUx+EBIZD07jZXw4MzRuwOV8m
 yblCCDRx8rhOTtEGC8TiCrQ7GdF68IL4Wb8KWXXp4ilPcII9og79AFjT+gJE0k2Se2GE
 4n5s2HjTD0kZZrqKMvsU+Ol+jY0j46ZrSd3DjZPNlUkK1sQrdb9stJkb7sMvX1ZkShR4
 MOcuT6pMlKcOHzkgxS4oG/DuvINmOX8e9bos1sTOKwOmaduRUERmJpPQM//O8b1/EInh
 HMwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=O+TCr5SG4kChCyM+zaHk2lgF+HdV26aL5mQf8M42AdE=;
 b=ta4ZO01AcfFde5utl+VDScNN9S5hRuMA/AqXtvc/wjGDpb4dnUvQMCv2MhrrWNsDmH
 lSup9cyQr+QD+UTwzWH8mONGC5D9Ln5PmUvB30gWmO65XKD5qdfYzl+Xk7j/SHDeemjT
 dT8vjLwUDFxR03RRjTX5P3I0s3M913QoQFtwJTN/ipDntBG8IvPcbuIv78lVqg0dauGH
 h1bo+EiLLsjUIjoEhGD28OIuxrjjqG6jzJEosN/nmxz97jay51f5HoyCLfl6uFzoz718
 XVmiSX3p4x729sTM3kWFU2mhCxb8PidBbsiudJg86wzfw0XfF800wiFh3QoZLESBb0ig
 MLog==
X-Gm-Message-State: APjAAAVD+NabsYKyLWBUwC6xoTlt8MOLgmJeNHwsCs7ocONHGBQnj0TL
 ekyTBdAY5CZ44qcDqDhPiZ0=
X-Google-Smtp-Source: APXvYqxjDwU/P4QSCXivlvgCVOFCH3GdEh3D94AO3mK9ZY40YftqgS+Czs7elZIkIojhic/PNi4gqw==
X-Received: by 2002:a92:c806:: with SMTP id v6mr17304830iln.147.1570219406760; 
 Fri, 04 Oct 2019 13:03:26 -0700 (PDT)
Received: from cs-dulles.cs.umn.edu (cs-dulles.cs.umn.edu. [128.101.35.54])
 by smtp.googlemail.com with ESMTPSA id t9sm2429900iop.86.2019.10.04.13.03.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 13:03:26 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: 
Subject: [PATCH] staging: vt6655: Fix memory leak in vt6655_probe
Date: Fri,  4 Oct 2019 15:03:15 -0500
Message-Id: <20191004200319.22394-1-navid.emamdoost@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Malcolm Priestley <tvboxspy@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kjlu@umn.edu,
 linux-kernel@vger.kernel.org, Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 Luis Chamberlain <mcgrof@kernel.org>, emamd001@umn.edu,
 Forest Bond <forest@alittletooquiet.net>, smccaman@umn.edu,
 Navid Emamdoost <navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In vt6655_probe, if vnt_init() fails the cleanup code needs to be called
like other error handling cases. The call to device_free_info() is
added.

Fixes: 67013f2c0e58 ("staging: vt6655: mac80211 conversion add main mac80211 functions")
Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/staging/vt6655/device_main.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index c6bb4aaf9bd0..082302944c37 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -1748,8 +1748,10 @@ vt6655_probe(struct pci_dev *pcid, const struct pci_device_id *ent)
 
 	priv->hw->max_signal = 100;
 
-	if (vnt_init(priv))
+	if (vnt_init(priv)) {
+		device_free_info(priv);
 		return -ENODEV;
+	}
 
 	device_print_info(priv);
 	pci_set_drvdata(pcid, priv);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
