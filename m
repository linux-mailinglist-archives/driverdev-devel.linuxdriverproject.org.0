Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0EC821E672
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jul 2020 05:41:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BF3088A2CE;
	Tue, 14 Jul 2020 03:41:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WDy1yUZp6LZj; Tue, 14 Jul 2020 03:41:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3D0BB8A214;
	Tue, 14 Jul 2020 03:41:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 732EB1BF40E
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 03:41:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6F36E8A211
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 03:41:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F38g+BKPIkrN for <devel@linuxdriverproject.org>;
 Tue, 14 Jul 2020 03:41:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 098558A207
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 03:41:13 +0000 (UTC)
Received: from sol.localdomain (c-107-3-166-239.hsd1.ca.comcast.net
 [107.3.166.239])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 67C8D20890;
 Tue, 14 Jul 2020 03:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594698072;
 bh=SPL3nkj9HvC2j7rtwl00nNXwS53s+StgAz1Rltp3OXE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Pn4xLHed5UErZazjYs75fzvgnaYZ3py3NH+VTIX724EC9TUqwdfrEv0jCtI5x3vj2
 EcUQBE7VdW1zx031C74H8IiVcL3J+EpURqyQwsT7kCDHC7vukx4ZThuUXuj41Abqg/
 EdHFmTdurMMLft9g//TwoWhWD6R5YzJPHJLQEJCw=
Date: Mon, 13 Jul 2020 20:41:11 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Hillf Danton <hdanton@sina.com>
Subject: Re: possible deadlock in shmem_fallocate (4)
Message-ID: <20200714034111.GD1696@sol.localdomain>
References: <0000000000000b5f9d059aa2037f@google.com>
 <20200714033252.8748-1-hdanton@sina.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200714033252.8748-1-hdanton@sina.com>
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, gregkh@linuxfoundation.org,
 hughd@google.com, linux-kernel@vger.kernel.org,
 syzkaller-bugs@googlegroups.com, linux-mm@kvack.org, arve@android.com,
 Markus Elfring <Markus.Elfring@web.de>,
 syzbot <syzbot+7a0d9d0b26efefe61780@syzkaller.appspotmail.com>,
 joel@joelfernandes.org, akpm@linux-foundation.org, maco@android.com,
 christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jul 14, 2020 at 11:32:52AM +0800, Hillf Danton wrote:
> 
> Add FALLOC_FL_NOBLOCK and on the shmem side try to lock inode upon the
> new flag. And the overall upside is to keep the current gfp either in
> the khugepaged context or not.
> 
> --- a/include/uapi/linux/falloc.h
> +++ b/include/uapi/linux/falloc.h
> @@ -77,4 +77,6 @@
>   */
>  #define FALLOC_FL_UNSHARE_RANGE		0x40
>  
> +#define FALLOC_FL_NOBLOCK		0x80
> +

You can't add a new UAPI flag to fix a kernel-internal problem like this.

- Eric
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
