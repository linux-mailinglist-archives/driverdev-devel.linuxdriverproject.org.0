Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC9AE38A4
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 18:46:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DA337878E6;
	Thu, 24 Oct 2019 16:46:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YmPNxwJfsw9G; Thu, 24 Oct 2019 16:46:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B8A81878BC;
	Thu, 24 Oct 2019 16:46:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 22F181BF860
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 16:46:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1F94F869BB
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 16:46:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BUE8M24e6HnF for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 16:46:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8B130869B9
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 16:46:21 +0000 (UTC)
Received: from mr3.cc.vt.edu (mr3.cc.vt.edu
 [IPv6:2607:b400:92:8500:0:7f:b804:6b0a])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x9OGkKEc007030
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 12:46:20 -0400
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198])
 by mr3.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x9OGkFc2032536
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 12:46:20 -0400
Received: by mail-qt1-f198.google.com with SMTP id f2so8688754qtv.21
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 09:46:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=EsIPMrPy/NQRL+kAPu6vRsFGMxp34/kqcwgNBhAoed4=;
 b=IisCk3KD3YIZTRrzNnGr+35CjzvfUN/lqOa0QeMmPJZg9Sxv4ir/33IkvFGgdushKJ
 h079pftUtT/a1VOHbv8g15IfDY1fYEyj4Uz2ejcXxhCR0/MSCKCL5KxTBzOUoRkSmnfy
 W17guDIX64PWPfMjIXr/dcqOFucOdCprvmuNnWGiQg3pE2boGYWl4cBV8M2wsFJe4301
 3w1LKo9h29Xr6U14OS0fhpxmQazM2EcsVlvYUnevTbk9mcSuzuPAjcbIgDmfCR78+hrA
 DS1qlFvBy9SGE3h/0UIDSS3E9izn7EOs2TcE2NNZU1EIQtzpgEj1tWHL2yBCN9DmOktI
 h38w==
X-Gm-Message-State: APjAAAXX0rZEoKNHZNKZFFFXt6d4guEaznJaKt0koy3okhcKjmqnxODe
 TFahZzyTfhPH3j1umicM4oDEUTwpA42vPgLqJ+KIgN3gLC/4JsFOpvXmVU2hq1sjZgNKU1sFpuA
 rC2FUcinbrtw+jOcj6FRxFekT1je+aaAw
X-Received: by 2002:aed:241c:: with SMTP id r28mr2210114qtc.148.1571935575552; 
 Thu, 24 Oct 2019 09:46:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxwOx2g9Rq1d1Pyls0CB0utL2xABAepZupau/TdbqZ6xqsFeKRv/w6rIr8Gn2U/r+gM8+T5hg==
X-Received: by 2002:aed:241c:: with SMTP id r28mr2210083qtc.148.1571935575248; 
 Thu, 24 Oct 2019 09:46:15 -0700 (PDT)
Received: from turing-police ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id c21sm11331089qkg.4.2019.10.24.09.46.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 09:46:13 -0700 (PDT)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH 15/15] staging: exfat: Clean up return codes - FFS_SUCCESS
In-Reply-To: <5c7a7fe972469296d367dba504f0b6c8063a7d55.camel@perches.com>
References: <20191024155327.1095907-1-Valdis.Kletnieks@vt.edu>
 <20191024155327.1095907-16-Valdis.Kletnieks@vt.edu>
 <5c7a7fe972469296d367dba504f0b6c8063a7d55.camel@perches.com>
Mime-Version: 1.0
Date: Thu, 24 Oct 2019 12:46:12 -0400
Message-ID: <1116783.1571935572@turing-police>
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
Content-Type: multipart/mixed; boundary="===============9187542230112877930=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============9187542230112877930==
Content-Type: multipart/signed; boundary="==_Exmh_1571935572_59326P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1571935572_59326P
Content-Type: text/plain; charset=us-ascii

On Thu, 24 Oct 2019 09:29:00 -0700, Joe Perches said:

> > -	if (sector_read(sb, sec, &bp->buf_bh, 1) != FFS_SUCCESS) {
> > +	if (sector_read(sb, sec, &bp->buf_bh, 1) != 0) {
>
> Probably nicer to just drop the != 0

Again, that's on the to-do list.

--==_Exmh_1571935572_59326P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXbHVUgdmEQWDXROgAQLooBAAjVK/FBta4kL6kv8k49RtGTrWLd5FD8zr
OtoLLQLewcYlbmpWjneJPKZpTjg+nsOF0cHELzEXKkIzCmg5YAnlG2w8OOlEW6AO
jTdhUTY9rrFOKuQeZmzalltqYjVHCMOie+oD8xGNXT1bSj5DTKarJfHwFGD3yPss
nJBhADhUm1L/n1aviplbSsm7BFjrFbqWjtMLKW3+qOLeA+OpEQMAf877I+3CYNPS
k7evBj/qN9sVgvPM0w86nff0mo5s+fYNak6V22KrnX39z+7zb+DA5NjR3Bd1u930
gr/ZdVPOuepeoZnNvDIR/bj6NMqsPhkP/YE8QYr1jHAE7ZPc3ADaDVP0mPV6ekIC
DymnE7CGhz0fBAQwaOnEeylkQilfx9XPGYedPPA9/QjbA3R2n3Vgtesa74QP505a
UuEtf0YeQde+46a0t7M1KIix1MGnAMYrB7zlqwyaCMeEQQZ0laHPRUkLQEMxd32T
WT0m0n6/pL6aXAuvPkoAzsQB1bFPsrf/Bz6Gx58ZRlk0303MAD0Lr8oVGpaEV5rT
AMdJ8TM8CdvvkASuC6fzHHpsf68YfXaIq0uvQtu/bvYi7TMtlYuOVowuCYWvZEtf
i01HkSLHyBUbGj+hzgoDjXafMFt9q7nKtrgsYT6tFForrf3FGIKHWVetwGbaKJY0
i0VtHsFXSMA=
=hBtD
-----END PGP SIGNATURE-----

--==_Exmh_1571935572_59326P--

--===============9187542230112877930==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============9187542230112877930==--
