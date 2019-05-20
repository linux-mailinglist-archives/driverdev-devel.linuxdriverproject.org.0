Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A7446241A4
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 22:03:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ABB1684481;
	Mon, 20 May 2019 20:03:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ezTK9DYH4hKK; Mon, 20 May 2019 20:03:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3DFD5835E0;
	Mon, 20 May 2019 20:03:23 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E3FF51BF2FD
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 20:03:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E0A9A8527D
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 20:03:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uT2+iUy+LGWc
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 20:03:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8133F85218
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 20:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pKN7Qkwk/TAEvp6w+lHesO6/Cy3YspvDJ8SBzGa1YH8=; b=AJLYd5c0O8DoihEry857kTv7Dy
 mTee9dKEyBgdWMIU97DFw5nnIUm+StVLVh4i0whlXOuiWxG6TZsnb5Eps4pzCJdRPDQwcpkMigCBM
 8dRdhd2LCtZbCt6AIfPGlZGKRQmqHis53R3+kic9vUd/eOfS5Ww8ZW/REMn/IBUS4lcP3sRvnWKcb
 Sq3Dr+KYV5RdflIqyrYCsFTXRLO0fswtYDS6m3lYkhhMAS1rzxU+2uaeS2pBU2ZW5EWprcORW97g/
 9DUQ6kFEJsbjtQlBQn36y0yUiAdw1mRxNiO/k9yo6jAzHQO17O06oP2WZZYZzSQbw08f4w4ruqDN5
 iDXGQxFA==;
Received: from celephais.dreamlands ([192.168.96.3] helo=azazel.net)
 by kadath.azazel.net with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <jeremy@azazel.net>)
 id 1hSoVC-00050g-KA; Mon, 20 May 2019 21:03:18 +0100
Date: Mon, 20 May 2019 21:03:17 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: git-send-email cock-up [Was: Re: [PATCH v3 0/6] staging: kpc2000:
 another batch of fixes]
Message-ID: <20190520200317.GC24859@azazel.net>
References: <20190517073057.GA2631@kroah.com>
 <20190517110315.10646-1-jeremy@azazel.net>
MIME-Version: 1.0
In-Reply-To: <20190517110315.10646-1-jeremy@azazel.net>
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
Cc: Greg KH <gregkh@linuxfoundation.org>
Content-Type: multipart/mixed; boundary="===============7025175248485959217=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============7025175248485959217==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="96YOpH+ONegL0A3E"
Content-Disposition: inline


--96YOpH+ONegL0A3E
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

I've mucked up sending out v4 of this series.  Please ignore the
messages I just sent.  I'll send the right ones out as v5 shortly.

Sorry for the noise.

J.

--96YOpH+ONegL0A3E
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEZ8d+2N/NBLDbUxIF0Z7UzfnX9sMFAlzjB/0ACgkQ0Z7UzfnX
9sPyshAAkuCSNkLOU10NnGLNvrANBg5MvUNqstHTCpjQCabAqVL2i7Ydt/Mg7ZNz
GN07C41EdXFhKA0xDRkMVqkLcNJcyj9tpMMTmqTGxZ32EoBHOT2Ot1CAzrfWGDf3
otY7nYV5dU5AAUgEEMGrm+OzLeRKMXnRVXcpWMVXCvFVVqQMv4HYdb7vJqT7kgc9
sl+hIHFv7UyF/FZTDKaxZj+TG8BKlUicP7q70AQpnH7xGK07BlLrHq6iA3mdYvOf
ZmO0PCqC2OPI1mIcrZE5e/4F+GJ5h5fhsWRWeLTrEAyk0Zmxm4qDK17Ki+1Y0ALd
0NDZ4klIkyfe3e04BuQOv1W7xAJtKmZEA8ck51vDpnAs57yfr/engfcw0ZsunOi1
AEXfU40u6yw0kz0YyIkY4uW1g0bHq4MNudFGZefBxTQmecg+a7FrkWnJfi9C9WDn
vv6+ne4i+2QyiNvD1GRNhroFlY1Ln7dpFvbyzGCyMmOJI2d0wTWB5VfzW5kkZAML
sP7wYp/w92ysJjOYW2bcdaglDX2KRBdC8CI9ftwkkgJzJ8TQvzXBZOAhJ+U/9MQe
q/glfcaUpY9BXcD9tdqJYHbGEL4BKBMagBOT2PEy0WPMoRO07+Jpf3Fp+snLGpQ1
3Cl/MgMPzPbhKTq5yHLtqZAtdUF2qKbg/ayRt/SNugTDd9Bt4lY=
=vA35
-----END PGP SIGNATURE-----

--96YOpH+ONegL0A3E--

--===============7025175248485959217==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============7025175248485959217==--
