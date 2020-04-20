Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B8AC61B1159
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Apr 2020 18:19:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 639D78475A;
	Mon, 20 Apr 2020 16:19:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id riTh3XlO06SJ; Mon, 20 Apr 2020 16:19:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DCFC08743E;
	Mon, 20 Apr 2020 16:19:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 449D61BF327
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 16:19:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 40D2D87E4C
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 16:19:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MfNF2zfCQGeu for <devel@linuxdriverproject.org>;
 Mon, 20 Apr 2020 16:19:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 78D6F877AE
 for <devel@driverdev.osuosl.org>; Mon, 20 Apr 2020 16:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1587399537;
 bh=fXPM/87E9APWDzv/OSIOkhof4i7gINbDeHO5DGVQFF8=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=Ob9meWH2Bq3e5sBeFdmIwrTNcRrlKUOlg+3G38krH+KgbohpI6dcC6ZfIdTlcLBI1
 KrSeCmY3sCJ+IUfbb5Xbg3NW+zzCIuwDQmWAuGn97HMwCXJqkcelTQDVNiSt52YI4f
 cdZlhAePWk15huNdQNSXtWFpsu9K3oc+CNJ1RPOQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([83.52.229.196]) by mail.gmx.com (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1Mr9Bk-1iv8Nz1SgY-00oHdM; Mon, 20
 Apr 2020 18:18:57 +0200
Date: Mon, 20 Apr 2020 18:18:55 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [RFC] staging: vt6656: Add formula to the vnt_rf_addpower function
Message-ID: <20200420161855.GB3159@ubuntu>
References: <20200413140209.4520-1-oscar.carter@gmx.com>
 <20200414131214.GI1163@kadam> <20200415162541.GA3893@ubuntu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415162541.GA3893@ubuntu>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:/gHKCCj3FEdqKfh0cpJAW9ZZ0PjZkBMEgnKvL/d+Gf7CvbDSUa+
 El0DOoq4g0ftH07Ahxlln3PSy42tHO6kKfLrV2rtYafQXOCUNn9VesCoBRO9F2eNfG3dKny
 UQQcagmzKMsu6QLgAgkLatiEHZQUOhrpA8JhPhDBIJN+GATJJvfu6cVqVtjm/263IgF8H5x
 IZ7VJQtKnLoCIzEEP3oVg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:bvbmTF9i7h8=:flgX5rlqRxRpz1kaq99pXO
 ZIndrCLpYKxluwznrkVKml561dBZ3Xi3FYCJy0AfYqckcEy607prAjTqtDpi3WrS7CSf1h9Xh
 W3wAERhNXGgWRuEa9z8oRI6B9cfwr83CBB7oDjidClW+lNtrD2yOzDgJHtkTUnTk+knfKQoeh
 rfbEbiawtAqGQEyoStSVPefBd2gyopKXih5LIT4iyRddvs2nr8AJW8lzfAfTG0FU/iMS+ASRK
 HbBeutrh3gI7/o+UBFb9lVV2XSHcz0S22IOmD8+Vh85nvRPdgH7qXExSCIjnwMphBTdNEu5Yk
 F7McEPP3BAbcpJOzzyyH6mJmCAKl4QaEgWwJtlAzhdAZWe/SmQoWHkjdujAtgCtjskoq7hHBT
 48gQ47C0mOaHjUeY26PuI+b7G7bFjY590o/he89xGPOSAyIcZP9dOMAjDKB+k0BYkqaUzhfLY
 3jCfkixGcKbHcNwLZiGHTvK3qbcdIbdkEIwPC3N6+w82T68iCQ5o5sJvoNXfn7wyQQLDP8863
 2Ih+SxahmMUsFIzOBHyatlv1Qy8hslo8GTKBEmin7gzjcTKzLVgtGbNDGvWNZURnrsh/dsZhz
 rFx5Cljs8JYzfc1HD2E4A6HeJzXYt2BZgUmsjGcHOkSXTCRj4iy16r54at7iCABnIJ9k+Q8SL
 rxgenvua976Q1TjKjPCux0szGFCS1DQZ6Hr3QAWKxlOiDmqLfl01g0Z2orgw7pPcX0pJEff0N
 CsxxK49cLuCByA353E5jimsp59I2nyZLll5z6/6WhIDTK4Nlkm1Y2pu7kmoOToFHyS0dnkIUZ
 exBPTDK70iMQrjfcRGHcIMRjOmywhoACY5J+oUVKIgGLn0zrIjoS7nKNPEITYSti5tKHNOmDZ
 RuwLe1YyrG2VcI4PIkSNHm0HbZuiwSZhpBG6rlZkMfhgnMEl5N8WRaK3enzjpHkTbwrlpmBlp
 jmrHu21krNkEdgnEVxY5YMBNn1OZWf+W+hDJwIfhF+mYfhnGJJ4Tk+2Vzc3/Fb7akEFSbr8H2
 DoyrOD2Zc1YL4WoqYDiqCp/9VjZkel4DIG5mo9DqpMccSUASLaikgOv6vRuhGLTgC7qS3rQ8H
 Eg2X4cVlM52lvFRVbUQgZO3rQGR+UyMqbXf4z0Ibo0apzTwMphObnx12thVJtxJ4g+hXcNiyC
 Ki/TiBAHo6edEkaa/BiEgyn0kIyDFoHtdKNeSmlXKGcQhohhHCPD5GUNeYtjLVsWpcHqoFy1+
 40w5BOr4ry1CGWEox
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
Cc: Malcolm Priestley <tvboxspy@gmail.com>, devel@driverdev.osuosl.org,
 Oscar Carter <oscar.carter@gmx.com>, Forest Bond <forest@alittletooquiet.net>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Apr 15, 2020 at 06:25:41PM +0200, Oscar Carter wrote:
> On Tue, Apr 14, 2020 at 04:12:14PM +0300, Dan Carpenter wrote:
> > On Mon, Apr 13, 2020 at 04:02:09PM +0200, Oscar Carter wrote:
> > > diff --git a/drivers/staging/vt6656/rf.c b/drivers/staging/vt6656/rf.c
> > > index 4f9aba0f21b0..3b200d7290a5 100644
> > > --- a/drivers/staging/vt6656/rf.c
> > > +++ b/drivers/staging/vt6656/rf.c
> > > @@ -575,28 +575,14 @@ int vnt_rf_setpower(struct vnt_private *priv, u32 rate, u32 channel)
> > >
> > >  static u8 vnt_rf_addpower(struct vnt_private *priv)
> > >  {
> > > +	s32 base;
> >
> > Just use "int".  s32 is for when signed 32 bit is specified in the
> > hardware.  I realize that it's done in this file, but if all your
> > friends jumped off a bridge doesn't mean you should drink their kool-aid.
>
> Ok, lesson learned and thanks for the aclaration about when use every type.
>
> > >  	s32 rssi = -priv->current_rssi;
> > >
> > >  	if (!rssi)
> > >  		return 7;
> > >
> > > -	if (priv->rf_type == RF_VT3226D0) {
> > > -		if (rssi < -70)
> > > -			return 9;
> > > -		else if (rssi < -65)
> > > -			return 7;
> > > -		else if (rssi < -60)
> > > -			return 5;
> > > -	} else {
> > > -		if (rssi < -80)
> > > -			return 9;
> > > -		else if (rssi < -75)
> > > -			return 7;
> > > -		else if (rssi < -70)
> > > -			return 5;
> > > -	}
> > > -
> > > -	return 0;
> > > +	base = (priv->rf_type == RF_VT3226D0) ? -60 : -70;
> > > +	return (rssi < base--) ? ((rssi - base) / -5) * 2 + 5 : 0;
> >                        ^^^^^^
> > I quite hate this postop.  It would have been cleaner to write it like:
> >
> > 	return (rssi < base) ? ((rssi - (base - 1)) / -5) * 2 + 5 : 0
>                                         ^        ^
> Now, if we apply the minus operator one parentheses can be removed. The
> same expression is now:
>
>   	return (rssi < base) ? ((rssi - base + 1) / -5) * 2 + 5 : 0
>
> I think it's clear enought.
>
> > I'm sorry, I'm not clever enough to figure out the potential values of
> > "rssi".
>
> The IEEE 802.11 standard specifies that RSSI can be on a scale of 0 to
> up to 255, and that each chipset manufacturer can define their own max
> RSSI value.  It's all up to the manufacturer.
>
> > How did you work out this formula?  It feels like it came from
> > a standard or something?
>
> I realized that the two branches of the if statement return the same
> values (5, 7, 9) and that each value has a difference of 2 units from
> the previous one. Also, every branch has 3 ranges, and every range has
> an interval of 5. The only difference in this case is the "base" value
> of each branch.
>
> So, the solution was obtain the range index --> (rssi - base) / -5
> Then, we need two units for every range index -> * 2
> Now, the return value starts with five -------> + 5
>
> The base-- was to obtain the range index the same that the orignal
> function.
>
> > Do we not have a function already which implements the standard?
>
> I have been searching but I have not found anything that relates the
> RSSI value with the amount of power to add. I have found
>
> struct station_parameters -> member txpwr (struct sta_txpwr type)
>
> but all the functions related to this doesn't set the tx power
> depending on the RSSI value.
>
I will create a new version with the previous comments (only change the
type of "base" variable to "int"), but what's the correct process for
an RFC patch. I need to send an email with the subject RFC v2 or now I
can send an email with the subject PATCH v2.

> > regards,
> > dan carpenter
> >
>
> thanks,
> oscar carter

thanks,
oscar carter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
