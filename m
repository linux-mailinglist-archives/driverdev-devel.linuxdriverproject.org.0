Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 081253049BD
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 Jan 2021 21:15:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6213E86151;
	Tue, 26 Jan 2021 20:15:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OI1WXWeCc2U3; Tue, 26 Jan 2021 20:15:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CDCE18613C;
	Tue, 26 Jan 2021 20:15:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 39D9F1BF4E5
 for <devel@linuxdriverproject.org>; Tue, 26 Jan 2021 20:15:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 35DC88502C
 for <devel@linuxdriverproject.org>; Tue, 26 Jan 2021 20:15:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0dgiBJEeMMB5 for <devel@linuxdriverproject.org>;
 Tue, 26 Jan 2021 20:15:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3373684F7A
 for <devel@driverdev.osuosl.org>; Tue, 26 Jan 2021 20:15:06 +0000 (UTC)
IronPort-SDR: C3fSQ/jHOsXEcitbyWxzGvjCYlOuIEptrnd3Rfu8xkxER03mG2Xs1a2YgA7ue6LSaGoef+b1fI
 3wl6SLPT4RuA==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="167635889"
X-IronPort-AV: E=Sophos;i="5.79,377,1602572400"; 
 d="gz'50?scan'50,208,50";a="167635889"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 12:15:00 -0800
IronPort-SDR: W+X4bzbUMW69z1DJna+CaAbHXqcy9Mwavcvh7jzvf73GNPvt9Z1QaqOPECHCe2za71LZ6DuKzz
 PFJPVlwa+Ekw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,377,1602572400"; 
 d="gz'50?scan'50,208,50";a="573043117"
Received: from lkp-server02.sh.intel.com (HELO 625d3a354f04) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 26 Jan 2021 12:14:55 -0800
Received: from kbuild by 625d3a354f04 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1l4Ujm-00014q-RW; Tue, 26 Jan 2021 20:14:54 +0000
Date: Wed, 27 Jan 2021 04:14:24 +0800
From: kernel test robot <lkp@intel.com>
To: Carlis <zhangxuezhi3@gmail.com>, gregkh@linuxfoundation.org
Subject: Re: [PATCH v3] fbtft: add tearing signal detect
Message-ID: <202101270448.KTtxyUfQ-lkp@intel.com>
References: <1611566070-84944-1-git-send-email-zhangxuezhi3@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="+QahgC5+KEYLbs62"
Content-Disposition: inline
In-Reply-To: <1611566070-84944-1-git-send-email-zhangxuezhi3@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 kbuild-all@lists.01.org, mh12gx2825@gmail.com, sbrivio@redhat.com,
 oliver.graute@kococonnector.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, clang-built-linux@googlegroups.com,
 colin.king@canonical.com, zhangxuezhi1@yulong.com
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--+QahgC5+KEYLbs62
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Carlis,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on staging/staging-testing]
[also build test WARNING on v5.11-rc5 next-20210125]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Carlis/fbtft-add-tearing-signal-detect/20210125-210428
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git ec52736c35f29ed96a45e641dd6aad61bc9cb6f7
config: x86_64-randconfig-r034-20210126 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 925ae8c790c7e354f12ec14a6cac6aa49fc75b29)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/480797ed48b87555bb31a8a07b600959b53fe643
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Carlis/fbtft-add-tearing-signal-detect/20210125-210428
        git checkout 480797ed48b87555bb31a8a07b600959b53fe643
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/staging/fbtft/fb_st7789v.c:216:5: warning: no previous prototype for function 'st7789v_write_vmem16_bus8' [-Wmissing-prototypes]
   int st7789v_write_vmem16_bus8(struct fbtft_par *par, size_t offset, size_t len)
       ^
   drivers/staging/fbtft/fb_st7789v.c:216:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int st7789v_write_vmem16_bus8(struct fbtft_par *par, size_t offset, size_t len)
   ^
   static 
   1 warning generated.


vim +/st7789v_write_vmem16_bus8 +216 drivers/staging/fbtft/fb_st7789v.c

   208	
   209	/*****************************************************************************
   210	 *
   211	 *   int (*write_vmem)(struct fbtft_par *par);
   212	 *
   213	 *****************************************************************************/
   214	
   215	/* 16 bit pixel over 8-bit databus */
 > 216	int st7789v_write_vmem16_bus8(struct fbtft_par *par, size_t offset, size_t len)
   217	{
   218		u16 *vmem16;
   219		__be16 *txbuf16 = par->txbuf.buf;
   220		size_t remain;
   221		size_t to_copy;
   222		size_t tx_array_size;
   223		int i;
   224		int rc, ret = 0;
   225		size_t startbyte_size = 0;
   226	
   227		fbtft_par_dbg(DEBUG_WRITE_VMEM, par, "st7789v ---%s(offset=%zu, len=%zu)\n",
   228			      __func__, offset, len);
   229	
   230		remain = len / 2;
   231		vmem16 = (u16 *)(par->info->screen_buffer + offset);
   232	
   233		if (par->gpio.dc)
   234			gpiod_set_value(par->gpio.dc, 1);
   235	
   236		/* non buffered write */
   237		if (!par->txbuf.buf)
   238			return par->fbtftops.write(par, vmem16, len);
   239	
   240		/* buffered write */
   241		tx_array_size = par->txbuf.len / 2;
   242	
   243		if (par->startbyte) {
   244			txbuf16 = par->txbuf.buf + 1;
   245			tx_array_size -= 2;
   246			*(u8 *)(par->txbuf.buf) = par->startbyte | 0x2;
   247			startbyte_size = 1;
   248		}
   249	
   250		while (remain) {
   251			to_copy = min(tx_array_size, remain);
   252			dev_dbg(par->info->device, "    to_copy=%zu, remain=%zu\n",
   253				to_copy, remain - to_copy);
   254	
   255			for (i = 0; i < to_copy; i++)
   256				txbuf16[i] = cpu_to_be16(vmem16[i]);
   257	
   258			vmem16 = vmem16 + to_copy;
   259			if (par->gpio.te) {
   260				enable_spi_panel_te_irq(par, true);
   261				reinit_completion(&spi_panel_te);
   262				rc = wait_for_completion_timeout(&spi_panel_te,
   263								 msecs_to_jiffies(SPI_PANEL_TE_TIMEOUT));
   264				if (rc == 0)
   265					pr_err("wait panel TE time out\n");
   266			}
   267			ret = par->fbtftops.write(par, par->txbuf.buf,
   268									startbyte_size + to_copy * 2);
   269			if (par->gpio.te)
   270				enable_spi_panel_te_irq(par, false);
   271			if (ret < 0)
   272				return ret;
   273			remain -= to_copy;
   274		}
   275	
   276		return ret;
   277	}
   278	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--+QahgC5+KEYLbs62
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--+QahgC5+KEYLbs62
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--+QahgC5+KEYLbs62--
