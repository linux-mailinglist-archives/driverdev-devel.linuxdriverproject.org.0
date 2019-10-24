Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1C2E37D9
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 18:28:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7125B88347;
	Thu, 24 Oct 2019 16:28:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HO4ySgjcBqD8; Thu, 24 Oct 2019 16:28:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 68CFB8834D;
	Thu, 24 Oct 2019 16:28:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E34301BF860
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 16:27:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D28CA22E96
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 16:27:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g+Vy7dQdOl2Z for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 16:27:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by silver.osuosl.org (Postfix) with ESMTPS id C249122E3F
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 16:27:56 +0000 (UTC)
Received: from mr4.cc.vt.edu (mr4.cc.vt.edu
 [IPv6:2607:b400:92:8300:0:7b:e2b1:6a29])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x9OGRtAj013484
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 12:27:55 -0400
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200])
 by mr4.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x9OGRoPc014499
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 12:27:55 -0400
Received: by mail-qk1-f200.google.com with SMTP id x77so23904234qka.11
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 09:27:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=bsN59ZY0yNzgZCIBp0VQtgU1UUq95H4MJw3f/UhzjmQ=;
 b=nodepHXI8tNp3WsPa3fqilr94pibAbDSh0nITgxZenMHBGz2394pFYu7S+buDjkEE3
 tjIs8ewncOtc6J6x2PVXz5TSxCaDFyGNR1Qcl4ZojtLQP/Cpc8CB0F828DDS8Oj6cfRF
 Uf1qULKjxgmYggqP3vdfFnAPijbUjpq+tQ0SJWUCIe3e48EUAK7BQvl/9e8AeOZ8tHpQ
 78/MJ8Xbu1C/Au3C7ijbq78g5TkxZPBTKR9XdYWsELm/BH3wndXxDlITOV4U5bJvgp3A
 PWv1522yS0CUdAngrdtXeuBmcTBsHwZF1V1qG9L7UXAJBqjnXmqZ6PsyspqSdoau1MLl
 kh/g==
X-Gm-Message-State: APjAAAX0kpNI5LWhHeLChhm4/vKyck5LClC6VqW03eO7f18rzNmhAm1M
 93v+T12rmQ8VQRzdn8HMbTGGQqH3RF8zQgDsGwDwKyB6kE1tPaRSBBqr7wGB3hheP0BAsUUYLC4
 //q5A5iGVxkox7KCAdiUEOq4FvrRLn6Vh
X-Received: by 2002:a0c:92dc:: with SMTP id c28mr15714521qvc.26.1571934470599; 
 Thu, 24 Oct 2019 09:27:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzkQAmcVf+6706DClmV4SjT0O16B06ZuqsaMrMGTqHXVbTS3u02dKBqi7McVkGiv/fbSgjmkQ==
X-Received: by 2002:a0c:92dc:: with SMTP id c28mr15714469qvc.26.1571934470085; 
 Thu, 24 Oct 2019 09:27:50 -0700 (PDT)
Received: from turing-police ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id d126sm10733461qkc.93.2019.10.24.09.27.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 09:27:48 -0700 (PDT)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH 04/15] staging: exfat: Clean up return codes -
 FFS_PERMISSIONERR
In-Reply-To: <915cd2a3ee58222b63c14f9f1819a0aa0b379a4f.camel@perches.com>
References: <20191024155327.1095907-1-Valdis.Kletnieks@vt.edu>
 <20191024155327.1095907-5-Valdis.Kletnieks@vt.edu>
 <915cd2a3ee58222b63c14f9f1819a0aa0b379a4f.camel@perches.com>
Mime-Version: 1.0
Date: Thu, 24 Oct 2019 12:27:47 -0400
Message-ID: <1107916.1571934467@turing-police>
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
Content-Type: multipart/mixed; boundary="===============5683709395648244117=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============5683709395648244117==
Content-Type: multipart/signed; boundary="==_Exmh_1571934467_59326P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1571934467_59326P
Content-Type: text/plain; charset=us-ascii

On Thu, 24 Oct 2019 09:23:33 -0700, Joe Perches said:
> On Thu, 2019-10-24 at 11:53 -0400, Valdis Kletnieks wrote:

> >  	if (err) {
> > -		if (err == FFS_PERMISSIONERR)
> > +		if (err == -EPERM)
> >  			err = -EPERM;
> >  		else if (err == FFS_INVALIDPATH)
> >  			err = -EINVAL;
>
> These test and assign to same value blocks look kinda silly.

One patch, one thing.  Those are getting cleaned up in a subsequent patch.:)

--==_Exmh_1571934467_59326P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXbHRAgdmEQWDXROgAQLonRAAgmgi1IyWgKM8Z+fUANqetKRbDPtKzie3
y57H8MYZukD2LXLVrzSbZAZxEZzOr5/UXll3daYEWN6FH2nmXBpmMZO9La7jFEll
m7wEEG0ET6g03Kke3ZYyEFntLjnFEhmYxk2lWy03zFpJQ292BU+TmH0AFob8S5Xg
M665oOaEB6Biv+4jJ5+cgBGDyiDgxED6G6qLStbLC2lbERJ3jfoDuR2WegOA6zu5
ZTGY2/fWCJ/ejYfVF5rM7mTlg0FQD+9xYHgNRZdRg2YsNDhk5Osnisols8OVk3im
H0Y5xsBgzhtZljIlwk1PI/IlWIGn/f3dgNH9LTdsXxm4aKE76VUFnZAk1/y2wMRP
ZXieXPr8D9VvSLD5YpINE1hkBRNb/fVbm0zpiSnWN/U4jNtvAYAeFrEfhOiDc+Dn
VCKBiOmUrrb0AkaZJt5D6+BgEZFnYaO1hHUqkL83R8QAK6d+azSTgVVvHDNc4Fif
iTt/pKW7kN6YP+M6pi07uZI7uEzGsGwSrigiJXE+nOv0xe/BbeDGSDMO4Env3Wym
laF62431/LAMsQxv7SJ1+i64AI1vLcOIw11avtsgIGnbNyAF0INfQs+GPTlGOQvA
j3cNLGrfw6bDIKloyLfUA7+P8iCTBaTX2tpO+FyX2Sg9N0nfPFH6yqPLvqhznwPi
Dt+U26hCtuM=
=Ofym
-----END PGP SIGNATURE-----

--==_Exmh_1571934467_59326P--

--===============5683709395648244117==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============5683709395648244117==--
