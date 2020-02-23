Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ADDB1696BA
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 Feb 2020 09:07:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B6E8286FE9;
	Sun, 23 Feb 2020 08:07:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6f19vEQh55ld; Sun, 23 Feb 2020 08:07:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2F6DF87048;
	Sun, 23 Feb 2020 08:07:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BE5DB1BF383
 for <devel@linuxdriverproject.org>; Sun, 23 Feb 2020 08:07:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A951E203C8
 for <devel@linuxdriverproject.org>; Sun, 23 Feb 2020 08:07:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KwoU-XL9oOmO for <devel@linuxdriverproject.org>;
 Sun, 23 Feb 2020 08:07:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by silver.osuosl.org (Postfix) with ESMTPS id BCFC520373
 for <devel@driverdev.osuosl.org>; Sun, 23 Feb 2020 08:07:49 +0000 (UTC)
Received: from mr5.cc.vt.edu (mr5.cc.vt.edu
 [IPv6:2607:b400:92:8400:0:72:232:758b])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id 01N87mUW006754
 for <devel@driverdev.osuosl.org>; Sun, 23 Feb 2020 03:07:48 -0500
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199])
 by mr5.cc.vt.edu (8.14.7/8.14.7) with ESMTP id 01N87hC8011820
 for <devel@driverdev.osuosl.org>; Sun, 23 Feb 2020 03:07:48 -0500
Received: by mail-qk1-f199.google.com with SMTP id t186so5937532qkf.9
 for <devel@driverdev.osuosl.org>; Sun, 23 Feb 2020 00:07:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=xr+dDzI9JDrsuRpKKcdMlTjc/FX5VYBQYyf/vKZ+Y+k=;
 b=GGM4/zZlVBUfL7qFrgy8DQjTcDljS2mkDsbnW+segjov0e+ZdDWROAQTsGG1ddH0gu
 ATZlIthFKwcyrMvbnpR9f2nMXRhMZ8plmcnP98POLLfpMESZk+LDuaLy4oeRGHIJQKjF
 MjlDRoygTRUP0MEU0m1sL0IWQdocuZMKPs5+zqAcfgzjNRoNeo1Bd8Btj/vX48cWdocr
 FgGRsILt6qnUjtC8ae5Qkj3ln3qtyGwR1/vRzCFuEw1lxlhd4qshw1zA563gz9GgtZJW
 5htHsdgCx6hGTHWoMVpTNCVsXI6NJO/hhHXC8m7X62r9WaOO7hTkzF29d+S5bxRUkXZy
 vnTA==
X-Gm-Message-State: APjAAAWcCRr/OZUEN75lR9i+vaO9wKMJv0KE9flD5AcqN6TvNDngqGCP
 nVNPDpkR4o76Cab8Xu3GUGW+HqFabaoIpiqpQCP+yYID8htIyoiZM0p1+tmDCHAWyzMncMTqtdS
 I5Yk9yM2cMqiPf/zsns9t2ZGL+09UUhvo
X-Received: by 2002:ae9:e207:: with SMTP id c7mr41501806qkc.128.1582445263653; 
 Sun, 23 Feb 2020 00:07:43 -0800 (PST)
X-Google-Smtp-Source: APXvYqxUbNtLeeLWsKBubaqRUN1o+nqZ96PrUxD1hYlN1VBbq91UR6oUeFaiEmFjwwDt0lm9qBstgg==
X-Received: by 2002:ae9:e207:: with SMTP id c7mr41501787qkc.128.1582445263393; 
 Sun, 23 Feb 2020 00:07:43 -0800 (PST)
Received: from turing-police ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id o7sm4256962qkd.119.2020.02.23.00.07.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 Feb 2020 00:07:42 -0800 (PST)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: Re: [PATCH] staging: exfat: remove exfat_fat_sync()
In-Reply-To: <20200219161738.GA22282@kaaira-HP-Pavilion-Notebook>
References: <20200219161738.GA22282@kaaira-HP-Pavilion-Notebook>
Mime-Version: 1.0
Date: Sun, 23 Feb 2020 03:07:41 -0500
Message-ID: <225301.1582445261@turing-police>
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
Cc: linux-fsdevel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4952655003727832504=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============4952655003727832504==
Content-Type: multipart/signed; boundary="==_Exmh_1582445261_2081P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1582445261_2081P
Content-Type: text/plain; charset=us-ascii

On Wed, 19 Feb 2020 21:47:38 +0530, you said:
> exfat_fat_sync() is not called anywhere, hence remove it from
> exfat_cache.c and exfat.h

Yes, it's a leftover from the fat/vfat support that got taken out.

Acked-by: Valdis Kletnieks <valdis.kletnieks@vt.edu>

--==_Exmh_1582445261_2081P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXlIyzAdmEQWDXROgAQKS3xAAvMVO5+PRiwz05fvVZ6rxxmqLw7nTxig6
PLLEw4hV86kyStXxxsUTkeT68F/nIT/FgqBc7eB8gSXLB7te/w/4VeZAmfM7j979
jJq2MZkNyrsONGnZwu6y+0MU9HXZw5ITanxlG+zVK3Y7YFKvK022W0jaBQLKx4pG
aUGdnHwKRkzdOHs4eSEI/VuEb4FadQ4GMCbdXvm0C1D5ifN9mcfqMGOCmAu8VmOv
/IB1dqKcKuPcQ2HBU+jvra74ovNAsXbtQ5f+fpJOov/cUYgv7CdvrIzSm6f/z9N9
faXxQ4DuO2c+muF1U7V7fMSwuhXxxPBEOQw/Ek3cnRVyW0T4O7IodPMfLsifqX9Z
1FWYcRCzu4tx6VsVqijuJX6BUYmVZu1UDevbZxcvEil5SGG2EYCn9F77aLVrtyVc
QgfdjdMNdrdAJg2GWTn2BDuqaz9G2UgRJRMz+/JjKaB23HohzJuOc5pxJH4LAsb7
45z9ayLUBRBRV2w5MUODKQLdeZiNvZLLalOlyiS7+sTo6N4ivX0DqHjoTGnaYA6i
UDq2Wv9pnIN4QRp+yCunl30YgqXLyY+deCL7hL02ofwYKKwVRgAnfRBMajKINtuq
FCMAcGX1hhZYvfSeRCkoBAiNNoQley8RGlguJWwVdAdfu5Yy4zyOtVePMAggyjLv
BMcwJcDQPuI=
=xN/F
-----END PGP SIGNATURE-----

--==_Exmh_1582445261_2081P--

--===============4952655003727832504==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============4952655003727832504==--
