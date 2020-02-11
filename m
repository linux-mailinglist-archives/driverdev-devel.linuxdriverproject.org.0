Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8AA5159C00
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 23:16:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 983F887AAE;
	Tue, 11 Feb 2020 22:16:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SmB4y7383LFG; Tue, 11 Feb 2020 22:16:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6D276879CD;
	Tue, 11 Feb 2020 22:16:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 801741BF82D
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 22:16:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7A00886B94
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 22:16:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8YN9eQUwVjOe for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 22:16:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f196.google.com (mail-il1-f196.google.com
 [209.85.166.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 93C3586B48
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 22:16:10 +0000 (UTC)
Received: by mail-il1-f196.google.com with SMTP id g12so4894909ild.2
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 14:16:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=H6KlLlplsizPpKg7w1wwWFh0NtfbnywsiGoeM+An45U=;
 b=tmF0Qn78uukVn/7m3JgznZh14E1BbLbdzDeNuplNjnXZHkeVmluNenRKCBDlMWzGWi
 zNw7wHXcWOj8goeYAeJhTbN/mf9EvwzuPIUc1D2mqdyRke3Pi5c5pLUN8RJnFeqyyVHI
 LQMghKWEwzQypBfuBs/CvLlfxDGHGNOFqODbQg/1+PGvgZHvFlFXE5EGuQnJPFlGCyty
 Y8N5XVoig8JgX8mtJnb1HPFWka4M18YNoFbKXlmQAwoqo6x8/MUz0OmdQv6kBnZcHm5d
 HcKAAh+DggxrZm+g0jqSG7O1B8jb38CatG/7m+PxfZLBdC/j58KNBJx30cWdxtOeZu4u
 BTuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=H6KlLlplsizPpKg7w1wwWFh0NtfbnywsiGoeM+An45U=;
 b=ZfZLqOBHFHBSj9IwSGIMh/6wu6xA+kJkSZxbHyqSEsGMu5GTR2XNZIoeDmEUVHHyg1
 qCPpBjByhBuYNPZRizubJcH3r34rb+WQjbZ2/d/bnqw/Mbv7oISTnWAdYZnp9HpmpQK/
 Gjy78M1PyLrppolHxQlaGPH0I/YocOJBU8NIRyqmj8N2P4R9wGPJFcdL1hrRj49/jYtP
 dlbClUqOq+2L1qH13UsW4Tv5u4f/9jdirhi5gqH7rd2Gdt1zIwrS1CfhFQ9ZUA/z/jRl
 d2NYcwcgdRBfemu7QOdjksKoChe7U1IPOAXT1dtzVRVeVrwS/CeIziBLYFvAwn5QC7C3
 IOlg==
X-Gm-Message-State: APjAAAWZcVQSLGF93aWVsGD6X38h0XGeGctsHBl5vHiI6NrF42z7NZ+M
 D+M/DfnWF7OuAZ1RxxbPghJN0g==
X-Google-Smtp-Source: APXvYqzTqJNXmNj4lMWwdLNrDnJkdwd3aVpL7i2tk1tOW88coogfvaC/JMWvkpyM8dBzuY4epaT2ZA==
X-Received: by 2002:a05:6e02:8eb:: with SMTP id
 n11mr8102929ilt.26.1581459369847; 
 Tue, 11 Feb 2020 14:16:09 -0800 (PST)
Received: from [172.22.22.10] (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.googlemail.com with ESMTPSA id s10sm1376816iop.36.2020.02.11.14.16.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 11 Feb 2020 14:16:09 -0800 (PST)
Subject: Re: [greybus-dev] [PATCH] staging: greybus: Replace zero-length array
 with flexible-array member
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20200211211219.GA673@embeddedor>
From: Alex Elder <elder@linaro.org>
Message-ID: <e465ca6e-ed9f-4340-9f4c-104f9b6acb74@linaro.org>
Date: Tue, 11 Feb 2020 16:15:35 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200211211219.GA673@embeddedor>
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2/11/20 3:12 PM, Gustavo A. R. Silva wrote:
> The current codebase makes use of the zero-length array language
> extension to the C90 standard, but the preferred mechanism to declare
> variable-length types such as these ones is a flexible array member[1][2],
> introduced in C99:
> 
> struct foo {
>         int stuff;
>         struct boo array[];
> };
> 
> By making use of the mechanism above, we will get a compiler warning
> in case the flexible array does not occur last in the structure, which
> will help us prevent some kind of undefined behavior bugs from being
> inadvertenly introduced[3] to the codebase from now on.
> 
> This issue was found with the help of Coccinelle.
> 
> [1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
> [2] https://github.com/KSPP/linux/issues/21
> [3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")
> 
> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
> ---
>  drivers/staging/greybus/raw.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/raw.c b/drivers/staging/greybus/raw.c
> index 838acbe84ca0..2b301b2aa107 100644
> --- a/drivers/staging/greybus/raw.c
> +++ b/drivers/staging/greybus/raw.c
> @@ -30,7 +30,7 @@ struct gb_raw {
>  struct raw_data {
>  	struct list_head entry;
>  	u32 len;
> -	u8 data[0];
> +	u8 data[];
>  };
>  
>  static struct class *raw_class;
> 

Does the kamlloc() call in receive_data() have any problems
with the sizeof(*raw_data) passed as its argument?

I'm not entirely sure what sizeof(struct-with-flexible-array-member)
produces.

					-Alex
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
