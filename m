Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 704F928C6B4
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Oct 2020 03:18:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EAB39873DE;
	Tue, 13 Oct 2020 01:18:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UUoIgypGN4mZ; Tue, 13 Oct 2020 01:18:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E2C0286B7B;
	Tue, 13 Oct 2020 01:18:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EF5BA1BF38D
 for <devel@linuxdriverproject.org>; Tue, 13 Oct 2020 01:18:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E87408796C
 for <devel@linuxdriverproject.org>; Tue, 13 Oct 2020 01:18:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5DVZ8ndeA+cZ for <devel@linuxdriverproject.org>;
 Tue, 13 Oct 2020 01:18:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 404818795C
 for <devel@driverdev.osuosl.org>; Tue, 13 Oct 2020 01:18:16 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id a200so15479034pfa.10
 for <devel@driverdev.osuosl.org>; Mon, 12 Oct 2020 18:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=/9A0K1IzOHna1C0DxmV3XpbQqnDKqQQDF6op5A/lIOE=;
 b=Yo4t8KHitl7IijBwyBzbt+gmWaEcnfLB3k5bFe3RMkLOZGpv7uckNpQTdsfI1voSeo
 j/+15lQPSXGjI3uFic49xOYnjSCdFWRGO/fT1AtPB0eI6zk92pqx5ehhY4xJnk3rVALk
 ddkysd6k7Q3qCTPL299gXm2zoy8Kak3S5Qo60VN7TKbhWfirdSGdLmOYgPgv4y+qkCvd
 50S6QKUxR8Ey/wFnaMDDtatK4M6BZ24Yq9Xg1iPO5LbguUw3ygoT9MF454psQy7MW2gC
 urQ1gJaKpQ8XbW/mk+PZh0gmOZTST/vFP1P7F3zPSmNF1ceNYj1OHrCi+hoMbfMfWtC9
 GRzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/9A0K1IzOHna1C0DxmV3XpbQqnDKqQQDF6op5A/lIOE=;
 b=ScLdxJWOvTkBbB+2bsjmOxCu2Mf/qwnsgQ2M5jioT/z5Jms7z9X6ERy0AIQZSA40Fj
 4B8oaEnOh2jyIrQKW9ca+82ipQzu/AvW16bWxXVoPg5eALmMSxqdIYANfrYum48YoAfe
 kW0cyG9yckRnXwsdVFoeZoLxFgKc8qaK7aYbGKW2HsqqyoqSNDqCBr3QVFuXXgQakEMd
 sfZCj2IHhopy5soTPpRBQelRmvebhb81MmnsBH7eywZLSmbVuYwyN138720ji/dqY6me
 Ddi5jZeiZjWk2DCnR1nNRc+xzceNiijf/m6uml4AJjFdHCg3YgsFRF1QIGnH1cgmncYr
 D0Rg==
X-Gm-Message-State: AOAM533+viF8toK/09vuCM7MEJPULzJcoGFKfh+PBFIZXlXJQVNnyfei
 B8v/FX6yYDyktw/PAoSnE7c=
X-Google-Smtp-Source: ABdhPJwm1/3VSrSwzuGk4/Zydbtvz11dFFE2Xj3zygfVfOXds4aeHb7HYdhqd+iRm1poALRR9DjznQ==
X-Received: by 2002:a17:90b:17c4:: with SMTP id
 me4mr21967291pjb.91.1602551895798; 
 Mon, 12 Oct 2020 18:18:15 -0700 (PDT)
Received: from f3 (ae055068.dynamic.ppp.asahi-net.or.jp. [14.3.55.68])
 by smtp.gmail.com with ESMTPSA id b6sm24476508pjq.42.2020.10.12.18.18.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Oct 2020 18:18:14 -0700 (PDT)
Date: Tue, 13 Oct 2020 10:18:10 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: Coiby Xu <coiby.xu@gmail.com>
Subject: Re: [PATCH v1 2/6] staging: qlge: coredump via devlink health reporter
Message-ID: <20201013011810.GB41031@f3>
References: <20201008115808.91850-1-coiby.xu@gmail.com>
 <20201008115808.91850-3-coiby.xu@gmail.com>
 <20201010074809.GB14495@f3> <20201010100258.px2go6nugsfbwoq7@Rk>
 <20201010132230.GA17351@f3> <20201012115114.lyh33rvmm4rt7mej@Rk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201012115114.lyh33rvmm4rt7mej@Rk>
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

On 2020-10-12 19:51 +0800, Coiby Xu wrote:
> On Sat, Oct 10, 2020 at 10:22:30PM +0900, Benjamin Poirier wrote:
> > On 2020-10-10 18:02 +0800, Coiby Xu wrote:
> > [...]
> > > > > +	do {                                                           \
> > > > > +		err = fill_seg_(fmsg, &dump->seg_hdr, dump->seg_regs); \
> > > > > +		if (err) {					       \
> > > > > +			kvfree(dump);                                  \
> > > > > +			return err;				       \
> > > > > +		}                                                      \
> > > > > +	} while (0)
> > > > > +
> > > > > +static int qlge_reporter_coredump(struct devlink_health_reporter *reporter,
> > > > > +				  struct devlink_fmsg *fmsg, void *priv_ctx,
> > > > > +				  struct netlink_ext_ack *extack)
> > > > > +{
> > > > > +	int err = 0;
> > > > > +
> > > > > +	struct qlge_devlink *dev = devlink_health_reporter_priv(reporter);
> > > >
> > > > Please name this variable ql_devlink, like in qlge_probe().
> > > 
> > > I happened to find the following text in drivers/staging/qlge/TODO
> > > > * in terms of namespace, the driver uses either qlge_, ql_ (used by
> > > >  other qlogic drivers, with clashes, ex: ql_sem_spinlock) or nothing (with
> > > >  clashes, ex: struct ob_mac_iocb_req). Rename everything to use the "qlge_"
> > > >  prefix.
> > 
> > This comment applies to global identifiers, not local variables.
> 
> Thank you for the explanation! Are you suggesting we should choose
> different naming styles so we better tell global identifiers from local
> variables?

That's not the main purpose IMO. Using a consistent prefix for global
identifiers (ex. "qlge_") is to avoid clashes (two drivers using the
same name, as in the examples above). Strictly speaking, it is not a
problem for symbols with internal linkage (ex. static functions) or type
definitions in local header files but it makes the code clearer because
it shows immediately that this identifier was defined in the driver.

For local variables, the name is more a matter of personal taste I think
but it should be consistent within the driver and with other users of
the same api, where applicable. A prefix is not needed but the name is
sometimes a simpler version of a type name which includes a prefix.

> > > So I will adopt qlge_ instead. Besides I prefer qlge_dl to ql_devlink.
> > 
> > Up to you but personally, I think ql_devlink is better. In any case,
> > "dev" is too general and often used for struct net_device pointers
> > instead.
> 
> Thank you for the suggestion. Another reason to use qlge_dl is many
> other network drivers supporting devlink interface also adopt this kind
> of style.

Sounds good. On second thought I regretted suggesting ql_devlink. While
local variable don't need any prefix; if they do have one, better not
mix qlge_ and ql_.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
