Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E3124869F
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Aug 2020 16:01:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 28BC88763E;
	Tue, 18 Aug 2020 14:01:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EHQdfxlD3ZUC; Tue, 18 Aug 2020 14:01:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3481C870A1;
	Tue, 18 Aug 2020 14:01:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 23FB81BF33B
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 14:01:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 20EFF84B65
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 14:01:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IQmL_H02T7hK for <devel@linuxdriverproject.org>;
 Tue, 18 Aug 2020 14:01:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1816683FF4
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 14:01:46 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4792C20706;
 Tue, 18 Aug 2020 14:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597759305;
 bh=UPYNOE1fTUq6nftlsWgimnfBgSq0ipHEEplvkeAhMKo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=m7Thd5r2sdzbG+01QHiutP3X24Vlgdboh9jGho7cp86YzWzVZJHifPSrltWF5xK0v
 EOrDPfGko5PQPHCfpOeOfBT62oOL7SoTU+2YlByZaaBtFADHIxrfMFBMOcPaPmo+5K
 aWqjcpfF4lcrXeGvtZ4rrjE8k0JWQNMpq11aVYWM=
Date: Tue, 18 Aug 2020 16:02:09 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH v2] staging: wfx: refactor to avoid duplication at hif_tx.c
Message-ID: <20200818140209.GA547677@kroah.com>
References: <20200805121442.GA31953@tsnow>
 <2040746.q8W4dvF0dS@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2040746.q8W4dvF0dS@pc-42>
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
Cc: devel@driverdev.osuosl.org, Tomer Samara <tomersamara98@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Aug 10, 2020 at 11:38:33AM +0200, J=E9r=F4me Pouiller wrote:
> Hello Tomer,
> =

> On Wednesday 5 August 2020 14:14:42 CEST Tomer Samara wrote:
> > =

> > Add functions wfx_full_send(), wfx_full_send_no_reply_async(),
> > wfx_full_send_no_reply() and wfx_full_send_no_reply_free()
> > which works as follow:
> > wfx_full_send() - simple wrapper for both wfx_fill_header()
> >                   and wfx_cmd_send().
> > wfx_full_send_no_reply_async() - wrapper for both but with
> >                                  NULL as reply and size zero.
> > wfx_full_send_no_reply() - same as wfx_full_send_no_reply_async()
> >                            but with false async value
> > wfx_full_send_no_reply_free() - same as wfx_full_send_no_reply()
> >                                 but also free the struct hif_msg.
> > =

> > Signed-off-by: Tomer Samara <tomersamara98@gmail.com>
> > ---
> > Changes in v2:
> >  - Changed these functions to static
> > =

> > drivers/staging/wfx/hif_tx.c | 180 ++++++++++++++++-------------------
> >  1 file changed, 80 insertions(+), 100 deletions(-)
> > =

> > diff --git a/drivers/staging/wfx/hif_tx.c b/drivers/staging/wfx/hif_tx.c
> > index 5110f9b93762..17f668fa40a0 100644
> > --- a/drivers/staging/wfx/hif_tx.c
> > +++ b/drivers/staging/wfx/hif_tx.c
> > @@ -40,7 +40,7 @@ static void wfx_fill_header(struct hif_msg *hif, int =
if_id,
> > =

> >  static void *wfx_alloc_hif(size_t body_len, struct hif_msg **hif)
> >  {
> > -       *hif =3D kzalloc(sizeof(struct hif_msg) + body_len, GFP_KERNEL);
> > +       *hif =3D kzalloc(sizeof(*hif) + body_len, GFP_KERNEL);
> =

> This change is not related to the rest of the patch. It should probably be
> split out.
> =

> >         if (*hif)
> >                 return (*hif)->body;
> >         else
> > @@ -123,9 +123,39 @@ int wfx_cmd_send(struct wfx_dev *wdev, struct hif_=
msg *request,
> >         return ret;
> >  }
> > =

> > +static int wfx_full_send(struct wfx_dev *wdev, struct hif_msg *hif, vo=
id *reply,
> > +                        size_t reply_len, bool async, int if_id, unsig=
ned int cmd,
> > +                        int size)
> > +{
> > +       wfx_fill_header(hif, if_id, cmd, size);
> > +       return wfx_cmd_send(wdev, hif, reply, reply_len, async);
> > +}
> =

> This function takes 8 parameters. Are you sure it simplifies the code?
> =

> In add, it does two actions: modify hif and send it. I would keep these
> two actions separated.
> =

> > +
> > +static int wfx_full_send_no_reply_async(struct wfx_dev *wdev, struct h=
if_msg *hif, int if_id,
> > +                                       unsigned int cmd, int size, boo=
l async)
> > +{
> > +       return wfx_full_send(wdev, hif, NULL, 0, async, if_id, cmd, siz=
e);
> > +}
> =

> Does it make sense to have a parameter 'async' to
> wfx_full_send_no_reply_async()? It is weird to call this function with
> async=3Dfalse, no?
> =

> > +
> > +static int wfx_full_send_no_reply(struct wfx_dev *wdev, struct hif_msg=
 *hif, int if_id,
> > +                                 unsigned int cmd, int size)
> > +{
> > +       return wfx_full_send_no_reply_async(wdev, hif, if_id, cmd, size=
, false);
> > +}
> > +
> > +static int wfx_full_send_no_reply_free(struct wfx_dev *wdev, struct hi=
f_msg *hif, int if_id,
> > +                                      unsigned int cmd, int size)
> > +{
> > +       int ret;
> > +
> > +       ret =3D wfx_full_send_no_reply(wdev, hif, if_id, cmd, size);
> > +       kfree(hif);
> > +       return ret;
> > +}
> =

> One more time, sending the data and releasing are unrelated actions.
> Indeed, it saves a few lines of code, but is it really an improvement?
> =

> > +
> >  // This function is special. After HIF_REQ_ID_SHUT_DOWN, chip won't re=
ply to any
> >  // request anymore. We need to slightly hack struct wfx_hif_cmd for th=
at job. Be
> > -// carefull to only call this funcion during device unregister.
> > +// careful to only call this function during device unregister.
> =

> Not related to the rest of the patch.
> =

> [...]
> =

> As it stands, I think this change does not improve the code. Obviously, it
> is a subjective opinion. What the other developers think about it?

I agree with you, this just makes things more complex for no good
reason.

Now dropped from my review queue.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
