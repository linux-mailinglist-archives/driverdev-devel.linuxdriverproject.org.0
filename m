Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1618B1CAC
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Apr 2024 10:16:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 989926067D;
	Thu, 25 Apr 2024 08:16:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ErMevyWixeEA; Thu, 25 Apr 2024 08:16:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 080A660ECA
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 080A660ECA;
	Thu, 25 Apr 2024 08:16:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9A46E1BF331
 for <devel@linuxdriverproject.org>; Thu, 25 Apr 2024 08:16:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 85AA8409FF
 for <devel@linuxdriverproject.org>; Thu, 25 Apr 2024 08:16:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f_iTTMPwP2uV for <devel@linuxdriverproject.org>;
 Thu, 25 Apr 2024 08:16:44 +0000 (UTC)
X-Greylist: delayed 5390 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 25 Apr 2024 08:16:43 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E82654024A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E82654024A
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=161.132.171.106;
 helo=mail.municarmendelalegua.gob.pe;
 envelope-from=rvaldivia@municarmendelalegua.gob.pe; receiver=<UNKNOWN> 
Received: from mail.municarmendelalegua.gob.pe
 (mail.municarmendelalegua.gob.pe [161.132.171.106])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E82654024A
 for <devel@driverdev.osuosl.org>; Thu, 25 Apr 2024 08:16:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.municarmendelalegua.gob.pe (Postfix) with ESMTP id 1BBD848A94DA;
 Thu, 25 Apr 2024 01:30:51 -0400 (EDT)
Received: from mail.municarmendelalegua.gob.pe ([127.0.0.1])
 by localhost (mail.municarmendelalegua.gob.pe [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id XY9cQv1xjMnm; Thu, 25 Apr 2024 01:30:45 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by mail.municarmendelalegua.gob.pe (Postfix) with ESMTP id 877A2547A8FE;
 Wed, 24 Apr 2024 20:48:54 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.municarmendelalegua.gob.pe
 877A2547A8FE
X-Virus-Scanned: amavisd-new at mail.municarmendelalegua.gob.pe
Received: from mail.municarmendelalegua.gob.pe ([127.0.0.1])
 by localhost (mail.municarmendelalegua.gob.pe [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id 9YuzT-PSVUdm; Wed, 24 Apr 2024 20:48:53 -0400 (EDT)
Received: from EC2AMAZ-FAAG9GR.us-east-2.compute.internal
 (ec2-3-135-189-160.us-east-2.compute.amazonaws.com [3.135.189.160])
 by mail.municarmendelalegua.gob.pe (Postfix) with ESMTPSA id 9E93865E8871;
 Wed, 24 Apr 2024 15:59:03 -0400 (EDT)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: =?utf-8?b?RsO2cmRlcnVuZyAxLDUl?=
To: Recipients <rvaldivia@municarmendelalegua.gob.pe>
From: "Thomas Mark" <rvaldivia@municarmendelalegua.gob.pe>
Date: Wed, 24 Apr 2024 19:58:56 +0000
Message-Id: <20240424195903.9E93865E8871@mail.municarmendelalegua.gob.pe>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=municarmendelalegua.gob.pe;
 s=6609401A-1D53-11EC-85CC-B60885300F17; t=1714006139;
 bh=Uy8XDJarYHKQiXLNLuaOpF5FXtrgP/zsgHtbPHFtAO8=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=yqJEJZClJECXER205imUNRhF2Plm4L7eS+gpA5b0LAT/TQObxb+7942NMovfcs7UJ
 x7VkQWhB5sr03Ak+cNtoYNQvRlDI8/PoiOGghKEkuZx1Yb8YTXZV22GleccprUvqQP
 qFOdEmZqe/ENVJkJ9hBCXP/xTeLzUMBxLDu27QWEKmiNFOio3j4CsNlRDeHne6EqUt
 E7MIJZCuvF01D2/UhRkr3lS/DBOsIhtzwYQJRxJPv9H0PfWYOUMh9QeoTw7ASY4IM/
 ObnHCdWGR6ESamCi00mxfhSBXplUAoeI5A0IAG3EBj2hGqKl80l0FUvUjOPbxjSDiu
 /Vh920syT8pNw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=municarmendelalegua.gob.pe
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=municarmendelalegua.gob.pe
 header.i=@municarmendelalegua.gob.pe header.a=rsa-sha256
 header.s=6609401A-1D53-11EC-85CC-B60885300F17 header.b=yqJEJZCl
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
