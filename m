Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15712299259
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Oct 2020 17:26:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6A4668726D;
	Mon, 26 Oct 2020 16:26:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JkSM4kca5OoL; Mon, 26 Oct 2020 16:26:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DED408724B;
	Mon, 26 Oct 2020 16:26:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BD0591BF41F
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 16:26:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B9CBC856CB
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 16:26:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ltw1hjyYLi7L for <devel@linuxdriverproject.org>;
 Mon, 26 Oct 2020 16:26:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 13ABB851C0
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 16:26:21 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id EEE67AC48;
 Mon, 26 Oct 2020 16:26:19 +0000 (UTC)
Message-ID: <160f3f542a89e0263d5d375fdae796af6017c33c.camel@suse.de>
Subject: Re: [PATCH v2 01/10] firmware: raspberrypi: Introduce
 rpi_firmware_put()
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 26 Oct 2020 17:26:17 +0100
In-Reply-To: <CAHp75Vej4UfsySRB6qXL7fFN7SjnTjy=p4Xkn1xBO0YOFy-kcQ@mail.gmail.com>
References: <20201022155858.20867-1-nsaenzjulienne@suse.de>
 <20201022155858.20867-2-nsaenzjulienne@suse.de>
 <CAHp75Vej4UfsySRB6qXL7fFN7SjnTjy=p4Xkn1xBO0YOFy-kcQ@mail.gmail.com>
User-Agent: Evolution 3.36.5 
MIME-Version: 1.0
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 linux-pwm@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, devicetree <devicetree@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-input <linux-input@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open
 list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Stefan Wahren <wahrenst@gmx.net>, Philipp Zabel <p.zabel@pengutronix.de>,
 Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============9136994907989522604=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============9136994907989522604==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-+M2bTZi8S7Ge32C0tkNp"


--=-+M2bTZi8S7Ge32C0tkNp
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-10-22 at 21:46 +0300, Andy Shevchenko wrote:
> On Thu, Oct 22, 2020 at 9:06 PM Nicolas Saenz Julienne
> <nsaenzjulienne@suse.de> wrote:
> > When unbinding the firmware device we need to make sure it has no
> > consumers left. Otherwise we'd leave them with a firmware handle
> > pointing at freed memory.
> >=20
> > Keep a reference count of all consumers and make sure they all finished
> > unbinding before we do.
>=20
> Wait, if it's a device, why do we need all these?
> get_device() / put_device() along with module_get() / module_put()
> should be sufficient, no?

Could you expand here a little, I do see how I could use get_device()'s
reference count. But it seems to me I'd be digging way too deep into kobj i=
n
order to get the functionality I need.

If you meant to say that it should be automatically taken care by the platf=
orm
bus, just FYI we're using 'simple-mfd' in DT. Where firmware supplier is th=
e
parent and all consumers are children.

Regards,
Nicolas


--=-+M2bTZi8S7Ge32C0tkNp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl+W+KkACgkQlfZmHno8
x/6XwQf+N4Vi5LyZRLbYPf2alcEVhV4rJF362cZVbIn76rK576WGug740xSWsiwO
gfzWfNuZQ8dHdYtromdKWWMK3JYZ1EYnhWwxzQVC9bhKypTweP7tpIxNgdQLfoi0
qS6Omn19ldcynO+YlLCEp76lrapt5ADWIGR5phjOWOj2yPHYJN0TsaQ80bNsNHZL
caC8ddA5LxpEZKe8NEd9tqOdhB9rnvTHmPLG4A7CdjCsNdwcO6TXUTM4os21JNVv
IB/eaEzZp7DLTWVAUJxV+HIX0SSdy80TCryzgCsfbcd8q6AuD2RWtWpVQ88Qtrbl
fFrXd+Hf3/iVhraCCi5GKegidy4SyA==
=30G8
-----END PGP SIGNATURE-----

--=-+M2bTZi8S7Ge32C0tkNp--


--===============9136994907989522604==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============9136994907989522604==--

