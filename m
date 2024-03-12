Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF757879CFA
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Mar 2024 21:35:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0296F414C0;
	Tue, 12 Mar 2024 20:35:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id buQQld6sSeTa; Tue, 12 Mar 2024 20:35:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A675414E9
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2A675414E9;
	Tue, 12 Mar 2024 20:35:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 773061BF239
 for <devel@linuxdriverproject.org>; Tue, 12 Mar 2024 20:35:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 64593608D5
 for <devel@linuxdriverproject.org>; Tue, 12 Mar 2024 20:35:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UMyKO5gZ5cMO for <devel@linuxdriverproject.org>;
 Tue, 12 Mar 2024 20:35:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=46.255.230.98;
 helo=jabberwock.ucw.cz; envelope-from=pavel@ucw.cz; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 586A6606ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 586A6606ED
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 586A6606ED
 for <devel@linuxdriverproject.org>; Tue, 12 Mar 2024 20:35:30 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 86FA21C006B; Tue, 12 Mar 2024 21:35:27 +0100 (CET)
Date: Tue, 12 Mar 2024 21:35:27 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH AUTOSEL 6.1 3/7] x86/hyperv: Use slow_virt_to_phys() in
 page transition hypervisor callback
Message-ID: <ZfC8j2eUP/139bSh@duo.ucw.cz>
References: <20240311183826.328535-1-sashal@kernel.org>
 <20240311183826.328535-3-sashal@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240311183826.328535-3-sashal@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ucw.cz; s=gen1; t=1710275727;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=HNuaGq7efeL3zZ9PVtEBZwNZ/Oitr+2+cYKedn9BI08=;
 b=RGkPoje2O9DvNxoRXqyhz2QrfHvoTo4F2wbq1D0c00Rxfs7+2wzX0NXy5xMAPRQ7q18tIS
 Q8VtuVD4dPyr4NkThpGAgxg3/qK3nR/7+UMW90isqjTK9pVRieuCzTE41zilKwAKFxYJsT
 u0u2J16bXexO2KSbsCkVJ2gnYMVY/Kw=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=ucw.cz
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=ucw.cz header.i=@ucw.cz header.a=rsa-sha256
 header.s=gen1 header.b=RGkPoje2
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
Cc: Wei Liu <wei.liu@kernel.org>, sthemmin@microsoft.com, peterz@infradead.org,
 haiyangz@microsoft.com, x86@kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, dave.hansen@linux.intel.com, mingo@redhat.com,
 bp@alien8.de, luto@kernel.org, devel@linuxdriverproject.org,
 tglx@linutronix.de, Rick Edgecombe <rick.p.edgecombe@intel.com>,
 Michael Kelley <mhklinux@outlook.com>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: multipart/mixed; boundary="===============4081012005829442173=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============4081012005829442173==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="hdxVmSkgdoQeUsAT"
Content-Disposition: inline


--hdxVmSkgdoQeUsAT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> In preparation for temporarily marking pages not present during a
> transition between encrypted and decrypted, use slow_virt_to_phys()
> in the hypervisor callback. As long as the PFN is correct,

This seems to be preparation for something we don't plan to do in
-stable. Please drop.

Best regards,
								Pavel
--=20
People of Russia, stop Putin before his war on Ukraine escalates.

--hdxVmSkgdoQeUsAT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCZfC8jwAKCRAw5/Bqldv6
8koDAJ9q8exh6UyNP6LQHyZQLDOy6tr8IwCfbTuTK6Fh951cIruZfOENraPzaa8=
=Q6XM
-----END PGP SIGNATURE-----

--hdxVmSkgdoQeUsAT--

--===============4081012005829442173==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============4081012005829442173==--
