Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A407C158CD7
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 11:39:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0A2AE20447;
	Tue, 11 Feb 2020 10:39:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oYpSi5Okfmgn; Tue, 11 Feb 2020 10:39:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EEFBD204C7;
	Tue, 11 Feb 2020 10:39:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 388E81BF831
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 10:39:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 33DF9835C0
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 10:39:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lnKz798YULrw for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 10:39:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from rere.qmqm.pl (rere.qmqm.pl [91.227.64.183])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EDB0983531
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 10:39:33 +0000 (UTC)
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 48GzmN2qn7z6x;
 Tue, 11 Feb 2020 11:39:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1581417572; bh=fbpKp3rnNkha0W+kf3wFRvFjsUb1cKB6hd3hwVW4juI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NCQNv5BwvMJX2NleSAIHdMpkye5lZU1rhL79/t3e97bdYTcs/aZDnA1fljHi+LT1e
 BO0jx+0wQY26CopiJJj2xl68u68v9vFoRoK55p1DQUqfDUY0ulmdN83E3oRSLaGkCc
 /9iIyzo8cjQ+CR9G5Pj3CDmqnxLS/vlQJnecsYXcv6OsgfJXyQK3pdDJCjOQTQvXEe
 PjkXM5f+UsamTgncZ1DZqzoKUJWLDevByO3MiYUMaEwAXb16rzaLMuZQJNw2XGESEo
 Nwkw62PjHoUBx3NsfODVp1yP1ukVjzmTCDmXCRa58PwZMpGlmX8fVsofeCq6b2HXGH
 gF6HytFdHXJAw==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.1 at mail
Date: Tue, 11 Feb 2020 11:39:31 +0100
From: =?iso-8859-2?Q?Micha=B3_Miros=B3aw?= <mirq-linux@rere.qmqm.pl>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [[PATCH staging] 3/7] staging: wfx: fix init/remove vs IRQ race
Message-ID: <20200211103931.GA26303@qmqm.qmqm.pl>
References: <cover.1581410026.git.mirq-linux@rere.qmqm.pl>
 <8f0c51acc3b98fc55d6960036daef7556445cd0a.1581410026.git.mirq-linux@rere.qmqm.pl>
 <20200211092354.GE1778@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211092354.GE1778@kadam>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 11, 2020 at 12:23:54PM +0300, Dan Carpenter wrote:
> On Tue, Feb 11, 2020 at 09:46:54AM +0100, Micha=B3 Miros=B3aw wrote:
> > @@ -234,8 +234,8 @@ static void wfx_sdio_remove(struct sdio_func *func)
> >  	struct wfx_sdio_priv *bus =3D sdio_get_drvdata(func);
> >  =

> >  	wfx_release(bus->core);
> > -	wfx_free_common(bus->core);
> >  	wfx_sdio_irq_unsubscribe(bus);
>         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> =

> This calls sdio_release_host(func);
> =

> > +	wfx_free_common(bus->core);
> >  	sdio_claim_host(func);
> >  	sdio_disable_func(func);
> >  	sdio_release_host(func);
>         ^^^^^^^^^^^^^^^^^^^^^^^^
> so is this a double free?

This is paired with sdio_claim_host() just above.

Best Regards,
Micha=B3 Miros=B3aw
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
