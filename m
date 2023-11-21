Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1A87F2683
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Nov 2023 08:40:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 408FE4086D;
	Tue, 21 Nov 2023 07:40:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 408FE4086D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oJaAL8o-OD7a; Tue, 21 Nov 2023 07:40:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0BC4E4085E;
	Tue, 21 Nov 2023 07:40:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0BC4E4085E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DED251BF5DC
 for <devel@linuxdriverproject.org>; Tue, 21 Nov 2023 07:40:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B199981376
 for <devel@linuxdriverproject.org>; Tue, 21 Nov 2023 07:40:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B199981376
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IU1iO-a6CavH for <devel@linuxdriverproject.org>;
 Tue, 21 Nov 2023 07:40:41 +0000 (UTC)
Received: from kernelhost.info (kernelhost.info [91.218.67.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 00A8F81349
 for <devel@linuxdriverproject.org>; Tue, 21 Nov 2023 07:40:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 00A8F81349
Received: from [192.168.1.116]
 (dynamic-046-114-156-254.46.114.pool.telefonica.de [46.114.156.254])
 by kernelhost.info (Postfix) with ESMTPA id 10EC83AA24F;
 Tue, 21 Nov 2023 06:37:04 +0100 (CET)
Received-SPF: pass (kernelhost.info: connection is authenticated)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Dear Friend,
To: Recipients <Office@azovstal.net>
From: "Dr. Terry Glenn" <Office@azovstal.net>
Date: Tue, 21 Nov 2023 06:37:01 +0100
X-Antivirus: AVG (VPS 231120-10, 11/20/2023), Outbound message
X-Antivirus-Status: Clean
X-PPP-Message-ID: <170054502617.16437.574980345569859790@kernelhost.info>
X-PPP-Vhost: azovstal.net
Message-Id: <20231121074041.B199981376@smtp1.osuosl.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=azovstal.net; s=default; t=1700545026;
 bh=o+gIX1GffEi3KJKO/R+L10L0RaZ0YTnpd81w/6Cg9Yw=; h=Subject:To:From;
 b=LtU2++AIEB/3WdIx7pCL8Oa3cMTgffkXjbDgsrCtweuBtlsE5HIF2pTesqSvP1iDp
 Sgk1FE26crbA8hCBt1TMKUgEvXx2vYnwGe7wumQNsrOY7GP3512DRY6J1EBYne8d/M
 GmkzG80vPbBOx6BOwGl5TnUMkq6/bVR+UIWhxgmg=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=fail reason="unknown key version" header.d=azovstal.net
 header.i=@azovstal.net header.a=rsa-sha256 header.s=default header.b=LtU2++AI
X-Mailman-Original-Authentication-Results: kernelhost.info;
 spf=pass (sender IP is 46.114.156.254) smtp.mailfrom=office@azovstal.net
 smtp.helo=[192.168.1.116]
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
Reply-To: terryglenn398@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Friend,

Ref: Introduction / Curious to know whether you'll be interested to give me an attention based on an important issues that i will like us to discuss with you. 

My name is Terry Glenn, I am pleased to introduce you to Bin Zayed Group, A private financial service firm based in the Gulf Region as their Representative. They are engaged in private debt financing @ 3% annual interest rate on a long-term or short-term project funding to third party investors, project owners and individual's looking for business extension and others.

Kindly respond, if you are interested in Their loan projects then contact me via my Private Email: ( terry.glenn1@hotmail.com ) for further details and explanation regarding this transactions.

Best Regards,
Dr. Terry Glenn

-- 
This email has been checked for viruses by AVG antivirus software.
www.avg.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
