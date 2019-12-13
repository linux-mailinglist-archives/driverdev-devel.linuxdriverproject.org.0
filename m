Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 99DAE11E333
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Dec 2019 13:06:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 41FFD872ED;
	Fri, 13 Dec 2019 12:06:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VvwF3FJCJ4RL; Fri, 13 Dec 2019 12:06:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0BACB872C3;
	Fri, 13 Dec 2019 12:06:29 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C7B211BF2AE
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A753C88500
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wQuKQhvhZZS9
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 07FF08843F
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:16 +0000 (UTC)
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: sr1MYDaOcwpRNiETQXxPK0uzFox+s0E2cHkj3IMF5dzSO/ej+yj781q4ZfXC7pOYPqn8iij1Y3
 F8HXWWgkH/X2lyk7rGrRJDA/HnLpkZVR7O9/2IovlGWFrmAN34n7d4t62DTkjasFjHYwVVwwAH
 LkvGGQcL6VZuflbLEurSvtdmnLzeaD8JiNUa3LN/yfb3of1YFgvjiYlCEZng8GdOJw5vlXJejY
 4Nqax0rFrr4jfU42WE/nUAT6n3ZhwT1UTpHWcocJHxSp1KwA+wQN8vYGN+C8mpseb86B9MpGk/
 jtE=
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="60276018"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Dec 2019 05:05:16 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Dec 2019 05:05:16 -0700
Received: from localhost.localdomain (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 13 Dec 2019 05:05:15 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH RFC v2 9/9] staging: most: Documentation: move ABI description
 files out of staging area
Date: Fri, 13 Dec 2019 13:04:22 +0100
Message-ID: <1576238662-16512-10-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576238662-16512-1-git-send-email-christian.gromm@microchip.com>
References: <1576238662-16512-1-git-send-email-christian.gromm@microchip.com>
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
