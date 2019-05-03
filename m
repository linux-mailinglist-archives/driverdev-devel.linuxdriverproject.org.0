Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 757A6125DC
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 May 2019 02:55:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DE14487A50;
	Fri,  3 May 2019 00:55:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AQOcedskFrKd; Fri,  3 May 2019 00:55:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 852DF879D5;
	Fri,  3 May 2019 00:55:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D1AA61BF298
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 00:55:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C95FE867FA
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 00:55:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sDB-qQSUAPeM for <devel@linuxdriverproject.org>;
 Fri,  3 May 2019 00:55:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic309-15.consmr.mail.bf2.yahoo.com
 (sonic309-15.consmr.mail.bf2.yahoo.com [74.6.129.125])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8E07E867ED
 for <devel@driverdev.osuosl.org>; Fri,  3 May 2019 00:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1556844903; bh=2OMsgI3oyszHM+Q6IWzipnP7DQDv24GNNNsMqaG5qx0=;
 h=Date:From:Reply-To:Subject:From:Subject;
 b=FyezipGodeNugonI4dn0W9Xu02oAOAAwxgnPcJxOhbZlzuBbS5gEdcWhJFirj7xXC79qrXsq6Gc2JJHRr2BSFquTrH3vGwwMuFJ4nL+4xxcIdMlFCtGYjqMYDOwmAasyHlhZ1gn5mXnvsJH67cJw7MZdMDfPNAblffIvVOXCDRVUWYfQNrWpB10FzrHBaO5p834jakhgj8PLvoYZ+bKHM7DhlcPAgrhevWpXm5HXHaIJ8GDOMUuWMVnkWko/Ekzr8diXNNaq1x2MDkuu0x38XG/sP5HFvjnZKpu9Izof52l7H7iMg4IvQ/WhScTeYBV3UVy/yFFKqYK9Zls6OazTTQ==
X-YMail-OSG: IpuagqkVM1nU7SlPXMXt5z.kNOGvpql8C2jGpUztXbVefEuHfHVjha0Gp.yLLt3
 Zj9LNKFQOCT07ntxqYEXddlwjYQivle5TEL6N88lJrzhDntPl5mUNCyEObqEl68C.8er4gG0sppo
 2qYB1nz6TK3fj5AGWmXBOlgK8f0szIQIQwcOxFztgDgUY3hkExzx0GFUIFavs2HsOxA1VCE6i.iq
 HePFiKSyiSyOpt9.u8JMziEheGu2IwwBfaFiiyVXVklGbJS2j3Kxx_2_sSawk_2eWsvt0_IVuAbv
 esynVmOLn3I.wwfg0ICGRpo3CXsurEAdLKCQ_WPGOQvIfnYeX.XLFjDXuxmBZGOVHxWZWB2N9b8A
 GBdZRBcjtuaieVMFEh8v3VVTzbW_c5b2nxnoa5qs.A9XdHunICG0ZfuoeJRLvftRFpw_1boVS_On
 jrrFt80LHC10B1FEb9C_3u2IBihM9_Bg7wkPJrTF07U6spvBQ0UZ_8ZhmAL_mTNDu8WrCNEsNf9q
 ThTrrD3IO8Ou18LsZdR55TvP8104Y1Yyywv0tKU_D6dBkcCJZAjELozzsmc6ZOUupnX7uUirrZxE
 mI50iFUlmU118jwEtVvGHM4FU5spYnf19qDjpN..CT9tq4KlitMqy6kvTMSoA2hD4EMJ0aRqm4kl
 vrHK.yR_0SahgJKUM41XmSufKS15rhESxEX4Fk6isbvMdVoa9av5kleh6pcAOiSlDQptFIhUwUQk
 K9g9oBnF7x1XAj9y54uGWbuK.OPrPwtHCf.Jn3MLM8z6sNmbbPATpWJm.PF4DWdzc84s5VFeY7F3
 kmE.pLlI4ZSykzx4fq1hVVdioMRoAYiuXMSBbd.DRZKGa.RBffd3P7PFuKQLBIWrAs9CWqI7vcAP
 W99ybRz4NzJR82EtEPVy16hFwr0ELEb4i7H0MwXr99KzDmomW4h0F9VrDZBZ7eTSR5AIWeSCGUoX
 jZNHdJn.63HTtVVotEu3y4QdzHJNtSs2Fjel1FbKXw6N0Sicsm0md8.zh0b0LmA8thivzw4GWHjR
 bLWPlSXsg0feV.p2LbXuwDc6IrPHoZhLicbTlSyuizLxMcVy7R2FLR9bartPA8s5jJxtzgON6XMJ
 z1ppu7DHA9xAOQJiY6nNepERyxine6BWU5bVtKQyU10urp.590ebCcHyTxGxh5PE5CGTM
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic309.consmr.mail.bf2.yahoo.com with HTTP; Fri, 3 May 2019 00:55:03 +0000
Date: Fri, 3 May 2019 00:55:02 +0000 (UTC)
From: Leo Stephanie <maryfrank598@yahoo.com>
Message-ID: <1359000352.3675636.1556844902736@mail.yahoo.com>
Subject: Hello Dearest One
MIME-Version: 1.0
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
Reply-To: stephanieadaleo@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



Hello Dearest One

I am writing you this message with tears and sorrow and I know this mail may come to you as a surprise, I am Stephanie Leo. The only daughter. My father was a very wealthy cocoa merchant in Abidjan Ivory Coast (Cote Ivoire) my father was poisoned to death by his business associates on one of their outings on a business trip.

My mother died when I was a baby and since then my father took me so special. Before the death of my father in a private hospital here in Abidjan he secretly called me on his bed side and told me that he has the sum of (7,500000.00) seven million five Hundred thousand US Dorllars, left in fixed / suspense account in one of the international bank here in Abidjan, he used my name as his only daughter for the next of Kin in depositing of the fund. My late father instructed me to seek for a foreign partner in a country of my choice where I will transfer this money and use it for investment purpose such as real estate management or hotel management.

I am honorably seeking for your assistance in the following ways:(1) To provide a bank account in which this money would be transferred to .(2) To serve as my guardian.(3) To make arrangement for me to come over to your country to further my education.

Note: I am willing to offer you 20% of the total sum as compensation for your effort/ input after the successful transfer of this fund to your nominated bank account. Anticipating hearing from you soon.
Best regards,

Stephanie Leo.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
