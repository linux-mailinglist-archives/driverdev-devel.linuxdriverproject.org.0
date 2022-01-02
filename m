Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 422D8482C22
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Jan 2022 17:45:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4313E402EE;
	Sun,  2 Jan 2022 16:45:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VasfQyut_VZJ; Sun,  2 Jan 2022 16:45:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A8C954028A;
	Sun,  2 Jan 2022 16:45:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0F93F1BF3FC
 for <devel@linuxdriverproject.org>; Sun,  2 Jan 2022 16:45:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 08A3840153
 for <devel@linuxdriverproject.org>; Sun,  2 Jan 2022 16:45:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=npsheriff.net
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xCSTySfkrbrc for <devel@linuxdriverproject.org>;
 Sun,  2 Jan 2022 16:45:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.npsheriff.net (mail.npsheriff.net [104.243.174.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 484EE40144
 for <devel@driverdev.osuosl.org>; Sun,  2 Jan 2022 16:45:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.npsheriff.net (Postfix) with ESMTP id D375D53A2C54;
 Sun,  2 Jan 2022 04:23:39 -0600 (CST)
Received: from mail.npsheriff.net ([127.0.0.1])
 by localhost (mail.npsheriff.net [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id nwfFJYKx4vUA; Sun,  2 Jan 2022 04:23:39 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
 by mail.npsheriff.net (Postfix) with ESMTP id 2269A53A2EF3;
 Sun,  2 Jan 2022 04:23:15 -0600 (CST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.npsheriff.net 2269A53A2EF3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=npsheriff.net;
 s=B3A28A16-C926-11E5-A900-7C9EBCD90555; t=1641118995;
 bh=ZvJQWUas0vmOopGm7LJf4nPo90x9owWZr8N5CCYgtQw=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=fisGndN/XYcP1HM1UArzvSTclPweBD9CYLMUz3qeAewrImuJKCSwLwZK/XYfl45MN
 QlxMMApqY/NrkkvYlH3QfDJ8i7yMs2tUHi4PGWVPwFloX1l/0Y1h4cxc5gd6FcIHGb
 OsJJw5jMsYcVmrqbKHyKFb5bkvwrsKYTrdvYLl/Q=
X-Virus-Scanned: amavisd-new at mail.npsheriff.net
Received: from mail.npsheriff.net ([127.0.0.1])
 by localhost (mail.npsheriff.net [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 5pRuGmePVjIM; Sun,  2 Jan 2022 04:23:14 -0600 (CST)
Received: from DESKTOP-CJHK18M.home (unknown [185.245.84.56])
 by mail.npsheriff.net (Postfix) with ESMTPSA id 7CD4D53A2D71;
 Sun,  2 Jan 2022 04:20:10 -0600 (CST)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Re:
To: Recipients <tstewart@npsheriff.net>
From: "Mackenzie Scott" <tstewart@npsheriff.net>
Date: Sun, 02 Jan 2022 18:26:19 +0800
Message-Id: <20220102102010.7CD4D53A2D71@mail.npsheriff.net>
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
Reply-To: info@extraservice.info
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hei,
                          =

Olen Mackenzie Scott, Amazonin toimitusjohtajan ja perustajan entinen vaimo=
. Lahjoitan 4 miljardia dollaria hyv=E4ntekev=E4isyysj=E4rjest=F6ille, yksi=
tyishenkil=F6ille, korkeakouluille ymp=E4ri maailmaa Scottin s=E4=E4ti=F6st=
=E4 tarjotakseni v=E4lit=F6nt=E4 tukea ihmisille, jotka k=E4rsiv=E4t taloud=
ellisesti COVID-19-pandemiasta ja sinulle. Olen yksi onnekkaista voittajist=
a, minulla on $100,800,000,00 dollarin arvoinen lahjoitus sinulle. Voit ott=
aa minuun yhteytt=E4 saadaksesi lis=E4tietoja, jos olet kiinnostunut.

Terveiset,
Mackenzie Scott.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
