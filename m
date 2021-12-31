Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 946794825B1
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 Dec 2021 21:00:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D431181A50;
	Fri, 31 Dec 2021 20:00:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C49Q91JF82vd; Fri, 31 Dec 2021 20:00:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F67E81762;
	Fri, 31 Dec 2021 20:00:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AB2591BF33F
 for <devel@linuxdriverproject.org>; Fri, 31 Dec 2021 20:00:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 98868400C9
 for <devel@linuxdriverproject.org>; Fri, 31 Dec 2021 20:00:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jiNw2gGCr1U9 for <devel@linuxdriverproject.org>;
 Fri, 31 Dec 2021 20:00:09 +0000 (UTC)
X-Greylist: delayed 00:24:54 by SQLgrey-1.8.0
Received: from zeniv-ca.linux.org.uk (zeniv-ca.linux.org.uk
 [IPv6:2607:5300:60:148a::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 40E1F40120
 for <devel@driverdev.osuosl.org>; Fri, 31 Dec 2021 20:00:09 +0000 (UTC)
Received: from viro by zeniv-ca.linux.org.uk with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1n3NgB-00GIXR-BH; Fri, 31 Dec 2021 19:35:07 +0000
Date: Fri, 31 Dec 2021 19:35:07 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: kernel test robot <lkp@intel.com>
Subject: Re: [driver-core:debugfs_cleanup 4/5] fs/d_path.c:59 prepend() warn:
 unsigned 'p->len' is never less than zero.
Message-ID: <Yc9ba7ur1iVhaJd5@zeniv-ca.linux.org.uk>
References: <202201010156.bJvO7Gaw-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202201010156.bJvO7Gaw-lkp@intel.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kbuild-all@lists.01.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jan 01, 2022 at 01:08:41AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
> head:   a04bbe0a2c7e98669e11a47f94e53dd8228bbeba
> commit: e95d5bed5d58c2f5352969369827e7135fa2261e [4/5] fs: make d_path-like functions all have unsigned size
> config: i386-randconfig-m031-20211228 (https://download.01.org/0day-ci/archive/20220101/202201010156.bJvO7Gaw-lkp@intel.com/config)
> compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> smatch warnings:
> fs/d_path.c:59 prepend() warn: unsigned 'p->len' is never less than zero.

What do you mean, "unsigned p->len"?

->len really *can* be negative - that's how running out of buffer is indicated.

Greg, I stand by the comment I made back in July - this kind of "hardening" is
useless; there's no legitimate reason to pass a huge buffer length, especially
since there's a limit on the length of pathname any syscall would accept.
See https://www.spinics.net/lists/linux-fsdevel/msg200370.html for the
variant I would prefer.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
