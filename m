Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 936EB692F88
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Feb 2023 09:47:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D607E612E3;
	Sat, 11 Feb 2023 08:47:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D607E612E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pCtqN3LkvAaP; Sat, 11 Feb 2023 08:47:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 10BDF612E7;
	Sat, 11 Feb 2023 08:47:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 10BDF612E7
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5CAFA1BF5AE
 for <devel@linuxdriverproject.org>; Sat, 11 Feb 2023 08:47:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 33AE68220B
 for <devel@linuxdriverproject.org>; Sat, 11 Feb 2023 08:47:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 33AE68220B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9VImklNWltDX for <devel@linuxdriverproject.org>;
 Sat, 11 Feb 2023 08:47:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C920F82214
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C920F82214
 for <devel@driverdev.osuosl.org>; Sat, 11 Feb 2023 08:47:06 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id C5FBBB826FA;
 Sat, 11 Feb 2023 08:47:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A450C433D2;
 Sat, 11 Feb 2023 08:47:01 +0000 (UTC)
Date: Sat, 11 Feb 2023 09:46:59 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: kernel test robot <lkp@intel.com>
Subject: Re: [driver-core:driver-core-testing 77/77]
 drivers/base/base.h:221:63: error: void function 'devtmpfs_delete_node'
 should not return a value
Message-ID: <Y+dWA9pfCuUZC4XB@kroah.com>
References: <202302102345.UQfDskhW-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202302102345.UQfDskhW-lkp@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1676105222;
 bh=+FMf7SM35Vwebc9PQX5xFXzoWFizobalos00oIOLcJ8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rKNHlTxPc6xRGVpn33VmiCweDhn1rD1lKdNROTLwdoIzefnJUF+6gxbzBxJKreuf1
 IKRiiwZyHiCAP70wgouCtCFd/D+dC8Dpc3sBpAtQxxyWKMIqRaqigAcUdjYGrsirH+
 +aSD7DqZNNyvk6r3zgHAy8qMRevj7mCVN/q9LYLo=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
 header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg
 header.b=rKNHlTxP
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
Cc: Longlong Xia <xialonglong1@huawei.com>, devel@driverdev.osuosl.org,
 llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 10, 2023 at 11:38:45PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
> head:   ecfd9f08fe2ef7616477c089dce1b0f05dcee13c
> commit: ecfd9f08fe2ef7616477c089dce1b0f05dcee13c [77/77] devtmpfs: remove return value of devtmpfs_delete_node()
> config: arm-randconfig-r006-20230210 (https://download.01.org/0day-ci/archive/20230210/202302102345.UQfDskhW-lkp@intel.com/config)
> compiler: clang version 17.0.0 (https://github.com/llvm/llvm-project db0e6591612b53910a1b366863348bdb9d7d2fb1)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=ecfd9f08fe2ef7616477c089dce1b0f05dcee13c
>         git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
>         git fetch --no-tags driver-core driver-core-testing
>         git checkout ecfd9f08fe2ef7616477c089dce1b0f05dcee13c
>         # save the config file
>         mkdir build_dir && cp config build_dir/.config
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm olddefconfig
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm SHELL=/bin/bash drivers/
> 
> If you fix the issue, kindly add following tag where applicable
> | Reported-by: kernel test robot <lkp@intel.com>
> | Link: https://lore.kernel.org/oe-kbuild-all/202302102345.UQfDskhW-lkp@intel.com/
> 
> All errors (new ones prefixed by >>):
> 
>    In file included from drivers/base/core.c:35:
> >> drivers/base/base.h:221:63: error: void function 'devtmpfs_delete_node' should not return a value [-Wreturn-type]
>    static inline void devtmpfs_delete_node(struct device *dev) { return 0; }
>                                                                  ^      ~
>    1 error generated.

I've fixed this up by hand by modifying the original commit and pushing
out an update.  No need for a separate patch.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
