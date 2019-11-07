Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CEADAF2D31
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Nov 2019 12:16:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A90E885F96;
	Thu,  7 Nov 2019 11:16:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SdbHMGGKb-1f; Thu,  7 Nov 2019 11:16:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EE1F885DBB;
	Thu,  7 Nov 2019 11:15:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 94A051BF3EC
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 11:15:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8FD6C20390
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 11:15:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fKzbe6T2KRzL for <devel@linuxdriverproject.org>;
 Thu,  7 Nov 2019 11:15:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id 85C7020386
 for <devel@driverdev.osuosl.org>; Thu,  7 Nov 2019 11:15:21 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA7BEMDh032344;
 Thu, 7 Nov 2019 11:15:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=qZdNOYkeEn+TNrMStXPz8r+I8DNCJvMMDnUEGbPBgPQ=;
 b=JAW+GVs6Gr8wRysnXAI6tCbSwXDzHkJy5ZjaR7SYAsARE8fZqlug1xLctqO/Fo2op/2M
 qHY4/W8Uh5HWbzxHW6p1DCl3+VFgpShsCLyOe5Z48q1uzccHVR2rS4dbtuyTXyYNumJ2
 85c0DQy0KrM8nTavCEFmqiCe73aBaLlE2ZAU0eMSppMMyAYwpoZbF9O6dcpz/Kq9aYoO
 ZjUekutU7KyPVPTu59dgh65mMqxX2R0gLS5/7D8r3WXUR5ylWJjHXLy7TErjlHosn8m8
 V7TApxpm0lXGdeVd3d39u69U4EaC2wcrs9hcUqH0y00kUI9spQHMQBG4cijQ7qYtnWvX iA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2w41w0wbve-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 Nov 2019 11:15:19 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA7BDutb164971;
 Thu, 7 Nov 2019 11:15:19 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 2w41w9hms1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 Nov 2019 11:15:18 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xA7BFF2u017154;
 Thu, 7 Nov 2019 11:15:16 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 07 Nov 2019 03:15:13 -0800
Date: Thu, 7 Nov 2019 14:15:06 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: gerg@kernel.org
Subject: Re: [PATCH] mtd: rawnand: driver for Mediatek MT7621 SoC NAND flash
 controller
Message-ID: <20191107111506.GO10409@kadam>
References: <20191107073521.11413-1-gerg@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107073521.11413-1-gerg@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9433
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=3
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1910280000 definitions=main-1911070115
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9433
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=3 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1910280000
 definitions=main-1911070115
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 neil@brown.name, linux-mtd@lists.infradead.org, blogic@openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This driver seems like it could be fixed up and go directly into
drivers/nand/ instead of staging.  Other comments below.

On Thu, Nov 07, 2019 at 05:35:21PM +1000, gerg@kernel.org wrote:
> +static int check_bch_error(struct mtd_info *mtd, u8 *buf, u32 sector, u32 page)
> +{
> +	struct nand_chip *chip = mtd_to_nand(mtd);
> +	struct host *host = nand_get_controller_data(chip);
> +	u16 sectormask = 1 << sector;
> +	u32 errdebug, i, errnum;
> +	u32 timeout = 0xffff;
> +	u32 byte, bitoffset, bit1, bit2;
> +	u32 bit[6];
> +	int corrected = 0;
> +
> +	/* Wait for Decode Done */
> +	while ((sectormask & ecc_read16(ECC_DECDONE_REG16)) == 0) {
> +		timeout--;
> +		if (timeout == 0)
> +			return -EIO;

Could we do these on one line like:

		if (--timeout == 0)
			return -EIO;

Later instead of counting down we count up.  Let's do it consistently
throughout.  I really wish timeout were an int instead of a u32.  There
are too many u32s in this code for no reason.  Making things unsigned
doesn't make it safer.  Generally things like iterators and small
counters like this should just be int.

> +	}
> +
> +	/*
> +	 * We will manually correct the error bits in the last sector,
> +	 * not all the sectors of the page!
> +	 */
> +	memset(bit, 0, sizeof(bit));
> +	errdebug = ecc_read32(ECC_DECENUM_REG32);
> +	errnum = ecc_read32(ECC_DECENUM_REG32) >> (sector << 2);
> +	errnum &= 0xf;
> +
> +	if (errnum == 0)
> +		return 0;
> +
> +	if (errnum == 0xf) {
> +		/*
> +		 * Increment the last read's failed counter only. The
> +		 * caller supposed to check if it is a blank page with
                        ^^^
Missing *is*.


> +		 * bit-flips, or a real ECC error. If the latter, it
> +		 * should increment the failed counter with this last
> +		 * read's failed counter
> +		 */
> +		host->last_failed++;
> +		corrected = -EBADMSG;


If the next ecc_read16(ECC_DECFER_REG16) fails then we set "corrected"
to -EIO.  Should we just return -EBADMSG here?

> +	} else {
> +		corrected = errnum;
> +
> +		for (i = 0; i < ((errnum + 1) >> 1); ++i) {
> +			bit[i] = ecc_read32(ECC_DECEL0_REG32 + i);
> +			bit1 = bit[i] & 0x1FFF;
> +			/*
> +			 * Check if bitflip is in data block (< 0x1000)
> +			 * or OOB. Fix it only in data block.
> +			 */
> +			if (bit1 < 0x1000) {
> +				byte = bit1 / 8;
> +				bitoffset = bit1 % 8;
> +				buf[byte] = buf[byte] ^ (1 << bitoffset);
> +			}
> +
> +			mtd->ecc_stats.corrected++;
> +
> +			bit2 = (bit[i] >> 16) & 0x1FFF;
> +			if (bit2 != 0) {
> +				/*
> +				 * Check if bitflip is in data block
> +				 * (< 0x1000) or OOB. Fix it only in
> +				 * data block.
> +				 */
> +				if (bit2 < 0x1000) {
> +					byte = bit2 / 8;
> +					bitoffset = bit2 % 8;
> +					buf[byte] = buf[byte] ^
> +						    (1 << bitoffset);
> +				}
> +
> +				mtd->ecc_stats.corrected++;
> +			}
> +		}
> +	}
> +	if ((ecc_read16(ECC_DECFER_REG16) & (1 << sector)) == 0)
> +		corrected = -EIO;
> +
> +	return corrected;
> +}
> +
> +static bool RFIFOValidSize(u16 size)
> +{
> +	u32 timeout = 0xffff;
> +
> +	while (FIFO_RD_REMAIN(regread16(NFI_FIFOSTA_REG16)) < size) {
> +		timeout--;
> +		if (timeout == 0)
> +			return false;

	if (--timeout == 0)
		return false;

> +	}
> +	return true;
> +}
> +
> +static bool WFIFOValidSize(u16 size)
> +{
> +	u32 timeout = 0xffff;
> +
> +	while (FIFO_WR_REMAIN(regread16(NFI_FIFOSTA_REG16)) > size) {
> +		timeout--;
> +		if (timeout == 0)
> +			return false;

	if (--timeout == 0)
		return false;


> +	}
> +	return true;
> +}
> +
> +static bool status_ready(u32 status)
> +{
> +	u32 timeout = 0xffff;
> +
> +	while ((regread32(NFI_STA_REG32) & status) != 0) {
> +		timeout--;
> +		if (timeout == 0)
> +			return false;

	if (--timeout == 0)
		return false;


> +	}
> +	return true;
> +}
> +
> +static bool reset(void)
> +{
> +	int timeout = 0xffff;
> +
> +	if (regread16(NFI_MASTERSTA_REG16)) {
> +		regwrite16(NFI_CON_REG16, CON_FIFO_FLUSH | CON_NFI_RST);
> +		while (regread16(NFI_MASTERSTA_REG16)) {
> +			timeout--;
> +			if (!timeout)
> +				pr_err("mt7621-nand: %s timeout\n", __func__);

	if (--timeout == 0)
		pr_err("mt7621-nand: %s timeout\n", __func__);

We may as well return after a timeout instead of looping forever.  The
system is hosed, but maybe it will be limping enough to collect some
debug information.


> +		}
> +	}
> +
> +	/* issue reset operation */
> +	regwrite16(NFI_CON_REG16, CON_FIFO_FLUSH | CON_NFI_RST);
> +
> +	return status_ready(STA_NFI_FSM_MASK | STA_NAND_BUSY) &&
> +			    RFIFOValidSize(0) &&
> +			    WFIFOValidSize(0);
> +}
> +
> +static void set_mode(u16 mode)
> +{
> +	u16 v = regread16(NFI_CNFG_REG16);
> +
> +	v &= ~CNFG_OP_MODE_MASK;
> +	v |= mode;
> +	regwrite16(NFI_CNFG_REG16, v);
> +}
> +
> +static void set_autoformat(bool enable)
> +{
> +	if (enable)
> +		regset16(NFI_CNFG_REG16, CNFG_AUTO_FMT_EN);
> +	else
> +		regclr16(NFI_CNFG_REG16, CNFG_AUTO_FMT_EN);
> +}
> +
> +static void configure_fdm(u16 size)
> +{
> +	regclr16(NFI_PAGEFMT_REG16, PAGEFMT_FDM_MASK | PAGEFMT_FDM_ECC_MASK);
> +	regset16(NFI_PAGEFMT_REG16, size << PAGEFMT_FDM_SHIFT);
> +	regset16(NFI_PAGEFMT_REG16, size << PAGEFMT_FDM_ECC_SHIFT);
> +}
> +
> +static void configure_lock(void)
> +{
> +	const u32 write_col = 2;
> +	const u32 write_row = 3;
> +	const u32 erase_col = 0;
> +	const u32 erase_row = 3;
> +
> +	regwrite16(NFI_LOCKANOB_REG16,
> +		   (write_col << PROG_CADD_NOB_SHIFT) |
> +		   (write_row << PROG_RADD_NOB_SHIFT) |
> +		   (erase_col << ERASE_CADD_NOB_SHIFT) |
> +		   (erase_row << ERASE_RADD_NOB_SHIFT));
> +}
> +
> +static bool pio_ready(void)
> +{
> +	int count = 0;
> +
> +	while (!(regread16(NFI_PIO_DIRDY_REG16) & 1)) {
> +		count++;
> +		if (count > 0xffff) {
> +			pr_err("mt7621-nand: %s timeout\n", __func__);
> +			return false;
> +		}

	if (--timeout == 0)

> +	}
> +	return true;
> +}
> +
> +static bool set_command(u16 command)
> +{
> +	regwrite16(NFI_CMD_REG16, command);
> +	return status_ready(STA_CMD_STATE);
> +}
> +
> +static bool set_address(u32 column, u32 row, u16 colnob, u16 rownob)
> +{
> +	regwrite32(NFI_COLADDR_REG32, column);
> +	regwrite32(NFI_ROWADDR_REG32, row);
> +	regwrite16(NFI_ADDRNOB_REG16, colnob | (rownob << ADDR_ROW_NOB_SHIFT));
> +	return status_ready(STA_ADDR_STATE);
> +}
> +
> +static void mt7621_cmd_ctrl(struct nand_chip *chip, int dat, unsigned int ctrl)
> +{
> +	if (ctrl & NAND_ALE) {
> +		set_address(dat, 0, 1, 0);
> +	} else if (ctrl & NAND_CLE) {
> +		reset();
> +		set_mode(0x6000);
> +		set_command(dat);
> +	}
> +}
> +
> +static bool check_RW_count(u16 writesize)
> +{
> +	u32 timeout = 0xffff;
> +	u16 sec = writesize >> 9;
> +
> +	while (ADDRCNTR_CNTR(regread16(NFI_ADDRCNTR_REG16)) < sec) {
> +		timeout--;
> +		if (timeout == 0) {
> +			pr_warn("mt7621-nand: %s timeout\n", __func__);
> +			return false;
> +		}

		if (--timeout == 0) {

> +	}
> +	return true;
> +}
> +
> +/*
> + * Reset NFI HW internal state machine and flush NFI in/out FIFO
> + */
> +static bool ready_for_read(struct nand_chip *chip, u32 row,
> +			   u32 column, bool full, u8 *buf)
> +{
> +	u16 sec = 1 << (chip->page_shift - 9);
> +	u32 colnob = 2, rownob = host->addr_cycles - 2;
> +	bool ret = false;
> +
> +	if (chip->options & NAND_BUSWIDTH_16)
> +		column /= 2;
> +
> +	if (!reset())
> +		goto cleanup;

There is no cleanup.  Misleading label name.  Just say "return false;

> +
> +	regset16(NFI_CNFG_REG16, CNFG_HW_ECC_EN);
> +	set_mode(CNFG_OP_READ);
> +	regset16(NFI_CNFG_REG16, CNFG_READ_EN);
> +	regwrite16(NFI_CON_REG16, sec << CON_NFI_SEC_SHIFT);
> +
> +	if (full) {
> +		regclr16(NFI_CNFG_REG16, CNFG_AHB);
> +		regset16(NFI_CNFG_REG16, CNFG_HW_ECC_EN);
> +	} else {
> +		regclr16(NFI_CNFG_REG16, CNFG_HW_ECC_EN);
> +		regclr16(NFI_CNFG_REG16, CNFG_AHB);
> +	}
> +
> +	set_autoformat(full);
> +	if (full)
> +		ecc_decode_start();
> +	if (!set_command(NAND_CMD_READ0))
> +		goto cleanup;
> +	if (!set_address(column, row, colnob, rownob))
> +		goto cleanup;
> +	if (!set_command(NAND_CMD_READSTART))
> +		goto cleanup;
> +	if (!status_ready(STA_NAND_BUSY))
> +		goto cleanup;
> +
> +	ret = true;
> +
> +cleanup:
> +	return ret;
> +}
> +
> +static bool ready_for_write(struct nand_chip *chip, u32 row,
> +			    u32 column, bool full, u8 *buf)
> +{
> +	u32 sec = 1 << (chip->page_shift - 9);
> +	u32 colnob = 2, rownob = host->addr_cycles - 2;
> +	bool ret = false;
> +
> +	if (chip->options & NAND_BUSWIDTH_16)
> +		column /= 2;
> +
> +	/* Reset NFI HW internal state machine and flush NFI in/out FIFO */
> +	if (!reset())
> +		return false;
> +
> +	set_mode(CNFG_OP_PRGM);
> +
> +	regclr16(NFI_CNFG_REG16, CNFG_READ_EN);
> +
> +	regwrite16(NFI_CON_REG16, sec << CON_NFI_SEC_SHIFT);
> +
> +	if (full) {
> +		regclr16(NFI_CNFG_REG16, CNFG_AHB);
> +		regset16(NFI_CNFG_REG16, CNFG_HW_ECC_EN);
> +	} else {
> +		regclr16(NFI_CNFG_REG16, CNFG_HW_ECC_EN);
> +		regclr16(NFI_CNFG_REG16, CNFG_AHB);
> +	}
> +
> +	set_autoformat(full);
> +
> +	if (full)
> +		ecc_encode_start();
> +
> +	if (!set_command(NAND_CMD_SEQIN))
> +		goto cleanup;

There isn't any cleanup.

> +	/* FIX ME: For Any Kind of AddrCycle */
> +	if (!set_address(column, row, colnob, rownob))
> +		goto cleanup;
> +
> +	if (!status_ready(STA_NAND_BUSY))
> +		goto cleanup;
> +
> +	ret = true;
> +
> +cleanup:
> +	return ret;
> +}
> +
> +static bool check_dececc_done(u32 sec)
> +{
> +	u32 timeout, dec_mask;
> +
> +	timeout = 0xffff;

Move this to the declaration like before.

> +	dec_mask = (1 << sec) - 1;
> +	while ((dec_mask != ecc_read16(ECC_DECDONE_REG16)) && timeout > 0)
> +		timeout--;

		if (--timeout == 0) {
			pr_err("mt7621-nand: ECC_DECDONE: timeout\n");
			return false;
		}


> +	if (timeout == 0) {
> +		pr_err("mt7621-nand: ECC_DECDONE: timeout\n");
> +		return false;
> +	}
> +	return true;
> +}
> +
> +static bool mcu_read_data(u8 *buf, u32 length)
> +{
> +	int timeout = 0xffff;
> +	u32 *buf32 = (u32 *)buf;
> +	u32 i;
> +
> +	if ((u32)buf % 4 || length % 4)
             ^^^^^^^
I'm so surprised that this cast doesn't generate a "cast from pointer to
integer of different size" compile warning...  Did you want to cast to
unsigned long?

> +		regset16(NFI_CNFG_REG16, CNFG_BYTE_RW);
> +	else
> +		regclr16(NFI_CNFG_REG16, CNFG_BYTE_RW);
> +
> +	/* regwrite32(NFI_STRADDR_REG32, 0); */
> +	regset16(NFI_CON_REG16, CON_NFI_BRD);
> +
> +	if ((u32)buf % 4 || length % 4) {
            ^^^^^^^^^^^^

> +		for (i = 0; (i < (length)) && (timeout > 0);) {
> +			if (regread16(NFI_PIO_DIRDY_REG16) & 1) {
> +				*buf++ = (u8)regread32(NFI_DATAR_REG32);
> +				i++;
> +			} else {
> +				timeout--;
> +			}
> +			if (timeout == 0) {
> +				pr_warn("mt7621-nand: %s timeout\n", __func__);
> +				return false;
> +			}


		i = 0;
		while (i < length) {
			if (regread16(NFI_PIO_DIRDY_REG16) & 1) {
				*buf++ = (u8)regread32(NFI_DATAR_REG32);
				i++;
			} else {
				if (--timeout == 0) {
					pr_warn("mt7621-nand: %s timeout\n", __func__);
					return false;
				}
			}
		}


Except looking a bit lower, I think you only want to do that for the
first mod four bits, then you can start doing 4 byte reads.  Probably
it's a little faster.


> +		}
> +	} else {
> +		for (i = 0; (i < (length >> 2)) && (timeout > 0);) {

Use (length / sizeof(u32)) instead of the shift.

> +			if (regread16(NFI_PIO_DIRDY_REG16) & 1) {
> +				*buf32++ = regread32(NFI_DATAR_REG32);
> +				i++;
> +			} else {
> +				timeout--;
> +			}
> +			if (timeout == 0) {
> +				pr_warn("mt7621-nand: %s timeout\n", __func__);
> +				return false;
> +			}
> +		}
> +	}
> +
> +	return true;
> +}
> +
> +static bool mcu_write_data(struct mtd_info *mtd, const u8 *buf, u32 length)
> +{
> +	u32 timeout = 0xffff;
> +	u32 *buf32;
> +	u32 i;
> +
> +	regclr16(NFI_CNFG_REG16, CNFG_BYTE_RW);
> +	regset16(NFI_CON_REG16, CON_NFI_BWR);
> +	buf32 = (u32 *)buf;
> +
> +	if ((u32)buf % 4 || length % 4)
> +		regset16(NFI_CNFG_REG16, CNFG_BYTE_RW);
> +	else
> +		regclr16(NFI_CNFG_REG16, CNFG_BYTE_RW);
> +
> +	if ((u32)buf % 4 || length % 4) {
> +		for (i = 0; (i < (length)) && (timeout > 0);) {
> +			if (regread16(NFI_PIO_DIRDY_REG16) & 1) {
> +				regwrite32(NFI_DATAW_REG32, *buf++);
> +				i++;
> +			} else {
> +				timeout--;
> +			}
> +			if (timeout == 0) {
> +				pr_warn("mt7621-nand: %s timeout\n", __func__);
> +				return false;
> +			}
> +		}
> +	} else {
> +		for (i = 0; (i < (length >> 2)) && (timeout > 0);) {
> +			if (regread16(NFI_PIO_DIRDY_REG16) & 1) {
> +				regwrite32(NFI_DATAW_REG32, *buf32++);
> +				i++;
> +			} else {
> +				timeout--;
> +			}
> +			if (timeout == 0) {
> +				pr_warn("mt7621-nand: %s timeout\n", __func__);
> +				return false;
> +			}
> +		}
> +	}

Same stuff.

> +
> +	return true;
> +}
> +
> +static void read_fdm_data(u8 *buf, u32 sec)
> +{
> +	u32 *buf32 = (u32 *)buf;
> +	u32 i;
> +
> +	if (buf32) {

Can this really be NULL?  It doesn't appear to be checked consistently
at first glance.

> +		for (i = 0; i < sec; ++i) {
> +			*buf32++ = regread32(NFI_FDM0L_REG32 + (i << 3));
> +			*buf32++ = regread32(NFI_FDM0M_REG32 + (i << 3));
> +		}
> +	}
> +}
> +
> +static u8 fdm_buf[64];

Why is this static and why is outside the scope of the function?  It
raises concerns about race conditions.  It's not large, so it could
be declared on the stack, no?

> +
> +static void write_fdm_data(struct nand_chip *chip, u8 *buf, u32 sec)
> +{
> +	struct nand_oobfree *free_entry;
> +	bool empty = true;
> +	u8 checksum = 0;
> +	u32 *buf32;
> +	u32 i, j;
> +
> +	memcpy(fdm_buf, buf, sec * 8);
> +
> +	free_entry = layout->oobfree;
> +	for (i = 0; i < MTD_MAX_OOBFREE_ENTRIES && free_entry[i].length; i++) {
> +		for (j = 0; j < free_entry[i].length; j++) {
> +			if (buf[free_entry[i].offset + j] != 0xff)
> +				empty = false;
> +			checksum ^= buf[free_entry[i].offset + j];
> +		}
> +	}
> +
> +	if (!empty)
> +		fdm_buf[free_entry[i - 1].offset + free_entry[i - 1].length] =
> +			checksum;
> +
> +	buf32 = (u32 *)fdm_buf;
> +	for (i = 0; i < sec; ++i) {
> +		regwrite32(NFI_FDM0L_REG32 + (i << 3), *buf32++);
> +		regwrite32(NFI_FDM0M_REG32 + (i << 3), *buf32++);
> +	}
> +}
> +
> +static void stop_read(void)
> +{
> +	regclr16(NFI_CON_REG16, CON_NFI_BRD);
> +	reset();
> +	ecc_decode_end();
> +	regwrite16(NFI_INTR_EN_REG16, 0);
> +}
> +
> +static void stop_write(void)
> +{
> +	regclr16(NFI_CON_REG16, CON_NFI_BWR);
> +	ecc_encode_end();
> +	regwrite16(NFI_INTR_EN_REG16, 0);
> +}
> +
> +/*
> + * This is a copy of the nand_check_erased_buf() function from nand_base.c, to
> + * keep the nand_base.c clean
> + */
> +static int check_erased_buf(void *buf, int len, int bitflips_threshold)
> +{
> +	const unsigned char *bitmap = buf;
> +	int bitflips = 0;
> +	int weight;
> +
> +	for (; len && ((uintptr_t)bitmap) % sizeof(long);
> +	     len--, bitmap++) {
> +		weight = hweight8(*bitmap);
> +		bitflips += BITS_PER_BYTE - weight;
> +		if (unlikely(bitflips > bitflips_threshold))
> +			return -EBADMSG;
> +	}
> +
> +	for (; len >= sizeof(long);
> +	     len -= sizeof(long), bitmap += sizeof(long)) {
> +		unsigned long d = *((unsigned long *)bitmap);
> +
> +		if (d == ~0UL)
> +			continue;
> +		weight = hweight_long(d);
> +		bitflips += BITS_PER_LONG - weight;
> +		if (unlikely(bitflips > bitflips_threshold))
> +			return -EBADMSG;
> +	}
> +
> +	for (; len > 0; len--, bitmap++) {
> +		weight = hweight8(*bitmap);
> +		bitflips += BITS_PER_BYTE - weight;
> +		if (unlikely(bitflips > bitflips_threshold))
> +			return -EBADMSG;
> +	}
> +
> +	return bitflips;
> +}
> +
> +/*
> + * This is the modified version of the nand_check_erased_ecc_chunk() in
> + * nand_base.c. This driver cannot use the generic function, as the ECC layout
> + * is slightly different (the 2k(data)+64(OOB) page is split up in to 4
> + * (512-byte data + 16-byte OOB) pages. Each of these sectors have 4-bit ECC,
> + * so we check them separately, and allow 4 bitflips / sector.
> + * We'll fix up the page to all-0xff only if all sectors in the page appears to
> + * be blank
> + */
> +static int check_erased_ecc_chunk(void *data, int datalen, void *oob,
> +				  int ooblen, int bitflips_threshold)
> +{
> +	int data_bitflips = 0, oob_bitflips = 0;

These initializers can be deleted.

> +
> +	data_bitflips = check_erased_buf(data, datalen, bitflips_threshold);
> +	if (data_bitflips < 0)
> +		return data_bitflips;
> +
> +	bitflips_threshold -= data_bitflips;
> +
> +	oob_bitflips = check_erased_buf(oob, ooblen, bitflips_threshold);
> +	if (oob_bitflips < 0)
> +		return oob_bitflips;
> +
> +	bitflips_threshold -= oob_bitflips;

No need for this.  It's a no-op.

> +	return data_bitflips + oob_bitflips;
> +}
> +
> +static int read_oob_raw(struct mtd_info *mtd, u8 *buf, int page, int len)
> +{
> +	struct nand_chip *chip = mtd_to_nand(mtd);
> +	int sec_num = 1 << (chip->page_shift - 9);
> +	int spare_per_sector = mtd->oobsize / sec_num;
> +	u32 column = 0;
> +	u32 sector = 0;
> +	int res = 0;
> +	int read_len = 0;
> +
> +	if (len > NAND_MAX_OOBSIZE || len % OOB_AVAI_PER_SECTOR || !buf) {
> +		pr_warn("mt7621-nand: invalid parameter, len: %d, buf: %p\n",
> +			len, buf);
> +		return -EINVAL;
> +	}
> +
> +	while (len > 0) {
> +		read_len = min(len, spare_per_sector);
> +		column = NAND_SECTOR_SIZE +
> +			 sector * (NAND_SECTOR_SIZE + spare_per_sector);
> +		if (!ready_for_read(chip, page, column, false, NULL)) {
> +			pr_warn("mt7621-nand: ready_for_read() failed\n");
> +			res = -EIO;
> +			goto error;
> +		}
> +		if (!mcu_read_data(buf + spare_per_sector * sector, read_len)) {
> +			pr_warn("mt7621-nand: mcu_read_data() failed\n");
> +			res = -EIO;
> +			goto error;
> +		}
> +		check_RW_count(read_len);
> +		stop_read();
> +		sector++;
> +		len -= read_len;
> +	}
> +
> +error:
> +	regclr16(NFI_CON_REG16, CON_NFI_BRD);
> +	return res;
> +}
> +
> +static int write_oob_raw(struct mtd_info *mtd, const u8 *buf, int page, int len)
> +{
> +	struct nand_chip *chip = mtd_to_nand(mtd);
> +	int sec_num = 1 << (chip->page_shift - 9);
> +	int spare_per_sector = mtd->oobsize / sec_num;
> +	u32 column = 0;
> +	u32 sector = 0;
> +	int write_len = 0;
> +	int status;
> +
> +	if (len > NAND_MAX_OOBSIZE || len % OOB_AVAI_PER_SECTOR || !buf) {
> +		pr_warn("mt7621-nand: invalid parameter, len: %d, buf: %p\n",
> +			len, buf);
> +		return -EINVAL;
> +	}
> +
> +	while (len > 0) {
> +		write_len = min(len, spare_per_sector);
> +		column = sector * (NAND_SECTOR_SIZE + spare_per_sector) +
> +			 NAND_SECTOR_SIZE;
> +		if (!ready_for_write(chip, page, column, false, NULL))
> +			return -EIO;
> +		if (!mcu_write_data(mtd, buf + sector * spare_per_sector,
> +				    write_len))
> +			return -EIO;
> +		check_RW_count(write_len);
> +		regclr16(NFI_CON_REG16, CON_NFI_BWR);
> +		set_command(NAND_CMD_PAGEPROG);
> +		while (regread32(NFI_STA_REG32) & STA_NAND_BUSY)
> +			;
> +		status = chip->legacy.waitfunc(chip);
> +		if (status & NAND_STATUS_FAIL) {
> +			pr_warn("mt7621-nand: failed status: %d\n", status);
> +			return -EIO;
> +		}
> +		len -= write_len;
> +		sector++;
> +	}
> +
> +	return 0;
> +}
> +
> +static int exec_read_page(struct mtd_info *mtd, u32 row, u32 page_size,
> +			  u8 *buf, u8 *fdmbuf)
> +{
> +	struct nand_chip *chip = mtd_to_nand(mtd);
> +	struct host *host = nand_get_controller_data(chip);
> +	u32 sec = page_size >> 9;
> +	int corrected = 0;
> +
> +	host->last_failed = 0;
> +
> +	if (ready_for_read(chip, row, 0, true, buf)) {

Flip this around:

	if (!ready_for_read(chip, row, 0, true, buf))
		return -EIO;


> +		int j;
> +
> +		for (j = 0; j < sec; j++) {
> +			int ret;
> +
> +			if (!mcu_read_data(buf + j * 512, 512)) {
> +				corrected = -EIO;
> +				break;
> +			}
> +			if (!check_dececc_done(j + 1)) {
> +				corrected = -EIO;
> +				break;
> +			}
> +			ret = check_bch_error(mtd, buf + j * 512, j, row);
> +			if (ret < 0) {
> +				corrected = ret;
> +				if (ret != -EBADMSG)
> +					break;
> +			} else if (corrected >= 0) {
> +				corrected = max_t(int, corrected, ret);
> +			}
> +		}
> +		if (!status_ready(STA_NAND_BUSY))
> +			corrected = -EIO;
> +
> +		read_fdm_data(fdmbuf, sec);
> +		stop_read();
> +	} else {
> +		corrected = -EIO;
> +	}
> +
> +	if (corrected == -EBADMSG) {
> +		u32 local_oob_aligned[NAND_MAX_OOBSIZE / sizeof(u32)];
> +		u8 *local_oob = (u8 *)local_oob_aligned;
> +		int ret;
> +
> +		/*
> +		 * If there was an uncorrectable ECC error, check if it is a
> +		 * blank page with bit-flips. For this, we check the number of
> +		 * 0s in each sector (including the OOB), which should not
> +		 * exceed the ECC strength. Until the number of 0s is lower or
> +		 * equal, we consider it as a blank page
> +		 */
> +		ret = read_oob_raw(mtd, local_oob, row, mtd->oobsize);
> +		if (ret == 0) {

Flip this around and do a direct return.

		if (ret) {
			mtd->ecc_stats.failed += host->last_failed;
			pr_warn("mt7621-nand: %s failed to read oob after ECC error\n",
				__func__);
			return -EBADMSG;
		}



> +			int spare_per_sector = mtd->oobsize / sec;
> +			int sector_size = page_size / sec;
> +			int max_bitflips = 0;
> +			u32 corrected = 0;

This "corrected" shadows the earlier "corrected" variable and it's
confusing to have two variables in the same function with the same name.

> +			int i;
> +
> +			for (i = 0; i < sec; i++) {
> +				ret = check_erased_ecc_chunk(
> +					&buf[i * sector_size], sector_size,
> +					&local_oob[i * spare_per_sector],
> +					spare_per_sector, chip->ecc.strength);
> +				if (ret < 0)
> +					break;

Change this break to a return.

			if (ret < 0) {
				mtd->ecc_stats.failed += host->last_failed;
				pr_err("mt7621-nand: uncorrectable ECC errors at page=%d\n",
				       row);
				return -EBADMSG;
			}



> +
> +				max_bitflips = max_t(int, max_bitflips, ret);
> +				corrected += ret;
> +			}
> +
> +			if (ret >= 0) {
> +				mtd->ecc_stats.corrected += corrected;
> +
> +				memset(buf, 0xff, page_size);
> +				memset(fdmbuf, 0xff, sizeof(u32) * 2 * sec);
> +
> +				corrected = max_bitflips;

This looks like a bug caused by the two "corrected" variables.  Just do

			return max_bitflips;


> +			} else {
> +				mtd->ecc_stats.failed += host->last_failed;
> +				pr_err("mt7621-nand: uncorrectable ECC errors at page=%d\n",
> +				       row);
> +			}
> +		} else {
> +			mtd->ecc_stats.failed += host->last_failed;
> +			pr_warn("mt7621-nand: %s failed to read oob after ECC error\n",
> +				__func__);
> +			/* Keep return value as -EBADMSG */
> +		}
> +	}
> +
> +	return corrected;
> +}
> +
> +static int exec_write_page(struct mtd_info *mtd, u32 row,
> +			   u32 page_size, u8 *buf, u8 *fdmbuf)
> +{
> +	struct nand_chip *chip = mtd_to_nand(mtd);
> +	u32 sec = page_size >> 9;
> +	u8 status;
> +
> +	if (ready_for_write(chip, row, 0, true, buf)) {

Shouldn't we return -EIO if we're not ready?

> +		write_fdm_data(chip, fdmbuf, sec);
> +		mcu_write_data(mtd, buf, page_size);
> +		check_RW_count(page_size);
> +		stop_write();
> +		set_command(NAND_CMD_PAGEPROG);
> +		while (regread32(NFI_STA_REG32) & STA_NAND_BUSY)
> +			;
> +	}
> +
> +	status = chip->legacy.waitfunc(chip);
> +	if (status & NAND_STATUS_FAIL)
> +		return -EIO;
> +	return 0;
> +}
> +
> +static void command_bp(struct nand_chip *chip, unsigned int command,
> +		       int column, int page)
> +{
> +	struct mtd_info *mtd = nand_to_mtd(chip);
> +
> +	switch (command) {
> +	case NAND_CMD_SEQIN:
> +		memset(host->OOB, 0xff, sizeof(host->OOB));
> +		host->data_buf = NULL;
> +		host->row = page;
> +		host->column = column;
> +		break;
> +
> +	case NAND_CMD_PAGEPROG:
> +		if (host->data_buf || (host->OOB[0] != 0xff)) {
> +			u8 *buf = host->data_buf ? host->data_buf
> +						 : chip->data_buf;
> +
> +			exec_write_page(mtd, host->row, mtd->writesize,
> +					buf, host->OOB);
> +			host->row = (u32)-1;
> +			host->OOBrow = (u32)-1;
> +		}
> +		break;
> +
> +	case NAND_CMD_READOOB:
> +		host->row = page;
> +		host->column = column + mtd->writesize;
> +		break;
> +
> +	case NAND_CMD_READ0:
> +		host->row = page;
> +		host->column = column;
> +		break;
> +
> +	case NAND_CMD_ERASE1:
> +		reset();
> +		set_mode(CNFG_OP_ERASE);
> +		set_command(NAND_CMD_ERASE1);
> +		set_address(0, page, 0, host->addr_cycles - 2);
> +		break;
> +
> +	case NAND_CMD_ERASE2:
> +		set_command(NAND_CMD_ERASE2);
> +		while (regread32(NFI_STA_REG32) & STA_NAND_BUSY)
> +			;
> +		break;
> +
> +	case NAND_CMD_STATUS:
> +		reset();
> +		regclr16(NFI_CNFG_REG16, CNFG_BYTE_RW);
> +		set_mode(CNFG_OP_SRD);
> +		set_mode(CNFG_READ_EN);
> +		regclr16(NFI_CNFG_REG16, CNFG_AHB);
> +		regclr16(NFI_CNFG_REG16, CNFG_HW_ECC_EN);
> +		set_command(NAND_CMD_STATUS);
> +		regclr16(NFI_CON_REG16, CON_NFI_NOB_MASK);
> +		regwrite16(NFI_CON_REG16,
> +			   CON_NFI_SRD | (1 << CON_NFI_NOB_SHIFT));
> +		host->cmdstatus = true;
> +		break;
> +
> +	case NAND_CMD_RESET:
> +		reset();
> +		regwrite16(NFI_INTR_EN_REG16, INTR_RST_DONE_EN);
> +		set_command(NAND_CMD_RESET);
> +		regwrite16(NFI_CNRNB_REG16, 0xf1);
> +		while (!(regread16(NFI_INTR_REG16) & INTR_RST_DONE_EN))
> +			;
> +		break;
> +
> +	case NAND_CMD_READID:
> +		reset();
> +		/* Disable HW ECC */
> +		regclr16(NFI_CNFG_REG16, CNFG_HW_ECC_EN);
> +		regclr16(NFI_CNFG_REG16, CNFG_AHB);
> +		regset16(NFI_CNFG_REG16, CNFG_READ_EN | CNFG_BYTE_RW);
> +		reset();
> +		set_mode(CNFG_OP_SRD);
> +		set_command(NAND_CMD_READID);
> +		set_address(0, 0, 1, 0);
> +		regwrite16(NFI_CON_REG16, CON_NFI_SRD);
> +		while (regread32(NFI_STA_REG32) & STA_DATAR_STATE)
> +			;
> +		break;
> +
> +	default:
> +		pr_err("mt7621-nand: unknown NAND command, 0x%x\n", command);
> +		break;
> +	}
> +}
> +
> +static void set_ecc_mode(struct mtd_info *mtd)
> +{
> +	struct nand_chip *chip = mtd_to_nand(mtd);
> +	u32 spare_per_sector = mtd->oobsize / (mtd->writesize / 512);
> +	u32 spare_bit = PAGEFMT_SPARE_16;
> +	u32 ecc_bit = 4;
> +
> +	if (spare_per_sector >= 28) {
> +		spare_bit = PAGEFMT_SPARE_28;
> +		ecc_bit = 12;
> +		spare_per_sector = 28;
> +	} else if (spare_per_sector >= 27) {
> +		spare_bit = PAGEFMT_SPARE_27;
> +		ecc_bit = 8;
> +		spare_per_sector = 27;
> +	} else if (spare_per_sector >= 26) {
> +		spare_bit = PAGEFMT_SPARE_26;
> +		ecc_bit = 8;
> +		spare_per_sector = 26;
> +	} else if (spare_per_sector >= 16) {
> +		spare_bit = PAGEFMT_SPARE_16;
> +		ecc_bit = 4;
> +		spare_per_sector = 16;
> +	} else {
> +		pr_warn("mt7621-nand: NFI not support oobsize: %x\n",
> +			spare_per_sector);
> +	}
> +	chip->ecc.strength = ecc_bit;
> +	mtd->oobsize = spare_per_sector * (mtd->writesize / 512);
> +	pr_info("mt7621-nand: ecc bit: %d, spare_per_sector: %d\n",
> +		ecc_bit, spare_per_sector);
> +
> +	/* Setup PageFormat */
> +	if (mtd->writesize == 4096) {
> +		regset16(NFI_PAGEFMT_REG16,
> +			 (spare_bit << PAGEFMT_SPARE_SHIFT) | PAGEFMT_4K);
> +		chip->legacy.cmdfunc = command_bp;
> +	} else if (mtd->writesize == 2048) {
> +		regset16(NFI_PAGEFMT_REG16,
> +			 (spare_bit << PAGEFMT_SPARE_SHIFT) | PAGEFMT_2K);
> +		chip->legacy.cmdfunc = command_bp;
> +	}
> +	ecc_config(ecc_bit);
> +}
> +
> +static void select_chip(struct nand_chip *chip, int nr)
> +{
> +	switch (nr) {
> +	case -1:
> +		break;
> +	case 0:
> +	case 1:
> +		/* Jun Shen, 2011.04.13 */

These sorts of dates comments aren't useful.

> +		/* Note: MT6577 EVB NAND is mounted on CS0, but FPGA is CS1 */
> +		regwrite16(NFI_CSEL_REG16, nr);
> +		/* Jun Shen, 2011.04.13 */

Delete.

> +		break;
> +	}
> +}
> +
> +static u8 read_byte(struct nand_chip *chip)
> +{
> +	u8 retval = 0;

Delete initializer.  This is just turning off GCC's check for
uninitialized variables.  It also turns on an unused assignment warning.
We haven't enabled it but we'd like to.  I haven't commented on every
bogus initializer that I saw, but I probably should have... :/

> +
> +	if (!pio_ready()) {
> +		pr_err("mt7621-nand: pio ready timeout\n");
> +		retval = false;

Return here?  Unused assignment.  This bug would have been caught if
we could turn on that GCC warning I was just mentioning.  :P

False is sort of weird here because this function returns a u8 instead
of a bool.

> +	}
> +
> +	if (host->cmdstatus) {

Flip this around:

	if (!host->cmdstatus)
		return regread8(NFI_DATAR_REG32);

> +		retval = regread8(NFI_DATAR_REG32);
> +		regclr16(NFI_CON_REG16, CON_NFI_NOB_MASK);
> +		reset();
> +		regset16(NFI_CNFG_REG16, CNFG_HW_ECC_EN);
> +		host->cmdstatus = false;
> +	} else {
> +		retval = regread8(NFI_DATAR_REG32);
> +	}
> +
> +	return retval;
> +}
> +
> +static void read_buf(struct nand_chip *chip, u8 *buf, int len)
> +{
> +	struct mtd_info *mtd = nand_to_mtd(chip);
> +	u32 page_size = mtd->writesize;
> +	u32 column = host->column;
> +
> +	if (column < page_size) {
> +		if ((column == 0) && (len >= page_size)) {
> +			exec_read_page(mtd, host->row, page_size, buf,
> +				       host->OOB);
> +			if (len > page_size) {
> +				u32 size;
> +
> +				size = min(len - page_size, sizeof(host->OOB));
> +				memcpy(buf + page_size, host->OOB, size);
> +			}
> +		} else {
> +			exec_read_page(mtd, host->row, page_size,
> +				       chip->data_buf, host->OOB);
> +			memcpy(buf, chip->data_buf + column, len);
> +		}
> +		host->OOBrow = host->row;
> +	} else {
> +		u32 offset = column - page_size;
> +		u32 size = min(len - offset, sizeof(host->OOB));
> +
> +		if (host->OOBrow != host->row) {
> +			exec_read_page(mtd, host->row, page_size,
> +				       chip->data_buf, host->OOB);
> +			host->OOBrow = host->row;
> +		}
> +		memcpy(buf, host->OOB + offset, size);
> +	}
> +	host->column += len;
> +}
> +
> +static void write_buf(struct nand_chip *chip, const u8 *buf, int len)
> +{
> +	struct mtd_info *mtd = nand_to_mtd(chip);
> +	u32 page_size = mtd->writesize;
> +	u32 column = host->column;
> +	int size, i;
> +
> +	if (column >= page_size) {
> +		u32 offset = column - page_size;
> +		u8 *OOB = host->OOB + offset;
> +
> +		size = min(len, (int)(sizeof(host->OOB) - offset));
> +		for (i = 0; i < size; i++)
> +			OOB[i] &= buf[i];
> +	} else {
> +		host->data_buf = (u8 *)buf;
> +	}
> +
> +	host->column += len;
> +}
> +
> +static int write_page_hwecc(struct nand_chip *chip, const u8 *buf,
> +			    int oob_required, int page)
> +{
> +	struct mtd_info *mtd = nand_to_mtd(chip);
> +
> +	nand_prog_page_begin_op(chip, page, 0, buf, mtd->writesize);
> +	write_buf(chip, chip->oob_poi, mtd->oobsize);
> +	return nand_prog_page_end_op(chip);
> +}
> +
> +static int read_page_hwecc(struct nand_chip *chip, u8 *buf,
> +			   int oob_required, int page)
> +{
> +	struct mtd_info *mtd = nand_to_mtd(chip);
> +	int corrected;
> +
> +	corrected = exec_read_page(mtd, page, mtd->writesize,
> +				   buf, chip->oob_poi);
> +
> +	return (corrected == -EBADMSG) ? 0 : corrected;
> +}
> +
> +static int write_oob_hw(struct nand_chip *chip, int page)
> +{
> +	struct mtd_info *mtd = nand_to_mtd(chip);
> +	int sec_num = 1 << (chip->page_shift - 9);
> +	int spare_per_sector = mtd->oobsize / sec_num;
> +	int i, iter;
> +
> +	memcpy(local_oob_buf, chip->oob_poi, mtd->oobsize);

The concern with this buffer would be locking again.  But I haven't
looked at it.

> +
> +	/* copy ecc data */
> +	for (i = 0; i < layout->eccbytes; i++) {
> +		iter = (i / (spare_per_sector - OOB_AVAI_PER_SECTOR)) *
> +		       spare_per_sector +
> +		       OOB_AVAI_PER_SECTOR +
> +		       i % (spare_per_sector - OOB_AVAI_PER_SECTOR);
> +		local_oob_buf[iter] = chip->oob_poi[layout->eccpos[i]];
> +	}
> +
> +	/* copy FDM data */
> +	for (i = 0; i < sec_num; i++)
> +		memcpy(&local_oob_buf[i * spare_per_sector],
> +		       &chip->oob_poi[i * OOB_AVAI_PER_SECTOR],
> +		       OOB_AVAI_PER_SECTOR);
> +
> +	return write_oob_raw(mtd, local_oob_buf, page, mtd->oobsize);
> +}
> +
> +static int write_oob(struct nand_chip *chip, int page)
> +{
> +	int page_per_block = 1 << (chip->phys_erase_shift - chip->page_shift);
> +	int block = page / page_per_block;
> +	int page_in_block = page % page_per_block;
> +
> +	if (write_oob_hw(chip, page_in_block + block * page_per_block)) {
> +		pr_warn("mt7621-nand: write oob fail at block: 0x%x, page: 0x%x\n",
> +			block, page_in_block);
> +		return NAND_STATUS_FAIL;
> +	}
> +
> +	return 0;
> +}
> +
> +static int read_oob_hw(struct nand_chip *chip, int page)
> +{
> +	struct mtd_info *mtd = nand_to_mtd(chip);
> +	int sec_num = 1 << (chip->page_shift - 9);
> +	int spare_per_sector = mtd->oobsize / sec_num;
> +	int i;
> +	u8 iter = 0;
> +
> +	if (read_oob_raw(mtd, chip->oob_poi, page, mtd->oobsize)) {
> +		pr_err("mt7621-nand: read_oob_raw() return failed\n");
> +		return -EIO;
> +	}
> +
> +	/* adjust to ecc physical layout to memory layout */
> +	/*********************************************************/
> +	/* FDM0 | ECC0 | FDM1 | ECC1 | FDM2 | ECC2 | FDM3 | ECC3 */
> +	/*  8B  |  8B  |  8B  |  8B  |  8B  |  8B  |  8B  |  8B  */
> +	/*********************************************************/
> +
> +	memcpy(local_oob_buf, chip->oob_poi, mtd->oobsize);
> +
> +	/* copy ecc data */
> +	for (i = 0; i < layout->eccbytes; i++) {
> +		iter = (i / (spare_per_sector - OOB_AVAI_PER_SECTOR)) *
> +		       spare_per_sector +
> +		       OOB_AVAI_PER_SECTOR +
> +		       i % (spare_per_sector - OOB_AVAI_PER_SECTOR);
> +		chip->oob_poi[layout->eccpos[i]] = local_oob_buf[iter];
> +	}
> +
> +	/* copy FDM data */
> +	for (i = 0; i < sec_num; i++)
> +		memcpy(&chip->oob_poi[i * OOB_AVAI_PER_SECTOR],
> +		       &local_oob_buf[i * spare_per_sector],
> +		       OOB_AVAI_PER_SECTOR);
> +
> +	return 0;
> +}
> +
> +static int read_oob(struct nand_chip *chip, int page)
> +{
> +	int page_per_block = 1 << (chip->phys_erase_shift - chip->page_shift);
> +	int block = page / page_per_block;
> +	int page_in_block = page % page_per_block;
> +
> +	if (read_oob_hw(chip, page_in_block + block * page_per_block) != 0)
> +		return -1;

It would be better to preserve the error code from read_oob_hw()

> +	return 0;
> +}
> +
> +static int block_bad_hw(struct nand_chip *chip, loff_t ofs)
> +{
> +	struct mtd_info *mtd = nand_to_mtd(chip);
> +	int page = (int)(ofs >> chip->page_shift);
> +	unsigned int page_per_block;
> +	u8 oob_buf[8];
> +
> +	page_per_block = 1 << (chip->phys_erase_shift - chip->page_shift);
> +	page &= ~(page_per_block - 1);
> +	if (read_oob_raw(mtd, oob_buf, page, sizeof(oob_buf))) {
> +		pr_warn("mt7621-nand: read_oob_raw() failed\n");
> +		return 1;
> +	}
> +
> +	if (oob_buf[0] != 0xff) {
> +		pr_warn("mt7621-nand: bad block detected at page=%d\n", page);
> +		return 1;
> +	}
> +
> +	return 0;
> +}
> +
> +static int block_bad(struct nand_chip *chip, loff_t ofs)
> +{
> +	int block = (int)ofs >> chip->phys_erase_shift;
> +
> +	return block_bad_hw(chip, block << chip->phys_erase_shift);
> +}
> +
> +static void init_hw(struct host *host)
> +{
> +	host->OOBrow = (u32)-1;
> +
> +	/* Set default NFI access timing control */
> +	regwrite32(NFI_ACCCON_REG32, host->access_timing);
> +	regwrite16(NFI_CNFG_REG16, 0);
> +	regwrite16(NFI_PAGEFMT_REG16, 0);
> +
> +	/* Reset the state machine and data FIFO, because flushing FIFO */
> +	reset();
> +
> +	/* Set the ECC engine */
> +	if (host->nand_chip.ecc.mode == NAND_ECC_HW) {
> +		regset16(NFI_CNFG_REG16, CNFG_HW_ECC_EN);
> +		ecc_config(4);
> +		configure_fdm(8);
> +		configure_lock();
> +	}
> +
> +	regset16(NFI_IOCON_REG16, 0x47);
> +}
> +
> +static int dev_ready(struct nand_chip *chip)
> +{
> +	return !(regread32(NFI_STA_REG32) & STA_NAND_BUSY);
> +}
> +
> +static int oob_mt7621_ooblayout_ecc(struct mtd_info *mtd, int section,
> +				    struct mtd_oob_region *oobregion)
> +{
> +	oobregion->length = 8;
> +	oobregion->offset = layout->eccpos[section * 8];
> +	return 0;
> +}
> +
> +static int oob_mt7621_ooblayout_free(struct mtd_info *mtd, int section,
> +				     struct mtd_oob_region *oobregion)
> +{
> +	if (section >= (layout->eccbytes / 8))
> +		return -ERANGE;
> +	oobregion->offset = layout->oobfree[section].offset;
> +	oobregion->length = layout->oobfree[section].length;
> +	return 0;
> +}
> +
> +/*
> + * Code to support the legacy mediatek nand flash bad block table.
> + * The default for this driver is to use the standard Linux bad block
> + * table format. However you need a new boot loader that supports that.
> + * The old (and most often used) medaitek boot loaders use their own
> + * BBT format, and this code implements that. There is a devicetree
> + * binding that enables use of this.
> + */
> +#define BBT_BLOCK_NUM_DEFAULT	32
> +#define BBT_OOB_SIGNATURE	1
> +#define BBT_SIGNATURE_LEN	7
> +
> +static const u8 oob_signature[] = "mtknand";
> +static u32 bbt_size;
> +
> +static int read_legacy_bbt_page(struct mtd_info *mtd, unsigned int page)
> +{
> +	struct nand_chip *chip = mtd_to_nand(mtd);
> +
> +	if (read_oob_hw(chip, page) == 0) {

Flip this around.  Preserve the error code.

> +		int corrected;
> +
> +		if (chip->oob_poi[0] != 0xff) {
> +			pr_info("mt7621-nand: Bad Block on page=%d\n", page);
> +			return -ENODEV;
> +		}
> +		if (memcmp(&chip->oob_poi[BBT_OOB_SIGNATURE], oob_signature,
> +			   BBT_SIGNATURE_LEN) != 0) {
> +			pr_info("mt7621-nand: no BBT signature, page=%d\n",
> +				page);
> +			return -EINVAL;
> +		}
> +		corrected = exec_read_page(mtd, page, mtd->writesize,
> +					   chip->data_buf, chip->oob_poi);
> +		if (corrected >= 0) {

Flip this.  Always to error handling instead of success handling.  The
error path should be indented two tabs and the success path one tab.

		if (corrected < 0)
			return -EIO;




> +			int bbt_bytes = (bbt_size <= mtd->writesize)
> +					? bbt_size
> +					: mtd->writesize;
> +
> +			pr_info("mt7621-nand: BBT signature match, page=%d\n",
> +				page);
> +			memcpy(chip->bbt, chip->data_buf, bbt_bytes);
> +			return 0;
> +		}
> +	}
> +
> +	pr_err("mt7621-nand: legacy BBT read failed at page %d\n", page);
> +	return -EIO;
> +}
> +
> +static int load_legacy_bbt(struct mtd_info *mtd)
> +{
> +	struct nand_chip *chip = mtd_to_nand(mtd);
> +	struct host *host = nand_get_controller_data(chip);
> +	u32 blocks;
> +	int i;
> +
> +	blocks = 0x1 << (chip->chip_shift - chip->phys_erase_shift);
> +	bbt_size = blocks >> 2;

Why are we dividing by four here?  I would have thought that this was
supposed to be a multply by sizeof(u32) or something.

Normal divide and multiply are more readable than shifts.

I hate these globals.  It should be saved as chip->bbt_size = size;

> +
> +	if (!chip->bbt) {
> +		chip->bbt = kzalloc(bbt_size, GFP_KERNEL);
> +		if (!chip->bbt)
> +			return -ENOMEM;
> +	}
> +
> +	for (i = blocks - 1; i >= (blocks - host->legacybbt_block_num); i--) {
> +		int page = i << (chip->phys_erase_shift - chip->page_shift);
> +
> +		if (read_legacy_bbt_page(mtd, page) == 0) {

It's weird that this only has to succeed once instead of every time but
I don't know this code well.

> +			pr_info("mt7621-nand: loading BBT success (%d)\n",
> +				page);
> +			return 0;
> +		}
> +	}
> +
> +	pr_err("mt7621-nand: loading Bad Block Table failed\n");
> +	return -ENODEV;
> +}
> +
> +static int mt7621_nand_attach(struct nand_chip *chip)
> +{
> +	struct mtd_info *mtd = nand_to_mtd(chip);
> +	int i;
> +
> +	set_ecc_mode(mtd);
> +
> +	if (nanddev_target_size(&chip->base) < (256 * 1024 * 1024))
> +		host->addr_cycles = 4;
> +
> +	/* allocate buffers or call select_chip here or a bit earlier*/
> +	chip->data_buf = kzalloc(mtd->writesize + mtd->oobsize, GFP_KERNEL);
> +	chip->ecc.calc_buf = kzalloc(mtd->oobsize, GFP_KERNEL);
> +	chip->ecc.code_buf = kzalloc(mtd->oobsize, GFP_KERNEL);
> +	if (!chip->data_buf || !chip->ecc.calc_buf || !chip->ecc.code_buf)
> +		return -ENOMEM;

This seems leaky.  Do it like this?

	chip->data_buf = kzalloc(mtd->writesize + mtd->oobsize, GFP_KERNEL);
	if (!chip->data_buf)
		return -ENOMEM;

	hip->ecc.calc_buf = kzalloc(mtd->oobsize, GFP_KERNEL);
	if (!hip->ecc.calc_buf) {
		ret = -ENOMEM;
		goto free_data_buf;
	}

	chip->ecc.code_buf = kzalloc(mtd->oobsize, GFP_KERNEL);
	if (!chip->ecc.code_buf) {
		ret = -ENOMEM;
		goto free_calc_buf;
	}

	.... // <-- other code

	return 0;

free_calc_buf:
	kfree(chip->ecc.calc_buf);
free_data_buf:
	kfree(chip->data_buf);

	return ret;

Is there no detach function?

void mt7621_nand_dettach()
{
	kfree(chip->ecc.code_buf);
	kfree(chip->ecc.calc_buf);
	kfree(chip->data_buf);
}

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
