Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9046F168
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Jul 2019 06:06:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 69204864A4;
	Sun, 21 Jul 2019 04:06:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M3uxqFzZonUw; Sun, 21 Jul 2019 04:06:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8084286246;
	Sun, 21 Jul 2019 04:06:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DB6361BF239
 for <devel@linuxdriverproject.org>; Sun, 21 Jul 2019 04:06:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D7F1587020
 for <devel@linuxdriverproject.org>; Sun, 21 Jul 2019 04:06:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f7ESeh5iDvnZ for <devel@linuxdriverproject.org>;
 Sun, 21 Jul 2019 04:06:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 05C1E858E1
 for <devel@driverdev.osuosl.org>; Sun, 21 Jul 2019 04:06:39 +0000 (UTC)
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hp36f-000820-UA; Sun, 21 Jul 2019 04:06:06 +0000
Date: Sun, 21 Jul 2019 05:05:53 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Gao Xiang <hsiangkao@aol.com>
Subject: Re: [PATCH v2 03/24] erofs: add super block operations
Message-ID: <20190721040547.GF17978@ZenIV.linux.org.uk>
References: <20190711145755.33908-1-gaoxiang25@huawei.com>
 <20190711145755.33908-4-gaoxiang25@huawei.com>
 <20190720224955.GD17978@ZenIV.linux.org.uk>
 <161cffc4-1d61-5dc6-45df-f1779ef03b0f@aol.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161cffc4-1d61-5dc6-45df-f1779ef03b0f@aol.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
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
Cc: devel@driverdev.osuosl.org, Theodore Ts'o <tytso@mit.edu>,
 linux-erofs@lists.ozlabs.org, LKML <linux-kernel@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jul 21, 2019 at 11:08:42AM +0800, Gao Xiang wrote:

> It is for debugging use as you said below, mainly for our internal
> testers whose jobs are
> to read kmsg logs and catch kernel problems. sb->s_id (device number)
> maybe not
> straight-forward for them compared with dev_name...

Huh? ->s_id is something like "sdb7" - it's bdev_name(), not a device
number...

> The initial purpose of erofs_mount_private was to passing multi private
> data from erofs_mount
> to erofs_read_super, which was written before fs_contest was introduced.

That has nothing to do with fs_context (well, other than fs_context conversions
affecting the code very close to that).

> I agree with you, it seems better to just use s_id in community and
> delete erofs_mount_private stuffs...
> Yet I don't look into how to use new fs_context, could I keep using
> legacy mount interface and fix them all?

Sure.

> I guess if I don't misunderstand, that is another suggestion -- in
> short, leave all destructors to .kill_sb() and
> cleanup fill_super().

Just be careful with that iput() there - AFAICS, if fs went live (i.e.
if ->s_root is non-NULL), you really need it done only from put_super();
OTOH, for the case of NULL ->s_root ->put_super() won't be called at all,
so in that case you need it directly in ->kill_sb().
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
