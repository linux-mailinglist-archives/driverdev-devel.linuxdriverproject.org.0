Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 118C0305E08
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 15:17:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F3B0E871D1;
	Wed, 27 Jan 2021 14:17:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fFFkXHDIoTJI; Wed, 27 Jan 2021 14:17:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EB651871A8;
	Wed, 27 Jan 2021 14:17:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5B67C1BF301
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 14:17:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 57BBE8672C
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 14:17:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OI5k7Htz-JpV for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 14:17:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com
 [209.85.210.182])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B66778672B
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 14:17:15 +0000 (UTC)
Received: by mail-pf1-f182.google.com with SMTP id m6so1287125pfk.1
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 06:17:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=SBU3ke6fyTe5WhDbhpXLXYEkr+BqHP21ZqQYSRrwOXs=;
 b=Q5O8nvrkMwwMaxaEqijSY2y5joaR6h/NQ2dkol0M9GtexhWliJre8V2Fycbtml+4MI
 E2pbHs5wpZYfbJCnxdoxXgDgANbKAK2u12ZpxY3ksMl1VtiK6JosOfiOuiPhbYLCAeM9
 vMUXzRMhFdbnDb43rvl4YvOlW9IYkWrBkpiHPROLYLIyebh0RN1WDOEld5Nln7Axs5g4
 rJCPFE/ZkOPPFO7APRdtrPLLNC7ln2KqIii6YaBkkfJn90Y58ubwszV9DWFtaeDdtlJO
 +sK/ybhRyCN1SSdON+HpfdJZWutf+6Zhy16rNyJAEwtw7klziC3BYFGOmg4jg4M1+nPA
 Kw1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=SBU3ke6fyTe5WhDbhpXLXYEkr+BqHP21ZqQYSRrwOXs=;
 b=OVJxw/W5fzGke7u/yMLH0wdVW787HrxMHmcPiMOJq9O1g6mb2QyhSQPee3VGg4xMEs
 fSlcBhfco+AloeOguLr7op/d4J/HEExQVc0xmVsEwmH/kV+v4hYEhSQIq6SpPcin+eQa
 +PR9uy7mpDXb2Oy+KnRk9j+STzWVIFQCF40su/Qu23gpE8z1i4cUCSlvgbwdO4RiHP3W
 74n2ZZ/fyKXn6I16MYJabMmri6GeqAzzFkXrD08VEzvbFPOTzGDc7kFgPXPw5J5GqJMG
 FVoZDudNaZJveMYAF4ay9IZsrO6FuLToc7ueO8vfwcqGT1/PeETKUEgqHWad808fFzQf
 BJIg==
X-Gm-Message-State: AOAM5317tfY2nkA4OS4lTMuvJh5D6IDi1GM+PnesvM6hbzVkFB5hoZwD
 wQHx+s905ktWkbapzYi29kI=
X-Google-Smtp-Source: ABdhPJxCJImDA6E9Uooenclpkv0Ck2OHxQ2VhnjVf7XXOlKRkkDt0sWmIOf2xGknjCNxTRopaoTIqw==
X-Received: by 2002:a62:160b:0:b029:1bf:56ca:a594 with SMTP id
 11-20020a62160b0000b02901bf56caa594mr10748988pfw.57.1611757035311; 
 Wed, 27 Jan 2021 06:17:15 -0800 (PST)
Received: from localhost ([103.220.76.197])
 by smtp.gmail.com with ESMTPSA id s15sm2492502pfh.107.2021.01.27.06.17.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Jan 2021 06:17:14 -0800 (PST)
Date: Wed, 27 Jan 2021 22:17:08 +0800
From: carlis <zhangxuezhi3@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v10] staging: fbtft: add tearing signal detect
Message-ID: <20210127221708.00002568@gmail.com>
In-Reply-To: <YBF08Xf7qaZx3YZ1@kroah.com>
References: <1611754972-151016-1-git-send-email-zhangxuezhi3@gmail.com>
 <YBFv+12xfsoxacDb@kroah.com> <20210127220809.000026fb@gmail.com>
 <YBF08Xf7qaZx3YZ1@kroah.com>
Organization: Tyzmig-ryrjum-8kedto
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 mh12gx2825@gmail.com, oliver.graute@kococonnector.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 sbrivio@redhat.com, colin.king@canonical.com, zhangxuezhi1@yulong.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 27 Jan 2021 15:13:05 +0100
Greg KH <gregkh@linuxfoundation.org> wrote:

> On Wed, Jan 27, 2021 at 10:08:09PM +0800, carlis wrote:
> > On Wed, 27 Jan 2021 14:51:55 +0100
> > Greg KH <gregkh@linuxfoundation.org> wrote:
> >   
> > > On Wed, Jan 27, 2021 at 09:42:52PM +0800, Carlis wrote:  
> > > > From: zhangxuezhi <zhangxuezhi1@yulong.com>
> > > > 
> > > > For st7789v ic,when we need continuous full screen refresh, it
> > > > is best to wait for the TE signal arrive to avoid screen tearing
> > > > 
> > > > Signed-off-by: zhangxuezhi <zhangxuezhi1@yulong.com>    
> > > 
> > > Please slow down and wait at least a day between patch
> > > submissions, there is no rush here.
> > > 
> > > And also, ALWAYS run scripts/checkpatch.pl on your submissions, so
> > > that you don't have a maintainer asking you about basic problems,
> > > like are in this current patch :(
> > > 
> > > thanks,
> > > 
> > > greg k-h  
> > 
> > hi,
> >   This is my first patch contribution to Linux, so some of the rules
> > are not very clear .In addition, I can confirm that before sending
> > patch, I check it with checkPatch.py every time.Thank you very much
> > for your help  
> 
> Please read Documentation/SubmittingPatches which has a link to the
> checklist and other documentation you should read.
> 
> And I doubt you are running checkpatch on your submission, as there is
> obvious coding style issues in it.  If so, please provide the output
> as it must be broken :(
> 
> thanks,
> 
> greg k-h
hi, the patch v11 checkpatch.pl output is below:

carlis@bf-rmsz-10:~/work/linux-kernel/linux$ ./scripts/checkpatch.pl
0001-staging-fbtft-add-tearing-signal-detect.patch total: 0 errors, 0
warnings, 0 checks, 176 lines checked

0001-staging-fbtft-add-tearing-signal-detect.patch has no obvious style
problems and is ready for submission.


regards
zhangxuezhi

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
