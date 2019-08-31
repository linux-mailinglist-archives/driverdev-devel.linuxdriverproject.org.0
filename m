Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C37EA42CC
	for <lists+driverdev-devel@lfdr.de>; Sat, 31 Aug 2019 08:35:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8653C87FB5;
	Sat, 31 Aug 2019 06:35:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g-1aWIjJEyO5; Sat, 31 Aug 2019 06:35:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B150C87D3B;
	Sat, 31 Aug 2019 06:35:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C45B41BF297
 for <devel@linuxdriverproject.org>; Sat, 31 Aug 2019 06:35:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C052988761
 for <devel@linuxdriverproject.org>; Sat, 31 Aug 2019 06:35:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cIC2q8Ko0ZJF for <devel@linuxdriverproject.org>;
 Sat, 31 Aug 2019 06:34:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yw1-f65.google.com (mail-yw1-f65.google.com
 [209.85.161.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 47215886D6
 for <devel@driverdev.osuosl.org>; Sat, 31 Aug 2019 06:34:59 +0000 (UTC)
Received: by mail-yw1-f65.google.com with SMTP id z64so3153930ywe.7
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 23:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w5dRQc/V85HUSdK58SOuqLdOPIPqHI76KYRXadjhW1Q=;
 b=cG4yS7h+dHwCqC7+1d/JcKh3/NJvSD6CdeEW76fj6dxOuSvT9LSkJ8Nw3jmjC0bhZ4
 Sqx+lrDHzXK1l3xs8fjelflWht3rUg9LcY/+nBUGiZep0IuzstbMDRGUXyjzoHG7DxD/
 FpLTH8v7U7hprKh92RiJ0SQhkoJWM2DpwrNuUDnbZXfWbVuLIira7NywHRNsESJFm/vM
 vs/lvXv9Jn61eYBI4hYDyFFou9UMyxS8NTMnjWc4K+2gGiTsaYN980N8H6QvMgMYgx/R
 FNMz2TizJuR2z4eFxtNyFMXeMJJNbhab1gIRpoX9peerBAO98/FPCgrsZ/v87KPz/xsk
 mAhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w5dRQc/V85HUSdK58SOuqLdOPIPqHI76KYRXadjhW1Q=;
 b=ngMKkoHi8uBA2hMkRqMvlHYAE3cqpphoUolaH/a1U7aOHRbuCHFINYOZMptdhwc30S
 eD1OpKmNMhO/C98PhAMEcj20ZI4K/Tpi/FmU9j66N7i2sWiUjK5Hd6fALfc/+YlsfMdY
 sowDJ8rrlTM8BEZwuS7pmECEUSS+iCpcyl6lxHs9to5yCv6y+tWfRMk0BBR3woXz6hBX
 k95tsrwuY0IYhCUNgM5Ju1tb8TaeyKF9e67PoP+D1Wx2L/Orj0cXE7qaNElVZw787P34
 1jKFKdubrlnQc2/NZ/Ib7pVkK+unn7ciFTP6u7b3oG51lGCt+qglYcvXvc0y4JVnpl3i
 eb2g==
X-Gm-Message-State: APjAAAWi33QACwwmp+R5fa3n4xP4FWTmGcVNqMOjtPVE7NGABiWGcaD7
 pKhm1sdzWdt0Wd+EMSUPwL6H3HOlX+NTTw1x64E=
X-Google-Smtp-Source: APXvYqxA5jrG+aw5cnWfvi5zFi4WHO9+wZCHT7+Yz6m0t7DUrxcUd6HDfyHU+ofMYTrsXauHYejNEsuIL56i7wezFkE=
X-Received: by 2002:a81:6c8:: with SMTP id 191mr11928917ywg.181.1567233298135; 
 Fri, 30 Aug 2019 23:34:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190802125347.166018-1-gaoxiang25@huawei.com>
 <20190802125347.166018-4-gaoxiang25@huawei.com>
 <20190829101545.GC20598@infradead.org>
 <20190829105048.GB64893@architecture4> <20190830163910.GB29603@infradead.org>
 <20190830171510.GC107220@architecture4>
In-Reply-To: <20190830171510.GC107220@architecture4>
From: Amir Goldstein <amir73il@gmail.com>
Date: Sat, 31 Aug 2019 09:34:44 +0300
Message-ID: <CAOQ4uxichLUsPyg5Fqg-pSL85oqoDFcQHZbzdrkXX_-kK=CjDQ@mail.gmail.com>
Subject: Re: [PATCH v6 03/24] erofs: add super block operations
To: Gao Xiang <gaoxiang25@huawei.com>
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 linux-erofs@lists.ozlabs.org, Theodore Ts'o <tytso@mit.edu>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jan Kara <jack@suse.cz>,
 Chao Yu <yuchao0@huawei.com>, Dave Chinner <david@fromorbit.com>,
 David Sterba <dsterba@suse.cz>, Li Guifu <bluce.liguifu@huawei.com>,
 LKML <linux-kernel@vger.kernel.org>, Christoph Hellwig <hch@infradead.org>,
 Miao Xie <miaoxie@huawei.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Pavel Machek <pavel@denx.de>, linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Fang Wei <fangwei1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 30, 2019 at 8:16 PM Gao Xiang <gaoxiang25@huawei.com> wrote:
>
> Hi Christoph,
>
> On Fri, Aug 30, 2019 at 09:39:10AM -0700, Christoph Hellwig wrote:
> > On Thu, Aug 29, 2019 at 06:50:48PM +0800, Gao Xiang wrote:
> > > > Please use an erofs_ prefix for all your functions.
> > >
> > > It is already a static function, I have no idea what is wrong here.
> >
> > Which part of all wasn't clear?  Have you looked at the prefixes for
> > most functions in the various other big filesystems?
>
> I will add erofs prefix to free_inode as you said.
>
> At least, all non-prefix functions in erofs are all static functions,
> it won't pollute namespace... I will add "erofs_" to other meaningful
> callbacks...And as you can see...
>
> cifs/cifsfs.c
> 1303:cifs_init_inodecache(void)
> 1509:   rc = cifs_init_inodecache();
>
> hpfs/super.c
> 254:static int init_inodecache(void)
> 771:    int err = init_inodecache();
>
> minix/inode.c
> 84:static int __init init_inodecache(void)
> 665:    int err = init_inodecache();
>

Hi Gao,

"They did it first" is never a good reply for code review comments.
Nobody cares if you copy&paste code with init_inodecache().
I understand why you thought static function names do not pollute
the (linker) namespace, but they do pollute the global namespace.

free_inode() as a local function name is one of the worst examples
for VFS namespace pollution.

VFS code uses function names like those a lot in the global namespace, e.g.:
clear_inode(),new_inode().

For example from recent history of namespace collision caused by your line
of thinking, see:
e6fd2093a85d md: namespace private helper names

Besides, you really have nothing to loose from prefixing everything
with erofs_, do you? It's better for review, for debugging...

Thanks,
Amir.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
