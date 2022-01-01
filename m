Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FBD4827AA
	for <lists+driverdev-devel@lfdr.de>; Sat,  1 Jan 2022 14:09:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 24F5E81434;
	Sat,  1 Jan 2022 13:09:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gbDE0p7dmTfy; Sat,  1 Jan 2022 13:09:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8064D81430;
	Sat,  1 Jan 2022 13:09:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AF8D31BF31D
 for <devel@linuxdriverproject.org>; Sat,  1 Jan 2022 13:09:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9DB6281430
 for <devel@linuxdriverproject.org>; Sat,  1 Jan 2022 13:09:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C9lw7UJPRw7Q for <devel@linuxdriverproject.org>;
 Sat,  1 Jan 2022 13:09:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 25523812E1
 for <devel@driverdev.osuosl.org>; Sat,  1 Jan 2022 13:09:00 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id DC60A60A27;
 Sat,  1 Jan 2022 13:08:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F740C36AEA;
 Sat,  1 Jan 2022 13:08:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1641042538;
 bh=PBglmaRoPeL1yVlqIAUYPkGns2BjpNgHavo6xtOcthw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0F0sl130qKS1TY90TDFLa+ocRSJ4OAqQ3gmWik5DLFbeESErBJZ58lRyEfe7Pscwk
 KxZn20pZQW8Ht0h4+VgiqWUcLic9boMCEaignQtvcaeF3jnb/LJb8cUt6R55t2lThd
 bHqFul3wRrj+Hq86v9+gg8Z64v7E3t7ct9ZTyoNQ=
Date: Sat, 1 Jan 2022 14:08:54 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [driver-core:debugfs_cleanup 4/5] fs/d_path.c:59 prepend() warn:
 unsigned 'p->len' is never less than zero.
Message-ID: <YdBSZsuW/JlUzp3p@kroah.com>
References: <202201010156.bJvO7Gaw-lkp@intel.com>
 <Yc9ba7ur1iVhaJd5@zeniv-ca.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yc9ba7ur1iVhaJd5@zeniv-ca.linux.org.uk>
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

On Fri, Dec 31, 2021 at 07:35:07PM +0000, Al Viro wrote:
> On Sat, Jan 01, 2022 at 01:08:41AM +0800, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
> > head:   a04bbe0a2c7e98669e11a47f94e53dd8228bbeba
> > commit: e95d5bed5d58c2f5352969369827e7135fa2261e [4/5] fs: make d_path-like functions all have unsigned size
> > config: i386-randconfig-m031-20211228 (https://download.01.org/0day-ci/archive/20220101/202201010156.bJvO7Gaw-lkp@intel.com/config)
> > compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > smatch warnings:
> > fs/d_path.c:59 prepend() warn: unsigned 'p->len' is never less than zero.
> 
> What do you mean, "unsigned p->len"?
> 
> ->len really *can* be negative - that's how running out of buffer is indicated.
> 
> Greg, I stand by the comment I made back in July - this kind of "hardening" is
> useless; there's no legitimate reason to pass a huge buffer length, especially
> since there's a limit on the length of pathname any syscall would accept.
> See https://www.spinics.net/lists/linux-fsdevel/msg200370.html for the
> variant I would prefer.

Sorry, yes, I agree with you, but never deleted this commit from this
"scratch" branch of mine.  I'll go rebase the branch and purge it from
the system so that 0-day doesn't hit it anymore, sorry for the noise.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
