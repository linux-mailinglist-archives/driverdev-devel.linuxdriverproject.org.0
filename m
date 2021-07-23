Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A38D3E2E1B
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Aug 2021 18:06:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C824C83BBF;
	Fri,  6 Aug 2021 16:06:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XHzyzPxdxJ6f; Fri,  6 Aug 2021 16:06:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F150835B1;
	Fri,  6 Aug 2021 16:06:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3AE761BF2F7
 for <devel@linuxdriverproject.org>; Fri,  6 Aug 2021 16:06:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2739C40343
 for <devel@linuxdriverproject.org>; Fri,  6 Aug 2021 16:06:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=fail (2048-bit key)
 reason="fail (OpenSSL error: data too small for key size)"
 header.d=flippiesbeckerswealth.online header.b="XwK73f95";
 dkim=fail (2048-bit key)
 reason="fail (OpenSSL error: data too small for key size)"
 header.d=flippiesbeckerswealth.online header.b="XwK73f95"
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dpr4c7j7Rnve for <devel@linuxdriverproject.org>;
 Fri,  6 Aug 2021 16:06:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from host.flippiesbeckerswealth.online (unknown [162.214.191.81])
 by smtp2.osuosl.org (Postfix) with ESMTP id 86B8E400F4
 for <devel@driverdev.osuosl.org>; Fri,  6 Aug 2021 16:06:02 +0000 (UTC)
Received: from flippiesbeckerswealth.online
 (ec2-3-133-136-124.us-east-2.compute.amazonaws.com [3.133.136.124])
 by host.flippiesbeckerswealth.online (Postfix) with ESMTPA id 8BFF03FE86D
 for <devel@driverdev.osuosl.org>; Fri, 23 Jul 2021 17:41:11 -0600 (MDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 host.flippiesbeckerswealth.online
 8BFF03FE86D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=flippiesbeckerswealth.online; s=default; t=1627083672;
 bh=VQ9F5/IFjWO3ibBbsb0iuroKrABHdSlYCxXmeBgNn1k=;
 h=Reply-To:From:To:Subject:Date:From;
 b=XwK73f954kX+uFTa425X0bVhD0SmWaRrOyoUTV6h89FfnlId1g2vexUFRoTZ1mWdl
 yEsIE76BaQzGygRbM6R1e+Trhi3Ng1Nptxb5waL25QWV3FbOPYYuW63amuPeouHX90
 BPM6td8GhAYxQkxpt+n+vdGb4qVkv5BrzzcmHMnI=
DKIM-Filter: OpenDKIM Filter v2.11.0 host.flippiesbeckerswealth.online
 8BFF03FE86D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=flippiesbeckerswealth.online; s=default; t=1627083672;
 bh=VQ9F5/IFjWO3ibBbsb0iuroKrABHdSlYCxXmeBgNn1k=;
 h=Reply-To:From:To:Subject:Date:From;
 b=XwK73f954kX+uFTa425X0bVhD0SmWaRrOyoUTV6h89FfnlId1g2vexUFRoTZ1mWdl
 yEsIE76BaQzGygRbM6R1e+Trhi3Ng1Nptxb5waL25QWV3FbOPYYuW63amuPeouHX90
 BPM6td8GhAYxQkxpt+n+vdGb4qVkv5BrzzcmHMnI=
From: J Masuku <jothammasuku10@flippiesbeckerswealth.online>
To: devel@driverdev.osuosl.org
Subject: Projects
Date: 23 Jul 2021 23:41:11 +0000
Message-ID: <20210723234111.C126D14E009176D1@flippiesbeckerswealth.online>
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
Reply-To: jothammasuku10@flippiebeckerwealthservice.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello there,

I am Jotham Masuku, a broker working with FlippieBecker Wealth 
Services in SA. I am contacting you because one of my high 
profile clients is interested in investing abroad and has asked 
me to look for individuals and companies with interesting 
business ideas and companies that he can invest in.

He wants to expand his portfolio and has interest in investing a 
substantial amount of asset abroad. I got your email contact 
through an online b2b business directory and I thought I'd 
contact you to see if you are interested in this opportunity.

Please indicate your interest by replying back to this email. 
Once I get your response, I will give you more details and we can 
plan a strategy that will be beneficial to all parties.

Best Regards,
J Masuku
FippieBecker Wealth Services
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
