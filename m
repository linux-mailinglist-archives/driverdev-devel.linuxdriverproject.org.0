Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F29F45F93
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 15:52:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 78F9187CEB;
	Fri, 14 Jun 2019 13:52:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z5PJQKs7dh6l; Fri, 14 Jun 2019 13:52:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CCACE87D15;
	Fri, 14 Jun 2019 13:52:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2BC6D1BF3A9
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 13:52:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2895A869D1
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 13:52:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wcLMdi1NEBn0 for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 13:52:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9FD87869C9
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 13:52:19 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ECE6520850;
 Fri, 14 Jun 2019 13:52:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560520339;
 bh=SYdtZLzl135IzpzvkdguX3WL4wXTnqaoxyJv0fmUrd8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MsI6FtGprBdNX0XD2prbKr/L2loedCy9gNG+hamHkMH1vHaK5mF91N+S3l0rsY49I
 i6aJo70AZr6eSmCqfAJPKeG97a8mtoc7GIw/XmR7Hm/ulAr9ciig6e1FGk5DroRu/l
 +BLfXEBY9ka7icX+QACTlMRHpuGFxto5eN8bldaM=
Date: Fri, 14 Jun 2019 15:52:16 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: kbuild test robot <lkp@intel.com>
Subject: Re: [driver-core:debugfs_cleanup 133/139]
 drivers/crypto/nx/nx_debugfs.c:51:19: error: void value not ignored as it
 ought to be
Message-ID: <20190614135216.GA6089@kroah.com>
References: <201906142053.LbhiZdCO%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201906142053.LbhiZdCO%lkp@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: devel@driverdev.osuosl.org, kbuild-all@01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jun 14, 2019 at 08:18:57PM +0800, kbuild test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
> head:   27d0b4c0cd182361a817b61e9329ffcfea4edca7
> commit: 1bb8a20835fa47c2d4507b092e0f8b9423e16d18 [133/139] debugfs: remove return value of debugfs_create_u32()
> config: powerpc-defconfig (attached as .config)
> compiler: powerpc64-linux-gcc (GCC) 7.4.0
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 1bb8a20835fa47c2d4507b092e0f8b9423e16d18
>         # save the attached .config to linux build tree
>         GCC_VERSION=7.4.0 make.cross ARCH=powerpc 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    drivers/crypto/nx/nx_debugfs.c: In function 'nx_debugfs_init':
> >> drivers/crypto/nx/nx_debugfs.c:51:19: error: void value not ignored as it ought to be
>      dfs->dfs_aes_ops =
>                       ^
>    drivers/crypto/nx/nx_debugfs.c:55:22: error: void value not ignored as it ought to be
>      dfs->dfs_sha256_ops =
>                          ^
>    drivers/crypto/nx/nx_debugfs.c:60:22: error: void value not ignored as it ought to be
>      dfs->dfs_sha512_ops =
>                          ^
>    drivers/crypto/nx/nx_debugfs.c:80:18: error: void value not ignored as it ought to be
>      dfs->dfs_errors =
>                      ^
>    drivers/crypto/nx/nx_debugfs.c:84:22: error: void value not ignored as it ought to be
>      dfs->dfs_last_error =
>                          ^
>    drivers/crypto/nx/nx_debugfs.c:89:26: error: void value not ignored as it ought to be
>      dfs->dfs_last_error_pid =
>                              ^

Ugh, grep didn't catch these, now fixed in my local tree.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
