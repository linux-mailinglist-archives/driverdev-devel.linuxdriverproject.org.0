Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A285AAD3E
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Sep 2022 13:14:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 450E882983;
	Fri,  2 Sep 2022 11:14:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 450E882983
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BPnTFt5lqui6; Fri,  2 Sep 2022 11:14:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EBFA0824DD;
	Fri,  2 Sep 2022 11:14:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EBFA0824DD
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5A6561BF82D
 for <devel@linuxdriverproject.org>; Fri,  2 Sep 2022 11:14:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 34F2E82640
 for <devel@linuxdriverproject.org>; Fri,  2 Sep 2022 11:14:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34F2E82640
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uaFJhjmDEihl for <devel@linuxdriverproject.org>;
 Fri,  2 Sep 2022 11:14:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E1DA824DD
Received: from gxaoszxo.piglight.com (unknown [85.217.145.3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6E1DA824DD
 for <devel@driverdev.osuosl.org>; Fri,  2 Sep 2022 11:14:06 +0000 (UTC)
From: Amjad Ali<and.sco@piglight.com>
To: devel@driverdev.osuosl.org
Subject: IMPORTANT!! Sir, I need your urgent response.
Date: 02 Sep 2022 04:14:04 -0700
Message-ID: <20220902041404.BB362AB821A55FC5@piglight.com>
MIME-Version: 1.0
X-Mailman-Original-DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim;
 d=piglight.com; 
 b=p4mGC3osFx6mAiKRQyuLZ3FAoB7JZ/ED6mot8d/w7oqtykfEqRQQoaHu8Zf0Jo4IIiGe4V9VpiOa
 LnPeOHq9W4D5u8ASgrAN9xxrfd6feGzHjKT/Jsk44p8wLjBlVLMoAbMSayiHqzH3LtFG6JslRaom
 42vmV5jEv8ZaskUTlmqS0IKPuJrebEnn9NXcSTh28bK1j0vEQ6pu310w/j5Obfev5dlFxHMWM7V7
 z+tEFWzLfxIf3IJ4nFOWndEIxOVlZJkdnnlyIV13BkoiCA3g3rt61ukiGwxk3S2QDIHsX2gOJRQg
 84T3QhVzLLRmpSLyr/BjsQzlXkNhbQjjvH3fBw==;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim;
 d=piglight.com; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=and.sco@piglight.com; 
 bh=2RNxICSB08QOsISrgdgjONv4BIM=;
 b=qI+XNMNpcNe6gcsVhqmD6FxhNMPriBSO3Reku3J3lK+FPGxCBScY+CTiaojT009Omas/XdpNU2Cl
 9gghrkpc15Qa1zVJWa+YVmNMd/v92PR5ZQXHVjLNcI65aWLl9Fhq5Po8DZwiJw93/exjL5j96Iwn
 l1G9XhoFM9yXlMczq6BhTYeDPtgx+7hYBHsn9kod0iN0RrZEnrD4bLqekm3daNY5FhISFgttgpOl
 j7ksEnu7PdrmWyylSnktYaUcVZoyZRra+NHgKPNX4bcdFq2ujqAAUc23zmCUihbLzckZYVdMeeml
 Bt080yEBZ4L3hyI6DSrm8ut0YRe5nTBHzR+Nbw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=piglight.com header.i=and.sco@piglight.com
 header.a=rsa-sha1 header.s=dkim header.b=qI+XNMNp
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
Reply-To: amjalia90@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Friend,

How are you doing? I have sourced for your contact online and 
decided to contact you. My name is Amjad. I am retained with a 
leading Bio Firm. The recent pandemic caused a lot of havoc in 
the business and supply industry. It also opened up new 
opportunities as well. My company has opened up a bid for 
suppliers of some basic raw materials needed in the production of 
life saving vaccines, drugs, etc.

I urgently seek a representative to represent my interest in this 
bid. As a staff member, it is against the policy for me to bid 
directly for this. I assure you that the proceeds from this is 
very good. I have already sourced a local supplier to work with 
on this. I only need a reliable representative. I think we can 
work together on this.

Please get back to me and I can explain in further details.

Regards,
Amjad Ali
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
