Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B12942D2C7
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 May 2019 02:19:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E8E0587D86;
	Wed, 29 May 2019 00:19:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H65APHIJs6QU; Wed, 29 May 2019 00:19:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 719CD87D3D;
	Wed, 29 May 2019 00:19:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A0B421BF983
 for <devel@linuxdriverproject.org>; Wed, 29 May 2019 00:19:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 97DB386146
 for <devel@linuxdriverproject.org>; Wed, 29 May 2019 00:19:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g9iVIfh5dwNn for <devel@linuxdriverproject.org>;
 Wed, 29 May 2019 00:19:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9739B85CA1
 for <devel@driverdev.osuosl.org>; Wed, 29 May 2019 00:19:07 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id q16so621639ljj.8
 for <devel@driverdev.osuosl.org>; Tue, 28 May 2019 17:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BtTsiX9fLP1ilIjEBEUD3JJBC+K61VnyY/gr7l2/6Ws=;
 b=NnONe+izAdPLfKUy8Po++z1ngR/rXmo0Qsl+xByZnGpvVdobMUqZHmA5KwfW7WvWn+
 3ANkzwb2vuN5lZMvzrHLkb+z4R+UVi8444eOuoN5YW4HeBzb8Z2ZJAWD69jp6XUnHar1
 +qNsraJtJTttKc32/+WD3i0TVrlFXtFKXk+jc37zgkA+cqBcCfGpqCAMo35/NJ4l2bsd
 O12WI/FQQAfYCWItMDxaZTQFN3AKY88Rif42fUDNgbOVSGUJge4tIMx2SCB0GioKjJXY
 9eQvgJudtOsEagr/IGzUNyv1kzMbDwpA4Ln4bQ/v5PcIdgTOKT6D+P/I4DS1JyUEU/X+
 T/FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BtTsiX9fLP1ilIjEBEUD3JJBC+K61VnyY/gr7l2/6Ws=;
 b=ruyHtOi0nWwu4Dw1WmVeSZeo04HiWvQ5BEKNeSCblJX/0hBkhD7zw7w5Dtstpnsd8r
 FKU0NXlrhzuH/Bmt095PFSWdrmgY1M5SQvQbl+18XyjaqRB7iDuCK8YSzpYDjjRsO45x
 eqx4h9S2u4PPnqQpHpBl4j6i3fG0WFyxR+GIeMehaooagzZwOZqNdwyFtQmvyqVXYs66
 fXOVb6QAVLRw8nNLMktKPimdZYnjyp2DvsljNkxLsVCdrv2t2QVSqyffyfbhO2stzK6I
 1cI+ieEurOPS38jdeZjYnyJpDBCkeKJhfhir9iM164GoDbY64SlQ1Po8vw7hDPfMilx/
 vnYA==
X-Gm-Message-State: APjAAAX0xpBfq9QEgYqKROdeZqvxMJKIA98sTsD7+euKp6LJdl+Tz3uN
 l7NN+jMx2nmvQzZfnLU9XBLwj/MamBDezD2xfH4=
X-Google-Smtp-Source: APXvYqwplNqkarrINTuU9IxbWBiqARqN45Gt9GkeoXDEmXe+Phow9DEhwG8Xi+THEJBYMpPcbgnAI2uVS2yJev3oqO0=
X-Received: by 2002:a2e:9b54:: with SMTP id o20mr4446799ljj.95.1559089145667; 
 Tue, 28 May 2019 17:19:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190522004655.20138-1-fabiolima39@gmail.com>
 <20190522094130.GS31203@kadam>
In-Reply-To: <20190522094130.GS31203@kadam>
From: Fabio Lima <fabiolima39@gmail.com>
Date: Tue, 28 May 2019 21:18:47 -0300
Message-ID: <CAAM19CGt1UoAXgQWoO85k7UQ8r3rBx6S7-po1aC5OfQZbcO55Q@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: Add missing blank lines
To: Dan Carpenter <dan.carpenter@oracle.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 lkcamp@lists.libreplanetbr.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em qua, 22 de mai de 2019 06:41, Dan Carpenter
<dan.carpenter@oracle.com> escreveu:
>
> On Tue, May 21, 2019 at 09:46:55PM -0300, Fabio Lima wrote:
> > This patch resolves the following warning from checkpatch.pl
> > WARNING: Missing a blank line after declarations
> >
> > Signed-off-by: Fabio Lima <fabiolima39@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/core/rtw_debug.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_debug.c b/drivers/staging/rtl8723bs/core/rtw_debug.c
> > index 9f8446ccf..853362381 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_debug.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_debug.c
> > @@ -382,6 +382,7 @@ ssize_t proc_set_roam_tgt_addr(struct file *file, const char __user *buffer, siz
> >       if (buffer && !copy_from_user(tmp, buffer, sizeof(tmp))) {
> >
> >               int num = sscanf(tmp, "%hhx:%hhx:%hhx:%hhx:%hhx:%hhx", addr, addr+1, addr+2, addr+3, addr+4, addr+5);
> > +
> >               if (num == 6)
> >                       memcpy(adapter->mlmepriv.roam_tgt_addr, addr, ETH_ALEN);
> >
>
> I'm sorry but this function is really such nonsense.  Can you send a
> patch to re-write it instead?
>
> drivers/staging/rtl8723bs/core/rtw_debug.c
>    371  ssize_t proc_set_roam_tgt_addr(struct file *file, const char __user *buffer, size_t count, loff_t *pos, void *data)
>    372  {
>    373          struct net_device *dev = data;
>    374          struct adapter *adapter = (struct adapter *)rtw_netdev_priv(dev);
>    375
>    376          char tmp[32];
>    377          u8 addr[ETH_ALEN];
>    378
>    379          if (count < 1)
>
> This check is silly.  I guess the safest thing is to change it to:
>                 if (count < sizeof(tmp))
>
>    380                  return -EFAULT;
>
> It should be return -EINVAL;
>
>    381
>    382          if (buffer && !copy_from_user(tmp, buffer, sizeof(tmp))) {
>
> Remove the check for if the user passes a NULL buffer, because that's
> already handled in copy_from_user().  Return -EFAULT if copy_from_user()
> fails.
>
>         if (copy_from_user(tmp, buffer, sizeof(tmp)))
>                 return -EFAULT;
>
>
>    383
>
> Extra blank line.
>
>    384                  int num = sscanf(tmp, "%hhx:%hhx:%hhx:%hhx:%hhx:%hhx", addr, addr+1, addr+2, addr+3, addr+4, addr+5);
>
> You will need to move the num declaration to the start of the function.
>
>    385                  if (num == 6)
>    386                          memcpy(adapter->mlmepriv.roam_tgt_addr, addr, ETH_ALEN);
>
> If num != 6 then return -EINVAL;
>
>    387
>    388                  DBG_871X("set roam_tgt_addr to "MAC_FMT"\n", MAC_ARG(adapter->mlmepriv.roam_tgt_addr));
>    389          }
>    390
>    391          return count;
>    392  }
>
> regards,
> dan carpenter

Thanks for your feedback.
This is my first patch and I will send the second patch with
modifications that you suggest.

Fabio Lima
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
