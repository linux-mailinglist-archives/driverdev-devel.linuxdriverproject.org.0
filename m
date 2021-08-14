Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD4E3EC2E6
	for <lists+driverdev-devel@lfdr.de>; Sat, 14 Aug 2021 15:35:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF56A4039E;
	Sat, 14 Aug 2021 13:35:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AstIkY7SRaUL; Sat, 14 Aug 2021 13:35:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 404AC40379;
	Sat, 14 Aug 2021 13:35:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C6E6C1BF599
 for <devel@linuxdriverproject.org>; Sat, 14 Aug 2021 13:35:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B43944020A
 for <devel@linuxdriverproject.org>; Sat, 14 Aug 2021 13:35:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zEErhKId12x2 for <devel@linuxdriverproject.org>;
 Sat, 14 Aug 2021 13:34:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 679C04022E
 for <devel@driverdev.osuosl.org>; Sat, 14 Aug 2021 13:34:56 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8AB5A60F48;
 Sat, 14 Aug 2021 13:34:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1628948096;
 bh=jOQM1SD+2TUKTTAy9huYmnQvZ/FhXnx5hG/dApI9o7M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Xj4zMqLKYBiaTB1vhVN2p6QSjyQW/CqUp5yuIRLgBFotuqXODnVo/6qbcbkoRXCo6
 1AFb/bbmGyl+OCKKe7uWogWkdSCTV7J0X2/jFXPZa8uOvE/pf114LAjyVTzpnBRQEw
 WeMNO5Q0IMql+1f6RLUWmo4tgOQ24b2Et37WrXII=
Date: Sat, 14 Aug 2021 15:34:53 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: kernel test robot <lkp@intel.com>
Subject: Re: [driver-core:driver-core-testing 28/31] WARNING: modpost:
 vmlinux.o(.text.unlikely+0x156c): Section mismatch in reference from the
 function bitmap_equal() to the variable .init.data:initcall_level_names
Message-ID: <YRfGfcwxFR0L/e77@kroah.com>
References: <202108141955.XlQXw3y4-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202108141955.XlQXw3y4-lkp@intel.com>
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
Cc: Barry Song <song.bao.hua@hisilicon.com>, devel@driverdev.osuosl.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Aug 14, 2021 at 07:03:00PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
> head:   3b35f2a6a625126c57475aa56b5357d8e80b404c
> commit: 291f93ca339f5b5e6e90ad037bb8271f0f618165 [28/31] lib: test_bitmap: add bitmap_print_bitmask/list_to_buf test cases
> config: xtensa-randconfig-r004-20210814 (attached as .config)
> compiler: xtensa-linux-gcc (GCC) 11.2.0
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=291f93ca339f5b5e6e90ad037bb8271f0f618165
>         git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
>         git fetch --no-tags driver-core driver-core-testing
>         git checkout 291f93ca339f5b5e6e90ad037bb8271f0f618165
>         # save the attached .config to linux build tree
>         mkdir build_dir
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=xtensa SHELL=/bin/bash
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
> >> WARNING: modpost: vmlinux.o(.text.unlikely+0x156c): Section mismatch in reference from the function bitmap_equal() to the variable .init.data:initcall_level_names
> The function bitmap_equal() references
> the variable __initdata initcall_level_names.
> This is often because bitmap_equal lacks a __initdata
> annotation or the annotation of initcall_level_names is wrong.
> 
> The below error/warnings are from parent commit:
> << WARNING: modpost: vmlinux.o(.data+0x1a86d8): Section mismatch in reference from the variable qed_mfw_legacy_maps to the variable .init.rodata:__setup_str_initcall_blacklist
> << WARNING: modpost: vmlinux.o(.data+0x1a87c8): Section mismatch in reference from the variable qed_mfw_ext_maps to the variable .init.rodata:__setup_str_initcall_blacklist
> << WARNING: modpost: vmlinux.o(.data+0x1a8948): Section mismatch in reference from the variable qede_forced_speed_maps to the variable .init.rodata:__setup_str_initcall_blacklist
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

Barry, can I get a fix for this?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
