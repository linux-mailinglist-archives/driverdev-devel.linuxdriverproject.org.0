Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6EE184FEB
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Mar 2020 21:09:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 04D938981E;
	Fri, 13 Mar 2020 20:09:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yjd4IBW7rQk2; Fri, 13 Mar 2020 20:09:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BB66189811;
	Fri, 13 Mar 2020 20:09:21 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 414351BF2C2
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 20:09:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3A75929437
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 20:09:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OIKx4K4gxSdX
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 20:09:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 28788204F9
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 20:09:18 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id z15so13668566wrl.1
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 13:09:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EndJ9yikfx8CJca8RV5Eu7Y5r/GT9pQBeLtsrOoipbc=;
 b=kjevuGsDi5NuScJ1kYmhywXB/GQnzZ234hkkyBR1yZsD6Vs0FEYKLfYMAfjPFTTRzI
 zq8b1sCOrZO8d6Fta/R6jiLUV8fuu4gMHGeW7z58I9Lgz8YLBTrI24sjJsCh4xvmhsCW
 bPk2pIV17uBc7tH7qbbT4LMOd1OnrvxTiMGoonyOuSPMeEMzb9e9g5aXOIeF/di5samN
 a1jLalYLzHC9CILRtG8HEmo73dfrw/myxpJeor/x9pt0lwHdf7RENTq5eobMFHR91on6
 gN17w8hirIMtm2JfVfU+SguxaBfSkWmivwGVCiF5rOZuJp3bzarC1be282e6OUrUilIO
 rfag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EndJ9yikfx8CJca8RV5Eu7Y5r/GT9pQBeLtsrOoipbc=;
 b=ELRlgwtNNExMcQxTyRYpTAqFxNvW2xYS2gblQABkvowTJ0mmYdK07qfgF68DvJWTnI
 Zt+qnswr1ZAGZg8K5pR9CZDd+GOZ+JUp+y8nogVMy3GiSuaxQ7+Do0kNR1fZmqDoRfGY
 S3Ac4QK2EQAVf8Vdn+emNBJcI4sVOuBb0U4oxLCCoVLYfdhWSPWECznVyjH9jG6ovdCE
 53J5VRmNjElQMCpkHvzafVRvBWtGDsz8xbbRr5mdORl3FFOUtMG3IHWDvAefrqV88t73
 lgw+/2f7D1EwYueygaCcTJIOuCXneDa8Pph11+RCojnJ8wxe7XsF9LtJwGCntu+cGxjI
 ruvg==
X-Gm-Message-State: ANhLgQ0zGss/0HbLKRKbdDU/fNmK+UEW6BxsW4jEr7K3YDzyBliA8uuS
 srYZDdj389WT/CnD5PJ1ccg=
X-Google-Smtp-Source: ADFU+vsMSGjA1zRFN2kbeGGHx7NXRhpIqIO1miIUXSiHvXocuM5zkY23jGmdzxLNx+xFL7Y7MqjfsA==
X-Received: by 2002:adf:afcb:: with SMTP id y11mr18574709wrd.141.1584130156407; 
 Fri, 13 Mar 2020 13:09:16 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id b187sm2249422wmc.14.2020.03.13.13.09.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 13 Mar 2020 13:09:15 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v4 0/6]  staging: mt7621-pci: re-do reset boot process
Date: Fri, 13 Mar 2020 21:09:07 +0100
Message-Id: <20200313200913.24321-1-sergio.paracuellos@gmail.com>
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

Changes in v4:
* Make use of 'devm_gpiod_get_index_optional' instead of 'devm_gpiod_get_index'.
* Use 'dev_err' instead of 'dev_notice' and return ERR_PTR if 
'devm_gpiod_get_index_optional' fails.
* Rename pers dealy macro to PERST_DELAY_MS.
* Add new patch 6 which removes function 'mt7621_reset_port' not needed anymore.

Changes in v3:
* Avoid to fail if gpio descriptor fails on get.
* re-do PATCH 1 commit message.
* Take into account gpio low polarity on request and assert and deassert.
* Review error path of driver to properly release gpio's resources.

Changes in v2:
* restore configuration for pers mode to GPIO.
* Avoid to read FTS_NUM register in reset state.
* Release gpio's patch added

Best regards,
    Sergio Paracuellos


Sergio Paracuellos (6):
  staging: mt7621-pci: use gpios for properly reset
  staging: mt7621-pci: change value for 'PERST_DELAY_MS'
  staging: mt7621-dts: make use of 'reset-gpios' property for pci
  staging: mt7621-pci: bindings: update doc accordly to last changes
  staging: mt7621-pci: release gpios after pci initialization
  staging: mt7621-pci: delete no more needed 'mt7621_reset_port'

 drivers/staging/mt7621-dts/mt7621.dtsi        |  11 +-
 .../mt7621-pci/mediatek,mt7621-pci.txt        |   7 +-
 drivers/staging/mt7621-pci/pci-mt7621.c       | 122 ++++++++++--------
 3 files changed, 82 insertions(+), 58 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
