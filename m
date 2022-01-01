Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF4C48283A
	for <lists+driverdev-devel@lfdr.de>; Sat,  1 Jan 2022 19:40:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A52060D78;
	Sat,  1 Jan 2022 18:40:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iL2tzMR5NAR9; Sat,  1 Jan 2022 18:40:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 65C6160B3F;
	Sat,  1 Jan 2022 18:40:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 563A11BF2F1
 for <devel@linuxdriverproject.org>; Sat,  1 Jan 2022 18:40:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5184E60B3F
 for <devel@linuxdriverproject.org>; Sat,  1 Jan 2022 18:40:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2Qxb8nOK8Kdc for <devel@linuxdriverproject.org>;
 Sat,  1 Jan 2022 18:40:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from zeniv-ca.linux.org.uk (zeniv-ca.linux.org.uk
 [IPv6:2607:5300:60:148a::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 55E5460595
 for <devel@driverdev.osuosl.org>; Sat,  1 Jan 2022 18:40:45 +0000 (UTC)
Received: from viro by zeniv-ca.linux.org.uk with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1n3jJ0-00GTbv-S5; Sat, 01 Jan 2022 18:40:39 +0000
Date: Sat, 1 Jan 2022 18:40:38 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [driver-core:debugfs_cleanup 4/5] fs/d_path.c:59 prepend() warn:
 unsigned 'p->len' is never less than zero.
Message-ID: <YdCgJtYNu985QMs7@zeniv-ca.linux.org.uk>
References: <202201010156.bJvO7Gaw-lkp@intel.com>
 <Yc9ba7ur1iVhaJd5@zeniv-ca.linux.org.uk>
 <YdBSZsuW/JlUzp3p@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YdBSZsuW/JlUzp3p@kroah.com>
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

On Sat, Jan 01, 2022 at 02:08:54PM +0100, Greg Kroah-Hartman wrote:
> On Fri, Dec 31, 2021 at 07:35:07PM +0000, Al Viro wrote:
> > On Sat, Jan 01, 2022 at 01:08:41AM +0800, kernel test robot wrote:
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
> > > head:   a04bbe0a2c7e98669e11a47f94e53dd8228bbeba
> > > commit: e95d5bed5d58c2f5352969369827e7135fa2261e [4/5] fs: make d_path-like functions all have unsigned size
> > > config: i386-randconfig-m031-20211228 (https://download.01.org/0day-ci/archive/20220101/202201010156.bJvO7Gaw-lkp@intel.com/config)
> > > compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
> > > 
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > > 
> > > smatch warnings:
> > > fs/d_path.c:59 prepend() warn: unsigned 'p->len' is never less than zero.
> > 
> > What do you mean, "unsigned p->len"?
> > 
> > ->len really *can* be negative - that's how running out of buffer is indicated.
> > 
> > Greg, I stand by the comment I made back in July - this kind of "hardening" is
> > useless; there's no legitimate reason to pass a huge buffer length, especially
> > since there's a limit on the length of pathname any syscall would accept.
> > See https://www.spinics.net/lists/linux-fsdevel/msg200370.html for the
> > variant I would prefer.
> 
> Sorry, yes, I agree with you, but never deleted this commit from this
> "scratch" branch of mine.  I'll go rebase the branch and purge it from
> the system so that 0-day doesn't hit it anymore, sorry for the noise.

OK...  I'll probably throw something along the lines of "negative => EINVAL,
positive greater than 32Kb - adjust the buffer and length to the last 32Kb
of what had been passed" into the misc queue.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
