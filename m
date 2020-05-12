Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 313F81CFFEA
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 May 2020 22:55:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 85BD688951;
	Tue, 12 May 2020 20:55:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0A4dIu+lFKEf; Tue, 12 May 2020 20:55:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D29A1887E6;
	Tue, 12 May 2020 20:55:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 22B531BF5E9
 for <devel@linuxdriverproject.org>; Tue, 12 May 2020 20:55:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1FBA886978
 for <devel@linuxdriverproject.org>; Tue, 12 May 2020 20:55:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oiXI_8EusD1S for <devel@linuxdriverproject.org>;
 Tue, 12 May 2020 20:55:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B0F9F86914
 for <devel@driverdev.osuosl.org>; Tue, 12 May 2020 20:55:47 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id v12so17586560wrp.12
 for <devel@driverdev.osuosl.org>; Tue, 12 May 2020 13:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jp7GeaNDAqJlfR+e7XcP59HTgpKh1bKvuvHK4VwDL+w=;
 b=SSp/+IVS9LX8TzdmNCCnRSFDbWo5oj4ZQO4HcQHbGJgm2HVL1XWTOf5iO16yrIyQRL
 YSlbbfKgJ6dkIGjMLs3Dw288SYAGvQCsiuHsqH6+qMLStAJC4Eb364VyI9+5vtmv0Uxo
 anCMszzM1P00E6yNHV1qciKp8DM00tyL+bPsrFQ/oATilaTOxbd3rY+gQePmEL2b86HL
 1Wjr0F52LHwseLTT5lZRaOEE6ehaObnZs5CGwpf1miC3AwdkVlZ3v6A+5HCHe/Z7+5Yk
 YGxQvwfdsg24yd/QO+rhz7zo/z3B8rLyC3Eu8fsfmLl/G+SEwjnvZGhJOsUsL1QmvnES
 AvHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jp7GeaNDAqJlfR+e7XcP59HTgpKh1bKvuvHK4VwDL+w=;
 b=jlJFYp2/OoEbIm2zF7llqzSI4D8ACrKknYUQSVHTUF3DWZSMucai32TbKm1T1YokGH
 VosXny8DErxHeN/HMghdvgn8JCtL4T1dPbVBI2s6jivs+Efnz651cf9sXpVHRb3jISkq
 EqgWsjSAAdVHEb7EkwguBbtAoirFmSu+eMDQmzmCKNR15Ti2JI+6/MZzzOIFRJvpFNRk
 fmI6UTrQalliWm/8ehJiqlb1OV4NjCLEZpGGYYX2Fg2zm/n3Ls4+fIZLV9n6sOYyd/wh
 Bp7PJuHNSLXu454nyMUKYBQi8F7hRdnpf/8AmDfRK9molD5vI5URE5ZET9kEnZFmBOD8
 os6g==
X-Gm-Message-State: AGi0PuaBh2x/suZTPK/otuBV96DnB1pDvyLWlt1QnQjLtAr4WQK5fJsY
 c7IIYWFATRQ0kQMda2C/k6I=
X-Google-Smtp-Source: APiQypIeT6aWn9V2z4if5f7/8c3cKK3rSrS1h05YMd/NU6FK/dfa9eaAksPaqw0t49JKBUlPPndKvQ==
X-Received: by 2002:a05:6000:1ca:: with SMTP id
 t10mr26855242wrx.230.1589316946050; 
 Tue, 12 May 2020 13:55:46 -0700 (PDT)
Received: from localhost (pD9E51079.dip0.t-ipconnect.de. [217.229.16.121])
 by smtp.gmail.com with ESMTPSA id g25sm32389123wmh.24.2020.05.12.13.55.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 13:55:44 -0700 (PDT)
Date: Tue, 12 May 2020 22:55:43 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Samuel Zou <zou_wei@huawei.com>
Subject: Re: [PATCH -next] media: tegra: Make tegra210_video_formats static
Message-ID: <20200512205543.GC3864641@ulmo>
References: <1589196015-8945-1-git-send-email-zou_wei@huawei.com>
MIME-Version: 1.0
In-Reply-To: <1589196015-8945-1-git-send-email-zou_wei@huawei.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, jonathanh@nvidia.com, skomatineni@nvidia.com,
 linux-tegra@vger.kernel.org, mchehab@kernel.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============7356288989930482138=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============7356288989930482138==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/Uq4LBwYP4y1W6pO"
Content-Disposition: inline


--/Uq4LBwYP4y1W6pO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 11, 2020 at 07:20:15PM +0800, Samuel Zou wrote:
> Fix the following sparse warning:
>=20
> drivers/staging/media/tegra-video/tegra210.c:589:33: warning: symbol 'teg=
ra210_video_formats' was not declared.
>=20
> The tegra210_video_formats has only call site within tegra210.c
> It should be static
>=20
> Fixes: 423d10a99b30 ("media: tegra: Add Tegra210 Video input driver")
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Samuel Zou <zou_wei@huawei.com>
> ---
>  drivers/staging/media/tegra-video/tegra210.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks.

Thierry

--/Uq4LBwYP4y1W6pO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl67DU0ACgkQ3SOs138+
s6FvtA//e37GxkMc9E73ef/XZuzCXW0aTZUMH7NhzcWq6QuuXjKXb7wa77NAvMRh
q+n5FaU2nK0cKhI6zdW9qmwF2pN6TKIAXeK5HSFfkUs+COwC8EwZT7REVBtMo3/T
VAxyTWE/oZt6rgG+uPbmI5ahCy3zzsr20Z5+jk9YcdXZT92ZGa/hiDBV294OS/gx
CCG1GXcbQWO98xw8EyZCRYIYfSRLTRVNq1nNjie95z99dJhEZ4/KNxnGBDBI6hzW
zqIyiwSrlijNZvVcWaa+lWJ+ldrlxb54wbPhDRihe5y9moFzyxJevnCvQ8gXcix/
SnxdqHWT++FP/6vaWpwtrwzcLqNg9D28sk1t/tkevBJX9FQ2mP3TZEn6JT0qKTK8
+cqr16CNkC3myhPuznf6P/SdRrAw1gRT58+dwiEvXYeugUVgBQ/d+D1Q8fZlbBW0
Tuq+hUDOSIeIWRNEMxjgwC4fTtUwOYMFvcbFUOO0+dCismX/dcxbhKcNZdxiqd9b
fhoEfRxcJtFHoGAXF/4ThTDM5QXF+CnODkbpupWN8aQmN6lOAckpe9CIXgLlDTqu
MBHhaSksQGsmoZ0h5e536irVvwPnVC35sDB8hx6sqpd5qW/1NTkUWWFEwYV6dk4I
at7p0W9nfOMGz6D3HdMg2s2M8kCDOpSyqSTojBwIUFCPIPHV7vo=
=/sE0
-----END PGP SIGNATURE-----

--/Uq4LBwYP4y1W6pO--

--===============7356288989930482138==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============7356288989930482138==--
