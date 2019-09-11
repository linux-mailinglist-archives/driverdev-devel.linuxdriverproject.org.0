Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 97803AF864
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Sep 2019 11:01:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2762D20501;
	Wed, 11 Sep 2019 09:01:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y9nzW01HMHsj; Wed, 11 Sep 2019 09:01:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6454B214E4;
	Wed, 11 Sep 2019 09:01:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 08F7E1BF3D0
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 09:01:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 05E5F20501
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 09:01:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lj+36XoYb2HE for <devel@linuxdriverproject.org>;
 Wed, 11 Sep 2019 09:01:49 +0000 (UTC)
X-Greylist: delayed 00:05:30 by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 91FB720484
 for <devel@driverdev.osuosl.org>; Wed, 11 Sep 2019 09:01:49 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id u14so19192104ljj.11
 for <devel@driverdev.osuosl.org>; Wed, 11 Sep 2019 02:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=/E13juu/FtC97zR3HMtA4Q3ZzUhvcKxTohP/DIrieFE=;
 b=BcqK+uXn+oKcHQci2VioBov/yYrGjlPkyn/T/kLLSbgWOlSSf+NsSr9tcr+eWTkHB+
 jsfLdzZTp6C+J0ho7T2xrzmgZFcpO3Px/xdP0U/++BsKxOVGHFqBD5k1MeTP8WuVczL+
 0urtdMdVcnVQrzmqR98SdvyOPtyUvsVnd8Eb8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/E13juu/FtC97zR3HMtA4Q3ZzUhvcKxTohP/DIrieFE=;
 b=JsLQaiNsxhgRoM0iWsZ5VD1h6DUBrRFmmVby85naZAltVMxIYO/zKAVNyN9VQT70nJ
 LNjKxVdbXfF7RthPDdRdgEfO4L18Blm3WGxg8wJTo/HoMBwqLEqaXmsHd/zhiRah0ABJ
 hkhT/tfLCd9Hq64uxVYToPWoM9WsD+b4Gyizk0jvmuDu24Gnx8qb7U2yZYJjQSGIH39n
 raEE9/JwLy3QxN3pYts/few0MWbzBp94zH8j/SHA6KEQmWXp0XjZFm2Sl5I8Y1x9wEAG
 shJansKmE7hAnLc1wcsfnyGYdnK893HS5klxpLW4VeVI8Kt98H2MvcCMmdapkHEnmeo8
 O0EQ==
X-Gm-Message-State: APjAAAVqzj0AEcSHgyhO/DPDV6lRz3Dhvf5Md9OA7/AAis3C3EjAvqco
 fJ5rF4+VlgcbijTRKobZnpXnbg==
X-Google-Smtp-Source: APXvYqy1RDrW7Pk+KOWN/Jc3bS05Tc1eYcGhatc7TiXDSqSL/sku24bMf+Y2wx8fUy/PfU+iLX5gpQ==
X-Received: by 2002:a2e:a313:: with SMTP id l19mr6461495lje.205.1568192177571; 
 Wed, 11 Sep 2019 01:56:17 -0700 (PDT)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id t82sm4987346lff.58.2019.09.11.01.56.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Sep 2019 01:56:16 -0700 (PDT)
Subject: Re: [PATCH] Staging: exfat: Avoid use of strcpy
To: Dan Carpenter <dan.carpenter@oracle.com>, Sandro Volery <sandro@volery.com>
References: <20190911055749.GA10786@volery> <20190911084111.GG15977@kadam>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <214f3b20-fac4-df5e-6b3c-a08a19a8ea42@rasmusvillemoes.dk>
Date: Wed, 11 Sep 2019 10:56:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190911084111.GG15977@kadam>
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
 valdis.kletnieks@vt.edu, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 11/09/2019 10.41, Dan Carpenter wrote:
> On Wed, Sep 11, 2019 at 07:57:49AM +0200, Sandro Volery wrote:
>> Replaced strcpy with strscpy in exfat_core.c.
>>
>> Signed-off-by: Sandro Volery <sandro@volery.com>
>> ---
>>  drivers/staging/exfat/exfat_core.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
>> index da8c58149c35..c71b145e8a24 100644
>> --- a/drivers/staging/exfat/exfat_core.c
>> +++ b/drivers/staging/exfat/exfat_core.c
>> @@ -2964,7 +2964,7 @@ s32 resolve_path(struct inode *inode, char *path, struct chain_t *p_dir,
>>  	if (strlen(path) >= (MAX_NAME_LENGTH * MAX_CHARSET_SIZE))
>>  		return FFS_INVALIDPATH;
>>  
>> -	strcpy(name_buf, path);
>> +	strscpy(name_buf, path, sizeof(name_buf));
> 
> It checked strlen() earlier so we know that it can't overflow but, oh
> wow, the "name_buf" is a shared buffer.  wow wow wow.  This seems very
> racy.

Yeah, and note that the callers of resolve_path do seem to take a lock,
but that's not a global lock but a per-superblock (or
per-something-else) one... Obviously exfat should not rely on such a
single static buffer, but in the meantime, perhaps one should add a
name_buf_lock (though I don't know how long name_buf is actually in use,
so that needs checking).

Apart from the broken/lack of locking, it would be better to combine the
copying and length checking into a single check - i.e. do

  if (strscpy(name_buf, path, sizeof(name_buf)) < 0)
    return FFS_INVALIDPATH;

That's both more efficient and fixes the open-coding of sizeof(name_buf)
that is currently used in the if().

Rasmus


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
