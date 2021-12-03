Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22511467334
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Dec 2021 09:19:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1545C40239;
	Fri,  3 Dec 2021 08:19:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d-_EIrUWSQkM; Fri,  3 Dec 2021 08:19:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C2C3A4013F;
	Fri,  3 Dec 2021 08:19:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 15FAD1BF41D
 for <devel@linuxdriverproject.org>; Fri,  3 Dec 2021 08:19:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 03EAC4016E
 for <devel@linuxdriverproject.org>; Fri,  3 Dec 2021 08:19:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dsLnyWnD44uU for <devel@linuxdriverproject.org>;
 Fri,  3 Dec 2021 08:19:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A99AF4013F
 for <devel@driverdev.osuosl.org>; Fri,  3 Dec 2021 08:19:10 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 143DBB825D9;
 Fri,  3 Dec 2021 08:19:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46CA3C53FD0;
 Fri,  3 Dec 2021 08:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1638519546;
 bh=JEQsdvKn7dOFlzTlau83wZYpYEdRcaF0jGaeVn1/UDI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sYEK4ohGDFpWyN3NRLlUcA2VgetuNrQ+Zu5AjSXUaX1OqveXmnjbioFYOBp+ZGg+e
 ci4BsUrSptcB/xQ5PkZJfa+44EgxOv92fUmfUO24klXnknQVoLUnaTC/OiPNG1GTFg
 osHNifiir3ra9ALzboaCWmDkVhJ5zkoIkrRJ8+ew=
Date: Fri, 3 Dec 2021 09:19:04 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: kernel test robot <lkp@intel.com>
Subject: Re: [driver-core:hid_is_usb 4/4] nios2-linux-ld:
 hid-prodikeys.c:undefined reference to `usb_hid_driver'
Message-ID: <YanS+GtWEaYNoT7z@kroah.com>
References: <202112030506.aNZw7UPL-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202112030506.aNZw7UPL-lkp@intel.com>
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
Cc: devel@driverdev.osuosl.org, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Dec 03, 2021 at 05:07:11AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git hid_is_usb
> head:   be29771805ee7d748ac02a0df3e1e10f5ead521f
> commit: be29771805ee7d748ac02a0df3e1e10f5ead521f [4/4] HID: add USB_HID dependancy on some USB HID drivers
> config: nios2-randconfig-r015-20211202 (https://download.01.org/0day-ci/archive/20211203/202112030506.aNZw7UPL-lkp@intel.com/config)
> compiler: nios2-linux-gcc (GCC) 11.2.0
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=be29771805ee7d748ac02a0df3e1e10f5ead521f
>         git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
>         git fetch --no-tags driver-core hid_is_usb
>         git checkout be29771805ee7d748ac02a0df3e1e10f5ead521f
>         # save the config file to linux build tree
>         mkdir build_dir
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=nios2 SHELL=/bin/bash
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    nios2-linux-ld: drivers/hid/hid-chicony.o: in function `ch_probe':
>    hid-chicony.c:(.text+0x4): undefined reference to `usb_hid_driver'
>    nios2-linux-ld: hid-chicony.c:(.text+0x8): undefined reference to `usb_hid_driver'
>    nios2-linux-ld: drivers/hid/hid-prodikeys.o: in function `pk_probe':
>    hid-prodikeys.c:(.text+0x1150): undefined reference to `usb_hid_driver'
> >> nios2-linux-ld: hid-prodikeys.c:(.text+0x1154): undefined reference to `usb_hid_driver'

Thanks, patch posted for this:
	https://lore.kernel.org/r/20211203081231.2856936-1-gregkh@linuxfoundation.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
