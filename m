Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 012E64E070
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jun 2019 08:15:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BEA6F220EF;
	Fri, 21 Jun 2019 06:15:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eJVHUF-nYFUH; Fri, 21 Jun 2019 06:15:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5F04620352;
	Fri, 21 Jun 2019 06:15:24 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2DED81BF2C8
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:15:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 259D586B0B
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:15:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z+E4nuiCz0Lw
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:15:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 95EB386AEE
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 06:15:20 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id r16so5266942wrl.11
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 23:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=F+3gxN0P9wzm8p69IPrtl8CU8W+ydQyeQCmj28bnBQI=;
 b=YuMuDM19qBLzaDpKqiFL0ON7iPNidZ8PKntgSVdfbe0uAXWgR/CQQj3BERn+iMN6Cr
 EHo6YnkVjXVbux0Zhr9mo3CPpFuch6f6Opdr9OHRsjZ2Lx749vD4kU6kEsepdPicGW+R
 +ZtUgUwRyHe+WoMxONnS0TZ5WG7SQ1lzBF/j84XXlh0d+xFHRPjd3/jEMXAs6pr50JsA
 a/NnpBALkgBSbM8rUWpBPepA1xU8GUSlHhJlajYVFkNIxuElsgy17ghS/bNYhvm2jZLE
 NnUUz3Kq61+PJFTaQZKRZduBXbKkZfxbf2bOk6prKst/1MxuCE4n7TBj4/2xUlGhX8hp
 9IOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=F+3gxN0P9wzm8p69IPrtl8CU8W+ydQyeQCmj28bnBQI=;
 b=Xg6jE6bbYWRHAo0rarG6oa95pW8zpB16FBSJsnVaaBHCgx+8e9o66WkjKSDMeM8FF/
 15zDZX8gQFbJfAQVcJJ9MrhytWpCtFIsKCGYScOBcjszfucAwR5bA9RF31qCTGmLTK9c
 ot7nGWwA83NBSl7ibQOS86fsTQD0gJuUwTX8vOVa8vPVAjMiGSL3gyNUSWMPuTEVk8DH
 ijFQMdlIi+8DVbBZ1AyYcnKc5Ob/xkIF1TEDa761IIf+8S+A5oEXj27PaVHc/7guzuyQ
 3OoWMbTbSx1olPb4KnFaG47gwrsAco0qgS71g3knr/gsq/+oKAokGyeH08OWnBLmpOga
 Zp3g==
X-Gm-Message-State: APjAAAUlRkVFRG0RdMiqiLdvwghM3CMpTL1IVai6Hic6Bx5CT8N57NCn
 371PjdNlVBedVDNhy2HHGCA=
X-Google-Smtp-Source: APXvYqxLVV2PYlWgIDnaAJh1HgTxTP9vl/num/3n8fDn6VrFlUQ0qxyLvawfrPQh83+8iaEBil7Ipg==
X-Received: by 2002:adf:de90:: with SMTP id w16mr62368934wrl.217.1561097719206; 
 Thu, 20 Jun 2019 23:15:19 -0700 (PDT)
Received: from localhost.localdomain (34.red-88-0-78.dynamicip.rima-tde.net.
 [88.0.78.34])
 by smtp.gmail.com with ESMTPSA id a2sm2155519wmj.9.2019.06.20.23.15.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Jun 2019 23:15:18 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/4] staging: mt7621-pci: Handle minor issues
Date: Fri, 21 Jun 2019 08:15:13 +0200
Message-Id: <20190621061517.24089-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.19.1
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
Cc: neil@brown.name, driverdev-devel@linuxdriverproject.org, gerg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch series properly handle minor issues in this driver. These are:
* Disable pcie port clock on pci dirver instead of doing it in the phy
  driver. The pci driver is the correct place to do this.
* Add a missing call to phy_exit function to properly handle the function
  'mt7621_pcie_init_port' error path.
* Move driver to init in a later stage using 'module_init' instead of using
  'arch_initcall'.

Patches are only compile-tested. It would be awasome to be tested before applied
them (mainly the change to 'module_init' stuff).

Hope this helps.

Best regards,
    Sergio Paracuellos

Sergio Paracuellos (4):
  staging: mt7621-pci: disable pcie port clock if there is no pcie link
  staging: mt7621-pci: add phy exit call if phy_power_on call fails
  staging: mt7621-pci-phy: remove disable clock from the phy exit
    function
  staging: mt7621-pci: use 'module_init' instead of 'arch_initcall'

 drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c |  8 --------
 drivers/staging/mt7621-pci/pci-mt7621.c         | 10 +++++++++-
 2 files changed, 9 insertions(+), 9 deletions(-)

-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
