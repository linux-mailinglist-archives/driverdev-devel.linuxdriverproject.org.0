Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A49B482C25
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Jan 2022 17:49:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B976F81419;
	Sun,  2 Jan 2022 16:49:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dRsGacntQzjO; Sun,  2 Jan 2022 16:49:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 308FE813AD;
	Sun,  2 Jan 2022 16:49:25 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F263B1BF3FC
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  2 Jan 2022 16:49:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E782D60AEA
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  2 Jan 2022 16:49:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=npsheriff.net
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oIuxR240_Fyc
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  2 Jan 2022 16:49:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.npsheriff.net (mail.npsheriff.net [104.243.174.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 669DE60803
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  2 Jan 2022 16:49:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.npsheriff.net (Postfix) with ESMTP id 4D21A53A2F54;
 Sun,  2 Jan 2022 04:33:13 -0600 (CST)
Received: from mail.npsheriff.net ([127.0.0.1])
 by localhost (mail.npsheriff.net [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id z9ysmOrEQkAw; Sun,  2 Jan 2022 04:33:13 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
 by mail.npsheriff.net (Postfix) with ESMTP id C85F453A3197;
 Sun,  2 Jan 2022 04:30:03 -0600 (CST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.npsheriff.net C85F453A3197
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=npsheriff.net;
 s=B3A28A16-C926-11E5-A900-7C9EBCD90555; t=1641119405;
 bh=ZvJQWUas0vmOopGm7LJf4nPo90x9owWZr8N5CCYgtQw=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=zipzJmP4EUiaCFAnUm4PL4tzXJs5BN+S+xPx8WTQ3uFR4e48eM/nWOlTZA5l4FVbx
 NIHmyMkolX8lWM3gFo2DaqWaXbKegxt3QUAT6h9E/8HzJ9V0eOwAmJSL1hhZeDEQ2L
 60hsd84Ax5EeUOoKbuGl9IVOEkT8Vmm/YXkU+rQk=
X-Virus-Scanned: amavisd-new at mail.npsheriff.net
Received: from mail.npsheriff.net ([127.0.0.1])
 by localhost (mail.npsheriff.net [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id hcsklQskX_k2; Sun,  2 Jan 2022 04:30:03 -0600 (CST)
Received: from DESKTOP-CJHK18M.home (unknown [185.245.84.56])
 by mail.npsheriff.net (Postfix) with ESMTPSA id D60FD53A2FDB;
 Sun,  2 Jan 2022 04:25:54 -0600 (CST)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Re:
To: Recipients <tstewart@npsheriff.net>
From: "Mackenzie Scott" <tstewart@npsheriff.net>
Date: Sun, 02 Jan 2022 18:32:04 +0800
Message-Id: <20220102102555.D60FD53A2FDB@mail.npsheriff.net>
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
