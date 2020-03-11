Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1371814C1
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 10:27:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 81A42880C8;
	Wed, 11 Mar 2020 09:27:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3u1wwczyo+nx; Wed, 11 Mar 2020 09:27:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 61F8587F48;
	Wed, 11 Mar 2020 09:27:14 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4D2961BF5DB
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 09:27:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 477EF87F48
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 09:27:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SPSQNpezP-xp
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 09:27:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4C72A87E56
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 09:27:11 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id 11so1240592wmo.2
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 02:27:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FYIRwMbwuMlDlgXlLZQLUIVH6Gjg1lCj3RxDDjmvCVg=;
 b=YEHOnDJZoJ8n4/w6NcrX5S+IZBuYwbh8Zxwvb4EQuarn0F9pSyLl2cqKcojYDXdRBn
 FEgmAHwYfwS6MXFvG6jWbBfo6zIriVA8PL1yv2ICbIyU5LvwgzJiObpf7UAEE35OsHkG
 BTWAad3W6nC2w0D5XKkQbVdDhL57vfSN2J0jaM0G3fqVGn8JnI84SS/NKcCPLNnv9StS
 YZx4eCk+CbrBitroFuCyrCpXAX296Wn7hualb+pPgzeVylGpE1uuRO8Q/jT/tKYVHGYx
 D5oqFGjzOhtuPjaD663GKxQ1cF3sIEoH4T5ZVLDJ6hADrIiIcvXrd0LufjQawUfo4xo0
 BT8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FYIRwMbwuMlDlgXlLZQLUIVH6Gjg1lCj3RxDDjmvCVg=;
 b=DqQVzrPZuuoOQRNh/h5bASyyuDNL0OwuXG5vrQUbvN1wbEgK7TxtIWQ5J8Y6hism1f
 YU2czMyYesU2lfDfBvRXgzbZZmhunsNCMuR0X5GRm5dPM4cNqi7rU8b11o7FHq/lu2Ht
 NJSsojxVSoUhHIiAFNR8YW3+ujCF5XfLZKa2qc4+AMx4vipl78cl+QJ+JyzHCnKvr4tT
 0CDPMABYufG8QqZ/3Ze8lSPVh3U+9mHHo2STaVSPUixjsyM2Qvyn7f/W5zHsY+TFdhCs
 AENGOlgl35bBXNcsoNoIAs/Ji9NKw/VoagRXd8TicdntP7AMHRGLFzPWFtw1wPwgOvyj
 SiBw==
X-Gm-Message-State: ANhLgQ2/idJ0RZt5aead0PG0ENBbUSDV9Q6xM4k2c+kY/cEJokIuknR8
 xe6VO6qqnvR0f9PUrPa5xRk=
X-Google-Smtp-Source: ADFU+vvWbTQJ/IlzgbLpXKJRUymGKL9VqGjOASW1ImQzjNK5BCh8G1C9WagzR/LZSzqoEt8rWqkNqA==
X-Received: by 2002:a1c:b4c6:: with SMTP id d189mr2796145wmf.132.1583918829619; 
 Wed, 11 Mar 2020 02:27:09 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id v14sm33075156wrr.34.2020.03.11.02.27.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 11 Mar 2020 02:27:09 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/5] staging: mt7621-pci: re-do reset boot process
Date: Wed, 11 Mar 2020 10:27:02 +0100
Message-Id: <20200311092707.23454-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: ryder.lee@mediatek.com, driverdev-devel@linuxdriverproject.org,
 weijie.gao@mediatek.com, gerg@kernel.org, neil@brown.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Some time ago Greg Ungerer reported some random hangs using
the staging mt7621-pci driver:

See:
* http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2019-June/134947.html 

Try to fix that is the main motivation of this patch series.

Also in openwrt there is a driver for mt7621-pci which seems was rewritten
from scratch (for kernel 4.14) by Ryder Lee and Weijie Gao from mediatek. 
There the approach for reset assert-deassert process is to set as 'gpio'
the function for all the 'pcie' group for the pinctrl driver and use those
gpio's as a reset for the end points. The driver I am talking about is still
using legacy pci and legacy gpio kernel interfaces. IMHO, the correct thing
to do is make this staging driver properly clean and functional and put it
in its correct place in the mainline.

See:
* https://gist.github.com/dengqf6/7a9e9b4032d99f1a91dd9256c8a65c36

Because of all of this this patch series tries to avoid random hangs of boot
trying to use the 'reset-gpios' approach.

Changes are only compile tested.

Hope this helps.

Best regards,
    Sergio Paracuellos

Sergio Paracuellos (5):
  staging: mt7621-pci: use gpios for properly reset
  staging: mt7621-pci: change value for 'PERST_DELAY_US'
  staging: mt7621-pci: remove not used definitions
  staging: mt7621-dts: make use of 'reset-gpios' property for pci
  staging: mt7621-pci: bindings: update doc accordly to last changes

 drivers/staging/mt7621-dts/mt7621.dtsi        | 11 ++-
 .../mt7621-pci/mediatek,mt7621-pci.txt        |  7 +-
 drivers/staging/mt7621-pci/pci-mt7621.c       | 86 +++++++++++--------
 3 files changed, 62 insertions(+), 42 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
