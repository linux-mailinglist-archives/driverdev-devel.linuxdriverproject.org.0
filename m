Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 702FBCF0F1
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 04:51:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 63C36872E9;
	Tue,  8 Oct 2019 02:51:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4vA5+qMl23sf; Tue,  8 Oct 2019 02:51:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1998286AEE;
	Tue,  8 Oct 2019 02:51:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 50C361BF2B7
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 02:51:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4D602859B1
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 02:51:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WVH2Kk7jTuJp for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 02:51:22 +0000 (UTC)
X-Greylist: delayed 03:17:36 by SQLgrey-1.7.6
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
 (mail-eopbgr760121.outbound.protection.outlook.com [40.107.76.121])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E6F7A8598B
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 02:51:21 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BpzXW9g+Ef75VOCZElEAUoKU6xMWIZR/5kIr5pdDniTQx00tuXxxXapCHCgtGtWirYT56dxGc2GEjYRuZv4hb/g2eyw2OFaXjY+mAihW0rl3Rv181fOL4oOBZlObyn/Oix2O7TjrD6Y76P9xJo+8dDDSJ0d6DnYiyU5aYDTWTB6II5RiljudzkvxnVcIzPkcoGXDrJ03ehtRXPiV72tGp0rT9asFrUQQFyyezC4UTprtwZRv5p1ZmZme+MCGKHaM76L88PZZ+6CM43QESVmhwn122JRVNRpSmj0Nrnw6am2qBiiLAgYn62Jb8ptieRF7QmAWzWn72TEKDDNDlL3Gpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DVuydUpP/ytwpgLVGagQM9NYG1nqPxS+6NcT1OwEgYI=;
 b=Vg/h1wbkCcEQQPVJI5RT0VxT4KSdPCu8OxAvPYzADZ3P+KQHD3l9iBGrRHw/7gI+N88cSz//2z1dV8g14rEBXufTlzmqO0/eIsYahiLvF87Y9y6U5p4O82uOhMWRoNnODj93X913ZE7TNkRfhHumt4mgvY5caDAWDwUSjg/7M/0PlXpoKe3oZZQPcJNHxPJc5kOdRikmPgWKJa8LzNolqw4jTJbTqwU3fG3Ljei4B/j2Q9dOlia0dCx1K8P9xm/29JPMBmnG9NSSX96EpNJlI9DzoLBYLhj1AHsdR/xuXIx170r0/IkUAdi2XqQNwD91IX29Zcm2i03OPfAUUJbhGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wavecomp.com; dmarc=pass action=none header.from=mips.com;
 dkim=pass header.d=mips.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wavecomp.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DVuydUpP/ytwpgLVGagQM9NYG1nqPxS+6NcT1OwEgYI=;
 b=lKgg9ZjO7RNb/KUuhwOsKyn3PKTje04TOIwDyvDNlCKmdnHG6u3hwlcsQFCTf37MpwAO24ZUWrIwKzKv0UKeTjeFSdDqsVdBZUXUxg86lqTgRIgt4P8+uSUkTOn+JvPMFVBqm+ju7S43GYL1i6fwJyQgG4iIcyDbbVZt+R8b6qU=
Received: from CY4PR2201MB1272.namprd22.prod.outlook.com (10.171.214.23) by
 CY4PR2201MB1096.namprd22.prod.outlook.com (10.171.223.34) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Mon, 7 Oct 2019 23:18:06 +0000
Received: from CY4PR2201MB1272.namprd22.prod.outlook.com
 ([fe80::9987:ed50:7ca7:d232]) by CY4PR2201MB1272.namprd22.prod.outlook.com
 ([fe80::9987:ed50:7ca7:d232%8]) with mapi id 15.20.2327.025; Mon, 7 Oct 2019
 23:18:06 +0000
From: Paul Burton <paul.burton@mips.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging/octeon: Use stubs for MIPS && !CAVIUM_OCTEON_SOC
Thread-Topic: [PATCH] staging/octeon: Use stubs for MIPS && !CAVIUM_OCTEON_SOC
Thread-Index: AQHVfWV5h/4dLnhlLUKkJHMTdL4W6Q==
Date: Mon, 7 Oct 2019 23:18:06 +0000
Message-ID: <20191007231741.2012860-1-paul.burton@mips.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR01CA0038.prod.exchangelabs.com (2603:10b6:a03:94::15)
 To CY4PR2201MB1272.namprd22.prod.outlook.com
 (2603:10b6:910:6e::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pburton@wavecomp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.23.0
x-originating-ip: [73.93.155.166]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 10a9a7e4-7774-4786-a772-08d74b7c9bc6
x-ms-traffictypediagnostic: CY4PR2201MB1096:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR2201MB1096EF9D72CE1809990DA7FFC19B0@CY4PR2201MB1096.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01834E39B7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(396003)(346002)(366004)(39840400004)(376002)(199004)(189003)(6916009)(66066001)(966005)(2906002)(71200400001)(25786009)(316002)(71190400001)(478600001)(256004)(7736002)(5660300002)(14454004)(1076003)(102836004)(99286004)(52116002)(26005)(305945005)(44832011)(386003)(42882007)(6506007)(2616005)(486006)(6306002)(476003)(6486002)(6512007)(186003)(4326008)(6436002)(36756003)(6116002)(54906003)(81156014)(81166006)(50226002)(8936002)(64756008)(66946007)(66476007)(66556008)(8676002)(66446008)(3846002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR2201MB1096;
 H:CY4PR2201MB1272.namprd22.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: wavecomp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rwrMWNss/tZluCIMIljKtmdfmy/Hq9ULJoWQH2l5qG+q2sTuwhGafEuvKgqViYOS1N6PlArked0IyLPSbt2yV/FCqAjD7o5QrjXmhJlNtpbvEpCWSrqQhSHz435RLHfJEzGpHqv3S+240+t4M8gDVzgZ8TX/KG/vptb1sD/ONnwhk7B4ceXWVcTe+IiBDdpDqkxF8viFmvoddqOx+GOjoF5R23H/mHoxniiGmbPbh2apJDfO9hEc7AP60MWxtw+c1+HsBh0e/5cJVC3AR5dZhhBub7O21MMor6ogQ6Ykl2pSHW0wZA399J4Z4WBgASn4YZ5Wt6ngk4Qa9P4zz9u4tQb171yG9QvrCJ2czKqfzKZw7Nyzmyrw7y6qGMYYKuIUxto/Gcox+LM8ToDcUkPjkD+Tna9aUuLu+Wb21r6xdFIRfZ3XuXhqq2qE2MB34n0qkTWjGhw1wnr+Q+mVTLsvnw==
MIME-Version: 1.0
X-OriginatorOrg: mips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10a9a7e4-7774-4786-a772-08d74b7c9bc6
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2019 23:18:06.1678 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 463607d3-1db3-40a0-8a29-970c56230104
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AR7ktAf+mwSsbPixOhYLMVLrtfkczh54cMubnD2YQjYu0fOHLPv7MgjBf+5UNca0bXpABn+OAU+RqRHThzl5zg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR2201MB1096
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Paul Burton <pburton@wavecomp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When building for a non-Cavium MIPS system with COMPILE_TEST=y, the
Octeon ethernet driver hits a number of issues due to use of macros
provided only for CONFIG_CAVIUM_OCTEON_SOC=y configurations. For
example:

  drivers/staging/octeon/ethernet-rx.c:190:6: error:
    'CONFIG_CAVIUM_OCTEON_CVMSEG_SIZE' undeclared (first use in this function)
  drivers/staging/octeon/ethernet-rx.c:472:25: error:
    'OCTEON_IRQ_WORKQ0' undeclared (first use in this function)

These come from various asm/ headers that a non-Octeon build will be
using a non-Octeon version of.

Fix this by using the octeon-stubs.h header for non-Cavium MIPS builds,
and only using the real asm/octeon/ headers when building a Cavium
Octeon kernel configuration.

This requires that octeon-stubs.h doesn't redefine XKPHYS_TO_PHYS, which
is defined for MIPS by asm/addrspace.h which is pulled in by many other
common asm/ headers.

Signed-off-by: Paul Burton <paul.burton@mips.com>
Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
URL: https://lore.kernel.org/linux-mips/CAMuHMdXvu+BppwzsU9imNWVKea_hoLcRt9N+a29Q-QsjW=ip2g@mail.gmail.com/
Fixes: 171a9bae68c7 ("staging/octeon: Allow test build on !MIPS")
Cc: Matthew Wilcox (Oracle) <willy@infradead.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: David S. Miller <davem@davemloft.net>

---

 drivers/staging/octeon/octeon-ethernet.h | 2 +-
 drivers/staging/octeon/octeon-stubs.h    | 5 ++++-
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/octeon/octeon-ethernet.h b/drivers/staging/octeon/octeon-ethernet.h
index a8a864b40913..042220d86d33 100644
--- a/drivers/staging/octeon/octeon-ethernet.h
+++ b/drivers/staging/octeon/octeon-ethernet.h
@@ -14,7 +14,7 @@
 #include <linux/of.h>
 #include <linux/phy.h>
 
-#ifdef CONFIG_MIPS
+#ifdef CONFIG_CAVIUM_OCTEON_SOC
 
 #include <asm/octeon/octeon.h>
 
diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index a4ac3bfb62a8..c7ff90207f8a 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -1,5 +1,8 @@
 #define CONFIG_CAVIUM_OCTEON_CVMSEG_SIZE	512
-#define XKPHYS_TO_PHYS(p)			(p)
+
+#ifndef XKPHYS_TO_PHYS
+# define XKPHYS_TO_PHYS(p)			(p)
+#endif
 
 #define OCTEON_IRQ_WORKQ0 0
 #define OCTEON_IRQ_RML 0
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
