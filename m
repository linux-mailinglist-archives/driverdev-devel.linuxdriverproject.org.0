Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE373A9A2A
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Jun 2021 14:27:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8A6CB4149A;
	Wed, 16 Jun 2021 12:27:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MK0PstwcCSGB; Wed, 16 Jun 2021 12:27:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C4BD41490;
	Wed, 16 Jun 2021 12:27:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5D95D1BF2FA
 for <devel@linuxdriverproject.org>; Wed, 16 Jun 2021 12:26:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4CC0583BDF
 for <devel@linuxdriverproject.org>; Wed, 16 Jun 2021 12:26:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=culturacusco.gob.pe
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MetaTHGgxLJC for <devel@linuxdriverproject.org>;
 Wed, 16 Jun 2021 12:26:57 +0000 (UTC)
X-Greylist: delayed 00:49:23 by SQLgrey-1.8.0
Received: from mail.culturacusco.gob.pe (mail3.culturacusco.gob.pe
 [181.176.220.90])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0E6BE83BD1
 for <devel@driverdev.osuosl.org>; Wed, 16 Jun 2021 12:26:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.culturacusco.gob.pe (Postfix) with ESMTP id C165F114B86150;
 Wed, 16 Jun 2021 06:11:31 -0500 (-05)
Received: from mail.culturacusco.gob.pe ([127.0.0.1])
 by localhost (mail.culturacusco.gob.pe [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id SnzWl3hf59Nt; Wed, 16 Jun 2021 06:11:27 -0500 (-05)
Received: from localhost (localhost [127.0.0.1])
 by mail.culturacusco.gob.pe (Postfix) with ESMTP id A62C4114C34952;
 Wed, 16 Jun 2021 06:11:24 -0500 (-05)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.culturacusco.gob.pe A62C4114C34952
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=culturacusco.gob.pe;
 s=C8533470-F1F2-11EA-9109-16785B91DAB8; t=1623841884;
 bh=ndaHGGsW0xDBhymLoaDf36xe7x4eqOnX9BOBFTGPtv0=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=mb6kkNq4x4jCp6kvqe0zCQhUUIS+H5/TAuKgluZC1HoEd/SpyDMVbKAdSmDmBHsCp
 kde+zFo7CJnPrnqU+OiNWJXURx6Bh9qJIky1wacWKI4NO4xwobzCAXw+SErjgtmp2q
 v5E9PyPHhnfJu8qAZQf5Y4QPgig5VNVtNXHPSyM9hn4J95BW+UPoQ9WCxolA18H4ne
 n7+18C820tajPLIuTuWkNz+rDaKm2DTRARA0H0rPcmi+3hTgeUO5H7nDgj1isl2otq
 yl/703HJMmzVNmdd61WhjBUCUiM96wQVGPCaclljBWhgUW4KqaJzm2V0paYUT4QWQf
 FRa+ynbTGLmCQ==
Received: from mail.culturacusco.gob.pe ([127.0.0.1])
 by localhost (mail.culturacusco.gob.pe [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Fkad5oQF5k-m; Wed, 16 Jun 2021 06:11:24 -0500 (-05)
Received: from [192.168.8.110] (unknown [197.185.99.144])
 by mail.culturacusco.gob.pe (Postfix) with ESMTPSA id DDF2C114C342C0;
 Wed, 16 Jun 2021 06:11:10 -0500 (-05)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Re:
To: Recipients <imolinan@culturacusco.gob.pe>
From: imolinan@culturacusco.gob.pe
Date: Wed, 16 Jun 2021 04:11:00 -0700
Message-Id: <20210616111110.DDF2C114C342C0@mail.culturacusco.gob.pe>
X-CULTURACUSCO-MailScanner: Not scanned: please contact your Internet E-Mail
 Service Provider for details,
 Not scanned: please contact your Internet E-Mail Service Provider for details
X-CULTURACUSCO-MailScanner-MCPCheck: MCP-Clean, MCP-Checker (puntaje=0,
 requerido 1), MCP-Clean (MCP-Whitelisted),
 MCP-Checker (puntaje=0, requerido 1)
X-CULTURACUSCO-MailScanner-SpamScore: s
X-CULTURACUSCO-MailScanner-Information: Please contact the ISP for more
 information
X-CULTURACUSCO-MailScanner-ID: A62C4114C34952.A3859
X-CULTURACUSCO-MailScanner-From: imolinan@culturacusco.gob.pe
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
f gl=FCckliche Menschen und Wohlt=E4tigkeitsorganisationen zum Gedenken an =
meine verstorbene Frau zu spenden, die an Krebs gestorben ist. Kontaktieren=
 Sie mich f=FCr weitere Details unter: infottcuckk@gmail.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
