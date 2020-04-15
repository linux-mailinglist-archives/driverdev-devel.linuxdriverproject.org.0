Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FEA1AAD4D
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Apr 2020 18:26:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 48F7E87C16;
	Wed, 15 Apr 2020 16:26:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3S1yk-mFSiGR; Wed, 15 Apr 2020 16:26:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 85CF487952;
	Wed, 15 Apr 2020 16:26:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BCE8F1BF326
 for <devel@linuxdriverproject.org>; Wed, 15 Apr 2020 16:26:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B8F868598A
 for <devel@linuxdriverproject.org>; Wed, 15 Apr 2020 16:26:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DUV2KuVCF1-e for <devel@linuxdriverproject.org>;
 Wed, 15 Apr 2020 16:26:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3B348856BF
 for <devel@driverdev.osuosl.org>; Wed, 15 Apr 2020 16:26:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586967955;
 bh=zl3dIME8m5TAi4H0VnWtCwmfus3CS38tz+uqFrZLE1w=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=EoWkEo3fYpyU9jMc6NtPYxkbJNsU49EZB02cQCuQO9SzL4hW9OyzHimcLgp7X/FuP
 v/sz2iARfIKUlRUBEeR3KCYHHmpDWYBV+xeAcpgIaFoLbYKyI2fnzEh/ykyMLgAl2C
 rB34eP65M0VuWKagZKsRXyHlM41nzdnjlUFjf9B4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([83.52.229.196]) by mail.gmx.com (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MybGX-1j3lzq20nF-00z2mN; Wed, 15
 Apr 2020 18:25:55 +0200
Date: Wed, 15 Apr 2020 18:25:41 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [RFC] staging: vt6656: Add formula to the vnt_rf_addpower function
Message-ID: <20200415162541.GA3893@ubuntu>
References: <20200413140209.4520-1-oscar.carter@gmx.com>
 <20200414131214.GI1163@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414131214.GI1163@kadam>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:nYv/kF/we1JsuO8LWjxXq+0QxYonZ31MEK38T47ADdrh0589O4i
 kKbTs3IDTUpwuWyR9qXUZ11R4nSeLzNGWtzyefZefMGS0OVxboJYvnfCnbuZL0KU/tmt0vF
 GHXlRtEjnYnZNNY/jMZeZL3oMWv04e2+4HJ06Ct7DcTxgb18fOoBZgGxO7qDVfSm0hjQWJ3
 CiJI6fa0cQzg5E/In9PvQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:fBHZRgKJ54A=:dr7qHGkXpeErDhFX4qfEZ4
 +MhL7j3VSPyXXieVkOuSc0iiQyUZwEQF7TFIEhe9lVIdjTBHL3OZNM+ftFQmwjZUMG6IXqS8c
 2m5xtZ61xduDMiKzsEFjGxS4rHw0idiXHeLCF96+Jpf1dcBZXjTZ53liRAzYe9n3F9bWAF+HZ
 Pe94AK7Um6mfMbm1X7tj2TUIBhK3P0M2ZI2eVWwZ8Lj5cqMGRatmxZAmAR4MzDhZn384rLwEj
 pu4334sGEpHc/UZcYtZGjZxKG7wM/JbAC0HoiSyYyLPjWaY/0jrNHYj2hxinlMNm/lEhxiUum
 tWxW6GKCANK+TIHxeLusu0HaZlYNBMIfhgR6RRmijSxjC/u65qvNcmkSeHSlMOUCLWZLI80OJ
 itnzIw9TrxK9fDSfBg4Bwgs3YLpdypmvyUk0UJVdtWd1cINH7n7loqBY4hYsFJ4iZhwTGeEfa
 TS6s8zUpXxx2UVvbZ6rFAjFl1huaGAivsCM9Hk1eaJyAwfqHYU0g4vi8SrNuM4BIIWv23FCmv
 ziyQrY4ne9CcFc0zzWFhaCZMgGRiUBRnUOmURfl8zcjxHqyJYnbEiFIDirPNyfnA3ReUT2951
 Ic2zXmbqW/w+vcvGimuhHhylLc9/lfPQqpaBjvrQm3IYdseWW56oZYwHAGjLZyI/4kjF2Lx9e
 0aI6KlYDBTMOTf22GV4vtdpZuj6qURZVDEnjhljW8CwtyQMiXK+0HUBRM4kZBYHGcKOmZEASZ
 Hq5aVUIfGIza4By46PyqdmjkRN2Bnzcq6U7zaS7SStQe1bQgKdUL3tjP+VpbQ2KFz2S7+ajl+
 /iDQSOEFmDMPhFvPi9//7zvrbMIECz+taRrspSH+V+YF1t1ykNvpDRl27sfFJi3jpFim8XKYp
 KaX8i9h+hvNJWW1+Jkxpi8T67TsRuSyijmc4ltFPN7MhP6234UiI9rjegRugHzV4YKfvxkTJ9
 jsPtXei4HAAs5zjVqYe4yd7tJG6KLMuYvoJ+IxqMXlQKTAsrniDB3Ic3Z4M6OIaGZj362C2Ml
 cG2d8Ed3bXzD94Yjdb+LvP5ouQ/H5uae5mtX3iIe2rJib5NS8nm6Z3BmsCC/5siSx29NY9AxO
 wyOG1LN3yqp5Y5w2V6UXdryUQgbfroUvL50ZH9al9jZ56NDl5frFcfNHhzmFbjrd/FlYQRphS
 07RzxsI/Kknjs6urwhjB+rYvGWtBh8/kSUsQKo3VJA1W3LnzBuQ7azBTZWzQ2ZH9qYHhPbeKq
 Ct9WyLf02F2np/Zw3
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

On Tue, Apr 14, 2020 at 04:12:14PM +0300, Dan Carpenter wrote:
> On Mon, Apr 13, 2020 at 04:02:09PM +0200, Oscar Carter wrote:
> > diff --git a/drivers/staging/vt6656/rf.c b/drivers/staging/vt6656/rf.c
> > index 4f9aba0f21b0..3b200d7290a5 100644
> > --- a/drivers/staging/vt6656/rf.c
> > +++ b/drivers/staging/vt6656/rf.c
> > @@ -575,28 +575,14 @@ int vnt_rf_setpower(struct vnt_private *priv, u32 rate, u32 channel)
> >
> >  static u8 vnt_rf_addpower(struct vnt_private *priv)
> >  {
> > +	s32 base;
>
> Just use "int".  s32 is for when signed 32 bit is specified in the
> hardware.  I realize that it's done in this file, but if all your
> friends jumped off a bridge doesn't mean you should drink their kool-aid.

Ok, lesson learned and thanks for the aclaration about when use every type.

> >  	s32 rssi = -priv->current_rssi;
> >
> >  	if (!rssi)
> >  		return 7;
> >
> > -	if (priv->rf_type == RF_VT3226D0) {
> > -		if (rssi < -70)
> > -			return 9;
> > -		else if (rssi < -65)
> > -			return 7;
> > -		else if (rssi < -60)
> > -			return 5;
> > -	} else {
> > -		if (rssi < -80)
> > -			return 9;
> > -		else if (rssi < -75)
> > -			return 7;
> > -		else if (rssi < -70)
> > -			return 5;
> > -	}
> > -
> > -	return 0;
> > +	base = (priv->rf_type == RF_VT3226D0) ? -60 : -70;
> > +	return (rssi < base--) ? ((rssi - base) / -5) * 2 + 5 : 0;
>                        ^^^^^^
> I quite hate this postop.  It would have been cleaner to write it like:
>
> 	return (rssi < base) ? ((rssi - (base - 1)) / -5) * 2 + 5 : 0
                                        ^        ^
Now, if we apply the minus operator one parentheses can be removed. The
same expression is now:

  	return (rssi < base) ? ((rssi - base + 1) / -5) * 2 + 5 : 0

I think it's clear enought.

> I'm sorry, I'm not clever enough to figure out the potential values of
> "rssi".

The IEEE 802.11 standard specifies that RSSI can be on a scale of 0 to
up to 255, and that each chipset manufacturer can define their own max
RSSI value.  It's all up to the manufacturer.

> How did you work out this formula?  It feels like it came from
> a standard or something?

I realized that the two branches of the if statement return the same
values (5, 7, 9) and that each value has a difference of 2 units from
the previous one. Also, every branch has 3 ranges, and every range has
an interval of 5. The only difference in this case is the "base" value
of each branch.

So, the solution was obtain the range index --> (rssi - base) / -5
Then, we need two units for every range index -> * 2
Now, the return value starts with five -------> + 5

The base-- was to obtain the range index the same that the orignal
function.

> Do we not have a function already which implements the standard?

I have been searching but I have not found anything that relates the
RSSI value with the amount of power to add. I have found

struct station_parameters -> member txpwr (struct sta_txpwr type)

but all the functions related to this doesn't set the tx power
depending on the RSSI value.

> regards,
> dan carpenter
>

thanks,
oscar carter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
