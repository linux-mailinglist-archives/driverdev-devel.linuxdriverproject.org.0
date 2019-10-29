Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7B5E8915
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Oct 2019 14:11:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2E65587985;
	Tue, 29 Oct 2019 13:11:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id abByI0xwtkgo; Tue, 29 Oct 2019 13:11:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 73E4B8774C;
	Tue, 29 Oct 2019 13:11:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3ACDB1BF86D
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 13:11:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 353BD20361
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 13:11:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rCzHJ70OaCG2 for <devel@linuxdriverproject.org>;
 Tue, 29 Oct 2019 13:11:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 551F01FE41
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 13:11:18 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id n15so13550583wrw.13
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 06:11:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lOy+50HbhiDNUSRNP6Tk+R9ATVXD2Ivrcf+miXw/+zk=;
 b=N273QaeUMMg5/G7NhFeQNSiwOOm2NJBSomTG1nIIHXPioLXEx2op1tPUErCjPwYZ1y
 lrzlnR6XYK7EW444yxCynlyROimb3W6aXDiychkEVA9e/C4nF6w2tRBBYwCAo/+eHEdC
 Lx9jSZyDH1G52tXBKqHExRSG0hUndVFxo41SQFRcO1ODRax5kdkkS5EzyxQCSjvlxvyQ
 A4jXVN38LJqN135VvOy6hnz01yODyXZNzySyyQNCRqBFS8nPuuJo9pfguk082+34w+zo
 LWP5a5ZwGA1dOcfbSJw2eEoeBZK82oY8EMptmZjPAav08aLbyMy41ypBzbZ7fqqZOC8T
 Vbaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lOy+50HbhiDNUSRNP6Tk+R9ATVXD2Ivrcf+miXw/+zk=;
 b=Y9UOEYyjX/Q10f3cfOljI6Wv34oYiZr20VV5U6suTtIphP2L3CE4RoDzpZdq59TYYW
 Gs5LoNVtKAFhvR67CW3DHKVHImlHV6ep8csRXb4FzqHV12AVbfn2CJcKLWbHGX6Pe7W/
 2wvwXFc9xK9ZhnODKkRwrFedUL2V77InTWv1lzMMQ+vyMklNWr3J3n24Dsq5cI4IN/qk
 Br6gNAIHG2A0+ACPNI1wcuSZKPsl2UXOefqzLQ5aYJw8RdXrpTmMKTRUJrDzEFM/yvbK
 rwMLWS075F8tywYpPGrQbt7U5vpKUDAGC6uZgzjjQ+HNkdvTE6XuD83VuYigZYLQMoDz
 mK1w==
X-Gm-Message-State: APjAAAWprtaTlvjbYeMOBDemrrQ7+DxojvwWNb1b3+w0LVaH2J1EwvVh
 0CSdYIHzHpytD1sEJpZ5wro=
X-Google-Smtp-Source: APXvYqyGLTPwTw/sl2EL5ud0q8caMRZ8kJJQ1zVzYeUZVvi9Q7KJq+ugRmwdlYUx3TzuBscH4EOmjw==
X-Received: by 2002:a5d:4b51:: with SMTP id w17mr7392462wrs.357.1572354676692; 
 Tue, 29 Oct 2019 06:11:16 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id j14sm17830079wrj.35.2019.10.29.06.11.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 06:11:15 -0700 (PDT)
Date: Tue, 29 Oct 2019 14:11:13 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v3] ARM: tegra: Enable Tegra VDE driver in tegra_defconfig
Message-ID: <20191029131113.GB508460@ulmo>
References: <20190623170730.5095-1-digetx@gmail.com>
 <20190623170730.5095-3-digetx@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190623170730.5095-3-digetx@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jonathan Hunter <jonathanh@nvidia.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh+dt@kernel.org>,
 linux-tegra@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2638258115464932292=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============2638258115464932292==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rS8CxjVDS/+yyDmU"
Content-Disposition: inline


--rS8CxjVDS/+yyDmU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jun 23, 2019 at 08:07:25PM +0300, Dmitry Osipenko wrote:
> The video decoder driver was tested by time and works absolutely fine.
> The reason why it is in staging is because it doesn't provide common V4L
> interface yet, this shouldn't stop driver enabling in the defconfig since
> our userspace (libvdpau-tegra) provides combined acceleration of decoding
> and displaying without use of V4L.
>=20
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>=20
> No changes since v1.
>=20
>  arch/arm/configs/tegra_defconfig | 2 ++
>  1 file changed, 2 insertions(+)

Applied to for-5.5/arm/defconfig, thanks.

Thierry

--rS8CxjVDS/+yyDmU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl24OnEACgkQ3SOs138+
s6Hsug/8D9ZjFD1Ul/3scNpLRp1IPnTWhhx+W0DZAVdANmT+CS6SbGdGwL2DeHGm
sTknFJzDEf7x1IOgajb5NcJioElqnPjE4fCQaCUSruNk1mKQjoef3nWlvGWrJxv6
CkLeOFt42etHWRUm47LlBEBhqMZzJ3yFudszWQK1Qm1rtJrfT31IQY14COZAQZQJ
cV98i/HGAmcmrWwPRTm2Kj3HzoZ+qtmFF5Cfk2HqIs7UPz8K4KaNGpbBalAo/6NC
rTVa0nkxIq/hIFKzJ2w8Wq8dJi+fqeaLGKzmzWt0Y9yKCkLRcGW3/jVo+3mSNKf2
a0Mvs1dWpVgiYvAcWuANX3sWDipX0qhyq4jvZ81mdsB0tFA25n3sC9gY3aVMphZO
iZTMA69bo0CIJZLceuTMB6KbMK5VQHgyDrDVJyOc45ZT8jZ4KYkXXmB+oBGJqRPA
/Jw14esu2ojr0Rv54QHzr9ttSypo6TpB70Hy5k0Co8lye3uziOQxcbPhcyWNt3au
Wqa1bczkQoOLaRrjQ/YHzsfAImkBRb3r1uhEhSuAhbhtKU0qXsbT4izhqCHKrjpS
b6NAOAYbA2kX0RPNjVBhGzR5tRS3vafubRYrtOud08HPmW5EFMmzqktn4FOeBVb9
07FZAlIhmhmnvremuifeN+1g4o1XGyloWEzgpA+0uXQitd090v8=
=q4xx
-----END PGP SIGNATURE-----

--rS8CxjVDS/+yyDmU--

--===============2638258115464932292==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2638258115464932292==--
