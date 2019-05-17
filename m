Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8694521C06
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 18:53:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EAA9E87A19;
	Fri, 17 May 2019 16:53:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pA+jR-LNRS-c; Fri, 17 May 2019 16:53:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 65C3C879A3;
	Fri, 17 May 2019 16:53:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 01B5D1BF5A7
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 16:53:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F315E86AEB
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 16:53:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SgI3tuiQvWN9 for <devel@linuxdriverproject.org>;
 Fri, 17 May 2019 16:53:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2AB8686B2C
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 16:53:03 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 09:53:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,480,1549958400"; d="scan'208";a="172865902"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 17 May 2019 09:53:02 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hRg6P-000GMd-RD; Sat, 18 May 2019 00:53:01 +0800
Date: Sat, 18 May 2019 00:52:39 +0800
From: kbuild test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 03/10] staging: kpc2000: remove fileops.c file.
Message-ID: <201905180018.ZoI729J7%lkp@intel.com>
References: <20190517084945.2810-5-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517084945.2810-5-gregkh@linuxfoundation.org>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.5.23 (2014-03-12)
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kbuild-all@01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg,

I love your patch! Perhaps something to improve:

[auto build test WARNING on staging/staging-testing]
[cannot apply to v5.1 next-20190517]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/Greg-Kroah-Hartman/staging-kpc2000-fix-a-bunch-of-orginization-and-header-file-issues/20190517-213909
reproduce:
        # apt-get install sparse
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

   drivers/staging/kpc2000/kpc2000/core.c:82:1: sparse: sparse: symbol 'dev_attr_ssid' was not declared. Should it be static?
   drivers/staging/kpc2000/kpc2000/core.c:83:1: sparse: sparse: symbol 'dev_attr_ddna' was not declared. Should it be static?
   drivers/staging/kpc2000/kpc2000/core.c:85:1: sparse: sparse: symbol 'dev_attr_hw_rev' was not declared. Should it be static?
   drivers/staging/kpc2000/kpc2000/core.c:86:1: sparse: sparse: symbol 'dev_attr_build' was not declared. Should it be static?
   drivers/staging/kpc2000/kpc2000/core.c:87:1: sparse: sparse: symbol 'dev_attr_build_date' was not declared. Should it be static?
   drivers/staging/kpc2000/kpc2000/core.c:88:1: sparse: sparse: symbol 'dev_attr_build_time' was not declared. Should it be static?
   drivers/staging/kpc2000/kpc2000/core.c:89:1: sparse: sparse: symbol 'dev_attr_cpld_reg' was not declared. Should it be static?
   drivers/staging/kpc2000/kpc2000/core.c:90:1: sparse: sparse: symbol 'dev_attr_cpld_reconfigure' was not declared. Should it be static?
   drivers/staging/kpc2000/kpc2000/core.c:194:14: sparse: sparse: symbol 'kp2000_irq_handler' was not declared. Should it be static?
>> drivers/staging/kpc2000/kpc2000/core.c:285:37: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void [noderef] <asn:1> *to @@    got n:1> *to @@
>> drivers/staging/kpc2000/kpc2000/core.c:285:37: sparse:    expected void [noderef] <asn:1> *to
>> drivers/staging/kpc2000/kpc2000/core.c:285:37: sparse:    got void *

vim +285 drivers/staging/kpc2000/kpc2000/core.c

   259	
   260	static long kp2000_cdev_ioctl(struct file *filp, unsigned int ioctl_num,
   261				      unsigned long ioctl_param)
   262	{
   263		struct kp2000_device *pcard = filp->private_data;
   264	
   265		dev_dbg(&pcard->pdev->dev, "kp2000_cdev_ioctl(filp = [%p], ioctl_num = 0x%08x, ioctl_param = 0x%016lx) pcard = [%p]\n", filp, ioctl_num, ioctl_param, pcard);
   266	
   267		switch (ioctl_num){
   268		case KP2000_IOCTL_GET_CPLD_REG:             return readq(pcard->sysinfo_regs_base + REG_CPLD_CONFIG);
   269		case KP2000_IOCTL_GET_PCIE_ERROR_REG:       return readq(pcard->sysinfo_regs_base + REG_PCIE_ERROR_COUNT);
   270	
   271		case KP2000_IOCTL_GET_EVERYTHING: {
   272			struct kp2000_regs temp;
   273			int ret;
   274	
   275			memset(&temp, 0, sizeof(temp));
   276			temp.card_id = pcard->card_id;
   277			temp.build_version = pcard->build_version;
   278			temp.build_datestamp = pcard->build_datestamp;
   279			temp.build_timestamp = pcard->build_timestamp;
   280			temp.hw_rev = pcard->hardware_revision;
   281			temp.ssid = pcard->ssid;
   282			temp.ddna = pcard->ddna;
   283			temp.cpld_reg = readq(pcard->sysinfo_regs_base + REG_CPLD_CONFIG);
   284	
 > 285			ret = copy_to_user((void*)ioctl_param, (void*)&temp, sizeof(temp));
   286			if (ret)
   287				return -EFAULT;
   288	
   289			return sizeof(temp);
   290			}
   291	
   292		default:
   293			return -ENOTTY;
   294		}
   295		return -ENOTTY;
   296	}
   297	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
