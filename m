Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1AE28B42C
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Oct 2020 13:54:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0447B207A4;
	Mon, 12 Oct 2020 11:53:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ROJYHBlXnp+i; Mon, 12 Oct 2020 11:53:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 41C2C20555;
	Mon, 12 Oct 2020 11:53:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 864211BF3F7
 for <devel@linuxdriverproject.org>; Mon, 12 Oct 2020 11:53:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7C584204D5
 for <devel@linuxdriverproject.org>; Mon, 12 Oct 2020 11:53:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xgje2KUuZkKb for <devel@linuxdriverproject.org>;
 Mon, 12 Oct 2020 11:53:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id BC7DA20452
 for <devel@driverdev.osuosl.org>; Mon, 12 Oct 2020 11:53:51 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id 1so2588922ple.2
 for <devel@driverdev.osuosl.org>; Mon, 12 Oct 2020 04:53:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Fb1d8gmC83mgx6ZXccfV51mL2eDPuoS5rOP1jKZbgr0=;
 b=WqRIRK1ILJUZ67z70QvMDBxN06fFvlwUdMAnAtrRsF1vPMIL52nvWTtO9rfNvOfdU4
 c4oZuWaKIk/IlnERqKlzhGmiDtbVDYOdV1fdSQVzA6WfvnuXzBtUY3oBM3bKCuLiUNlm
 wb+dROSaHcGVHWmWKRZYg9qnbiZB5vcXXcw+paU0XtrKDet/ZbtD0BTfiebCzZE3Vfm2
 MLJ9cjShvdWMG4+T+yqYAKI1y0hSMPLCUk05PHD/Bc2d8W7xSKuqa3zDnvdY+VSN5aFH
 PRFoObfPV/asfoDKDYQLEI9gLnEJZrKsg4L0BmXAkHnpxpP7YXYW6xU+OFXaOYsUs3eg
 SNkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Fb1d8gmC83mgx6ZXccfV51mL2eDPuoS5rOP1jKZbgr0=;
 b=IROKAVIztiQYPEgsaXpkGc6gaR7AKc3NqI/1R9mtk+Re65UnTFL2shPMMslGCI2IiN
 IaJsRwKPk26mWTqqoeoUf2JKPy5HDwglbhJKtrlM15NjMVWceTMZTvfaD1AzKyzXA0ak
 iAcZ1wqv3bPWDtMEs/lYNtj/WtvthPapwEwlUtnIPYMIrVo252D5tfplparGwLgJPyW/
 dd39GsJiPzTN3pc8ozP4G1L1pr9pB/YXjt+Q7sfiLTIkEBWxy53y888xEh1PX2ZlD7kS
 doG6L0fbspwlK8vnEhy8db48C6R2FcXfuOBc+cfYw+ZCcmuotxPlFi2kNKOYfC2ZU2mW
 0s6g==
X-Gm-Message-State: AOAM532TSnUkRnu4rSrDyEbS5lOi8LbD/LJlADNq3701TOa88zymgu4s
 UrNpp0rI3cK6p3KsKwHTsig=
X-Google-Smtp-Source: ABdhPJxlO1TccaY9ka4oOYHIRdg81JvK1kUFDXWvaLfFg4GNc+QKlcsPPRGHb2yAxPpyrlh7CDA6BA==
X-Received: by 2002:a17:902:7c0d:b029:d3:de09:a3 with SMTP id
 x13-20020a1709027c0db02900d3de0900a3mr22968153pll.52.1602503631317; 
 Mon, 12 Oct 2020 04:53:51 -0700 (PDT)
Received: from localhost ([160.16.113.140])
 by smtp.gmail.com with ESMTPSA id k25sm9638298pfi.42.2020.10.12.04.53.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Oct 2020 04:53:50 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Mon, 12 Oct 2020 19:51:14 +0800
To: Benjamin Poirier <benjamin.poirier@gmail.com>
Subject: Re: [PATCH v1 2/6] staging: qlge: coredump via devlink health reporter
Message-ID: <20201012115114.lyh33rvmm4rt7mej@Rk>
References: <20201008115808.91850-1-coiby.xu@gmail.com>
 <20201008115808.91850-3-coiby.xu@gmail.com>
 <20201010074809.GB14495@f3> <20201010100258.px2go6nugsfbwoq7@Rk>
 <20201010132230.GA17351@f3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201010132230.GA17351@f3>
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

On Sat, Oct 10, 2020 at 10:22:30PM +0900, Benjamin Poirier wrote:
>On 2020-10-10 18:02 +0800, Coiby Xu wrote:
>[...]
>> > > +	do {                                                           \
>> > > +		err = fill_seg_(fmsg, &dump->seg_hdr, dump->seg_regs); \
>> > > +		if (err) {					       \
>> > > +			kvfree(dump);                                  \
>> > > +			return err;				       \
>> > > +		}                                                      \
>> > > +	} while (0)
>> > > +
>> > > +static int qlge_reporter_coredump(struct devlink_health_reporter *reporter,
>> > > +				  struct devlink_fmsg *fmsg, void *priv_ctx,
>> > > +				  struct netlink_ext_ack *extack)
>> > > +{
>> > > +	int err = 0;
>> > > +
>> > > +	struct qlge_devlink *dev = devlink_health_reporter_priv(reporter);
>> >
>> > Please name this variable ql_devlink, like in qlge_probe().
>>
>> I happened to find the following text in drivers/staging/qlge/TODO
>> > * in terms of namespace, the driver uses either qlge_, ql_ (used by
>> >  other qlogic drivers, with clashes, ex: ql_sem_spinlock) or nothing (with
>> >  clashes, ex: struct ob_mac_iocb_req). Rename everything to use the "qlge_"
>> >  prefix.
>
>This comment applies to global identifiers, not local variables.

Thank you for the explanation! Are you suggesting we should choose
different naming styles so we better tell global identifiers from local
variables?
>
>>
>> So I will adopt qlge_ instead. Besides I prefer qlge_dl to ql_devlink.
>
>Up to you but personally, I think ql_devlink is better. In any case,
>"dev" is too general and often used for struct net_device pointers
>instead.

Thank you for the suggestion. Another reason to use qlge_dl is many
other network drivers supporting devlink interface also adopt this kind
of style.

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
