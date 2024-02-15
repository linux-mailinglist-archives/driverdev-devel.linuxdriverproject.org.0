Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A23778559E0
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Feb 2024 05:43:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B6DA1831C1;
	Thu, 15 Feb 2024 04:43:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FlSeRU6m4DmJ; Thu, 15 Feb 2024 04:43:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C116F8329A
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C116F8329A;
	Thu, 15 Feb 2024 04:43:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 13A4C1BF38B
 for <devel@linuxdriverproject.org>; Thu, 15 Feb 2024 04:43:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0D0D54188F
 for <devel@linuxdriverproject.org>; Thu, 15 Feb 2024 04:43:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZQ9SWi9WHSrn for <devel@linuxdriverproject.org>;
 Thu, 15 Feb 2024 04:43:23 +0000 (UTC)
X-Greylist: delayed 601 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 15 Feb 2024 04:43:22 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0E2FB403C4
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.46.234.161;
 helo=mail0.sallyindtop.co; envelope-from=usario006@sallyindtop.co;
 receiver=<UNKNOWN> 
Received: from mail0.sallyindtop.co (mail0.sallyindtop.co [198.46.234.161])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0E2FB403C4
 for <devel@linuxdriverproject.org>; Thu, 15 Feb 2024 04:43:22 +0000 (UTC)
From: usario006@sallyindtop.co
To: devel@linuxdriverproject.org
Subject: Re: Collaboration Opportunity
Date: 15 Feb 2024 06:33:20 +0200
Message-ID: <20240215063320.D9F4B83898DE9549@sallyindtop.co>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 s=default; d=sallyindtop.co; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:
 Content-Transfer-Encoding; i=usario006@sallyindtop.co;
 bh=wQmsYLHi5NAAnHxrT9W0soQFclaAz4K+p/o2vxgwAiU=;
 b=jrFSrey+sInVa782+FwbZcFywtmLyerbEn4LnV2dy0P3SNd9+2dZP+oHV7VcoZ/JnmbErZvoesG9
 FVX8VUlcbvQeFXm11s+fgGPBOM4FQaRf5fX2FJn05bHMCsCQhwwccpv0KqwXRXMst6xSFWmd95z8
 bmiAxwOU+0aLjqFqqKE=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org; dmarc=permerror
 header.from=sallyindtop.co
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=sallyindtop.co header.i=usario006@sallyindtop.co
 header.a=rsa-sha256 header.s=default header.b=jrFSrey+
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
Reply-To: PhilipRoger101@mail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Good day, 
I'm glad we can connect here, I'm Philip Roger, a research 
assistant of the research and development department working with 
med pharmaceutical laboratories UK, One of the leading bio 
pharmaceutical companies here in England.I am looking for a 
reliable businessman/individual in your region to represent my 
company in sourcing some of our basic raw material used in the 
manufacturing of high quality Anti-Viral Vaccines, Cancer 
treatment and other life saving Pharmaceutical Products. This may 
not be your area of specialization but it will be another income 
generating business within your capacity.This is because our 
company is yet to locate any seller to buy from, however, I have 
been able to discover a local dealer/producer who can supply us 
with this product. He is selling at a cheap rate, which is far 
more cheaper than our previous purchases. Now THIS IS MY PROPOSAL 
TO YO: I want you to stand in as a new local dealer from your 
country and I will introduce you to our company. The reason for 
this is because I don't want my company to have direct contact 
with the local agent that sells this herbal oil extract very 
cheap. This will enable us to work together as partners and make 
real cool profits. You as the local seller will supply to our 
company at a good rate which I will inform you later when we are 
in agreement and this will attract the attention of our company 
director who would love to purchase from you as against the 
previous rate . You will be amazed with our total profit. Hence i 
will give you more specific profit details when I receive 
feedback from you if you are interested. 
Regards, 
Philip Roger 
Executive Administrator.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
