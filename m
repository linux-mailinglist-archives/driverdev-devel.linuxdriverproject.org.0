Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E66570BCB
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Jul 2022 22:31:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7DE3061035;
	Mon, 11 Jul 2022 20:31:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7DE3061035
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z_W0QUdNpdHU; Mon, 11 Jul 2022 20:31:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 14F5961024;
	Mon, 11 Jul 2022 20:31:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 14F5961024
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B05B01BF360
 for <devel@linuxdriverproject.org>; Mon, 11 Jul 2022 20:30:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 84B494217E
 for <devel@linuxdriverproject.org>; Mon, 11 Jul 2022 20:30:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 84B494217E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id acFleV8QiLOy for <devel@linuxdriverproject.org>;
 Mon, 11 Jul 2022 20:30:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C2CF42178
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5C2CF42178
 for <devel@linuxdriverproject.org>; Mon, 11 Jul 2022 20:30:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10405"; a="267802047"
X-IronPort-AV: E=Sophos;i="5.92,263,1650956400"; d="scan'208";a="267802047"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 13:30:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,263,1650956400"; d="scan'208";a="721727476"
Received: from lkp-server02.sh.intel.com (HELO 8708c84be1ad) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 11 Jul 2022 13:30:41 -0700
Received: from kbuild by 8708c84be1ad with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1oB03E-0001CZ-GO;
 Mon, 11 Jul 2022 20:30:40 +0000
Date: Tue, 12 Jul 2022 04:30:22 +0800
From: kernel test robot <lkp@intel.com>
To: Chenyang Li <lichenyang@loongson.cn>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Dan Carpenter <error27@gmail.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 devel@linuxdriverproject.org
Subject: Re: [PATCH v7 3/4] drm/loongson: Add interrupt driver for LS7A.
Message-ID: <202207120454.PJBS1e9p-lkp@intel.com>
References: <20220625090715.3663-3-lichenyang@loongson.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220625090715.3663-3-lichenyang@loongson.cn>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657571454; x=1689107454;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=eIsTB0Pt504SFh4kF57CTygGapGxny7sePVJFDogJlk=;
 b=LpLNd50SY1Kr03ijb54ubFKQQZMM9IUXH0uzN5vTQ8opqZ81ao7tqv9e
 L2vPBXwIQ0VqXovMqBSg+12yUjCrX+4gr7s2yyrncRRkc3LXjN6S1LMnN
 8xaFrEn6rakgtB07Pon/tmjfQiVFaajL+MQhh85IPc/qWNZbLcvCawzf5
 R1v2VOV2g+bUV7IS4QQlk4QQ7MMrVMmNX39bh8D4K8SzkbqzJxeJYfpKb
 QfUNgjoGpjAASAYClrQyPVkgndAiFv/2Zqe+TlOMFk+i4zGI+r5lBTAUS
 eL81kx4+OzfMLV/bBwhcYF66P2041rdneqGWfX97gtqLMwDUBIHLQ1tWd
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LpLNd50S
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
Cc: Sam Ravnborg <sam@ravnborg.org>, llvm@lists.linux.dev,
 kbuild-all@lists.01.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Chenyang,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-misc/drm-misc-next]
[also build test WARNING on linus/master v5.19-rc6 next-20220708]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Chenyang-Li/drm-loongson-Add-DRM-Driver-for-Loongson-7A1000-bridge-chip/20220625-171037
base:   git://anongit.freedesktop.org/drm/drm-misc drm-misc-next
config: arm64-allmodconfig (https://download.01.org/0day-ci/archive/20220712/202207120454.PJBS1e9p-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project 77a38f6839980bfac61babb40d83772c51427011)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/intel-lab-lkp/linux/commit/7cad653ee3a3b83188e2d91335269753e134b808
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Chenyang-Li/drm-loongson-Add-DRM-Driver-for-Loongson-7A1000-bridge-chip/20220625-171037
        git checkout 7cad653ee3a3b83188e2d91335269753e134b808
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash drivers/gpu/drm/loongson/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/loongson/loongson_irq.c:24:11: warning: variable 'lcrtc' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
           else if (val & FB_VSYNC1_INT)
                    ^~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/loongson/loongson_irq.c:27:26: note: uninitialized use occurs here
           drm_crtc_handle_vblank(&lcrtc->base);
                                   ^~~~~
   drivers/gpu/drm/loongson/loongson_irq.c:24:7: note: remove the 'if' if its condition is always true
           else if (val & FB_VSYNC1_INT)
                ^~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/loongson/loongson_irq.c:16:29: note: initialize the variable 'lcrtc' to silence this warning
           struct loongson_crtc *lcrtc;
                                      ^
                                       = NULL
   1 warning generated.


vim +24 drivers/gpu/drm/loongson/loongson_irq.c

    11	
    12	static irqreturn_t loongson_irq_handler(int irq, void *arg)
    13	{
    14		struct drm_device *dev = (struct drm_device *) arg;
    15		struct loongson_device *ldev = to_loongson_device(dev);
    16		struct loongson_crtc *lcrtc;
    17		u32 val;
    18	
    19		val = ls7a_mm_rreg(ldev, FB_INT_REG);
    20		ls7a_mm_wreg(ldev, FB_INT_REG, val & (0xffff << 16));
    21	
    22		if (val & FB_VSYNC0_INT)
    23			lcrtc = ldev->mode_info[0].crtc;
  > 24		else if (val & FB_VSYNC1_INT)
    25			lcrtc = ldev->mode_info[1].crtc;
    26	
    27		drm_crtc_handle_vblank(&lcrtc->base);
    28	
    29		return IRQ_HANDLED;
    30	}
    31	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
