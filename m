Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 674E98355A
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 17:34:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3B14A84AE2;
	Tue,  6 Aug 2019 15:34:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id znH7T1XU4gtI; Tue,  6 Aug 2019 15:34:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D1D3C84E6B;
	Tue,  6 Aug 2019 15:34:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5A4B31BF5EA
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 15:34:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 54AF287BF5
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 15:34:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id stw5HxF5qn8Y for <devel@linuxdriverproject.org>;
 Tue,  6 Aug 2019 15:34:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4100A87BD4
 for <devel@driverdev.osuosl.org>; Tue,  6 Aug 2019 15:34:38 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 462zFv3F9sz9sMr;
 Wed,  7 Aug 2019 01:34:27 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1565105672;
 bh=5FHAJ2a0H+dgGw8qV5krRpvfMTW4QMVUNBiIFTz7ukc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=dcShrCbsau/hwzLIEVX+xCQkjw8ytUmuBphP7Wzk0Os+PeYJL4E9AZojKIxsW/XCC
 xTyuNmwgEnwSEW6/Kz8amhaNxd/QkXfyj6TN7B3JHn6lyvGiqz9io4rs24B6/81qqU
 aHhTQCVVCoPKVEFdalsWvjQTI3tUyZFaUFc133mkcqknYyDVNSEChFStksBky28u+/
 GQO177sJv9EuIy1iyMEkE5ZTlNxx7pwHSxx0QCJI51C+dfkT0hpyUbfm+uzI+0mdxe
 ZEqmwK2hiOD8JXrhyc//NCp7AK7xY6zJ2JDZpiGvVhYTi+uG79dj7xnbSdH/Jt6dGk
 vLa4gCEEgqDLA==
Date: Wed, 7 Aug 2019 01:34:23 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Gao Xiang <gaoxiang25@huawei.com>
Subject: Re: [PATCH RFC] erofs: move erofs out of staging
Message-ID: <20190807013423.02fd6990@canb.auug.org.au>
In-Reply-To: <20190806094925.228906-1-gaoxiang25@huawei.com>
References: <20190806094925.228906-1-gaoxiang25@huawei.com>
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
Cc: devel@driverdev.osuosl.org, linux-erofs@lists.ozlabs.org,
 Chao Yu <yuchao0@huawei.com>, Theodore Ts'o <tytso@mit.edu>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jan Kara <jack@suse.cz>,
 Amir Goldstein <amir73il@gmail.com>, Dave Chinner <david@fromorbit.com>,
 David Sterba <dsterba@suse.cz>, Li Guifu <bluce.liguifu@huawei.com>,
 LKML <linux-kernel@vger.kernel.org>, Christoph Hellwig <hch@infradead.org>,
 Miao Xie <miaoxie@huawei.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Pavel Machek <pavel@denx.de>, linux-fsdevel@vger.kernel.org,
 Jaegeuk Kim <jaegeuk@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Fang Wei <fangwei1@huawei.com>
Content-Type: multipart/mixed; boundary="===============5802151033911499306=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============5802151033911499306==
Content-Type: multipart/signed; boundary="Sig_/3zuq9Mbh_pVR5QZxswgd1wJ";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/3zuq9Mbh_pVR5QZxswgd1wJ
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Gao,

One small suggestion: just remove the file names from the comments at
the top of the files rather than change them to reflect that they have
moved.  We can usually tell the name of a file by its name :-)

--=20
Cheers,
Stephen Rothwell

--Sig_/3zuq9Mbh_pVR5QZxswgd1wJ
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl1Jnf8ACgkQAVBC80lX
0GyktAf/awWVta3LRhqpez+RTEQC6IzKAlgR8ULIAJpHB3OZFNlv6Lxvbg3l/Jdq
XZAoR3RqQTr49hpHePfnENWdxIFa7DUCyOjO5MeWyP7VpVBEk48YSFnBUtPIzh7m
+UdrAt+zOdjzdRd6/v2DGhd8dXLZ+rsupL9XA75ak2iVEGjEnlTorjwKDaYy2VR+
cV0mFcFNBEHs2Ok2wTfYYzUx7id7/tcVfjWuzvyvd1d0Y53FLgWLvIVCsJNM0HmH
LlpVkiVpMFDCC3SMSiffhkOkNigEV1vY3wxlS2qniRz+qXbAMqPv8CRbtdO92bkM
LBThN5N6CBu+SqQgGSvGv08yzx+eqg==
=sZOX
-----END PGP SIGNATURE-----

--Sig_/3zuq9Mbh_pVR5QZxswgd1wJ--

--===============5802151033911499306==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5802151033911499306==--
