Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E2416F880
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Feb 2020 08:26:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 31C5621561;
	Wed, 26 Feb 2020 07:26:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4aQCVDPntCGY; Wed, 26 Feb 2020 07:26:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 54F7C214E4;
	Wed, 26 Feb 2020 07:26:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 03A151BF419
 for <devel@linuxdriverproject.org>; Wed, 26 Feb 2020 07:26:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 004538688F
 for <devel@linuxdriverproject.org>; Wed, 26 Feb 2020 07:26:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h25HCXHwofwQ for <devel@linuxdriverproject.org>;
 Wed, 26 Feb 2020 07:26:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4037C8688A
 for <devel@driverdev.osuosl.org>; Wed, 26 Feb 2020 07:26:33 +0000 (UTC)
Received: from mr6.cc.vt.edu (mr6.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8500:0:af:2d00:4488])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id 01Q7QVoN031799
 for <devel@driverdev.osuosl.org>; Wed, 26 Feb 2020 02:26:32 -0500
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199])
 by mr6.cc.vt.edu (8.14.7/8.14.7) with ESMTP id 01Q7QQrq029359
 for <devel@driverdev.osuosl.org>; Wed, 26 Feb 2020 02:26:31 -0500
Received: by mail-qt1-f199.google.com with SMTP id r30so3217890qtb.10
 for <devel@driverdev.osuosl.org>; Tue, 25 Feb 2020 23:26:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=/RrYGkGua2Nxdn/5XcsUsmert5oNHB1woL1bedy/GmI=;
 b=Beq/Qe90mQrZbCcJqwXU8laV7Lhsd87sztQGX2RH+IG56m1+iamILz8wS6vrgVRBrt
 siAWUKlsszv3N3MKb6jJsrChNUpORcjCP2np/HbLsw+1p5rlauUXH70mBkPeHYTrJXar
 OiCcKvZSREFDaS8K07Dh5IaORlxKBnhsFpQLJKCWtG8Zn4PdKUtYdx0DhW3mmCSduyUN
 El/PON8fNHzeqffUCgBGGhWwul1iqxRESbx+bqYbSipPYprxvO4x4TvlYfTMiEoHrGIC
 yYZOkb7OP9dJCKpd+iVb+FuzVonMHhcbl7Y9JrvnOVnvmjBsSDG1rme7cFCyMuawHs+c
 HK3A==
X-Gm-Message-State: APjAAAW+bqZkWPqW8DH/IpDTaBUbZAFUqnewoFl+1dVt2n2+AsUFyKjT
 vxfgl2QajTQdQW9b2XyKRC2RqW3Or/4CQqlWQM84MD34clRlX7cD8MvEsGQH7RdBzvs0elLKL3Y
 8TCwcZfqjne96UZanXaAnf2IX/UVltpvA
X-Received: by 2002:a05:620a:818:: with SMTP id
 s24mr3993096qks.369.1582701986639; 
 Tue, 25 Feb 2020 23:26:26 -0800 (PST)
X-Google-Smtp-Source: APXvYqy9jp1KDxLFeQLv7QeR2TtKnSWWQ2++QWZI9Gbb8l6PC8kX3KCPOu2JNC/AcAu35IfNkSy/tg==
X-Received: by 2002:a05:620a:818:: with SMTP id
 s24mr3993072qks.369.1582701986335; 
 Tue, 25 Feb 2020 23:26:26 -0800 (PST)
Received: from turing-police ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id x131sm689963qka.1.2020.02.25.23.26.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 23:26:24 -0800 (PST)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
Subject: Re: [PATCH] staging: exfat: remove symlink feature : Additional patch
In-Reply-To: <20200226063746.3128-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
References: <20200226063746.3128-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
Mime-Version: 1.0
Date: Wed, 26 Feb 2020 02:26:23 -0500
Message-ID: <503049.1582701983@turing-police>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 motai.hirotaka@aj.mitsubishielectric.co.jp, linux-kernel@vger.kernel.org,
 Mori.Takahiro@ab.MitsubishiElectric.co.jp, linux-fsdevel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============8797644665435315021=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============8797644665435315021==
Content-Type: multipart/signed; boundary="==_Exmh_1582701983_403032P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1582701983_403032P
Content-Type: text/plain; charset=us-ascii

On Wed, 26 Feb 2020 15:37:46 +0900, Tetsuhiro Kohada said:
> Completely remove symlink codes and definitions.

> In the previous patch, it was not completely removed.

Then this should have been [PATCH v2], and the fixed version [PATCH v3]

> Signed-off-by: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp
>
> ---
And right in here there should be something like this:

v3: fixed subject line
v2: previous patch didn't completely remove it

>  drivers/staging/exfat/exfat.h       |  3 ---
>  drivers/staging/exfat/exfat_core.c  |  3 ---
>  drivers/staging/exfat/exfat_super.c | 27 ---------------------------
>  3 files changed, 33 deletions(-)
>
> diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
> index 4a0a481fe010..cd3479fc78ba 100644



--==_Exmh_1582701983_403032P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXlYdnwdmEQWDXROgAQJaqQ/+LFm+5gnoObjHByvFiSe/WLwyDsLR5ck8
NxQVtg5wFV9uNxsVdsTCyiwaPril0sXlQfIvt3+di7OqzwfwSmsmLkDNHnrxPoCi
n874KFMcJ7QpBXNP+FwWKd6tFB6ORf0A4EAQG+oS1afzVvFXKN9Vc+FYiT3GfPlj
KlUgi8WJpQriRYz2HQ6RcYZj7PrrCSr3AOHTzVpvCwJXSKJlKi62LxRw6yIq5rRZ
18Sqe8t6v4eX5CNOPvlZPBLYnbyW9AxUslhF/qWTzRIy7Vd/urwRY68tbKsnvMvT
7dmjmPPOxurq2kirYBGBYdATN6LhIN22OVctFghT10c2ddrwyhnxHtwJbQLGNXcO
QrHzgkFyabWQlVkQOuG25CBE/d0M7+gtPJmIx+zun63GTvd8m53GZoKkGc8dIDqe
pLug/kVCbkxtffVovWXSgriu6KQnGa6jTo95l85trYbXbGW9+DAGdmSR5N6HgLb6
mBi3stwpDgOFq86r+paMyDhZVwfNLh6z0zLf+obEP1W9j3aL8KNx4txUzR7RoKFk
PizGKPz9E2iQWc/VBsnKa65Of1EwylK0hefiYjM+jTt8zFthT8RG1JXX5CxjeVYF
UJUUbH9tF+76AsSx4w06kRaiG1kS6bZ9aFhspyZcXYUTBbb2ua19gPsSdg5JAZ8K
AZraphreKpc=
=69Q7
-----END PGP SIGNATURE-----

--==_Exmh_1582701983_403032P--

--===============8797644665435315021==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============8797644665435315021==--
