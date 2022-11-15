Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9220162915D
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Nov 2022 06:08:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A0BF660675;
	Tue, 15 Nov 2022 05:08:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A0BF660675
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i9bkdV-jyFoH; Tue, 15 Nov 2022 05:08:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5010160594;
	Tue, 15 Nov 2022 05:08:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5010160594
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 080921BF2B0
 for <devel@linuxdriverproject.org>; Tue, 15 Nov 2022 05:08:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DFACC60594
 for <devel@linuxdriverproject.org>; Tue, 15 Nov 2022 05:08:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DFACC60594
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f4QBuziFr6Lx for <devel@linuxdriverproject.org>;
 Tue, 15 Nov 2022 05:08:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D8A6460AC2
Received: from lkeaswxh.utahforest.com (unknown [92.52.217.35])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D8A6460AC2
 for <devel@driverdev.osuosl.org>; Tue, 15 Nov 2022 05:08:22 +0000 (UTC)
From: "Alxender Gustova" <eln.haa@utahforest.com>
To: devel@driverdev.osuosl.org
Subject: Hello
Date: 14 Nov 2022 21:08:10 -0800
Message-ID: <20221114210810.58B3CC900ABDEB83@utahforest.com>
MIME-Version: 1.0
X-Mailman-Original-DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim;
 d=utahforest.com; 
 b=s9gObcumprImNyvx5MRYBCJuFYfdM1qEzbsex6qay0L4v1rR5svqkWINuuZAu0wN0jYucRc/0Mg/
 Cjfrm6QUsn4uCYtZrd6+Lhl5oqycR7ZgVqzA92IzxLcqzzDvMGXvuaa8kdg440OcEJ8hsybSjhIR
 D37oBYrd6iL4lENKsUBnjza5Rjp1bGWfHyO3P5pVcMjVs1E7Y6xDM3TZWlrVUuI6QMnb+o2gmEep
 UomW4wZKXHImTHufQv50KbIGNCzwHlwz6KiolD4V2sYoLI87hBTiJMmyi83EimDkkBxQgd03Y32v
 MVOuuEPpX0EwA/1E4UPvoh3pUKrEsdc+UF9rew==;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim;
 d=utahforest.com; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=eln.haa@utahforest.com; 
 bh=VGGZ8laDzo4vyV3Rh+iarCl3J7s=;
 b=s9EuHEmeXPv8UlgJxqf1scXBcZe/ouglyJJXpQU5WWi0RQdy6Q0YVnpdsrVEW9U9GOV+RsFhJupu
 MA8Jh3OkJ8uhavzuKsLlfrctpo11xhmFJqsU4XbL40yrJqNdA7nVr3DrY/A3sL2jZiw1ZMFpCWrC
 exjc71uonTcibApysdhNTMXXllUyb5mS2CL0TgALmM4kAVkpFHBu9FSsuTVJ1EEOAo8rB5PgrbjS
 +OiYx46tGKttRUy0MzzsPCTV6X+Sf9Dui1jpr78Qh0rd+Tf2yyRlDqvsfMc1TW0VPGN1bozKZ2eY
 46xXV2crHPr+ikTEXJuT2SFtuZdfdUmJDP4U9A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=utahforest.com
 header.i=eln.haa@utahforest.com header.a=rsa-sha1 header.s=dkim
 header.b=s9EuHEme
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
Reply-To: abelgustavojr@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear friend,

I write you this very confidential proposal in good faith hoping 
that
I will rely on you. This has to do with an (abridged account) In 
2010,
one Mr. Othman M. who non resident of Spain,, made a fixed 
deposit,
valued at Euro 12,200,000.00 (Twelve million Two hundred thousand
Euros) with our bank in SPAIN. He was an oil merchant and an
Engineering contractor working with (Asturiana de Zinc S.A)

He came here in SPAIN for an Engineering work exploration from 
your
country before he made the deposit through his Swiss account in
Switzerland! I was his account officer. Unfortunately, while on a
business trip, he died in a deadly Tsunami earthquake that 
occurred on
March 11, 2011 in Sendai Japan that killed many people.

The management of our bank has been sourcing for a means to reach 
him
so as to ascertain if he will want to roll over the Deposit or 
have
the contract sum withdrawn, when I discovered that this will 
happen, I
learnt of his death, so I have tried to think up a procedure to
preserve this fund and use the proceed for charity.

Our Bank Managing director have been trying to find out from me 
the
information about this account and the owner, but I have kept it
closed to my heart because I know that if they become aware of 
his
death, they will corner the funds for themselves and for their 
private
use and leave me with nothing.

Therefore, I am seeking your co-operation to present you as the 
one to
benefit from his fund at his death. So that my bank headquarters 
will
pay the funds to you. I have done enough inside bank arrangement 
and I
only have to put in your details into the information network in 
the
bank computers database and reflect you as his next of kin to the
deceased Othman M.

This is a risk free operation as long as no one else beside you 
knows
about this. I immensely request for your optimum honesty and
cooperation and Let
me know your mind on this, and please do treat this information 
as Top
secret. We shall go over the details once I receive your urgent
response strictly through my personal email address, my email id 
is.(
gustavoalexender90@gmail.com ) Send me your phone number for easy
communication.

Please observe this instruction religiously. Please, again, note 
I am
a family man with a Daughter. I send you this mail not without a
measure of doubt as to what the consequences could be for me if 
my
Bank finds out about my secret plan. Please let this be a top 
secret
between us.

The sharing should formula would be 45% for me, 45% for you and 
then
10% to Charity.


Best Regards,
Mr. Gustavo Alexender
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
