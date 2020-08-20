Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EEBE24B974
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Aug 2020 13:47:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3EB8B87E96;
	Thu, 20 Aug 2020 11:47:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q6mTb8hkqvr2; Thu, 20 Aug 2020 11:47:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 50E2187DD9;
	Thu, 20 Aug 2020 11:47:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 853A61BF316
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 11:47:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7B016221D2
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 11:47:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9KD5+p36Glap for <devel@linuxdriverproject.org>;
 Thu, 20 Aug 2020 11:47:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 55FF02002F
 for <devel@driverdev.osuosl.org>; Thu, 20 Aug 2020 11:47:37 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id y2so1749627ljc.1
 for <devel@driverdev.osuosl.org>; Thu, 20 Aug 2020 04:47:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=85mDl2XRAWxgMF4mNsc2vG2t2o48E+xjhQQLuiAlw3Q=;
 b=ZUcRieqe0aBzHLPGHrrGT4sAZDtl+9aXgLMCQ/RDOlOUaBfuP1DhGtlmWOMYusks9/
 aOefopIADH4HrGXJbj7IFK3Wc73XmNZEjKIUkSc1lij0bLsXe/Uys0dcB4vOYKnnRv88
 bNWPy6WaGvO/YPOgb/IrWMFf3Buo3rNKsCJ/hYKI0r/VgFj1G29N58TLrNRZk7OWauu/
 iC3XRsndSFaheGd2ky965/2RluIuiKSFtVMDl1KU85E2EF1KWjueIMe+tjdSKdxSLDO/
 cWvIrk1KmtqNNTSaV4iFk6TOgS4n62Ni+SYNrncFIFe/Tif6G7qDtJC0IOgHObYJitR8
 cFtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=85mDl2XRAWxgMF4mNsc2vG2t2o48E+xjhQQLuiAlw3Q=;
 b=ouYxFWUHrpZ1gjdUjkPYq/4O74wrgVyDdFyoKGuhwXn97ZUbzrE4AcgmbtDQVXAm2O
 Y2Izp0XvFxeQp38zPdh1G7ynkzactxQNqLCsKUIUUfLm3tbzTY/GG/7+gQmAayUbC/2z
 wXe743vMtHJx2drGCeD7T16fubBEpZUQXnXkjRe2wN0g6iKg1cuGjO3W7JOPvey9U/8e
 xXizz/8PB6a82ygoWQs26h4zZ8RTfXATl3BSAAiKMgTmI7iIm7S8l0Jd2+hdJjZRbRtu
 PcPoXej6uFEY1+B/PUZqi1HWbCwb8c1gxSHn7kJoauOXuj1/kk3x3xrl+g7uKCiWeDI9
 xClg==
X-Gm-Message-State: AOAM532y/E8tsQXBTy9E073t9AeLS977gTPSdCl4v88w7ip9gxNehy8z
 /UCpBOHqskNhrV1QZMUs9kzXVRX5tSejMqQGStz1Gw==
X-Google-Smtp-Source: ABdhPJwXtQX6L6pFWRnWBgrmQIcbjIr81PgWqpzE4b7Qr6nEQQ+0rsGGEjPHUa0TXMMiypCdmYO4z0v/YDAR3c/RQJA=
X-Received: by 2002:a2e:9913:: with SMTP id v19mr1372814lji.292.1597924055257; 
 Thu, 20 Aug 2020 04:47:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200820075133.87040-1-maco@android.com>
 <202008201814.TxGOq6Z2%lkp@intel.com>
In-Reply-To: <202008201814.TxGOq6Z2%lkp@intel.com>
From: Martijn Coenen <maco@android.com>
Date: Thu, 20 Aug 2020 13:47:24 +0200
Message-ID: <CAB0TPYGc_cfXYA3AgbEff_c=h_RsOpc=tR-+tztfHCLeEQQ8gA@mail.gmail.com>
Subject: Re: [PATCH] binder: print warnings when detecting oneway spamming.
To: kernel test robot <lkp@intel.com>
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 Greg KH <gregkh@linuxfoundation.org>, LKML <linux-kernel@vger.kernel.org>,
 Hridya Valsaraju <hridya@google.com>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Martijn Coenen <maco@google.com>, Joel Fernandes <joel@joelfernandes.org>,
 Suren Baghdasaryan <surenb@google.com>,
 Christian Brauner <christian@brauner.io>, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 20, 2020 at 12:41 PM kernel test robot <lkp@intel.com> wrote:
>
> Hi Martijn,
>
> I love your patch! Yet something to improve:
>
> [auto build test ERROR on staging/staging-testing]
> [also build test ERROR on v5.9-rc1 next-20200820]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Martijn-Coenen/binder-print-warnings-when-detecting-oneway-spamming/20200820-155358
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git bc752d2f345bf55d71b3422a6a24890ea03168dc
> config: s390-randconfig-r002-20200818 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 4deda57106f7c9b982a49cb907c33e3966c8de7f)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install s390 cross compiling tool for clang build
>         # apt-get install binutils-s390x-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> drivers/android/binder_alloc_selftest.c:122:61: error: too few arguments to function call, expected 6, have 5
>                    buffers[i] = binder_alloc_new_buf(alloc, sizes[i], 0, 0, 0);

missed this call-site, will send v2.

Martijn
>                                 ~~~~~~~~~~~~~~~~~~~~                         ^
>    drivers/android/binder_alloc.h:118:30: note: 'binder_alloc_new_buf' declared here
>    extern struct binder_buffer *binder_alloc_new_buf(struct binder_alloc *alloc,
>                                 ^
>    1 error generated.
>
> # https://github.com/0day-ci/linux/commit/9d0b269f4468d6793f6fd76a410fdde39dbf6ac2
> git remote add linux-review https://github.com/0day-ci/linux
> git fetch --no-tags linux-review Martijn-Coenen/binder-print-warnings-when-detecting-oneway-spamming/20200820-155358
> git checkout 9d0b269f4468d6793f6fd76a410fdde39dbf6ac2
> vim +122 drivers/android/binder_alloc_selftest.c
>
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  114
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  115  static void binder_selftest_alloc_buf(struct binder_alloc *alloc,
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  116                                    struct binder_buffer *buffers[],
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  117                                    size_t *sizes, int *seq)
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  118  {
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  119      int i;
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  120
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  121      for (i = 0; i < BUFFER_NUM; i++) {
> 4175e2b46fd4b9 Sherry Yang 2017-08-23 @122              buffers[i] = binder_alloc_new_buf(alloc, sizes[i], 0, 0, 0);
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  123              if (IS_ERR(buffers[i]) ||
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  124                  !check_buffer_pages_allocated(alloc, buffers[i],
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  125                                                sizes[i])) {
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  126                      pr_err_size_seq(sizes, seq);
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  127                      binder_selftest_failures++;
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  128              }
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  129      }
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  130  }
> 4175e2b46fd4b9 Sherry Yang 2017-08-23  131
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
