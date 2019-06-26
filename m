Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA6A55D52
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 03:22:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 13642214D2;
	Wed, 26 Jun 2019 01:22:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A4PbM28kHTER; Wed, 26 Jun 2019 01:22:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3FF0320770;
	Wed, 26 Jun 2019 01:22:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7CDF41BF2C1
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 01:22:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7327485FAE
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 01:22:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y2UAL6uINmNi for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 01:22:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3EA7985FA5
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 01:22:42 +0000 (UTC)
Received: from localhost (li1825-44.members.linode.com [172.104.248.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ABB222133F;
 Wed, 26 Jun 2019 01:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561512162;
 bh=lQ3QirntIBBIxblQl/eiiTbgEgPdp+9sfbMAibfYtPw=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=EQnz0cduhQGE1xz/XKj70Os784Gw30aRbhS6GDZ55WMVHJHu50+2gAVcnZ5MaWA+F
 PIHAVDRrDhudJ3OTH+dtg8vgtb8GaKGhbRzhxg2B6t4SvR9zW1SECSFGhunYeHnVHs
 N/iqJXClJy9x5e279CKCFKPTrOg7rYpO80L8ZvhY=
Date: Wed, 26 Jun 2019 09:22:18 +0800
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: kbuild test robot <lkp@intel.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 devel@driverdev.osuosl.org, kbuild-all@01.org
Subject: Re: [driver-core:driver-core-testing 84/85]
 drivers/s390/cio/device.c:1660:9: warning: assignment discards 'const'
 qualifier from pointer target type
Message-ID: <20190626012218.GB24105@kroah.com>
References: <201906252228.SQ5Vvv4y%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201906252228.SQ5Vvv4y%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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

On Tue, Jun 25, 2019 at 10:28:55PM +0800, kbuild test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
> head:   65b66682344a15ba2069d4dd8d0cc39cc3aed7e9
> commit: 92ce7e83b4e5c86687d748ba53cb755acdce1256 [84/85] driver_find_device: Unify the match function with class_find_device()
> config: s390-debug_defconfig (attached as .config)
> compiler: s390-linux-gcc (GCC) 7.4.0
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 92ce7e83b4e5c86687d748ba53cb755acdce1256
>         # save the attached .config to linux build tree
>         GCC_VERSION=7.4.0 make.cross ARCH=s390 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    drivers/s390/cio/device.c: In function '__ccwdev_check_busid':
> >> drivers/s390/cio/device.c:1660:9: warning: assignment discards 'const' qualifier from pointer target type [-Wdiscarded-qualifiers]
>      bus_id = id;
>             ^
> --
>    drivers/s390/cio/ccwgroup.c: In function '__ccwgroupdev_check_busid':
> >> drivers/s390/cio/ccwgroup.c:613:17: warning: initialization discards 'const' qualifier from pointer target type [-Wdiscarded-qualifiers]
>      char *bus_id = id;
>                     ^~

Suzuki, can you send me a fix for this please?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
