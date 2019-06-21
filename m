Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A554E6E1
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jun 2019 13:14:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7A34187FCF;
	Fri, 21 Jun 2019 11:14:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zaM0UQq26QFR; Fri, 21 Jun 2019 11:14:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 76CDD87F5D;
	Fri, 21 Jun 2019 11:14:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C97CB1BF2BD
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 11:14:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C18BB86153
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 11:14:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uC4AxUEDX8I9 for <devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 11:14:13 +0000 (UTC)
X-Greylist: delayed 00:09:44 by SQLgrey-1.7.6
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
 [195.113.26.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A104885F7C
 for <devel@driverdev.osuosl.org>; Fri, 21 Jun 2019 11:14:13 +0000 (UTC)
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id AEB14804F9; Fri, 21 Jun 2019 13:04:14 +0200 (CEST)
Date: Fri, 21 Jun 2019 13:04:05 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Lukas Schneider <lukas.s.schneider@fau.de>
Subject: Re: [PATCH 4/4] rts5208: Fix usleep range is preferred over udelay
Message-ID: <20190621110405.GG24145@amd>
References: <20190619154648.13840-1-lukas.s.schneider@fau.de>
 <20190619154648.13840-4-lukas.s.schneider@fau.de>
MIME-Version: 1.0
In-Reply-To: <20190619154648.13840-4-lukas.s.schneider@fau.de>
User-Agent: Mutt/1.5.23 (2014-03-12)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@i4.cs.fau.de,
 Jannik Moritz <jannik.moritz@fau.de>, linux-kernel@vger.kernel.org,
 pakki001@umn.edu, colin.king@canonical.com, kim.jamie.bradley@gmail.com
Content-Type: multipart/mixed; boundary="===============1484442709773758498=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============1484442709773758498==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="p7qwJlK53pWzbayA"
Content-Disposition: inline


--p7qwJlK53pWzbayA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed 2019-06-19 17:46:48, Lukas Schneider wrote:
> This patch fixes the issue reported by checkpatch:
>=20
> CHECK: usleep_range is preferred over udelay;
> see Doucmentation/timers/timers-howto.txt
>=20
> It's save to sleep here instead of using busy waiting,
> because we are not in an atomic context.

Is it good idea? How can the system really sleep for 50 usec?

      	   	     	     	    	   	     Pavel

> @@ -865,7 +865,7 @@ static int sd_change_phase(struct rtsx_chip *chip, u8=
 sample_point, u8 tune_dir)
>  						     PHASE_CHANGE);
>  			if (retval)
>  				return retval;
> -			udelay(50);
> +			usleep_range(50, 60);
>  			retval =3D rtsx_write_register(chip, SD_VP_CTL, 0xFF,
>  						     PHASE_CHANGE |
>  						     PHASE_NOT_RESET |
> @@ -877,14 +877,14 @@ static int sd_change_phase(struct rtsx_chip *chip, =
u8 sample_point, u8 tune_dir)
>  						     CHANGE_CLK, CHANGE_CLK);
>  			if (retval)
>  				return retval;
> -			udelay(50);
> +			usleep_range(50, 60);
>  			retval =3D rtsx_write_register(chip, SD_VP_CTL, 0xFF,
>  						     PHASE_NOT_RESET |
>  						     sample_point);
>  			if (retval)
>  				return retval;
>  		}
> -		udelay(100);
> +		usleep_range(100, 110);
> =20
>  		rtsx_init_cmd(chip);
>  		rtsx_add_cmd(chip, WRITE_REG_CMD, SD_DCMPS_CTL, DCMPS_CHANGE,
> @@ -918,7 +918,7 @@ static int sd_change_phase(struct rtsx_chip *chip, u8=
 sample_point, u8 tune_dir)
>  				return retval;
>  		}
> =20
> -		udelay(50);
> +		usleep_range(50, 60);
>  	}
> =20
>  	retval =3D rtsx_write_register(chip, SD_CFG1, SD_ASYNC_FIFO_NOT_RST, 0);
> @@ -1416,7 +1416,7 @@ static int sd_wait_data_idle(struct rtsx_chip *chip)
>  			retval =3D STATUS_SUCCESS;
>  			break;
>  		}
> -		udelay(100);
> +		usleep_range(100, 110);
>  	}
>  	dev_dbg(rtsx_dev(chip), "SD_DATA_STATE: 0x%02x\n", val);
> =20

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--p7qwJlK53pWzbayA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl0MuaUACgkQMOfwapXb+vJdwQCbBhRj4pZVZbSxjFw5Ou1WPS5+
SJIAnRX/bJiI/3/Npo1cUiL+ZXtQx3UK
=+6QU
-----END PGP SIGNATURE-----

--p7qwJlK53pWzbayA--

--===============1484442709773758498==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1484442709773758498==--
