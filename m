Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4212AF5A6D
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Nov 2019 22:54:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3B5A2240DF;
	Fri,  8 Nov 2019 21:54:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x1OK3eE8rr8D; Fri,  8 Nov 2019 21:54:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 604EB23B81;
	Fri,  8 Nov 2019 21:54:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B8EA21BF990
 for <devel@linuxdriverproject.org>; Fri,  8 Nov 2019 21:53:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B59C987F1F
 for <devel@linuxdriverproject.org>; Fri,  8 Nov 2019 21:53:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X4cgMc8-cEcH for <devel@linuxdriverproject.org>;
 Fri,  8 Nov 2019 21:53:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DF8DE87F12
 for <devel@driverdev.osuosl.org>; Fri,  8 Nov 2019 21:53:58 +0000 (UTC)
Received: from mr4.cc.vt.edu (mr4.cc.ipv6.vt.edu
 [IPv6:2607:b400:92:8300:0:7b:e2b1:6a29])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id xA8Lrvi8020424
 for <devel@driverdev.osuosl.org>; Fri, 8 Nov 2019 16:53:57 -0500
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197])
 by mr4.cc.vt.edu (8.14.7/8.14.7) with ESMTP id xA8LrqAK030321
 for <devel@driverdev.osuosl.org>; Fri, 8 Nov 2019 16:53:57 -0500
Received: by mail-qk1-f197.google.com with SMTP id z64so8381616qkc.15
 for <devel@driverdev.osuosl.org>; Fri, 08 Nov 2019 13:53:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=6u/kteb+1VP+Ls8+c1O+w3Tz6wSk5cSCfhQVSFvadys=;
 b=Kz1lh5M5TlPgbYCQSS80ahZKWNfsuR/up49xLsZOhO0GKP+ZopDqXPR+8ccMOc7hBT
 R6EbwrlrZMyHM+xeAMWAsjI7C2OaHIDif4XSepd+TlkIMMe1ngWo7gWBIXSG+MrstQZ+
 J9s+kh5CM8x+r/WM9mhefUhuZVouOiD/QX3CANTl/motY+jxZcpNXsYlx3WveGCEjQqw
 AQ6BHy59jXNN8jMGSvAyXYcr+X6oFz18RUczeGTQgDUv6jpjKQtGqmhS+p+XwqS0Nn2z
 bbjGT7N6omxuX5FIG50nL7k5nHV17khH8xXADR48P5ZfH2bG/a/vR4+8Jyk656Xd/BJr
 Mryw==
X-Gm-Message-State: APjAAAWeDRcFVotbhyQ8S6DQSFvYDWtgTRLgpRcCLera835lvU9Zxgez
 dvFM8h4YU0Ldtx9qMoIvhRzCzlsgDtMgZDhh0IrFl46z2kLxWDaKiFiuVedy3wIviwNmrXoy01o
 M68/oo5QLvZ4dNxe6pl2gNES2A+hTg0+i
X-Received: by 2002:aed:255c:: with SMTP id w28mr13431202qtc.185.1573250032491; 
 Fri, 08 Nov 2019 13:53:52 -0800 (PST)
X-Google-Smtp-Source: APXvYqxrEqcce9cE0K4quRbgg++z7Fi7Lxmqopm81sZn+9yvMdC5nBTIZrteO39T9WWkp7wR4Y06fw==
X-Received: by 2002:aed:255c:: with SMTP id w28mr13431169qtc.185.1573250032181; 
 Fri, 08 Nov 2019 13:53:52 -0800 (PST)
Received: from turing-police ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id e17sm4345469qtk.65.2019.11.08.13.53.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 13:53:50 -0800 (PST)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 01/16] staging: exfat: use prandom_u32() for i_generation
In-Reply-To: <20191108213257.3097633-2-arnd@arndb.de>
References: <20191108213257.3097633-1-arnd@arndb.de>
 <20191108213257.3097633-2-arnd@arndb.de>
Mime-Version: 1.0
Date: Fri, 08 Nov 2019 16:53:49 -0500
Message-ID: <33441.1573250029@turing-police>
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
Cc: y2038@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Valentin Vidic <vvidic@valentin-vidic.from.hr>
Content-Type: multipart/mixed; boundary="===============5448855728507851061=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============5448855728507851061==
Content-Type: multipart/signed; boundary="==_Exmh_1573250029_29941P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1573250029_29941P
Content-Type: text/plain; charset=us-ascii

On Fri, 08 Nov 2019 22:32:39 +0100, Arnd Bergmann said:
> Similar to commit 46c9a946d766 ("shmem: use monotonic time for i_generation")
> we should not use the deprecated get_seconds() interface for i_generation.
>
> prandom_u32() is the replacement used in other file systems.
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

exfat does some weird stuff with i_generation. but (a) it doesn't require
monotonic increasing values and (b) this change is orthogonal to the weirdness
and won't break anything.

For the exfat part:

Acked-by: Valdis Kletnieks <valdis.kletnieks@vt.edu>


--==_Exmh_1573250029_29941P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXcXj7QdmEQWDXROgAQI1OQ//ezStXbB8JG2TWINA68IgPvBsh6EuosfW
k4X4s8YJbQS7QXAZb679Jc0EV1X9yXMdpvKBA9+gEXoimzUYSDinq7D3Nki08Ehc
Ggchu+Ht0EKLsGJh4lS36sKBMhoSb3CMFznGPWavdcS/pXM9NrGc5oF6NJDSftJg
RZzoNK19ZZNU8DTPWy40DTolRNTIqCUc0D5po5czSe8yvPB6bSYfRehKxebS/eRC
okfxJPkJDt2iZ3CcLOlCvPxU+j0qxWvwV7yHf4yAJVW4dstdt5+N6IcYXl2ss7wI
4OHDOfFT7S07zaFb1Okna33PONu/lzpUTBU5AOhxqBqIe5bc2ki7MtBuyGSW/Y1P
lde5zW2i+OMDe/091UGZKgfEZLBhYu+bmsNfx7va1Iqds/x5Pov1E642hQVc4/m9
q5aTBXPQdctAm6noigx8QOoWLMJyFLsVg26+6erYpSf8qA6acX7TuAPu/G3dWq3z
gdOyJPwSvd2XH+BK1DWKyVlMP639V9xrCZs9XgUDt8cQX7CIhNlAMZ20N34fj+ax
6iP1E4t4tZAcFBn5ajtKkS0Uq6XdfcB4e9vvLYK9aNrMk5b7AVhPJWwTncx/tcHv
5cQl1M/h4W7WiXfl8b1ZgdN8Qb3Sl5Qr3pVq0ekrD3HCPHCKiWRVlcwCx2ihwup/
OD7uQb99evo=
=bMTp
-----END PGP SIGNATURE-----

--==_Exmh_1573250029_29941P--

--===============5448855728507851061==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5448855728507851061==--
