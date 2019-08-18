Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD07919BF
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Aug 2019 23:35:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 91320873CE;
	Sun, 18 Aug 2019 21:35:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YxiEHlT99N0A; Sun, 18 Aug 2019 21:35:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 591C787263;
	Sun, 18 Aug 2019 21:35:22 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3206E1BF371
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 21:35:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 29E09816D8
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 21:35:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BxTiK3dhpOMy
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 21:35:18 +0000 (UTC)
X-Greylist: delayed 00:05:15 by SQLgrey-1.7.6
Received: from mx.dravite.mittle.top (mx.dravite.mittle.top [167.71.178.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 472DF8472A
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 21:35:18 +0000 (UTC)
Received: from mx.dravite.mittle.top (mx.dravite.mittle.top [127.0.0.1])
 by mx.dravite.mittle.top (Postfix) with ESMTP id 46BVZX5zqSz23dm
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 21:29:56 +0000 (UTC)
Authentication-Results: mx.dravite.mittle.top (amavisd-new);
 dkim=pass (1024-bit key) reason="pass (just generated, assumed good)"
 header.d=dravite.mittle.top
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 dravite.mittle.top; h=content-transfer-encoding:content-type
 :content-type:mime-version:message-id:x-mailer:user-agent
 :reply-to:list-unsubscribe:subject:subject:to:from:from:date
 :date; s=dkim; t=1566163796; x=1568755797; bh=tlP1xyf6KOrU0OR2yL
 ShRH756em5S9TNOmPp5ogcvo8=; b=jMNFa+GIUQrAKM7LQ4PbGAoiXGiV2TC0ZV
 DnKblRfWSzOGyHFK9ZpBt8qfDVt9pefRJsj0ZaIV8N/Q4dQbCY5bJkn0xOb30pc+
 FPVqKfuL25CK530mCQ2zFoHAkDtSXiWuksaqZF35ZozPi2r5MzbAQ254JhlT7dzI
 xbQ/syymI=
X-Virus-Scanned: Debian amavisd-new at mx.dravite.mittle.top
Received: from mx.dravite.mittle.top ([127.0.0.1])
 by mx.dravite.mittle.top (mx.dravite.mittle.top [127.0.0.1]) (amavisd-new,
 port 10024) with ESMTP id pdCkvJTH5Q-0
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 21:29:56 +0000 (UTC)
Received: from [127.0.0.1] (mx.dravite.mittle.top [127.0.0.1])
 by mx.dravite.mittle.top (Postfix) with ESMTP id 46BVMJ65q1z22RR
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 18 Aug 2019 21:20:12 +0000 (UTC)
Date: Sun, 18 Aug 2019 22:20:12 +0100
From: "N1ghTm4r3" <synthiadoolittle@dravite.mittle.top>
To: driverdev-devel@linuxdriverproject.org
Subject: =?UTF-8?Q?What=20the=20=C6=92uck=20are=20you=20doing,
 =20pedophile=20=3F?=
User-Agent: CodeIgniter
X-Sender: synthiadoolittle@dravite.mittle.top
X-Mailer: CodeIgniter
X-Priority: 3 (Normal)
Message-ID: <5d59c10cb100e@dravite.mittle.top>
Mime-Version: 1.0
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
Reply-To: synthiadoolittle@dravite.mittle.top
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

WAKE UP driverdev-devel@linuxdriverproject.org!

Do you really think it was some kind of joke or that you can ignore me?

I can see what you are doing, pedo.

Stop SHOPPING and fucking around, your time is almost over.
Yea, I know what you were doing on Saturday. I am observing you.

Btw. nice car you have got there.. I wonder how it will look with big
'PEDOPHILE' stickers..


Because you think you are smarter and can disregard me, I am posting the 4
videos I recorded with you masturbating to kids right now. I will upload the
videos I acquired along with some of your details to the online forum. I am
sure they will love to see you in action, and you will soon discover what we
do with pedophiles like you.

If you do not fund this bitcoin address with 5.000 USD by next Friday, i
will contact your relatives and everybody on your contact lists and show
them your pedophilia recordings.


The bitcoin price changed since I last contacted you, here are the new
transfer details:

=====================================
Send:

0.49123487 BTC

to this Bitcoin address:

331EBQLNEfePbsBQnSVfv52984987rdtSh

=====================================

There are many places you can buy bitcoin like Bitstamp, Coinbase, Kraken
etc. Register, validate your account, buy 0.49123487 BTC and send to my
address - 331EBQLNEfePbsBQnSVfv52984987rdtSh - copy it and paste.

5.000 USD - 0.49123487 BTC.

If you want to save yourself - better act fast, because right now you are
FUCKED. We will not leave you alone, and there are many people on the groups
that will make your life feel really bad, you fucking pedophile.


N1ghTm4r3

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
