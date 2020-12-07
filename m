Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A932D1951
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Dec 2020 20:21:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CCACA87047;
	Mon,  7 Dec 2020 19:21:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P86QkM8sw77i; Mon,  7 Dec 2020 19:21:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B97D786A54;
	Mon,  7 Dec 2020 19:21:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EC3571BF3F2
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 19:21:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E8BA7875F2
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 19:21:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F8-1gtQFjNza for <devel@linuxdriverproject.org>;
 Mon,  7 Dec 2020 19:21:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6D6C087560
 for <devel@driverdev.osuosl.org>; Mon,  7 Dec 2020 19:21:09 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id e25so307049wme.0
 for <devel@driverdev.osuosl.org>; Mon, 07 Dec 2020 11:21:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SegjRzTuCbPvQSuQPy/hbkcOF68wPXwUglzmO1J5ED8=;
 b=gT4gTiaQT/pW4/YyaleDJqypVqNfEx9POtEipKeN5tp9BlXkP7P7Y3oFNBQxMQaCHF
 6oJaFBUPFInYFaVvkKUjsiH6hzhUXtCUQRNfILL5Lt+f5wZLCj6q/ILxik0As0B2kmOU
 kE53n29xzy1zHVb9r0o0YNvRxtiGWUQLY8nlrtLGWqOxb6+0YSeAeEo/9hC9MDIlXSSl
 3X14FIzUXCSLvmZcjEVO3BYxA5hSXLSdlXODyzJG7CPi8vKLWKySLZxnzGxwk7qgJDtD
 nVZCo7vnILefxW5U9yVMar98Rs/DaklUcm/Qsxu07s9Y+CqGzbhZYeKwGv2lA0B3AxKR
 kx8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SegjRzTuCbPvQSuQPy/hbkcOF68wPXwUglzmO1J5ED8=;
 b=Ebawgzavat/8P+rM2cJpaJocE2t+aMIW98eDFTCxSqRq1Pcf34uUunmRg2jEsXeFc1
 Bt6Ry9I+2xKGtyHC8y5TMf3BfDZ8lh2kGz+fU21iSmRfQGCDEpleppr09qP6ZFIsP09O
 7RoohCHMy4Ll6o916/NUJXobB7X4XXnwhtPYQFRdidOWNb48fdyZtpyQYvYfa+poxaKh
 Oqw9fyphTfFocV15WAY8ArbhCEdSU6S3GHG43k3FHTbR2T0/rd6aWiGNe0U4UOnHo/Gy
 yV+LQo9lflDfCC9iMY5wBn9ZIAvH6oML+o3d5haVS7SgNYitiYLpvz2xDzYPxYG/3dmY
 tc4Q==
X-Gm-Message-State: AOAM530MG1qxyh1JiiuD1rUnxbEvNenK2bdFqMrv+ixmo+bxeWHZ5qJo
 Zoam2p3HHGuKSeq2S6kW8X0=
X-Google-Smtp-Source: ABdhPJyC7QeC7BrqBhKfRoq2ZF3wmNzjD34rBcGtrwA/imEzIdwPuxBhyyXZdXU48yjXVpMnmtM44A==
X-Received: by 2002:a1c:7e0b:: with SMTP id z11mr376185wmc.16.1607368867696;
 Mon, 07 Dec 2020 11:21:07 -0800 (PST)
Received: from localhost.localdomain (188.red-81-44-87.dynamicip.rima-tde.net.
 [81.44.87.188])
 by smtp.gmail.com with ESMTPSA id 20sm276978wmk.16.2020.12.07.11.21.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 07 Dec 2020 11:21:06 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: linus.walleij@linaro.org
Subject: [PATCH 0/3] pinctrl: ralink: pinctrl driver for the rt2880 family
Date: Mon,  7 Dec 2020 20:21:01 +0100
Message-Id: <20201207192104.6046-1-sergio.paracuellos@gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org, yanaijie@huawei.com,
 gregkh@linuxfoundation.org, linux-gpio@vger.kernel.org, robh+dt@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This series adds a pinctrl driver for ralink rt2880 SoC.

After last cleanup in staging I was told [0] this driver is ready to be
promoted from staging.

This series are rebased on the top of staging-testing.

Thanks in advance for your time.

Best regards,
    Sergio Paracuellos

[0]: http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2020-December/149178.html
Sergio Paracuellos (3):
  dt-bindings: pinctrl: rt2880: add binding document
  pinctrl: ralink: add a pinctrl driver for the rt2880 family
  staging: mt7621-pinctrl: remove driver from staging

 .../pinctrl/ralink,rt2880-pinmux.yaml         | 82 +++++++++++++++++++
 drivers/pinctrl/Kconfig                       |  6 ++
 drivers/pinctrl/Makefile                      |  1 +
 .../pinctrl-rt2880.c                          |  0
 drivers/staging/Kconfig                       |  2 -
 drivers/staging/Makefile                      |  1 -
 drivers/staging/mt7621-pinctrl/Kconfig        |  6 --
 drivers/staging/mt7621-pinctrl/Makefile       |  4 -
 drivers/staging/mt7621-pinctrl/TODO           |  6 --
 9 files changed, 89 insertions(+), 19 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/ralink,rt2880-pinmux.yaml
 rename drivers/{staging/mt7621-pinctrl => pinctrl}/pinctrl-rt2880.c (100%)
 delete mode 100644 drivers/staging/mt7621-pinctrl/Kconfig
 delete mode 100644 drivers/staging/mt7621-pinctrl/Makefile
 delete mode 100644 drivers/staging/mt7621-pinctrl/TODO

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
