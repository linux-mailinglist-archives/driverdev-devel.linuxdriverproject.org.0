Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE296FE90
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 13:12:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D13ED855B1;
	Mon, 22 Jul 2019 11:12:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XdVucuPdlyp6; Mon, 22 Jul 2019 11:12:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 70A0F85623;
	Mon, 22 Jul 2019 11:12:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 852C71BF38C
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 11:12:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 80CF6848F4
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 11:12:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b5yGVYV3YrRA for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 11:12:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C485D848A9
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 11:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nRKtjKqcBWW7M2EO6E9825yGNowX3ZQvNK7zSogKi4g=; b=qA5XpTBPSDi+DHEzVIOqvpqNzP
 5bJhYO3axaOUNw4sQFexNJkkynKD8MrWTHgD9LWWjm918agoCb2A690zthGFa9il5uDt7LJQyw6Ek
 lsF/wOt6htqWiYRTImWVxbllR/XM9d3rIXkb2Ct/mmfZwpHzCyiE0THJpzEgtvLyptzKcAPTBxNAu
 DpTYpZBqqTm0QvMN+6Jd4CluE9Kwq1aHkVDXKpUCbUcAHJZwMYywTBzlkdR8yxjaACuqEsz13I6hd
 Bte5RAVWO0fLhjWy2dzTpWRhx/9cLhcA2LcVulMnRadZMnwOUGojI7DzFgbflWhWeTZqnfU1i4/LF
 8Je+kcuA==;
Received: from pnakotus.dreamlands ([192.168.96.5] helo=azazel.net)
 by kadath.azazel.net with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <jeremy@azazel.net>)
 id 1hpWF1-0004e2-S8; Mon, 22 Jul 2019 12:12:27 +0100
Date: Mon, 22 Jul 2019 12:12:25 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH v2] staging: media: sunxi: Add bool cast to value
Message-ID: <20190722111225.GA2695@azazel.net>
References: <20190722060651.6538-1-nishkadg.linux@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190722060651.6538-1-nishkadg.linux@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 192.168.96.5
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
Cc: devel@driverdev.osuosl.org, maxime.ripard@bootlin.com,
 gregkh@linuxfoundation.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1686535085487153633=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============1686535085487153633==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9jxsPFA5p3P2qPhR"
Content-Disposition: inline


--9jxsPFA5p3P2qPhR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 2019-07-22, at 11:36:51 +0530, Nishka Dasgupta wrote:
> Typecast as bool the return value of cedrus_find_format in
> cedrus_check_format as the return value of cedrus_check_format is
> always treated like a boolean value.
>
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
> Changes in v2:
> - Add !! to the returned pointer to ensure that the return value is
>   always either true or false, and never a non-zero value other than
>   true.
>
>  drivers/staging/media/sunxi/cedrus/cedrus_video.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> index e2b530b1a956..b731745f21f8 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> @@ -86,7 +86,7 @@ static struct cedrus_format *cedrus_find_format(u32 pixelformat, u32 directions,
>  static bool cedrus_check_format(u32 pixelformat, u32 directions,
>  				unsigned int capabilities)
>  {
> -	return cedrus_find_format(pixelformat, directions, capabilities);
> +	return !!(bool)cedrus_find_format(pixelformat, directions, capabilities);
>  }

I think the original was fine.  The return value of cedrus_find_format
will be automatically converted to bool before being returned from
cedrus_check_format since that is the return-type of the function, and
the result of converting any non-zero value to bool is 1.

>  static void cedrus_prepare_format(struct v4l2_pix_format *pix_fmt)
> --
> 2.19.1

--9jxsPFA5p3P2qPhR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEZ8d+2N/NBLDbUxIF0Z7UzfnX9sMFAl01mg0ACgkQ0Z7UzfnX
9sNP7Q/8CiUixCeseW+FrbQE9zhblAGy6HdO5TApJGzM51La4NCeZEYwl2v6oRvB
uG6/+E+AjN4nHphI35buzhR2aJm1IGdU+qVpObRG8llcmUCWVHSfyCzpsnCdXX80
klN9+74CM8nZg//4675DsDiAq28h/ygBzr2c+C8G4zV/ycgYW9Q7zUdbSaaRmtUA
gW+vsE4dkKxX4CFgLOeg8dqBIHW9gT+hS2aZPQSp40ZEKKQYAsbAk3XyifLoim5E
sC9DIVJMnj+szfH/C5Pf/GBRhdzLw7Ysf33czJqWZU64CWsMZvxF/ypZXQ/Ynt9r
r+GSZdwV0LIrIkGkOeQ2PISAaZKJvZ4iwW663OOtye7n3C7XnxYtt0PsLlrT5oef
3GCd+whORdefuJDQX0QwzKS8ix1HhW0zi/6sskBkoCpy8RH70s0IsB30uURs6UvF
kNLhBz08Vx/x/AbkwPD988n4raS3IcgD/jPGYjTI1sagif68AUQTn2wMJ29yx9y+
o7Qo68DqgzGviMvO24ygig3K4jABgELuX2v2F3W2KRYMtedLD5nIn4A1Bsh7PjQo
8AO295O64b4Z8RHb68MwwiObmIZj70Aq6LP9cfrOARA+8nxRQU8XEzsdB57URHnA
ebzSt/4+OEbLWFtF9V71L2a6GWRbqw/dEydAxENGaof0UbdiDM0=
=frdo
-----END PGP SIGNATURE-----

--9jxsPFA5p3P2qPhR--

--===============1686535085487153633==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1686535085487153633==--
