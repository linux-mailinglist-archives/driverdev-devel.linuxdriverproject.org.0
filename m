Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2AA39AB10
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Jun 2021 21:49:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 347FF842F7;
	Thu,  3 Jun 2021 19:49:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LLKoSvnnhg_Y; Thu,  3 Jun 2021 19:49:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DBA7A83E06;
	Thu,  3 Jun 2021 19:49:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 88F7F1BF308
 for <devel@linuxdriverproject.org>; Thu,  3 Jun 2021 19:48:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7774F40234
 for <devel@linuxdriverproject.org>; Thu,  3 Jun 2021 19:48:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=flippie-beckerswealthser.xyz
 header.b="twHzdSsn"; dkim=pass (1024-bit key)
 header.d=flippie-beckerswealthser.xyz header.b="twHzdSsn"
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zlzL0vxpVa2Z for <devel@linuxdriverproject.org>;
 Thu,  3 Jun 2021 19:48:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from host.flippie-beckerswealthser.xyz (flippie-beckerswealthser.xyz
 [185.31.160.145])
 by smtp2.osuosl.org (Postfix) with ESMTP id DB53540211
 for <devel@driverdev.osuosl.org>; Thu,  3 Jun 2021 19:48:52 +0000 (UTC)
Received: from flippie-beckerswealthser.xyz
 (ec2-3-143-115-148.us-east-2.compute.amazonaws.com [3.143.115.148])
 by host.flippie-beckerswealthser.xyz (Postfix) with ESMTPA id 3481C24907A
 for <devel@driverdev.osuosl.org>; Thu,  3 Jun 2021 19:34:13 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 host.flippie-beckerswealthser.xyz
 3481C24907A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=flippie-beckerswealthser.xyz; s=default; t=1622738054;
 bh=h0ivQLrZuUWuyEKz/TWb+FP9AASpHhVqOsJtRcwKQV4=;
 h=Reply-To:From:To:Subject:Date:From;
 b=twHzdSsnqDQoFtiZuptgwzasm72asyHwz6grvw2Yrb7yeHYAQNVdajEhIet1kZNWL
 LNRjs5eZJECAufWYOVY2pwPIYyJ/+Kkg+KjtrxDDk2Q1GoRCGm8egF7Ip2kT1y4Ivt
 yCKVnxaF+zlJk8Gd4af+pNC8UmkhSFA/fjm++yjM=
DKIM-Filter: OpenDKIM Filter v2.11.0 host.flippie-beckerswealthser.xyz
 3481C24907A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=flippie-beckerswealthser.xyz; s=default; t=1622738054;
 bh=h0ivQLrZuUWuyEKz/TWb+FP9AASpHhVqOsJtRcwKQV4=;
 h=Reply-To:From:To:Subject:Date:From;
 b=twHzdSsnqDQoFtiZuptgwzasm72asyHwz6grvw2Yrb7yeHYAQNVdajEhIet1kZNWL
 LNRjs5eZJECAufWYOVY2pwPIYyJ/+Kkg+KjtrxDDk2Q1GoRCGm8egF7Ip2kT1y4Ivt
 yCKVnxaF+zlJk8Gd4af+pNC8UmkhSFA/fjm++yjM=
From: Jotham Masuku <jothammasuku39@flippie-beckerswealthser.xyz>
To: devel@driverdev.osuosl.org
Subject: Projects
Date: 03 Jun 2021 16:34:12 +0000
Message-ID: <20210603163412.9C8EB26A12410029@flippie-beckerswealthser.xyz>
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
Reply-To: jothammasuku39@flippiebeckerwealthservices.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello there,

I hope this message finds you in good spirits especially during 
this challenging time of coronavirus pandemic. I hope you and 
your family are well and keeping safe. Anyway, I am Jotham 
Masuku, a broker working with Flippiebecker Wealth. I got your 
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

J Masuku
Flippiebecker Wealth
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
