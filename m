Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E355E74777
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 08:47:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 01E5586D6F;
	Thu, 25 Jul 2019 06:47:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OafU8PIjkMQ7; Thu, 25 Jul 2019 06:47:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A807886CC7;
	Thu, 25 Jul 2019 06:47:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5E0801BF5A1
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 06:47:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5A4F822011
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 06:47:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m9I+EpTRDguW for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 06:47:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb3-smtp-cloud7.xs4all.net (lb3-smtp-cloud7.xs4all.net
 [194.109.24.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 7ED772043B
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 06:47:02 +0000 (UTC)
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud7.xs4all.net with ESMTPA
 id qXWchBe9YLqASqXWfhRkfQ; Thu, 25 Jul 2019 08:47:00 +0200
Subject: Re: [PATCH 11/12] staging: media: cedrus: Fix misuse of GENMASK macro
To: Joe Perches <joe@perches.com>, Andrew Morton <akpm@linux-foundation.org>, 
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>
References: <cover.1562734889.git.joe@perches.com>
 <cd543a5f26b031a0bbd3baa55e1f15813f59f107.1562734889.git.joe@perches.com>
 <be536d37a3b58557cdacd33943915d397bcb5037.camel@perches.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <14f2eda2-9f39-0b7c-fabc-bd860efae23a@xs4all.nl>
Date: Thu, 25 Jul 2019 08:46:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <be536d37a3b58557cdacd33943915d397bcb5037.camel@perches.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfBXVwhl7PyoGh7Hlw1FjrXvvJ1p514+omG88Y0Ob0C09kM/d1f/mQGakj+OLgifwvX9PflPPcNJWHsoNYwl6JxwVW6J1UV/ys10YpJcPHIckkKGi6yhP
 83U5TMAFLTRrRJe6Z2qGSUdmtYfkQQylHN2QlFKssXAaOwDEis2rZFcC6cQWYrk1ToI4dbUKjkdav7CTywVts7Z6so1iDdjnk1EONG992bLeEooJCjEvTweD
 78k+5+lM1XZc8fNHkf4DBeOlZ9s1HrA8hsI3voVAROqqS/FPCqKWyD3JCCHQG381m5a1uA2uMRI/XVnmN+qO8Wz0QAELKHeFbnTXuJK6PlaXNHmPOziJ4WQL
 nHXevkefPT8O9A4yEjCR/b17LIr87mztD5PwMaK8SmnVWn6vzCNDRusl4y9xnbxp2Lr6BR+H7/TQzvNH13J2eBfiOdJ6CBidXzKBN6noOCuHaILCovDaB0qX
 0XRyTfThgl3XjTG6iqj3arhOshgqkwYHkVgNFKXvDQOzoHmEz8SOujjpj/umUQyX/X2uioog8uoVQxJC
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 7/24/19 7:09 PM, Joe Perches wrote:
> On Tue, 2019-07-09 at 22:04 -0700, Joe Perches wrote:
>> Arguments are supposed to be ordered high then low.
>>
>> Signed-off-by: Joe Perches <joe@perches.com>
>> ---
>>  drivers/staging/media/sunxi/cedrus/cedrus_regs.h | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
>> index 3e9931416e45..ddd29788d685 100644
>> --- a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
>> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
>> @@ -110,7 +110,7 @@
>>  #define VE_DEC_MPEG_MBADDR			(VE_ENGINE_DEC_MPEG + 0x10)
>>  
>>  #define VE_DEC_MPEG_MBADDR_X(w)			(((w) << 8) & GENMASK(15, 8))
>> -#define VE_DEC_MPEG_MBADDR_Y(h)			(((h) << 0) & GENMASK(0, 7))
>> +#define VE_DEC_MPEG_MBADDR_Y(h)			(((h) << 0) & GENMASK(7, 0))
>>  
>>  #define VE_DEC_MPEG_CTRL			(VE_ENGINE_DEC_MPEG + 0x14)
> 
> Greg?  ping?
>  
> 

It's actually me and I'm about to pick this one up and make a PR for Mauro.

Regards,

	Hans
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
