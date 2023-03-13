Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B230F6BA0F9
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Mar 2023 21:47:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 11E5F40B23;
	Tue, 14 Mar 2023 20:47:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 11E5F40B23
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VzYw1mz5f2FP; Tue, 14 Mar 2023 20:47:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D8B424011D;
	Tue, 14 Mar 2023 20:47:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D8B424011D
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 50B4D1BF2A7
 for <devel@linuxdriverproject.org>; Tue, 14 Mar 2023 20:47:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 56C6F4034D
 for <devel@linuxdriverproject.org>; Tue, 14 Mar 2023 20:47:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 56C6F4034D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 56OEU7g19oPC for <devel@linuxdriverproject.org>;
 Tue, 14 Mar 2023 20:47:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5DE754032E
Received: from defaultworkshop.klidefectmanagement.com.novalocal (unknown
 [103.30.145.160])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5DE754032E
 for <devel@driverdev.osuosl.org>; Tue, 14 Mar 2023 20:47:46 +0000 (UTC)
Received: from ec2-52-11-215-80.us-west-2.compute.amazonaws.com
 ([52.11.215.80] helo=asda.co.uk)
 by defaultworkshop.klidefectmanagement.com.novalocal with esmtpa (Exim 4.94.2)
 (envelope-from <sales1@asda.co.uk>) id 1pblry-0005KY-Sm
 for devel@driverdev.osuosl.org; Tue, 14 Mar 2023 00:21:59 +0700
From: ASDA Stores Limited <sales1@asda.co.uk>
To: devel@driverdev.osuosl.org
Subject: First quarter procurement order/enquiry
Date: 13 Mar 2023 17:21:58 +0000
Message-ID: <20230313152049.FCA0CFE587AD29EF@asda.co.uk>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=asda.co.uk; 
 s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=YQjcRvY+y0gR71KelUQwPz9wY1ryRoougHMHTzhJ4RI=; b=Q
 z/Q/wKDDl6cjUTPGwqsTwG7/5H+EJ9dgQ7JC7GvSE3ecUj3z+kAsojejodm+4OtkWa5XoYc2enbHK
 XjEfTL37oKkTfrihd/1cvgbm6TTASrkoviYsFZDBnjpFzStsImzrF0WWEB8U46EMlar/kS8CC8NHJ
 hFmbsXYYwsYUVRRM=;
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
Reply-To: sales@asda-c.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear devel
I'm a procurement manager  with ASDA Group (the owners of ASDA 
Stores) and your company product has caught our interest. 
Therefore, we request you send
list and prices of your hot selling items (products) for our 
evaluation/pick.

Soon as we receive your reply, we shall send you our company 
profile and buying proposal. You can also check our website below 
for detailed info of our purchase area and trading capacity.

Your immediate response E-mail:  sales@asda-c.com   shall be 
appreciated.

Best Wishes

Ms Stelle Montgomery
Purchasing Dept.
ASDA Stores Limited
Tel:  +44 7418367220
WhatsApp: + 44-7502985874
Website: www.asda.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
