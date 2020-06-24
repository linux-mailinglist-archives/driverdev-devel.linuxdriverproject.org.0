Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E3E20755F
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jun 2020 16:13:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 456F8896B4;
	Wed, 24 Jun 2020 14:13:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FTUOqVsDRxDc; Wed, 24 Jun 2020 14:13:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3EDCA895B3;
	Wed, 24 Jun 2020 14:13:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1A5701BF5A4
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 14:13:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1755C887A7
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 14:13:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mnur2ZYqlG7v for <devel@linuxdriverproject.org>;
 Wed, 24 Jun 2020 14:13:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BDF2D88005
 for <devel@driverdev.osuosl.org>; Wed, 24 Jun 2020 14:13:38 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 81222AD4B;
 Wed, 24 Jun 2020 14:13:36 +0000 (UTC)
Message-ID: <d4aa38dc0cbedd31530abf0aedbe57be22f84f88.camel@suse.de>
Subject: Re: [PATCH 15/50] staging: vchi: Unify struct shim_service and
 struct vchi_service_handle
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Dan Carpenter <dan.carpenter@oracle.com>
Date: Wed, 24 Jun 2020 16:13:35 +0200
In-Reply-To: <20200624141141.GA30990@kadam>
References: <20200623164235.29566-1-nsaenzjulienne@suse.de>
 <20200623164235.29566-16-nsaenzjulienne@suse.de>
 <20200624141141.GA30990@kadam>
User-Agent: Evolution 3.36.3 
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, laurent.pinchart@ideasonboard.com,
 kernel-list@raspberrypi.com, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4665606543493014169=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============4665606543493014169==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-D6XZ5Zq2MMerpxiHnmSD"


--=-D6XZ5Zq2MMerpxiHnmSD
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2020-06-24 at 17:11 +0300, Dan Carpenter wrote:
> On Tue, Jun 23, 2020 at 06:42:01PM +0200, Nicolas Saenz Julienne wrote:
> > @@ -437,12 +432,10 @@ static void service_free(struct shim_service *ser=
vice)
> > =20
> >  int32_t vchi_service_open(struct vchiq_instance *instance,
> >  	struct service_creation *setup,
> > -	struct vchi_service_handle **handle)
> > +	struct vchi_service **service)
> >  {
> > -	struct shim_service *service =3D service_alloc(instance, setup);
> > -
> > -	*handle =3D (struct vchi_service_handle *)service;
> > =20
> > +	*service =3D service_alloc(instance, setup);
> >  	if (service) {
>=20
> This should be checking "*service".
>=20

Of course, thanks!

Reards,
Nicolas



--=-D6XZ5Zq2MMerpxiHnmSD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7zX48ACgkQlfZmHno8
x/5i/Qf/Rep33QfS1bSFPqml0IX6kfyvuerSi3oN3ZCHXzvIJEZN/Ffytl7MiODb
Zqd/ysG9Tkyx8SLCYW4tKmJwvSrfn3TJM4mtfHpEYcmjr9pUNVXVhf1WhsWMAna+
3UVSV3KNfKoCK4kJK9oDl6w20j3oW5JjTnVOwm1seC4jJrpa4ZXL8ufr55BjTucg
HleB4wa5SNcUs3NNhywa1bk6PfOWmnt9S7qQycGaOLeBhiXHS9HH9q1HL6S8Glnl
kD1XfTqUs1XMwDJ/wPWSAnjgiWID4bF6c0ys5OOoGy1Q5CF1hnWHmn9mKfyNw+n1
+HZvhgJpSG/7SBLRKHGG31TX9Gnzvg==
=OTJq
-----END PGP SIGNATURE-----

--=-D6XZ5Zq2MMerpxiHnmSD--


--===============4665606543493014169==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============4665606543493014169==--

