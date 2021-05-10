Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8B937916E
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 May 2021 16:54:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C8DC60BF1;
	Mon, 10 May 2021 14:54:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qwOqxFdRhtRJ; Mon, 10 May 2021 14:54:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EE9C160BDF;
	Mon, 10 May 2021 14:54:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0367F1BF38E
 for <devel@linuxdriverproject.org>; Mon, 10 May 2021 14:53:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E5E0384248
 for <devel@linuxdriverproject.org>; Mon, 10 May 2021 14:53:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=flipiebeckerwealthservice.online
 header.b="cqdIRVyc"; dkim=pass (1024-bit key)
 header.d=flipiebeckerwealthservice.online header.b="cqdIRVyc"
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rVKipXZD02uo for <devel@linuxdriverproject.org>;
 Mon, 10 May 2021 14:53:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from host.flipiebeckerwealthservice.online
 (flipiebeckerwealthservice.online [62.173.147.157])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9DEBF83F8D
 for <devel@driverdev.osuosl.org>; Mon, 10 May 2021 14:53:51 +0000 (UTC)
Received: from flipiebeckerwealthservice.online
 (ec2-18-224-82-108.us-east-2.compute.amazonaws.com [18.224.82.108])
 by host.flipiebeckerwealthservice.online (Postfix) with ESMTPA id 2E9D82253C8
 for <devel@driverdev.osuosl.org>; Mon, 10 May 2021 16:49:06 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 host.flipiebeckerwealthservice.online
 2E9D82253C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=flipiebeckerwealthservice.online; s=default; t=1620654546;
 bh=Lxx5rGQCX/MQzrwE9epz1Mb5yPYRqDyEupWj6GReobo=;
 h=Reply-To:From:To:Subject:Date:From;
 b=cqdIRVycnNQYkU58BwCfLMo1IBKAP+I+vEV0EjmjrXk4ygWvWDjM4+gqXc2nkxUj0
 J9ypHbIwZ3txZlmHK9gPLdDvcpUWsm+k9uhMSdq55ZzHTGBB7k05EBmR2Vapx03MWm
 mLPkRvGlPZGAs6s5EUNHK+VgDS65mqaP8EKodjDU=
DKIM-Filter: OpenDKIM Filter v2.11.0 host.flipiebeckerwealthservice.online
 2E9D82253C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=flipiebeckerwealthservice.online; s=default; t=1620654546;
 bh=Lxx5rGQCX/MQzrwE9epz1Mb5yPYRqDyEupWj6GReobo=;
 h=Reply-To:From:To:Subject:Date:From;
 b=cqdIRVycnNQYkU58BwCfLMo1IBKAP+I+vEV0EjmjrXk4ygWvWDjM4+gqXc2nkxUj0
 J9ypHbIwZ3txZlmHK9gPLdDvcpUWsm+k9uhMSdq55ZzHTGBB7k05EBmR2Vapx03MWm
 mLPkRvGlPZGAs6s5EUNHK+VgDS65mqaP8EKodjDU=
From: Chris <cpavlides@flipiebeckerwealthservice.online>
To: devel@driverdev.osuosl.org
Subject: Proposal
Date: 10 May 2021 13:49:05 +0000
Message-ID: <20210510134905.BA7EB11B9ED6F1A1@flipiebeckerwealthservice.online>
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
Reply-To: cpavlides@flippiebeckerwealthservices.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello there,

I hope this message finds you in good spirits especially during 
this challenging time of coronavirus pandemic. I hope you and 
your family are well and keeping safe. Anyway, I am Chris 
Pavlides, a broker working with Flippiebecker Wealth. I got your 
contact (along with few other contacts) through an online 
business directory and I thought I should contact you to see if 
you are interested in this opportunity. I am contacting you 
because one of my high profile clients is interested in investing 
abroad and has asked me to look for individuals and companies 
with interesting business ideas and projects that he can invest 
in. He wants to invest a substantial amount of asset abroad.

Please kindly respond back to this email if you are interested in 
this opportunity. Once I receive your response, I will give you 
more details and we can plan a strategy that will be beneficial 
to all parties.

Best regards

C Pavlides
Flippiebecker Wealth
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
