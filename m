Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 74817EA979
	for <lists+driverdev-devel@lfdr.de>; Thu, 31 Oct 2019 04:17:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DBC6A85FAA;
	Thu, 31 Oct 2019 03:17:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o7CKlw77LW6S; Thu, 31 Oct 2019 03:17:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4CC2D85F9A;
	Thu, 31 Oct 2019 03:17:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 842FF1BF9CD
 for <devel@linuxdriverproject.org>; Thu, 31 Oct 2019 03:17:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 808E687B8E
 for <devel@linuxdriverproject.org>; Thu, 31 Oct 2019 03:17:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id exawVFyTGEuG for <devel@linuxdriverproject.org>;
 Thu, 31 Oct 2019 03:17:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from omr1.cc.vt.edu (outbound.smtp.vt.edu [198.82.183.121])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BC4D486101
 for <devel@driverdev.osuosl.org>; Thu, 31 Oct 2019 03:17:09 +0000 (UTC)
Received: from mr5.cc.vt.edu (mr5.cc.vt.edu
 [IPv6:2607:b400:92:8400:0:72:232:758b])
 by omr1.cc.vt.edu (8.14.4/8.14.4) with ESMTP id x9V3H7RP010076
 for <devel@driverdev.osuosl.org>; Wed, 30 Oct 2019 23:17:08 -0400
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197])
 by mr5.cc.vt.edu (8.14.7/8.14.7) with ESMTP id x9V3H2Oo009642
 for <devel@driverdev.osuosl.org>; Wed, 30 Oct 2019 23:17:07 -0400
Received: by mail-qt1-f197.google.com with SMTP id c19so4798277qtp.3
 for <devel@driverdev.osuosl.org>; Wed, 30 Oct 2019 20:17:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :mime-version:content-transfer-encoding:date:message-id;
 bh=UjwFl/5kyrrhReHkQKPm1SCGM6jwLyZlLmQqSsl7mww=;
 b=jjS7WMapfV9qaihqLiYu9H52q027/GMuFcJQzzIVW9c0HZBt7YJBSbI5NRveDwKnd9
 CQohsVTFiU/hRpAMKv8b2q1B9/2mtIgaVcxvqkMF3N8qa6q1x3gDbCl3TSYmL7udPLS3
 ilquhZxWrxcsvJAAlvoZo413N2xGAgR8Z890JVNP7p7tI7CQM9fTXpDc7wNOBqe8tetO
 XelWCtvWGGUuLlLrlPNaIEC/gc0klLACcOODN4t2YMaMHRFaQpyQEpLgV8CLx3PoG2ou
 mJq0hdiQQwSuv3mEMVigYfn1KDr6RRlae93QZT7+KsWEl3F8IFy0AR9ELxJiydAN0aUX
 bKUQ==
X-Gm-Message-State: APjAAAWQqLEtlHWTQ9JlhGQmscMTcDFZvwh3iZHmzg/B2D8XXQczzxQ8
 SFl0enL42WTHaK9F1c5MtaRyR3qA7g+s8fZxqzdALBQGIJIIzV7uu0QRsRMl12dOxiMa0mUb2gb
 5jwklMTV159cskkfU8myXlx6VXo/P/mmw
X-Received: by 2002:a37:bf02:: with SMTP id p2mr3402572qkf.42.1572491822468;
 Wed, 30 Oct 2019 20:17:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyBRYNvJgULHc6/HirPX/JJlwuT5MkpOcps7z7Wgn9SXa/v+KbkipNm/PXten1R1WQp8wUltQ==
X-Received: by 2002:a37:bf02:: with SMTP id p2mr3402548qkf.42.1572491822161;
 Wed, 30 Oct 2019 20:17:02 -0700 (PDT)
Received: from turing-police ([2601:5c0:c001:c9e1::359])
 by smtp.gmail.com with ESMTPSA id t132sm1220848qke.51.2019.10.30.20.16.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 20:17:00 -0700 (PDT)
From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks" <valdis.kletnieks@vt.edu>
X-Google-Original-From: "Valdis Kl=?utf-8?Q?=c4=93?=tnieks"
 <Valdis.Kletnieks@vt.edu>
X-Mailer: exmh version 2.9.0 11/07/2018 with nmh-1.7+dev
To: "Darrick J. Wong" <darrick.wong@oracle.com>
Subject: Re: [RFC] errno.h: Provide EFSCORRUPTED for everybody
In-Reply-To: <20191031030449.GV15222@magnolia>
References: <20191031010736.113783-1-Valdis.Kletnieks@vt.edu>
 <20191031030449.GV15222@magnolia>
Mime-Version: 1.0
Date: Wed, 30 Oct 2019 23:16:59 -0400
Message-ID: <120748.1572491819@turing-police>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chao Yu <chao@kernel.org>,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-xfs@vger.kernel.org, Andreas Dilger <adilger.kernel@dilger.ca>,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 Jaegeuk Kim <jaegeuk@kernel.org>, Gao Xiang <xiang@kernel.org>,
 linux-ext4@vger.kernel.org, linux-erofs@lists.ozlabs.org
Content-Type: multipart/mixed; boundary="===============3812605306633738135=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============3812605306633738135==
Content-Type: multipart/signed; boundary="==_Exmh_1572491818_4623P";
	 micalg=pgp-sha1; protocol="application/pgp-signature"
Content-Transfer-Encoding: 7bit

--==_Exmh_1572491818_4623P
Content-Type: text/plain; charset=us-ascii

On Wed, 30 Oct 2019 20:04:49 -0700, "Darrick J. Wong" said:

> I would add (d) can we do the same to EFSBADCRC, seeing as f2fs,
> ext4, xfs, and jbd2 all define it the same way?

If this one flies, that's a good candidate for a second patch....

--==_Exmh_1572491818_4623P
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Comment: Exmh version 2.9.0 11/07/2018

iQIVAwUBXbpSKgdmEQWDXROgAQJYmA/+PTG0+FXdOKpnGaoDDFNKM1tIitWpnoi9
02VrxRtAXg+D3lFix+ADGPwdAI9qKi2oMzxnOdTY81JCchjmp2rN4y1iABx5+Vy1
8eS3gGF2xihheSUp/wLsq4tQx7mY4DkcWIRsuRSmj3PPEZotxvNMkLFox/+xHCSk
RXdXLU/kO9LZjdFdlxQ26/X9pwhTn6USWRD73f5lVzQ49IChhB+Ww3UJj2RUm4vK
hkzocyTyA+tGSKEqh3b508buuxiUjWjYFFr8KWUzkd5Of/zgoddbTGXG117ILwDO
V+kQgt2ZAIESvyDXpBDnkPDclJPgv9aQgkAKdSb94BoMqiry75amO2JuxCNaZcnr
usLK+H7vWv++FXsA7BPhPAM0xuQRBbWA0sByEcKuHZEP5Z3LKjzIG8UqcbzJsRh4
ZbmqnW34sqYegs16RUj6Uv3CpRQmNwgit0m4lovTVfHTv+5ZK65e2O615RJajHpE
KKmSLCZCbLPN9TSAGm+p3m0aIoDH4+b5rp6KQDjfXJR3I8o0um8cLA6ejWmzhdVc
NMJSDVYw/px/5FU35XocFQERd9DCHYmTtNg2PhPffAKY2Og0YTzyxqxu2aT1ao5S
xLKZ1MHhLpDGdYhkJDvDHZPypg5kjtJN47yNF7naKgY7Xnt9i4s++1xoSSUVsj1a
8rFfLA7uEbY=
=RvfI
-----END PGP SIGNATURE-----

--==_Exmh_1572491818_4623P--

--===============3812605306633738135==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3812605306633738135==--
