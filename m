Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A333EC40C
	for <lists+driverdev-devel@lfdr.de>; Sat, 14 Aug 2021 19:16:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 63BFE83A70;
	Sat, 14 Aug 2021 17:16:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MuJ0I9yJXFfS; Sat, 14 Aug 2021 17:16:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3800180E4F;
	Sat, 14 Aug 2021 17:16:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EC4251BF36A
 for <devel@linuxdriverproject.org>; Sat, 14 Aug 2021 17:16:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DC13260775
 for <devel@linuxdriverproject.org>; Sat, 14 Aug 2021 17:16:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NUu5SsY02EGx for <devel@linuxdriverproject.org>;
 Sat, 14 Aug 2021 17:15:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CCE6060748
 for <devel@driverdev.osuosl.org>; Sat, 14 Aug 2021 17:15:58 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id
 u13-20020a17090abb0db0290177e1d9b3f7so25605308pjr.1
 for <devel@driverdev.osuosl.org>; Sat, 14 Aug 2021 10:15:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X89ku5IDylZ1zwbfbGJrUBVg0+UG1yM+AcWfc0AL66w=;
 b=gBCrblHim1HHYufy0bB0YT8bU/AcwW0zmJYoIgHaFn2hDS5DYT0RV7fTzwF+1ij3WP
 BU7mnp58yA6B0PAlbCwUH1bcI0RdNUGVpHsw0kSc3YqEPFQWttK/hm2JQClb8QUnEBuK
 Mr3ITxtSUiQwxZZMfZnKDF1btrS+hT31QdKgPyUwVk0H/5G+IblAcKR1feOtpxYlwJjs
 EEbNgIL4pkN9LDxwz2HyhZdD4U3fsN8BfdNhabJaLlM0seCblplq0G9e9m1GAtjZpbN9
 OjPnOkokHN28HZaX+9+Qs6E/9l0nhOdFpCtnwChoyE0n/7OESW/p2gHVOvf02v7nvnYM
 WqGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X89ku5IDylZ1zwbfbGJrUBVg0+UG1yM+AcWfc0AL66w=;
 b=fmik3u7KT+6ohx0iqIJ42zk0/9t6bbr/H7zsZmGbZ8uNrDlIpHV/Nemcw+lDPF6ulG
 PWesl/Og2QScFxDWIFSM4Zwrg9uAF8zjJ2jlHyB5o8Z4EISXRrt6LyiY0Kk5fCvzPjYg
 86eQxO9pEOirkgofMxmXzNiKPdhDu8H+Gl71eT2higMxWUCuUgOtC2CMKtC2u7pAZzcU
 UT6anJ5jD24vMYVBa2XgjynLTrByxUoynvGrF1EJgUXi2Cam/TlHXSEv98N0TKLZTwv7
 lZIW13X7bvVxSdyyxfbp+aU17QWShKVYueK9bAPZ0aO+5eX8dAT1qQVhDRwXDY0PZyrA
 dwHA==
X-Gm-Message-State: AOAM533YYtgJRCKrU2vAr2hYz/bIKlKyenFU1CL7ueC7FCfHIc6UpaUu
 PFkfThfWwFyn0GrWHO5Gsv9YSVKWYIkx8Bh7lJE=
X-Google-Smtp-Source: ABdhPJyEtMF43bku7aItmMVxzEbSZMzxMtKXnE+6NZSsH1ZTVrR0LI9cGIWC+nmqtqsyvUJr8ACi2I95deLsTn9Z8RY=
X-Received: by 2002:aa7:800b:0:b029:330:455f:57a8 with SMTP id
 j11-20020aa7800b0000b0290330455f57a8mr7896925pfi.7.1628961358161; Sat, 14 Aug
 2021 10:15:58 -0700 (PDT)
MIME-Version: 1.0
References: <202108141955.XlQXw3y4-lkp@intel.com> <YRfGfcwxFR0L/e77@kroah.com>
In-Reply-To: <YRfGfcwxFR0L/e77@kroah.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 14 Aug 2021 20:15:21 +0300
Message-ID: <CAHp75VdzjsqnwprykT8phofnkUit8087Tz87YuhaZ8dAuExaqQ@mail.gmail.com>
Subject: Re: [driver-core:driver-core-testing 28/31] WARNING: modpost:
 vmlinux.o(.text.unlikely+0x156c): Section mismatch in reference from the
 function bitmap_equal() to the variable .init.data:initcall_level_names
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Max Filippov <jcmvbkbc@gmail.com>
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
 kbuild-all@lists.01.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Aug 14, 2021 at 4:36 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
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

> Barry, can I get a fix for this?

Max already pointed out, but I guess you were not in Cc list, that
it's a GCC bug in his opinion, but GCC people don't ack it.
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=92938

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
