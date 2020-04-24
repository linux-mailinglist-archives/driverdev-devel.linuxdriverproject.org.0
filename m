Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF331B75E9
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Apr 2020 14:49:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 75DA52002A;
	Fri, 24 Apr 2020 12:49:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QD5GObLSZp-F; Fri, 24 Apr 2020 12:49:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0C4992041B;
	Fri, 24 Apr 2020 12:49:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4BDC41BF348
 for <devel@linuxdriverproject.org>; Fri, 24 Apr 2020 12:49:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 412FA88304
 for <devel@linuxdriverproject.org>; Fri, 24 Apr 2020 12:49:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7XE8G-IpBpWx for <devel@linuxdriverproject.org>;
 Fri, 24 Apr 2020 12:49:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 47F0B882B2
 for <devel@driverdev.osuosl.org>; Fri, 24 Apr 2020 12:49:43 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id y6so3835670pjc.4
 for <devel@driverdev.osuosl.org>; Fri, 24 Apr 2020 05:49:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=uC2/p4RFgTEv6gK1u1RWyAJblPPgS8/cfRxIcvP+Zmg=;
 b=clKYIOnj6AYWFVwxBITX0c2CMkW694tIL60wcNXbq/+dI2JbqlKLUMNfjP6VAAobbx
 gfVm7BJ33VOLjQ/b3enC3ejGD2qszGwLKiP4MMlEndEqghjr9s/r/U2/JX8Egf57DiCM
 9WA7Bf1qtekMoPfdHK9h0befHv23tlsJtZ86OeV/wqpXUsi3weA7xHOLIC6wdxjM6MBW
 VeVHEm1hjAtXzp1NqJztHViymF6DZxxcpEEzTaUXihJlyHG8l/c//Kfvdd3Ikao6QSii
 9y0awom544Yf2Hn6CTdFXL2/YkD7vpbf3gOw5qJonJzoyqhlsEEYIYLsi6/zfoPFxzlf
 fxFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uC2/p4RFgTEv6gK1u1RWyAJblPPgS8/cfRxIcvP+Zmg=;
 b=H4jD1dAbh6SAXmUosHCDHezZF626wBWU1rcZyWTla/3s913NffBJigBGZ0ZPxrwPV1
 KvveuDmE+Nk7/GG9c0jZfNG9UpIwKRnWHOag86mA/3GU2fnuoCiiNfALD7qZX35CQ/Qb
 gAgdTsWzPRm19JHzctTOcr4Ld6PrmBak4FldGf02GSuim7leUsYMi9FHRffbAfNwl1nI
 2OldoLfxSZiXCc1QSk2Dm82HBI6d5AG94TyrzGdvDwXdzoiyFWTDBmiP44WGtjZFywRJ
 at5KgWPPOJKBHCUGy5MDJYkZ4jNrNQTIv9gcD38jEGpeEexKtC/AvKGSrDEpe2/Fctr3
 HBow==
X-Gm-Message-State: AGi0Pua3aUU4DB2r4qGzkODTXgH5xxOeSg+9TkE3Hvu+Spvg7iiEK5y7
 pGGpvFNm0W1V72Vy2lsf8Zw=
X-Google-Smtp-Source: APiQypJXCFnzC0T8S8VKrymEH2eJrMUjFHnHVDn/zH/MEdUUqEhsA1M/NKla1AzHQGAgogXRhiQCfw==
X-Received: by 2002:a17:902:d70f:: with SMTP id
 w15mr9109688ply.138.1587732582915; 
 Fri, 24 Apr 2020 05:49:42 -0700 (PDT)
Received: from blackclown ([171.60.179.95])
 by smtp.gmail.com with ESMTPSA id u21sm4968911pga.21.2020.04.24.05.49.38
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 24 Apr 2020 05:49:41 -0700 (PDT)
Date: Fri, 24 Apr 2020 18:19:26 +0530
From: Suraj Upadhyay <usuraj35@gmail.com>
To: jerome.pouiller@silabs.com
Subject: Re: [PATCH] staging: wfx: cleanup long lines in data_tx.c
Message-ID: <20200424124926.GA17373@blackclown>
References: <20200422153900.GA6184@blackclown>
 <2253201.upfRyW1aZW@pc-42>
MIME-Version: 1.0
In-Reply-To: <2253201.upfRyW1aZW@pc-42>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 dan.carpenter@oracle.com
Content-Type: multipart/mixed; boundary="===============5826109964687063228=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5826109964687063228==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DocE+STaALJfprDB"
Content-Disposition: inline


--DocE+STaALJfprDB
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 23, 2020 at 09:29:28AM +0000, Jerome Pouiller wrote:
> Hello Suraj,
>=20
> Thank you for your contribution.
This would be my first patch to linux-kernel :)

> On Wednesday 22 April 2020 17:39:00 CEST Suraj Upadhyay wrote:
> >=20
> > Break lines with length over 80 characters to conform
> > to the linux coding style. Issue found by checkpatch.
> >=20
> > Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
>=20
> Is this reported by checkpatch? The strings can exceed 80 columns.
No, it's not. Actually I am using vim with some plugins and it was
showing red their. So, I thought why not make these strings in a new
line.

> J=E9r=F4me Pouiller
>=20

--DocE+STaALJfprDB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE7AbCa0kOsMJ4cx0j+gRsbIfe744FAl6i4FYACgkQ+gRsbIfe
744NFg/+K7LCGsRpnJr/OgCb2VgMmZ4KWXENRA5AQ++9O6rqt484dVk9dztC3rhX
82GUJS4hyNpRWpqnREJiJSkklpo7nq9b98rGlBuTu4kEySEclq6ByU3ym4Xq6E3O
wcZazZUI7tuSw4J1qUojOwHhApgHAuK5d8hLoogsPOxk7Ymhlm/1fqXZss6IDOKb
potWtqhYn+ixL9e5/A5GQZGg2MZe+GVdb66/0yc2gIC6EtmSArY1JXsXBwcHaq61
B2se5WCqMkoBK0ZvZqW7IDKBHam6/VP0uhbCaf8SSUK8doKWEc1ALugueiZL+Nxm
oLGhY7Q0Cw2T5xwjxAZxOFU8CWbN+bwVCAens5b4ocamWhiVQ3SjRZQcv++XWsPz
ueKyoNy6zcoC5SfoZGc6zUAGRhrmBb4hROInd3pzuxYYdykynDjkis5rgg2XU1OL
GiKx/kNyN7zyTBHknwZBPAa3T6ZXgzK999R8Zq6BvG75ngf71jO+CcypSyDPuzmz
idDNHLNnxHbX7P7sZ0YbTP4P0pOG3nks/48v+0s75bp7btud+bcnBuVkw3qTE30t
hWXDwtl1qWetpnCy1/9d9RxeiPya28+nL/R9afBtiTqN73QNiPzSfbVS/oEmu3fP
gMQw/YZy2a/6ietO4a73UT7ceSmwL0HnDrqFPghv1lWp6bZSUFs=
=UOYc
-----END PGP SIGNATURE-----

--DocE+STaALJfprDB--

--===============5826109964687063228==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5826109964687063228==--
