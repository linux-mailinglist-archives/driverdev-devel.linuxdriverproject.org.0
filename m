Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 008332D2507
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 08:55:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9AE7387CB3;
	Tue,  8 Dec 2020 07:55:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R9Td8gJYXp8J; Tue,  8 Dec 2020 07:55:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B551787C4B;
	Tue,  8 Dec 2020 07:55:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1D6C31BF3F2
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 07:55:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 19DED871A7
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 07:55:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xpdCywj5DDfI for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 07:55:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 76538871A0
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 07:55:28 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id a6so1328114wmc.2
 for <devel@driverdev.osuosl.org>; Mon, 07 Dec 2020 23:55:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=y5t5X3T+9uiPlHL+SyLoVu8rBUqMKyK7LwZogvfh9xQ=;
 b=M0fx6VEn+BwLdieI5HZxETdtfhHwE6+xayRvMAyhaeey3fxefvmxZeXnMn6DUF1cs2
 7e5+R5Mj4y8lb8VAjmbV0sA94yeIrTXw0yAhPs8yRT+svhhfD6MgYgK7H3XMKcKsJrUI
 xgb5QIqbWJlv9NGc7QGydzgeiY8lw81hAF2dVJwZAJzl12tzkITSgKSY71TGwtt4sGk4
 ZTsRibdqxRYKHOWP1EfZlVPFqc1YhLBB8vUyxFXKkdoigrwi4Hy/zxaT1LVXwosKDiBd
 AzYCDQQwDavkaBhksJmfch0aLjdQi72eZEODGFarzm+PWg8PTxZRPg2bA13trV7O7j2j
 J6ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=y5t5X3T+9uiPlHL+SyLoVu8rBUqMKyK7LwZogvfh9xQ=;
 b=Suec6WLgEeXMxwGkQD4a5YBFL5wY0FbaYy6ElkRRugpx0F2lf57UtdM2VwL/0nmhvh
 jtHaB69GH2Yu6ncypzrKQ9xvSEhN1lGLc+j63pHw22eJY/W/ypmCpqgfX1+RpED5M1r1
 MlSZzrFfxQzdXeGv+Nthb50BCrCO/Ql6zAvkPbpv6PwzWqa+BzvMVnVGZ19rprfIAAwF
 yBlPImmJ2Kdp8mGNGR+9I2yp6juoDPGsOTpMb9viJlnILpEu+L/cQ037Jcg2dnna8yRo
 BihslGh0pu8ERF/ELmE9ElaxsuBdPXOlV9Jp34dozgfmcSvds1Qc52YXSLnJTsBxxfXF
 EJVQ==
X-Gm-Message-State: AOAM532FyoUUyrsB9ZXGRAjbuU5z0VRyY4uK/nwnejJ4eiDLyTZNFNdT
 LLHxuhF+soiuUpqvjsM1lF8=
X-Google-Smtp-Source: ABdhPJyAo8FAQ+FtdXkUzZb1YmqUvO0sIrjFeLfPOYPK971E4HkYcRn1akpF/3iXZ3r3RISicNfU5w==
X-Received: by 2002:a1c:7218:: with SMTP id n24mr2586630wmc.186.1607414126696; 
 Mon, 07 Dec 2020 23:55:26 -0800 (PST)
Received: from localhost.localdomain (188.red-81-44-87.dynamicip.rima-tde.net.
 [81.44.87.188])
 by smtp.gmail.com with ESMTPSA id h184sm1620735wmh.23.2020.12.07.23.55.25
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 07 Dec 2020 23:55:25 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: linus.walleij@linaro.org
Subject: [PATCH v2 0/2] pinctrl: ralink: pinctrl driver for the rt2880 family
Date: Tue,  8 Dec 2020 08:55:21 +0100
Message-Id: <20201208075523.7060-1-sergio.paracuellos@gmail.com>
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

Changes in v2:
    - Squash PATCH 2/3 and PATCH 3/3 in only one.
    - Put driver inside 'ralink' subdir of pinctrl.
    - Add Linus'Acked-by for driver after squashing two patches. 
    - Make changes suggested by Linus in bindings doc: [1].
      NOTE that I simplified but not removes if-clause because without
      that I am not be able to validate using 'dt_binding_check' with errors
      in all pinctrl nodes because are not of type 'object'.

Best regards,
    Sergio Paracuellos

[0]: http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2020-December/149178.html
[1]: http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2020-December/149204.html

*** BLURB HERE ***

Sergio Paracuellos (2):
  dt-bindings: pinctrl: rt2880: add binding document
  pinctrl: ralink: add a pinctrl driver for the rt2880 family

 .../pinctrl/ralink,rt2880-pinmux.yaml         | 70 +++++++++++++++++++
 drivers/pinctrl/Kconfig                       |  1 +
 drivers/pinctrl/Makefile                      |  1 +
 drivers/pinctrl/ralink/Kconfig                | 14 ++++
 .../ralink}/Makefile                          |  2 -
 .../ralink}/pinctrl-rt2880.c                  |  4 +-
 drivers/staging/Kconfig                       |  2 -
 drivers/staging/Makefile                      |  1 -
 drivers/staging/mt7621-pinctrl/Kconfig        |  6 --
 drivers/staging/mt7621-pinctrl/TODO           |  6 --
 10 files changed, 88 insertions(+), 19 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/ralink,rt2880-pinmux.yaml
 create mode 100644 drivers/pinctrl/ralink/Kconfig
 rename drivers/{staging/mt7621-pinctrl => pinctrl/ralink}/Makefile (66%)
 rename drivers/{staging/mt7621-pinctrl => pinctrl/ralink}/pinctrl-rt2880.c (99%)
 delete mode 100644 drivers/staging/mt7621-pinctrl/Kconfig
 delete mode 100644 drivers/staging/mt7621-pinctrl/TODO

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
