Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F232E68261
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 04:55:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CBD7B875BB;
	Mon, 15 Jul 2019 02:55:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1lQ2gNjLo2n6; Mon, 15 Jul 2019 02:55:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3941C8735E;
	Mon, 15 Jul 2019 02:55:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E0FB51BF41D
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 02:55:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DC93A86322
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 02:55:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CX8MYMuRW8yn for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 02:55:47 +0000 (UTC)
X-Greylist: delayed 00:15:12 by SQLgrey-1.7.6
Received: from mail-vk1-f196.google.com (mail-vk1-f196.google.com
 [209.85.221.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7A2EB862E8
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 02:55:47 +0000 (UTC)
Received: by mail-vk1-f196.google.com with SMTP id o19so3159205vkb.6
 for <devel@driverdev.osuosl.org>; Sun, 14 Jul 2019 19:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=j1D3jAEemUPemgo3Jj5nb6GS6101sWhcpLMgfsoNq8g=;
 b=QrISUnxCSscxlNiF2KqrOgYSELv84+I/OVPUsZDhEuEi4r7R8YUKcUPEfdayuPSfK0
 wrQ3Q089jqbmouyR+NoH07yfRGBgepPs66CHFe5siqBvErBCrBMbICucDPWVzgWos38b
 Wf2Rms1UOmhDfsHeziRBcVVeqhPowRnyQF6ZIirk9sqy61+7brb3XjH5WSXDOqEwMkq3
 q0U1QstYRjrFeTUkIvslQ7dopjLzTMUk5/MTR7wo3HmTm88DIkL2jdeSCkahHTIsS0XU
 2mC5wBJ5eaM50hskzzZTjH7Ed3Xloa++ONtGgIN+sj2f13lAUYZHfj/Zj0wydtFoffX+
 bJXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=j1D3jAEemUPemgo3Jj5nb6GS6101sWhcpLMgfsoNq8g=;
 b=OqN4/vi5JXEO2ZvavdBHhK8MOtjFpwq6tmdvB2yrL8xeDrtdrS5vchf6O1zP6AJP8t
 cw+V7mJNSTvMc5JQKHNwQrkSAjlqln132KDJ58sleJhAFDTZZklpF6x8A2XQvpjNUcFX
 dCi1L9phM35ZLkbitC9WM1LVBLmyExAEZI6frm8boBgsA5KQW1KS6VkPkGRoefJAmx4X
 gFU5moiTIQLs61u3tPzUKv5HIw8L3lOUDWuUgAoe5gw1YmEK08EbdKPwCe4SNAT1QqsR
 Ef1xAqrMbrHTb8hFCMqIYJO0UrA0jfsd7QFinm50qiBjOZXqekLMhd1mFNWGMF2AKRLl
 s3Ag==
X-Gm-Message-State: APjAAAXe4AZwtmHtucPNBHLyv+g1Bj1CzaIN8ATn4bmsO+vu+Sz+DPyq
 lMf8nlDwV3HK29/XJn34UPG43NYj05I=
X-Google-Smtp-Source: APXvYqwy96VWEm0MA4ILQTD2TtjFzmkAMeu1HQIcFyR05bl5hBBOCB7OmlKryt9SnBNgiGdMCiKl3g==
X-Received: by 2002:a63:7a01:: with SMTP id v1mr25024594pgc.310.1563158042768; 
 Sun, 14 Jul 2019 19:34:02 -0700 (PDT)
Received: from [192.168.1.121] (66.29.164.166.static.utbb.net. [66.29.164.166])
 by smtp.gmail.com with ESMTPSA id d129sm16418490pfc.168.2019.07.14.19.33.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 19:34:01 -0700 (PDT)
Subject: Re: [PATCH] mm/gup: Use put_user_page*() instead of put_page*()
To: Bharath Vedartham <linux.bhar@gmail.com>, akpm@linux-foundation.org,
 ira.weiny@intel.com, jhubbard@nvidia.com
References: <1563131456-11488-1-git-send-email-linux.bhar@gmail.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <018ee3d1-e2f0-ca12-9f63-945056c09985@kernel.dk>
Date: Sun, 14 Jul 2019 20:33:57 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1563131456-11488-1-git-send-email-linux.bhar@gmail.com>
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
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>, kvm@vger.kernel.org,
 YueHaibing <yuehaibing@huawei.com>, Alexei Starovoitov <ast@kernel.org>,
 Keith Busch <keith.busch@intel.com>, Max Filippov <jcmvbkbc@gmail.com>,
 devel@driverdev.osuosl.org, Dimitri Sivanich <sivanich@sgi.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-media@vger.kernel.org,
 xdp-newbies@vger.kernel.org, Jesper Dangaard Brouer <hawk@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, linux-block@vger.kernel.org,
 Alexios Zavras <alexios.zavras@intel.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Magnus Karlsson <magnus.karlsson@intel.com>, linux-mm@kvack.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org, bpf@vger.kernel.org,
 Enrico Weigelt <info@metux.net>, "David S. Miller" <davem@davemloft.net>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 7/14/19 1:08 PM, Bharath Vedartham wrote:
> diff --git a/fs/io_uring.c b/fs/io_uring.c
> index 4ef62a4..b4a4549 100644
> --- a/fs/io_uring.c
> +++ b/fs/io_uring.c
> @@ -2694,10 +2694,9 @@ static int io_sqe_buffer_register(struct io_ring_ctx *ctx, void __user *arg,
>   			 * if we did partial map, or found file backed vmas,
>   			 * release any pages we did get
>   			 */
> -			if (pret > 0) {
> -				for (j = 0; j < pret; j++)
> -					put_page(pages[j]);
> -			}
> +			if (pret > 0)
> +				put_user_pages(pages, pret);
> +
>   			if (ctx->account_mem)
>   				io_unaccount_mem(ctx->user, nr_pages);
>   			kvfree(imu->bvec);

You handled just the failure case of the buffer registration, but not
the actual free in io_sqe_buffer_unregister().

-- 
Jens Axboe

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
