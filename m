Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CEB6E3B20
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 20:39:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 514DD88396;
	Thu, 24 Oct 2019 18:39:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5OzjjEZZ5Spm; Thu, 24 Oct 2019 18:39:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8C6D888368;
	Thu, 24 Oct 2019 18:39:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8B29E1BF3D4
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 18:39:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 87CF481028
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 18:39:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hFCBpIHik9HP for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 18:39:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr2.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9897C806FC
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 18:39:23 +0000 (UTC)
Received: from mr4.cc.vt.edu (mr4.cc.vt.edu
 [IPv6:2607:b400:92:8300:0:7b:e2b1:6a29])
 by omr2.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x9OIdMfi006204
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 14:39:22 -0400
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197])
 by mr4.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x9OIdH1A016967
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 14:39:22 -0400
Received: by mail-qt1-f197.google.com with SMTP id m19so26028846qtm.13
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 11:39:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=FwSLNB4gLqTCUzGzpu5ntWSTbDDl547fVQ4GSLs4ks8=;
 b=f1R057e0ZY76HyA4o6QD2PWNoTpAwJOCXa6B1p5IPsI2YbhsX+fSh4iwPvCy/Oc0qF
 V9IELAIdbHM3BQBNBHPKf0P9DlSYZa4YQcSWPTeYOMGe3N5XZ+4tnz7wSImUMfE3vxw0
 eIyD8j1E2iEVTCAyoCCZLJcTIRV1eY7QUA0NAcMOmsKrR0ItpBj+S8deAklrKEwD7S6B
 dUsp1L+nbVwOwK655LN4UdJOVc0lOq3wp8Bm4P/4c3/QUwoWVu3j1M4gwVXJ7n3T0Tiv
 USracTeN6Lhp88k8py2LqiytieRm16urgv6Vn2tx3xE3sg0vl6z5OtzvNBG5MyQCqpQR
 o5xg==
X-Gm-Message-State: APjAAAVRrLS4txNU+jDN1u4gh6Pr/JHcBgO4m8/5hKA3LK1qqlheHOpx
 7U7pT2ABnwsNzrWqlHpppfrDgb/TFbCNwbarA+w5zxFgLUYwc4DWjihLdHahX/uWcgTYZxoTs9H
 W6RcXp7OI2xow6MstayEFTLm2Se3yetRp
X-Received: by 2002:a0c:d4ba:: with SMTP id u55mr16209190qvh.40.1571942356783; 
 Thu, 24 Oct 2019 11:39:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyXDYkTW4zAzjxM5nh076WARz6SYTqVuTNsGoolXc3NM51DWiHwaLHa8oSr9nSyJwxvndpB2g==
X-Received: by 2002:a0c:d4ba:: with SMTP id u55mr16209157qvh.40.1571942356375; 
 Thu, 24 Oct 2019 11:39:16 -0700 (PDT)
Received: from turing-police ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id x26sm13565645qto.21.2019.10.24.11.39.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 11:39:14 -0700 (PDT)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH 01/15] staging: exfat: Clean up return codes - FFS_FULL
In-Reply-To: <20191024175904.GJ2963@bombadil.infradead.org>
References: <20191024155327.1095907-1-Valdis.Kletnieks@vt.edu>
 <20191024155327.1095907-2-Valdis.Kletnieks@vt.edu>
 <20191024175904.GJ2963@bombadil.infradead.org>
Mime-Version: 1.0
Date: Thu, 24 Oct 2019 14:39:13 -0400
Message-ID: <1151252.1571942353@turing-police>
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
Content-Type: multipart/mixed; boundary="===============1337151548270769281=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============1337151548270769281==
Content-Type: multipart/signed; boundary="==_Exmh_1571942353_59326P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1571942353_59326P
Content-Type: text/plain; charset=us-ascii

On Thu, 24 Oct 2019 10:59:04 -0700, Matthew Wilcox said:
> Wouldn't it be better to do this as:

> Patch 1: Change all these defines to -Exxx and remove the stupid errno-changing
> blocks like this:

Well, except for the fact that the one for FFS_MEDIAERR required splitting the
uses into -ENODEV, -EIO, and -ENOENT.

Also, "and remover the stupid blocks" would be a second change, and I *thought*
the rule was "one thing, one patch".

> That way nobody actually needs to review patches 2-n; all of the changes
> are done in patch 1.

Reviewing a patch where you know that exactly one thing is supposed to happen
means scrolling through 14 occurrences of the pattern

 	if (num_alloced == 0)
-		ret = FFS_FULL;
+		ret = -ENOSPC;

goes *really* fast, and those comprise most of the bulk of the patchset.

And as I already mentioned, the "stupid looking blocks" will be removed in
a future patch.

--==_Exmh_1571942353_59326P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXbHv0AdmEQWDXROgAQJ3yhAAtPnqjyl/CmQXoECKh6OtFS+Frw5/Z/Ot
/uz5YmEsw+WOOflm68fgDRmCOb1YPExXZs9nf5vTrG5EhykkSnI0pewk+6ab5luY
Icrn0rhpdka013hfEGlzAyrYv2xorZbhX8u5pvtaFlTC+WJg6du8hiCdzts7RwFJ
jZ5q/pZmjEXlfXK49VAzIgXNeIc7JpFPiWT3gE6HnUqkDK/x/0qIeI+SnJ2cqOql
t1ASkFLjad5yvbmThpQFilhOKuRtS7TL+uIL7xhNsaqh8v5gMvrxSU27CfDj1HPG
cPbgpPgfzp6cGUSMIXFa7OkDAY+vf+1LCV1ohjJhzRoPpM8s1gyj2pJz3NF84MYp
pLc5+IZrYlCddeDnLknFyhtx4NRa+tmMrrjYae7b46al4tApHN/BOkawrsGAFSgw
nsL2g3KbYhdej467kznJcdXB0iU4tQDzc8+q3Hnl9l1DnwTosnxkDJknRZIcHApd
0+LOvvI8fMZYAKMNSUcFOo/rLgyixvtTf5CxUxHWpEIlDGT3WHQoCdFnS5yfBwaO
iYlTysIci+Axye2QsthLuy6LunI6tASyjYGsq3TXnJrDM2c/f59gSWXx7AQtera9
4XpiLeADB66KeiR87teZWBWDh+8j8i0Lq6oSJykj2GAWhk/j23V7gGYDrZfOKgUf
UrkbxjOmVUo=
=1sgu
-----END PGP SIGNATURE-----

--==_Exmh_1571942353_59326P--

--===============1337151548270769281==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============1337151548270769281==--
