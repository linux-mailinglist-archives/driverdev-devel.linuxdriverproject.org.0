Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0B845FE07
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Nov 2021 11:06:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6AF4540556;
	Sat, 27 Nov 2021 10:06:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O0TK2rDfJPJZ; Sat, 27 Nov 2021 10:06:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 28AF04014E;
	Sat, 27 Nov 2021 10:06:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5A9EE1BF30E
 for <devel@linuxdriverproject.org>; Sat, 27 Nov 2021 10:06:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4A05F405EE
 for <devel@linuxdriverproject.org>; Sat, 27 Nov 2021 10:06:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rVaIUwhFa8po for <devel@linuxdriverproject.org>;
 Sat, 27 Nov 2021 10:06:36 +0000 (UTC)
X-Greylist: delayed 00:09:17 by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 76D3240250
 for <devel@driverdev.osuosl.org>; Sat, 27 Nov 2021 10:06:36 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id B106D60B19;
 Sat, 27 Nov 2021 09:57:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF375C53FAD;
 Sat, 27 Nov 2021 09:57:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1638007037;
 bh=fXIHGIHbGVu2TI0KZU4n6tJN+PwY480NO3XJeRE+Z3k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=r94sJfKfdZLIKIStJ3QykcaijAC3ZYMQ/ISHvRIMxSjpSZDH0OXxr531hkshUm9a0
 n475OAS4Ve12mdR9KXlq/6f3NoCAyLiMXnrpe8F7zbUTOYCmM6PMV83Kfflg6Z1QPa
 6TGt89MYdhDBsGV2GZT7R8mWC7FaLbYBes3Rbb5g=
Date: Sat, 27 Nov 2021 10:57:14 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: kernel test robot <lkp@intel.com>
Subject: Re: [driver-core:driver-core-testing 5/7]
 drivers/base/firmware_loader/test-builtin/test-builtin-firmware.bin.gen.S:5:
 Error: file not found:
 drivers/base/firmware_loader/test-builtin/test-builtin-firmware.bin
Message-ID: <YaIA+uipONE4Ep5D@kroah.com>
References: <202111271140.XMh9IcBt-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202111271140.XMh9IcBt-lkp@intel.com>
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
Cc: devel@driverdev.osuosl.org, Luis Chamberlain <mcgrof@kernel.org>,
 Borislav Petkov <bp@suse.de>, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Nov 27, 2021 at 11:24:12AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
> head:   7f67ea9c19735222f7999754f3fee922cd8f4781
> commit: 6a4e0b75cfa09e70c0aa39a03b478641cf2a7974 [5/7] test_firmware: add support for testing built-in firmware
> config: powerpc-allyesconfig (https://download.01.org/0day-ci/archive/20211127/202111271140.XMh9IcBt-lkp@intel.com/config)
> compiler: powerpc-linux-gcc (GCC) 11.2.0
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=6a4e0b75cfa09e70c0aa39a03b478641cf2a7974
>         git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
>         git fetch --no-tags driver-core driver-core-testing
>         git checkout 6a4e0b75cfa09e70c0aa39a03b478641cf2a7974
>         # save the config file to linux build tree
>         mkdir build_dir
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=powerpc SHELL=/bin/bash
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    drivers/base/firmware_loader/test-builtin/test-builtin-firmware.bin.gen.S: Assembler messages:
> >> drivers/base/firmware_loader/test-builtin/test-builtin-firmware.bin.gen.S:5: Error: file not found: drivers/base/firmware_loader/test-builtin/test-builtin-firmware.bin

Thanks for the report.  Luis, I'm dropping this series from my tree.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
