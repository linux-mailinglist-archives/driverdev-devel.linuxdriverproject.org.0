Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A2729411D
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Oct 2020 19:10:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8EE5586D20;
	Tue, 20 Oct 2020 17:10:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H6kYYMjb8CiT; Tue, 20 Oct 2020 17:10:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5C58C86CDD;
	Tue, 20 Oct 2020 17:10:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 93B551BF4E6
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 17:10:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 90A2685F5D
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 17:10:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gC6MPo5qBFv8 for <devel@linuxdriverproject.org>;
 Tue, 20 Oct 2020 17:10:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2ADB986CDD
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 17:10:13 +0000 (UTC)
Received: from [IPv6:2003:c7:cf43:5b00:28a3:2f4e:277d:2227]
 (p200300c7cf435b0028a32f4e277d2227.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf43:5b00:28a3:2f4e:277d:2227])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id C51451F44EDB;
 Tue, 20 Oct 2020 18:10:10 +0100 (BST)
Subject: Re: [PATCH] media: staging: rkisp1: rsz: make const array static,
 makes object smaller
To: David Laight <David.Laight@ACULAB.COM>,
 'Colin King' <colin.king@canonical.com>,
 Helen Koike <helen.koike@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
References: <20201020144655.53251-1-colin.king@canonical.com>
 <d5663dec063440129bf6c373aa252d51@AcuMS.aculab.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <cec23fd3-15c1-8e52-3f4d-300d6149d89c@collabora.com>
Date: Tue, 20 Oct 2020 19:10:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <d5663dec063440129bf6c373aa252d51@AcuMS.aculab.com>
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
Cc: "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



Am 20.10.20 um 17:29 schrieb David Laight:
> From: Colin King
>> Sent: 20 October 2020 15:47
>>
>> From: Colin Ian King <colin.king@canonical.com>
>>
>> Don't populate the const array dev_names on the stack but instead it
>> static. Makes the object code smaller by 15 bytes.
>>
>> Before:
>>     text	   data	    bss	    dec	    hex	filename
>>    17091	   2648	     64	  19803	   4d5b	media/rkisp1/rkisp1-resizer.o
>>
>> After:
>>     text	   data	    bss	    dec	    hex	filename
>>    17012	   2712	     64	  19788	   4d4c	media/rkisp1/rkisp1-resizer.o
>>
>> (gcc version 10.2.0)
>>
>> Signed-off-by: Colin Ian King <colin.king@canonical.com>
>> ---
>>   drivers/staging/media/rkisp1/rkisp1-resizer.c | 6 ++++--
>>   1 file changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-
>> resizer.c
>> index 1687d82e6c68..7ca5b47c5bf5 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
>> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
>> @@ -763,8 +763,10 @@ static void rkisp1_rsz_unregister(struct rkisp1_resizer *rsz)
>>
>>   static int rkisp1_rsz_register(struct rkisp1_resizer *rsz)
>>   {
>> -	const char * const dev_names[] = {RKISP1_RSZ_MP_DEV_NAME,
>> -					  RKISP1_RSZ_SP_DEV_NAME};
>> +	static const char * const dev_names[] = {
>> +		RKISP1_RSZ_MP_DEV_NAME,
>> +		RKISP1_RSZ_SP_DEV_NAME
>> +	};
>>   	struct media_pad *pads = rsz->pads;
>>   	struct v4l2_subdev *sd = &rsz->sd;
>>   	int ret;
> 
> Don't look at what that code is actually doing....
> It is rather horrid.
> rkisp1_rsz_register() is called for each entry in an array (twice).
> The array index is written into rsz->id.
> The value is then used to select one of the two strings.
> But rsz->id is actually an enum type.

Hi,
Is it that bad to use enum as an array index?
we use it in many places in the driver.

Thanks,
Dafna

> 
> rkisp1_rsz_register() should probably just be called twice with some
> extra parameters.
> 
> 	David
> 
> -
> Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
> Registration No: 1397386 (Wales)
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
