Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 135D71B870A
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Apr 2020 16:30:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7A2CD86A4F;
	Sat, 25 Apr 2020 14:30:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c7PyH0UywaWz; Sat, 25 Apr 2020 14:30:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 281BD8682C;
	Sat, 25 Apr 2020 14:29:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 547F51BF5E9
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 14:29:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5010D2037E
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 14:29:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c4G2jPjenAhs for <devel@linuxdriverproject.org>;
 Sat, 25 Apr 2020 14:29:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by silver.osuosl.org (Postfix) with ESMTPS id 871102013C
 for <devel@driverdev.osuosl.org>; Sat, 25 Apr 2020 14:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1587824984;
 bh=6kuT8funJ3vqa7lB03kjENvAIUSytBd9cIbMLtianfQ=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=Fi9bV+b3qyIuw0/JEzOwnn32osfHPqJrjl3ti1/5LeA0G9SIcvpJLAl9KedEu+kjD
 lyGIeCdIEjIF27FzPQaNezjYa3w1/ZrYrzdjaebQbmL5yrIvGABRTLc6HTABZkvKXj
 79EOM0rDxzGPgtza20/PRZ3zK/El+FQeBOIF/wf8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([83.52.229.196]) by mail.gmx.com (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1My32L-1jH9wl1qCl-00zVpa; Sat, 25
 Apr 2020 16:29:44 +0200
Date: Sat, 25 Apr 2020 16:29:40 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH 1/3] staging: vt6656: Remove the local variable "array"
Message-ID: <20200425142940.GC3213@ubuntu>
References: <20200425123844.7959-1-oscar.carter@gmx.com>
 <20200425123844.7959-2-oscar.carter@gmx.com>
 <b5aa72347748f35245f2fd0272ab3957179ed2eb.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b5aa72347748f35245f2fd0272ab3957179ed2eb.camel@perches.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:dkB5rjutDIQD/CvHWNEBYuuKTh5MiG8745iheIG8SFk2KhEMvhm
 YovWfcFPvhZcZAQDG+JNy1VCiK38fD89uEgoaw6L0UM3m69LqBOq8nkfghHpDp81KGHT1FG
 DwcXGvd98tVxHND51M0F47lgodRav4uSYdVOh2pGf3nHCx+2WvveP+6DBVZYHKY4GiYGZUn
 iV3tprCvxBd8vg+OH30VQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:HeTqSwBaFPI=:5PCsWShHQRycQp2zGAqd1J
 9BLyVoi0sh/bmNzmBKr1wQYb5UoBltipZkdPcwRTluamI6DpNXZovyiAiE551thuDK3uhHc64
 4Thoyoi8hyYHkynHUzHukRotM9us9tMyC3cF7PMkfO0p3UAnmLArwRKbAVAL7ZmvjWbo4QRIf
 SteMrdr6JOkRa627FTw9Q4UYJ+ge4cbbXLfLWU4FySdLcBokggf1tRbUChNwT/L5D5V7kBpZB
 FhJbeAWLeoLlYpKZ58PpHzn5QB/laDhCEkWSZh+KvqDwhSZV5v4muMJJHsRpFJXaGdHnc6x5Z
 4v3zhxegsBMw7mIMqJIHRM9HRp0zCdd0cbQSB40H7icUHM9CWEYNKoTS0NopSkt21ly0lrV9b
 Yd2og9nTkXuRM9phmJ0D2+X0eZmnz9f9etefWrtHFudzRD8yRMzjrOqiBIeotrllw/UQ2cbvQ
 gGd5EEMHL+yRLVomkMoE8C4ww+M8QcmxPnQaM7xs8aac7hqIvTpRm0ChtigMMEHsEZlcnS+dA
 /j1jx0KDRqXvTMzPoPV1IYlJJnlzTGInCIkrmAnRQ/vwnxvFKZozMDZTz++YyLfg8mgV0JlGR
 DytqJn4WUT0+sJkV0n8tgvgSixaTJgtsqi5jF8XSWtp6DC1wuGU2IHNf5Z+UC3cWNu+nJfACQ
 dZ2NLorCCRHOkZVVwKpa8wWldS7pdP+ZX7veJ9dLi3TSkUwTWzrhua0+tc3LvHzDzOwF4no3i
 TIP9sFDVF71MU8HUi6RhstbjIYyChWB0PmEBj7qgYU7B/wjxJuK3/97cCeiHdOEfxDncUMJ6Q
 fDL8F+0tFamuxijlWHVJ5E9mMGo4tfbwxLTv62MWTmYJoSl4KrlTqc0o2p5cfkh7F16FfA/7D
 SqLsroC7K9WmIlaF+boF2gBYhtZzKELENSPL9PvtMufbcqky76tQkPQaTNqvFuwgcWfhceLe9
 k0nclayxVbrtfri8m87z/lpq/mp2xFPUWAvtmCq6z8c4xi6pnI3PVnMNfMN/C0J2GhcMMZYyB
 Z/O187zQtitIvwY7kMVHUafAVYe5CbsJEndfoCLqDFnRMKR+rQVeHYxtQktQMpHd4o9KYkFWf
 ilVTP1uG13lHu326DnjwmgUgrJxg5QSZYtFYZtCWLMK4GHxMsvhWSjcNY1q6DrCaVwM9LAzXu
 LvP9ZjYZMThxjlHT+Q9yOWQpqVab4vj7EdIaeiif3ope9d9Gw6yyOba3uMyS6LQyeqLxCSiuQ
 t+cz6NlTjPFEPKU3n
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Malcolm Priestley <tvboxspy@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Forest Bond <forest@alittletooquiet.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Apr 25, 2020 at 05:50:39AM -0700, Joe Perches wrote:
> On Sat, 2020-04-25 at 14:38 +0200, Oscar Carter wrote:
> > Remove the local variable "array" and all the memcpy function calls
> > because this copy operation from different arrays to this variable is
> > unnecessary.
>
> You might write here that vnt_control_out already does
> a kmemdup copy of its const char *buffer argument and
> this was made unnecessary by:
>
> commit 12ecd24ef93277e4e5feaf27b0b18f2d3828bc5e
> Author: Malcolm Priestley <tvboxspy@gmail.com>
> Date:   Sat Apr 22 11:14:57 2017 +0100
>
>     staging: vt6656: use off stack for out buffer USB transfers.
>
>     Since 4.9 mandated USB buffers be heap allocated this causes the driver
>     to fail.
>
>     Since there is a wide range of buffer sizes use kmemdup to create
>     allocated buffer.
>

Great. I will add all this information to clarify the commit changelog.

>
> > The same result can be achieved using the arrays directly.
> >
> > Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> > ---
> >  drivers/staging/vt6656/rf.c | 21 +++++----------------
> >  1 file changed, 5 insertions(+), 16 deletions(-)
> >
> > diff --git a/drivers/staging/vt6656/rf.c b/drivers/staging/vt6656/rf.c
> > index 06fa8867cfa3..82d3b6081b5b 100644
> > --- a/drivers/staging/vt6656/rf.c
> > +++ b/drivers/staging/vt6656/rf.c
> > @@ -770,7 +770,6 @@ int vnt_rf_table_download(struct vnt_private *priv)
> >  	u16 length1 = 0, length2 = 0, length3 = 0;
> >  	u8 *addr1 = NULL, *addr2 = NULL, *addr3 = NULL;
> >  	u16 length, value;
> > -	u8 array[256];
> >
> >  	switch (priv->rf_type) {
> >  	case RF_AL2230:
> > @@ -817,10 +816,8 @@ int vnt_rf_table_download(struct vnt_private *priv)
> >  	}
> >
> >  	/* Init Table */
> > -	memcpy(array, addr1, length1);
> > -
> >  	ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, 0,
> > -			      MESSAGE_REQUEST_RF_INIT, length1, array);
> > +			      MESSAGE_REQUEST_RF_INIT, length1, addr1);
> >  	if (ret)
> >  		goto end;
> >
> > @@ -832,10 +829,8 @@ int vnt_rf_table_download(struct vnt_private *priv)
> >  		else
> >  			length = length2;
> >
> > -		memcpy(array, addr2, length);
> > -
> >  		ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, value,
> > -				      MESSAGE_REQUEST_RF_CH0, length, array);
> > +				      MESSAGE_REQUEST_RF_CH0, length, addr2);
> >  		if (ret)
> >  			goto end;
> >
> > @@ -852,10 +847,8 @@ int vnt_rf_table_download(struct vnt_private *priv)
> >  		else
> >  			length = length3;
> >
> > -		memcpy(array, addr3, length);
> > -
> >  		ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, value,
> > -				      MESSAGE_REQUEST_RF_CH1, length, array);
> > +				      MESSAGE_REQUEST_RF_CH1, length, addr3);
> >  		if (ret)
> >  			goto end;
> >
> > @@ -870,11 +863,9 @@ int vnt_rf_table_download(struct vnt_private *priv)
> >  		addr1 = &al7230_init_table_amode[0][0];
> >  		addr2 = &al7230_channel_table2[0][0];
> >
> > -		memcpy(array, addr1, length1);
> > -
> >  		/* Init Table 2 */
> >  		ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, 0,
> > -				      MESSAGE_REQUEST_RF_INIT2, length1, array);
> > +				      MESSAGE_REQUEST_RF_INIT2, length1, addr1);
> >  		if (ret)
> >  			goto end;
> >
> > @@ -886,11 +877,9 @@ int vnt_rf_table_download(struct vnt_private *priv)
> >  			else
> >  				length = length2;
> >
> > -			memcpy(array, addr2, length);
> > -
> >  			ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, value,
> >  					      MESSAGE_REQUEST_RF_CH2, length,
> > -					      array);
> > +					      addr2);
> >  			if (ret)
> >  				goto end;
> >
> > --
> > 2.20.1
> >
>
thanks,
oscar carter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
