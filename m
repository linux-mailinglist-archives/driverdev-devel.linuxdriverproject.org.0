Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A10058B66
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 22:09:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 52EC72264C;
	Thu, 27 Jun 2019 20:09:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 88R4IJQixCN4; Thu, 27 Jun 2019 20:09:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9A8A522624;
	Thu, 27 Jun 2019 20:09:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1A7011BF41D
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 20:09:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 13CF9221FF
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 20:09:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bSgFxcP-apOx for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 20:09:25 +0000 (UTC)
X-Greylist: delayed 00:08:11 by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 67C9720427
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 20:09:25 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id p15so3907752qtl.3
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 13:09:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version;
 bh=qKK2KDX7frtrIKr1EplmktiBaWbPgSjQcBIIxMVX2RU=;
 b=eUJdgworBLQew89Ab56iS1MHkbPZfN/a/hYyu+uNK5hrjQviRKG1CHF7ouGaxJOzn9
 FfpU3W26Z0xXwnbfh5ymfHSBUZysfAWmcwPTY3H1KBraiH4P5UcY6yg3BJzVB9XE+cqM
 /fLXGZEewVl7CUcgfXsRia3fZz0GUyxQrClwKAeJnk0MiAiF5n+XrWBBOScqBl5vMx3f
 hmLKsEPOG4VMvp4T7ybl6RxasQ2GQJ42ZJi/fKR961njNW1y4M3ugmcljjll+vWspBm0
 khCqghz04HYTMqIk3Lm/5F7ePHQ+J92m8I+/Zh0u6kenqQi4m+O2rV8i9V0urQQz2Nfm
 ekYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version;
 bh=qKK2KDX7frtrIKr1EplmktiBaWbPgSjQcBIIxMVX2RU=;
 b=q37ahjtaT30D/lLxc7oRgEzPPFdJRmQe3j78+nNDYPjlWxkt4KUAvcNatAi5EjucF0
 m0m7I3PeAQ8GwTFXoa6KSCOdj5T7Fd6UR+fWG58z71v3d0c9VSY/av1Tli6AqPTR0Y63
 s1cOZyLFlZuh5bqW60KTcC9u+Nsgbjz+S+Gs8FDRrUlDr4J+Ds/1tgdgD6MSaBE5hwTP
 dE8eWe/xbDFNU4Vm4w72mFxxfjV5JIk1usu1Oq+c+GVhIflkNPsdOaBaxIX0WBd4wbaV
 29p+WSJ9ENLKGVAOOBX6Bw8GZRllu55LwbqF9h31yJUYKCR3AkkWslldJ0s7r7aDMRkd
 1auQ==
X-Gm-Message-State: APjAAAUHjW/rpcgzxZw8TClRmJ7vYmA9Va9wGkPN2jCTX50jUAahlP7h
 7cwqWGjh/G42IkF/fN7JI5zCbQ==
X-Google-Smtp-Source: APXvYqzXytLoY5aMFDhelaZYmwxxaAOnY02e5QhQ6jI4M7w1awpujSXVkKSKeJpgDsT4OqNja6A5Kg==
X-Received: by 2002:ac8:2734:: with SMTP id g49mr4936133qtg.228.1561665674052; 
 Thu, 27 Jun 2019 13:01:14 -0700 (PDT)
Received: from tpx230-nicolas.collaboramtl
 (modemcable154.55-37-24.static.videotron.ca. [24.37.55.154])
 by smtp.gmail.com with ESMTPSA id c18sm32024qkk.73.2019.06.27.13.01.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 27 Jun 2019 13:01:13 -0700 (PDT)
Message-ID: <804b1c4708bb0292ba32535d4b986a129d6492b8.camel@ndufresne.ca>
Subject: Re: [PATCH 19/31] staging: bcm2835-camera: Ensure timestamps never
 go backwards.
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Stefan Wahren <wahrenst@gmx.net>, Eric Anholt <eric@anholt.net>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Dave Stevenson
 <dave.stevenson@raspberrypi.org>, Hans Verkuil <hverkuil@xs4all.nl>, Mauro
 Carvalho Chehab <mchehab@kernel.org>
Date: Thu, 27 Jun 2019 16:01:11 -0400
In-Reply-To: <1561661788-22744-20-git-send-email-wahrenst@gmx.net>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
 <1561661788-22744-20-git-send-email-wahrenst@gmx.net>
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============7356707750725032686=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============7356707750725032686==
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-SF32Srt50qYIqOq3jLza"


--=-SF32Srt50qYIqOq3jLza
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le jeudi 27 juin 2019 =C3=A0 20:56 +0200, Stefan Wahren a =C3=A9crit :
> From: Dave Stevenson <dave.stevenson@raspberrypi.org>
>=20
> There is an awkward situation with H264 header bytes. Currently
> they are returned with a PTS of 0 because they aren't associated
> with a timestamped frame to encode. These are handled by either
> returning the timestamp of the last buffer to have been received,
> or in the case of the first buffer the timestamp taken at
> start_streaming.
> This results in a race where the current frame may have started
> before we take the start time, which results in the first encoded
> frame having an earlier timestamp than the header bytes.
>=20
> Ensure that we never return a negative delta to the user by checking
> against the previous timestamp.
>=20
> Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.org>
> ---
>  drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.=
c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> index 9967df9..6205793 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> @@ -387,6 +387,11 @@ static void buffer_cb(struct vchiq_mmal_instance *in=
stance,
>  			 ktime_to_ns(dev->capture.kernel_start_ts),
>  			 dev->capture.vc_start_timestamp, pts,
>  			 ktime_to_ns(timestamp));
> +		if (timestamp < dev->capture.last_timestamp) {
> +			v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
> +				 "Negative delta - using last time\n");
> +			timestamp =3D dev->capture.last_timestamp;
> +		}

Instead of that, maybe you could request a minimum number of buffers,
and not let the header buffer go until you have a proper "following
timestamp" to give it. This way you don't need this hack, and you won't
have an off-by-one in timestamps.

>  		buf->vb.vb2_buf.timestamp =3D ktime_to_ns(timestamp);
>  	} else {
>  		if (dev->capture.last_timestamp) {
> --
> 2.7.4
>=20

--=-SF32Srt50qYIqOq3jLza
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQSScpfJiL+hb5vvd45xUwItrAaoHAUCXRUghwAKCRBxUwItrAao
HA1iAKCyzh8vUusnUfIKgzx/hlvymYLNSwCgxSxj2SPDEegMp+kNFm//eoQOfv0=
=pCKP
-----END PGP SIGNATURE-----

--=-SF32Srt50qYIqOq3jLza--


--===============7356707750725032686==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============7356707750725032686==--

