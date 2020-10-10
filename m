Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B866289F01
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Oct 2020 09:48:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 646D586E93;
	Sat, 10 Oct 2020 07:48:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id INMrAv4Lhly6; Sat, 10 Oct 2020 07:48:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D0A3C86BFE;
	Sat, 10 Oct 2020 07:48:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8FAB91BF425
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 07:48:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8BB59871D5
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 07:48:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YjEQCO7kgX9A for <devel@linuxdriverproject.org>;
 Sat, 10 Oct 2020 07:48:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CC5AA87163
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 07:48:15 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id e10so8866847pfj.1
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 00:48:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=0N5myq9RqbCXporbQ6mi5leNzojgy9tudrwbZBPAQqQ=;
 b=nxDrpRp7v+4Cx8Tp0tsimpv42CN7uXj4TrBK9LOySij4k21J8K0AXWaYxN9S7u6uN+
 GKyxg1MkPHuV0ksqc2GEMLLJEEK4GVqgUw0hIl9bAFqZJc8qr7+rJ70yq/SecC1x6KJr
 JiqwTh3ziDM44op3QnrUXOzmBorXVNHMIOyNZDl+33i1UwthsJCeLXi3ZBVIeXATFiEO
 9WuUir64l+g/A2nTyeS94pwcYZocj7NMnKvEPVm0PUyf3MmLSsLrUZtx5lwMhKH4QHz3
 EEb2d5UhL9HpuPMyVit279EWOzOGTAxrSkEnUSJcu+A7iLEhV04C5+NHoWG01w3XZFVU
 7vxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0N5myq9RqbCXporbQ6mi5leNzojgy9tudrwbZBPAQqQ=;
 b=jtFJEq2GSbOGgrXWNv+zxx+cDdgyd9xXDZ7Jx6habcc+iechGei50X3XOYsPpXmRyZ
 d5AaQFtegXvwLKZGaqI/K2K+3dLNE2/JDfAYR01smJ7j56om686M04M1JmbrRij6+mN9
 12K1s8IvzYnamEkdptT6sYEnzjIcmtLxmjkvgm3uwxaOy/ut7pyzeSqXgxmzTk/u7cag
 C7LYy2WB/EnH+m0AiH3uYP94L+qdPHNKkair8Fu77iC30FJUPH0LNuFGPgOohG90BpS/
 mmYucPeRSJiXoQ+GE6QgwPEmFMkT80Oqd6XtcNnZ3lRAL3kSthJT+G/YvN0EH57+JjFE
 Rvhg==
X-Gm-Message-State: AOAM531SmaHuWJ/OmYgD0/iHUIWNygmahlF20Ihxd8zqav+Jos3JWyRp
 7ojJ7bA/T1fFuZNp9P9pzQ0=
X-Google-Smtp-Source: ABdhPJzyfUtr5p1jo+SHlF3ESI2QcIH6+wPCeEp3xe1mBnkkIA4mdn87cBSRaDYJ0AGnKjTqgut3Bw==
X-Received: by 2002:aa7:8b03:0:b029:152:a364:5084 with SMTP id
 f3-20020aa78b030000b0290152a3645084mr15040090pfd.29.1602316095367; 
 Sat, 10 Oct 2020 00:48:15 -0700 (PDT)
Received: from f3 (ae055068.dynamic.ppp.asahi-net.or.jp. [14.3.55.68])
 by smtp.gmail.com with ESMTPSA id x18sm13531125pfj.90.2020.10.10.00.48.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Oct 2020 00:48:14 -0700 (PDT)
Date: Sat, 10 Oct 2020 16:48:09 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: Coiby Xu <coiby.xu@gmail.com>
Subject: Re: [PATCH v1 2/6] staging: qlge: coredump via devlink health reporter
Message-ID: <20201010074809.GB14495@f3>
References: <20201008115808.91850-1-coiby.xu@gmail.com>
 <20201008115808.91850-3-coiby.xu@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201008115808.91850-3-coiby.xu@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020-10-08 19:58 +0800, Coiby Xu wrote:
>     $ devlink health dump show DEVICE reporter coredump -p -j
>     {
>         "Core Registers": {
>             "segment": 1,
>             "values": [ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
> ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ]
>         },
>         "Test Logic Regs": {
>             "segment": 2,
>             "values": [ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ]
>         },
>         "RMII Registers": {
>             "segment": 3,
>             "values": [ 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ]
>         },
>         ...
>         "Sem Registers": {
>             "segment": 50,
>             "values": [ 0,0,0,0 ]
>         }
>     }
> 
> Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
> ---
>  drivers/staging/qlge/qlge_devlink.c | 131 ++++++++++++++++++++++++++--
>  1 file changed, 125 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/qlge/qlge_devlink.c b/drivers/staging/qlge/qlge_devlink.c
> index aa45e7e368c0..91b6600b94a9 100644
> --- a/drivers/staging/qlge/qlge_devlink.c
> +++ b/drivers/staging/qlge/qlge_devlink.c
> @@ -1,16 +1,135 @@
>  #include "qlge.h"
>  #include "qlge_devlink.h"
>  
> -static int
> -qlge_reporter_coredump(struct devlink_health_reporter *reporter,
> -			struct devlink_fmsg *fmsg, void *priv_ctx,
> -			struct netlink_ext_ack *extack)
> +static int fill_seg_(struct devlink_fmsg *fmsg,

Please include the "qlge_" prefix.

> +		    struct mpi_coredump_segment_header *seg_header,
> +		    u32 *reg_data)
>  {
> -	return 0;
> +	int i;
> +	int header_size = sizeof(struct mpi_coredump_segment_header);
> +	int regs_num = (seg_header->seg_size - header_size) / sizeof(u32);
> +	int err;
> +
> +	err = devlink_fmsg_pair_nest_start(fmsg, seg_header->description);
> +	if (err)
> +		return err;
> +	err = devlink_fmsg_obj_nest_start(fmsg);
> +	if (err)
> +		return err;
> +	err = devlink_fmsg_u32_pair_put(fmsg, "segment", seg_header->seg_num);
> +	if (err)
> +		return err;
> +	err = devlink_fmsg_arr_pair_nest_start(fmsg, "values");
> +	if (err)
> +		return err;
> +	for (i = 0; i < regs_num; i++) {
> +		err = devlink_fmsg_u32_put(fmsg, *reg_data);
> +		if (err)
> +			return err;
> +		reg_data++;
> +	}
> +	err = devlink_fmsg_obj_nest_end(fmsg);
> +	if (err)
> +		return err;
> +	err = devlink_fmsg_arr_pair_nest_end(fmsg);
> +	if (err)
> +		return err;
> +	err = devlink_fmsg_pair_nest_end(fmsg);
> +	return err;
> +}
> +
> +#define fill_seg(seg_hdr, seg_regs)			               \

considering that this macro accesses local variables, it is not really
"function-like". I think an all-caps name would be better to tip-off the
reader.

> +	do {                                                           \
> +		err = fill_seg_(fmsg, &dump->seg_hdr, dump->seg_regs); \
> +		if (err) {					       \
> +			kvfree(dump);                                  \
> +			return err;				       \
> +		}                                                      \
> +	} while (0)
> +
> +static int qlge_reporter_coredump(struct devlink_health_reporter *reporter,
> +				  struct devlink_fmsg *fmsg, void *priv_ctx,
> +				  struct netlink_ext_ack *extack)
> +{
> +	int err = 0;
> +
> +	struct qlge_devlink *dev = devlink_health_reporter_priv(reporter);

Please name this variable ql_devlink, like in qlge_probe().
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
