Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A387BAD160
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Sep 2019 02:19:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 94A33204FA;
	Mon,  9 Sep 2019 00:19:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bYhBr1dEcdVX; Mon,  9 Sep 2019 00:19:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 35AF0204D1;
	Mon,  9 Sep 2019 00:19:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 451911BF3CB
 for <devel@linuxdriverproject.org>; Mon,  9 Sep 2019 00:19:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 41ED5204A3
 for <devel@linuxdriverproject.org>; Mon,  9 Sep 2019 00:19:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wSdksxa5HGGy for <devel@linuxdriverproject.org>;
 Mon,  9 Sep 2019 00:19:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by silver.osuosl.org (Postfix) with ESMTPS id 763BF20478
 for <devel@driverdev.osuosl.org>; Mon,  9 Sep 2019 00:19:30 +0000 (UTC)
Received: from mr6.cc.vt.edu (mr6.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8500:0:af:2d00:4488])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x890JTIJ026924
 for <devel@driverdev.osuosl.org>; Sun, 8 Sep 2019 20:19:29 -0400
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197])
 by mr6.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x890JOTm026373
 for <devel@driverdev.osuosl.org>; Sun, 8 Sep 2019 20:19:29 -0400
Received: by mail-qt1-f197.google.com with SMTP id v16so13837817qtp.14
 for <devel@driverdev.osuosl.org>; Sun, 08 Sep 2019 17:19:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=XURxT6fvT6QjdpaE2ZV90LKqGI9hHt918jy1XDFcpmk=;
 b=OM2G+A0aq6XOFOwJhdVZHNbVFBPlKS1Uj2qyg7YUn12XErm5qLPQcs8pcRLED48UNM
 3sFZU9rLZYozptOeVS50ay+aIi5ggTQc6/6crlkLaPRYggI/6987W5XCaL8gfl+h1ro0
 t+rXX8ZlKTCTSJ+UPqDPvM0ptu5dEnGFMVBwLTsejJunElQX4He29OING04Zt6dj4H/H
 LHp3Ee7Uw5ZPhJocNTW8j+BRXQ4uc0FszvPJSymESuciLMiQcCRhJQHTlNfs+eoJa1aK
 aezxzNKrKTrlKyHyej7Egm6QHIhNPRqwepeWTJtpPnyDXoc7XHZS4I7eDZVh8zTvdCtn
 9Chg==
X-Gm-Message-State: APjAAAVdZj9y8DzHv8YuRMAFJy9yGW5SIV6lJYnpLiSa6IlLuE5tSHe7
 UAQe6b2sqVhC0Rlw11ip5yGpChdoQrqYYwromaUx0FX49bzvDUcsNpraWH8/HiHYpz2FJO6C1pJ
 026R0RdNIUiDmbsZMDIMGVWFeAQIVhazW
X-Received: by 2002:a0c:f98b:: with SMTP id t11mr12572428qvn.31.1567988364048; 
 Sun, 08 Sep 2019 17:19:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwaGBbeJbYRPCwlef2f7pIb586nP6RILE2CiiNEXS2BHBzkyQ8Uf6j3CqKu3ReBIs3SgmZ6hQ==
X-Received: by 2002:a0c:f98b:: with SMTP id t11mr12572417qvn.31.1567988363743; 
 Sun, 08 Sep 2019 17:19:23 -0700 (PDT)
Received: from turing-police ([2601:5c0:c001:4341::359])
 by smtp.gmail.com with ESMTPSA id d25sm5281456qtn.51.2019.09.08.17.19.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Sep 2019 17:19:22 -0700 (PDT)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Valentin Vidic <vvidic@valentin-vidic.from.hr>
Subject: Re: [PATCH v2 2/3] staging: exfat: drop unused field access_time_ms
In-Reply-To: <20190908161015.26000-2-vvidic@valentin-vidic.from.hr>
References: <20190908161015.26000-1-vvidic@valentin-vidic.from.hr>
 <20190908161015.26000-2-vvidic@valentin-vidic.from.hr>
Mime-Version: 1.0
Date: Sun, 08 Sep 2019 20:19:21 -0400
Message-ID: <1049678.1567988361@turing-police>
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
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0077138188914438653=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============0077138188914438653==
Content-Type: multipart/signed; boundary="==_Exmh_1567988360_4251P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1567988360_4251P
Content-Type: text/plain; charset=us-ascii

On Sun, 08 Sep 2019 16:10:14 -0000, Valentin Vidic said:
> Not used in the exfat-fuse implementation and spec defines
> this position should hold the value for CreateUtcOffset.

In that case, rather than removing it, shouldn't we be *adding*
code to properly set it instead?

--==_Exmh_1567988360_4251P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXXWaiAdmEQWDXROgAQJaiA//XmY9hFhK+ms7UdhqDGjmxCcRVXkvAKjv
i9Vfg6FtiyXGUBpJfkNSx2ZKbccm9BxPXOnvHpGaVVWY0VlyJn2/s/MXIThsrFpC
r+tEdWfbU2ak6emc3h7WvuSpSKnpHnbfVHakRF/oCJxB17c0XzfmtI9MUTciv7DZ
/FgDpxKCgbfsr3BxpXho0p92FdMIDFeeF8cZkPz760dA5Kl5XwwdnxrsNh2z9cyq
2gQFNudxx4ONCzbYsz0WTWlhiP+zMZqIzywaIFb5VElW3zSZfnzUn2cWFbb5bN6T
CWl0NIcEzM6LVWxYNj6klvuXQv8qhBuAEMKpCQ/xxp0zJCOE4C5w9mt+REKX+VLY
HzXmFP+cG5KeX/NiT7W7Ct+tVmpH9RFV31ACqa9oASwd9abCsWo52MJf6QIijEI4
kxTXpeGHTWi19U0j1hl7TjaiWiCrFfrPvM/OthuNHVN03YvPrLXYT3Zl63TQ6EBn
sMPmgibc3jgGFn/OwRgwsGvjJZUh+fMjKr2FAXhR9EE3HsvusgA0UiC79fhwDrdV
7soVdVuGXTi0BcJWhYZaRoGKqwmrrxHp1Ka+wler4i8HVDQZREbuYqsDgFJOVPck
ScgjgJv9VV/H0hdygeDr8Xl2Nz772uyxUqYEx++OkpEKPQlXKRtz3O0Nwp5RcsBN
gg0FHdjqh3s=
=Bf+t
-----END PGP SIGNATURE-----

--==_Exmh_1567988360_4251P--

--===============0077138188914438653==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============0077138188914438653==--
