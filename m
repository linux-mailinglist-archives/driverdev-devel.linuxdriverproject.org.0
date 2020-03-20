Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9031A18D56A
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 18:11:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C88D7875F6;
	Fri, 20 Mar 2020 17:11:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KFpBqDxNOUkQ; Fri, 20 Mar 2020 17:11:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B369687613;
	Fri, 20 Mar 2020 17:11:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E6DC81BF2BB
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 17:11:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E04578793D
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 17:11:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CnrBn8gHyM7D for <devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 17:11:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C85AB87929
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 17:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1584724283;
 bh=dhClDF1a4LE2F7BqRpiBNaaGfrCxQllUOENuzIJ/yYk=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=HA3vusQyarF2TmMy/VD/ow5PTeUPpIf2uZzbr7EFGdmytuZRnDZxXPsE6pkcMOod5
 XmZxAcsOY3xMWTG4BjKkvJB6tq7WdCzEuCi2tb5WwJcInCp0NE0oskqcCc8apAjChO
 pX+6PNoaefLcN/UkWCQN+jWaZuS2fEYW/wzmjqAM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx104 [212.227.17.174]) with ESMTPSA (Nemesis) id
 1MrQJ5-1jasfs2N9z-00oZBS; Fri, 20 Mar 2020 18:11:23 +0100
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: vt6656: Use BIT() macro instead of hex value
Date: Fri, 20 Mar 2020 18:10:56 +0100
Message-Id: <20200320171056.7841-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:92w7gSYeEnEzsknxXXBaHK13itynhPn2bYRvGAxR8GeijZbsh1r
 32ssH2ZfkAgLE0fCJVDEQjTuKs/L7hYaz48w31xAI5eKLnF0gceCoiRFNpdtCKGgkD1MWZ4
 L9CBS3pBBn85Fjap42u2oNxnrpzrz07jemUb8Uaf/iGB2EUtazNLokhCt/XWkBgPgDqwask
 4UNRmE/UpiHkRDRogKh+g==
X-UI-Out-Filterresults: notjunk:1;V03:K0:NoOHDd7kr/M=:OJP1XMxFbTgY28iuZXgGw5
 XoKSXjz5XlVG9FBow1Py12F08bpIPYIfFSfMxdnWJUai4Yr6vahJumwqCIq6ImLRjAFOQmoyg
 ynfaDXUVmMxg0icN8VzpeZj+lGM+HfRKjHzieet+lW6/Anw926eh02Joy21I0EKoiL2ue+Av/
 s5SEgb7IP53Dgx9hRbaptv+jl2j4Bkr8LKUSjw1XtB3Bdctaqc2uhPniFcG1pH4fpEjiDKhd+
 eGoVJInG2MGe0CUl0XM/kfkJRCfDGPPksbkcFAhAtJsnSnEMjswiQXPZurPBcvdDBqkcUeY/3
 7Ce02NRI09Abw6jJtSbLClv4bU4GboBFMU7/Algb6CFhI6EIFdM/yc59TL5Cr+SE7I8Gxg/s8
 HnWnKLDXaqXvmGPza00z0VfdnHSJuk5P1BlGGACHpPItYb/+Ybyv/6NLZax4+rr2d/3KMFcW5
 Q2KQc5lfV7s1wogSrL99rp+u5r7nJad3FM9o8Ptb3CMdqX33A2ZiWYnfyE2i0GxMmB6uODXl0
 BuNbVA5G0YCj/PyKbF3okAuG1cnSMd/GYxfO6Z6JVjpn+Exgr6P0sjFlf5lbpk7W2N9jxHFsd
 Gjs/sJSFeiO4M4pQEwelK9qy/n4GacgoViELHOkzCy1cksyS6BlqKpkv8tmyx4SU1UxWzO0cU
 0hbk4iUPVA4nS9uaL+gguCxjjzM3ztJdpLzHavusxUlYSU1gT++T38G/XRAGB3kNNeYbSraiB
 DgHElrYNbQWkYaUQ6/R65Cw7qtQaoaRbxuSK4QNkrXDo1OomtYjM/W5QetCJSanrg7phAQdd3
 c3Tda7ht+tJh0ckcQ7rgSoO2yN/btZYFgiCe5sY81BQsQDwPJ0smj1uVAFbsEPRrWMSktXVf3
 mGD6NvVI8d4Kqbpn9GaR9DyAdbG06hkY/vSPON/NZDh0sllRPwbb2eV1DTW2Gq0KfiIufRVTk
 tNa6g+VCMhx2cPGZ2MCp43TTG/wAx92dVmzUi29dcOsaupG9TDv5ER/q0GrKapkuAKf0Trpc1
 ENjQlRDfhEwbz1nGJbT6iB2OCgewd+lO8iYej+JtxlYiUFDi69p4S6Dim6QRD7oU1s/sStUNd
 Ouaee4P/QoER6Mt/VOpkTskhcf5dCeOMS0iFEOA79aIZfu3jBlEPhyBrbr8iB2V1iZtR7ZfRa
 KqGOh5eBqexPEKon9qEr3ibXDAaUxKRVXWW6zwK5pKXnipB6zeFub3yKoB/5tcYCyzuBHep1M
 tDH0gZXpuGB4gxyMA
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, Mukesh Ojha <mojha@codeaurora.org>,
 linux-kernel@vger.kernel.org, Ojaswin Mujoo <ojaswin25111998@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use the BIT() macro instead of the hexadecimal value to define the
different bits in registers.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/desc.h   |  35 ++---
 drivers/staging/vt6656/device.h |   9 +-
 drivers/staging/vt6656/mac.h    | 263 ++++++++++++++++----------------
 3 files changed, 155 insertions(+), 152 deletions(-)

diff --git a/drivers/staging/vt6656/desc.h b/drivers/staging/vt6656/desc.h
index 3a83a9ea9a2a..703597a911f4 100644
--- a/drivers/staging/vt6656/desc.h
+++ b/drivers/staging/vt6656/desc.h
@@ -18,6 +18,7 @@
 #ifndef __DESC_H__
 #define __DESC_H__

+#include <linux/bits.h>
 #include <linux/types.h>
 #include <linux/mm.h>

@@ -36,32 +37,32 @@
 /*
  * bits in the RSR register
  */
-#define RSR_ADDRBROAD       0x80
-#define RSR_ADDRMULTI       0x40
+#define RSR_ADDRBROAD       BIT(7)
+#define RSR_ADDRMULTI       BIT(6)
 #define RSR_ADDRUNI         0x00
-#define RSR_IVLDTYP         0x20        /* invalid packet type */
-#define RSR_IVLDLEN         0x10        /* invalid len (> 2312 byte) */
-#define RSR_BSSIDOK         0x08
-#define RSR_CRCOK           0x04
-#define RSR_BCNSSIDOK       0x02
-#define RSR_ADDROK          0x01
+#define RSR_IVLDTYP         BIT(5)	/* invalid packet type */
+#define RSR_IVLDLEN         BIT(4)	/* invalid len (> 2312 byte) */
+#define RSR_BSSIDOK         BIT(3)
+#define RSR_CRCOK           BIT(2)
+#define RSR_BCNSSIDOK       BIT(1)
+#define RSR_ADDROK          BIT(0)

 /*
  * bits in the new RSR register
  */
-#define NEWRSR_DECRYPTOK    0x10
-#define NEWRSR_CFPIND       0x08
-#define NEWRSR_HWUTSF       0x04
-#define NEWRSR_BCNHITAID    0x02
-#define NEWRSR_BCNHITAID0   0x01
+#define NEWRSR_DECRYPTOK    BIT(4)
+#define NEWRSR_CFPIND       BIT(3)
+#define NEWRSR_HWUTSF       BIT(2)
+#define NEWRSR_BCNHITAID    BIT(1)
+#define NEWRSR_BCNHITAID0   BIT(0)

 /*
  * bits in the TSR register
  */
-#define TSR_RETRYTMO        0x08
-#define TSR_TMO             0x04
-#define TSR_ACKDATA         0x02
-#define TSR_VALID           0x01
+#define TSR_RETRYTMO        BIT(3)
+#define TSR_TMO             BIT(2)
+#define TSR_ACKDATA         BIT(1)
+#define TSR_VALID           BIT(0)

 #define FIFOCTL_AUTO_FB_1   0x1000
 #define FIFOCTL_AUTO_FB_0   0x0800
diff --git a/drivers/staging/vt6656/device.h b/drivers/staging/vt6656/device.h
index fe6c11266123..45faf0ab9f62 100644
--- a/drivers/staging/vt6656/device.h
+++ b/drivers/staging/vt6656/device.h
@@ -16,6 +16,7 @@
 #ifndef __DEVICE_H__
 #define __DEVICE_H__

+#include <linux/bits.h>
 #include <linux/module.h>
 #include <linux/kernel.h>
 #include <linux/slab.h>
@@ -129,12 +130,12 @@
 #define EEP_OFS_OFDMA_PWR_TBL	0x50

 /* Bits in EEP_OFS_ANTENNA */
-#define EEP_ANTENNA_MAIN	0x1
-#define EEP_ANTENNA_AUX		0x2
-#define EEP_ANTINV		0x4
+#define EEP_ANTENNA_MAIN	BIT(0)
+#define EEP_ANTENNA_AUX		BIT(1)
+#define EEP_ANTINV		BIT(2)

 /* Bits in EEP_OFS_RADIOCTL */
-#define EEP_RADIOCTL_ENABLE	0x80
+#define EEP_RADIOCTL_ENABLE	BIT(7)

 /* control commands */
 #define MESSAGE_TYPE_READ		0x1
diff --git a/drivers/staging/vt6656/mac.h b/drivers/staging/vt6656/mac.h
index 0a42308b81e9..c532b27de37f 100644
--- a/drivers/staging/vt6656/mac.h
+++ b/drivers/staging/vt6656/mac.h
@@ -20,6 +20,7 @@
 #ifndef __MAC_H__
 #define __MAC_H__

+#include <linux/bits.h>
 #include "device.h"

 #define REV_ID_VT3253_A0	0x00
@@ -142,109 +143,109 @@
 #define MAC_REG_RSPINF_A_72	0xfc

 /* Bits in the I2MCFG EEPROM register */
-#define I2MCFG_BOUNDCTL		0x80
-#define I2MCFG_WAITCTL		0x20
-#define I2MCFG_SCLOECTL		0x10
-#define I2MCFG_WBUSYCTL		0x08
-#define I2MCFG_NORETRY		0x04
-#define I2MCFG_I2MLDSEQ		0x02
-#define I2MCFG_I2CMFAST		0x01
+#define I2MCFG_BOUNDCTL		BIT(7)
+#define I2MCFG_WAITCTL		BIT(5)
+#define I2MCFG_SCLOECTL		BIT(4)
+#define I2MCFG_WBUSYCTL		BIT(3)
+#define I2MCFG_NORETRY		BIT(2)
+#define I2MCFG_I2MLDSEQ		BIT(1)
+#define I2MCFG_I2CMFAST		BIT(0)

 /* Bits in the I2MCSR EEPROM register */
-#define I2MCSR_EEMW		0x80
-#define I2MCSR_EEMR		0x40
-#define I2MCSR_AUTOLD		0x08
-#define I2MCSR_NACK		0x02
-#define I2MCSR_DONE		0x01
+#define I2MCSR_EEMW		BIT(7)
+#define I2MCSR_EEMR		BIT(6)
+#define I2MCSR_AUTOLD		BIT(3)
+#define I2MCSR_NACK		BIT(1)
+#define I2MCSR_DONE		BIT(0)

 /* Bits in the TMCTL register */
-#define TMCTL_TSUSP		0x04
-#define TMCTL_TMD		0x02
-#define TMCTL_TE		0x01
+#define TMCTL_TSUSP		BIT(2)
+#define TMCTL_TMD		BIT(1)
+#define TMCTL_TE		BIT(0)

 /* Bits in the TFTCTL register */
-#define TFTCTL_HWUTSF		0x80
-#define TFTCTL_TBTTSYNC		0x40
-#define TFTCTL_HWUTSFEN		0x20
-#define TFTCTL_TSFCNTRRD	0x10
-#define TFTCTL_TBTTSYNCEN	0x08
-#define TFTCTL_TSFSYNCEN	0x04
-#define TFTCTL_TSFCNTRST	0x02
-#define TFTCTL_TSFCNTREN	0x01
+#define TFTCTL_HWUTSF		BIT(7)
+#define TFTCTL_TBTTSYNC		BIT(6)
+#define TFTCTL_HWUTSFEN		BIT(5)
+#define TFTCTL_TSFCNTRRD	BIT(4)
+#define TFTCTL_TBTTSYNCEN	BIT(3)
+#define TFTCTL_TSFSYNCEN	BIT(2)
+#define TFTCTL_TSFCNTRST	BIT(1)
+#define TFTCTL_TSFCNTREN	BIT(0)

 /* Bits in the EnhanceCFG_0 register */
 #define EnCFG_BBType_a		0x00
-#define EnCFG_BBType_b		0x01
-#define EnCFG_BBType_g		0x02
-#define EnCFG_BBType_MASK	0x03
-#define EnCFG_ProtectMd		0x20
+#define EnCFG_BBType_b		BIT(0)
+#define EnCFG_BBType_g		BIT(1)
+#define EnCFG_BBType_MASK	(BIT(0) | BIT(1))
+#define EnCFG_ProtectMd		BIT(5)

 /* Bits in the EnhanceCFG_1 register */
-#define EnCFG_BcnSusInd		0x01
-#define EnCFG_BcnSusClr		0x02
+#define EnCFG_BcnSusInd		BIT(0)
+#define EnCFG_BcnSusClr		BIT(1)

 /* Bits in the EnhanceCFG_2 register */
-#define EnCFG_NXTBTTCFPSTR	0x01
-#define EnCFG_BarkerPream	0x02
-#define EnCFG_PktBurstMode	0x04
+#define EnCFG_NXTBTTCFPSTR	BIT(0)
+#define EnCFG_BarkerPream	BIT(1)
+#define EnCFG_PktBurstMode	BIT(2)

 /* Bits in the CFG register */
-#define CFG_TKIPOPT		0x80
-#define CFG_RXDMAOPT		0x40
-#define CFG_TMOT_SW		0x20
-#define CFG_TMOT_HWLONG		0x10
+#define CFG_TKIPOPT		BIT(7)
+#define CFG_RXDMAOPT		BIT(6)
+#define CFG_TMOT_SW		BIT(5)
+#define CFG_TMOT_HWLONG		BIT(4)
 #define CFG_TMOT_HW		0x00
-#define CFG_CFPENDOPT		0x08
-#define CFG_BCNSUSEN		0x04
-#define CFG_NOTXTIMEOUT		0x02
-#define CFG_NOBUFOPT		0x01
+#define CFG_CFPENDOPT		BIT(3)
+#define CFG_BCNSUSEN		BIT(2)
+#define CFG_NOTXTIMEOUT		BIT(1)
+#define CFG_NOBUFOPT		BIT(0)

 /* Bits in the TEST register */
-#define TEST_LBEXT		0x80
-#define TEST_LBINT		0x40
+#define TEST_LBEXT		BIT(7)
+#define TEST_LBINT		BIT(6)
 #define TEST_LBNONE		0x00
-#define TEST_SOFTINT		0x20
-#define TEST_CONTTX		0x10
-#define TEST_TXPE		0x08
-#define TEST_NAVDIS		0x04
-#define TEST_NOCTS		0x02
-#define TEST_NOACK		0x01
+#define TEST_SOFTINT		BIT(5)
+#define TEST_CONTTX		BIT(4)
+#define TEST_TXPE		BIT(3)
+#define TEST_NAVDIS		BIT(2)
+#define TEST_NOCTS		BIT(1)
+#define TEST_NOACK		BIT(0)

 /* Bits in the HOSTCR register */
-#define HOSTCR_TXONST		0x80
-#define HOSTCR_RXONST		0x40
-#define HOSTCR_ADHOC		0x20
-#define HOSTCR_AP		0x10
-#define HOSTCR_TXON		0x08
-#define HOSTCR_RXON		0x04
-#define HOSTCR_MACEN		0x02
-#define HOSTCR_SOFTRST		0x01
+#define HOSTCR_TXONST		BIT(7)
+#define HOSTCR_RXONST		BIT(6)
+#define HOSTCR_ADHOC		BIT(5)
+#define HOSTCR_AP		BIT(4)
+#define HOSTCR_TXON		BIT(3)
+#define HOSTCR_RXON		BIT(2)
+#define HOSTCR_MACEN		BIT(1)
+#define HOSTCR_SOFTRST		BIT(0)

 /* Bits in the MACCR register */
-#define MACCR_SYNCFLUSHOK	0x04
-#define MACCR_SYNCFLUSH		0x02
-#define MACCR_CLRNAV		0x01
+#define MACCR_SYNCFLUSHOK	BIT(2)
+#define MACCR_SYNCFLUSH		BIT(1)
+#define MACCR_CLRNAV		BIT(0)

 /* Bits in the RCR register */
-#define RCR_SSID		0x80
-#define RCR_RXALLTYPE		0x40
-#define RCR_UNICAST		0x20
-#define RCR_BROADCAST		0x10
-#define RCR_MULTICAST		0x08
-#define RCR_WPAERR		0x04
-#define RCR_ERRCRC		0x02
-#define RCR_BSSID		0x01
+#define RCR_SSID		BIT(7)
+#define RCR_RXALLTYPE		BIT(6)
+#define RCR_UNICAST		BIT(5)
+#define RCR_BROADCAST		BIT(4)
+#define RCR_MULTICAST		BIT(3)
+#define RCR_WPAERR		BIT(2)
+#define RCR_ERRCRC		BIT(1)
+#define RCR_BSSID		BIT(0)

 /* Bits in the TCR register */
-#define TCR_SYNCDCFOPT		0x02
-#define TCR_AUTOBCNTX		0x01
+#define TCR_SYNCDCFOPT		BIT(1)
+#define TCR_AUTOBCNTX		BIT(0)

 /* ISR1 */
-#define ISR_GPIO3		0x40
-#define ISR_RXNOBUF		0x08
-#define ISR_MIBNEARFULL		0x04
-#define ISR_SOFTINT		0x02
-#define ISR_FETALERR		0x01
+#define ISR_GPIO3		BIT(6)
+#define ISR_RXNOBUF		BIT(3)
+#define ISR_MIBNEARFULL		BIT(2)
+#define ISR_SOFTINT		BIT(1)
+#define ISR_FETALERR		BIT(0)

 #define LEDSTS_STS		0x06
 #define LEDSTS_TMLEN		0x78
@@ -254,85 +255,85 @@
 #define LEDSTS_INTER		0x06

 /* ISR0 */
-#define ISR_WATCHDOG		0x80
-#define ISR_SOFTTIMER		0x40
-#define ISR_GPIO0		0x20
-#define ISR_TBTT		0x10
-#define ISR_RXDMA0		0x08
-#define ISR_BNTX		0x04
-#define ISR_ACTX		0x01
+#define ISR_WATCHDOG		BIT(7)
+#define ISR_SOFTTIMER		BIT(6)
+#define ISR_GPIO0		BIT(5)
+#define ISR_TBTT		BIT(4)
+#define ISR_RXDMA0		BIT(3)
+#define ISR_BNTX		BIT(2)
+#define ISR_ACTX		BIT(0)

 /* Bits in the PSCFG register */
-#define PSCFG_PHILIPMD		0x40
-#define PSCFG_WAKECALEN		0x20
-#define PSCFG_WAKETMREN		0x10
-#define PSCFG_BBPSPROG		0x08
-#define PSCFG_WAKESYN		0x04
-#define PSCFG_SLEEPSYN		0x02
-#define PSCFG_AUTOSLEEP		0x01
+#define PSCFG_PHILIPMD		BIT(6)
+#define PSCFG_WAKECALEN		BIT(5)
+#define PSCFG_WAKETMREN		BIT(4)
+#define PSCFG_BBPSPROG		BIT(3)
+#define PSCFG_WAKESYN		BIT(2)
+#define PSCFG_SLEEPSYN		BIT(1)
+#define PSCFG_AUTOSLEEP		BIT(0)

 /* Bits in the PSCTL register */
-#define PSCTL_WAKEDONE		0x20
-#define PSCTL_PS		0x10
-#define PSCTL_GO2DOZE		0x08
-#define PSCTL_LNBCN		0x04
-#define PSCTL_ALBCN		0x02
-#define PSCTL_PSEN		0x01
+#define PSCTL_WAKEDONE		BIT(5)
+#define PSCTL_PS		BIT(4)
+#define PSCTL_GO2DOZE		BIT(3)
+#define PSCTL_LNBCN		BIT(2)
+#define PSCTL_ALBCN		BIT(1)
+#define PSCTL_PSEN		BIT(0)

 /* Bits in the PSPWSIG register */
-#define PSSIG_WPE3		0x80
-#define PSSIG_WPE2		0x40
-#define PSSIG_WPE1		0x20
-#define PSSIG_WRADIOPE		0x10
-#define PSSIG_SPE3		0x08
-#define PSSIG_SPE2		0x04
-#define PSSIG_SPE1		0x02
-#define PSSIG_SRADIOPE		0x01
+#define PSSIG_WPE3		BIT(7)
+#define PSSIG_WPE2		BIT(6)
+#define PSSIG_WPE1		BIT(5)
+#define PSSIG_WRADIOPE		BIT(4)
+#define PSSIG_SPE3		BIT(3)
+#define PSSIG_SPE2		BIT(2)
+#define PSSIG_SPE1		BIT(1)
+#define PSSIG_SRADIOPE		BIT(0)

 /* Bits in the BBREGCTL register */
-#define BBREGCTL_DONE		0x04
-#define BBREGCTL_REGR		0x02
-#define BBREGCTL_REGW		0x01
+#define BBREGCTL_DONE		BIT(2)
+#define BBREGCTL_REGR		BIT(1)
+#define BBREGCTL_REGW		BIT(0)

 /* Bits in the IFREGCTL register */
-#define IFREGCTL_DONE		0x04
-#define IFREGCTL_IFRF		0x02
-#define IFREGCTL_REGW		0x01
+#define IFREGCTL_DONE		BIT(2)
+#define IFREGCTL_IFRF		BIT(1)
+#define IFREGCTL_REGW		BIT(0)

 /* Bits in the SOFTPWRCTL register */
-#define SOFTPWRCTL_RFLEOPT	0x08
-#define SOFTPWRCTL_TXPEINV	0x02
-#define SOFTPWRCTL_SWPECTI	0x01
-#define SOFTPWRCTL_SWPAPE	0x20
-#define SOFTPWRCTL_SWCALEN	0x10
-#define SOFTPWRCTL_SWRADIO_PE	0x08
-#define SOFTPWRCTL_SWPE2	0x04
-#define SOFTPWRCTL_SWPE1	0x02
-#define SOFTPWRCTL_SWPE3	0x01
+#define SOFTPWRCTL_RFLEOPT	BIT(3)
+#define SOFTPWRCTL_TXPEINV	BIT(1)
+#define SOFTPWRCTL_SWPECTI	BIT(0)
+#define SOFTPWRCTL_SWPAPE	BIT(5)
+#define SOFTPWRCTL_SWCALEN	BIT(4)
+#define SOFTPWRCTL_SWRADIO_PE	BIT(3)
+#define SOFTPWRCTL_SWPE2	BIT(2)
+#define SOFTPWRCTL_SWPE1	BIT(1)
+#define SOFTPWRCTL_SWPE3	BIT(0)

 /* Bits in the GPIOCTL1 register */
-#define GPIO3_MD		0x20
-#define GPIO3_DATA		0x40
-#define GPIO3_INTMD		0x80
+#define GPIO3_MD		BIT(5)
+#define GPIO3_DATA		BIT(6)
+#define GPIO3_INTMD		BIT(7)

 /* Bits in the MISCFFCTL register */
-#define MISCFFCTL_WRITE		0x0001
+#define MISCFFCTL_WRITE		BIT(0)

 /* Loopback mode */
-#define MAC_LB_EXT		0x02
-#define MAC_LB_INTERNAL		0x01
+#define MAC_LB_EXT		BIT(1)
+#define MAC_LB_INTERNAL		BIT(0)
 #define MAC_LB_NONE		0x00

 /* Ethernet address filter type */
 #define PKT_TYPE_NONE		0x00 /* turn off receiver */
-#define PKT_TYPE_ALL_MULTICAST	0x80
-#define PKT_TYPE_PROMISCUOUS	0x40
-#define PKT_TYPE_DIRECTED	0x20 /* obselete */
-#define PKT_TYPE_BROADCAST	0x10
-#define PKT_TYPE_MULTICAST	0x08
-#define PKT_TYPE_ERROR_WPA	0x04
-#define PKT_TYPE_ERROR_CRC	0x02
-#define PKT_TYPE_BSSID		0x01
+#define PKT_TYPE_ALL_MULTICAST	BIT(7)
+#define PKT_TYPE_PROMISCUOUS	BIT(6)
+#define PKT_TYPE_DIRECTED	BIT(5)	/* obselete */
+#define PKT_TYPE_BROADCAST	BIT(4)
+#define PKT_TYPE_MULTICAST	BIT(3)
+#define PKT_TYPE_ERROR_WPA	BIT(2)
+#define PKT_TYPE_ERROR_CRC	BIT(1)
+#define PKT_TYPE_BSSID		BIT(0)

 #define Default_BI              0x200

--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
