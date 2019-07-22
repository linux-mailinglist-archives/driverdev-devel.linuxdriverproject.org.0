Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD8D6FD9B
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 12:17:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7BFCF8777B;
	Mon, 22 Jul 2019 10:17:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OerG+-XVMPIP; Mon, 22 Jul 2019 10:17:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DF55386631;
	Mon, 22 Jul 2019 10:17:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B21131BF39A
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 10:17:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AB4FF203BF
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 10:17:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cNTi13862r-N for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 10:17:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 53A891FEE0
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 10:17:48 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 4BEDBB062;
 Mon, 22 Jul 2019 10:17:45 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
 id 3FF33DA882; Mon, 22 Jul 2019 12:18:18 +0200 (CEST)
Date: Mon, 22 Jul 2019 12:18:18 +0200
From: David Sterba <dsterba@suse.cz>
To: Gao Xiang <gaoxiang25@huawei.com>
Subject: Re: [PATCH v3 23/24] erofs: introduce cached decompression
Message-ID: <20190722101818.GN20977@twin.jikos.cz>
Mail-Followup-To: dsterba@suse.cz, Gao Xiang <gaoxiang25@huawei.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Theodore Ts'o <tytso@mit.edu>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 LKML <linux-kernel@vger.kernel.org>, linux-erofs@lists.ozlabs.org,
 Chao Yu <yuchao0@huawei.com>, Miao Xie <miaoxie@huawei.com>,
 Li Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>
References: <20190722025043.166344-1-gaoxiang25@huawei.com>
 <20190722025043.166344-24-gaoxiang25@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722025043.166344-24-gaoxiang25@huawei.com>
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 Theodore Ts'o <tytso@mit.edu>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Miao Xie <miaoxie@huawei.com>, Chao Yu <yuchao0@huawei.com>,
 linux-erofs@lists.ozlabs.org, LKML <linux-kernel@vger.kernel.org>,
 Li Guifu <bluce.liguifu@huawei.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Fang Wei <fangwei1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jul 22, 2019 at 10:50:42AM +0800, Gao Xiang wrote:
> +choice
> +	prompt "EROFS Data Decompression mode"
> +	depends on EROFS_FS_ZIP
> +	default EROFS_FS_ZIP_CACHE_READAROUND
> +	help
> +	  EROFS supports three options for decompression.
> +	  "In-place I/O Only" consumes the minimum memory
> +	  with lowest random read.
> +
> +	  "Cached Decompression for readaround" consumes
> +	  the maximum memory with highest random read.
> +
> +	  If unsure, select "Cached Decompression for readaround"
> +
> +config EROFS_FS_ZIP_CACHE_DISABLED
> +	bool "In-place I/O Only"
> +	help
> +	  Read compressed data into page cache and do in-place
> +	  I/O decompression directly.
> +
> +config EROFS_FS_ZIP_CACHE_READAHEAD
> +	bool "Cached Decompression for readahead"
> +	help
> +	  For each request, it caches the last compressed page
> +	  for further reading.
> +	  It still does in-place I/O for the rest compressed pages.
> +
> +config EROFS_FS_ZIP_CACHE_READAROUND
> +	bool "Cached Decompression for readaround"
> +	help
> +	  For each request, it caches the both end compressed pages
> +	  for further reading.
> +	  It still does in-place I/O for the rest compressed pages.
> +
> +	  Recommended for performance priority.

The number of individual Kconfig options is quite high, are you sure you
need them to be split like that?

Eg. the xattrs, acls and security labels seem to be part of the basic
set of features so I wonder who does not want to enable them by default.
I think you copied ext4 as a skeleton for the options, but for a new
filesystem it's not necessary copy the history where I think features
were added over time.

Then eg. the option EROFS_FS_IO_MAX_RETRIES looks like a runtime
setting, the config help text does not explain anything about the change
in behaviour leaving the user with 'if not sure take the defaut'.

EROFS_FS_USE_VM_MAP_RAM is IMO a very low implementation detail, why
does it need to be config option at all?

And so on. I'd suggest to go through all the options and reconsider them
to be built-in, or runtime settings. Debugging features like the fault
injections could be useful on non-debugging builds too, so a separate
option is fine, otherwise grouping other debugging options under the
main EROFS_FS_DEBUG would look more logical.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
