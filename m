Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 319ACEF24B
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Nov 2019 01:55:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0F20F8944F;
	Tue,  5 Nov 2019 00:55:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5UDureWgy8o4; Tue,  5 Nov 2019 00:55:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C104F893C1;
	Tue,  5 Nov 2019 00:55:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9E5271BF988
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 00:55:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 995E88AA12
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 00:55:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0X9fVi+j3j5l for <devel@linuxdriverproject.org>;
 Tue,  5 Nov 2019 00:55:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 604FD8AA09
 for <devel@driverdev.osuosl.org>; Tue,  5 Nov 2019 00:55:00 +0000 (UTC)
Received: from mr4.cc.vt.edu (mr4.cc.vt.edu
 [IPv6:2607:b400:92:8300:0:7b:e2b1:6a29])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id xA50swZ0001282
 for <devel@driverdev.osuosl.org>; Mon, 4 Nov 2019 19:54:59 -0500
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198])
 by mr4.cc.vt.edu (8.14.7/8.14.7) with ESMTP id xA50srng031266
 for <devel@driverdev.osuosl.org>; Mon, 4 Nov 2019 19:54:58 -0500
Received: by mail-qk1-f198.google.com with SMTP id g62so19562491qkb.20
 for <devel@driverdev.osuosl.org>; Mon, 04 Nov 2019 16:54:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=f2xKui4jCV1oC4mz8c3C4oOoH3JHAT+nc4LWmlpw1MY=;
 b=m+4WVqOx35N5zQqCCudiSaPwrctgmJKKuweKK08QPUkspqeBuQw1UJuuQ+GGli11/h
 7X2iGm7mCwfSPVixb27Gi4XmvebyX6eE8A3MMBnx0tZchMrAjUNttbqouhmqoUrwc4fj
 fxYzESzIxEg6+fc+M3J2asl8aLKF1Zvf3GWYYGSoPtjMR3xZwFTSQWWQpgoXzm3HcQbW
 O4DssCUTPXMXZ7j0+kH8XWvUyRvqIpr1kaenTrsFXlvLdUUdGsQOlWZ+uaC3pVtsiwAP
 FBb5d8V13PhFeVQ/69+Bi88p/X3EhJAen9u34lZVLgr8SYWv1h34l4bZ8Tk1SeUdp6wS
 aneg==
X-Gm-Message-State: APjAAAUnw+dDAEr1XaaxNnyYoydVkqXGjrKhjK3KhTBVzPlL3eLsm58q
 odcAFf+SmuccjtnuPP0hJuJrH0DEU6oEMBpfAVQsfgBBvs/Cu34KAxqzSer0/kAAVsQ6Z0Bl4HN
 MG5E7b1lSuTuUtZQlDYxE3VoT1zW+U95t
X-Received: by 2002:a37:a7c6:: with SMTP id
 q189mr18281736qke.469.1572915293265; 
 Mon, 04 Nov 2019 16:54:53 -0800 (PST)
X-Google-Smtp-Source: APXvYqyrX9VI+c8WOT6M7oWIp4pyDtJDt5bkVm4lsJ+Pto7z9dB2TfD2fE/LTt42veVX3e6Xy+Pgiw==
X-Received: by 2002:a37:a7c6:: with SMTP id
 q189mr18281700qke.469.1572915292941; 
 Mon, 04 Nov 2019 16:54:52 -0800 (PST)
Received: from turing-police ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id q17sm14389538qtq.58.2019.11.04.16.54.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 16:54:51 -0800 (PST)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH 10/10] errno.h: Provide EFSCORRUPTED for everybody
In-Reply-To: <20191105003306.GA22791@infradead.org>
References: <20191104014510.102356-1-Valdis.Kletnieks@vt.edu>
 <20191104014510.102356-11-Valdis.Kletnieks@vt.edu>
 <20191105003306.GA22791@infradead.org>
Mime-Version: 1.0
Date: Mon, 04 Nov 2019 19:54:50 -0500
Message-ID: <183873.1572915290@turing-police>
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
Cc: devel@driverdev.osuosl.org, linux-arch@vger.kernel.org,
 Theodore Ts'o <tytso@mit.edu>, Arnd Bergmann <arnd@arndb.de>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chao Yu <chao@kernel.org>,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-xfs@vger.kernel.org, Andreas Dilger <adilger.kernel@dilger.ca>,
 Jaegeuk Kim <jaegeuk@kernel.org>, linux-fsdevel@vger.kernel.org,
 Jan Kara <jack@suse.cz>, Gao Xiang <xiang@kernel.org>,
 linux-ext4@vger.kernel.org, linux-erofs@lists.ozlabs.org,
 Jan Kara <jack@suse.com>
Content-Type: multipart/mixed; boundary="===============8448665501129640817=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============8448665501129640817==
Content-Type: multipart/signed; boundary="==_Exmh_1572915290_14215P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1572915290_14215P
Content-Type: text/plain; charset=us-ascii

On Mon, 04 Nov 2019 16:33:06 -0800, Christoph Hellwig said:
> On Sun, Nov 03, 2019 at 08:45:06PM -0500, Valdis Kletnieks wrote:
> > There's currently 6 filesystems that have the same #define. Move it
> > into errno.h so it's defined in just one place.
>
> And 4 out of 6 also define EFSBADCRC, so please lift that as well.

Will do so in a separate patch shortly.


--==_Exmh_1572915290_14215P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXcDIWQdmEQWDXROgAQLCeRAAuaK/m71WLPW3IHgW8r5L9+3+x+9uaM3q
1xF50a4RrgesQOcgCjLxlCHEj7RzckAn1cAh8KCEfckr5crfRHSqOkSop9jE5A4X
BG71oLoyeYpSB1euVq/wxyUk7pk23uB3YfoPY3GD/zNUUxinrXRcc5AIBake1wfX
1tuIjSwBgO6HILMF7PKK+ETFDGBDXKUfzep/1ooWpKYzqbMyLkrd5iYQy5a9Fy3r
wbIOv0vg1dyMa3rcpFO6XKieD3yZkPO42lYIu6Te1wFnykmkCpgkMaOGP9/HWIPP
vkm2vDMS7gbWWYgbs2k0IsKKKTjhO+sapW3QbYNnxYEBgwYaIfaKhJGpqWQ6qoqR
Lr2OQWp/xv+g6bKr23kdXM+Iz8i6m38gl0LPwCa0K5I1WHSbelWoRniJ41jRcVeW
GPr6Hu+CZxD0nYigQV7AXFnlk2E8X525kiTffPz+KtMpUS8VzaSCMkc7GQMMdPbI
bZD328DLengZVicm271CUIiVhHvRD8tzw/6Z3UyM9lxCCjtkpFQI+ERMPATGTT/D
hwZmJzEj5esJYzs+PyEDt/d7pA0kzpW0XObEjX7apDgMWXWk7WmczJPPJENH6lVw
ULNeg4s+MlG6qt3eiC8+DPM6MxQtyen9NaE90UtCHunhRxt6tZSzbGSuHRYVWCdQ
9OgZEz7s3DI=
=W6JA
-----END PGP SIGNATURE-----

--==_Exmh_1572915290_14215P--

--===============8448665501129640817==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============8448665501129640817==--
