Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 669C982E7F8
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jan 2024 03:45:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5909A610A9;
	Tue, 16 Jan 2024 02:45:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5909A610A9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tfvHVhqiNgn3; Tue, 16 Jan 2024 02:45:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 17CAE610A7;
	Tue, 16 Jan 2024 02:45:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 17CAE610A7
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C60F21BF3DB
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 16 Jan 2024 02:45:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 91323610A9
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 16 Jan 2024 02:45:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 91323610A9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B_syuAuN9XNv
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 16 Jan 2024 02:45:12 +0000 (UTC)
Received: from kernelhost.info (kernelhost.info [91.218.67.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7D22F610A7
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 16 Jan 2024 02:45:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7D22F610A7
Received: from [192.168.1.116]
 (dynamic-046-114-197-051.46.114.pool.telefonica.de [46.114.197.51])
 by kernelhost.info (Postfix) with ESMTPA id 9D02041476E;
 Tue, 16 Jan 2024 00:09:42 +0100 (CET)
Received-SPF: pass (kernelhost.info: connection is authenticated)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Dear Friend,
To: Recipients <infor@proservice.com>
From: "Mr.Raymond Mcniel" <infor@proservice.com>
Date: Tue, 16 Jan 2024 00:09:41 +0100
X-Antivirus: AVG (VPS 240115-6, 1/15/2024), Outbound message
X-Antivirus-Status: Clean
X-PPP-Message-ID: <170536018467.12917.7911674594910882088@kernelhost.info>
X-PPP-Vhost: proservice.com
Message-Id: <20240116024513.91323610A9@smtp3.osuosl.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=proservice.com; s=default; t=1705360185;
 bh=4shlL7/kLrYKV+BoATkYT0/SsS9pc3eRmEroWqZLPz8=; h=Subject:To:From;
 b=YXI3eK7uCA1Oox+bn+5T7/S0F9sNA6SFIJ5HpasNlm3wkB8D7okAe1dK5E0u/cYyF
 cq+Ig3au19UeQhHpoKmllc/FDOXbzfTPCSjaT4JGr6yrLrhJloot+txgD40DJPaCOU
 irOZfZswbjokmDOCzuZ/6iNJZAhn39fU7n/Eup1v2jfSFzsw5de72HQCYLcLKc+5Dj
 cTHTqw0gMc/1wyRkrTluXnTBC+VeA/0hbldoCJjhY+lKr2vsv9XkTcFNJZV1bUQAwr
 Xaw/r6xyh5c2oiHwBAE2S7/8opMLF4ps59ifqpNMxS+D/rhiGYHuCOLvptjeDBfHKf
 xPPLj3ntg/TPQ==
X-Mailman-Original-Authentication-Results: kernelhost.info;
 spf=pass (sender IP is 46.114.197.51) smtp.mailfrom=infor@proservice.com
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
Reply-To: raymond.mcniel9@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

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
