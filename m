Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 51983247D7
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 08:12:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 97B7D25281;
	Tue, 21 May 2019 06:12:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1RiTafbzxdFj; Tue, 21 May 2019 06:12:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C6F7A23459;
	Tue, 21 May 2019 06:12:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 713161BF328
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 06:12:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6867E859A7
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 06:12:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Rrt+8W3yUA4 for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 06:12:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 879D38533D
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 06:12:47 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 May 2019 23:12:47 -0700
X-ExtLoop1: 1
Received: from pipin.fi.intel.com (HELO pipin) ([10.237.72.175])
 by FMSMGA003.fm.intel.com with ESMTP; 20 May 2019 23:12:45 -0700
From: Felipe Balbi <felipe.balbi@linux.intel.com>
To: Aaro Koskinen <aaro.koskinen@iki.fi>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: TODO advice for octeon-usb?
In-Reply-To: <20190520230532.GA3621@darkstar.musicnaut.iki.fi>
References: <20190520230532.GA3621@darkstar.musicnaut.iki.fi>
Date: Tue, 21 May 2019 09:12:41 +0300
Message-ID: <87d0kcibdy.fsf@linux.intel.com>
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
Cc: devel@driverdev.osuosl.org, linux-usb@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0439516741873058660=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============0439516741873058660==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Hi,

Aaro Koskinen <aaro.koskinen@iki.fi> writes:
> I'm looking for input what should be done next to get
> drivers/staging/octeon-usb out of staging.
>
> Thousands of checkpatch errors/warnings have been fixed (starting point
> was <https://marc.info/?l=3Dlinux-driver-devel&m=3D137028876225266&w=3D2>=
),
> also the size of the driver has shrunken considerably.
>
> If there are still some other bigger issues with this driver, please
> let me know.

Looks pretty clean to me. I would simply break that single file into
smaller files if possible (see xhci/ehci for example).

my 2 cents

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAlzjltkACgkQzL64meEa
mQaO2g//X/k/5DN6vm615lAlxzfGXbUxrst5JgEXj0XR46jM5pQ/HFRDncQK5QoF
tbK6roUUq1u9cxJI+OWrMysqIxdTc87v5lz1+Rr6viBbzRoowx6P4NXUE2tWS1IQ
CyWyrThfKuI1yj9hDqWnF8iY9PVvY+o3wbe8vajuSnzxbNF5E+63XEWdeqB0year
Fap/TAKBpiUcPZwtVq2mKre/vV837yhHYeb3oxIgJ8Z2t9lf3yqw1hyydyT5R4kW
+rCDAfXfpA7M/WExVUeelU1zX7BCZy2QcOGerccF6zauiD83vCdDlbsy9eQOMWjk
jEKcHdYW7SMEEAH0hF0Na82lyH+ecpkr62Zx4Zz5X2+Mj+Rd/olNW1pIBSwd5GzH
sGEjlBWApgtltd+06mfylh7cuEpJxe2uNsEJTLVhEw3LI7B/i5MPGdKoDfaehRuH
w5piM/Ffm0ZW3ka9wdOfR+EvXocMZi73YUlU/30jthn+c+bkuZO3mjQsRTrs5gYF
zGYdyXxphloKcd5w4521PeOw2Yr0TIFD9yOnIedQtRah9z91owFDNVtgYGn3GY2M
2yU0rByEkBFlCXwSQYpyyyN9WWlwZtaNO7mmmdd7qpfdmO76rA+ahRmvVM/1Uhil
BiZvCAVOBp0hSWh8sy8Qt1+goJUMrS/X4EgL83ZEywc+xh5MxvA=
=30aF
-----END PGP SIGNATURE-----
--=-=-=--

--===============0439516741873058660==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0439516741873058660==--
