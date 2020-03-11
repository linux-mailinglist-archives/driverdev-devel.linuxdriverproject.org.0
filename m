Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0992E182158
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 19:58:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4B4D588A6B;
	Wed, 11 Mar 2020 18:58:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L0t1LcnkUjgL; Wed, 11 Mar 2020 18:58:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3515E887FD;
	Wed, 11 Mar 2020 18:58:16 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9EDE41BF400
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 18:58:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9B2578927D
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 18:58:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FApIlD7vCKcO
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 18:58:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BCDC389228
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 18:58:12 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id n15so4013755wrw.13
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 11:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wL1xyzeyNozE2dsZzwOEWhWfudMNapCeLfg64NONde0=;
 b=J+vKNFCrt4r+dqd873deg2wSzeRh9zWaIhgTxc4LbC68MskRhcHOoMtR1Bl9q+oRgb
 HbBYB7U7e0rfUsu7Hi1szZ+oKfyWRAcrNAXye2RaSK4F+tuzp/CEjgxcN9B42VLt/QlH
 j0GzYQSlVinORZINd1pL1yTf2XlV2IuVU3Eqk2BiOYr5CMpW4pWk7/DcQTmkKiDIQ9hm
 Y5Eep4GS9yPMQZWG3NY7OJ3UxbSv1RRgzFtzqX4wdSdf8rAyOhR8OOjkaf9ZpFU3guUz
 j3ui+E2/9PWlPpfTMoqclaeV1DLRK1b7LoA5xK1CGu1A5ti8rErSJVr3lTeS+7o6pz2Y
 qxVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wL1xyzeyNozE2dsZzwOEWhWfudMNapCeLfg64NONde0=;
 b=ZoqrIfEq7b3lfcxPnNbjXE1Lc/th2eIkBfYYVu2A/3bUENo7m2gc0nkKHdkPriM/H6
 GUqd1XVcgd+fDjZBswpFnhcfiawtsXFla80whOYaj0lE4UpxK7x2F4hdxS5FcTG9tdWI
 h5haPZUPlA9ENDIDNbsCqYtvi3u5GEFW9EiaqkXHnLLuYe+J2ZJcgL20394RMG6sXhjK
 2m/+WMkPaKuZJvCwnZIjN7sMoHRoy+ExVBN5xKn5AXRZx5hZlyLmklJw7NKf6xk4Wk/y
 iod7yfHKuhfx5dVbTgPyRLN7YW7e25qFMVMxeTd/x7LRa13CnJqnFw+gdLGsiP8MvHW0
 k6/g==
X-Gm-Message-State: ANhLgQ3MVHZuh//mcaOUnrlAqz9Xg1/j2GgwH5VgiO4yVVgz+13PW0RF
 5eqMQZtZRhBOND4EwAzbzB0=
X-Google-Smtp-Source: ADFU+vttQk/vY3qzTfhb7fplKRe41of1LDNv1rq/LhrwrxGw7HJs2Txv4c0aZNDkHEMfsxOY7VK3Ew==
X-Received: by 2002:a5d:4f85:: with SMTP id d5mr5851512wru.130.1583953091152; 
 Wed, 11 Mar 2020 11:58:11 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id n11sm38457120wrw.11.2020.03.11.11.58.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 11 Mar 2020 11:58:10 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 0/5] staging: mt7621-pci: re-do reset boot process
Date: Wed, 11 Mar 2020 19:58:03 +0100
Message-Id: <20200311185808.29166-1-sergio.paracuellos@gmail.com>
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

Changes are being tested by openwrt people and seems to work.

Hope this helps.

Changes in v2:
    * restore configuration for pers mode to GPIO.
    * Avoid to read FTS_NUM register in reset state.

Best regards,
    Sergio Paracuellos


Sergio Paracuellos (5):
  staging: mt7621-pci: use gpios for properly reset
  staging: mt7621-pci: change value for 'PERST_DELAY_US'
  staging: mt7621-dts: make use of 'reset-gpios' property for pci
  staging: mt7621-pci: bindings: update doc accordly to last changes
  staging: mt7621-pci: release gpios after pci initialization

 drivers/staging/mt7621-dts/mt7621.dtsi        | 11 ++-
 .../mt7621-pci/mediatek,mt7621-pci.txt        |  7 +-
 drivers/staging/mt7621-pci/pci-mt7621.c       | 94 ++++++++++++-------
 3 files changed, 72 insertions(+), 40 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
