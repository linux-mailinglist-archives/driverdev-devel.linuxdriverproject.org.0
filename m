Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0E017FA1F
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Mar 2020 14:03:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0135C2107F;
	Tue, 10 Mar 2020 13:03:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BXnmh8OHOrxQ; Tue, 10 Mar 2020 13:03:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7A23E2094D;
	Tue, 10 Mar 2020 13:02:59 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 434F41BF980
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Mar 2020 13:02:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3F84E2044D
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Mar 2020 13:02:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fScwxaXccZEQ
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Mar 2020 13:02:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by silver.osuosl.org (Postfix) with ESMTPS id 715D620797
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Mar 2020 13:02:53 +0000 (UTC)
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: +hA0kxkS+4xM6VHCygrWlr9PnLc8wrk46mGEpGHhpaW+0CokRjeAevkLVxaTaZkoBgaWjlXS0J
 TjeJckLT7+hM9gkWNeHp+Yuc3/mK4i0lVH9v7/BRvqIBO43OsrNwUbjllckPuusDkl483jVVpt
 URX9AZSULqRRkcOXx9V37cODxCUHfUNqF6azuAv1vPGiz9gMsRXI7s5JUoI/SOj6v1+E951FMB
 c3p6ZymwPiJs9ErakHWbnBSEzH6YauYTFY/NGQkggr419kF0rNaq2AEjuIL2kq1huzcG3Bt/pm
 Pi0=
X-IronPort-AV: E=Sophos;i="5.70,537,1574146800"; d="scan'208";a="68285745"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Mar 2020 06:02:49 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 10 Mar 2020 06:02:45 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 10 Mar 2020 06:02:47 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [RESEND PATCH v5 3/3] staging: most: Documentation: move ABI
 description files out of staging area
Date: Tue, 10 Mar 2020 14:02:42 +0100
Message-ID: <1583845362-26707-4-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583845362-26707-1-git-send-email-christian.gromm@microchip.com>
References: <1583845362-26707-1-git-send-email-christian.gromm@microchip.com>
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
Cc: Christian Gromm <christian.gromm@microchip.com>,
 driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch moves the ABI description fils sysfs-bus-most and
configfs-most to the kernel's documentation folder.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
v2:
v3:
v4:
v5: rebased and adapted

 .../ABI/configfs-most.txt => Documentation/ABI/testing/configfs-most      | 0
 .../ABI/sysfs-bus-most.txt => Documentation/ABI/testing/sysfs-bus-most    | 0
 2 files changed, 0 insertions(+), 0 deletions(-)
 rename drivers/staging/most/Documentation/ABI/configfs-most.txt => Documentation/ABI/testing/configfs-most (100%)
 rename drivers/staging/most/Documentation/ABI/sysfs-bus-most.txt => Documentation/ABI/testing/sysfs-bus-most (100%)

diff --git a/drivers/staging/most/Documentation/ABI/configfs-most.txt b/Documentation/ABI/testing/configfs-most
similarity index 100%
rename from drivers/staging/most/Documentation/ABI/configfs-most.txt
rename to Documentation/ABI/testing/configfs-most
diff --git a/drivers/staging/most/Documentation/ABI/sysfs-bus-most.txt b/Documentation/ABI/testing/sysfs-bus-most
similarity index 100%
rename from drivers/staging/most/Documentation/ABI/sysfs-bus-most.txt
rename to Documentation/ABI/testing/sysfs-bus-most
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
