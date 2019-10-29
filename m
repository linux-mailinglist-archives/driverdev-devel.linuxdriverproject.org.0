Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A80E891D
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Oct 2019 14:13:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 65FBF857E6;
	Tue, 29 Oct 2019 13:13:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yy015GldSM1w; Tue, 29 Oct 2019 13:13:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7503385C9D;
	Tue, 29 Oct 2019 13:13:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8627A1BF86D
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 13:13:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6E2CF20361
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 13:13:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Er0BIpBIPug2 for <devel@linuxdriverproject.org>;
 Tue, 29 Oct 2019 13:13:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by silver.osuosl.org (Postfix) with ESMTPS id A26891FE41
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 13:13:13 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id s1so13626005wro.0
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 06:13:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=W8PkCFVnCorrtSWGdVFof9XL+RN29yxwr92wnMWMfsg=;
 b=hqGegw9tshvWHtIQow/p3XWzfwDpwhTwKtAo2Rb6OCl2QBqJbIL0+RMefu+L25Iwei
 5COpMsatmSas6msShGrgSd6fpGg88UIxtJsXZiaUZ/7ie8V1ULHV9vfbtE4vBK6mvOUZ
 PEyIyyEFqVODpZfbqPpBY5WCHZ1uiayo9KypO1Kpi/GxsIqy7WTFYC+CawqmN0ILhFJ7
 kY7opCE36nNS/lae6b0xb8PGXJWo0ouUYyaoCV+2+dUoa3312RePliskFLh+8KZS1l1X
 DPMN030Rrt4fIw6TmYUkmrjvnF7gFQFI+lniAP03n6qz544kZF74GQwg00fTwqdI9nrW
 sxLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=W8PkCFVnCorrtSWGdVFof9XL+RN29yxwr92wnMWMfsg=;
 b=KznbVoAkrcTVATJsedghrpLyeghphXHtOmRQWnqLV1sk+Ygryj676Q7nV1HbPUNZAy
 WPp4uq7m4amSbyEDgZ70D/+h6y2IbBwnE5jZEc2KADcnxpdLsG9h0xRNhZnWecYMWI1e
 cqAYIB5e8uOYV5RS8ZMYGHKNHBym03c3idTOvDAnSYOuyNdPElQ0WkRug8358UxEmeLa
 pEG0f+jTxVkr17Y5LtzufG5KbD3ZPCyBpZ98Fe7IgTkEIqx8vWHpC3TQTDHqXTKL6xki
 ZhnbWBMd0w5ohaVTMlpTnI02++b2dYl7QFRh9xgXf5VETk9K09M1+1nuJA7n0YBwihp7
 JlFg==
X-Gm-Message-State: APjAAAWrlyscTMClAqsboqbn/5ZX4pe+U6Ejc2UehKlKtdlTe66Uqxbs
 K4ngSLBZFCcaZzqchglHbAc=
X-Google-Smtp-Source: APXvYqwTYDiXBly9gOa7PpLH0awe6adhtTX0gOKn67cC5MFmVPVqN4qC0h11nJmzD8pzD22UlVkv4A==
X-Received: by 2002:a5d:69c8:: with SMTP id s8mr19946146wrw.167.1572354792114; 
 Tue, 29 Oct 2019 06:13:12 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id d20sm1153173wra.4.2019.10.29.06.13.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 06:13:10 -0700 (PDT)
Date: Tue, 29 Oct 2019 14:13:09 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v3] ARM: dts: tegra30: Connect SMMU with Video Decoder
 Engine
Message-ID: <20191029131309.GC508460@ulmo>
References: <20190623170730.5095-1-digetx@gmail.com>
 <20190623170730.5095-2-digetx@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190623170730.5095-2-digetx@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============5770723743432728176=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5770723743432728176==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="DSayHWYpDlRfCAAQ"
Content-Disposition: inline


--DSayHWYpDlRfCAAQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jun 23, 2019 at 08:07:24PM +0300, Dmitry Osipenko wrote:
> Enable IOMMU support for the video decoder.
>=20
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>=20
> No changes since v1.
>=20
>  arch/arm/boot/dts/tegra30.dtsi | 1 +
>  1 file changed, 1 insertion(+)

Applied to for-5.5/arm/dt, thanks.

Thierry

--DSayHWYpDlRfCAAQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl24OuUACgkQ3SOs138+
s6FG0xAAgMsJHddh5VUJbI4i15//MpJSJLnwPjTUM0SfXsxqqMQwzkgqGe+AydBq
IoFAAUvBVOxqMjXw0B5/Thy4tMSqd1VM7gdoY6yMWLD5GUnTH+7Ce5IUGl+5bHif
G0Zl9ehYm2LkDEDTKEeYJ81O60iZtHR7IFdCnpwSD52dmxwnKk072UbpBB4XDW+A
K7yseW78aKMPQ6YmuR1q/iA9a6pPoqDifZl+QCPDxP21wq9OHC3K1OJqJCT+B67f
5B4fCugTTNCTsrHplkty95KBJfwDsrZd/nYA7FZJldeYgRTyIKIHQU6fv9dwDn5C
cYRlp6RPITn0NGSrVanvfPAwk3rorQSfXPbw/At8CRttqkOzp2VOWB2PP3cOvtok
1+SudogUvehLHoiPNKCKR1proc5WYYDaRgZyHmMDxzw6PxF62K9/qM0WhgeVvFoG
TW3aaGq8783udERsm8KeKZDKeFk6MHC0Jam+5nCG/aB5cwqLyEivAx09VpddfsrY
/znhxLFRQZGnbrnqD8+rKk0QMTN0XV3TQ1YP3SeQv6hFt67elWqWEzTcQyqW6Tno
Voa3YOX6NdOVefo/JbaskkUMyWUvhQsV311+u2gfkq7Ba+K1ATjFVzGpYz+mywQc
uxwNWBVJJO6BFaGcraonpnQCMx7Sq8dBqncQXAPfL4JAY1HvJhs=
=Qfvc
-----END PGP SIGNATURE-----

--DSayHWYpDlRfCAAQ--

--===============5770723743432728176==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5770723743432728176==--
