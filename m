Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 32658397161
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Jun 2021 12:25:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0EFA404A3;
	Tue,  1 Jun 2021 10:25:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oy1tDeb7rrOA; Tue,  1 Jun 2021 10:25:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D979D40493;
	Tue,  1 Jun 2021 10:25:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 633B31BF21A
 for <devel@linuxdriverproject.org>; Tue,  1 Jun 2021 10:25:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 51593403DD
 for <devel@linuxdriverproject.org>; Tue,  1 Jun 2021 10:25:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qov-I63Lzxak for <devel@linuxdriverproject.org>;
 Tue,  1 Jun 2021 10:25:06 +0000 (UTC)
X-Greylist: delayed 03:43:24 by SQLgrey-1.8.0
Received: from mail.bmc.hu (mail.bmc.hu [195.228.19.61])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 47AD3402D2
 for <devel@driverdev.osuosl.org>; Tue,  1 Jun 2021 10:25:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.bmc.hu (Postfix) with ESMTP id 1B16E212871E;
 Tue,  1 Jun 2021 02:57:02 +0200 (CEST)
Received: from mail.bmc.hu ([127.0.0.1])
 by localhost (mail.bmc.hu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id QRyMop1jg2cA; Tue,  1 Jun 2021 02:57:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by mail.bmc.hu (Postfix) with ESMTP id AD91E2107A21;
 Tue,  1 Jun 2021 00:28:06 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.bmc.hu AD91E2107A21
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bmc.hu;
 s=4F0F4402-30EA-11E9-B9D0-C1C328FE246C; t=1622500087;
 bh=rQSSENu4eIEy4T8zoHuVOkXE1WN3qELTGfKrZ8YXKkg=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=CgGofyr9+rasDZvrP/zgAuwn7d/Ae8j6hEnncrSw+1iLC0oXgWX/kv7dj9wR3AcGX
 HAPyqzwg9NO2WPouKeNSIoRffQd1Y0qYN+TxhZBtb7LFasEbMVA5R7gpUe0XPUFJwA
 rVUjAzowTWr94u/qPn0eVIgWd+HvW3aOO3JunMYE=
X-Virus-Scanned: amavisd-new at bmc.hu
Received: from mail.bmc.hu ([127.0.0.1])
 by localhost (mail.bmc.hu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id lU2hd1LxMgLN; Tue,  1 Jun 2021 00:28:06 +0200 (CEST)
Received: from [51.77.11.94] (unknown [51.77.11.94])
 by mail.bmc.hu (Postfix) with ESMTPSA id 7CEAB1F1D400;
 Mon, 31 May 2021 23:36:27 +0200 (CEST)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Re:
To: Recipients <misi@bmc.hu>
From: misi@bmc.hu
Date: Mon, 31 May 2021 14:36:25 -0700
Message-Id: <20210531213628.7CEAB1F1D400@mail.bmc.hu>
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
Reply-To: infottcuckk@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Sie haben eine Spende, ich habe die Amerika-Lotterie im Wert von 40 Million=
en US-Dollar in Amerika gewonnen und beschlossen, einen Teil davon an f=FCn=
f gl=FCckliche Menschen und Wohlt=E4tigkeitsheime zu spenden, um an meine v=
erstorbene Frau zu erinnern, die an Krebs gestorben ist. Kontaktieren Sie m=
ich f=FCr weitere Informationen unter: infottcuckk@gmail.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
