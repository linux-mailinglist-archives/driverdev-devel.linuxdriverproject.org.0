Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8183F585A2F
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 Jul 2022 13:08:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D245160759;
	Sat, 30 Jul 2022 11:08:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D245160759
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MtodCUaGvN2Y; Sat, 30 Jul 2022 11:08:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6BF1460746;
	Sat, 30 Jul 2022 11:08:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6BF1460746
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A624A1BF392
 for <devel@linuxdriverproject.org>; Sat, 30 Jul 2022 11:08:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8052181AD1
 for <devel@linuxdriverproject.org>; Sat, 30 Jul 2022 11:08:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8052181AD1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G5EDFIzD7hcO for <devel@linuxdriverproject.org>;
 Sat, 30 Jul 2022 11:08:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 10E5E81801
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 10E5E81801
 for <devel@driverdev.osuosl.org>; Sat, 30 Jul 2022 11:08:29 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 711D9B80F97;
 Sat, 30 Jul 2022 11:08:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB801C433C1;
 Sat, 30 Jul 2022 11:08:25 +0000 (UTC)
Date: Sat, 30 Jul 2022 13:08:23 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: kernel test robot <lkp@intel.com>,
 Phillip Potter <phil@philpotter.co.uk>, devel@driverdev.osuosl.org,
 llvm@lists.linux.dev, kbuild-all@lists.01.org, linux-kernel@vger.kernel.org
Subject: Re: [staging:staging-testing 54/54]
 drivers/staging/r8188eu/core/rtw_pwrctrl.c:400:6: warning: variable 'ret' is
 used uninitialized whenever 'if' condition is false
Message-ID: <YuURJ8ecN1cN56v/@kroah.com>
References: <202207301623.BfMKLfhv-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202207301623.BfMKLfhv-lkp@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1659179306;
 bh=RFCjEIXYtlsw0dHGNFpOiQWzJCSmz+sziuYk25gdzf8=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=zlf3jV1iEv/KZ41B6aCeByR1ALRNOGb2PcKLD+qouI5CbbsBcYxkFtxYPoSop0RYj
 DmsrIs8SG0K6TCs7TIzNRXJ14P/EZDhFLk80exNE2Illh7ltx6QYld0N7D6ESw0obl
 WrLRL5hN3/cewfLL5A9g+ltHgfUcNaXZ/r+nqsbU=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
 header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg
 header.b=zlf3jV1i
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jul 30, 2022 at 04:14:57PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
> head:   f3a76018dd55d8ddcd28cb47049f46ae5c0ce557
> commit: f3a76018dd55d8ddcd28cb47049f46ae5c0ce557 [54/54] staging: r8188eu: remove initializer from ret in rtw_pwr_wakeup
> config: hexagon-randconfig-r015-20220729 (https://download.01.org/0day-ci/archive/20220730/202207301623.BfMKLfhv-lkp@intel.com/config)
> compiler: clang version 16.0.0 (https://github.com/llvm/llvm-project 52cd00cabf479aa7eb6dbb063b7ba41ea57bce9e)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/commit/?id=f3a76018dd55d8ddcd28cb47049f46ae5c0ce557
>         git remote add staging https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
>         git fetch --no-tags staging staging-testing
>         git checkout f3a76018dd55d8ddcd28cb47049f46ae5c0ce557
>         # save the config file
>         mkdir build_dir && cp config build_dir/.config
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=hexagon SHELL=/bin/bash drivers/staging/r8188eu/
> 
> If you fix the issue, kindly add following tag where applicable
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/staging/r8188eu/core/rtw_pwrctrl.c:400:6: warning: variable 'ret' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>            if (padapter->bDriverStopped || !padapter->bup || !padapter->hw_init_completed) {
>                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/staging/r8188eu/core/rtw_pwrctrl.c:409:9: note: uninitialized use occurs here
>            return ret;
>                   ^~~
>    drivers/staging/r8188eu/core/rtw_pwrctrl.c:400:2: note: remove the 'if' if its condition is always true
>            if (padapter->bDriverStopped || !padapter->bup || !padapter->hw_init_completed) {
>            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/staging/r8188eu/core/rtw_pwrctrl.c:384:9: note: initialize the variable 'ret' to silence this warning
>            int ret;
>                   ^
>                    = 0
>    1 warning generated.

Phillip, can you send a follow-up patch for this issue?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
