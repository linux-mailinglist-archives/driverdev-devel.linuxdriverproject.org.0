Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E58A363AC0
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jul 2019 20:22:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D5A4321FA9;
	Tue,  9 Jul 2019 18:22:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t7ejgSGPbp6p; Tue,  9 Jul 2019 18:22:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6179220789;
	Tue,  9 Jul 2019 18:22:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4F4D91BF4D8
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 18:22:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4C26585E07
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 18:22:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V9EtMly04Osr for <devel@linuxdriverproject.org>;
 Tue,  9 Jul 2019 18:21:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BD3D585E06
 for <devel@driverdev.osuosl.org>; Tue,  9 Jul 2019 18:21:59 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id cl9so10483335plb.10
 for <devel@driverdev.osuosl.org>; Tue, 09 Jul 2019 11:21:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/7SeunipKTPZ/+kbJegCG+IF0p5px4U+K64a01qXtbE=;
 b=sOurpNYCJgDeWdvGkMj8ayoABPRE6fc/4zOsZC7FyTAo8Tr+q1gjS4BcBv72AAs3a8
 UtGvCQrz7Z8RYFwMSpWwIz0cfoq5O82WShkcOmdIWpkjsWgSpNcDvNEiafl7UO/6CfP1
 W58CGB/DxmA52/5HglaJeRUzcXaCg231oj4dvcutHMlW+6WgWebC/cRRpE08FE0ChO2U
 cQ3T/gEQtah4pCv/pmweD6I1gkA37bNO0Al1gScGvbVoqNkPtg2zCLOfeRsVUkf7a8xD
 LkjUGWca7W4+mB9/BBjp/mdmeuf2ScqDH2yB96txiYab9HzIyqE+v9HhNcoFkntQkhvq
 Tmow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/7SeunipKTPZ/+kbJegCG+IF0p5px4U+K64a01qXtbE=;
 b=BzYBJRUsVwJUhz2maxyKh/PhrB0wHA/ZUk30EZ3c5WKqi3IyINTrlHDb768VFtD+H2
 ZjpO7aEP20n1hT/ox+RpF+CsShiAaJKLqp7TLiuv2qtughD330vVjTKocIYZzsLsruld
 GVK2GUlZ1O+n6dIU+/6oAOtQz5QO0eD5Q/M0ux3E1YB+ViOJegayFny9Sr5VVwR89gCX
 67hk2n8/QpiyU8pTXLvy+Za4TD+OCbDOvJ+p43qQK+9UQkcQv2vx3ygT/joObYVJpjFo
 HaNwguhdcNoocb+G+Mm+xI/3WIXU+tj9lY5QyOD4GF5vB762SxN9+LevR+JhptJZakT3
 kT9g==
X-Gm-Message-State: APjAAAVmMtU5qt84tL56S5c9+H4zZHDuCfR/dpmcaKk+zevaapFAjqlj
 tqh9OVe1apLmWnkgKfa9ffM=
X-Google-Smtp-Source: APXvYqypFlpEDviSy2ejpUywzPdVRNwYyo/yvYMiyCSTuDOWShCdGVsakrtlrPCv8wbj+TvDK+OTfA==
X-Received: by 2002:a17:902:86:: with SMTP id
 a6mr34117842pla.244.1562696519377; 
 Tue, 09 Jul 2019 11:21:59 -0700 (PDT)
Received: from localhost.localdomain ([2001:19f0:7001:2668:5400:1ff:fe62:2bbd])
 by smtp.gmail.com with ESMTPSA id m69sm21008639pga.11.2019.07.09.11.21.52
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 11:21:58 -0700 (PDT)
From: Chuanhong Guo <gch981213@gmail.com>
To: linux-clk@vger.kernel.org (open list:COMMON CLK FRAMEWORK),
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), linux-kernel@vger.kernel.org (open list),
 linux-mips@vger.kernel.org (open list:MIPS),
 devel@driverdev.osuosl.org (open list:STAGING SUBSYSTEM)
Subject: [PATCH 0/5] MIPS: ralink: add CPU clock detection for MT7621
Date: Wed, 10 Jul 2019 02:20:13 +0800
Message-Id: <20190709182018.23193-1-gch981213@gmail.com>
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
Cc: Mark Rutland <mark.rutland@arm.com>, Weijie Gao <hackpascal@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <sboyd@kernel.org>, James Hogan <jhogan@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
 Rob Herring <robh+dt@kernel.org>, John Crispin <john@phrozen.org>,
 NeilBrown <neil@brown.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patchset ports CPU clock detection for MT7621 from OpenWrt.

Last time I sent this, I forgot to add an binding include which
caused a compile error and the patch doesn't stay in linux-next.

This patchset resent the first two commits and also added binding
documentation for mt7621-pll and used it in mt7621-dts at
drivers/staging.

BTW: What should I do with such a patchset that touches multiple
parts in kernel?
Is it correct to send the entire patchset to lists of all involved
subsystems?

Chuanhong Guo (5):
  MIPS: ralink: add dt binding header for mt7621-pll
  MIPS: ralink: fix cpu clock of mt7621 and add dt clk devices
  dt: bindings: add mt7621-pll dt binding documentation
  staging: mt7621-dts: add dt nodes for mt7621-pll
  staging: mt7621-dts: fix register range of memc node in mt7621.dtsi

 .../bindings/clock/mediatek,mt7621-pll.txt    |  19 ++++
 arch/mips/include/asm/mach-ralink/mt7621.h    |  20 ++++
 arch/mips/ralink/mt7621.c                     | 102 ++++++++++++------
 arch/mips/ralink/timer-gic.c                  |   4 +-
 drivers/staging/mt7621-dts/mt7621.dtsi        |  17 ++-
 include/dt-bindings/clock/mt7621-clk.h        |  14 +++
 6 files changed, 134 insertions(+), 42 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt7621-pll.txt
 create mode 100644 include/dt-bindings/clock/mt7621-clk.h

-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
