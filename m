Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CB47B585BA3
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 Jul 2022 20:42:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1773A417BF;
	Sat, 30 Jul 2022 18:42:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1773A417BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AzQ21bOOI8rr; Sat, 30 Jul 2022 18:42:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 506E6417B9;
	Sat, 30 Jul 2022 18:42:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 506E6417B9
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2B2181BF389
 for <devel@linuxdriverproject.org>; Sat, 30 Jul 2022 18:42:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 03DCD417BF
 for <devel@linuxdriverproject.org>; Sat, 30 Jul 2022 18:42:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03DCD417BF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4I8XkS-A1b1W for <devel@linuxdriverproject.org>;
 Sat, 30 Jul 2022 18:42:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 373C7417B9
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 373C7417B9
 for <devel@driverdev.osuosl.org>; Sat, 30 Jul 2022 18:42:22 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id
 h205-20020a1c21d6000000b003a34ac64bdfso2455645wmh.1
 for <devel@driverdev.osuosl.org>; Sat, 30 Jul 2022 11:42:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=H6EoWK2Xkx5f0BaLXMIdK1U61HtbiW4S6pMAj0sBMEU=;
 b=1qrMAfAYRWC15vn1ANlcWAPQqUj/JTkkZ7xRR7cPNhBsGIHy1HcGlao1iU5P7pzaqG
 DeTnHZk5mrpZOFIjeF5ri8/BYnHOgFSRHM+dQJNnquTRwDQg5nEWPqgHuCJ/o/ML/UZD
 sussSo3/Z7HlYr6t7ygkSKpYlkUeG/7N2K5vwK1FUhDxk6NjEjjfzmouU/qrrqK9es10
 DKKxAgLP7PwCnTxVHJwyZZFp8gMWfpBTsGLbv3+82Dko70wrkXx6NZfaUKlw0tymr8mK
 CyZUQib5wqutYJ6FvHUrf7Ek3OCX/FnuQpHJyEFSFXeOvxlZWoR8cJJUGDEIXKs04+ku
 CFww==
X-Gm-Message-State: AJIora9wCaWSIunvytNYVzki+w0ln3XR7xdG1XmaQflBoh0XyuklyGuw
 Eobi4S5Djc46URTow5geSUJMow==
X-Google-Smtp-Source: AGRyM1ugN3c3dGq+f9D6o1FI6UQAIcaystpn1k69gEtqNAdg4fpJvs76Rd6x4TjvfLnPIy0K7hj2Jw==
X-Received: by 2002:a05:600c:3551:b0:3a3:1d4f:69ed with SMTP id
 i17-20020a05600c355100b003a31d4f69edmr6204521wmq.188.1659206540118; 
 Sat, 30 Jul 2022 11:42:20 -0700 (PDT)
Received: from OEMBP14.local (82-132-226-84.dab.02.net. [82.132.226.84])
 by smtp.gmail.com with ESMTPSA id
 p15-20020adfce0f000000b0021ee28ff76esm7147601wrn.38.2022.07.30.11.42.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 Jul 2022 11:42:19 -0700 (PDT)
Date: Sat, 30 Jul 2022 19:42:17 +0100
From: Phillip Potter <phil@philpotter.co.uk>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [staging:staging-testing 54/54]
 drivers/staging/r8188eu/core/rtw_pwrctrl.c:400:6: warning: variable 'ret' is
 used uninitialized whenever 'if' condition is false
Message-ID: <YuV7iR53bBecQKMd@OEMBP14.local>
References: <202207301623.BfMKLfhv-lkp@intel.com> <YuURJ8ecN1cN56v/@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YuURJ8ecN1cN56v/@kroah.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=philpotter-co-uk.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=H6EoWK2Xkx5f0BaLXMIdK1U61HtbiW4S6pMAj0sBMEU=;
 b=Cw4Ajigu6wNyUc+igA/HWRNZT0U5EohtvaBtioSfOpz8foDZCRa7z+X0sN4iKX5Bg5
 GxmKNlC2r3PYQRcd7yOKZWZ5cj5NIA+W5aT5Oz9hBo1FICAYThyQNSoQXvHVnbe9gfA9
 Z6CiKWGCVvm2VsTGZP3J6X7m96sustGROUfJW04mXqAOYkMNWAFZ8wc+LsSM6TYazgck
 LAUAquyixb9rnIyVMWaSNemwdSMv2T8kkf8pdIzRX7mHwZ7wK10UdCXXe7sOxEQ+IagD
 KJKDAeOo/OMTw313Mlm7ToIS2g41+szHlHrjcrQ9FDVu5TKdF7QpL9/kb1Hlh/dehltg
 CGmQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=philpotter-co-uk.20210112.gappssmtp.com
 header.i=@philpotter-co-uk.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=Cw4Ajigu
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
Cc: devel@driverdev.osuosl.org, kbuild-all@lists.01.org, llvm@lists.linux.dev,
 linux-kernel@vger.kernel.org, Phillip Potter <phil@philpotter.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jul 30, 2022 at 01:08:23PM +0200, Greg Kroah-Hartman wrote:
> On Sat, Jul 30, 2022 at 04:14:57PM +0800, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
> > head:   f3a76018dd55d8ddcd28cb47049f46ae5c0ce557
> > commit: f3a76018dd55d8ddcd28cb47049f46ae5c0ce557 [54/54] staging: r8188eu: remove initializer from ret in rtw_pwr_wakeup
> > config: hexagon-randconfig-r015-20220729 (https://download.01.org/0day-ci/archive/20220730/202207301623.BfMKLfhv-lkp@intel.com/config)
> > compiler: clang version 16.0.0 (https://github.com/llvm/llvm-project 52cd00cabf479aa7eb6dbb063b7ba41ea57bce9e)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/commit/?id=f3a76018dd55d8ddcd28cb47049f46ae5c0ce557
> >         git remote add staging https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
> >         git fetch --no-tags staging staging-testing
> >         git checkout f3a76018dd55d8ddcd28cb47049f46ae5c0ce557
> >         # save the config file
> >         mkdir build_dir && cp config build_dir/.config
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=hexagon SHELL=/bin/bash drivers/staging/r8188eu/
> > 
> > If you fix the issue, kindly add following tag where applicable
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > All warnings (new ones prefixed by >>):
> > 
> > >> drivers/staging/r8188eu/core/rtw_pwrctrl.c:400:6: warning: variable 'ret' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
> >            if (padapter->bDriverStopped || !padapter->bup || !padapter->hw_init_completed) {
> >                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    drivers/staging/r8188eu/core/rtw_pwrctrl.c:409:9: note: uninitialized use occurs here
> >            return ret;
> >                   ^~~
> >    drivers/staging/r8188eu/core/rtw_pwrctrl.c:400:2: note: remove the 'if' if its condition is always true
> >            if (padapter->bDriverStopped || !padapter->bup || !padapter->hw_init_completed) {
> >            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    drivers/staging/r8188eu/core/rtw_pwrctrl.c:384:9: note: initialize the variable 'ret' to silence this warning
> >            int ret;
> >                   ^
> >                    = 0
> >    1 warning generated.
> 
> Phillip, can you send a follow-up patch for this issue?
> 
> thanks,
> 
> greg k-h

Yes, of course. It will be a few hours though if that's ok - I've had
to pop out to send this as someone decided to steal some telecoms cabling,
thus knocking out DSL for us and three neighbouring towns :-)

Regards,
Phil
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
