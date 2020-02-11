Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 72952158F10
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 13:49:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9EE0083E0F;
	Tue, 11 Feb 2020 12:49:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nduYYrq7GbJ3; Tue, 11 Feb 2020 12:49:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5549381B81;
	Tue, 11 Feb 2020 12:49:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AE4811BF3A4
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 12:49:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AB3EE81B81
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 12:49:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sayp7nbhBjJA for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 12:49:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from rere.qmqm.pl (rere.qmqm.pl [91.227.64.183])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6497F820D3
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 12:49:30 +0000 (UTC)
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 48H2fF1038z6x;
 Tue, 11 Feb 2020 13:49:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1581425366; bh=Oi4cDhIGtxiZAoWxm80J+ow/YXQ40nADnyXOVF9DgGo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=L5yGDynUPr8QO3TpQJfDopTDQLwT2QGZroz7/JT0aSpQNALg5077ZwQNVGlAAXrrA
 Sf2Y+3/FtLySC6GDuDq9oLFUOCQk8F38NQo9T79cbkMoJkr8QtLelhIQJCen5NXeX/
 3wIxmnN966lWo6iRyM+4TuC+E2r4YMKa64Rkzr/Nh4OuYATkrcgWn6IvU253EPEMav
 63Fz+PHs3ujBj+u6qZOJVdtTOfFJrEVBM2F5cGfxfdxmDn/IBsPdi4UIyS03IdXUCK
 sYVt3x99QVQKVN7NqkbG8KYdJQuZxibTbvzmgB5vyWIvxb+kD+t+qAlzx58s92riL4
 F9HiCbqFfngZA==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.1 at mail
Date: Tue, 11 Feb 2020 13:49:22 +0100
From: =?iso-8859-2?Q?Micha=B3_Miros=B3aw?= <mirq-linux@rere.qmqm.pl>
To: =?iso-8859-2?B?Suly9G1l?= Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v2 1/6] staging: wfx: fix init/remove vs IRQ race
Message-ID: <20200211124922.GA23464@qmqm.qmqm.pl>
References: <cover.1581416843.git.mirq-linux@rere.qmqm.pl>
 <f0c66cbb3110c2736cd4357c753fba8c14ee3aee.1581416843.git.mirq-linux@rere.qmqm.pl>
 <4119656.HTyy427nan@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4119656.HTyy427nan@pc-42>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 11, 2020 at 11:19:18AM +0000, J=E9r=F4me Pouiller wrote:
> On Tuesday 11 February 2020 11:35:01 CET Micha=B3 Miros=B3aw wrote:
> > Current code races in init/exit with interrupt handlers. This is noticed
> > by the warning below. Fix it by using devres for ordering allocations a=
nd
> > IRQ de/registration.
> > =

> > WARNING: CPU: 0 PID: 827 at drivers/staging/wfx/bus_spi.c:142 wfx_spi_i=
rq_handler+0x5c/0x64 [wfx]
> > race condition in driver init/deinit
[...]
> > --- a/drivers/staging/wfx/bus_spi.c
> > +++ b/drivers/staging/wfx/bus_spi.c
> > @@ -154,6 +154,11 @@ static void wfx_spi_request_rx(struct work_struct =
*work)
> >         wfx_bh_request_rx(bus->core);
> >  }
> > =

> > +static void wfx_flush_irq_work(void *w)
> > +{
> > +       flush_work(w);
> > +}
> > +
> >  static size_t wfx_spi_align_size(void *priv, size_t size)
> >  {
> >         // Most of SPI controllers avoid DMA if buffer size is not 32bi=
t aligned
> > @@ -207,22 +212,23 @@ static int wfx_spi_probe(struct spi_device *func)
> >                 udelay(2000);
> >         }
> > =

> > -       ret =3D devm_request_irq(&func->dev, func->irq, wfx_spi_irq_han=
dler,
> > -                              IRQF_TRIGGER_RISING, "wfx", bus);
> > -       if (ret)
> > -               return ret;
> > -
> >         INIT_WORK(&bus->request_rx, wfx_spi_request_rx);
> >         bus->core =3D wfx_init_common(&func->dev, &wfx_spi_pdata,
> >                                     &wfx_spi_hwbus_ops, bus);
> >         if (!bus->core)
> >                 return -EIO;
> > =

> > -       ret =3D wfx_probe(bus->core);
> > +       ret =3D devm_add_action_or_reset(&func->dev, wfx_flush_irq_work,
> > +                                      &bus->request_rx);
> >         if (ret)
> > -               wfx_free_common(bus->core);
> > +               return ret;
> > =

> > -       return ret;
> > +       ret =3D devm_request_irq(&func->dev, func->irq, wfx_spi_irq_han=
dler,
> > +                              IRQF_TRIGGER_RISING, "wfx", bus);
> > +       if (ret)
> > +               return ret;
> > +
> > +       return wfx_probe(bus->core);
> >  }
> > =

> >  static int wfx_spi_remove(struct spi_device *func)
> > @@ -230,11 +236,6 @@ static int wfx_spi_remove(struct spi_device *func)
> >         struct wfx_spi_priv *bus =3D spi_get_drvdata(func);
> > =

> >         wfx_release(bus->core);
> > -       wfx_free_common(bus->core);
> > -       // A few IRQ will be sent during device release. Hopefully, no =
IRQ
> > -       // should happen after wdev/wvif are released.
> > -       devm_free_irq(&func->dev, func->irq, bus);
> > -       flush_work(&bus->request_rx);
> >         return 0;
> >  }
> > =

> > diff --git a/drivers/staging/wfx/main.c b/drivers/staging/wfx/main.c
> > index 84adad64fc30..76b2ff7fc7fe 100644
> > --- a/drivers/staging/wfx/main.c
> > +++ b/drivers/staging/wfx/main.c
> > @@ -262,6 +262,16 @@ static int wfx_send_pdata_pds(struct wfx_dev *wdev)
> >         return ret;
> >  }
> > =

> > +static void wfx_free_common(void *data)
> > +{
> > +       struct wfx_dev *wdev =3D data;
> > +
> > +       mutex_destroy(&wdev->rx_stats_lock);
> > +       mutex_destroy(&wdev->conf_mutex);
> > +       wfx_tx_queues_deinit(wdev);
> > +       ieee80211_free_hw(wdev->hw);
> > +}
> > +
> >  struct wfx_dev *wfx_init_common(struct device *dev,
> >                                 const struct wfx_platform_data *pdata,
> >                                 const struct hwbus_ops *hwbus_ops,
> > @@ -332,17 +342,12 @@ struct wfx_dev *wfx_init_common(struct device *de=
v,
> >         wfx_init_hif_cmd(&wdev->hif_cmd);
> >         wfx_tx_queues_init(wdev);
> > =

> > +       if (devm_add_action_or_reset(dev, wfx_free_common, wdev))
> > +               return NULL;
> > +
> >         return wdev;
> >  }
> > =

> > -void wfx_free_common(struct wfx_dev *wdev)
> > -{
> > -       mutex_destroy(&wdev->rx_stats_lock);
> > -       mutex_destroy(&wdev->conf_mutex);
> > -       wfx_tx_queues_deinit(wdev);
> > -       ieee80211_free_hw(wdev->hw);
> > -}
> > -
> >  int wfx_probe(struct wfx_dev *wdev)
> >  {
> >         int i;
> > diff --git a/drivers/staging/wfx/main.h b/drivers/staging/wfx/main.h
> > index 875f8c227803..9c9410072def 100644
> > --- a/drivers/staging/wfx/main.h
> > +++ b/drivers/staging/wfx/main.h
> > @@ -34,7 +34,6 @@ struct wfx_dev *wfx_init_common(struct device *dev,
> >                                 const struct wfx_platform_data *pdata,
> >                                 const struct hwbus_ops *hwbus_ops,
> >                                 void *hwbus_priv);
> > -void wfx_free_common(struct wfx_dev *wdev);
> > =

> >  int wfx_probe(struct wfx_dev *wdev);
> >  void wfx_release(struct wfx_dev *wdev);
> > --
> > 2.20.1
> > =

> =

> Are you sure you can completely drop wfx_free_common()? If you want to
> use devres, I think that wfx_flush_irq_work() should call
> wfx_free_common(), no?

wfx_free_common() will be called by devres in the right order. That's ensur=
ed
by devm_add_action_or_reset() at the end of wfx_init_common().

Best Regards,
Micha=B3 Miros=B3aw
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
