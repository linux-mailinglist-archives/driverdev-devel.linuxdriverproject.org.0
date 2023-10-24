Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF557D5EA1
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Oct 2023 01:23:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 926834F0B9;
	Tue, 24 Oct 2023 23:23:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 926834F0B9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P4lWsRIeRU_A; Tue, 24 Oct 2023 23:23:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B3F24F0BA;
	Tue, 24 Oct 2023 23:23:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B3F24F0BA
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 75DC31BF379
 for <devel@linuxdriverproject.org>; Tue, 24 Oct 2023 23:23:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 462E041A3A
 for <devel@linuxdriverproject.org>; Tue, 24 Oct 2023 23:23:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 462E041A3A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j1Z6TL_GoVHa for <devel@linuxdriverproject.org>;
 Tue, 24 Oct 2023 23:23:37 +0000 (UTC)
X-Greylist: delayed 3721 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 24 Oct 2023 23:23:37 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0989440629
Received: from mail.07d02.mspz7.gob.ec (mail.07d02.mspz7.gob.ec
 [181.196.186.147])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0989440629
 for <devel@driverdev.osuosl.org>; Tue, 24 Oct 2023 23:23:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.07d02.mspz7.gob.ec (Postfix) with ESMTP id A5541613CA16F;
 Tue, 24 Oct 2023 17:21:28 -0500 (-05)
Received: from mail.07d02.mspz7.gob.ec ([127.0.0.1])
 by localhost (mail.07d02.mspz7.gob.ec [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id jD8lk7Me6pzd; Tue, 24 Oct 2023 17:21:28 -0500 (-05)
Received: from localhost (localhost [127.0.0.1])
 by mail.07d02.mspz7.gob.ec (Postfix) with ESMTP id 54C5F613CA167;
 Tue, 24 Oct 2023 17:21:28 -0500 (-05)
X-Virus-Scanned: amavisd-new at 07d02.mspz7.gob.ec
Received: from mail.07d02.mspz7.gob.ec ([127.0.0.1])
 by localhost (mail.07d02.mspz7.gob.ec [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id flq53SWUynHJ; Tue, 24 Oct 2023 17:21:28 -0500 (-05)
Received: from [192.168.0.171] (unknown [197.210.84.226])
 by mail.07d02.mspz7.gob.ec (Postfix) with ESMTPSA id 98B77613CA5BA;
 Tue, 24 Oct 2023 17:21:19 -0500 (-05)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Good news
To: Recipients <hilvia.figueroa@07d02.mspz7.gob.ec>
From: "Lisa Robinson" <hilvia.figueroa@07d02.mspz7.gob.ec>
Date: Tue, 24 Oct 2023 15:21:08 -0700
Message-Id: <20231024222119.98B77613CA5BA@mail.07d02.mspz7.gob.ec>
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
Reply-To: lsarbn01@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Your email came out victorious in a random selection and you have been chosen for a cash donation of $950,000.00. Get back for your urgent claim.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
