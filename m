Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C41C7AC71A
	for <lists+driverdev-devel@lfdr.de>; Sun, 24 Sep 2023 10:02:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F95A81F48;
	Sun, 24 Sep 2023 08:02:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F95A81F48
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2xHQlwlpoy4t; Sun, 24 Sep 2023 08:02:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7FA6D81DFD;
	Sun, 24 Sep 2023 08:02:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7FA6D81DFD
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4BD0E1BF363
 for <devel@linuxdriverproject.org>; Sun, 24 Sep 2023 08:02:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2570140A45
 for <devel@linuxdriverproject.org>; Sun, 24 Sep 2023 08:02:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2570140A45
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ikPGU-GqUidW for <devel@linuxdriverproject.org>;
 Sun, 24 Sep 2023 08:02:14 +0000 (UTC)
Received: from mail.aliforte.ec (mail.aliforte.ec [190.99.76.109])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 94EBE400D7
 for <devel@driverdev.osuosl.org>; Sun, 24 Sep 2023 08:02:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 94EBE400D7
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.aliforte.ec (Postfix) with ESMTP id 5F58F4AAB2D;
 Wed, 20 Sep 2023 10:38:16 -0500 (-05)
Received: from mail.aliforte.ec ([127.0.0.1])
 by localhost (mail.aliforte.ec [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id FJmvyYtReH3Y; Wed, 20 Sep 2023 10:37:45 -0500 (-05)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.aliforte.ec (Postfix) with ESMTP id 7C55790547BC;
 Mon, 18 Sep 2023 17:04:05 -0500 (-05)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.aliforte.ec 7C55790547BC
X-Virus-Scanned: amavisd-new at mail.aliforte.ec
Received: from mail.aliforte.ec ([127.0.0.1])
 by localhost (mail.aliforte.ec [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id fytEcHoZUXix; Mon, 18 Sep 2023 17:04:05 -0500 (-05)
Received: from [192.168.0.102] (unknown [98.159.234.5])
 by mail.aliforte.ec (Postfix) with ESMTPSA id 013F31D63F72D;
 Sat, 16 Sep 2023 10:19:44 -0500 (-05)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: CONFIDENTIALITY
To: Recipients <postmaster@aliforte.ec>
From: postmaster@aliforte.ec
Date: Sat, 16 Sep 2023 16:19:23 +0100
X-Antivirus: Avast (VPS 230916-4, 16/9/2023), Outbound message
X-Antivirus-Status: Clean
Message-Id: <20230916151945.013F31D63F72D@mail.aliforte.ec>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aliforte.ec; 
 s=714E06D0-A4E0-11EC-BDCA-35A6F5D4E9A0; t=1695074645;
 bh=XC3tKyMf9lUDhjeQfwfuG1L6NU8HHNzHbtYU610yPfM=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=KeeATytHnAlsSfAMfZbKC3EKCgLsAwlk4BqikMsh5RNBIJXJdE4lOk6H0jtIxlTDS
 cRq9H32nTNu990XEyRZydYXbVNMAoJ3rXaPAyWs90rOA/+cunUAz7j94Gpkf7uNC3R
 oafrs47i0lZpbtaRsB11VWpoXcYTNfapgyc6Zq9XVDFwb8mg0sDn2ZDMe86c2dD6w/
 Nk7fEhAi0zLl9nUbmyVJyB3uDubuDpwyLooFzuysfNalcBZk3bo8ApwS2f34ZvO9Nt
 tfeW662sqP+itdk32nmLz5RBnwkhT5IYbCahkqU0BkdWuy6V4+7+Ecz9MXRuJm0HAu
 v6uveecvGz6iQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=aliforte.ec header.i=@aliforte.ec
 header.a=rsa-sha256 header.s=714E06D0-A4E0-11EC-BDCA-35A6F5D4E9A0
 header.b=KeeATytH
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
Reply-To: silvanatenreyro54231@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

We have unclaimed funds associated with your names. Send your full names to:silvanatenreyro54231@gmail.com for urgent complaints.

-- 
This email has been checked for viruses by Avast antivirus software.
www.avast.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
