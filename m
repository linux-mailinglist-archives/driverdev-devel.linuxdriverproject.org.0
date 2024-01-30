Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A3A841ED1
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Jan 2024 10:08:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3053C8196E;
	Tue, 30 Jan 2024 09:08:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3053C8196E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id laUSo16vnjyY; Tue, 30 Jan 2024 09:08:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 09CA381826;
	Tue, 30 Jan 2024 09:08:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 09CA381826
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C5DC21BF395
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 30 Jan 2024 09:08:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9BFA841910
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 30 Jan 2024 09:08:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9BFA841910
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QO3AUMJBrfom
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 30 Jan 2024 09:08:45 +0000 (UTC)
X-Greylist: delayed 589 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 30 Jan 2024 09:08:44 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC5A1418B6
Received: from sendemail77.com (sendemail77.com [57.128.201.141])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DC5A1418B6
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 30 Jan 2024 09:08:44 +0000 (UTC)
Received: from [45.129.14.76] (unknown [45.129.14.76])
 by sendemail77.com (Postfix) with ESMTPA id 319FD7A076;
 Tue, 30 Jan 2024 08:54:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 sendemail77.com 319FD7A076
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Present you as NOK
To: Recipients <smtp@sendemail77.com>
From: "Horst Angerer" <smtp@sendemail77.com>
Date: Tue, 30 Jan 2024 00:54:57 -0800
Message-Id: <20240130090845.9BFA841910@smtp4.osuosl.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sendemail77.com; s=default; t=1706604899;
 bh=HYQ5DHl0KP89+SpOFAyd7UKqIf089LtHyUMNb+8vbHU=;
 h=Subject:To:From:Date:Reply-To:From;
 b=FXI7+gNMMM5Vd89KZavIxAUN9w2Zpn189YOm0G+7OpT7Ss3mJxpTPdM5gJhPPOC7R
 nGkGJwx0RB7HjaKGIBrd8oxJXSIeabZZIOfhnVo0VThZq5nuRR0W5qR7p+bOmQ9oAX
 jn2yjwgzfQUGydRlu5hcvCnbYp/PcLXOR+dvdUv8CVtCU8j9CyYPyFx1kvShx43cQU
 Grr2OwSIqz+QCyrn0o41AtwyZ+GhHM8Q5PXhnCQnnCRJRf7ZEMf0S9tvWn5U1s893T
 NBKLhMVQVrftuwgC8+WV92R5qIHMlXB5F1AaUYxHmTTrBUKKdu6YVBHetdMoS0/nEC
 ezA660CCGYr1w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=sendemail77.com header.i=@sendemail77.com
 header.a=rsa-sha256 header.s=default header.b=FXI7+gNM
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
Reply-To: cm_ncc@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

My name is Horst Angerer, we are unfamiliar with each other, I am a senior account manager with Santander Bank Great Britian. I have worked here for a little more than 20 years now and I would like to present a profitable business deal to you. I am presenting this deal to you because you are very important to this deal as you will find out.

I was the personal accountant to one of our late customers, a foreign contractor with Royal Dutch plc who has an investment account with my bank. He lost his life in a car crash in 2013.  He died without leaving a will. Several efforts were made to find his extended family through his embassy without success. I received a notice last week to provide the next of kin because i am his accountant or the account will be closed in 14 days time. I am contacting you to apply for the money left behind because you have the same last name as my client. This will be done legally respecting UK laws and success is guaranteed if we cooperate on this. The bank will release the account to you because of your last name and my recommendation of you as the next of kin. I am a very religious person and I cannot lie; I expect the same from you.

I propose we share the proceeds 50:50, I think this is fair. I will give you all the necessary information about the deal when I get your response.

Please get back to me as soon as you can for further discussion.

Warm regards,
Horst
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
