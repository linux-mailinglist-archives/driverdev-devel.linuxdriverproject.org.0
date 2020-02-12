Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9D415A271
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Feb 2020 08:55:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C0BE3864A0;
	Wed, 12 Feb 2020 07:55:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4BrOB6JyBwuw; Wed, 12 Feb 2020 07:55:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8532D86497;
	Wed, 12 Feb 2020 07:55:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 21D381BF311
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 07:55:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1DF5C2047B
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 07:55:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2nLoIj3BfuNK for <devel@linuxdriverproject.org>;
 Wed, 12 Feb 2020 07:55:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by silver.osuosl.org (Postfix) with ESMTPS id EF583203F2
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 07:54:59 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id y19so876732lfl.9
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 23:54:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XOeJJO/gHIHj8IPyKogVmbQJ5pI6iqanQ/nqcsZTJg4=;
 b=QF8YyozQ4raYlCX0xF+poZczUNpYBooGRXDGu9CYXEYl3iZ/OEAebn8mRPoS7nvJW3
 unGrTjoS/sfQISCqAQb00Gee+d9eISwuU4nghraI4Utr5Afz+ha61nW60rkzRjfdrzrK
 +TbHlOhP5/Y4l+9HH082fmvTNHd3UOHkyyzOJ7ex/DWGfAibb5Sz+XIcw6NaS1Ye3R5f
 vzsBWZcWHFFtZV9PW409+hOiby9W9BvrWhX47deWnt1DILMH96WQe8JF5NfERoNrw2/G
 aYKRfP/ngaENFOnQjDfmgPiwEzvhiTXih2qqYLqHkGTV0Lr0wE/GmM8oo9fFy/AThUYe
 HH8A==
X-Gm-Message-State: APjAAAXKgj9crQaPN8E4FMyBlMKRlrhJ5vShl9jHKkv94OslXXR4YxrQ
 T4YMY8jNRO7ra/3exxdLF50=
X-Google-Smtp-Source: APXvYqwiqKB4EAN/96Tkd3vj9smH96Nvs43kXzhiz5qG0VLbRhU5S/mNpmL53tNqBKQrPI7aBPWvcw==
X-Received: by 2002:ac2:4c84:: with SMTP id d4mr5909864lfl.64.1581494098087;
 Tue, 11 Feb 2020 23:54:58 -0800 (PST)
Received: from xi.terra (c-12aae455.07-184-6d6c6d4.bbcust.telenor.se.
 [85.228.170.18])
 by smtp.gmail.com with ESMTPSA id x10sm3474024ljd.68.2020.02.11.23.54.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 23:54:57 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@kernel.org>)
 id 1j1mrI-0006TD-3b; Wed, 12 Feb 2020 08:54:56 +0100
Date: Wed, 12 Feb 2020 08:54:56 +0100
From: Johan Hovold <johan@kernel.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH] staging: greybus: Replace zero-length array with
 flexible-array member
Message-ID: <20200212075456.GD4150@localhost>
References: <20200211211219.GA673@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211211219.GA673@embeddedor>
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Johan Hovold <johan@kernel.org>, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 11, 2020 at 03:12:19PM -0600, Gustavo A. R. Silva wrote:
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

Looks like the scripts may need to be updated. You missed at least a
couple of instances:

	$ git grep '\[0\];' drivers/staging/greybus/
	drivers/staging/greybus/audio_apbridgea.h:      __u8    data[0];
	...
	drivers/staging/greybus/usb.c:  u8 buf[0];

Would you mind replacing these as well so that we really do this in one
patch per subsystem?

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

Thanks,
Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
