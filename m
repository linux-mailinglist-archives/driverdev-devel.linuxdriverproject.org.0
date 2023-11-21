Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B0CD87F2688
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Nov 2023 08:41:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D7FB4091A;
	Tue, 21 Nov 2023 07:41:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D7FB4091A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9BTe6emKibb0; Tue, 21 Nov 2023 07:41:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1953B4086D;
	Tue, 21 Nov 2023 07:41:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1953B4086D
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8B1A81BF5DC
 for <devel@linuxdriverproject.org>; Tue, 21 Nov 2023 07:41:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0CC2E40207
 for <devel@linuxdriverproject.org>; Tue, 21 Nov 2023 07:41:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0CC2E40207
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rixMm_16GMmt for <devel@linuxdriverproject.org>;
 Tue, 21 Nov 2023 07:41:03 +0000 (UTC)
Received: from kernelhost.info (kernelhost.info [91.218.67.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F2A3D400A4
 for <devel@driverdev.osuosl.org>; Tue, 21 Nov 2023 07:41:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F2A3D400A4
Received: from [192.168.1.116]
 (dynamic-046-114-156-254.46.114.pool.telefonica.de [46.114.156.254])
 by kernelhost.info (Postfix) with ESMTPA id F25DF3AA397;
 Tue, 21 Nov 2023 06:37:30 +0100 (CET)
Received-SPF: pass (kernelhost.info: connection is authenticated)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Dear Friend,
To: Recipients <Office@azovstal.net>
From: "Dr. Terry Glenn" <Office@azovstal.net>
Date: Tue, 21 Nov 2023 06:37:29 +0100
X-Antivirus: AVG (VPS 231120-10, 11/20/2023), Outbound message
X-Antivirus-Status: Clean
X-PPP-Message-ID: <170054505199.20153.18061842463518247664@kernelhost.info>
X-PPP-Vhost: azovstal.net
Message-Id: <20231121074104.0CC2E40207@smtp2.osuosl.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=azovstal.net; s=default; t=1700545052;
 bh=o+gIX1GffEi3KJKO/R+L10L0RaZ0YTnpd81w/6Cg9Yw=; h=Subject:To:From;
 b=TafI22Tt9Dwwog05UR6ntBvurkSWl5zWmWj6qoTlQ3snpJjmbIyvwUyWs6AI2Ftjd
 BHiuXXmyenRK/ZKxpftAHPgwvOeCj2l8OmEKV33Ri0LjihIw0ZS2H4uw2QNYWpRKtJ
 AJoyJflBzHn3EdTau+jDViotkJkK8PfH7wjcIhoQ=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=fail reason="unknown key version" header.d=azovstal.net
 header.i=@azovstal.net header.a=rsa-sha256 header.s=default header.b=TafI22Tt
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
