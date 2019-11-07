Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E805DF2815
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Nov 2019 08:36:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DF5FA8577F;
	Thu,  7 Nov 2019 07:36:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BVlK2XuUmTMQ; Thu,  7 Nov 2019 07:35:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 452BB8565B;
	Thu,  7 Nov 2019 07:35:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D05EB1BF2E5
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 07:35:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CC4FD1FE41
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 07:35:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fU+f3CO8s0YP for <devel@linuxdriverproject.org>;
 Thu,  7 Nov 2019 07:35:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 214C11FE0A
 for <devel@driverdev.osuosl.org>; Thu,  7 Nov 2019 07:35:44 +0000 (UTC)
Received: from goober.digi.com (unknown [103.48.210.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 51F4621882;
 Thu,  7 Nov 2019 07:35:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573112143;
 bh=YRlxCylowVsIWOOaMG+2KiJn9+BMuCfGlNfOenBsPjM=;
 h=From:To:Cc:Subject:Date:From;
 b=G894dG/KeASSCm7dlkJ5Ce/utT6d1PD2sccmd5glWtabZ6ahfgNkDHtw7QcgZuI/o
 WTgV4ZxG1eypeFlN7w8rEgmTGeaOQwEmzPAlkg0k8jdthGa0fCScAQGRqZKkt0zhb7
 ySaxZExCo7PcyYabJgnJZa8etf1CrT4hXuDErJd8=
From: gerg@kernel.org
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org
Subject: [PATCH] mtd: rawnand: driver for Mediatek MT7621 SoC NAND flash
 controller
Date: Thu,  7 Nov 2019 17:35:21 +1000
Message-Id: <20191107073521.11413-1-gerg@kernel.org>
X-Mailer: git-send-email 2.17.1
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
Cc: neil@brown.name, Greg Ungerer <gerg@kernel.org>, blogic@openwrt.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Greg Ungerer <gerg@kernel.org>

Add a driver to support the NAND flash controller of the MediaTek MT7621
System-on-Chip device. (This one is the MIPS based parts from Mediatek).

This code is a re-working of the earlier patches for this hardware that
have been floating around the internet for years:

https://github.com/ReclaimYourPrivacy/cloak/blob/master/target/linux/ramips/patches-3.18/0045-mtd-add-mt7621-nand-support.patch

This is a much cleaned up version, put in staging to start with.
It does still have some problems, mainly that it still uses a lot of the
mtd raw nand legacy support.

The driver not only compiles, but it works well on the small range of
hardware platforms that it has been used on so far. I have been using
for quite a while now, cleaning up as I get time.

So... I am looking for comments on the best approach forward with this.
At least in staging it can get some more eyeballs going over it.

There is a mediatek nand driver already, mtk_nand.c, for their ARM based
System-on-Chip devices. That hardware module looks to have some hardware
similarities with this one. At this point I don't know if that can be
used on the 7621 based devices. (I tried a quick and dirty setup and had
no success using it on the 7621).

Thoughts?

Signed-off-by: Greg Ungerer <gerg@kernel.org>
---
 drivers/staging/Kconfig                       |    2 +
 drivers/staging/Makefile                      |    1 +
 drivers/staging/mt7621-nand/Kconfig           |    7 +
 drivers/staging/mt7621-nand/Makefile          |    1 +
 drivers/staging/mt7621-nand/TODO              |    6 +
 drivers/staging/mt7621-nand/mt7621_nand.c     | 1713 +++++++++++++++++
 drivers/staging/mt7621-nand/mt7621_nand.h     |  362 ++++
 .../staging/mt7621-nand/mtk,mt7621-nand.txt   |   29 +
 8 files changed, 2121 insertions(+)
 create mode 100644 drivers/staging/mt7621-nand/Kconfig
 create mode 100644 drivers/staging/mt7621-nand/Makefile
 create mode 100644 drivers/staging/mt7621-nand/TODO
 create mode 100644 drivers/staging/mt7621-nand/mt7621_nand.c
 create mode 100644 drivers/staging/mt7621-nand/mt7621_nand.h
 create mode 100644 drivers/staging/mt7621-nand/mtk,mt7621-nand.txt

diff --git a/drivers/staging/Kconfig b/drivers/staging/Kconfig
index 6f1fa4c849a1..03167062b623 100644
--- a/drivers/staging/Kconfig
+++ b/drivers/staging/Kconfig
@@ -108,6 +108,8 @@ source "drivers/staging/ralink-gdma/Kconfig"
 
 source "drivers/staging/mt7621-dts/Kconfig"
 
+source "drivers/staging/mt7621-nand/Kconfig"
+
 source "drivers/staging/gasket/Kconfig"
 
 source "drivers/staging/axis-fifo/Kconfig"
diff --git a/drivers/staging/Makefile b/drivers/staging/Makefile
index a90f9b308c8d..8cb3bf2503ba 100644
--- a/drivers/staging/Makefile
+++ b/drivers/staging/Makefile
@@ -44,6 +44,7 @@ obj-$(CONFIG_PINCTRL_RT2880)	+= mt7621-pinctrl/
 obj-$(CONFIG_SOC_MT7621)	+= mt7621-dma/
 obj-$(CONFIG_DMA_RALINK)	+= ralink-gdma/
 obj-$(CONFIG_SOC_MT7621)	+= mt7621-dts/
+obj-$(CONFIG_SOC_MT7621)	+= mt7621-nand/
 obj-$(CONFIG_STAGING_GASKET_FRAMEWORK)	+= gasket/
 obj-$(CONFIG_XIL_AXIS_FIFO)	+= axis-fifo/
 obj-$(CONFIG_FIELDBUS_DEV)     += fieldbus/
diff --git a/drivers/staging/mt7621-nand/Kconfig b/drivers/staging/mt7621-nand/Kconfig
new file mode 100644
index 000000000000..be46db601119
--- /dev/null
+++ b/drivers/staging/mt7621-nand/Kconfig
@@ -0,0 +1,7 @@
+config MTD_NAND_MT7621
+	tristate "Support for Mediatek MT7621 SoC NAND controller"
+	depends on SOC_MT7621
+	help
+	  Enable support for the NAND controller on the Mediatek MT7621
+	  SoC platforms.
+
diff --git a/drivers/staging/mt7621-nand/Makefile b/drivers/staging/mt7621-nand/Makefile
new file mode 100644
index 000000000000..04d6fabecf2b
--- /dev/null
+++ b/drivers/staging/mt7621-nand/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_MTD_NAND_MT7621) += mt7621_nand.o
diff --git a/drivers/staging/mt7621-nand/TODO b/drivers/staging/mt7621-nand/TODO
new file mode 100644
index 000000000000..adca75274ee8
--- /dev/null
+++ b/drivers/staging/mt7621-nand/TODO
@@ -0,0 +1,6 @@
+mt7621-nand TODO
+
+- convert from legacy raw nand interface
+- general code cleanup and review
+
+Cc: gerg@kernel.org
diff --git a/drivers/staging/mt7621-nand/mt7621_nand.c b/drivers/staging/mt7621-nand/mt7621_nand.c
new file mode 100644
index 000000000000..706b7d7588de
--- /dev/null
+++ b/drivers/staging/mt7621-nand/mt7621_nand.c
@@ -0,0 +1,1713 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * mt7621_nand.c - Mediatek MT7621 NAND Flash Controller device driver
+ *
+ * Copyright 2009-2012 MediaTek Co.,Ltd.
+ * Copyright 2018-2019 Greg Ungerer <gerg@kernel.org>
+ */
+
+#include <linux/init.h>
+#include <linux/module.h>
+#include <linux/errno.h>
+#include <linux/types.h>
+#include <linux/slab.h>
+#include <linux/mtd/mtd.h>
+#include <linux/mtd/rawnand.h>
+#include <linux/mtd/partitions.h>
+#include <linux/mtd/nand_ecc.h>
+#include <linux/platform_device.h>
+#include <linux/io.h>
+#include "mt7621_nand.h"
+
+static const char * const probe_types[] = {
+	"cmdlinepart",
+	"ofpart",
+	NULL
+};
+
+struct host {
+	struct nand_chip nand_chip;
+	struct mtd_info *mtd;
+	void __iomem *regs;
+	void __iomem *ecc;
+	u32 addr_cycles;
+	u32 access_timing;
+	u32 column;
+	u32 row;
+	u32 OOBrow;
+	u8 OOB[288];
+	u8 *data_buf;
+	bool cmdstatus;
+	bool legacybbt;
+	u32 legacybbt_block_num;
+	u32 last_failed;
+};
+
+static struct host *host;
+
+/*
+ * This constant was taken from linux/nand/nand.h v 3.14
+ * in later versions it seems it was removed in order to save a bit of space
+ */
+#define NAND_MAX_OOBSIZE 774
+static u8 local_oob_buf[NAND_MAX_OOBSIZE];
+
+struct nand_ecclayout {
+	u32 eccbytes;
+	u32 oobavail;
+	u32 eccpos[MTD_MAX_ECCPOS_ENTRIES_LARGE];
+	struct nand_oobfree oobfree[MTD_MAX_OOBFREE_ENTRIES_LARGE];
+};
+
+static struct nand_ecclayout *layout;
+
+static struct nand_ecclayout nand_oob_16 = {
+	.eccbytes = 8,
+	.eccpos = { 8, 9, 10, 11, 12, 13, 14, 15 },
+	.oobfree = { {1, 6}, {0, 0} }
+};
+
+static struct nand_ecclayout nand_oob_64 = {
+	.eccbytes = 32,
+	.eccpos = {
+		32, 33, 34, 35, 36, 37, 38, 39,
+		40, 41, 42, 43, 44, 45, 46, 47,
+		48, 49, 50, 51, 52, 53, 54, 55,
+		56, 57, 58, 59, 60, 61, 62, 63
+	},
+	.oobfree = { {1, 7}, {9, 7}, {17, 7}, {25, 6}, {0, 0} }
+};
+
+static struct nand_ecclayout nand_oob_128 = {
+	.eccbytes = 64,
+	.eccpos = {
+		64, 65, 66, 67, 68, 69, 70, 71,
+		72, 73, 74, 75, 76, 77, 78, 79,
+		80, 81, 82, 83, 84, 85, 86, 86,
+		88, 89, 90, 91, 92, 93, 94, 95,
+		96, 97, 98, 99, 100, 101, 102, 103,
+		104, 105, 106, 107, 108, 109, 110, 111,
+		112, 113, 114, 115, 116, 117, 118, 119,
+		120, 121, 122, 123, 124, 125, 126, 127
+	},
+	.oobfree = {
+		{1, 7}, {9, 7}, {17, 7}, {25, 7},
+		{33, 7}, {41, 7}, {49, 7}, {57, 6}
+	}
+};
+
+/*
+ * Local read/write/set/clear register operations.
+ */
+static inline u8 regread8(u32 addr)
+{
+	return readb(host->regs + addr);
+}
+
+static inline u16 regread16(u32 addr)
+{
+	return readw(host->regs + addr);
+}
+
+static inline void regwrite16(u32 addr, u16 data)
+{
+	writew(data, host->regs + addr);
+}
+
+static inline u32 regread32(u32 addr)
+{
+	return readl(host->regs + addr);
+}
+
+static inline void regwrite32(u32 addr, u32 data)
+{
+	writel(data, host->regs + addr);
+}
+
+static inline void regset32(u32 addr, u32 data)
+{
+	u32 value;
+
+	value = regread32(addr) | data;
+	regwrite32(addr, value);
+}
+
+static inline void regset16(u32 addr, u16 data)
+{
+	u16 value;
+
+	value = regread16(addr) | data;
+	regwrite16(addr, value);
+}
+
+static inline void regclr16(u32 addr, u16 data)
+{
+	u16 value;
+
+	value = regread16(addr) & (~data);
+	regwrite16(addr, value);
+}
+
+/*
+ * Local ECC register read/write operations. These are implemented as a
+ * separate set of methods because the ECC register bank is a physically
+ * separate window within the address space.
+ */
+static inline u16 ecc_read16(u32 addr)
+{
+	return readw(host->ecc + addr);
+}
+
+static inline void ecc_write16(u32 addr, u16 data)
+{
+	writew(data, host->ecc + addr);
+}
+
+static inline u32 ecc_read32(u32 addr)
+{
+	return readl(host->ecc + addr);
+}
+
+static inline void ecc_write32(u32 addr, u32 data)
+{
+	writel(data, host->ecc + addr);
+}
+
+static void ecc_config(u32 ecc_bit)
+{
+	u32 ecc_bit_cfg = ECC_CNFG_ECC4;
+	u32 ENCODESize;
+	u32 DECODESize;
+	u32 val;
+
+	switch (ecc_bit) {
+	case 4:
+		ecc_bit_cfg = ECC_CNFG_ECC4;
+		break;
+	case 8:
+		ecc_bit_cfg = ECC_CNFG_ECC8;
+		break;
+	case 10:
+		ecc_bit_cfg = ECC_CNFG_ECC10;
+		break;
+	case 12:
+		ecc_bit_cfg = ECC_CNFG_ECC12;
+		break;
+	default:
+		break;
+	}
+
+	ecc_write16(ECC_DECCON_REG16, DEC_DE);
+	while (!ecc_read16(ECC_DECIDLE_REG16))
+		;
+
+	ecc_write16(ECC_ENCCON_REG16, ENC_DE);
+	while (!ecc_read32(ECC_ENCIDLE_REG32))
+		;
+
+	/* setup FDM register base */
+	ecc_write32(ECC_FDMADDR_REG32, (u32)NFI_FDM0L_REG32);
+
+	/* Sector + FDM */
+	ENCODESize = (NAND_SECTOR_SIZE + 8) << 3;
+	/* Sector + FDM + YAFFS2 meta data bits */
+	DECODESize = ((NAND_SECTOR_SIZE + 8) << 3) + ecc_bit * 13;
+
+	/* configure ECC decoder && encoder */
+	ecc_write32(ECC_DECCNFG_REG32,
+		    ecc_bit_cfg | DEC_CNFG_NFI | DEC_CNFG_EMPTY_EN |
+		    (DECODESize << DEC_CNFG_CODE_SHIFT));
+
+	ecc_write32(ECC_ENCCNFG_REG32,
+		    ecc_bit_cfg | ENC_CNFG_NFI |
+		    (ENCODESize << ENC_CNFG_MSG_SHIFT));
+
+	val = ecc_read32(ECC_DECCNFG_REG32) | DEC_CNFG_EL;
+	ecc_write32(ECC_DECCNFG_REG32, val);
+}
+
+static void ecc_decode_start(void)
+{
+	while (!(ecc_read16(ECC_DECIDLE_REG16) & DEC_IDLE))
+		;
+	ecc_write16(ECC_DECCON_REG16, DEC_EN);
+}
+
+static void ecc_decode_end(void)
+{
+	while (!(ecc_read16(ECC_DECIDLE_REG16) & DEC_IDLE))
+		;
+	ecc_write16(ECC_DECCON_REG16, DEC_DE);
+}
+
+static void ecc_encode_start(void)
+{
+	while (!(ecc_read32(ECC_ENCIDLE_REG32) & ENC_IDLE))
+		;
+	ecc_write16(ECC_ENCCON_REG16, ENC_EN);
+}
+
+static void ecc_encode_end(void)
+{
+	/* wait for device returning idle */
+	while (!(ecc_read32(ECC_ENCIDLE_REG32) & ENC_IDLE))
+		;
+	ecc_write16(ECC_ENCCON_REG16, ENC_DE);
+}
+
+static int check_bch_error(struct mtd_info *mtd, u8 *buf, u32 sector, u32 page)
+{
+	struct nand_chip *chip = mtd_to_nand(mtd);
+	struct host *host = nand_get_controller_data(chip);
+	u16 sectormask = 1 << sector;
+	u32 errdebug, i, errnum;
+	u32 timeout = 0xffff;
+	u32 byte, bitoffset, bit1, bit2;
+	u32 bit[6];
+	int corrected = 0;
+
+	/* Wait for Decode Done */
+	while ((sectormask & ecc_read16(ECC_DECDONE_REG16)) == 0) {
+		timeout--;
+		if (timeout == 0)
+			return -EIO;
+	}
+
+	/*
+	 * We will manually correct the error bits in the last sector,
+	 * not all the sectors of the page!
+	 */
+	memset(bit, 0, sizeof(bit));
+	errdebug = ecc_read32(ECC_DECENUM_REG32);
+	errnum = ecc_read32(ECC_DECENUM_REG32) >> (sector << 2);
+	errnum &= 0xf;
+
+	if (errnum == 0)
+		return 0;
+
+	if (errnum == 0xf) {
+		/*
+		 * Increment the last read's failed counter only. The
+		 * caller supposed to check if it is a blank page with
+		 * bit-flips, or a real ECC error. If the latter, it
+		 * should increment the failed counter with this last
+		 * read's failed counter
+		 */
+		host->last_failed++;
+		corrected = -EBADMSG;
+	} else {
+		corrected = errnum;
+
+		for (i = 0; i < ((errnum + 1) >> 1); ++i) {
+			bit[i] = ecc_read32(ECC_DECEL0_REG32 + i);
+			bit1 = bit[i] & 0x1FFF;
+			/*
+			 * Check if bitflip is in data block (< 0x1000)
+			 * or OOB. Fix it only in data block.
+			 */
+			if (bit1 < 0x1000) {
+				byte = bit1 / 8;
+				bitoffset = bit1 % 8;
+				buf[byte] = buf[byte] ^ (1 << bitoffset);
+			}
+
+			mtd->ecc_stats.corrected++;
+
+			bit2 = (bit[i] >> 16) & 0x1FFF;
+			if (bit2 != 0) {
+				/*
+				 * Check if bitflip is in data block
+				 * (< 0x1000) or OOB. Fix it only in
+				 * data block.
+				 */
+				if (bit2 < 0x1000) {
+					byte = bit2 / 8;
+					bitoffset = bit2 % 8;
+					buf[byte] = buf[byte] ^
+						    (1 << bitoffset);
+				}
+
+				mtd->ecc_stats.corrected++;
+			}
+		}
+	}
+	if ((ecc_read16(ECC_DECFER_REG16) & (1 << sector)) == 0)
+		corrected = -EIO;
+
+	return corrected;
+}
+
+static bool RFIFOValidSize(u16 size)
+{
+	u32 timeout = 0xffff;
+
+	while (FIFO_RD_REMAIN(regread16(NFI_FIFOSTA_REG16)) < size) {
+		timeout--;
+		if (timeout == 0)
+			return false;
+	}
+	return true;
+}
+
+static bool WFIFOValidSize(u16 size)
+{
+	u32 timeout = 0xffff;
+
+	while (FIFO_WR_REMAIN(regread16(NFI_FIFOSTA_REG16)) > size) {
+		timeout--;
+		if (timeout == 0)
+			return false;
+	}
+	return true;
+}
+
+static bool status_ready(u32 status)
+{
+	u32 timeout = 0xffff;
+
+	while ((regread32(NFI_STA_REG32) & status) != 0) {
+		timeout--;
+		if (timeout == 0)
+			return false;
+	}
+	return true;
+}
+
+static bool reset(void)
+{
+	int timeout = 0xffff;
+
+	if (regread16(NFI_MASTERSTA_REG16)) {
+		regwrite16(NFI_CON_REG16, CON_FIFO_FLUSH | CON_NFI_RST);
+		while (regread16(NFI_MASTERSTA_REG16)) {
+			timeout--;
+			if (!timeout)
+				pr_err("mt7621-nand: %s timeout\n", __func__);
+		}
+	}
+
+	/* issue reset operation */
+	regwrite16(NFI_CON_REG16, CON_FIFO_FLUSH | CON_NFI_RST);
+
+	return status_ready(STA_NFI_FSM_MASK | STA_NAND_BUSY) &&
+			    RFIFOValidSize(0) &&
+			    WFIFOValidSize(0);
+}
+
+static void set_mode(u16 mode)
+{
+	u16 v = regread16(NFI_CNFG_REG16);
+
+	v &= ~CNFG_OP_MODE_MASK;
+	v |= mode;
+	regwrite16(NFI_CNFG_REG16, v);
+}
+
+static void set_autoformat(bool enable)
+{
+	if (enable)
+		regset16(NFI_CNFG_REG16, CNFG_AUTO_FMT_EN);
+	else
+		regclr16(NFI_CNFG_REG16, CNFG_AUTO_FMT_EN);
+}
+
+static void configure_fdm(u16 size)
+{
+	regclr16(NFI_PAGEFMT_REG16, PAGEFMT_FDM_MASK | PAGEFMT_FDM_ECC_MASK);
+	regset16(NFI_PAGEFMT_REG16, size << PAGEFMT_FDM_SHIFT);
+	regset16(NFI_PAGEFMT_REG16, size << PAGEFMT_FDM_ECC_SHIFT);
+}
+
+static void configure_lock(void)
+{
+	const u32 write_col = 2;
+	const u32 write_row = 3;
+	const u32 erase_col = 0;
+	const u32 erase_row = 3;
+
+	regwrite16(NFI_LOCKANOB_REG16,
+		   (write_col << PROG_CADD_NOB_SHIFT) |
+		   (write_row << PROG_RADD_NOB_SHIFT) |
+		   (erase_col << ERASE_CADD_NOB_SHIFT) |
+		   (erase_row << ERASE_RADD_NOB_SHIFT));
+}
+
+static bool pio_ready(void)
+{
+	int count = 0;
+
+	while (!(regread16(NFI_PIO_DIRDY_REG16) & 1)) {
+		count++;
+		if (count > 0xffff) {
+			pr_err("mt7621-nand: %s timeout\n", __func__);
+			return false;
+		}
+	}
+	return true;
+}
+
+static bool set_command(u16 command)
+{
+	regwrite16(NFI_CMD_REG16, command);
+	return status_ready(STA_CMD_STATE);
+}
+
+static bool set_address(u32 column, u32 row, u16 colnob, u16 rownob)
+{
+	regwrite32(NFI_COLADDR_REG32, column);
+	regwrite32(NFI_ROWADDR_REG32, row);
+	regwrite16(NFI_ADDRNOB_REG16, colnob | (rownob << ADDR_ROW_NOB_SHIFT));
+	return status_ready(STA_ADDR_STATE);
+}
+
+static void mt7621_cmd_ctrl(struct nand_chip *chip, int dat, unsigned int ctrl)
+{
+	if (ctrl & NAND_ALE) {
+		set_address(dat, 0, 1, 0);
+	} else if (ctrl & NAND_CLE) {
+		reset();
+		set_mode(0x6000);
+		set_command(dat);
+	}
+}
+
+static bool check_RW_count(u16 writesize)
+{
+	u32 timeout = 0xffff;
+	u16 sec = writesize >> 9;
+
+	while (ADDRCNTR_CNTR(regread16(NFI_ADDRCNTR_REG16)) < sec) {
+		timeout--;
+		if (timeout == 0) {
+			pr_warn("mt7621-nand: %s timeout\n", __func__);
+			return false;
+		}
+	}
+	return true;
+}
+
+/*
+ * Reset NFI HW internal state machine and flush NFI in/out FIFO
+ */
+static bool ready_for_read(struct nand_chip *chip, u32 row,
+			   u32 column, bool full, u8 *buf)
+{
+	u16 sec = 1 << (chip->page_shift - 9);
+	u32 colnob = 2, rownob = host->addr_cycles - 2;
+	bool ret = false;
+
+	if (chip->options & NAND_BUSWIDTH_16)
+		column /= 2;
+
+	if (!reset())
+		goto cleanup;
+
+	regset16(NFI_CNFG_REG16, CNFG_HW_ECC_EN);
+	set_mode(CNFG_OP_READ);
+	regset16(NFI_CNFG_REG16, CNFG_READ_EN);
+	regwrite16(NFI_CON_REG16, sec << CON_NFI_SEC_SHIFT);
+
+	if (full) {
+		regclr16(NFI_CNFG_REG16, CNFG_AHB);
+		regset16(NFI_CNFG_REG16, CNFG_HW_ECC_EN);
+	} else {
+		regclr16(NFI_CNFG_REG16, CNFG_HW_ECC_EN);
+		regclr16(NFI_CNFG_REG16, CNFG_AHB);
+	}
+
+	set_autoformat(full);
+	if (full)
+		ecc_decode_start();
+	if (!set_command(NAND_CMD_READ0))
+		goto cleanup;
+	if (!set_address(column, row, colnob, rownob))
+		goto cleanup;
+	if (!set_command(NAND_CMD_READSTART))
+		goto cleanup;
+	if (!status_ready(STA_NAND_BUSY))
+		goto cleanup;
+
+	ret = true;
+
+cleanup:
+	return ret;
+}
+
+static bool ready_for_write(struct nand_chip *chip, u32 row,
+			    u32 column, bool full, u8 *buf)
+{
+	u32 sec = 1 << (chip->page_shift - 9);
+	u32 colnob = 2, rownob = host->addr_cycles - 2;
+	bool ret = false;
+
+	if (chip->options & NAND_BUSWIDTH_16)
+		column /= 2;
+
+	/* Reset NFI HW internal state machine and flush NFI in/out FIFO */
+	if (!reset())
+		return false;
+
+	set_mode(CNFG_OP_PRGM);
+
+	regclr16(NFI_CNFG_REG16, CNFG_READ_EN);
+
+	regwrite16(NFI_CON_REG16, sec << CON_NFI_SEC_SHIFT);
+
+	if (full) {
+		regclr16(NFI_CNFG_REG16, CNFG_AHB);
+		regset16(NFI_CNFG_REG16, CNFG_HW_ECC_EN);
+	} else {
+		regclr16(NFI_CNFG_REG16, CNFG_HW_ECC_EN);
+		regclr16(NFI_CNFG_REG16, CNFG_AHB);
+	}
+
+	set_autoformat(full);
+
+	if (full)
+		ecc_encode_start();
+
+	if (!set_command(NAND_CMD_SEQIN))
+		goto cleanup;
+	/* FIX ME: For Any Kind of AddrCycle */
+	if (!set_address(column, row, colnob, rownob))
+		goto cleanup;
+
+	if (!status_ready(STA_NAND_BUSY))
+		goto cleanup;
+
+	ret = true;
+
+cleanup:
+	return ret;
+}
+
+static bool check_dececc_done(u32 sec)
+{
+	u32 timeout, dec_mask;
+
+	timeout = 0xffff;
+	dec_mask = (1 << sec) - 1;
+	while ((dec_mask != ecc_read16(ECC_DECDONE_REG16)) && timeout > 0)
+		timeout--;
+	if (timeout == 0) {
+		pr_err("mt7621-nand: ECC_DECDONE: timeout\n");
+		return false;
+	}
+	return true;
+}
+
+static bool mcu_read_data(u8 *buf, u32 length)
+{
+	int timeout = 0xffff;
+	u32 *buf32 = (u32 *)buf;
+	u32 i;
+
+	if ((u32)buf % 4 || length % 4)
+		regset16(NFI_CNFG_REG16, CNFG_BYTE_RW);
+	else
+		regclr16(NFI_CNFG_REG16, CNFG_BYTE_RW);
+
+	/* regwrite32(NFI_STRADDR_REG32, 0); */
+	regset16(NFI_CON_REG16, CON_NFI_BRD);
+
+	if ((u32)buf % 4 || length % 4) {
+		for (i = 0; (i < (length)) && (timeout > 0);) {
+			if (regread16(NFI_PIO_DIRDY_REG16) & 1) {
+				*buf++ = (u8)regread32(NFI_DATAR_REG32);
+				i++;
+			} else {
+				timeout--;
+			}
+			if (timeout == 0) {
+				pr_warn("mt7621-nand: %s timeout\n", __func__);
+				return false;
+			}
+		}
+	} else {
+		for (i = 0; (i < (length >> 2)) && (timeout > 0);) {
+			if (regread16(NFI_PIO_DIRDY_REG16) & 1) {
+				*buf32++ = regread32(NFI_DATAR_REG32);
+				i++;
+			} else {
+				timeout--;
+			}
+			if (timeout == 0) {
+				pr_warn("mt7621-nand: %s timeout\n", __func__);
+				return false;
+			}
+		}
+	}
+
+	return true;
+}
+
+static bool mcu_write_data(struct mtd_info *mtd, const u8 *buf, u32 length)
+{
+	u32 timeout = 0xffff;
+	u32 *buf32;
+	u32 i;
+
+	regclr16(NFI_CNFG_REG16, CNFG_BYTE_RW);
+	regset16(NFI_CON_REG16, CON_NFI_BWR);
+	buf32 = (u32 *)buf;
+
+	if ((u32)buf % 4 || length % 4)
+		regset16(NFI_CNFG_REG16, CNFG_BYTE_RW);
+	else
+		regclr16(NFI_CNFG_REG16, CNFG_BYTE_RW);
+
+	if ((u32)buf % 4 || length % 4) {
+		for (i = 0; (i < (length)) && (timeout > 0);) {
+			if (regread16(NFI_PIO_DIRDY_REG16) & 1) {
+				regwrite32(NFI_DATAW_REG32, *buf++);
+				i++;
+			} else {
+				timeout--;
+			}
+			if (timeout == 0) {
+				pr_warn("mt7621-nand: %s timeout\n", __func__);
+				return false;
+			}
+		}
+	} else {
+		for (i = 0; (i < (length >> 2)) && (timeout > 0);) {
+			if (regread16(NFI_PIO_DIRDY_REG16) & 1) {
+				regwrite32(NFI_DATAW_REG32, *buf32++);
+				i++;
+			} else {
+				timeout--;
+			}
+			if (timeout == 0) {
+				pr_warn("mt7621-nand: %s timeout\n", __func__);
+				return false;
+			}
+		}
+	}
+
+	return true;
+}
+
+static void read_fdm_data(u8 *buf, u32 sec)
+{
+	u32 *buf32 = (u32 *)buf;
+	u32 i;
+
+	if (buf32) {
+		for (i = 0; i < sec; ++i) {
+			*buf32++ = regread32(NFI_FDM0L_REG32 + (i << 3));
+			*buf32++ = regread32(NFI_FDM0M_REG32 + (i << 3));
+		}
+	}
+}
+
+static u8 fdm_buf[64];
+
+static void write_fdm_data(struct nand_chip *chip, u8 *buf, u32 sec)
+{
+	struct nand_oobfree *free_entry;
+	bool empty = true;
+	u8 checksum = 0;
+	u32 *buf32;
+	u32 i, j;
+
+	memcpy(fdm_buf, buf, sec * 8);
+
+	free_entry = layout->oobfree;
+	for (i = 0; i < MTD_MAX_OOBFREE_ENTRIES && free_entry[i].length; i++) {
+		for (j = 0; j < free_entry[i].length; j++) {
+			if (buf[free_entry[i].offset + j] != 0xff)
+				empty = false;
+			checksum ^= buf[free_entry[i].offset + j];
+		}
+	}
+
+	if (!empty)
+		fdm_buf[free_entry[i - 1].offset + free_entry[i - 1].length] =
+			checksum;
+
+	buf32 = (u32 *)fdm_buf;
+	for (i = 0; i < sec; ++i) {
+		regwrite32(NFI_FDM0L_REG32 + (i << 3), *buf32++);
+		regwrite32(NFI_FDM0M_REG32 + (i << 3), *buf32++);
+	}
+}
+
+static void stop_read(void)
+{
+	regclr16(NFI_CON_REG16, CON_NFI_BRD);
+	reset();
+	ecc_decode_end();
+	regwrite16(NFI_INTR_EN_REG16, 0);
+}
+
+static void stop_write(void)
+{
+	regclr16(NFI_CON_REG16, CON_NFI_BWR);
+	ecc_encode_end();
+	regwrite16(NFI_INTR_EN_REG16, 0);
+}
+
+/*
+ * This is a copy of the nand_check_erased_buf() function from nand_base.c, to
+ * keep the nand_base.c clean
+ */
+static int check_erased_buf(void *buf, int len, int bitflips_threshold)
+{
+	const unsigned char *bitmap = buf;
+	int bitflips = 0;
+	int weight;
+
+	for (; len && ((uintptr_t)bitmap) % sizeof(long);
+	     len--, bitmap++) {
+		weight = hweight8(*bitmap);
+		bitflips += BITS_PER_BYTE - weight;
+		if (unlikely(bitflips > bitflips_threshold))
+			return -EBADMSG;
+	}
+
+	for (; len >= sizeof(long);
+	     len -= sizeof(long), bitmap += sizeof(long)) {
+		unsigned long d = *((unsigned long *)bitmap);
+
+		if (d == ~0UL)
+			continue;
+		weight = hweight_long(d);
+		bitflips += BITS_PER_LONG - weight;
+		if (unlikely(bitflips > bitflips_threshold))
+			return -EBADMSG;
+	}
+
+	for (; len > 0; len--, bitmap++) {
+		weight = hweight8(*bitmap);
+		bitflips += BITS_PER_BYTE - weight;
+		if (unlikely(bitflips > bitflips_threshold))
+			return -EBADMSG;
+	}
+
+	return bitflips;
+}
+
+/*
+ * This is the modified version of the nand_check_erased_ecc_chunk() in
+ * nand_base.c. This driver cannot use the generic function, as the ECC layout
+ * is slightly different (the 2k(data)+64(OOB) page is split up in to 4
+ * (512-byte data + 16-byte OOB) pages. Each of these sectors have 4-bit ECC,
+ * so we check them separately, and allow 4 bitflips / sector.
+ * We'll fix up the page to all-0xff only if all sectors in the page appears to
+ * be blank
+ */
+static int check_erased_ecc_chunk(void *data, int datalen, void *oob,
+				  int ooblen, int bitflips_threshold)
+{
+	int data_bitflips = 0, oob_bitflips = 0;
+
+	data_bitflips = check_erased_buf(data, datalen, bitflips_threshold);
+	if (data_bitflips < 0)
+		return data_bitflips;
+
+	bitflips_threshold -= data_bitflips;
+
+	oob_bitflips = check_erased_buf(oob, ooblen, bitflips_threshold);
+	if (oob_bitflips < 0)
+		return oob_bitflips;
+
+	bitflips_threshold -= oob_bitflips;
+	return data_bitflips + oob_bitflips;
+}
+
+static int read_oob_raw(struct mtd_info *mtd, u8 *buf, int page, int len)
+{
+	struct nand_chip *chip = mtd_to_nand(mtd);
+	int sec_num = 1 << (chip->page_shift - 9);
+	int spare_per_sector = mtd->oobsize / sec_num;
+	u32 column = 0;
+	u32 sector = 0;
+	int res = 0;
+	int read_len = 0;
+
+	if (len > NAND_MAX_OOBSIZE || len % OOB_AVAI_PER_SECTOR || !buf) {
+		pr_warn("mt7621-nand: invalid parameter, len: %d, buf: %p\n",
+			len, buf);
+		return -EINVAL;
+	}
+
+	while (len > 0) {
+		read_len = min(len, spare_per_sector);
+		column = NAND_SECTOR_SIZE +
+			 sector * (NAND_SECTOR_SIZE + spare_per_sector);
+		if (!ready_for_read(chip, page, column, false, NULL)) {
+			pr_warn("mt7621-nand: ready_for_read() failed\n");
+			res = -EIO;
+			goto error;
+		}
+		if (!mcu_read_data(buf + spare_per_sector * sector, read_len)) {
+			pr_warn("mt7621-nand: mcu_read_data() failed\n");
+			res = -EIO;
+			goto error;
+		}
+		check_RW_count(read_len);
+		stop_read();
+		sector++;
+		len -= read_len;
+	}
+
+error:
+	regclr16(NFI_CON_REG16, CON_NFI_BRD);
+	return res;
+}
+
+static int write_oob_raw(struct mtd_info *mtd, const u8 *buf, int page, int len)
+{
+	struct nand_chip *chip = mtd_to_nand(mtd);
+	int sec_num = 1 << (chip->page_shift - 9);
+	int spare_per_sector = mtd->oobsize / sec_num;
+	u32 column = 0;
+	u32 sector = 0;
+	int write_len = 0;
+	int status;
+
+	if (len > NAND_MAX_OOBSIZE || len % OOB_AVAI_PER_SECTOR || !buf) {
+		pr_warn("mt7621-nand: invalid parameter, len: %d, buf: %p\n",
+			len, buf);
+		return -EINVAL;
+	}
+
+	while (len > 0) {
+		write_len = min(len, spare_per_sector);
+		column = sector * (NAND_SECTOR_SIZE + spare_per_sector) +
+			 NAND_SECTOR_SIZE;
+		if (!ready_for_write(chip, page, column, false, NULL))
+			return -EIO;
+		if (!mcu_write_data(mtd, buf + sector * spare_per_sector,
+				    write_len))
+			return -EIO;
+		check_RW_count(write_len);
+		regclr16(NFI_CON_REG16, CON_NFI_BWR);
+		set_command(NAND_CMD_PAGEPROG);
+		while (regread32(NFI_STA_REG32) & STA_NAND_BUSY)
+			;
+		status = chip->legacy.waitfunc(chip);
+		if (status & NAND_STATUS_FAIL) {
+			pr_warn("mt7621-nand: failed status: %d\n", status);
+			return -EIO;
+		}
+		len -= write_len;
+		sector++;
+	}
+
+	return 0;
+}
+
+static int exec_read_page(struct mtd_info *mtd, u32 row, u32 page_size,
+			  u8 *buf, u8 *fdmbuf)
+{
+	struct nand_chip *chip = mtd_to_nand(mtd);
+	struct host *host = nand_get_controller_data(chip);
+	u32 sec = page_size >> 9;
+	int corrected = 0;
+
+	host->last_failed = 0;
+
+	if (ready_for_read(chip, row, 0, true, buf)) {
+		int j;
+
+		for (j = 0; j < sec; j++) {
+			int ret;
+
+			if (!mcu_read_data(buf + j * 512, 512)) {
+				corrected = -EIO;
+				break;
+			}
+			if (!check_dececc_done(j + 1)) {
+				corrected = -EIO;
+				break;
+			}
+			ret = check_bch_error(mtd, buf + j * 512, j, row);
+			if (ret < 0) {
+				corrected = ret;
+				if (ret != -EBADMSG)
+					break;
+			} else if (corrected >= 0) {
+				corrected = max_t(int, corrected, ret);
+			}
+		}
+		if (!status_ready(STA_NAND_BUSY))
+			corrected = -EIO;
+
+		read_fdm_data(fdmbuf, sec);
+		stop_read();
+	} else {
+		corrected = -EIO;
+	}
+
+	if (corrected == -EBADMSG) {
+		u32 local_oob_aligned[NAND_MAX_OOBSIZE / sizeof(u32)];
+		u8 *local_oob = (u8 *)local_oob_aligned;
+		int ret;
+
+		/*
+		 * If there was an uncorrectable ECC error, check if it is a
+		 * blank page with bit-flips. For this, we check the number of
+		 * 0s in each sector (including the OOB), which should not
+		 * exceed the ECC strength. Until the number of 0s is lower or
+		 * equal, we consider it as a blank page
+		 */
+		ret = read_oob_raw(mtd, local_oob, row, mtd->oobsize);
+		if (ret == 0) {
+			int spare_per_sector = mtd->oobsize / sec;
+			int sector_size = page_size / sec;
+			int max_bitflips = 0;
+			u32 corrected = 0;
+			int i;
+
+			for (i = 0; i < sec; i++) {
+				ret = check_erased_ecc_chunk(
+					&buf[i * sector_size], sector_size,
+					&local_oob[i * spare_per_sector],
+					spare_per_sector, chip->ecc.strength);
+				if (ret < 0)
+					break;
+
+				max_bitflips = max_t(int, max_bitflips, ret);
+				corrected += ret;
+			}
+
+			if (ret >= 0) {
+				mtd->ecc_stats.corrected += corrected;
+
+				memset(buf, 0xff, page_size);
+				memset(fdmbuf, 0xff, sizeof(u32) * 2 * sec);
+
+				corrected = max_bitflips;
+			} else {
+				mtd->ecc_stats.failed += host->last_failed;
+				pr_err("mt7621-nand: uncorrectable ECC errors at page=%d\n",
+				       row);
+			}
+		} else {
+			mtd->ecc_stats.failed += host->last_failed;
+			pr_warn("mt7621-nand: %s failed to read oob after ECC error\n",
+				__func__);
+			/* Keep return value as -EBADMSG */
+		}
+	}
+
+	return corrected;
+}
+
+static int exec_write_page(struct mtd_info *mtd, u32 row,
+			   u32 page_size, u8 *buf, u8 *fdmbuf)
+{
+	struct nand_chip *chip = mtd_to_nand(mtd);
+	u32 sec = page_size >> 9;
+	u8 status;
+
+	if (ready_for_write(chip, row, 0, true, buf)) {
+		write_fdm_data(chip, fdmbuf, sec);
+		mcu_write_data(mtd, buf, page_size);
+		check_RW_count(page_size);
+		stop_write();
+		set_command(NAND_CMD_PAGEPROG);
+		while (regread32(NFI_STA_REG32) & STA_NAND_BUSY)
+			;
+	}
+
+	status = chip->legacy.waitfunc(chip);
+	if (status & NAND_STATUS_FAIL)
+		return -EIO;
+	return 0;
+}
+
+static void command_bp(struct nand_chip *chip, unsigned int command,
+		       int column, int page)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+
+	switch (command) {
+	case NAND_CMD_SEQIN:
+		memset(host->OOB, 0xff, sizeof(host->OOB));
+		host->data_buf = NULL;
+		host->row = page;
+		host->column = column;
+		break;
+
+	case NAND_CMD_PAGEPROG:
+		if (host->data_buf || (host->OOB[0] != 0xff)) {
+			u8 *buf = host->data_buf ? host->data_buf
+						 : chip->data_buf;
+
+			exec_write_page(mtd, host->row, mtd->writesize,
+					buf, host->OOB);
+			host->row = (u32)-1;
+			host->OOBrow = (u32)-1;
+		}
+		break;
+
+	case NAND_CMD_READOOB:
+		host->row = page;
+		host->column = column + mtd->writesize;
+		break;
+
+	case NAND_CMD_READ0:
+		host->row = page;
+		host->column = column;
+		break;
+
+	case NAND_CMD_ERASE1:
+		reset();
+		set_mode(CNFG_OP_ERASE);
+		set_command(NAND_CMD_ERASE1);
+		set_address(0, page, 0, host->addr_cycles - 2);
+		break;
+
+	case NAND_CMD_ERASE2:
+		set_command(NAND_CMD_ERASE2);
+		while (regread32(NFI_STA_REG32) & STA_NAND_BUSY)
+			;
+		break;
+
+	case NAND_CMD_STATUS:
+		reset();
+		regclr16(NFI_CNFG_REG16, CNFG_BYTE_RW);
+		set_mode(CNFG_OP_SRD);
+		set_mode(CNFG_READ_EN);
+		regclr16(NFI_CNFG_REG16, CNFG_AHB);
+		regclr16(NFI_CNFG_REG16, CNFG_HW_ECC_EN);
+		set_command(NAND_CMD_STATUS);
+		regclr16(NFI_CON_REG16, CON_NFI_NOB_MASK);
+		regwrite16(NFI_CON_REG16,
+			   CON_NFI_SRD | (1 << CON_NFI_NOB_SHIFT));
+		host->cmdstatus = true;
+		break;
+
+	case NAND_CMD_RESET:
+		reset();
+		regwrite16(NFI_INTR_EN_REG16, INTR_RST_DONE_EN);
+		set_command(NAND_CMD_RESET);
+		regwrite16(NFI_CNRNB_REG16, 0xf1);
+		while (!(regread16(NFI_INTR_REG16) & INTR_RST_DONE_EN))
+			;
+		break;
+
+	case NAND_CMD_READID:
+		reset();
+		/* Disable HW ECC */
+		regclr16(NFI_CNFG_REG16, CNFG_HW_ECC_EN);
+		regclr16(NFI_CNFG_REG16, CNFG_AHB);
+		regset16(NFI_CNFG_REG16, CNFG_READ_EN | CNFG_BYTE_RW);
+		reset();
+		set_mode(CNFG_OP_SRD);
+		set_command(NAND_CMD_READID);
+		set_address(0, 0, 1, 0);
+		regwrite16(NFI_CON_REG16, CON_NFI_SRD);
+		while (regread32(NFI_STA_REG32) & STA_DATAR_STATE)
+			;
+		break;
+
+	default:
+		pr_err("mt7621-nand: unknown NAND command, 0x%x\n", command);
+		break;
+	}
+}
+
+static void set_ecc_mode(struct mtd_info *mtd)
+{
+	struct nand_chip *chip = mtd_to_nand(mtd);
+	u32 spare_per_sector = mtd->oobsize / (mtd->writesize / 512);
+	u32 spare_bit = PAGEFMT_SPARE_16;
+	u32 ecc_bit = 4;
+
+	if (spare_per_sector >= 28) {
+		spare_bit = PAGEFMT_SPARE_28;
+		ecc_bit = 12;
+		spare_per_sector = 28;
+	} else if (spare_per_sector >= 27) {
+		spare_bit = PAGEFMT_SPARE_27;
+		ecc_bit = 8;
+		spare_per_sector = 27;
+	} else if (spare_per_sector >= 26) {
+		spare_bit = PAGEFMT_SPARE_26;
+		ecc_bit = 8;
+		spare_per_sector = 26;
+	} else if (spare_per_sector >= 16) {
+		spare_bit = PAGEFMT_SPARE_16;
+		ecc_bit = 4;
+		spare_per_sector = 16;
+	} else {
+		pr_warn("mt7621-nand: NFI not support oobsize: %x\n",
+			spare_per_sector);
+	}
+	chip->ecc.strength = ecc_bit;
+	mtd->oobsize = spare_per_sector * (mtd->writesize / 512);
+	pr_info("mt7621-nand: ecc bit: %d, spare_per_sector: %d\n",
+		ecc_bit, spare_per_sector);
+
+	/* Setup PageFormat */
+	if (mtd->writesize == 4096) {
+		regset16(NFI_PAGEFMT_REG16,
+			 (spare_bit << PAGEFMT_SPARE_SHIFT) | PAGEFMT_4K);
+		chip->legacy.cmdfunc = command_bp;
+	} else if (mtd->writesize == 2048) {
+		regset16(NFI_PAGEFMT_REG16,
+			 (spare_bit << PAGEFMT_SPARE_SHIFT) | PAGEFMT_2K);
+		chip->legacy.cmdfunc = command_bp;
+	}
+	ecc_config(ecc_bit);
+}
+
+static void select_chip(struct nand_chip *chip, int nr)
+{
+	switch (nr) {
+	case -1:
+		break;
+	case 0:
+	case 1:
+		/* Jun Shen, 2011.04.13 */
+		/* Note: MT6577 EVB NAND is mounted on CS0, but FPGA is CS1 */
+		regwrite16(NFI_CSEL_REG16, nr);
+		/* Jun Shen, 2011.04.13 */
+		break;
+	}
+}
+
+static u8 read_byte(struct nand_chip *chip)
+{
+	u8 retval = 0;
+
+	if (!pio_ready()) {
+		pr_err("mt7621-nand: pio ready timeout\n");
+		retval = false;
+	}
+
+	if (host->cmdstatus) {
+		retval = regread8(NFI_DATAR_REG32);
+		regclr16(NFI_CON_REG16, CON_NFI_NOB_MASK);
+		reset();
+		regset16(NFI_CNFG_REG16, CNFG_HW_ECC_EN);
+		host->cmdstatus = false;
+	} else {
+		retval = regread8(NFI_DATAR_REG32);
+	}
+
+	return retval;
+}
+
+static void read_buf(struct nand_chip *chip, u8 *buf, int len)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	u32 page_size = mtd->writesize;
+	u32 column = host->column;
+
+	if (column < page_size) {
+		if ((column == 0) && (len >= page_size)) {
+			exec_read_page(mtd, host->row, page_size, buf,
+				       host->OOB);
+			if (len > page_size) {
+				u32 size;
+
+				size = min(len - page_size, sizeof(host->OOB));
+				memcpy(buf + page_size, host->OOB, size);
+			}
+		} else {
+			exec_read_page(mtd, host->row, page_size,
+				       chip->data_buf, host->OOB);
+			memcpy(buf, chip->data_buf + column, len);
+		}
+		host->OOBrow = host->row;
+	} else {
+		u32 offset = column - page_size;
+		u32 size = min(len - offset, sizeof(host->OOB));
+
+		if (host->OOBrow != host->row) {
+			exec_read_page(mtd, host->row, page_size,
+				       chip->data_buf, host->OOB);
+			host->OOBrow = host->row;
+		}
+		memcpy(buf, host->OOB + offset, size);
+	}
+	host->column += len;
+}
+
+static void write_buf(struct nand_chip *chip, const u8 *buf, int len)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	u32 page_size = mtd->writesize;
+	u32 column = host->column;
+	int size, i;
+
+	if (column >= page_size) {
+		u32 offset = column - page_size;
+		u8 *OOB = host->OOB + offset;
+
+		size = min(len, (int)(sizeof(host->OOB) - offset));
+		for (i = 0; i < size; i++)
+			OOB[i] &= buf[i];
+	} else {
+		host->data_buf = (u8 *)buf;
+	}
+
+	host->column += len;
+}
+
+static int write_page_hwecc(struct nand_chip *chip, const u8 *buf,
+			    int oob_required, int page)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+
+	nand_prog_page_begin_op(chip, page, 0, buf, mtd->writesize);
+	write_buf(chip, chip->oob_poi, mtd->oobsize);
+	return nand_prog_page_end_op(chip);
+}
+
+static int read_page_hwecc(struct nand_chip *chip, u8 *buf,
+			   int oob_required, int page)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	int corrected;
+
+	corrected = exec_read_page(mtd, page, mtd->writesize,
+				   buf, chip->oob_poi);
+
+	return (corrected == -EBADMSG) ? 0 : corrected;
+}
+
+static int write_oob_hw(struct nand_chip *chip, int page)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	int sec_num = 1 << (chip->page_shift - 9);
+	int spare_per_sector = mtd->oobsize / sec_num;
+	int i, iter;
+
+	memcpy(local_oob_buf, chip->oob_poi, mtd->oobsize);
+
+	/* copy ecc data */
+	for (i = 0; i < layout->eccbytes; i++) {
+		iter = (i / (spare_per_sector - OOB_AVAI_PER_SECTOR)) *
+		       spare_per_sector +
+		       OOB_AVAI_PER_SECTOR +
+		       i % (spare_per_sector - OOB_AVAI_PER_SECTOR);
+		local_oob_buf[iter] = chip->oob_poi[layout->eccpos[i]];
+	}
+
+	/* copy FDM data */
+	for (i = 0; i < sec_num; i++)
+		memcpy(&local_oob_buf[i * spare_per_sector],
+		       &chip->oob_poi[i * OOB_AVAI_PER_SECTOR],
+		       OOB_AVAI_PER_SECTOR);
+
+	return write_oob_raw(mtd, local_oob_buf, page, mtd->oobsize);
+}
+
+static int write_oob(struct nand_chip *chip, int page)
+{
+	int page_per_block = 1 << (chip->phys_erase_shift - chip->page_shift);
+	int block = page / page_per_block;
+	int page_in_block = page % page_per_block;
+
+	if (write_oob_hw(chip, page_in_block + block * page_per_block)) {
+		pr_warn("mt7621-nand: write oob fail at block: 0x%x, page: 0x%x\n",
+			block, page_in_block);
+		return NAND_STATUS_FAIL;
+	}
+
+	return 0;
+}
+
+static int read_oob_hw(struct nand_chip *chip, int page)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	int sec_num = 1 << (chip->page_shift - 9);
+	int spare_per_sector = mtd->oobsize / sec_num;
+	int i;
+	u8 iter = 0;
+
+	if (read_oob_raw(mtd, chip->oob_poi, page, mtd->oobsize)) {
+		pr_err("mt7621-nand: read_oob_raw() return failed\n");
+		return -EIO;
+	}
+
+	/* adjust to ecc physical layout to memory layout */
+	/*********************************************************/
+	/* FDM0 | ECC0 | FDM1 | ECC1 | FDM2 | ECC2 | FDM3 | ECC3 */
+	/*  8B  |  8B  |  8B  |  8B  |  8B  |  8B  |  8B  |  8B  */
+	/*********************************************************/
+
+	memcpy(local_oob_buf, chip->oob_poi, mtd->oobsize);
+
+	/* copy ecc data */
+	for (i = 0; i < layout->eccbytes; i++) {
+		iter = (i / (spare_per_sector - OOB_AVAI_PER_SECTOR)) *
+		       spare_per_sector +
+		       OOB_AVAI_PER_SECTOR +
+		       i % (spare_per_sector - OOB_AVAI_PER_SECTOR);
+		chip->oob_poi[layout->eccpos[i]] = local_oob_buf[iter];
+	}
+
+	/* copy FDM data */
+	for (i = 0; i < sec_num; i++)
+		memcpy(&chip->oob_poi[i * OOB_AVAI_PER_SECTOR],
+		       &local_oob_buf[i * spare_per_sector],
+		       OOB_AVAI_PER_SECTOR);
+
+	return 0;
+}
+
+static int read_oob(struct nand_chip *chip, int page)
+{
+	int page_per_block = 1 << (chip->phys_erase_shift - chip->page_shift);
+	int block = page / page_per_block;
+	int page_in_block = page % page_per_block;
+
+	if (read_oob_hw(chip, page_in_block + block * page_per_block) != 0)
+		return -1;
+	return 0;
+}
+
+static int block_bad_hw(struct nand_chip *chip, loff_t ofs)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	int page = (int)(ofs >> chip->page_shift);
+	unsigned int page_per_block;
+	u8 oob_buf[8];
+
+	page_per_block = 1 << (chip->phys_erase_shift - chip->page_shift);
+	page &= ~(page_per_block - 1);
+	if (read_oob_raw(mtd, oob_buf, page, sizeof(oob_buf))) {
+		pr_warn("mt7621-nand: read_oob_raw() failed\n");
+		return 1;
+	}
+
+	if (oob_buf[0] != 0xff) {
+		pr_warn("mt7621-nand: bad block detected at page=%d\n", page);
+		return 1;
+	}
+
+	return 0;
+}
+
+static int block_bad(struct nand_chip *chip, loff_t ofs)
+{
+	int block = (int)ofs >> chip->phys_erase_shift;
+
+	return block_bad_hw(chip, block << chip->phys_erase_shift);
+}
+
+static void init_hw(struct host *host)
+{
+	host->OOBrow = (u32)-1;
+
+	/* Set default NFI access timing control */
+	regwrite32(NFI_ACCCON_REG32, host->access_timing);
+	regwrite16(NFI_CNFG_REG16, 0);
+	regwrite16(NFI_PAGEFMT_REG16, 0);
+
+	/* Reset the state machine and data FIFO, because flushing FIFO */
+	reset();
+
+	/* Set the ECC engine */
+	if (host->nand_chip.ecc.mode == NAND_ECC_HW) {
+		regset16(NFI_CNFG_REG16, CNFG_HW_ECC_EN);
+		ecc_config(4);
+		configure_fdm(8);
+		configure_lock();
+	}
+
+	regset16(NFI_IOCON_REG16, 0x47);
+}
+
+static int dev_ready(struct nand_chip *chip)
+{
+	return !(regread32(NFI_STA_REG32) & STA_NAND_BUSY);
+}
+
+static int oob_mt7621_ooblayout_ecc(struct mtd_info *mtd, int section,
+				    struct mtd_oob_region *oobregion)
+{
+	oobregion->length = 8;
+	oobregion->offset = layout->eccpos[section * 8];
+	return 0;
+}
+
+static int oob_mt7621_ooblayout_free(struct mtd_info *mtd, int section,
+				     struct mtd_oob_region *oobregion)
+{
+	if (section >= (layout->eccbytes / 8))
+		return -ERANGE;
+	oobregion->offset = layout->oobfree[section].offset;
+	oobregion->length = layout->oobfree[section].length;
+	return 0;
+}
+
+/*
+ * Code to support the legacy mediatek nand flash bad block table.
+ * The default for this driver is to use the standard Linux bad block
+ * table format. However you need a new boot loader that supports that.
+ * The old (and most often used) medaitek boot loaders use their own
+ * BBT format, and this code implements that. There is a devicetree
+ * binding that enables use of this.
+ */
+#define BBT_BLOCK_NUM_DEFAULT	32
+#define BBT_OOB_SIGNATURE	1
+#define BBT_SIGNATURE_LEN	7
+
+static const u8 oob_signature[] = "mtknand";
+static u32 bbt_size;
+
+static int read_legacy_bbt_page(struct mtd_info *mtd, unsigned int page)
+{
+	struct nand_chip *chip = mtd_to_nand(mtd);
+
+	if (read_oob_hw(chip, page) == 0) {
+		int corrected;
+
+		if (chip->oob_poi[0] != 0xff) {
+			pr_info("mt7621-nand: Bad Block on page=%d\n", page);
+			return -ENODEV;
+		}
+		if (memcmp(&chip->oob_poi[BBT_OOB_SIGNATURE], oob_signature,
+			   BBT_SIGNATURE_LEN) != 0) {
+			pr_info("mt7621-nand: no BBT signature, page=%d\n",
+				page);
+			return -EINVAL;
+		}
+		corrected = exec_read_page(mtd, page, mtd->writesize,
+					   chip->data_buf, chip->oob_poi);
+		if (corrected >= 0) {
+			int bbt_bytes = (bbt_size <= mtd->writesize)
+					? bbt_size
+					: mtd->writesize;
+
+			pr_info("mt7621-nand: BBT signature match, page=%d\n",
+				page);
+			memcpy(chip->bbt, chip->data_buf, bbt_bytes);
+			return 0;
+		}
+	}
+
+	pr_err("mt7621-nand: legacy BBT read failed at page %d\n", page);
+	return -EIO;
+}
+
+static int load_legacy_bbt(struct mtd_info *mtd)
+{
+	struct nand_chip *chip = mtd_to_nand(mtd);
+	struct host *host = nand_get_controller_data(chip);
+	u32 blocks;
+	int i;
+
+	blocks = 0x1 << (chip->chip_shift - chip->phys_erase_shift);
+	bbt_size = blocks >> 2;
+
+	if (!chip->bbt) {
+		chip->bbt = kzalloc(bbt_size, GFP_KERNEL);
+		if (!chip->bbt)
+			return -ENOMEM;
+	}
+
+	for (i = blocks - 1; i >= (blocks - host->legacybbt_block_num); i--) {
+		int page = i << (chip->phys_erase_shift - chip->page_shift);
+
+		if (read_legacy_bbt_page(mtd, page) == 0) {
+			pr_info("mt7621-nand: loading BBT success (%d)\n",
+				page);
+			return 0;
+		}
+	}
+
+	pr_err("mt7621-nand: loading Bad Block Table failed\n");
+	return -ENODEV;
+}
+
+static int mt7621_nand_attach(struct nand_chip *chip)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	int i;
+
+	set_ecc_mode(mtd);
+
+	if (nanddev_target_size(&chip->base) < (256 * 1024 * 1024))
+		host->addr_cycles = 4;
+
+	/* allocate buffers or call select_chip here or a bit earlier*/
+	chip->data_buf = kzalloc(mtd->writesize + mtd->oobsize, GFP_KERNEL);
+	chip->ecc.calc_buf = kzalloc(mtd->oobsize, GFP_KERNEL);
+	chip->ecc.code_buf = kzalloc(mtd->oobsize, GFP_KERNEL);
+	if (!chip->data_buf || !chip->ecc.calc_buf || !chip->ecc.code_buf)
+		return -ENOMEM;
+
+	chip->oob_poi = chip->data_buf + mtd->writesize;
+	chip->badblockpos = 0;
+	chip->ecc.size = mtd->writesize;
+	chip->ecc.bytes = (mtd->writesize / NAND_SECTOR_SIZE) * 8;
+
+	if (mtd->writesize == 4096)
+		layout = &nand_oob_128;
+	else if (mtd->writesize == 2048)
+		layout = &nand_oob_64;
+	else if (mtd->writesize == 512)
+		layout = &nand_oob_16;
+
+	layout->eccbytes = mtd->oobsize - OOB_AVAI_PER_SECTOR *
+			   (mtd->writesize / NAND_SECTOR_SIZE);
+	for (i = 0; i < layout->eccbytes; i++)
+		layout->eccpos[i] = OOB_AVAI_PER_SECTOR *
+				    (mtd->writesize / NAND_SECTOR_SIZE) + i;
+
+	regwrite32(NFI_ACCCON_REG32, host->access_timing);
+
+	if (chip->options & NAND_BUSWIDTH_16)
+		regset16(NFI_PAGEFMT_REG16, PAGEFMT_DBYTE_EN);
+
+	chip->legacy.select_chip(chip, 0);
+
+	return 0;
+}
+
+static const struct mtd_ooblayout_ops oob_mt7621_ops = {
+	.ecc = oob_mt7621_ooblayout_ecc,
+	.free = oob_mt7621_ooblayout_free,
+};
+
+static const struct nand_controller_ops mt7621_controller_ops = {
+	.attach_chip = mt7621_nand_attach,
+};
+
+static int mt7621_nand_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct mtd_part_parser_data ppdata;
+	struct nand_chip *chip;
+	struct mtd_info *mtd;
+	struct resource *r;
+	int err = 0;
+
+	/* Allocate memory for the device structure (and zero it) */
+	host = devm_kzalloc(dev, sizeof(struct host), GFP_KERNEL);
+	if (!host)
+		return -ENOMEM;
+
+	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	host->regs = devm_ioremap_resource(dev, r);
+	pr_info("mt7621-nand: NAND register bank at 0x%x\n", (int)host->regs);
+	if (IS_ERR(host->regs))
+		return PTR_ERR(host->regs);
+
+	r = platform_get_resource(pdev, IORESOURCE_MEM, 1);
+	host->ecc = devm_ioremap_resource(dev, r);
+	pr_info("mt7621-nand: ECC register bank at 0x%x\n", (int)host->ecc);
+	if (IS_ERR(host->ecc))
+		return PTR_ERR(host->ecc);
+
+	host->access_timing = NFI_DEFAULT_ACCESS_TIMING;
+	host->addr_cycles = 5;
+
+	if (of_property_read_bool(dev->of_node, "mediatek,nand-bbt-compat")) {
+		pr_info("mt7621-nand: using legacy BBT format\n");
+		host->legacybbt = true;
+	}
+	if (host->legacybbt) {
+		err = of_property_read_u32(dev->of_node,
+					   "mediatek,nand-bbt-block-num",
+					   &host->legacybbt_block_num);
+		if (err)
+			host->legacybbt_block_num = BBT_BLOCK_NUM_DEFAULT;
+	}
+
+	/* init mtd data structure */
+	chip = &host->nand_chip;
+	chip->priv = host;
+
+	mtd = nand_to_mtd(chip);
+	mtd->priv = chip;
+	mtd->owner = THIS_MODULE;
+	mtd->name = "MT7621-NAND";
+	mtd->dev.parent = &pdev->dev;
+	host->mtd = mtd;
+
+	nand_set_flash_node(chip, pdev->dev.of_node);
+
+	chip->legacy.select_chip = select_chip;
+	chip->legacy.chip_delay = 20; /* 20us command delay time */
+	chip->legacy.read_byte = read_byte;
+	chip->legacy.read_buf = read_buf;
+	chip->legacy.write_buf = write_buf;
+	chip->legacy.dev_ready = dev_ready;
+	chip->legacy.cmdfunc = command_bp;
+	chip->legacy.block_bad = block_bad;
+	chip->legacy.cmd_ctrl = mt7621_cmd_ctrl;
+	chip->legacy.dummy_controller.ops = &mt7621_controller_ops;
+
+	chip->ecc.mode = NAND_ECC_HW;
+	chip->ecc.strength = 1;
+	chip->ecc.read_page = read_page_hwecc;
+	chip->ecc.write_page = write_page_hwecc;
+	chip->ecc.write_oob = write_oob;
+	chip->ecc.read_oob = read_oob;
+
+	chip->options |= NAND_USE_BOUNCE_BUFFER;
+	chip->bbt_options |= NAND_BBT_USE_FLASH;
+	chip->buf_align = 16;
+
+	if (host->legacybbt)
+		chip->options |= NAND_SKIP_BBTSCAN;
+
+	mtd_set_ooblayout(mtd, &oob_mt7621_ops);
+
+	init_hw(host);
+
+	err = nand_scan(chip, 1);
+	if (err) {
+		pr_err("mt7621-nand: failed to identify NAND device\n");
+		goto out;
+	}
+
+	platform_set_drvdata(pdev, host);
+
+	err = mtd_device_parse_register(mtd, probe_types, &ppdata, NULL, 0);
+	if (err)
+		goto out;
+
+	if (host->legacybbt) {
+		err = load_legacy_bbt(mtd);
+		if (err)
+			goto out;
+	}
+
+	return 0;
+
+out:
+	pr_err("mt7621-nand: probe failed, err=%d\n", err);
+	nand_release(chip);
+	platform_set_drvdata(pdev, NULL);
+
+	return err;
+}
+
+static int mt7621_nand_remove(struct platform_device *pdev)
+{
+	struct host *host = platform_get_drvdata(pdev);
+	struct nand_chip *chip = &host->nand_chip;
+
+	nand_release(chip);
+	return 0;
+}
+
+static const struct of_device_id match[] = {
+	{ .compatible = "mtk,mt7621-nand" },
+	{},
+};
+MODULE_DEVICE_TABLE(of, match);
+
+static struct platform_driver mt7621_nand_driver = {
+	.probe = mt7621_nand_probe,
+	.remove = mt7621_nand_remove,
+	.driver = {
+		.name = "MT7621-NAND",
+		.owner = THIS_MODULE,
+		.of_match_table = match,
+	},
+};
+module_platform_driver(mt7621_nand_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("MediaTek MT7621 NAND controller driver");
diff --git a/drivers/staging/mt7621-nand/mt7621_nand.h b/drivers/staging/mt7621-nand/mt7621_nand.h
new file mode 100644
index 000000000000..fc9145435d5b
--- /dev/null
+++ b/drivers/staging/mt7621-nand/mt7621_nand.h
@@ -0,0 +1,362 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * mt7621_nand.h - Mediatek MT7621 NAND Flash Controller device driver
+ *
+ * Copyright 2009-2012 MediaTek Co.,Ltd.
+ * Copyright 2018-2019 Greg Ungerer <gerg@kernel.org>
+ */
+
+#ifndef MT7621_NAND_H
+#define MT7621_NAND_H
+
+#define NFI_DEFAULT_ACCESS_TIMING	0x30C77fff
+
+#define NAND_SECTOR_SIZE	512
+#define OOB_PER_SECTOR		16
+#define OOB_AVAI_PER_SECTOR	8
+
+/****************************************************************************
+ * NFI Register Definition
+ ****************************************************************************/
+
+#define NFI_CNFG_REG16		0x0000
+#define NFI_PAGEFMT_REG16	0x0004
+#define NFI_CON_REG16		0x0008
+#define NFI_ACCCON_REG32	0x000C
+#define NFI_INTR_EN_REG16	0x0010
+#define NFI_INTR_REG16		0x0014
+
+#define NFI_CMD_REG16		0x0020
+
+#define NFI_ADDRNOB_REG16	0x0030
+#define NFI_COLADDR_REG32	0x0034
+#define NFI_ROWADDR_REG32	0x0038
+
+#define NFI_STRDATA_REG16	0x0040
+#define NFI_CNRNB_REG16		0x0044
+
+#define NFI_DATAW_REG32		0x0050
+#define NFI_DATAR_REG32		0x0054
+#define NFI_PIO_DIRDY_REG16	0x0058
+
+#define NFI_STA_REG32		0x0060
+#define NFI_FIFOSTA_REG16	0x0064
+#define NFI_LOCKSTA_REG16	0x0068
+
+#define NFI_ADDRCNTR_REG16	0x0070
+
+#define NFI_STRADDR_REG32	0x0080
+#define NFI_BYTELEN_REG16	0x0084
+
+#define NFI_CSEL_REG16		0x0090
+#define NFI_IOCON_REG16		0x0094
+
+#define NFI_FDM0L_REG32		0x00A0
+#define NFI_FDM0M_REG32		0x00A4
+
+#define NFI_LOCK_REG16		0x0100
+#define NFI_LOCKCON_REG32	0x0104
+#define NFI_LOCKANOB_REG16	0x0108
+#define NFI_LOCK00ADD_REG32	0x0110
+#define NFI_LOCK00FMT_REG32	0x0114
+#define NFI_LOCK01ADD_REG32	0x0118
+#define NFI_LOCK01FMT_REG32	0x011C
+#define NFI_LOCK02ADD_REG32	0x0120
+#define NFI_LOCK02FMT_REG32	0x0124
+#define NFI_LOCK03ADD_REG32	0x0128
+#define NFI_LOCK03FMT_REG32	0x012C
+#define NFI_LOCK04ADD_REG32	0x0130
+#define NFI_LOCK04FMT_REG32	0x0134
+#define NFI_LOCK05ADD_REG32	0x0138
+#define NFI_LOCK05FMT_REG32	0x013C
+#define NFI_LOCK06ADD_REG32	0x0140
+#define NFI_LOCK06FMT_REG32	0x0144
+#define NFI_LOCK07ADD_REG32	0x0148
+#define NFI_LOCK07FMT_REG32	0x014C
+#define NFI_LOCK08ADD_REG32	0x0150
+#define NFI_LOCK08FMT_REG32	0x0154
+#define NFI_LOCK09ADD_REG32	0x0158
+#define NFI_LOCK09FMT_REG32	0x015C
+#define NFI_LOCK10ADD_REG32	0x0160
+#define NFI_LOCK10FMT_REG32	0x0164
+#define NFI_LOCK11ADD_REG32	0x0168
+#define NFI_LOCK11FMT_REG32	0x016C
+#define NFI_LOCK12ADD_REG32	0x0170
+#define NFI_LOCK12FMT_REG32	0x0174
+#define NFI_LOCK13ADD_REG32	0x0178
+#define NFI_LOCK13FMT_REG32	0x017C
+#define NFI_LOCK14ADD_REG32	0x0180
+#define NFI_LOCK14FMT_REG32	0x0184
+#define NFI_LOCK15ADD_REG32	0x0188
+#define NFI_LOCK15FMT_REG32	0x018C
+
+#define NFI_FIFODATA0_REG32	0x0190
+#define NFI_FIFODATA1_REG32	0x0194
+#define NFI_FIFODATA2_REG32	0x0198
+#define NFI_FIFODATA3_REG32	0x019C
+#define NFI_MASTERSTA_REG16	0x0210
+
+/*****************************************************************************
+ * NFI Register Field Definition
+ *****************************************************************************/
+
+/* NFI_CNFG */
+#define CNFG_AHB		0x0001
+#define CNFG_READ_EN		0x0002
+#define CNFG_DMA_BURST_EN	0x0004
+#define CNFG_BYTE_RW		0x0040
+#define CNFG_HW_ECC_EN		0x0100
+#define CNFG_AUTO_FMT_EN	0x0200
+#define CNFG_OP_IDLE		0x0000
+#define CNFG_OP_READ		0x1000
+#define CNFG_OP_SRD		0x2000
+#define CNFG_OP_PRGM		0x3000
+#define CNFG_OP_ERASE		0x4000
+#define CNFG_OP_RESET		0x5000
+#define CNFG_OP_CUST		0x6000
+#define CNFG_OP_MODE_MASK	0x7000
+#define CNFG_OP_MODE_SHIFT	12
+
+/* NFI_PAGEFMT */
+#define PAGEFMT_512		0x0000
+#define PAGEFMT_2K		0x0001
+#define PAGEFMT_4K		0x0002
+
+#define PAGEFMT_PAGE_MASK	0x0003
+
+#define PAGEFMT_DBYTE_EN	0x0008
+
+#define PAGEFMT_SPARE_16	0x0000
+#define PAGEFMT_SPARE_26	0x0001
+#define PAGEFMT_SPARE_27	0x0002
+#define PAGEFMT_SPARE_28	0x0003
+#define PAGEFMT_SPARE_MASK	0x0030
+#define PAGEFMT_SPARE_SHIFT	4
+
+#define PAGEFMT_FDM_MASK	0x0F00
+#define PAGEFMT_FDM_SHIFT	8
+
+#define PAGEFMT_FDM_ECC_MASK	0xF000
+#define PAGEFMT_FDM_ECC_SHIFT	12
+
+/* NFI_CON */
+#define CON_FIFO_FLUSH		0x0001
+#define CON_NFI_RST		0x0002
+#define CON_NFI_SRD		0x0010
+
+#define CON_NFI_NOB_MASK	0x0060
+#define CON_NFI_NOB_SHIFT	5
+
+#define CON_NFI_BRD		0x0100
+#define CON_NFI_BWR		0x0200
+
+#define CON_NFI_SEC_MASK	0xF000
+#define CON_NFI_SEC_SHIFT	12
+
+/* NFI_ACCCON */
+#define ACCCON_SETTING		()
+
+/* NFI_INTR_EN */
+#define INTR_RD_DONE_EN		0x0001
+#define INTR_WR_DONE_EN		0x0002
+#define INTR_RST_DONE_EN	0x0004
+#define INTR_ERASE_DONE_EN	0x0008
+#define INTR_BSY_RTN_EN		0x0010
+#define INTR_ACC_LOCK_EN	0x0020
+#define INTR_AHB_DONE_EN	0x0040
+#define INTR_ALL_INTR_DE	0x0000
+#define INTR_ALL_INTR_EN	0x007F
+
+/* NFI_INTR */
+#define INTR_RD_DONE		0x0001
+#define INTR_WR_DONE		0x0002
+#define INTR_RST_DONE		0x0004
+#define INTR_ERASE_DONE		0x0008
+#define INTR_BSY_RTN		0x0010
+#define INTR_ACC_LOCK		0x0020
+#define INTR_AHB_DONE		0x0040
+
+/* NFI_ADDRNOB */
+#define ADDR_COL_NOB_MASK	0x0003
+#define ADDR_COL_NOB_SHIFT	0
+#define ADDR_ROW_NOB_MASK	0x0030
+#define ADDR_ROW_NOB_SHIFT	4
+
+/* NFI_STA */
+#define STA_READ_EMPTY		0x00001000
+#define STA_ACC_LOCK		0x00000010
+#define STA_CMD_STATE		0x00000001
+#define STA_ADDR_STATE		0x00000002
+#define STA_DATAR_STATE		0x00000004
+#define STA_DATAW_STATE		0x00000008
+
+#define STA_NAND_FSM_MASK	0x1F000000
+#define STA_NAND_BUSY		0x00000100
+#define STA_NAND_BUSY_RETURN	0x00000200
+#define STA_NFI_FSM_MASK	0x000F0000
+#define STA_NFI_OP_MASK		0x0000000F
+
+/* NFI_FIFOSTA */
+#define FIFO_RD_EMPTY		0x0040
+#define FIFO_RD_FULL		0x0080
+#define FIFO_WR_FULL		0x8000
+#define FIFO_WR_EMPTY		0x4000
+#define FIFO_RD_REMAIN(x)	(0x1F & (x))
+#define FIFO_WR_REMAIN(x)	((0x1F00 & (x)) >> 8)
+
+/* NFI_ADDRCNTR */
+#define ADDRCNTR_CNTR(x)	((0xF000 & (x)) >> 12)
+#define ADDRCNTR_OFFSET(x)	(0x03FF & (x))
+
+/* NFI_LOCK */
+#define NFI_LOCK_ON		0x0001
+
+/* NFI_LOCKANOB */
+#define PROG_RADD_NOB_MASK	0x7000
+#define PROG_RADD_NOB_SHIFT	12
+#define PROG_CADD_NOB_MASK	0x0300
+#define PROG_CADD_NOB_SHIFT	8
+#define ERASE_RADD_NOB_MASK	0x0070
+#define ERASE_RADD_NOB_SHIFT	4
+#define ERASE_CADD_NOB_MASK	0x0007
+#define ERASE_CADD_NOB_SHIFT	0
+
+/*****************************************************************************
+ * ECC Register Definition
+ *****************************************************************************/
+
+#define ECC_ENCCON_REG16	0x0000
+#define ECC_ENCCNFG_REG32	0x0004
+#define ECC_ENCDIADDR_REG32	0x0008
+#define ECC_ENCIDLE_REG32	0x000C
+#define ECC_ENCPAR0_REG32	0x0010
+#define ECC_ENCPAR1_REG32	0x0014
+#define ECC_ENCPAR2_REG32	0x0018
+#define ECC_ENCPAR3_REG32	0x001C
+#define ECC_ENCPAR4_REG32	0x0020
+#define ECC_ENCSTA_REG32	0x0024
+#define ECC_ENCIRQEN_REG16	0x0028
+#define ECC_ENCIRQSTA_REG16	0x002C
+
+#define ECC_DECCON_REG16	0x0100
+#define ECC_DECCNFG_REG32	0x0104
+#define ECC_DECDIADDR_REG32	0x0108
+#define ECC_DECIDLE_REG16	0x010C
+#define ECC_DECFER_REG16	0x0110
+#define ECC_DECENUM_REG32	0x0114
+#define ECC_DECDONE_REG16	0x0118
+#define ECC_DECEL0_REG32	0x011C
+#define ECC_DECEL1_REG32	0x0120
+#define ECC_DECEL2_REG32	0x0124
+#define ECC_DECEL3_REG32	0x0128
+#define ECC_DECEL4_REG32	0x012C
+#define ECC_DECEL5_REG32	0x0130
+#define ECC_DECIRQEN_REG16	0x0134
+#define ECC_DECIRQSTA_REG16	0x0138
+#define ECC_FDMADDR_REG32	0x013C
+#define ECC_DECFSM_REG32	0x0140
+#define ECC_SYNSTA_REG32	0x0144
+#define ECC_DECNFIDI_REG32	0x0148
+#define ECC_SYN0_REG32		0x014C
+
+/*****************************************************************************
+ * ECC register definition
+ *****************************************************************************/
+
+/* ECC_ENCON */
+#define ENC_EN			0x0001
+#define ENC_DE			0x0000
+
+/* ECC_ENCCNFG */
+#define ECC_CNFG_ECC4		0x0000
+#define ECC_CNFG_ECC6		0x0001
+#define ECC_CNFG_ECC8		0x0002
+#define ECC_CNFG_ECC10		0x0003
+#define ECC_CNFG_ECC12		0x0004
+#define ECC_CNFG_ECC_MASK	0x00000007
+
+#define ENC_CNFG_NFI		0x0010
+#define ENC_CNFG_MODE_MASK	0x0010
+
+#define ENC_CNFG_META6		0x10300000
+#define ENC_CNFG_META8		0x10400000
+
+#define ENC_CNFG_MSG_MASK	0x1FFF0000
+#define ENC_CNFG_MSG_SHIFT	0x10
+
+/* ECC_ENCIDLE */
+#define ENC_IDLE		0x0001
+
+/* ECC_ENCSTA */
+#define STA_FSM			0x001F
+#define STA_COUNT_PS		0xFF10
+#define STA_COUNT_MS		0x3FFF0000
+
+/* ECC_ENCIRQEN */
+#define ENC_IRQEN		0x0001
+
+/* ECC_ENCIRQSTA */
+#define ENC_IRQSTA		0x0001
+
+/* ECC_DECCON */
+#define DEC_EN			0x0001
+#define DEC_DE			0x0000
+
+/* ECC_ENCCNFG */
+#define DEC_CNFG_ECC4		0x0000
+//#define DEC_CNFG_ECC6		0x0001
+//#define DEC_CNFG_ECC12	0x0002
+#define DEC_CNFG_NFI		0x0010
+//#define DEC_CNFG_META6	0x10300000
+//#define DEC_CNFG_META8	0x10400000
+
+#define DEC_CNFG_FER		0x01000
+#define DEC_CNFG_EL		0x02000
+#define DEC_CNFG_CORRECT	0x03000
+#define DEC_CNFG_TYPE_MASK	0x03000
+
+#define DEC_CNFG_EMPTY_EN	0x80000000
+
+#define DEC_CNFG_CODE_MASK	0x1FFF0000
+#define DEC_CNFG_CODE_SHIFT	0x10
+
+/* ECC_DECIDLE */
+#define DEC_IDLE		0x0001
+
+/* ECC_DECFER */
+#define DEC_FER0		0x0001
+#define DEC_FER1		0x0002
+#define DEC_FER2		0x0004
+#define DEC_FER3		0x0008
+#define DEC_FER4		0x0010
+#define DEC_FER5		0x0020
+#define DEC_FER6		0x0040
+#define DEC_FER7		0x0080
+
+/* ECC_DECENUM */
+#define ERR_NUM0		0x0000000F
+#define ERR_NUM1		0x000000F0
+#define ERR_NUM2		0x00000F00
+#define ERR_NUM3		0x0000F000
+#define ERR_NUM4		0x000F0000
+#define ERR_NUM5		0x00F00000
+#define ERR_NUM6		0x0F000000
+#define ERR_NUM7		0xF0000000
+
+/* ECC_DECDONE */
+#define DEC_DONE0		0x0001
+#define DEC_DONE1		0x0002
+#define DEC_DONE2		0x0004
+#define DEC_DONE3		0x0008
+#define DEC_DONE4		0x0010
+#define DEC_DONE5		0x0020
+#define DEC_DONE6		0x0040
+#define DEC_DONE7		0x0080
+
+/* ECC_DECIRQEN */
+#define DEC_IRQEN		0x0001
+
+/* ECC_DECIRQSTA */
+#define DEC_IRQSTA		0x0001
+
+#endif /* MT7621_NAND_H */
diff --git a/drivers/staging/mt7621-nand/mtk,mt7621-nand.txt b/drivers/staging/mt7621-nand/mtk,mt7621-nand.txt
new file mode 100644
index 000000000000..8f2b48377d86
--- /dev/null
+++ b/drivers/staging/mt7621-nand/mtk,mt7621-nand.txt
@@ -0,0 +1,29 @@
+MediaTek MT7621 NAND controller
+
+Required properties:
+- compatible "mtk,mt7621-nand"
+- reg: base address and length of controller and ECC register banks
+- #address-cells: must be 1
+- #size-cells: must be 1
+- status: either "disabled" or "okay"
+
+Example:
+
+        nand: nand@1e003000 {
+                status = "okay";
+
+                compatible = "mtk,mt7621-nand";
+                reg = <0x1e003000 0x800
+                        0x1e003800 0x800>;
+                #address-cells = <1>;
+                #size-cells = <1>;
+        };
+
+Optional:
+- mediatek,nand-bbt-compat: expect on-flash legacy Mediatek bad block table
+- mediatek,nand-bbt-block-num: possible number of legacy bad blocks
+
+If using the legacy u-boot provided by MediaTek you will want to use the
+"mediatek,nand-bbt-compat" binding. The driver default is to expect a
+standard Linux bad block table in flash.
+
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
