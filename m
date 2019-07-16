Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B6EB06AA46
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jul 2019 16:07:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 193EF85F8C;
	Tue, 16 Jul 2019 14:07:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iJxgPkmfYSlm; Tue, 16 Jul 2019 14:07:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EB27A85F7C;
	Tue, 16 Jul 2019 14:07:04 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 05A901BF3D4
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 14:07:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 013A62047F
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 14:07:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NqKAasPBlOGB
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 14:07:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id BF06D2011B
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 14:07:00 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jul 2019 07:07:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,498,1557212400"; d="scan'208";a="366672423"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 16 Jul 2019 07:06:58 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hnO6c-0006xP-9c; Tue, 16 Jul 2019 22:06:58 +0800
Date: Tue, 16 Jul 2019 22:06:27 +0800
From: kbuild test robot <lkp@intel.com>
To: christianluciano.m@gmail.com
Subject: Re: [PATCH] staging: rtl8712: Add parenthesis to Macro argument
Message-ID: <201907162145.5r9Fo1lD%lkp@intel.com>
References: <20190713212652.11095-1-christianluciano.m@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190713212652.11095-1-christianluciano.m@gmail.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
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
Cc: florian.c.schilhabel@googlemail.com, gregkh@linuxfoundation.org,
 driverdev-devel@linuxdriverproject.org, kbuild-all@01.org,
 christianluciano.m@gmail.com, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on linus/master]
[cannot apply to v5.2 next-20190716]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/christianluciano-m-gmail-com/staging-rtl8712-Add-parenthesis-to-Macro-argument/20190714-103146
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-rc1-7-g2b96cd8-dirty
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

   include/linux/sched.h:609:43: sparse: sparse: bad integer constant expression
   include/linux/sched.h:609:73: sparse: sparse: invalid named zero-width bitfield `value'
   include/linux/sched.h:610:43: sparse: sparse: bad integer constant expression
   include/linux/sched.h:610:67: sparse: sparse: invalid named zero-width bitfield `bucket_id'
>> drivers/staging/rtl8712/hal_init.c:136:19: sparse: sparse: Syntax error in unary expression
   drivers/staging/rtl8712/hal_init.c:136:19: sparse: sparse: Expected member name
   drivers/staging/rtl8712/hal_init.c:136:19: sparse: sparse: Expected ) in expression
   drivers/staging/rtl8712/hal_init.c:136:19: sparse: sparse: got (
   drivers/staging/rtl8712/hal_init.c:176:40: sparse: sparse: Syntax error in unary expression
   drivers/staging/rtl8712/hal_init.c:176:40: sparse: sparse: Expected member name
   drivers/staging/rtl8712/hal_init.c:176:40: sparse: sparse: Expected ) in expression
   drivers/staging/rtl8712/hal_init.c:176:40: sparse: sparse: got (
>> drivers/staging/rtl8712/hal_init.c:136:19: sparse: sparse: cast from unknown type
   drivers/staging/rtl8712/hal_init.c:176:40: sparse: sparse: cast from unknown type
--
   include/linux/sched.h:609:43: sparse: sparse: bad integer constant expression
   include/linux/sched.h:609:73: sparse: sparse: invalid named zero-width bitfield `value'
   include/linux/sched.h:610:43: sparse: sparse: bad integer constant expression
   include/linux/sched.h:610:67: sparse: sparse: invalid named zero-width bitfield `bucket_id'
>> drivers/staging/rtl8712/rtl871x_ioctl_linux.c:413:25: sparse: sparse: Syntax error in unary expression
   drivers/staging/rtl8712/rtl871x_ioctl_linux.c:413:25: sparse: sparse: Expected member name
   drivers/staging/rtl8712/rtl871x_ioctl_linux.c:413:25: sparse: sparse: Expected ) in expression
   drivers/staging/rtl8712/rtl871x_ioctl_linux.c:413:25: sparse: sparse: got (
   drivers/staging/rtl8712/rtl871x_ioctl_linux.c:1562:30: sparse: sparse: Syntax error in unary expression
   drivers/staging/rtl8712/rtl871x_ioctl_linux.c:1562:30: sparse: sparse: Expected member name
   drivers/staging/rtl8712/rtl871x_ioctl_linux.c:1562:30: sparse: sparse: Expected ) in expression
   drivers/staging/rtl8712/rtl871x_ioctl_linux.c:1562:30: sparse: sparse: got (
>> drivers/staging/rtl8712/rtl871x_ioctl_linux.c:413:25: sparse: sparse: cast from unknown type
   drivers/staging/rtl8712/rtl871x_ioctl_linux.c:1562:30: sparse: sparse: cast from unknown type

vim +136 drivers/staging/rtl8712/hal_init.c

2865d42c78a9121 Larry Finger        2010-08-20  124  
2865d42c78a9121 Larry Finger        2010-08-20  125  static u8 chk_fwhdr(struct fw_hdr *pfwhdr, u32 ulfilelength)
2865d42c78a9121 Larry Finger        2010-08-20  126  {
2865d42c78a9121 Larry Finger        2010-08-20  127  	u32	fwhdrsz, fw_sz;
2865d42c78a9121 Larry Finger        2010-08-20  128  
2865d42c78a9121 Larry Finger        2010-08-20  129  	/* check signature */
2865d42c78a9121 Larry Finger        2010-08-20  130  	if ((pfwhdr->signature != 0x8712) && (pfwhdr->signature != 0x8192))
2865d42c78a9121 Larry Finger        2010-08-20  131  		return _FAIL;
2865d42c78a9121 Larry Finger        2010-08-20  132  	/* check fw_priv_sze & sizeof(struct fw_priv) */
2865d42c78a9121 Larry Finger        2010-08-20  133  	if (pfwhdr->fw_priv_sz != sizeof(struct fw_priv))
2865d42c78a9121 Larry Finger        2010-08-20  134  		return _FAIL;
2865d42c78a9121 Larry Finger        2010-08-20  135  	/* check fw_sz & image_fw_sz */
2865d42c78a9121 Larry Finger        2010-08-20 @136  	fwhdrsz = FIELD_OFFSET(struct fw_hdr, fwpriv) + pfwhdr->fw_priv_sz;
2865d42c78a9121 Larry Finger        2010-08-20  137  	fw_sz =  fwhdrsz + pfwhdr->img_IMEM_size + pfwhdr->img_SRAM_size +
2865d42c78a9121 Larry Finger        2010-08-20  138  		 pfwhdr->dmem_size;
2865d42c78a9121 Larry Finger        2010-08-20  139  	if (fw_sz != ulfilelength)
2865d42c78a9121 Larry Finger        2010-08-20  140  		return _FAIL;
2865d42c78a9121 Larry Finger        2010-08-20  141  	return _SUCCESS;
2865d42c78a9121 Larry Finger        2010-08-20  142  }
2865d42c78a9121 Larry Finger        2010-08-20  143  
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  144  static u8 rtl8712_dl_fw(struct _adapter *adapter)
2865d42c78a9121 Larry Finger        2010-08-20  145  {
2865d42c78a9121 Larry Finger        2010-08-20  146  	sint i;
2865d42c78a9121 Larry Finger        2010-08-20  147  	u8 tmp8, tmp8_a;
2865d42c78a9121 Larry Finger        2010-08-20  148  	u16 tmp16;
e29d3ebcda3ebc0 Sudip Mukherjee     2014-10-27  149  	u32 maxlen = 0; /* for compare usage */
2865d42c78a9121 Larry Finger        2010-08-20  150  	uint dump_imem_sz, imem_sz, dump_emem_sz, emem_sz; /* max = 49152; */
2865d42c78a9121 Larry Finger        2010-08-20  151  	struct fw_hdr fwhdr;
2865d42c78a9121 Larry Finger        2010-08-20  152  	u32 ulfilelength;	/* FW file size */
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  153  	const u8 *mappedfw = NULL;
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  154  	u8 *tmpchar = NULL, *payload, *ptr;
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  155  	struct tx_desc *txdesc;
2865d42c78a9121 Larry Finger        2010-08-20  156  	u32 txdscp_sz = sizeof(struct tx_desc);
e375870b9295be4 Larry Finger        2011-01-14  157  	u8 ret = _FAIL;
2865d42c78a9121 Larry Finger        2010-08-20  158  
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  159  	ulfilelength = rtl871x_open_fw(adapter, &mappedfw);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  160  	if (mappedfw && (ulfilelength > 0)) {
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  161  		update_fwhdr(&fwhdr, mappedfw);
2865d42c78a9121 Larry Finger        2010-08-20  162  		if (chk_fwhdr(&fwhdr, ulfilelength) == _FAIL)
8c213fa59199f96 Larry Finger        2012-02-05  163  			return ret;
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  164  		fill_fwpriv(adapter, &fwhdr.fwpriv);
2865d42c78a9121 Larry Finger        2010-08-20  165  		/* firmware check ok */
2865d42c78a9121 Larry Finger        2010-08-20  166  		maxlen = (fwhdr.img_IMEM_size > fwhdr.img_SRAM_size) ?
2865d42c78a9121 Larry Finger        2010-08-20  167  			  fwhdr.img_IMEM_size : fwhdr.img_SRAM_size;
2865d42c78a9121 Larry Finger        2010-08-20  168  		maxlen += txdscp_sz;
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  169  		tmpchar = kmalloc(maxlen + FWBUFF_ALIGN_SZ, GFP_KERNEL);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  170  		if (!tmpchar)
8c213fa59199f96 Larry Finger        2012-02-05  171  			return ret;
2865d42c78a9121 Larry Finger        2010-08-20  172  
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  173  		txdesc = (struct tx_desc *)(tmpchar + FWBUFF_ALIGN_SZ -
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  174  			    ((addr_t)(tmpchar) & (FWBUFF_ALIGN_SZ - 1)));
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  175  		payload = (u8 *)(txdesc) + txdscp_sz;
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  176  		ptr = (u8 *)mappedfw + FIELD_OFFSET(struct fw_hdr, fwpriv) +
2865d42c78a9121 Larry Finger        2010-08-20  177  		      fwhdr.fw_priv_sz;
2865d42c78a9121 Larry Finger        2010-08-20  178  		/* Download FirmWare */
2865d42c78a9121 Larry Finger        2010-08-20  179  		/* 1. determine IMEM code size and Load IMEM Code Section */
2865d42c78a9121 Larry Finger        2010-08-20  180  		imem_sz = fwhdr.img_IMEM_size;
2865d42c78a9121 Larry Finger        2010-08-20  181  		do {
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  182  			memset(txdesc, 0, TXDESC_SIZE);
168a2c10288d78f Luis de Bethencourt 2015-10-19  183  			if (imem_sz >  MAX_DUMP_FWSZ/*49152*/) {
2865d42c78a9121 Larry Finger        2010-08-20  184  				dump_imem_sz = MAX_DUMP_FWSZ;
168a2c10288d78f Luis de Bethencourt 2015-10-19  185  			} else {
2865d42c78a9121 Larry Finger        2010-08-20  186  				dump_imem_sz = imem_sz;
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  187  				txdesc->txdw0 |= cpu_to_le32(BIT(28));
2865d42c78a9121 Larry Finger        2010-08-20  188  			}
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  189  			txdesc->txdw0 |= cpu_to_le32(dump_imem_sz &
2865d42c78a9121 Larry Finger        2010-08-20  190  						       0x0000ffff);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  191  			memcpy(payload, ptr, dump_imem_sz);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  192  			r8712_write_mem(adapter, RTL8712_DMA_VOQ,
2865d42c78a9121 Larry Finger        2010-08-20  193  					dump_imem_sz + TXDESC_SIZE,
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  194  					(u8 *)txdesc);
2865d42c78a9121 Larry Finger        2010-08-20  195  			ptr += dump_imem_sz;
2865d42c78a9121 Larry Finger        2010-08-20  196  			imem_sz -= dump_imem_sz;
2865d42c78a9121 Larry Finger        2010-08-20  197  		} while (imem_sz > 0);
2865d42c78a9121 Larry Finger        2010-08-20  198  		i = 10;
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  199  		tmp16 = r8712_read16(adapter, TCR);
2865d42c78a9121 Larry Finger        2010-08-20  200  		while (((tmp16 & _IMEM_CODE_DONE) == 0) && (i > 0)) {
942eaa867f32138 Amitoj Kaur Chawla  2015-10-10  201  			usleep_range(10, 1000);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  202  			tmp16 = r8712_read16(adapter, TCR);
2865d42c78a9121 Larry Finger        2010-08-20  203  			i--;
2865d42c78a9121 Larry Finger        2010-08-20  204  		}
2865d42c78a9121 Larry Finger        2010-08-20  205  		if (i == 0 || (tmp16 & _IMEM_CHK_RPT) == 0)
2865d42c78a9121 Larry Finger        2010-08-20  206  			goto exit_fail;
2865d42c78a9121 Larry Finger        2010-08-20  207  
2865d42c78a9121 Larry Finger        2010-08-20  208  		/* 2.Download EMEM code size and Load EMEM Code Section */
2865d42c78a9121 Larry Finger        2010-08-20  209  		emem_sz = fwhdr.img_SRAM_size;
2865d42c78a9121 Larry Finger        2010-08-20  210  		do {
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  211  			memset(txdesc, 0, TXDESC_SIZE);
a7e585918ecd5a2 Liam Ryan           2017-09-12  212  			if (emem_sz >  MAX_DUMP_FWSZ) { /* max=48k */
2865d42c78a9121 Larry Finger        2010-08-20  213  				dump_emem_sz = MAX_DUMP_FWSZ;
a7e585918ecd5a2 Liam Ryan           2017-09-12  214  			} else {
2865d42c78a9121 Larry Finger        2010-08-20  215  				dump_emem_sz = emem_sz;
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  216  				txdesc->txdw0 |= cpu_to_le32(BIT(28));
2865d42c78a9121 Larry Finger        2010-08-20  217  			}
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  218  			txdesc->txdw0 |= cpu_to_le32(dump_emem_sz &
2865d42c78a9121 Larry Finger        2010-08-20  219  						       0x0000ffff);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  220  			memcpy(payload, ptr, dump_emem_sz);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  221  			r8712_write_mem(adapter, RTL8712_DMA_VOQ,
e7d992d8b6224aa Parth Sane          2016-04-25  222  					dump_emem_sz + TXDESC_SIZE,
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  223  					(u8 *)txdesc);
2865d42c78a9121 Larry Finger        2010-08-20  224  			ptr += dump_emem_sz;
2865d42c78a9121 Larry Finger        2010-08-20  225  			emem_sz -= dump_emem_sz;
2865d42c78a9121 Larry Finger        2010-08-20  226  		} while (emem_sz > 0);
2865d42c78a9121 Larry Finger        2010-08-20  227  		i = 5;
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  228  		tmp16 = r8712_read16(adapter, TCR);
2865d42c78a9121 Larry Finger        2010-08-20  229  		while (((tmp16 & _EMEM_CODE_DONE) == 0) && (i > 0)) {
942eaa867f32138 Amitoj Kaur Chawla  2015-10-10  230  			usleep_range(10, 1000);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  231  			tmp16 = r8712_read16(adapter, TCR);
2865d42c78a9121 Larry Finger        2010-08-20  232  			i--;
2865d42c78a9121 Larry Finger        2010-08-20  233  		}
2865d42c78a9121 Larry Finger        2010-08-20  234  		if (i == 0 || (tmp16 & _EMEM_CHK_RPT) == 0)
2865d42c78a9121 Larry Finger        2010-08-20  235  			goto exit_fail;
2865d42c78a9121 Larry Finger        2010-08-20  236  
2865d42c78a9121 Larry Finger        2010-08-20  237  		/* 3.Enable CPU */
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  238  		tmp8 = r8712_read8(adapter, SYS_CLKR);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  239  		r8712_write8(adapter, SYS_CLKR, tmp8 | BIT(2));
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  240  		tmp8_a = r8712_read8(adapter, SYS_CLKR);
2865d42c78a9121 Larry Finger        2010-08-20  241  		if (tmp8_a != (tmp8 | BIT(2)))
2865d42c78a9121 Larry Finger        2010-08-20  242  			goto exit_fail;
2865d42c78a9121 Larry Finger        2010-08-20  243  
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  244  		tmp8 = r8712_read8(adapter, SYS_FUNC_EN + 1);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  245  		r8712_write8(adapter, SYS_FUNC_EN + 1, tmp8 | BIT(2));
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  246  		tmp8_a = r8712_read8(adapter, SYS_FUNC_EN + 1);
2865d42c78a9121 Larry Finger        2010-08-20  247  		if (tmp8_a != (tmp8 | BIT(2)))
2865d42c78a9121 Larry Finger        2010-08-20  248  			goto exit_fail;
2865d42c78a9121 Larry Finger        2010-08-20  249  
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  250  		r8712_read32(adapter, TCR);
2865d42c78a9121 Larry Finger        2010-08-20  251  
2865d42c78a9121 Larry Finger        2010-08-20  252  		/* 4.polling IMEM Ready */
2865d42c78a9121 Larry Finger        2010-08-20  253  		i = 100;
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  254  		tmp16 = r8712_read16(adapter, TCR);
2865d42c78a9121 Larry Finger        2010-08-20  255  		while (((tmp16 & _IMEM_RDY) == 0) && (i > 0)) {
2865d42c78a9121 Larry Finger        2010-08-20  256  			msleep(20);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  257  			tmp16 = r8712_read16(adapter, TCR);
2865d42c78a9121 Larry Finger        2010-08-20  258  			i--;
2865d42c78a9121 Larry Finger        2010-08-20  259  		}
2865d42c78a9121 Larry Finger        2010-08-20  260  		if (i == 0) {
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  261  			r8712_write16(adapter, 0x10250348, 0xc000);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  262  			r8712_write16(adapter, 0x10250348, 0xc001);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  263  			r8712_write16(adapter, 0x10250348, 0x2000);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  264  			r8712_write16(adapter, 0x10250348, 0x2001);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  265  			r8712_write16(adapter, 0x10250348, 0x2002);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  266  			r8712_write16(adapter, 0x10250348, 0x2003);
2865d42c78a9121 Larry Finger        2010-08-20  267  			goto exit_fail;
2865d42c78a9121 Larry Finger        2010-08-20  268  		}
2865d42c78a9121 Larry Finger        2010-08-20  269  		/* 5.Download DMEM code size and Load EMEM Code Section */
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  270  		memset(txdesc, 0, TXDESC_SIZE);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  271  		txdesc->txdw0 |= cpu_to_le32(fwhdr.fw_priv_sz & 0x0000ffff);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  272  		txdesc->txdw0 |= cpu_to_le32(BIT(28));
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  273  		memcpy(payload, &fwhdr.fwpriv, fwhdr.fw_priv_sz);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  274  		r8712_write_mem(adapter, RTL8712_DMA_VOQ,
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  275  				fwhdr.fw_priv_sz + TXDESC_SIZE, (u8 *)txdesc);
2865d42c78a9121 Larry Finger        2010-08-20  276  
2865d42c78a9121 Larry Finger        2010-08-20  277  		/* polling dmem code done */
2865d42c78a9121 Larry Finger        2010-08-20  278  		i = 100;
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  279  		tmp16 = r8712_read16(adapter, TCR);
2865d42c78a9121 Larry Finger        2010-08-20  280  		while (((tmp16 & _DMEM_CODE_DONE) == 0) && (i > 0)) {
2865d42c78a9121 Larry Finger        2010-08-20  281  			msleep(20);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  282  			tmp16 = r8712_read16(adapter, TCR);
2865d42c78a9121 Larry Finger        2010-08-20  283  			i--;
2865d42c78a9121 Larry Finger        2010-08-20  284  		}
2865d42c78a9121 Larry Finger        2010-08-20  285  		if (i == 0)
2865d42c78a9121 Larry Finger        2010-08-20  286  			goto exit_fail;
2865d42c78a9121 Larry Finger        2010-08-20  287  
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  288  		tmp8 = r8712_read8(adapter, 0x1025000A);
2865d42c78a9121 Larry Finger        2010-08-20  289  		if (tmp8 & BIT(4)) /* When boot from EEPROM,
4dadfb97b73f0fb Juliana Rodrigues   2016-03-13  290  				    * & FW need more time to read EEPROM
4dadfb97b73f0fb Juliana Rodrigues   2016-03-13  291  				    */
2865d42c78a9121 Larry Finger        2010-08-20  292  			i = 60;
2865d42c78a9121 Larry Finger        2010-08-20  293  		else			/* boot from EFUSE */
2865d42c78a9121 Larry Finger        2010-08-20  294  			i = 30;
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  295  		tmp16 = r8712_read16(adapter, TCR);
2865d42c78a9121 Larry Finger        2010-08-20  296  		while (((tmp16 & _FWRDY) == 0) && (i > 0)) {
2865d42c78a9121 Larry Finger        2010-08-20  297  			msleep(100);
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  298  			tmp16 = r8712_read16(adapter, TCR);
2865d42c78a9121 Larry Finger        2010-08-20  299  			i--;
2865d42c78a9121 Larry Finger        2010-08-20  300  		}
2865d42c78a9121 Larry Finger        2010-08-20  301  		if (i == 0)
2865d42c78a9121 Larry Finger        2010-08-20  302  			goto exit_fail;
168a2c10288d78f Luis de Bethencourt 2015-10-19  303  	} else {
2865d42c78a9121 Larry Finger        2010-08-20  304  		goto exit_fail;
168a2c10288d78f Luis de Bethencourt 2015-10-19  305  	}
e375870b9295be4 Larry Finger        2011-01-14  306  	ret = _SUCCESS;
2865d42c78a9121 Larry Finger        2010-08-20  307  
2865d42c78a9121 Larry Finger        2010-08-20  308  exit_fail:
286570fbdf4cc91 Nishka Dasgupta     2019-06-07  309  	kfree(tmpchar);
e375870b9295be4 Larry Finger        2011-01-14  310  	return ret;
2865d42c78a9121 Larry Finger        2010-08-20  311  }
2865d42c78a9121 Larry Finger        2010-08-20  312  
2865d42c78a9121 Larry Finger        2010-08-20  313  uint rtl8712_hal_init(struct _adapter *padapter)
2865d42c78a9121 Larry Finger        2010-08-20  314  {
2865d42c78a9121 Larry Finger        2010-08-20  315  	u32 val32;
2865d42c78a9121 Larry Finger        2010-08-20  316  	int i;
2865d42c78a9121 Larry Finger        2010-08-20  317  
2865d42c78a9121 Larry Finger        2010-08-20  318  	/* r8712 firmware download */
2865d42c78a9121 Larry Finger        2010-08-20  319  	if (rtl8712_dl_fw(padapter) != _SUCCESS)
2865d42c78a9121 Larry Finger        2010-08-20  320  		return _FAIL;
2865d42c78a9121 Larry Finger        2010-08-20  321  
87a573ada017b40 Przemo Firszt       2012-12-10  322  	netdev_info(padapter->pnetdev, "1 RCR=0x%x\n",
87a573ada017b40 Przemo Firszt       2012-12-10  323  		    r8712_read32(padapter, RCR));
2865d42c78a9121 Larry Finger        2010-08-20  324  	val32 = r8712_read32(padapter, RCR);
2865d42c78a9121 Larry Finger        2010-08-20  325  	r8712_write32(padapter, RCR, (val32 | BIT(26))); /* Enable RX TCP
4dadfb97b73f0fb Juliana Rodrigues   2016-03-13  326  							  * Checksum offload
4dadfb97b73f0fb Juliana Rodrigues   2016-03-13  327  							  */
87a573ada017b40 Przemo Firszt       2012-12-10  328  	netdev_info(padapter->pnetdev, "2 RCR=0x%x\n",
87a573ada017b40 Przemo Firszt       2012-12-10  329  		    r8712_read32(padapter, RCR));
2865d42c78a9121 Larry Finger        2010-08-20  330  	val32 = r8712_read32(padapter, RCR);
2865d42c78a9121 Larry Finger        2010-08-20  331  	r8712_write32(padapter, RCR, (val32 | BIT(25))); /* Append PHY status */
2865d42c78a9121 Larry Finger        2010-08-20  332  	val32 = r8712_read32(padapter, 0x10250040);
2865d42c78a9121 Larry Finger        2010-08-20  333  	r8712_write32(padapter,  0x10250040, (val32 & 0x00FFFFFF));
2865d42c78a9121 Larry Finger        2010-08-20  334  	/* for usb rx aggregation */
2865d42c78a9121 Larry Finger        2010-08-20  335  	r8712_write8(padapter, 0x102500B5, r8712_read8(padapter, 0x102500B5) |
2865d42c78a9121 Larry Finger        2010-08-20  336  	       BIT(0)); /* page = 128bytes */
2865d42c78a9121 Larry Finger        2010-08-20  337  	r8712_write8(padapter, 0x102500BD, r8712_read8(padapter, 0x102500BD) |
2865d42c78a9121 Larry Finger        2010-08-20  338  	       BIT(7)); /* enable usb rx aggregation */
2865d42c78a9121 Larry Finger        2010-08-20  339  	r8712_write8(padapter, 0x102500D9, 1); /* TH=1 => means that invalidate
4dadfb97b73f0fb Juliana Rodrigues   2016-03-13  340  						*  usb rx aggregation
4dadfb97b73f0fb Juliana Rodrigues   2016-03-13  341  						*/
2865d42c78a9121 Larry Finger        2010-08-20  342  	r8712_write8(padapter, 0x1025FE5B, 0x04); /* 1.7ms/4 */
2865d42c78a9121 Larry Finger        2010-08-20  343  	/* Fix the RX FIFO issue(USB error) */
2865d42c78a9121 Larry Finger        2010-08-20  344  	r8712_write8(padapter, 0x1025fe5C, r8712_read8(padapter, 0x1025fe5C)
2865d42c78a9121 Larry Finger        2010-08-20  345  		     | BIT(7));
2865d42c78a9121 Larry Finger        2010-08-20  346  	for (i = 0; i < 6; i++)
2865d42c78a9121 Larry Finger        2010-08-20  347  		padapter->eeprompriv.mac_addr[i] = r8712_read8(padapter,
2865d42c78a9121 Larry Finger        2010-08-20  348  							       MACID + i);
2865d42c78a9121 Larry Finger        2010-08-20  349  	return _SUCCESS;
2865d42c78a9121 Larry Finger        2010-08-20  350  }
2865d42c78a9121 Larry Finger        2010-08-20  351  
2865d42c78a9121 Larry Finger        2010-08-20  352  uint rtl8712_hal_deinit(struct _adapter *padapter)
2865d42c78a9121 Larry Finger        2010-08-20  353  {
2865d42c78a9121 Larry Finger        2010-08-20  354  	r8712_write8(padapter, RF_CTRL, 0x00);
2865d42c78a9121 Larry Finger        2010-08-20  355  	/* Turn off BB */
2865d42c78a9121 Larry Finger        2010-08-20  356  	msleep(20);
2865d42c78a9121 Larry Finger        2010-08-20  357  	/* Turn off MAC	*/
2865d42c78a9121 Larry Finger        2010-08-20  358  	r8712_write8(padapter, SYS_CLKR + 1, 0x38); /* Switch Control Path */
2865d42c78a9121 Larry Finger        2010-08-20  359  	r8712_write8(padapter, SYS_FUNC_EN + 1, 0x70);
2865d42c78a9121 Larry Finger        2010-08-20  360  	r8712_write8(padapter, PMC_FSM, 0x06);  /* Enable Loader Data Keep */
2865d42c78a9121 Larry Finger        2010-08-20  361  	r8712_write8(padapter, SYS_ISO_CTRL, 0xF9); /* Isolation signals from
4dadfb97b73f0fb Juliana Rodrigues   2016-03-13  362  						     * CORE, PLL
4dadfb97b73f0fb Juliana Rodrigues   2016-03-13  363  						     */
2865d42c78a9121 Larry Finger        2010-08-20  364  	r8712_write8(padapter, SYS_ISO_CTRL + 1, 0xe8); /* Enable EFUSE 1.2V */
2865d42c78a9121 Larry Finger        2010-08-20  365  	r8712_write8(padapter, AFE_PLL_CTRL, 0x00); /* Disable AFE PLL. */
2865d42c78a9121 Larry Finger        2010-08-20  366  	r8712_write8(padapter, LDOA15_CTRL, 0x54);  /* Disable A15V */
2865d42c78a9121 Larry Finger        2010-08-20  367  	r8712_write8(padapter, SYS_FUNC_EN + 1, 0x50); /* Disable E-Fuse 1.2V */
2865d42c78a9121 Larry Finger        2010-08-20  368  	r8712_write8(padapter, LDOV12D_CTRL, 0x24); /* Disable LDO12(for CE) */
2865d42c78a9121 Larry Finger        2010-08-20  369  	r8712_write8(padapter, AFE_MISC, 0x30); /* Disable AFE BG&MB */
2865d42c78a9121 Larry Finger        2010-08-20  370  	/* Option for Disable 1.6V LDO.	*/
2865d42c78a9121 Larry Finger        2010-08-20  371  	r8712_write8(padapter, SPS0_CTRL, 0x56); /* Disable 1.6V LDO */
2865d42c78a9121 Larry Finger        2010-08-20  372  	r8712_write8(padapter, SPS0_CTRL + 1, 0x43);  /* Set SW PFM */
2865d42c78a9121 Larry Finger        2010-08-20  373  	return _SUCCESS;
2865d42c78a9121 Larry Finger        2010-08-20  374  }
2865d42c78a9121 Larry Finger        2010-08-20  375  
2865d42c78a9121 Larry Finger        2010-08-20  376  uint rtl871x_hal_init(struct _adapter *padapter)
2865d42c78a9121 Larry Finger        2010-08-20  377  {
2865d42c78a9121 Larry Finger        2010-08-20  378  	padapter->hw_init_completed = false;
8d2884ace7919ea Amitoj Kaur Chawla  2015-10-07  379  	if (!padapter->halpriv.hal_bus_init)
2865d42c78a9121 Larry Finger        2010-08-20  380  		return _FAIL;
2865d42c78a9121 Larry Finger        2010-08-20  381  	if (padapter->halpriv.hal_bus_init(padapter) != _SUCCESS)
2865d42c78a9121 Larry Finger        2010-08-20  382  		return _FAIL;
168a2c10288d78f Luis de Bethencourt 2015-10-19  383  	if (rtl8712_hal_init(padapter) == _SUCCESS) {
2865d42c78a9121 Larry Finger        2010-08-20  384  		padapter->hw_init_completed = true;
168a2c10288d78f Luis de Bethencourt 2015-10-19  385  	} else {
2865d42c78a9121 Larry Finger        2010-08-20  386  		padapter->hw_init_completed = false;
2865d42c78a9121 Larry Finger        2010-08-20  387  		return _FAIL;
2865d42c78a9121 Larry Finger        2010-08-20  388  	}
2865d42c78a9121 Larry Finger        2010-08-20  389  	return _SUCCESS;
2865d42c78a9121 Larry Finger        2010-08-20  390  }

:::::: The code at line 136 was first introduced by commit
:::::: 2865d42c78a9121caad52cb02d1fbb7f5cdbc4ef staging: r8712u: Add the new driver to the mainline kernel

:::::: TO: Larry Finger <Larry.Finger@lwfinger.net>
:::::: CC: Larry Finger <Larry.Finger@lwfinger.net>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
