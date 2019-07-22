Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D91526F7FE
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 05:35:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 62F60203D6;
	Mon, 22 Jul 2019 03:35:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xpZy8tdzz2Ur; Mon, 22 Jul 2019 03:35:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5400A203C1;
	Mon, 22 Jul 2019 03:35:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9E0021BF957
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 03:35:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9A73D84536
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 03:35:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XlnasSpNeCQb for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 03:35:36 +0000 (UTC)
X-Greylist: delayed 00:09:13 by SQLgrey-1.7.6
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4FB928452F
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 03:35:36 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 45sRpd1Ttlz9s4Y;
 Mon, 22 Jul 2019 13:26:16 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1563765979;
 bh=izlUaNDnsxAjxbvmHOjmdpi6IZgjT2QLOfpi5tmaLcI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=CblAnu5MeM0hBxJbpABZdmp+zXc/2DaMCeUTHwqfUmYt6YMTw71TLvxnvEDfTrIly
 LfiCbZRVtkQVzDM3H2LNS9hkeMpdncFBdtVMxagT1V3yUtERezRQQ8PIqgW3DOVXUC
 znM198nB9t4HRnx/3T5RTRS/MH78L6OafwpHihAhQ83H/SheqBZ+3IKo8ShrAo0gtD
 F4CsE9zghsITOnKclF068MCgBOj9Hd1G5N8W9VEuIFnZOOFvoknIhI7lAiDaOOb2QN
 uLGzV68/XmpR7LRsToWKdH8y2/I2LWIe+FqpIRQJtO8n8cx7v5rLfkdaobVqevRGg4
 ZcD4NyG7f60fA==
Date: Mon, 22 Jul 2019 13:26:16 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Gao Xiang <gaoxiang25@huawei.com>
Subject: Re: [PATCH v3 01/24] erofs: add on-disk layout
Message-ID: <20190722132616.60edd141@canb.auug.org.au>
In-Reply-To: <20190722025043.166344-2-gaoxiang25@huawei.com>
References: <20190722025043.166344-1-gaoxiang25@huawei.com>
 <20190722025043.166344-2-gaoxiang25@huawei.com>
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
Cc: devel@driverdev.osuosl.org, Theodore Ts'o <tytso@mit.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Miao Xie <miaoxie@huawei.com>,
 Chao Yu <yuchao0@huawei.com>, linux-erofs@lists.ozlabs.org,
 LKML <linux-kernel@vger.kernel.org>, Li Guifu <bluce.liguifu@huawei.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Fang Wei <fangwei1@huawei.com>
Content-Type: multipart/mixed; boundary="===============6177856131328618237=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============6177856131328618237==
Content-Type: multipart/signed; boundary="Sig_/WUcwS=0enPg+/u1ca6ebcMn";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/WUcwS=0enPg+/u1ca6ebcMn
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Gao,

On Mon, 22 Jul 2019 10:50:20 +0800 Gao Xiang <gaoxiang25@huawei.com> wrote:
>
> diff --git a/fs/erofs/erofs_fs.h b/fs/erofs/erofs_fs.h
> new file mode 100644
> index 000000000000..e418725abfd6
> --- /dev/null
> +++ b/fs/erofs/erofs_fs.h
> @@ -0,0 +1,316 @@
> +/* SPDX-License-Identifier: GPL-2.0 OR Apache-2.0 */

I think the preferred tag is now GPL-2.0-only (assuming that is what is
intended).

--=20
Cheers,
Stephen Rothwell

--Sig_/WUcwS=0enPg+/u1ca6ebcMn
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl01LNgACgkQAVBC80lX
0Gx7dgf/U1zjLC4FYm3ODLxzwXPJq0Beid0tos0kzSrX0W8mbyk7heedRm4rJLg3
W24je4AYnli8U16tdWs2MFqcJc3Lf3vToB8AlX2x7HNxtA4gqSwZhC5IBszif8yT
CJaKj8CxSrrIgZqrlTDidx6N3ibdv0+dVaZi0MfyrbVsu8siwmH7II0faV9F+OBJ
CT5LN09VVMS4dSYtAwBORXvVlB06AmeV3k7/cw4rGppyLXY9hcyC5doFgWN3VBoC
MSn/YUDz1Sd2UkUx8hZm8jyAOvuCr9x8Hh5Wo3mSL/d3qPmMo2vDLx+etHqhgNGy
W+BwaAZMVfvs6GWfIQdWQiTm4EIU2w==
=KnjG
-----END PGP SIGNATURE-----

--Sig_/WUcwS=0enPg+/u1ca6ebcMn--

--===============6177856131328618237==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============6177856131328618237==--
