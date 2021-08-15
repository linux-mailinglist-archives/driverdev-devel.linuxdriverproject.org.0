Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F2FEB3EC6DC
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 Aug 2021 05:27:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E56FE6063B;
	Sun, 15 Aug 2021 03:27:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id afgkSZ5ACuQB; Sun, 15 Aug 2021 03:27:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D468F605E2;
	Sun, 15 Aug 2021 03:27:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3A6B91BF255
 for <devel@linuxdriverproject.org>; Sun, 15 Aug 2021 03:27:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 36CE8605E2
 for <devel@linuxdriverproject.org>; Sun, 15 Aug 2021 03:27:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id viYtU2ymY3xX for <devel@linuxdriverproject.org>;
 Sun, 15 Aug 2021 03:27:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D9297605E0
 for <devel@driverdev.osuosl.org>; Sun, 15 Aug 2021 03:27:17 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id dj8so13338425edb.2
 for <devel@driverdev.osuosl.org>; Sat, 14 Aug 2021 20:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=c1I31bPTWK5wuJTQPwHbt2ClA+rvrrEVj/Bd+LldpDs=;
 b=iB6NbZfjVgvfFozKMEq/pqlCV5NvI6JLXGWFadihUnvNz72rml/RQuaTzp1QCpzejo
 faX34k3cDsY5UOMvd+j2nBrnHK5MmHrYJS/a/QZni6LJYi8FDIMkP21/S70pxp+muM8E
 DjigKbYk8Wre1zf3TswBnZNMfODKwg6vK2Vd5yt8cgtvlQPprBH+subtTzaIbA/GBDrt
 EUh3vdR77nwSyA97HDmZOtTbjEFCQXNmPCpxP9aciuQl6kdqCKVCcJKywXW5kYX91DVc
 7jPNJfPyBiJfk99yCzlZdgwheg79NihF79hY16tSZ2OhmD7SbMSuForxxh5oHCjaERuZ
 P4og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c1I31bPTWK5wuJTQPwHbt2ClA+rvrrEVj/Bd+LldpDs=;
 b=sLUYuxHsgmdpavAURLqdkrd8U4+edvdNrDWlr0kLHfBUCpN1m9J6fstZ7k98WCrU+R
 tySkML/UpBOgx9TnUmKyOjcFDd23U319yyh7ikRYkjUODWE/6/dPZ8NxbnPVqPWLP22c
 ajI4w5uDWjCmemSKT2UlUCQEefT5BWFlsesFdRkzp9AuYPKz0rlT6GvO+zL4H+AyEhwc
 xfbgpS7YzbgmS5+LpgnoYnAmysgC1b6XwWg+Hv5A17Y48hbm7c9ZKnKNPyjuKTLhsti/
 /AH/2m9I50dMVKHL8KGcHb/jacSohLjz7k01yA13W0HDgkOBcKbpsWRO7ypc2xIj51Tb
 Nt5g==
X-Gm-Message-State: AOAM531Vr1HJhvMMngbYLaI89EBbzBt8Af/3rPVXvtcB5PA7ugOkpo8y
 vZ5sktqTTHel7A6j3ib30NHXRZk6ntzXbIbJz+8=
X-Google-Smtp-Source: ABdhPJyx81bZuaceSZKyp6p1j/NmW3aYa7p62yjWeU9ndTQMr7XIzo6nuwEIp5kaI1wbqiANIBbIIcI1yXVCTqte/9o=
X-Received: by 2002:aa7:c585:: with SMTP id g5mr12122453edq.340.1628998035789; 
 Sat, 14 Aug 2021 20:27:15 -0700 (PDT)
MIME-Version: 1.0
References: <202108141955.XlQXw3y4-lkp@intel.com> <YRfGfcwxFR0L/e77@kroah.com>
In-Reply-To: <YRfGfcwxFR0L/e77@kroah.com>
From: Barry Song <21cnbao@gmail.com>
Date: Sun, 15 Aug 2021 15:27:04 +1200
Message-ID: <CAGsJ_4y+f1emWzRH5mX-t_1=PcY-uMe70n79WRacmmVM5UCUTw@mail.gmail.com>
Subject: Re: [driver-core:driver-core-testing 28/31] WARNING: modpost:
 vmlinux.o(.text.unlikely+0x156c): Section mismatch in reference from the
 function bitmap_equal() to the variable .init.data:initcall_level_names
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
Cc: Barry Song <song.bao.hua@hisilicon.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 kbuild-all@lists.01.org, LKML <linux-kernel@vger.kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Aug 15, 2021 at 1:36 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Sat, Aug 14, 2021 at 07:03:00PM +0800, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
> > head:   3b35f2a6a625126c57475aa56b5357d8e80b404c
> > commit: 291f93ca339f5b5e6e90ad037bb8271f0f618165 [28/31] lib: test_bitmap: add bitmap_print_bitmask/list_to_buf test cases
> > config: xtensa-randconfig-r004-20210814 (attached as .config)
> > compiler: xtensa-linux-gcc (GCC) 11.2.0
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=291f93ca339f5b5e6e90ad037bb8271f0f618165
> >         git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
> >         git fetch --no-tags driver-core driver-core-testing
> >         git checkout 291f93ca339f5b5e6e90ad037bb8271f0f618165
> >         # save the attached .config to linux build tree
> >         mkdir build_dir
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=xtensa SHELL=/bin/bash
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> >
> > >> WARNING: modpost: vmlinux.o(.text.unlikely+0x156c): Section mismatch in reference from the function bitmap_equal() to the variable .init.data:initcall_level_names
> > The function bitmap_equal() references
> > the variable __initdata initcall_level_names.
> > This is often because bitmap_equal lacks a __initdata
> > annotation or the annotation of initcall_level_names is wrong.
> >
> > The below error/warnings are from parent commit:
> > << WARNING: modpost: vmlinux.o(.data+0x1a86d8): Section mismatch in reference from the variable qed_mfw_legacy_maps to the variable .init.rodata:__setup_str_initcall_blacklist
> > << WARNING: modpost: vmlinux.o(.data+0x1a87c8): Section mismatch in reference from the variable qed_mfw_ext_maps to the variable .init.rodata:__setup_str_initcall_blacklist
> > << WARNING: modpost: vmlinux.o(.data+0x1a8948): Section mismatch in reference from the variable qede_forced_speed_maps to the variable .init.rodata:__setup_str_initcall_blacklist
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> Barry, can I get a fix for this?

Hi Greg,
As I replied to Andy, this warning has nothing to do with my commit as my
commit doesn't call the involved functions at all.

It has been there for more than one year. but i still send a patch for
this issue
over here:
https://lore.kernel.org/lkml/20210815032132.14530-1-21cnbao@gmail.com/T/#u

Note this patch is not fixing the latest commits. It is a general
patch for bitmap.

>
> thanks,
>
> greg k-h

Thanks
Barry
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
