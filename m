Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8431EE3F
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 13:19:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0FB0722699;
	Wed, 15 May 2019 11:19:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ea4zL9a1QLLd; Wed, 15 May 2019 11:19:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 86270231C8;
	Wed, 15 May 2019 11:19:18 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 22D661BF82B
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 11:19:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1FBEE81724
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 11:19:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bfje2LG3ilvx
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 11:19:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 76973816F3
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 11:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VzsfLK1tyn5HNOG2fyemKyDc5N2iMbpa7CwVnKhqqAE=; b=rnONJIhOI+74FxKZB7HG2nEZjc
 lLikx1vQ3RRuiwCcuvVRIMRdlTvkjrPeYRCPveaif3SUT84Rrl0ZUzdFHd4Pq2w7DJmf2/zNmviYK
 lS/KfQ38RkO3SXErOc02lmXN/CdM1xijptF9DjwbuyBVMEjuqknLBp46U1m2BCZRk0Jvc0SRqJkt7
 XyILlv/YtPQx+0Ik9NPGfdloRo/H00ZAyrzunU4Tvoh8aed6LJrhvEJQTi7NareKkYYZmSpNkvuP+
 yBA2Z94AVPI+46NtXIRJei+c1418vmohYE+7NUz6Ab1ildzMGVPztPthoRZRNftxe/pwOyGcbv70g
 WhiCku/Q==;
Received: from kadath.azazel.net ([2001:8b0:135f:bcd1:e2cb:4eff:fedf:e608]
 helo=azazel.net)
 by kadath.azazel.net with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <jeremy@azazel.net>)
 id 1hQrwI-0003Jg-IT; Wed, 15 May 2019 12:19:14 +0100
Date: Wed, 15 May 2019 12:19:13 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH 3/5] staging: kpc2000: added designated initializers to
 two structs.
Message-ID: <20190515111913.y6lbgsecgkzlx5mr@azazel.net>
References: <20190515103454.18456-1-jeremy@azazel.net>
 <20190515103454.18456-4-jeremy@azazel.net>
 <20190515110949.GE31203@kadam> <20190515111153.GF31203@kadam>
MIME-Version: 1.0
In-Reply-To: <20190515111153.GF31203@kadam>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:8b0:135f:bcd1:e2cb:4eff:fedf:e608
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
Cc: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Content-Type: multipart/mixed; boundary="===============3386309871379959585=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3386309871379959585==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="43plcdrahml22ywu"
Content-Disposition: inline


--43plcdrahml22ywu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 2019-05-15, at 14:11:53 +0300, Dan Carpenter wrote:
> On Wed, May 15, 2019 at 02:09:49PM +0300, Dan Carpenter wrote:
> > On Wed, May 15, 2019 at 11:34:52AM +0100, Jeremy Sowden wrote:
> > > diff --git a/drivers/staging/kpc2000/kpc2000/cell_probe.c
> > > b/drivers/staging/kpc2000/kpc2000/cell_probe.c
> > > index 30e6f176ddfa..9cb745f4323a 100644
> > > --- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
> > > +++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
> > > @@ -94,7 +94,7 @@ void parse_core_table_entry(struct core_table_entry *cte, const u64 read_val, co
> > >  static int probe_core_basic(unsigned int core_num, struct kp2000_device *pcard,
> > >  			    char *name, const struct core_table_entry cte)
> > >  {
> > > -    struct mfd_cell  cell = {0};
> > > +    struct mfd_cell  cell = { .id = core_num, .name = name };
> > >      struct resource  resources[2];
> > >
> > >      struct kpc_core_device_platdata  core_pdata = {
> > > @@ -315,7 +315,7 @@ static int probe_core_uio(unsigned int core_num, struct kp2000_device *pcard,
> > >
> > >  static int  create_dma_engine_core(struct kp2000_device *pcard, size_t engine_regs_offset, int engine_num, int irq_num)
> > >  {
> > > -    struct mfd_cell  cell = {0};
> > > +    struct mfd_cell  cell = { .id = engine_num };
> > >      struct resource  resources[2];
> > >
> >
> > These changes make no sense because we just write over it later.
> >
> > Maybe you're going to fix it up later in the patch series, perhaps
> > but that's not how it's done.  Each patch should do "one thing", not
> > "half and thing and then half a thing later in the series possibly
> > (I am reviewing the patches in order so I don't know)".
> >
>
> I've finished reviewing the series and we never complete the other
> half of this patch.

Stupid mistake.  I've sent out v2.

Thanks for the review.

J.

--43plcdrahml22ywu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEZ8d+2N/NBLDbUxIF0Z7UzfnX9sMFAlzb9Z4ACgkQ0Z7UzfnX
9sPfgQ//WAB0vwgaG/yDnOU4b3mnYriEn5rn6M6ju/7UzASrSSmb8JdI9s0B3wKC
fZjMQKvI1VxsicZvVOKMF+OIeSOT7zKzm19ThR6D7B80qk9Y6/5I5XqR+ptLLszJ
+O583KCrAufb9Lt8a9lYC+R2rirrIdATqq6sdd/R0TZKt7M8Or6EMjHmT3OwkDDt
sT0fUFt5V4t/ugX244Q1hJObbYqzZHB0fZb0VjG+d/m7AtqG2R0fMJVRiRmJsMuD
vFr5vDR9QH44s8RBDaqjIf9Xm/Vf+AdUismTH6tuH93P4mxVpZN/Snu9MB3V1wEG
YLFt5yVrOXjrBEfeutaR2XqZKbTXDIDsInfhyJKm4K4+W6gIzi/vS7ka0aTNErZn
dqVaug+59IfWUun7Y+cHbB9hxtHqIGZBS5a0HLzbF7Y7DZoTEAyEJYx+WXmwrB/h
kuIOZJAkNCjToPKzyj4cPXym5danJmiKNv4TdzeEa8BjZYaUJCZGDmAK8TTDiA2C
+4kLjUr9fFIra6IXXQzmmHELy7016CmCY3NDTWvlTbaiT5vzRABOW8vxF1qB7bxP
J94LAehtHIp+DWPzqWVyiR7cDsDBlGO4ScK5pMvDpXXQtePG9NYeuRPi1GKt76GG
QQ5PYfMPmCtTe3b5lCELlAcqhPYg/bbq1oF5a7XpgnmIy091HD8=
=Eq27
-----END PGP SIGNATURE-----

--43plcdrahml22ywu--

--===============3386309871379959585==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3386309871379959585==--
