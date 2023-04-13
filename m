Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E986E0A11
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Apr 2023 11:22:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B0C6C81E23;
	Thu, 13 Apr 2023 09:22:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B0C6C81E23
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id luMj6aKJZxQR; Thu, 13 Apr 2023 09:22:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A34D583F1B;
	Thu, 13 Apr 2023 09:22:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A34D583F1B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2ECA61C3C1A
 for <devel@linuxdriverproject.org>; Thu, 13 Apr 2023 09:22:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 07EA441F2F
 for <devel@linuxdriverproject.org>; Thu, 13 Apr 2023 09:22:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 07EA441F2F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T5UcR_6Og26D for <devel@linuxdriverproject.org>;
 Thu, 13 Apr 2023 09:22:09 +0000 (UTC)
X-Greylist: delayed 00:35:25 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED52041E6D
Received: from mail.posteburundi.bi (mail.posteburundi.bi [196.2.15.142])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ED52041E6D
 for <devel@driverdev.osuosl.org>; Thu, 13 Apr 2023 09:22:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.posteburundi.bi (Postfix) with ESMTP id C6E6121C547D;
 Thu, 13 Apr 2023 10:30:50 +0200 (CAT)
Received: from mail.posteburundi.bi ([127.0.0.1])
 by localhost (mail.posteburundi.bi [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 9JnJ4zoBnmIc; Thu, 13 Apr 2023 10:30:50 +0200 (CAT)
Received: from localhost (localhost [127.0.0.1])
 by mail.posteburundi.bi (Postfix) with ESMTP id 33E2321C5489;
 Thu, 13 Apr 2023 10:30:50 +0200 (CAT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.posteburundi.bi 33E2321C5489
X-Virus-Scanned: amavisd-new at posteburundi.bi
Received: from mail.posteburundi.bi ([127.0.0.1])
 by localhost (mail.posteburundi.bi [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id ajnCuifi1vgH; Thu, 13 Apr 2023 10:30:50 +0200 (CAT)
Received: from [192.168.8.101] (unknown [41.85.163.66])
 by mail.posteburundi.bi (Postfix) with ESMTPSA id 6B06921C547D;
 Thu, 13 Apr 2023 10:30:42 +0200 (CAT)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Representative Needed
To: Recipients <info@posteburundi.bi>
From: Global Trader Company Ltd UK <info@posteburundi.bi>
Date: Thu, 13 Apr 2023 09:30:24 +0100
Message-Id: <20230413083042.6B06921C547D@mail.posteburundi.bi>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=posteburundi.bi; 
 s=49734F3E-B0A3-11EC-9971-1E25BC38DE0A; t=1681374650;
 bh=dfzNWNrtmGnDzpFfAqoHDukvC9bBVQxHlsvV6ZwOE+8=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=opNo/Y37uGtQgmEqFdSbdwARAciHGtfHiOElkXfZitSdgMV2NXicVX79RkA7h4enG
 qIEyPePWH95leqllWeIvdQ5xUSKk36v3bTdBlTtNB7riGWVRPFLGTuPgLLhMdlBS91
 TFHEScsBfQVyi1i886TcdM0aRLfmg69e7H4p2ZAfwteGGJ5L+a4C8TPn/21yPLuVoy
 T05yKipd+oI3vst4Ii3IbWNiPRZBujIa7rPFyKCTgFqISfZdjjldrTRWm5AqjLw0DW
 q1euNnvqwXp/GB/THx+NThmKdv2uPNbEprwYm7AOdeD6ZyS8nSunYj+/HJvwEzPR2u
 lfQxoTpayup8A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=posteburundi.bi header.i=@posteburundi.bi
 header.a=rsa-sha256 header.s=49734F3E-B0A3-11EC-9971-1E25BC38DE0A
 header.b=opNo/Y37
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
Reply-To: potterroger68@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

My name is , Mrs Rita Potter Rogers we need a Company Representative in your city location, you can work online or at home and get good payment, contact us if interested on this Email: potterroger68@gmail.com


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
