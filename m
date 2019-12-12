Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E2811CB54
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Dec 2019 11:54:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5104188728;
	Thu, 12 Dec 2019 10:54:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id er7r0Vx1C1nj; Thu, 12 Dec 2019 10:54:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 81D21887CC;
	Thu, 12 Dec 2019 10:54:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D98901BF3B0
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 10:54:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C99F124368
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 10:54:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YGBJ0iMfwMX1 for <devel@linuxdriverproject.org>;
 Thu, 12 Dec 2019 10:54:05 +0000 (UTC)
X-Greylist: delayed 00:08:01 by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 96F6E204C7
 for <devel@driverdev.osuosl.org>; Thu, 12 Dec 2019 10:54:05 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id 9so1325982lfq.10
 for <devel@driverdev.osuosl.org>; Thu, 12 Dec 2019 02:54:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=jvqQ2LSPQakFyO6vrj7XjHi+q/qAmMP0jyqzyEsZ6cY=;
 b=fAJUxPKa6DO3DxY2/J9PLqhfYlg/da8eDTz/vxL8gOoD6z21vggxxcj96lO60KKOo8
 p0koKVNcaIOdBdVMeu+QAuEIAUfdTrzi0LWNyykx9hQxI6BmIDydNHVZ9K+Hr9crQIWx
 1WIQiO4PvtcQhtih196GjeyVAvG28GxF0e+IAs1xreoZlIl5BdfEzXCGZe6VRQK/3y32
 c4UBiESyQ5Yfo/pvMuzcBCOOk+TRBprA0w8q9ywu+MEc/jbeYhb9A6rcn2gyplg1R/4M
 BLzvWfsPEG+qXB5Gw7IibuCyqUslGbXLtumbv9KvBuFi0Mznx1tC+CuaPMKxZ2a7UZm8
 hJFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jvqQ2LSPQakFyO6vrj7XjHi+q/qAmMP0jyqzyEsZ6cY=;
 b=qt6Z14omva4uSaUc2FW3+bwtvQJ5m7oqWsyMIUJvlvNmYGvB34/iI8SIwVv7GySPF2
 coYr2AlrZYG0sywWkT5oycu5UrqutcFAqXwNCeC27GZZu6wc/QqRNbBMAcY+ubfRJIoX
 XGI/lw3FxvtDXRFS6TbISgZVUVWI25tqK/SbgLsC6G4qT0DwDfUURHbnDn4f0GLyfrN+
 E/mZ/Xosi4XM65j0tCmrLz+v8BTKM+gHmb5yGWDMWO/wsq2ppmbKt0Ajeh0u7ZQJO/mz
 C6kPI7AyR6cSuql8YK1XXr14S3uOpdeOgPJtIxwmVSIroblquA08ojxMA7ghnH4k2y3p
 66jA==
X-Gm-Message-State: APjAAAXGh7frLlHD8o4kyVu77Ghq4hQqjuVRzemE2UMFeh9WATpyNy+g
 rRl6qgpTC6WpzZ9jLqFWW/y/nA==
X-Google-Smtp-Source: APXvYqwP+hehehn1jHv/Es8YupV7UnCXZ6dmvNhY+VQdGf477L2UvXNh73dt+c8DyKqvqavUkp3eUA==
X-Received: by 2002:a19:f519:: with SMTP id j25mr5284968lfb.41.1576147562262; 
 Thu, 12 Dec 2019 02:46:02 -0800 (PST)
Received: from ?IPv6:2a00:1fa0:2a7:d365:c8bb:a230:5f6e:8263?
 ([2a00:1fa0:2a7:d365:c8bb:a230:5f6e:8263])
 by smtp.gmail.com with ESMTPSA id z7sm3048827lfa.81.2019.12.12.02.46.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Dec 2019 02:46:01 -0800 (PST)
Subject: Re: [PATCH v2 20/23] staging: qlge: Fix CHECK: usleep_range is
 preferred over udelay
To: Scott Schafer <schaferjscott@gmail.com>, gregkh@linuxfoundation.org
References: <cover.1576086080.git.schaferjscott@gmail.com>
 <a3f14b13d76102cd4e536152e09517a69ddbe9f9.1576086080.git.schaferjscott@gmail.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <337af773-a1da-0c04-6180-aa3597372522@cogentembedded.com>
Date: Thu, 12 Dec 2019 13:45:57 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <a3f14b13d76102cd4e536152e09517a69ddbe9f9.1576086080.git.schaferjscott@gmail.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, linux-kernel@vger.kernel.org,
 Manish Chopra <manishc@marvell.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello!

On 11.12.2019 21:12, Scott Schafer wrote:

> chage udelay() to usleep_range()

    Change?

> Signed-off-by: Scott Schafer <schaferjscott@gmail.com>
> ---
>   drivers/staging/qlge/qlge_main.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
> index e18aa335c899..9427386e4a1e 100644
> --- a/drivers/staging/qlge/qlge_main.c
> +++ b/drivers/staging/qlge/qlge_main.c
> @@ -147,7 +147,7 @@ int ql_sem_spinlock(struct ql_adapter *qdev, u32 sem_mask)
>   	do {
>   		if (!ql_sem_trylock(qdev, sem_mask))
>   			return 0;
> -		udelay(100);
> +		usleep_range(100, 200);

    I hope you're not in atomic context...

>   	} while (--wait_count);
>   	return -ETIMEDOUT;
>   }

MBR, Sergei
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
