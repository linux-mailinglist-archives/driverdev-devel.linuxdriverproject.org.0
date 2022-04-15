Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A7E502FDD
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 Apr 2022 22:49:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4A9B460E3D;
	Fri, 15 Apr 2022 20:49:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nmmKvYY9YxCG; Fri, 15 Apr 2022 20:49:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8D71461113;
	Fri, 15 Apr 2022 20:49:41 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D49DC1BF39E
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 Apr 2022 20:49:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B4E0240C37
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 Apr 2022 20:49:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new); dkim=neutral
 reason="invalid (public key: syntax error)"
 header.d=bapenda.bandungkab.go.id
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MYunsZGl8oN4
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 Apr 2022 20:49:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.bapenda.bandungkab.go.id (mail.bapenda.bandungkab.go.id
 [103.194.173.61])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D027040C20
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 Apr 2022 20:49:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.bapenda.bandungkab.go.id (Postfix) with ESMTP id 3158930549324;
 Sat, 16 Apr 2022 02:25:50 +0700 (WIB)
Received: from mail.bapenda.bandungkab.go.id ([127.0.0.1])
 by localhost (mail.bapenda.bandungkab.go.id [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id qKcqw7jc-k32; Sat, 16 Apr 2022 02:25:49 +0700 (WIB)
Received: from localhost (localhost [127.0.0.1])
 by mail.bapenda.bandungkab.go.id (Postfix) with ESMTP id 153A33054930A;
 Sat, 16 Apr 2022 02:25:46 +0700 (WIB)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.bapenda.bandungkab.go.id
 153A33054930A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bapenda.bandungkab.go.id; s=FBE2A7AE-107C-11EC-8FAD-0A6FF130695D;
 t=1650050746; bh=uEjYyKo4SgXZ3f9oX4yWVRVdFSNIt1rbqMlcr7wFXkM=;
 h=From:Date:MIME-Version:Message-Id;
 b=sCCCmp4+Nux2ikHtZ13QQbn4jCFOIYVlbHF42Qiq3H+E1lJwoBxk3rE+4grJZfjPA
 ORdtul9JQ/UdkPv15pXeUeKhVh8Ogno2YcNtVeJxRAnZJHdiChxq6KTqcWEhMVjtzz
 c0ikzii6sg8opjerB2R4dS9RY0Swva4dPYHYuRNwua3Euxhbstzbdnwu+uSMWw+zx9
 LXjzVVWadIvx8jM2BkDLoGNr7QFmYYbejSAJMl07fq+32zBsyufS6w4UDwQCHEZrvA
 SCz8A1D9gCsIw9hxkDW3nYbw30Nrz7hvvssm/vcahvUCYt5sTYzlkK4dCHH480aSmT
 xDM0U/0w4jr7Q==
X-Virus-Scanned: amavisd-new at bapenda.bandungkab.go.id
Received: from mail.bapenda.bandungkab.go.id ([127.0.0.1])
 by localhost (mail.bapenda.bandungkab.go.id [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id scIUvft1tImR; Sat, 16 Apr 2022 02:25:45 +0700 (WIB)
Received: from User (gtw.bapenda.bandungkab.go.id [192.168.255.1])
 by mail.bapenda.bandungkab.go.id (Postfix) with SMTP id AEC023054930F;
 Sat, 16 Apr 2022 02:25:24 +0700 (WIB)
From: "Sgt Swanson Dennis"<superc@bapenda.bandungkab.go.id>
Subject: Assist
Date: Fri, 15 Apr 2022 20:25:41 +0100
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-Id: <20220415192524.AEC023054930F@mail.bapenda.bandungkab.go.id>
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
Reply-To: sgtswansondennis@mnetsolution.work
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

I am Sgt Swanson Dennis, an American soldier serving in the US
military. I have some amount that I want to move out of ( SYRIA )
which might require your assistance urgently, Can I trust you? email
me now, for details as this mail was sent from a discreet email
account.  sgtswansondennis@mnetsolution.work
I wait your response
Sgt Swanson Dennis
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
