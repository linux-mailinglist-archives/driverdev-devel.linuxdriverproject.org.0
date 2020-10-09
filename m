Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA7D287F6A
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Oct 2020 02:14:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C828086D7F;
	Fri,  9 Oct 2020 00:14:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mDvkAAC7zLwc; Fri,  9 Oct 2020 00:14:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BCFEA86D6E;
	Fri,  9 Oct 2020 00:14:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8D4341BF396
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 00:14:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8A02986D6E
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 00:14:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RoCMcVzPzKTB for <devel@linuxdriverproject.org>;
 Fri,  9 Oct 2020 00:14:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B194686D6C
 for <devel@driverdev.osuosl.org>; Fri,  9 Oct 2020 00:14:18 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id p11so3588143pld.5
 for <devel@driverdev.osuosl.org>; Thu, 08 Oct 2020 17:14:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=b3eC80cU37oVexsERv1RLvxgy0Ip+ba6vrmYt/kkXmw=;
 b=ZqDRnMyGL6Rq4n5SeNN4zTe++ETsnoc/SjQ+fPuALikouX1rs4vkOTkrw1cvXkg0N9
 CHd6ztVui8CCzcq9oJqjY/sNZNuNHHbPOLDYyymSmYboH8MhlUJa+3/los62vrNlfvlg
 Ao0AC2Z9bt+2M9y+WMAx/vCz1KypyVY/zLZKXEltu5zVRBVUCLG8Dtn+6mgVohMk4jSS
 yyq5WIWpxJ87hJSgiNjoyGs0cY0YQ4hCxW0lgQ0O+hn3qSMKYKrNvAKIgKUutVbUGx6w
 IzQ7S0cnoEauX8jXb2xmHUlKi15w0G6T7MpJv7fkAHH/daLtjvgPcPyv8QItjJU8BjM1
 7EqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=b3eC80cU37oVexsERv1RLvxgy0Ip+ba6vrmYt/kkXmw=;
 b=Jx5YqStkLWncS9dZpQ6JYMqZuznkWyrNBjUAdNyEjhbu8015/eH+W7qb3MDNR9myM7
 KNzDP3JfMRsEcJkSqboIQcICjR1qKau56MQEmFRWFyAX0TQUUm1A+OYjsAM+G8ADFyqv
 k13ttbpfLXnVYRW+Ud5S0suNIIgKUvT44i/c+l70qBp3/ewP+oxjm3pDqcXUmcsaQGGo
 GF3N1r6juTMqJ6QqJ1FsFO5H+/aWv4HR2NwPBbISUB7ROlrMdP+UKJ2w0n4x2ZCgJXxZ
 CWgs7UbjNHEI7M4al0yhXSVDuYkL0B2PhzMaARz8Baw+LtioO2YUdFIZyJQxZqGUAnbU
 QE8g==
X-Gm-Message-State: AOAM532jjfeMLT4lKpboOkUSIl1PNfAea/8+J1fBadRGR8D/X7e8Jpbs
 PXD2KOs4i4UhWU7qTqXkRH8=
X-Google-Smtp-Source: ABdhPJz1fDsaqelnVeG+o33xqoP3LCtDr0IZZWEhGVtnV5+xEAl6HpFX9JIRGtpTZ2M/LYW1gdKTdQ==
X-Received: by 2002:a17:902:cd07:b029:d3:9be0:2679 with SMTP id
 g7-20020a170902cd07b02900d39be02679mr9957750ply.68.1602202458345; 
 Thu, 08 Oct 2020 17:14:18 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id x10sm8419333pfc.88.2020.10.08.17.14.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Oct 2020 17:14:17 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Fri, 9 Oct 2020 08:14:11 +0800
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v1 2/6] staging: qlge: coredump via devlink health reporter
Message-ID: <20201009001411.yi37d25uyqkzaccw@Rk>
References: <20201008115808.91850-1-coiby.xu@gmail.com>
 <20201008115808.91850-3-coiby.xu@gmail.com>
 <20201008133940.GC1042@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201008133940.GC1042@kadam>
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
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>,
 Shung-Hsi Yu <shung-hsi.yu@suse.com>, open list <linux-kernel@vger.kernel.org>,
 Benjamin Poirier <benjamin.poirier@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 08, 2020 at 04:39:40PM +0300, Dan Carpenter wrote:
>On Thu, Oct 08, 2020 at 07:58:04PM +0800, Coiby Xu wrote:
>> -static int
>> -qlge_reporter_coredump(struct devlink_health_reporter *reporter,
>> -			struct devlink_fmsg *fmsg, void *priv_ctx,
>> -			struct netlink_ext_ack *extack)
>> +static int fill_seg_(struct devlink_fmsg *fmsg,
>> +		    struct mpi_coredump_segment_header *seg_header,
>> +		    u32 *reg_data)
>>  {
>> -	return 0;
>> +	int i;
>> +	int header_size = sizeof(struct mpi_coredump_segment_header);
>
>Please use the sizeof() directly in the code.  Don't introduce
>indirection if you can help it.
>
>> +	int regs_num = (seg_header->seg_size - header_size) / sizeof(u32);
>> +	int err;
>> +
>
Thank you for the suggestion!
>regards,
>dan carpenter

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
