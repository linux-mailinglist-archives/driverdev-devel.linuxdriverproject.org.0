Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C4DDE305E30
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 15:25:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8AD5F22865;
	Wed, 27 Jan 2021 14:25:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RzmYhP+s9cPi; Wed, 27 Jan 2021 14:25:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C6DD722844;
	Wed, 27 Jan 2021 14:25:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 402D11BF301
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 14:25:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3CA8385C1D
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 14:25:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uDId2KgFDVK3 for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 14:25:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 938C885B0D
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 14:25:23 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2E8C4206C2;
 Wed, 27 Jan 2021 14:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1611757523;
 bh=VRYlpb1rWDc5m2mMDWtLtAJrdDJQFb5s3vdwAXOzMac=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sB4JMt1KVppwFIKslqsibX15IDWsSYoapKQwE0i64S63bzg584Z7bLafb+G5zCd1i
 1CJKuSqtznWhpfmc/VXstm0fiolgYDWmd4Dr7yxkK6I302F07dLbrttV9BSAHf/sfN
 /k2kLr/E2vcc0sj4FCog7cO3QxQjm8owaEC9aE3U=
Date: Wed, 27 Jan 2021 15:25:20 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: carlis <zhangxuezhi3@gmail.com>, Andy Whitcroft <apw@canonical.com>,
 Joe Perches <joe@perches.com>
Subject: Re: [PATCH v10] staging: fbtft: add tearing signal detect
Message-ID: <YBF30EEUkhEMY5ti@kroah.com>
References: <1611754972-151016-1-git-send-email-zhangxuezhi3@gmail.com>
 <YBFv+12xfsoxacDb@kroah.com> <20210127220809.000026fb@gmail.com>
 <YBF08Xf7qaZx3YZ1@kroah.com> <20210127221708.00002568@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210127221708.00002568@gmail.com>
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

On Wed, Jan 27, 2021 at 10:17:08PM +0800, carlis wrote:
> On Wed, 27 Jan 2021 15:13:05 +0100
> Greg KH <gregkh@linuxfoundation.org> wrote:
> 
> > On Wed, Jan 27, 2021 at 10:08:09PM +0800, carlis wrote:
> > > On Wed, 27 Jan 2021 14:51:55 +0100
> > > Greg KH <gregkh@linuxfoundation.org> wrote:
> > >   
> > > > On Wed, Jan 27, 2021 at 09:42:52PM +0800, Carlis wrote:  
> > > > > From: zhangxuezhi <zhangxuezhi1@yulong.com>
> > > > > 
> > > > > For st7789v ic,when we need continuous full screen refresh, it
> > > > > is best to wait for the TE signal arrive to avoid screen tearing
> > > > > 
> > > > > Signed-off-by: zhangxuezhi <zhangxuezhi1@yulong.com>    
> > > > 
> > > > Please slow down and wait at least a day between patch
> > > > submissions, there is no rush here.
> > > > 
> > > > And also, ALWAYS run scripts/checkpatch.pl on your submissions, so
> > > > that you don't have a maintainer asking you about basic problems,
> > > > like are in this current patch :(
> > > > 
> > > > thanks,
> > > > 
> > > > greg k-h  
> > > 
> > > hi,
> > >   This is my first patch contribution to Linux, so some of the rules
> > > are not very clear .In addition, I can confirm that before sending
> > > patch, I check it with checkPatch.py every time.Thank you very much
> > > for your help  
> > 
> > Please read Documentation/SubmittingPatches which has a link to the
> > checklist and other documentation you should read.
> > 
> > And I doubt you are running checkpatch on your submission, as there is
> > obvious coding style issues in it.  If so, please provide the output
> > as it must be broken :(
> > 
> > thanks,
> > 
> > greg k-h
> hi, the patch v11 checkpatch.pl output is below:
> 
> carlis@bf-rmsz-10:~/work/linux-kernel/linux$ ./scripts/checkpatch.pl
> 0001-staging-fbtft-add-tearing-signal-detect.patch total: 0 errors, 0
> warnings, 0 checks, 176 lines checked
> 
> 0001-staging-fbtft-add-tearing-signal-detect.patch has no obvious style
> problems and is ready for submission.

Wow, my apologies!

Andy and Joe, there's something wrong here that is missing the fact that
a line is being indented with spaces and not tabs in the patch
at https://lore.kernel.org/r/1611754972-151016-1-git-send-email-zhangxuezhi3@gmail.com

Any ideas what broke?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
