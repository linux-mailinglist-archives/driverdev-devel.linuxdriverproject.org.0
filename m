Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE55138405
	for <lists+driverdev-devel@lfdr.de>; Sun, 12 Jan 2020 00:35:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0E5D787A72;
	Sat, 11 Jan 2020 23:35:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1OKo6MDdn5es; Sat, 11 Jan 2020 23:35:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4E193879F5;
	Sat, 11 Jan 2020 23:35:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8825F1BF4E3
 for <devel@linuxdriverproject.org>; Sat, 11 Jan 2020 23:35:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 850D08503D
 for <devel@linuxdriverproject.org>; Sat, 11 Jan 2020 23:35:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B6snvcGhAQJM for <devel@linuxdriverproject.org>;
 Sat, 11 Jan 2020 23:35:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2E41584FB6
 for <devel@driverdev.osuosl.org>; Sat, 11 Jan 2020 23:35:22 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id v140so5202502oie.0
 for <devel@driverdev.osuosl.org>; Sat, 11 Jan 2020 15:35:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=6nsqiMT9oMX01YJWr2NQaCFjUFg9E87lTHlKtmL/4JU=;
 b=jyDXLARC4k7VXdXWwWGocAv7u6XXI1C3kObhkXU7msPtMaC1AKSSX4qoZ0+hHGbEEc
 p6Q47yLsjt0o0908SGKRRiYTgx7Kub3t3oQzIqOIVPPQug++rKL5LoTHOWOwIFghzq/k
 tYjl79RptnOa38hS8LUdT0vnkZT5x4rm1pIvnpvYDQbpnLhEImOg5laNAV9ZMvMjAON0
 cnElF3OTMOvoyORRpX+GuclcTSdWeW4N5YGjGKnz1aNqWMkFzXyKMwqE+f+wyKWBISD+
 ArrhJdFnr2tNZbrrvqig3m9jjav2i/WRE1XpdXJVxNnJTGeawQqwheVAwpaojgoWW2Zf
 OrZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=6nsqiMT9oMX01YJWr2NQaCFjUFg9E87lTHlKtmL/4JU=;
 b=epRm+rilDBJ7zTzTXMUONIqI2rZVyeFdnZ434zJpAt3apksTNvsVeZ99XQ/+L0nzUN
 5o9CIQJV9cqkO0oy4glW2LkvV12V3QbrrEVTG9H1cdvuYFTUIwHNrhrLbKiqFC3g9UMc
 mCs39kexrElL7BZ9c2WvhMmLMNXlIlS6v2oxpuYP7HuzkJGP7zaQN0eg4oYb5S7oMUrk
 MMetFW0PM/VSY47GKwHEfXnxTP4RERQF6hVyFQwQMhEqBp5065v4o4TQZTNwb918ZbJ0
 5/7hbinGCsqmhvh51ObVDzOMLiAMBOaGaeLp1hSN0J4oN4oRg24JGcHXKJlDpaNxIrxc
 hoJQ==
X-Gm-Message-State: APjAAAUxr6SgQUvfpyvShbaq1o9eq22t6B5f8iTChX77YjmRAwrvwz2L
 cVug4uBQrbMbUaJcLhFncZitTJTp3S/oxjziUWI=
X-Google-Smtp-Source: APXvYqyUB0xeTnDpzHjEuZdGxoOL5/li0WIDrMMHdo+U4FwFwZTbhGAUZVZRm78WL5ug4KSpmT9xG14s300ZUTE+3dk=
X-Received: by 2002:a05:6808:a11:: with SMTP id
 n17mr7456835oij.94.1578785721361; 
 Sat, 11 Jan 2020 15:35:21 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a8a:87:0:0:0:0:0 with HTTP;
 Sat, 11 Jan 2020 15:35:20 -0800 (PST)
In-Reply-To: <20200111175611.GA422540@kroah.com>
References: <20200111121419.22669-1-linkinjeon@gmail.com>
 <20200111175611.GA422540@kroah.com>
From: Namjae Jeon <linkinjeon@gmail.com>
Date: Sun, 12 Jan 2020 08:35:20 +0900
Message-ID: <CAKYAXd-+o-cmn17r0Z-k9gmrQW=8Pj_PDFNvG+jP8eCSPDbV9Q@mail.gmail.com>
Subject: Re: [PATCH] staging: exfat: make staging/exfat and fs/exfat mutually
 exclusive
To: Greg KH <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, valdis.kletnieks@vt.edu,
 Namjae Jeon <namjae.jeon@samsung.com>, amir73il@gmail.com,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

2020-01-12 2:56 GMT+09:00, Greg KH <gregkh@linuxfoundation.org>:
> On Sat, Jan 11, 2020 at 09:14:19PM +0900, Namjae Jeon wrote:
>> From: Namjae Jeon <namjae.jeon@samsung.com>
>>
>> Make staging/exfat and fs/exfat mutually exclusive to select the one
>> between two same filesystem.
>>
>> Suggested-by: Amir Goldstein <amir73il@gmail.com>
>> Signed-off-by: Namjae Jeon <namjae.jeon@samsung.com>
>> ---
>>  drivers/staging/exfat/Kconfig | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/exfat/Kconfig
>> b/drivers/staging/exfat/Kconfig
>> index 292a19dfcaf5..9a0fccec65d9 100644
>> --- a/drivers/staging/exfat/Kconfig
>> +++ b/drivers/staging/exfat/Kconfig
>> @@ -1,7 +1,7 @@
>>  # SPDX-License-Identifier: GPL-2.0
>>  config STAGING_EXFAT_FS
>>  	tristate "exFAT fs support"
>> -	depends on BLOCK
>> +	depends on BLOCK && !EXFAT_FS
>
> There is no such symbol in the kernel tree, so this isn't going to do
> anything :(
>
> When/if EXFAT_FS does show up, I will be glad to add this.  Or better
> yet, just have this as part of the "real" exfat patchset, that would
> make the most sense, right?
Right,
Thanks!
>
> thanks,
>
> greg k-h
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
