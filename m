Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B6EDD62D36
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jul 2019 02:58:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B333F8669A;
	Tue,  9 Jul 2019 00:58:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id si5ph2VyHXvU; Tue,  9 Jul 2019 00:58:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F1D6B865B0;
	Tue,  9 Jul 2019 00:58:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2B5811BF36C
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 00:58:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 259CD847CB
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 00:58:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NfV5mejq+x82 for <devel@linuxdriverproject.org>;
 Tue,  9 Jul 2019 00:58:32 +0000 (UTC)
X-Greylist: delayed 00:20:40 by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 57FA484B6A
 for <devel@driverdev.osuosl.org>; Tue,  9 Jul 2019 00:58:32 +0000 (UTC)
Received: from mr5.cc.vt.edu (smtp.ipv6.vt.edu
 [IPv6:2607:b400:92:9:0:9d:8fcb:4116])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x690wVXE013766
 for <devel@driverdev.osuosl.org>; Mon, 8 Jul 2019 20:58:31 -0400
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198])
 by mr5.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x690wQl4007967
 for <devel@driverdev.osuosl.org>; Mon, 8 Jul 2019 20:58:31 -0400
Received: by mail-qk1-f198.google.com with SMTP id k13so17984474qkj.4
 for <devel@driverdev.osuosl.org>; Mon, 08 Jul 2019 17:58:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=gzjvIBvyoxXf9yZx+IjvTDWM/EMMxHOR9DhJMARvWU4=;
 b=ZpziYYj1s8SWD49jvrTRiklpJcljaV5jy/XbSZGhxY/Wfu3bpHCp/hQG1z3DHJ+Qin
 x7u951gPTHWzb4Np0oNr4axhGI2mYhlIWv84XSeS8Gupxk9/Cp2lUvX9390w4gq+lizQ
 mx7ixGaVjVolTfr557oiH+X/7ppxRCcqr09aAzmzVZHZzuecR46rkUdYkIypwNj8bImI
 Jtj966fu4lf0yFzJgNHLWktt4j7a1eO36AWG5USkejTdi4wgoVyD2jzDj2gJUvX5oeLm
 0XOs7CQpSjD5H6wK1n8IFh52B6p2Ew9T7xKfjAI59KtFqv9Wk2iIExzlNLUA7XuUUR7a
 76lw==
X-Gm-Message-State: APjAAAXUDj6wrFzEbGyO9tTQUK0FhMNS63N6275g4OYHfisiKPSRuDxB
 iQ9kecNEKCCMa+8Dy0dxhywa6L6rPTUu4NhbPVX+WNjN+pW9WKcaDqpGqCSPB9gs7i5rN3q9Uhw
 43tvWN3ipOXFAsmmgiL+LUComso21Tqas
X-Received: by 2002:aed:3e7c:: with SMTP id m57mr16325652qtf.204.1562633906051; 
 Mon, 08 Jul 2019 17:58:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqysL21EgSuDTcXeor1Ws1wtBJMH7dhipNrrhZP3IsCALzATUekN4qK2xdB6CIFg63K4PfkUCw==
X-Received: by 2002:aed:3e7c:: with SMTP id m57mr16325637qtf.204.1562633905878; 
 Mon, 08 Jul 2019 17:58:25 -0700 (PDT)
Received: from turing-police ([2601:5c0:c001:4341::7ca])
 by smtp.gmail.com with ESMTPSA id r40sm7679907qtk.2.2019.07.08.17.58.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 17:58:24 -0700 (PDT)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: Procedure questions - new filesystem driver..
In-Reply-To: <20190709005220.GZ17978@ZenIV.linux.org.uk>
References: <21080.1562632662@turing-police>
 <20190709005220.GZ17978@ZenIV.linux.org.uk>
Mime-Version: 1.0
Date: Mon, 08 Jul 2019 20:58:23 -0400
Message-ID: <3099.1562633903@turing-police>
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
Content-Type: multipart/mixed; boundary="===============8674000248072473609=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============8674000248072473609==
Content-Type: multipart/signed; boundary="==_Exmh_1562633903_2389P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1562633903_2389P
Content-Type: text/plain; charset=us-ascii

On Tue, 09 Jul 2019 01:52:20 +0100, Al Viro said:
> On Mon, Jul 08, 2019 at 08:37:42PM -0400, Valdis Klētnieks wrote:
> > I have an out-of-tree driver for the exfat file system that I beaten into shape
> > for upstreaming. The driver works, and passes sparse and checkpatch (except
> > for a number of line-too-long complaints).
> >
> > Do you want this taken straight to the fs/ tree, or through drivers/staging?
>
> First of all, post it...

OK... Ill post it as if it's going in fs/ and if people disagree, I'll repost it for
drivers/staging (once any other complaints have been corrected)...


--==_Exmh_1562633903_2389P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXSPmrgdmEQWDXROgAQKCHxAAurpyzrYfy7Qc1FjCJnO+WfvaWzgpnXOC
tD2BSYOKhkrsKYl2phZvfPT+O4jbhq3dgSZ0z/ibewHPe4+9ePTaahxGArr0YZ1a
eogU7nGc5RDE/PGQhfR/Aawk853YMxyDCZs5EWSjjR+gYbVCt2LsN6A2DcEMjPPt
Af9/Qa3Jl8fkJIJgEd3Y7ysjmos+9caFDSvGC0n1xG3OgRHvyDkNFR32CbXsQQ/n
gZT/D6HCzYkL8+x1b7jBD4Ow+tMolC00Itw+8Bn9hsvd6fVqWOH/gs2QatyPUzum
2kbQmq6qHUNBr3qiDwwLyegBHvkzlX+pwZN9djGnKz313uxBZTQxJOQHTVjLJ5Ct
AVwzYYGloc3eiGniTTWKLzO/KEe10UapSwhH0kVih1q4NKWHYXAewPMsfQssWPjZ
dhcxSt5pKULnm3TCTM3oqcOuprx3FRzsR4GAKDy92H2tK6oqfuiJL3yLVWiUa6/v
2BV6e6q3jq8CRwNuU1d1Ko6WOBfWFJXUd9ALsmg9JVlFpjmUZdhkD3oWeYOY0pV9
1n5Ceyt3jOrxi58qyX1CQsA0lvYVUPYMmjvCjk68/pQ5TByMs6YF3A1CArihRPuP
/kcD3GFFjx9WC2bmE+yaednjs/SEUBUHBKfGbJ7K3fCaBhJJHOASyuh+aRpn0zTF
6zCXSRzm+bQ=
=6ylh
-----END PGP SIGNATURE-----

--==_Exmh_1562633903_2389P--

--===============8674000248072473609==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============8674000248072473609==--
