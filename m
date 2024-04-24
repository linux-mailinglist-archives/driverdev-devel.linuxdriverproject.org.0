Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 684A68B42C2
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Apr 2024 01:32:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D85EF82301;
	Fri, 26 Apr 2024 23:32:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jBYcXUv2lPB2; Fri, 26 Apr 2024 23:32:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1CF7E83BA3
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1CF7E83BA3;
	Fri, 26 Apr 2024 23:32:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EA6BD1BF82C
 for <devel@linuxdriverproject.org>; Fri, 26 Apr 2024 23:32:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D6B0B40BB3
 for <devel@linuxdriverproject.org>; Fri, 26 Apr 2024 23:32:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IrxfMabbxzeT for <devel@linuxdriverproject.org>;
 Fri, 26 Apr 2024 23:32:37 +0000 (UTC)
X-Greylist: delayed 57599 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 26 Apr 2024 23:32:37 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 28A3040116
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 28A3040116
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=161.132.171.106;
 helo=mail.municarmendelalegua.gob.pe;
 envelope-from=rvaldivia@municarmendelalegua.gob.pe; receiver=<UNKNOWN> 
Received: from mail.municarmendelalegua.gob.pe
 (mail.municarmendelalegua.gob.pe [161.132.171.106])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 28A3040116
 for <devel@linuxdriverproject.org>; Fri, 26 Apr 2024 23:32:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.municarmendelalegua.gob.pe (Postfix) with ESMTP id C5E3B10071101;
 Thu, 25 Apr 2024 01:28:55 -0400 (EDT)
Received: from mail.municarmendelalegua.gob.pe ([127.0.0.1])
 by localhost (mail.municarmendelalegua.gob.pe [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 9CWTBuspMxfu; Thu, 25 Apr 2024 01:28:49 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by mail.municarmendelalegua.gob.pe (Postfix) with ESMTP id A1DBC7A37A3D;
 Wed, 24 Apr 2024 20:47:50 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.municarmendelalegua.gob.pe
 A1DBC7A37A3D
X-Virus-Scanned: amavisd-new at mail.municarmendelalegua.gob.pe
Received: from mail.municarmendelalegua.gob.pe ([127.0.0.1])
 by localhost (mail.municarmendelalegua.gob.pe [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id xOmd8R1pIOpL; Wed, 24 Apr 2024 20:47:49 -0400 (EDT)
Received: from EC2AMAZ-FAAG9GR.us-east-2.compute.internal
 (ec2-3-135-189-160.us-east-2.compute.amazonaws.com [3.135.189.160])
 by mail.municarmendelalegua.gob.pe (Postfix) with ESMTPSA id E1435659894B;
 Wed, 24 Apr 2024 15:59:06 -0400 (EDT)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: =?utf-8?b?RsO2cmRlcnVuZyAxLDUl?=
To: Recipients <rvaldivia@municarmendelalegua.gob.pe>
From: "Thomas Mark" <rvaldivia@municarmendelalegua.gob.pe>
Date: Wed, 24 Apr 2024 19:58:57 +0000
Message-Id: <20240424195908.E1435659894B@mail.municarmendelalegua.gob.pe>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=municarmendelalegua.gob.pe;
 s=6609401A-1D53-11EC-85CC-B60885300F17; t=1714006072;
 bh=Uy8XDJarYHKQiXLNLuaOpF5FXtrgP/zsgHtbPHFtAO8=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=saaNJuLPNdw66q7AVkwuYP8yI8oJwDsX+Zcy3kvfQELwbAaoaf/VbJObrMZIkgIOB
 cw0VOKQvGlYo/aiDNXRLe1s2eKxbbkMiVZMwkXNmbQMwLEIy6KWpXXcVie6s3YwqJD
 nEqKdCPFCb0z/aw2ekh2Mbp2N9NNdmrOVGWY8PSToWllSlnOPkrrZv/+ccDEPxUe4W
 dxVKpTR96FBI8jkQDpTq4e2kPJCSSLJBVK9b7phV2Wa3svpvZH/hP4epVrvq63Cmua
 Tri4zv2/v7FXsYQMo3MAE/V+rd5IALkio751wa7l0zQhK+6c6qPlAzZN/Ei5JvCh+b
 QSDTxzNUOwVRA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=municarmendelalegua.gob.pe
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=municarmendelalegua.gob.pe
 header.i=@municarmendelalegua.gob.pe header.a=rsa-sha256
 header.s=6609401A-1D53-11EC-85CC-B60885300F17 header.b=saaNJuLP
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
Reply-To: thomasmarkwellcome@posteo.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hallo,

Wir freuen uns, Ihnen mitteilen zu k=F6nnen, dass wir Ihnen ein =

Darlehen von 20.000 Euro bis 50.000.000 Euro zu einem =

Jahreszinssatz von nur 1,5% zur Verf=FCgung stellen k=F6nnen. Wir =

verstehen, dass die Erf=FCllung Ihrer finanziellen Bed=FCrfnisse =

entscheidend ist, deshalb sind wir hier, um zu helfen.

Wenn Sie an dieser M=F6glichkeit interessiert sind, lassen Sie es =

uns bitte wissen. Unser Team wird Sie gerne durch den Prozess =

f=FChren und alle Fragen beantworten. Wenn Sie unsere E-Mails nicht =

mehr erhalten m=F6chten, senden Sie uns bitte eine E-Mail mit dem =

Betreff "Abmelden", und wir werden Sie aus unserer Mailingliste =

entfernen.

Mit freundlichen Gr=FC=DFen,

Thomas Mark
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
