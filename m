Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 926E850BDA8
	for <lists+driverdev-devel@lfdr.de>; Fri, 22 Apr 2022 18:55:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E73FA826A8;
	Fri, 22 Apr 2022 16:55:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C1vyHPxVwpIx; Fri, 22 Apr 2022 16:55:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 76700826D5;
	Fri, 22 Apr 2022 16:54:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4F9E91BF842
 for <devel@linuxdriverproject.org>; Fri, 22 Apr 2022 16:54:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3D277606E7
 for <devel@linuxdriverproject.org>; Fri, 22 Apr 2022 16:54:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rvTzp5MJDe6C for <devel@linuxdriverproject.org>;
 Fri, 22 Apr 2022 16:54:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2626460674
 for <devel@linuxdriverproject.org>; Fri, 22 Apr 2022 16:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650646495; x=1682182495;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=yZNBnSuynarGRjzVvsGb3f57oeFuePokaCkVYDt1K1s=;
 b=MnHVpwJ5GvgUqs6pp+hibIPc2bu0zUem/PAK7i448yVeAO5GTpRV3pzt
 fvYIMR/o0lM+UC8Q+jGZioddlGtyTusSWun9VCBYJ9gZT8Ai1Kv5YsMBV
 l75aqsi54X62kykaSoo3Ee+ydwabKd01G2vLwwkXENax3niCgEISPKdc6
 QegkRJgoF5ulDM27rbwnNzDsTabddEcf4KSSezaE02k0e2w3Ng7m++puh
 QDENBQGnWPwuF1ZDPK1hJdkpX1TkPkaCZsM1QO0UYrBGHEZh6LKicnSRj
 SX4ZiNvvdSSs9BPLOjxfi5/BKhWCL7Bku1oSQ5auAT9/hMDc8rna1xob2 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="263574897"
X-IronPort-AV: E=Sophos;i="5.90,282,1643702400"; d="scan'208";a="263574897"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2022 09:54:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,282,1643702400"; d="scan'208";a="534471896"
Received: from lkp-server01.sh.intel.com (HELO 3abc53900bec) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 22 Apr 2022 09:54:50 -0700
Received: from kbuild by 3abc53900bec with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nhwYU-000AMY-1w;
 Fri, 22 Apr 2022 16:54:50 +0000
Date: Sat, 23 Apr 2022 00:54:07 +0800
From: kernel test robot <lkp@intel.com>
To: Chenyang Li <lichenyang@loongson.cn>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Dan Carpenter <error27@gmail.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 devel@linuxdriverproject.org
Subject: Re: [PATCH v7 1/4] drm/loongson: Add DRM Driver for Loongson 7A1000
 bridge chip
Message-ID: <202204230030.kZgmTGOQ-lkp@intel.com>
References: <20220422081416.682625-1-lichenyang@loongson.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220422081416.682625-1-lichenyang@loongson.cn>
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
Cc: Yi Li <liyi@loongson.cn>, Huacai Chen <chenhuacai@kernel.org>,
 kbuild-all@lists.01.org, linux-kernel@vger.kernel.org,
 Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Chenyang,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm/drm-next]
[also build test WARNING on v5.18-rc3 next-20220422]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Chenyang-Li/drm-loongson-Add-DRM-Driver-for-Loongson-7A1000-bridge-chip/20220422-161914
base:   git://anongit.freedesktop.org/drm/drm drm-next
config: arm-randconfig-s031-20220422 (https://download.01.org/0day-ci/archive/20220423/202204230030.kZgmTGOQ-lkp@intel.com/config)
compiler: arm-linux-gnueabi-gcc (GCC) 11.2.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # apt-get install sparse
        # sparse version: v0.6.4-dirty
        # https://github.com/intel-lab-lkp/linux/commit/e9a9964d58e6cc797a113fa47f54583c10908d63
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Chenyang-Li/drm-loongson-Add-DRM-Driver-for-Loongson-7A1000-bridge-chip/20220422-161914
        git checkout e9a9964d58e6cc797a113fa47f54583c10908d63
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__' O=build_dir ARCH=arm SHELL=/bin/bash drivers/gpu/drm/loongson/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)
>> drivers/gpu/drm/loongson/loongson_drv.c:91:9: sparse: sparse: cast removes address space '__iomem' of expression
   drivers/gpu/drm/loongson/loongson_drv.c:99:5: sparse: sparse: symbol 'loongson_modeset_init' was not declared. Should it be static?

vim +/__iomem +91 drivers/gpu/drm/loongson/loongson_drv.c

    36	
    37	static int loongson_device_init(struct drm_device *dev)
    38	{
    39		struct loongson_device *ldev = to_loongson_device(dev);
    40		struct pci_dev *pdev = to_pci_dev(dev->dev);
    41		struct pci_dev *gpu_pdev;
    42		resource_size_t aper_base;
    43		resource_size_t aper_size;
    44		resource_size_t mmio_base;
    45		resource_size_t mmio_size;
    46		int ret;
    47	
    48		/* GPU MEM */
    49		/* We need get 7A-gpu pci device information for ldev->gpu_pdev */
    50		/* dev->pdev save 7A-dc pci device information */
    51		gpu_pdev = pci_get_device(PCI_VENDOR_ID_LOONGSON,
    52					  PCI_DEVICE_ID_LOONGSON_GPU, NULL);
    53		ret = pci_enable_device(gpu_pdev);
    54		if (ret)
    55			return ret;
    56		pci_set_drvdata(gpu_pdev, dev);
    57	
    58		aper_base = pci_resource_start(gpu_pdev, 2);
    59		aper_size = pci_resource_len(gpu_pdev, 2);
    60		ldev->vram_start = aper_base;
    61		ldev->vram_size = aper_size;
    62	
    63		if (!devm_request_mem_region(dev->dev, ldev->vram_start,
    64					     ldev->vram_size, "loongson_vram")) {
    65			drm_err(dev, "Can't reserve VRAM\n");
    66			return -ENXIO;
    67		}
    68	
    69		/* DC MEM */
    70		mmio_base = pci_resource_start(pdev, 0);
    71		mmio_size = pci_resource_len(pdev, 0);
    72		ldev->mmio = devm_ioremap(dev->dev, mmio_base, mmio_size);
    73		if (!ldev->mmio) {
    74			drm_err(dev, "Cannot map mmio region\n");
    75			return -ENOMEM;
    76		}
    77	
    78		if (!devm_request_mem_region(dev->dev, mmio_base,
    79					     mmio_size, "loongson_mmio")) {
    80			drm_err(dev, "Can't reserve mmio registers\n");
    81			return -ENOMEM;
    82		}
    83	
    84		/* DC IO */
    85		ldev->io = devm_ioremap(dev->dev, LS7A_CHIPCFG_REG_BASE, 0xf);
    86		if (!ldev->io)
    87			return -ENOMEM;
    88	
    89		ldev->num_crtc = 2;
    90	
  > 91		drm_info(dev, "DC mmio base 0x%llx size 0x%llx io 0x%llx\n",
    92			 mmio_base, mmio_size, *(u64 *)ldev->io);
    93		drm_info(dev, "GPU vram start = 0x%x size = 0x%x\n",
    94			 ldev->vram_start, ldev->vram_size);
    95	
    96		return 0;
    97	}
    98	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
