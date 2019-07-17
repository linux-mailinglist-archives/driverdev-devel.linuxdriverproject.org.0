Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E45B46BECC
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Jul 2019 17:08:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2B11F863AC;
	Wed, 17 Jul 2019 15:08:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ErgT6gUk6OlI; Wed, 17 Jul 2019 15:08:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DBA36863E3;
	Wed, 17 Jul 2019 15:08:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E5F5D1BF57C
 for <devel@linuxdriverproject.org>; Wed, 17 Jul 2019 15:07:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DB9D0221D5
 for <devel@linuxdriverproject.org>; Wed, 17 Jul 2019 15:07:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tAXVDznJpqlR for <devel@linuxdriverproject.org>;
 Wed, 17 Jul 2019 15:07:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by silver.osuosl.org (Postfix) with ESMTPS id D2D0D1FEDF
 for <devel@driverdev.osuosl.org>; Wed, 17 Jul 2019 15:07:57 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id 44so23618857qtg.11
 for <devel@driverdev.osuosl.org>; Wed, 17 Jul 2019 08:07:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZKjB19WpZnjz3jo720PWZOtMKEqDcxAGDRdZ6CCSf0s=;
 b=HaVfyDNQsbyWatLlKu8KL3dHQSL3VW6stdv6xkA2j7MKk4P3Bh7+bTTFpFb0dGhpPz
 QFLa1OcmyQLogBNfl+TdNr5uXNtHUysIlNiltpW37WLV1VWauyG1ZAgXuIfEQ8NL9Hn1
 H5FX25Q+dHFO5lAyKhrM4/AD3pqIEPSbciWYqrtH6zlbvQUMW6i/gcORW4H6qL21aHkT
 85Z+B/4n3fQuqjzjYYkW618O2YsXJGu6tjlCYiupvOpzkhinH+KXBEiuOgnnaJ46/GkN
 RcBInKRUtwmzdsqsTCqcn/LB7zGmXWyifhygyp6B6EKi4zEu8c093vynr7xmRxEMd7jQ
 uVjg==
X-Gm-Message-State: APjAAAWA0Ztv/khGAlmu6OZoe8MXmxvkIkUzYES4UQgy8Oc36L8cEWtY
 xYrjQfx7zyhDtz4Kd5K1wRbzeA==
X-Google-Smtp-Source: APXvYqzNmWG7Hd9yodNjEs32oG/e5XZor3q9i7E5uaM8LrpeOf9mvzsXb3xCrYLcCHrTNpUHGwPHAg==
X-Received: by 2002:ac8:31d6:: with SMTP id i22mr29197459qte.338.1563376076783; 
 Wed, 17 Jul 2019 08:07:56 -0700 (PDT)
Received: from [10.193.21.226] ([66.187.232.66])
 by smtp.gmail.com with ESMTPSA id n3sm10364744qkk.54.2019.07.17.08.07.52
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 17 Jul 2019 08:07:55 -0700 (PDT)
Subject: Re: [PATCH] staging: android: ion: Remove unused rbtree for ion_buffer
To: Lecopzer Chen <lecopzer.chen@mediatek.com>, linux-kernel@vger.kernel.org
References: <20190712084717.12441-1-lecopzer.chen@mediatek.com>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <52dc3872-3d08-1d0d-6d8f-10223bc186bc@redhat.com>
Date: Wed, 17 Jul 2019 11:07:51 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190712084717.12441-1-lecopzer.chen@mediatek.com>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 YJ Chiang <yj.chiang@mediatek.com>, arve@android.com,
 dri-devel@lists.freedesktop.org, riandrews@android.com,
 sumit.semwal@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 7/12/19 4:47 AM, Lecopzer Chen wrote:
> ion_buffer_add() insert ion_buffer into rbtree every time creating
> an ion_buffer but never use it after ION reworking.
> Also, buffer_lock protects only rbtree operation, remove it together.
> 
> Signed-off-by: Lecopzer Chen <lecopzer.chen@mediatek.com>
> Cc: YJ Chiang <yj.chiang@mediatek.com>
> Cc: Lecopzer Chen <lecopzer.chen@mediatek.com>
> ---
>   drivers/staging/android/ion/ion.c | 36 -------------------------------
>   drivers/staging/android/ion/ion.h | 10 +--------
>   2 files changed, 1 insertion(+), 45 deletions(-)
> 
> diff --git a/drivers/staging/android/ion/ion.c b/drivers/staging/android/ion/ion.c
> index 92c2914239e3..e6b1ca141b93 100644
> --- a/drivers/staging/android/ion/ion.c
> +++ b/drivers/staging/android/ion/ion.c
> @@ -29,32 +29,6 @@
>   static struct ion_device *internal_dev;
>   static int heap_id;
>   
> -/* this function should only be called while dev->lock is held */
> -static void ion_buffer_add(struct ion_device *dev,
> -			   struct ion_buffer *buffer)
> -{
> -	struct rb_node **p = &dev->buffers.rb_node;
> -	struct rb_node *parent = NULL;
> -	struct ion_buffer *entry;
> -
> -	while (*p) {
> -		parent = *p;
> -		entry = rb_entry(parent, struct ion_buffer, node);
> -
> -		if (buffer < entry) {
> -			p = &(*p)->rb_left;
> -		} else if (buffer > entry) {
> -			p = &(*p)->rb_right;
> -		} else {
> -			pr_err("%s: buffer already found.", __func__);
> -			BUG();
> -		}
> -	}
> -
> -	rb_link_node(&buffer->node, parent, p);
> -	rb_insert_color(&buffer->node, &dev->buffers);
> -}
> -
>   /* this function should only be called while dev->lock is held */
>   static struct ion_buffer *ion_buffer_create(struct ion_heap *heap,
>   					    struct ion_device *dev,
> @@ -100,9 +74,6 @@ static struct ion_buffer *ion_buffer_create(struct ion_heap *heap,
>   
>   	INIT_LIST_HEAD(&buffer->attachments);
>   	mutex_init(&buffer->lock);
> -	mutex_lock(&dev->buffer_lock);
> -	ion_buffer_add(dev, buffer);
> -	mutex_unlock(&dev->buffer_lock);
>   	return buffer;
>   
>   err1:
> @@ -131,11 +102,6 @@ void ion_buffer_destroy(struct ion_buffer *buffer)
>   static void _ion_buffer_destroy(struct ion_buffer *buffer)
>   {
>   	struct ion_heap *heap = buffer->heap;
> -	struct ion_device *dev = buffer->dev;
> -
> -	mutex_lock(&dev->buffer_lock);
> -	rb_erase(&buffer->node, &dev->buffers);
> -	mutex_unlock(&dev->buffer_lock);
>   
>   	if (heap->flags & ION_HEAP_FLAG_DEFER_FREE)
>   		ion_heap_freelist_add(heap, buffer);
> @@ -694,8 +660,6 @@ static int ion_device_create(void)
>   	}
>   
>   	idev->debug_root = debugfs_create_dir("ion", NULL);
> -	idev->buffers = RB_ROOT;
> -	mutex_init(&idev->buffer_lock);
>   	init_rwsem(&idev->lock);
>   	plist_head_init(&idev->heaps);
>   	internal_dev = idev;
> diff --git a/drivers/staging/android/ion/ion.h b/drivers/staging/android/ion/ion.h
> index e291299fd35f..74914a266e25 100644
> --- a/drivers/staging/android/ion/ion.h
> +++ b/drivers/staging/android/ion/ion.h
> @@ -23,7 +23,6 @@
>   
>   /**
>    * struct ion_buffer - metadata for a particular buffer
> - * @node:		node in the ion_device buffers tree
>    * @list:		element in list of deferred freeable buffers
>    * @dev:		back pointer to the ion_device
>    * @heap:		back pointer to the heap the buffer came from
> @@ -39,10 +38,7 @@
>    * @attachments:	list of devices attached to this buffer
>    */
>   struct ion_buffer {
> -	union {
> -		struct rb_node node;
> -		struct list_head list;
> -	};
> +	struct list_head list;
>   	struct ion_device *dev;
>   	struct ion_heap *heap;
>   	unsigned long flags;
> @@ -61,14 +57,10 @@ void ion_buffer_destroy(struct ion_buffer *buffer);
>   /**
>    * struct ion_device - the metadata of the ion device node
>    * @dev:		the actual misc device
> - * @buffers:		an rb tree of all the existing buffers
> - * @buffer_lock:	lock protecting the tree of buffers
>    * @lock:		rwsem protecting the tree of heaps and clients
>    */
>   struct ion_device {
>   	struct miscdevice dev;
> -	struct rb_root buffers;
> -	struct mutex buffer_lock;
>   	struct rw_semaphore lock;
>   	struct plist_head heaps;
>   	struct dentry *debug_root;
> 

Acked-by: Laura Abbott <labbott@redhat.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
