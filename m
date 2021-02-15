Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7875A31B713
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Feb 2021 11:26:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5336B87121;
	Mon, 15 Feb 2021 10:26:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IT1mAskd2ao6; Mon, 15 Feb 2021 10:26:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C449987119;
	Mon, 15 Feb 2021 10:26:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7AA751BF95A
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 10:26:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 76FBF6F509
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 10:26:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QOntlwrk90K4 for <devel@linuxdriverproject.org>;
 Mon, 15 Feb 2021 10:26:00 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id B7C3A6F510; Mon, 15 Feb 2021 10:26:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 547C06F503
 for <devel@driverdev.osuosl.org>; Mon, 15 Feb 2021 10:25:59 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id g6so8186613wrs.11
 for <devel@driverdev.osuosl.org>; Mon, 15 Feb 2021 02:25:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=z9SliCCRum/3A2E2ZMNlI9m+hPoUUx4IbBiUL26CGt4=;
 b=XmYapkqPECCZQ2urP7izpjxwLyQJGPa8zDUV3C5e8uDSsQB6IFaZE8Ld7RFtvmEdLC
 +IMr0tT7+eve+w26+I/NErozvBO8U3PwdPvpmvtwN+cTaHKUf/meRJCmnnTR9KPXD4Bc
 vvJQkfqcvu4L02plGHnXIrzbgRqs9zQ/UaUyZBlfFrDIKY9lwFOrQrzhFw3Xk+c8tEua
 LSRDeoTQPz4vQTjTydCHi3x7CuaISpuj+M9OsOOvz/MslR6G5deopedI4gqFxSvVP2+f
 /zzrE4G30+pdmtJlL1L3l+ebqai06+Y4Sjhu1YBwK3vfnVS16n0u4fGCE4RYX+KAjOEc
 jG4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=z9SliCCRum/3A2E2ZMNlI9m+hPoUUx4IbBiUL26CGt4=;
 b=fjDzGJshkennELIDXCC82ABi6OqkE1dmVWiVuxLQH6Cc1jNIWhLPedzJEqbgwhIKF9
 Gw/XAgT1MDJTGve3yBM/I5y6Ji0imoF421Ih/C7WrtR2Axbhr2oezMGpqxkST7imSaao
 d5nZWI0peLyo6opyGDP8pOQ/k7d/eQQM4ujVFXx3vKl3kUSqlx6WYdc3edsAKRlzvG0f
 OxPOlb/M/LiBRDeDMXFojpKDs3ysEY7fnAUPVAgzKjSuUTd1FeuP90JHf2aDZxJc5KeH
 Nk9MvuqkzKDs529i5VPRQ3zLUKQjYaWi4vySw/rHYEsk38HnjROWfbEOo0amZBzIrLEl
 Lo2w==
X-Gm-Message-State: AOAM531j/G4runW/1qZMDGT7AEEueJPzfyQWlEJa5ehQQitc6pQU7mW/
 GU3boI7MNY3DUMpMoA07WCg=
X-Google-Smtp-Source: ABdhPJxjPOB8Gm2aMkGNZx+mNq7QWQir4NmLrHP2dOTubysE7eypcREIqAJZbaCXxS9zmJnTV7aZtw==
X-Received: by 2002:adf:f7c5:: with SMTP id a5mr18324488wrq.243.1613384757517; 
 Mon, 15 Feb 2021 02:25:57 -0800 (PST)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id g136sm10467906wme.10.2021.02.15.02.25.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Feb 2021 02:25:56 -0800 (PST)
Date: Mon, 15 Feb 2021 11:25:55 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Fatih Yildirim <yildirim.fatih@gmail.com>
Subject: Re: [PATCH -next] staging: nvec: minor coding style fix
Message-ID: <YCpMM4HhAGkpHIX7@ulmo.localdomain>
References: <20210212073423.20562-1-yildirim.fatih@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20210212073423.20562-1-yildirim.fatih@gmail.com>
User-Agent: Mutt/2.0.5 (da5e3282) (2021-01-21)
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
 linux-kernel@vger.kernel.org, marvin24@gmx.de, linux-tegra@vger.kernel.org,
 linux-kernel-mentees@lists.linuxfoundation.org, ac100@lists.launchpad.net
Content-Type: multipart/mixed; boundary="===============5898814547228640509=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============5898814547228640509==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Umw6Y6994BHCIjmo"
Content-Disposition: inline


--Umw6Y6994BHCIjmo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 12, 2021 at 10:34:23AM +0300, Fatih Yildirim wrote:
> Fix for the below coding style warning.
> Warning: Move const after static - use 'static const int'
>=20
> Signed-off-by: Fatih Yildirim <yildirim.fatih@gmail.com>
> ---
>  drivers/staging/nvec/nvec_power.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Acked-by: Thierry Reding <treding@nvidia.com>

--Umw6Y6994BHCIjmo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmAqTDIACgkQ3SOs138+
s6GukQ//RtPgmq0gdQENuJQ8oYCYYuLbk/GyI6GciGBnKVAXRMaj1d0TmhVmEF0s
aB871tDOVfpuQwCl4wyCKSdcKR0ABq2mS0S04KHqP6vP7yQJTAjLLqzQLy7oLjAJ
R8un8u9upWqK8xGdL9nCiD5CRWCRX9TZ6CG6IV8Xw6mTefz3zrBwmwc3hmXJjLlQ
AyM8nGUU0FZVPa4Pvzu6d2oIPoZNdbIJSduz8Qo3yI7Cwhr3+9Qhrl0WgHSCWHKU
QOnr8SPmw+zEegpOJFCfpg7TlxR8EDvnrPLVCOQLMznkyIws8uVv/kLjoSmHDIEv
2WHthxJtyis/TxLlbbpE4tUHiJ5bg0JZdx50ssweJmtxBYp9FI97S3UTPXBViGZ1
PxrfIdFyW6zO5npGKP80Es0S/HnhznbVUljucwWk5vquDWQERDffkIDGD3ApBHxc
OVb6DaKHboha3YgQnqnFaJ+q1oHJ0Tu4k0unOjz8KKkTkSLNsfJfW/jxnsr491Fl
9VEqo7LpquJyqwcr0/Fto0YBPhC90uJKM2do1tuDb2m1k0QeFf4gg2dLwR9uYDGk
E8PfgH34Uyqomytd3cNuge60VO5U1Af3Drzm661cHkjtlX9HC1cnbavzrKiRbw8t
OtnuZv0dGkQQPWO/A154IUXZVAwZRFJTN4vvLThW8y6J6ia7f90=
=XqYj
-----END PGP SIGNATURE-----

--Umw6Y6994BHCIjmo--

--===============5898814547228640509==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5898814547228640509==--
