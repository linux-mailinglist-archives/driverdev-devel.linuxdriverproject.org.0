Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A04B558591B
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 Jul 2022 10:16:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE92C414C7;
	Sat, 30 Jul 2022 08:16:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DE92C414C7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1xd6axpsvkj3; Sat, 30 Jul 2022 08:16:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA58A415DC;
	Sat, 30 Jul 2022 08:16:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA58A415DC
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 88A5B1BF4DD
 for <devel@linuxdriverproject.org>; Sat, 30 Jul 2022 08:16:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 63885607AA
 for <devel@linuxdriverproject.org>; Sat, 30 Jul 2022 08:16:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63885607AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aSeUGc-WIdnJ for <devel@linuxdriverproject.org>;
 Sat, 30 Jul 2022 08:16:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2573360672
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2573360672
 for <devel@driverdev.osuosl.org>; Sat, 30 Jul 2022 08:15:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10423"; a="271941963"
X-IronPort-AV: E=Sophos;i="5.93,203,1654585200"; d="scan'208";a="271941963"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2022 01:15:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,203,1654585200"; d="scan'208";a="727964734"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 30 Jul 2022 01:15:57 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oHhdc-000CdU-1v;
 Sat, 30 Jul 2022 08:15:56 +0000
Date: Sat, 30 Jul 2022 16:14:57 +0800
From: kernel test robot <lkp@intel.com>
To: Phillip Potter <phil@philpotter.co.uk>
Subject: [staging:staging-testing 54/54]
 drivers/staging/r8188eu/core/rtw_pwrctrl.c:400:6: warning: variable 'ret' is
 used uninitialized whenever 'if' condition is false
Message-ID: <202207301623.BfMKLfhv-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659168960; x=1690704960;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=oMLBLUEV0c73UmvX+x0ng5G4mX/0i7sf3gVdg+mllL8=;
 b=n+X4EAyP8YyDYeGHrDM5rj2SQ4Y1nBAzy/Hh6gB9Ncbv7T97LJzek+g1
 /5bWkGPfbh5ns28lJGNBpldEvn6YV/M8KXQvIhzx4WVrZoupq0zsyykHk
 Rkczs7h3F83VQHLPqMFveoURWjJ9xH9Bl4gR4MczSkQb0XQTScOyQo4KU
 5RWdc9udACEeofwHGFyExtoux3u1vbUcRvmIDz7VgV93+SQ3SljnupsNP
 WBQRrK8uckhmDHQLbL87t835LBizS1B75g8hQdEDlEBzkB9pPMFA1RWza
 vuVVOxbtuKei5NmRYGBBaOmLVlDbkg5YJr+VOEShKwIddXh8WXQ64300/
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n+X4EAyP
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
 llvm@lists.linux.dev, kbuild-all@lists.01.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
head:   f3a76018dd55d8ddcd28cb47049f46ae5c0ce557
commit: f3a76018dd55d8ddcd28cb47049f46ae5c0ce557 [54/54] staging: r8188eu: remove initializer from ret in rtw_pwr_wakeup
config: hexagon-randconfig-r015-20220729 (https://download.01.org/0day-ci/archive/20220730/202207301623.BfMKLfhv-lkp@intel.com/config)
compiler: clang version 16.0.0 (https://github.com/llvm/llvm-project 52cd00cabf479aa7eb6dbb063b7ba41ea57bce9e)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/commit/?id=f3a76018dd55d8ddcd28cb47049f46ae5c0ce557
        git remote add staging https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
        git fetch --no-tags staging staging-testing
        git checkout f3a76018dd55d8ddcd28cb47049f46ae5c0ce557
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=hexagon SHELL=/bin/bash drivers/staging/r8188eu/

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/staging/r8188eu/core/rtw_pwrctrl.c:400:6: warning: variable 'ret' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
           if (padapter->bDriverStopped || !padapter->bup || !padapter->hw_init_completed) {
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/staging/r8188eu/core/rtw_pwrctrl.c:409:9: note: uninitialized use occurs here
           return ret;
                  ^~~
   drivers/staging/r8188eu/core/rtw_pwrctrl.c:400:2: note: remove the 'if' if its condition is always true
           if (padapter->bDriverStopped || !padapter->bup || !padapter->hw_init_completed) {
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/staging/r8188eu/core/rtw_pwrctrl.c:384:9: note: initialize the variable 'ret' to silence this warning
           int ret;
                  ^
                   = 0
   1 warning generated.


vim +400 drivers/staging/r8188eu/core/rtw_pwrctrl.c

15865124feed88 Phillip Potter  2021-07-28  376  
57c27d38ff9379 Michael Straube 2022-04-03  377  /* Wake the NIC up from: 1)IPS 2)USB autosuspend */
719cf66c8a2b06 Michael Straube 2022-04-03  378  int rtw_pwr_wakeup(struct adapter *padapter)
15865124feed88 Phillip Potter  2021-07-28  379  {
15865124feed88 Phillip Potter  2021-07-28  380  	struct pwrctrl_priv *pwrpriv = &padapter->pwrctrlpriv;
15865124feed88 Phillip Potter  2021-07-28  381  	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
3b9d0da6aa08a3 Martin Kaiser   2022-04-13  382  	unsigned long timeout = jiffies + msecs_to_jiffies(3000);
1dd0ac70494c1d Martin Kaiser   2022-04-13  383  	unsigned long deny_time;
f3a76018dd55d8 Phillip Potter  2022-07-29  384  	int ret;
15865124feed88 Phillip Potter  2021-07-28  385  
3b9d0da6aa08a3 Martin Kaiser   2022-04-13  386  	while (pwrpriv->ps_processing && time_before(jiffies, timeout))
d21edee5a4276b Larry Finger    2021-08-05  387  		msleep(10);
15865124feed88 Phillip Potter  2021-07-28  388  
15865124feed88 Phillip Potter  2021-07-28  389  	/* I think this should be check in IPS, LPS, autosuspend functions... */
15865124feed88 Phillip Potter  2021-07-28  390  	if (check_fwstate(pmlmepriv, _FW_LINKED)) {
2b5002e2cc1483 Phillip Potter  2022-07-25  391  		ret = 0;
15865124feed88 Phillip Potter  2021-07-28  392  		goto exit;
15865124feed88 Phillip Potter  2021-07-28  393  	}
294e69c69c4d4a Martin Kaiser   2022-04-13  394  
294e69c69c4d4a Martin Kaiser   2022-04-13  395  	if (pwrpriv->rf_pwrstate == rf_off && ips_leave(padapter) == _FAIL) {
2b5002e2cc1483 Phillip Potter  2022-07-25  396  		ret = -ENOMEM;
15865124feed88 Phillip Potter  2021-07-28  397  		goto exit;
15865124feed88 Phillip Potter  2021-07-28  398  	}
15865124feed88 Phillip Potter  2021-07-28  399  
a9f136fa7e67fd Martin Kaiser   2022-04-13 @400  	if (padapter->bDriverStopped || !padapter->bup || !padapter->hw_init_completed) {
2b5002e2cc1483 Phillip Potter  2022-07-25  401  		ret = -EBUSY;
15865124feed88 Phillip Potter  2021-07-28  402  		goto exit;
15865124feed88 Phillip Potter  2021-07-28  403  	}
15865124feed88 Phillip Potter  2021-07-28  404  
15865124feed88 Phillip Potter  2021-07-28  405  exit:
1dd0ac70494c1d Martin Kaiser   2022-04-13  406  	deny_time = jiffies + msecs_to_jiffies(RTW_PWR_STATE_CHK_INTERVAL);
1dd0ac70494c1d Martin Kaiser   2022-04-13  407  	if (time_before(pwrpriv->ips_deny_time, deny_time))
1dd0ac70494c1d Martin Kaiser   2022-04-13  408  		pwrpriv->ips_deny_time = deny_time;
15865124feed88 Phillip Potter  2021-07-28  409  	return ret;
15865124feed88 Phillip Potter  2021-07-28  410  }
15865124feed88 Phillip Potter  2021-07-28  411  

:::::: The code at line 400 was first introduced by commit
:::::: a9f136fa7e67fdef97ad6c4be5f04f60ad78b5f3 staging: r8188eu: make return values consistent

:::::: TO: Martin Kaiser <martin@kaiser.cx>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
