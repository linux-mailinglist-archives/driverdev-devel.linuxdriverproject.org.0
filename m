Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB13E55AA02
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jun 2022 14:39:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CF51D40AF5;
	Sat, 25 Jun 2022 12:39:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF51D40AF5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qRjE9Nl9XAG3; Sat, 25 Jun 2022 12:39:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5B9A04039D;
	Sat, 25 Jun 2022 12:39:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B9A04039D
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EB5E51BF3C8
 for <devel@linuxdriverproject.org>; Sat, 25 Jun 2022 12:39:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C64F1830C0
 for <devel@linuxdriverproject.org>; Sat, 25 Jun 2022 12:39:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C64F1830C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IcnYEvxivilF for <devel@linuxdriverproject.org>;
 Sat, 25 Jun 2022 12:39:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B397830A7
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6B397830A7
 for <devel@linuxdriverproject.org>; Sat, 25 Jun 2022 12:39:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10388"; a="281916105"
X-IronPort-AV: E=Sophos;i="5.92,222,1650956400"; d="scan'208";a="281916105"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2022 05:39:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,222,1650956400"; d="scan'208";a="616260237"
Received: from lkp-server01.sh.intel.com (HELO 68b931ab7ac1) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 25 Jun 2022 05:39:07 -0700
Received: from kbuild by 68b931ab7ac1 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o5546-0005kN-Jo;
 Sat, 25 Jun 2022 12:39:06 +0000
Date: Sat, 25 Jun 2022 20:39:05 +0800
From: kernel test robot <lkp@intel.com>
To: Chenyang Li <lichenyang@loongson.cn>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Dan Carpenter <error27@gmail.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 devel@linuxdriverproject.org
Subject: Re: [PATCH v7 2/4] drm/loongson: Add GPIO and I2C driver for
 loongson drm.
Message-ID: <202206252021.a42lokOo-lkp@intel.com>
References: <20220625090715.3663-2-lichenyang@loongson.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220625090715.3663-2-lichenyang@loongson.cn>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656160751; x=1687696751;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=gUVh1otMnfm1JZsH4Bw5ldTSUYJyZgjBw+O/iuC0J74=;
 b=FdJ/Cm5vl3PY1n18Ed+WVzy++iTiEp3FOChTOCfVJH4SWenzAN7zYIeA
 sGocqaPcusld1jjVs86/c3opRzfiDRJi4tH12TPLnYdPAhP0jQlNfhwOY
 GbqbksUX3oEeX0LDoI1iBSSW3UkTkMnPtIRCuXq7a2De3TsK2rl4RGXfM
 b8tl6AmKmyCYECE+N7Tz6muZWALy2R+uk1vY3CoP1hTFYe717haEc9LGV
 W1ZhS/3rpNPpo0Yfcth/U3pD+y/tmcRjTrJ4Bw+kD7rmk5lIGw2G/diqZ
 LON3QNifx1ulL/HODzJWUKHQ3xNqtQyKndBkNwOdpjSpnhDedXQpZ/q+i
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FdJ/Cm5v
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
Cc: Sam Ravnborg <sam@ravnborg.org>, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org, Yi Li <liyi@loongson.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Chenyang,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-misc/drm-misc-next]
[also build test WARNING on linus/master v5.19-rc3 next-20220624]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Chenyang-Li/drm-loongson-Add-DRM-Driver-for-Loongson-7A1000-bridge-chip/20220625-171037
base:   git://anongit.freedesktop.org/drm/drm-misc drm-misc-next
config: powerpc-allmodconfig
compiler: powerpc-linux-gcc (GCC) 11.3.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/3af56da81352153b38e05c082b8f2bf8c9fc0320
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Chenyang-Li/drm-loongson-Add-DRM-Driver-for-Loongson-7A1000-bridge-chip/20220625-171037
        git checkout 3af56da81352153b38e05c082b8f2bf8c9fc0320
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.3.0 make.cross W=1 O=build_dir ARCH=powerpc SHELL=/bin/bash drivers/gpu/drm/loongson/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/loongson/loongson_encoder.c:10:27: warning: no previous prototype for 'loongson_bridge_detect' [-Wmissing-prototypes]
      10 | enum drm_connector_status loongson_bridge_detect(struct drm_bridge *bridge)
         |                           ^~~~~~~~~~~~~~~~~~~~~~


vim +/loongson_bridge_detect +10 drivers/gpu/drm/loongson/loongson_encoder.c

     9	
  > 10	enum drm_connector_status loongson_bridge_detect(struct drm_bridge *bridge)
    11	{
    12		unsigned char start = 0x0;
    13		struct i2c_msg msgs = {
    14			.addr = DDC_ADDR,
    15			.flags = 0,
    16			.len = 1,
    17			.buf = &start,
    18		};
    19	
    20		if (i2c_transfer(bridge->ddc, &msgs, 1) != 1)
    21			return connector_status_disconnected;
    22		else
    23			return connector_status_connected;
    24	}
    25	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
