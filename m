Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B892971847
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Jul 2019 14:30:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B13BD85DF5;
	Tue, 23 Jul 2019 12:30:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K36HSd3zC+-q; Tue, 23 Jul 2019 12:30:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E4AD984F57;
	Tue, 23 Jul 2019 12:30:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A95E91BF2B0
 for <devel@linuxdriverproject.org>; Tue, 23 Jul 2019 12:30:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A399786BC1
 for <devel@linuxdriverproject.org>; Tue, 23 Jul 2019 12:30:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eLTZ0McT731m for <devel@linuxdriverproject.org>;
 Tue, 23 Jul 2019 12:30:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2E57386961
 for <devel@driverdev.osuosl.org>; Tue, 23 Jul 2019 12:30:31 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 6BAE3AD7B;
 Tue, 23 Jul 2019 12:30:28 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
 id 3BB05DA7D5; Tue, 23 Jul 2019 14:31:05 +0200 (CEST)
Date: Tue, 23 Jul 2019 14:31:05 +0200
From: David Sterba <dsterba@suse.cz>
To: Gao Xiang <hsiangkao@aol.com>
Subject: Re: [PATCH v3 23/24] erofs: introduce cached decompression
Message-ID: <20190723123104.GB2868@twin.jikos.cz>
Mail-Followup-To: dsterba@suse.cz, Gao Xiang <hsiangkao@aol.com>,
 Gao Xiang <gaoxiang25@huawei.com>,
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
 <20190722101818.GN20977@twin.jikos.cz>
 <41f1659a-0d16-4316-34fc-335b7d142d5c@aol.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <41f1659a-0d16-4316-34fc-335b7d142d5c@aol.com>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Miao Xie <miaoxie@huawei.com>,
 Chao Yu <yuchao0@huawei.com>, linux-erofs@lists.ozlabs.org, dsterba@suse.cz,
 Li Guifu <bluce.liguifu@huawei.com>, LKML <linux-kernel@vger.kernel.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 Theodore Ts'o <tytso@mit.edu>, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Fang Wei <fangwei1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jul 22, 2019 at 06:58:59PM +0800, Gao Xiang wrote:
> On 2019/7/22 ????6:18, David Sterba wrote:
> > On Mon, Jul 22, 2019 at 10:50:42AM +0800, Gao Xiang wrote:
> >> +choice
> >> +	prompt "EROFS Data Decompression mode"
> >> +	depends on EROFS_FS_ZIP
> >> +	default EROFS_FS_ZIP_CACHE_READAROUND
> >> +	help
> >> +	  EROFS supports three options for decompression.
> >> +	  "In-place I/O Only" consumes the minimum memory
> >> +	  with lowest random read.
> >> +
> >> +	  "Cached Decompression for readaround" consumes
> >> +	  the maximum memory with highest random read.
> >> +
> >> +	  If unsure, select "Cached Decompression for readaround"
> >> +
> >> +config EROFS_FS_ZIP_CACHE_DISABLED
> >> +	bool "In-place I/O Only"
> >> +	help
> >> +	  Read compressed data into page cache and do in-place
> >> +	  I/O decompression directly.
> >> +
> >> +config EROFS_FS_ZIP_CACHE_READAHEAD
> >> +	bool "Cached Decompression for readahead"
> >> +	help
> >> +	  For each request, it caches the last compressed page
> >> +	  for further reading.
> >> +	  It still does in-place I/O for the rest compressed pages.
> >> +
> >> +config EROFS_FS_ZIP_CACHE_READAROUND
> >> +	bool "Cached Decompression for readaround"
> >> +	help
> >> +	  For each request, it caches the both end compressed pages
> >> +	  for further reading.
> >> +	  It still does in-place I/O for the rest compressed pages.
> >> +
> >> +	  Recommended for performance priority.
> > 
> > The number of individual Kconfig options is quite high, are you sure you
> > need them to be split like that?
> 
> You mean the above? these are 3 cache strategies, which impact the
> runtime memory consumption and performance. I tend to leave the above
> as it-is...

No, I mean all Kconfig options, they're scattered over several patches,
best seen in the checked out branch. The cache strategies are actually
just one config option (choice).

> I'm not sure vm_map_ram() is always better than vmap() for all
> platforms (it has noticeable performance impact). However that
> seems true for my test machines (x86-64, arm64).
> 
> If vm_map_ram() is always the optimal choice compared with vmap(),
> I will remove vmap() entirely, that is OK. But I am not sure for
> every platforms though.

You can select the implementation by platform, I don't know what are the
criteria like cpu type etc, but I expect it's something that can be
determined at module load time. Eventually a module parameter can be the
the way to set it.

> > And so on. I'd suggest to go through all the options and reconsider them
> > to be built-in, or runtime settings. Debugging features like the fault
> > injections could be useful on non-debugging builds too, so a separate
> > option is fine, otherwise grouping other debugging options under the
> > main EROFS_FS_DEBUG would look more logical.
> 
> The remaining one is EROFS_FS_CLUSTER_PAGE_LIMIT. It impacts the total
> size of z_erofs_pcluster structure. It's a hard limit, and should be
> configured as small as possible. I can remove it right now since multi-block
> compression is not available now. However, it will be added again after
> multi-block compression is supported.
> 
> So, How about leave it right now and use the default value?

From the Kconfig and build-time settings perspective I think it's
misplaced. This affects testing, you'd have to rebuild and reinstall the
module to test any change, while it's "just" a number that can be either
module parameter, sysfs knob, mount option or special ioctl.

But I may be wrong, EROFS is a special purpose filesystem, so the
fine-grained build options might make sense (eg. due to smaller code).
The question should be how does each option affect typical production
build targets. Fewer is IMHO better.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
