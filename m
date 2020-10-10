Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AACD2289FBF
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Oct 2020 12:03:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D30778783D;
	Sat, 10 Oct 2020 10:03:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2NEz5gZIbgyC; Sat, 10 Oct 2020 10:03:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BFA728782C;
	Sat, 10 Oct 2020 10:03:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3DCA71BF82D
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 10:03:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2FF238701E
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 10:03:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lk5Jje2zeLV0 for <devel@linuxdriverproject.org>;
 Sat, 10 Oct 2020 10:03:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 815DE87019
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 10:03:09 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id r10so9380766pgb.10
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 03:03:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=pEEKeQr4AxJsyV0EJXbsIp9rmMhN3mdQEUHeeZ1DQX0=;
 b=SYKluLk1xiuVXtuBY+vLYX+G1VKNe1UNjHn5wSMbGmDYq7apD5kYy7QBH4bTHDiSHz
 yFxE/ALQLOFWpvLu1BFpbxH8+5tGXR6QwKiKkgSmZrJGi9YQ/GIGNBi+9hHnElRJ096+
 /KY6pTs/ZJVNOqyQdz10Xdk61RgqAWHV5qXUFZtbWfhqwTKGMkX5ahJV5BLwQcwi+3jG
 iZ0R1P7WRt7OSfhLoLkxQdvI2f7x125oJBaqiOPUxGpWItEV4QqJ4WrKcwpNyKP9tChu
 tMUlardM+xNSHmauqTZeYmzZkl9iqCBlRYBbOajLmo9tlefjaN1Wo5NidFEN/kAG7NGG
 z1Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=pEEKeQr4AxJsyV0EJXbsIp9rmMhN3mdQEUHeeZ1DQX0=;
 b=Z8cF0gq513HnsaLhyfxqjIOZy6+C7ykECYcIPE/MQE9te2xaCPJ5nLFNOwfbIRhlhE
 6GPiCM8mP5prmh3Bd3IVLOdsXIDPDE68WjR+1DIPvUZszJky/32hgWOIx/UA4oPWyeQ9
 wZnR1C6V7hkyR7MkNKQUH3X+i5s+xT4ncqxaGxodpu9vfOMsRUAGyRGfiOHE7vCrjKSB
 U5mDJBVlIGEH7oRyl75cwrDxHe36AQAMK8XrcOQdvbDmahbUrl8EUiYsA1V4od4xI1bj
 JhZqW2HXg1Wei/G6ybxjcK2foIO6jgR5pwYeBA/3kRjAnvmdoiKmMiMXgyI7p/mlae++
 Cr/w==
X-Gm-Message-State: AOAM533UHLFtiwWue3EWzsj2mhttw6oA27lwhDUwf+qKGnv1K76EzAnB
 S6NAKwOhs5WHqq78hLFKE7Y=
X-Google-Smtp-Source: ABdhPJw2MPqnrARRlqblzpmpUAYvMLuvf+p9y3d+T4o6tNKqjhiWtMY8ouXNCeLTWZwEJAqZch7IxA==
X-Received: by 2002:a17:90a:c501:: with SMTP id
 k1mr9817868pjt.170.1602324189048; 
 Sat, 10 Oct 2020 03:03:09 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id t13sm13862681pfc.1.2020.10.10.03.03.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Oct 2020 03:03:08 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Sat, 10 Oct 2020 18:02:58 +0800
To: Benjamin Poirier <benjamin.poirier@gmail.com>
Subject: Re: [PATCH v1 2/6] staging: qlge: coredump via devlink health reporter
Message-ID: <20201010100258.px2go6nugsfbwoq7@Rk>
References: <20201008115808.91850-1-coiby.xu@gmail.com>
 <20201008115808.91850-3-coiby.xu@gmail.com>
 <20201010074809.GB14495@f3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201010074809.GB14495@f3>
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
Cc: devel@driverdev.osuosl.org, "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER"
 <GR-Linux-NIC-Dev@marvell.com>, Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shung-Hsi Yu <shung-hsi.yu@suse.com>, open list <linux-kernel@vger.kernel.org>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Oct 10, 2020 at 04:48:09PM +0900, Benjamin Poirier wrote:
>On 2020-10-08 19:58 +0800, Coiby Xu wrote:
>>     $ devlink health dump show DEVICE reporter coredump -p -j
>>     {
>>         "Core Registers": {
>>             "segment": 1,
>>             "values": [ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
>> ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ]
>>         },
>>         "Test Logic Regs": {
>>             "segment": 2,
>>             "values": [ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ]
>>         },
>>         "RMII Registers": {
>>             "segment": 3,
>>             "values": [ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ]
>>         },
>>         ...
>>         "Sem Registers": {
>>             "segment": 50,
>>             "values": [ 0,0,0,0 ]
>>         }
>>     }
>>
>> Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
>> ---
>>  drivers/staging/qlge/qlge_devlink.c | 131 ++++++++++++++++++++++++++--
>>  1 file changed, 125 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/staging/qlge/qlge_devlink.c b/drivers/staging/qlge/qlge_devlink.c
>> index aa45e7e368c0..91b6600b94a9 100644
>> --- a/drivers/staging/qlge/qlge_devlink.c
>> +++ b/drivers/staging/qlge/qlge_devlink.c
>> @@ -1,16 +1,135 @@
>>  #include "qlge.h"
>>  #include "qlge_devlink.h"
>>
>> -static int
>> -qlge_reporter_coredump(struct devlink_health_reporter *reporter,
>> -			struct devlink_fmsg *fmsg, void *priv_ctx,
>> -			struct netlink_ext_ack *extack)
>> +static int fill_seg_(struct devlink_fmsg *fmsg,
>
>Please include the "qlge_" prefix.
>
>> +		    struct mpi_coredump_segment_header *seg_header,
>> +		    u32 *reg_data)
>>  {
>> -	return 0;
>> +	int i;
>> +	int header_size = sizeof(struct mpi_coredump_segment_header);
>> +	int regs_num = (seg_header->seg_size - header_size) / sizeof(u32);
>> +	int err;
>> +
>> +	err = devlink_fmsg_pair_nest_start(fmsg, seg_header->description);
>> +	if (err)
>> +		return err;
>> +	err = devlink_fmsg_obj_nest_start(fmsg);
>> +	if (err)
>> +		return err;
>> +	err = devlink_fmsg_u32_pair_put(fmsg, "segment", seg_header->seg_num);
>> +	if (err)
>> +		return err;
>> +	err = devlink_fmsg_arr_pair_nest_start(fmsg, "values");
>> +	if (err)
>> +		return err;
>> +	for (i = 0; i < regs_num; i++) {
>> +		err = devlink_fmsg_u32_put(fmsg, *reg_data);
>> +		if (err)
>> +			return err;
>> +		reg_data++;
>> +	}
>> +	err = devlink_fmsg_obj_nest_end(fmsg);
>> +	if (err)
>> +		return err;
>> +	err = devlink_fmsg_arr_pair_nest_end(fmsg);
>> +	if (err)
>> +		return err;
>> +	err = devlink_fmsg_pair_nest_end(fmsg);
>> +	return err;
>> +}
>> +
>> +#define fill_seg(seg_hdr, seg_regs)			               \
>
>considering that this macro accesses local variables, it is not really
>"function-like". I think an all-caps name would be better to tip-off the
>reader.
>
Thank you for this suggestion!

>> +	do {                                                           \
>> +		err = fill_seg_(fmsg, &dump->seg_hdr, dump->seg_regs); \
>> +		if (err) {					       \
>> +			kvfree(dump);                                  \
>> +			return err;				       \
>> +		}                                                      \
>> +	} while (0)
>> +
>> +static int qlge_reporter_coredump(struct devlink_health_reporter *reporter,
>> +				  struct devlink_fmsg *fmsg, void *priv_ctx,
>> +				  struct netlink_ext_ack *extack)
>> +{
>> +	int err = 0;
>> +
>> +	struct qlge_devlink *dev = devlink_health_reporter_priv(reporter);
>
>Please name this variable ql_devlink, like in qlge_probe().

I happened to find the following text in drivers/staging/qlge/TODO
> * in terms of namespace, the driver uses either qlge_, ql_ (used by
>  other qlogic drivers, with clashes, ex: ql_sem_spinlock) or nothing (with
>  clashes, ex: struct ob_mac_iocb_req). Rename everything to use the "qlge_"
>  prefix.

So I will adopt qlge_ instead. Besides I prefer qlge_dl to ql_devlink.

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
