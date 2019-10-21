Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D7EDF025
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Oct 2019 16:42:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C092922177;
	Mon, 21 Oct 2019 14:42:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id htbFeGyHsk9d; Mon, 21 Oct 2019 14:42:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 895C4204A3;
	Mon, 21 Oct 2019 14:42:13 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 621F21BF3D8
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 21 Oct 2019 14:42:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5EE1185C57
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 21 Oct 2019 14:42:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gCZa1mBu1rD3
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 21 Oct 2019 14:42:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8638C84AAD
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 21 Oct 2019 14:42:10 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id w18so13764954wrt.3
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 21 Oct 2019 07:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=2aZDOgZc7OOEk6QiAJuBiixGYoO8sC/cQpipyn92D3U=;
 b=LNrG3J9JycpjZ4JkV7ngL36wAQ04Ryc5TPoQbMDeJkTJNaLqIHDbDTK5v1aztvLq5y
 1d4LHf7egq2ct9tgPlaoc/6D5v1dKNR7QCRZfMn3hLzurQ5l8pPNsMbQ7jMcR5M/TjuF
 qLcBAogUATh9wkHQ65CRLSYSsMbT3f+BjQyehGA2bGalJoqvNwbsf0P3mMesCao5I+fc
 1DPN+5uzPqw0E4LLB7SG2QZmSb7WNKAbtnZzbq4ttR/i/ozL9eXn25Hrw8yFQjW8pr6A
 Ab7F2+I5GwAh9rB0JoO6ZURhP2KYC8dFw0z5NySQlvWBEyIgBvH0N9gRW87lgSR470rr
 XMAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=2aZDOgZc7OOEk6QiAJuBiixGYoO8sC/cQpipyn92D3U=;
 b=A/AVKS+7u3P1/cK5DxWE6S0ldN4Lc7xcBHvxctkGrzaBBJf/H27ymSbg0yB9wnvGvL
 e7yesYpExOmVr+jNzQqnaogXOqG4+CUkoS3ork0ysn/NcBhA2AtTX6WeTIgrj0rkzG8C
 V0hVI7KdARaRH2mCxUHTnh+nFi3cjJEGIOt7Is7FcUWNO0Id8FtXOvSz68MixtNkmCkc
 xWcaAmVsRGQZ42GbL7WEQ6BXZf0t7EzErurWSOsODll4A2iH30EQdIA3BTioCSprhD9q
 +jw+nw0jt4M3aDLP/8f/EdrgOGUCUNyTxZ42xTYcsYDP+yin4Ny9s2XX+tzGXYXsltCC
 feLg==
X-Gm-Message-State: APjAAAVzNgOm7Ddfxrv7rcXtCeX0IUixk/khI9nCyA62SGt/i2kr5ds3
 9NhIPTGYoJCcaz6CmHjaXw==
X-Google-Smtp-Source: APXvYqzcIjXDjK6p1jOQzW2ds95Vtd05yjqVPOLbh8AZDEhTl7gE44aX4+02viHs4ETz0Ob4n4Wofw==
X-Received: by 2002:a5d:53cb:: with SMTP id a11mr12962484wrw.22.1571668928774; 
 Mon, 21 Oct 2019 07:42:08 -0700 (PDT)
Received: from ninjabhubz.org (host-92-23-80-57.as13285.net. [92.23.80.57])
 by smtp.gmail.com with ESMTPSA id q22sm13200860wmj.5.2019.10.21.07.42.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 07:42:08 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
X-Google-Original-From: Jules Irenge <maxx@ninjahub.org>
Date: Mon, 21 Oct 2019 15:41:52 +0100 (BST)
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH] staging: wfx: remove unnecessary void pointer
In-Reply-To: <1631480.SfG2rUoJ8t@pc-42>
Message-ID: <alpine.LFD.2.21.1910211537300.13286@ninjahub.org>
References: <20191021122449.19343-1-jbi.octave@gmail.com>
 <1631480.SfG2rUoJ8t@pc-42>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="1395867706-1426243369-1571668927=:13286"
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
 Jules Irenge <jbi.octave@gmail.com>,
 "julia.lawall@lip6.fr" <julia.lawall@lip6.fr>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "driverdev-devel@linuxdriverproject.org"
 <driverdev-devel@linuxdriverproject.org>,
 "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--1395867706-1426243369-1571668927=:13286
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8BIT



On Mon, 21 Oct 2019, Jerome Pouiller wrote:

> On Monday 21 October 2019 14:24:49 CEST Jules Irenge wrote:
> > Remove unnecessary void pointers.
> > Issue detected and solved by coccinelle tool.
> > semantic use
> > @@expression e ;@@
> > -(void*)(e)
> > +e
> > 
> > Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> > ---
> >  drivers/staging/wfx/bh.c       | 2 +-
> >  drivers/staging/wfx/bus_sdio.c | 2 +-
> >  drivers/staging/wfx/bus_spi.c  | 2 +-
> >  drivers/staging/wfx/sta.c      | 2 +-
> >  4 files changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/staging/wfx/bh.c b/drivers/staging/wfx/bh.c
> > index 955ed3a1dd73..d7ad9227c9c4 100644
> > --- a/drivers/staging/wfx/bh.c
> > +++ b/drivers/staging/wfx/bh.c
> > @@ -76,7 +76,7 @@ static int rx_helper(struct wfx_dev *wdev, size_t read_len, int *is_cnf)
> >         hif = (struct hif_msg *)skb->data;
> >         WARN(hif->encrypted & 0x1, "unsupported encryption type");
> >         if (hif->encrypted == 0x2) {
> > -               if (wfx_sl_decode(wdev, (void *)hif)) {
> > +               if (wfx_sl_decode(wdev, hif)) {
> >                         dev_kfree_skb(skb);
> >                         // If frame was a confirmation, expect trouble in next
> >                         // exchange. However, it is harmless to fail to decode
> > diff --git a/drivers/staging/wfx/bus_sdio.c b/drivers/staging/wfx/bus_sdio.c
> > index 375e07d6d9ae..237a19b5fd16 100644
> > --- a/drivers/staging/wfx/bus_sdio.c
> > +++ b/drivers/staging/wfx/bus_sdio.c
> > @@ -66,7 +66,7 @@ static int wfx_sdio_copy_to_io(void *priv, unsigned int reg_id,
> >         if (reg_id == WFX_REG_IN_OUT_QUEUE)
> >                 sdio_addr |= bus->buf_id_tx << 7;
> >         // FIXME: discards 'const' qualifier for src
> > -       ret = sdio_memcpy_toio(bus->func, sdio_addr, (void *)src, count);
> > +       ret = sdio_memcpy_toio(bus->func, sdio_addr, src, count);
> >         if (!ret && reg_id == WFX_REG_IN_OUT_QUEUE)
> >                 bus->buf_id_tx = (bus->buf_id_tx + 1) % 32;
> > 
> > diff --git a/drivers/staging/wfx/bus_spi.c b/drivers/staging/wfx/bus_spi.c
> > index ab0cda1e124f..bd74801e7461 100644
> > --- a/drivers/staging/wfx/bus_spi.c
> > +++ b/drivers/staging/wfx/bus_spi.c
> > @@ -90,7 +90,7 @@ static int wfx_spi_copy_to_io(void *priv, unsigned int addr,
> >         struct wfx_spi_priv *bus = priv;
> >         u16 regaddr = (addr << 12) | (count / 2);
> >         // FIXME: use a bounce buffer
> > -       u16 *src16 = (void *)src;
> > +       u16 *src16 = src;
> >         int ret, i;
> >         struct spi_message      m;
> >         struct spi_transfer     t_addr = {
> > diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
> > index 688586e823c0..842158b7e805 100644
> > --- a/drivers/staging/wfx/sta.c
> > +++ b/drivers/staging/wfx/sta.c
> > @@ -896,7 +896,7 @@ static int wfx_upload_beacon(struct wfx_vif *wvif)
> >         /* TODO: Distill probe resp; remove TIM and any other beacon-specific
> >          * IEs
> >          */
> > -       mgmt = (void *)skb->data;
> > +       mgmt = skb->data;
> >         mgmt->frame_control =
> >                 cpu_to_le16(IEEE80211_FTYPE_MGMT | IEEE80211_STYPE_PROBE_RESP);
> > 
> Hello Jules,
> 
> Thank you for your work.
> 
> Did you check that the code continue to compile without warnings after
> applying this patch?
> 
> -- 
> Jérôme Pouiller
> 
> 

No,

I just checked now and it does not compile complaining of missing 
pointer argument on wsl wfx_sl_encode function.

Thanks for the feedback. 

Jules
--1395867706-1426243369-1571668927=:13286
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--1395867706-1426243369-1571668927=:13286--
