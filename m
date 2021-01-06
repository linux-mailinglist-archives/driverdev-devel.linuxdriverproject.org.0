Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C6FD32EC29E
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Jan 2021 18:43:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8190C86D0F;
	Wed,  6 Jan 2021 17:43:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pTX49QJvM9fc; Wed,  6 Jan 2021 17:43:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 46BF686CEA;
	Wed,  6 Jan 2021 17:43:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 33C311BF479
 for <devel@linuxdriverproject.org>; Wed,  6 Jan 2021 17:43:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2F0DF866F2
 for <devel@linuxdriverproject.org>; Wed,  6 Jan 2021 17:43:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M0ykfrzwQmZB for <devel@linuxdriverproject.org>;
 Wed,  6 Jan 2021 17:43:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1DDFC866C9
 for <devel@driverdev.osuosl.org>; Wed,  6 Jan 2021 17:43:46 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id y17so3158139wrr.10
 for <devel@driverdev.osuosl.org>; Wed, 06 Jan 2021 09:43:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=IWjwx8EX/O5fuAhGOnd0RZp7TYOHdWpZ4wl+W1Ntw2Q=;
 b=Oz3KbCf1IUr90hyHxVLs688OWcnsdbAhF/T0kn3BDG4DuJTU2tmFppEpUBZuWd+X+U
 Be2MHvQxlAbvsT8WBz8C54WJ8IoAqO640m/y1spG9RKrSfmt/EjYsfvbxAmI+JRPy6by
 lODa51abovj81p7HcgMQm7V4znQrL6N4nEWlujAW5uAUmFRCDkK42hjputh5JBCpleGY
 UcittCZszMxb3Ncu86Xpvx1lBan0wYluu/YFKQ7xAhzg3uzHPBAW/wK5TnemeXybGAY0
 vSRb95ICrebfcMm3iD5OlPSgEqED5+F+fEl7+/IpVFdczoGTsRbQ3w+1aQB6WLKQnsQI
 +awQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=IWjwx8EX/O5fuAhGOnd0RZp7TYOHdWpZ4wl+W1Ntw2Q=;
 b=Wd5EDs02wSakesSN56XaAU+UqJDCr3fFsPjgj2U207xb/vOj/K/dcAvRsiDxacSsoo
 M/XaemSMUuk43JR+zTaNOraE0w7pUMRicRiWaCryeXfIz4SCyUwlaJ/ouU9GgFOODeqv
 NnMlxf90pCYPQEFFAm8W7w+t8e2O+zE7eXmnVYVzrsKNkcy9feUhp2RlbquLKUVvXEfO
 tU5MAtSVdtUepmW64pS310ynSWz0fyIJfR+w+hwXjuNcYqVcEfBpUV8OF5nO82/adUHk
 ndwHs8T9o8IlcxJp8z3Vnl8mXOIcxp4R5J3porUHiO26mc7MK0AkC2RHZEVcxPNDVpBb
 +Axg==
X-Gm-Message-State: AOAM531rpPbwUbsQLtu4xjjs6OBnwGfpxNa1XET+y43jeLq6TVgiiCV3
 REz751PPhbs3kShAtfYqEUooLvOHeP7wIC+f
X-Google-Smtp-Source: ABdhPJzKmvII12FbkhJlzKllxcCzY7wrxNwxJLJKhbr5VlHqf67igJZzaTrC6vRkQAYryUUbf67JCQ==
X-Received: by 2002:a5d:58d7:: with SMTP id o23mr5453230wrf.288.1609955024644; 
 Wed, 06 Jan 2021 09:43:44 -0800 (PST)
Received: from [192.168.1.2] (84-238-151-182.ip.btc-net.bg. [84.238.151.182])
 by smtp.gmail.com with ESMTPSA id
 s205sm3775579wmf.46.2021.01.06.09.43.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 Jan 2021 09:43:43 -0800 (PST)
Subject: Re: [PATCH] media: atomisp: ov2722: replace hardcoded function name
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20210105202945.26913-1-fil.kolev@gmail.com>
 <X/VsF364jpGz6oze@kroah.com>
From: Filip Kolev <fil.kolev@gmail.com>
Message-ID: <dcdda829-89d6-badd-4f22-72d95d24e9e3@gmail.com>
Date: Wed, 6 Jan 2021 19:43:42 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <X/VsF364jpGz6oze@kroah.com>
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
Cc: devel@driverdev.osuosl.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 06-Jan-21 09:51, Greg Kroah-Hartman wrote:
> On Tue, Jan 05, 2021 at 10:29:18PM +0200, Filip Kolev wrote:
>> There is a debug message using hardcoded function name instead of the
>> __func__ macro. Replace it.
>>
>> Report from checkpatch.pl on the file:
>>
>> WARNING: Prefer using '"%s...", __func__' to using 'ov2722_remove', this function's name, in a string
>> +	dev_dbg(&client->dev, "ov2722_remove...\n");
>>
>> Signed-off-by: Filip Kolev <fil.kolev@gmail.com>
>> ---
>>   drivers/staging/media/atomisp/i2c/atomisp-ov2722.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/media/atomisp/i2c/atomisp-ov2722.c b/drivers/staging/media/atomisp/i2c/atomisp-ov2722.c
>> index eecefcd734d0e..21d6bc62d452a 100644
>> --- a/drivers/staging/media/atomisp/i2c/atomisp-ov2722.c
>> +++ b/drivers/staging/media/atomisp/i2c/atomisp-ov2722.c
>> @@ -1175,7 +1175,7 @@ static int ov2722_remove(struct i2c_client *client)
>>   	struct v4l2_subdev *sd = i2c_get_clientdata(client);
>>   	struct ov2722_device *dev = to_ov2722_sensor(sd);
>>   
>> -	dev_dbg(&client->dev, "ov2722_remove...\n");
>> +	dev_dbg(&client->dev, "%s...\n", __func__);
> 
> dev_dbg() provides the function name already, and this is just a "trace"
> call, and ftrace should be used instead, so the whole line should be
> removed entirely.

Thank you for the review!

How do I go about this? Do I amend the patch and re-send as v2 or create 
a new patch entirely?
Newbie here, doing this as part of the Eudyptula challenge, so I very 
much appreciate everyone's patience.

> 
> thanks,
> 
> greg k-h
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
