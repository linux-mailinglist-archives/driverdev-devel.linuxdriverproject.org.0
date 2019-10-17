Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CA150DA2E9
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Oct 2019 03:03:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C7B4C86BCC;
	Thu, 17 Oct 2019 01:03:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WPXsN4-fLLtk; Thu, 17 Oct 2019 01:03:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A61C686BBB;
	Thu, 17 Oct 2019 01:03:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 85D9F1BF9C6
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 01:03:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7F38C87C1A
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 01:03:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id en8-KtA-S-h9 for <devel@linuxdriverproject.org>;
 Thu, 17 Oct 2019 01:03:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 844698798E
 for <devel@driverdev.osuosl.org>; Thu, 17 Oct 2019 01:03:19 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 18:03:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,305,1566889200"; 
 d="gz'50?scan'50,208,50";a="195757580"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 16 Oct 2019 18:03:17 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iKuCC-0005Fy-FD; Thu, 17 Oct 2019 09:03:16 +0800
Date: Thu, 17 Oct 2019 09:02:25 +0800
From: kbuild test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:device_h_splitup 11/11]
 include/linux/device_printk.h:106:2: warning: this statement may fall
 through
Message-ID: <201910170924.La4JlcWM%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="sctjex3nrvvksqsw"
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, kbuild-all@lists.01.org
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--sctjex3nrvvksqsw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git device_h_splitup
head:   965681d8272ce30aa68375c25c4c797731e18dd3
commit: 965681d8272ce30aa68375c25c4c797731e18dd3 [11/11] device.h: move dev_printk()-like functions to device_printk.h
config: powerpc-mpc512x_defconfig (attached as .config)
compiler: powerpc-linux-gcc (GCC) 7.4.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 965681d8272ce30aa68375c25c4c797731e18dd3
        # save the attached .config to linux build tree
        GCC_VERSION=7.4.0 make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/linux/device.h:15:0,
                    from include/linux/acpi.h:15,
                    from include/linux/i2c.h:13,
                    from include/uapi/linux/fb.h:6,
                    from include/linux/fb.h:6,
                    from drivers/video/fbdev/fsl-diu-fb.c:20:
   drivers/video/fbdev/fsl-diu-fb.c: In function 'fsl_diu_ioctl':
>> include/linux/device_printk.h:106:2: warning: this statement may fall through [-Wimplicit-fallthrough=]
     _dev_warn(dev, dev_fmt(fmt), ##__VA_ARGS__)
     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/video/fbdev/fsl-diu-fb.c:1287:3: note: in expansion of macro 'dev_warn'
      dev_warn(info->dev,
      ^~~~~~~~
   drivers/video/fbdev/fsl-diu-fb.c:1290:2: note: here
     case MFB_SET_PIXFMT:
     ^~~~
   In file included from include/linux/device.h:15:0,
                    from include/linux/acpi.h:15,
                    from include/linux/i2c.h:13,
                    from include/uapi/linux/fb.h:6,
                    from include/linux/fb.h:6,
                    from drivers/video/fbdev/fsl-diu-fb.c:20:
>> include/linux/device_printk.h:106:2: warning: this statement may fall through [-Wimplicit-fallthrough=]
     _dev_warn(dev, dev_fmt(fmt), ##__VA_ARGS__)
     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/video/fbdev/fsl-diu-fb.c:1296:3: note: in expansion of macro 'dev_warn'
      dev_warn(info->dev,
      ^~~~~~~~
   drivers/video/fbdev/fsl-diu-fb.c:1299:2: note: here
     case MFB_GET_PIXFMT:
     ^~~~
--
   In file included from include/linux/device.h:15:0,
                    from include/linux/acpi.h:15,
                    from include/linux/i2c.h:13,
                    from include/uapi/linux/fb.h:6,
                    from include/linux/fb.h:6,
                    from drivers/video//fbdev/fsl-diu-fb.c:20:
   drivers/video//fbdev/fsl-diu-fb.c: In function 'fsl_diu_ioctl':
>> include/linux/device_printk.h:106:2: warning: this statement may fall through [-Wimplicit-fallthrough=]
     _dev_warn(dev, dev_fmt(fmt), ##__VA_ARGS__)
     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/video//fbdev/fsl-diu-fb.c:1287:3: note: in expansion of macro 'dev_warn'
      dev_warn(info->dev,
      ^~~~~~~~
   drivers/video//fbdev/fsl-diu-fb.c:1290:2: note: here
     case MFB_SET_PIXFMT:
     ^~~~
   In file included from include/linux/device.h:15:0,
                    from include/linux/acpi.h:15,
                    from include/linux/i2c.h:13,
                    from include/uapi/linux/fb.h:6,
                    from include/linux/fb.h:6,
                    from drivers/video//fbdev/fsl-diu-fb.c:20:
>> include/linux/device_printk.h:106:2: warning: this statement may fall through [-Wimplicit-fallthrough=]
     _dev_warn(dev, dev_fmt(fmt), ##__VA_ARGS__)
     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/video//fbdev/fsl-diu-fb.c:1296:3: note: in expansion of macro 'dev_warn'
      dev_warn(info->dev,
      ^~~~~~~~
   drivers/video//fbdev/fsl-diu-fb.c:1299:2: note: here
     case MFB_GET_PIXFMT:
     ^~~~

vim +106 include/linux/device_printk.h

    91	
    92	/*
    93	 * #defines for all the dev_<level> macros to prefix with whatever
    94	 * possible use of #define dev_fmt(fmt) ...
    95	 */
    96	
    97	#define dev_emerg(dev, fmt, ...)					\
    98		_dev_emerg(dev, dev_fmt(fmt), ##__VA_ARGS__)
    99	#define dev_crit(dev, fmt, ...)						\
   100		_dev_crit(dev, dev_fmt(fmt), ##__VA_ARGS__)
   101	#define dev_alert(dev, fmt, ...)					\
   102		_dev_alert(dev, dev_fmt(fmt), ##__VA_ARGS__)
   103	#define dev_err(dev, fmt, ...)						\
   104		_dev_err(dev, dev_fmt(fmt), ##__VA_ARGS__)
   105	#define dev_warn(dev, fmt, ...)						\
 > 106		_dev_warn(dev, dev_fmt(fmt), ##__VA_ARGS__)
   107	#define dev_notice(dev, fmt, ...)					\
   108		_dev_notice(dev, dev_fmt(fmt), ##__VA_ARGS__)
   109	#define dev_info(dev, fmt, ...)						\
   110		_dev_info(dev, dev_fmt(fmt), ##__VA_ARGS__)
   111	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--sctjex3nrvvksqsw
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
hQ9YEaaiiZSu/gc3Am5lQwsBAA==

--sctjex3nrvvksqsw
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--sctjex3nrvvksqsw--
