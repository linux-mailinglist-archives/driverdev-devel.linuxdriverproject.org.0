Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED462641E
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 14:56:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2804086E4E;
	Wed, 22 May 2019 12:56:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SI9bAEsxsjp3; Wed, 22 May 2019 12:56:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6812386DAE;
	Wed, 22 May 2019 12:56:11 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 59F631BF4D8
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 22 May 2019 12:56:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5401985C2E
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 22 May 2019 12:56:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MWL5-cpChI0o
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 22 May 2019 12:56:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D9BB8845C5
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 22 May 2019 12:56:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2nlqPib5NnBZ7SXFv9Fgt+aoAlguLITm2elyw/CpxtA=; b=Sr06uTsp7AIG1WkT/H56IPOElQ
 8TeGoNSfid6xa1a+DPD+3r07MpHpBgmdiuogTi/DOoOWcTJToTF1tayIB7Z/IErXUMiufvAqX/EE/
 XIu5Mmu9Dv7pzP9iUvX2x8F+5rYiMoAS0fUudvQzUfIw9K6yAPMrR82z1YgtmCHKaB1xt1QtmMMiS
 AiVPA+Vnv+cMQmECJYzYFCesUrhm1rW61x6GMiPrbn31fXySjC7tYrSFhjE8t2W48TyiS6rmm6gu8
 A2iknZtwoeknh870plTHiEQMND9GjkfcUjqU7QKOLVh9hY9SvZU82e53utS+y8sBK2BXC3M4VYp3N
 nm6Jbcgg==;
Received: from kadath.azazel.net ([2001:8b0:135f:bcd1:e2cb:4eff:fedf:e608]
 helo=azazel.net)
 by kadath.azazel.net with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <jeremy@azazel.net>)
 id 1hTQmr-0005xX-Ux; Wed, 22 May 2019 13:56:05 +0100
Date: Wed, 22 May 2019 13:56:04 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v6 0/6] staging: kpc2000: another batch of fixes
Message-ID: <20190522125604.euw4busu3zh7e77z@azazel.net>
References: <20190521103524.2176-1-jeremy@azazel.net>
 <20190522124551.GA22148@kroah.com>
MIME-Version: 1.0
In-Reply-To: <20190522124551.GA22148@kroah.com>
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
Content-Type: multipart/mixed; boundary="===============3419529135762690321=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============3419529135762690321==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2ro254qow5cb74ql"
Content-Disposition: inline


--2ro254qow5cb74ql
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 2019-05-22, at 14:45:51 +0200, Greg KH wrote:
> On Tue, May 21, 2019 at 11:35:18AM +0100, Jeremy Sowden wrote:
> > There are a number relating to device attributes, one formatting
> > patch, and another that changes how card numbers are assigned.
> >
> > Greg reckoned that the changes to the code in the attribute
> > call-backs that gets the struct kpc2000 object from the struct
> > device object were broken.  I've reviewed them and split them into
> > two patches because I was doing two different things in the previous
> > patch.  I *think* they are correct, but I've moved them to the end
> > of the series in case I really have just got the wrong end of the
> > stick, so they can easily be dropped.
>
> Thanks for sticking with this, now applied.

Cheers. :)

J.

--2ro254qow5cb74ql
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEZ8d+2N/NBLDbUxIF0Z7UzfnX9sMFAlzlRtgACgkQ0Z7UzfnX
9sOiMxAAkhEW9HfNxmn84UXPfMIxN4ViRNmvbUSksUfVUhlBF41PLUMdcBeg0pkj
sAkA+j+TYy8D8trGqItXHGsfGzCHhEvx0GW6qaKkY3foWW9xkkJAFjhONePcf0vx
/4N9YW7cjjXsItQaB0CNZscii9XfQXxeAAHukHnkCTUwBJ/O11POrn4ym5SdonMP
7yny51eLJSZd0ywt/cIWdV4sUL47iwnv1/BaDF0dutIz9OESs+TzWKB0hP2AMqaH
u9d7BbLZbtuKUotfb0GDb5rpJT8FgF6vtJVUKbvq3Ix5/0JRSLVVafzgVBE6H8xz
pehJDWMo5Yhx8SC0MNi2c9VGWh+hMmjHrSiIMnmq9SH6V3NuPP4XqfL7A/q6XYKD
QxqycT6YN+ZpjRmPsptekMgxwBdji7GuVDyJueXuDVNo3A0B9ksdLeU8JYtGy6r8
+WDOezPn1w0mGovn5Czi46vEPCZvgrFfMLdmo2J54ngfxM+yG4TTKJT4ffp+1g1U
05KTuxxvijB+vUFSXr/Qd0RrfbJl3FMV1/X7uA8fjnsSR1xMFOcb6q0gRihxCr3C
pdCiQNtFGh88JrCiLU1MY4O1wzUYR2EPAh9rjScVKufUv2lIv8Uq8YqKl1Hnxsgs
HhAF7robcE7ZIu2W4UaeQwiZIr4jHrJsYYi+AK6iFm2NWzgqqIQ=
=HBw0
-----END PGP SIGNATURE-----

--2ro254qow5cb74ql--

--===============3419529135762690321==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3419529135762690321==--
