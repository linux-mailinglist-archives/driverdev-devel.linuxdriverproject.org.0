Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A941284489
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Oct 2020 06:15:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3AC86857BE;
	Tue,  6 Oct 2020 04:15:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J7EwyUNJftCC; Tue,  6 Oct 2020 04:15:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F1491847AC;
	Tue,  6 Oct 2020 04:15:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1B8FC1BF3FC
 for <devel@linuxdriverproject.org>; Tue,  6 Oct 2020 04:15:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 17EA58565B
 for <devel@linuxdriverproject.org>; Tue,  6 Oct 2020 04:15:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3ePN0MxPPIIm for <devel@linuxdriverproject.org>;
 Tue,  6 Oct 2020 04:14:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 70EBD847AC
 for <devel@driverdev.osuosl.org>; Tue,  6 Oct 2020 04:14:59 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id o9so579503plx.10
 for <devel@driverdev.osuosl.org>; Mon, 05 Oct 2020 21:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=UZGuShxycYInQqhv5KwPc/O3+tO3i7WXmjI5ivwEdQI=;
 b=NLus8vkaGavoeEmG7ahMWOTifjBST+PXDxa37jPnpuR5hGzpjcZFPcuFrhgQCvA8c4
 y7tFZJwovMcsqi6VH9P98piFTLvmBXGijANAWP8bmNA8osgDSZd4516DKWtIQKsgoUHr
 LQ1v4VUqC69K1ZSV7J30bRJG05pLmVbEYk30v0LsCKQ4A1lAGoG8tYHH0+NddHhGcpPt
 wcm1fDyfIFhBsfHbv5EGOFIZWoti+GiUMWShf6J1aitKeNGm3akXlVE4koZurEZgHguT
 gEjiWh/8Qhtyxzgu+s9Z/8C6sLBidAIh4k8RxM+o828s9cp7CZxA+xlO7w54A53k2NDG
 +iGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=UZGuShxycYInQqhv5KwPc/O3+tO3i7WXmjI5ivwEdQI=;
 b=Y2vVyGfPsHT1DTPglVIGSwEvT4ZImwYcmIHBaG0DoSYHsor4Ky9Wa6KQlOiZYEyePO
 SwrUnZoJhdAbxvijjVziSwOd8+PZH3a+3mFU5+lJEyMECtYo8C8PgWrmWe1MxQALmuxi
 rCrqN0Qj1e1sHd8PrbMmP4yhEA5VthTQ2Fr2QH1hM+88gg3M9uEns0sQPtzDc4m+ZHZC
 qCfza2XVOokw9D8dpikuMuxJWbtdrzSHcZxXDPhsheBPEN1Xt3lRPaAXFMDMOT7mBK+c
 X6WOQpaVI4jSRnH/kcFzEp0QFxXuxGNkRmxnMzLwzd8rjwC/Yu/4D3dL7FzuafQEvuoS
 o63A==
X-Gm-Message-State: AOAM530XtIExJJnye4L+SI4jb6xdneHywTSKFG2Ps63O3ncsQ+QW6Q0w
 aBTtoHPHFr25ZgYq7yYvQT8=
X-Google-Smtp-Source: ABdhPJypJQ9n/Ykh1g87xPta8WbknUV3pehGEaP5DFjZNKOowa5Hc4h0XNe+9GqGM2JpqKlDb82WGQ==
X-Received: by 2002:a17:902:368:b029:d3:8b4e:e54c with SMTP id
 95-20020a1709020368b02900d38b4ee54cmr1591463pld.56.1601957698970; 
 Mon, 05 Oct 2020 21:14:58 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id g3sm1106187pjl.6.2020.10.05.21.14.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Oct 2020 21:14:58 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Tue, 6 Oct 2020 12:14:53 +0800
To: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Subject: Re: [PATCH v2 1/3] staging: greybus: fix warnings about endianness
 detected by sparse
Message-ID: <20201006041453.d7rhdiny33ioaegu@Rk>
References: <20201002233057.74462-1-coiby.xu@gmail.com>
 <CAAs364_NiSJ-mH+v938Mz-qLgDjUsO=7V7FLPo9=Tne63bUxXw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAs364_NiSJ-mH+v938Mz-qLgDjUsO=7V7FLPo9=Tne63bUxXw@mail.gmail.com>
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
 open list <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Johan Hovold <johan@kernel.org>, Mark Greer <mgreer@animalcreek.com>,
 "moderated list:GREYBUS SUBSYSTEM" <greybus-dev@lists.linaro.org>,
 Alex Elder <elder@linaro.org>, Dan Carpenter <dan.carpenter@oracle.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 06, 2020 at 12:47:37AM +0530, Vaibhav Agarwal wrote:
>On Sat, Oct 3, 2020 at 5:01 AM Coiby Xu <coiby.xu@gmail.com> wrote:
>>
>> This patch fix the following warnings from sparse,
>>
>> $ make C=2 drivers/staging/greybus/
>> drivers/staging/greybus/audio_module.c:222:25: warning: incorrect type in assignment (different base types)
>> drivers/staging/greybus/audio_module.c:222:25:    expected restricted __le16 [usertype] data_cport
>> drivers/staging/greybus/audio_module.c:222:25:    got unsigned short [usertype] intf_cport_id
>> drivers/staging/greybus/audio_topology.c:460:40: warning: restricted __le32 degrades to integer
>> drivers/staging/greybus/audio_topology.c:691:41: warning: incorrect type in assignment (different base types)
>> drivers/staging/greybus/audio_topology.c:691:41:    expected unsigned int access
>> drivers/staging/greybus/audio_topology.c:691:41:    got restricted __le32 [usertype] access
>> drivers/staging/greybus/audio_topology.c:746:44: warning: incorrect type in assignment (different base types)
>> drivers/staging/greybus/audio_topology.c:746:44:    expected unsigned int
>> drivers/staging/greybus/audio_topology.c:746:44:    got restricted __le32
>> drivers/staging/greybus/audio_topology.c:748:52: warning: incorrect type in assignment (different base types)
>> drivers/staging/greybus/audio_topology.c:748:52:    expected unsigned int
>> drivers/staging/greybus/audio_topology.c:748:52:    got restricted __le32
>> drivers/staging/greybus/audio_topology.c:802:42: warning: restricted __le32 degrades to integer
>> drivers/staging/greybus/audio_topology.c:805:50: warning: incorrect type in assignment (different base types)
>> drivers/staging/greybus/audio_topology.c:805:50:    expected restricted __le32
>> drivers/staging/greybus/audio_topology.c:805:50:    got unsigned int
>> drivers/staging/greybus/audio_topology.c:814:50: warning: restricted __le32 degrades to integer
>> drivers/staging/greybus/audio_topology.c:817:58: warning: incorrect type in assignment (different base types)
>> drivers/staging/greybus/audio_topology.c:817:58:    expected restricted __le32
>> drivers/staging/greybus/audio_topology.c:817:58:    got unsigned int
>> drivers/staging/greybus/audio_topology.c:889:25: warning: incorrect type in assignment (different base types)
>> drivers/staging/greybus/audio_topology.c:889:25:    expected unsigned int access
>> drivers/staging/greybus/audio_topology.c:889:25:    got restricted __le32 [usertype] access
>>
>> Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
>> Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
>> Reviewed-by: Alex Elder <elder@linaro.org>
>> Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
>> ---
>Hi Coiby,
>
>Thanks for sharing the patch. Sorry, I could not reply to the v1 series.
>Now, I have gone through the patches. Looks good (all 3 patches).
>
>Reviewed-by: Vaibhav Agarwal <vaibhav.sr@gmail.com>
>
>--
>Thanks,

Hi Vaibhav,

Thank you for reviewing these patches and giving the credit!

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
