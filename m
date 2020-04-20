Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D171B0F2C
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Apr 2020 17:03:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E3B3185F7C;
	Mon, 20 Apr 2020 15:03:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zAq1X-izJ33v; Mon, 20 Apr 2020 15:03:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D43A885F41;
	Mon, 20 Apr 2020 15:03:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 98E711BF402
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 15:03:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 956C685F43
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 15:03:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 07ULd5xnG3y5 for <devel@linuxdriverproject.org>;
 Mon, 20 Apr 2020 15:03:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DB2DB85E27
 for <devel@driverdev.osuosl.org>; Mon, 20 Apr 2020 15:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1587394970;
 bh=UKp6RZgHShYAmKVbesztqxr3F4SKLa25qyvH+LYRqdo=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=QkHS3g3pdle4TC8kHb4WPmuDR9KemXpd9xmBW9HZHzU252e/oYWSHIA7z8ik/c6rI
 YdX4bWgC8rSPNT5/AGoZUp9zykj7O7TuUnAkaAGK4z2TupBdLgRDqTuqHSqmkI76OM
 sJaAoJbk1HsjuFrgcBoDXiaiEBwF08bWdjw7PXFM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([83.52.229.196]) by mail.gmx.com (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MdvmY-1iqfQi2Y0E-00b29o; Mon, 20
 Apr 2020 17:02:50 +0200
Date: Mon, 20 Apr 2020 17:02:35 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: vt6656: Use fls instead of for loop in
 vnt_update_top_rates
Message-ID: <20200420150235.GA3159@ubuntu>
References: <20200419100921.5421-1-oscar.carter@gmx.com>
 <20200420121059.GC2659@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420121059.GC2659@kadam>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:mrdDQPBU8m/XBdil0FuPsqApP+2l8/R3mwWkslSCtwk5wfJPtYO
 P3/o9SY70LgD/gxGoyuElX+f8xR5sqe0yo1oHGSgpu0uk96/Ce8npiu9dB5xubDV572D5rj
 U5j6Mpzho8W0b5NCRnXsznrsIf6yXwD8IevkZO8UrbwlqOdeosC3skJMbBTs28bJR5Xdx17
 GInshLSu7RoWi3Azn9gEw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:4isIjZ3xBHw=:+CoVJ6MmnMv3Rer7ZGBmM6
 wfCnj1/Tkjrj5qms9QEZFN7cQo8OMMixdoUUusLj8tIMKui+CEVbiHtFrtMxLUZFOTsvXFcJT
 hBvrizJI9hQyJXcSKbu72MtKt9DGr8lFXE6hZp1g/PjcrWplqgbp7kJPNTxr0OUJFqPtVbuhA
 0PYx7gnANvoTM5oHVzhv1AMFMN+LFEw33fcBQBJgqIHG2tF+VjVXmhkXzAmsVPqp5Zi9M4Mjp
 54s7RbNUL3YtzA0kMVDK7X9t/FmOCRXjo3DVGUWvbRYQTPmxNIk3znU8YsycySmC15M/c5bya
 /44BE15HFjLiGTa6UoSGy80Px/nnnK3QJmkv+8CoOLKuj5Ur6myCh5B57ezjDbqVdtkHV6JZk
 //I/CROuJw+cJ2vroibpirttaPn4u1nU7Sjbcrud/3CbiYP5g5o4USd9dS0VUHyYNx64ab2RV
 QH/jXU5FoKDbq+O650cVYG4QMiIKj0SgdKCBygIzVxAhj376GwWy2Tho+9kjP1aS2XQINledV
 6yW+mSqnIhyOFV7jrDdWRHigAMV8RD3Eg1WJrnmoCE4Q9983gnG+SnFE9fzUqFiAMainoybi/
 7A1+gEKBzytfP1Y2v0iUqoNA+nnfaodlCqGxiv0Fts1g0S2DZrDYMoXE2xoGGMdGNWigSEkNq
 NCbpdjyAvrQR8xZnkxa9sv1by8oUQT4xrauYb+ey5Q60ADFq1qvOehQLv710mR8ZkiFzj8Hb7
 eazYc5tR6M9AjKVMqBhVfNImUW0uAdT6fumgx44ial1r1F6E0r9n0VK3Zrrhs8pfh2PEfJOEN
 A9Qn7BRBfxfC7FHTBbAC9S/KqoyoxtteAc5m7rjUqHroQxCyjTd/0nSE1iHl5aQkYo9LjV4uP
 +8bglft+kmnMWQDedZrZR0LyJGHX1X/EKzq07Ypo6Zepebe6lKEFX+nqVcFLmOtpE4fr1nPPP
 V2lu6qfSGflW4RXgtBTVWCzt55iHx5mYjbAF7g6wvsvRXKuzrVQ29tGfeL3SqPzyBIEZO+bY7
 pJkHqhPXHANZgdRfLO4g2XzSA/OTCfdlZ0OM9iWgOkB3Zc7QPCW5QTEui7HMsMQ5o0gB4EdUJ
 ejx862tQvtnHj/RzAh/MAPvAEjd8xb4DM6GHVEy+y7xH3wbgC4tN/gPMsqivxem9mdVgOqJfo
 RN1yfbx2mzg2RwWEz6xh47qen05jWE8KXMReROxEx5fw63cDGOoJQ7x7jBgvaWhzY74SUozC7
 HH5FwrE+iZ6C49Ivi
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
Cc: devel@driverdev.osuosl.org, "John B . Wyatt IV" <jbwyatt4@gmail.com>,
 Oscar Carter <oscar.carter@gmx.com>, Malcolm Priestley <tvboxspy@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Forest Bond <forest@alittletooquiet.net>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Apr 20, 2020 at 03:10:59PM +0300, Dan Carpenter wrote:
> On Sun, Apr 19, 2020 at 12:09:21PM +0200, Oscar Carter wrote:
> > -	for (i = RATE_11M;; i--) {
> > -		if (priv->basic_rates & (u16)(1 << i)) {
> > -			top_cck = i;
> > -			break;
> > -		}
> > -		if (i == RATE_1M)
> > -			break;
> > -	}
> > +	pos = fls(priv->basic_rates & GENMASK(RATE_54M, RATE_6M));
> > +	priv->top_ofdm_basic_rate = pos ? pos-- : RATE_24M;
>                                           ^^^^^
> Argh...  Come on.  I don't want to have to break out the C standard to
> see if this is defined behavior and where the sequence points are.  A
> pre-op would be clear but the most clear thing is to write it like this:
>
> 	priv->top_ofdm_basic_rate = pos ? (pos - 1) : RATE_24M;
>
Ok, I do the modification as you suggested and resend a new version.
>
> >
> > -	priv->top_cck_basic_rate = top_cck;
> > +	pos = fls(priv->basic_rates & GENMASK(RATE_11M, RATE_1M));
> > +	priv->top_cck_basic_rate = pos ? pos-- : RATE_1M;
>                                          ^^^^^
> Same.
>
> regards,
> dan carpenter
>
thanks,
oscar carter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
