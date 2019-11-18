Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D6B1007BC
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Nov 2019 15:56:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9F87885EC4;
	Mon, 18 Nov 2019 14:56:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u-uaAlVmdgvy; Mon, 18 Nov 2019 14:56:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5829D85CBC;
	Mon, 18 Nov 2019 14:56:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D73331BF314
 for <devel@linuxdriverproject.org>; Mon, 18 Nov 2019 14:56:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D442885CBC
 for <devel@linuxdriverproject.org>; Mon, 18 Nov 2019 14:56:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rj5euMpco0-6 for <devel@linuxdriverproject.org>;
 Mon, 18 Nov 2019 14:56:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C6CB685CAA
 for <devel@driverdev.osuosl.org>; Mon, 18 Nov 2019 14:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574088961;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Czfe8LxXhKNlOMEGZ0/2HSu9m2hQVtxcd/xFSnKoAZU=;
 b=VehsW3S2fbBX1HCtvSfjNzpM0FIPcQ1sSL6zS/gGkg6v4wSy7hWVVLVeTb90e3hSwe6w8w
 44ALHPeip+GYdkWRdc/1mEbUO6nfQrA1YwWhduY4m5WM9EplyXlHAnp8tnVD8zcxgOPTmn
 OMWHfQfijvl3pNKIk3XHQclpt05wsUQ=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-266-5-d65MoyOGaj7ZeqIJZIsQ-1; Mon, 18 Nov 2019 09:55:58 -0500
Received: by mail-qk1-f197.google.com with SMTP id c4so11626214qkl.6
 for <devel@driverdev.osuosl.org>; Mon, 18 Nov 2019 06:55:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9XWpSHAGS/LkOq4pxWl24kYZw1xJNm2K16IYOEgWWcU=;
 b=epjPxfwOArbGbPG6kg5XPuDb/f6EoUTJwPysY9SPx2fGYhNYp2NIvviF6hoBuYl5gW
 ZJFpElANzjtQvRYztXDiNkUMAsPayYKfCSEWUkDN7ZRW8c9Bp4bWDghlmXulvPFRWgUm
 5jV4nzC8o+SE77IiGtBYg6BY2YZm3d0WcmtjGC3hkmJs0e6Aj6hncSEGdRx0pOliTSqd
 boALgkyZ5M9X43ibp87gsbaXjE9f5Z37IVJKD58Vy8pO/HWMHapQqBinDf5a/K6sAVe/
 zh2FnPGJOJcpNX79Mkm7pbsxISlWixq2MIyhfEieFAlpNx3FfYMRZDQEW9+8IAQt5okX
 8tQg==
X-Gm-Message-State: APjAAAWYJwBAjyxUK/8R0FTh73h+9wxSpAFJ7CYGdyeCTRclndrb/3PD
 xfPQRCXy9iZW+gOVrTIIgrF3/gTokD5ogGGmQPid+KA8bTeaY8cNlgsmkVEtWjMhiC8yyANa8qj
 4WP9TD3f87tLrQyF3AJeEnw==
X-Received: by 2002:aed:22b7:: with SMTP id p52mr27346898qtc.289.1574088957750; 
 Mon, 18 Nov 2019 06:55:57 -0800 (PST)
X-Google-Smtp-Source: APXvYqwQ2zLtsNPjhGQw+qC/tNWB8pkCVzPjy7p8sJe/UFhjlSYcxa7agBgFfSggwdfEjfuZQ4Zybw==
X-Received: by 2002:aed:22b7:: with SMTP id p52mr27346863qtc.289.1574088957498; 
 Mon, 18 Nov 2019 06:55:57 -0800 (PST)
Received: from [192.168.1.157] (pool-96-235-39-235.pitbpa.fios.verizon.net.
 [96.235.39.235])
 by smtp.gmail.com with ESMTPSA id a2sm8530549qkl.71.2019.11.18.06.55.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 Nov 2019 06:55:56 -0800 (PST)
Subject: Re: [PATCH 04/15] staging/android/ion: delete dma_buf->kmap/unmap
 implemenation
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
 <20191118103536.17675-5-daniel.vetter@ffwll.ch>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <02ba16cd-ec38-d503-ca8a-c848f433f6b8@redhat.com>
Date: Mon, 18 Nov 2019 09:55:55 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191118103536.17675-5-daniel.vetter@ffwll.ch>
Content-Language: en-US
X-MC-Unique: 5-d65MoyOGaj7ZeqIJZIsQ-1
X-Mimecast-Spam-Score: 0
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
Cc: devel@driverdev.osuosl.org, Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, Sumit Semwal <sumit.semwal@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 11/18/19 5:35 AM, Daniel Vetter wrote:
> There's no callers in-tree anymore.
> 
> For merging probably best to stuff this into drm-misc, since that's
> where the dma-buf heaps will land too. And the resulting conflict
> hopefully ensures that dma-buf heaps wont have a new ->kmap/unmap
> implemenation.
> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Laura Abbott <labbott@redhat.com>
> Cc: Sumit Semwal <sumit.semwal@linaro.org>
> Cc: devel@driverdev.osuosl.org
> Cc: linaro-mm-sig@lists.linaro.org
> ---
>   drivers/staging/android/ion/ion.c | 14 --------------
>   1 file changed, 14 deletions(-)
> 
> diff --git a/drivers/staging/android/ion/ion.c b/drivers/staging/android/ion/ion.c
> index e6b1ca141b93..bb4ededc1150 100644
> --- a/drivers/staging/android/ion/ion.c
> +++ b/drivers/staging/android/ion/ion.c
> @@ -274,18 +274,6 @@ static void ion_dma_buf_release(struct dma_buf *dmabuf)
>   	_ion_buffer_destroy(buffer);
>   }
>   
> -static void *ion_dma_buf_kmap(struct dma_buf *dmabuf, unsigned long offset)
> -{
> -	struct ion_buffer *buffer = dmabuf->priv;
> -
> -	return buffer->vaddr + offset * PAGE_SIZE;
> -}
> -
> -static void ion_dma_buf_kunmap(struct dma_buf *dmabuf, unsigned long offset,
> -			       void *ptr)
> -{
> -}
> -
>   static int ion_dma_buf_begin_cpu_access(struct dma_buf *dmabuf,
>   					enum dma_data_direction direction)
>   {
> @@ -349,8 +337,6 @@ static const struct dma_buf_ops dma_buf_ops = {
>   	.detach = ion_dma_buf_detatch,
>   	.begin_cpu_access = ion_dma_buf_begin_cpu_access,
>   	.end_cpu_access = ion_dma_buf_end_cpu_access,
> -	.map = ion_dma_buf_kmap,
> -	.unmap = ion_dma_buf_kunmap,
>   };
>   
>   static int ion_alloc(size_t len, unsigned int heap_id_mask, unsigned int flags)
> 

Acked-by: Laura Abbott <labbott@redhat.com>

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
