Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E419D2DF
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Aug 2019 17:36:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4497F2051C;
	Mon, 26 Aug 2019 15:36:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RYXbY-K34Rm7; Mon, 26 Aug 2019 15:36:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7E47A2075B;
	Mon, 26 Aug 2019 15:36:22 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D946C1BF3A8
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 15:36:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D2D20860C5
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 15:36:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eGs6g1w53-wA
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 15:36:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3DF6D85F98
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 15:36:20 +0000 (UTC)
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6C4E07BDA0
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 15:36:19 +0000 (UTC)
Received: by mail-qt1-f198.google.com with SMTP id b9so17859967qti.20
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 08:36:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:cc:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NsPv3lFDycYPFFrAHLqtSyRg0z/C2YwzNfJ0P1dX2gc=;
 b=cqpGVLf4rBfdkv9aUh+ad8egU8aZrS0rwNsFMsKpDy2VqDk4AjfMBuEYIkGQhr/OXt
 QyhdTT26sydKENuw5SOWZ8lbxRuRxRKPJ9n4/fVoIZYmL/j4rsIpqx314x7Cxr9XT0Xq
 vrexVmGLXWRNv+MXmFPWJFaU85sLt4unTAMhotZDtyRYY0mYEBPAwi4oI59aPqsyqyZs
 OmwwtfuA+VCX622F3eGJukiKvTuhf8wvz9opX/oMQvgTQaL+oY/rr7Rf7ce9lDaU5EYn
 RxeX2BZPFxPTxaIpBFThHC7rN9Wf3y38XeXM4YfrweD4YeuMLHS/nNS2/x/8WKwEzSUO
 pRsg==
X-Gm-Message-State: APjAAAWM/AIzFWU6eAVkLfDgbOPnf0rOSt1dRVYwSkSom8iyUxvd04L4
 //vUOhU3nkqGuhsVLarlrzW3tCTIkpkLiOQOgly4XqwYXiWvs265Jt3tboTUN2XFzG3Db8BzgxH
 PgSj8WylL6jFcn+UfZKoFztIJeeZk6+KZ5mNYCw==
X-Received: by 2002:a05:620a:11a6:: with SMTP id
 c6mr17128396qkk.275.1566833778511; 
 Mon, 26 Aug 2019 08:36:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyqa064arUdcae/2FC4w7yM04/VoV1TKXPbjpuvY+se19QxrQ51ZPUVy6e3Y1o9m9O9401D0A==
X-Received: by 2002:a05:620a:11a6:: with SMTP id
 c6mr17128376qkk.275.1566833778283; 
 Mon, 26 Aug 2019 08:36:18 -0700 (PDT)
Received: from [192.168.1.157] (pool-96-235-39-235.pitbpa.fios.verizon.net.
 [96.235.39.235])
 by smtp.gmail.com with ESMTPSA id o33sm7159369qtd.72.2019.08.26.08.36.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 26 Aug 2019 08:36:17 -0700 (PDT)
Subject: Re: [PATCH] staging: android: ion: cma heap: Limit size of allocated
 buffer
To: Alexey Skidanov <alexey.skidanov@intel.com>,
 driverdev-devel@linuxdriverproject.org
References: <1566613683-1872-1-git-send-email-alexey.skidanov@intel.com>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <af46d441-9648-8508-3989-f19a70f73a26@redhat.com>
Date: Mon, 26 Aug 2019 11:36:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1566613683-1872-1-git-send-email-alexey.skidanov@intel.com>
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
Cc: John Stultz <john.stultz@linaro.org>,
 Sumit Semwal <sumit.semwal@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 8/23/19 10:28 PM, Alexey Skidanov wrote:
> In ion_cma_heap, the allocated buffer is represented by a single
> struct scatterlist instance. The length field of this struct is
> 32 bit, hence the maximal size of requested buffer should be
> less than 4GB.
> 
> The len paramer of the allocation function is 64 bit (on 64 bit systems).
> Hence the requested size might be greater than 4GB and in this case
> the field length of the struct scatterlist is initialized incorrectly.
> 
> To fix this, we check that requested size may fit into
> the field length of the struct scatterlist
> 

Is this a real issue that's actually possible to hit? Allocating
more than a 4GB region of CMA seems ill advised and likely to
throw off all the accounting.

> Signed-off-by: Alexey Skidanov <alexey.skidanov@intel.com>
> ---
>   drivers/staging/android/ion/ion.h          | 5 +++++
>   drivers/staging/android/ion/ion_cma_heap.c | 3 +++
>   2 files changed, 8 insertions(+)
> 
> diff --git a/drivers/staging/android/ion/ion.h b/drivers/staging/android/ion/ion.h
> index e291299..9dd7e20 100644
> --- a/drivers/staging/android/ion/ion.h
> +++ b/drivers/staging/android/ion/ion.h
> @@ -21,6 +21,11 @@
>   
>   #include "../uapi/ion.h"
>   
> +#define MAX_SCATTERLIST_LEN ({\
> +		typeof(((struct scatterlist *)0)->length) v;\
> +		v = -1;\
> +	})
> +
>   /**
>    * struct ion_buffer - metadata for a particular buffer
>    * @node:		node in the ion_device buffers tree
> diff --git a/drivers/staging/android/ion/ion_cma_heap.c b/drivers/staging/android/ion/ion_cma_heap.c
> index bf65e67..d069719 100644
> --- a/drivers/staging/android/ion/ion_cma_heap.c
> +++ b/drivers/staging/android/ion/ion_cma_heap.c
> @@ -36,6 +36,9 @@ static int ion_cma_allocate(struct ion_heap *heap, struct ion_buffer *buffer,
>   	unsigned long align = get_order(size);
>   	int ret;
>   
> +	if (size > MAX_SCATTERLIST_LEN)
> +		return -EINVAL;
> +
>   	if (align > CONFIG_CMA_ALIGNMENT)
>   		align = CONFIG_CMA_ALIGNMENT;
>   
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
