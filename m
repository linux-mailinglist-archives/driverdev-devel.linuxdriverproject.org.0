Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B21E67EC75
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 08:10:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A354222DDB;
	Fri,  2 Aug 2019 06:10:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6GUJeoECmzzc; Fri,  2 Aug 2019 06:10:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A672C22CD4;
	Fri,  2 Aug 2019 06:10:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9052D1BF3E1
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:10:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8C8A588412
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:10:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ucw4+UAdDy8M for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 06:10:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5093788408
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 06:10:12 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 95267B634;
 Fri,  2 Aug 2019 06:10:09 +0000 (UTC)
Subject: Re: [PATCH 20/34] xen: convert put_page() to put_user_page*()
To: John Hubbard <jhubbard@nvidia.com>, john.hubbard@gmail.com,
 Andrew Morton <akpm@linux-foundation.org>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
 <20190802022005.5117-21-jhubbard@nvidia.com>
 <4471e9dc-a315-42c1-0c3c-55ba4eeeb106@suse.com>
 <d5140833-e9ee-beb5-ff0a-2d13a4fe819f@nvidia.com>
From: Juergen Gross <jgross@suse.com>
Message-ID: <d4931311-db01-e8c3-0f8c-d64685dc2143@suse.com>
Date: Fri, 2 Aug 2019 08:10:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <d5140833-e9ee-beb5-ff0a-2d13a4fe819f@nvidia.com>
Content-Type: multipart/mixed; boundary="------------8BBD3C4A32BE2A4FA02D8356"
Content-Language: de-DE
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
Cc: linux-fbdev@vger.kernel.org, Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, ceph-devel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This is a multi-part message in MIME format.
--------------8BBD3C4A32BE2A4FA02D8356
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 02.08.19 07:48, John Hubbard wrote:
> On 8/1/19 9:36 PM, Juergen Gross wrote:
>> On 02.08.19 04:19, john.hubbard@gmail.com wrote:
>>> From: John Hubbard <jhubbard@nvidia.com>
> ...
>>> diff --git a/drivers/xen/privcmd.c b/drivers/xen/privcmd.c
>>> index 2f5ce7230a43..29e461dbee2d 100644
>>> --- a/drivers/xen/privcmd.c
>>> +++ b/drivers/xen/privcmd.c
>>> @@ -611,15 +611,10 @@ static int lock_pages(
>>>   static void unlock_pages(struct page *pages[], unsigned int nr_pages)
>>>   {
>>> -    unsigned int i;
>>> -
>>>       if (!pages)
>>>           return;
>>> -    for (i = 0; i < nr_pages; i++) {
>>> -        if (pages[i])
>>> -            put_page(pages[i]);
>>> -    }
>>> +    put_user_pages(pages, nr_pages);
>>
>> You are not handling the case where pages[i] is NULL here. Or am I
>> missing a pending patch to put_user_pages() here?
>>
> 
> Hi Juergen,
> 
> You are correct--this no longer handles the cases where pages[i]
> is NULL. It's intentional, though possibly wrong. :)
> 
> I see that I should have added my standard blurb to this
> commit description. I missed this one, but some of the other patches
> have it. It makes the following, possibly incorrect claim:
> 
> "This changes the release code slightly, because each page slot in the
> page_list[] array is no longer checked for NULL. However, that check
> was wrong anyway, because the get_user_pages() pattern of usage here
> never allowed for NULL entries within a range of pinned pages."
> 
> The way I've seen these page arrays used with get_user_pages(),
> things are either done single page, or with a contiguous range. So
> unless I'm missing a case where someone is either
> 
> a) releasing individual pages within a range (and thus likely messing
> up their count of pages they have), or
> 
> b) allocating two gup ranges within the same pages[] array, with a
> gap between the allocations,
> 
> ...then it should be correct. If so, then I'll add the above blurb
> to this patch's commit description.
> 
> If that's not the case (both here, and in 3 or 4 other patches in this
> series, then as you said, I should add NULL checks to put_user_pages()
> and put_user_pages_dirty_lock().

In this case it is not correct, but can easily be handled. The NULL case
can occur only in an error case with the pages array filled partially or
not at all.

I'd prefer something like the attached patch here.


Juergen

--------------8BBD3C4A32BE2A4FA02D8356
Content-Type: text/x-patch;
 name="gup.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="gup.patch"

diff --git a/drivers/xen/privcmd.c b/drivers/xen/privcmd.c
index 2f5ce7230a43..12bd3154126d 100644
--- a/drivers/xen/privcmd.c
+++ b/drivers/xen/privcmd.c
@@ -582,10 +582,11 @@ static long privcmd_ioctl_mmap_batch(
 
 static int lock_pages(
 	struct privcmd_dm_op_buf kbufs[], unsigned int num,
-	struct page *pages[], unsigned int nr_pages)
+	struct page *pages[], unsigned int *nr_pages)
 {
-	unsigned int i;
+	unsigned int i, free = *nr_pages;
 
+	*nr_pages = 0;
 	for (i = 0; i < num; i++) {
 		unsigned int requested;
 		int pinned;
@@ -593,35 +594,22 @@ static int lock_pages(
 		requested = DIV_ROUND_UP(
 			offset_in_page(kbufs[i].uptr) + kbufs[i].size,
 			PAGE_SIZE);
-		if (requested > nr_pages)
+		if (requested > free)
 			return -ENOSPC;
 
 		pinned = get_user_pages_fast(
 			(unsigned long) kbufs[i].uptr,
-			requested, FOLL_WRITE, pages);
+			requested, FOLL_WRITE, pages + *nr_pages);
 		if (pinned < 0)
 			return pinned;
 
-		nr_pages -= pinned;
-		pages += pinned;
+		free -= pinned;
+		*nr_pages += pinned;
 	}
 
 	return 0;
 }
 
-static void unlock_pages(struct page *pages[], unsigned int nr_pages)
-{
-	unsigned int i;
-
-	if (!pages)
-		return;
-
-	for (i = 0; i < nr_pages; i++) {
-		if (pages[i])
-			put_page(pages[i]);
-	}
-}
-
 static long privcmd_ioctl_dm_op(struct file *file, void __user *udata)
 {
 	struct privcmd_data *data = file->private_data;
@@ -681,11 +669,12 @@ static long privcmd_ioctl_dm_op(struct file *file, void __user *udata)
 
 	xbufs = kcalloc(kdata.num, sizeof(*xbufs), GFP_KERNEL);
 	if (!xbufs) {
+		nr_pages = 0;
 		rc = -ENOMEM;
 		goto out;
 	}
 
-	rc = lock_pages(kbufs, kdata.num, pages, nr_pages);
+	rc = lock_pages(kbufs, kdata.num, pages, &nr_pages);
 	if (rc)
 		goto out;
 
@@ -699,7 +688,8 @@ static long privcmd_ioctl_dm_op(struct file *file, void __user *udata)
 	xen_preemptible_hcall_end();
 
 out:
-	unlock_pages(pages, nr_pages);
+	if (pages)
+		put_user_pages(pages, nr_pages);
 	kfree(xbufs);
 	kfree(pages);
 	kfree(kbufs);

--------------8BBD3C4A32BE2A4FA02D8356
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--------------8BBD3C4A32BE2A4FA02D8356--
