Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A326F20D069
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 19:36:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 09AD1207B0;
	Mon, 29 Jun 2020 17:36:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WCvGZL4r9rSn; Mon, 29 Jun 2020 17:36:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1517820408;
	Mon, 29 Jun 2020 17:36:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 081CE1BF34C
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 17:36:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 046D888770
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 17:36:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F89EQiDeuNnk for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 17:36:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 84E0888735
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 17:36:13 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id u8so8048330pje.4
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 10:36:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=G0sYP00DyHcgSiz/UpCj0vFSMqhUdJtVPzxSy22jFRs=;
 b=X8/CAFiDKcy1LRoopU/VXQqrF/ZXGGSBw4D5FArGbTOu2n4JamyvFgiWlugGFsqSWM
 /9xVgVu+f/ncxxEz0VlzZr31y1FxZzC8Jc+sF648c86tQga2eom8sl6/lfJxOcC2zbt3
 nfj2/wL562qfy3sqaGoUnWITVNcwjvE/Df3g3LcC+6PyutlOA9UrYFg+s4HWkAao31gd
 sjRuHnBD8imlkO9/NQEO6ZY6sbgFNfk5G7L7A3OtSQhS5yHQ7ZRroV6u+Zz/9N2L7ACz
 SpWvD/+s2hgECa2/k9Apgoa1nwhlGvHGZNScfJzhTUsFEHyivbspJCM5V40cttfUNNBU
 ti3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=G0sYP00DyHcgSiz/UpCj0vFSMqhUdJtVPzxSy22jFRs=;
 b=jPCF+TUtrjw13n1Z309W+1Aw70xuZowcx9gAaFTwsujOTWGJisxUCXUTrLyoGoV2RF
 AHXdg6M5g1Qg8RIUeQJ25pZ/hMN5X/nXJopWEwtORETm/8k45iqsDLMoDZ8NOPjMAS6g
 XpwFP+uLsaK2Rdl9Mf3oSRlxVDu2CdR4re3zu7O+U1FHluObHibpE4FP0u5bOZ4vdoLn
 PVRqQrA3RUNgbw3wvSZZIXIE2UZ+bwfPk30gTUoBegfmudzXmV1o4TzAt+/pP8p94Ns/
 bAtAOevBCr313zqVl2ookcChL7hQINkSPfPtPJNRD6w2CLsbXJ2HQwKCG0ZzvKesqbqL
 BBrw==
X-Gm-Message-State: AOAM531PbVs+G/bF24F02wylIm0ggPt/Pztq6dlXEC2mdvF2GMFe7ynz
 O846CEBJXzhZNQrzG0zl6a8=
X-Google-Smtp-Source: ABdhPJytPqaMuxgD0wTHbLQsj7ArRGy3HFUVO8WFw4oHOZsTmYK70wTx5FpJaZY3EXhIhz/1MrYa7A==
X-Received: by 2002:a17:90a:ac14:: with SMTP id
 o20mr11765030pjq.185.1593452173081; 
 Mon, 29 Jun 2020 10:36:13 -0700 (PDT)
Received: from varodek.iballbatonwifi.com ([103.105.153.57])
 by smtp.gmail.com with ESMTPSA id k23sm331461pgb.92.2020.06.29.10.36.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Jun 2020 10:36:12 -0700 (PDT)
From: Vaibhav Gupta <vaibhavgupta40@gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 bjorn@helgaas.com, Vaibhav Gupta <vaibhav.varodek@gmail.com>,
 Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 0/4] drivers/staging: use generic power management
Date: Mon, 29 Jun 2020 23:04:55 +0530
Message-Id: <20200629173459.262075-1-vaibhavgupta40@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: devel@driverdev.osuosl.org, Vaibhav Gupta <vaibhavgupta40@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 skhan@linuxfoundation.org, linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Linux Kernel Mentee: Remove Legacy Power Management.

The purpose of this patch series is to remove legacy power management callbacks
from amd ethernet drivers.

The callbacks performing suspend() and resume() operations are still calling
pci_save_state(), pci_set_power_state(), etc. and handling the power management
themselves, which is not recommended.

The conversion requires the removal of the those function calls and change the
callback definition accordingly and make use of dev_pm_ops structure.

All patches are compile-tested only.

v2: An error was reported by kbuild in v1. pci_set_master() function call in
drivers/staging/qlge/qlge_main.c, inside qlge_resume(), was passing argument
which got deprecated after upgrade to generic PM. The error is fixed in v2.

Vaibhav Gupta (4):
  qlge/qlge_main.c: use generic power management
  staging/rtl8192e: use generic power management
  rts5208/rtsx.c: use generic power management
  vt6655/device_main.c: use generic power management

 drivers/staging/qlge/qlge_main.c             | 38 ++++++--------------
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c |  5 +--
 drivers/staging/rtl8192e/rtl8192e/rtl_pm.c   | 26 ++++----------
 drivers/staging/rtl8192e/rtl8192e/rtl_pm.h   |  4 +--
 drivers/staging/rts5208/rtsx.c               | 30 +++++-----------
 drivers/staging/vt6655/device_main.c         | 25 ++++---------
 6 files changed, 37 insertions(+), 91 deletions(-)

-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
