Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E392619953E
	for <lists+driverdev-devel@lfdr.de>; Tue, 31 Mar 2020 13:20:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AB47C88718;
	Tue, 31 Mar 2020 11:20:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VDAerbgCru6M; Tue, 31 Mar 2020 11:20:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1F753884DC;
	Tue, 31 Mar 2020 11:20:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0245C1BF836
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 11:20:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F0BAC8788B
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 11:20:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NVqC0avKNqbF for <devel@linuxdriverproject.org>;
 Tue, 31 Mar 2020 11:20:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E84D587856
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 11:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585653636;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sNx+K7DX9joOCUK0DKQ8g2oiDeFh276uLrecRciR1gU=;
 b=bnTsKoe5AlGDpJfkIF5m/xzPbDz5Q1z9RQSeyK1nvOW9Ow67Whg+tt/sqrSTHpsNpG5Yaw
 3w/7uhc09MnUNnE2caleYfpBmscQkjsahnEigsQ+3t/w1SriR4A1u6EZgL2iCvgU4X92wZ
 CE6h6Qq3HPA/qLLMLrWzVBBcSakihcU=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-211-aJYtGA8oMyiiPjbg-V4Smg-1; Tue, 31 Mar 2020 07:20:33 -0400
X-MC-Unique: aJYtGA8oMyiiPjbg-V4Smg-1
Received: by mail-wm1-f69.google.com with SMTP id c21so580200wmb.3
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 04:20:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=EgVXfSbdEiIceutRcqYMXl2BzCyVe5g+grLOfxv7pm8=;
 b=qwfJo1hyJJgBk26mFeVqGKKh6aHgXbAtry/BwDZJzAl5LiRpNDgrf8Zb/bRBIrwRqg
 w4SbBJBO6i7zY5LXzv5pz2ZZpRSFJe34yv69znX28uqoIZRhz73B8286to7JRG1O8IVM
 GHrNefjwgfDzSfZGLhsiFgV6WlZSrEPyaZN+sbxcc5XTIOnbuwe+QJaiALEUmCZnjJke
 v3Jf1oQE5+PPB2c0fQRPEjnMYMh6sGlHwlnFOp8ro58nk+pcpZRq4v3ko4Ceu2KC9uSz
 h9KpUifP+OpysudcScCl6ONw2nLcO+mfFtfKuq8V7sYBp4ndpi4Vu7FGMHK2vnxgs13E
 Ngjg==
X-Gm-Message-State: ANhLgQ1hYfyseC7upEHGsXV3u6GQbmmeigiw10eiA0a+f02J3FOMKb3p
 QWanfKeIoa/08WJ3I0RPY2Ah4xWTH95kA3CgX2WKKS6NHH6jsNPOGuUGxXAG9IE6E1ZpWR9ZZ6m
 VU8W5oJekAmBIiG0I/hv/kXOC
X-Received: by 2002:adf:f104:: with SMTP id r4mr19389688wro.375.1585653632021; 
 Tue, 31 Mar 2020 04:20:32 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsj73M4ya+/mbx5V8pR8T+pH0jDHJTdrCEDydbcDb9MlQv9v+fm1NZ8qgyAARz58WsbCWvRiQ==
X-Received: by 2002:adf:f104:: with SMTP id r4mr19389663wro.375.1585653631773; 
 Tue, 31 Mar 2020 04:20:31 -0700 (PDT)
Received: from vitty.brq.redhat.com (g-server-2.ign.cz. [91.219.240.2])
 by smtp.gmail.com with ESMTPSA id r9sm3477744wma.47.2020.03.31.04.20.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 04:20:31 -0700 (PDT)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: ltykernel@gmail.com
Subject: Re: [PATCH V2] x86/Hyper-V: don't allocate clockevent device when
 synthetic timer is unavailable
In-Reply-To: <20200331021738.2572-1-Tianyu.Lan@microsoft.com>
References: <20200331021738.2572-1-Tianyu.Lan@microsoft.com>
Date: Tue, 31 Mar 2020 13:20:29 +0200
Message-ID: <87sgho22ki.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
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
Cc: wei.liu@kernel.org, sthemmin@microsoft.com,
 Tianyu Lan <Tianyu.Lan@microsoft.com>, haiyangz@microsoft.com, x86@kernel.org,
 linux-kernel@vger.kernel.org, michael.h.kelley@microsoft.com, mingo@redhat.com,
 bp@alien8.de, hpa@zytor.com, devel@linuxdriverproject.org, tglx@linutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

ltykernel@gmail.com writes:

> From: Tianyu Lan <Tianyu.Lan@microsoft.com>
>
> Current code initializes clock event data structure for syn timer
> even when it's unavailable. Fix it.
>
> Signed-off-by: Tianyu Lan <Tianyu.Lan@microsoft.com>
> ---
> Change since v1:
> 	Update title and commit log. 
>
>  drivers/hv/hv.c | 15 +++++++++------
>  1 file changed, 9 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/hv/hv.c b/drivers/hv/hv.c
> index 632d25674e7f..2e893768fc76 100644
> --- a/drivers/hv/hv.c
> +++ b/drivers/hv/hv.c
> @@ -212,13 +212,16 @@ int hv_synic_alloc(void)
>  		tasklet_init(&hv_cpu->msg_dpc,
>  			     vmbus_on_msg_dpc, (unsigned long) hv_cpu);
>  
> -		hv_cpu->clk_evt = kzalloc(sizeof(struct clock_event_device),
> -					  GFP_KERNEL);
> -		if (hv_cpu->clk_evt == NULL) {
> -			pr_err("Unable to allocate clock event device\n");
> -			goto err;
> +		if (ms_hyperv.features & HV_MSR_SYNTIMER_AVAILABLE) {
> +			hv_cpu->clk_evt =
> +				kzalloc(sizeof(struct clock_event_device),
> +						  GFP_KERNEL);
> +			if (hv_cpu->clk_evt == NULL) {
> +				pr_err("Unable to allocate clock event device\n");
> +				goto err;
> +			}
> +			hv_init_clockevent_device(hv_cpu->clk_evt, cpu);
>  		}
> -		hv_init_clockevent_device(hv_cpu->clk_evt, cpu);
>  
>  		hv_cpu->synic_message_page =
>  			(void *)get_zeroed_page(GFP_ATOMIC);

Thank you for fixing the subject! I had one more question on the
previous version which still stands: which tree is this patch for?
Upstream, clockevent allocation has moved to
drivers/clocksource/hyperv_timer.c and the code there is different.

Is this intended for some stable tree?

-- 
Vitaly

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
