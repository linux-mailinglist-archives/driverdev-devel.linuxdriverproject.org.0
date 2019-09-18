Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E652B6F4B
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Sep 2019 00:17:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 17E028695B;
	Wed, 18 Sep 2019 22:17:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y0e1xwlW3hRY; Wed, 18 Sep 2019 22:17:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4009886970;
	Wed, 18 Sep 2019 22:17:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 48ACC1BF34F
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 22:17:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 439FE860C2
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 22:17:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IKwE2CHRTFIr for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 22:17:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ua1-f68.google.com (mail-ua1-f68.google.com
 [209.85.222.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A1C96860B2
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 22:17:21 +0000 (UTC)
Received: by mail-ua1-f68.google.com with SMTP id r19so409084uap.9
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 15:17:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fvyK6cOQSVAg+pYnospWHicPx4sekfGX7Yi8JoZJ894=;
 b=RQqY6qxStYD6GrM+3jvoM7UqPq/BBlPGOnsRl8/61T8a4RBMc166iouDxrMerp5XJq
 yp9im9pXXkI0a5IeS1reX/+bPGNUHz5jyYNW1ORYOhKcvAd6kb2oXTWCpOPREuUlqzr4
 Gds9kNT0NxZ4U9njJUGxd4U7HFL1yxOWD9nbkSpJKNk5GIyjVVN2FQR81CrRh9lzDroH
 aPPA+0XrG4kCcNZ+cgwl3HFVlZZW28ItUHhbSbDUP3XD58dBmuKo07uctb1NhwQdyzlR
 15egksXX+lF/OLrytz2U/Dkkgrj7NVYhHxdgfFo6nK+eCMLpMvT5I2eMpXxzNqzocIOP
 Pvcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fvyK6cOQSVAg+pYnospWHicPx4sekfGX7Yi8JoZJ894=;
 b=p0pkM8iJChIgOOequaGzkXnkFdxGYm49WKWaTPnS7za14QOL4mDScaXXx/qdKK9ph1
 YPyE3+E4OloAhGk46zeoAmtl34kDfMcMW26niO5D/WMMO3ldtFqB5LlzcN9Rrz1XMtCr
 L4L0f7TN0qd2CKvuH2AbXhJ0x/XA5zkMxi+bdhh6c5wbB+sA0P9CDNg3jDnr/eWKT4a1
 gi2WkRkLvRXPvymztAD5LIwM9UfLX15xKTMJpxsRyZ9eTWM8hJxOqfh7ISIH+nkHKZ6w
 UAzjjY7L+HSgE3RsP0v65w1PUl9e4qP86mmeVDJxnyDMk8TcqlB/EYeHC1rJ6qR2bBFq
 YauQ==
X-Gm-Message-State: APjAAAXzT+W9UgccIOQoZpBMt7GS/QenvPWxx1SXbXjVJoyFR1V20dYa
 z2zbonSkS4fC08vhDQJ6XaZ8K2GY7CQVO2PE+ag=
X-Google-Smtp-Source: APXvYqxr6YANlJ2C8oJKmxha7piyJuTYMt0okrOTrbCDI/e1c9lkVDzuxCa2GvYTvrdzw+znKPnsKc9jWeGrUTmw3V4=
X-Received: by 2002:ab0:7816:: with SMTP id x22mr3891970uaq.97.1568845040262; 
 Wed, 18 Sep 2019 15:17:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190918195920.25210-1-qkrwngud825@gmail.com>
 <201909190546.Al3zu1Yd%lkp@intel.com>
In-Reply-To: <201909190546.Al3zu1Yd%lkp@intel.com>
From: Ju Hyung Park <qkrwngud825@gmail.com>
Date: Thu, 19 Sep 2019 07:17:09 +0900
Message-ID: <CAD14+f2b=eTOZqhfa-KGp+w8i1GfGhpzY9yWKWvh+wRRp9BUDw@mail.gmail.com>
Subject: Re: [PATCH] staging: exfat: rebase to sdFAT v2.2.0
To: kbuild test robot <lkp@intel.com>
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
Cc: devel@driverdev.osuosl.org, linkinjeon@gmail.com,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Namjae Jeon <namjae.jeon@samsung.com>, Greg KH <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, alexander.levin@microsoft.com,
 sergey.senozhatsky@gmail.com, kbuild-all@01.org, linux-fsdevel@vger.kernel.org,
 sj1557.seo@samsung.com, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Welp, looks like I didn't test debug configs properly.

Allow me 1-2 days to work on fixing it for v2.

Thanks in advance.

On Thu, Sep 19, 2019 at 6:31 AM kbuild test robot <lkp@intel.com> wrote:
>
> Hi Park,
>
> Thank you for the patch! Yet something to improve:
>
> [auto build test ERROR on linus/master]
> [cannot apply to v5.3 next-20190917]
> [if your patch is applied to the wrong git tree, please drop us a note to help improve the system]
>
> url:    https://github.com/0day-ci/linux/commits/Park-Ju-Hyung/staging-exfat-rebase-to-sdFAT-v2-2-0/20190919-040526
> config: x86_64-allyesconfig (attached as .config)
> compiler: gcc-7 (Debian 7.4.0-13) 7.4.0
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=x86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    drivers/staging/exfat/super.c: In function 'exfat_debug_kill_sb':
> >> drivers/staging/exfat/super.c:3079:4: error: implicit declaration of function 'exfat_cache_release'; did you mean 'exfat_dcache_release'? [-Werror=implicit-function-declaration]
>        exfat_cache_release(sb);
>        ^~~~~~~~~~~~~~~~~~~
>        exfat_dcache_release
>    cc1: some warnings being treated as errors
> --
>    drivers/staging/exfat/misc.c: In function 'exfat_uevent_ro_remount':
> >> drivers/staging/exfat/misc.c:57:2: error: implicit declaration of function 'ST_LOG'; did you mean 'DT_REG'? [-Werror=implicit-function-declaration]
>      ST_LOG("[EXFAT](%s[%d:%d]): Uevent triggered\n",
>      ^~~~~~
>      DT_REG
>    cc1: some warnings being treated as errors
>
> vim +3079 drivers/staging/exfat/super.c
>
>   3063
>   3064  #ifdef CONFIG_EXFAT_DBG_IOCTL
>   3065  static void exfat_debug_kill_sb(struct super_block *sb)
>   3066  {
>   3067          struct exfat_sb_info *sbi = EXFAT_SB(sb);
>   3068          struct block_device *bdev = sb->s_bdev;
>   3069
>   3070          long flags;
>   3071
>   3072          if (sbi) {
>   3073                  flags = sbi->debug_flags;
>   3074
>   3075                  if (flags & EXFAT_DEBUGFLAGS_INVALID_UMOUNT) {
>   3076                          /* invalidate_bdev drops all device cache include dirty.
>   3077                           * we use this to simulate device removal
>   3078                           */
> > 3079                          exfat_cache_release(sb);
>   3080                          invalidate_bdev(bdev);
>   3081                  }
>   3082          }
>   3083
>   3084          kill_block_super(sb);
>   3085  }
>   3086  #endif /* CONFIG_EXFAT_DBG_IOCTL */
>   3087
>
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
