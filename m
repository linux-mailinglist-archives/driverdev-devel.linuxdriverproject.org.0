Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 660E83B5BCD
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Jun 2021 11:55:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C76C607C2;
	Mon, 28 Jun 2021 09:55:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xb-mECD_3Go2; Mon, 28 Jun 2021 09:55:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 70AD66072A;
	Mon, 28 Jun 2021 09:55:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 371F91BF47E
 for <devel@linuxdriverproject.org>; Mon, 28 Jun 2021 09:55:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3213B832E6
 for <devel@linuxdriverproject.org>; Mon, 28 Jun 2021 09:55:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=flippiebeckerwmanagers.xyz
 header.b="Mpqje9gD"; dkim=pass (1024-bit key)
 header.d=flippiebeckerwmanagers.xyz header.b="Mpqje9gD"
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8-uQVq3dAcIX for <devel@linuxdriverproject.org>;
 Mon, 28 Jun 2021 09:55:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from host.flippiebeckerwmanagers.xyz (flippiebeckerwmanagers.xyz
 [62.173.138.237])
 by smtp1.osuosl.org (Postfix) with ESMTP id 873548331B
 for <devel@driverdev.osuosl.org>; Mon, 28 Jun 2021 09:55:12 +0000 (UTC)
Received: from flippiebeckerwmanagers.xyz
 (ec2-3-236-100-111.compute-1.amazonaws.com [3.236.100.111])
 by host.flippiebeckerwmanagers.xyz (Postfix) with ESMTPA id AADBA1141269
 for <devel@driverdev.osuosl.org>; Mon, 28 Jun 2021 12:19:51 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 host.flippiebeckerwmanagers.xyz
 AADBA1141269
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=flippiebeckerwmanagers.xyz; s=default; t=1624871992;
 bh=G3PrS2ssLE6xKmHDCm5hvScMpvbJPlyTw8R1AuPMkGc=;
 h=Reply-To:From:To:Subject:Date:From;
 b=Mpqje9gDzUDsG7xvrqUTdTf4q7w9R8JMVhcjx8/mhdY+Br+TXu+2SR3gMB8ympNJ/
 fsXn4cKf/raYp8b4FrquVVFBXGADTCuxQ12h5M35sGG++NGVNyylwr5t2ajvZ7vCV5
 tuwY6D+KFX7PWODEGJLxDDXazYvFhZ60eEI5qAlU=
DKIM-Filter: OpenDKIM Filter v2.11.0 host.flippiebeckerwmanagers.xyz
 AADBA1141269
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=flippiebeckerwmanagers.xyz; s=default; t=1624871992;
 bh=G3PrS2ssLE6xKmHDCm5hvScMpvbJPlyTw8R1AuPMkGc=;
 h=Reply-To:From:To:Subject:Date:From;
 b=Mpqje9gDzUDsG7xvrqUTdTf4q7w9R8JMVhcjx8/mhdY+Br+TXu+2SR3gMB8ympNJ/
 fsXn4cKf/raYp8b4FrquVVFBXGADTCuxQ12h5M35sGG++NGVNyylwr5t2ajvZ7vCV5
 tuwY6D+KFX7PWODEGJLxDDXazYvFhZ60eEI5qAlU=
From: Jotham Masuku <jmasuku08@flippiebeckerwmanagers.xyz>
To: devel@driverdev.osuosl.org
Subject: Projects
Date: 28 Jun 2021 09:19:51 +0000
Message-ID: <20210628091951.D4DC07FCD108D907@flippiebeckerwmanagers.xyz>
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
Reply-To: jmasuku08@flippiebecker.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello there,

I hope this message finds you in good spirits especially during 
this challenging time of coronavirus pandemic. I hope you and 
your family are well and keeping safe. Anyway, I am Jotham 
Masuku, a broker working with Flippiebecker Wealth. I got your 
contact through an online business directory and I thought I 
should contact you to see if you are interested in this 
opportunity. I am contacting you because one of my high profile 
clients is interested in investing abroad and has asked me to 
look for individuals and companies in your country with 
interesting business ideas and projects that he can invest in. He 
wants to invest a substantial amount of asset abroad.

I have decided to keep this brief for now but please kindly 
respond back to this email if you are interested in this 
opportunity. Once I receive your response, I will give you more 
details and we can plan a strategy that will be beneficial to all 
parties.

Best regards

J Masuku
Flippiebecker Wealth
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
