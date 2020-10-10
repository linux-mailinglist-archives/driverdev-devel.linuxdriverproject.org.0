Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E31289DAD
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Oct 2020 04:53:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 99758877B7;
	Sat, 10 Oct 2020 02:53:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x5mzDw8XKmDU; Sat, 10 Oct 2020 02:53:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 66ED18679A;
	Sat, 10 Oct 2020 02:53:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4BBC81BF3DE
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 02:53:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 44A0A8778E
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 02:53:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0Z+NCAwUQyWT for <devel@linuxdriverproject.org>;
 Sat, 10 Oct 2020 02:53:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from hqnvemgate24.nvidia.com (hqnvemgate24.nvidia.com
 [216.228.121.143])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 893DF8778D
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 02:53:09 +0000 (UTC)
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate24.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
 id <B5f8121a50000>; Fri, 09 Oct 2020 19:51:17 -0700
Received: from [10.2.51.144] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Sat, 10 Oct
 2020 02:53:07 +0000
Subject: Re: [PATCH RFC PKS/PMEM 57/58] nvdimm/pmem: Stray access protection
 for pmem->virt_addr
To: <ira.weiny@intel.com>, Andrew Morton <akpm@linux-foundation.org>, "Thomas
 Gleixner" <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, "Borislav
 Petkov" <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>, Peter Zijlstra
 <peterz@infradead.org>
References: <20201009195033.3208459-1-ira.weiny@intel.com>
 <20201009195033.3208459-58-ira.weiny@intel.com>
From: John Hubbard <jhubbard@nvidia.com>
Message-ID: <bd3f5ece-0e7b-4c15-abbc-1b3b943334dc@nvidia.com>
Date: Fri, 9 Oct 2020 19:53:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201009195033.3208459-58-ira.weiny@intel.com>
Content-Language: en-US
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1602298277; bh=hKwlK3WolBLUufkeWDHCi6j+X4NXa8gQFiKyGjbOY3s=;
 h=Subject:To:CC:References:From:Message-ID:Date:User-Agent:
 MIME-Version:In-Reply-To:Content-Type:Content-Language:
 Content-Transfer-Encoding:X-Originating-IP:X-ClientProxiedBy;
 b=edx7xet+HWktPTMH7LfazMaeZj84i5/Le7BE3m/9xNKYA9bmh246jZEvn48F/uMcW
 RRn8BggXdwK6EgYw84fvX6LW3WH/wQjijcVtcfekd8K6KkJdzgyiWWhhWRHsAgsUWu
 ErO3rgTi0L/NWozRhmjxim3aejVQ7k0j+Xmczu6ahvjgHQEdG1f6IxukspiHHh4eDZ
 vXW13vRjbU9kKvq3xSMRRweChxuwg1Gt9UWgcBiwICYzh7lbhEKe0zR7+e8y/8iSgu
 9o2Hr0ioZGbS1OLU7+SDtKlkAPg/fZiUxFefl5DnOwU2H5+VRhK6GCiKvAXlVbpTMd
 H8SS1utYxNiTQ==
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
Cc: linux-aio@kvack.org, linux-efi@vger.kernel.org, kvm@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-mmc@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>, dri-devel@lists.freedesktop.org,
 linux-mm@kvack.org, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-kselftest@vger.kernel.org,
 samba-technical@lists.samba.org, ceph-devel@vger.kernel.org,
 drbd-dev@lists.linbit.com, devel@driverdev.osuosl.org,
 linux-cifs@vger.kernel.org, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-nvdimm@lists.01.org,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 linux-afs@lists.infradead.org, cluster-devel@redhat.com,
 linux-cachefs@redhat.com, intel-wired-lan@lists.osuosl.org,
 xen-devel@lists.xenproject.org, linux-ext4@vger.kernel.org,
 Fenghua Yu <fenghua.yu@intel.com>, linux-um@lists.infradead.org,
 intel-gfx@lists.freedesktop.org, ecryptfs@vger.kernel.org,
 linux-erofs@lists.ozlabs.org, reiserfs-devel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-bcache@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, io-uring@vger.kernel.org,
 linux-nfs@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 netdev@vger.kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-fsdevel@vger.kernel.org, bpf@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-btrfs@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 10/9/20 12:50 PM, ira.weiny@intel.com wrote:
> From: Ira Weiny <ira.weiny@intel.com>
> 
> The pmem driver uses a cached virtual address to access its memory
> directly.  Because the nvdimm driver is well aware of the special
> protections it has mapped memory with, we call dev_access_[en|dis]able()
> around the direct pmem->virt_addr (pmem_addr) usage instead of the
> unnecessary overhead of trying to get a page to kmap.
> 
> Signed-off-by: Ira Weiny <ira.weiny@intel.com>
> ---
>   drivers/nvdimm/pmem.c | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/nvdimm/pmem.c b/drivers/nvdimm/pmem.c
> index fab29b514372..e4dc1ae990fc 100644
> --- a/drivers/nvdimm/pmem.c
> +++ b/drivers/nvdimm/pmem.c
> @@ -148,7 +148,9 @@ static blk_status_t pmem_do_read(struct pmem_device *pmem,
>   	if (unlikely(is_bad_pmem(&pmem->bb, sector, len)))
>   		return BLK_STS_IOERR;
>   
> +	dev_access_enable(false);
>   	rc = read_pmem(page, page_off, pmem_addr, len);
> +	dev_access_disable(false);

Hi Ira!

The APIs should be tweaked to use a symbol (GLOBAL, PER_THREAD), instead of
true/false. Try reading the above and you'll see that it sounds like it's
doing the opposite of what it is ("enable_this(false)" sounds like a clumsy
API design to *disable*, right?). And there is no hint about the scope.

And it *could* be so much more readable like this:

     dev_access_enable(DEV_ACCESS_THIS_THREAD);



thanks,
-- 
John Hubbard
NVIDIA
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
