Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 79311277EA
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 10:27:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 56F5187479;
	Thu, 23 May 2019 08:27:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FOta6gwKXtt4; Thu, 23 May 2019 08:27:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 49E1C8742A;
	Thu, 23 May 2019 08:27:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 328101BF31E
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 08:27:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2F83A87F9F
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 08:27:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B9Z5ouD27V8e for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 08:27:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DD01787E76
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 08:27:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=laWNxyj4QxC3MlDfbc/zEczN2hqihpcdSWmuVHZuqco=; b=fajj1X75+kvgbtjDHr6oPFkEj/
 MiNNaCTInJAOAbPSBJFJazJf3UWePctpC9O2VYE56tXqexuY7RNMBHpu1g3iQhE8+ruQpfM5mm/st
 4PMs3lJ1OpLrijksb19mSp5eE0BZAK7B70NEUnZxRoP7hNXlKt6VcVfeXrwph+qCoXaBtR5+++8o5
 o8c6aLJvwIy4XWpelzJbECR4b2wTZEpdAa2UieNKV/tQqqJGCXeXfvrI9G0sIIBJSHPXpvjuJKME9
 s1wqTgPr0NiYYNxxPxwNhuL7zMEfnilScXqoedZRph5mPROiMfaagi1JR5JFNFiIMi21bqn3h6s+7
 kYC/3/Wg==;
Received: from celephais.dreamlands ([192.168.96.3] helo=azazel.net)
 by kadath.azazel.net with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <jeremy@azazel.net>)
 id 1hTj44-0000Ui-9t; Thu, 23 May 2019 09:27:04 +0100
Date: Thu, 23 May 2019 09:27:02 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: Re: [PATCH] staging: fieldbus: anybuss: Remove unnecessary variables
Message-ID: <20190523082702.GB28231@azazel.net>
References: <20190523063504.10530-1-nishka.dasgupta@yahoo.com>
 <20190523072220.GC24998@kroah.com>
 <b8cc12d9-2fe3-754b-be08-f23055a31ffe@yahoo.com>
MIME-Version: 1.0
In-Reply-To: <b8cc12d9-2fe3-754b-be08-f23055a31ffe@yahoo.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 192.168.96.3
X-SA-Exim-Mail-From: jeremy@azazel.net
X-SA-Exim-Scanned: No (on kadath.azazel.net); SAEximRunCond expanded to false
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2253366480608172443=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============2253366480608172443==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kORqDWCi7qDJ0mEj"
Content-Disposition: inline


--kORqDWCi7qDJ0mEj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 2019-05-23, at 13:51:18 +0530, Nishka Dasgupta wrote:
> On 23/05/19 12:52 PM, Greg KH wrote:
> > On Thu, May 23, 2019 at 12:05:01PM +0530, Nishka Dasgupta wrote:
> > > In the functions export_reset_0 and export_reset_1 in
> > > arcx-anybus.c, the only operation performed before return is
> > > passing the variable cd (which takes the value of a function call
> > > on one of the parameters) as argument to another function. Hence
> > > the variable cd can be removed.  Issue found using Coccinelle.
> > >
> > > Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> > > ---
> > >   drivers/staging/fieldbus/anybuss/arcx-anybus.c | 8 ++------
> > >   1 file changed, 2 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/staging/fieldbus/anybuss/arcx-anybus.c b/drivers/staging/fieldbus/anybuss/arcx-anybus.c
> > > index 2ecffa42e561..e245f940a5c4 100644
> > > --- a/drivers/staging/fieldbus/anybuss/arcx-anybus.c
> > > +++ b/drivers/staging/fieldbus/anybuss/arcx-anybus.c
> > > @@ -87,16 +87,12 @@ static int anybuss_reset(struct controller_priv *cd,
> > >   static void export_reset_0(struct device *dev, bool assert)
> > >   {
> > > -	struct controller_priv *cd = dev_get_drvdata(dev);
> > > -
> > > -	anybuss_reset(cd, 0, assert);
> > > +	anybuss_reset(dev_get_drvdata(dev), 0, assert);
> > >   }
> >
> > While your patch is "correct", it's not the nicest thing.  The way the
> > code looks today is to make it obvious we are passing a pointer to a
> > struct controller_priv() into anybuss_reset().  But with your change, it
> > looks like we are passing any random void pointer to it.
> >
> > So I'd prefer the original code please.
>
> Thank you, I'll drop this patch then.
>
> > Also, you forgot to cc: Sven on this patch, please always use the output
> > of scripts/get_maintainer.pl.
>
> Which arguments should I use? If I use --nokeywords, --nogit,
> --nogit-fallback and --norolestats then only your name and the two
> mailing lists show up.  (Also, regarding the mailing lists: every mail
> sent to linux-kernel@vger.kernel.org is bouncing; should I not send to
> that list anymore?)

He is listed in the TODO:

  $ cat drivers/staging/fieldbus/TODO
  TODO:
  -Get more people/drivers to use the Fieldbus userspace ABI. It requires
   verification/sign-off by multiple users.

  Contact: Sven Van Asbroeck <TheSven73@gmail.com>

J.

--kORqDWCi7qDJ0mEj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEZ8d+2N/NBLDbUxIF0Z7UzfnX9sMFAlzmWU4ACgkQ0Z7UzfnX
9sPxGxAAiDRI2wAkIGuK975XrPrMZwvvlMOXh5wuhf8FoE9y5nOnUchJ+ly61zS/
21kZkjqEj8xySaijYwVSLVVfbB0rbM05b6dhHrscJ4GejDYeHSHvCNDY4j4uJqRW
SpuC5rRq7L4Z7v7AoJMgL8K3WXYdqEcydU3+kx6JodMc6aJfWWzjfLaKF2oQWITH
TsLk9MECPe143qLZe4Y/isjcvd5ixipcCy1wNv7VyXHf6ANWVf5R9LfOCgooe4uG
A4Gu8g9BguUQHJyQR4J3oZjTxUzf/jyrISHBMGSm60miDC0PLUyejHOmV5E+BZ/U
rVU9pZsEux/wfZR4AZkJ5TMF7Yn2bEKEJ4zhXoOHxZPYJi5guxwOe8exy4aBL+o+
OoaU8w2u5GUKkZXk1UT+DtKCuJfk3CKvKNbvrYzbq6jHJTV0y8MZwomGPvPV0PG7
ANBv2PXA0JuazFNzXcmgrBx42+3uaUlqtQrI6rsN1HDVuH8bo2Sbe/L3+eitqTvh
O8hFrQZRpouX9aux0KtMvfvWg+Qg9OXnRBVT15KxCfUvCvG4XWYjfvIjVdWdc392
X2To23kn1GqQ+R4FdVM1PTRQDpNTU0wH3q2WHjN9WWrcbZFFh8Tj2NeQmkAxVIod
wj+2bYR6LLl3/l02zjGAnvYM+g4a3u0iXiokdZxmFpPx772iimE=
=a6AF
-----END PGP SIGNATURE-----

--kORqDWCi7qDJ0mEj--

--===============2253366480608172443==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2253366480608172443==--
