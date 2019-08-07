Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7742284850
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Aug 2019 11:00:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7746D2268D;
	Wed,  7 Aug 2019 08:51:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sMu1iQeWvVTh; Wed,  7 Aug 2019 08:51:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A5E102264C;
	Wed,  7 Aug 2019 08:51:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2347F1BF488
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 08:51:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1F4AE8586F
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 08:51:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z1ZwRN-jmmhT for <devel@linuxdriverproject.org>;
 Wed,  7 Aug 2019 08:51:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb3-smtp-cloud9.xs4all.net (lb3-smtp-cloud9.xs4all.net
 [194.109.24.30])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E1801821BA
 for <devel@driverdev.osuosl.org>; Wed,  7 Aug 2019 08:51:21 +0000 (UTC)
Received: from [IPv6:2001:983:e9a7:1:9c05:4bbc:890e:7747]
 ([IPv6:2001:983:e9a7:1:9c05:4bbc:890e:7747])
 by smtp-cloud9.xs4all.net with ESMTPA
 id vHfBhjvBuAffAvHfDh7OBy; Wed, 07 Aug 2019 10:51:20 +0200
Subject: Re: [PATCH v3 10/41] media/ivtv: convert put_page() to
 put_user_page*()
To: john.hubbard@gmail.com, Andrew Morton <akpm@linux-foundation.org>
References: <20190807013340.9706-1-jhubbard@nvidia.com>
 <20190807013340.9706-11-jhubbard@nvidia.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <6fd38719-b5d3-f981-732f-da904e029546@xs4all.nl>
Date: Wed, 7 Aug 2019 10:51:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190807013340.9706-11-jhubbard@nvidia.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfMJxwy/aLQOuQbf06fYFW7+YfWl4BADGtFuQE6wXUrTjdGOxgky6uB//ESvSCh+yVYUjsu+P3ALVGvunyB2+4QNbiR9U1sMYhv33IEL6pdyKQiMVj8T1
 W1Qkt4/A8zg1aaKiXQLOb9cAEBeGuXUGjP0ApW7QHZ9+dJcj1rZJOG9kuRWyqdkLdl0Xfd+YU4Sk6qze6hklKEmlvnGPBahaqqNlqtFrPY2VYZgE8xlevbPK
 VYzwfyBnV0qB7sk2HJHbwtjw82ezllVmshbYtU2bjc7wM9hsKDG6EcPPmsd9lrPWAB9FBL1Y3g8hvBHaWnOx4q3kfDEr6Y3kC/4CbXRQ20FpJPAzV81+yAGi
 +cKudbAsX3yt4NQHLMq6NA6K0kBILjc1co+39hFkrrZIcUvJwiKdy8NMve+H6E2GJnEUUv4nGFbjKuVZLLH5y+b+1vAe1RnVhiytR5yxpsF6hz0tRaR6dO/m
 bKPKNqsFsYXDJ5W59C6b3zicjNWHQZiEn7R8u8OkVB9sGerU7xu4rh8uGzZcq6amwD2COMghZJgTrNiun/ifaDQhmzzN53FDOAKM+vszwSUJENplETndDo8y
 lmjjtBHkM72XNJj8RdBdJI0SZn59/rf//zMIHHt6NgU9mNPP3mXofWS+FI78JEBQKLhYLHJa0ha02bP8S2wsCqhiBYGCYfLM5YjnglwHdz5MRKNNPyE0/oCr
 dZ1pq2UTafijHXzLpcISRXLWw9AZnmu/wF9aLzcClow1YFgj8I4CVeEQWdBw+L0MQjl3rEanK6AEfKDCQJnJLHrgYCJZzK8lNhtogle+zBwwTVUbelovesg0
 2Z/LL+E2WfZzXhib9FscV/8Rh9ToBgNbNMhdUU+hlXoQnZWmFz4spOz6uc44jjnJMhTqUTTg5hrVWn9mTUsqOLeTtpY8kW/K2cuWdgF0wrxh68Tha0mbWKIT
 h1eKpvM3yCzq6DBvt+4fyEiX9NjhFQCa7MNabjtWGhlXyk0ZjWF4ffIi9wV7oklEl1VYZUg79U6dELOAAE9vul6NRqDojlMJCqNaHjnuq3fjMxzEn5uV49mz
 FPD7znLfhbE8FWiYTDTLLH+F8vVBTzJTBgpIxygp14Fz2rP8/IvLLQTaYZiAs1yls952pasjas0Q53pSxIQVarur6cT2MqxBbc5Dkh7+Kfq7Y91uNNAg04iu
 d3+RJ+RCE2l1cbWqQWuXhu2j3C3rQr6dROpJhXRRXQP1J97AvtdCiS7dL9s6gULkooJ1lyTBk0aSFxIoqVYcIP0df/i5MmVLM4jFetRz5G+ThUJC0Gc1KTni
 J8I2ou/BC1bOXOJ9lSOzAqFgDoYHvEZlRb2SvXzzXkDYqMgFYolGY5VKp9uCTVWd2PQmaBlbu1lHchM+NnqdfZ7YxkxIhSoqPdSqtG27MX0XBSfBp4v/ADsP
 H7xofpTtcDVeVERyWqD+q5UMM2Wpkx8uIf59scuWLYExFj2E6FLh/6DxVIE2D4OhS9udVr+503DGAmvegA+vJlyXKbNabKFcW5bmXYY95PEPyy1wNsxvcmw6
 BPLri27Pq99nmIRm69PM0/43YEDR6U4lfeDpNuOtu7XhL7tzHXBogR/ytIhLuavtudk3kQ1Nk50AAQdwvvIdGe/4
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
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, ceph-devel@vger.kernel.org,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, John Hubbard <jhubbard@nvidia.com>,
 intel-gfx@lists.freedesktop.org, linux-block@vger.kernel.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 Andy Walls <awalls@md.metrocast.net>, netdev@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, linux-xfs@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 8/7/19 3:33 AM, john.hubbard@gmail.com wrote:
> From: John Hubbard <jhubbard@nvidia.com>
> 
> For pages that were retained via get_user_pages*(), release those pages
> via the new put_user_page*() routines, instead of via put_page() or
> release_pages().
> 
> This is part a tree-wide conversion, as described in commit fc1d8e7cca2d
> ("mm: introduce put_user_page*(), placeholder versions").
> 
> Cc: Andy Walls <awalls@md.metrocast.net>
> Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
> Cc: linux-media@vger.kernel.org
> Signed-off-by: John Hubbard <jhubbard@nvidia.com>

Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>

Regards,

	Hans

> ---
>  drivers/media/pci/ivtv/ivtv-udma.c | 14 ++++----------
>  drivers/media/pci/ivtv/ivtv-yuv.c  | 11 +++--------
>  2 files changed, 7 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/media/pci/ivtv/ivtv-udma.c b/drivers/media/pci/ivtv/ivtv-udma.c
> index 5f8883031c9c..7c7f33c2412b 100644
> --- a/drivers/media/pci/ivtv/ivtv-udma.c
> +++ b/drivers/media/pci/ivtv/ivtv-udma.c
> @@ -92,7 +92,7 @@ int ivtv_udma_setup(struct ivtv *itv, unsigned long ivtv_dest_addr,
>  {
>  	struct ivtv_dma_page_info user_dma;
>  	struct ivtv_user_dma *dma = &itv->udma;
> -	int i, err;
> +	int err;
>  
>  	IVTV_DEBUG_DMA("ivtv_udma_setup, dst: 0x%08x\n", (unsigned int)ivtv_dest_addr);
>  
> @@ -119,8 +119,7 @@ int ivtv_udma_setup(struct ivtv *itv, unsigned long ivtv_dest_addr,
>  		IVTV_DEBUG_WARN("failed to map user pages, returned %d instead of %d\n",
>  			   err, user_dma.page_count);
>  		if (err >= 0) {
> -			for (i = 0; i < err; i++)
> -				put_page(dma->map[i]);
> +			put_user_pages(dma->map, err);
>  			return -EINVAL;
>  		}
>  		return err;
> @@ -130,9 +129,7 @@ int ivtv_udma_setup(struct ivtv *itv, unsigned long ivtv_dest_addr,
>  
>  	/* Fill SG List with new values */
>  	if (ivtv_udma_fill_sg_list(dma, &user_dma, 0) < 0) {
> -		for (i = 0; i < dma->page_count; i++) {
> -			put_page(dma->map[i]);
> -		}
> +		put_user_pages(dma->map, dma->page_count);
>  		dma->page_count = 0;
>  		return -ENOMEM;
>  	}
> @@ -153,7 +150,6 @@ int ivtv_udma_setup(struct ivtv *itv, unsigned long ivtv_dest_addr,
>  void ivtv_udma_unmap(struct ivtv *itv)
>  {
>  	struct ivtv_user_dma *dma = &itv->udma;
> -	int i;
>  
>  	IVTV_DEBUG_INFO("ivtv_unmap_user_dma\n");
>  
> @@ -170,9 +166,7 @@ void ivtv_udma_unmap(struct ivtv *itv)
>  	ivtv_udma_sync_for_cpu(itv);
>  
>  	/* Release User Pages */
> -	for (i = 0; i < dma->page_count; i++) {
> -		put_page(dma->map[i]);
> -	}
> +	put_user_pages(dma->map, dma->page_count);
>  	dma->page_count = 0;
>  }
>  
> diff --git a/drivers/media/pci/ivtv/ivtv-yuv.c b/drivers/media/pci/ivtv/ivtv-yuv.c
> index cd2fe2d444c0..2c61a11d391d 100644
> --- a/drivers/media/pci/ivtv/ivtv-yuv.c
> +++ b/drivers/media/pci/ivtv/ivtv-yuv.c
> @@ -30,7 +30,6 @@ static int ivtv_yuv_prep_user_dma(struct ivtv *itv, struct ivtv_user_dma *dma,
>  	struct yuv_playback_info *yi = &itv->yuv_info;
>  	u8 frame = yi->draw_frame;
>  	struct yuv_frame_info *f = &yi->new_frame_info[frame];
> -	int i;
>  	int y_pages, uv_pages;
>  	unsigned long y_buffer_offset, uv_buffer_offset;
>  	int y_decode_height, uv_decode_height, y_size;
> @@ -81,8 +80,7 @@ static int ivtv_yuv_prep_user_dma(struct ivtv *itv, struct ivtv_user_dma *dma,
>  				 uv_pages, uv_dma.page_count);
>  
>  			if (uv_pages >= 0) {
> -				for (i = 0; i < uv_pages; i++)
> -					put_page(dma->map[y_pages + i]);
> +				put_user_pages(&dma->map[y_pages], uv_pages);
>  				rc = -EFAULT;
>  			} else {
>  				rc = uv_pages;
> @@ -93,8 +91,7 @@ static int ivtv_yuv_prep_user_dma(struct ivtv *itv, struct ivtv_user_dma *dma,
>  				 y_pages, y_dma.page_count);
>  		}
>  		if (y_pages >= 0) {
> -			for (i = 0; i < y_pages; i++)
> -				put_page(dma->map[i]);
> +			put_user_pages(dma->map, y_pages);
>  			/*
>  			 * Inherit the -EFAULT from rc's
>  			 * initialization, but allow it to be
> @@ -112,9 +109,7 @@ static int ivtv_yuv_prep_user_dma(struct ivtv *itv, struct ivtv_user_dma *dma,
>  	/* Fill & map SG List */
>  	if (ivtv_udma_fill_sg_list (dma, &uv_dma, ivtv_udma_fill_sg_list (dma, &y_dma, 0)) < 0) {
>  		IVTV_DEBUG_WARN("could not allocate bounce buffers for highmem userspace buffers\n");
> -		for (i = 0; i < dma->page_count; i++) {
> -			put_page(dma->map[i]);
> -		}
> +		put_user_pages(dma->map, dma->page_count);
>  		dma->page_count = 0;
>  		return -ENOMEM;
>  	}
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
