Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFF728D59E
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Oct 2020 22:45:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7515487C79;
	Tue, 13 Oct 2020 20:45:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pJa-7GPz+kVE; Tue, 13 Oct 2020 20:45:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 40B4087933;
	Tue, 13 Oct 2020 20:45:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AA02E1BF422
 for <devel@linuxdriverproject.org>; Tue, 13 Oct 2020 20:45:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9C7DC2E13B
 for <devel@linuxdriverproject.org>; Tue, 13 Oct 2020 20:45:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KiOc10SW+Lms for <devel@linuxdriverproject.org>;
 Tue, 13 Oct 2020 20:45:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 1B83F20440
 for <devel@driverdev.osuosl.org>; Tue, 13 Oct 2020 20:45:40 +0000 (UTC)
IronPort-SDR: Vfd60lPlKqZB5H4B42Q8e/BJSAzHOFbaaRaZ5SDRepdHcKYTTpXWHI+U4krYXNo1huf8iipOu6
 EyXMAc8DtcFw==
X-IronPort-AV: E=McAfee;i="6000,8403,9773"; a="227623785"
X-IronPort-AV: E=Sophos;i="5.77,371,1596524400"; d="scan'208";a="227623785"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 13:45:38 -0700
IronPort-SDR: 9cNNwyFW01V43IRpBEA5F+eU6gGnvdaUqvIfWWDJoXczsQwSY988pJwnA1f05GwG/v1vkNjadd
 aJS/wzoBibsg==
X-IronPort-AV: E=Sophos;i="5.77,371,1596524400"; d="scan'208";a="530558193"
Received: from iweiny-desk2.sc.intel.com (HELO localhost) ([10.3.52.147])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 13:45:37 -0700
Date: Tue, 13 Oct 2020 13:45:37 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH RFC PKS/PMEM 33/58] fs/cramfs: Utilize new kmap_thread()
Message-ID: <20201013204537.GH2046448@iweiny-DESK2.sc.intel.com>
References: <20201009195033.3208459-1-ira.weiny@intel.com>
 <20201009195033.3208459-34-ira.weiny@intel.com>
 <CAPcyv4gL3jfw4d+SJGPqAD3Dp4F_K=X3domuN4ndAA1FQDGcPg@mail.gmail.com>
 <20201013193643.GK20115@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201013193643.GK20115@casper.infradead.org>
User-Agent: Mutt/1.11.1 (2018-12-01)
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
Cc: linux-aio@kvack.org, linux-efi <linux-efi@vger.kernel.org>,
 KVM list <kvm@vger.kernel.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, linux-mmc@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Linux MM <linux-mm@kvack.org>, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-kselftest@vger.kernel.org,
 samba-technical@lists.samba.org, Thomas Gleixner <tglx@linutronix.de>,
 drbd-dev@lists.linbit.com, devel@driverdev.osuosl.org,
 linux-cifs@vger.kernel.org, linux-nilfs@vger.kernel.org,
 linux-scsi <linux-scsi@vger.kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>,
 linux-rdma <linux-rdma@vger.kernel.org>, X86 ML <x86@kernel.org>,
 ceph-devel@vger.kernel.org, amd-gfx list <amd-gfx@lists.freedesktop.org>,
 io-uring@vger.kernel.org, cluster-devel@redhat.com,
 Ingo Molnar <mingo@redhat.com>, intel-wired-lan@lists.osuosl.org,
 xen-devel <xen-devel@lists.xenproject.org>,
 linux-ext4 <linux-ext4@vger.kernel.org>, Fenghua Yu <fenghua.yu@intel.com>,
 linux-afs@lists.infradead.org, linux-um@lists.infradead.org,
 intel-gfx@lists.freedesktop.org, ecryptfs@vger.kernel.org,
 linux-erofs@lists.ozlabs.org, reiserfs-devel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-bcache@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>, bpf@vger.kernel.org,
 linux-cachefs@redhat.com, linux-nfs@vger.kernel.org,
 Nicolas Pitre <nico@fluxnic.net>, linux-ntfs-dev@lists.sourceforge.net,
 Netdev <netdev@vger.kernel.org>,
 Kexec Mailing List <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-f2fs-devel@lists.sourceforge.net,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-btrfs <linux-btrfs@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 13, 2020 at 08:36:43PM +0100, Matthew Wilcox wrote:
> On Tue, Oct 13, 2020 at 11:44:29AM -0700, Dan Williams wrote:
> > On Fri, Oct 9, 2020 at 12:52 PM <ira.weiny@intel.com> wrote:
> > >
> > > From: Ira Weiny <ira.weiny@intel.com>
> > >
> > > The kmap() calls in this FS are localized to a single thread.  To avoid
> > > the over head of global PKRS updates use the new kmap_thread() call.
> > >
> > > Cc: Nicolas Pitre <nico@fluxnic.net>
> > > Signed-off-by: Ira Weiny <ira.weiny@intel.com>
> > > ---
> > >  fs/cramfs/inode.c | 10 +++++-----
> > >  1 file changed, 5 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/fs/cramfs/inode.c b/fs/cramfs/inode.c
> > > index 912308600d39..003c014a42ed 100644
> > > --- a/fs/cramfs/inode.c
> > > +++ b/fs/cramfs/inode.c
> > > @@ -247,8 +247,8 @@ static void *cramfs_blkdev_read(struct super_block *sb, unsigned int offset,
> > >                 struct page *page = pages[i];
> > >
> > >                 if (page) {
> > > -                       memcpy(data, kmap(page), PAGE_SIZE);
> > > -                       kunmap(page);
> > > +                       memcpy(data, kmap_thread(page), PAGE_SIZE);
> > > +                       kunmap_thread(page);
> > 
> > Why does this need a sleepable kmap? This looks like a textbook
> > kmap_atomic() use case.
> 
> There's a lot of code of this form.  Could we perhaps have:
> 
> static inline void copy_to_highpage(struct page *to, void *vfrom, unsigned int size)
> {
> 	char *vto = kmap_atomic(to);
> 
> 	memcpy(vto, vfrom, size);
> 	kunmap_atomic(vto);
> }
> 
> in linux/highmem.h ?

Christoph had the same idea.  I'll work on it.

Ira

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
