Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E5020CD48
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 10:29:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4D53188810;
	Mon, 29 Jun 2020 08:29:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 57THz1Q-qeQh; Mon, 29 Jun 2020 08:29:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C9323886CA;
	Mon, 29 Jun 2020 08:29:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BD8291BF2C0
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 08:29:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B9E5E87577
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 08:29:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jKJ9zT-3HAtd for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 08:29:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5AE0F87571
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 08:29:40 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id s14so6813577plq.6
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 01:29:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=j855cYiSGakl5HlD4KvWXf0FO1kVCBOsIjwxuw77YFY=;
 b=Qt7NBYtjMoTWLro+TnOOtAF4Xut4Vos3hIQ6uZCvtttqOvjE/15HTV1Qy1EOTFeq93
 S+V+eT7ed2ISAJHkug/YDQk6V00THDRnJhoP1B2JuD1Mq++HszZRGphCZAmchWsKyPrH
 +oTUXsOjLHsc4Xeb5gI57u8hju/lB2UWjt/F3+alaVcZ5+7N4cctz+aXXrcH5DRLub8Y
 7aaB/IV8A9oTT9hECIHuCDUuAXAgXqNfHrHq3m8ExHcMM1AMT/jSY9DAAL0AxT1fIALP
 azFzpZZoB+ctyf0c4R18B5TmXmacNW43LW5RA16OnX627iSH+NPPdh8QcVpTk9LYxQxU
 BhGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=j855cYiSGakl5HlD4KvWXf0FO1kVCBOsIjwxuw77YFY=;
 b=nQk+OSRL/qMiPrxun88MK/aXR4D3IgWNLYM8OYwiCHQaNFN6jbiSgxS2DL9EKzlj8o
 vR5bkJ6dAE6vR57LxJ4R5TPg2GBJaaP4TnS+0zgHNKyKVSzYOO6kCHCscGQFLhysAwvc
 EfpGyUmrgazcMuKpOqlAgt5lAZ7oKcEZqXXHWpMMbOE6k0m+IDe/a/OlPo5zIdwEZiX9
 9YDCBIZOuvMTxN14QaaRl0p/kqQZ1P3R6bCRlibaYf5oVdhrFRJdF0jp9uRUawm5ARsu
 nBBO6C/QN+RUXdKMyICRJ3s2LclCjQO1NxXE7Y+xzHT497S8zEhDyqwdY72S9sAzjs/O
 qZ1Q==
X-Gm-Message-State: AOAM5328K8owsW7dzxTIvuHuqkHrQYCGhLYIptZGh4o6J+rDB/W1DFuH
 +aRDx4mGVMZrYqGZ4R1HaaA=
X-Google-Smtp-Source: ABdhPJwm9mW0Fufp4shSPDWzVwPHl0w3nrVEErBgiMOkUomzsXXC/S8WUFdAwiXgffxdnBn4BOzsyQ==
X-Received: by 2002:a17:902:8342:: with SMTP id
 z2mr12605998pln.300.1593419379930; 
 Mon, 29 Jun 2020 01:29:39 -0700 (PDT)
Received: from varodek.localdomain ([106.210.40.90])
 by smtp.gmail.com with ESMTPSA id 202sm9133790pfw.84.2020.06.29.01.29.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Jun 2020 01:29:39 -0700 (PDT)
From: Vaibhav Gupta <vaibhavgupta40@gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 bjorn@helgaas.com, Vaibhav Gupta <vaibhav.varodek@gmail.com>,
 Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v1 0/4] drivers/staging: use generic power management
Date: Mon, 29 Jun 2020 13:58:15 +0530
Message-Id: <20200629082819.216405-1-vaibhavgupta40@gmail.com>
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

Vaibhav Gupta (4):
  qlge/qlge_main.c: use genric power management
  staging/rtl8192e: use generic power management
  rts5208/rtsx.c: use generic power management
  vt6655/device_main.c: use generic power management

 drivers/staging/qlge/qlge_main.c             | 36 +++++---------------
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c |  5 +--
 drivers/staging/rtl8192e/rtl8192e/rtl_pm.c   | 26 ++++----------
 drivers/staging/rtl8192e/rtl8192e/rtl_pm.h   |  4 +--
 drivers/staging/rts5208/rtsx.c               | 30 +++++-----------
 drivers/staging/vt6655/device_main.c         | 25 ++++----------
 6 files changed, 36 insertions(+), 90 deletions(-)

-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
