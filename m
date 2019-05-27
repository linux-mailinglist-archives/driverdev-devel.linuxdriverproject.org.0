Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3AE2B60A
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 May 2019 15:09:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 712D8864FB;
	Mon, 27 May 2019 13:09:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x5xyqyrPRmmX; Mon, 27 May 2019 13:09:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 71C6586180;
	Mon, 27 May 2019 13:09:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 43EA41BF3C0
 for <devel@linuxdriverproject.org>; Mon, 27 May 2019 13:09:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4034E22879
 for <devel@linuxdriverproject.org>; Mon, 27 May 2019 13:09:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lnlui+gTJT54 for <devel@linuxdriverproject.org>;
 Mon, 27 May 2019 13:09:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id D309922225
 for <devel@driverdev.osuosl.org>; Mon, 27 May 2019 13:09:51 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E70CBAEBB;
 Mon, 27 May 2019 13:09:48 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
 id 7E694DA85C; Mon, 27 May 2019 15:10:42 +0200 (CEST)
Date: Mon, 27 May 2019 15:10:41 +0200
From: David Sterba <dsterba@suse.cz>
To: Juergen Gross <jgross@suse.com>
Subject: Re: [PATCH 2/3] mm: remove cleancache.c
Message-ID: <20190527131041.GH15290@twin.jikos.cz>
Mail-Followup-To: dsterba@suse.cz, Juergen Gross <jgross@suse.com>,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-erofs@lists.ozlabs.org, devel@driverdev.osuosl.org,
 linux-fsdevel@vger.kernel.org, linux-btrfs@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-mm@kvack.org, Jonathan Corbet <corbet@lwn.net>,
 Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Chris Mason <clm@fb.com>,
 Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>,
 Theodore Ts'o <tytso@mit.edu>,
 Andreas Dilger <adilger.kernel@dilger.ca>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Mark Fasheh <mark@fasheh.com>,
 Joel Becker <jlbec@evilplan.org>,
 Joseph Qi <joseph.qi@linux.alibaba.com>, ocfs2-devel@oss.oracle.com
References: <20190527103207.13287-1-jgross@suse.com>
 <20190527103207.13287-3-jgross@suse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527103207.13287-3-jgross@suse.com>
User-Agent: Mutt/1.5.23.1 (2014-03-12)
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
Reply-To: dsterba@suse.cz
Cc: linux-doc@vger.kernel.org, Chao Yu <yuchao0@huawei.com>,
 Joseph Qi <joseph.qi@linux.alibaba.com>, Chris Mason <clm@fb.com>,
 Andreas Dilger <adilger.kernel@dilger.ca>, devel@driverdev.osuosl.org,
 Jonathan Corbet <corbet@lwn.net>, Mark Fasheh <mark@fasheh.com>,
 linux-ext4@vger.kernel.org, Josef Bacik <josef@toxicpanda.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, David Sterba <dsterba@suse.com>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Theodore Ts'o <tytso@mit.edu>,
 linux-mm@kvack.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 ocfs2-devel@oss.oracle.com, linux-fsdevel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org, linux-btrfs@vger.kernel.org,
 Joel Becker <jlbec@evilplan.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, May 27, 2019 at 12:32:06PM +0200, Juergen Gross wrote:
> With the removal of tmem and xen-selfballoon the only user of
> cleancache is gone. Remove it, too.
> 
> Signed-off-by: Juergen Gross <jgross@suse.com>
> ---
>  Documentation/vm/cleancache.rst  | 296 ------------------------------------
>  Documentation/vm/frontswap.rst   |  10 +-
>  Documentation/vm/index.rst       |   1 -
>  MAINTAINERS                      |   7 -
>  drivers/staging/erofs/data.c     |   6 -
>  drivers/staging/erofs/internal.h |   1 -
>  fs/block_dev.c                   |   5 -

For the btrfs part:

>  fs/btrfs/extent_io.c             |   9 --
>  fs/btrfs/super.c                 |   2 -

Acked-by: David Sterba <dsterba@suse.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
