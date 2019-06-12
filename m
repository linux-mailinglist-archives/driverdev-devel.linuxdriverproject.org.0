Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BAB841E16
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jun 2019 09:43:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2C9CC843FA;
	Wed, 12 Jun 2019 07:43:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6EDrYl8_kyZt; Wed, 12 Jun 2019 07:43:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F0793843E8;
	Wed, 12 Jun 2019 07:43:53 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9AAA61BF33D
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 07:43:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 91177843E8
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 07:43:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DydgvinUgo1a
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 07:43:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6C36584186
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 07:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=K3cLiXFkLBXUtww1YPA67iR+N6ppCly8Xtk9NEcBcac=; b=Jw02ANzH1dtI2zdM3vxbYwz+Q3
 oXkyoaRIPlyugU71YLtOKTetgD0bW/LXmVdduzeRE1bzwunsDU5fh04vYEwCgDEMMH6AnN2ev/e/M
 15HURqkDNH7c4unHIxis5TBZsFZELSf6w3faHrwwcKE1RkPexIT8TUKSMUM4e9T9NCDfdvh06+oOq
 i5/FaDkftOOp/UHuHo0mch5ezW7/GRpShbQJQLdOeWCa/NVUDiiEtfhSYCl3vd4x0TG6SQQMsOOJH
 bgpAzuSElXfQXsdgxzy62tc3vsh+NYFVoqyO1IPgBNb1H0V0OzZeD/RgJyqJzZ7uFxfK0kNaNWxJ1
 vJxGByfw==;
Received: from celephais.dreamlands ([192.168.96.3] helo=azazel.net)
 by kadath.azazel.net with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <jeremy@azazel.net>)
 id 1haxv6-0004l0-CB; Wed, 12 Jun 2019 08:43:44 +0100
Date: Wed, 12 Jun 2019 08:43:35 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Matt Sickler <Matt.Sickler@daktronics.com>
Subject: Re: [PATCH 0/6] staging: kpc2000_dma: fixes for AIO file-ops.
Message-ID: <20190612074334.GA9869@azazel.net>
References: <20190611195104.4828-1-jeremy@azazel.net>
 <SN6PR02MB4016014FC72267C4C0C148DDEEED0@SN6PR02MB4016.namprd02.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <SN6PR02MB4016014FC72267C4C0C148DDEEED0@SN6PR02MB4016.namprd02.prod.outlook.com>
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
Cc: Greg KH <gregkh@linuxfoundation.org>, Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Content-Type: multipart/mixed; boundary="===============3644902491513439459=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3644902491513439459==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DocE+STaALJfprDB"
Content-Disposition: inline


--DocE+STaALJfprDB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 2019-06-11, at 23:43:19 +0000, Matt Sickler wrote:
> >-----Original Message-----
> > From: Jeremy Sowden <jeremy@azazel.net>
> > I've had a go at getting the DMA AIO working.  It compiles, but I
> > don't have access to the hardware, so I have done no more testing
> > than that.
>
> Honestly, it'd probably be better to just remove the AIO support
> entirely.  The one use case we had that could possibly have benefitted
> from AIO has been switched away from DMA entirely.  We switched
> because the DMA buffer was a couple hundred bytes and the overhead of
> setting up the DMA was killing throughput.  AIO *might* have been able
> to help there, but the userspace side of AIO is a PITA to work with.
> IMO, if "AIO" for the kpc_dma driver were to make a come back, I think
> it would be better to use something like io_uring The other things
> that use DMA wouldn't benefit from AIO as they have to setup other
> parts of the hardware that can't coordinate with the DMA controllers
> (or at least not without a lot of work).
>
> TL;DR: it's probably better to just kill the AIO parts of the driver
> than to try to make them work.
>
> >The fifth patch removes the cancel call-back because it is empty and
> >so doesn't serve any purpose (AFAICS).  However, it doesn't appear to
> >be too tricky to implement something that would abort the transfer in
> >the same manner that kpc_dma_close() if this would be useful.
>
> It's empty because I didn't have time to figure out how to cancel the
> DMA operation on the hardware side.  Doing the same "reset the whole
> engine" type of cancel could work, but I'm not sure how well that
> would mesh with aio_cancel (the latter would kill *all* in-flight
> operations, the former is only killing the one).  As I said above,
> it's probably better to just remove all the AIO pieces.

Righto.  I'll take them out.

J.

--DocE+STaALJfprDB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEZ8d+2N/NBLDbUxIF0Z7UzfnX9sMFAl0ArR4ACgkQ0Z7UzfnX
9sNO8w/8C+hAOcbBgYAUBo8mZtXop6/eRBdq50UHXmWmnxJ3IvfmKjYgj/SWpmju
BC9HvV/uQRBZom87u3ZR/UQN8YliG6lcjNpLjNWEEM+wSzwGAPlePd3npXFhEIEX
i4k6FfV6uQ2GFz0Mdzwxx9gzb7D9Mie1kHZYVijXnk/UxOz/GJpyKb7BGdq1ivbS
jjuADuvtC8E3MUGVw5mwLsOgdQ8Fr6/9ABgn4GyjMUAYD3iGBJcPZJEfW37Qpulr
FD514dqL+r/CwT+jLrluyc0uHp7taiBuT9ym5uQ+l1a8eT/rmttl56sdA5HpUTLz
ctayF40g7m349rhPqjVoolGDFcE6xxOSe6uESgyOeagUS4oGkXfourc8xrhA7paG
dUsHoOwrSetXX+7mmPZzbBu0Rfn2oW3e9aBse5nKBslQ8uFdIOXtQRvlnSsk/Syy
fyHhA0x7Q1YevC8Skh5huauWXOrUcf6HL2B/LA7lXbsyBleCB2n4AX1/ESdzq9fY
9uzyPP0/QBlvJID6WG+7EabbvMEWtrySzIkte2TQy6M7ikRiwi248uqWL2f6i1+q
vnRPHUrWX2rEd39dM/sr4hLQ4oJaqmbw32qtxRHzynoLdx3nf3o3k/SQSB23/dQ5
2JI07UfenEyISGUho/P1yKwPtKv9jRnm8uxelv3ZFPV+ar8Ahi4=
=m0uu
-----END PGP SIGNATURE-----

--DocE+STaALJfprDB--

--===============3644902491513439459==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3644902491513439459==--
