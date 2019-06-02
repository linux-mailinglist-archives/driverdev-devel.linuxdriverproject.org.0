Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E8003323BF
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Jun 2019 17:59:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F27DD85C94;
	Sun,  2 Jun 2019 15:59:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d7x3nWQGuN-0; Sun,  2 Jun 2019 15:59:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F030E85C37;
	Sun,  2 Jun 2019 15:59:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4B7811BF282
 for <devel@linuxdriverproject.org>; Sun,  2 Jun 2019 15:59:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3B60520798
 for <devel@linuxdriverproject.org>; Sun,  2 Jun 2019 15:59:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Aa6XRIn3-0M8 for <devel@linuxdriverproject.org>;
 Sun,  2 Jun 2019 15:59:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 8C6AD20340
 for <devel@driverdev.osuosl.org>; Sun,  2 Jun 2019 15:59:16 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id s57so6811772qte.8
 for <devel@driverdev.osuosl.org>; Sun, 02 Jun 2019 08:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=A6wrK07m18vBz92aFXgDpxBS8gA3r3xl4zuOhpCZv1M=;
 b=Lbn9N2Yty87IYvzN0tY37lEGmAFLUcK+8DqmDX5/TGrpMbwsiofJ70DQyrIm1rahr1
 6hIIC8Ws9xjn32ppsWcRYeOdg4pNGB+vkjC2tSvijfyclLtwOirqP+ihI/tijJwEqc4f
 5M/jREEnpB/7d36agucSOZxILNL+QtXQ0AgjNLJJ+pt+VLO6QvjB1Ka8TddhE/+UMUdi
 xSQkOYMvtg4eAeFEs9LWxmrgBXPu4gKhvfrCsRAwe8dqY1LjY7/kP5g76W3R++CBgu8t
 hRrUtiZ9QKgOSUbRMY4qRgAfNeqt4fJhElWChlTKlR+OvpSELAOvkFOVvC/KDE12dH23
 CixQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=A6wrK07m18vBz92aFXgDpxBS8gA3r3xl4zuOhpCZv1M=;
 b=KUGfWw6cEUVk/4zRXr2di8sTY0Krrx1j1sC7BVMMpfbySUJ/apZdFwcErHDv7/dd6U
 QxhyJYJpclc11lX7NxedKHV1hCmxEUpKmC268qSmnbyZir/5CEYSKMbdcUMHPyzr1UOF
 LFRavqf8fLyzSVFoHQ9zFM+As8P6vDo0sfbxg7ExVuG+A2iRU81VqkLfUvVUUTYYhsCv
 S2g9PNSsDUinMerM3M0WBnLd45WbAkpNv1wwB9wJB6db9m8iv3+xHAB1cGkAthgIbAHy
 YxcToqHt039DsV/5hLUae0VFw/AW/Xd3sjKzkReX3Gr4c31bg9ZXgMkv94r4NJQIRP+2
 yQiw==
X-Gm-Message-State: APjAAAXnBzQTjY36Ge9BhcfRiqnAUlVmEOp5uM2rLrZ+3K0jedzwgJjU
 Uzrej+RPucdpbho4P4H7ScM=
X-Google-Smtp-Source: APXvYqzVsPrvMha2ALY8t+t1yy/JX9yurW+MLgtDuk6hbCDgUbZis2lMZDlRK9hxuQv6Aaolg7kmjQ==
X-Received: by 2002:ac8:2bb3:: with SMTP id m48mr18901947qtm.218.1559491155744; 
 Sun, 02 Jun 2019 08:59:15 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.md.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id n7sm7378589qkd.53.2019.06.02.08.59.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 08:59:15 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/5] staging: kpc2000: kpc_spi: Assorted small fixes
Date: Sun,  2 Jun 2019 15:58:32 +0000
Message-Id: <cover.1559488571.git.gneukum1@gmail.com>
X-Mailer: git-send-email 2.21.0
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
Cc: devel@driverdev.osuosl.org, Geordan Neukum <gneukum1@gmail.com>,
 YueHaibing <yuehaibing@huawei.com>, Mao Wenan <maowenan@huawei.com>,
 linux-kernel@vger.kernel.org, Nathan Chancellor <natechancellor@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch set contains a few small fixups to the kpc_spi driver. There
is certainly nothing groundbreaking in this patch set. It is limited to
style fixups, removing unused things, and using the managed resource API
for mapping I/O space.

Geordan Neukum (5):
  staging: kpc2000: kpc_spi: Remove unnecessary consecutive newlines
  staging: kpc2000: kpc_spi: column-align switch and subordinate cases
  staging: kpc2000: kpc_spi: remove fifo_depth from kp_spi struct
  staging: kpc2000: kpc_spi: remove function kp_spi_bytes_per_word()
  staging: kpc2000: kpc_spi: use devm_* API to manage mapped I/O space

 drivers/staging/kpc2000/kpc2000_spi.c | 45 ++++++---------------------
 1 file changed, 9 insertions(+), 36 deletions(-)

-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
